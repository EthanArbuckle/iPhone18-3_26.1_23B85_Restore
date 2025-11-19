uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(int8x16_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 128, a2, *a3);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 2, 128, v5, a3[1]);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 16, 128, v6, a3[2]);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 18, 128, v7, a3[3]);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 4, 128, v8, a3[4]);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 6, 128, v9, a3[5]);
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 20, 128, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 22, 128, v10 + v11, v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v6 = *(a3 + 16);
  v8 = *(a3 + a4);
  v7 = *(a3 + a4 + 16);
  v9.i64[0] = 0x100000001;
  v9.i64[1] = 0x100000001;
  v10.i64[0] = 0x1F0000001F00;
  v10.i64[1] = 0x1F0000001F00;
  v11.i64[0] = 0x1F0000001F0000;
  v11.i64[1] = 0x1F0000001F0000;
  v12.i64[0] = 0x1F0000001F000000;
  v12.i64[1] = 0x1F0000001F000000;
  v13 = vbslq_s8(v12, vshll_n_u16(*a3, 0xDuLL), vbslq_s8(v11, vshll_n_u16(*a3, 0xAuLL), vbslq_s8(v10, vshll_n_u16(*a3, 7uLL), vbslq_s8(v9, vmovl_u16(*a3), 0))));
  v14 = vbslq_s8(v12, vshll_high_n_u16(*a3, 0xDuLL), vbslq_s8(v11, vshll_high_n_u16(*a3, 0xAuLL), vbslq_s8(v10, vshll_high_n_u16(*a3, 7uLL), vbslq_s8(v9, vmovl_high_u16(*a3), 0))));
  v540 = v6;
  v15 = vbslq_s8(v12, vshll_n_u16(*v6.i8, 0xDuLL), vbslq_s8(v11, vshll_n_u16(*v6.i8, 0xAuLL), vbslq_s8(v10, vshll_n_u16(*v6.i8, 7uLL), vbslq_s8(v9, vmovl_u16(*v6.i8), 0))));
  v16 = vbslq_s8(v12, vshll_high_n_u16(v6, 0xDuLL), vbslq_s8(v11, vshll_high_n_u16(v6, 0xAuLL), vbslq_s8(v10, vshll_high_n_u16(v6, 7uLL), vbslq_s8(v9, vmovl_high_u16(v6), 0))));
  v17 = vbslq_s8(v12, vshll_n_u16(*v8.i8, 0xDuLL), vbslq_s8(v11, vshll_n_u16(*v8.i8, 0xAuLL), vbslq_s8(v10, vshll_n_u16(*v8.i8, 7uLL), vbslq_s8(v9, vmovl_u16(*v8.i8), 0))));
  v18 = vbslq_s8(v12, vshll_high_n_u16(v8, 0xDuLL), vbslq_s8(v11, vshll_high_n_u16(v8, 0xAuLL), vbslq_s8(v10, vshll_high_n_u16(v8, 7uLL), vbslq_s8(v9, vmovl_high_u16(v8), 0))));
  v541 = v7;
  v19 = vbslq_s8(v12, vshll_n_u16(*v7.i8, 0xDuLL), vbslq_s8(v11, vshll_n_u16(*v7.i8, 0xAuLL), vbslq_s8(v10, vshll_n_u16(*v7.i8, 7uLL), vbslq_s8(v9, vmovl_u16(*v7.i8), 0))));
  v20 = vbslq_s8(v12, vshll_high_n_u16(v7, 0xDuLL), vbslq_s8(v11, vshll_high_n_u16(v7, 0xAuLL), vbslq_s8(v10, vshll_high_n_u16(v7, 7uLL), vbslq_s8(v9, vmovl_high_u16(v7), 0))));
  v21 = vdupq_lane_s32(*v13.i8, 0);
  v22 = vshlq_s8(vshlq_s8(vsubq_s8(v15, v21), xmmword_29D2F1250), xmmword_29D2F1260);
  v23 = vshlq_s8(vshlq_s8(vsubq_s8(v17, v21), xmmword_29D2F1250), xmmword_29D2F1260);
  v24 = vshlq_s8(vshlq_s8(vsubq_s8(v18, v21), xmmword_29D2F1250), xmmword_29D2F1260);
  v553 = vshlq_s8(vshlq_s8(vsubq_s8(v13, v21), xmmword_29D2F1250), xmmword_29D2F1260);
  v554 = vshlq_s8(vshlq_s8(vsubq_s8(v14, v21), xmmword_29D2F1250), xmmword_29D2F1260);
  v25 = vqtbl1q_s8(vmaxq_s8(v553, v554), xmmword_29D2F0F70);
  v26 = vqtbl1q_s8(vminq_s8(v553, v554), xmmword_29D2F0F70);
  v27 = vpmaxq_s8(v25, v25);
  v28 = vpminq_s8(v26, v26);
  v29 = vpmaxq_s8(v27, v27);
  v30 = vpminq_s8(v28, v28);
  v31 = vzip1q_s8(v29, v30);
  v32.i64[0] = 0x808080808080808;
  v32.i64[1] = 0x808080808080808;
  v33 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v31)), vceqzq_s8(v31));
  v550 = vshlq_s8(vshlq_s8(vsubq_s8(v16, v21), xmmword_29D2F1250), xmmword_29D2F1260);
  v34 = vqtbl1q_s8(vmaxq_s8(v22, v550), xmmword_29D2F0F70);
  v35 = vqtbl1q_s8(vminq_s8(v22, v550), xmmword_29D2F0F70);
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
  v552 = v21;
  v54 = vshlq_s8(vshlq_s8(vsubq_s8(v19, v21), xmmword_29D2F1250), xmmword_29D2F1260);
  v55 = vshlq_s8(vshlq_s8(vsubq_s8(v20, v21), xmmword_29D2F1250), xmmword_29D2F1260);
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
    *a1 = *a3;
    v164 = 1;
    result = 2;
    goto LABEL_91;
  }

  v74.i64[0] = -1;
  v74.i64[1] = -1;
  v75.i64[0] = 0x707070707070707;
  v75.i64[1] = 0x707070707070707;
  v76 = vcgtq_s8(v70, v72);
  v542 = vandq_s8(vsubq_s8(vshlq_s8(v74, vsubq_s8(v75, v71)), v63), v76);
  v77.i64[0] = 0x303030303030303;
  v77.i64[1] = 0x303030303030303;
  v536 = vmaxq_s8(vminq_s8(vsubq_s8(v73, v67), v77), 0);
  v534 = vmaxq_s8(vminq_s8(vsubq_s8(v73, v66), v77), 0);
  v535 = vmaxq_s8(vminq_s8(vsubq_s8(v73, v68), v77), 0);
  v538 = vmaxq_s8(vminq_s8(vsubq_s8(v73, v69), v77), 0);
  v74.i64[0] = 0x404040404040404;
  v74.i64[1] = 0x404040404040404;
  v551 = vorrq_s8(vbicq_s8(v74, vceqq_s8(vaddq_s8(v538, v535), vnegq_s8(vaddq_s8(v534, v536)))), vorrq_s8(vandq_s8(vceqzq_s8(v73), v77), vandq_s8(v76, v32)));
  v546 = v22;
  v547 = v23;
  v548 = v24;
  v549 = v54;
  v78 = vshlq_s8(vsubq_s8(v55, vqtbl1q_s8(v55, xmmword_29D2F1230)), xmmword_29D2F1250);
  v79 = vshlq_s8(vshlq_s8(vsubq_s8(v22, vqtbl1q_s8(v22, xmmword_29D2F1230)), xmmword_29D2F1250), xmmword_29D2F1260);
  v80 = vshlq_s8(vshlq_s8(vsubq_s8(v23, vqtbl1q_s8(v23, xmmword_29D2F1230)), xmmword_29D2F1250), xmmword_29D2F1260);
  v544 = v55;
  v81 = vshlq_s8(vshlq_s8(vsubq_s8(v24, vqtbl1q_s8(v24, xmmword_29D2F1230)), xmmword_29D2F1250), xmmword_29D2F1260);
  v82 = vshlq_s8(vshlq_s8(vsubq_s8(v54, vqtbl1q_s8(v54, xmmword_29D2F1230)), xmmword_29D2F1250), xmmword_29D2F1260);
  v83 = vshlq_s8(v78, xmmword_29D2F1260);
  v532 = vshlq_s8(vshlq_s8(vsubq_s8(v554, vqtbl1q_s8(v554, xmmword_29D2F1230)), xmmword_29D2F1250), xmmword_29D2F1260);
  v533 = vshlq_s8(vshlq_s8(vsubq_s8(v553, vqtbl1q_s8(v553, xmmword_29D2F1230)), xmmword_29D2F1250), xmmword_29D2F1260);
  v84 = vqtbl1q_s8(vmaxq_s8(v533, v532), xmmword_29D2F0F70);
  v85 = vqtbl1q_s8(vminq_s8(v533, v532), xmmword_29D2F0F70);
  v86 = vpmaxq_s8(v84, v84);
  v87 = vpminq_s8(v85, v85);
  v88 = vpmaxq_s8(v86, v86);
  v89 = vpminq_s8(v87, v87);
  v90 = vzip1q_s8(v88, v89);
  v91 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v90)), vceqzq_s8(v90));
  v92 = vpmaxq_s8(v91, v91);
  v530 = vshlq_s8(vshlq_s8(vsubq_s8(v550, vqtbl1q_s8(v550, xmmword_29D2F1230)), xmmword_29D2F1250), xmmword_29D2F1260);
  v531 = v79;
  v93 = vqtbl1q_s8(vmaxq_s8(v79, v530), xmmword_29D2F0F70);
  v94 = vqtbl1q_s8(vminq_s8(v79, v530), xmmword_29D2F0F70);
  v95 = vpmaxq_s8(v93, v93);
  v96 = vpminq_s8(v94, v94);
  v97 = vpmaxq_s8(v95, v95);
  v98 = vpminq_s8(v96, v96);
  v99 = vmaxq_s8(v88, v97);
  v100 = vminq_s8(v89, v98);
  v101 = vzip1q_s8(v97, v98);
  v102 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v101)), vceqzq_s8(v101));
  v103 = vpmaxq_s8(v102, v102);
  v528 = v81;
  v529 = v80;
  v104 = vqtbl1q_s8(vmaxq_s8(v80, v81), xmmword_29D2F0F70);
  v105 = vqtbl1q_s8(vminq_s8(v80, v81), xmmword_29D2F0F70);
  v106 = vpmaxq_s8(v104, v104);
  v107 = vpminq_s8(v105, v105);
  v108 = vpmaxq_s8(v106, v106);
  v109 = vpminq_s8(v107, v107);
  v110 = vmaxq_s8(v99, v108);
  v111 = vminq_s8(v100, v109);
  v112 = vzip1q_s8(v108, v109);
  v113 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v112)), vceqzq_s8(v112));
  v114 = vpmaxq_s8(v113, v113);
  v526 = v83;
  v527 = v82;
  v115 = vqtbl1q_s8(vmaxq_s8(v82, v83), xmmword_29D2F0F70);
  v116 = vqtbl1q_s8(vminq_s8(v82, v83), xmmword_29D2F0F70);
  v117 = vpmaxq_s8(v115, v115);
  v118 = vpminq_s8(v116, v116);
  v119 = vpmaxq_s8(v117, v117);
  v120 = vpminq_s8(v118, v118);
  v121 = vminq_s8(v111, v120);
  v122 = vzip1q_s8(v119, v120);
  v123 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v122)), vceqzq_s8(v122));
  v124 = vpmaxq_s8(v123, v123);
  v125 = vmaxq_s8(vmaxq_s8(v92, v103), vmaxq_s8(v114, v124));
  v525 = v121;
  v126 = vclzq_s8(vsubq_s8(vmaxq_s8(v110, v119), v121));
  v127 = vsubq_s8(v32, v126);
  v128 = vcgtq_s8(v125, v127);
  v129 = vminq_s8(v127, v125);
  v79.i64[0] = 0x1010101010101010;
  v79.i64[1] = 0x1010101010101010;
  v125.i64[0] = 0x1818181818181818;
  v125.i64[1] = 0x1818181818181818;
  v524 = v128;
  v130 = vorrq_s8(vandq_s8(vceqzq_s8(v129), v77), vbslq_s8(v128, v125, v79));
  v131 = vmaxq_s8(vminq_s8(vsubq_s8(v129, v92), v77), 0);
  v132 = vmaxq_s8(vminq_s8(vsubq_s8(v129, v103), v77), 0);
  v133 = vmaxq_s8(vminq_s8(vsubq_s8(v129, v114), v77), 0);
  v134 = vmaxq_s8(vminq_s8(vsubq_s8(v129, v124), v77), 0);
  v135 = vsubq_s8(v129, v131);
  v136 = vsubq_s8(v129, v132);
  v137 = vsubq_s8(v129, v133);
  v138 = vsubq_s8(v129, v134);
  v128.i64[0] = 0x404040404040404;
  v128.i64[1] = 0x404040404040404;
  v139 = vorrq_s8(vbicq_s8(v128, vceqq_s8(vaddq_s8(v134, v133), vnegq_s8(vaddq_s8(v131, v132)))), v130);
  v140 = vmovl_u8(*v139.i8);
  v132.i64[0] = 0x8000800080008;
  v132.i64[1] = 0x8000800080008;
  v82.i64[0] = 0x2000200020002;
  v82.i64[1] = 0x2000200020002;
  v141 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v129.i8), vceqzq_s16((*&v140 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8)))), vandq_s8(vshll_n_u8(*v139.i8, 1uLL), v132)), vandq_s8(vceqq_s16((*&v140 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v82), v132)), *v135.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v137.i8, *v136.i8), *v138.i8), 3uLL));
  v142 = vaddq_s16(vaddw_s8((*&vshll_n_u8(*v551.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9)), vbic_s8(*v73.i8, vcgt_u8(0x808080808080808, *v551.i8))), vandq_s8(vceqq_s16((*&vmovl_u8(*v551.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v82), v132));
  v143 = vsubq_s8(v73, v534);
  v144 = vsubq_s8(v73, v535);
  v145 = vsubq_s8(v73, v538);
  v146 = vsubq_s8(v73, v536);
  v147 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(v142, *v143.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v144.i8, *v146.i8), *v145.i8), 3uLL)), v141)), 0);
  v148 = vaddlvq_s8(v147);
  if (a5)
  {
    v149 = a6 == 0;
  }

  else
  {
    v149 = 1;
  }

  v150 = v149;
  if (v148)
  {
    v151.i64[0] = 0x707070707070707;
    v151.i64[1] = 0x707070707070707;
    v152.i64[0] = -1;
    v152.i64[1] = -1;
    v552 = vbslq_s8(v147, vsubq_s8(v552, vqtbl1q_s8(v552, xmmword_29D2F1230)), v552);
    v553 = vbslq_s8(v147, v533, v553);
    v554 = vbslq_s8(v147, v532, v554);
    v546 = vbslq_s8(v147, v531, v546);
    v153 = vbslq_s8(v147, v530, v550);
    v547 = vbslq_s8(v147, v529, v547);
    v548 = vbslq_s8(v147, v528, v548);
    v549 = vbslq_s8(v147, v527, v549);
    v537 = vbslq_s8(v147, v135, v143);
    v146 = vbslq_s8(v147, v136, v146);
    v539 = vbslq_s8(v147, v137, v144);
    v145 = vbslq_s8(v147, v138, v145);
    v154 = vbslq_s8(v147, vandq_s8(vsubq_s8(vshlq_s8(v152, vsubq_s8(v151, v126)), v525), v524), v542);
    v73 = vbslq_s8(v147, v129, v73);
    v551 = vbslq_s8(v147, v139, v551);
    v155 = vbslq_s8(v147, v526, v544);
    if (v150)
    {
LABEL_10:
      v156 = v153;
      v158 = v553;
      v157 = v554;
      v159 = *(a3 + a4);
      v160 = v539;
      v162 = v551;
      v161 = v552.i32[0];
      v163 = v537;
      goto LABEL_16;
    }
  }

  else
  {
    v537 = v143;
    v539 = v144;
    v153 = v550;
    v154 = v542;
    v155 = v544;
    if (v150)
    {
      goto LABEL_10;
    }
  }

  v543 = v154;
  v545 = v155;
  v166 = vsubq_s8(v13, vqtbl2q_s8(*v13.i8, xmmword_29D2F0F80));
  v167 = vsubq_s8(v14, vqtbl2q_s8(*v13.i8, xmmword_29D2F1030));
  v168 = v16;
  v168.i32[3] = v14.i32[3];
  v169 = v18;
  v169.i32[3] = v14.i32[3];
  v170 = v20;
  v170.i32[3] = v14.i32[3];
  v171 = vsubq_s8(v19, vqtbl2q_s8(*v19.i8, xmmword_29D2F1060));
  v172 = v167;
  v172.i32[3] = v166.i32[0];
  v166.i32[0] = v167.i32[3];
  v173 = vsubq_s8(v20, vqtbl2q_s8(*v19.i8, xmmword_29D2F0F80));
  v174 = v146;
  v175 = vshlq_s8(vsubq_s8(v18, vqtbl2q_s8(*v17.i8, xmmword_29D2F0F80)), xmmword_29D2F1250);
  v176 = v145;
  v177 = vshlq_s8(v171, xmmword_29D2F1250);
  v178 = vshlq_s8(v173, xmmword_29D2F1250);
  v179 = vshlq_s8(vshlq_s8(v166, xmmword_29D2F1250), xmmword_29D2F1260);
  v180 = vshlq_s8(vshlq_s8(v172, xmmword_29D2F1250), xmmword_29D2F1260);
  v181 = vshlq_s8(vshlq_s8(vsubq_s8(v15, vqtbl2q_s8(*v15.i8, xmmword_29D2F0FA0)), xmmword_29D2F1250), xmmword_29D2F1260);
  v182 = vshlq_s8(vshlq_s8(vsubq_s8(v16, vqtbl2q_s8(*v15.i8, xmmword_29D2F1040)), xmmword_29D2F1250), xmmword_29D2F1260);
  v183 = vshlq_s8(vshlq_s8(vsubq_s8(v17, vqtbl2q_s8(*v17.i8, xmmword_29D2F1050)), xmmword_29D2F1250), xmmword_29D2F1260);
  v184 = vshlq_s8(v175, xmmword_29D2F1260);
  v185 = vshlq_s8(v177, xmmword_29D2F1260);
  v186 = vshlq_s8(v178, xmmword_29D2F1260);
  v187 = vqtbl1q_s8(vmaxq_s8(v179, v180), xmmword_29D2F0F70);
  v188 = vqtbl1q_s8(vminq_s8(v179, v180), xmmword_29D2F0F70);
  v189 = vpmaxq_s8(v187, v187);
  v190 = vpminq_s8(v188, v188);
  v191 = vpmaxq_s8(v189, v189);
  v192 = vpminq_s8(v190, v190);
  v193 = vzip1q_s8(v191, v192);
  v194.i64[0] = 0x808080808080808;
  v194.i64[1] = 0x808080808080808;
  v195 = vbicq_s8(vsubq_s8(v194, vclsq_s8(v193)), vceqzq_s8(v193));
  v196 = vpmaxq_s8(v195, v195);
  v197 = vqtbl1q_s8(vmaxq_s8(v181, v182), xmmword_29D2F0F70);
  v198 = vqtbl1q_s8(vminq_s8(v181, v182), xmmword_29D2F0F70);
  v199 = vpmaxq_s8(v197, v197);
  v200 = vpminq_s8(v198, v198);
  v201 = vpmaxq_s8(v199, v199);
  v202 = vpminq_s8(v200, v200);
  v203 = vmaxq_s8(v191, v201);
  v204 = vminq_s8(v192, v202);
  v205 = vzip1q_s8(v201, v202);
  v206 = vbicq_s8(vsubq_s8(v194, vclsq_s8(v205)), vceqzq_s8(v205));
  v207 = vpmaxq_s8(v206, v206);
  v208 = vqtbl1q_s8(vmaxq_s8(v183, v184), xmmword_29D2F0F70);
  v209 = vqtbl1q_s8(vminq_s8(v183, v184), xmmword_29D2F0F70);
  v210 = vpmaxq_s8(v208, v208);
  v211 = vpminq_s8(v209, v209);
  v212 = vpmaxq_s8(v210, v210);
  v213 = vpminq_s8(v211, v211);
  v214 = vmaxq_s8(v203, v212);
  v215 = vminq_s8(v204, v213);
  v216 = vzip1q_s8(v212, v213);
  v217 = vbicq_s8(vsubq_s8(v194, vclsq_s8(v216)), vceqzq_s8(v216));
  v218 = vpmaxq_s8(v217, v217);
  v219 = vqtbl1q_s8(vmaxq_s8(v185, v186), xmmword_29D2F0F70);
  v220 = vqtbl1q_s8(vminq_s8(v185, v186), xmmword_29D2F0F70);
  v221 = vpmaxq_s8(v219, v219);
  v222 = vpminq_s8(v220, v220);
  v223 = vpmaxq_s8(v221, v221);
  v224 = vpminq_s8(v222, v222);
  v225 = v73;
  v226 = vmaxq_s8(v214, v223);
  v227 = vminq_s8(v215, v224);
  v228 = vzip1q_s8(v223, v224);
  v229 = vbicq_s8(vsubq_s8(v194, vclsq_s8(v228)), vceqzq_s8(v228));
  v230 = vpmaxq_s8(v229, v229);
  v231 = vmaxq_s8(vmaxq_s8(v196, v207), vmaxq_s8(v218, v230));
  v232 = vclzq_s8(vsubq_s8(v226, v227));
  v233 = vsubq_s8(v194, v232);
  v234 = vcgtq_s8(v231, v233);
  v235 = vminq_s8(v233, v231);
  v233.i64[0] = 0x909090909090909;
  v233.i64[1] = 0x909090909090909;
  v236.i64[0] = 0x202020202020202;
  v236.i64[1] = 0x202020202020202;
  v237 = vorrq_s8(vandq_s8(vceqzq_s8(v235), v236), vsubq_s8(vandq_s8(v234, v233), vmvnq_s8(v234)));
  v233.i64[0] = 0x303030303030303;
  v233.i64[1] = 0x303030303030303;
  v238 = vmaxq_s8(vminq_s8(vsubq_s8(v235, v196), v233), 0);
  v239 = vmaxq_s8(vminq_s8(vsubq_s8(v235, v207), v233), 0);
  v240 = vmaxq_s8(vminq_s8(vsubq_s8(v235, v218), v233), 0);
  v241 = vmaxq_s8(vminq_s8(vsubq_s8(v235, v230), v233), 0);
  v242 = vsubq_s8(v235, v238);
  v243 = vsubq_s8(v235, v239);
  v244 = vsubq_s8(v235, v240);
  v245 = vsubq_s8(v235, v241);
  v246 = vceqq_s8(vaddq_s8(v241, v240), vnegq_s8(vaddq_s8(v238, v239)));
  v241.i64[0] = 0x404040404040404;
  v241.i64[1] = 0x404040404040404;
  v247 = vorrq_s8(vbicq_s8(v241, v246), v237);
  v248.i64[0] = 0x3000300030003;
  v248.i64[1] = 0x3000300030003;
  v162 = v551;
  v249 = vmovl_s8(*v551.i8);
  v239.i64[0] = 0x8000800080008;
  v239.i64[1] = 0x8000800080008;
  v250 = vbicq_s8(vmovl_s8(*v225.i8), vceqzq_s16(vandq_s8(v249, v239)));
  v251 = vandq_s8(v249, v248);
  v248.i64[0] = 0x2000200020002;
  v248.i64[1] = 0x2000200020002;
  v252 = vandq_s8(vceqq_s16(v251, v248), v239);
  v160 = v539;
  v163 = v537;
  v253 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v250, vandq_s8(vshll_n_s8(*v551.i8, 1uLL), v239)), v252), *v537.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v539.i8, *v174.i8), *v176.i8), 3uLL)), vaddq_s16(vmlal_s8(vaddw_u8(vmovl_s8(vbic_s8(*v235.i8, vcgt_u8(0x808080808080808, *v247.i8))), vand_s8(vadd_s8(*v247.i8, *v247.i8), 0x808080808080808)), *v242.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v244.i8, *v243.i8), *v245.i8), 3uLL)))), 0);
  if (vaddlvq_s8(v253))
  {
    v254.i64[0] = 0x707070707070707;
    v254.i64[1] = 0x707070707070707;
    v255 = vsubq_s8(v254, v232);
    v254.i64[0] = -1;
    v254.i64[1] = -1;
    v256 = vandq_s8(vsubq_s8(vshlq_s8(v254, v255), v227), v234);
    v161 = vbslq_s8(v253, vextq_s8(v14, v14, 0xCuLL), v552).u32[0];
    v158 = vbslq_s8(v253, v179, v553);
    v157 = vbslq_s8(v253, v180, v554);
    v546 = vbslq_s8(v253, v181, v546);
    v156 = vbslq_s8(v253, v182, v153);
    v547 = vbslq_s8(v253, v183, v547);
    v548 = vbslq_s8(v253, v184, v548);
    v549 = vbslq_s8(v253, v185, v549);
    v155 = vbslq_s8(v253, v186, v545);
    v163 = vbslq_s8(v253, v242, v537);
    v146 = vbslq_s8(v253, v243, v174);
    v160 = vbslq_s8(v253, v244, v539);
    v145 = vbslq_s8(v253, v245, v176);
    v154 = vbslq_s8(v253, v256, v543);
    v162 = vbslq_s8(v253, v247, v551);
    v73 = vbslq_s8(v253, v235, v225);
    v159 = *(a3 + a4);
  }

  else
  {
    v154 = v543;
    v155 = v545;
    v73 = v225;
    v156 = v153;
    v145 = v176;
    v158 = v553;
    v157 = v554;
    v146 = v174;
    v159 = *(a3 + a4);
    v161 = v552.i32[0];
  }

LABEL_16:
  v257 = vmovl_s8(*v162.i8);
  v258.i64[0] = 0x8000800080008;
  v258.i64[1] = 0x8000800080008;
  v259.i64[0] = 0x3000300030003;
  v259.i64[1] = 0x3000300030003;
  v260.i64[0] = 0x2000200020002;
  v260.i64[1] = 0x2000200020002;
  v261 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v73.i8), vceqzq_s16(vandq_s8(v257, v258))), vandq_s8(vshll_n_s8(*v162.i8, 1uLL), v258)), vandq_s8(vceqq_s16(vandq_s8(v257, v259), v260), v258)), *v163.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v160.i8, *v146.i8), *v145.i8), 3uLL));
  v262 = vpaddq_s16(v261, v261);
  if ((vpaddq_s16(v262, v262).i16[0] + 55) > 0x1FF)
  {
    *a1 = *a3;
    *(a1 + 16) = v540;
    v164 = 63;
    *(a1 + 32) = v159;
    *(a1 + 48) = v541;
    result = 64;
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
    v266 = vzip1_s8(*v73.i8, *v257.i8);
    v267 = vadd_s16(v266, 0xFF00FF00FF00FFLL);
    v268 = vmovl_u16(vceqz_s16((*&v266 & 0xFF00FF00FF00FFLL)));
    v269.i64[0] = v268.u32[0];
    v269.i64[1] = v268.u32[1];
    v270 = vshrq_n_s64(vshlq_n_s64(v269, 0x38uLL), 0x38uLL);
    v269.i64[0] = v268.u32[2];
    v269.i64[1] = v268.u32[3];
    v271 = vshrq_n_s64(vshlq_n_s64(v269, 0x38uLL), 0x38uLL);
    v272 = vshlq_u32(vmovl_u16(vand_s8(v267, 0x7000700070007)), xmmword_29D2F1070);
    v269.i64[0] = v272.u32[0];
    v269.i64[1] = v272.u32[1];
    v273 = v269;
    v269.i64[0] = v272.u32[2];
    v269.i64[1] = v272.u32[3];
    v274 = vorrq_s8(vbicq_s8(v273, v270), vbicq_s8(v269, v271));
    v275 = *&vorr_s8(*v274.i8, *&vextq_s8(v274, v274, 8uLL)) | (32 * (v162.i8[1] & 0x1F)) | ((v162.i8[3] & 0x1F) << 15) | ((v162.i8[2] & 0x1F) << 10) | v162.i8[0] & 0x1F;
    v276 = (v275 << v264) | v265;
    if (v264 >= 0x20)
    {
      *v263 = v276;
      v276 = v275 >> (-8 * (a1 & 7u));
    }

    v277 = (v161 & 1 | (2 * (BYTE1(v161) & 0x1F))) & 0xFFFFFFFFFFFFF83FLL | ((BYTE2(v161) & 0x1F) << 6) | ((HIBYTE(v161) & 0x1F) << 11);
    v278 = (v264 + 32) & 0x38;
    v279 = v276 | (v277 << v278);
    if (v278 >= 0x30)
    {
      *(v263 + (((v264 + 32) >> 3) & 8)) = v279;
      v279 = v277 >> -v278;
    }

    v280 = v264 + 48;
    v281 = vsubq_s8(v73, v163);
    v282 = vsubq_s8(v73, v146);
    v283 = vsubq_s8(v73, v160);
    v284 = vsubq_s8(v73, v145);
    v285 = vtrn1q_s8(v281, v282);
    v286 = vtrn2q_s8(v281, v282);
    v287 = vtrn1q_s8(v283, v284);
    v288 = vtrn2q_s8(v283, v284);
    v289 = vzip1q_s16(v286, v288);
    v290 = vtrn2q_s16(v286, v288);
    v288.i64[0] = vzip1q_s32(vzip1q_s16(v285, v287), v289).u64[0];
    v290.i64[0] = vzip1q_s32(vtrn2q_s16(v285, v287), v290).u64[0];
    v287.i64[0] = 0x202020202020202;
    v287.i64[1] = 0x202020202020202;
    v291 = vandq_s8(vmovl_s16(vtst_s16(*v257.i8, 0x4000400040004)), v287);
    v287.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v287.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v284.i64[0] = -1;
    v284.i64[1] = -1;
    v292 = vshlq_u8(v284, vorrq_s8(v291, v287));
    v293 = vmovl_u8(vand_s8(*v292.i8, *v288.i8));
    v294 = vmovl_u8(vand_s8(*&vextq_s8(v292, v292, 8uLL), *v290.i8));
    v295 = vmovl_u8(*v291.i8);
    v296 = vmovl_high_u8(v291);
    v297 = vpaddq_s16(vshlq_u16(v293, vtrn1q_s16(0, v295)), vshlq_u16(v294, vtrn1q_s16(0, v296)));
    v298 = vpaddq_s16(v295, v296);
    v299 = vmovl_u16(*v298.i8);
    v300 = vmovl_high_u16(v298);
    v301 = vpaddq_s32(vshlq_u32(vmovl_u16(*v297.i8), vtrn1q_s32(0, v299)), vshlq_u32(vmovl_high_u16(v297), vtrn1q_s32(0, v300)));
    v302 = vpaddq_s32(v299, v300);
    v303.i64[0] = v301.u32[0];
    v303.i64[1] = v301.u32[1];
    v304 = v303;
    v303.i64[0] = v301.u32[2];
    v303.i64[1] = v301.u32[3];
    v305 = v303;
    v303.i64[0] = v302.u32[0];
    v303.i64[1] = v302.u32[1];
    v306 = v303;
    v303.i64[0] = v302.u32[2];
    v303.i64[1] = v302.u32[3];
    v307 = vpaddq_s64(vshlq_u64(v304, vzip1q_s64(0, v306)), vshlq_u64(v305, vzip1q_s64(0, v303)));
    v308 = vpaddq_s64(v306, v303);
    v309 = (v264 + 48) & 0x38;
    v310 = (v307.i64[0] << v309) | v279;
    if ((v308.i64[0] + v309) >= 0x40)
    {
      *(v263 + ((v280 >> 3) & 8)) = v310;
      v310 = v307.i64[0] >> -v309;
      if (!v309)
      {
        v310 = 0;
      }
    }

    v311 = vceqq_s8(v73, v163);
    v312 = v308.i64[0] + v280;
    v313 = v310 | (v307.i64[1] << v312);
    if ((v312 & 0x3F) + v308.i64[1] >= 0x40)
    {
      *(v263 + ((v312 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v313;
      v313 = v307.i64[1] >> -(v312 & 0x3F);
      if ((v312 & 0x3F) == 0)
      {
        v313 = 0;
      }
    }

    v314 = vandq_s8(v154, v311);
    v315 = v312 + v308.i64[1];
    v316.i64[0] = 0x808080808080808;
    v316.i64[1] = 0x808080808080808;
    v317.i64[0] = -1;
    v317.i64[1] = -1;
    v318 = vandq_s8(vextq_s8(vtstq_s8(v162, v316), 0, 0xCuLL), v73);
    v319.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v319.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v320 = vandq_s8(vshlq_u8(v317, vaddq_s8(v318, v319)), v154);
    v321 = vmovl_u8(*v318.i8);
    v322 = vpaddq_s16(vshlq_u16(vmovl_u8(*v320.i8), vtrn1q_s16(0, v321)), vmovl_high_u8(v320));
    v323 = vpaddq_s16(v321, vmovl_high_u8(v318));
    v324 = vmovl_u16(*v323.i8);
    v325 = vmovl_high_u16(v323);
    v326 = vpaddq_s32(vshlq_u32(vmovl_u16(*v322.i8), vtrn1q_s32(0, v324)), vshlq_u32(vmovl_high_u16(v322), vtrn1q_s32(0, v325)));
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
    v334 = (v332.i64[0] << v315) | v313;
    if (v333.i64[0] + (v315 & 0x3F) >= 0x40)
    {
      *(v263 + ((v315 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v334;
      v334 = v332.i64[0] >> -(v315 & 0x3F);
      if ((v315 & 0x3F) == 0)
      {
        v334 = 0;
      }
    }

    v335 = vaddq_s8(v314, v158);
    v336 = v333.i64[0] + v315;
    v337 = v334 | (v332.i64[1] << v336);
    if ((v336 & 0x3F) + v333.i64[1] >= 0x40)
    {
      *(v263 + ((v336 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v337;
      v337 = v332.i64[1] >> -(v336 & 0x3F);
      if ((v336 & 0x3F) == 0)
      {
        v337 = 0;
      }
    }

    v338 = v336 + v333.i64[1];
    v339 = vextq_s8(0, v163, 0xCuLL);
    v340.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v340.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v341.i64[0] = -1;
    v341.i64[1] = -1;
    v342 = vandq_s8(vshlq_u8(v341, vaddq_s8(v339, v340)), v335);
    v343 = vmovl_u8(*v339.i8);
    v344 = vmovl_high_u8(v339);
    v345 = vpaddq_s16(vshlq_u16(vmovl_u8(*v342.i8), vtrn1q_s16(0, v343)), vshlq_u16(vmovl_high_u8(v342), vtrn1q_s16(0, v344)));
    v346 = vpaddq_s16(v343, v344);
    v347 = vmovl_u16(*v346.i8);
    v348 = vmovl_high_u16(v346);
    v349 = vpaddq_s32(vshlq_u32(vmovl_u16(*v345.i8), vtrn1q_s32(0, v347)), vshlq_u32(vmovl_high_u16(v345), vtrn1q_s32(0, v348)));
    v350 = vpaddq_s32(v347, v348);
    v351.i64[0] = v349.u32[0];
    v351.i64[1] = v349.u32[1];
    v352 = v351;
    v351.i64[0] = v349.u32[2];
    v351.i64[1] = v349.u32[3];
    v353 = v351;
    v351.i64[0] = v350.u32[0];
    v351.i64[1] = v350.u32[1];
    v354 = v351;
    v351.i64[0] = v350.u32[2];
    v351.i64[1] = v350.u32[3];
    v355 = vpaddq_s64(vshlq_u64(v352, vzip1q_s64(0, v354)), vshlq_u64(v353, vzip1q_s64(0, v351)));
    v356 = vpaddq_s64(v354, v351);
    v357 = (v355.i64[0] << v338) | v337;
    if (v356.i64[0] + (v338 & 0x3F) >= 0x40)
    {
      *(v263 + ((v338 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v357;
      v357 = v355.i64[0] >> -(v338 & 0x3F);
      if ((v338 & 0x3F) == 0)
      {
        v357 = 0;
      }
    }

    v358 = vceqq_s8(v73, v146);
    v359 = vaddq_s8(v157, v314);
    v360 = v356.i64[0] + v338;
    v361 = v357 | (v355.i64[1] << v360);
    if ((v360 & 0x3F) + v356.i64[1] >= 0x40)
    {
      *(v263 + ((v360 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v361;
      v361 = v355.i64[1] >> -(v360 & 0x3F);
      if ((v360 & 0x3F) == 0)
      {
        v361 = 0;
      }
    }

    v362 = vandq_s8(v154, v358);
    v363 = v360 + v356.i64[1];
    v364.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v364.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v365.i64[0] = -1;
    v365.i64[1] = -1;
    v366 = vandq_s8(vshlq_u8(v365, vaddq_s8(v163, v364)), v359);
    v367 = vmovl_u8(*v163.i8);
    v368 = vmovl_high_u8(v163);
    v369 = vpaddq_s16(vshlq_u16(vmovl_u8(*v366.i8), vtrn1q_s16(0, v367)), vshlq_u16(vmovl_high_u8(v366), vtrn1q_s16(0, v368)));
    v370 = vpaddq_s16(v367, v368);
    v371 = vmovl_u16(*v370.i8);
    v372 = vmovl_high_u16(v370);
    v373 = vpaddq_s32(vshlq_u32(vmovl_u16(*v369.i8), vtrn1q_s32(0, v371)), vshlq_u32(vmovl_high_u16(v369), vtrn1q_s32(0, v372)));
    v374 = vpaddq_s32(v371, v372);
    v375.i64[0] = v373.u32[0];
    v375.i64[1] = v373.u32[1];
    v376 = v375;
    v375.i64[0] = v373.u32[2];
    v375.i64[1] = v373.u32[3];
    v377 = v375;
    v375.i64[0] = v374.u32[0];
    v375.i64[1] = v374.u32[1];
    v378 = v375;
    v375.i64[0] = v374.u32[2];
    v375.i64[1] = v374.u32[3];
    v379 = vpaddq_s64(vshlq_u64(v376, vzip1q_s64(0, v378)), vshlq_u64(v377, vzip1q_s64(0, v375)));
    v380 = vpaddq_s64(v378, v375);
    v381 = (v379.i64[0] << v363) | v361;
    if (v380.i64[0] + (v363 & 0x3F) >= 0x40)
    {
      *(v263 + ((v363 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v381;
      v381 = v379.i64[0] >> -(v363 & 0x3F);
      if ((v363 & 0x3F) == 0)
      {
        v381 = 0;
      }
    }

    v382 = vaddq_s8(v546, v362);
    v383 = v380.i64[0] + v363;
    v384 = v381 | (v379.i64[1] << v383);
    if ((v383 & 0x3F) + v380.i64[1] >= 0x40)
    {
      *(v263 + ((v383 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v384;
      v384 = v379.i64[1] >> -(v383 & 0x3F);
      if ((v383 & 0x3F) == 0)
      {
        v384 = 0;
      }
    }

    v385 = v383 + v380.i64[1];
    v386.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v386.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v387.i64[0] = -1;
    v387.i64[1] = -1;
    v388 = vshlq_u8(v387, vaddq_s8(v146, v386));
    v389 = vandq_s8(v388, v382);
    v390 = vmovl_u8(*v389.i8);
    v391 = vmovl_high_u8(v389);
    v392 = vmovl_u8(*v146.i8);
    v393 = vmovl_high_u8(v146);
    v394 = vtrn1q_s16(0, v392);
    v395 = vtrn1q_s16(0, v393);
    v396 = vpaddq_s16(vshlq_u16(v390, v394), vshlq_u16(v391, v395));
    v397 = vpaddq_s16(v392, v393);
    v398 = vmovl_u16(*v396.i8);
    v399 = vmovl_high_u16(v396);
    v400 = vmovl_u16(*v397.i8);
    v401 = vmovl_high_u16(v397);
    v402 = vtrn1q_s32(0, v400);
    v403 = vtrn1q_s32(0, v401);
    v404 = vpaddq_s32(vshlq_u32(v398, v402), vshlq_u32(v399, v403));
    v405 = vpaddq_s32(v400, v401);
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
    v410 = vzip1q_s64(0, v409);
    v411 = vzip1q_s64(0, v406);
    v412 = vpaddq_s64(vshlq_u64(v407, v410), vshlq_u64(v408, v411));
    v413 = vpaddq_s64(v409, v406);
    v414 = (v412.i64[0] << v385) | v384;
    if (v413.i64[0] + (v385 & 0x3F) >= 0x40)
    {
      *(v263 + ((v385 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v414;
      if ((v385 & 0x3F) != 0)
      {
        v414 = v412.i64[0] >> -(v385 & 0x3F);
      }

      else
      {
        v414 = 0;
      }
    }

    v415 = vceqq_s8(v73, v160);
    v416 = vaddq_s8(v156, v362);
    v417 = v413.i64[0] + v385;
    v418 = v414 | (v412.i64[1] << v417);
    if ((v417 & 0x3F) + v413.i64[1] >= 0x40)
    {
      *(v263 + ((v417 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v418;
      v418 = v412.i64[1] >> -(v417 & 0x3F);
      if ((v417 & 0x3F) == 0)
      {
        v418 = 0;
      }
    }

    v419 = vandq_s8(v154, v415);
    v420 = v417 + v413.i64[1];
    v421 = vandq_s8(v388, v416);
    v422 = vpaddq_s16(vshlq_u16(vmovl_u8(*v421.i8), v394), vshlq_u16(vmovl_high_u8(v421), v395));
    v423 = vpaddq_s32(vshlq_u32(vmovl_u16(*v422.i8), v402), vshlq_u32(vmovl_high_u16(v422), v403));
    v424.i64[0] = v423.u32[0];
    v424.i64[1] = v423.u32[1];
    v425 = v424;
    v424.i64[0] = v423.u32[2];
    v424.i64[1] = v423.u32[3];
    v426 = vpaddq_s64(vshlq_u64(v425, v410), vshlq_u64(v424, v411));
    v427 = (v426.i64[0] << v420) | v418;
    if (v413.i64[0] + (v420 & 0x3F) >= 0x40)
    {
      *(v263 + ((v420 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v427;
      v427 = v426.i64[0] >> -(v420 & 0x3F);
      if ((v420 & 0x3F) == 0)
      {
        v427 = 0;
      }
    }

    v428 = vaddq_s8(v547, v419);
    v429 = v413.i64[0] + v420;
    v430 = (v413.i64[0] + v420) & 0x3F;
    v431 = v427 | (v426.i64[1] << v429);
    if ((v429 & 0x3F) + v413.i64[1] >= 0x40)
    {
      *(v263 + ((v429 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v431;
      v431 = v426.i64[1] >> -v430;
      if (!v430)
      {
        v431 = 0;
      }
    }

    v432 = v429 + v413.i64[1];
    v433.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v433.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v434.i64[0] = -1;
    v434.i64[1] = -1;
    v435 = vshlq_u8(v434, vaddq_s8(v160, v433));
    v436 = vandq_s8(v435, v428);
    v437 = vmovl_u8(*v436.i8);
    v438 = vmovl_high_u8(v436);
    v439 = vmovl_u8(*v160.i8);
    v440 = vmovl_high_u8(v160);
    v441 = vtrn1q_s16(0, v439);
    v442 = vtrn1q_s16(0, v440);
    v443 = vpaddq_s16(vshlq_u16(v437, v441), vshlq_u16(v438, v442));
    v444 = vpaddq_s16(v439, v440);
    v445 = vmovl_u16(*v443.i8);
    v446 = vmovl_high_u16(v443);
    v447 = vmovl_u16(*v444.i8);
    v448 = vmovl_high_u16(v444);
    v449 = vtrn1q_s32(0, v447);
    v450 = vtrn1q_s32(0, v448);
    v451 = vpaddq_s32(vshlq_u32(v445, v449), vshlq_u32(v446, v450));
    v452 = vpaddq_s32(v447, v448);
    v453.i64[0] = v451.u32[0];
    v453.i64[1] = v451.u32[1];
    v454 = v453;
    v453.i64[0] = v451.u32[2];
    v453.i64[1] = v451.u32[3];
    v455 = v453;
    v453.i64[0] = v452.u32[0];
    v453.i64[1] = v452.u32[1];
    v456 = v453;
    v453.i64[0] = v452.u32[2];
    v453.i64[1] = v452.u32[3];
    v457 = vzip1q_s64(0, v456);
    v458 = vzip1q_s64(0, v453);
    v459 = vpaddq_s64(vshlq_u64(v454, v457), vshlq_u64(v455, v458));
    v460 = vpaddq_s64(v456, v453);
    v461 = (v459.i64[0] << v432) | v431;
    if (v460.i64[0] + (v432 & 0x3F) >= 0x40)
    {
      *(v263 + ((v432 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v461;
      if ((v432 & 0x3F) != 0)
      {
        v461 = v459.i64[0] >> -(v432 & 0x3F);
      }

      else
      {
        v461 = 0;
      }
    }

    v462 = vceqq_s8(v73, v145);
    v463 = vaddq_s8(v548, v419);
    v464 = v460.i64[0] + v432;
    v465 = v461 | (v459.i64[1] << v464);
    if ((v464 & 0x3F) + v460.i64[1] >= 0x40)
    {
      *(v263 + ((v464 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v465;
      v465 = v459.i64[1] >> -(v464 & 0x3F);
      if ((v464 & 0x3F) == 0)
      {
        v465 = 0;
      }
    }

    v466 = vandq_s8(v154, v462);
    v467 = v464 + v460.i64[1];
    v468 = vandq_s8(v435, v463);
    v469 = vpaddq_s16(vshlq_u16(vmovl_u8(*v468.i8), v441), vshlq_u16(vmovl_high_u8(v468), v442));
    v470 = vpaddq_s32(vshlq_u32(vmovl_u16(*v469.i8), v449), vshlq_u32(vmovl_high_u16(v469), v450));
    v471.i64[0] = v470.u32[0];
    v471.i64[1] = v470.u32[1];
    v472 = v471;
    v471.i64[0] = v470.u32[2];
    v471.i64[1] = v470.u32[3];
    v473 = vpaddq_s64(vshlq_u64(v472, v457), vshlq_u64(v471, v458));
    v474 = (v473.i64[0] << v467) | v465;
    if (v460.i64[0] + (v467 & 0x3F) >= 0x40)
    {
      *(v263 + ((v467 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v474;
      v474 = v473.i64[0] >> -(v467 & 0x3F);
      if ((v467 & 0x3F) == 0)
      {
        v474 = 0;
      }
    }

    v475 = vaddq_s8(v549, v466);
    v476 = v460.i64[0] + v467;
    v477 = (v460.i64[0] + v467) & 0x3F;
    v478 = v474 | (v473.i64[1] << v476);
    if ((v476 & 0x3F) + v460.i64[1] >= 0x40)
    {
      *(v263 + ((v476 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v478;
      v478 = v473.i64[1] >> -v477;
      if (!v477)
      {
        v478 = 0;
      }
    }

    v479 = v476 + v460.i64[1];
    v480.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v480.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v481.i64[0] = -1;
    v481.i64[1] = -1;
    v482 = vshlq_u8(v481, vaddq_s8(v145, v480));
    v483 = vandq_s8(v482, v475);
    v484 = vmovl_u8(*v483.i8);
    v485 = vmovl_high_u8(v483);
    v486 = vmovl_u8(*v145.i8);
    v487 = vmovl_high_u8(v145);
    v488 = vtrn1q_s16(0, v486);
    v489 = vtrn1q_s16(0, v487);
    v490 = vpaddq_s16(vshlq_u16(v484, v488), vshlq_u16(v485, v489));
    v491 = vpaddq_s16(v486, v487);
    v492 = vmovl_u16(*v490.i8);
    v493 = vmovl_high_u16(v490);
    v494 = vmovl_u16(*v491.i8);
    v495 = vmovl_high_u16(v491);
    v496 = vtrn1q_s32(0, v494);
    v497 = vtrn1q_s32(0, v495);
    v498 = vpaddq_s32(vshlq_u32(v492, v496), vshlq_u32(v493, v497));
    v499 = vpaddq_s32(v494, v495);
    v500.i64[0] = v498.u32[0];
    v500.i64[1] = v498.u32[1];
    v501 = v500;
    v500.i64[0] = v498.u32[2];
    v500.i64[1] = v498.u32[3];
    v502 = v500;
    v500.i64[0] = v499.u32[0];
    v500.i64[1] = v499.u32[1];
    v503 = v500;
    v500.i64[0] = v499.u32[2];
    v500.i64[1] = v499.u32[3];
    v504 = vzip1q_s64(0, v503);
    v505 = vzip1q_s64(0, v500);
    v506 = vpaddq_s64(vshlq_u64(v501, v504), vshlq_u64(v502, v505));
    v507 = vpaddq_s64(v503, v500);
    v508 = (v506.i64[0] << v479) | v478;
    if (v507.i64[0] + (v479 & 0x3F) > 0x3F)
    {
      *(v263 + ((v479 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v508;
      if ((v479 & 0x3F) != 0)
      {
        v508 = v506.i64[0] >> -(v479 & 0x3F);
      }

      else
      {
        v508 = 0;
      }
    }

    v509 = vaddq_s8(v155, v466);
    v510 = v507.i64[0] + v479;
    v511 = v508 | (v506.i64[1] << v510);
    if ((v510 & 0x3F) + v507.i64[1] >= 0x40)
    {
      *(v263 + ((v510 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v511;
      v511 = v506.i64[1] >> -(v510 & 0x3F);
      if ((v510 & 0x3F) == 0)
      {
        v511 = 0;
      }
    }

    v512 = v510 + v507.i64[1];
    v513 = vandq_s8(v482, v509);
    v514 = vpaddq_s16(vshlq_u16(vmovl_u8(*v513.i8), v488), vshlq_u16(vmovl_high_u8(v513), v489));
    v515 = vpaddq_s32(vshlq_u32(vmovl_u16(*v514.i8), v496), vshlq_u32(vmovl_high_u16(v514), v497));
    v516.i64[0] = v515.u32[0];
    v516.i64[1] = v515.u32[1];
    v517 = v516;
    v516.i64[0] = v515.u32[2];
    v516.i64[1] = v515.u32[3];
    v518 = vpaddq_s64(vshlq_u64(v517, v504), vshlq_u64(v516, v505));
    v519 = (v518.i64[0] << v512) | v511;
    if (v507.i64[0] + (v512 & 0x3F) >= 0x40)
    {
      *(v263 + ((v512 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v519;
      v519 = v518.i64[0] >> -(v512 & 0x3F);
      if ((v512 & 0x3F) == 0)
      {
        v519 = 0;
      }
    }

    v520 = v507.i64[0] + v512;
    v521 = (v507.i64[0] + v512) & 0x3F;
    v522 = v519 | (v518.i64[1] << (v507.i8[0] + v512));
    if ((v521 + v507.i64[1]) >= 0x40)
    {
      *(v263 + ((v520 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v522;
      v522 = v518.i64[1] >> -v521;
      if (!v521)
      {
        v522 = 0;
      }
    }

    v523 = v520 + v507.i64[1];
    if ((v523 & 0x3F) != 0)
    {
      *(v263 + ((v523 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v522;
    }

    result = (v523 - v264 + 7) >> 3;
    v164 = *a2 | (result - 1);
  }

LABEL_91:
  *a2 = v164;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(uint64_t result, uint64_t a2, uint64_t a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 32, a2, v14, v13);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + v15, a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, v11 + v15 + 32, a2, v20, v19);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 64, a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 96, a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, v11 + v15 + 64, a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, v11 + v15 + 96, a2, v30, v29);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int32x4_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v313 = 0;
  v312 = (8 * (a3 & 7)) | 0x200;
  v310 = 8 * (a3 & 7);
  v311 = a3 & 0xFFFFFFFFFFFFFFF8;
  result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)8,AGX::AppleCompressionGen2::Vec<signed char>>(&v315, v320, &v314, &v310, a4);
  v8.i64[0] = 0x303030303030303;
  v8.i64[1] = 0x303030303030303;
  v309 = vandq_s8(v315, v8);
  v9 = vbicq_s8(v320[0], vceqq_s8(v309, v8));
  v320[0] = v9;
  v316 = v9;
  v317 = v9;
  v318 = v9;
  v319 = v9;
  v10.i64[0] = 0x202020202020202;
  v10.i64[1] = 0x202020202020202;
  v11 = vandq_s8(vmovl_s16(vtst_s16(*&vmovl_u8(*v315.i8), 0x4000400040004)), v10);
  v12 = v310;
  if (vmaxvq_s8(v11) < 1)
  {
    v26.i64[0] = -1;
    v26.i64[1] = -1;
    v306 = v26;
    v307 = v26;
    v305 = v26;
    v308 = v26;
  }

  else
  {
    v13 = vmovl_u8(*&vpaddq_s8(v11, v11));
    v14 = vmovl_u16(*&vpaddq_s16(v13, v13));
    v15 = vpaddq_s32(v14, v14).u64[0];
    v16.i64[0] = v15;
    v16.i64[1] = HIDWORD(v15);
    v17 = v16;
    v18 = vaddvq_s64(v16);
    v19 = v18;
    v20 = v310 + v18;
    if (v312)
    {
      v21 = v312 >= v20;
    }

    else
    {
      v21 = 1;
    }

    v22 = v21;
    if (v18 <= 0x80 && (v22 & 1) != 0)
    {
      v7.i64[0] = 63;
      v23 = (v311 + 8 * (v310 >> 6));
      v24 = vaddq_s64(vdupq_lane_s64(vandq_s8(v310, v7).i64[0], 0), vzip1q_s64(0, v17));
      v25 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v23, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v24)), vshlq_u64(vdupq_lane_s64(v23->i64[0], 0), vnegq_s64(v24)));
      if ((v310 & 0x3F) + v19 >= 0x81)
      {
        v25 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v23[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v24)), vshlq_u64(vdupq_laneq_s64(v23[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v24))), v25);
      }

      v12 = v20;
    }

    else
    {
      v313 = 1;
      v25 = 0uLL;
    }

    v27 = vzip1_s32(*v14.i8, *&vextq_s8(v14, v14, 8uLL));
    v28.i64[0] = v27.u32[0];
    v28.i64[1] = v27.u32[1];
    v29 = vshlq_u64(v25, vnegq_s64(v28));
    v30 = vuzp1q_s32(vzip1q_s64(v25, v29), vzip2q_s64(v25, v29));
    v31 = vshlq_u32(v30, vnegq_s32((*&v13 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v32 = vuzp1q_s16(vzip1q_s32(v30, v31), vzip2q_s32(v30, v31));
    v33 = vshlq_u16(v32, vnegq_s16((*&v11 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
    v34 = vuzp1q_s8(vzip1q_s16(v32, v33), vzip2q_s16(v32, v33));
    v33.i64[0] = 0x101010101010101;
    v33.i64[1] = 0x101010101010101;
    v35 = vshlq_s8(v33, v11);
    v33.i64[0] = -1;
    v33.i64[1] = -1;
    v36 = vqtbl1q_s8(vandq_s8(vaddq_s8(v35, v33), v34), xmmword_29D2F0F70);
    v37 = vdupq_lane_s32(*v36.i8, 0);
    v38 = vdupq_lane_s32(*v36.i8, 1);
    v39 = vdupq_laneq_s32(v36, 2);
    v40 = vdupq_laneq_s32(v36, 3);
    v316 = vsubq_s8(v316, v37);
    v317 = vsubq_s8(v317, v38);
    v318 = vsubq_s8(v318, v39);
    v319 = vsubq_s8(v319, v40);
    v305 = vceqzq_s8(v38);
    v306 = vceqzq_s8(v39);
    v307 = vceqzq_s8(v40);
    v308 = vceqzq_s8(v37);
  }

  v41.i64[0] = 0x808080808080808;
  v41.i64[1] = 0x808080808080808;
  v42 = 0uLL;
  v43 = vandq_s8(vextq_s8(vtstq_s8(v315, v41), 0, 0xCuLL), v9);
  v44 = vmovl_u8(*&vpaddq_s8(v43, v43));
  v45 = vmovl_u16(*&vpaddq_s16(v44, v44));
  v46 = vpaddq_s32(v45, v45).u64[0];
  v47.i64[0] = v46;
  v47.i64[1] = HIDWORD(v46);
  v48 = v47;
  v49 = vaddvq_s64(v47);
  if (v312)
  {
    v50 = v312 >= v12 + v49;
  }

  else
  {
    v50 = 1;
  }

  v51 = v50;
  if (v49 <= 0x80 && (v51 & 1) != 0)
  {
    v52 = vaddq_s64(vdupq_n_s64(v12 & 0x3F), vzip1q_s64(0, v48));
    v53 = (v311 + 8 * (v12 >> 6));
    v42 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v53, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v52)), vshlq_u64(vdupq_lane_s64(v53->i64[0], 0), vnegq_s64(v52)));
    if ((v12 & 0x3F) + v49 >= 0x81)
    {
      v42 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v53[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v52)), vshlq_u64(vdupq_laneq_s64(v53[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v52))), v42);
    }

    v12 += v49;
  }

  else
  {
    v313 = 1;
  }

  v54 = v315.i8[0] & 3;
  if (v54 == 2)
  {
    if (v312)
    {
      v55 = v12 + 4;
      v56 = v12 + 8;
      if (v312 >= v12 + 4)
      {
        v12 += 4;
      }

      else
      {
        v56 = v12 + 4;
      }

      if (v312 >= v56)
      {
        v12 = v56;
      }

      if (v312 < v55 || v312 < v56)
      {
        v313 = 1;
      }
    }

    else
    {
      v12 += 8;
    }
  }

  v57 = 0uLL;
  v58 = vextq_s8(0, v316, 0xCuLL);
  v59 = vmovl_u8(*&vpaddq_s8(v58, v58));
  v60 = vmovl_u16(*&vpaddq_s16(v59, v59));
  v61 = vpaddq_s32(v60, v60).u64[0];
  v62.i64[0] = v61;
  v62.i64[1] = HIDWORD(v61);
  v63 = v62;
  v64 = vaddvq_s64(v62);
  v65 = v12 + v64;
  if (v312)
  {
    v66 = v312 >= v65;
  }

  else
  {
    v66 = 1;
  }

  v67 = v66;
  if (v64 <= 0x80 && (v67 & 1) != 0)
  {
    v68 = v12 & 0x3F;
    v69 = vaddq_s64(vdupq_n_s64(v68), vzip1q_s64(0, v63));
    v70 = v311;
    v71 = (v311 + 8 * (v12 >> 6));
    v57 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v71, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v69)), vshlq_u64(vdupq_lane_s64(v71->i64[0], 0), vnegq_s64(v69)));
    if (v68 + v64 >= 0x81)
    {
      v57 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v71[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v69)), vshlq_u64(vdupq_laneq_s64(v71[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v69))), v57);
    }

    v72 = v313;
    v12 = v65;
  }

  else
  {
    v72 = 1;
    v70 = v311;
  }

  v73 = vmovl_u8(*&vpaddq_s8(v316, v316));
  v74 = vmovl_u16(*&vpaddq_s16(v73, v73));
  v75 = vpaddq_s32(v74, v74).u64[0];
  v76.i64[0] = v75;
  v76.i64[1] = HIDWORD(v75);
  v77 = v76;
  v78 = vaddvq_s64(v76);
  v79 = v12 + v78;
  if (v312)
  {
    v80 = v312 >= v79;
  }

  else
  {
    v80 = 1;
  }

  v81 = v80;
  v82 = 0uLL;
  if (v78 <= 0x80 && v81)
  {
    v83 = v12 & 0x3F;
    v84 = vaddq_s64(vdupq_n_s64(v83), vzip1q_s64(0, v77));
    v85 = (v70 + 8 * (v12 >> 6));
    v86 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v85, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v84)), vshlq_u64(vdupq_lane_s64(v85->i64[0], 0), vnegq_s64(v84)));
    if (v83 + v78 >= 0x81)
    {
      v86 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v85[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v84)), vshlq_u64(vdupq_laneq_s64(v85[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v84))), v86);
    }
  }

  else
  {
    v72 = 1;
    v79 = v12;
    v86 = 0uLL;
  }

  v87 = vmovl_u8(*&vpaddq_s8(v317, v317));
  v88 = vmovl_u16(*&vpaddq_s16(v87, v87));
  v89 = vpaddq_s32(v88, v88).u64[0];
  v90.i64[0] = v89;
  v90.i64[1] = HIDWORD(v89);
  v91 = v90;
  v92 = vaddvq_s64(v90);
  v93 = v92;
  v94 = v79 + v92;
  if (v312)
  {
    v95 = v312 >= v94;
  }

  else
  {
    v95 = 1;
  }

  v96 = v95;
  if (v92 <= 0x80 && v96)
  {
    v97 = v79 & 0x3F;
    v98 = vaddq_s64(vdupq_n_s64(v97), vzip1q_s64(0, v91));
    v99 = (v70 + 8 * (v79 >> 6));
    v82 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v99, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v98)), vshlq_u64(vdupq_lane_s64(v99->i64[0], 0), vnegq_s64(v98)));
    if (v97 + v93 >= 0x81)
    {
      v82 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v99[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v98)), vshlq_u64(vdupq_laneq_s64(v99[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v98))), v82);
    }
  }

  else
  {
    v72 = 1;
    v94 = v79;
  }

  v100 = v94 + v93;
  if (v312)
  {
    v101 = v312 >= v100;
  }

  else
  {
    v101 = 1;
  }

  v102 = v101;
  v103 = 0uLL;
  if (v93 <= 0x80 && v102)
  {
    v104 = v94 & 0x3F;
    v105 = vaddq_s64(vdupq_n_s64(v104), vzip1q_s64(0, v91));
    v106 = (v70 + 8 * (v94 >> 6));
    v107 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v106, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v105)), vshlq_u64(vdupq_lane_s64(v106->i64[0], 0), vnegq_s64(v105)));
    if (v104 + v93 >= 0x81)
    {
      v107 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v106[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v105)), vshlq_u64(vdupq_laneq_s64(v106[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v105))), v107);
    }
  }

  else
  {
    v72 = 1;
    v100 = v94;
    v107 = 0uLL;
  }

  v108 = vmovl_u8(*&vpaddq_s8(v318, v318));
  v109 = vmovl_u16(*&vpaddq_s16(v108, v108));
  v110 = vpaddq_s32(v109, v109).u64[0];
  v111.i64[0] = v110;
  v111.i64[1] = HIDWORD(v110);
  v112 = v111;
  v113 = vaddvq_s64(v111);
  v114 = v113;
  v115 = v100 + v113;
  if (v312)
  {
    v116 = v312 >= v115;
  }

  else
  {
    v116 = 1;
  }

  v117 = v116;
  if (v113 <= 0x80 && v117)
  {
    v118 = v100 & 0x3F;
    v119 = vaddq_s64(vdupq_n_s64(v118), vzip1q_s64(0, v112));
    v120 = (v70 + 8 * (v100 >> 6));
    v103 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v120, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v119)), vshlq_u64(vdupq_lane_s64(v120->i64[0], 0), vnegq_s64(v119)));
    if (v118 + v114 >= 0x81)
    {
      v103 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v120[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v119)), vshlq_u64(vdupq_laneq_s64(v120[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v119))), v103);
    }
  }

  else
  {
    v72 = 1;
    v115 = v100;
  }

  v121 = v115 + v114;
  if (v312)
  {
    v122 = v312 >= v121;
  }

  else
  {
    v122 = 1;
  }

  v123 = v122;
  v124 = 0uLL;
  if (v114 <= 0x80 && v123)
  {
    v125 = v115 & 0x3F;
    v126 = vaddq_s64(vdupq_n_s64(v125), vzip1q_s64(0, v112));
    v127 = (v70 + 8 * (v115 >> 6));
    v128 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v127, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v126)), vshlq_u64(vdupq_lane_s64(v127->i64[0], 0), vnegq_s64(v126)));
    if (v125 + v114 >= 0x81)
    {
      v128 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v127[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v126)), vshlq_u64(vdupq_laneq_s64(v127[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v126))), v128);
    }
  }

  else
  {
    v72 = 1;
    v121 = v115;
    v128 = 0uLL;
  }

  v129 = vmovl_u8(*&vpaddq_s8(v319, v319));
  v130 = vmovl_u16(*&vpaddq_s16(v129, v129));
  v131 = vpaddq_s32(v130, v130).u64[0];
  v132.i64[0] = v131;
  v132.i64[1] = HIDWORD(v131);
  v133 = v132;
  v134 = vaddvq_s64(v132);
  v135 = v134;
  v136 = v121 + v134;
  if (v312)
  {
    v137 = v312 >= v136;
  }

  else
  {
    v137 = 1;
  }

  v138 = v137;
  if (v134 <= 0x80 && v138)
  {
    v139 = v121 & 0x3F;
    v140 = vaddq_s64(vdupq_n_s64(v139), vzip1q_s64(0, v133));
    v141 = (v70 + 8 * (v121 >> 6));
    v124 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
    if (v139 + v135 >= 0x81)
    {
      v124 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v124);
    }
  }

  else
  {
    v72 = 1;
    v136 = v121;
  }

  v142 = v136 + v135;
  if (v312)
  {
    v143 = v312 >= v142;
  }

  else
  {
    v143 = 1;
  }

  v144 = v143;
  if (v135 > 0x80 || !v144)
  {
    goto LABEL_132;
  }

  v145 = vaddq_s64(vdupq_n_s64(v136 & 0x3F), vzip1q_s64(0, v133));
  v146 = (v70 + 8 * (v136 >> 6));
  v147 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v146, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v145)), vshlq_u64(vdupq_lane_s64(v146->i64[0], 0), vnegq_s64(v145)));
  if ((v136 & 0x3F) + v135 >= 0x81)
  {
    v147 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v146[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v145)), vshlq_u64(vdupq_laneq_s64(v146[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v145))), v147);
  }

  if ((v72 & 1) != 0 || v312 + 8 * result - v142 - 512 >= 9 || v54 == 2)
  {
LABEL_132:
    v148 = 8 * ((&v321 + 6) & 7);
    v321 |= 15 << v148;
    v149 = (v148 + 8) & 0x38;
    v150 = (v148 + 8) & 0x40;
    if (((v150 + v149 - v148) | 4) <= 0x10)
    {
      v151 = (v148 + 8) >> 6;
      v152 = *(&v321 + v151);
      *(&v321 + v151) = (15 << v149) | v152;
      if ((v149 | 4) - v148 + v150 + 4 <= 0x10)
      {
        *(&v321 + v151) = (255 << v149) | v152;
      }
    }

    result = 0;
    v153 = (a1->i64 + a2);
    a1->i64[0] = 0;
    a1->i64[1] = 0;
    v154 = (a1->i64 + 2 * a2);
    *v153 = 0;
    v153[1] = 0;
    v155 = (a1->i64 + 2 * a2 + a2);
    *v154 = 0;
    v154[1] = 0;
    *v155 = 0;
    v155[1] = 0;
  }

  else
  {
    v156 = vzip1_s32(*v45.i8, *&vextq_s8(v45, v45, 8uLL));
    v157 = vzip1_s32(*v88.i8, *&vextq_s8(v88, v88, 8uLL));
    v158 = vzip1_s32(*v109.i8, *&vextq_s8(v109, v109, 8uLL));
    v159 = vzip1_s32(*v130.i8, *&vextq_s8(v130, v130, 8uLL));
    v160.i64[0] = v156.u32[0];
    v160.i64[1] = v156.u32[1];
    v161 = vshlq_u64(v42, vnegq_s64(v160));
    v162 = vzip2q_s64(v42, v161);
    v163 = vzip1q_s64(v42, v161);
    v160.i64[0] = v157.u32[0];
    v160.i64[1] = v157.u32[1];
    v164 = vnegq_s64(v160);
    v165 = vshlq_u64(v82, v164);
    v166 = vzip2q_s64(v82, v165);
    v167 = vzip1q_s64(v82, v165);
    v168 = vshlq_u64(v107, v164);
    v169 = vzip2q_s64(v107, v168);
    v170 = vzip1q_s64(v107, v168);
    v160.i64[0] = v158.u32[0];
    v160.i64[1] = v158.u32[1];
    v171 = vnegq_s64(v160);
    v172 = vshlq_u64(v103, v171);
    v173 = vzip2q_s64(v103, v172);
    v174 = vzip1q_s64(v103, v172);
    v175 = vshlq_u64(v128, v171);
    v160.i64[0] = v159.u32[0];
    v160.i64[1] = v159.u32[1];
    v176 = vnegq_s64(v160);
    v177 = vshlq_u64(v124, v176);
    v178 = vuzp1q_s32(v163, v162);
    v179 = vuzp1q_s32(v167, v166);
    v180 = vuzp1q_s32(v170, v169);
    v181 = vnegq_s32((*&v44 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v182 = vnegq_s32((*&v87 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v183 = vuzp1q_s32(v174, v173);
    v184 = vnegq_s32((*&v108 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v185 = vuzp1q_s32(vzip1q_s64(v128, v175), vzip2q_s64(v128, v175));
    v186 = vuzp1q_s32(vzip1q_s64(v124, v177), vzip2q_s64(v124, v177));
    v187 = vnegq_s32((*&v129 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v188 = vshlq_u32(v178, v181);
    v189 = vshlq_u32(v179, v182);
    v190 = vshlq_u32(v180, v182);
    v191 = vshlq_u32(v183, v184);
    v192 = vshlq_u32(v185, v184);
    v193 = vzip2q_s32(v178, v188);
    v194 = vzip1q_s32(v178, v188);
    v195 = vzip2q_s32(v179, v189);
    v196 = vzip1q_s32(v179, v189);
    v197 = vzip2q_s32(v180, v190);
    v198 = vzip1q_s32(v180, v190);
    v199 = vzip2q_s32(v183, v191);
    v200 = vzip1q_s32(v183, v191);
    v201 = vzip2q_s32(v185, v192);
    v202 = vzip1q_s32(v185, v192);
    v203 = vshlq_u32(v186, v187);
    v204 = vzip2q_s32(v186, v203);
    v205 = vzip1q_s32(v186, v203);
    v206 = vuzp1q_s16(v194, v193);
    v207 = vuzp1q_s16(v196, v195);
    v208 = vuzp1q_s16(v198, v197);
    v209 = vuzp1q_s16(v200, v199);
    v210 = vnegq_s16((*&v317 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v211 = vuzp1q_s16(v202, v201);
    v212 = vuzp1q_s16(v205, v204);
    v213 = vshlq_u16(v206, vnegq_s16((*&v43 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v214 = vshlq_u16(v207, v210);
    v215 = vshlq_u16(v208, v210);
    v216 = vzip2q_s16(v206, v213);
    v217 = vzip1q_s16(v206, v213);
    v218 = vuzp1q_s8(vzip1q_s16(v207, v214), vzip2q_s16(v207, v214));
    v214.i64[0] = 0x808080808080808;
    v214.i64[1] = 0x808080808080808;
    v219 = vuzp1q_s8(vzip1q_s16(v208, v215), vzip2q_s16(v208, v215));
    v207.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v207.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v220 = vsubq_s8(v214, v43);
    v221 = vaddq_s8(v43, v207);
    v222.i64[0] = 0x808080808080808;
    v222.i64[1] = 0x808080808080808;
    v223 = vshlq_s8(vuzp1q_s8(v217, v216), v220);
    v220.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v220.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v224 = vsubq_s8(v222, v317);
    v225 = vaddq_s8(v317, v220);
    v226 = vshlq_s8(v218, v224);
    v227 = vnegq_s16((*&v318 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v228 = vshlq_s8(v223, v221);
    v229 = vshlq_s8(v226, v225);
    v230 = vshlq_s8(vshlq_s8(v219, v224), v225);
    v231 = vdupq_lane_s32(*v228.i8, 0);
    v232 = vandq_s8(v305, v231);
    v233 = vsubq_s8(v229, v232);
    v234 = vsubq_s8(v230, v232);
    v235 = vshlq_u16(v209, v227);
    v236 = vshlq_u16(v211, v227);
    v232.i64[0] = 0x808080808080808;
    v232.i64[1] = 0x808080808080808;
    v221.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v221.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v237 = vsubq_s8(v232, v318);
    v238 = vaddq_s8(v318, v221);
    v239 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v211, v236), vzip2q_s16(v211, v236)), v237);
    v240 = vnegq_s16((*&v319 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v241 = vandq_s8(v306, v231);
    v242 = vsubq_s8(vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v209, v235), vzip2q_s16(v209, v235)), v237), v238), v241);
    v243 = vsubq_s8(vshlq_s8(v239, v238), v241);
    v244 = vshlq_u16(v212, v240);
    v241.i64[0] = 0x808080808080808;
    v241.i64[1] = 0x808080808080808;
    v239.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v239.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v245 = vsubq_s8(v241, v319);
    v246 = vaddq_s8(v319, v239);
    v247 = vshlq_u64(v147, v176);
    v248 = vuzp1q_s32(vzip1q_s64(v147, v247), vzip2q_s64(v147, v247));
    v249 = vshlq_u32(v248, v187);
    v250 = vuzp1q_s16(vzip1q_s32(v248, v249), vzip2q_s32(v248, v249));
    v251 = vshlq_u16(v250, v240);
    v252 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v212, v244), vzip2q_s16(v212, v244)), v245), v246);
    v253 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v250, v251), vzip2q_s16(v250, v251)), v245), v246);
    v254 = vandq_s8(v307, v231);
    v255 = vsubq_s8(v252, v254);
    v256 = vsubq_s8(v253, v254);
    *v252.i8 = vzip1_s32(*v60.i8, *&vextq_s8(v60, v60, 8uLL));
    *v253.i8 = vzip1_s32(*v74.i8, *&vextq_s8(v74, v74, 8uLL));
    v160.i64[0] = v252.u32[0];
    v160.i64[1] = v252.u32[1];
    v257 = v160;
    v160.i64[0] = v253.u32[0];
    v160.i64[1] = v253.u32[1];
    v258 = vshlq_u64(v57, vnegq_s64(v257));
    v259 = vshlq_u64(v86, vnegq_s64(v160));
    v260 = vuzp1q_s32(vzip1q_s64(v57, v258), vzip2q_s64(v57, v258));
    v261 = vuzp1q_s32(vzip1q_s64(v86, v259), vzip2q_s64(v86, v259));
    v262 = vshlq_u32(v260, vnegq_s32((*&v59 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v263 = vshlq_u32(v261, vnegq_s32((*&v73 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v264 = vuzp1q_s16(vzip1q_s32(v260, v262), vzip2q_s32(v260, v262));
    v265 = vuzp1q_s16(vzip1q_s32(v261, v263), vzip2q_s32(v261, v263));
    v266 = vshlq_u16(v264, vnegq_s16((*&v58 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v267 = vshlq_u16(v265, vnegq_s16((*&v316 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v268 = vzip2q_s16(v264, v266);
    v269 = vzip1q_s16(v264, v266);
    v270 = vzip2q_s16(v265, v267);
    v271 = vzip1q_s16(v265, v267);
    v267.i64[0] = 0x808080808080808;
    v267.i64[1] = 0x808080808080808;
    v272 = vuzp1q_s8(v271, v270);
    v270.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v270.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v273 = vshlq_s8(vshlq_s8(v272, vsubq_s8(v267, v316)), vaddq_s8(v316, v270));
    v274 = vaddq_s8(vandq_s8(v228, v308), vshlq_s8(vshlq_s8(vuzp1q_s8(v269, v268), vsubq_s8(v267, v58)), vaddq_s8(v58, v270)));
    v275 = vandq_s8(v308, v231);
    v276.i64[0] = 0x101010101010101;
    v276.i64[1] = 0x101010101010101;
    v277 = vsubq_s8(v274, v275);
    v278 = vsubq_s8(v273, v275);
    if (vaddlvq_s8(vceqq_s8(v309, v276)))
    {
      v279 = vnegq_s8(vandq_s8(v315, v276));
      v280 = v278;
      v280.i32[3] = v277.i32[0];
      v281 = v277;
      v281.i32[0] = v278.i32[3];
      v322.val[0] = vbslq_s8(v279, v281, v277);
      v322.val[1] = vbslq_s8(v279, v280, v278);
      v280.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
      v280.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
      v323.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(v322, xmmword_29D2F0F80), v279), v322.val[0]);
      v323.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(v322, v280), v279), v322.val[1]);
      v277 = vaddq_s8(vandq_s8(vqtbl2q_s8(v323, xmmword_29D2F0F90), v279), v323.val[0]);
      v278 = vaddq_s8(vandq_s8(vqtbl2q_s8(v323, v280), v279), v323.val[1]);
      v323.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v233.i8, xmmword_29D2F0FA0), v279), v233);
      v323.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v233.i8, xmmword_29D2F0FB0), v279), v234);
      v233 = vaddq_s8(vandq_s8(vqtbl2q_s8(v323, xmmword_29D2F0FC0), v279), v323.val[0]);
      v234 = vaddq_s8(vandq_s8(vqtbl2q_s8(v323, v280), v279), v323.val[1]);
      v323.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v242.i8, xmmword_29D2F0FD0), v279), v242);
      v323.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v242.i8, xmmword_29D2F0F80), v279), v243);
      v242 = vaddq_s8(vandq_s8(vqtbl2q_s8(v323, v280), v279), v323.val[0]);
      v243 = vaddq_s8(vandq_s8(vqtbl2q_s8(v323, xmmword_29D2F0FE0), v279), v323.val[1]);
      v322.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v255.i8, xmmword_29D2F0FF0), v279), v255);
      v322.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v255.i8, xmmword_29D2F0F80), v279), v256);
      v255 = vaddq_s8(vandq_s8(vqtbl2q_s8(v322, v280), v279), v322.val[0]);
      v256 = vaddq_s8(vandq_s8(vqtbl2q_s8(v322, xmmword_29D2F1000), v279), v322.val[1]);
    }

    v282 = vaddq_s8(v314, v277);
    v283 = vaddq_s8(v278, v314);
    v284 = vaddq_s8(v233, v314);
    v285 = vaddq_s8(v234, v314);
    v286 = vaddq_s8(v242, v314);
    v287 = vaddq_s8(v243, v314);
    v288 = vaddq_s8(v255, v314);
    v289 = vaddq_s8(v256, v314);
    v290.i64[0] = 0x1010101010101010;
    v290.i64[1] = 0x1010101010101010;
    v291 = vceqzq_s8(vandq_s8(v315, v290));
    v292 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v282, xmmword_29D2F1020), v291), v282);
    v293 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v283, xmmword_29D2F1020), v291), v283);
    v294 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v284, xmmword_29D2F1020), v291), v284);
    v295 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v285, xmmword_29D2F1020), v291), v285);
    v296 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v286, xmmword_29D2F1020), v291), v286);
    v297 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v287, xmmword_29D2F1020), v291), v287);
    v298 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v288, xmmword_29D2F1020), v291), v288);
    v299 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v289, xmmword_29D2F1020), v291), v289);
    v288.i64[0] = 0xF000F000F000F0;
    v288.i64[1] = 0xF000F000F000F0;
    v284.i64[0] = 0xF000F000F000F00;
    v284.i64[1] = 0xF000F000F000F00;
    v286.i64[0] = 0xF000F000F000F000;
    v286.i64[1] = 0xF000F000F000F000;
    v300 = vbslq_s8(v286, vshrn_high_n_s32(vshrn_n_s32(v292, 0xCuLL), v293, 0xCuLL), vbslq_s8(v284, vshrn_high_n_s32(vshrn_n_s32(v292, 8uLL), v293, 8uLL), vbslq_s8(v288, vshrn_high_n_s32(vshrn_n_s32(v292, 4uLL), v293, 4uLL), vuzp1q_s16(v292, v293))));
    v301 = vbslq_s8(v286, vshrn_high_n_s32(vshrn_n_s32(v294, 0xCuLL), v295, 0xCuLL), vbslq_s8(v284, vshrn_high_n_s32(vshrn_n_s32(v294, 8uLL), v295, 8uLL), vbslq_s8(v288, vshrn_high_n_s32(vshrn_n_s32(v294, 4uLL), v295, 4uLL), vuzp1q_s16(v294, v295))));
    v302 = vbslq_s8(v286, vshrn_high_n_s32(vshrn_n_s32(v296, 0xCuLL), v297, 0xCuLL), vbslq_s8(v284, vshrn_high_n_s32(vshrn_n_s32(v296, 8uLL), v297, 8uLL), vbslq_s8(v288, vshrn_high_n_s32(vshrn_n_s32(v296, 4uLL), v297, 4uLL), vuzp1q_s16(v296, v297))));
    v303 = vbslq_s8(v286, vshrn_high_n_s32(vshrn_n_s32(v298, 0xCuLL), v299, 0xCuLL), vbslq_s8(v284, vshrn_high_n_s32(vshrn_n_s32(v298, 8uLL), v299, 8uLL), vbslq_s8(v288, vshrn_high_n_s32(vshrn_n_s32(v298, 4uLL), v299, 4uLL), vuzp1q_s16(v298, v299))));
    *a1 = vuzp1q_s32(v300, v302);
    *(a1 + a2) = vuzp2q_s32(v300, v302);
    v304 = (a1 + 2 * a2);
    *v304 = vuzp1q_s32(v301, v303);
    *(v304 + a2) = vuzp2q_s32(v301, v303);
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)8,AGX::AppleCompressionGen2::Vec<signed char>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unsigned int a5)
{
  v5 = a4[2];
  v6 = *a4;
  v7 = *a4 + 32;
  if (v5)
  {
    v8 = v5 >= v7;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = *a4 & 0x3F;
    v10 = (a4[1] + 8 * (v6 >> 6));
    v11 = *v10 >> v6;
    if (v9 >= 0x21)
    {
      v11 |= v10[1] << -v9;
    }

    *a4 = v7;
  }

  else
  {
    LODWORD(v11) = 0;
    *(a4 + 24) = 1;
  }

  *a1 = v11 & 0x1F;
  *(a1 + 1) = (v11 >> 5) & 0x1F;
  *(a1 + 2) = (v11 >> 10) & 0x1F;
  *(a1 + 3) = (v11 >> 15) & 0x1F;
  *a2 = ((v11 >> 20) & 7) + 1;
  *(a2 + 1) = ((v11 >> 23) & 7) + 1;
  *(a2 + 2) = ((v11 >> 26) & 7) + 1;
  *(a2 + 3) = (v11 >> 29) + 1;
  v12 = a4[2];
  v13 = *a4;
  v14 = *a4 + 16;
  if (v12 && v12 < v14)
  {
    LOWORD(v15) = 0;
    *(a4 + 24) = 1;
  }

  else
  {
    v16 = *a4 & 0x3F;
    v17 = (a4[1] + 8 * (v13 >> 6));
    v15 = *v17 >> v13;
    if (v16 >= 0x31)
    {
      v15 |= v17[1] << -v16;
    }

    *a4 = v14;
  }

  *a3 = v15 & 0xF;
  *(a3 + 1) = v15 >> 4;
  *(a3 + 2) = BYTE1(v15) & 0xF;
  *(a3 + 3) = v15 >> 12;
  v18 = vld1q_dup_f32(a1);
  *a1 = v18;
  v19 = vld1q_dup_f32(a2);
  *a2 = v19;
  v20 = vld1q_dup_f32(a3);
  *a3 = v20;
  return a5 + 1;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(uint16x8_t *a1, char *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = *(a3 + a4);
  v7 = vzip1q_s32(*a3, v6);
  v8 = vzip2q_s32(*a3, v6);
  v9 = (a3 + 2 * a4);
  v10 = *(v9 + a4);
  v11 = vzip1q_s32(*v9, v10);
  v12 = vzip2q_s32(*v9, v10);
  v13.i64[0] = 0xF0000000FLL;
  v13.i64[1] = 0xF0000000FLL;
  v10.i64[0] = 0xF0000000F00;
  v10.i64[1] = 0xF0000000F00;
  v14.i64[0] = 0xF0000000F0000;
  v14.i64[1] = 0xF0000000F0000;
  v542 = v7;
  v15.i64[0] = 0xF0000000F000000;
  v15.i64[1] = 0xF0000000F000000;
  v16 = vbslq_s8(v15, vshll_n_u16(*v7.i8, 0xCuLL), vbslq_s8(v14, vshll_n_u16(*v7.i8, 8uLL), vbslq_s8(v10, vshll_n_u16(*v7.i8, 4uLL), vbslq_s8(v13, vmovl_u16(*v7.i8), 0))));
  v17 = vbslq_s8(v15, vshll_high_n_u16(v7, 0xCuLL), vbslq_s8(v14, vshll_high_n_u16(v7, 8uLL), vbslq_s8(v10, vshll_high_n_u16(v7, 4uLL), vbslq_s8(v13, vmovl_high_u16(v7), 0))));
  v541 = v11;
  v18 = vbslq_s8(v15, vshll_n_u16(*v11.i8, 0xCuLL), vbslq_s8(v14, vshll_n_u16(*v11.i8, 8uLL), vbslq_s8(v10, vshll_n_u16(*v11.i8, 4uLL), vbslq_s8(v13, vmovl_u16(*v11.i8), 0))));
  v19 = vbslq_s8(v15, vshll_high_n_u16(v11, 0xCuLL), vbslq_s8(v14, vshll_high_n_u16(v11, 8uLL), vbslq_s8(v10, vshll_high_n_u16(v11, 4uLL), vbslq_s8(v13, vmovl_high_u16(v11), 0))));
  v544 = v8;
  v20 = vbslq_s8(v15, vshll_n_u16(*v8.i8, 0xCuLL), vbslq_s8(v14, vshll_n_u16(*v8.i8, 8uLL), vbslq_s8(v10, vshll_n_u16(*v8.i8, 4uLL), vbslq_s8(v13, vmovl_u16(*v8.i8), 0))));
  v21 = vbslq_s8(v15, vshll_high_n_u16(v8, 0xCuLL), vbslq_s8(v14, vshll_high_n_u16(v8, 8uLL), vbslq_s8(v10, vshll_high_n_u16(v8, 4uLL), vbslq_s8(v13, vmovl_high_u16(v8), 0))));
  v543 = v12;
  v22 = vbslq_s8(v15, vshll_n_u16(*v12.i8, 0xCuLL), vbslq_s8(v14, vshll_n_u16(*v12.i8, 8uLL), vbslq_s8(v10, vshll_n_u16(*v12.i8, 4uLL), vbslq_s8(v13, vmovl_u16(*v12.i8), 0))));
  v23 = vbslq_s8(v15, vshll_high_n_u16(v12, 0xCuLL), vbslq_s8(v14, vshll_high_n_u16(v12, 8uLL), vbslq_s8(v10, vshll_high_n_u16(v12, 4uLL), vbslq_s8(v13, vmovl_high_u16(v12), 0))));
  v24 = vdupq_lane_s32(*v16.i8, 0);
  v25 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v16, v24), 4uLL), 4uLL);
  v26 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v17, v24), 4uLL), 4uLL);
  v27 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v18, v24), 4uLL), 4uLL);
  v28 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v19, v24), 4uLL), 4uLL);
  v29 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v20, v24), 4uLL), 4uLL);
  v30 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v21, v24), 4uLL), 4uLL);
  v31 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v22, v24), 4uLL), 4uLL);
  v32 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v23, v24), 4uLL), 4uLL);
  v33 = vqtbl1q_s8(vmaxq_s8(v25, v26), xmmword_29D2F0F70);
  v34 = vqtbl1q_s8(vminq_s8(v25, v26), xmmword_29D2F0F70);
  v35 = vpmaxq_s8(v33, v33);
  v36 = vpminq_s8(v34, v34);
  v37 = vpmaxq_s8(v35, v35);
  v38 = vpminq_s8(v36, v36);
  v39 = vzip1q_s8(v37, v38);
  v40.i64[0] = 0x808080808080808;
  v40.i64[1] = 0x808080808080808;
  v41 = vbicq_s8(vsubq_s8(v40, vclsq_s8(v39)), vceqzq_s8(v39));
  v42 = vqtbl1q_s8(vmaxq_s8(v27, v28), xmmword_29D2F0F70);
  v43 = vqtbl1q_s8(vminq_s8(v27, v28), xmmword_29D2F0F70);
  v44 = vpmaxq_s8(v42, v42);
  v45 = vpminq_s8(v43, v43);
  v46 = vpmaxq_s8(v44, v44);
  v47 = vpminq_s8(v45, v45);
  v48 = vmaxq_s8(v37, v46);
  v49 = vminq_s8(v38, v47);
  v50 = vzip1q_s8(v46, v47);
  v51 = vbicq_s8(vsubq_s8(v40, vclsq_s8(v50)), vceqzq_s8(v50));
  v52 = vqtbl1q_s8(vmaxq_s8(v29, v30), xmmword_29D2F0F70);
  v53 = vqtbl1q_s8(vminq_s8(v29, v30), xmmword_29D2F0F70);
  v54 = vpmaxq_s8(v52, v52);
  v55 = vpminq_s8(v53, v53);
  v56 = vpmaxq_s8(v54, v54);
  v57 = vpminq_s8(v55, v55);
  v58 = vmaxq_s8(v48, v56);
  v59 = vminq_s8(v49, v57);
  v60 = vzip1q_s8(v56, v57);
  v61 = vbicq_s8(vsubq_s8(v40, vclsq_s8(v60)), vceqzq_s8(v60));
  v62 = vqtbl1q_s8(vmaxq_s8(v31, v32), xmmword_29D2F0F70);
  v63 = vqtbl1q_s8(vminq_s8(v31, v32), xmmword_29D2F0F70);
  v64 = vpmaxq_s8(v62, v62);
  v65 = vpminq_s8(v63, v63);
  v66 = vpmaxq_s8(v64, v64);
  v67 = vpminq_s8(v65, v65);
  v68 = vmaxq_s8(v58, v66);
  v69 = vminq_s8(v59, v67);
  v70 = vzip1q_s8(v66, v67);
  v71 = vbicq_s8(vsubq_s8(v40, vclsq_s8(v70)), vceqzq_s8(v70));
  v72 = vpmaxq_s8(v41, v41);
  v73 = vpmaxq_s8(v51, v51);
  v74 = vpmaxq_s8(v61, v61);
  v75 = vpmaxq_s8(v71, v71);
  v76 = vmaxq_s8(vmaxq_s8(v72, v73), vmaxq_s8(v74, v75));
  v77 = vclzq_s8(vsubq_s8(v68, v69));
  v78 = vsubq_s8(v40, v77);
  v79 = vminq_s8(v78, v76);
  if (!vmaxvq_s8(v79))
  {
    a1->i16[0] = a3->i16[0];
    v174 = 1;
    result = 2;
    goto LABEL_91;
  }

  v551 = v24;
  v80.i64[0] = -1;
  v80.i64[1] = -1;
  v81 = v25;
  v82.i64[0] = 0x707070707070707;
  v82.i64[1] = 0x707070707070707;
  v83 = vcgtq_s8(v76, v78);
  v547 = vandq_s8(vsubq_s8(vshlq_s8(v80, vsubq_s8(v82, v77)), v69), v83);
  v84.i64[0] = 0x303030303030303;
  v84.i64[1] = 0x303030303030303;
  v533 = vmaxq_s8(vminq_s8(vsubq_s8(v79, v72), v84), 0);
  v535 = vmaxq_s8(vminq_s8(vsubq_s8(v79, v74), v84), 0);
  v537 = vmaxq_s8(vminq_s8(vsubq_s8(v79, v73), v84), 0);
  v539 = vmaxq_s8(vminq_s8(vsubq_s8(v79, v75), v84), 0);
  v85.i64[0] = 0x404040404040404;
  v85.i64[1] = 0x404040404040404;
  v558 = vorrq_s8(vbicq_s8(v85, vceqq_s8(vaddq_s8(v539, v535), vnegq_s8(vaddq_s8(v533, v537)))), vorrq_s8(vandq_s8(vceqzq_s8(v79), v84), vandq_s8(v83, v40)));
  v545 = v81;
  v552 = v26;
  v86 = vsubq_s8(v26, vqtbl1q_s8(v26, xmmword_29D2F1020));
  v87 = vsubq_s8(v31, vqtbl1q_s8(v31, xmmword_29D2F1020));
  v555 = v29;
  v556 = v30;
  v557 = v31;
  v88 = vshlq_n_s8(vsubq_s8(v28, vqtbl1q_s8(v28, xmmword_29D2F1020)), 4uLL);
  v553 = v27;
  v554 = v28;
  v89 = vshlq_n_s8(vsubq_s8(v30, vqtbl1q_s8(v30, xmmword_29D2F1020)), 4uLL);
  v90 = vshrq_n_s8(v88, 4uLL);
  v549 = v32;
  v531 = vshrq_n_s8(vshlq_n_s8(v86, 4uLL), 4uLL);
  v532 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v81, vqtbl1q_s8(v81, xmmword_29D2F1020)), 4uLL), 4uLL);
  v91 = vqtbl1q_s8(vmaxq_s8(v532, v531), xmmword_29D2F0F70);
  v92 = vqtbl1q_s8(vminq_s8(v532, v531), xmmword_29D2F0F70);
  v93 = vpmaxq_s8(v91, v91);
  v94 = vpminq_s8(v92, v92);
  v95 = vpmaxq_s8(v93, v93);
  v96 = vpminq_s8(v94, v94);
  v97 = vzip1q_s8(v95, v96);
  v98 = vbicq_s8(vsubq_s8(v40, vclsq_s8(v97)), vceqzq_s8(v97));
  v99 = vpmaxq_s8(v98, v98);
  v530 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v27, vqtbl1q_s8(v27, xmmword_29D2F1020)), 4uLL), 4uLL);
  v100 = vqtbl1q_s8(vmaxq_s8(v530, v90), xmmword_29D2F0F70);
  v101 = vqtbl1q_s8(vminq_s8(v530, v90), xmmword_29D2F0F70);
  v102 = vpmaxq_s8(v100, v100);
  v103 = vpminq_s8(v101, v101);
  v104 = vpmaxq_s8(v102, v102);
  v105 = vpminq_s8(v103, v103);
  v106 = vmaxq_s8(v95, v104);
  v107 = vminq_s8(v96, v105);
  v108 = vzip1q_s8(v104, v105);
  v109 = vbicq_s8(vsubq_s8(v40, vclsq_s8(v108)), vceqzq_s8(v108));
  v110 = vpmaxq_s8(v109, v109);
  v528 = vshrq_n_s8(v89, 4uLL);
  v529 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v29, vqtbl1q_s8(v29, xmmword_29D2F1020)), 4uLL), 4uLL);
  v111 = vqtbl1q_s8(vmaxq_s8(v529, v528), xmmword_29D2F0F70);
  v112 = vqtbl1q_s8(vminq_s8(v529, v528), xmmword_29D2F0F70);
  v113 = vpmaxq_s8(v111, v111);
  v114 = vpminq_s8(v112, v112);
  v115 = vpmaxq_s8(v113, v113);
  v116 = vpminq_s8(v114, v114);
  v117 = vmaxq_s8(v106, v115);
  v118 = vminq_s8(v107, v116);
  v119 = vzip1q_s8(v115, v116);
  v120 = vbicq_s8(vsubq_s8(v40, vclsq_s8(v119)), vceqzq_s8(v119));
  v121 = vpmaxq_s8(v120, v120);
  v526 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v32, vqtbl1q_s8(v32, xmmword_29D2F1020)), 4uLL), 4uLL);
  v527 = vshrq_n_s8(vshlq_n_s8(v87, 4uLL), 4uLL);
  v122 = vqtbl1q_s8(vmaxq_s8(v527, v526), xmmword_29D2F0F70);
  v123 = vqtbl1q_s8(vminq_s8(v527, v526), xmmword_29D2F0F70);
  v124 = vpmaxq_s8(v122, v122);
  v125 = vpminq_s8(v123, v123);
  v126 = vpmaxq_s8(v124, v124);
  v127 = vpminq_s8(v125, v125);
  v128 = vmaxq_s8(v117, v126);
  v129 = vminq_s8(v118, v127);
  v130 = vzip1q_s8(v126, v127);
  v131 = vbicq_s8(vsubq_s8(v40, vclsq_s8(v130)), vceqzq_s8(v130));
  v132 = vpmaxq_s8(v131, v131);
  v133 = vmaxq_s8(vmaxq_s8(v99, v110), vmaxq_s8(v121, v132));
  v134 = vclzq_s8(vsubq_s8(v128, v129));
  v135 = vsubq_s8(v40, v134);
  v136 = vcgtq_s8(v133, v135);
  v137 = vminq_s8(v135, v133);
  v133.i64[0] = 0x1010101010101010;
  v133.i64[1] = 0x1010101010101010;
  v83.i64[0] = 0x1818181818181818;
  v83.i64[1] = 0x1818181818181818;
  v138 = vorrq_s8(vandq_s8(vceqzq_s8(v137), v84), vbslq_s8(v136, v83, v133));
  v139 = vmaxq_s8(vminq_s8(vsubq_s8(v137, v99), v84), 0);
  v140 = vmaxq_s8(vminq_s8(vsubq_s8(v137, v110), v84), 0);
  v141 = vmaxq_s8(vminq_s8(vsubq_s8(v137, v121), v84), 0);
  v142 = vmaxq_s8(vminq_s8(vsubq_s8(v137, v132), v84), 0);
  v143 = vsubq_s8(v137, v139);
  v144 = vsubq_s8(v137, v140);
  v145 = vsubq_s8(v137, v141);
  v146 = vsubq_s8(v137, v142);
  v147 = vceqq_s8(vaddq_s8(v142, v141), vnegq_s8(vaddq_s8(v139, v140)));
  v140.i64[0] = 0x404040404040404;
  v140.i64[1] = 0x404040404040404;
  v148 = vorrq_s8(vbicq_s8(v140, v147), v138);
  v149 = vmovl_u8(*v148.i8);
  v140.i64[0] = 0x8000800080008;
  v140.i64[1] = 0x8000800080008;
  v150.i64[0] = 0x2000200020002;
  v150.i64[1] = 0x2000200020002;
  v151 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v137.i8), vceqzq_s16((*&v149 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8)))), vandq_s8(vshll_n_u8(*v148.i8, 1uLL), v140)), vandq_s8(vceqq_s16((*&v149 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v150), v140)), *v143.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v145.i8, *v144.i8), *v146.i8), 3uLL));
  v152 = vaddq_s16(vaddw_s8((*&vshll_n_u8(*v558.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9)), vbic_s8(*v79.i8, vcgt_u8(0x808080808080808, *v558.i8))), vandq_s8(vceqq_s16((*&vmovl_u8(*v558.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v150), v140));
  v153 = vsubq_s8(v79, v533);
  v154 = vsubq_s8(v79, v537);
  v155 = vsubq_s8(v79, v535);
  v156 = vsubq_s8(v79, v539);
  v157 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(v152, *v153.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v155.i8, *v154.i8), *v156.i8), 3uLL)), v151)), 0);
  v158 = vaddlvq_s8(v157);
  v160 = a5 < 4 || a6 < 2;
  if (v158)
  {
    v161.i64[0] = 0x707070707070707;
    v161.i64[1] = 0x707070707070707;
    v162 = vsubq_s8(v161, v134);
    v163.i64[0] = -1;
    v163.i64[1] = -1;
    v164 = vandq_s8(vsubq_s8(vshlq_s8(v163, v162), v129), v136);
    v165 = vbslq_s8(v157, v532, v545);
    v551 = vbslq_s8(v157, vsubq_s8(v551, vqtbl1q_s8(v551, xmmword_29D2F1020)), v551);
    v552 = vbslq_s8(v157, v531, v552);
    v553 = vbslq_s8(v157, v530, v553);
    v554 = vbslq_s8(v157, v90, v554);
    v555 = vbslq_s8(v157, v529, v555);
    v556 = vbslq_s8(v157, v528, v556);
    v557 = vbslq_s8(v157, v527, v557);
    v534 = vbslq_s8(v157, v143, v153);
    v536 = vbslq_s8(v157, v144, v154);
    v538 = vbslq_s8(v157, v145, v155);
    v540 = vbslq_s8(v157, v146, v156);
    v79 = vbslq_s8(v157, v137, v79);
    v558 = vbslq_s8(v157, v148, v558);
    v166 = vbslq_s8(v157, v526, v549);
    v167 = vbslq_s8(v157, v164, v547);
    if (v160)
    {
LABEL_10:
      v169 = v538;
      v168 = v540;
      v171 = v534;
      v170 = v536;
      v172 = v558;
      v173 = v551.i32[0];
      goto LABEL_16;
    }
  }

  else
  {
    v534 = v153;
    v536 = v154;
    v538 = v155;
    v540 = v156;
    v167 = v547;
    v166 = v549;
    v165 = v545;
    if (v160)
    {
      goto LABEL_10;
    }
  }

  v546 = v165;
  v548 = v167;
  v550 = v166;
  v176 = vsubq_s8(v16, vqtbl2q_s8(*v16.i8, xmmword_29D2F0F80));
  v177 = vsubq_s8(v17, vqtbl2q_s8(*v16.i8, xmmword_29D2F1030));
  v178 = v19;
  v178.i32[3] = v17.i32[3];
  v179 = v21;
  v179.i32[3] = v17.i32[3];
  v180 = v23;
  v180.i32[3] = v17.i32[3];
  v181 = v177;
  v181.i32[3] = v176.i32[0];
  v176.i32[0] = v177.i32[3];
  v182.i64[0] = 0x404040404040404;
  v182.i64[1] = 0x404040404040404;
  v183 = vshrq_n_s8(vshlq_n_s8(v176, 4uLL), 4uLL);
  v184 = vshrq_n_s8(vshlq_n_s8(v181, 4uLL), 4uLL);
  v185 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v18, vqtbl2q_s8(*v18.i8, xmmword_29D2F0FA0)), 4uLL), 4uLL);
  v186 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v19, vqtbl2q_s8(*v18.i8, xmmword_29D2F1040)), 4uLL), 4uLL);
  v187 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v20, vqtbl2q_s8(*v20.i8, xmmword_29D2F1050)), 4uLL), 4uLL);
  v188 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v21, vqtbl2q_s8(*v20.i8, xmmword_29D2F0F80)), 4uLL), 4uLL);
  v189 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v22, vqtbl2q_s8(*v22.i8, xmmword_29D2F1060)), 4uLL), 4uLL);
  v190 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v23, vqtbl2q_s8(*v22.i8, xmmword_29D2F0F80)), 4uLL), 4uLL);
  v191 = vqtbl1q_s8(vmaxq_s8(v183, v184), xmmword_29D2F0F70);
  v192 = vqtbl1q_s8(vminq_s8(v183, v184), xmmword_29D2F0F70);
  v193 = vpmaxq_s8(v191, v191);
  v194 = vpminq_s8(v192, v192);
  v195 = vpmaxq_s8(v193, v193);
  v196 = vpminq_s8(v194, v194);
  v197 = vzip1q_s8(v195, v196);
  v198.i64[0] = 0x808080808080808;
  v198.i64[1] = 0x808080808080808;
  v199 = vbicq_s8(vsubq_s8(v198, vclsq_s8(v197)), vceqzq_s8(v197));
  v200 = vpmaxq_s8(v199, v199);
  v201 = vqtbl1q_s8(vmaxq_s8(v185, v186), xmmword_29D2F0F70);
  v202 = vqtbl1q_s8(vminq_s8(v185, v186), xmmword_29D2F0F70);
  v203 = vpmaxq_s8(v201, v201);
  v204 = vpminq_s8(v202, v202);
  v205 = vpmaxq_s8(v203, v203);
  v206 = vpminq_s8(v204, v204);
  v207 = vmaxq_s8(v195, v205);
  v208 = vminq_s8(v196, v206);
  v209 = vzip1q_s8(v205, v206);
  v210 = vbicq_s8(vsubq_s8(v198, vclsq_s8(v209)), vceqzq_s8(v209));
  v211 = vpmaxq_s8(v210, v210);
  v212 = vqtbl1q_s8(vmaxq_s8(v187, v188), xmmword_29D2F0F70);
  v213 = vqtbl1q_s8(vminq_s8(v187, v188), xmmword_29D2F0F70);
  v214 = vpmaxq_s8(v212, v212);
  v215 = vpminq_s8(v213, v213);
  v216 = vpmaxq_s8(v214, v214);
  v217 = vpminq_s8(v215, v215);
  v218 = vmaxq_s8(v207, v216);
  v219 = vminq_s8(v208, v217);
  v220 = vzip1q_s8(v216, v217);
  v221 = vbicq_s8(vsubq_s8(v198, vclsq_s8(v220)), vceqzq_s8(v220));
  v222 = v79;
  v223 = vpmaxq_s8(v221, v221);
  v224 = vqtbl1q_s8(vmaxq_s8(v189, v190), xmmword_29D2F0F70);
  v225 = vqtbl1q_s8(vminq_s8(v189, v190), xmmword_29D2F0F70);
  v226 = vpmaxq_s8(v224, v224);
  v227 = vpminq_s8(v225, v225);
  v228 = vpmaxq_s8(v226, v226);
  v229 = vpminq_s8(v227, v227);
  v230 = vmaxq_s8(v218, v228);
  v231 = vminq_s8(v219, v229);
  v232 = vzip1q_s8(v228, v229);
  v233 = vbicq_s8(vsubq_s8(v198, vclsq_s8(v232)), vceqzq_s8(v232));
  v234 = vpmaxq_s8(v233, v233);
  v235 = vmaxq_s8(vmaxq_s8(v200, v211), vmaxq_s8(v223, v234));
  v236 = vclzq_s8(vsubq_s8(v230, v231));
  v237 = vsubq_s8(v198, v236);
  v238 = vcgtq_s8(v235, v237);
  v239 = vminq_s8(v237, v235);
  v198.i64[0] = 0x909090909090909;
  v198.i64[1] = 0x909090909090909;
  v178.i64[0] = 0x202020202020202;
  v178.i64[1] = 0x202020202020202;
  v240 = vorrq_s8(vandq_s8(vceqzq_s8(v239), v178), vsubq_s8(vandq_s8(v238, v198), vmvnq_s8(v238)));
  v198.i64[0] = 0x303030303030303;
  v198.i64[1] = 0x303030303030303;
  v241 = vmaxq_s8(vminq_s8(vsubq_s8(v239, v200), v198), 0);
  v242 = vmaxq_s8(vminq_s8(vsubq_s8(v239, v211), v198), 0);
  v243 = vmaxq_s8(vminq_s8(vsubq_s8(v239, v223), v198), 0);
  v244 = vmaxq_s8(vminq_s8(vsubq_s8(v239, v234), v198), 0);
  v245 = vsubq_s8(v239, v241);
  v246 = vsubq_s8(v239, v242);
  v247 = vsubq_s8(v239, v243);
  v248 = vsubq_s8(v239, v244);
  v249 = vorrq_s8(vbicq_s8(v182, vceqq_s8(vaddq_s8(v244, v243), vnegq_s8(vaddq_s8(v241, v242)))), v240);
  v243.i64[0] = 0x3000300030003;
  v243.i64[1] = 0x3000300030003;
  v172 = v558;
  v250 = vmovl_s8(*v558.i8);
  v241.i64[0] = 0x8000800080008;
  v241.i64[1] = 0x8000800080008;
  v251 = vbicq_s8(vmovl_s8(*v222.i8), vceqzq_s16(vandq_s8(v250, v241)));
  v252 = vandq_s8(v250, v243);
  v243.i64[0] = 0x2000200020002;
  v243.i64[1] = 0x2000200020002;
  v170 = v536;
  v169 = v538;
  v168 = v540;
  v171 = v534;
  v253 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v251, vandq_s8(vshll_n_s8(*v558.i8, 1uLL), v241)), vandq_s8(vceqq_s16(v252, v243), v241)), *v534.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v538.i8, *v536.i8), *v540.i8), 3uLL)), vaddq_s16(vmlal_s8(vaddw_u8(vmovl_s8(vbic_s8(*v239.i8, vcgt_u8(0x808080808080808, *v249.i8))), vand_s8(vadd_s8(*v249.i8, *v249.i8), 0x808080808080808)), *v245.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v247.i8, *v246.i8), *v248.i8), 3uLL)))), 0);
  v173 = v551.i32[0];
  if (vaddlvq_s8(v253))
  {
    v254.i64[0] = 0x707070707070707;
    v254.i64[1] = 0x707070707070707;
    v255 = vsubq_s8(v254, v236);
    v254.i64[0] = -1;
    v254.i64[1] = -1;
    v256 = vandq_s8(vsubq_s8(vshlq_s8(v254, v255), v231), v238);
    v173 = vbslq_s8(v253, vextq_s8(v17, v17, 0xCuLL), v551).u32[0];
    v552 = vbslq_s8(v253, v184, v552);
    v553 = vbslq_s8(v253, v185, v553);
    v554 = vbslq_s8(v253, v186, v554);
    v555 = vbslq_s8(v253, v187, v555);
    v556 = vbslq_s8(v253, v188, v556);
    v557 = vbslq_s8(v253, v189, v557);
    v166 = vbslq_s8(v253, v190, v550);
    v171 = vbslq_s8(v253, v245, v534);
    v170 = vbslq_s8(v253, v246, v536);
    v169 = vbslq_s8(v253, v247, v538);
    v168 = vbslq_s8(v253, v248, v540);
    v167 = vbslq_s8(v253, v256, v548);
    v79 = vbslq_s8(v253, v239, v222);
    v172 = vbslq_s8(v253, v249, v558);
    v165 = vbslq_s8(v253, v183, v546);
  }

  else
  {
    v167 = v548;
    v166 = v550;
    v79 = v222;
    v165 = v546;
  }

LABEL_16:
  v257 = vmovl_s8(*v172.i8);
  v258.i64[0] = 0x8000800080008;
  v258.i64[1] = 0x8000800080008;
  v259.i64[0] = 0x3000300030003;
  v259.i64[1] = 0x3000300030003;
  v260.i64[0] = 0x2000200020002;
  v260.i64[1] = 0x2000200020002;
  v261 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v79.i8), vceqzq_s16(vandq_s8(v257, v258))), vandq_s8(vshll_n_s8(*v172.i8, 1uLL), v258)), vandq_s8(vceqq_s16(vandq_s8(v257, v259), v260), v258)), *v171.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v169.i8, *v170.i8), *v168.i8), 3uLL));
  v262 = vpaddq_s16(v261, v261);
  v263 = vpaddq_s16(v262, v262).u64[0];
  if ((v263.i16[0] + 55) > 0x1FF)
  {
    *a1 = v542;
    a1[1] = v541;
    v174 = 63;
    a1[2] = v544;
    a1[3] = v543;
    result = 64;
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
    v267 = vzip1_s8(*v79.i8, v263);
    v268 = vadd_s16(v267, 0xFF00FF00FF00FFLL);
    v269 = vmovl_u16(vceqz_s16((*&v267 & 0xFF00FF00FF00FFLL)));
    v270.i64[0] = v269.u32[0];
    v270.i64[1] = v269.u32[1];
    v271 = vshrq_n_s64(vshlq_n_s64(v270, 0x38uLL), 0x38uLL);
    v270.i64[0] = v269.u32[2];
    v270.i64[1] = v269.u32[3];
    v272 = vshrq_n_s64(vshlq_n_s64(v270, 0x38uLL), 0x38uLL);
    v273 = vshlq_u32(vmovl_u16(vand_s8(v268, 0x7000700070007)), xmmword_29D2F1070);
    v270.i64[0] = v273.u32[0];
    v270.i64[1] = v273.u32[1];
    v274 = v270;
    v270.i64[0] = v273.u32[2];
    v270.i64[1] = v273.u32[3];
    v275 = vorrq_s8(vbicq_s8(v274, v271), vbicq_s8(v270, v272));
    v276 = *&vorr_s8(*v275.i8, *&vextq_s8(v275, v275, 8uLL)) | (32 * (v172.i8[1] & 0x1F)) | ((v172.i8[3] & 0x1F) << 15) | ((v172.i8[2] & 0x1F) << 10) | v172.i8[0] & 0x1F;
    v277 = (v276 << v265) | v266;
    if (v265 >= 0x20)
    {
      *v264 = v277;
      v277 = v276 >> (-8 * (a1 & 7u));
    }

    v278 = v173 & 0xF | (16 * BYTE1(v173)) | ((BYTE2(v173) & 0xF) << 8) | ((HIBYTE(v173) & 0xF) << 12);
    v279 = (v265 + 32) & 0x38;
    v280 = v277 | (v278 << v279);
    if (v279 >= 0x30)
    {
      *(v264 + (((v265 + 32) >> 3) & 8)) = v280;
      v280 = v278 >> -v279;
    }

    v281 = v265 + 48;
    v282 = vsubq_s8(v79, v171);
    v283 = vsubq_s8(v79, v170);
    v284 = vsubq_s8(v79, v169);
    v285 = vsubq_s8(v79, v168);
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
    v292 = vandq_s8(vmovl_s16(vtst_s16(*v257.i8, 0x4000400040004)), v288);
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
    v310 = (v265 + 48) & 0x38;
    v311 = (v308.i64[0] << v310) | v280;
    if ((v309.i64[0] + v310) >= 0x40)
    {
      *(v264 + ((v281 >> 3) & 8)) = v311;
      v311 = v308.i64[0] >> -v310;
      if (!v310)
      {
        v311 = 0;
      }
    }

    v312 = vceqq_s8(v79, v171);
    v313 = v309.i64[1];
    v314 = v309.i64[0] + v281;
    v315 = v311 | (v308.i64[1] << v314);
    if ((v314 & 0x3F) + v309.i64[1] >= 0x40)
    {
      *(v264 + ((v314 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v315;
      v315 = v308.i64[1] >> -(v314 & 0x3F);
      if ((v314 & 0x3F) == 0)
      {
        v315 = 0;
      }
    }

    v316 = vandq_s8(v167, v312);
    v317 = v314 + v313;
    v318.i64[0] = 0x808080808080808;
    v318.i64[1] = 0x808080808080808;
    v319.i64[0] = -1;
    v319.i64[1] = -1;
    v320 = vandq_s8(vextq_s8(vtstq_s8(v172, v318), 0, 0xCuLL), v79);
    v321.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v321.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v322 = vandq_s8(vshlq_u8(v319, vaddq_s8(v320, v321)), v167);
    v323 = vmovl_u8(*v320.i8);
    v324 = vpaddq_s16(vshlq_u16(vmovl_u8(*v322.i8), vtrn1q_s16(0, v323)), vmovl_high_u8(v322));
    v325 = vpaddq_s16(v323, vmovl_high_u8(v320));
    v326 = vmovl_u16(*v325.i8);
    v327 = vmovl_high_u16(v325);
    v328 = vpaddq_s32(vshlq_u32(vmovl_u16(*v324.i8), vtrn1q_s32(0, v326)), vshlq_u32(vmovl_high_u16(v324), vtrn1q_s32(0, v327)));
    v329 = vpaddq_s32(v326, v327);
    v330.i64[0] = v328.u32[0];
    v330.i64[1] = v328.u32[1];
    v331 = v330;
    v330.i64[0] = v328.u32[2];
    v330.i64[1] = v328.u32[3];
    v332 = v330;
    v330.i64[0] = v329.u32[0];
    v330.i64[1] = v329.u32[1];
    v333 = v330;
    v330.i64[0] = v329.u32[2];
    v330.i64[1] = v329.u32[3];
    v334 = vpaddq_s64(vshlq_u64(v331, vzip1q_s64(0, v333)), vshlq_u64(v332, vzip1q_s64(0, v330)));
    v335 = vpaddq_s64(v333, v330);
    v336 = (v334.i64[0] << v317) | v315;
    if (v335.i64[0] + (v317 & 0x3F) >= 0x40)
    {
      *(v264 + ((v317 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v336;
      v336 = v334.i64[0] >> -(v317 & 0x3F);
      if ((v317 & 0x3F) == 0)
      {
        v336 = 0;
      }
    }

    v337 = vaddq_s8(v316, v165);
    v338 = v335.i64[0] + v317;
    v339 = v336 | (v334.i64[1] << v338);
    if ((v338 & 0x3F) + v335.i64[1] >= 0x40)
    {
      *(v264 + ((v338 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v339;
      v339 = v334.i64[1] >> -(v338 & 0x3F);
      if ((v338 & 0x3F) == 0)
      {
        v339 = 0;
      }
    }

    v340 = v338 + v335.i64[1];
    v341 = vextq_s8(0, v171, 0xCuLL);
    v342.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v342.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v343.i64[0] = -1;
    v343.i64[1] = -1;
    v344 = vandq_s8(vshlq_u8(v343, vaddq_s8(v341, v342)), v337);
    v345 = vmovl_u8(*v341.i8);
    v346 = vmovl_high_u8(v341);
    v347 = vpaddq_s16(vshlq_u16(vmovl_u8(*v344.i8), vtrn1q_s16(0, v345)), vshlq_u16(vmovl_high_u8(v344), vtrn1q_s16(0, v346)));
    v348 = vpaddq_s16(v345, v346);
    v349 = vmovl_u16(*v348.i8);
    v350 = vmovl_high_u16(v348);
    v351 = vpaddq_s32(vshlq_u32(vmovl_u16(*v347.i8), vtrn1q_s32(0, v349)), vshlq_u32(vmovl_high_u16(v347), vtrn1q_s32(0, v350)));
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
    v359 = (v357.i64[0] << v340) | v339;
    if (v358.i64[0] + (v340 & 0x3F) >= 0x40)
    {
      *(v264 + ((v340 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v359;
      v359 = v357.i64[0] >> -(v340 & 0x3F);
      if ((v340 & 0x3F) == 0)
      {
        v359 = 0;
      }
    }

    v360 = vceqq_s8(v79, v170);
    v361 = vaddq_s8(v552, v316);
    v362 = v358.i64[0] + v340;
    v363 = v359 | (v357.i64[1] << v362);
    if ((v362 & 0x3F) + v358.i64[1] >= 0x40)
    {
      *(v264 + ((v362 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v363;
      v363 = v357.i64[1] >> -(v362 & 0x3F);
      if ((v362 & 0x3F) == 0)
      {
        v363 = 0;
      }
    }

    v364 = vandq_s8(v167, v360);
    v365 = v362 + v358.i64[1];
    v366.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v366.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v367.i64[0] = -1;
    v367.i64[1] = -1;
    v368 = vandq_s8(vshlq_u8(v367, vaddq_s8(v171, v366)), v361);
    v369 = vmovl_u8(*v171.i8);
    v370 = vmovl_high_u8(v171);
    v371 = vpaddq_s16(vshlq_u16(vmovl_u8(*v368.i8), vtrn1q_s16(0, v369)), vshlq_u16(vmovl_high_u8(v368), vtrn1q_s16(0, v370)));
    v372 = vpaddq_s16(v369, v370);
    v373 = vmovl_u16(*v372.i8);
    v374 = vmovl_high_u16(v372);
    v375 = vpaddq_s32(vshlq_u32(vmovl_u16(*v371.i8), vtrn1q_s32(0, v373)), vshlq_u32(vmovl_high_u16(v371), vtrn1q_s32(0, v374)));
    v376 = vpaddq_s32(v373, v374);
    v377.i64[0] = v375.u32[0];
    v377.i64[1] = v375.u32[1];
    v378 = v377;
    v377.i64[0] = v375.u32[2];
    v377.i64[1] = v375.u32[3];
    v379 = v377;
    v377.i64[0] = v376.u32[0];
    v377.i64[1] = v376.u32[1];
    v380 = v377;
    v377.i64[0] = v376.u32[2];
    v377.i64[1] = v376.u32[3];
    v381 = vpaddq_s64(vshlq_u64(v378, vzip1q_s64(0, v380)), vshlq_u64(v379, vzip1q_s64(0, v377)));
    v382 = vpaddq_s64(v380, v377);
    v383 = (v381.i64[0] << v365) | v363;
    if (v382.i64[0] + (v365 & 0x3F) >= 0x40)
    {
      *(v264 + ((v365 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v383;
      v383 = v381.i64[0] >> -(v365 & 0x3F);
      if ((v365 & 0x3F) == 0)
      {
        v383 = 0;
      }
    }

    v384 = vaddq_s8(v553, v364);
    v385 = v382.i64[0] + v365;
    v386 = v383 | (v381.i64[1] << v385);
    if ((v385 & 0x3F) + v382.i64[1] >= 0x40)
    {
      *(v264 + ((v385 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v386;
      v386 = v381.i64[1] >> -(v385 & 0x3F);
      if ((v385 & 0x3F) == 0)
      {
        v386 = 0;
      }
    }

    v387 = v385 + v382.i64[1];
    v388.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v388.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v389.i64[0] = -1;
    v389.i64[1] = -1;
    v390 = vshlq_u8(v389, vaddq_s8(v170, v388));
    v391 = vandq_s8(v390, v384);
    v392 = vmovl_u8(*v391.i8);
    v393 = vmovl_high_u8(v391);
    v394 = vmovl_u8(*v170.i8);
    v395 = vmovl_high_u8(v170);
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
    v416 = (v414.i64[0] << v387) | v386;
    if (v415.i64[0] + (v387 & 0x3F) >= 0x40)
    {
      *(v264 + ((v387 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
      if ((v387 & 0x3F) != 0)
      {
        v416 = v414.i64[0] >> -(v387 & 0x3F);
      }

      else
      {
        v416 = 0;
      }
    }

    v417 = vceqq_s8(v79, v169);
    v418 = vaddq_s8(v554, v364);
    v419 = v415.i64[0] + v387;
    v420 = v416 | (v414.i64[1] << v419);
    if ((v419 & 0x3F) + v415.i64[1] >= 0x40)
    {
      *(v264 + ((v419 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v420;
      v420 = v414.i64[1] >> -(v419 & 0x3F);
      if ((v419 & 0x3F) == 0)
      {
        v420 = 0;
      }
    }

    v421 = vandq_s8(v167, v417);
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
      *(v264 + ((v422 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v429;
      v429 = v428.i64[0] >> -(v422 & 0x3F);
      if ((v422 & 0x3F) == 0)
      {
        v429 = 0;
      }
    }

    v430 = vaddq_s8(v555, v421);
    v431 = v415.i64[0] + v422;
    v432 = (v415.i64[0] + v422) & 0x3F;
    v433 = v429 | (v428.i64[1] << v431);
    if ((v431 & 0x3F) + v415.i64[1] >= 0x40)
    {
      *(v264 + ((v431 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v433;
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
    v437 = vshlq_u8(v436, vaddq_s8(v169, v435));
    v438 = vandq_s8(v437, v430);
    v439 = vmovl_u8(*v438.i8);
    v440 = vmovl_high_u8(v438);
    v441 = vmovl_u8(*v169.i8);
    v442 = vmovl_high_u8(v169);
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
      *(v264 + ((v434 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v463;
      if ((v434 & 0x3F) != 0)
      {
        v463 = v461.i64[0] >> -(v434 & 0x3F);
      }

      else
      {
        v463 = 0;
      }
    }

    v464 = vceqq_s8(v79, v168);
    v465 = vaddq_s8(v556, v421);
    v466 = v462.i64[0] + v434;
    v467 = v463 | (v461.i64[1] << v466);
    if ((v466 & 0x3F) + v462.i64[1] >= 0x40)
    {
      *(v264 + ((v466 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v467;
      v467 = v461.i64[1] >> -(v466 & 0x3F);
      if ((v466 & 0x3F) == 0)
      {
        v467 = 0;
      }
    }

    v468 = vandq_s8(v167, v464);
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
      *(v264 + ((v469 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v476;
      v476 = v475.i64[0] >> -(v469 & 0x3F);
      if ((v469 & 0x3F) == 0)
      {
        v476 = 0;
      }
    }

    v477 = vaddq_s8(v557, v468);
    v478 = v462.i64[0] + v469;
    v479 = (v462.i64[0] + v469) & 0x3F;
    v480 = v476 | (v475.i64[1] << v478);
    if ((v478 & 0x3F) + v462.i64[1] >= 0x40)
    {
      *(v264 + ((v478 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v480;
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
    v484 = vshlq_u8(v483, vaddq_s8(v168, v482));
    v485 = vandq_s8(v484, v477);
    v486 = vmovl_u8(*v485.i8);
    v487 = vmovl_high_u8(v485);
    v488 = vmovl_u8(*v168.i8);
    v489 = vmovl_high_u8(v168);
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
      *(v264 + ((v481 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v510;
      if ((v481 & 0x3F) != 0)
      {
        v510 = v508.i64[0] >> -(v481 & 0x3F);
      }

      else
      {
        v510 = 0;
      }
    }

    v511 = vaddq_s8(v166, v468);
    v512 = v509.i64[0] + v481;
    v513 = v510 | (v508.i64[1] << v512);
    if ((v512 & 0x3F) + v509.i64[1] >= 0x40)
    {
      *(v264 + ((v512 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v513;
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
      *(v264 + ((v514 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v521;
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
      *(v264 + ((v522 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v524;
      v524 = v520.i64[1] >> -v523;
      if (!v523)
      {
        v524 = 0;
      }
    }

    v525 = v522 + v509.i64[1];
    if ((v525 & 0x3F) != 0)
    {
      *(v264 + ((v525 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v524;
    }

    result = (v525 - v265 + 7) >> 3;
    v174 = *a2 | (result - 1);
  }

LABEL_91:
  *a2 = v174;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, uint16x8_t *a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, (v11 + v12), a2, v15, v14);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + 1, a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v12 + 16), a2, v20, v19);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, (v11 + 8 * a2), a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, (v11 + 12 * a2), a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + 8 * a2 + 16), a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + 12 * a2 + 16), a2, v30, v29);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int64x2_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v314 = 0;
  v313 = (8 * (a3 & 7)) | 0x200;
  v311 = 8 * (a3 & 7);
  v312 = a3 & 0xFFFFFFFFFFFFFFF8;
  result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)8,AGX::AppleCompressionGen2::Vec<signed char>>(&v316, v321, &v315, &v311, a4);
  v8.i64[0] = 0x303030303030303;
  v8.i64[1] = 0x303030303030303;
  v310 = vandq_s8(v316, v8);
  v9 = vbicq_s8(v321[0], vceqq_s8(v310, v8));
  v321[0] = v9;
  v317 = v9;
  v318 = v9;
  v319 = v9;
  v320 = v9;
  v10.i64[0] = 0x202020202020202;
  v10.i64[1] = 0x202020202020202;
  v11 = vandq_s8(vmovl_s16(vtst_s16(*&vmovl_u8(*v316.i8), 0x4000400040004)), v10);
  v12 = v311;
  if (vmaxvq_s8(v11) < 1)
  {
    v26.i64[0] = -1;
    v26.i64[1] = -1;
    v307 = v26;
    v308 = v26;
    v306 = v26;
    v309 = v26;
  }

  else
  {
    v13 = vmovl_u8(*&vpaddq_s8(v11, v11));
    v14 = vmovl_u16(*&vpaddq_s16(v13, v13));
    v15 = vpaddq_s32(v14, v14).u64[0];
    v16.i64[0] = v15;
    v16.i64[1] = HIDWORD(v15);
    v17 = v16;
    v18 = vaddvq_s64(v16);
    v19 = v18;
    v20 = v311 + v18;
    if (v313)
    {
      v21 = v313 >= v20;
    }

    else
    {
      v21 = 1;
    }

    v22 = v21;
    if (v18 <= 0x80 && (v22 & 1) != 0)
    {
      v7.i64[0] = 63;
      v23 = (v312 + 8 * (v311 >> 6));
      v24 = vaddq_s64(vdupq_lane_s64(vandq_s8(v311, v7).i64[0], 0), vzip1q_s64(0, v17));
      v25 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v23, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v24)), vshlq_u64(vdupq_lane_s64(v23->i64[0], 0), vnegq_s64(v24)));
      if ((v311 & 0x3F) + v19 >= 0x81)
      {
        v25 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v23[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v24)), vshlq_u64(vdupq_laneq_s64(v23[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v24))), v25);
      }

      v12 = v20;
    }

    else
    {
      v314 = 1;
      v25 = 0uLL;
    }

    v27 = vzip1_s32(*v14.i8, *&vextq_s8(v14, v14, 8uLL));
    v28.i64[0] = v27.u32[0];
    v28.i64[1] = v27.u32[1];
    v29 = vshlq_u64(v25, vnegq_s64(v28));
    v30 = vuzp1q_s32(vzip1q_s64(v25, v29), vzip2q_s64(v25, v29));
    v31 = vshlq_u32(v30, vnegq_s32((*&v13 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v32 = vuzp1q_s16(vzip1q_s32(v30, v31), vzip2q_s32(v30, v31));
    v33 = vshlq_u16(v32, vnegq_s16((*&v11 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
    v34 = vuzp1q_s8(vzip1q_s16(v32, v33), vzip2q_s16(v32, v33));
    v33.i64[0] = 0x101010101010101;
    v33.i64[1] = 0x101010101010101;
    v35 = vshlq_s8(v33, v11);
    v33.i64[0] = -1;
    v33.i64[1] = -1;
    v36 = vqtbl1q_s8(vandq_s8(vaddq_s8(v35, v33), v34), xmmword_29D2F0F70);
    v37 = vdupq_lane_s32(*v36.i8, 0);
    v38 = vdupq_lane_s32(*v36.i8, 1);
    v39 = vdupq_laneq_s32(v36, 2);
    v40 = vdupq_laneq_s32(v36, 3);
    v317 = vsubq_s8(v317, v37);
    v318 = vsubq_s8(v318, v38);
    v319 = vsubq_s8(v319, v39);
    v320 = vsubq_s8(v320, v40);
    v306 = vceqzq_s8(v38);
    v307 = vceqzq_s8(v39);
    v308 = vceqzq_s8(v40);
    v309 = vceqzq_s8(v37);
  }

  v41.i64[0] = 0x808080808080808;
  v41.i64[1] = 0x808080808080808;
  v42 = 0uLL;
  v43 = vandq_s8(vextq_s8(vtstq_s8(v316, v41), 0, 0xCuLL), v9);
  v44 = vmovl_u8(*&vpaddq_s8(v43, v43));
  v45 = vmovl_u16(*&vpaddq_s16(v44, v44));
  v46 = vpaddq_s32(v45, v45).u64[0];
  v47.i64[0] = v46;
  v47.i64[1] = HIDWORD(v46);
  v48 = v47;
  v49 = vaddvq_s64(v47);
  if (v313)
  {
    v50 = v313 >= v12 + v49;
  }

  else
  {
    v50 = 1;
  }

  v51 = v50;
  if (v49 <= 0x80 && (v51 & 1) != 0)
  {
    v52 = vaddq_s64(vdupq_n_s64(v12 & 0x3F), vzip1q_s64(0, v48));
    v53 = (v312 + 8 * (v12 >> 6));
    v42 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v53, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v52)), vshlq_u64(vdupq_lane_s64(v53->i64[0], 0), vnegq_s64(v52)));
    if ((v12 & 0x3F) + v49 >= 0x81)
    {
      v42 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v53[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v52)), vshlq_u64(vdupq_laneq_s64(v53[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v52))), v42);
    }

    v12 += v49;
  }

  else
  {
    v314 = 1;
  }

  v54 = v316.i8[0] & 3;
  if (v54 == 2)
  {
    if (v313)
    {
      v55 = v12 + 4;
      v56 = v12 + 8;
      if (v313 >= v12 + 4)
      {
        v12 += 4;
      }

      else
      {
        v56 = v12 + 4;
      }

      if (v313 >= v56)
      {
        v12 = v56;
      }

      if (v313 < v55 || v313 < v56)
      {
        v314 = 1;
      }
    }

    else
    {
      v12 += 8;
    }
  }

  v57 = 0uLL;
  v58 = vextq_s8(0, v317, 0xCuLL);
  v59 = vmovl_u8(*&vpaddq_s8(v58, v58));
  v60 = vmovl_u16(*&vpaddq_s16(v59, v59));
  v61 = vpaddq_s32(v60, v60).u64[0];
  v62.i64[0] = v61;
  v62.i64[1] = HIDWORD(v61);
  v63 = v62;
  v64 = vaddvq_s64(v62);
  v65 = v12 + v64;
  if (v313)
  {
    v66 = v313 >= v65;
  }

  else
  {
    v66 = 1;
  }

  v67 = v66;
  if (v64 <= 0x80 && (v67 & 1) != 0)
  {
    v68 = v12 & 0x3F;
    v69 = vaddq_s64(vdupq_n_s64(v68), vzip1q_s64(0, v63));
    v70 = v312;
    v71 = (v312 + 8 * (v12 >> 6));
    v57 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v71, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v69)), vshlq_u64(vdupq_lane_s64(v71->i64[0], 0), vnegq_s64(v69)));
    if (v68 + v64 >= 0x81)
    {
      v57 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v71[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v69)), vshlq_u64(vdupq_laneq_s64(v71[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v69))), v57);
    }

    v72 = v314;
    v12 = v65;
  }

  else
  {
    v72 = 1;
    v70 = v312;
  }

  v73 = vmovl_u8(*&vpaddq_s8(v317, v317));
  v74 = vmovl_u16(*&vpaddq_s16(v73, v73));
  v75 = vpaddq_s32(v74, v74).u64[0];
  v76.i64[0] = v75;
  v76.i64[1] = HIDWORD(v75);
  v77 = v76;
  v78 = vaddvq_s64(v76);
  v79 = v12 + v78;
  if (v313)
  {
    v80 = v313 >= v79;
  }

  else
  {
    v80 = 1;
  }

  v81 = v80;
  v82 = 0uLL;
  if (v78 <= 0x80 && v81)
  {
    v83 = v12 & 0x3F;
    v84 = vaddq_s64(vdupq_n_s64(v83), vzip1q_s64(0, v77));
    v85 = (v70 + 8 * (v12 >> 6));
    v86 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v85, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v84)), vshlq_u64(vdupq_lane_s64(v85->i64[0], 0), vnegq_s64(v84)));
    if (v83 + v78 >= 0x81)
    {
      v86 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v85[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v84)), vshlq_u64(vdupq_laneq_s64(v85[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v84))), v86);
    }
  }

  else
  {
    v72 = 1;
    v79 = v12;
    v86 = 0uLL;
  }

  v87 = vmovl_u8(*&vpaddq_s8(v318, v318));
  v88 = vmovl_u16(*&vpaddq_s16(v87, v87));
  v89 = vpaddq_s32(v88, v88).u64[0];
  v90.i64[0] = v89;
  v90.i64[1] = HIDWORD(v89);
  v91 = v90;
  v92 = vaddvq_s64(v90);
  v93 = v92;
  v94 = v79 + v92;
  if (v313)
  {
    v95 = v313 >= v94;
  }

  else
  {
    v95 = 1;
  }

  v96 = v95;
  if (v92 <= 0x80 && v96)
  {
    v97 = v79 & 0x3F;
    v98 = vaddq_s64(vdupq_n_s64(v97), vzip1q_s64(0, v91));
    v99 = (v70 + 8 * (v79 >> 6));
    v82 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v99, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v98)), vshlq_u64(vdupq_lane_s64(v99->i64[0], 0), vnegq_s64(v98)));
    if (v97 + v93 >= 0x81)
    {
      v82 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v99[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v98)), vshlq_u64(vdupq_laneq_s64(v99[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v98))), v82);
    }
  }

  else
  {
    v72 = 1;
    v94 = v79;
  }

  v100 = v94 + v93;
  if (v313)
  {
    v101 = v313 >= v100;
  }

  else
  {
    v101 = 1;
  }

  v102 = v101;
  v103 = 0uLL;
  if (v93 <= 0x80 && v102)
  {
    v104 = v94 & 0x3F;
    v105 = vaddq_s64(vdupq_n_s64(v104), vzip1q_s64(0, v91));
    v106 = (v70 + 8 * (v94 >> 6));
    v107 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v106, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v105)), vshlq_u64(vdupq_lane_s64(v106->i64[0], 0), vnegq_s64(v105)));
    if (v104 + v93 >= 0x81)
    {
      v107 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v106[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v105)), vshlq_u64(vdupq_laneq_s64(v106[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v105))), v107);
    }
  }

  else
  {
    v72 = 1;
    v100 = v94;
    v107 = 0uLL;
  }

  v108 = vmovl_u8(*&vpaddq_s8(v319, v319));
  v109 = vmovl_u16(*&vpaddq_s16(v108, v108));
  v110 = vpaddq_s32(v109, v109).u64[0];
  v111.i64[0] = v110;
  v111.i64[1] = HIDWORD(v110);
  v112 = v111;
  v113 = vaddvq_s64(v111);
  v114 = v113;
  v115 = v100 + v113;
  if (v313)
  {
    v116 = v313 >= v115;
  }

  else
  {
    v116 = 1;
  }

  v117 = v116;
  if (v113 <= 0x80 && v117)
  {
    v118 = v100 & 0x3F;
    v119 = vaddq_s64(vdupq_n_s64(v118), vzip1q_s64(0, v112));
    v120 = (v70 + 8 * (v100 >> 6));
    v103 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v120, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v119)), vshlq_u64(vdupq_lane_s64(v120->i64[0], 0), vnegq_s64(v119)));
    if (v118 + v114 >= 0x81)
    {
      v103 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v120[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v119)), vshlq_u64(vdupq_laneq_s64(v120[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v119))), v103);
    }
  }

  else
  {
    v72 = 1;
    v115 = v100;
  }

  v121 = v115 + v114;
  if (v313)
  {
    v122 = v313 >= v121;
  }

  else
  {
    v122 = 1;
  }

  v123 = v122;
  v124 = 0uLL;
  if (v114 <= 0x80 && v123)
  {
    v125 = v115 & 0x3F;
    v126 = vaddq_s64(vdupq_n_s64(v125), vzip1q_s64(0, v112));
    v127 = (v70 + 8 * (v115 >> 6));
    v128 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v127, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v126)), vshlq_u64(vdupq_lane_s64(v127->i64[0], 0), vnegq_s64(v126)));
    if (v125 + v114 >= 0x81)
    {
      v128 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v127[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v126)), vshlq_u64(vdupq_laneq_s64(v127[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v126))), v128);
    }
  }

  else
  {
    v72 = 1;
    v121 = v115;
    v128 = 0uLL;
  }

  v129 = vmovl_u8(*&vpaddq_s8(v320, v320));
  v130 = vmovl_u16(*&vpaddq_s16(v129, v129));
  v131 = vpaddq_s32(v130, v130).u64[0];
  v132.i64[0] = v131;
  v132.i64[1] = HIDWORD(v131);
  v133 = v132;
  v134 = vaddvq_s64(v132);
  v135 = v134;
  v136 = v121 + v134;
  if (v313)
  {
    v137 = v313 >= v136;
  }

  else
  {
    v137 = 1;
  }

  v138 = v137;
  if (v134 <= 0x80 && v138)
  {
    v139 = v121 & 0x3F;
    v140 = vaddq_s64(vdupq_n_s64(v139), vzip1q_s64(0, v133));
    v141 = (v70 + 8 * (v121 >> 6));
    v124 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
    if (v139 + v135 >= 0x81)
    {
      v124 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v124);
    }
  }

  else
  {
    v72 = 1;
    v136 = v121;
  }

  v142 = v136 + v135;
  if (v313)
  {
    v143 = v313 >= v142;
  }

  else
  {
    v143 = 1;
  }

  v144 = v143;
  if (v135 > 0x80 || !v144)
  {
    goto LABEL_132;
  }

  v145 = vaddq_s64(vdupq_n_s64(v136 & 0x3F), vzip1q_s64(0, v133));
  v146 = (v70 + 8 * (v136 >> 6));
  v147 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v146, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v145)), vshlq_u64(vdupq_lane_s64(v146->i64[0], 0), vnegq_s64(v145)));
  if ((v136 & 0x3F) + v135 >= 0x81)
  {
    v147 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v146[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v145)), vshlq_u64(vdupq_laneq_s64(v146[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v145))), v147);
  }

  if ((v72 & 1) != 0 || v313 + 8 * result - v142 - 512 >= 9 || v54 == 2)
  {
LABEL_132:
    v148 = 8 * ((&v322 + 6) & 7);
    v322 |= 15 << v148;
    v149 = (v148 + 8) & 0x38;
    v150 = (v148 + 8) & 0x40;
    if (((v150 + v149 - v148) | 4) <= 0x10)
    {
      v151 = (v148 + 8) >> 6;
      v152 = *(&v322 + v151);
      *(&v322 + v151) = (15 << v149) | v152;
      if ((v149 | 4) - v148 + v150 + 4 <= 0x10)
      {
        *(&v322 + v151) = (255 << v149) | v152;
      }
    }

    result = 0;
    a1->i64[0] = 0;
    *(a1->i64 + a2) = 0;
    *(a1->i64 + 2 * a2) = 0;
    *(a1->i64 + 3 * a2) = 0;
  }

  else
  {
    v153 = vzip1_s32(*v45.i8, *&vextq_s8(v45, v45, 8uLL));
    v154 = vzip1_s32(*v88.i8, *&vextq_s8(v88, v88, 8uLL));
    v155 = vzip1_s32(*v109.i8, *&vextq_s8(v109, v109, 8uLL));
    v156 = vzip1_s32(*v130.i8, *&vextq_s8(v130, v130, 8uLL));
    v157.i64[0] = v153.u32[0];
    v157.i64[1] = v153.u32[1];
    v158 = vshlq_u64(v42, vnegq_s64(v157));
    v159 = vzip2q_s64(v42, v158);
    v160 = vzip1q_s64(v42, v158);
    v157.i64[0] = v154.u32[0];
    v157.i64[1] = v154.u32[1];
    v161 = vnegq_s64(v157);
    v162 = vshlq_u64(v82, v161);
    v163 = vzip2q_s64(v82, v162);
    v164 = vzip1q_s64(v82, v162);
    v165 = vshlq_u64(v107, v161);
    v166 = vzip2q_s64(v107, v165);
    v167 = vzip1q_s64(v107, v165);
    v157.i64[0] = v155.u32[0];
    v157.i64[1] = v155.u32[1];
    v168 = vnegq_s64(v157);
    v169 = vshlq_u64(v103, v168);
    v170 = vzip2q_s64(v103, v169);
    v171 = vzip1q_s64(v103, v169);
    v172 = vshlq_u64(v128, v168);
    v157.i64[0] = v156.u32[0];
    v157.i64[1] = v156.u32[1];
    v173 = vnegq_s64(v157);
    v174 = vshlq_u64(v124, v173);
    v175 = vuzp1q_s32(v160, v159);
    v176 = vuzp1q_s32(v164, v163);
    v177 = vuzp1q_s32(v167, v166);
    v178 = vnegq_s32((*&v44 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v179 = vnegq_s32((*&v87 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v180 = vuzp1q_s32(v171, v170);
    v181 = vnegq_s32((*&v108 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v182 = vuzp1q_s32(vzip1q_s64(v128, v172), vzip2q_s64(v128, v172));
    v183 = vuzp1q_s32(vzip1q_s64(v124, v174), vzip2q_s64(v124, v174));
    v184 = vnegq_s32((*&v129 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v185 = vshlq_u32(v175, v178);
    v186 = vshlq_u32(v176, v179);
    v187 = vshlq_u32(v177, v179);
    v188 = vshlq_u32(v180, v181);
    v189 = vshlq_u32(v182, v181);
    v190 = vzip2q_s32(v175, v185);
    v191 = vzip1q_s32(v175, v185);
    v192 = vzip2q_s32(v176, v186);
    v193 = vzip1q_s32(v176, v186);
    v194 = vzip2q_s32(v177, v187);
    v195 = vzip1q_s32(v177, v187);
    v196 = vzip2q_s32(v180, v188);
    v197 = vzip1q_s32(v180, v188);
    v198 = vzip2q_s32(v182, v189);
    v199 = vzip1q_s32(v182, v189);
    v200 = vshlq_u32(v183, v184);
    v201 = vzip2q_s32(v183, v200);
    v202 = vzip1q_s32(v183, v200);
    v203 = vuzp1q_s16(v191, v190);
    v204 = vuzp1q_s16(v193, v192);
    v205 = vuzp1q_s16(v195, v194);
    v206 = vuzp1q_s16(v197, v196);
    v207 = vnegq_s16((*&v318 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v208 = vuzp1q_s16(v199, v198);
    v209 = vuzp1q_s16(v202, v201);
    v210 = vshlq_u16(v203, vnegq_s16((*&v43 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v211 = vshlq_u16(v204, v207);
    v212 = vshlq_u16(v205, v207);
    v213 = vzip2q_s16(v203, v210);
    v214 = vzip1q_s16(v203, v210);
    v215 = vuzp1q_s8(vzip1q_s16(v204, v211), vzip2q_s16(v204, v211));
    v211.i64[0] = 0x808080808080808;
    v211.i64[1] = 0x808080808080808;
    v216 = vuzp1q_s8(vzip1q_s16(v205, v212), vzip2q_s16(v205, v212));
    v204.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v204.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v217 = vsubq_s8(v211, v43);
    v218 = vaddq_s8(v43, v204);
    v219.i64[0] = 0x808080808080808;
    v219.i64[1] = 0x808080808080808;
    v220 = vshlq_s8(vuzp1q_s8(v214, v213), v217);
    v217.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v217.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v221 = vsubq_s8(v219, v318);
    v222 = vaddq_s8(v318, v217);
    v223 = vshlq_s8(v215, v221);
    v224 = vnegq_s16((*&v319 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v225 = vshlq_s8(v220, v218);
    v226 = vshlq_s8(v223, v222);
    v227 = vshlq_s8(vshlq_s8(v216, v221), v222);
    v228 = vdupq_lane_s32(*v225.i8, 0);
    v229 = vandq_s8(v306, v228);
    v230 = vsubq_s8(v226, v229);
    v231 = vsubq_s8(v227, v229);
    v232 = vshlq_u16(v206, v224);
    v233 = vshlq_u16(v208, v224);
    v229.i64[0] = 0x808080808080808;
    v229.i64[1] = 0x808080808080808;
    v218.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v218.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v234 = vsubq_s8(v229, v319);
    v235 = vaddq_s8(v319, v218);
    v236 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v208, v233), vzip2q_s16(v208, v233)), v234);
    v237 = vnegq_s16((*&v320 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v238 = vandq_s8(v307, v228);
    v239 = vsubq_s8(vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v206, v232), vzip2q_s16(v206, v232)), v234), v235), v238);
    v240 = vsubq_s8(vshlq_s8(v236, v235), v238);
    v241 = vshlq_u16(v209, v237);
    v238.i64[0] = 0x808080808080808;
    v238.i64[1] = 0x808080808080808;
    v236.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v236.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v242 = vsubq_s8(v238, v320);
    v243 = vaddq_s8(v320, v236);
    v244 = vshlq_u64(v147, v173);
    v245 = vuzp1q_s32(vzip1q_s64(v147, v244), vzip2q_s64(v147, v244));
    v246 = vshlq_u32(v245, v184);
    v247 = vuzp1q_s16(vzip1q_s32(v245, v246), vzip2q_s32(v245, v246));
    v248 = vshlq_u16(v247, v237);
    v249 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v209, v241), vzip2q_s16(v209, v241)), v242), v243);
    v250 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v247, v248), vzip2q_s16(v247, v248)), v242), v243);
    v251 = vandq_s8(v308, v228);
    v252 = vsubq_s8(v249, v251);
    v253 = vsubq_s8(v250, v251);
    *v249.i8 = vzip1_s32(*v60.i8, *&vextq_s8(v60, v60, 8uLL));
    *v250.i8 = vzip1_s32(*v74.i8, *&vextq_s8(v74, v74, 8uLL));
    v157.i64[0] = v249.u32[0];
    v157.i64[1] = v249.u32[1];
    v254 = v157;
    v157.i64[0] = v250.u32[0];
    v157.i64[1] = v250.u32[1];
    v255 = vshlq_u64(v57, vnegq_s64(v254));
    v256 = vshlq_u64(v86, vnegq_s64(v157));
    v257 = vuzp1q_s32(vzip1q_s64(v57, v255), vzip2q_s64(v57, v255));
    v258 = vuzp1q_s32(vzip1q_s64(v86, v256), vzip2q_s64(v86, v256));
    v259 = vshlq_u32(v257, vnegq_s32((*&v59 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v260 = vshlq_u32(v258, vnegq_s32((*&v73 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v261 = vuzp1q_s16(vzip1q_s32(v257, v259), vzip2q_s32(v257, v259));
    v262 = vuzp1q_s16(vzip1q_s32(v258, v260), vzip2q_s32(v258, v260));
    v263 = vshlq_u16(v261, vnegq_s16((*&v58 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v264 = vshlq_u16(v262, vnegq_s16((*&v317 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v265 = vzip2q_s16(v261, v263);
    v266 = vzip1q_s16(v261, v263);
    v267 = vzip2q_s16(v262, v264);
    v268 = vzip1q_s16(v262, v264);
    v264.i64[0] = 0x808080808080808;
    v264.i64[1] = 0x808080808080808;
    v269 = vuzp1q_s8(v268, v267);
    v267.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v267.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v270 = vshlq_s8(vshlq_s8(v269, vsubq_s8(v264, v317)), vaddq_s8(v317, v267));
    v271 = vaddq_s8(vandq_s8(v225, v309), vshlq_s8(vshlq_s8(vuzp1q_s8(v266, v265), vsubq_s8(v264, v58)), vaddq_s8(v58, v267)));
    v272 = vandq_s8(v309, v228);
    v273.i64[0] = 0x101010101010101;
    v273.i64[1] = 0x101010101010101;
    v274 = vsubq_s8(v271, v272);
    v275 = vsubq_s8(v270, v272);
    if (vaddlvq_s8(vceqq_s8(v310, v273)))
    {
      v276 = vnegq_s8(vandq_s8(v316, v273));
      v277 = v275;
      v277.i32[3] = v274.i32[0];
      v278 = v274;
      v278.i32[0] = v275.i32[3];
      v323.val[0] = vbslq_s8(v276, v278, v274);
      v323.val[1] = vbslq_s8(v276, v277, v275);
      v277.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
      v277.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
      v324.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(v323, xmmword_29D2F0F80), v276), v323.val[0]);
      v324.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(v323, v277), v276), v323.val[1]);
      v274 = vaddq_s8(vandq_s8(vqtbl2q_s8(v324, xmmword_29D2F0F90), v276), v324.val[0]);
      v275 = vaddq_s8(vandq_s8(vqtbl2q_s8(v324, v277), v276), v324.val[1]);
      v324.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v230.i8, xmmword_29D2F0FA0), v276), v230);
      v324.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v230.i8, xmmword_29D2F0FB0), v276), v231);
      v230 = vaddq_s8(vandq_s8(vqtbl2q_s8(v324, xmmword_29D2F0FC0), v276), v324.val[0]);
      v231 = vaddq_s8(vandq_s8(vqtbl2q_s8(v324, v277), v276), v324.val[1]);
      v324.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v239.i8, xmmword_29D2F0FD0), v276), v239);
      v324.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v239.i8, xmmword_29D2F0F80), v276), v240);
      v239 = vaddq_s8(vandq_s8(vqtbl2q_s8(v324, v277), v276), v324.val[0]);
      v240 = vaddq_s8(vandq_s8(vqtbl2q_s8(v324, xmmword_29D2F0FE0), v276), v324.val[1]);
      v323.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v252.i8, xmmword_29D2F0FF0), v276), v252);
      v323.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v252.i8, xmmword_29D2F0F80), v276), v253);
      v252 = vaddq_s8(vandq_s8(vqtbl2q_s8(v323, v277), v276), v323.val[0]);
      v253 = vaddq_s8(vandq_s8(vqtbl2q_s8(v323, xmmword_29D2F1000), v276), v323.val[1]);
    }

    v279 = vaddq_s8(v315, v274);
    v280 = vaddq_s8(v275, v315);
    v281 = vaddq_s8(v230, v315);
    v282 = vaddq_s8(v231, v315);
    v283 = vaddq_s8(v239, v315);
    v284 = vaddq_s8(v240, v315);
    v285 = vaddq_s8(v252, v315);
    v286 = vaddq_s8(v253, v315);
    v287.i64[0] = 0x1010101010101010;
    v287.i64[1] = 0x1010101010101010;
    v288 = vceqzq_s8(vandq_s8(v316, v287));
    v289 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v279, xmmword_29D2F1020), v288), v279);
    v290 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v280, xmmword_29D2F1020), v288), v280);
    v291 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v281, xmmword_29D2F1020), v288), v281);
    v292 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v282, xmmword_29D2F1020), v288), v282);
    v293 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v283, xmmword_29D2F1020), v288), v283);
    v294 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v284, xmmword_29D2F1020), v288), v284);
    v295 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v285, xmmword_29D2F1020), v288), v285);
    v296 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v286, xmmword_29D2F1020), v288), v286);
    v281.i64[0] = 0xF000F000F000F0;
    v281.i64[1] = 0xF000F000F000F0;
    v282.i64[0] = 0xF000F000F000F00;
    v282.i64[1] = 0xF000F000F000F00;
    v286.i64[0] = 0xF000F000F000F000;
    v286.i64[1] = 0xF000F000F000F000;
    v297 = vbslq_s8(v286, vshrn_high_n_s32(vshrn_n_s32(v289, 0xCuLL), v290, 0xCuLL), vbslq_s8(v282, vshrn_high_n_s32(vshrn_n_s32(v289, 8uLL), v290, 8uLL), vbslq_s8(v281, vshrn_high_n_s32(vshrn_n_s32(v289, 4uLL), v290, 4uLL), vuzp1q_s16(v289, v290))));
    v298 = vbslq_s8(v286, vshrn_high_n_s32(vshrn_n_s32(v291, 0xCuLL), v292, 0xCuLL), vbslq_s8(v282, vshrn_high_n_s32(vshrn_n_s32(v291, 8uLL), v292, 8uLL), vbslq_s8(v281, vshrn_high_n_s32(vshrn_n_s32(v291, 4uLL), v292, 4uLL), vuzp1q_s16(v291, v292))));
    v299 = vbslq_s8(v286, vshrn_high_n_s32(vshrn_n_s32(v293, 0xCuLL), v294, 0xCuLL), vbslq_s8(v282, vshrn_high_n_s32(vshrn_n_s32(v293, 8uLL), v294, 8uLL), vbslq_s8(v281, vshrn_high_n_s32(vshrn_n_s32(v293, 4uLL), v294, 4uLL), vuzp1q_s16(v293, v294))));
    v300 = vbslq_s8(v282, vshrn_high_n_s32(vshrn_n_s32(v295, 8uLL), v296, 8uLL), vbslq_s8(v281, vshrn_high_n_s32(vshrn_n_s32(v295, 4uLL), v296, 4uLL), vuzp1q_s16(v295, v296)));
    v301 = vshrn_high_n_s32(vshrn_n_s32(v295, 0xCuLL), v296, 0xCuLL);
    v302 = vzip2q_s64(v297, v298);
    v297.i64[1] = v298.i64[0];
    v303 = vbslq_s8(v286, v301, v300);
    *a1 = v297;
    *(a1 + a2) = v302;
    v304 = vzip2q_s64(v299, v303);
    v299.i64[1] = v303.i64[0];
    v305 = (a1 + 2 * a2);
    *v305 = v299;
    *(v305 + a2) = v304;
  }

  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(uint16x8_t *a1, char *a2, int64x2_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = *(a3 + a4);
  v7 = vzip1q_s64(*a3, v6);
  v8 = vzip2q_s64(*a3, v6);
  v9 = (a3 + 2 * a4);
  v10 = *(v9 + a4);
  v11 = vzip1q_s64(*v9, v10);
  v12 = vzip2q_s64(*v9, v10);
  v13.i64[0] = 0xF0000000FLL;
  v13.i64[1] = 0xF0000000FLL;
  v10.i64[0] = 0xF0000000F00;
  v10.i64[1] = 0xF0000000F00;
  v14.i64[0] = 0xF0000000F0000;
  v14.i64[1] = 0xF0000000F0000;
  v542 = v7;
  v15.i64[0] = 0xF0000000F000000;
  v15.i64[1] = 0xF0000000F000000;
  v16 = vbslq_s8(v15, vshll_n_u16(*v7.i8, 0xCuLL), vbslq_s8(v14, vshll_n_u16(*v7.i8, 8uLL), vbslq_s8(v10, vshll_n_u16(*v7.i8, 4uLL), vbslq_s8(v13, vmovl_u16(*v7.i8), 0))));
  v17 = vbslq_s8(v15, vshll_high_n_u16(v7, 0xCuLL), vbslq_s8(v14, vshll_high_n_u16(v7, 8uLL), vbslq_s8(v10, vshll_high_n_u16(v7, 4uLL), vbslq_s8(v13, vmovl_high_u16(v7), 0))));
  v541 = v8;
  v18 = vbslq_s8(v15, vshll_n_u16(*v8.i8, 0xCuLL), vbslq_s8(v14, vshll_n_u16(*v8.i8, 8uLL), vbslq_s8(v10, vshll_n_u16(*v8.i8, 4uLL), vbslq_s8(v13, vmovl_u16(*v8.i8), 0))));
  v19 = vbslq_s8(v15, vshll_high_n_u16(v8, 0xCuLL), vbslq_s8(v14, vshll_high_n_u16(v8, 8uLL), vbslq_s8(v10, vshll_high_n_u16(v8, 4uLL), vbslq_s8(v13, vmovl_high_u16(v8), 0))));
  v544 = v11;
  v20 = vbslq_s8(v15, vshll_n_u16(*v11.i8, 0xCuLL), vbslq_s8(v14, vshll_n_u16(*v11.i8, 8uLL), vbslq_s8(v10, vshll_n_u16(*v11.i8, 4uLL), vbslq_s8(v13, vmovl_u16(*v11.i8), 0))));
  v21 = vbslq_s8(v15, vshll_high_n_u16(v11, 0xCuLL), vbslq_s8(v14, vshll_high_n_u16(v11, 8uLL), vbslq_s8(v10, vshll_high_n_u16(v11, 4uLL), vbslq_s8(v13, vmovl_high_u16(v11), 0))));
  v543 = v12;
  v22 = vbslq_s8(v15, vshll_n_u16(*v12.i8, 0xCuLL), vbslq_s8(v14, vshll_n_u16(*v12.i8, 8uLL), vbslq_s8(v10, vshll_n_u16(*v12.i8, 4uLL), vbslq_s8(v13, vmovl_u16(*v12.i8), 0))));
  v23 = vbslq_s8(v15, vshll_high_n_u16(v12, 0xCuLL), vbslq_s8(v14, vshll_high_n_u16(v12, 8uLL), vbslq_s8(v10, vshll_high_n_u16(v12, 4uLL), vbslq_s8(v13, vmovl_high_u16(v12), 0))));
  v24 = vdupq_lane_s32(*v16.i8, 0);
  v25 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v16, v24), 4uLL), 4uLL);
  v26 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v17, v24), 4uLL), 4uLL);
  v27 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v18, v24), 4uLL), 4uLL);
  v28 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v19, v24), 4uLL), 4uLL);
  v29 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v20, v24), 4uLL), 4uLL);
  v30 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v21, v24), 4uLL), 4uLL);
  v31 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v22, v24), 4uLL), 4uLL);
  v32 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v23, v24), 4uLL), 4uLL);
  v33 = vqtbl1q_s8(vmaxq_s8(v25, v26), xmmword_29D2F0F70);
  v34 = vqtbl1q_s8(vminq_s8(v25, v26), xmmword_29D2F0F70);
  v35 = vpmaxq_s8(v33, v33);
  v36 = vpminq_s8(v34, v34);
  v37 = vpmaxq_s8(v35, v35);
  v38 = vpminq_s8(v36, v36);
  v39 = vzip1q_s8(v37, v38);
  v40.i64[0] = 0x808080808080808;
  v40.i64[1] = 0x808080808080808;
  v41 = vbicq_s8(vsubq_s8(v40, vclsq_s8(v39)), vceqzq_s8(v39));
  v42 = vqtbl1q_s8(vmaxq_s8(v27, v28), xmmword_29D2F0F70);
  v43 = vqtbl1q_s8(vminq_s8(v27, v28), xmmword_29D2F0F70);
  v44 = vpmaxq_s8(v42, v42);
  v45 = vpminq_s8(v43, v43);
  v46 = vpmaxq_s8(v44, v44);
  v47 = vpminq_s8(v45, v45);
  v48 = vmaxq_s8(v37, v46);
  v49 = vminq_s8(v38, v47);
  v50 = vzip1q_s8(v46, v47);
  v51 = vbicq_s8(vsubq_s8(v40, vclsq_s8(v50)), vceqzq_s8(v50));
  v52 = vqtbl1q_s8(vmaxq_s8(v29, v30), xmmword_29D2F0F70);
  v53 = vqtbl1q_s8(vminq_s8(v29, v30), xmmword_29D2F0F70);
  v54 = vpmaxq_s8(v52, v52);
  v55 = vpminq_s8(v53, v53);
  v56 = vpmaxq_s8(v54, v54);
  v57 = vpminq_s8(v55, v55);
  v58 = vmaxq_s8(v48, v56);
  v59 = vminq_s8(v49, v57);
  v60 = vzip1q_s8(v56, v57);
  v61 = vbicq_s8(vsubq_s8(v40, vclsq_s8(v60)), vceqzq_s8(v60));
  v62 = vqtbl1q_s8(vmaxq_s8(v31, v32), xmmword_29D2F0F70);
  v63 = vqtbl1q_s8(vminq_s8(v31, v32), xmmword_29D2F0F70);
  v64 = vpmaxq_s8(v62, v62);
  v65 = vpminq_s8(v63, v63);
  v66 = vpmaxq_s8(v64, v64);
  v67 = vpminq_s8(v65, v65);
  v68 = vmaxq_s8(v58, v66);
  v69 = vminq_s8(v59, v67);
  v70 = vzip1q_s8(v66, v67);
  v71 = vbicq_s8(vsubq_s8(v40, vclsq_s8(v70)), vceqzq_s8(v70));
  v72 = vpmaxq_s8(v41, v41);
  v73 = vpmaxq_s8(v51, v51);
  v74 = vpmaxq_s8(v61, v61);
  v75 = vpmaxq_s8(v71, v71);
  v76 = vmaxq_s8(vmaxq_s8(v72, v73), vmaxq_s8(v74, v75));
  v77 = vclzq_s8(vsubq_s8(v68, v69));
  v78 = vsubq_s8(v40, v77);
  v79 = vminq_s8(v78, v76);
  if (!vmaxvq_s8(v79))
  {
    a1->i16[0] = a3->i16[0];
    v174 = 1;
    result = 2;
    goto LABEL_91;
  }

  v551 = v24;
  v80.i64[0] = -1;
  v80.i64[1] = -1;
  v81 = v25;
  v82.i64[0] = 0x707070707070707;
  v82.i64[1] = 0x707070707070707;
  v83 = vcgtq_s8(v76, v78);
  v547 = vandq_s8(vsubq_s8(vshlq_s8(v80, vsubq_s8(v82, v77)), v69), v83);
  v84.i64[0] = 0x303030303030303;
  v84.i64[1] = 0x303030303030303;
  v533 = vmaxq_s8(vminq_s8(vsubq_s8(v79, v72), v84), 0);
  v535 = vmaxq_s8(vminq_s8(vsubq_s8(v79, v74), v84), 0);
  v537 = vmaxq_s8(vminq_s8(vsubq_s8(v79, v73), v84), 0);
  v539 = vmaxq_s8(vminq_s8(vsubq_s8(v79, v75), v84), 0);
  v85.i64[0] = 0x404040404040404;
  v85.i64[1] = 0x404040404040404;
  v558 = vorrq_s8(vbicq_s8(v85, vceqq_s8(vaddq_s8(v539, v535), vnegq_s8(vaddq_s8(v533, v537)))), vorrq_s8(vandq_s8(vceqzq_s8(v79), v84), vandq_s8(v83, v40)));
  v545 = v81;
  v552 = v26;
  v86 = vsubq_s8(v26, vqtbl1q_s8(v26, xmmword_29D2F1020));
  v87 = vsubq_s8(v31, vqtbl1q_s8(v31, xmmword_29D2F1020));
  v555 = v29;
  v556 = v30;
  v557 = v31;
  v88 = vshlq_n_s8(vsubq_s8(v28, vqtbl1q_s8(v28, xmmword_29D2F1020)), 4uLL);
  v553 = v27;
  v554 = v28;
  v89 = vshlq_n_s8(vsubq_s8(v30, vqtbl1q_s8(v30, xmmword_29D2F1020)), 4uLL);
  v90 = vshrq_n_s8(v88, 4uLL);
  v549 = v32;
  v531 = vshrq_n_s8(vshlq_n_s8(v86, 4uLL), 4uLL);
  v532 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v81, vqtbl1q_s8(v81, xmmword_29D2F1020)), 4uLL), 4uLL);
  v91 = vqtbl1q_s8(vmaxq_s8(v532, v531), xmmword_29D2F0F70);
  v92 = vqtbl1q_s8(vminq_s8(v532, v531), xmmword_29D2F0F70);
  v93 = vpmaxq_s8(v91, v91);
  v94 = vpminq_s8(v92, v92);
  v95 = vpmaxq_s8(v93, v93);
  v96 = vpminq_s8(v94, v94);
  v97 = vzip1q_s8(v95, v96);
  v98 = vbicq_s8(vsubq_s8(v40, vclsq_s8(v97)), vceqzq_s8(v97));
  v99 = vpmaxq_s8(v98, v98);
  v530 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v27, vqtbl1q_s8(v27, xmmword_29D2F1020)), 4uLL), 4uLL);
  v100 = vqtbl1q_s8(vmaxq_s8(v530, v90), xmmword_29D2F0F70);
  v101 = vqtbl1q_s8(vminq_s8(v530, v90), xmmword_29D2F0F70);
  v102 = vpmaxq_s8(v100, v100);
  v103 = vpminq_s8(v101, v101);
  v104 = vpmaxq_s8(v102, v102);
  v105 = vpminq_s8(v103, v103);
  v106 = vmaxq_s8(v95, v104);
  v107 = vminq_s8(v96, v105);
  v108 = vzip1q_s8(v104, v105);
  v109 = vbicq_s8(vsubq_s8(v40, vclsq_s8(v108)), vceqzq_s8(v108));
  v110 = vpmaxq_s8(v109, v109);
  v528 = vshrq_n_s8(v89, 4uLL);
  v529 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v29, vqtbl1q_s8(v29, xmmword_29D2F1020)), 4uLL), 4uLL);
  v111 = vqtbl1q_s8(vmaxq_s8(v529, v528), xmmword_29D2F0F70);
  v112 = vqtbl1q_s8(vminq_s8(v529, v528), xmmword_29D2F0F70);
  v113 = vpmaxq_s8(v111, v111);
  v114 = vpminq_s8(v112, v112);
  v115 = vpmaxq_s8(v113, v113);
  v116 = vpminq_s8(v114, v114);
  v117 = vmaxq_s8(v106, v115);
  v118 = vminq_s8(v107, v116);
  v119 = vzip1q_s8(v115, v116);
  v120 = vbicq_s8(vsubq_s8(v40, vclsq_s8(v119)), vceqzq_s8(v119));
  v121 = vpmaxq_s8(v120, v120);
  v526 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v32, vqtbl1q_s8(v32, xmmword_29D2F1020)), 4uLL), 4uLL);
  v527 = vshrq_n_s8(vshlq_n_s8(v87, 4uLL), 4uLL);
  v122 = vqtbl1q_s8(vmaxq_s8(v527, v526), xmmword_29D2F0F70);
  v123 = vqtbl1q_s8(vminq_s8(v527, v526), xmmword_29D2F0F70);
  v124 = vpmaxq_s8(v122, v122);
  v125 = vpminq_s8(v123, v123);
  v126 = vpmaxq_s8(v124, v124);
  v127 = vpminq_s8(v125, v125);
  v128 = vmaxq_s8(v117, v126);
  v129 = vminq_s8(v118, v127);
  v130 = vzip1q_s8(v126, v127);
  v131 = vbicq_s8(vsubq_s8(v40, vclsq_s8(v130)), vceqzq_s8(v130));
  v132 = vpmaxq_s8(v131, v131);
  v133 = vmaxq_s8(vmaxq_s8(v99, v110), vmaxq_s8(v121, v132));
  v134 = vclzq_s8(vsubq_s8(v128, v129));
  v135 = vsubq_s8(v40, v134);
  v136 = vcgtq_s8(v133, v135);
  v137 = vminq_s8(v135, v133);
  v133.i64[0] = 0x1010101010101010;
  v133.i64[1] = 0x1010101010101010;
  v83.i64[0] = 0x1818181818181818;
  v83.i64[1] = 0x1818181818181818;
  v138 = vorrq_s8(vandq_s8(vceqzq_s8(v137), v84), vbslq_s8(v136, v83, v133));
  v139 = vmaxq_s8(vminq_s8(vsubq_s8(v137, v99), v84), 0);
  v140 = vmaxq_s8(vminq_s8(vsubq_s8(v137, v110), v84), 0);
  v141 = vmaxq_s8(vminq_s8(vsubq_s8(v137, v121), v84), 0);
  v142 = vmaxq_s8(vminq_s8(vsubq_s8(v137, v132), v84), 0);
  v143 = vsubq_s8(v137, v139);
  v144 = vsubq_s8(v137, v140);
  v145 = vsubq_s8(v137, v141);
  v146 = vsubq_s8(v137, v142);
  v147 = vceqq_s8(vaddq_s8(v142, v141), vnegq_s8(vaddq_s8(v139, v140)));
  v140.i64[0] = 0x404040404040404;
  v140.i64[1] = 0x404040404040404;
  v148 = vorrq_s8(vbicq_s8(v140, v147), v138);
  v149 = vmovl_u8(*v148.i8);
  v140.i64[0] = 0x8000800080008;
  v140.i64[1] = 0x8000800080008;
  v150.i64[0] = 0x2000200020002;
  v150.i64[1] = 0x2000200020002;
  v151 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v137.i8), vceqzq_s16((*&v149 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8)))), vandq_s8(vshll_n_u8(*v148.i8, 1uLL), v140)), vandq_s8(vceqq_s16((*&v149 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v150), v140)), *v143.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v145.i8, *v144.i8), *v146.i8), 3uLL));
  v152 = vaddq_s16(vaddw_s8((*&vshll_n_u8(*v558.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9)), vbic_s8(*v79.i8, vcgt_u8(0x808080808080808, *v558.i8))), vandq_s8(vceqq_s16((*&vmovl_u8(*v558.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v150), v140));
  v153 = vsubq_s8(v79, v533);
  v154 = vsubq_s8(v79, v537);
  v155 = vsubq_s8(v79, v535);
  v156 = vsubq_s8(v79, v539);
  v157 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(v152, *v153.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v155.i8, *v154.i8), *v156.i8), 3uLL)), v151)), 0);
  v158 = vaddlvq_s8(v157);
  v160 = a5 < 2 || a6 < 2;
  if (v158)
  {
    v161.i64[0] = 0x707070707070707;
    v161.i64[1] = 0x707070707070707;
    v162 = vsubq_s8(v161, v134);
    v163.i64[0] = -1;
    v163.i64[1] = -1;
    v164 = vandq_s8(vsubq_s8(vshlq_s8(v163, v162), v129), v136);
    v165 = vbslq_s8(v157, v532, v545);
    v551 = vbslq_s8(v157, vsubq_s8(v551, vqtbl1q_s8(v551, xmmword_29D2F1020)), v551);
    v552 = vbslq_s8(v157, v531, v552);
    v553 = vbslq_s8(v157, v530, v553);
    v554 = vbslq_s8(v157, v90, v554);
    v555 = vbslq_s8(v157, v529, v555);
    v556 = vbslq_s8(v157, v528, v556);
    v557 = vbslq_s8(v157, v527, v557);
    v534 = vbslq_s8(v157, v143, v153);
    v536 = vbslq_s8(v157, v144, v154);
    v538 = vbslq_s8(v157, v145, v155);
    v540 = vbslq_s8(v157, v146, v156);
    v79 = vbslq_s8(v157, v137, v79);
    v558 = vbslq_s8(v157, v148, v558);
    v166 = vbslq_s8(v157, v526, v549);
    v167 = vbslq_s8(v157, v164, v547);
    if (v160)
    {
LABEL_10:
      v169 = v538;
      v168 = v540;
      v171 = v534;
      v170 = v536;
      v172 = v558;
      v173 = v551.i32[0];
      goto LABEL_16;
    }
  }

  else
  {
    v534 = v153;
    v536 = v154;
    v538 = v155;
    v540 = v156;
    v167 = v547;
    v166 = v549;
    v165 = v545;
    if (v160)
    {
      goto LABEL_10;
    }
  }

  v546 = v165;
  v548 = v167;
  v550 = v166;
  v176 = vsubq_s8(v16, vqtbl2q_s8(*v16.i8, xmmword_29D2F0F80));
  v177 = vsubq_s8(v17, vqtbl2q_s8(*v16.i8, xmmword_29D2F1030));
  v178 = v19;
  v178.i32[3] = v17.i32[3];
  v179 = v21;
  v179.i32[3] = v17.i32[3];
  v180 = v23;
  v180.i32[3] = v17.i32[3];
  v181 = v177;
  v181.i32[3] = v176.i32[0];
  v176.i32[0] = v177.i32[3];
  v182.i64[0] = 0x404040404040404;
  v182.i64[1] = 0x404040404040404;
  v183 = vshrq_n_s8(vshlq_n_s8(v176, 4uLL), 4uLL);
  v184 = vshrq_n_s8(vshlq_n_s8(v181, 4uLL), 4uLL);
  v185 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v18, vqtbl2q_s8(*v18.i8, xmmword_29D2F0FA0)), 4uLL), 4uLL);
  v186 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v19, vqtbl2q_s8(*v18.i8, xmmword_29D2F1040)), 4uLL), 4uLL);
  v187 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v20, vqtbl2q_s8(*v20.i8, xmmword_29D2F1050)), 4uLL), 4uLL);
  v188 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v21, vqtbl2q_s8(*v20.i8, xmmword_29D2F0F80)), 4uLL), 4uLL);
  v189 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v22, vqtbl2q_s8(*v22.i8, xmmword_29D2F1060)), 4uLL), 4uLL);
  v190 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v23, vqtbl2q_s8(*v22.i8, xmmword_29D2F0F80)), 4uLL), 4uLL);
  v191 = vqtbl1q_s8(vmaxq_s8(v183, v184), xmmword_29D2F0F70);
  v192 = vqtbl1q_s8(vminq_s8(v183, v184), xmmword_29D2F0F70);
  v193 = vpmaxq_s8(v191, v191);
  v194 = vpminq_s8(v192, v192);
  v195 = vpmaxq_s8(v193, v193);
  v196 = vpminq_s8(v194, v194);
  v197 = vzip1q_s8(v195, v196);
  v198.i64[0] = 0x808080808080808;
  v198.i64[1] = 0x808080808080808;
  v199 = vbicq_s8(vsubq_s8(v198, vclsq_s8(v197)), vceqzq_s8(v197));
  v200 = vpmaxq_s8(v199, v199);
  v201 = vqtbl1q_s8(vmaxq_s8(v185, v186), xmmword_29D2F0F70);
  v202 = vqtbl1q_s8(vminq_s8(v185, v186), xmmword_29D2F0F70);
  v203 = vpmaxq_s8(v201, v201);
  v204 = vpminq_s8(v202, v202);
  v205 = vpmaxq_s8(v203, v203);
  v206 = vpminq_s8(v204, v204);
  v207 = vmaxq_s8(v195, v205);
  v208 = vminq_s8(v196, v206);
  v209 = vzip1q_s8(v205, v206);
  v210 = vbicq_s8(vsubq_s8(v198, vclsq_s8(v209)), vceqzq_s8(v209));
  v211 = vpmaxq_s8(v210, v210);
  v212 = vqtbl1q_s8(vmaxq_s8(v187, v188), xmmword_29D2F0F70);
  v213 = vqtbl1q_s8(vminq_s8(v187, v188), xmmword_29D2F0F70);
  v214 = vpmaxq_s8(v212, v212);
  v215 = vpminq_s8(v213, v213);
  v216 = vpmaxq_s8(v214, v214);
  v217 = vpminq_s8(v215, v215);
  v218 = vmaxq_s8(v207, v216);
  v219 = vminq_s8(v208, v217);
  v220 = vzip1q_s8(v216, v217);
  v221 = vbicq_s8(vsubq_s8(v198, vclsq_s8(v220)), vceqzq_s8(v220));
  v222 = v79;
  v223 = vpmaxq_s8(v221, v221);
  v224 = vqtbl1q_s8(vmaxq_s8(v189, v190), xmmword_29D2F0F70);
  v225 = vqtbl1q_s8(vminq_s8(v189, v190), xmmword_29D2F0F70);
  v226 = vpmaxq_s8(v224, v224);
  v227 = vpminq_s8(v225, v225);
  v228 = vpmaxq_s8(v226, v226);
  v229 = vpminq_s8(v227, v227);
  v230 = vmaxq_s8(v218, v228);
  v231 = vminq_s8(v219, v229);
  v232 = vzip1q_s8(v228, v229);
  v233 = vbicq_s8(vsubq_s8(v198, vclsq_s8(v232)), vceqzq_s8(v232));
  v234 = vpmaxq_s8(v233, v233);
  v235 = vmaxq_s8(vmaxq_s8(v200, v211), vmaxq_s8(v223, v234));
  v236 = vclzq_s8(vsubq_s8(v230, v231));
  v237 = vsubq_s8(v198, v236);
  v238 = vcgtq_s8(v235, v237);
  v239 = vminq_s8(v237, v235);
  v198.i64[0] = 0x909090909090909;
  v198.i64[1] = 0x909090909090909;
  v178.i64[0] = 0x202020202020202;
  v178.i64[1] = 0x202020202020202;
  v240 = vorrq_s8(vandq_s8(vceqzq_s8(v239), v178), vsubq_s8(vandq_s8(v238, v198), vmvnq_s8(v238)));
  v198.i64[0] = 0x303030303030303;
  v198.i64[1] = 0x303030303030303;
  v241 = vmaxq_s8(vminq_s8(vsubq_s8(v239, v200), v198), 0);
  v242 = vmaxq_s8(vminq_s8(vsubq_s8(v239, v211), v198), 0);
  v243 = vmaxq_s8(vminq_s8(vsubq_s8(v239, v223), v198), 0);
  v244 = vmaxq_s8(vminq_s8(vsubq_s8(v239, v234), v198), 0);
  v245 = vsubq_s8(v239, v241);
  v246 = vsubq_s8(v239, v242);
  v247 = vsubq_s8(v239, v243);
  v248 = vsubq_s8(v239, v244);
  v249 = vorrq_s8(vbicq_s8(v182, vceqq_s8(vaddq_s8(v244, v243), vnegq_s8(vaddq_s8(v241, v242)))), v240);
  v243.i64[0] = 0x3000300030003;
  v243.i64[1] = 0x3000300030003;
  v172 = v558;
  v250 = vmovl_s8(*v558.i8);
  v241.i64[0] = 0x8000800080008;
  v241.i64[1] = 0x8000800080008;
  v251 = vbicq_s8(vmovl_s8(*v222.i8), vceqzq_s16(vandq_s8(v250, v241)));
  v252 = vandq_s8(v250, v243);
  v243.i64[0] = 0x2000200020002;
  v243.i64[1] = 0x2000200020002;
  v170 = v536;
  v169 = v538;
  v168 = v540;
  v171 = v534;
  v253 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v251, vandq_s8(vshll_n_s8(*v558.i8, 1uLL), v241)), vandq_s8(vceqq_s16(v252, v243), v241)), *v534.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v538.i8, *v536.i8), *v540.i8), 3uLL)), vaddq_s16(vmlal_s8(vaddw_u8(vmovl_s8(vbic_s8(*v239.i8, vcgt_u8(0x808080808080808, *v249.i8))), vand_s8(vadd_s8(*v249.i8, *v249.i8), 0x808080808080808)), *v245.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v247.i8, *v246.i8), *v248.i8), 3uLL)))), 0);
  v173 = v551.i32[0];
  if (vaddlvq_s8(v253))
  {
    v254.i64[0] = 0x707070707070707;
    v254.i64[1] = 0x707070707070707;
    v255 = vsubq_s8(v254, v236);
    v254.i64[0] = -1;
    v254.i64[1] = -1;
    v256 = vandq_s8(vsubq_s8(vshlq_s8(v254, v255), v231), v238);
    v173 = vbslq_s8(v253, vextq_s8(v17, v17, 0xCuLL), v551).u32[0];
    v552 = vbslq_s8(v253, v184, v552);
    v553 = vbslq_s8(v253, v185, v553);
    v554 = vbslq_s8(v253, v186, v554);
    v555 = vbslq_s8(v253, v187, v555);
    v556 = vbslq_s8(v253, v188, v556);
    v557 = vbslq_s8(v253, v189, v557);
    v166 = vbslq_s8(v253, v190, v550);
    v171 = vbslq_s8(v253, v245, v534);
    v170 = vbslq_s8(v253, v246, v536);
    v169 = vbslq_s8(v253, v247, v538);
    v168 = vbslq_s8(v253, v248, v540);
    v167 = vbslq_s8(v253, v256, v548);
    v79 = vbslq_s8(v253, v239, v222);
    v172 = vbslq_s8(v253, v249, v558);
    v165 = vbslq_s8(v253, v183, v546);
  }

  else
  {
    v167 = v548;
    v166 = v550;
    v79 = v222;
    v165 = v546;
  }

LABEL_16:
  v257 = vmovl_s8(*v172.i8);
  v258.i64[0] = 0x8000800080008;
  v258.i64[1] = 0x8000800080008;
  v259.i64[0] = 0x3000300030003;
  v259.i64[1] = 0x3000300030003;
  v260.i64[0] = 0x2000200020002;
  v260.i64[1] = 0x2000200020002;
  v261 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v79.i8), vceqzq_s16(vandq_s8(v257, v258))), vandq_s8(vshll_n_s8(*v172.i8, 1uLL), v258)), vandq_s8(vceqq_s16(vandq_s8(v257, v259), v260), v258)), *v171.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v169.i8, *v170.i8), *v168.i8), 3uLL));
  v262 = vpaddq_s16(v261, v261);
  v263 = vpaddq_s16(v262, v262).u64[0];
  if ((v263.i16[0] + 55) > 0x1FF)
  {
    *a1 = v542;
    a1[1] = v541;
    v174 = 63;
    a1[2] = v544;
    a1[3] = v543;
    result = 64;
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
    v267 = vzip1_s8(*v79.i8, v263);
    v268 = vadd_s16(v267, 0xFF00FF00FF00FFLL);
    v269 = vmovl_u16(vceqz_s16((*&v267 & 0xFF00FF00FF00FFLL)));
    v270.i64[0] = v269.u32[0];
    v270.i64[1] = v269.u32[1];
    v271 = vshrq_n_s64(vshlq_n_s64(v270, 0x38uLL), 0x38uLL);
    v270.i64[0] = v269.u32[2];
    v270.i64[1] = v269.u32[3];
    v272 = vshrq_n_s64(vshlq_n_s64(v270, 0x38uLL), 0x38uLL);
    v273 = vshlq_u32(vmovl_u16(vand_s8(v268, 0x7000700070007)), xmmword_29D2F1070);
    v270.i64[0] = v273.u32[0];
    v270.i64[1] = v273.u32[1];
    v274 = v270;
    v270.i64[0] = v273.u32[2];
    v270.i64[1] = v273.u32[3];
    v275 = vorrq_s8(vbicq_s8(v274, v271), vbicq_s8(v270, v272));
    v276 = *&vorr_s8(*v275.i8, *&vextq_s8(v275, v275, 8uLL)) | (32 * (v172.i8[1] & 0x1F)) | ((v172.i8[3] & 0x1F) << 15) | ((v172.i8[2] & 0x1F) << 10) | v172.i8[0] & 0x1F;
    v277 = (v276 << v265) | v266;
    if (v265 >= 0x20)
    {
      *v264 = v277;
      v277 = v276 >> (-8 * (a1 & 7u));
    }

    v278 = v173 & 0xF | (16 * BYTE1(v173)) | ((BYTE2(v173) & 0xF) << 8) | ((HIBYTE(v173) & 0xF) << 12);
    v279 = (v265 + 32) & 0x38;
    v280 = v277 | (v278 << v279);
    if (v279 >= 0x30)
    {
      *(v264 + (((v265 + 32) >> 3) & 8)) = v280;
      v280 = v278 >> -v279;
    }

    v281 = v265 + 48;
    v282 = vsubq_s8(v79, v171);
    v283 = vsubq_s8(v79, v170);
    v284 = vsubq_s8(v79, v169);
    v285 = vsubq_s8(v79, v168);
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
    v292 = vandq_s8(vmovl_s16(vtst_s16(*v257.i8, 0x4000400040004)), v288);
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
    v310 = (v265 + 48) & 0x38;
    v311 = (v308.i64[0] << v310) | v280;
    if ((v309.i64[0] + v310) >= 0x40)
    {
      *(v264 + ((v281 >> 3) & 8)) = v311;
      v311 = v308.i64[0] >> -v310;
      if (!v310)
      {
        v311 = 0;
      }
    }

    v312 = vceqq_s8(v79, v171);
    v313 = v309.i64[1];
    v314 = v309.i64[0] + v281;
    v315 = v311 | (v308.i64[1] << v314);
    if ((v314 & 0x3F) + v309.i64[1] >= 0x40)
    {
      *(v264 + ((v314 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v315;
      v315 = v308.i64[1] >> -(v314 & 0x3F);
      if ((v314 & 0x3F) == 0)
      {
        v315 = 0;
      }
    }

    v316 = vandq_s8(v167, v312);
    v317 = v314 + v313;
    v318.i64[0] = 0x808080808080808;
    v318.i64[1] = 0x808080808080808;
    v319.i64[0] = -1;
    v319.i64[1] = -1;
    v320 = vandq_s8(vextq_s8(vtstq_s8(v172, v318), 0, 0xCuLL), v79);
    v321.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v321.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v322 = vandq_s8(vshlq_u8(v319, vaddq_s8(v320, v321)), v167);
    v323 = vmovl_u8(*v320.i8);
    v324 = vpaddq_s16(vshlq_u16(vmovl_u8(*v322.i8), vtrn1q_s16(0, v323)), vmovl_high_u8(v322));
    v325 = vpaddq_s16(v323, vmovl_high_u8(v320));
    v326 = vmovl_u16(*v325.i8);
    v327 = vmovl_high_u16(v325);
    v328 = vpaddq_s32(vshlq_u32(vmovl_u16(*v324.i8), vtrn1q_s32(0, v326)), vshlq_u32(vmovl_high_u16(v324), vtrn1q_s32(0, v327)));
    v329 = vpaddq_s32(v326, v327);
    v330.i64[0] = v328.u32[0];
    v330.i64[1] = v328.u32[1];
    v331 = v330;
    v330.i64[0] = v328.u32[2];
    v330.i64[1] = v328.u32[3];
    v332 = v330;
    v330.i64[0] = v329.u32[0];
    v330.i64[1] = v329.u32[1];
    v333 = v330;
    v330.i64[0] = v329.u32[2];
    v330.i64[1] = v329.u32[3];
    v334 = vpaddq_s64(vshlq_u64(v331, vzip1q_s64(0, v333)), vshlq_u64(v332, vzip1q_s64(0, v330)));
    v335 = vpaddq_s64(v333, v330);
    v336 = (v334.i64[0] << v317) | v315;
    if (v335.i64[0] + (v317 & 0x3F) >= 0x40)
    {
      *(v264 + ((v317 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v336;
      v336 = v334.i64[0] >> -(v317 & 0x3F);
      if ((v317 & 0x3F) == 0)
      {
        v336 = 0;
      }
    }

    v337 = vaddq_s8(v316, v165);
    v338 = v335.i64[0] + v317;
    v339 = v336 | (v334.i64[1] << v338);
    if ((v338 & 0x3F) + v335.i64[1] >= 0x40)
    {
      *(v264 + ((v338 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v339;
      v339 = v334.i64[1] >> -(v338 & 0x3F);
      if ((v338 & 0x3F) == 0)
      {
        v339 = 0;
      }
    }

    v340 = v338 + v335.i64[1];
    v341 = vextq_s8(0, v171, 0xCuLL);
    v342.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v342.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v343.i64[0] = -1;
    v343.i64[1] = -1;
    v344 = vandq_s8(vshlq_u8(v343, vaddq_s8(v341, v342)), v337);
    v345 = vmovl_u8(*v341.i8);
    v346 = vmovl_high_u8(v341);
    v347 = vpaddq_s16(vshlq_u16(vmovl_u8(*v344.i8), vtrn1q_s16(0, v345)), vshlq_u16(vmovl_high_u8(v344), vtrn1q_s16(0, v346)));
    v348 = vpaddq_s16(v345, v346);
    v349 = vmovl_u16(*v348.i8);
    v350 = vmovl_high_u16(v348);
    v351 = vpaddq_s32(vshlq_u32(vmovl_u16(*v347.i8), vtrn1q_s32(0, v349)), vshlq_u32(vmovl_high_u16(v347), vtrn1q_s32(0, v350)));
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
    v359 = (v357.i64[0] << v340) | v339;
    if (v358.i64[0] + (v340 & 0x3F) >= 0x40)
    {
      *(v264 + ((v340 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v359;
      v359 = v357.i64[0] >> -(v340 & 0x3F);
      if ((v340 & 0x3F) == 0)
      {
        v359 = 0;
      }
    }

    v360 = vceqq_s8(v79, v170);
    v361 = vaddq_s8(v552, v316);
    v362 = v358.i64[0] + v340;
    v363 = v359 | (v357.i64[1] << v362);
    if ((v362 & 0x3F) + v358.i64[1] >= 0x40)
    {
      *(v264 + ((v362 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v363;
      v363 = v357.i64[1] >> -(v362 & 0x3F);
      if ((v362 & 0x3F) == 0)
      {
        v363 = 0;
      }
    }

    v364 = vandq_s8(v167, v360);
    v365 = v362 + v358.i64[1];
    v366.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v366.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v367.i64[0] = -1;
    v367.i64[1] = -1;
    v368 = vandq_s8(vshlq_u8(v367, vaddq_s8(v171, v366)), v361);
    v369 = vmovl_u8(*v171.i8);
    v370 = vmovl_high_u8(v171);
    v371 = vpaddq_s16(vshlq_u16(vmovl_u8(*v368.i8), vtrn1q_s16(0, v369)), vshlq_u16(vmovl_high_u8(v368), vtrn1q_s16(0, v370)));
    v372 = vpaddq_s16(v369, v370);
    v373 = vmovl_u16(*v372.i8);
    v374 = vmovl_high_u16(v372);
    v375 = vpaddq_s32(vshlq_u32(vmovl_u16(*v371.i8), vtrn1q_s32(0, v373)), vshlq_u32(vmovl_high_u16(v371), vtrn1q_s32(0, v374)));
    v376 = vpaddq_s32(v373, v374);
    v377.i64[0] = v375.u32[0];
    v377.i64[1] = v375.u32[1];
    v378 = v377;
    v377.i64[0] = v375.u32[2];
    v377.i64[1] = v375.u32[3];
    v379 = v377;
    v377.i64[0] = v376.u32[0];
    v377.i64[1] = v376.u32[1];
    v380 = v377;
    v377.i64[0] = v376.u32[2];
    v377.i64[1] = v376.u32[3];
    v381 = vpaddq_s64(vshlq_u64(v378, vzip1q_s64(0, v380)), vshlq_u64(v379, vzip1q_s64(0, v377)));
    v382 = vpaddq_s64(v380, v377);
    v383 = (v381.i64[0] << v365) | v363;
    if (v382.i64[0] + (v365 & 0x3F) >= 0x40)
    {
      *(v264 + ((v365 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v383;
      v383 = v381.i64[0] >> -(v365 & 0x3F);
      if ((v365 & 0x3F) == 0)
      {
        v383 = 0;
      }
    }

    v384 = vaddq_s8(v553, v364);
    v385 = v382.i64[0] + v365;
    v386 = v383 | (v381.i64[1] << v385);
    if ((v385 & 0x3F) + v382.i64[1] >= 0x40)
    {
      *(v264 + ((v385 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v386;
      v386 = v381.i64[1] >> -(v385 & 0x3F);
      if ((v385 & 0x3F) == 0)
      {
        v386 = 0;
      }
    }

    v387 = v385 + v382.i64[1];
    v388.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v388.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v389.i64[0] = -1;
    v389.i64[1] = -1;
    v390 = vshlq_u8(v389, vaddq_s8(v170, v388));
    v391 = vandq_s8(v390, v384);
    v392 = vmovl_u8(*v391.i8);
    v393 = vmovl_high_u8(v391);
    v394 = vmovl_u8(*v170.i8);
    v395 = vmovl_high_u8(v170);
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
    v416 = (v414.i64[0] << v387) | v386;
    if (v415.i64[0] + (v387 & 0x3F) >= 0x40)
    {
      *(v264 + ((v387 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
      if ((v387 & 0x3F) != 0)
      {
        v416 = v414.i64[0] >> -(v387 & 0x3F);
      }

      else
      {
        v416 = 0;
      }
    }

    v417 = vceqq_s8(v79, v169);
    v418 = vaddq_s8(v554, v364);
    v419 = v415.i64[0] + v387;
    v420 = v416 | (v414.i64[1] << v419);
    if ((v419 & 0x3F) + v415.i64[1] >= 0x40)
    {
      *(v264 + ((v419 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v420;
      v420 = v414.i64[1] >> -(v419 & 0x3F);
      if ((v419 & 0x3F) == 0)
      {
        v420 = 0;
      }
    }

    v421 = vandq_s8(v167, v417);
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
      *(v264 + ((v422 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v429;
      v429 = v428.i64[0] >> -(v422 & 0x3F);
      if ((v422 & 0x3F) == 0)
      {
        v429 = 0;
      }
    }

    v430 = vaddq_s8(v555, v421);
    v431 = v415.i64[0] + v422;
    v432 = (v415.i64[0] + v422) & 0x3F;
    v433 = v429 | (v428.i64[1] << v431);
    if ((v431 & 0x3F) + v415.i64[1] >= 0x40)
    {
      *(v264 + ((v431 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v433;
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
    v437 = vshlq_u8(v436, vaddq_s8(v169, v435));
    v438 = vandq_s8(v437, v430);
    v439 = vmovl_u8(*v438.i8);
    v440 = vmovl_high_u8(v438);
    v441 = vmovl_u8(*v169.i8);
    v442 = vmovl_high_u8(v169);
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
      *(v264 + ((v434 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v463;
      if ((v434 & 0x3F) != 0)
      {
        v463 = v461.i64[0] >> -(v434 & 0x3F);
      }

      else
      {
        v463 = 0;
      }
    }

    v464 = vceqq_s8(v79, v168);
    v465 = vaddq_s8(v556, v421);
    v466 = v462.i64[0] + v434;
    v467 = v463 | (v461.i64[1] << v466);
    if ((v466 & 0x3F) + v462.i64[1] >= 0x40)
    {
      *(v264 + ((v466 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v467;
      v467 = v461.i64[1] >> -(v466 & 0x3F);
      if ((v466 & 0x3F) == 0)
      {
        v467 = 0;
      }
    }

    v468 = vandq_s8(v167, v464);
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
      *(v264 + ((v469 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v476;
      v476 = v475.i64[0] >> -(v469 & 0x3F);
      if ((v469 & 0x3F) == 0)
      {
        v476 = 0;
      }
    }

    v477 = vaddq_s8(v557, v468);
    v478 = v462.i64[0] + v469;
    v479 = (v462.i64[0] + v469) & 0x3F;
    v480 = v476 | (v475.i64[1] << v478);
    if ((v478 & 0x3F) + v462.i64[1] >= 0x40)
    {
      *(v264 + ((v478 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v480;
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
    v484 = vshlq_u8(v483, vaddq_s8(v168, v482));
    v485 = vandq_s8(v484, v477);
    v486 = vmovl_u8(*v485.i8);
    v487 = vmovl_high_u8(v485);
    v488 = vmovl_u8(*v168.i8);
    v489 = vmovl_high_u8(v168);
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
      *(v264 + ((v481 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v510;
      if ((v481 & 0x3F) != 0)
      {
        v510 = v508.i64[0] >> -(v481 & 0x3F);
      }

      else
      {
        v510 = 0;
      }
    }

    v511 = vaddq_s8(v166, v468);
    v512 = v509.i64[0] + v481;
    v513 = v510 | (v508.i64[1] << v512);
    if ((v512 & 0x3F) + v509.i64[1] >= 0x40)
    {
      *(v264 + ((v512 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v513;
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
      *(v264 + ((v514 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v521;
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
      *(v264 + ((v522 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v524;
      v524 = v520.i64[1] >> -v523;
      if (!v523)
      {
        v524 = 0;
      }
    }

    v525 = v522 + v509.i64[1];
    if ((v525 & 0x3F) != 0)
    {
      *(v264 + ((v525 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v524;
    }

    result = (v525 - v265 + 7) >> 3;
    v174 = *a2 | (result - 1);
  }

LABEL_91:
  *a2 = v174;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, uint16x8_t *a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 1, a2, v14, v13);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, (v11 + v15), a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v15 + 16), a2, v20, v19);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 2, a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 3, a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + v15 + 32), a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + v15 + 48), a2, v30, v29);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(int8x16_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 == 63)
  {
    v19 = *(a3 + 16);
    v20 = *(a3 + 32);
    v21 = *(a3 + 48);
    *a1 = *a3;
    a1[1] = v20;
    v22 = &a1->i8[a2];
    *v22 = v19;
    *(v22 + 1) = v21;
    return 64;
  }

  else if (a4 == 1)
  {
    v17 = vld1q_dup_s16(a3);
    *a1 = v17;
    a1[1] = v17;
    v18 = &a1->i8[a2];
    *v18 = v17;
    v18[1] = v17;
    return 2;
  }

  else if (a4)
  {
    v334[1] = v13;
    v334[2] = v12;
    v334[3] = v11;
    v334[4] = v10;
    v334[5] = v9;
    v334[6] = v8;
    v334[7] = v7;
    v334[8] = v6;
    v334[13] = v4;
    v334[14] = v5;
    v326 = 0;
    v325 = (8 * (a3 & 7)) | 0x200;
    v323 = 8 * (a3 & 7);
    v324 = a3 & 0xFFFFFFFFFFFFFFF8;
    result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)8,AGX::AppleCompressionGen2::Vec<signed char>>(&v328, v333, &v327, &v323, a4);
    v26.i64[0] = 0x303030303030303;
    v26.i64[1] = 0x303030303030303;
    v322 = vandq_s8(v328, v26);
    v27 = vbicq_s8(v333[0], vceqq_s8(v322, v26));
    v333[0] = v27;
    v329 = v27;
    v330 = v27;
    v331 = v27;
    v332 = v27;
    v28.i64[0] = 0x202020202020202;
    v28.i64[1] = 0x202020202020202;
    v29 = vandq_s8(vmovl_s16(vtst_s16(*&vmovl_u8(*v328.i8), 0x4000400040004)), v28);
    v30 = v323;
    if (vmaxvq_s8(v29) < 1)
    {
      v46.i64[0] = -1;
      v46.i64[1] = -1;
      v319 = v46;
      v320 = v46;
      v318 = v46;
      v321 = v46;
      v41 = a2;
      v42 = a1;
    }

    else
    {
      v31 = vmovl_u8(*&vpaddq_s8(v29, v29));
      v32 = vmovl_u16(*&vpaddq_s16(v31, v31));
      v33 = vpaddq_s32(v32, v32).u64[0];
      v34.i64[0] = v33;
      v34.i64[1] = HIDWORD(v33);
      v35 = v34;
      v36 = vaddvq_s64(v34);
      v37 = v36;
      v38 = v323 + v36;
      if (v325)
      {
        v39 = v325 >= v38;
      }

      else
      {
        v39 = 1;
      }

      v40 = v39;
      v41 = a2;
      v42 = a1;
      if (v36 <= 0x80 && (v40 & 1) != 0)
      {
        v25.i64[0] = 63;
        v43 = (v324 + 8 * (v323 >> 6));
        v44 = vaddq_s64(vdupq_lane_s64(vandq_s8(v323, v25).i64[0], 0), vzip1q_s64(0, v35));
        v45 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v43, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v44)), vshlq_u64(vdupq_lane_s64(v43->i64[0], 0), vnegq_s64(v44)));
        if ((v323 & 0x3F) + v37 >= 0x81)
        {
          v45 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v43[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v44)), vshlq_u64(vdupq_laneq_s64(v43[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v44))), v45);
        }

        v30 = v38;
      }

      else
      {
        v326 = 1;
        v45 = 0uLL;
      }

      v47 = vzip1_s32(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
      v48.i64[0] = v47.u32[0];
      v48.i64[1] = v47.u32[1];
      v49 = vshlq_u64(v45, vnegq_s64(v48));
      v50 = vuzp1q_s32(vzip1q_s64(v45, v49), vzip2q_s64(v45, v49));
      v51 = vshlq_u32(v50, vnegq_s32((*&v31 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v52 = vuzp1q_s16(vzip1q_s32(v50, v51), vzip2q_s32(v50, v51));
      v53 = vshlq_u16(v52, vnegq_s16((*&v29 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
      v54 = vuzp1q_s8(vzip1q_s16(v52, v53), vzip2q_s16(v52, v53));
      v53.i64[0] = 0x101010101010101;
      v53.i64[1] = 0x101010101010101;
      v55 = vshlq_s8(v53, v29);
      v53.i64[0] = -1;
      v53.i64[1] = -1;
      v56 = vqtbl1q_s8(vandq_s8(vaddq_s8(v55, v53), v54), xmmword_29D2F0F70);
      v57 = vdupq_lane_s32(*v56.i8, 0);
      v58 = vdupq_lane_s32(*v56.i8, 1);
      v59 = vdupq_laneq_s32(v56, 2);
      v60 = vdupq_laneq_s32(v56, 3);
      v329 = vsubq_s8(v329, v57);
      v330 = vsubq_s8(v330, v58);
      v331 = vsubq_s8(v331, v59);
      v332 = vsubq_s8(v332, v60);
      v318 = vceqzq_s8(v58);
      v319 = vceqzq_s8(v59);
      v320 = vceqzq_s8(v60);
      v321 = vceqzq_s8(v57);
    }

    v61.i64[0] = 0x808080808080808;
    v61.i64[1] = 0x808080808080808;
    v62 = 0uLL;
    v63 = vandq_s8(vextq_s8(vtstq_s8(v328, v61), 0, 0xCuLL), v27);
    v64 = vmovl_u8(*&vpaddq_s8(v63, v63));
    v65 = vmovl_u16(*&vpaddq_s16(v64, v64));
    v66 = vpaddq_s32(v65, v65).u64[0];
    v67.i64[0] = v66;
    v67.i64[1] = HIDWORD(v66);
    v68 = v67;
    v69 = vaddvq_s64(v67);
    if (v325)
    {
      v70 = v325 >= v30 + v69;
    }

    else
    {
      v70 = 1;
    }

    v71 = v70;
    if (v69 <= 0x80 && (v71 & 1) != 0)
    {
      v72 = vaddq_s64(vdupq_n_s64(v30 & 0x3F), vzip1q_s64(0, v68));
      v73 = (v324 + 8 * (v30 >> 6));
      v62 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v73, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v72)), vshlq_u64(vdupq_lane_s64(v73->i64[0], 0), vnegq_s64(v72)));
      if ((v30 & 0x3F) + v69 >= 0x81)
      {
        v62 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v73[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v72)), vshlq_u64(vdupq_laneq_s64(v73[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v72))), v62);
      }

      v30 += v69;
    }

    else
    {
      v326 = 1;
    }

    v74 = v328.i8[0] & 3;
    if (v74 == 2)
    {
      if (v325)
      {
        v75 = v30 + 4;
        v76 = v30 + 8;
        if (v325 >= v30 + 4)
        {
          v30 += 4;
        }

        else
        {
          v76 = v30 + 4;
        }

        if (v325 >= v76)
        {
          v30 = v76;
        }

        if (v325 < v75 || v325 < v76)
        {
          v326 = 1;
        }
      }

      else
      {
        v30 += 8;
      }
    }

    v77 = 0uLL;
    v78 = vextq_s8(0, v329, 0xCuLL);
    v79 = vmovl_u8(*&vpaddq_s8(v78, v78));
    v80 = vmovl_u16(*&vpaddq_s16(v79, v79));
    v81 = vpaddq_s32(v80, v80).u64[0];
    v82.i64[0] = v81;
    v82.i64[1] = HIDWORD(v81);
    v83 = v82;
    v84 = vaddvq_s64(v82);
    v85 = v30 + v84;
    if (v325)
    {
      v86 = v325 >= v85;
    }

    else
    {
      v86 = 1;
    }

    v87 = v86;
    if (v84 <= 0x80 && (v87 & 1) != 0)
    {
      v88 = v30 & 0x3F;
      v89 = vaddq_s64(vdupq_n_s64(v88), vzip1q_s64(0, v83));
      v90 = v324;
      v91 = (v324 + 8 * (v30 >> 6));
      v77 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v91, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v89)), vshlq_u64(vdupq_lane_s64(v91->i64[0], 0), vnegq_s64(v89)));
      if (v88 + v84 >= 0x81)
      {
        v77 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v91[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v89)), vshlq_u64(vdupq_laneq_s64(v91[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v89))), v77);
      }

      v92 = v326;
      v30 = v85;
    }

    else
    {
      v92 = 1;
      v90 = v324;
    }

    v93 = vmovl_u8(*&vpaddq_s8(v329, v329));
    v94 = vmovl_u16(*&vpaddq_s16(v93, v93));
    v95 = vpaddq_s32(v94, v94).u64[0];
    v96.i64[0] = v95;
    v96.i64[1] = HIDWORD(v95);
    v97 = v96;
    v98 = vaddvq_s64(v96);
    v99 = v30 + v98;
    if (v325)
    {
      v100 = v325 >= v99;
    }

    else
    {
      v100 = 1;
    }

    v101 = v100;
    v102 = 0uLL;
    if (v98 <= 0x80 && v101)
    {
      v103 = v30 & 0x3F;
      v104 = vaddq_s64(vdupq_n_s64(v103), vzip1q_s64(0, v97));
      v105 = (v90 + 8 * (v30 >> 6));
      v106 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v105, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v104)), vshlq_u64(vdupq_lane_s64(v105->i64[0], 0), vnegq_s64(v104)));
      if (v103 + v98 >= 0x81)
      {
        v106 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v105[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v104)), vshlq_u64(vdupq_laneq_s64(v105[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v104))), v106);
      }
    }

    else
    {
      v92 = 1;
      v99 = v30;
      v106 = 0uLL;
    }

    v107 = vmovl_u8(*&vpaddq_s8(v330, v330));
    v108 = vmovl_u16(*&vpaddq_s16(v107, v107));
    v109 = vpaddq_s32(v108, v108).u64[0];
    v110.i64[0] = v109;
    v110.i64[1] = HIDWORD(v109);
    v111 = v110;
    v112 = vaddvq_s64(v110);
    v113 = v112;
    v114 = v99 + v112;
    if (v325)
    {
      v115 = v325 >= v114;
    }

    else
    {
      v115 = 1;
    }

    v116 = v115;
    if (v112 <= 0x80 && v116)
    {
      v117 = v99 & 0x3F;
      v118 = vaddq_s64(vdupq_n_s64(v117), vzip1q_s64(0, v111));
      v119 = (v90 + 8 * (v99 >> 6));
      v102 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v119, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v118)), vshlq_u64(vdupq_lane_s64(v119->i64[0], 0), vnegq_s64(v118)));
      if (v117 + v113 >= 0x81)
      {
        v102 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v119[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v118)), vshlq_u64(vdupq_laneq_s64(v119[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v118))), v102);
      }
    }

    else
    {
      v92 = 1;
      v114 = v99;
    }

    v120 = v114 + v113;
    if (v325)
    {
      v121 = v325 >= v120;
    }

    else
    {
      v121 = 1;
    }

    v122 = v121;
    v123 = 0uLL;
    if (v113 <= 0x80 && v122)
    {
      v124 = v114 & 0x3F;
      v125 = vaddq_s64(vdupq_n_s64(v124), vzip1q_s64(0, v111));
      v126 = (v90 + 8 * (v114 >> 6));
      v127 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v126, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v125)), vshlq_u64(vdupq_lane_s64(v126->i64[0], 0), vnegq_s64(v125)));
      if (v124 + v113 >= 0x81)
      {
        v127 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v126[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v125)), vshlq_u64(vdupq_laneq_s64(v126[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v125))), v127);
      }
    }

    else
    {
      v92 = 1;
      v120 = v114;
      v127 = 0uLL;
    }

    v128 = vmovl_u8(*&vpaddq_s8(v331, v331));
    v129 = vmovl_u16(*&vpaddq_s16(v128, v128));
    v130 = vpaddq_s32(v129, v129).u64[0];
    v131.i64[0] = v130;
    v131.i64[1] = HIDWORD(v130);
    v132 = v131;
    v133 = vaddvq_s64(v131);
    v134 = v133;
    v135 = v120 + v133;
    if (v325)
    {
      v136 = v325 >= v135;
    }

    else
    {
      v136 = 1;
    }

    v137 = v136;
    if (v133 <= 0x80 && v137)
    {
      v138 = v120 & 0x3F;
      v139 = vaddq_s64(vdupq_n_s64(v138), vzip1q_s64(0, v132));
      v140 = (v90 + 8 * (v120 >> 6));
      v123 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v140, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v139)), vshlq_u64(vdupq_lane_s64(v140->i64[0], 0), vnegq_s64(v139)));
      if (v138 + v134 >= 0x81)
      {
        v123 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v140[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v139)), vshlq_u64(vdupq_laneq_s64(v140[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v139))), v123);
      }
    }

    else
    {
      v92 = 1;
      v135 = v120;
    }

    v141 = v135 + v134;
    if (v325)
    {
      v142 = v325 >= v141;
    }

    else
    {
      v142 = 1;
    }

    v143 = v142;
    v144 = 0uLL;
    if (v134 <= 0x80 && v143)
    {
      v145 = v135 & 0x3F;
      v146 = vaddq_s64(vdupq_n_s64(v145), vzip1q_s64(0, v132));
      v147 = (v90 + 8 * (v135 >> 6));
      v148 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v147, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v146)), vshlq_u64(vdupq_lane_s64(v147->i64[0], 0), vnegq_s64(v146)));
      if (v145 + v134 >= 0x81)
      {
        v148 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v147[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v146)), vshlq_u64(vdupq_laneq_s64(v147[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v146))), v148);
      }
    }

    else
    {
      v92 = 1;
      v141 = v135;
      v148 = 0uLL;
    }

    v149 = vmovl_u8(*&vpaddq_s8(v332, v332));
    v150 = vmovl_u16(*&vpaddq_s16(v149, v149));
    v151 = vpaddq_s32(v150, v150).u64[0];
    v152.i64[0] = v151;
    v152.i64[1] = HIDWORD(v151);
    v153 = v152;
    v154 = vaddvq_s64(v152);
    v155 = v154;
    v156 = v141 + v154;
    if (v325)
    {
      v157 = v325 >= v156;
    }

    else
    {
      v157 = 1;
    }

    v158 = v157;
    if (v154 <= 0x80 && v158)
    {
      v159 = v141 & 0x3F;
      v160 = vaddq_s64(vdupq_n_s64(v159), vzip1q_s64(0, v153));
      v161 = (v90 + 8 * (v141 >> 6));
      v144 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v161, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v160)), vshlq_u64(vdupq_lane_s64(v161->i64[0], 0), vnegq_s64(v160)));
      if (v159 + v155 >= 0x81)
      {
        v144 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v161[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v160)), vshlq_u64(vdupq_laneq_s64(v161[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v160))), v144);
      }
    }

    else
    {
      v92 = 1;
      v156 = v141;
    }

    v162 = v156 + v155;
    if (v325)
    {
      v163 = v325 >= v162;
    }

    else
    {
      v163 = 1;
    }

    v164 = v163;
    if (v155 > 0x80 || !v164)
    {
      goto LABEL_138;
    }

    v165 = vaddq_s64(vdupq_n_s64(v156 & 0x3F), vzip1q_s64(0, v153));
    v166 = (v90 + 8 * (v156 >> 6));
    v167 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v166, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v165)), vshlq_u64(vdupq_lane_s64(v166->i64[0], 0), vnegq_s64(v165)));
    if ((v156 & 0x3F) + v155 >= 0x81)
    {
      v167 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v166[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v165)), vshlq_u64(vdupq_laneq_s64(v166[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v165))), v167);
    }

    if ((v92 & 1) != 0 || v325 + 8 * result - v162 - 512 >= 9 || v74 == 2)
    {
LABEL_138:
      v168 = 8 * ((v334 + 6) & 7);
      v334[0] |= 15 << v168;
      v169 = (v168 + 8) & 0x38;
      v170 = (v168 + 8) & 0x40;
      if (((v170 + v169 - v168) | 4) <= 0x10)
      {
        v171 = (v168 + 8) >> 6;
        v172 = v334[v171];
        v334[v171] = (15 << v169) | v172;
        if ((v169 | 4) - v168 + v170 + 4 <= 0x10)
        {
          v334[v171] = (255 << v169) | v172;
        }
      }

      result = 0;
      v42->i64[0] = 0;
      *(v42->i64 + v41) = 0;
    }

    else
    {
      v173 = vzip1_s32(*v65.i8, *&vextq_s8(v65, v65, 8uLL));
      v174 = vzip1_s32(*v108.i8, *&vextq_s8(v108, v108, 8uLL));
      v175 = vzip1_s32(*v129.i8, *&vextq_s8(v129, v129, 8uLL));
      v176 = vzip1_s32(*v150.i8, *&vextq_s8(v150, v150, 8uLL));
      v177.i64[0] = v173.u32[0];
      v177.i64[1] = v173.u32[1];
      v178 = vshlq_u64(v62, vnegq_s64(v177));
      v179 = vzip2q_s64(v62, v178);
      v180 = vzip1q_s64(v62, v178);
      v177.i64[0] = v174.u32[0];
      v177.i64[1] = v174.u32[1];
      v181 = vnegq_s64(v177);
      v182 = vshlq_u64(v102, v181);
      v183 = vzip2q_s64(v102, v182);
      v184 = vzip1q_s64(v102, v182);
      v185 = vshlq_u64(v127, v181);
      v186 = vzip2q_s64(v127, v185);
      v187 = vzip1q_s64(v127, v185);
      v177.i64[0] = v175.u32[0];
      v177.i64[1] = v175.u32[1];
      v188 = vnegq_s64(v177);
      v189 = vshlq_u64(v123, v188);
      v190 = vzip2q_s64(v123, v189);
      v191 = vzip1q_s64(v123, v189);
      v192 = vshlq_u64(v148, v188);
      v177.i64[0] = v176.u32[0];
      v177.i64[1] = v176.u32[1];
      v193 = vnegq_s64(v177);
      v194 = vshlq_u64(v144, v193);
      v195 = vuzp1q_s32(v180, v179);
      v196 = vuzp1q_s32(v184, v183);
      v197 = vuzp1q_s32(v187, v186);
      v198 = vnegq_s32((*&v64 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
      v199 = vnegq_s32((*&v107 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
      v200 = vuzp1q_s32(v191, v190);
      v201 = vnegq_s32((*&v128 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
      v202 = vuzp1q_s32(vzip1q_s64(v148, v192), vzip2q_s64(v148, v192));
      v203 = vuzp1q_s32(vzip1q_s64(v144, v194), vzip2q_s64(v144, v194));
      v204 = vnegq_s32((*&v149 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
      v205 = vshlq_u32(v195, v198);
      v206 = vshlq_u32(v196, v199);
      v207 = vshlq_u32(v197, v199);
      v208 = vshlq_u32(v200, v201);
      v209 = vshlq_u32(v202, v201);
      v210 = vzip2q_s32(v195, v205);
      v211 = vzip1q_s32(v195, v205);
      v212 = vzip2q_s32(v196, v206);
      v213 = vzip1q_s32(v196, v206);
      v214 = vzip2q_s32(v197, v207);
      v215 = vzip1q_s32(v197, v207);
      v216 = vzip2q_s32(v200, v208);
      v217 = vzip1q_s32(v200, v208);
      v218 = vzip2q_s32(v202, v209);
      v219 = vzip1q_s32(v202, v209);
      v220 = vshlq_u32(v203, v204);
      v221 = vzip2q_s32(v203, v220);
      v222 = vzip1q_s32(v203, v220);
      v223 = vuzp1q_s16(v211, v210);
      v224 = vuzp1q_s16(v213, v212);
      v225 = vuzp1q_s16(v215, v214);
      v226 = vuzp1q_s16(v217, v216);
      v227 = vnegq_s16((*&v330 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
      v228 = vuzp1q_s16(v219, v218);
      v229 = vuzp1q_s16(v222, v221);
      v230 = vshlq_u16(v223, vnegq_s16((*&v63 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
      v231 = vshlq_u16(v224, v227);
      v232 = vshlq_u16(v225, v227);
      v233 = vzip2q_s16(v223, v230);
      v234 = vzip1q_s16(v223, v230);
      v235 = vuzp1q_s8(vzip1q_s16(v224, v231), vzip2q_s16(v224, v231));
      v231.i64[0] = 0x808080808080808;
      v231.i64[1] = 0x808080808080808;
      v236 = vuzp1q_s8(vzip1q_s16(v225, v232), vzip2q_s16(v225, v232));
      v224.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v224.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v237 = vsubq_s8(v231, v63);
      v238 = vaddq_s8(v63, v224);
      v239.i64[0] = 0x808080808080808;
      v239.i64[1] = 0x808080808080808;
      v240 = vshlq_s8(vuzp1q_s8(v234, v233), v237);
      v237.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v237.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v241 = vsubq_s8(v239, v330);
      v242 = vaddq_s8(v330, v237);
      v243 = vshlq_s8(v235, v241);
      v244 = vnegq_s16((*&v331 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
      v245 = vshlq_s8(v240, v238);
      v246 = vshlq_s8(v243, v242);
      v247 = vshlq_s8(vshlq_s8(v236, v241), v242);
      v248 = vdupq_lane_s32(*v245.i8, 0);
      v249 = vandq_s8(v318, v248);
      v250 = vsubq_s8(v246, v249);
      v251 = vsubq_s8(v247, v249);
      v252 = vshlq_u16(v226, v244);
      v253 = vshlq_u16(v228, v244);
      v249.i64[0] = 0x808080808080808;
      v249.i64[1] = 0x808080808080808;
      v238.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v238.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v254 = vsubq_s8(v249, v331);
      v255 = vaddq_s8(v331, v238);
      v256 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v228, v253), vzip2q_s16(v228, v253)), v254);
      v257 = vnegq_s16((*&v332 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
      v258 = vandq_s8(v319, v248);
      v259 = vsubq_s8(vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v226, v252), vzip2q_s16(v226, v252)), v254), v255), v258);
      v260 = vsubq_s8(vshlq_s8(v256, v255), v258);
      v261 = vshlq_u16(v229, v257);
      v258.i64[0] = 0x808080808080808;
      v258.i64[1] = 0x808080808080808;
      v256.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v256.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v262 = vsubq_s8(v258, v332);
      v263 = vaddq_s8(v332, v256);
      v264 = vshlq_u64(v167, v193);
      v265 = vuzp1q_s32(vzip1q_s64(v167, v264), vzip2q_s64(v167, v264));
      v266 = vshlq_u32(v265, v204);
      v267 = vuzp1q_s16(vzip1q_s32(v265, v266), vzip2q_s32(v265, v266));
      v268 = vshlq_u16(v267, v257);
      v269 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v229, v261), vzip2q_s16(v229, v261)), v262), v263);
      v270 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v267, v268), vzip2q_s16(v267, v268)), v262), v263);
      v271 = vandq_s8(v320, v248);
      v272 = vsubq_s8(v269, v271);
      v273 = vsubq_s8(v270, v271);
      *v269.i8 = vzip1_s32(*v80.i8, *&vextq_s8(v80, v80, 8uLL));
      *v270.i8 = vzip1_s32(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
      v177.i64[0] = v269.u32[0];
      v177.i64[1] = v269.u32[1];
      v274 = v177;
      v177.i64[0] = v270.u32[0];
      v177.i64[1] = v270.u32[1];
      v275 = vshlq_u64(v77, vnegq_s64(v274));
      v276 = vshlq_u64(v106, vnegq_s64(v177));
      v277 = vuzp1q_s32(vzip1q_s64(v77, v275), vzip2q_s64(v77, v275));
      v278 = vuzp1q_s32(vzip1q_s64(v106, v276), vzip2q_s64(v106, v276));
      v279 = vshlq_u32(v277, vnegq_s32((*&v79 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v280 = vshlq_u32(v278, vnegq_s32((*&v93 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v281 = vuzp1q_s16(vzip1q_s32(v277, v279), vzip2q_s32(v277, v279));
      v282 = vuzp1q_s16(vzip1q_s32(v278, v280), vzip2q_s32(v278, v280));
      v283 = vshlq_u16(v281, vnegq_s16((*&v78 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
      v284 = vshlq_u16(v282, vnegq_s16((*&v329 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
      v285 = vzip2q_s16(v281, v283);
      v286 = vzip1q_s16(v281, v283);
      v287 = vzip2q_s16(v282, v284);
      v288 = vzip1q_s16(v282, v284);
      v284.i64[0] = 0x808080808080808;
      v284.i64[1] = 0x808080808080808;
      v289 = vuzp1q_s8(v288, v287);
      v287.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v287.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v290 = vshlq_s8(vshlq_s8(v289, vsubq_s8(v284, v329)), vaddq_s8(v329, v287));
      v291 = vaddq_s8(vandq_s8(v245, v321), vshlq_s8(vshlq_s8(vuzp1q_s8(v286, v285), vsubq_s8(v284, v78)), vaddq_s8(v78, v287)));
      v292 = vandq_s8(v321, v248);
      v293.i64[0] = 0x101010101010101;
      v293.i64[1] = 0x101010101010101;
      v294 = vsubq_s8(v291, v292);
      v295 = vsubq_s8(v290, v292);
      if (vaddlvq_s8(vceqq_s8(v322, v293)))
      {
        v296 = vnegq_s8(vandq_s8(v328, v293));
        v297 = v295;
        v297.i32[3] = v294.i32[0];
        v298 = v294;
        v298.i32[0] = v295.i32[3];
        v335.val[0] = vbslq_s8(v296, v298, v294);
        v335.val[1] = vbslq_s8(v296, v297, v295);
        v297.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
        v297.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
        v336.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(v335, xmmword_29D2F0F80), v296), v335.val[0]);
        v336.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(v335, v297), v296), v335.val[1]);
        v294 = vaddq_s8(vandq_s8(vqtbl2q_s8(v336, xmmword_29D2F0F90), v296), v336.val[0]);
        v295 = vaddq_s8(vandq_s8(vqtbl2q_s8(v336, v297), v296), v336.val[1]);
        v336.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v250.i8, xmmword_29D2F0FA0), v296), v250);
        v336.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v250.i8, xmmword_29D2F0FB0), v296), v251);
        v250 = vaddq_s8(vandq_s8(vqtbl2q_s8(v336, xmmword_29D2F0FC0), v296), v336.val[0]);
        v251 = vaddq_s8(vandq_s8(vqtbl2q_s8(v336, v297), v296), v336.val[1]);
        v336.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v259.i8, xmmword_29D2F0FD0), v296), v259);
        v336.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v259.i8, xmmword_29D2F0F80), v296), v260);
        v259 = vaddq_s8(vandq_s8(vqtbl2q_s8(v336, v297), v296), v336.val[0]);
        v260 = vaddq_s8(vandq_s8(vqtbl2q_s8(v336, xmmword_29D2F0FE0), v296), v336.val[1]);
        v335.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v272.i8, xmmword_29D2F0FF0), v296), v272);
        v335.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v272.i8, xmmword_29D2F0F80), v296), v273);
        v272 = vaddq_s8(vandq_s8(vqtbl2q_s8(v335, v297), v296), v335.val[0]);
        v273 = vaddq_s8(vandq_s8(vqtbl2q_s8(v335, xmmword_29D2F1000), v296), v335.val[1]);
      }

      v299 = vaddq_s8(v327, v294);
      v300 = vaddq_s8(v295, v327);
      v301 = vaddq_s8(v250, v327);
      v302 = vaddq_s8(v251, v327);
      v303 = vaddq_s8(v259, v327);
      v304 = vaddq_s8(v260, v327);
      v305 = vaddq_s8(v272, v327);
      v306 = vaddq_s8(v273, v327);
      v307.i64[0] = 0x1010101010101010;
      v307.i64[1] = 0x1010101010101010;
      v308 = vceqzq_s8(vandq_s8(v328, v307));
      v309 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v299, xmmword_29D2F1020), v308), v299);
      v310 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v300, xmmword_29D2F1020), v308), v300);
      v311 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v301, xmmword_29D2F1020), v308), v301);
      v312 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v302, xmmword_29D2F1020), v308), v302);
      v313 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v303, xmmword_29D2F1020), v308), v303);
      v314 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v304, xmmword_29D2F1020), v308), v304);
      v315 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v305, xmmword_29D2F1020), v308), v305);
      v316 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v306, xmmword_29D2F1020), v308), v306);
      v304.i64[0] = 0xF000F000F000F0;
      v304.i64[1] = 0xF000F000F000F0;
      v305.i64[0] = 0xF000F000F000F00;
      v305.i64[1] = 0xF000F000F000F00;
      v303.i64[0] = 0xF000F000F000F000;
      v303.i64[1] = 0xF000F000F000F000;
      *v42 = vbslq_s8(v303, vshrn_high_n_s32(vshrn_n_s32(v309, 0xCuLL), v310, 0xCuLL), vbslq_s8(v305, vshrn_high_n_s32(vshrn_n_s32(v309, 8uLL), v310, 8uLL), vbslq_s8(v304, vshrn_high_n_s32(vshrn_n_s32(v309, 4uLL), v310, 4uLL), vuzp1q_s16(v309, v310))));
      v42[1] = vbslq_s8(v303, vshrn_high_n_s32(vshrn_n_s32(v313, 0xCuLL), v314, 0xCuLL), vbslq_s8(v305, vshrn_high_n_s32(vshrn_n_s32(v313, 8uLL), v314, 8uLL), vbslq_s8(v304, vshrn_high_n_s32(vshrn_n_s32(v313, 4uLL), v314, 4uLL), vuzp1q_s16(v313, v314))));
      v317 = (v42 + v41);
      *v317 = vbslq_s8(v303, vshrn_high_n_s32(vshrn_n_s32(v311, 0xCuLL), v312, 0xCuLL), vbslq_s8(v305, vshrn_high_n_s32(vshrn_n_s32(v311, 8uLL), v312, 8uLL), vbslq_s8(v304, vshrn_high_n_s32(vshrn_n_s32(v311, 4uLL), v312, 4uLL), vuzp1q_s16(v311, v312))));
      v317[1] = vbslq_s8(v303, vshrn_high_n_s32(vshrn_n_s32(v315, 0xCuLL), v316, 0xCuLL), vbslq_s8(v305, vshrn_high_n_s32(vshrn_n_s32(v315, 8uLL), v316, 8uLL), vbslq_s8(v304, vshrn_high_n_s32(vshrn_n_s32(v315, 4uLL), v316, 4uLL), vuzp1q_s16(v315, v316))));
    }
  }

  else
  {
    result = 0;
    *a1 = 0u;
    a1[1] = 0u;
    v16 = &a1->i8[a2];
    *v16 = 0u;
    *(v16 + 1) = 0u;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(int8x16_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 64, a2, *a3);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 8, 64, v5, a3[1]);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 2, 64, v6, a3[2]);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 10, 64, v7, a3[3]);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 16, 64, v8, a3[4]);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 24, 64, v9, a3[5]);
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 18, 64, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 26, 64, v10 + v11, v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(uint16x8_t *a1, char *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v6 = *(a3 + 16);
  v8 = *(a3 + a4);
  v7 = *(a3 + a4 + 16);
  v9.i64[0] = 0xF0000000FLL;
  v9.i64[1] = 0xF0000000FLL;
  v10.i64[0] = 0xF0000000F00;
  v10.i64[1] = 0xF0000000F00;
  v11.i64[0] = 0xF0000000F0000;
  v11.i64[1] = 0xF0000000F0000;
  v12.i64[0] = 0xF0000000F000000;
  v12.i64[1] = 0xF0000000F000000;
  v13 = vbslq_s8(v12, vshll_n_u16(*a3, 0xCuLL), vbslq_s8(v11, vshll_n_u16(*a3, 8uLL), vbslq_s8(v10, vshll_n_u16(*a3, 4uLL), vbslq_s8(v9, vmovl_u16(*a3), 0))));
  v14 = vbslq_s8(v12, vshll_high_n_u16(*a3, 0xCuLL), vbslq_s8(v11, vshll_high_n_u16(*a3, 8uLL), vbslq_s8(v10, vshll_high_n_u16(*a3, 4uLL), vbslq_s8(v9, vmovl_high_u16(*a3), 0))));
  v538 = v8;
  v15 = vbslq_s8(v12, vshll_n_u16(*v8.i8, 0xCuLL), vbslq_s8(v11, vshll_n_u16(*v8.i8, 8uLL), vbslq_s8(v10, vshll_n_u16(*v8.i8, 4uLL), vbslq_s8(v9, vmovl_u16(*v8.i8), 0))));
  v16 = vbslq_s8(v12, vshll_high_n_u16(v8, 0xCuLL), vbslq_s8(v11, vshll_high_n_u16(v8, 8uLL), vbslq_s8(v10, vshll_high_n_u16(v8, 4uLL), vbslq_s8(v9, vmovl_high_u16(v8), 0))));
  v540 = v6;
  v17 = vbslq_s8(v12, vshll_n_u16(*v6.i8, 0xCuLL), vbslq_s8(v11, vshll_n_u16(*v6.i8, 8uLL), vbslq_s8(v10, vshll_n_u16(*v6.i8, 4uLL), vbslq_s8(v9, vmovl_u16(*v6.i8), 0))));
  v18 = vbslq_s8(v12, vshll_high_n_u16(v6, 0xCuLL), vbslq_s8(v11, vshll_high_n_u16(v6, 8uLL), vbslq_s8(v10, vshll_high_n_u16(v6, 4uLL), vbslq_s8(v9, vmovl_high_u16(v6), 0))));
  v539 = v7;
  v19 = vbslq_s8(v12, vshll_n_u16(*v7.i8, 0xCuLL), vbslq_s8(v11, vshll_n_u16(*v7.i8, 8uLL), vbslq_s8(v10, vshll_n_u16(*v7.i8, 4uLL), vbslq_s8(v9, vmovl_u16(*v7.i8), 0))));
  v20 = vbslq_s8(v12, vshll_high_n_u16(v7, 0xCuLL), vbslq_s8(v11, vshll_high_n_u16(v7, 8uLL), vbslq_s8(v10, vshll_high_n_u16(v7, 4uLL), vbslq_s8(v9, vmovl_high_u16(v7), 0))));
  v21 = vdupq_lane_s32(*v13.i8, 0);
  v22 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v13, v21), 4uLL), 4uLL);
  v23 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v14, v21), 4uLL), 4uLL);
  v24 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v15, v21), 4uLL), 4uLL);
  v25 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v16, v21), 4uLL), 4uLL);
  v26 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v17, v21), 4uLL), 4uLL);
  v27 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v18, v21), 4uLL), 4uLL);
  v28 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v19, v21), 4uLL), 4uLL);
  v29 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v20, v21), 4uLL), 4uLL);
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
  v39 = vqtbl1q_s8(vmaxq_s8(v24, v25), xmmword_29D2F0F70);
  v40 = vqtbl1q_s8(vminq_s8(v24, v25), xmmword_29D2F0F70);
  v41 = vpmaxq_s8(v39, v39);
  v42 = vpminq_s8(v40, v40);
  v43 = vpmaxq_s8(v41, v41);
  v44 = vpminq_s8(v42, v42);
  v45 = vmaxq_s8(v34, v43);
  v46 = vminq_s8(v35, v44);
  v47 = vzip1q_s8(v43, v44);
  v48 = vbicq_s8(vsubq_s8(v37, vclsq_s8(v47)), vceqzq_s8(v47));
  v49 = vqtbl1q_s8(vmaxq_s8(v26, v27), xmmword_29D2F0F70);
  v50 = vqtbl1q_s8(vminq_s8(v26, v27), xmmword_29D2F0F70);
  v51 = vpmaxq_s8(v49, v49);
  v52 = vpminq_s8(v50, v50);
  v53 = vpmaxq_s8(v51, v51);
  v54 = vpminq_s8(v52, v52);
  v55 = vmaxq_s8(v45, v53);
  v56 = vminq_s8(v46, v54);
  v57 = vzip1q_s8(v53, v54);
  v58 = vbicq_s8(vsubq_s8(v37, vclsq_s8(v57)), vceqzq_s8(v57));
  v59 = vqtbl1q_s8(vmaxq_s8(v28, v29), xmmword_29D2F0F70);
  v60 = vqtbl1q_s8(vminq_s8(v28, v29), xmmword_29D2F0F70);
  v61 = vpmaxq_s8(v59, v59);
  v62 = vpminq_s8(v60, v60);
  v63 = vpmaxq_s8(v61, v61);
  v64 = vpminq_s8(v62, v62);
  v65 = vmaxq_s8(v55, v63);
  v66 = vminq_s8(v56, v64);
  v67 = vzip1q_s8(v63, v64);
  v68 = vbicq_s8(vsubq_s8(v37, vclsq_s8(v67)), vceqzq_s8(v67));
  v69 = vpmaxq_s8(v38, v38);
  v70 = vpmaxq_s8(v48, v48);
  v71 = vpmaxq_s8(v58, v58);
  v72 = vpmaxq_s8(v68, v68);
  v73 = vmaxq_s8(vmaxq_s8(v69, v70), vmaxq_s8(v71, v72));
  v74 = vclzq_s8(vsubq_s8(v65, v66));
  v75 = vsubq_s8(v37, v74);
  v76 = vminq_s8(v75, v73);
  if (!vmaxvq_s8(v76))
  {
    a1->i16[0] = *a3;
    v171 = 1;
    result = 2;
    goto LABEL_91;
  }

  v547 = v21;
  v77.i64[0] = -1;
  v77.i64[1] = -1;
  v78 = v22;
  v79.i64[0] = 0x707070707070707;
  v79.i64[1] = 0x707070707070707;
  v80 = vcgtq_s8(v73, v75);
  v543 = vandq_s8(vsubq_s8(vshlq_s8(v77, vsubq_s8(v79, v74)), v66), v80);
  v81.i64[0] = 0x303030303030303;
  v81.i64[1] = 0x303030303030303;
  v530 = vmaxq_s8(vminq_s8(vsubq_s8(v76, v69), v81), 0);
  v532 = vmaxq_s8(vminq_s8(vsubq_s8(v76, v71), v81), 0);
  v534 = vmaxq_s8(vminq_s8(vsubq_s8(v76, v70), v81), 0);
  v536 = vmaxq_s8(vminq_s8(vsubq_s8(v76, v72), v81), 0);
  v82.i64[0] = 0x404040404040404;
  v82.i64[1] = 0x404040404040404;
  v554 = vorrq_s8(vbicq_s8(v82, vceqq_s8(vaddq_s8(v536, v532), vnegq_s8(vaddq_s8(v530, v534)))), vorrq_s8(vandq_s8(vceqzq_s8(v76), v81), vandq_s8(v80, v37)));
  v541 = v78;
  v548 = v23;
  v83 = vsubq_s8(v23, vqtbl1q_s8(v23, xmmword_29D2F1020));
  v84 = vsubq_s8(v28, vqtbl1q_s8(v28, xmmword_29D2F1020));
  v551 = v26;
  v552 = v27;
  v553 = v28;
  v85 = vshlq_n_s8(vsubq_s8(v25, vqtbl1q_s8(v25, xmmword_29D2F1020)), 4uLL);
  v549 = v24;
  v550 = v25;
  v86 = vshlq_n_s8(vsubq_s8(v27, vqtbl1q_s8(v27, xmmword_29D2F1020)), 4uLL);
  v87 = vshrq_n_s8(v85, 4uLL);
  v545 = v29;
  v528 = vshrq_n_s8(vshlq_n_s8(v83, 4uLL), 4uLL);
  v529 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v78, vqtbl1q_s8(v78, xmmword_29D2F1020)), 4uLL), 4uLL);
  v88 = vqtbl1q_s8(vmaxq_s8(v529, v528), xmmword_29D2F0F70);
  v89 = vqtbl1q_s8(vminq_s8(v529, v528), xmmword_29D2F0F70);
  v90 = vpmaxq_s8(v88, v88);
  v91 = vpminq_s8(v89, v89);
  v92 = vpmaxq_s8(v90, v90);
  v93 = vpminq_s8(v91, v91);
  v94 = vzip1q_s8(v92, v93);
  v95 = vbicq_s8(vsubq_s8(v37, vclsq_s8(v94)), vceqzq_s8(v94));
  v96 = vpmaxq_s8(v95, v95);
  v527 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v24, vqtbl1q_s8(v24, xmmword_29D2F1020)), 4uLL), 4uLL);
  v97 = vqtbl1q_s8(vmaxq_s8(v527, v87), xmmword_29D2F0F70);
  v98 = vqtbl1q_s8(vminq_s8(v527, v87), xmmword_29D2F0F70);
  v99 = vpmaxq_s8(v97, v97);
  v100 = vpminq_s8(v98, v98);
  v101 = vpmaxq_s8(v99, v99);
  v102 = vpminq_s8(v100, v100);
  v103 = vmaxq_s8(v92, v101);
  v104 = vminq_s8(v93, v102);
  v105 = vzip1q_s8(v101, v102);
  v106 = vbicq_s8(vsubq_s8(v37, vclsq_s8(v105)), vceqzq_s8(v105));
  v107 = vpmaxq_s8(v106, v106);
  v525 = vshrq_n_s8(v86, 4uLL);
  v526 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v26, vqtbl1q_s8(v26, xmmword_29D2F1020)), 4uLL), 4uLL);
  v108 = vqtbl1q_s8(vmaxq_s8(v526, v525), xmmword_29D2F0F70);
  v109 = vqtbl1q_s8(vminq_s8(v526, v525), xmmword_29D2F0F70);
  v110 = vpmaxq_s8(v108, v108);
  v111 = vpminq_s8(v109, v109);
  v112 = vpmaxq_s8(v110, v110);
  v113 = vpminq_s8(v111, v111);
  v114 = vmaxq_s8(v103, v112);
  v115 = vminq_s8(v104, v113);
  v116 = vzip1q_s8(v112, v113);
  v117 = vbicq_s8(vsubq_s8(v37, vclsq_s8(v116)), vceqzq_s8(v116));
  v118 = vpmaxq_s8(v117, v117);
  v523 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v29, vqtbl1q_s8(v29, xmmword_29D2F1020)), 4uLL), 4uLL);
  v524 = vshrq_n_s8(vshlq_n_s8(v84, 4uLL), 4uLL);
  v119 = vqtbl1q_s8(vmaxq_s8(v524, v523), xmmword_29D2F0F70);
  v120 = vqtbl1q_s8(vminq_s8(v524, v523), xmmword_29D2F0F70);
  v121 = vpmaxq_s8(v119, v119);
  v122 = vpminq_s8(v120, v120);
  v123 = vpmaxq_s8(v121, v121);
  v124 = vpminq_s8(v122, v122);
  v125 = vmaxq_s8(v114, v123);
  v126 = vminq_s8(v115, v124);
  v127 = vzip1q_s8(v123, v124);
  v128 = vbicq_s8(vsubq_s8(v37, vclsq_s8(v127)), vceqzq_s8(v127));
  v129 = vpmaxq_s8(v128, v128);
  v130 = vmaxq_s8(vmaxq_s8(v96, v107), vmaxq_s8(v118, v129));
  v131 = vclzq_s8(vsubq_s8(v125, v126));
  v132 = vsubq_s8(v37, v131);
  v133 = vcgtq_s8(v130, v132);
  v134 = vminq_s8(v132, v130);
  v130.i64[0] = 0x1010101010101010;
  v130.i64[1] = 0x1010101010101010;
  v80.i64[0] = 0x1818181818181818;
  v80.i64[1] = 0x1818181818181818;
  v135 = vorrq_s8(vandq_s8(vceqzq_s8(v134), v81), vbslq_s8(v133, v80, v130));
  v136 = vmaxq_s8(vminq_s8(vsubq_s8(v134, v96), v81), 0);
  v137 = vmaxq_s8(vminq_s8(vsubq_s8(v134, v107), v81), 0);
  v138 = vmaxq_s8(vminq_s8(vsubq_s8(v134, v118), v81), 0);
  v139 = vmaxq_s8(vminq_s8(vsubq_s8(v134, v129), v81), 0);
  v140 = vsubq_s8(v134, v136);
  v141 = vsubq_s8(v134, v137);
  v142 = vsubq_s8(v134, v138);
  v143 = vsubq_s8(v134, v139);
  v144 = vceqq_s8(vaddq_s8(v139, v138), vnegq_s8(vaddq_s8(v136, v137)));
  v137.i64[0] = 0x404040404040404;
  v137.i64[1] = 0x404040404040404;
  v145 = vorrq_s8(vbicq_s8(v137, v144), v135);
  v146 = vmovl_u8(*v145.i8);
  v137.i64[0] = 0x8000800080008;
  v137.i64[1] = 0x8000800080008;
  v147.i64[0] = 0x2000200020002;
  v147.i64[1] = 0x2000200020002;
  v148 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v134.i8), vceqzq_s16((*&v146 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8)))), vandq_s8(vshll_n_u8(*v145.i8, 1uLL), v137)), vandq_s8(vceqq_s16((*&v146 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v147), v137)), *v140.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v142.i8, *v141.i8), *v143.i8), 3uLL));
  v149 = vaddq_s16(vaddw_s8((*&vshll_n_u8(*v554.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9)), vbic_s8(*v76.i8, vcgt_u8(0x808080808080808, *v554.i8))), vandq_s8(vceqq_s16((*&vmovl_u8(*v554.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v147), v137));
  v150 = vsubq_s8(v76, v530);
  v151 = vsubq_s8(v76, v534);
  v152 = vsubq_s8(v76, v532);
  v153 = vsubq_s8(v76, v536);
  v154 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(v149, *v150.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v152.i8, *v151.i8), *v153.i8), 3uLL)), v148)), 0);
  v155 = vaddlvq_s8(v154);
  v157 = a5 < 2 || a6 == 0;
  if (v155)
  {
    v158.i64[0] = 0x707070707070707;
    v158.i64[1] = 0x707070707070707;
    v159 = vsubq_s8(v158, v131);
    v160.i64[0] = -1;
    v160.i64[1] = -1;
    v161 = vandq_s8(vsubq_s8(vshlq_s8(v160, v159), v126), v133);
    v162 = vbslq_s8(v154, v529, v541);
    v547 = vbslq_s8(v154, vsubq_s8(v547, vqtbl1q_s8(v547, xmmword_29D2F1020)), v547);
    v548 = vbslq_s8(v154, v528, v548);
    v549 = vbslq_s8(v154, v527, v549);
    v550 = vbslq_s8(v154, v87, v550);
    v551 = vbslq_s8(v154, v526, v551);
    v552 = vbslq_s8(v154, v525, v552);
    v553 = vbslq_s8(v154, v524, v553);
    v531 = vbslq_s8(v154, v140, v150);
    v533 = vbslq_s8(v154, v141, v151);
    v535 = vbslq_s8(v154, v142, v152);
    v537 = vbslq_s8(v154, v143, v153);
    v76 = vbslq_s8(v154, v134, v76);
    v554 = vbslq_s8(v154, v145, v554);
    v163 = vbslq_s8(v154, v523, v545);
    v164 = vbslq_s8(v154, v161, v543);
    if (v157)
    {
LABEL_10:
      v166 = v535;
      v165 = v537;
      v168 = v531;
      v167 = v533;
      v169 = v554;
      v170 = v547.i32[0];
      goto LABEL_16;
    }
  }

  else
  {
    v531 = v150;
    v533 = v151;
    v535 = v152;
    v537 = v153;
    v164 = v543;
    v163 = v545;
    v162 = v541;
    if (v157)
    {
      goto LABEL_10;
    }
  }

  v542 = v162;
  v544 = v164;
  v546 = v163;
  v173 = vsubq_s8(v13, vqtbl2q_s8(*v13.i8, xmmword_29D2F0F80));
  v174 = vsubq_s8(v14, vqtbl2q_s8(*v13.i8, xmmword_29D2F1030));
  v175 = v16;
  v175.i32[3] = v14.i32[3];
  v176 = v18;
  v176.i32[3] = v14.i32[3];
  v177 = v20;
  v177.i32[3] = v14.i32[3];
  v178 = v174;
  v178.i32[3] = v173.i32[0];
  v173.i32[0] = v174.i32[3];
  v179.i64[0] = 0x404040404040404;
  v179.i64[1] = 0x404040404040404;
  v180 = vshrq_n_s8(vshlq_n_s8(v173, 4uLL), 4uLL);
  v181 = vshrq_n_s8(vshlq_n_s8(v178, 4uLL), 4uLL);
  v182 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v15, vqtbl2q_s8(*v15.i8, xmmword_29D2F0FA0)), 4uLL), 4uLL);
  v183 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v16, vqtbl2q_s8(*v15.i8, xmmword_29D2F1040)), 4uLL), 4uLL);
  v184 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v17, vqtbl2q_s8(*v17.i8, xmmword_29D2F1050)), 4uLL), 4uLL);
  v185 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v18, vqtbl2q_s8(*v17.i8, xmmword_29D2F0F80)), 4uLL), 4uLL);
  v186 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v19, vqtbl2q_s8(*v19.i8, xmmword_29D2F1060)), 4uLL), 4uLL);
  v187 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v20, vqtbl2q_s8(*v19.i8, xmmword_29D2F0F80)), 4uLL), 4uLL);
  v188 = vqtbl1q_s8(vmaxq_s8(v180, v181), xmmword_29D2F0F70);
  v189 = vqtbl1q_s8(vminq_s8(v180, v181), xmmword_29D2F0F70);
  v190 = vpmaxq_s8(v188, v188);
  v191 = vpminq_s8(v189, v189);
  v192 = vpmaxq_s8(v190, v190);
  v193 = vpminq_s8(v191, v191);
  v194 = vzip1q_s8(v192, v193);
  v195.i64[0] = 0x808080808080808;
  v195.i64[1] = 0x808080808080808;
  v196 = vbicq_s8(vsubq_s8(v195, vclsq_s8(v194)), vceqzq_s8(v194));
  v197 = vpmaxq_s8(v196, v196);
  v198 = vqtbl1q_s8(vmaxq_s8(v182, v183), xmmword_29D2F0F70);
  v199 = vqtbl1q_s8(vminq_s8(v182, v183), xmmword_29D2F0F70);
  v200 = vpmaxq_s8(v198, v198);
  v201 = vpminq_s8(v199, v199);
  v202 = vpmaxq_s8(v200, v200);
  v203 = vpminq_s8(v201, v201);
  v204 = vmaxq_s8(v192, v202);
  v205 = vminq_s8(v193, v203);
  v206 = vzip1q_s8(v202, v203);
  v207 = vbicq_s8(vsubq_s8(v195, vclsq_s8(v206)), vceqzq_s8(v206));
  v208 = vpmaxq_s8(v207, v207);
  v209 = vqtbl1q_s8(vmaxq_s8(v184, v185), xmmword_29D2F0F70);
  v210 = vqtbl1q_s8(vminq_s8(v184, v185), xmmword_29D2F0F70);
  v211 = vpmaxq_s8(v209, v209);
  v212 = vpminq_s8(v210, v210);
  v213 = vpmaxq_s8(v211, v211);
  v214 = vpminq_s8(v212, v212);
  v215 = vmaxq_s8(v204, v213);
  v216 = vminq_s8(v205, v214);
  v217 = vzip1q_s8(v213, v214);
  v218 = vbicq_s8(vsubq_s8(v195, vclsq_s8(v217)), vceqzq_s8(v217));
  v219 = v76;
  v220 = vpmaxq_s8(v218, v218);
  v221 = vqtbl1q_s8(vmaxq_s8(v186, v187), xmmword_29D2F0F70);
  v222 = vqtbl1q_s8(vminq_s8(v186, v187), xmmword_29D2F0F70);
  v223 = vpmaxq_s8(v221, v221);
  v224 = vpminq_s8(v222, v222);
  v225 = vpmaxq_s8(v223, v223);
  v226 = vpminq_s8(v224, v224);
  v227 = vmaxq_s8(v215, v225);
  v228 = vminq_s8(v216, v226);
  v229 = vzip1q_s8(v225, v226);
  v230 = vbicq_s8(vsubq_s8(v195, vclsq_s8(v229)), vceqzq_s8(v229));
  v231 = vpmaxq_s8(v230, v230);
  v232 = vmaxq_s8(vmaxq_s8(v197, v208), vmaxq_s8(v220, v231));
  v233 = vclzq_s8(vsubq_s8(v227, v228));
  v234 = vsubq_s8(v195, v233);
  v235 = vcgtq_s8(v232, v234);
  v236 = vminq_s8(v234, v232);
  v195.i64[0] = 0x909090909090909;
  v195.i64[1] = 0x909090909090909;
  v175.i64[0] = 0x202020202020202;
  v175.i64[1] = 0x202020202020202;
  v237 = vorrq_s8(vandq_s8(vceqzq_s8(v236), v175), vsubq_s8(vandq_s8(v235, v195), vmvnq_s8(v235)));
  v195.i64[0] = 0x303030303030303;
  v195.i64[1] = 0x303030303030303;
  v238 = vmaxq_s8(vminq_s8(vsubq_s8(v236, v197), v195), 0);
  v239 = vmaxq_s8(vminq_s8(vsubq_s8(v236, v208), v195), 0);
  v240 = vmaxq_s8(vminq_s8(vsubq_s8(v236, v220), v195), 0);
  v241 = vmaxq_s8(vminq_s8(vsubq_s8(v236, v231), v195), 0);
  v242 = vsubq_s8(v236, v238);
  v243 = vsubq_s8(v236, v239);
  v244 = vsubq_s8(v236, v240);
  v245 = vsubq_s8(v236, v241);
  v246 = vorrq_s8(vbicq_s8(v179, vceqq_s8(vaddq_s8(v241, v240), vnegq_s8(vaddq_s8(v238, v239)))), v237);
  v240.i64[0] = 0x3000300030003;
  v240.i64[1] = 0x3000300030003;
  v169 = v554;
  v247 = vmovl_s8(*v554.i8);
  v238.i64[0] = 0x8000800080008;
  v238.i64[1] = 0x8000800080008;
  v248 = vbicq_s8(vmovl_s8(*v219.i8), vceqzq_s16(vandq_s8(v247, v238)));
  v249 = vandq_s8(v247, v240);
  v240.i64[0] = 0x2000200020002;
  v240.i64[1] = 0x2000200020002;
  v167 = v533;
  v166 = v535;
  v165 = v537;
  v168 = v531;
  v250 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v248, vandq_s8(vshll_n_s8(*v554.i8, 1uLL), v238)), vandq_s8(vceqq_s16(v249, v240), v238)), *v531.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v535.i8, *v533.i8), *v537.i8), 3uLL)), vaddq_s16(vmlal_s8(vaddw_u8(vmovl_s8(vbic_s8(*v236.i8, vcgt_u8(0x808080808080808, *v246.i8))), vand_s8(vadd_s8(*v246.i8, *v246.i8), 0x808080808080808)), *v242.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v244.i8, *v243.i8), *v245.i8), 3uLL)))), 0);
  v170 = v547.i32[0];
  if (vaddlvq_s8(v250))
  {
    v251.i64[0] = 0x707070707070707;
    v251.i64[1] = 0x707070707070707;
    v252 = vsubq_s8(v251, v233);
    v251.i64[0] = -1;
    v251.i64[1] = -1;
    v253 = vandq_s8(vsubq_s8(vshlq_s8(v251, v252), v228), v235);
    v170 = vbslq_s8(v250, vextq_s8(v14, v14, 0xCuLL), v547).u32[0];
    v548 = vbslq_s8(v250, v181, v548);
    v549 = vbslq_s8(v250, v182, v549);
    v550 = vbslq_s8(v250, v183, v550);
    v551 = vbslq_s8(v250, v184, v551);
    v552 = vbslq_s8(v250, v185, v552);
    v553 = vbslq_s8(v250, v186, v553);
    v163 = vbslq_s8(v250, v187, v546);
    v168 = vbslq_s8(v250, v242, v531);
    v167 = vbslq_s8(v250, v243, v533);
    v166 = vbslq_s8(v250, v244, v535);
    v165 = vbslq_s8(v250, v245, v537);
    v164 = vbslq_s8(v250, v253, v544);
    v76 = vbslq_s8(v250, v236, v219);
    v169 = vbslq_s8(v250, v246, v554);
    v162 = vbslq_s8(v250, v180, v542);
  }

  else
  {
    v164 = v544;
    v163 = v546;
    v76 = v219;
    v162 = v542;
  }

LABEL_16:
  v254 = vmovl_s8(*v169.i8);
  v255.i64[0] = 0x8000800080008;
  v255.i64[1] = 0x8000800080008;
  v256.i64[0] = 0x3000300030003;
  v256.i64[1] = 0x3000300030003;
  v257.i64[0] = 0x2000200020002;
  v257.i64[1] = 0x2000200020002;
  v258 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v76.i8), vceqzq_s16(vandq_s8(v254, v255))), vandq_s8(vshll_n_s8(*v169.i8, 1uLL), v255)), vandq_s8(vceqq_s16(vandq_s8(v254, v256), v257), v255)), *v168.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v166.i8, *v167.i8), *v165.i8), 3uLL));
  v259 = vpaddq_s16(v258, v258);
  v260 = vpaddq_s16(v259, v259).u64[0];
  if ((v260.i16[0] + 55) > 0x1FF)
  {
    *a1 = *a3;
    a1[1] = v538;
    v171 = 63;
    a1[2] = v540;
    a1[3] = v539;
    result = 64;
  }

  else
  {
    v261 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v262 = 8 * (a1 & 7);
    if (v262)
    {
      v263 = *v261 & ~(-1 << v262);
    }

    else
    {
      v263 = 0;
    }

    *a2 = 0;
    v264 = vzip1_s8(*v76.i8, v260);
    v265 = vadd_s16(v264, 0xFF00FF00FF00FFLL);
    v266 = vmovl_u16(vceqz_s16((*&v264 & 0xFF00FF00FF00FFLL)));
    v267.i64[0] = v266.u32[0];
    v267.i64[1] = v266.u32[1];
    v268 = vshrq_n_s64(vshlq_n_s64(v267, 0x38uLL), 0x38uLL);
    v267.i64[0] = v266.u32[2];
    v267.i64[1] = v266.u32[3];
    v269 = vshrq_n_s64(vshlq_n_s64(v267, 0x38uLL), 0x38uLL);
    v270 = vshlq_u32(vmovl_u16(vand_s8(v265, 0x7000700070007)), xmmword_29D2F1070);
    v267.i64[0] = v270.u32[0];
    v267.i64[1] = v270.u32[1];
    v271 = v267;
    v267.i64[0] = v270.u32[2];
    v267.i64[1] = v270.u32[3];
    v272 = vorrq_s8(vbicq_s8(v271, v268), vbicq_s8(v267, v269));
    v273 = *&vorr_s8(*v272.i8, *&vextq_s8(v272, v272, 8uLL)) | (32 * (v169.i8[1] & 0x1F)) | ((v169.i8[3] & 0x1F) << 15) | ((v169.i8[2] & 0x1F) << 10) | v169.i8[0] & 0x1F;
    v274 = (v273 << v262) | v263;
    if (v262 >= 0x20)
    {
      *v261 = v274;
      v274 = v273 >> (-8 * (a1 & 7u));
    }

    v275 = v170 & 0xF | (16 * BYTE1(v170)) | ((BYTE2(v170) & 0xF) << 8) | ((HIBYTE(v170) & 0xF) << 12);
    v276 = (v262 + 32) & 0x38;
    v277 = v274 | (v275 << v276);
    if (v276 >= 0x30)
    {
      *(v261 + (((v262 + 32) >> 3) & 8)) = v277;
      v277 = v275 >> -v276;
    }

    v278 = v262 + 48;
    v279 = vsubq_s8(v76, v168);
    v280 = vsubq_s8(v76, v167);
    v281 = vsubq_s8(v76, v166);
    v282 = vsubq_s8(v76, v165);
    v283 = vtrn1q_s8(v279, v280);
    v284 = vtrn2q_s8(v279, v280);
    v285 = vtrn1q_s8(v281, v282);
    v286 = vtrn2q_s8(v281, v282);
    v287 = vzip1q_s16(v284, v286);
    v288 = vtrn2q_s16(v284, v286);
    v286.i64[0] = vzip1q_s32(vzip1q_s16(v283, v285), v287).u64[0];
    v288.i64[0] = vzip1q_s32(vtrn2q_s16(v283, v285), v288).u64[0];
    v285.i64[0] = 0x202020202020202;
    v285.i64[1] = 0x202020202020202;
    v289 = vandq_s8(vmovl_s16(vtst_s16(*v254.i8, 0x4000400040004)), v285);
    v285.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v285.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v282.i64[0] = -1;
    v282.i64[1] = -1;
    v290 = vshlq_u8(v282, vorrq_s8(v289, v285));
    v291 = vmovl_u8(vand_s8(*v290.i8, *v286.i8));
    v292 = vmovl_u8(vand_s8(*&vextq_s8(v290, v290, 8uLL), *v288.i8));
    v293 = vmovl_u8(*v289.i8);
    v294 = vmovl_high_u8(v289);
    v295 = vpaddq_s16(vshlq_u16(v291, vtrn1q_s16(0, v293)), vshlq_u16(v292, vtrn1q_s16(0, v294)));
    v296 = vpaddq_s16(v293, v294);
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
    v307 = (v262 + 48) & 0x38;
    v308 = (v305.i64[0] << v307) | v277;
    if ((v306.i64[0] + v307) >= 0x40)
    {
      *(v261 + ((v278 >> 3) & 8)) = v308;
      v308 = v305.i64[0] >> -v307;
      if (!v307)
      {
        v308 = 0;
      }
    }

    v309 = vceqq_s8(v76, v168);
    v310 = v306.i64[1];
    v311 = v306.i64[0] + v278;
    v312 = v308 | (v305.i64[1] << v311);
    if ((v311 & 0x3F) + v306.i64[1] >= 0x40)
    {
      *(v261 + ((v311 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v312;
      v312 = v305.i64[1] >> -(v311 & 0x3F);
      if ((v311 & 0x3F) == 0)
      {
        v312 = 0;
      }
    }

    v313 = vandq_s8(v164, v309);
    v314 = v311 + v310;
    v315.i64[0] = 0x808080808080808;
    v315.i64[1] = 0x808080808080808;
    v316.i64[0] = -1;
    v316.i64[1] = -1;
    v317 = vandq_s8(vextq_s8(vtstq_s8(v169, v315), 0, 0xCuLL), v76);
    v318.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v318.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v319 = vandq_s8(vshlq_u8(v316, vaddq_s8(v317, v318)), v164);
    v320 = vmovl_u8(*v317.i8);
    v321 = vpaddq_s16(vshlq_u16(vmovl_u8(*v319.i8), vtrn1q_s16(0, v320)), vmovl_high_u8(v319));
    v322 = vpaddq_s16(v320, vmovl_high_u8(v317));
    v323 = vmovl_u16(*v322.i8);
    v324 = vmovl_high_u16(v322);
    v325 = vpaddq_s32(vshlq_u32(vmovl_u16(*v321.i8), vtrn1q_s32(0, v323)), vshlq_u32(vmovl_high_u16(v321), vtrn1q_s32(0, v324)));
    v326 = vpaddq_s32(v323, v324);
    v327.i64[0] = v325.u32[0];
    v327.i64[1] = v325.u32[1];
    v328 = v327;
    v327.i64[0] = v325.u32[2];
    v327.i64[1] = v325.u32[3];
    v329 = v327;
    v327.i64[0] = v326.u32[0];
    v327.i64[1] = v326.u32[1];
    v330 = v327;
    v327.i64[0] = v326.u32[2];
    v327.i64[1] = v326.u32[3];
    v331 = vpaddq_s64(vshlq_u64(v328, vzip1q_s64(0, v330)), vshlq_u64(v329, vzip1q_s64(0, v327)));
    v332 = vpaddq_s64(v330, v327);
    v333 = (v331.i64[0] << v314) | v312;
    if (v332.i64[0] + (v314 & 0x3F) >= 0x40)
    {
      *(v261 + ((v314 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v333;
      v333 = v331.i64[0] >> -(v314 & 0x3F);
      if ((v314 & 0x3F) == 0)
      {
        v333 = 0;
      }
    }

    v334 = vaddq_s8(v313, v162);
    v335 = v332.i64[0] + v314;
    v336 = v333 | (v331.i64[1] << v335);
    if ((v335 & 0x3F) + v332.i64[1] >= 0x40)
    {
      *(v261 + ((v335 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v336;
      v336 = v331.i64[1] >> -(v335 & 0x3F);
      if ((v335 & 0x3F) == 0)
      {
        v336 = 0;
      }
    }

    v337 = v335 + v332.i64[1];
    v338 = vextq_s8(0, v168, 0xCuLL);
    v339.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v339.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v340.i64[0] = -1;
    v340.i64[1] = -1;
    v341 = vandq_s8(vshlq_u8(v340, vaddq_s8(v338, v339)), v334);
    v342 = vmovl_u8(*v338.i8);
    v343 = vmovl_high_u8(v338);
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
    v356 = (v354.i64[0] << v337) | v336;
    if (v355.i64[0] + (v337 & 0x3F) >= 0x40)
    {
      *(v261 + ((v337 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v356;
      v356 = v354.i64[0] >> -(v337 & 0x3F);
      if ((v337 & 0x3F) == 0)
      {
        v356 = 0;
      }
    }

    v357 = vceqq_s8(v76, v167);
    v358 = vaddq_s8(v548, v313);
    v359 = v355.i64[0] + v337;
    v360 = v356 | (v354.i64[1] << v359);
    if ((v359 & 0x3F) + v355.i64[1] >= 0x40)
    {
      *(v261 + ((v359 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v360;
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
    v365 = vandq_s8(vshlq_u8(v364, vaddq_s8(v168, v363)), v358);
    v366 = vmovl_u8(*v168.i8);
    v367 = vmovl_high_u8(v168);
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
      *(v261 + ((v362 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v380;
      v380 = v378.i64[0] >> -(v362 & 0x3F);
      if ((v362 & 0x3F) == 0)
      {
        v380 = 0;
      }
    }

    v381 = vaddq_s8(v549, v361);
    v382 = v379.i64[0] + v362;
    v383 = v380 | (v378.i64[1] << v382);
    if ((v382 & 0x3F) + v379.i64[1] >= 0x40)
    {
      *(v261 + ((v382 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v383;
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
    v387 = vshlq_u8(v386, vaddq_s8(v167, v385));
    v388 = vandq_s8(v387, v381);
    v389 = vmovl_u8(*v388.i8);
    v390 = vmovl_high_u8(v388);
    v391 = vmovl_u8(*v167.i8);
    v392 = vmovl_high_u8(v167);
    v393 = vtrn1q_s16(0, v391);
    v394 = vtrn1q_s16(0, v392);
    v395 = vpaddq_s16(vshlq_u16(v389, v393), vshlq_u16(v390, v394));
    v396 = vpaddq_s16(v391, v392);
    v397 = vmovl_u16(*v395.i8);
    v398 = vmovl_high_u16(v395);
    v399 = vmovl_u16(*v396.i8);
    v400 = vmovl_high_u16(v396);
    v401 = vtrn1q_s32(0, v399);
    v402 = vtrn1q_s32(0, v400);
    v403 = vpaddq_s32(vshlq_u32(v397, v401), vshlq_u32(v398, v402));
    v404 = vpaddq_s32(v399, v400);
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
    v409 = vzip1q_s64(0, v408);
    v410 = vzip1q_s64(0, v405);
    v411 = vpaddq_s64(vshlq_u64(v406, v409), vshlq_u64(v407, v410));
    v412 = vpaddq_s64(v408, v405);
    v413 = (v411.i64[0] << v384) | v383;
    if (v412.i64[0] + (v384 & 0x3F) >= 0x40)
    {
      *(v261 + ((v384 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v413;
      if ((v384 & 0x3F) != 0)
      {
        v413 = v411.i64[0] >> -(v384 & 0x3F);
      }

      else
      {
        v413 = 0;
      }
    }

    v414 = vceqq_s8(v76, v166);
    v415 = vaddq_s8(v550, v361);
    v416 = v412.i64[0] + v384;
    v417 = v413 | (v411.i64[1] << v416);
    if ((v416 & 0x3F) + v412.i64[1] >= 0x40)
    {
      *(v261 + ((v416 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v417;
      v417 = v411.i64[1] >> -(v416 & 0x3F);
      if ((v416 & 0x3F) == 0)
      {
        v417 = 0;
      }
    }

    v418 = vandq_s8(v164, v414);
    v419 = v416 + v412.i64[1];
    v420 = vandq_s8(v387, v415);
    v421 = vpaddq_s16(vshlq_u16(vmovl_u8(*v420.i8), v393), vshlq_u16(vmovl_high_u8(v420), v394));
    v422 = vpaddq_s32(vshlq_u32(vmovl_u16(*v421.i8), v401), vshlq_u32(vmovl_high_u16(v421), v402));
    v423.i64[0] = v422.u32[0];
    v423.i64[1] = v422.u32[1];
    v424 = v423;
    v423.i64[0] = v422.u32[2];
    v423.i64[1] = v422.u32[3];
    v425 = vpaddq_s64(vshlq_u64(v424, v409), vshlq_u64(v423, v410));
    v426 = (v425.i64[0] << v419) | v417;
    if (v412.i64[0] + (v419 & 0x3F) >= 0x40)
    {
      *(v261 + ((v419 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v426;
      v426 = v425.i64[0] >> -(v419 & 0x3F);
      if ((v419 & 0x3F) == 0)
      {
        v426 = 0;
      }
    }

    v427 = vaddq_s8(v551, v418);
    v428 = v412.i64[0] + v419;
    v429 = (v412.i64[0] + v419) & 0x3F;
    v430 = v426 | (v425.i64[1] << v428);
    if ((v428 & 0x3F) + v412.i64[1] >= 0x40)
    {
      *(v261 + ((v428 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v430;
      v430 = v425.i64[1] >> -v429;
      if (!v429)
      {
        v430 = 0;
      }
    }

    v431 = v428 + v412.i64[1];
    v432.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v432.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v433.i64[0] = -1;
    v433.i64[1] = -1;
    v434 = vshlq_u8(v433, vaddq_s8(v166, v432));
    v435 = vandq_s8(v434, v427);
    v436 = vmovl_u8(*v435.i8);
    v437 = vmovl_high_u8(v435);
    v438 = vmovl_u8(*v166.i8);
    v439 = vmovl_high_u8(v166);
    v440 = vtrn1q_s16(0, v438);
    v441 = vtrn1q_s16(0, v439);
    v442 = vpaddq_s16(vshlq_u16(v436, v440), vshlq_u16(v437, v441));
    v443 = vpaddq_s16(v438, v439);
    v444 = vmovl_u16(*v442.i8);
    v445 = vmovl_high_u16(v442);
    v446 = vmovl_u16(*v443.i8);
    v447 = vmovl_high_u16(v443);
    v448 = vtrn1q_s32(0, v446);
    v449 = vtrn1q_s32(0, v447);
    v450 = vpaddq_s32(vshlq_u32(v444, v448), vshlq_u32(v445, v449));
    v451 = vpaddq_s32(v446, v447);
    v452.i64[0] = v450.u32[0];
    v452.i64[1] = v450.u32[1];
    v453 = v452;
    v452.i64[0] = v450.u32[2];
    v452.i64[1] = v450.u32[3];
    v454 = v452;
    v452.i64[0] = v451.u32[0];
    v452.i64[1] = v451.u32[1];
    v455 = v452;
    v452.i64[0] = v451.u32[2];
    v452.i64[1] = v451.u32[3];
    v456 = vzip1q_s64(0, v455);
    v457 = vzip1q_s64(0, v452);
    v458 = vpaddq_s64(vshlq_u64(v453, v456), vshlq_u64(v454, v457));
    v459 = vpaddq_s64(v455, v452);
    v460 = (v458.i64[0] << v431) | v430;
    if (v459.i64[0] + (v431 & 0x3F) >= 0x40)
    {
      *(v261 + ((v431 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v460;
      if ((v431 & 0x3F) != 0)
      {
        v460 = v458.i64[0] >> -(v431 & 0x3F);
      }

      else
      {
        v460 = 0;
      }
    }

    v461 = vceqq_s8(v76, v165);
    v462 = vaddq_s8(v552, v418);
    v463 = v459.i64[0] + v431;
    v464 = v460 | (v458.i64[1] << v463);
    if ((v463 & 0x3F) + v459.i64[1] >= 0x40)
    {
      *(v261 + ((v463 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v464;
      v464 = v458.i64[1] >> -(v463 & 0x3F);
      if ((v463 & 0x3F) == 0)
      {
        v464 = 0;
      }
    }

    v465 = vandq_s8(v164, v461);
    v466 = v463 + v459.i64[1];
    v467 = vandq_s8(v434, v462);
    v468 = vpaddq_s16(vshlq_u16(vmovl_u8(*v467.i8), v440), vshlq_u16(vmovl_high_u8(v467), v441));
    v469 = vpaddq_s32(vshlq_u32(vmovl_u16(*v468.i8), v448), vshlq_u32(vmovl_high_u16(v468), v449));
    v470.i64[0] = v469.u32[0];
    v470.i64[1] = v469.u32[1];
    v471 = v470;
    v470.i64[0] = v469.u32[2];
    v470.i64[1] = v469.u32[3];
    v472 = vpaddq_s64(vshlq_u64(v471, v456), vshlq_u64(v470, v457));
    v473 = (v472.i64[0] << v466) | v464;
    if (v459.i64[0] + (v466 & 0x3F) >= 0x40)
    {
      *(v261 + ((v466 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v473;
      v473 = v472.i64[0] >> -(v466 & 0x3F);
      if ((v466 & 0x3F) == 0)
      {
        v473 = 0;
      }
    }

    v474 = vaddq_s8(v553, v465);
    v475 = v459.i64[0] + v466;
    v476 = (v459.i64[0] + v466) & 0x3F;
    v477 = v473 | (v472.i64[1] << v475);
    if ((v475 & 0x3F) + v459.i64[1] >= 0x40)
    {
      *(v261 + ((v475 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v477;
      v477 = v472.i64[1] >> -v476;
      if (!v476)
      {
        v477 = 0;
      }
    }

    v478 = v475 + v459.i64[1];
    v479.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v479.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v480.i64[0] = -1;
    v480.i64[1] = -1;
    v481 = vshlq_u8(v480, vaddq_s8(v165, v479));
    v482 = vandq_s8(v481, v474);
    v483 = vmovl_u8(*v482.i8);
    v484 = vmovl_high_u8(v482);
    v485 = vmovl_u8(*v165.i8);
    v486 = vmovl_high_u8(v165);
    v487 = vtrn1q_s16(0, v485);
    v488 = vtrn1q_s16(0, v486);
    v489 = vpaddq_s16(vshlq_u16(v483, v487), vshlq_u16(v484, v488));
    v490 = vpaddq_s16(v485, v486);
    v491 = vmovl_u16(*v489.i8);
    v492 = vmovl_high_u16(v489);
    v493 = vmovl_u16(*v490.i8);
    v494 = vmovl_high_u16(v490);
    v495 = vtrn1q_s32(0, v493);
    v496 = vtrn1q_s32(0, v494);
    v497 = vpaddq_s32(vshlq_u32(v491, v495), vshlq_u32(v492, v496));
    v498 = vpaddq_s32(v493, v494);
    v499.i64[0] = v497.u32[0];
    v499.i64[1] = v497.u32[1];
    v500 = v499;
    v499.i64[0] = v497.u32[2];
    v499.i64[1] = v497.u32[3];
    v501 = v499;
    v499.i64[0] = v498.u32[0];
    v499.i64[1] = v498.u32[1];
    v502 = v499;
    v499.i64[0] = v498.u32[2];
    v499.i64[1] = v498.u32[3];
    v503 = vzip1q_s64(0, v502);
    v504 = vzip1q_s64(0, v499);
    v505 = vpaddq_s64(vshlq_u64(v500, v503), vshlq_u64(v501, v504));
    v506 = vpaddq_s64(v502, v499);
    v507 = (v505.i64[0] << v478) | v477;
    if (v506.i64[0] + (v478 & 0x3F) > 0x3F)
    {
      *(v261 + ((v478 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v507;
      if ((v478 & 0x3F) != 0)
      {
        v507 = v505.i64[0] >> -(v478 & 0x3F);
      }

      else
      {
        v507 = 0;
      }
    }

    v508 = vaddq_s8(v163, v465);
    v509 = v506.i64[0] + v478;
    v510 = v507 | (v505.i64[1] << v509);
    if ((v509 & 0x3F) + v506.i64[1] >= 0x40)
    {
      *(v261 + ((v509 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v510;
      v510 = v505.i64[1] >> -(v509 & 0x3F);
      if ((v509 & 0x3F) == 0)
      {
        v510 = 0;
      }
    }

    v511 = v509 + v506.i64[1];
    v512 = vandq_s8(v481, v508);
    v513 = vpaddq_s16(vshlq_u16(vmovl_u8(*v512.i8), v487), vshlq_u16(vmovl_high_u8(v512), v488));
    v514 = vpaddq_s32(vshlq_u32(vmovl_u16(*v513.i8), v495), vshlq_u32(vmovl_high_u16(v513), v496));
    v515.i64[0] = v514.u32[0];
    v515.i64[1] = v514.u32[1];
    v516 = v515;
    v515.i64[0] = v514.u32[2];
    v515.i64[1] = v514.u32[3];
    v517 = vpaddq_s64(vshlq_u64(v516, v503), vshlq_u64(v515, v504));
    v518 = (v517.i64[0] << v511) | v510;
    if (v506.i64[0] + (v511 & 0x3F) >= 0x40)
    {
      *(v261 + ((v511 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v518;
      v518 = v517.i64[0] >> -(v511 & 0x3F);
      if ((v511 & 0x3F) == 0)
      {
        v518 = 0;
      }
    }

    v519 = v506.i64[0] + v511;
    v520 = (v506.i64[0] + v511) & 0x3F;
    v521 = v518 | (v517.i64[1] << (v506.i8[0] + v511));
    if ((v520 + v506.i64[1]) >= 0x40)
    {
      *(v261 + ((v519 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v521;
      v521 = v517.i64[1] >> -v520;
      if (!v520)
      {
        v521 = 0;
      }
    }

    v522 = v519 + v506.i64[1];
    if ((v522 & 0x3F) != 0)
    {
      *(v261 + ((v522 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v521;
    }

    result = (v522 - v262 + 7) >> 3;
    v171 = *a2 | (result - 1);
  }

LABEL_91:
  *a2 = v171;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(uint64_t result, uint64_t a2, uint16x8_t *a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + v12, a2, v15, v14);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + 32, a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, v11 + v12 + 32, a2, v20, v19);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 4 * a2, a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 6 * a2, a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, v11 + 4 * a2 + 32, a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, v11 + 6 * a2 + 32, a2, v30, v29);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(int8x16_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 == 63)
  {
    v19 = *(a3 + 16);
    v20 = *(a3 + 32);
    v21 = *(a3 + 48);
    *a1 = *a3;
    a1[1] = v19;
    v22 = &a1->i8[a2];
    *v22 = v20;
    *(v22 + 1) = v21;
    return 64;
  }

  else if (a4 == 1)
  {
    v17 = vld1q_dup_s16(a3);
    *a1 = v17;
    a1[1] = v17;
    v18 = &a1->i8[a2];
    *v18 = v17;
    v18[1] = v17;
    return 2;
  }

  else if (a4)
  {
    v334[1] = v13;
    v334[2] = v12;
    v334[3] = v11;
    v334[4] = v10;
    v334[5] = v9;
    v334[6] = v8;
    v334[7] = v7;
    v334[8] = v6;
    v334[13] = v4;
    v334[14] = v5;
    v326 = 0;
    v325 = (8 * (a3 & 7)) | 0x200;
    v323 = 8 * (a3 & 7);
    v324 = a3 & 0xFFFFFFFFFFFFFFF8;
    result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)8,AGX::AppleCompressionGen2::Vec<signed char>>(&v328, v333, &v327, &v323, a4);
    v26.i64[0] = 0x303030303030303;
    v26.i64[1] = 0x303030303030303;
    v322 = vandq_s8(v328, v26);
    v27 = vbicq_s8(v333[0], vceqq_s8(v322, v26));
    v333[0] = v27;
    v329 = v27;
    v330 = v27;
    v331 = v27;
    v332 = v27;
    v28.i64[0] = 0x202020202020202;
    v28.i64[1] = 0x202020202020202;
    v29 = vandq_s8(vmovl_s16(vtst_s16(*&vmovl_u8(*v328.i8), 0x4000400040004)), v28);
    v30 = v323;
    if (vmaxvq_s8(v29) < 1)
    {
      v46.i64[0] = -1;
      v46.i64[1] = -1;
      v319 = v46;
      v320 = v46;
      v318 = v46;
      v321 = v46;
      v41 = a2;
      v42 = a1;
    }

    else
    {
      v31 = vmovl_u8(*&vpaddq_s8(v29, v29));
      v32 = vmovl_u16(*&vpaddq_s16(v31, v31));
      v33 = vpaddq_s32(v32, v32).u64[0];
      v34.i64[0] = v33;
      v34.i64[1] = HIDWORD(v33);
      v35 = v34;
      v36 = vaddvq_s64(v34);
      v37 = v36;
      v38 = v323 + v36;
      if (v325)
      {
        v39 = v325 >= v38;
      }

      else
      {
        v39 = 1;
      }

      v40 = v39;
      v41 = a2;
      v42 = a1;
      if (v36 <= 0x80 && (v40 & 1) != 0)
      {
        v25.i64[0] = 63;
        v43 = (v324 + 8 * (v323 >> 6));
        v44 = vaddq_s64(vdupq_lane_s64(vandq_s8(v323, v25).i64[0], 0), vzip1q_s64(0, v35));
        v45 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v43, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v44)), vshlq_u64(vdupq_lane_s64(v43->i64[0], 0), vnegq_s64(v44)));
        if ((v323 & 0x3F) + v37 >= 0x81)
        {
          v45 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v43[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v44)), vshlq_u64(vdupq_laneq_s64(v43[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v44))), v45);
        }

        v30 = v38;
      }

      else
      {
        v326 = 1;
        v45 = 0uLL;
      }

      v47 = vzip1_s32(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
      v48.i64[0] = v47.u32[0];
      v48.i64[1] = v47.u32[1];
      v49 = vshlq_u64(v45, vnegq_s64(v48));
      v50 = vuzp1q_s32(vzip1q_s64(v45, v49), vzip2q_s64(v45, v49));
      v51 = vshlq_u32(v50, vnegq_s32((*&v31 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v52 = vuzp1q_s16(vzip1q_s32(v50, v51), vzip2q_s32(v50, v51));
      v53 = vshlq_u16(v52, vnegq_s16((*&v29 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
      v54 = vuzp1q_s8(vzip1q_s16(v52, v53), vzip2q_s16(v52, v53));
      v53.i64[0] = 0x101010101010101;
      v53.i64[1] = 0x101010101010101;
      v55 = vshlq_s8(v53, v29);
      v53.i64[0] = -1;
      v53.i64[1] = -1;
      v56 = vqtbl1q_s8(vandq_s8(vaddq_s8(v55, v53), v54), xmmword_29D2F0F70);
      v57 = vdupq_lane_s32(*v56.i8, 0);
      v58 = vdupq_lane_s32(*v56.i8, 1);
      v59 = vdupq_laneq_s32(v56, 2);
      v60 = vdupq_laneq_s32(v56, 3);
      v329 = vsubq_s8(v329, v57);
      v330 = vsubq_s8(v330, v58);
      v331 = vsubq_s8(v331, v59);
      v332 = vsubq_s8(v332, v60);
      v318 = vceqzq_s8(v58);
      v319 = vceqzq_s8(v59);
      v320 = vceqzq_s8(v60);
      v321 = vceqzq_s8(v57);
    }

    v61.i64[0] = 0x808080808080808;
    v61.i64[1] = 0x808080808080808;
    v62 = 0uLL;
    v63 = vandq_s8(vextq_s8(vtstq_s8(v328, v61), 0, 0xCuLL), v27);
    v64 = vmovl_u8(*&vpaddq_s8(v63, v63));
    v65 = vmovl_u16(*&vpaddq_s16(v64, v64));
    v66 = vpaddq_s32(v65, v65).u64[0];
    v67.i64[0] = v66;
    v67.i64[1] = HIDWORD(v66);
    v68 = v67;
    v69 = vaddvq_s64(v67);
    if (v325)
    {
      v70 = v325 >= v30 + v69;
    }

    else
    {
      v70 = 1;
    }

    v71 = v70;
    if (v69 <= 0x80 && (v71 & 1) != 0)
    {
      v72 = vaddq_s64(vdupq_n_s64(v30 & 0x3F), vzip1q_s64(0, v68));
      v73 = (v324 + 8 * (v30 >> 6));
      v62 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v73, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v72)), vshlq_u64(vdupq_lane_s64(v73->i64[0], 0), vnegq_s64(v72)));
      if ((v30 & 0x3F) + v69 >= 0x81)
      {
        v62 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v73[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v72)), vshlq_u64(vdupq_laneq_s64(v73[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v72))), v62);
      }

      v30 += v69;
    }

    else
    {
      v326 = 1;
    }

    v74 = v328.i8[0] & 3;
    if (v74 == 2)
    {
      if (v325)
      {
        v75 = v30 + 4;
        v76 = v30 + 8;
        if (v325 >= v30 + 4)
        {
          v30 += 4;
        }

        else
        {
          v76 = v30 + 4;
        }

        if (v325 >= v76)
        {
          v30 = v76;
        }

        if (v325 < v75 || v325 < v76)
        {
          v326 = 1;
        }
      }

      else
      {
        v30 += 8;
      }
    }

    v77 = 0uLL;
    v78 = vextq_s8(0, v329, 0xCuLL);
    v79 = vmovl_u8(*&vpaddq_s8(v78, v78));
    v80 = vmovl_u16(*&vpaddq_s16(v79, v79));
    v81 = vpaddq_s32(v80, v80).u64[0];
    v82.i64[0] = v81;
    v82.i64[1] = HIDWORD(v81);
    v83 = v82;
    v84 = vaddvq_s64(v82);
    v85 = v30 + v84;
    if (v325)
    {
      v86 = v325 >= v85;
    }

    else
    {
      v86 = 1;
    }

    v87 = v86;
    if (v84 <= 0x80 && (v87 & 1) != 0)
    {
      v88 = v30 & 0x3F;
      v89 = vaddq_s64(vdupq_n_s64(v88), vzip1q_s64(0, v83));
      v90 = v324;
      v91 = (v324 + 8 * (v30 >> 6));
      v77 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v91, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v89)), vshlq_u64(vdupq_lane_s64(v91->i64[0], 0), vnegq_s64(v89)));
      if (v88 + v84 >= 0x81)
      {
        v77 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v91[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v89)), vshlq_u64(vdupq_laneq_s64(v91[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v89))), v77);
      }

      v92 = v326;
      v30 = v85;
    }

    else
    {
      v92 = 1;
      v90 = v324;
    }

    v93 = vmovl_u8(*&vpaddq_s8(v329, v329));
    v94 = vmovl_u16(*&vpaddq_s16(v93, v93));
    v95 = vpaddq_s32(v94, v94).u64[0];
    v96.i64[0] = v95;
    v96.i64[1] = HIDWORD(v95);
    v97 = v96;
    v98 = vaddvq_s64(v96);
    v99 = v30 + v98;
    if (v325)
    {
      v100 = v325 >= v99;
    }

    else
    {
      v100 = 1;
    }

    v101 = v100;
    v102 = 0uLL;
    if (v98 <= 0x80 && v101)
    {
      v103 = v30 & 0x3F;
      v104 = vaddq_s64(vdupq_n_s64(v103), vzip1q_s64(0, v97));
      v105 = (v90 + 8 * (v30 >> 6));
      v106 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v105, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v104)), vshlq_u64(vdupq_lane_s64(v105->i64[0], 0), vnegq_s64(v104)));
      if (v103 + v98 >= 0x81)
      {
        v106 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v105[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v104)), vshlq_u64(vdupq_laneq_s64(v105[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v104))), v106);
      }
    }

    else
    {
      v92 = 1;
      v99 = v30;
      v106 = 0uLL;
    }

    v107 = vmovl_u8(*&vpaddq_s8(v330, v330));
    v108 = vmovl_u16(*&vpaddq_s16(v107, v107));
    v109 = vpaddq_s32(v108, v108).u64[0];
    v110.i64[0] = v109;
    v110.i64[1] = HIDWORD(v109);
    v111 = v110;
    v112 = vaddvq_s64(v110);
    v113 = v112;
    v114 = v99 + v112;
    if (v325)
    {
      v115 = v325 >= v114;
    }

    else
    {
      v115 = 1;
    }

    v116 = v115;
    if (v112 <= 0x80 && v116)
    {
      v117 = v99 & 0x3F;
      v118 = vaddq_s64(vdupq_n_s64(v117), vzip1q_s64(0, v111));
      v119 = (v90 + 8 * (v99 >> 6));
      v102 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v119, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v118)), vshlq_u64(vdupq_lane_s64(v119->i64[0], 0), vnegq_s64(v118)));
      if (v117 + v113 >= 0x81)
      {
        v102 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v119[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v118)), vshlq_u64(vdupq_laneq_s64(v119[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v118))), v102);
      }
    }

    else
    {
      v92 = 1;
      v114 = v99;
    }

    v120 = v114 + v113;
    if (v325)
    {
      v121 = v325 >= v120;
    }

    else
    {
      v121 = 1;
    }

    v122 = v121;
    v123 = 0uLL;
    if (v113 <= 0x80 && v122)
    {
      v124 = v114 & 0x3F;
      v125 = vaddq_s64(vdupq_n_s64(v124), vzip1q_s64(0, v111));
      v126 = (v90 + 8 * (v114 >> 6));
      v127 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v126, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v125)), vshlq_u64(vdupq_lane_s64(v126->i64[0], 0), vnegq_s64(v125)));
      if (v124 + v113 >= 0x81)
      {
        v127 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v126[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v125)), vshlq_u64(vdupq_laneq_s64(v126[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v125))), v127);
      }
    }

    else
    {
      v92 = 1;
      v120 = v114;
      v127 = 0uLL;
    }

    v128 = vmovl_u8(*&vpaddq_s8(v331, v331));
    v129 = vmovl_u16(*&vpaddq_s16(v128, v128));
    v130 = vpaddq_s32(v129, v129).u64[0];
    v131.i64[0] = v130;
    v131.i64[1] = HIDWORD(v130);
    v132 = v131;
    v133 = vaddvq_s64(v131);
    v134 = v133;
    v135 = v120 + v133;
    if (v325)
    {
      v136 = v325 >= v135;
    }

    else
    {
      v136 = 1;
    }

    v137 = v136;
    if (v133 <= 0x80 && v137)
    {
      v138 = v120 & 0x3F;
      v139 = vaddq_s64(vdupq_n_s64(v138), vzip1q_s64(0, v132));
      v140 = (v90 + 8 * (v120 >> 6));
      v123 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v140, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v139)), vshlq_u64(vdupq_lane_s64(v140->i64[0], 0), vnegq_s64(v139)));
      if (v138 + v134 >= 0x81)
      {
        v123 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v140[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v139)), vshlq_u64(vdupq_laneq_s64(v140[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v139))), v123);
      }
    }

    else
    {
      v92 = 1;
      v135 = v120;
    }

    v141 = v135 + v134;
    if (v325)
    {
      v142 = v325 >= v141;
    }

    else
    {
      v142 = 1;
    }

    v143 = v142;
    v144 = 0uLL;
    if (v134 <= 0x80 && v143)
    {
      v145 = v135 & 0x3F;
      v146 = vaddq_s64(vdupq_n_s64(v145), vzip1q_s64(0, v132));
      v147 = (v90 + 8 * (v135 >> 6));
      v148 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v147, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v146)), vshlq_u64(vdupq_lane_s64(v147->i64[0], 0), vnegq_s64(v146)));
      if (v145 + v134 >= 0x81)
      {
        v148 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v147[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v146)), vshlq_u64(vdupq_laneq_s64(v147[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v146))), v148);
      }
    }

    else
    {
      v92 = 1;
      v141 = v135;
      v148 = 0uLL;
    }

    v149 = vmovl_u8(*&vpaddq_s8(v332, v332));
    v150 = vmovl_u16(*&vpaddq_s16(v149, v149));
    v151 = vpaddq_s32(v150, v150).u64[0];
    v152.i64[0] = v151;
    v152.i64[1] = HIDWORD(v151);
    v153 = v152;
    v154 = vaddvq_s64(v152);
    v155 = v154;
    v156 = v141 + v154;
    if (v325)
    {
      v157 = v325 >= v156;
    }

    else
    {
      v157 = 1;
    }

    v158 = v157;
    if (v154 <= 0x80 && v158)
    {
      v159 = v141 & 0x3F;
      v160 = vaddq_s64(vdupq_n_s64(v159), vzip1q_s64(0, v153));
      v161 = (v90 + 8 * (v141 >> 6));
      v144 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v161, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v160)), vshlq_u64(vdupq_lane_s64(v161->i64[0], 0), vnegq_s64(v160)));
      if (v159 + v155 >= 0x81)
      {
        v144 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v161[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v160)), vshlq_u64(vdupq_laneq_s64(v161[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v160))), v144);
      }
    }

    else
    {
      v92 = 1;
      v156 = v141;
    }

    v162 = v156 + v155;
    if (v325)
    {
      v163 = v325 >= v162;
    }

    else
    {
      v163 = 1;
    }

    v164 = v163;
    if (v155 > 0x80 || !v164)
    {
      goto LABEL_138;
    }

    v165 = vaddq_s64(vdupq_n_s64(v156 & 0x3F), vzip1q_s64(0, v153));
    v166 = (v90 + 8 * (v156 >> 6));
    v167 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v166, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v165)), vshlq_u64(vdupq_lane_s64(v166->i64[0], 0), vnegq_s64(v165)));
    if ((v156 & 0x3F) + v155 >= 0x81)
    {
      v167 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v166[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v165)), vshlq_u64(vdupq_laneq_s64(v166[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v165))), v167);
    }

    if ((v92 & 1) != 0 || v325 + 8 * result - v162 - 512 >= 9 || v74 == 2)
    {
LABEL_138:
      v168 = 8 * ((v334 + 6) & 7);
      v334[0] |= 15 << v168;
      v169 = (v168 + 8) & 0x38;
      v170 = (v168 + 8) & 0x40;
      if (((v170 + v169 - v168) | 4) <= 0x10)
      {
        v171 = (v168 + 8) >> 6;
        v172 = v334[v171];
        v334[v171] = (15 << v169) | v172;
        if ((v169 | 4) - v168 + v170 + 4 <= 0x10)
        {
          v334[v171] = (255 << v169) | v172;
        }
      }

      result = 0;
      v42->i32[0] = 0;
      *(v42->i32 + v41) = 0;
    }

    else
    {
      v173 = vzip1_s32(*v65.i8, *&vextq_s8(v65, v65, 8uLL));
      v174 = vzip1_s32(*v108.i8, *&vextq_s8(v108, v108, 8uLL));
      v175 = vzip1_s32(*v129.i8, *&vextq_s8(v129, v129, 8uLL));
      v176 = vzip1_s32(*v150.i8, *&vextq_s8(v150, v150, 8uLL));
      v177.i64[0] = v173.u32[0];
      v177.i64[1] = v173.u32[1];
      v178 = vshlq_u64(v62, vnegq_s64(v177));
      v179 = vzip2q_s64(v62, v178);
      v180 = vzip1q_s64(v62, v178);
      v177.i64[0] = v174.u32[0];
      v177.i64[1] = v174.u32[1];
      v181 = vnegq_s64(v177);
      v182 = vshlq_u64(v102, v181);
      v183 = vzip2q_s64(v102, v182);
      v184 = vzip1q_s64(v102, v182);
      v185 = vshlq_u64(v127, v181);
      v186 = vzip2q_s64(v127, v185);
      v187 = vzip1q_s64(v127, v185);
      v177.i64[0] = v175.u32[0];
      v177.i64[1] = v175.u32[1];
      v188 = vnegq_s64(v177);
      v189 = vshlq_u64(v123, v188);
      v190 = vzip2q_s64(v123, v189);
      v191 = vzip1q_s64(v123, v189);
      v192 = vshlq_u64(v148, v188);
      v177.i64[0] = v176.u32[0];
      v177.i64[1] = v176.u32[1];
      v193 = vnegq_s64(v177);
      v194 = vshlq_u64(v144, v193);
      v195 = vuzp1q_s32(v180, v179);
      v196 = vuzp1q_s32(v184, v183);
      v197 = vuzp1q_s32(v187, v186);
      v198 = vnegq_s32((*&v64 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
      v199 = vnegq_s32((*&v107 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
      v200 = vuzp1q_s32(v191, v190);
      v201 = vnegq_s32((*&v128 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
      v202 = vuzp1q_s32(vzip1q_s64(v148, v192), vzip2q_s64(v148, v192));
      v203 = vuzp1q_s32(vzip1q_s64(v144, v194), vzip2q_s64(v144, v194));
      v204 = vnegq_s32((*&v149 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
      v205 = vshlq_u32(v195, v198);
      v206 = vshlq_u32(v196, v199);
      v207 = vshlq_u32(v197, v199);
      v208 = vshlq_u32(v200, v201);
      v209 = vshlq_u32(v202, v201);
      v210 = vzip2q_s32(v195, v205);
      v211 = vzip1q_s32(v195, v205);
      v212 = vzip2q_s32(v196, v206);
      v213 = vzip1q_s32(v196, v206);
      v214 = vzip2q_s32(v197, v207);
      v215 = vzip1q_s32(v197, v207);
      v216 = vzip2q_s32(v200, v208);
      v217 = vzip1q_s32(v200, v208);
      v218 = vzip2q_s32(v202, v209);
      v219 = vzip1q_s32(v202, v209);
      v220 = vshlq_u32(v203, v204);
      v221 = vzip2q_s32(v203, v220);
      v222 = vzip1q_s32(v203, v220);
      v223 = vuzp1q_s16(v211, v210);
      v224 = vuzp1q_s16(v213, v212);
      v225 = vuzp1q_s16(v215, v214);
      v226 = vuzp1q_s16(v217, v216);
      v227 = vnegq_s16((*&v330 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
      v228 = vuzp1q_s16(v219, v218);
      v229 = vuzp1q_s16(v222, v221);
      v230 = vshlq_u16(v223, vnegq_s16((*&v63 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
      v231 = vshlq_u16(v224, v227);
      v232 = vshlq_u16(v225, v227);
      v233 = vzip2q_s16(v223, v230);
      v234 = vzip1q_s16(v223, v230);
      v235 = vuzp1q_s8(vzip1q_s16(v224, v231), vzip2q_s16(v224, v231));
      v231.i64[0] = 0x808080808080808;
      v231.i64[1] = 0x808080808080808;
      v236 = vuzp1q_s8(vzip1q_s16(v225, v232), vzip2q_s16(v225, v232));
      v224.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v224.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v237 = vsubq_s8(v231, v63);
      v238 = vaddq_s8(v63, v224);
      v239.i64[0] = 0x808080808080808;
      v239.i64[1] = 0x808080808080808;
      v240 = vshlq_s8(vuzp1q_s8(v234, v233), v237);
      v237.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v237.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v241 = vsubq_s8(v239, v330);
      v242 = vaddq_s8(v330, v237);
      v243 = vshlq_s8(v235, v241);
      v244 = vnegq_s16((*&v331 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
      v245 = vshlq_s8(v240, v238);
      v246 = vshlq_s8(v243, v242);
      v247 = vshlq_s8(vshlq_s8(v236, v241), v242);
      v248 = vdupq_lane_s32(*v245.i8, 0);
      v249 = vandq_s8(v318, v248);
      v250 = vsubq_s8(v246, v249);
      v251 = vsubq_s8(v247, v249);
      v252 = vshlq_u16(v226, v244);
      v253 = vshlq_u16(v228, v244);
      v249.i64[0] = 0x808080808080808;
      v249.i64[1] = 0x808080808080808;
      v238.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v238.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v254 = vsubq_s8(v249, v331);
      v255 = vaddq_s8(v331, v238);
      v256 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v228, v253), vzip2q_s16(v228, v253)), v254);
      v257 = vnegq_s16((*&v332 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
      v258 = vandq_s8(v319, v248);
      v259 = vsubq_s8(vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v226, v252), vzip2q_s16(v226, v252)), v254), v255), v258);
      v260 = vsubq_s8(vshlq_s8(v256, v255), v258);
      v261 = vshlq_u16(v229, v257);
      v258.i64[0] = 0x808080808080808;
      v258.i64[1] = 0x808080808080808;
      v256.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v256.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v262 = vsubq_s8(v258, v332);
      v263 = vaddq_s8(v332, v256);
      v264 = vshlq_u64(v167, v193);
      v265 = vuzp1q_s32(vzip1q_s64(v167, v264), vzip2q_s64(v167, v264));
      v266 = vshlq_u32(v265, v204);
      v267 = vuzp1q_s16(vzip1q_s32(v265, v266), vzip2q_s32(v265, v266));
      v268 = vshlq_u16(v267, v257);
      v269 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v229, v261), vzip2q_s16(v229, v261)), v262), v263);
      v270 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v267, v268), vzip2q_s16(v267, v268)), v262), v263);
      v271 = vandq_s8(v320, v248);
      v272 = vsubq_s8(v269, v271);
      v273 = vsubq_s8(v270, v271);
      *v269.i8 = vzip1_s32(*v80.i8, *&vextq_s8(v80, v80, 8uLL));
      *v270.i8 = vzip1_s32(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
      v177.i64[0] = v269.u32[0];
      v177.i64[1] = v269.u32[1];
      v274 = v177;
      v177.i64[0] = v270.u32[0];
      v177.i64[1] = v270.u32[1];
      v275 = vshlq_u64(v77, vnegq_s64(v274));
      v276 = vshlq_u64(v106, vnegq_s64(v177));
      v277 = vuzp1q_s32(vzip1q_s64(v77, v275), vzip2q_s64(v77, v275));
      v278 = vuzp1q_s32(vzip1q_s64(v106, v276), vzip2q_s64(v106, v276));
      v279 = vshlq_u32(v277, vnegq_s32((*&v79 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v280 = vshlq_u32(v278, vnegq_s32((*&v93 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v281 = vuzp1q_s16(vzip1q_s32(v277, v279), vzip2q_s32(v277, v279));
      v282 = vuzp1q_s16(vzip1q_s32(v278, v280), vzip2q_s32(v278, v280));
      v283 = vshlq_u16(v281, vnegq_s16((*&v78 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
      v284 = vshlq_u16(v282, vnegq_s16((*&v329 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
      v285 = vzip2q_s16(v281, v283);
      v286 = vzip1q_s16(v281, v283);
      v287 = vzip2q_s16(v282, v284);
      v288 = vzip1q_s16(v282, v284);
      v284.i64[0] = 0x808080808080808;
      v284.i64[1] = 0x808080808080808;
      v289 = vuzp1q_s8(v288, v287);
      v287.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v287.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v290 = vshlq_s8(vshlq_s8(v289, vsubq_s8(v284, v329)), vaddq_s8(v329, v287));
      v291 = vaddq_s8(vandq_s8(v245, v321), vshlq_s8(vshlq_s8(vuzp1q_s8(v286, v285), vsubq_s8(v284, v78)), vaddq_s8(v78, v287)));
      v292 = vandq_s8(v321, v248);
      v293.i64[0] = 0x101010101010101;
      v293.i64[1] = 0x101010101010101;
      v294 = vsubq_s8(v291, v292);
      v295 = vsubq_s8(v290, v292);
      if (vaddlvq_s8(vceqq_s8(v322, v293)))
      {
        v296 = vnegq_s8(vandq_s8(v328, v293));
        v297 = v295;
        v297.i32[3] = v294.i32[0];
        v298 = v294;
        v298.i32[0] = v295.i32[3];
        v335.val[0] = vbslq_s8(v296, v298, v294);
        v335.val[1] = vbslq_s8(v296, v297, v295);
        v297.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
        v297.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
        v336.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(v335, xmmword_29D2F0F80), v296), v335.val[0]);
        v336.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(v335, v297), v296), v335.val[1]);
        v294 = vaddq_s8(vandq_s8(vqtbl2q_s8(v336, xmmword_29D2F0F90), v296), v336.val[0]);
        v295 = vaddq_s8(vandq_s8(vqtbl2q_s8(v336, v297), v296), v336.val[1]);
        v336.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v250.i8, xmmword_29D2F0FA0), v296), v250);
        v336.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v250.i8, xmmword_29D2F0FB0), v296), v251);
        v250 = vaddq_s8(vandq_s8(vqtbl2q_s8(v336, xmmword_29D2F0FC0), v296), v336.val[0]);
        v251 = vaddq_s8(vandq_s8(vqtbl2q_s8(v336, v297), v296), v336.val[1]);
        v336.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v259.i8, xmmword_29D2F0FD0), v296), v259);
        v336.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v259.i8, xmmword_29D2F0F80), v296), v260);
        v259 = vaddq_s8(vandq_s8(vqtbl2q_s8(v336, v297), v296), v336.val[0]);
        v260 = vaddq_s8(vandq_s8(vqtbl2q_s8(v336, xmmword_29D2F0FE0), v296), v336.val[1]);
        v335.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v272.i8, xmmword_29D2F0FF0), v296), v272);
        v335.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v272.i8, xmmword_29D2F0F80), v296), v273);
        v272 = vaddq_s8(vandq_s8(vqtbl2q_s8(v335, v297), v296), v335.val[0]);
        v273 = vaddq_s8(vandq_s8(vqtbl2q_s8(v335, xmmword_29D2F1000), v296), v335.val[1]);
      }

      v299 = vaddq_s8(v327, v294);
      v300 = vaddq_s8(v295, v327);
      v301 = vaddq_s8(v250, v327);
      v302 = vaddq_s8(v251, v327);
      v303 = vaddq_s8(v259, v327);
      v304 = vaddq_s8(v260, v327);
      v305 = vaddq_s8(v272, v327);
      v306 = vaddq_s8(v273, v327);
      v307.i64[0] = 0x1010101010101010;
      v307.i64[1] = 0x1010101010101010;
      v308 = vceqzq_s8(vandq_s8(v328, v307));
      v309 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v299, xmmword_29D2F1020), v308), v299);
      v310 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v300, xmmword_29D2F1020), v308), v300);
      v311 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v301, xmmword_29D2F1020), v308), v301);
      v312 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v302, xmmword_29D2F1020), v308), v302);
      v313 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v303, xmmword_29D2F1020), v308), v303);
      v314 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v304, xmmword_29D2F1020), v308), v304);
      v315 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v305, xmmword_29D2F1020), v308), v305);
      v316 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v306, xmmword_29D2F1020), v308), v306);
      v304.i64[0] = 0xF000F000F000F0;
      v304.i64[1] = 0xF000F000F000F0;
      v305.i64[0] = 0xF000F000F000F00;
      v305.i64[1] = 0xF000F000F000F00;
      v302.i64[0] = 0xF000F000F000F000;
      v302.i64[1] = 0xF000F000F000F000;
      *v42 = vbslq_s8(v302, vshrn_high_n_s32(vshrn_n_s32(v309, 0xCuLL), v310, 0xCuLL), vbslq_s8(v305, vshrn_high_n_s32(vshrn_n_s32(v309, 8uLL), v310, 8uLL), vbslq_s8(v304, vshrn_high_n_s32(vshrn_n_s32(v309, 4uLL), v310, 4uLL), vuzp1q_s16(v309, v310))));
      v42[1] = vbslq_s8(v302, vshrn_high_n_s32(vshrn_n_s32(v311, 0xCuLL), v312, 0xCuLL), vbslq_s8(v305, vshrn_high_n_s32(vshrn_n_s32(v311, 8uLL), v312, 8uLL), vbslq_s8(v304, vshrn_high_n_s32(vshrn_n_s32(v311, 4uLL), v312, 4uLL), vuzp1q_s16(v311, v312))));
      v317 = (v42 + v41);
      *v317 = vbslq_s8(v302, vshrn_high_n_s32(vshrn_n_s32(v313, 0xCuLL), v314, 0xCuLL), vbslq_s8(v305, vshrn_high_n_s32(vshrn_n_s32(v313, 8uLL), v314, 8uLL), vbslq_s8(v304, vshrn_high_n_s32(vshrn_n_s32(v313, 4uLL), v314, 4uLL), vuzp1q_s16(v313, v314))));
      v317[1] = vbslq_s8(v302, vshrn_high_n_s32(vshrn_n_s32(v315, 0xCuLL), v316, 0xCuLL), vbslq_s8(v305, vshrn_high_n_s32(vshrn_n_s32(v315, 8uLL), v316, 8uLL), vbslq_s8(v304, vshrn_high_n_s32(vshrn_n_s32(v315, 4uLL), v316, 4uLL), vuzp1q_s16(v315, v316))));
    }
  }

  else
  {
    result = 0;
    *a1 = 0u;
    a1[1] = 0u;
    v16 = &a1->i8[a2];
    *v16 = 0u;
    *(v16 + 1) = 0u;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(int8x16_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 128, a2, *a3);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 2, 128, v5, a3[1]);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 16, 128, v6, a3[2]);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 18, 128, v7, a3[3]);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 4, 128, v8, a3[4]);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 6, 128, v9, a3[5]);
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 20, 128, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 22, 128, v10 + v11, v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(uint16x8_t *a1, char *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + a4);
  v8 = *(a3 + a4 + 16);
  v9.i64[0] = 0xF0000000FLL;
  v9.i64[1] = 0xF0000000FLL;
  v10.i64[0] = 0xF0000000F00;
  v10.i64[1] = 0xF0000000F00;
  v11.i64[0] = 0xF0000000F0000;
  v11.i64[1] = 0xF0000000F0000;
  v12.i64[0] = 0xF0000000F000000;
  v12.i64[1] = 0xF0000000F000000;
  v13 = vbslq_s8(v12, vshll_n_u16(*a3, 0xCuLL), vbslq_s8(v11, vshll_n_u16(*a3, 8uLL), vbslq_s8(v10, vshll_n_u16(*a3, 4uLL), vbslq_s8(v9, vmovl_u16(*a3), 0))));
  v14 = vbslq_s8(v12, vshll_high_n_u16(*a3, 0xCuLL), vbslq_s8(v11, vshll_high_n_u16(*a3, 8uLL), vbslq_s8(v10, vshll_high_n_u16(*a3, 4uLL), vbslq_s8(v9, vmovl_high_u16(*a3), 0))));
  v538 = v6;
  v15 = vbslq_s8(v12, vshll_n_u16(*v6.i8, 0xCuLL), vbslq_s8(v11, vshll_n_u16(*v6.i8, 8uLL), vbslq_s8(v10, vshll_n_u16(*v6.i8, 4uLL), vbslq_s8(v9, vmovl_u16(*v6.i8), 0))));
  v16 = vbslq_s8(v12, vshll_high_n_u16(v6, 0xCuLL), vbslq_s8(v11, vshll_high_n_u16(v6, 8uLL), vbslq_s8(v10, vshll_high_n_u16(v6, 4uLL), vbslq_s8(v9, vmovl_high_u16(v6), 0))));
  v540 = v7;
  v17 = vbslq_s8(v12, vshll_n_u16(*v7.i8, 0xCuLL), vbslq_s8(v11, vshll_n_u16(*v7.i8, 8uLL), vbslq_s8(v10, vshll_n_u16(*v7.i8, 4uLL), vbslq_s8(v9, vmovl_u16(*v7.i8), 0))));
  v18 = vbslq_s8(v12, vshll_high_n_u16(v7, 0xCuLL), vbslq_s8(v11, vshll_high_n_u16(v7, 8uLL), vbslq_s8(v10, vshll_high_n_u16(v7, 4uLL), vbslq_s8(v9, vmovl_high_u16(v7), 0))));
  v539 = v8;
  v19 = vbslq_s8(v12, vshll_n_u16(*v8.i8, 0xCuLL), vbslq_s8(v11, vshll_n_u16(*v8.i8, 8uLL), vbslq_s8(v10, vshll_n_u16(*v8.i8, 4uLL), vbslq_s8(v9, vmovl_u16(*v8.i8), 0))));
  v20 = vbslq_s8(v12, vshll_high_n_u16(v8, 0xCuLL), vbslq_s8(v11, vshll_high_n_u16(v8, 8uLL), vbslq_s8(v10, vshll_high_n_u16(v8, 4uLL), vbslq_s8(v9, vmovl_high_u16(v8), 0))));
  v21 = vdupq_lane_s32(*v13.i8, 0);
  v22 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v13, v21), 4uLL), 4uLL);
  v23 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v14, v21), 4uLL), 4uLL);
  v24 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v15, v21), 4uLL), 4uLL);
  v25 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v16, v21), 4uLL), 4uLL);
  v26 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v17, v21), 4uLL), 4uLL);
  v27 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v18, v21), 4uLL), 4uLL);
  v28 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v19, v21), 4uLL), 4uLL);
  v29 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v20, v21), 4uLL), 4uLL);
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
  v39 = vqtbl1q_s8(vmaxq_s8(v24, v25), xmmword_29D2F0F70);
  v40 = vqtbl1q_s8(vminq_s8(v24, v25), xmmword_29D2F0F70);
  v41 = vpmaxq_s8(v39, v39);
  v42 = vpminq_s8(v40, v40);
  v43 = vpmaxq_s8(v41, v41);
  v44 = vpminq_s8(v42, v42);
  v45 = vmaxq_s8(v34, v43);
  v46 = vminq_s8(v35, v44);
  v47 = vzip1q_s8(v43, v44);
  v48 = vbicq_s8(vsubq_s8(v37, vclsq_s8(v47)), vceqzq_s8(v47));
  v49 = vqtbl1q_s8(vmaxq_s8(v26, v27), xmmword_29D2F0F70);
  v50 = vqtbl1q_s8(vminq_s8(v26, v27), xmmword_29D2F0F70);
  v51 = vpmaxq_s8(v49, v49);
  v52 = vpminq_s8(v50, v50);
  v53 = vpmaxq_s8(v51, v51);
  v54 = vpminq_s8(v52, v52);
  v55 = vmaxq_s8(v45, v53);
  v56 = vminq_s8(v46, v54);
  v57 = vzip1q_s8(v53, v54);
  v58 = vbicq_s8(vsubq_s8(v37, vclsq_s8(v57)), vceqzq_s8(v57));
  v59 = vqtbl1q_s8(vmaxq_s8(v28, v29), xmmword_29D2F0F70);
  v60 = vqtbl1q_s8(vminq_s8(v28, v29), xmmword_29D2F0F70);
  v61 = vpmaxq_s8(v59, v59);
  v62 = vpminq_s8(v60, v60);
  v63 = vpmaxq_s8(v61, v61);
  v64 = vpminq_s8(v62, v62);
  v65 = vmaxq_s8(v55, v63);
  v66 = vminq_s8(v56, v64);
  v67 = vzip1q_s8(v63, v64);
  v68 = vbicq_s8(vsubq_s8(v37, vclsq_s8(v67)), vceqzq_s8(v67));
  v69 = vpmaxq_s8(v38, v38);
  v70 = vpmaxq_s8(v48, v48);
  v71 = vpmaxq_s8(v58, v58);
  v72 = vpmaxq_s8(v68, v68);
  v73 = vmaxq_s8(vmaxq_s8(v69, v70), vmaxq_s8(v71, v72));
  v74 = vclzq_s8(vsubq_s8(v65, v66));
  v75 = vsubq_s8(v37, v74);
  v76 = vminq_s8(v75, v73);
  if (!vmaxvq_s8(v76))
  {
    a1->i16[0] = *a3;
    v171 = 1;
    result = 2;
    goto LABEL_91;
  }

  v547 = v21;
  v77.i64[0] = -1;
  v77.i64[1] = -1;
  v78 = v22;
  v79.i64[0] = 0x707070707070707;
  v79.i64[1] = 0x707070707070707;
  v80 = vcgtq_s8(v73, v75);
  v543 = vandq_s8(vsubq_s8(vshlq_s8(v77, vsubq_s8(v79, v74)), v66), v80);
  v81.i64[0] = 0x303030303030303;
  v81.i64[1] = 0x303030303030303;
  v530 = vmaxq_s8(vminq_s8(vsubq_s8(v76, v69), v81), 0);
  v532 = vmaxq_s8(vminq_s8(vsubq_s8(v76, v71), v81), 0);
  v534 = vmaxq_s8(vminq_s8(vsubq_s8(v76, v70), v81), 0);
  v536 = vmaxq_s8(vminq_s8(vsubq_s8(v76, v72), v81), 0);
  v82.i64[0] = 0x404040404040404;
  v82.i64[1] = 0x404040404040404;
  v554 = vorrq_s8(vbicq_s8(v82, vceqq_s8(vaddq_s8(v536, v532), vnegq_s8(vaddq_s8(v530, v534)))), vorrq_s8(vandq_s8(vceqzq_s8(v76), v81), vandq_s8(v80, v37)));
  v541 = v78;
  v548 = v23;
  v83 = vsubq_s8(v23, vqtbl1q_s8(v23, xmmword_29D2F1020));
  v84 = vsubq_s8(v28, vqtbl1q_s8(v28, xmmword_29D2F1020));
  v551 = v26;
  v552 = v27;
  v553 = v28;
  v85 = vshlq_n_s8(vsubq_s8(v25, vqtbl1q_s8(v25, xmmword_29D2F1020)), 4uLL);
  v549 = v24;
  v550 = v25;
  v86 = vshlq_n_s8(vsubq_s8(v27, vqtbl1q_s8(v27, xmmword_29D2F1020)), 4uLL);
  v87 = vshrq_n_s8(v85, 4uLL);
  v545 = v29;
  v528 = vshrq_n_s8(vshlq_n_s8(v83, 4uLL), 4uLL);
  v529 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v78, vqtbl1q_s8(v78, xmmword_29D2F1020)), 4uLL), 4uLL);
  v88 = vqtbl1q_s8(vmaxq_s8(v529, v528), xmmword_29D2F0F70);
  v89 = vqtbl1q_s8(vminq_s8(v529, v528), xmmword_29D2F0F70);
  v90 = vpmaxq_s8(v88, v88);
  v91 = vpminq_s8(v89, v89);
  v92 = vpmaxq_s8(v90, v90);
  v93 = vpminq_s8(v91, v91);
  v94 = vzip1q_s8(v92, v93);
  v95 = vbicq_s8(vsubq_s8(v37, vclsq_s8(v94)), vceqzq_s8(v94));
  v96 = vpmaxq_s8(v95, v95);
  v527 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v24, vqtbl1q_s8(v24, xmmword_29D2F1020)), 4uLL), 4uLL);
  v97 = vqtbl1q_s8(vmaxq_s8(v527, v87), xmmword_29D2F0F70);
  v98 = vqtbl1q_s8(vminq_s8(v527, v87), xmmword_29D2F0F70);
  v99 = vpmaxq_s8(v97, v97);
  v100 = vpminq_s8(v98, v98);
  v101 = vpmaxq_s8(v99, v99);
  v102 = vpminq_s8(v100, v100);
  v103 = vmaxq_s8(v92, v101);
  v104 = vminq_s8(v93, v102);
  v105 = vzip1q_s8(v101, v102);
  v106 = vbicq_s8(vsubq_s8(v37, vclsq_s8(v105)), vceqzq_s8(v105));
  v107 = vpmaxq_s8(v106, v106);
  v525 = vshrq_n_s8(v86, 4uLL);
  v526 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v26, vqtbl1q_s8(v26, xmmword_29D2F1020)), 4uLL), 4uLL);
  v108 = vqtbl1q_s8(vmaxq_s8(v526, v525), xmmword_29D2F0F70);
  v109 = vqtbl1q_s8(vminq_s8(v526, v525), xmmword_29D2F0F70);
  v110 = vpmaxq_s8(v108, v108);
  v111 = vpminq_s8(v109, v109);
  v112 = vpmaxq_s8(v110, v110);
  v113 = vpminq_s8(v111, v111);
  v114 = vmaxq_s8(v103, v112);
  v115 = vminq_s8(v104, v113);
  v116 = vzip1q_s8(v112, v113);
  v117 = vbicq_s8(vsubq_s8(v37, vclsq_s8(v116)), vceqzq_s8(v116));
  v118 = vpmaxq_s8(v117, v117);
  v523 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v29, vqtbl1q_s8(v29, xmmword_29D2F1020)), 4uLL), 4uLL);
  v524 = vshrq_n_s8(vshlq_n_s8(v84, 4uLL), 4uLL);
  v119 = vqtbl1q_s8(vmaxq_s8(v524, v523), xmmword_29D2F0F70);
  v120 = vqtbl1q_s8(vminq_s8(v524, v523), xmmword_29D2F0F70);
  v121 = vpmaxq_s8(v119, v119);
  v122 = vpminq_s8(v120, v120);
  v123 = vpmaxq_s8(v121, v121);
  v124 = vpminq_s8(v122, v122);
  v125 = vmaxq_s8(v114, v123);
  v126 = vminq_s8(v115, v124);
  v127 = vzip1q_s8(v123, v124);
  v128 = vbicq_s8(vsubq_s8(v37, vclsq_s8(v127)), vceqzq_s8(v127));
  v129 = vpmaxq_s8(v128, v128);
  v130 = vmaxq_s8(vmaxq_s8(v96, v107), vmaxq_s8(v118, v129));
  v131 = vclzq_s8(vsubq_s8(v125, v126));
  v132 = vsubq_s8(v37, v131);
  v133 = vcgtq_s8(v130, v132);
  v134 = vminq_s8(v132, v130);
  v130.i64[0] = 0x1010101010101010;
  v130.i64[1] = 0x1010101010101010;
  v80.i64[0] = 0x1818181818181818;
  v80.i64[1] = 0x1818181818181818;
  v135 = vorrq_s8(vandq_s8(vceqzq_s8(v134), v81), vbslq_s8(v133, v80, v130));
  v136 = vmaxq_s8(vminq_s8(vsubq_s8(v134, v96), v81), 0);
  v137 = vmaxq_s8(vminq_s8(vsubq_s8(v134, v107), v81), 0);
  v138 = vmaxq_s8(vminq_s8(vsubq_s8(v134, v118), v81), 0);
  v139 = vmaxq_s8(vminq_s8(vsubq_s8(v134, v129), v81), 0);
  v140 = vsubq_s8(v134, v136);
  v141 = vsubq_s8(v134, v137);
  v142 = vsubq_s8(v134, v138);
  v143 = vsubq_s8(v134, v139);
  v144 = vceqq_s8(vaddq_s8(v139, v138), vnegq_s8(vaddq_s8(v136, v137)));
  v137.i64[0] = 0x404040404040404;
  v137.i64[1] = 0x404040404040404;
  v145 = vorrq_s8(vbicq_s8(v137, v144), v135);
  v146 = vmovl_u8(*v145.i8);
  v137.i64[0] = 0x8000800080008;
  v137.i64[1] = 0x8000800080008;
  v147.i64[0] = 0x2000200020002;
  v147.i64[1] = 0x2000200020002;
  v148 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v134.i8), vceqzq_s16((*&v146 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8)))), vandq_s8(vshll_n_u8(*v145.i8, 1uLL), v137)), vandq_s8(vceqq_s16((*&v146 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v147), v137)), *v140.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v142.i8, *v141.i8), *v143.i8), 3uLL));
  v149 = vaddq_s16(vaddw_s8((*&vshll_n_u8(*v554.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9)), vbic_s8(*v76.i8, vcgt_u8(0x808080808080808, *v554.i8))), vandq_s8(vceqq_s16((*&vmovl_u8(*v554.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v147), v137));
  v150 = vsubq_s8(v76, v530);
  v151 = vsubq_s8(v76, v534);
  v152 = vsubq_s8(v76, v532);
  v153 = vsubq_s8(v76, v536);
  v154 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(v149, *v150.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v152.i8, *v151.i8), *v153.i8), 3uLL)), v148)), 0);
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
    v159 = vsubq_s8(v158, v131);
    v160.i64[0] = -1;
    v160.i64[1] = -1;
    v161 = vandq_s8(vsubq_s8(vshlq_s8(v160, v159), v126), v133);
    v162 = vbslq_s8(v154, v529, v541);
    v547 = vbslq_s8(v154, vsubq_s8(v547, vqtbl1q_s8(v547, xmmword_29D2F1020)), v547);
    v548 = vbslq_s8(v154, v528, v548);
    v549 = vbslq_s8(v154, v527, v549);
    v550 = vbslq_s8(v154, v87, v550);
    v551 = vbslq_s8(v154, v526, v551);
    v552 = vbslq_s8(v154, v525, v552);
    v553 = vbslq_s8(v154, v524, v553);
    v531 = vbslq_s8(v154, v140, v150);
    v533 = vbslq_s8(v154, v141, v151);
    v535 = vbslq_s8(v154, v142, v152);
    v537 = vbslq_s8(v154, v143, v153);
    v76 = vbslq_s8(v154, v134, v76);
    v554 = vbslq_s8(v154, v145, v554);
    v163 = vbslq_s8(v154, v523, v545);
    v164 = vbslq_s8(v154, v161, v543);
    if (v157)
    {
LABEL_10:
      v166 = v535;
      v165 = v537;
      v168 = v531;
      v167 = v533;
      v169 = v554;
      v170 = v547.i32[0];
      goto LABEL_16;
    }
  }

  else
  {
    v531 = v150;
    v533 = v151;
    v535 = v152;
    v537 = v153;
    v164 = v543;
    v163 = v545;
    v162 = v541;
    if (v157)
    {
      goto LABEL_10;
    }
  }

  v542 = v162;
  v544 = v164;
  v546 = v163;
  v173 = vsubq_s8(v13, vqtbl2q_s8(*v13.i8, xmmword_29D2F0F80));
  v174 = vsubq_s8(v14, vqtbl2q_s8(*v13.i8, xmmword_29D2F1030));
  v175 = v16;
  v175.i32[3] = v14.i32[3];
  v176 = v18;
  v176.i32[3] = v14.i32[3];
  v177 = v20;
  v177.i32[3] = v14.i32[3];
  v178 = v174;
  v178.i32[3] = v173.i32[0];
  v173.i32[0] = v174.i32[3];
  v179.i64[0] = 0x404040404040404;
  v179.i64[1] = 0x404040404040404;
  v180 = vshrq_n_s8(vshlq_n_s8(v173, 4uLL), 4uLL);
  v181 = vshrq_n_s8(vshlq_n_s8(v178, 4uLL), 4uLL);
  v182 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v15, vqtbl2q_s8(*v15.i8, xmmword_29D2F0FA0)), 4uLL), 4uLL);
  v183 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v16, vqtbl2q_s8(*v15.i8, xmmword_29D2F1040)), 4uLL), 4uLL);
  v184 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v17, vqtbl2q_s8(*v17.i8, xmmword_29D2F1050)), 4uLL), 4uLL);
  v185 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v18, vqtbl2q_s8(*v17.i8, xmmword_29D2F0F80)), 4uLL), 4uLL);
  v186 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v19, vqtbl2q_s8(*v19.i8, xmmword_29D2F1060)), 4uLL), 4uLL);
  v187 = vshrq_n_s8(vshlq_n_s8(vsubq_s8(v20, vqtbl2q_s8(*v19.i8, xmmword_29D2F0F80)), 4uLL), 4uLL);
  v188 = vqtbl1q_s8(vmaxq_s8(v180, v181), xmmword_29D2F0F70);
  v189 = vqtbl1q_s8(vminq_s8(v180, v181), xmmword_29D2F0F70);
  v190 = vpmaxq_s8(v188, v188);
  v191 = vpminq_s8(v189, v189);
  v192 = vpmaxq_s8(v190, v190);
  v193 = vpminq_s8(v191, v191);
  v194 = vzip1q_s8(v192, v193);
  v195.i64[0] = 0x808080808080808;
  v195.i64[1] = 0x808080808080808;
  v196 = vbicq_s8(vsubq_s8(v195, vclsq_s8(v194)), vceqzq_s8(v194));
  v197 = vpmaxq_s8(v196, v196);
  v198 = vqtbl1q_s8(vmaxq_s8(v182, v183), xmmword_29D2F0F70);
  v199 = vqtbl1q_s8(vminq_s8(v182, v183), xmmword_29D2F0F70);
  v200 = vpmaxq_s8(v198, v198);
  v201 = vpminq_s8(v199, v199);
  v202 = vpmaxq_s8(v200, v200);
  v203 = vpminq_s8(v201, v201);
  v204 = vmaxq_s8(v192, v202);
  v205 = vminq_s8(v193, v203);
  v206 = vzip1q_s8(v202, v203);
  v207 = vbicq_s8(vsubq_s8(v195, vclsq_s8(v206)), vceqzq_s8(v206));
  v208 = vpmaxq_s8(v207, v207);
  v209 = vqtbl1q_s8(vmaxq_s8(v184, v185), xmmword_29D2F0F70);
  v210 = vqtbl1q_s8(vminq_s8(v184, v185), xmmword_29D2F0F70);
  v211 = vpmaxq_s8(v209, v209);
  v212 = vpminq_s8(v210, v210);
  v213 = vpmaxq_s8(v211, v211);
  v214 = vpminq_s8(v212, v212);
  v215 = vmaxq_s8(v204, v213);
  v216 = vminq_s8(v205, v214);
  v217 = vzip1q_s8(v213, v214);
  v218 = vbicq_s8(vsubq_s8(v195, vclsq_s8(v217)), vceqzq_s8(v217));
  v219 = v76;
  v220 = vpmaxq_s8(v218, v218);
  v221 = vqtbl1q_s8(vmaxq_s8(v186, v187), xmmword_29D2F0F70);
  v222 = vqtbl1q_s8(vminq_s8(v186, v187), xmmword_29D2F0F70);
  v223 = vpmaxq_s8(v221, v221);
  v224 = vpminq_s8(v222, v222);
  v225 = vpmaxq_s8(v223, v223);
  v226 = vpminq_s8(v224, v224);
  v227 = vmaxq_s8(v215, v225);
  v228 = vminq_s8(v216, v226);
  v229 = vzip1q_s8(v225, v226);
  v230 = vbicq_s8(vsubq_s8(v195, vclsq_s8(v229)), vceqzq_s8(v229));
  v231 = vpmaxq_s8(v230, v230);
  v232 = vmaxq_s8(vmaxq_s8(v197, v208), vmaxq_s8(v220, v231));
  v233 = vclzq_s8(vsubq_s8(v227, v228));
  v234 = vsubq_s8(v195, v233);
  v235 = vcgtq_s8(v232, v234);
  v236 = vminq_s8(v234, v232);
  v195.i64[0] = 0x909090909090909;
  v195.i64[1] = 0x909090909090909;
  v175.i64[0] = 0x202020202020202;
  v175.i64[1] = 0x202020202020202;
  v237 = vorrq_s8(vandq_s8(vceqzq_s8(v236), v175), vsubq_s8(vandq_s8(v235, v195), vmvnq_s8(v235)));
  v195.i64[0] = 0x303030303030303;
  v195.i64[1] = 0x303030303030303;
  v238 = vmaxq_s8(vminq_s8(vsubq_s8(v236, v197), v195), 0);
  v239 = vmaxq_s8(vminq_s8(vsubq_s8(v236, v208), v195), 0);
  v240 = vmaxq_s8(vminq_s8(vsubq_s8(v236, v220), v195), 0);
  v241 = vmaxq_s8(vminq_s8(vsubq_s8(v236, v231), v195), 0);
  v242 = vsubq_s8(v236, v238);
  v243 = vsubq_s8(v236, v239);
  v244 = vsubq_s8(v236, v240);
  v245 = vsubq_s8(v236, v241);
  v246 = vorrq_s8(vbicq_s8(v179, vceqq_s8(vaddq_s8(v241, v240), vnegq_s8(vaddq_s8(v238, v239)))), v237);
  v240.i64[0] = 0x3000300030003;
  v240.i64[1] = 0x3000300030003;
  v169 = v554;
  v247 = vmovl_s8(*v554.i8);
  v238.i64[0] = 0x8000800080008;
  v238.i64[1] = 0x8000800080008;
  v248 = vbicq_s8(vmovl_s8(*v219.i8), vceqzq_s16(vandq_s8(v247, v238)));
  v249 = vandq_s8(v247, v240);
  v240.i64[0] = 0x2000200020002;
  v240.i64[1] = 0x2000200020002;
  v167 = v533;
  v166 = v535;
  v165 = v537;
  v168 = v531;
  v250 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v248, vandq_s8(vshll_n_s8(*v554.i8, 1uLL), v238)), vandq_s8(vceqq_s16(v249, v240), v238)), *v531.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v535.i8, *v533.i8), *v537.i8), 3uLL)), vaddq_s16(vmlal_s8(vaddw_u8(vmovl_s8(vbic_s8(*v236.i8, vcgt_u8(0x808080808080808, *v246.i8))), vand_s8(vadd_s8(*v246.i8, *v246.i8), 0x808080808080808)), *v242.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v244.i8, *v243.i8), *v245.i8), 3uLL)))), 0);
  v170 = v547.i32[0];
  if (vaddlvq_s8(v250))
  {
    v251.i64[0] = 0x707070707070707;
    v251.i64[1] = 0x707070707070707;
    v252 = vsubq_s8(v251, v233);
    v251.i64[0] = -1;
    v251.i64[1] = -1;
    v253 = vandq_s8(vsubq_s8(vshlq_s8(v251, v252), v228), v235);
    v170 = vbslq_s8(v250, vextq_s8(v14, v14, 0xCuLL), v547).u32[0];
    v548 = vbslq_s8(v250, v181, v548);
    v549 = vbslq_s8(v250, v182, v549);
    v550 = vbslq_s8(v250, v183, v550);
    v551 = vbslq_s8(v250, v184, v551);
    v552 = vbslq_s8(v250, v185, v552);
    v553 = vbslq_s8(v250, v186, v553);
    v163 = vbslq_s8(v250, v187, v546);
    v168 = vbslq_s8(v250, v242, v531);
    v167 = vbslq_s8(v250, v243, v533);
    v166 = vbslq_s8(v250, v244, v535);
    v165 = vbslq_s8(v250, v245, v537);
    v164 = vbslq_s8(v250, v253, v544);
    v76 = vbslq_s8(v250, v236, v219);
    v169 = vbslq_s8(v250, v246, v554);
    v162 = vbslq_s8(v250, v180, v542);
  }

  else
  {
    v164 = v544;
    v163 = v546;
    v76 = v219;
    v162 = v542;
  }

LABEL_16:
  v254 = vmovl_s8(*v169.i8);
  v255.i64[0] = 0x8000800080008;
  v255.i64[1] = 0x8000800080008;
  v256.i64[0] = 0x3000300030003;
  v256.i64[1] = 0x3000300030003;
  v257.i64[0] = 0x2000200020002;
  v257.i64[1] = 0x2000200020002;
  v258 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v76.i8), vceqzq_s16(vandq_s8(v254, v255))), vandq_s8(vshll_n_s8(*v169.i8, 1uLL), v255)), vandq_s8(vceqq_s16(vandq_s8(v254, v256), v257), v255)), *v168.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v166.i8, *v167.i8), *v165.i8), 3uLL));
  v259 = vpaddq_s16(v258, v258);
  v260 = vpaddq_s16(v259, v259).u64[0];
  if ((v260.i16[0] + 55) > 0x1FF)
  {
    *a1 = *a3;
    a1[1] = v538;
    v171 = 63;
    a1[2] = v540;
    a1[3] = v539;
    result = 64;
  }

  else
  {
    v261 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v262 = 8 * (a1 & 7);
    if (v262)
    {
      v263 = *v261 & ~(-1 << v262);
    }

    else
    {
      v263 = 0;
    }

    *a2 = 0;
    v264 = vzip1_s8(*v76.i8, v260);
    v265 = vadd_s16(v264, 0xFF00FF00FF00FFLL);
    v266 = vmovl_u16(vceqz_s16((*&v264 & 0xFF00FF00FF00FFLL)));
    v267.i64[0] = v266.u32[0];
    v267.i64[1] = v266.u32[1];
    v268 = vshrq_n_s64(vshlq_n_s64(v267, 0x38uLL), 0x38uLL);
    v267.i64[0] = v266.u32[2];
    v267.i64[1] = v266.u32[3];
    v269 = vshrq_n_s64(vshlq_n_s64(v267, 0x38uLL), 0x38uLL);
    v270 = vshlq_u32(vmovl_u16(vand_s8(v265, 0x7000700070007)), xmmword_29D2F1070);
    v267.i64[0] = v270.u32[0];
    v267.i64[1] = v270.u32[1];
    v271 = v267;
    v267.i64[0] = v270.u32[2];
    v267.i64[1] = v270.u32[3];
    v272 = vorrq_s8(vbicq_s8(v271, v268), vbicq_s8(v267, v269));
    v273 = *&vorr_s8(*v272.i8, *&vextq_s8(v272, v272, 8uLL)) | (32 * (v169.i8[1] & 0x1F)) | ((v169.i8[3] & 0x1F) << 15) | ((v169.i8[2] & 0x1F) << 10) | v169.i8[0] & 0x1F;
    v274 = (v273 << v262) | v263;
    if (v262 >= 0x20)
    {
      *v261 = v274;
      v274 = v273 >> (-8 * (a1 & 7u));
    }

    v275 = v170 & 0xF | (16 * BYTE1(v170)) | ((BYTE2(v170) & 0xF) << 8) | ((HIBYTE(v170) & 0xF) << 12);
    v276 = (v262 + 32) & 0x38;
    v277 = v274 | (v275 << v276);
    if (v276 >= 0x30)
    {
      *(v261 + (((v262 + 32) >> 3) & 8)) = v277;
      v277 = v275 >> -v276;
    }

    v278 = v262 + 48;
    v279 = vsubq_s8(v76, v168);
    v280 = vsubq_s8(v76, v167);
    v281 = vsubq_s8(v76, v166);
    v282 = vsubq_s8(v76, v165);
    v283 = vtrn1q_s8(v279, v280);
    v284 = vtrn2q_s8(v279, v280);
    v285 = vtrn1q_s8(v281, v282);
    v286 = vtrn2q_s8(v281, v282);
    v287 = vzip1q_s16(v284, v286);
    v288 = vtrn2q_s16(v284, v286);
    v286.i64[0] = vzip1q_s32(vzip1q_s16(v283, v285), v287).u64[0];
    v288.i64[0] = vzip1q_s32(vtrn2q_s16(v283, v285), v288).u64[0];
    v285.i64[0] = 0x202020202020202;
    v285.i64[1] = 0x202020202020202;
    v289 = vandq_s8(vmovl_s16(vtst_s16(*v254.i8, 0x4000400040004)), v285);
    v285.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v285.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v282.i64[0] = -1;
    v282.i64[1] = -1;
    v290 = vshlq_u8(v282, vorrq_s8(v289, v285));
    v291 = vmovl_u8(vand_s8(*v290.i8, *v286.i8));
    v292 = vmovl_u8(vand_s8(*&vextq_s8(v290, v290, 8uLL), *v288.i8));
    v293 = vmovl_u8(*v289.i8);
    v294 = vmovl_high_u8(v289);
    v295 = vpaddq_s16(vshlq_u16(v291, vtrn1q_s16(0, v293)), vshlq_u16(v292, vtrn1q_s16(0, v294)));
    v296 = vpaddq_s16(v293, v294);
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
    v307 = (v262 + 48) & 0x38;
    v308 = (v305.i64[0] << v307) | v277;
    if ((v306.i64[0] + v307) >= 0x40)
    {
      *(v261 + ((v278 >> 3) & 8)) = v308;
      v308 = v305.i64[0] >> -v307;
      if (!v307)
      {
        v308 = 0;
      }
    }

    v309 = vceqq_s8(v76, v168);
    v310 = v306.i64[1];
    v311 = v306.i64[0] + v278;
    v312 = v308 | (v305.i64[1] << v311);
    if ((v311 & 0x3F) + v306.i64[1] >= 0x40)
    {
      *(v261 + ((v311 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v312;
      v312 = v305.i64[1] >> -(v311 & 0x3F);
      if ((v311 & 0x3F) == 0)
      {
        v312 = 0;
      }
    }

    v313 = vandq_s8(v164, v309);
    v314 = v311 + v310;
    v315.i64[0] = 0x808080808080808;
    v315.i64[1] = 0x808080808080808;
    v316.i64[0] = -1;
    v316.i64[1] = -1;
    v317 = vandq_s8(vextq_s8(vtstq_s8(v169, v315), 0, 0xCuLL), v76);
    v318.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v318.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v319 = vandq_s8(vshlq_u8(v316, vaddq_s8(v317, v318)), v164);
    v320 = vmovl_u8(*v317.i8);
    v321 = vpaddq_s16(vshlq_u16(vmovl_u8(*v319.i8), vtrn1q_s16(0, v320)), vmovl_high_u8(v319));
    v322 = vpaddq_s16(v320, vmovl_high_u8(v317));
    v323 = vmovl_u16(*v322.i8);
    v324 = vmovl_high_u16(v322);
    v325 = vpaddq_s32(vshlq_u32(vmovl_u16(*v321.i8), vtrn1q_s32(0, v323)), vshlq_u32(vmovl_high_u16(v321), vtrn1q_s32(0, v324)));
    v326 = vpaddq_s32(v323, v324);
    v327.i64[0] = v325.u32[0];
    v327.i64[1] = v325.u32[1];
    v328 = v327;
    v327.i64[0] = v325.u32[2];
    v327.i64[1] = v325.u32[3];
    v329 = v327;
    v327.i64[0] = v326.u32[0];
    v327.i64[1] = v326.u32[1];
    v330 = v327;
    v327.i64[0] = v326.u32[2];
    v327.i64[1] = v326.u32[3];
    v331 = vpaddq_s64(vshlq_u64(v328, vzip1q_s64(0, v330)), vshlq_u64(v329, vzip1q_s64(0, v327)));
    v332 = vpaddq_s64(v330, v327);
    v333 = (v331.i64[0] << v314) | v312;
    if (v332.i64[0] + (v314 & 0x3F) >= 0x40)
    {
      *(v261 + ((v314 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v333;
      v333 = v331.i64[0] >> -(v314 & 0x3F);
      if ((v314 & 0x3F) == 0)
      {
        v333 = 0;
      }
    }

    v334 = vaddq_s8(v313, v162);
    v335 = v332.i64[0] + v314;
    v336 = v333 | (v331.i64[1] << v335);
    if ((v335 & 0x3F) + v332.i64[1] >= 0x40)
    {
      *(v261 + ((v335 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v336;
      v336 = v331.i64[1] >> -(v335 & 0x3F);
      if ((v335 & 0x3F) == 0)
      {
        v336 = 0;
      }
    }

    v337 = v335 + v332.i64[1];
    v338 = vextq_s8(0, v168, 0xCuLL);
    v339.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v339.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v340.i64[0] = -1;
    v340.i64[1] = -1;
    v341 = vandq_s8(vshlq_u8(v340, vaddq_s8(v338, v339)), v334);
    v342 = vmovl_u8(*v338.i8);
    v343 = vmovl_high_u8(v338);
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
    v356 = (v354.i64[0] << v337) | v336;
    if (v355.i64[0] + (v337 & 0x3F) >= 0x40)
    {
      *(v261 + ((v337 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v356;
      v356 = v354.i64[0] >> -(v337 & 0x3F);
      if ((v337 & 0x3F) == 0)
      {
        v356 = 0;
      }
    }

    v357 = vceqq_s8(v76, v167);
    v358 = vaddq_s8(v548, v313);
    v359 = v355.i64[0] + v337;
    v360 = v356 | (v354.i64[1] << v359);
    if ((v359 & 0x3F) + v355.i64[1] >= 0x40)
    {
      *(v261 + ((v359 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v360;
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
    v365 = vandq_s8(vshlq_u8(v364, vaddq_s8(v168, v363)), v358);
    v366 = vmovl_u8(*v168.i8);
    v367 = vmovl_high_u8(v168);
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
      *(v261 + ((v362 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v380;
      v380 = v378.i64[0] >> -(v362 & 0x3F);
      if ((v362 & 0x3F) == 0)
      {
        v380 = 0;
      }
    }

    v381 = vaddq_s8(v549, v361);
    v382 = v379.i64[0] + v362;
    v383 = v380 | (v378.i64[1] << v382);
    if ((v382 & 0x3F) + v379.i64[1] >= 0x40)
    {
      *(v261 + ((v382 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v383;
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
    v387 = vshlq_u8(v386, vaddq_s8(v167, v385));
    v388 = vandq_s8(v387, v381);
    v389 = vmovl_u8(*v388.i8);
    v390 = vmovl_high_u8(v388);
    v391 = vmovl_u8(*v167.i8);
    v392 = vmovl_high_u8(v167);
    v393 = vtrn1q_s16(0, v391);
    v394 = vtrn1q_s16(0, v392);
    v395 = vpaddq_s16(vshlq_u16(v389, v393), vshlq_u16(v390, v394));
    v396 = vpaddq_s16(v391, v392);
    v397 = vmovl_u16(*v395.i8);
    v398 = vmovl_high_u16(v395);
    v399 = vmovl_u16(*v396.i8);
    v400 = vmovl_high_u16(v396);
    v401 = vtrn1q_s32(0, v399);
    v402 = vtrn1q_s32(0, v400);
    v403 = vpaddq_s32(vshlq_u32(v397, v401), vshlq_u32(v398, v402));
    v404 = vpaddq_s32(v399, v400);
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
    v409 = vzip1q_s64(0, v408);
    v410 = vzip1q_s64(0, v405);
    v411 = vpaddq_s64(vshlq_u64(v406, v409), vshlq_u64(v407, v410));
    v412 = vpaddq_s64(v408, v405);
    v413 = (v411.i64[0] << v384) | v383;
    if (v412.i64[0] + (v384 & 0x3F) >= 0x40)
    {
      *(v261 + ((v384 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v413;
      if ((v384 & 0x3F) != 0)
      {
        v413 = v411.i64[0] >> -(v384 & 0x3F);
      }

      else
      {
        v413 = 0;
      }
    }

    v414 = vceqq_s8(v76, v166);
    v415 = vaddq_s8(v550, v361);
    v416 = v412.i64[0] + v384;
    v417 = v413 | (v411.i64[1] << v416);
    if ((v416 & 0x3F) + v412.i64[1] >= 0x40)
    {
      *(v261 + ((v416 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v417;
      v417 = v411.i64[1] >> -(v416 & 0x3F);
      if ((v416 & 0x3F) == 0)
      {
        v417 = 0;
      }
    }

    v418 = vandq_s8(v164, v414);
    v419 = v416 + v412.i64[1];
    v420 = vandq_s8(v387, v415);
    v421 = vpaddq_s16(vshlq_u16(vmovl_u8(*v420.i8), v393), vshlq_u16(vmovl_high_u8(v420), v394));
    v422 = vpaddq_s32(vshlq_u32(vmovl_u16(*v421.i8), v401), vshlq_u32(vmovl_high_u16(v421), v402));
    v423.i64[0] = v422.u32[0];
    v423.i64[1] = v422.u32[1];
    v424 = v423;
    v423.i64[0] = v422.u32[2];
    v423.i64[1] = v422.u32[3];
    v425 = vpaddq_s64(vshlq_u64(v424, v409), vshlq_u64(v423, v410));
    v426 = (v425.i64[0] << v419) | v417;
    if (v412.i64[0] + (v419 & 0x3F) >= 0x40)
    {
      *(v261 + ((v419 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v426;
      v426 = v425.i64[0] >> -(v419 & 0x3F);
      if ((v419 & 0x3F) == 0)
      {
        v426 = 0;
      }
    }

    v427 = vaddq_s8(v551, v418);
    v428 = v412.i64[0] + v419;
    v429 = (v412.i64[0] + v419) & 0x3F;
    v430 = v426 | (v425.i64[1] << v428);
    if ((v428 & 0x3F) + v412.i64[1] >= 0x40)
    {
      *(v261 + ((v428 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v430;
      v430 = v425.i64[1] >> -v429;
      if (!v429)
      {
        v430 = 0;
      }
    }

    v431 = v428 + v412.i64[1];
    v432.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v432.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v433.i64[0] = -1;
    v433.i64[1] = -1;
    v434 = vshlq_u8(v433, vaddq_s8(v166, v432));
    v435 = vandq_s8(v434, v427);
    v436 = vmovl_u8(*v435.i8);
    v437 = vmovl_high_u8(v435);
    v438 = vmovl_u8(*v166.i8);
    v439 = vmovl_high_u8(v166);
    v440 = vtrn1q_s16(0, v438);
    v441 = vtrn1q_s16(0, v439);
    v442 = vpaddq_s16(vshlq_u16(v436, v440), vshlq_u16(v437, v441));
    v443 = vpaddq_s16(v438, v439);
    v444 = vmovl_u16(*v442.i8);
    v445 = vmovl_high_u16(v442);
    v446 = vmovl_u16(*v443.i8);
    v447 = vmovl_high_u16(v443);
    v448 = vtrn1q_s32(0, v446);
    v449 = vtrn1q_s32(0, v447);
    v450 = vpaddq_s32(vshlq_u32(v444, v448), vshlq_u32(v445, v449));
    v451 = vpaddq_s32(v446, v447);
    v452.i64[0] = v450.u32[0];
    v452.i64[1] = v450.u32[1];
    v453 = v452;
    v452.i64[0] = v450.u32[2];
    v452.i64[1] = v450.u32[3];
    v454 = v452;
    v452.i64[0] = v451.u32[0];
    v452.i64[1] = v451.u32[1];
    v455 = v452;
    v452.i64[0] = v451.u32[2];
    v452.i64[1] = v451.u32[3];
    v456 = vzip1q_s64(0, v455);
    v457 = vzip1q_s64(0, v452);
    v458 = vpaddq_s64(vshlq_u64(v453, v456), vshlq_u64(v454, v457));
    v459 = vpaddq_s64(v455, v452);
    v460 = (v458.i64[0] << v431) | v430;
    if (v459.i64[0] + (v431 & 0x3F) >= 0x40)
    {
      *(v261 + ((v431 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v460;
      if ((v431 & 0x3F) != 0)
      {
        v460 = v458.i64[0] >> -(v431 & 0x3F);
      }

      else
      {
        v460 = 0;
      }
    }

    v461 = vceqq_s8(v76, v165);
    v462 = vaddq_s8(v552, v418);
    v463 = v459.i64[0] + v431;
    v464 = v460 | (v458.i64[1] << v463);
    if ((v463 & 0x3F) + v459.i64[1] >= 0x40)
    {
      *(v261 + ((v463 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v464;
      v464 = v458.i64[1] >> -(v463 & 0x3F);
      if ((v463 & 0x3F) == 0)
      {
        v464 = 0;
      }
    }

    v465 = vandq_s8(v164, v461);
    v466 = v463 + v459.i64[1];
    v467 = vandq_s8(v434, v462);
    v468 = vpaddq_s16(vshlq_u16(vmovl_u8(*v467.i8), v440), vshlq_u16(vmovl_high_u8(v467), v441));
    v469 = vpaddq_s32(vshlq_u32(vmovl_u16(*v468.i8), v448), vshlq_u32(vmovl_high_u16(v468), v449));
    v470.i64[0] = v469.u32[0];
    v470.i64[1] = v469.u32[1];
    v471 = v470;
    v470.i64[0] = v469.u32[2];
    v470.i64[1] = v469.u32[3];
    v472 = vpaddq_s64(vshlq_u64(v471, v456), vshlq_u64(v470, v457));
    v473 = (v472.i64[0] << v466) | v464;
    if (v459.i64[0] + (v466 & 0x3F) >= 0x40)
    {
      *(v261 + ((v466 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v473;
      v473 = v472.i64[0] >> -(v466 & 0x3F);
      if ((v466 & 0x3F) == 0)
      {
        v473 = 0;
      }
    }

    v474 = vaddq_s8(v553, v465);
    v475 = v459.i64[0] + v466;
    v476 = (v459.i64[0] + v466) & 0x3F;
    v477 = v473 | (v472.i64[1] << v475);
    if ((v475 & 0x3F) + v459.i64[1] >= 0x40)
    {
      *(v261 + ((v475 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v477;
      v477 = v472.i64[1] >> -v476;
      if (!v476)
      {
        v477 = 0;
      }
    }

    v478 = v475 + v459.i64[1];
    v479.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v479.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v480.i64[0] = -1;
    v480.i64[1] = -1;
    v481 = vshlq_u8(v480, vaddq_s8(v165, v479));
    v482 = vandq_s8(v481, v474);
    v483 = vmovl_u8(*v482.i8);
    v484 = vmovl_high_u8(v482);
    v485 = vmovl_u8(*v165.i8);
    v486 = vmovl_high_u8(v165);
    v487 = vtrn1q_s16(0, v485);
    v488 = vtrn1q_s16(0, v486);
    v489 = vpaddq_s16(vshlq_u16(v483, v487), vshlq_u16(v484, v488));
    v490 = vpaddq_s16(v485, v486);
    v491 = vmovl_u16(*v489.i8);
    v492 = vmovl_high_u16(v489);
    v493 = vmovl_u16(*v490.i8);
    v494 = vmovl_high_u16(v490);
    v495 = vtrn1q_s32(0, v493);
    v496 = vtrn1q_s32(0, v494);
    v497 = vpaddq_s32(vshlq_u32(v491, v495), vshlq_u32(v492, v496));
    v498 = vpaddq_s32(v493, v494);
    v499.i64[0] = v497.u32[0];
    v499.i64[1] = v497.u32[1];
    v500 = v499;
    v499.i64[0] = v497.u32[2];
    v499.i64[1] = v497.u32[3];
    v501 = v499;
    v499.i64[0] = v498.u32[0];
    v499.i64[1] = v498.u32[1];
    v502 = v499;
    v499.i64[0] = v498.u32[2];
    v499.i64[1] = v498.u32[3];
    v503 = vzip1q_s64(0, v502);
    v504 = vzip1q_s64(0, v499);
    v505 = vpaddq_s64(vshlq_u64(v500, v503), vshlq_u64(v501, v504));
    v506 = vpaddq_s64(v502, v499);
    v507 = (v505.i64[0] << v478) | v477;
    if (v506.i64[0] + (v478 & 0x3F) > 0x3F)
    {
      *(v261 + ((v478 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v507;
      if ((v478 & 0x3F) != 0)
      {
        v507 = v505.i64[0] >> -(v478 & 0x3F);
      }

      else
      {
        v507 = 0;
      }
    }

    v508 = vaddq_s8(v163, v465);
    v509 = v506.i64[0] + v478;
    v510 = v507 | (v505.i64[1] << v509);
    if ((v509 & 0x3F) + v506.i64[1] >= 0x40)
    {
      *(v261 + ((v509 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v510;
      v510 = v505.i64[1] >> -(v509 & 0x3F);
      if ((v509 & 0x3F) == 0)
      {
        v510 = 0;
      }
    }

    v511 = v509 + v506.i64[1];
    v512 = vandq_s8(v481, v508);
    v513 = vpaddq_s16(vshlq_u16(vmovl_u8(*v512.i8), v487), vshlq_u16(vmovl_high_u8(v512), v488));
    v514 = vpaddq_s32(vshlq_u32(vmovl_u16(*v513.i8), v495), vshlq_u32(vmovl_high_u16(v513), v496));
    v515.i64[0] = v514.u32[0];
    v515.i64[1] = v514.u32[1];
    v516 = v515;
    v515.i64[0] = v514.u32[2];
    v515.i64[1] = v514.u32[3];
    v517 = vpaddq_s64(vshlq_u64(v516, v503), vshlq_u64(v515, v504));
    v518 = (v517.i64[0] << v511) | v510;
    if (v506.i64[0] + (v511 & 0x3F) >= 0x40)
    {
      *(v261 + ((v511 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v518;
      v518 = v517.i64[0] >> -(v511 & 0x3F);
      if ((v511 & 0x3F) == 0)
      {
        v518 = 0;
      }
    }

    v519 = v506.i64[0] + v511;
    v520 = (v506.i64[0] + v511) & 0x3F;
    v521 = v518 | (v517.i64[1] << (v506.i8[0] + v511));
    if ((v520 + v506.i64[1]) >= 0x40)
    {
      *(v261 + ((v519 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v521;
      v521 = v517.i64[1] >> -v520;
      if (!v520)
      {
        v521 = 0;
      }
    }

    v522 = v519 + v506.i64[1];
    if ((v522 & 0x3F) != 0)
    {
      *(v261 + ((v522 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v521;
    }

    result = (v522 - v262 + 7) >> 3;
    v171 = *a2 | (result - 1);
  }

LABEL_91:
  *a2 = v171;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(uint64_t result, uint64_t a2, uint16x8_t *a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 32, a2, v14, v13);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + v15, a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, v11 + v15 + 32, a2, v20, v19);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 64, a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 96, a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, v11 + v15 + 64, a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, v11 + v15 + 96, a2, v30, v29);
}

double AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(_OWORD *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 8 * (&v26 & 7);
  v5 = 10;
  v6 = v4;
  do
  {
    v7 = 64 - v6;
    if (64 - v6 >= v5)
    {
      v7 = v5;
    }

    *&v25[8 * v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v3) & ~(-1 << v7)) << v6;
    v3 += v7;
    v8 = v7 + v6;
    v2 += v8 >> 6;
    v6 = v8 & 0x3F;
    v5 -= v7;
  }

  while (v5);
  v9 = v6 - v4 + (v2 << 6);
  if (v9 - 23 >= 0xFFFFFFFFFFFFFFDFLL)
  {
    v10 = 10;
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

        *&v25[8 * v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v13) & ~(-1 << v15)) << v6;
        v13 += v15;
        v16 = v15 + v6;
        v2 += v16 >> 6;
        v6 = v16 & 0x3F;
        v14 -= v15;
      }

      while (v14);
      v9 = v6 - v4 + (v2 << 6);
    }
  }

  if (v9 - 31 >= 0xFFFFFFFFFFFFFFDFLL)
  {
    v17 = 0;
    v18 = 2;
    do
    {
      v19 = 64 - v6;
      if (64 - v6 >= v18)
      {
        v19 = v18;
      }

      *&v25[8 * v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v17) & ~(-1 << v19)) << v6;
      v17 += v19;
      v20 = v19 + v6;
      v2 += v20 >> 6;
      v6 = v20 & 0x3F;
      v18 -= v19;
    }

    while (v18);
  }

  v21 = (a1 + a2);
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  v23 = (a1 + 2 * a2);
  *v21 = 0u;
  v21[1] = 0u;
  v24 = (a1 + 2 * a2 + a2);
  *v23 = 0u;
  v23[1] = 0u;
  *v24 = 0u;
  v24[1] = 0u;
  return result;
}

uint64_t AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)13,AGX::AppleCompressionGen2::Vec<short>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unsigned int a5)
{
  v5 = a4[2];
  v6 = *a4;
  v7 = *a4 + 32;
  if (v5)
  {
    v8 = v5 >= v7;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = *a4 & 0x3F;
    v10 = (a4[1] + 8 * (v6 >> 6));
    v11 = *v10 >> v6;
    if (v9 >= 0x21)
    {
      v11 |= v10[1] << -v9;
    }

    *a4 = v7;
  }

  else
  {
    v11 = 0;
    *(a4 + 24) = 1;
  }

  *a1 = v11 & 0x1F;
  *(a1 + 2) = (v11 >> 5) & 0x1F;
  *(a1 + 4) = (v11 >> 10) & 0x1F;
  *(a1 + 6) = (v11 >> 15) & 0xF;
  *a2 = ((v11 >> 19) & 0xF) + 1;
  *(a2 + 2) = ((v11 >> 23) & 0xF) + 1;
  *(a2 + 4) = ((v11 >> 27) & 0xF) + 1;
  *(a2 + 6) = ((v11 >> 31) & 1) + 1;
  v12 = a4[2];
  v13 = *a4;
  v14 = *a4 + 32;
  if (v12 && v12 < v14)
  {
    LODWORD(v15) = 0;
    *(a4 + 24) = 1;
  }

  else
  {
    v16 = *a4 & 0x3F;
    v17 = (a4[1] + 8 * (v13 >> 6));
    v15 = *v17 >> v13;
    if (v16 >= 0x21)
    {
      v15 |= v17[1] << -v16;
    }

    *a4 = v14;
  }

  *a3 = v15 & 0x3FF;
  *(a3 + 2) = (v15 >> 10) & 0x3FF;
  *(a3 + 4) = (v15 >> 20) & 0x3FF;
  *(a3 + 6) = v15 >> 30;
  v18 = vld1q_dup_f64(a1);
  *a1 = v18;
  v19 = vld1q_dup_f64(a2);
  *a2 = v19;
  v20 = vld1q_dup_f64(a3);
  *a3 = v20;
  return a5 + 1;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(int64x2_t *a1, uint64_t a2, int64x2_t *a3, unsigned int a4)
{
  if (a4 == 127)
  {
    v23 = *a3;
    v24 = a3[1];
    v25 = a3[2];
    v26 = a3[3];
    v27 = a3[4];
    v28 = a3[5];
    v29 = a3[6];
    v30 = a3[7];
    v31 = (a1 + a2);
    *a1 = vzip1q_s64(*a3, v24);
    a1[1] = vzip1q_s64(v27, v28);
    v32 = (a1 + 2 * a2);
    *v31 = vzip2q_s64(v23, v24);
    v31[1] = vzip2q_s64(v27, v28);
    *v32 = vzip1q_s64(v25, v26);
    v32[1] = vzip1q_s64(v29, v30);
    v33 = (v32 + a2);
    *v33 = vzip2q_s64(v25, v26);
    v33[1] = vzip2q_s64(v29, v30);
    return 128;
  }

  else if (a4 == 3)
  {
    v19 = vld1q_dup_f32(a3->i32);
    *a1 = v19;
    a1[1] = v19;
    v20 = &a1->i8[a2];
    *v20 = v19;
    v20[1] = v19;
    v21 = (a1 + 2 * a2);
    *v21 = v19;
    v21[1] = v19;
    v22 = (a1 + 2 * a2 + a2);
    *v22 = v19;
    v22[1] = v19;
    return 4;
  }

  else if (a4)
  {
    v448 = v13;
    v449 = v12;
    v450 = v11;
    v451 = v10;
    v452 = v9;
    v453 = v8;
    v454 = v7;
    v455 = v6;
    v456 = v4;
    v457 = v5;
    v424 = 0;
    v423 = (8 * (a3 & 7)) | 0x400;
    v421 = 8 * (a3 & 7);
    v422 = a3 & 0xFFFFFFFFFFFFFFF8;
    result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)13,AGX::AppleCompressionGen2::Vec<short>>(&v442, v447, &v441, &v421, a4);
    v37.i64[0] = 0x3000300030003;
    v37.i64[1] = 0x3000300030003;
    v38 = v442;
    v39 = vandq_s8(v442, v37);
    v40 = vbicq_s8(v447[0], vceqq_s16(v39, v37));
    v447[0] = v40;
    v443 = v40;
    v444 = v40;
    v445 = v40;
    v446 = v40;
    v41.i64[0] = 0x202020202020202;
    v41.i64[1] = 0x202020202020202;
    v42 = vandq_s8(vmovl_s16(vtst_s16(*v442.i8, 0x4000400040004)), v41);
    v43 = v421;
    if (vmaxvq_s8(v42) < 1)
    {
      v59.i64[0] = -1;
      v59.i64[1] = -1;
      v60.i64[0] = -1;
      v60.i64[1] = -1;
      v61.i64[0] = -1;
      v61.i64[1] = -1;
      v62.i64[0] = -1;
      v62.i64[1] = -1;
      v54 = a1;
      v55 = a2;
    }

    else
    {
      v44 = vmovl_u8(*&vpaddq_s8(v42, v42));
      v45 = vmovl_u16(*&vpaddq_s16(v44, v44));
      v46 = vpaddq_s32(v45, v45).u64[0];
      v47.i64[0] = v46;
      v47.i64[1] = HIDWORD(v46);
      v48 = v47;
      v49 = vaddvq_s64(v47);
      v50 = v49;
      v51 = v421 + v49;
      if (v423)
      {
        _CF = v423 >= v51;
      }

      else
      {
        _CF = 1;
      }

      v53 = _CF;
      v54 = a1;
      v55 = a2;
      if (v49 <= 0x80 && (v53 & 1) != 0)
      {
        v36.i64[0] = 63;
        v56 = (v422 + 8 * (v421 >> 6));
        v57 = vaddq_s64(vdupq_lane_s64(vandq_s8(v421, v36).i64[0], 0), vzip1q_s64(0, v48));
        v58 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v56, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v57)), vshlq_u64(vdupq_lane_s64(v56->i64[0], 0), vnegq_s64(v57)));
        if ((v421 & 0x3F) + v50 >= 0x81)
        {
          v58 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v56[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v57)), vshlq_u64(vdupq_laneq_s64(v56[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v57))), v58);
        }

        v43 = v51;
      }

      else
      {
        v424 = 1;
        v58 = 0uLL;
      }

      v63 = vzip1_s32(*v45.i8, *&vextq_s8(v45, v45, 8uLL));
      v64.i64[0] = v63.u32[0];
      v64.i64[1] = v63.u32[1];
      v65 = vshlq_u64(v58, vnegq_s64(v64));
      v66 = vuzp1q_s32(vzip1q_s64(v58, v65), vzip2q_s64(v58, v65));
      v67 = vshlq_u32(v66, vnegq_s32((*&v44 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v68 = vuzp1q_s16(vzip1q_s32(v66, v67), vzip2q_s32(v66, v67));
      v69 = vshlq_u16(v68, vnegq_s16((*&v42 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
      v70 = vuzp1q_s8(vzip1q_s16(v68, v69), vzip2q_s16(v68, v69));
      v69.i64[0] = 0x101010101010101;
      v69.i64[1] = 0x101010101010101;
      v71 = vshlq_s8(v69, v42);
      v69.i64[0] = -1;
      v69.i64[1] = -1;
      v72 = vqtbl1q_s8(vandq_s8(vaddq_s8(v71, v69), v70), xmmword_29D2F0F70);
      *v70.i8 = vdup_lane_s32(*v72.i8, 0);
      *v69.i8 = vdup_lane_s32(*v72.i8, 1);
      v73 = vdupq_laneq_s32(v72, 2).u64[0];
      v72.i64[0] = vdupq_laneq_s32(v72, 3).u64[0];
      v443 = vsubw_s8(v443, *v70.i8);
      v444 = vsubw_s8(v444, *v69.i8);
      v445 = vsubw_s8(v445, v73);
      v446 = vsubw_s8(v446, *v72.i8);
      v62 = vmovl_s8(vceqz_s8(*v70.i8));
      v61 = vmovl_s8(vceqz_s8(*v69.i8));
      v60 = vmovl_s8(vceqz_s8(v73));
      v59 = vmovl_s8(vceqz_s8(*v72.i8));
    }

    v74.i64[0] = 0x8000800080008;
    v74.i64[1] = 0x8000800080008;
    v75 = 0uLL;
    v76 = vandq_s8(vextq_s8(vtstq_s16(v442, v74), 0, 8uLL), v40);
    v77 = vmovl_u16(*&vpaddq_s16(v76, v76));
    v78 = vpaddq_s32(v77, v77).u64[0];
    v79.i64[0] = v78;
    v79.i64[1] = HIDWORD(v78);
    v80 = v79;
    v81 = vaddvq_s64(v79);
    if (v423)
    {
      v82 = v423 >= v43 + v81;
    }

    else
    {
      v82 = 1;
    }

    v83 = v82;
    if (v81 <= 0x80 && (v83 & 1) != 0)
    {
      v84 = vaddq_s64(vdupq_n_s64(v43 & 0x3F), vzip1q_s64(0, v80));
      v85 = (v422 + 8 * (v43 >> 6));
      v75 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v85, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v84)), vshlq_u64(vdupq_lane_s64(v85->i64[0], 0), vnegq_s64(v84)));
      if ((v43 & 0x3F) + v81 >= 0x81)
      {
        v75 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v85[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v84)), vshlq_u64(vdupq_laneq_s64(v85[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v84))), v75);
      }

      v43 += v81;
    }

    else
    {
      v424 = 1;
    }

    v86 = vzip1_s32(*v77.i8, *&vextq_s8(v77, v77, 8uLL));
    v87.i64[0] = v86.u32[0];
    v87.i64[1] = v86.u32[1];
    v88 = vshlq_u64(v75, vnegq_s64(v87));
    v89 = vuzp1q_s32(vzip1q_s64(v75, v88), vzip2q_s64(v75, v88));
    v90.i64[0] = 0xFFFF0000FFFFLL;
    v90.i64[1] = 0xFFFF0000FFFFLL;
    v91 = vshlq_u32(v89, vnegq_s32(vandq_s8(v76, v90)));
    v92 = vuzp1q_s16(vzip1q_s32(v89, v91), vzip2q_s32(v89, v91));
    v91.i64[0] = 0xF000F000F000FLL;
    v91.i64[1] = 0xF000F000F000FLL;
    v93.i64[0] = 0x10001000100010;
    v93.i64[1] = 0x10001000100010;
    v94 = vshlq_s16(vshlq_s16(v92, vsubq_s16(v93, v76)), vaddq_s16(v76, v91));
    v447[3] = v94;
    v95 = v442.i8[0] & 3;
    if (v95 == 2)
    {
      if (v423)
      {
        v96 = v43 + 8;
        v97 = v43 + 16;
        if (v423 >= v43 + 8)
        {
          v43 += 8;
        }

        else
        {
          v97 = v43 + 8;
        }

        if (v423 >= v97)
        {
          v43 = v97;
        }

        if (v423 < v96 || v423 < v97)
        {
          v424 = 1;
        }
      }

      else
      {
        v43 += 16;
      }
    }

    v98 = 0uLL;
    v99 = vextq_s8(0, v443, 8uLL);
    v100 = vmovl_u16(*&vpaddq_s16(v99, v99));
    v101 = vpaddq_s32(v100, v100).u64[0];
    v102.i64[0] = v101;
    v102.i64[1] = HIDWORD(v101);
    v103 = v102;
    v104 = vaddvq_s64(v102);
    v105 = v43 + v104;
    if (v423)
    {
      v106 = v423 >= v105;
    }

    else
    {
      v106 = 1;
    }

    v107 = v106;
    if (v104 <= 0x80 && (v107 & 1) != 0)
    {
      v108 = v43 & 0x3F;
      v109 = vaddq_s64(vdupq_n_s64(v108), vzip1q_s64(0, v103));
      v110 = v422;
      v111 = (v422 + 8 * (v43 >> 6));
      v98 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v111, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v109)), vshlq_u64(vdupq_lane_s64(v111->i64[0], 0), vnegq_s64(v109)));
      if (v108 + v104 >= 0x81)
      {
        v98 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v111[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v109)), vshlq_u64(vdupq_laneq_s64(v111[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v109))), v98);
      }

      v112 = v424;
      v43 = v105;
    }

    else
    {
      v112 = 1;
      v110 = v422;
    }

    v113 = vzip1_s32(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
    v114.i64[0] = v113.u32[0];
    v114.i64[1] = v113.u32[1];
    v115 = vshlq_u64(v98, vnegq_s64(v114));
    v116 = vuzp1q_s32(vzip1q_s64(v98, v115), vzip2q_s64(v98, v115));
    v117.i64[0] = 0xFFFF0000FFFFLL;
    v117.i64[1] = 0xFFFF0000FFFFLL;
    v118 = vshlq_u32(v116, vnegq_s32(vandq_s8(v99, v117)));
    v119.i64[0] = 0xF000F000F000FLL;
    v119.i64[1] = 0xF000F000F000FLL;
    v120.i64[0] = 0x10001000100010;
    v120.i64[1] = 0x10001000100010;
    v121 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v116, v118), vzip2q_s32(v116, v118)), vsubq_s16(v120, v99)), vaddq_s16(v99, v119));
    v425 = v121;
    v122 = vmovl_u16(*&vpaddq_s16(v443, v443));
    v116.i64[0] = vpaddq_s32(v122, v122).u64[0];
    v114.i64[0] = v116.u32[0];
    v114.i64[1] = v116.u32[1];
    v123 = v114;
    v124 = vaddvq_s64(v114);
    v125 = v43 + v124;
    if (v423)
    {
      v126 = v423 >= v125;
    }

    else
    {
      v126 = 1;
    }

    v127 = v126;
    v128 = 0uLL;
    if (v124 <= 0x80 && v127)
    {
      v129 = v43 & 0x3F;
      v130 = vaddq_s64(vdupq_n_s64(v129), vzip1q_s64(0, v123));
      v131 = (v110 + 8 * (v43 >> 6));
      v132 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v131, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v130)), vshlq_u64(vdupq_lane_s64(v131->i64[0], 0), vnegq_s64(v130)));
      if (v129 + v124 >= 0x81)
      {
        v132 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v131[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v130)), vshlq_u64(vdupq_laneq_s64(v131[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v130))), v132);
      }
    }

    else
    {
      v112 = 1;
      v125 = v43;
      v132 = 0uLL;
    }

    v133 = vzip1_s32(*v122.i8, *&vextq_s8(v122, v122, 8uLL));
    v134.i64[0] = v133.u32[0];
    v134.i64[1] = v133.u32[1];
    v135 = vnegq_s64(v134);
    v136 = vshlq_u64(v132, v135);
    v137 = vuzp1q_s32(vzip1q_s64(v132, v136), vzip2q_s64(v132, v136));
    v138 = vnegq_s32(vandq_s8(v443, v117));
    v139 = vshlq_u32(v137, v138);
    v140 = vuzp1q_s16(vzip1q_s32(v137, v139), vzip2q_s32(v137, v139));
    v141 = vaddq_s16(v443, v119);
    v142 = vsubq_s16(v120, v443);
    v143 = vshlq_s16(vshlq_s16(v140, v142), v141);
    v426 = v143;
    v144 = v125 + v124;
    if (v423)
    {
      v145 = v423 >= v144;
    }

    else
    {
      v145 = 1;
    }

    v146 = v145;
    if (v124 <= 0x80 && v146)
    {
      v147 = v125 & 0x3F;
      v148 = vaddq_s64(vdupq_n_s64(v147), vzip1q_s64(0, v123));
      v149 = (v110 + 8 * (v125 >> 6));
      v128 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v149, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v148)), vshlq_u64(vdupq_lane_s64(v149->i64[0], 0), vnegq_s64(v148)));
      if (v147 + v124 >= 0x81)
      {
        v128 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v149[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v148)), vshlq_u64(vdupq_laneq_s64(v149[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v148))), v128);
      }
    }

    else
    {
      v112 = 1;
      v144 = v125;
    }

    v150 = vshlq_u64(v128, v135);
    v151 = vuzp1q_s32(vzip1q_s64(v128, v150), vzip2q_s64(v128, v150));
    v152 = vshlq_u32(v151, v138);
    v153 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v151, v152), vzip2q_s32(v151, v152)), v142), v141);
    v427 = v153;
    v154 = v144 + v124;
    if (v423)
    {
      v155 = v423 >= v154;
    }

    else
    {
      v155 = 1;
    }

    v156 = v155;
    v157 = 0uLL;
    if (v124 <= 0x80 && v156)
    {
      v158 = v144 & 0x3F;
      v159 = vaddq_s64(vdupq_n_s64(v158), vzip1q_s64(0, v123));
      v160 = (v110 + 8 * (v144 >> 6));
      v161 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v160, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v159)), vshlq_u64(vdupq_lane_s64(v160->i64[0], 0), vnegq_s64(v159)));
      if (v158 + v124 >= 0x81)
      {
        v161 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v160[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v159)), vshlq_u64(vdupq_laneq_s64(v160[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v159))), v161);
      }
    }

    else
    {
      v112 = 1;
      v154 = v144;
      v161 = 0uLL;
    }

    v162 = vshlq_u64(v161, v135);
    v163 = vuzp1q_s32(vzip1q_s64(v161, v162), vzip2q_s64(v161, v162));
    v164 = vshlq_u32(v163, v138);
    v165 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v163, v164), vzip2q_s32(v163, v164)), v142), v141);
    v428 = v165;
    v166 = vmovl_u16(*&vpaddq_s16(v444, v444));
    v167 = vpaddq_s32(v166, v166).u64[0];
    v168.i64[0] = v167;
    v168.i64[1] = HIDWORD(v167);
    v169 = v168;
    v170 = vaddvq_s64(v168);
    v171 = v170;
    v172 = v154 + v170;
    if (v423)
    {
      v173 = v423 >= v172;
    }

    else
    {
      v173 = 1;
    }

    v174 = v173;
    if (v170 <= 0x80 && v174)
    {
      v175 = v154 & 0x3F;
      v176 = vaddq_s64(vdupq_n_s64(v175), vzip1q_s64(0, v169));
      v177 = (v110 + 8 * (v154 >> 6));
      v157 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v177, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v176)), vshlq_u64(vdupq_lane_s64(v177->i64[0], 0), vnegq_s64(v176)));
      if (v175 + v171 >= 0x81)
      {
        v157 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v177[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v176)), vshlq_u64(vdupq_laneq_s64(v177[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v176))), v157);
      }
    }

    else
    {
      v112 = 1;
      v172 = v154;
    }

    v178 = vzip1_s32(*v166.i8, *&vextq_s8(v166, v166, 8uLL));
    v179.i64[0] = v178.u32[0];
    v179.i64[1] = v178.u32[1];
    v180 = vnegq_s64(v179);
    v181 = vshlq_u64(v157, v180);
    v182 = vuzp1q_s32(vzip1q_s64(v157, v181), vzip2q_s64(v157, v181));
    v183.i64[0] = 0xFFFF0000FFFFLL;
    v183.i64[1] = 0xFFFF0000FFFFLL;
    v184 = vnegq_s32(vandq_s8(v444, v183));
    v185 = vshlq_u32(v182, v184);
    v186 = vuzp1q_s16(vzip1q_s32(v182, v185), vzip2q_s32(v182, v185));
    v185.i64[0] = 0xF000F000F000FLL;
    v185.i64[1] = 0xF000F000F000FLL;
    v187 = vaddq_s16(v444, v185);
    v185.i64[0] = 0x10001000100010;
    v185.i64[1] = 0x10001000100010;
    v188 = vsubq_s16(v185, v444);
    v189 = vshlq_s16(vshlq_s16(v186, v188), v187);
    v429 = v189;
    v190 = v172 + v171;
    if (v423)
    {
      v191 = v423 >= v190;
    }

    else
    {
      v191 = 1;
    }

    v192 = v191;
    v193 = 0uLL;
    if (v171 <= 0x80 && v192)
    {
      v194 = v172 & 0x3F;
      v195 = vaddq_s64(vdupq_n_s64(v194), vzip1q_s64(0, v169));
      v196 = (v110 + 8 * (v172 >> 6));
      v197 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v196, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v195)), vshlq_u64(vdupq_lane_s64(v196->i64[0], 0), vnegq_s64(v195)));
      if (v194 + v171 >= 0x81)
      {
        v197 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v196[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v195)), vshlq_u64(vdupq_laneq_s64(v196[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v195))), v197);
      }
    }

    else
    {
      v112 = 1;
      v190 = v172;
      v197 = 0uLL;
    }

    v198 = vshlq_u64(v197, v180);
    v199 = vuzp1q_s32(vzip1q_s64(v197, v198), vzip2q_s64(v197, v198));
    v200 = vshlq_u32(v199, v184);
    v201 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v199, v200), vzip2q_s32(v199, v200)), v188), v187);
    v430 = v201;
    v202 = v190 + v171;
    if (v423)
    {
      v203 = v423 >= v202;
    }

    else
    {
      v203 = 1;
    }

    v204 = v203;
    if (v171 <= 0x80 && v204)
    {
      v205 = v190 & 0x3F;
      v206 = vaddq_s64(vdupq_n_s64(v205), vzip1q_s64(0, v169));
      v207 = (v110 + 8 * (v190 >> 6));
      v193 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v207, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v206)), vshlq_u64(vdupq_lane_s64(v207->i64[0], 0), vnegq_s64(v206)));
      if (v205 + v171 >= 0x81)
      {
        v193 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v207[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v206)), vshlq_u64(vdupq_laneq_s64(v207[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v206))), v193);
      }
    }

    else
    {
      v112 = 1;
      v202 = v190;
    }

    v208 = vshlq_u64(v193, v180);
    v209 = vuzp1q_s32(vzip1q_s64(v193, v208), vzip2q_s64(v193, v208));
    v210 = vshlq_u32(v209, v184);
    v211 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v209, v210), vzip2q_s32(v209, v210)), v188), v187);
    v431 = v211;
    v212 = v202 + v171;
    if (v423)
    {
      v213 = v423 >= v212;
    }

    else
    {
      v213 = 1;
    }

    v214 = v213;
    v215 = 0uLL;
    if (v171 <= 0x80 && v214)
    {
      v216 = v202 & 0x3F;
      v217 = vaddq_s64(vdupq_n_s64(v216), vzip1q_s64(0, v169));
      v218 = (v110 + 8 * (v202 >> 6));
      v219 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v218, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v217)), vshlq_u64(vdupq_lane_s64(v218->i64[0], 0), vnegq_s64(v217)));
      if (v216 + v171 >= 0x81)
      {
        v219 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v218[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v217)), vshlq_u64(vdupq_laneq_s64(v218[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v217))), v219);
      }
    }

    else
    {
      v112 = 1;
      v212 = v202;
      v219 = 0uLL;
    }

    v220 = vshlq_u64(v219, v180);
    v221 = vuzp1q_s32(vzip1q_s64(v219, v220), vzip2q_s64(v219, v220));
    v222 = vshlq_u32(v221, v184);
    v223 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v221, v222), vzip2q_s32(v221, v222)), v188), v187);
    v432 = v223;
    v224 = vmovl_u16(*&vpaddq_s16(v445, v445));
    v225 = vpaddq_s32(v224, v224).u64[0];
    v226.i64[0] = v225;
    v226.i64[1] = HIDWORD(v225);
    v227 = v226;
    v228 = vaddvq_s64(v226);
    v229 = v228;
    v230 = v212 + v228;
    if (v423)
    {
      v231 = v423 >= v230;
    }

    else
    {
      v231 = 1;
    }

    v232 = v231;
    if (v228 <= 0x80 && v232)
    {
      v233 = v212 & 0x3F;
      v234 = vaddq_s64(vdupq_n_s64(v233), vzip1q_s64(0, v227));
      v235 = (v110 + 8 * (v212 >> 6));
      v215 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v235, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v234)), vshlq_u64(vdupq_lane_s64(v235->i64[0], 0), vnegq_s64(v234)));
      if (v233 + v229 >= 0x81)
      {
        v215 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v235[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v234)), vshlq_u64(vdupq_laneq_s64(v235[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v234))), v215);
      }
    }

    else
    {
      v112 = 1;
      v230 = v212;
    }

    v236 = vzip1_s32(*v224.i8, *&vextq_s8(v224, v224, 8uLL));
    v237.i64[0] = v236.u32[0];
    v237.i64[1] = v236.u32[1];
    v238 = vnegq_s64(v237);
    v239 = vshlq_u64(v215, v238);
    v240 = vuzp1q_s32(vzip1q_s64(v215, v239), vzip2q_s64(v215, v239));
    v241.i64[0] = 0xFFFF0000FFFFLL;
    v241.i64[1] = 0xFFFF0000FFFFLL;
    v242 = vnegq_s32(vandq_s8(v445, v241));
    v243 = vshlq_u32(v240, v242);
    v244 = vuzp1q_s16(vzip1q_s32(v240, v243), vzip2q_s32(v240, v243));
    v243.i64[0] = 0xF000F000F000FLL;
    v243.i64[1] = 0xF000F000F000FLL;
    v245 = vaddq_s16(v445, v243);
    v243.i64[0] = 0x10001000100010;
    v243.i64[1] = 0x10001000100010;
    v246 = vsubq_s16(v243, v445);
    v247 = vshlq_s16(vshlq_s16(v244, v246), v245);
    v433 = v247;
    v248 = v230 + v229;
    if (v423)
    {
      v249 = v423 >= v248;
    }

    else
    {
      v249 = 1;
    }

    v250 = v249;
    v251 = 0uLL;
    if (v229 <= 0x80 && v250)
    {
      v252 = v230 & 0x3F;
      v253 = vaddq_s64(vdupq_n_s64(v252), vzip1q_s64(0, v227));
      v254 = (v110 + 8 * (v230 >> 6));
      v255 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v254, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v253)), vshlq_u64(vdupq_lane_s64(v254->i64[0], 0), vnegq_s64(v253)));
      if (v252 + v229 >= 0x81)
      {
        v255 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v254[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v253)), vshlq_u64(vdupq_laneq_s64(v254[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v253))), v255);
      }
    }

    else
    {
      v112 = 1;
      v248 = v230;
      v255 = 0uLL;
    }

    v256 = vshlq_u64(v255, v238);
    v257 = vuzp1q_s32(vzip1q_s64(v255, v256), vzip2q_s64(v255, v256));
    v258 = vshlq_u32(v257, v242);
    v259 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v257, v258), vzip2q_s32(v257, v258)), v246), v245);
    v434 = v259;
    v260 = v248 + v229;
    if (v423)
    {
      v261 = v423 >= v260;
    }

    else
    {
      v261 = 1;
    }

    v262 = v261;
    if (v229 <= 0x80 && v262)
    {
      v263 = v248 & 0x3F;
      v264 = vaddq_s64(vdupq_n_s64(v263), vzip1q_s64(0, v227));
      v265 = (v110 + 8 * (v248 >> 6));
      v251 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v265, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v264)), vshlq_u64(vdupq_lane_s64(v265->i64[0], 0), vnegq_s64(v264)));
      if (v263 + v229 >= 0x81)
      {
        v251 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v265[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v264)), vshlq_u64(vdupq_laneq_s64(v265[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v264))), v251);
      }
    }

    else
    {
      v112 = 1;
      v260 = v248;
    }

    v266 = vshlq_u64(v251, v238);
    v267 = vuzp1q_s32(vzip1q_s64(v251, v266), vzip2q_s64(v251, v266));
    v268 = vshlq_u32(v267, v242);
    v269 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v267, v268), vzip2q_s32(v267, v268)), v246), v245);
    v435 = v269;
    v270 = v260 + v229;
    if (v423)
    {
      v271 = v423 >= v270;
    }

    else
    {
      v271 = 1;
    }

    v272 = v271;
    v273 = 0uLL;
    if (v229 <= 0x80 && v272)
    {
      v274 = v260 & 0x3F;
      v275 = vaddq_s64(vdupq_n_s64(v274), vzip1q_s64(0, v227));
      v276 = (v110 + 8 * (v260 >> 6));
      v277 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v276, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v275)), vshlq_u64(vdupq_lane_s64(v276->i64[0], 0), vnegq_s64(v275)));
      if (v274 + v229 >= 0x81)
      {
        v277 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v276[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v275)), vshlq_u64(vdupq_laneq_s64(v276[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v275))), v277);
      }
    }

    else
    {
      v112 = 1;
      v270 = v260;
      v277 = 0uLL;
    }

    v278 = vshlq_u64(v277, v238);
    v279 = vuzp1q_s32(vzip1q_s64(v277, v278), vzip2q_s64(v277, v278));
    v280 = vshlq_u32(v279, v242);
    v281 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v279, v280), vzip2q_s32(v279, v280)), v246), v245);
    v436 = v281;
    v282 = vmovl_u16(*&vpaddq_s16(v446, v446));
    v283 = vpaddq_s32(v282, v282).u64[0];
    v284.i64[0] = v283;
    v284.i64[1] = HIDWORD(v283);
    v285 = v284;
    v286 = vaddvq_s64(v284);
    v287 = v286;
    v288 = v270 + v286;
    if (v423)
    {
      v289 = v423 >= v288;
    }

    else
    {
      v289 = 1;
    }

    v290 = v289;
    if (v286 <= 0x80 && v290)
    {
      v291 = v270 & 0x3F;
      v292 = vaddq_s64(vdupq_n_s64(v291), vzip1q_s64(0, v285));
      v293 = (v110 + 8 * (v270 >> 6));
      v273 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v293, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v292)), vshlq_u64(vdupq_lane_s64(v293->i64[0], 0), vnegq_s64(v292)));
      if (v291 + v287 >= 0x81)
      {
        v273 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v293[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v292)), vshlq_u64(vdupq_laneq_s64(v293[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v292))), v273);
      }
    }

    else
    {
      v112 = 1;
      v288 = v270;
    }

    v294 = vzip1_s32(*v282.i8, *&vextq_s8(v282, v282, 8uLL));
    v295.i64[0] = v294.u32[0];
    v295.i64[1] = v294.u32[1];
    v296 = vnegq_s64(v295);
    v297 = vshlq_u64(v273, v296);
    v298 = vuzp1q_s32(vzip1q_s64(v273, v297), vzip2q_s64(v273, v297));
    v297.i64[0] = 0xFFFF0000FFFFLL;
    v297.i64[1] = 0xFFFF0000FFFFLL;
    v299 = vnegq_s32(vandq_s8(v446, v297));
    v300 = vshlq_u32(v298, v299);
    v301 = vuzp1q_s16(vzip1q_s32(v298, v300), vzip2q_s32(v298, v300));
    v298.i64[0] = 0xF000F000F000FLL;
    v298.i64[1] = 0xF000F000F000FLL;
    v302 = vaddq_s16(v446, v298);
    v300.i64[0] = 0x10001000100010;
    v300.i64[1] = 0x10001000100010;
    v303 = vsubq_s16(v300, v446);
    v304 = vshlq_s16(vshlq_s16(v301, v303), v302);
    v437 = v304;
    v305 = v288 + v287;
    if (v423)
    {
      v306 = v423 >= v305;
    }

    else
    {
      v306 = 1;
    }

    v307 = v306;
    v308 = 0uLL;
    if (v287 <= 0x80 && v307)
    {
      v309 = v288 & 0x3F;
      v310 = vaddq_s64(vdupq_n_s64(v309), vzip1q_s64(0, v285));
      v311 = (v110 + 8 * (v288 >> 6));
      v312 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v311, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v310)), vshlq_u64(vdupq_lane_s64(v311->i64[0], 0), vnegq_s64(v310)));
      if (v309 + v287 >= 0x81)
      {
        v312 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v311[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v310)), vshlq_u64(vdupq_laneq_s64(v311[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v310))), v312);
      }
    }

    else
    {
      v112 = 1;
      v305 = v288;
      v312 = 0uLL;
    }

    v313 = vshlq_u64(v312, v296);
    v314 = vuzp1q_s32(vzip1q_s64(v312, v313), vzip2q_s64(v312, v313));
    v315 = vshlq_u32(v314, v299);
    v316 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v314, v315), vzip2q_s32(v314, v315)), v303), v302);
    v438 = v316;
    v317 = v305 + v287;
    if (v423)
    {
      v318 = v423 >= v317;
    }

    else
    {
      v318 = 1;
    }

    v319 = v318;
    if (v287 <= 0x80 && v319)
    {
      v320 = v305 & 0x3F;
      v321 = vaddq_s64(vdupq_n_s64(v320), vzip1q_s64(0, v285));
      v322 = (v110 + 8 * (v305 >> 6));
      v308 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v322, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v321)), vshlq_u64(vdupq_lane_s64(v322->i64[0], 0), vnegq_s64(v321)));
      if (v320 + v287 >= 0x81)
      {
        v308 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v322[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v321)), vshlq_u64(vdupq_laneq_s64(v322[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v321))), v308);
      }
    }

    else
    {
      v112 = 1;
      v317 = v305;
    }

    v323 = vshlq_u64(v308, v296);
    v324 = vuzp1q_s32(vzip1q_s64(v308, v323), vzip2q_s64(v308, v323));
    v325 = vshlq_u32(v324, v299);
    v326 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v324, v325), vzip2q_s32(v324, v325)), v303), v302);
    v439 = v326;
    v327 = v317 + v287;
    if (v423)
    {
      v328 = v423 >= v327;
    }

    else
    {
      v328 = 1;
    }

    v329 = v328;
    if (v287 > 0x80 || !v329)
    {
      goto LABEL_226;
    }

    v330 = vaddq_s64(vdupq_n_s64(v317 & 0x3F), vzip1q_s64(0, v285));
    v331 = (v110 + 8 * (v317 >> 6));
    v332 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v331, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v330)), vshlq_u64(vdupq_lane_s64(v331->i64[0], 0), vnegq_s64(v330)));
    if ((v317 & 0x3F) + v287 >= 0x81)
    {
      v332 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v331[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v330)), vshlq_u64(vdupq_laneq_s64(v331[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v330))), v332);
    }

    if ((v112 & 1) != 0 || v423 + 8 * result - v327 - 1024 >= 9 || v95 == 2)
    {
LABEL_226:
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(v54, v55);
      return 0;
    }

    else
    {
      v333 = vshlq_u64(v332, v296);
      v334 = vuzp1q_s32(vzip1q_s64(v332, v333), vzip2q_s64(v332, v333));
      v335 = vshlq_u32(v334, v299);
      v336 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v334, v335), vzip2q_s32(v334, v335)), v303), v302);
      v337 = vaddq_s16(vandq_s8(v94, v62), v121);
      v338 = vdupq_lane_s64(v94.i64[0], 0);
      v339 = vandq_s8(v62, v338);
      v340 = vsubq_s16(v337, v339);
      v341 = vsubq_s16(v143, v339);
      v342 = vsubq_s16(v153, v339);
      v343 = vsubq_s16(v165, v339);
      v344 = vandq_s8(v61, v338);
      v345 = vsubq_s16(v189, v344);
      v346 = vsubq_s16(v201, v344);
      v347 = vsubq_s16(v211, v344);
      v348 = vsubq_s16(v223, v344);
      v349 = vandq_s8(v60, v338);
      v350 = vsubq_s16(v247, v349);
      v351 = vsubq_s16(v259, v349);
      v352 = vsubq_s16(v269, v349);
      v353 = vsubq_s16(v281, v349);
      v354 = vandq_s8(v59, v338);
      v355 = vsubq_s16(v304, v354);
      v425 = v337;
      v356 = vsubq_s16(v316, v354);
      v357 = vsubq_s16(v326, v354);
      v437 = v355;
      v438 = v356;
      v358 = vsubq_s16(v336, v354);
      v439 = v357;
      v440 = v358;
      v359.i64[0] = 0x1000100010001;
      v359.i64[1] = 0x1000100010001;
      if (vaddvq_s16(vceqq_s16(v39, v359)))
      {
        v360 = vnegq_s16(vandq_s8(v442, v359));
        v361.i64[0] = v343.i64[0];
        v362.i64[1] = v340.i64[1];
        v361.i64[1] = v340.i64[0];
        v362.i64[0] = v343.i64[1];
        v363 = vbslq_s8(v360, v362, v340);
        v364 = vbslq_s8(v360, v361, v343);
        v362.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
        v362.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
        v365 = vandq_s8(vqtbl4q_s8(*(&v341 - 1), v362), v360);
        v459.val[0] = vaddq_s16(v363, vandq_s8(vqtbl4q_s8(*(&v341 - 1), xmmword_29D2F10B0), v360));
        v459.val[1] = vaddq_s16(v341, vandq_s8(vqtbl4q_s8(*(&v341 - 1), xmmword_29D2F10C0), v360));
        v459.val[2] = vaddq_s16(v342, v365);
        v459.val[3] = vaddq_s16(v364, v365);
        v366 = vandq_s8(vqtbl4q_s8(v459, v362), v360);
        v340 = vaddq_s16(v459.val[0], vandq_s8(vqtbl4q_s8(v459, xmmword_29D2F10D0), v360));
        v341 = vaddq_s16(v459.val[1], vandq_s8(vqtbl4q_s8(v459, xmmword_29D2F10E0), v360));
        v425 = v340;
        v426 = v341;
        v342 = vaddq_s16(v459.val[2], v366);
        v343 = vaddq_s16(v459.val[3], v366);
        v458.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v345.i8, xmmword_29D2F10B0), v360), v345);
        v458.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v345.i8, xmmword_29D2F10F0), v360), v346);
        v458.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v345.i8, v362), v360), v347);
        v458.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v345.i8, xmmword_29D2F1100), v360), v348);
        v367 = vandq_s8(vqtbl4q_s8(v458, xmmword_29D2F10D0), v360);
        v368 = vandq_s8(vqtbl4q_s8(v458, v362), v360);
        v345 = vaddq_s16(v367, v458.val[0]);
        v346 = vaddq_s16(v458.val[1], v367);
        v347 = vaddq_s16(v458.val[2], v368);
        v348 = vaddq_s16(v458.val[3], v368);
        v458.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v350.i8, xmmword_29D2F0EB0), v360), v350);
        v458.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v350.i8, xmmword_29D2F0FB0), v360), v351);
        v458.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v350.i8, xmmword_29D2F10B0), v360), v352);
        v458.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v350.i8, xmmword_29D2F10C0), v360), v353);
        v369 = vandq_s8(vqtbl4q_s8(v458, v362), v360);
        v350 = vaddq_s16(v458.val[0], v369);
        v351 = vaddq_s16(v458.val[1], v369);
        v352 = vaddq_s16(v458.val[2], vandq_s8(vqtbl4q_s8(v458, xmmword_29D2F0FE0), v360));
        v353 = vaddq_s16(v458.val[3], vandq_s8(vqtbl4q_s8(v458, xmmword_29D2F1110), v360));
        v459.val[0] = v437;
        v459.val[1] = v438;
        v38 = v442;
        v459.val[2] = v439;
        v459.val[3] = v440;
        v458.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(v459, xmmword_29D2F0EB0), v360), v437);
        v458.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(v459, xmmword_29D2F1120), v360), v438);
        v427 = v342;
        v428 = v343;
        v458.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(v459, xmmword_29D2F10B0), v360), v439);
        v458.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(v459, xmmword_29D2F10C0), v360), v440);
        v370 = vandq_s8(vqtbl4q_s8(v458, v362), v360);
        v355 = vaddq_s16(v458.val[0], v370);
        v356 = vaddq_s16(v458.val[1], v370);
        v357 = vaddq_s16(v458.val[2], vandq_s8(vqtbl4q_s8(v458, xmmword_29D2F0FE0), v360));
        v358 = vaddq_s16(v458.val[3], vandq_s8(vqtbl4q_s8(v458, xmmword_29D2F1130), v360));
      }

      v371 = vaddq_s16(v441, v340);
      v372 = vaddq_s16(v341, v441);
      v373 = vaddq_s16(v342, v441);
      v374 = vaddq_s16(v343, v441);
      v375 = vaddq_s16(v345, v441);
      v376 = vaddq_s16(v346, v441);
      v377 = vaddq_s16(v347, v441);
      v378 = vaddq_s16(v348, v441);
      v379 = vaddq_s16(v350, v441);
      v380 = vaddq_s16(v351, v441);
      v381 = vaddq_s16(v352, v441);
      v382 = vaddq_s16(v353, v441);
      v383 = vaddq_s16(v355, v441);
      v384 = vaddq_s16(v356, v441);
      v385 = vaddq_s16(v357, v441);
      v386 = vaddq_s16(v358, v441);
      v387.i64[0] = 0x10001000100010;
      v387.i64[1] = 0x10001000100010;
      v388 = vceqzq_s16(vandq_s8(v38, v387));
      v389 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v371, xmmword_29D2F1270), v388), v371);
      v390 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v372, xmmword_29D2F1270), v388), v372);
      v391 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v373, xmmword_29D2F1270), v388), v373);
      v392 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v374, xmmword_29D2F1270), v388), v374);
      v393 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v375, xmmword_29D2F1270), v388), v375);
      v394 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v376, xmmword_29D2F1270), v388), v376);
      v395 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v377, xmmword_29D2F1270), v388), v377);
      v396 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v378, xmmword_29D2F1270), v388), v378);
      v397 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v379, xmmword_29D2F1270), v388), v379);
      v398 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v380, xmmword_29D2F1270), v388), v380);
      v399 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v381, xmmword_29D2F1270), v388), v381);
      v400 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v382, xmmword_29D2F1270), v388), v382);
      v401 = vbicq_s8(vqtbl1q_s8(v386, xmmword_29D2F1270), v388);
      v402 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v383, xmmword_29D2F1270), v388), v383);
      v403 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v384, xmmword_29D2F1270), v388), v384);
      v404 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v385, xmmword_29D2F1270), v388), v385);
      v405 = vaddq_s16(v401, v386);
      __asm { FMOV            V6.4S, #1.875 }

      v384.i64[0] = 0xC0000000C0000000;
      v384.i64[1] = 0xC0000000C0000000;
      v410 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v389, 0x12uLL), v390, 0x12uLL), vbslq_s8(_Q6, vshrn_high_n_s64(vshrn_n_s64(v389, 0xCuLL), v390, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v389, 6uLL), v390, 6uLL), vuzp1q_s32(v389, v390))));
      v411 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v391, 0x12uLL), v392, 0x12uLL), vbslq_s8(_Q6, vshrn_high_n_s64(vshrn_n_s64(v391, 0xCuLL), v392, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v391, 6uLL), v392, 6uLL), vuzp1q_s32(v391, v392))));
      v412 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v393, 0x12uLL), v394, 0x12uLL), vbslq_s8(_Q6, vshrn_high_n_s64(vshrn_n_s64(v393, 0xCuLL), v394, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v393, 6uLL), v394, 6uLL), vuzp1q_s32(v393, v394))));
      v413 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v395, 0x12uLL), v396, 0x12uLL), vbslq_s8(_Q6, vshrn_high_n_s64(vshrn_n_s64(v395, 0xCuLL), v396, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v395, 6uLL), v396, 6uLL), vuzp1q_s32(v395, v396))));
      v414 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v397, 0x12uLL), v398, 0x12uLL), vbslq_s8(_Q6, vshrn_high_n_s64(vshrn_n_s64(v397, 0xCuLL), v398, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v397, 6uLL), v398, 6uLL), vuzp1q_s32(v397, v398))));
      v415 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v399, 0x12uLL), v400, 0x12uLL), vbslq_s8(_Q6, vshrn_high_n_s64(vshrn_n_s64(v399, 0xCuLL), v400, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v399, 6uLL), v400, 6uLL), vuzp1q_s32(v399, v400))));
      v416 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v402, 0x12uLL), v403, 0x12uLL), vbslq_s8(_Q6, vshrn_high_n_s64(vshrn_n_s64(v402, 0xCuLL), v403, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v402, 6uLL), v403, 6uLL), vuzp1q_s32(v402, v403))));
      v417 = (v54 + v55);
      *v54 = vzip1q_s64(v410, v411);
      v54[1] = vzip1q_s64(v414, v415);
      v418 = (v54 + 2 * v55);
      *v417 = vzip2q_s64(v410, v411);
      v417[1] = vzip2q_s64(v414, v415);
      v419 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v404, 0x12uLL), v405, 0x12uLL), vbslq_s8(_Q6, vshrn_high_n_s64(vshrn_n_s64(v404, 0xCuLL), v405, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v404, 6uLL), v405, 6uLL), vuzp1q_s32(v404, v405))));
      *v418 = vzip1q_s64(v412, v413);
      v418[1] = vzip1q_s64(v416, v419);
      v420 = (v418 + v55);
      *v420 = vzip2q_s64(v412, v413);
      v420[1] = vzip2q_s64(v416, v419);
    }
  }

  else
  {
    result = 0;
    *a1 = 0u;
    a1[1] = 0u;
    v16 = &a1->i8[a2];
    *v16 = 0u;
    *(v16 + 1) = 0u;
    v17 = &a1->i8[2 * a2];
    *v17 = 0u;
    *(v17 + 1) = 0u;
    v18 = &v16[2 * a2];
    *v18 = 0u;
    *(v18 + 1) = 0u;
  }

  return result;
}