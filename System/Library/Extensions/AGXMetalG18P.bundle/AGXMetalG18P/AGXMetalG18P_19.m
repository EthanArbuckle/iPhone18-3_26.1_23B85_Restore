uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(int8x16_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 64, a2, *a3);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 8, 64, v5, a3[1]);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 2, 64, v6, a3[2]);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 10, 64, v7, a3[3]);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 16, 64, v8, a3[4]);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 24, 64, v9, a3[5]);
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 18, 64, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 26, 64, v10 + v11, v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v6 = *(a3 + 16);
  v8 = *(a3 + a4);
  v7 = *(a3 + a4 + 16);
  v9.i64[0] = 0x1F0000001FLL;
  v9.i64[1] = 0x1F0000001FLL;
  v10.i64[0] = 0x1F0000001F00;
  v10.i64[1] = 0x1F0000001F00;
  v11.i64[0] = 0x1F0000001F0000;
  v11.i64[1] = 0x1F0000001F0000;
  v12.i64[0] = 0x100000001000000;
  v12.i64[1] = 0x100000001000000;
  v13 = vbslq_s8(v12, vshll_n_u16(*a3, 9uLL), vbslq_s8(v11, vshll_n_u16(*a3, 6uLL), vbslq_s8(v10, vshll_n_u16(*a3, 3uLL), vbslq_s8(v9, vmovl_u16(*a3), 0))));
  v14 = vbslq_s8(v12, vshll_high_n_u16(*a3, 9uLL), vbslq_s8(v11, vshll_high_n_u16(*a3, 6uLL), vbslq_s8(v10, vshll_high_n_u16(*a3, 3uLL), vbslq_s8(v9, vmovl_high_u16(*a3), 0))));
  v542 = v8;
  v15 = vbslq_s8(v12, vshll_n_u16(*v8.i8, 9uLL), vbslq_s8(v11, vshll_n_u16(*v8.i8, 6uLL), vbslq_s8(v10, vshll_n_u16(*v8.i8, 3uLL), vbslq_s8(v9, vmovl_u16(*v8.i8), 0))));
  v16 = vbslq_s8(v12, vshll_high_n_u16(v8, 9uLL), vbslq_s8(v11, vshll_high_n_u16(v8, 6uLL), vbslq_s8(v10, vshll_high_n_u16(v8, 3uLL), vbslq_s8(v9, vmovl_high_u16(v8), 0))));
  v17 = vbslq_s8(v12, vshll_n_u16(*v6.i8, 9uLL), vbslq_s8(v11, vshll_n_u16(*v6.i8, 6uLL), vbslq_s8(v10, vshll_n_u16(*v6.i8, 3uLL), vbslq_s8(v9, vmovl_u16(*v6.i8), 0))));
  v18 = vbslq_s8(v12, vshll_high_n_u16(v6, 9uLL), vbslq_s8(v11, vshll_high_n_u16(v6, 6uLL), vbslq_s8(v10, vshll_high_n_u16(v6, 3uLL), vbslq_s8(v9, vmovl_high_u16(v6), 0))));
  v543 = v7;
  v19 = vbslq_s8(v12, vshll_n_u16(*v7.i8, 9uLL), vbslq_s8(v11, vshll_n_u16(*v7.i8, 6uLL), vbslq_s8(v10, vshll_n_u16(*v7.i8, 3uLL), vbslq_s8(v9, vmovl_u16(*v7.i8), 0))));
  v20 = vbslq_s8(v12, vshll_high_n_u16(v7, 9uLL), vbslq_s8(v11, vshll_high_n_u16(v7, 6uLL), vbslq_s8(v10, vshll_high_n_u16(v7, 3uLL), vbslq_s8(v9, vmovl_high_u16(v7), 0))));
  v21 = vdupq_lane_s32(*v13.i8, 0);
  v22 = vshlq_s8(vshlq_s8(vsubq_s8(v15, v21), xmmword_29D2F1210), xmmword_29D2F1220);
  v23 = vshlq_s8(vshlq_s8(vsubq_s8(v17, v21), xmmword_29D2F1210), xmmword_29D2F1220);
  v24 = vshlq_s8(vshlq_s8(vsubq_s8(v18, v21), xmmword_29D2F1210), xmmword_29D2F1220);
  v555 = vshlq_s8(vshlq_s8(vsubq_s8(v13, v21), xmmword_29D2F1210), xmmword_29D2F1220);
  v556 = vshlq_s8(vshlq_s8(vsubq_s8(v14, v21), xmmword_29D2F1210), xmmword_29D2F1220);
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
  v552 = vshlq_s8(vshlq_s8(vsubq_s8(v16, v21), xmmword_29D2F1210), xmmword_29D2F1220);
  v34 = vqtbl1q_s8(vmaxq_s8(v22, v552), xmmword_29D2F0F70);
  v35 = vqtbl1q_s8(vminq_s8(v22, v552), xmmword_29D2F0F70);
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
  v554 = v21;
  v54 = vshlq_s8(vshlq_s8(vsubq_s8(v19, v21), xmmword_29D2F1210), xmmword_29D2F1220);
  v55 = vshlq_s8(vshlq_s8(vsubq_s8(v20, v21), xmmword_29D2F1210), xmmword_29D2F1220);
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
  v544 = vandq_s8(vsubq_s8(vshlq_s8(v74, vsubq_s8(v75, v71)), v63), v76);
  v77.i64[0] = 0x303030303030303;
  v77.i64[1] = 0x303030303030303;
  v538 = vmaxq_s8(vminq_s8(vsubq_s8(v73, v67), v77), 0);
  v536 = vmaxq_s8(vminq_s8(vsubq_s8(v73, v66), v77), 0);
  v537 = vmaxq_s8(vminq_s8(vsubq_s8(v73, v68), v77), 0);
  v540 = vmaxq_s8(vminq_s8(vsubq_s8(v73, v69), v77), 0);
  v74.i64[0] = 0x404040404040404;
  v74.i64[1] = 0x404040404040404;
  v553 = vorrq_s8(vbicq_s8(v74, vceqq_s8(vaddq_s8(v540, v537), vnegq_s8(vaddq_s8(v536, v538)))), vorrq_s8(vandq_s8(vceqzq_s8(v73), v77), vandq_s8(v76, v32)));
  v548 = v22;
  v549 = v23;
  v550 = v24;
  v551 = v54;
  v78 = vshlq_s8(vsubq_s8(v55, vqtbl1q_s8(v55, xmmword_29D2F11F0)), xmmword_29D2F1210);
  v79 = vshlq_s8(vshlq_s8(vsubq_s8(v22, vqtbl1q_s8(v22, xmmword_29D2F11F0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v80 = vshlq_s8(vshlq_s8(vsubq_s8(v23, vqtbl1q_s8(v23, xmmword_29D2F11F0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v546 = v55;
  v81 = vshlq_s8(vshlq_s8(vsubq_s8(v24, vqtbl1q_s8(v24, xmmword_29D2F11F0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v82 = vshlq_s8(vshlq_s8(vsubq_s8(v54, vqtbl1q_s8(v54, xmmword_29D2F11F0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v83 = vshlq_s8(v78, xmmword_29D2F1220);
  v534 = vshlq_s8(vshlq_s8(vsubq_s8(v556, vqtbl1q_s8(v556, xmmword_29D2F11F0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v535 = vshlq_s8(vshlq_s8(vsubq_s8(v555, vqtbl1q_s8(v555, xmmword_29D2F11F0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v84 = vqtbl1q_s8(vmaxq_s8(v535, v534), xmmword_29D2F0F70);
  v85 = vqtbl1q_s8(vminq_s8(v535, v534), xmmword_29D2F0F70);
  v86 = vpmaxq_s8(v84, v84);
  v87 = vpminq_s8(v85, v85);
  v88 = vpmaxq_s8(v86, v86);
  v89 = vpminq_s8(v87, v87);
  v90 = vzip1q_s8(v88, v89);
  v91 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v90)), vceqzq_s8(v90));
  v92 = vpmaxq_s8(v91, v91);
  v532 = vshlq_s8(vshlq_s8(vsubq_s8(v552, vqtbl1q_s8(v552, xmmword_29D2F11F0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v533 = v79;
  v93 = vqtbl1q_s8(vmaxq_s8(v79, v532), xmmword_29D2F0F70);
  v94 = vqtbl1q_s8(vminq_s8(v79, v532), xmmword_29D2F0F70);
  v95 = vpmaxq_s8(v93, v93);
  v96 = vpminq_s8(v94, v94);
  v97 = vpmaxq_s8(v95, v95);
  v98 = vpminq_s8(v96, v96);
  v99 = vmaxq_s8(v88, v97);
  v100 = vminq_s8(v89, v98);
  v101 = vzip1q_s8(v97, v98);
  v102 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v101)), vceqzq_s8(v101));
  v103 = vpmaxq_s8(v102, v102);
  v530 = v81;
  v531 = v80;
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
  v528 = v83;
  v529 = v82;
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
  v527 = v121;
  v126 = vclzq_s8(vsubq_s8(vmaxq_s8(v110, v119), v121));
  v127 = vsubq_s8(v32, v126);
  v128 = vcgtq_s8(v125, v127);
  v129 = vminq_s8(v127, v125);
  v79.i64[0] = 0x1010101010101010;
  v79.i64[1] = 0x1010101010101010;
  v125.i64[0] = 0x1818181818181818;
  v125.i64[1] = 0x1818181818181818;
  v526 = v128;
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
  v142 = vaddq_s16(vaddw_s8((*&vshll_n_u8(*v553.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9)), vbic_s8(*v73.i8, vcgt_u8(0x808080808080808, *v553.i8))), vandq_s8(vceqq_s16((*&vmovl_u8(*v553.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v82), v132));
  v143 = vsubq_s8(v73, v536);
  v144 = vsubq_s8(v73, v537);
  v145 = vsubq_s8(v73, v540);
  v146 = vsubq_s8(v73, v538);
  v147 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(v142, *v143.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v144.i8, *v146.i8), *v145.i8), 3uLL)), v141)), 0);
  v148 = vaddlvq_s8(v147);
  v150 = a5 < 2 || a6 == 0;
  if (v148)
  {
    v151.i64[0] = 0x707070707070707;
    v151.i64[1] = 0x707070707070707;
    v152.i64[0] = -1;
    v152.i64[1] = -1;
    v554 = vbslq_s8(v147, vsubq_s8(v554, vqtbl1q_s8(v554, xmmword_29D2F11F0)), v554);
    v555 = vbslq_s8(v147, v535, v555);
    v556 = vbslq_s8(v147, v534, v556);
    v548 = vbslq_s8(v147, v533, v548);
    v153 = vbslq_s8(v147, v532, v552);
    v549 = vbslq_s8(v147, v531, v549);
    v550 = vbslq_s8(v147, v530, v550);
    v551 = vbslq_s8(v147, v529, v551);
    v539 = vbslq_s8(v147, v135, v143);
    v146 = vbslq_s8(v147, v136, v146);
    v541 = vbslq_s8(v147, v137, v144);
    v145 = vbslq_s8(v147, v138, v145);
    v154 = vbslq_s8(v147, vandq_s8(vsubq_s8(vshlq_s8(v152, vsubq_s8(v151, v126)), v527), v526), v544);
    v73 = vbslq_s8(v147, v129, v73);
    v553 = vbslq_s8(v147, v139, v553);
    v155 = vbslq_s8(v147, v528, v546);
    if (v150)
    {
LABEL_10:
      v156 = v153;
      v158 = v555;
      v157 = v556;
      v159 = *(a3 + 16);
      v160 = v541;
      v162 = v553;
      v161 = v554.i32[0];
      v163 = v539;
      goto LABEL_16;
    }
  }

  else
  {
    v539 = v143;
    v541 = v144;
    v153 = v552;
    v154 = v544;
    v155 = v546;
    if (v150)
    {
      goto LABEL_10;
    }
  }

  v545 = v154;
  v547 = v155;
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
  v175 = vshlq_s8(vsubq_s8(v18, vqtbl2q_s8(*v17.i8, xmmword_29D2F0F80)), xmmword_29D2F1210);
  v176 = v145;
  v177 = vshlq_s8(v171, xmmword_29D2F1210);
  v178 = vshlq_s8(v173, xmmword_29D2F1210);
  v179 = vshlq_s8(vshlq_s8(v166, xmmword_29D2F1210), xmmword_29D2F1220);
  v180 = vshlq_s8(vshlq_s8(v172, xmmword_29D2F1210), xmmword_29D2F1220);
  v181 = vshlq_s8(vshlq_s8(vsubq_s8(v15, vqtbl2q_s8(*v15.i8, xmmword_29D2F0FA0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v182 = vshlq_s8(vshlq_s8(vsubq_s8(v16, vqtbl2q_s8(*v15.i8, xmmword_29D2F1040)), xmmword_29D2F1210), xmmword_29D2F1220);
  v183 = vshlq_s8(vshlq_s8(vsubq_s8(v17, vqtbl2q_s8(*v17.i8, xmmword_29D2F1050)), xmmword_29D2F1210), xmmword_29D2F1220);
  v184 = vshlq_s8(v175, xmmword_29D2F1220);
  v185 = vshlq_s8(v177, xmmword_29D2F1220);
  v186 = vshlq_s8(v178, xmmword_29D2F1220);
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
  v162 = v553;
  v249 = vmovl_s8(*v553.i8);
  v239.i64[0] = 0x8000800080008;
  v239.i64[1] = 0x8000800080008;
  v250 = vbicq_s8(vmovl_s8(*v225.i8), vceqzq_s16(vandq_s8(v249, v239)));
  v251 = vandq_s8(v249, v248);
  v248.i64[0] = 0x2000200020002;
  v248.i64[1] = 0x2000200020002;
  v252 = vandq_s8(vceqq_s16(v251, v248), v239);
  v160 = v541;
  v163 = v539;
  v253 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v250, vandq_s8(vshll_n_s8(*v553.i8, 1uLL), v239)), v252), *v539.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v541.i8, *v174.i8), *v176.i8), 3uLL)), vaddq_s16(vmlal_s8(vaddw_u8(vmovl_s8(vbic_s8(*v235.i8, vcgt_u8(0x808080808080808, *v247.i8))), vand_s8(vadd_s8(*v247.i8, *v247.i8), 0x808080808080808)), *v242.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v244.i8, *v243.i8), *v245.i8), 3uLL)))), 0);
  if (vaddlvq_s8(v253))
  {
    v254.i64[0] = 0x707070707070707;
    v254.i64[1] = 0x707070707070707;
    v255 = vsubq_s8(v254, v232);
    v254.i64[0] = -1;
    v254.i64[1] = -1;
    v256 = vandq_s8(vsubq_s8(vshlq_s8(v254, v255), v227), v234);
    v161 = vbslq_s8(v253, vextq_s8(v14, v14, 0xCuLL), v554).u32[0];
    v158 = vbslq_s8(v253, v179, v555);
    v157 = vbslq_s8(v253, v180, v556);
    v548 = vbslq_s8(v253, v181, v548);
    v156 = vbslq_s8(v253, v182, v153);
    v549 = vbslq_s8(v253, v183, v549);
    v550 = vbslq_s8(v253, v184, v550);
    v551 = vbslq_s8(v253, v185, v551);
    v155 = vbslq_s8(v253, v186, v547);
    v163 = vbslq_s8(v253, v242, v539);
    v146 = vbslq_s8(v253, v243, v174);
    v160 = vbslq_s8(v253, v244, v541);
    v145 = vbslq_s8(v253, v245, v176);
    v154 = vbslq_s8(v253, v256, v545);
    v162 = vbslq_s8(v253, v247, v553);
    v73 = vbslq_s8(v253, v235, v225);
    v159 = *(a3 + 16);
  }

  else
  {
    v154 = v545;
    v155 = v547;
    v73 = v225;
    v156 = v153;
    v145 = v176;
    v158 = v555;
    v157 = v556;
    v146 = v174;
    v159 = *(a3 + 16);
    v161 = v554.i32[0];
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
    *(a1 + 16) = v542;
    v164 = 63;
    *(a1 + 32) = v159;
    *(a1 + 48) = v543;
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
    v267 = veor_s8(v266, 0xFF00FF00FF00FFLL);
    v268 = vadd_s16(v266, 0x7000700070007);
    v269 = vmovl_u16(vceqz_s16((*&v266 & 0xFF00FF00FF00FFLL)));
    v270.i64[0] = v269.u32[0];
    v270.i64[1] = v269.u32[1];
    v271 = vshrq_n_s64(vshlq_n_s64(v270, 0x38uLL), 0x38uLL);
    v270.i64[0] = v269.u32[2];
    v270.i64[1] = v269.u32[3];
    v272 = vshrq_n_s64(vshlq_n_s64(v270, 0x38uLL), 0x38uLL);
    v273 = vand_s8(v268, 0x7000700070007);
    v273.i16[3] = vand_s8(v267, 0x1000100010001).i16[3];
    v274 = vshlq_u32(vmovl_u16(v273), xmmword_29D2F1070);
    v270.i64[0] = v274.u32[0];
    v270.i64[1] = v274.u32[1];
    v275 = v270;
    v270.i64[0] = v274.u32[2];
    v270.i64[1] = v274.u32[3];
    v276 = vorrq_s8(vbicq_s8(v275, v271), vbicq_s8(v270, v272));
    v277 = *&vorr_s8(*v276.i8, *&vextq_s8(v276, v276, 8uLL)) | (32 * (v162.i8[1] & 0x1F)) | ((v162.i8[3] & 0x1F) << 15) | ((v162.i8[2] & 0x1F) << 10) | v162.i8[0] & 0x1F;
    v278 = (v277 << v264) | v265;
    if (v264 >= 0x20)
    {
      *v263 = v278;
      v278 = v277 >> (-8 * (a1 & 7u));
    }

    v279 = v161 & 0x1F | (32 * (BYTE1(v161) & 0x1F)) | ((BYTE2(v161) & 0x1F) << 10) | ((HIBYTE(v161) & 1) << 15);
    v280 = (v264 + 32) & 0x38;
    v281 = v278 | (v279 << v280);
    if (v280 >= 0x30)
    {
      *(v263 + (((v264 + 32) >> 3) & 8)) = v281;
      v281 = v279 >> -v280;
    }

    v282 = v264 + 48;
    v283 = vsubq_s8(v73, v163);
    v284 = vsubq_s8(v73, v146);
    v285 = vsubq_s8(v73, v160);
    v286 = vsubq_s8(v73, v145);
    v287 = vtrn1q_s8(v283, v284);
    v288 = vtrn2q_s8(v283, v284);
    v289 = vtrn1q_s8(v285, v286);
    v290 = vtrn2q_s8(v285, v286);
    v291 = vzip1q_s16(v288, v290);
    v292 = vtrn2q_s16(v288, v290);
    v290.i64[0] = vzip1q_s32(vzip1q_s16(v287, v289), v291).u64[0];
    v292.i64[0] = vzip1q_s32(vtrn2q_s16(v287, v289), v292).u64[0];
    v289.i64[0] = 0x202020202020202;
    v289.i64[1] = 0x202020202020202;
    v293 = vandq_s8(vmovl_s16(vtst_s16(*v257.i8, 0x4000400040004)), v289);
    v289.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v289.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v286.i64[0] = -1;
    v286.i64[1] = -1;
    v294 = vshlq_u8(v286, vorrq_s8(v293, v289));
    v295 = vmovl_u8(vand_s8(*v294.i8, *v290.i8));
    v296 = vmovl_u8(vand_s8(*&vextq_s8(v294, v294, 8uLL), *v292.i8));
    v297 = vmovl_u8(*v293.i8);
    v298 = vmovl_high_u8(v293);
    v299 = vpaddq_s16(vshlq_u16(v295, vtrn1q_s16(0, v297)), vshlq_u16(v296, vtrn1q_s16(0, v298)));
    v300 = vpaddq_s16(v297, v298);
    v301 = vmovl_u16(*v300.i8);
    v302 = vmovl_high_u16(v300);
    v303 = vpaddq_s32(vshlq_u32(vmovl_u16(*v299.i8), vtrn1q_s32(0, v301)), vshlq_u32(vmovl_high_u16(v299), vtrn1q_s32(0, v302)));
    v304 = vpaddq_s32(v301, v302);
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
    v311 = (v264 + 48) & 0x38;
    v312 = (v309.i64[0] << v311) | v281;
    if ((v310.i64[0] + v311) >= 0x40)
    {
      *(v263 + ((v282 >> 3) & 8)) = v312;
      v312 = v309.i64[0] >> -v311;
      if (!v311)
      {
        v312 = 0;
      }
    }

    v313 = vceqq_s8(v73, v163);
    v314 = v310.i64[0] + v282;
    v315 = v312 | (v309.i64[1] << v314);
    if ((v314 & 0x3F) + v310.i64[1] >= 0x40)
    {
      *(v263 + ((v314 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v315;
      v315 = v309.i64[1] >> -(v314 & 0x3F);
      if ((v314 & 0x3F) == 0)
      {
        v315 = 0;
      }
    }

    v316 = vandq_s8(v154, v313);
    v317 = v314 + v310.i64[1];
    v318.i64[0] = 0x808080808080808;
    v318.i64[1] = 0x808080808080808;
    v319.i64[0] = -1;
    v319.i64[1] = -1;
    v320 = vandq_s8(vextq_s8(vtstq_s8(v162, v318), 0, 0xCuLL), v73);
    v321.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v321.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v322 = vandq_s8(vshlq_u8(v319, vaddq_s8(v320, v321)), v154);
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
      *(v263 + ((v317 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v336;
      v336 = v334.i64[0] >> -(v317 & 0x3F);
      if ((v317 & 0x3F) == 0)
      {
        v336 = 0;
      }
    }

    v337 = vaddq_s8(v316, v158);
    v338 = v335.i64[0] + v317;
    v339 = v336 | (v334.i64[1] << v338);
    if ((v338 & 0x3F) + v335.i64[1] >= 0x40)
    {
      *(v263 + ((v338 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v339;
      v339 = v334.i64[1] >> -(v338 & 0x3F);
      if ((v338 & 0x3F) == 0)
      {
        v339 = 0;
      }
    }

    v340 = v338 + v335.i64[1];
    v341 = vextq_s8(0, v163, 0xCuLL);
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
      *(v263 + ((v340 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v359;
      v359 = v357.i64[0] >> -(v340 & 0x3F);
      if ((v340 & 0x3F) == 0)
      {
        v359 = 0;
      }
    }

    v360 = vceqq_s8(v73, v146);
    v361 = vaddq_s8(v157, v316);
    v362 = v358.i64[0] + v340;
    v363 = v359 | (v357.i64[1] << v362);
    if ((v362 & 0x3F) + v358.i64[1] >= 0x40)
    {
      *(v263 + ((v362 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v363;
      v363 = v357.i64[1] >> -(v362 & 0x3F);
      if ((v362 & 0x3F) == 0)
      {
        v363 = 0;
      }
    }

    v364 = vandq_s8(v154, v360);
    v365 = v362 + v358.i64[1];
    v366.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v366.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v367.i64[0] = -1;
    v367.i64[1] = -1;
    v368 = vandq_s8(vshlq_u8(v367, vaddq_s8(v163, v366)), v361);
    v369 = vmovl_u8(*v163.i8);
    v370 = vmovl_high_u8(v163);
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
      *(v263 + ((v365 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v383;
      v383 = v381.i64[0] >> -(v365 & 0x3F);
      if ((v365 & 0x3F) == 0)
      {
        v383 = 0;
      }
    }

    v384 = vaddq_s8(v548, v364);
    v385 = v382.i64[0] + v365;
    v386 = v383 | (v381.i64[1] << v385);
    if ((v385 & 0x3F) + v382.i64[1] >= 0x40)
    {
      *(v263 + ((v385 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v386;
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
    v390 = vshlq_u8(v389, vaddq_s8(v146, v388));
    v391 = vandq_s8(v390, v384);
    v392 = vmovl_u8(*v391.i8);
    v393 = vmovl_high_u8(v391);
    v394 = vmovl_u8(*v146.i8);
    v395 = vmovl_high_u8(v146);
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
      *(v263 + ((v387 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
      if ((v387 & 0x3F) != 0)
      {
        v416 = v414.i64[0] >> -(v387 & 0x3F);
      }

      else
      {
        v416 = 0;
      }
    }

    v417 = vceqq_s8(v73, v160);
    v418 = vaddq_s8(v156, v364);
    v419 = v415.i64[0] + v387;
    v420 = v416 | (v414.i64[1] << v419);
    if ((v419 & 0x3F) + v415.i64[1] >= 0x40)
    {
      *(v263 + ((v419 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v420;
      v420 = v414.i64[1] >> -(v419 & 0x3F);
      if ((v419 & 0x3F) == 0)
      {
        v420 = 0;
      }
    }

    v421 = vandq_s8(v154, v417);
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
      *(v263 + ((v422 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v429;
      v429 = v428.i64[0] >> -(v422 & 0x3F);
      if ((v422 & 0x3F) == 0)
      {
        v429 = 0;
      }
    }

    v430 = vaddq_s8(v549, v421);
    v431 = v415.i64[0] + v422;
    v432 = (v415.i64[0] + v422) & 0x3F;
    v433 = v429 | (v428.i64[1] << v431);
    if ((v431 & 0x3F) + v415.i64[1] >= 0x40)
    {
      *(v263 + ((v431 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v433;
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
    v437 = vshlq_u8(v436, vaddq_s8(v160, v435));
    v438 = vandq_s8(v437, v430);
    v439 = vmovl_u8(*v438.i8);
    v440 = vmovl_high_u8(v438);
    v441 = vmovl_u8(*v160.i8);
    v442 = vmovl_high_u8(v160);
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
      *(v263 + ((v434 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v463;
      if ((v434 & 0x3F) != 0)
      {
        v463 = v461.i64[0] >> -(v434 & 0x3F);
      }

      else
      {
        v463 = 0;
      }
    }

    v464 = vceqq_s8(v73, v145);
    v465 = vaddq_s8(v550, v421);
    v466 = v462.i64[0] + v434;
    v467 = v463 | (v461.i64[1] << v466);
    if ((v466 & 0x3F) + v462.i64[1] >= 0x40)
    {
      *(v263 + ((v466 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v467;
      v467 = v461.i64[1] >> -(v466 & 0x3F);
      if ((v466 & 0x3F) == 0)
      {
        v467 = 0;
      }
    }

    v468 = vandq_s8(v154, v464);
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
      *(v263 + ((v469 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v476;
      v476 = v475.i64[0] >> -(v469 & 0x3F);
      if ((v469 & 0x3F) == 0)
      {
        v476 = 0;
      }
    }

    v477 = vaddq_s8(v551, v468);
    v478 = v462.i64[0] + v469;
    v479 = (v462.i64[0] + v469) & 0x3F;
    v480 = v476 | (v475.i64[1] << v478);
    if ((v478 & 0x3F) + v462.i64[1] >= 0x40)
    {
      *(v263 + ((v478 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v480;
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
    v484 = vshlq_u8(v483, vaddq_s8(v145, v482));
    v485 = vandq_s8(v484, v477);
    v486 = vmovl_u8(*v485.i8);
    v487 = vmovl_high_u8(v485);
    v488 = vmovl_u8(*v145.i8);
    v489 = vmovl_high_u8(v145);
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
      *(v263 + ((v481 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v510;
      if ((v481 & 0x3F) != 0)
      {
        v510 = v508.i64[0] >> -(v481 & 0x3F);
      }

      else
      {
        v510 = 0;
      }
    }

    v511 = vaddq_s8(v155, v468);
    v512 = v509.i64[0] + v481;
    v513 = v510 | (v508.i64[1] << v512);
    if ((v512 & 0x3F) + v509.i64[1] >= 0x40)
    {
      *(v263 + ((v512 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v513;
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
      *(v263 + ((v514 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v521;
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
      *(v263 + ((v522 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v524;
      v524 = v520.i64[1] >> -v523;
      if (!v523)
      {
        v524 = 0;
      }
    }

    v525 = v522 + v509.i64[1];
    if ((v525 & 0x3F) != 0)
    {
      *(v263 + ((v525 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v524;
    }

    result = (v525 - v264 + 7) >> 3;
    v164 = *a2 | (result - 1);
  }

LABEL_91:
  *a2 = v164;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(uint64_t result, uint64_t a2, uint64_t a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + v12, a2, v15, v14);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + 32, a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, v11 + v12 + 32, a2, v20, v19);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 4 * a2, a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 6 * a2, a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, v11 + 4 * a2 + 32, a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, v11 + 6 * a2 + 32, a2, v30, v29);
}

_DWORD *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(_DWORD *result, uint64_t a2)
{
  v2 = 8 * ((&v13 + 6) & 7);
  v13 |= 31 << v2;
  v3 = v2 | 5;
  v4 = (v2 | 5) - v2;
  if (v4 - 12 >= 0xFFFFFFFFFFFFFFEFLL)
  {
    v5 = 0;
    v6 = 5;
    do
    {
      v7 = 64 - v3;
      if (64 - v3 >= v6)
      {
        v7 = v6;
      }

      v8 = v7 + v3;
      v5 += v8 >> 6;
      v3 = v8 & 0x3F;
      v6 -= v7;
    }

    while (v6);
    v4 = v3 - v2 + (v5 << 6);
    if (v4 - 12 >= 0xFFFFFFFFFFFFFFEFLL)
    {
      v9 = 0;
      v10 = 5;
      do
      {
        v11 = 64 - v3;
        if (64 - v3 >= v10)
        {
          v11 = v10;
        }

        *(&v13 + v5) |= ((0xFFFFFFFFFFFFFFFFLL >> v9) & ~(-1 << v11)) << v3;
        v9 += v11;
        v12 = v11 + v3;
        v5 += v12 >> 6;
        v3 = v12 & 0x3F;
        v10 -= v11;
      }

      while (v10);
      v4 = v3 - v2 + (v5 << 6);
    }
  }

  else
  {
    v5 = 0;
  }

  if (v4 - 16 >= 0xFFFFFFFFFFFFFFEFLL)
  {
    *(&v13 + v5) |= 1 << v3;
  }

  *result = 0;
  *(result + a2) = 0;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(int8x16_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
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
    v329 = v13;
    v330 = v12;
    v331 = v11;
    v332 = v10;
    v333 = v9;
    v334 = v8;
    v335 = v7;
    v336 = v6;
    v337 = v4;
    v338 = v5;
    v321 = 0;
    v320 = (8 * (a3 & 7)) | 0x200;
    v318 = 8 * (a3 & 7);
    v319 = a3 & 0xFFFFFFFFFFFFFFF8;
    result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)9,AGX::AppleCompressionGen2::Vec<signed char>>(&v323, v328, &v322, &v318, a4);
    v26.i64[0] = 0x303030303030303;
    v26.i64[1] = 0x303030303030303;
    v317 = vandq_s8(v323, v26);
    v27 = vbicq_s8(v328[0], vceqq_s8(v317, v26));
    v328[0] = v27;
    v324 = v27;
    v325 = v27;
    v326 = v27;
    v327 = v27;
    v28.i64[0] = 0x202020202020202;
    v28.i64[1] = 0x202020202020202;
    v29 = vandq_s8(vmovl_s16(vtst_s16(*&vmovl_u8(*v323.i8), 0x4000400040004)), v28);
    v30 = v318;
    if (vmaxvq_s8(v29) < 1)
    {
      v46.i64[0] = -1;
      v46.i64[1] = -1;
      v314 = v46;
      v315 = v46;
      v313 = v46;
      v316 = v46;
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
      v38 = v318 + v36;
      if (v320)
      {
        v39 = v320 >= v38;
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
        v43 = (v319 + 8 * (v318 >> 6));
        v44 = vaddq_s64(vdupq_lane_s64(vandq_s8(v318, v25).i64[0], 0), vzip1q_s64(0, v35));
        v45 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v43, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v44)), vshlq_u64(vdupq_lane_s64(v43->i64[0], 0), vnegq_s64(v44)));
        if ((v318 & 0x3F) + v37 >= 0x81)
        {
          v45 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v43[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v44)), vshlq_u64(vdupq_laneq_s64(v43[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v44))), v45);
        }

        v30 = v38;
      }

      else
      {
        v321 = 1;
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
      v324 = vsubq_s8(v324, v57);
      v325 = vsubq_s8(v325, v58);
      v326 = vsubq_s8(v326, v59);
      v327 = vsubq_s8(v327, v60);
      v313 = vceqzq_s8(v58);
      v314 = vceqzq_s8(v59);
      v315 = vceqzq_s8(v60);
      v316 = vceqzq_s8(v57);
    }

    v61.i64[0] = 0x808080808080808;
    v61.i64[1] = 0x808080808080808;
    v62 = 0uLL;
    v63 = vandq_s8(vextq_s8(vtstq_s8(v323, v61), 0, 0xCuLL), v27);
    v64 = vmovl_u8(*&vpaddq_s8(v63, v63));
    v65 = vmovl_u16(*&vpaddq_s16(v64, v64));
    v66 = vpaddq_s32(v65, v65).u64[0];
    v67.i64[0] = v66;
    v67.i64[1] = HIDWORD(v66);
    v68 = v67;
    v69 = vaddvq_s64(v67);
    if (v320)
    {
      v70 = v320 >= v30 + v69;
    }

    else
    {
      v70 = 1;
    }

    v71 = v70;
    if (v69 <= 0x80 && (v71 & 1) != 0)
    {
      v72 = vaddq_s64(vdupq_n_s64(v30 & 0x3F), vzip1q_s64(0, v68));
      v73 = (v319 + 8 * (v30 >> 6));
      v62 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v73, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v72)), vshlq_u64(vdupq_lane_s64(v73->i64[0], 0), vnegq_s64(v72)));
      if ((v30 & 0x3F) + v69 >= 0x81)
      {
        v62 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v73[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v72)), vshlq_u64(vdupq_laneq_s64(v73[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v72))), v62);
      }

      v30 += v69;
    }

    else
    {
      v321 = 1;
    }

    v74 = v323.i8[0] & 3;
    if (v74 == 2)
    {
      if (v320)
      {
        v75 = v30 + 4;
        v76 = v30 + 8;
        if (v320 >= v30 + 4)
        {
          v30 += 4;
        }

        else
        {
          v76 = v30 + 4;
        }

        if (v320 >= v76)
        {
          v30 = v76;
        }

        if (v320 < v75 || v320 < v76)
        {
          v321 = 1;
        }
      }

      else
      {
        v30 += 8;
      }
    }

    v77 = 0uLL;
    v78 = vextq_s8(0, v324, 0xCuLL);
    v79 = vmovl_u8(*&vpaddq_s8(v78, v78));
    v80 = vmovl_u16(*&vpaddq_s16(v79, v79));
    v81 = vpaddq_s32(v80, v80).u64[0];
    v82.i64[0] = v81;
    v82.i64[1] = HIDWORD(v81);
    v83 = v82;
    v84 = vaddvq_s64(v82);
    v85 = v30 + v84;
    if (v320)
    {
      v86 = v320 >= v85;
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
      v90 = v319;
      v91 = (v319 + 8 * (v30 >> 6));
      v77 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v91, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v89)), vshlq_u64(vdupq_lane_s64(v91->i64[0], 0), vnegq_s64(v89)));
      if (v88 + v84 >= 0x81)
      {
        v77 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v91[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v89)), vshlq_u64(vdupq_laneq_s64(v91[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v89))), v77);
      }

      v92 = v321;
      v30 = v85;
    }

    else
    {
      v92 = 1;
      v90 = v319;
    }

    v93 = vmovl_u8(*&vpaddq_s8(v324, v324));
    v94 = vmovl_u16(*&vpaddq_s16(v93, v93));
    v95 = vpaddq_s32(v94, v94).u64[0];
    v96.i64[0] = v95;
    v96.i64[1] = HIDWORD(v95);
    v97 = v96;
    v98 = vaddvq_s64(v96);
    v99 = v30 + v98;
    if (v320)
    {
      v100 = v320 >= v99;
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

    v107 = vmovl_u8(*&vpaddq_s8(v325, v325));
    v108 = vmovl_u16(*&vpaddq_s16(v107, v107));
    v109 = vpaddq_s32(v108, v108).u64[0];
    v110.i64[0] = v109;
    v110.i64[1] = HIDWORD(v109);
    v111 = v110;
    v112 = vaddvq_s64(v110);
    v113 = v112;
    v114 = v99 + v112;
    if (v320)
    {
      v115 = v320 >= v114;
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
    if (v320)
    {
      v121 = v320 >= v120;
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

    v128 = vmovl_u8(*&vpaddq_s8(v326, v326));
    v129 = vmovl_u16(*&vpaddq_s16(v128, v128));
    v130 = vpaddq_s32(v129, v129).u64[0];
    v131.i64[0] = v130;
    v131.i64[1] = HIDWORD(v130);
    v132 = v131;
    v133 = vaddvq_s64(v131);
    v134 = v133;
    v135 = v120 + v133;
    if (v320)
    {
      v136 = v320 >= v135;
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
    if (v320)
    {
      v142 = v320 >= v141;
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

    v149 = vmovl_u8(*&vpaddq_s8(v327, v327));
    v150 = vmovl_u16(*&vpaddq_s16(v149, v149));
    v151 = vpaddq_s32(v150, v150).u64[0];
    v152.i64[0] = v151;
    v152.i64[1] = HIDWORD(v151);
    v153 = v152;
    v154 = vaddvq_s64(v152);
    v155 = v154;
    v156 = v141 + v154;
    if (v320)
    {
      v157 = v320 >= v156;
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
    if (v320)
    {
      v163 = v320 >= v162;
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

    if ((v92 & 1) != 0 || v320 + 8 * result - v162 - 512 >= 9 || v74 == 2)
    {
LABEL_138:
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(v42, v41);
      return 0;
    }

    else
    {
      v168 = vzip1_s32(*v65.i8, *&vextq_s8(v65, v65, 8uLL));
      v169 = vzip1_s32(*v108.i8, *&vextq_s8(v108, v108, 8uLL));
      v170 = vzip1_s32(*v129.i8, *&vextq_s8(v129, v129, 8uLL));
      v171 = vzip1_s32(*v150.i8, *&vextq_s8(v150, v150, 8uLL));
      v172.i64[0] = v168.u32[0];
      v172.i64[1] = v168.u32[1];
      v173 = vshlq_u64(v62, vnegq_s64(v172));
      v174 = vzip2q_s64(v62, v173);
      v175 = vzip1q_s64(v62, v173);
      v172.i64[0] = v169.u32[0];
      v172.i64[1] = v169.u32[1];
      v176 = vnegq_s64(v172);
      v177 = vshlq_u64(v102, v176);
      v178 = vzip2q_s64(v102, v177);
      v179 = vzip1q_s64(v102, v177);
      v180 = vshlq_u64(v127, v176);
      v181 = vzip2q_s64(v127, v180);
      v182 = vzip1q_s64(v127, v180);
      v172.i64[0] = v170.u32[0];
      v172.i64[1] = v170.u32[1];
      v183 = vnegq_s64(v172);
      v184 = vshlq_u64(v123, v183);
      v185 = vzip2q_s64(v123, v184);
      v186 = vzip1q_s64(v123, v184);
      v187 = vshlq_u64(v148, v183);
      v172.i64[0] = v171.u32[0];
      v172.i64[1] = v171.u32[1];
      v188 = vnegq_s64(v172);
      v189 = vshlq_u64(v144, v188);
      v190 = vuzp1q_s32(v175, v174);
      v191 = vuzp1q_s32(v179, v178);
      v192 = vuzp1q_s32(v182, v181);
      v193 = vnegq_s32((*&v64 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
      v194 = vnegq_s32((*&v107 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
      v195 = vuzp1q_s32(v186, v185);
      v196 = vnegq_s32((*&v128 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
      v197 = vuzp1q_s32(vzip1q_s64(v148, v187), vzip2q_s64(v148, v187));
      v198 = vuzp1q_s32(vzip1q_s64(v144, v189), vzip2q_s64(v144, v189));
      v199 = vnegq_s32((*&v149 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
      v200 = vshlq_u32(v190, v193);
      v201 = vshlq_u32(v191, v194);
      v202 = vshlq_u32(v192, v194);
      v203 = vshlq_u32(v195, v196);
      v204 = vshlq_u32(v197, v196);
      v205 = vzip2q_s32(v190, v200);
      v206 = vzip1q_s32(v190, v200);
      v207 = vzip2q_s32(v191, v201);
      v208 = vzip1q_s32(v191, v201);
      v209 = vzip2q_s32(v192, v202);
      v210 = vzip1q_s32(v192, v202);
      v211 = vzip2q_s32(v195, v203);
      v212 = vzip1q_s32(v195, v203);
      v213 = vzip2q_s32(v197, v204);
      v214 = vzip1q_s32(v197, v204);
      v215 = vshlq_u32(v198, v199);
      v216 = vzip2q_s32(v198, v215);
      v217 = vzip1q_s32(v198, v215);
      v218 = vuzp1q_s16(v206, v205);
      v219 = vuzp1q_s16(v208, v207);
      v220 = vuzp1q_s16(v210, v209);
      v221 = vuzp1q_s16(v212, v211);
      v222 = vnegq_s16((*&v325 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
      v223 = vuzp1q_s16(v214, v213);
      v224 = vuzp1q_s16(v217, v216);
      v225 = vshlq_u16(v218, vnegq_s16((*&v63 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
      v226 = vshlq_u16(v219, v222);
      v227 = vshlq_u16(v220, v222);
      v228 = vzip2q_s16(v218, v225);
      v229 = vzip1q_s16(v218, v225);
      v230 = vuzp1q_s8(vzip1q_s16(v219, v226), vzip2q_s16(v219, v226));
      v226.i64[0] = 0x808080808080808;
      v226.i64[1] = 0x808080808080808;
      v231 = vuzp1q_s8(vzip1q_s16(v220, v227), vzip2q_s16(v220, v227));
      v219.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v219.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v232 = vsubq_s8(v226, v63);
      v233 = vaddq_s8(v63, v219);
      v234.i64[0] = 0x808080808080808;
      v234.i64[1] = 0x808080808080808;
      v235 = vshlq_s8(vuzp1q_s8(v229, v228), v232);
      v232.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v232.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v236 = vsubq_s8(v234, v325);
      v237 = vaddq_s8(v325, v232);
      v238 = vshlq_s8(v230, v236);
      v239 = vnegq_s16((*&v326 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
      v240 = vshlq_s8(v235, v233);
      v241 = vshlq_s8(v238, v237);
      v242 = vshlq_s8(vshlq_s8(v231, v236), v237);
      v243 = vdupq_lane_s32(*v240.i8, 0);
      v244 = vandq_s8(v313, v243);
      v245 = vsubq_s8(v241, v244);
      v246 = vsubq_s8(v242, v244);
      v247 = vshlq_u16(v221, v239);
      v248 = vshlq_u16(v223, v239);
      v244.i64[0] = 0x808080808080808;
      v244.i64[1] = 0x808080808080808;
      v233.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v233.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v249 = vsubq_s8(v244, v326);
      v250 = vaddq_s8(v326, v233);
      v251 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v223, v248), vzip2q_s16(v223, v248)), v249);
      v252 = vnegq_s16((*&v327 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
      v253 = vandq_s8(v314, v243);
      v254 = vsubq_s8(vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v221, v247), vzip2q_s16(v221, v247)), v249), v250), v253);
      v255 = vsubq_s8(vshlq_s8(v251, v250), v253);
      v256 = vshlq_u16(v224, v252);
      v253.i64[0] = 0x808080808080808;
      v253.i64[1] = 0x808080808080808;
      v251.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v251.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v257 = vsubq_s8(v253, v327);
      v258 = vaddq_s8(v327, v251);
      v259 = vshlq_u64(v167, v188);
      v260 = vuzp1q_s32(vzip1q_s64(v167, v259), vzip2q_s64(v167, v259));
      v261 = vshlq_u32(v260, v199);
      v262 = vuzp1q_s16(vzip1q_s32(v260, v261), vzip2q_s32(v260, v261));
      v263 = vshlq_u16(v262, v252);
      v264 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v224, v256), vzip2q_s16(v224, v256)), v257), v258);
      v265 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v262, v263), vzip2q_s16(v262, v263)), v257), v258);
      v266 = vandq_s8(v315, v243);
      v267 = vsubq_s8(v264, v266);
      v268 = vsubq_s8(v265, v266);
      *v264.i8 = vzip1_s32(*v80.i8, *&vextq_s8(v80, v80, 8uLL));
      *v265.i8 = vzip1_s32(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
      v172.i64[0] = v264.u32[0];
      v172.i64[1] = v264.u32[1];
      v269 = v172;
      v172.i64[0] = v265.u32[0];
      v172.i64[1] = v265.u32[1];
      v270 = vshlq_u64(v77, vnegq_s64(v269));
      v271 = vshlq_u64(v106, vnegq_s64(v172));
      v272 = vuzp1q_s32(vzip1q_s64(v77, v270), vzip2q_s64(v77, v270));
      v273 = vuzp1q_s32(vzip1q_s64(v106, v271), vzip2q_s64(v106, v271));
      v274 = vshlq_u32(v272, vnegq_s32((*&v79 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v275 = vshlq_u32(v273, vnegq_s32((*&v93 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v276 = vuzp1q_s16(vzip1q_s32(v272, v274), vzip2q_s32(v272, v274));
      v277 = vuzp1q_s16(vzip1q_s32(v273, v275), vzip2q_s32(v273, v275));
      v278 = vshlq_u16(v276, vnegq_s16((*&v78 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
      v279 = vshlq_u16(v277, vnegq_s16((*&v324 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
      v280 = vzip2q_s16(v276, v278);
      v281 = vzip1q_s16(v276, v278);
      v282 = vzip2q_s16(v277, v279);
      v283 = vzip1q_s16(v277, v279);
      v279.i64[0] = 0x808080808080808;
      v279.i64[1] = 0x808080808080808;
      v284 = vuzp1q_s8(v283, v282);
      v282.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v282.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v285 = vshlq_s8(vshlq_s8(v284, vsubq_s8(v279, v324)), vaddq_s8(v324, v282));
      v286 = vaddq_s8(vandq_s8(v240, v316), vshlq_s8(vshlq_s8(vuzp1q_s8(v281, v280), vsubq_s8(v279, v78)), vaddq_s8(v78, v282)));
      v287 = vandq_s8(v316, v243);
      v288.i64[0] = 0x101010101010101;
      v288.i64[1] = 0x101010101010101;
      v289 = vsubq_s8(v286, v287);
      v290 = vsubq_s8(v285, v287);
      if (vaddlvq_s8(vceqq_s8(v317, v288)))
      {
        v291 = vnegq_s8(vandq_s8(v323, v288));
        v292 = v290;
        v292.i32[3] = v289.i32[0];
        v293 = v289;
        v293.i32[0] = v290.i32[3];
        v339.val[0] = vbslq_s8(v291, v293, v289);
        v339.val[1] = vbslq_s8(v291, v292, v290);
        v292.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
        v292.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
        v340.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(v339, xmmword_29D2F0F80), v291), v339.val[0]);
        v340.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(v339, v292), v291), v339.val[1]);
        v289 = vaddq_s8(vandq_s8(vqtbl2q_s8(v340, xmmword_29D2F0F90), v291), v340.val[0]);
        v290 = vaddq_s8(vandq_s8(vqtbl2q_s8(v340, v292), v291), v340.val[1]);
        v340.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v245.i8, xmmword_29D2F0FA0), v291), v245);
        v340.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v245.i8, xmmword_29D2F0FB0), v291), v246);
        v245 = vaddq_s8(vandq_s8(vqtbl2q_s8(v340, xmmword_29D2F0FC0), v291), v340.val[0]);
        v246 = vaddq_s8(vandq_s8(vqtbl2q_s8(v340, v292), v291), v340.val[1]);
        v340.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v254.i8, xmmword_29D2F0FD0), v291), v254);
        v340.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v254.i8, xmmword_29D2F0F80), v291), v255);
        v254 = vaddq_s8(vandq_s8(vqtbl2q_s8(v340, v292), v291), v340.val[0]);
        v255 = vaddq_s8(vandq_s8(vqtbl2q_s8(v340, xmmword_29D2F0FE0), v291), v340.val[1]);
        v339.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v267.i8, xmmword_29D2F0FF0), v291), v267);
        v339.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v267.i8, xmmword_29D2F0F80), v291), v268);
        v267 = vaddq_s8(vandq_s8(vqtbl2q_s8(v339, v292), v291), v339.val[0]);
        v268 = vaddq_s8(vandq_s8(vqtbl2q_s8(v339, xmmword_29D2F1000), v291), v339.val[1]);
      }

      v294 = vaddq_s8(v322, v289);
      v295 = vaddq_s8(v290, v322);
      v296 = vaddq_s8(v245, v322);
      v297 = vaddq_s8(v246, v322);
      v298 = vaddq_s8(v254, v322);
      v299 = vaddq_s8(v255, v322);
      v300 = vaddq_s8(v267, v322);
      v301 = vaddq_s8(v268, v322);
      v302.i64[0] = 0x1010101010101010;
      v302.i64[1] = 0x1010101010101010;
      v303 = vceqzq_s8(vandq_s8(v323, v302));
      v304 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v294, xmmword_29D2F11F0), v303), v294);
      v305 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v295, xmmword_29D2F11F0), v303), v295);
      v306 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v296, xmmword_29D2F11F0), v303), v296);
      v307 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v297, xmmword_29D2F11F0), v303), v297);
      v308 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v298, xmmword_29D2F11F0), v303), v298);
      v309 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v299, xmmword_29D2F11F0), v303), v299);
      v310 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v300, xmmword_29D2F11F0), v303), v300);
      v311 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v301, xmmword_29D2F11F0), v303), v301);
      v296.i64[0] = 0x7C007C007C007C00;
      v296.i64[1] = 0x7C007C007C007C00;
      v297.i64[0] = 0x8000800080008000;
      v297.i64[1] = 0x8000800080008000;
      *v42 = vbslq_s8(v297, vshrn_high_n_s32(vshrn_n_s32(v304, 9uLL), v305, 9uLL), vbslq_s8(v296, vshrn_high_n_s32(vshrn_n_s32(v304, 6uLL), v305, 6uLL), vbslq_s8(xmmword_29D2F1200, vshrn_high_n_s32(vshrn_n_s32(v304, 3uLL), v305, 3uLL), vuzp1q_s16(v304, v305))));
      v42[1] = vbslq_s8(v297, vshrn_high_n_s32(vshrn_n_s32(v306, 9uLL), v307, 9uLL), vbslq_s8(v296, vshrn_high_n_s32(vshrn_n_s32(v306, 6uLL), v307, 6uLL), vbslq_s8(xmmword_29D2F1200, vshrn_high_n_s32(vshrn_n_s32(v306, 3uLL), v307, 3uLL), vuzp1q_s16(v306, v307))));
      v312 = (v42 + v41);
      *v312 = vbslq_s8(v297, vshrn_high_n_s32(vshrn_n_s32(v308, 9uLL), v309, 9uLL), vbslq_s8(v296, vshrn_high_n_s32(vshrn_n_s32(v308, 6uLL), v309, 6uLL), vbslq_s8(xmmword_29D2F1200, vshrn_high_n_s32(vshrn_n_s32(v308, 3uLL), v309, 3uLL), vuzp1q_s16(v308, v309))));
      v312[1] = vbslq_s8(v297, vshrn_high_n_s32(vshrn_n_s32(v310, 9uLL), v311, 9uLL), vbslq_s8(v296, vshrn_high_n_s32(vshrn_n_s32(v310, 6uLL), v311, 6uLL), vbslq_s8(xmmword_29D2F1200, vshrn_high_n_s32(vshrn_n_s32(v310, 3uLL), v311, 3uLL), vuzp1q_s16(v310, v311))));
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(int8x16_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 128, a2, *a3);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 2, 128, v5, a3[1]);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 16, 128, v6, a3[2]);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 18, 128, v7, a3[3]);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 4, 128, v8, a3[4]);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 6, 128, v9, a3[5]);
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 20, 128, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 22, 128, v10 + v11, v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v6 = *(a3 + 16);
  v8 = *(a3 + a4);
  v7 = *(a3 + a4 + 16);
  v9.i64[0] = 0x1F0000001FLL;
  v9.i64[1] = 0x1F0000001FLL;
  v10.i64[0] = 0x1F0000001F00;
  v10.i64[1] = 0x1F0000001F00;
  v11.i64[0] = 0x1F0000001F0000;
  v11.i64[1] = 0x1F0000001F0000;
  v12.i64[0] = 0x100000001000000;
  v12.i64[1] = 0x100000001000000;
  v13 = vbslq_s8(v12, vshll_n_u16(*a3, 9uLL), vbslq_s8(v11, vshll_n_u16(*a3, 6uLL), vbslq_s8(v10, vshll_n_u16(*a3, 3uLL), vbslq_s8(v9, vmovl_u16(*a3), 0))));
  v14 = vbslq_s8(v12, vshll_high_n_u16(*a3, 9uLL), vbslq_s8(v11, vshll_high_n_u16(*a3, 6uLL), vbslq_s8(v10, vshll_high_n_u16(*a3, 3uLL), vbslq_s8(v9, vmovl_high_u16(*a3), 0))));
  v542 = v6;
  v15 = vbslq_s8(v12, vshll_n_u16(*v6.i8, 9uLL), vbslq_s8(v11, vshll_n_u16(*v6.i8, 6uLL), vbslq_s8(v10, vshll_n_u16(*v6.i8, 3uLL), vbslq_s8(v9, vmovl_u16(*v6.i8), 0))));
  v16 = vbslq_s8(v12, vshll_high_n_u16(v6, 9uLL), vbslq_s8(v11, vshll_high_n_u16(v6, 6uLL), vbslq_s8(v10, vshll_high_n_u16(v6, 3uLL), vbslq_s8(v9, vmovl_high_u16(v6), 0))));
  v17 = vbslq_s8(v12, vshll_n_u16(*v8.i8, 9uLL), vbslq_s8(v11, vshll_n_u16(*v8.i8, 6uLL), vbslq_s8(v10, vshll_n_u16(*v8.i8, 3uLL), vbslq_s8(v9, vmovl_u16(*v8.i8), 0))));
  v18 = vbslq_s8(v12, vshll_high_n_u16(v8, 9uLL), vbslq_s8(v11, vshll_high_n_u16(v8, 6uLL), vbslq_s8(v10, vshll_high_n_u16(v8, 3uLL), vbslq_s8(v9, vmovl_high_u16(v8), 0))));
  v543 = v7;
  v19 = vbslq_s8(v12, vshll_n_u16(*v7.i8, 9uLL), vbslq_s8(v11, vshll_n_u16(*v7.i8, 6uLL), vbslq_s8(v10, vshll_n_u16(*v7.i8, 3uLL), vbslq_s8(v9, vmovl_u16(*v7.i8), 0))));
  v20 = vbslq_s8(v12, vshll_high_n_u16(v7, 9uLL), vbslq_s8(v11, vshll_high_n_u16(v7, 6uLL), vbslq_s8(v10, vshll_high_n_u16(v7, 3uLL), vbslq_s8(v9, vmovl_high_u16(v7), 0))));
  v21 = vdupq_lane_s32(*v13.i8, 0);
  v22 = vshlq_s8(vshlq_s8(vsubq_s8(v15, v21), xmmword_29D2F1210), xmmword_29D2F1220);
  v23 = vshlq_s8(vshlq_s8(vsubq_s8(v17, v21), xmmword_29D2F1210), xmmword_29D2F1220);
  v24 = vshlq_s8(vshlq_s8(vsubq_s8(v18, v21), xmmword_29D2F1210), xmmword_29D2F1220);
  v555 = vshlq_s8(vshlq_s8(vsubq_s8(v13, v21), xmmword_29D2F1210), xmmword_29D2F1220);
  v556 = vshlq_s8(vshlq_s8(vsubq_s8(v14, v21), xmmword_29D2F1210), xmmword_29D2F1220);
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
  v552 = vshlq_s8(vshlq_s8(vsubq_s8(v16, v21), xmmword_29D2F1210), xmmword_29D2F1220);
  v34 = vqtbl1q_s8(vmaxq_s8(v22, v552), xmmword_29D2F0F70);
  v35 = vqtbl1q_s8(vminq_s8(v22, v552), xmmword_29D2F0F70);
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
  v554 = v21;
  v54 = vshlq_s8(vshlq_s8(vsubq_s8(v19, v21), xmmword_29D2F1210), xmmword_29D2F1220);
  v55 = vshlq_s8(vshlq_s8(vsubq_s8(v20, v21), xmmword_29D2F1210), xmmword_29D2F1220);
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
  v544 = vandq_s8(vsubq_s8(vshlq_s8(v74, vsubq_s8(v75, v71)), v63), v76);
  v77.i64[0] = 0x303030303030303;
  v77.i64[1] = 0x303030303030303;
  v538 = vmaxq_s8(vminq_s8(vsubq_s8(v73, v67), v77), 0);
  v536 = vmaxq_s8(vminq_s8(vsubq_s8(v73, v66), v77), 0);
  v537 = vmaxq_s8(vminq_s8(vsubq_s8(v73, v68), v77), 0);
  v540 = vmaxq_s8(vminq_s8(vsubq_s8(v73, v69), v77), 0);
  v74.i64[0] = 0x404040404040404;
  v74.i64[1] = 0x404040404040404;
  v553 = vorrq_s8(vbicq_s8(v74, vceqq_s8(vaddq_s8(v540, v537), vnegq_s8(vaddq_s8(v536, v538)))), vorrq_s8(vandq_s8(vceqzq_s8(v73), v77), vandq_s8(v76, v32)));
  v548 = v22;
  v549 = v23;
  v550 = v24;
  v551 = v54;
  v78 = vshlq_s8(vsubq_s8(v55, vqtbl1q_s8(v55, xmmword_29D2F11F0)), xmmword_29D2F1210);
  v79 = vshlq_s8(vshlq_s8(vsubq_s8(v22, vqtbl1q_s8(v22, xmmword_29D2F11F0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v80 = vshlq_s8(vshlq_s8(vsubq_s8(v23, vqtbl1q_s8(v23, xmmword_29D2F11F0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v546 = v55;
  v81 = vshlq_s8(vshlq_s8(vsubq_s8(v24, vqtbl1q_s8(v24, xmmword_29D2F11F0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v82 = vshlq_s8(vshlq_s8(vsubq_s8(v54, vqtbl1q_s8(v54, xmmword_29D2F11F0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v83 = vshlq_s8(v78, xmmword_29D2F1220);
  v534 = vshlq_s8(vshlq_s8(vsubq_s8(v556, vqtbl1q_s8(v556, xmmword_29D2F11F0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v535 = vshlq_s8(vshlq_s8(vsubq_s8(v555, vqtbl1q_s8(v555, xmmword_29D2F11F0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v84 = vqtbl1q_s8(vmaxq_s8(v535, v534), xmmword_29D2F0F70);
  v85 = vqtbl1q_s8(vminq_s8(v535, v534), xmmword_29D2F0F70);
  v86 = vpmaxq_s8(v84, v84);
  v87 = vpminq_s8(v85, v85);
  v88 = vpmaxq_s8(v86, v86);
  v89 = vpminq_s8(v87, v87);
  v90 = vzip1q_s8(v88, v89);
  v91 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v90)), vceqzq_s8(v90));
  v92 = vpmaxq_s8(v91, v91);
  v532 = vshlq_s8(vshlq_s8(vsubq_s8(v552, vqtbl1q_s8(v552, xmmword_29D2F11F0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v533 = v79;
  v93 = vqtbl1q_s8(vmaxq_s8(v79, v532), xmmword_29D2F0F70);
  v94 = vqtbl1q_s8(vminq_s8(v79, v532), xmmword_29D2F0F70);
  v95 = vpmaxq_s8(v93, v93);
  v96 = vpminq_s8(v94, v94);
  v97 = vpmaxq_s8(v95, v95);
  v98 = vpminq_s8(v96, v96);
  v99 = vmaxq_s8(v88, v97);
  v100 = vminq_s8(v89, v98);
  v101 = vzip1q_s8(v97, v98);
  v102 = vbicq_s8(vsubq_s8(v32, vclsq_s8(v101)), vceqzq_s8(v101));
  v103 = vpmaxq_s8(v102, v102);
  v530 = v81;
  v531 = v80;
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
  v528 = v83;
  v529 = v82;
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
  v527 = v121;
  v126 = vclzq_s8(vsubq_s8(vmaxq_s8(v110, v119), v121));
  v127 = vsubq_s8(v32, v126);
  v128 = vcgtq_s8(v125, v127);
  v129 = vminq_s8(v127, v125);
  v79.i64[0] = 0x1010101010101010;
  v79.i64[1] = 0x1010101010101010;
  v125.i64[0] = 0x1818181818181818;
  v125.i64[1] = 0x1818181818181818;
  v526 = v128;
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
  v142 = vaddq_s16(vaddw_s8((*&vshll_n_u8(*v553.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9)), vbic_s8(*v73.i8, vcgt_u8(0x808080808080808, *v553.i8))), vandq_s8(vceqq_s16((*&vmovl_u8(*v553.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v82), v132));
  v143 = vsubq_s8(v73, v536);
  v144 = vsubq_s8(v73, v537);
  v145 = vsubq_s8(v73, v540);
  v146 = vsubq_s8(v73, v538);
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
    v554 = vbslq_s8(v147, vsubq_s8(v554, vqtbl1q_s8(v554, xmmword_29D2F11F0)), v554);
    v555 = vbslq_s8(v147, v535, v555);
    v556 = vbslq_s8(v147, v534, v556);
    v548 = vbslq_s8(v147, v533, v548);
    v153 = vbslq_s8(v147, v532, v552);
    v549 = vbslq_s8(v147, v531, v549);
    v550 = vbslq_s8(v147, v530, v550);
    v551 = vbslq_s8(v147, v529, v551);
    v539 = vbslq_s8(v147, v135, v143);
    v146 = vbslq_s8(v147, v136, v146);
    v541 = vbslq_s8(v147, v137, v144);
    v145 = vbslq_s8(v147, v138, v145);
    v154 = vbslq_s8(v147, vandq_s8(vsubq_s8(vshlq_s8(v152, vsubq_s8(v151, v126)), v527), v526), v544);
    v73 = vbslq_s8(v147, v129, v73);
    v553 = vbslq_s8(v147, v139, v553);
    v155 = vbslq_s8(v147, v528, v546);
    if (v150)
    {
LABEL_10:
      v156 = v153;
      v158 = v555;
      v157 = v556;
      v159 = *(a3 + a4);
      v160 = v541;
      v162 = v553;
      v161 = v554.i32[0];
      v163 = v539;
      goto LABEL_16;
    }
  }

  else
  {
    v539 = v143;
    v541 = v144;
    v153 = v552;
    v154 = v544;
    v155 = v546;
    if (v150)
    {
      goto LABEL_10;
    }
  }

  v545 = v154;
  v547 = v155;
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
  v175 = vshlq_s8(vsubq_s8(v18, vqtbl2q_s8(*v17.i8, xmmword_29D2F0F80)), xmmword_29D2F1210);
  v176 = v145;
  v177 = vshlq_s8(v171, xmmword_29D2F1210);
  v178 = vshlq_s8(v173, xmmword_29D2F1210);
  v179 = vshlq_s8(vshlq_s8(v166, xmmword_29D2F1210), xmmword_29D2F1220);
  v180 = vshlq_s8(vshlq_s8(v172, xmmword_29D2F1210), xmmword_29D2F1220);
  v181 = vshlq_s8(vshlq_s8(vsubq_s8(v15, vqtbl2q_s8(*v15.i8, xmmword_29D2F0FA0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v182 = vshlq_s8(vshlq_s8(vsubq_s8(v16, vqtbl2q_s8(*v15.i8, xmmword_29D2F1040)), xmmword_29D2F1210), xmmword_29D2F1220);
  v183 = vshlq_s8(vshlq_s8(vsubq_s8(v17, vqtbl2q_s8(*v17.i8, xmmword_29D2F1050)), xmmword_29D2F1210), xmmword_29D2F1220);
  v184 = vshlq_s8(v175, xmmword_29D2F1220);
  v185 = vshlq_s8(v177, xmmword_29D2F1220);
  v186 = vshlq_s8(v178, xmmword_29D2F1220);
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
  v162 = v553;
  v249 = vmovl_s8(*v553.i8);
  v239.i64[0] = 0x8000800080008;
  v239.i64[1] = 0x8000800080008;
  v250 = vbicq_s8(vmovl_s8(*v225.i8), vceqzq_s16(vandq_s8(v249, v239)));
  v251 = vandq_s8(v249, v248);
  v248.i64[0] = 0x2000200020002;
  v248.i64[1] = 0x2000200020002;
  v252 = vandq_s8(vceqq_s16(v251, v248), v239);
  v160 = v541;
  v163 = v539;
  v253 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v250, vandq_s8(vshll_n_s8(*v553.i8, 1uLL), v239)), v252), *v539.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v541.i8, *v174.i8), *v176.i8), 3uLL)), vaddq_s16(vmlal_s8(vaddw_u8(vmovl_s8(vbic_s8(*v235.i8, vcgt_u8(0x808080808080808, *v247.i8))), vand_s8(vadd_s8(*v247.i8, *v247.i8), 0x808080808080808)), *v242.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v244.i8, *v243.i8), *v245.i8), 3uLL)))), 0);
  if (vaddlvq_s8(v253))
  {
    v254.i64[0] = 0x707070707070707;
    v254.i64[1] = 0x707070707070707;
    v255 = vsubq_s8(v254, v232);
    v254.i64[0] = -1;
    v254.i64[1] = -1;
    v256 = vandq_s8(vsubq_s8(vshlq_s8(v254, v255), v227), v234);
    v161 = vbslq_s8(v253, vextq_s8(v14, v14, 0xCuLL), v554).u32[0];
    v158 = vbslq_s8(v253, v179, v555);
    v157 = vbslq_s8(v253, v180, v556);
    v548 = vbslq_s8(v253, v181, v548);
    v156 = vbslq_s8(v253, v182, v153);
    v549 = vbslq_s8(v253, v183, v549);
    v550 = vbslq_s8(v253, v184, v550);
    v551 = vbslq_s8(v253, v185, v551);
    v155 = vbslq_s8(v253, v186, v547);
    v163 = vbslq_s8(v253, v242, v539);
    v146 = vbslq_s8(v253, v243, v174);
    v160 = vbslq_s8(v253, v244, v541);
    v145 = vbslq_s8(v253, v245, v176);
    v154 = vbslq_s8(v253, v256, v545);
    v162 = vbslq_s8(v253, v247, v553);
    v73 = vbslq_s8(v253, v235, v225);
    v159 = *(a3 + a4);
  }

  else
  {
    v154 = v545;
    v155 = v547;
    v73 = v225;
    v156 = v153;
    v145 = v176;
    v158 = v555;
    v157 = v556;
    v146 = v174;
    v159 = *(a3 + a4);
    v161 = v554.i32[0];
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
    *(a1 + 16) = v542;
    v164 = 63;
    *(a1 + 32) = v159;
    *(a1 + 48) = v543;
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
    v267 = veor_s8(v266, 0xFF00FF00FF00FFLL);
    v268 = vadd_s16(v266, 0x7000700070007);
    v269 = vmovl_u16(vceqz_s16((*&v266 & 0xFF00FF00FF00FFLL)));
    v270.i64[0] = v269.u32[0];
    v270.i64[1] = v269.u32[1];
    v271 = vshrq_n_s64(vshlq_n_s64(v270, 0x38uLL), 0x38uLL);
    v270.i64[0] = v269.u32[2];
    v270.i64[1] = v269.u32[3];
    v272 = vshrq_n_s64(vshlq_n_s64(v270, 0x38uLL), 0x38uLL);
    v273 = vand_s8(v268, 0x7000700070007);
    v273.i16[3] = vand_s8(v267, 0x1000100010001).i16[3];
    v274 = vshlq_u32(vmovl_u16(v273), xmmword_29D2F1070);
    v270.i64[0] = v274.u32[0];
    v270.i64[1] = v274.u32[1];
    v275 = v270;
    v270.i64[0] = v274.u32[2];
    v270.i64[1] = v274.u32[3];
    v276 = vorrq_s8(vbicq_s8(v275, v271), vbicq_s8(v270, v272));
    v277 = *&vorr_s8(*v276.i8, *&vextq_s8(v276, v276, 8uLL)) | (32 * (v162.i8[1] & 0x1F)) | ((v162.i8[3] & 0x1F) << 15) | ((v162.i8[2] & 0x1F) << 10) | v162.i8[0] & 0x1F;
    v278 = (v277 << v264) | v265;
    if (v264 >= 0x20)
    {
      *v263 = v278;
      v278 = v277 >> (-8 * (a1 & 7u));
    }

    v279 = v161 & 0x1F | (32 * (BYTE1(v161) & 0x1F)) | ((BYTE2(v161) & 0x1F) << 10) | ((HIBYTE(v161) & 1) << 15);
    v280 = (v264 + 32) & 0x38;
    v281 = v278 | (v279 << v280);
    if (v280 >= 0x30)
    {
      *(v263 + (((v264 + 32) >> 3) & 8)) = v281;
      v281 = v279 >> -v280;
    }

    v282 = v264 + 48;
    v283 = vsubq_s8(v73, v163);
    v284 = vsubq_s8(v73, v146);
    v285 = vsubq_s8(v73, v160);
    v286 = vsubq_s8(v73, v145);
    v287 = vtrn1q_s8(v283, v284);
    v288 = vtrn2q_s8(v283, v284);
    v289 = vtrn1q_s8(v285, v286);
    v290 = vtrn2q_s8(v285, v286);
    v291 = vzip1q_s16(v288, v290);
    v292 = vtrn2q_s16(v288, v290);
    v290.i64[0] = vzip1q_s32(vzip1q_s16(v287, v289), v291).u64[0];
    v292.i64[0] = vzip1q_s32(vtrn2q_s16(v287, v289), v292).u64[0];
    v289.i64[0] = 0x202020202020202;
    v289.i64[1] = 0x202020202020202;
    v293 = vandq_s8(vmovl_s16(vtst_s16(*v257.i8, 0x4000400040004)), v289);
    v289.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v289.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v286.i64[0] = -1;
    v286.i64[1] = -1;
    v294 = vshlq_u8(v286, vorrq_s8(v293, v289));
    v295 = vmovl_u8(vand_s8(*v294.i8, *v290.i8));
    v296 = vmovl_u8(vand_s8(*&vextq_s8(v294, v294, 8uLL), *v292.i8));
    v297 = vmovl_u8(*v293.i8);
    v298 = vmovl_high_u8(v293);
    v299 = vpaddq_s16(vshlq_u16(v295, vtrn1q_s16(0, v297)), vshlq_u16(v296, vtrn1q_s16(0, v298)));
    v300 = vpaddq_s16(v297, v298);
    v301 = vmovl_u16(*v300.i8);
    v302 = vmovl_high_u16(v300);
    v303 = vpaddq_s32(vshlq_u32(vmovl_u16(*v299.i8), vtrn1q_s32(0, v301)), vshlq_u32(vmovl_high_u16(v299), vtrn1q_s32(0, v302)));
    v304 = vpaddq_s32(v301, v302);
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
    v311 = (v264 + 48) & 0x38;
    v312 = (v309.i64[0] << v311) | v281;
    if ((v310.i64[0] + v311) >= 0x40)
    {
      *(v263 + ((v282 >> 3) & 8)) = v312;
      v312 = v309.i64[0] >> -v311;
      if (!v311)
      {
        v312 = 0;
      }
    }

    v313 = vceqq_s8(v73, v163);
    v314 = v310.i64[0] + v282;
    v315 = v312 | (v309.i64[1] << v314);
    if ((v314 & 0x3F) + v310.i64[1] >= 0x40)
    {
      *(v263 + ((v314 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v315;
      v315 = v309.i64[1] >> -(v314 & 0x3F);
      if ((v314 & 0x3F) == 0)
      {
        v315 = 0;
      }
    }

    v316 = vandq_s8(v154, v313);
    v317 = v314 + v310.i64[1];
    v318.i64[0] = 0x808080808080808;
    v318.i64[1] = 0x808080808080808;
    v319.i64[0] = -1;
    v319.i64[1] = -1;
    v320 = vandq_s8(vextq_s8(vtstq_s8(v162, v318), 0, 0xCuLL), v73);
    v321.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v321.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v322 = vandq_s8(vshlq_u8(v319, vaddq_s8(v320, v321)), v154);
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
      *(v263 + ((v317 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v336;
      v336 = v334.i64[0] >> -(v317 & 0x3F);
      if ((v317 & 0x3F) == 0)
      {
        v336 = 0;
      }
    }

    v337 = vaddq_s8(v316, v158);
    v338 = v335.i64[0] + v317;
    v339 = v336 | (v334.i64[1] << v338);
    if ((v338 & 0x3F) + v335.i64[1] >= 0x40)
    {
      *(v263 + ((v338 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v339;
      v339 = v334.i64[1] >> -(v338 & 0x3F);
      if ((v338 & 0x3F) == 0)
      {
        v339 = 0;
      }
    }

    v340 = v338 + v335.i64[1];
    v341 = vextq_s8(0, v163, 0xCuLL);
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
      *(v263 + ((v340 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v359;
      v359 = v357.i64[0] >> -(v340 & 0x3F);
      if ((v340 & 0x3F) == 0)
      {
        v359 = 0;
      }
    }

    v360 = vceqq_s8(v73, v146);
    v361 = vaddq_s8(v157, v316);
    v362 = v358.i64[0] + v340;
    v363 = v359 | (v357.i64[1] << v362);
    if ((v362 & 0x3F) + v358.i64[1] >= 0x40)
    {
      *(v263 + ((v362 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v363;
      v363 = v357.i64[1] >> -(v362 & 0x3F);
      if ((v362 & 0x3F) == 0)
      {
        v363 = 0;
      }
    }

    v364 = vandq_s8(v154, v360);
    v365 = v362 + v358.i64[1];
    v366.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v366.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v367.i64[0] = -1;
    v367.i64[1] = -1;
    v368 = vandq_s8(vshlq_u8(v367, vaddq_s8(v163, v366)), v361);
    v369 = vmovl_u8(*v163.i8);
    v370 = vmovl_high_u8(v163);
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
      *(v263 + ((v365 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v383;
      v383 = v381.i64[0] >> -(v365 & 0x3F);
      if ((v365 & 0x3F) == 0)
      {
        v383 = 0;
      }
    }

    v384 = vaddq_s8(v548, v364);
    v385 = v382.i64[0] + v365;
    v386 = v383 | (v381.i64[1] << v385);
    if ((v385 & 0x3F) + v382.i64[1] >= 0x40)
    {
      *(v263 + ((v385 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v386;
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
    v390 = vshlq_u8(v389, vaddq_s8(v146, v388));
    v391 = vandq_s8(v390, v384);
    v392 = vmovl_u8(*v391.i8);
    v393 = vmovl_high_u8(v391);
    v394 = vmovl_u8(*v146.i8);
    v395 = vmovl_high_u8(v146);
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
      *(v263 + ((v387 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
      if ((v387 & 0x3F) != 0)
      {
        v416 = v414.i64[0] >> -(v387 & 0x3F);
      }

      else
      {
        v416 = 0;
      }
    }

    v417 = vceqq_s8(v73, v160);
    v418 = vaddq_s8(v156, v364);
    v419 = v415.i64[0] + v387;
    v420 = v416 | (v414.i64[1] << v419);
    if ((v419 & 0x3F) + v415.i64[1] >= 0x40)
    {
      *(v263 + ((v419 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v420;
      v420 = v414.i64[1] >> -(v419 & 0x3F);
      if ((v419 & 0x3F) == 0)
      {
        v420 = 0;
      }
    }

    v421 = vandq_s8(v154, v417);
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
      *(v263 + ((v422 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v429;
      v429 = v428.i64[0] >> -(v422 & 0x3F);
      if ((v422 & 0x3F) == 0)
      {
        v429 = 0;
      }
    }

    v430 = vaddq_s8(v549, v421);
    v431 = v415.i64[0] + v422;
    v432 = (v415.i64[0] + v422) & 0x3F;
    v433 = v429 | (v428.i64[1] << v431);
    if ((v431 & 0x3F) + v415.i64[1] >= 0x40)
    {
      *(v263 + ((v431 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v433;
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
    v437 = vshlq_u8(v436, vaddq_s8(v160, v435));
    v438 = vandq_s8(v437, v430);
    v439 = vmovl_u8(*v438.i8);
    v440 = vmovl_high_u8(v438);
    v441 = vmovl_u8(*v160.i8);
    v442 = vmovl_high_u8(v160);
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
      *(v263 + ((v434 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v463;
      if ((v434 & 0x3F) != 0)
      {
        v463 = v461.i64[0] >> -(v434 & 0x3F);
      }

      else
      {
        v463 = 0;
      }
    }

    v464 = vceqq_s8(v73, v145);
    v465 = vaddq_s8(v550, v421);
    v466 = v462.i64[0] + v434;
    v467 = v463 | (v461.i64[1] << v466);
    if ((v466 & 0x3F) + v462.i64[1] >= 0x40)
    {
      *(v263 + ((v466 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v467;
      v467 = v461.i64[1] >> -(v466 & 0x3F);
      if ((v466 & 0x3F) == 0)
      {
        v467 = 0;
      }
    }

    v468 = vandq_s8(v154, v464);
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
      *(v263 + ((v469 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v476;
      v476 = v475.i64[0] >> -(v469 & 0x3F);
      if ((v469 & 0x3F) == 0)
      {
        v476 = 0;
      }
    }

    v477 = vaddq_s8(v551, v468);
    v478 = v462.i64[0] + v469;
    v479 = (v462.i64[0] + v469) & 0x3F;
    v480 = v476 | (v475.i64[1] << v478);
    if ((v478 & 0x3F) + v462.i64[1] >= 0x40)
    {
      *(v263 + ((v478 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v480;
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
    v484 = vshlq_u8(v483, vaddq_s8(v145, v482));
    v485 = vandq_s8(v484, v477);
    v486 = vmovl_u8(*v485.i8);
    v487 = vmovl_high_u8(v485);
    v488 = vmovl_u8(*v145.i8);
    v489 = vmovl_high_u8(v145);
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
      *(v263 + ((v481 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v510;
      if ((v481 & 0x3F) != 0)
      {
        v510 = v508.i64[0] >> -(v481 & 0x3F);
      }

      else
      {
        v510 = 0;
      }
    }

    v511 = vaddq_s8(v155, v468);
    v512 = v509.i64[0] + v481;
    v513 = v510 | (v508.i64[1] << v512);
    if ((v512 & 0x3F) + v509.i64[1] >= 0x40)
    {
      *(v263 + ((v512 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v513;
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
      *(v263 + ((v514 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v521;
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
      *(v263 + ((v522 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v524;
      v524 = v520.i64[1] >> -v523;
      if (!v523)
      {
        v524 = 0;
      }
    }

    v525 = v522 + v509.i64[1];
    if ((v525 & 0x3F) != 0)
    {
      *(v263 + ((v525 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v524;
    }

    result = (v525 - v264 + 7) >> 3;
    v164 = *a2 | (result - 1);
  }

LABEL_91:
  *a2 = v164;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(uint64_t result, uint64_t a2, uint64_t a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 32, a2, v14, v13);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + v15, a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, v11 + v15 + 32, a2, v20, v19);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 64, a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 96, a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, v11 + v15 + 64, a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, v11 + v15 + 96, a2, v30, v29);
}

void *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(void *result, uint64_t a2)
{
  v2 = 8 * ((&v17 + 6) & 7);
  v17 |= 1 << v2;
  v3 = v2 | 1;
  v4 = (v2 | 6) - v2;
  if ((v2 | 1) - v2 > 0xB)
  {
    v4 = (v2 | 1) - v2;
  }

  if (v4 - 12 >= 0xFFFFFFFFFFFFFFEFLL)
  {
    v5 = 0;
    v6 = 0;
    if ((v2 | 1) - v2 <= 0xB)
    {
      v3 = v2 | 6;
    }

    v7 = 5;
    do
    {
      v8 = 64 - v3;
      if (64 - v3 >= v7)
      {
        v8 = v7;
      }

      *(&v17 + v5) |= ((0xFFFFFFFFFFFFFFFFLL >> v6) & ~(-1 << v8)) << v3;
      v6 += v8;
      v9 = v8 + v3;
      v5 += v9 >> 6;
      v3 = v9 & 0x3F;
      v7 -= v8;
    }

    while (v7);
    if (v3 - v2 + (v5 << 6) - 12 >= 0xFFFFFFFFFFFFFFEFLL)
    {
      v10 = 0;
      v11 = 5;
      do
      {
        v12 = 64 - v3;
        if (64 - v3 >= v11)
        {
          v12 = v11;
        }

        *(&v17 + v5) |= ((0xFFFFFFFFFFFFFFFFLL >> v10) & ~(-1 << v12)) << v3;
        v10 += v12;
        v13 = v12 + v3;
        v5 += v13 >> 6;
        v3 = v13 & 0x3F;
        v11 -= v12;
      }

      while (v11);
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int32x4_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v305 = 0;
  v304 = (8 * (a3 & 7)) | 0x200;
  v302 = 8 * (a3 & 7);
  v303 = a3 & 0xFFFFFFFFFFFFFFF8;
  result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)10,AGX::AppleCompressionGen2::Vec<signed char>>(&v307, v312, &v306, &v302, a4);
  v8.i64[0] = 0x303030303030303;
  v8.i64[1] = 0x303030303030303;
  v301 = vandq_s8(v307, v8);
  v9 = vbicq_s8(v312[0], vceqq_s8(v301, v8));
  v312[0] = v9;
  v308 = v9;
  v309 = v9;
  v310 = v9;
  v311 = v9;
  v10.i64[0] = 0x202020202020202;
  v10.i64[1] = 0x202020202020202;
  v11 = vandq_s8(vmovl_s16(vtst_s16(*&vmovl_u8(*v307.i8), 0x4000400040004)), v10);
  v12 = v302;
  if (vmaxvq_s8(v11) < 1)
  {
    v26.i64[0] = -1;
    v26.i64[1] = -1;
    v298 = v26;
    v299 = v26;
    v297 = v26;
    v300 = v26;
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
    v20 = v302 + v18;
    if (v304)
    {
      v21 = v304 >= v20;
    }

    else
    {
      v21 = 1;
    }

    v22 = v21;
    if (v18 <= 0x80 && (v22 & 1) != 0)
    {
      v7.i64[0] = 63;
      v23 = (v303 + 8 * (v302 >> 6));
      v24 = vaddq_s64(vdupq_lane_s64(vandq_s8(v302, v7).i64[0], 0), vzip1q_s64(0, v17));
      v25 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v23, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v24)), vshlq_u64(vdupq_lane_s64(v23->i64[0], 0), vnegq_s64(v24)));
      if ((v302 & 0x3F) + v19 >= 0x81)
      {
        v25 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v23[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v24)), vshlq_u64(vdupq_laneq_s64(v23[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v24))), v25);
      }

      v12 = v20;
    }

    else
    {
      v305 = 1;
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
    v308 = vsubq_s8(v308, v37);
    v309 = vsubq_s8(v309, v38);
    v310 = vsubq_s8(v310, v39);
    v311 = vsubq_s8(v311, v40);
    v297 = vceqzq_s8(v38);
    v298 = vceqzq_s8(v39);
    v299 = vceqzq_s8(v40);
    v300 = vceqzq_s8(v37);
  }

  v41.i64[0] = 0x808080808080808;
  v41.i64[1] = 0x808080808080808;
  v42 = 0uLL;
  v43 = vandq_s8(vextq_s8(vtstq_s8(v307, v41), 0, 0xCuLL), v9);
  v44 = vmovl_u8(*&vpaddq_s8(v43, v43));
  v45 = vmovl_u16(*&vpaddq_s16(v44, v44));
  v46 = vpaddq_s32(v45, v45).u64[0];
  v47.i64[0] = v46;
  v47.i64[1] = HIDWORD(v46);
  v48 = v47;
  v49 = vaddvq_s64(v47);
  if (v304)
  {
    v50 = v304 >= v12 + v49;
  }

  else
  {
    v50 = 1;
  }

  v51 = v50;
  if (v49 <= 0x80 && (v51 & 1) != 0)
  {
    v52 = vaddq_s64(vdupq_n_s64(v12 & 0x3F), vzip1q_s64(0, v48));
    v53 = (v303 + 8 * (v12 >> 6));
    v42 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v53, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v52)), vshlq_u64(vdupq_lane_s64(v53->i64[0], 0), vnegq_s64(v52)));
    if ((v12 & 0x3F) + v49 >= 0x81)
    {
      v42 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v53[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v52)), vshlq_u64(vdupq_laneq_s64(v53[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v52))), v42);
    }

    v12 += v49;
  }

  else
  {
    v305 = 1;
  }

  v54 = v307.i8[0] & 3;
  if (v54 == 2)
  {
    if (v304)
    {
      v55 = v12 + 4;
      v56 = v12 + 8;
      if (v304 >= v12 + 4)
      {
        v12 += 4;
      }

      else
      {
        v56 = v12 + 4;
      }

      if (v304 >= v56)
      {
        v12 = v56;
      }

      if (v304 < v55 || v304 < v56)
      {
        v305 = 1;
      }
    }

    else
    {
      v12 += 8;
    }
  }

  v57 = 0uLL;
  v58 = vextq_s8(0, v308, 0xCuLL);
  v59 = vmovl_u8(*&vpaddq_s8(v58, v58));
  v60 = vmovl_u16(*&vpaddq_s16(v59, v59));
  v61 = vpaddq_s32(v60, v60).u64[0];
  v62.i64[0] = v61;
  v62.i64[1] = HIDWORD(v61);
  v63 = v62;
  v64 = vaddvq_s64(v62);
  v65 = v12 + v64;
  if (v304)
  {
    v66 = v304 >= v65;
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
    v70 = v303;
    v71 = (v303 + 8 * (v12 >> 6));
    v57 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v71, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v69)), vshlq_u64(vdupq_lane_s64(v71->i64[0], 0), vnegq_s64(v69)));
    if (v68 + v64 >= 0x81)
    {
      v57 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v71[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v69)), vshlq_u64(vdupq_laneq_s64(v71[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v69))), v57);
    }

    v72 = v305;
    v12 = v65;
  }

  else
  {
    v72 = 1;
    v70 = v303;
  }

  v73 = vmovl_u8(*&vpaddq_s8(v308, v308));
  v74 = vmovl_u16(*&vpaddq_s16(v73, v73));
  v75 = vpaddq_s32(v74, v74).u64[0];
  v76.i64[0] = v75;
  v76.i64[1] = HIDWORD(v75);
  v77 = v76;
  v78 = vaddvq_s64(v76);
  v79 = v12 + v78;
  if (v304)
  {
    v80 = v304 >= v79;
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

  v87 = vmovl_u8(*&vpaddq_s8(v309, v309));
  v88 = vmovl_u16(*&vpaddq_s16(v87, v87));
  v89 = vpaddq_s32(v88, v88).u64[0];
  v90.i64[0] = v89;
  v90.i64[1] = HIDWORD(v89);
  v91 = v90;
  v92 = vaddvq_s64(v90);
  v93 = v92;
  v94 = v79 + v92;
  if (v304)
  {
    v95 = v304 >= v94;
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
  if (v304)
  {
    v101 = v304 >= v100;
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

  v108 = vmovl_u8(*&vpaddq_s8(v310, v310));
  v109 = vmovl_u16(*&vpaddq_s16(v108, v108));
  v110 = vpaddq_s32(v109, v109).u64[0];
  v111.i64[0] = v110;
  v111.i64[1] = HIDWORD(v110);
  v112 = v111;
  v113 = vaddvq_s64(v111);
  v114 = v113;
  v115 = v100 + v113;
  if (v304)
  {
    v116 = v304 >= v115;
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
  if (v304)
  {
    v122 = v304 >= v121;
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

  v129 = vmovl_u8(*&vpaddq_s8(v311, v311));
  v130 = vmovl_u16(*&vpaddq_s16(v129, v129));
  v131 = vpaddq_s32(v130, v130).u64[0];
  v132.i64[0] = v131;
  v132.i64[1] = HIDWORD(v131);
  v133 = v132;
  v134 = vaddvq_s64(v132);
  v135 = v134;
  v136 = v121 + v134;
  if (v304)
  {
    v137 = v304 >= v136;
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
  if (v304)
  {
    v143 = v304 >= v142;
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

  if ((v72 & 1) != 0 || v304 + 8 * result - v142 - 512 >= 9 || v54 == 2)
  {
LABEL_132:
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(a1, a2);
    return 0;
  }

  else
  {
    v148 = vzip1_s32(*v45.i8, *&vextq_s8(v45, v45, 8uLL));
    v149 = vzip1_s32(*v88.i8, *&vextq_s8(v88, v88, 8uLL));
    v150 = vzip1_s32(*v109.i8, *&vextq_s8(v109, v109, 8uLL));
    v151 = vzip1_s32(*v130.i8, *&vextq_s8(v130, v130, 8uLL));
    v152.i64[0] = v148.u32[0];
    v152.i64[1] = v148.u32[1];
    v153 = vshlq_u64(v42, vnegq_s64(v152));
    v154 = vzip2q_s64(v42, v153);
    v155 = vzip1q_s64(v42, v153);
    v152.i64[0] = v149.u32[0];
    v152.i64[1] = v149.u32[1];
    v156 = vnegq_s64(v152);
    v157 = vshlq_u64(v82, v156);
    v158 = vzip2q_s64(v82, v157);
    v159 = vzip1q_s64(v82, v157);
    v160 = vshlq_u64(v107, v156);
    v161 = vzip2q_s64(v107, v160);
    v162 = vzip1q_s64(v107, v160);
    v152.i64[0] = v150.u32[0];
    v152.i64[1] = v150.u32[1];
    v163 = vnegq_s64(v152);
    v164 = vshlq_u64(v103, v163);
    v165 = vzip2q_s64(v103, v164);
    v166 = vzip1q_s64(v103, v164);
    v167 = vshlq_u64(v128, v163);
    v152.i64[0] = v151.u32[0];
    v152.i64[1] = v151.u32[1];
    v168 = vnegq_s64(v152);
    v169 = vshlq_u64(v124, v168);
    v170 = vuzp1q_s32(v155, v154);
    v171 = vuzp1q_s32(v159, v158);
    v172 = vuzp1q_s32(v162, v161);
    v173 = vnegq_s32((*&v44 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v174 = vnegq_s32((*&v87 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v175 = vuzp1q_s32(v166, v165);
    v176 = vnegq_s32((*&v108 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v177 = vuzp1q_s32(vzip1q_s64(v128, v167), vzip2q_s64(v128, v167));
    v178 = vuzp1q_s32(vzip1q_s64(v124, v169), vzip2q_s64(v124, v169));
    v179 = vnegq_s32((*&v129 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v180 = vshlq_u32(v170, v173);
    v181 = vshlq_u32(v171, v174);
    v182 = vshlq_u32(v172, v174);
    v183 = vshlq_u32(v175, v176);
    v184 = vshlq_u32(v177, v176);
    v185 = vzip2q_s32(v170, v180);
    v186 = vzip1q_s32(v170, v180);
    v187 = vzip2q_s32(v171, v181);
    v188 = vzip1q_s32(v171, v181);
    v189 = vzip2q_s32(v172, v182);
    v190 = vzip1q_s32(v172, v182);
    v191 = vzip2q_s32(v175, v183);
    v192 = vzip1q_s32(v175, v183);
    v193 = vzip2q_s32(v177, v184);
    v194 = vzip1q_s32(v177, v184);
    v195 = vshlq_u32(v178, v179);
    v196 = vzip2q_s32(v178, v195);
    v197 = vzip1q_s32(v178, v195);
    v198 = vuzp1q_s16(v186, v185);
    v199 = vuzp1q_s16(v188, v187);
    v200 = vuzp1q_s16(v190, v189);
    v201 = vuzp1q_s16(v192, v191);
    v202 = vnegq_s16((*&v309 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v203 = vuzp1q_s16(v194, v193);
    v204 = vuzp1q_s16(v197, v196);
    v205 = vshlq_u16(v198, vnegq_s16((*&v43 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v206 = vshlq_u16(v199, v202);
    v207 = vshlq_u16(v200, v202);
    v208 = vzip2q_s16(v198, v205);
    v209 = vzip1q_s16(v198, v205);
    v210 = vuzp1q_s8(vzip1q_s16(v199, v206), vzip2q_s16(v199, v206));
    v206.i64[0] = 0x808080808080808;
    v206.i64[1] = 0x808080808080808;
    v211 = vuzp1q_s8(vzip1q_s16(v200, v207), vzip2q_s16(v200, v207));
    v199.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v199.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v212 = vsubq_s8(v206, v43);
    v213 = vaddq_s8(v43, v199);
    v214.i64[0] = 0x808080808080808;
    v214.i64[1] = 0x808080808080808;
    v215 = vshlq_s8(vuzp1q_s8(v209, v208), v212);
    v212.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v212.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v216 = vsubq_s8(v214, v309);
    v217 = vaddq_s8(v309, v212);
    v218 = vshlq_s8(v210, v216);
    v219 = vnegq_s16((*&v310 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v220 = vshlq_s8(v215, v213);
    v221 = vshlq_s8(v218, v217);
    v222 = vshlq_s8(vshlq_s8(v211, v216), v217);
    v223 = vdupq_lane_s32(*v220.i8, 0);
    v224 = vandq_s8(v297, v223);
    v225 = vsubq_s8(v221, v224);
    v226 = vsubq_s8(v222, v224);
    v227 = vshlq_u16(v201, v219);
    v228 = vshlq_u16(v203, v219);
    v224.i64[0] = 0x808080808080808;
    v224.i64[1] = 0x808080808080808;
    v213.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v213.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v229 = vsubq_s8(v224, v310);
    v230 = vaddq_s8(v310, v213);
    v231 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v203, v228), vzip2q_s16(v203, v228)), v229);
    v232 = vnegq_s16((*&v311 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v233 = vandq_s8(v298, v223);
    v234 = vsubq_s8(vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v201, v227), vzip2q_s16(v201, v227)), v229), v230), v233);
    v235 = vsubq_s8(vshlq_s8(v231, v230), v233);
    v236 = vshlq_u16(v204, v232);
    v233.i64[0] = 0x808080808080808;
    v233.i64[1] = 0x808080808080808;
    v231.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v231.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v237 = vsubq_s8(v233, v311);
    v238 = vaddq_s8(v311, v231);
    v239 = vshlq_u64(v147, v168);
    v240 = vuzp1q_s32(vzip1q_s64(v147, v239), vzip2q_s64(v147, v239));
    v241 = vshlq_u32(v240, v179);
    v242 = vuzp1q_s16(vzip1q_s32(v240, v241), vzip2q_s32(v240, v241));
    v243 = vshlq_u16(v242, v232);
    v244 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v204, v236), vzip2q_s16(v204, v236)), v237), v238);
    v245 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v242, v243), vzip2q_s16(v242, v243)), v237), v238);
    v246 = vandq_s8(v299, v223);
    v247 = vsubq_s8(v244, v246);
    v248 = vsubq_s8(v245, v246);
    *v244.i8 = vzip1_s32(*v60.i8, *&vextq_s8(v60, v60, 8uLL));
    *v245.i8 = vzip1_s32(*v74.i8, *&vextq_s8(v74, v74, 8uLL));
    v152.i64[0] = v244.u32[0];
    v152.i64[1] = v244.u32[1];
    v249 = v152;
    v152.i64[0] = v245.u32[0];
    v152.i64[1] = v245.u32[1];
    v250 = vshlq_u64(v57, vnegq_s64(v249));
    v251 = vshlq_u64(v86, vnegq_s64(v152));
    v252 = vuzp1q_s32(vzip1q_s64(v57, v250), vzip2q_s64(v57, v250));
    v253 = vuzp1q_s32(vzip1q_s64(v86, v251), vzip2q_s64(v86, v251));
    v254 = vshlq_u32(v252, vnegq_s32((*&v59 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v255 = vshlq_u32(v253, vnegq_s32((*&v73 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v256 = vuzp1q_s16(vzip1q_s32(v252, v254), vzip2q_s32(v252, v254));
    v257 = vuzp1q_s16(vzip1q_s32(v253, v255), vzip2q_s32(v253, v255));
    v258 = vshlq_u16(v256, vnegq_s16((*&v58 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v259 = vshlq_u16(v257, vnegq_s16((*&v308 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v260 = vzip2q_s16(v256, v258);
    v261 = vzip1q_s16(v256, v258);
    v262 = vzip2q_s16(v257, v259);
    v263 = vzip1q_s16(v257, v259);
    v259.i64[0] = 0x808080808080808;
    v259.i64[1] = 0x808080808080808;
    v264 = vuzp1q_s8(v263, v262);
    v262.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v262.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v265 = vshlq_s8(vshlq_s8(v264, vsubq_s8(v259, v308)), vaddq_s8(v308, v262));
    v266 = vaddq_s8(vandq_s8(v220, v300), vshlq_s8(vshlq_s8(vuzp1q_s8(v261, v260), vsubq_s8(v259, v58)), vaddq_s8(v58, v262)));
    v267 = vandq_s8(v300, v223);
    v268.i64[0] = 0x101010101010101;
    v268.i64[1] = 0x101010101010101;
    v269 = vsubq_s8(v266, v267);
    v270 = vsubq_s8(v265, v267);
    if (vaddlvq_s8(vceqq_s8(v301, v268)))
    {
      v271 = vnegq_s8(vandq_s8(v307, v268));
      v272 = v270;
      v272.i32[3] = v269.i32[0];
      v273 = v269;
      v273.i32[0] = v270.i32[3];
      v313.val[0] = vbslq_s8(v271, v273, v269);
      v313.val[1] = vbslq_s8(v271, v272, v270);
      v272.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
      v272.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
      v314.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(v313, xmmword_29D2F0F80), v271), v313.val[0]);
      v314.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(v313, v272), v271), v313.val[1]);
      v269 = vaddq_s8(vandq_s8(vqtbl2q_s8(v314, xmmword_29D2F0F90), v271), v314.val[0]);
      v270 = vaddq_s8(vandq_s8(vqtbl2q_s8(v314, v272), v271), v314.val[1]);
      v314.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v225.i8, xmmword_29D2F0FA0), v271), v225);
      v314.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v225.i8, xmmword_29D2F0FB0), v271), v226);
      v225 = vaddq_s8(vandq_s8(vqtbl2q_s8(v314, xmmword_29D2F0FC0), v271), v314.val[0]);
      v226 = vaddq_s8(vandq_s8(vqtbl2q_s8(v314, v272), v271), v314.val[1]);
      v314.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v234.i8, xmmword_29D2F0FD0), v271), v234);
      v314.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v234.i8, xmmword_29D2F0F80), v271), v235);
      v234 = vaddq_s8(vandq_s8(vqtbl2q_s8(v314, v272), v271), v314.val[0]);
      v235 = vaddq_s8(vandq_s8(vqtbl2q_s8(v314, xmmword_29D2F0FE0), v271), v314.val[1]);
      v313.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v247.i8, xmmword_29D2F0FF0), v271), v247);
      v313.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v247.i8, xmmword_29D2F0F80), v271), v248);
      v247 = vaddq_s8(vandq_s8(vqtbl2q_s8(v313, v272), v271), v313.val[0]);
      v248 = vaddq_s8(vandq_s8(vqtbl2q_s8(v313, xmmword_29D2F1000), v271), v313.val[1]);
    }

    v274 = vaddq_s8(v306, v269);
    v275 = vaddq_s8(v270, v306);
    v276 = vaddq_s8(v225, v306);
    v277 = vaddq_s8(v226, v306);
    v278 = vaddq_s8(v234, v306);
    v279 = vaddq_s8(v235, v306);
    v280 = vaddq_s8(v247, v306);
    v281 = vaddq_s8(v248, v306);
    v282.i64[0] = 0x1010101010101010;
    v282.i64[1] = 0x1010101010101010;
    v283 = vceqzq_s8(vandq_s8(v307, v282));
    v284 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v274, xmmword_29D2F1230), v283), v274);
    v285 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v275, xmmword_29D2F1230), v283), v275);
    v286 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v276, xmmword_29D2F1230), v283), v276);
    v287 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v277, xmmword_29D2F1230), v283), v277);
    v288 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v278, xmmword_29D2F1230), v283), v278);
    v289 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v279, xmmword_29D2F1230), v283), v279);
    v290 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v280, xmmword_29D2F1230), v283), v280);
    v291 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v281, xmmword_29D2F1230), v283), v281);
    v280.i64[0] = 0x3E003E003E003ELL;
    v280.i64[1] = 0x3E003E003E003ELL;
    v278.i64[0] = 0xF800F800F800F800;
    v278.i64[1] = 0xF800F800F800F800;
    v292 = vbslq_s8(v278, vshrn_high_n_s32(vshrn_n_s32(v284, 0xDuLL), v285, 0xDuLL), vbslq_s8(xmmword_29D2F1240, vshrn_high_n_s32(vshrn_n_s32(v284, 0xAuLL), v285, 0xAuLL), vbslq_s8(v280, vshrn_high_n_s32(vshrn_n_s32(v284, 7uLL), v285, 7uLL), vuzp1q_s16(v284, v285))));
    v293 = vbslq_s8(v278, vshrn_high_n_s32(vshrn_n_s32(v286, 0xDuLL), v287, 0xDuLL), vbslq_s8(xmmword_29D2F1240, vshrn_high_n_s32(vshrn_n_s32(v286, 0xAuLL), v287, 0xAuLL), vbslq_s8(v280, vshrn_high_n_s32(vshrn_n_s32(v286, 7uLL), v287, 7uLL), vuzp1q_s16(v286, v287))));
    v294 = vbslq_s8(v278, vshrn_high_n_s32(vshrn_n_s32(v288, 0xDuLL), v289, 0xDuLL), vbslq_s8(xmmword_29D2F1240, vshrn_high_n_s32(vshrn_n_s32(v288, 0xAuLL), v289, 0xAuLL), vbslq_s8(v280, vshrn_high_n_s32(vshrn_n_s32(v288, 7uLL), v289, 7uLL), vuzp1q_s16(v288, v289))));
    v295 = vbslq_s8(v278, vshrn_high_n_s32(vshrn_n_s32(v290, 0xDuLL), v291, 0xDuLL), vbslq_s8(xmmword_29D2F1240, vshrn_high_n_s32(vshrn_n_s32(v290, 0xAuLL), v291, 0xAuLL), vbslq_s8(v280, vshrn_high_n_s32(vshrn_n_s32(v290, 7uLL), v291, 7uLL), vuzp1q_s16(v290, v291))));
    *a1 = vuzp1q_s32(v292, v294);
    *(a1 + a2) = vuzp2q_s32(v292, v294);
    v296 = (a1 + 2 * a2);
    *v296 = vuzp1q_s32(v293, v295);
    *(v296 + a2) = vuzp2q_s32(v293, v295);
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)10,AGX::AppleCompressionGen2::Vec<signed char>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unsigned int a5)
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
    LODWORD(v15) = 0;
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

  *a3 = v15 & 1;
  *(a3 + 1) = (v15 >> 1) & 0x1F;
  *(a3 + 2) = (v15 >> 6) & 0x1F;
  *(a3 + 3) = v15 >> 11;
  v18 = vld1q_dup_f32(a1);
  *a1 = v18;
  v19 = vld1q_dup_f32(a2);
  *a2 = v19;
  v20 = vld1q_dup_f32(a3);
  *a3 = v20;
  return a5 + 1;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(uint16x8_t *a1, char *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = *(a3 + a4);
  v7 = vzip1q_s32(*a3, v6);
  v8 = vzip2q_s32(*a3, v6);
  v9 = (a3 + 2 * a4);
  v10 = *(v9 + a4);
  v11 = vzip1q_s32(*v9, v10);
  v12 = vzip2q_s32(*v9, v10);
  v13.i64[0] = 0x100000001;
  v13.i64[1] = 0x100000001;
  v10.i64[0] = 0x1F0000001F00;
  v10.i64[1] = 0x1F0000001F00;
  v14.i64[0] = 0x1F0000001F0000;
  v14.i64[1] = 0x1F0000001F0000;
  v545 = v7;
  v15.i64[0] = 0x1F0000001F000000;
  v15.i64[1] = 0x1F0000001F000000;
  v16 = vbslq_s8(v15, vshll_n_u16(*v7.i8, 0xDuLL), vbslq_s8(v14, vshll_n_u16(*v7.i8, 0xAuLL), vbslq_s8(v10, vshll_n_u16(*v7.i8, 7uLL), vbslq_s8(v13, vmovl_u16(*v7.i8), 0))));
  v17 = vbslq_s8(v15, vshll_high_n_u16(v7, 0xDuLL), vbslq_s8(v14, vshll_high_n_u16(v7, 0xAuLL), vbslq_s8(v10, vshll_high_n_u16(v7, 7uLL), vbslq_s8(v13, vmovl_high_u16(v7), 0))));
  v544 = v11;
  v18 = vbslq_s8(v15, vshll_n_u16(*v11.i8, 0xDuLL), vbslq_s8(v14, vshll_n_u16(*v11.i8, 0xAuLL), vbslq_s8(v10, vshll_n_u16(*v11.i8, 7uLL), vbslq_s8(v13, vmovl_u16(*v11.i8), 0))));
  v19 = vbslq_s8(v15, vshll_high_n_u16(v11, 0xDuLL), vbslq_s8(v14, vshll_high_n_u16(v11, 0xAuLL), vbslq_s8(v10, vshll_high_n_u16(v11, 7uLL), vbslq_s8(v13, vmovl_high_u16(v11), 0))));
  v20 = vbslq_s8(v15, vshll_n_u16(*v8.i8, 0xDuLL), vbslq_s8(v14, vshll_n_u16(*v8.i8, 0xAuLL), vbslq_s8(v10, vshll_n_u16(*v8.i8, 7uLL), vbslq_s8(v13, vmovl_u16(*v8.i8), 0))));
  v21 = vbslq_s8(v15, vshll_high_n_u16(v8, 0xDuLL), vbslq_s8(v14, vshll_high_n_u16(v8, 0xAuLL), vbslq_s8(v10, vshll_high_n_u16(v8, 7uLL), vbslq_s8(v13, vmovl_high_u16(v8), 0))));
  v546 = v12;
  v22 = vbslq_s8(v15, vshll_n_u16(*v12.i8, 0xDuLL), vbslq_s8(v14, vshll_n_u16(*v12.i8, 0xAuLL), vbslq_s8(v10, vshll_n_u16(*v12.i8, 7uLL), vbslq_s8(v13, vmovl_u16(*v12.i8), 0))));
  v23 = vbslq_s8(v15, vshll_high_n_u16(v12, 0xDuLL), vbslq_s8(v14, vshll_high_n_u16(v12, 0xAuLL), vbslq_s8(v10, vshll_high_n_u16(v12, 7uLL), vbslq_s8(v13, vmovl_high_u16(v12), 0))));
  v24 = vdupq_lane_s32(*v16.i8, 0);
  v25 = vshlq_s8(vshlq_s8(vsubq_s8(v18, v24), xmmword_29D2F1250), xmmword_29D2F1260);
  v26 = vshlq_s8(vshlq_s8(vsubq_s8(v20, v24), xmmword_29D2F1250), xmmword_29D2F1260);
  v27 = vshlq_s8(vshlq_s8(vsubq_s8(v21, v24), xmmword_29D2F1250), xmmword_29D2F1260);
  v558 = vshlq_s8(vshlq_s8(vsubq_s8(v16, v24), xmmword_29D2F1250), xmmword_29D2F1260);
  v559 = vshlq_s8(vshlq_s8(vsubq_s8(v17, v24), xmmword_29D2F1250), xmmword_29D2F1260);
  v28 = vqtbl1q_s8(vmaxq_s8(v558, v559), xmmword_29D2F0F70);
  v29 = vqtbl1q_s8(vminq_s8(v558, v559), xmmword_29D2F0F70);
  v30 = vpmaxq_s8(v28, v28);
  v31 = vpminq_s8(v29, v29);
  v32 = vpmaxq_s8(v30, v30);
  v33 = vpminq_s8(v31, v31);
  v34 = vzip1q_s8(v32, v33);
  v35.i64[0] = 0x808080808080808;
  v35.i64[1] = 0x808080808080808;
  v36 = vbicq_s8(vsubq_s8(v35, vclsq_s8(v34)), vceqzq_s8(v34));
  v555 = vshlq_s8(vshlq_s8(vsubq_s8(v19, v24), xmmword_29D2F1250), xmmword_29D2F1260);
  v37 = vqtbl1q_s8(vmaxq_s8(v25, v555), xmmword_29D2F0F70);
  v38 = vqtbl1q_s8(vminq_s8(v25, v555), xmmword_29D2F0F70);
  v39 = vpmaxq_s8(v37, v37);
  v40 = vpminq_s8(v38, v38);
  v41 = vpmaxq_s8(v39, v39);
  v42 = vpminq_s8(v40, v40);
  v43 = vmaxq_s8(v32, v41);
  v44 = vminq_s8(v33, v42);
  v45 = vzip1q_s8(v41, v42);
  v46 = vbicq_s8(vsubq_s8(v35, vclsq_s8(v45)), vceqzq_s8(v45));
  v47 = vqtbl1q_s8(vmaxq_s8(v26, v27), xmmword_29D2F0F70);
  v48 = vqtbl1q_s8(vminq_s8(v26, v27), xmmword_29D2F0F70);
  v49 = vpmaxq_s8(v47, v47);
  v50 = vpminq_s8(v48, v48);
  v51 = vpmaxq_s8(v49, v49);
  v52 = vpminq_s8(v50, v50);
  v53 = vmaxq_s8(v43, v51);
  v54 = vminq_s8(v44, v52);
  v55 = vzip1q_s8(v51, v52);
  v56 = vbicq_s8(vsubq_s8(v35, vclsq_s8(v55)), vceqzq_s8(v55));
  v557 = v24;
  v57 = vshlq_s8(vshlq_s8(vsubq_s8(v22, v24), xmmword_29D2F1250), xmmword_29D2F1260);
  v58 = vshlq_s8(vshlq_s8(vsubq_s8(v23, v24), xmmword_29D2F1250), xmmword_29D2F1260);
  v59 = vqtbl1q_s8(vmaxq_s8(v57, v58), xmmword_29D2F0F70);
  v60 = vqtbl1q_s8(vminq_s8(v57, v58), xmmword_29D2F0F70);
  v61 = vpmaxq_s8(v59, v59);
  v62 = vpminq_s8(v60, v60);
  v63 = vpmaxq_s8(v61, v61);
  v64 = vpminq_s8(v62, v62);
  v65 = vmaxq_s8(v53, v63);
  v66 = vminq_s8(v54, v64);
  v67 = vzip1q_s8(v63, v64);
  v68 = vbicq_s8(vsubq_s8(v35, vclsq_s8(v67)), vceqzq_s8(v67));
  v69 = vpmaxq_s8(v36, v36);
  v70 = vpmaxq_s8(v46, v46);
  v71 = vpmaxq_s8(v56, v56);
  v72 = vpmaxq_s8(v68, v68);
  v73 = vmaxq_s8(vmaxq_s8(v69, v70), vmaxq_s8(v71, v72));
  v74 = vclzq_s8(vsubq_s8(v65, v66));
  v75 = vsubq_s8(v35, v74);
  v76 = vminq_s8(v75, v73);
  if (!vmaxvq_s8(v76))
  {
    a1->i16[0] = a3->i16[0];
    v167 = 1;
    result = 2;
    goto LABEL_91;
  }

  v541 = v8;
  v77.i64[0] = -1;
  v77.i64[1] = -1;
  v78.i64[0] = 0x707070707070707;
  v78.i64[1] = 0x707070707070707;
  v79 = vcgtq_s8(v73, v75);
  v547 = vandq_s8(vsubq_s8(vshlq_s8(v77, vsubq_s8(v78, v74)), v66), v79);
  v80.i64[0] = 0x303030303030303;
  v80.i64[1] = 0x303030303030303;
  v539 = vmaxq_s8(vminq_s8(vsubq_s8(v76, v70), v80), 0);
  v537 = vmaxq_s8(vminq_s8(vsubq_s8(v76, v69), v80), 0);
  v538 = vmaxq_s8(vminq_s8(vsubq_s8(v76, v71), v80), 0);
  v542 = vmaxq_s8(vminq_s8(vsubq_s8(v76, v72), v80), 0);
  v77.i64[0] = 0x404040404040404;
  v77.i64[1] = 0x404040404040404;
  v556 = vorrq_s8(vbicq_s8(v77, vceqq_s8(vaddq_s8(v542, v538), vnegq_s8(vaddq_s8(v537, v539)))), vorrq_s8(vandq_s8(vceqzq_s8(v76), v80), vandq_s8(v79, v35)));
  v551 = v25;
  v552 = v26;
  v553 = v27;
  v554 = v57;
  v81 = vshlq_s8(vsubq_s8(v58, vqtbl1q_s8(v58, xmmword_29D2F1230)), xmmword_29D2F1250);
  v82 = vshlq_s8(vshlq_s8(vsubq_s8(v25, vqtbl1q_s8(v25, xmmword_29D2F1230)), xmmword_29D2F1250), xmmword_29D2F1260);
  v83 = vshlq_s8(vshlq_s8(vsubq_s8(v26, vqtbl1q_s8(v26, xmmword_29D2F1230)), xmmword_29D2F1250), xmmword_29D2F1260);
  v549 = v58;
  v84 = vshlq_s8(vshlq_s8(vsubq_s8(v27, vqtbl1q_s8(v27, xmmword_29D2F1230)), xmmword_29D2F1250), xmmword_29D2F1260);
  v85 = vshlq_s8(vshlq_s8(vsubq_s8(v57, vqtbl1q_s8(v57, xmmword_29D2F1230)), xmmword_29D2F1250), xmmword_29D2F1260);
  v86 = vshlq_s8(v81, xmmword_29D2F1260);
  v535 = vshlq_s8(vshlq_s8(vsubq_s8(v559, vqtbl1q_s8(v559, xmmword_29D2F1230)), xmmword_29D2F1250), xmmword_29D2F1260);
  v536 = vshlq_s8(vshlq_s8(vsubq_s8(v558, vqtbl1q_s8(v558, xmmword_29D2F1230)), xmmword_29D2F1250), xmmword_29D2F1260);
  v87 = vqtbl1q_s8(vmaxq_s8(v536, v535), xmmword_29D2F0F70);
  v88 = vqtbl1q_s8(vminq_s8(v536, v535), xmmword_29D2F0F70);
  v89 = vpmaxq_s8(v87, v87);
  v90 = vpminq_s8(v88, v88);
  v91 = vpmaxq_s8(v89, v89);
  v92 = vpminq_s8(v90, v90);
  v93 = vzip1q_s8(v91, v92);
  v94 = vbicq_s8(vsubq_s8(v35, vclsq_s8(v93)), vceqzq_s8(v93));
  v95 = vpmaxq_s8(v94, v94);
  v533 = vshlq_s8(vshlq_s8(vsubq_s8(v555, vqtbl1q_s8(v555, xmmword_29D2F1230)), xmmword_29D2F1250), xmmword_29D2F1260);
  v534 = v82;
  v96 = vqtbl1q_s8(vmaxq_s8(v82, v533), xmmword_29D2F0F70);
  v97 = vqtbl1q_s8(vminq_s8(v82, v533), xmmword_29D2F0F70);
  v98 = vpmaxq_s8(v96, v96);
  v99 = vpminq_s8(v97, v97);
  v100 = vpmaxq_s8(v98, v98);
  v101 = vpminq_s8(v99, v99);
  v102 = vmaxq_s8(v91, v100);
  v103 = vminq_s8(v92, v101);
  v104 = vzip1q_s8(v100, v101);
  v105 = vbicq_s8(vsubq_s8(v35, vclsq_s8(v104)), vceqzq_s8(v104));
  v106 = vpmaxq_s8(v105, v105);
  v531 = v84;
  v532 = v83;
  v107 = vqtbl1q_s8(vmaxq_s8(v83, v84), xmmword_29D2F0F70);
  v108 = vqtbl1q_s8(vminq_s8(v83, v84), xmmword_29D2F0F70);
  v109 = vpmaxq_s8(v107, v107);
  v110 = vpminq_s8(v108, v108);
  v111 = vpmaxq_s8(v109, v109);
  v112 = vpminq_s8(v110, v110);
  v113 = vmaxq_s8(v102, v111);
  v114 = vminq_s8(v103, v112);
  v115 = vzip1q_s8(v111, v112);
  v116 = vbicq_s8(vsubq_s8(v35, vclsq_s8(v115)), vceqzq_s8(v115));
  v117 = vpmaxq_s8(v116, v116);
  v529 = v86;
  v530 = v85;
  v118 = vqtbl1q_s8(vmaxq_s8(v85, v86), xmmword_29D2F0F70);
  v119 = vqtbl1q_s8(vminq_s8(v85, v86), xmmword_29D2F0F70);
  v120 = vpmaxq_s8(v118, v118);
  v121 = vpminq_s8(v119, v119);
  v122 = vpmaxq_s8(v120, v120);
  v123 = vpminq_s8(v121, v121);
  v124 = vminq_s8(v114, v123);
  v125 = vzip1q_s8(v122, v123);
  v126 = vbicq_s8(vsubq_s8(v35, vclsq_s8(v125)), vceqzq_s8(v125));
  v127 = vpmaxq_s8(v126, v126);
  v128 = vmaxq_s8(vmaxq_s8(v95, v106), vmaxq_s8(v117, v127));
  v528 = v124;
  v129 = vclzq_s8(vsubq_s8(vmaxq_s8(v113, v122), v124));
  v130 = vsubq_s8(v35, v129);
  v131 = vcgtq_s8(v128, v130);
  v132 = vminq_s8(v130, v128);
  v82.i64[0] = 0x1010101010101010;
  v82.i64[1] = 0x1010101010101010;
  v128.i64[0] = 0x1818181818181818;
  v128.i64[1] = 0x1818181818181818;
  v527 = v131;
  v133 = vorrq_s8(vandq_s8(vceqzq_s8(v132), v80), vbslq_s8(v131, v128, v82));
  v134 = vmaxq_s8(vminq_s8(vsubq_s8(v132, v95), v80), 0);
  v135 = vmaxq_s8(vminq_s8(vsubq_s8(v132, v106), v80), 0);
  v136 = vmaxq_s8(vminq_s8(vsubq_s8(v132, v117), v80), 0);
  v137 = vmaxq_s8(vminq_s8(vsubq_s8(v132, v127), v80), 0);
  v138 = vsubq_s8(v132, v134);
  v139 = vsubq_s8(v132, v135);
  v140 = vsubq_s8(v132, v136);
  v141 = vsubq_s8(v132, v137);
  v131.i64[0] = 0x404040404040404;
  v131.i64[1] = 0x404040404040404;
  v142 = vorrq_s8(vbicq_s8(v131, vceqq_s8(vaddq_s8(v137, v136), vnegq_s8(vaddq_s8(v134, v135)))), v133);
  v143 = vmovl_u8(*v142.i8);
  v135.i64[0] = 0x8000800080008;
  v135.i64[1] = 0x8000800080008;
  v85.i64[0] = 0x2000200020002;
  v85.i64[1] = 0x2000200020002;
  v144 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v132.i8), vceqzq_s16((*&v143 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8)))), vandq_s8(vshll_n_u8(*v142.i8, 1uLL), v135)), vandq_s8(vceqq_s16((*&v143 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v85), v135)), *v138.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v140.i8, *v139.i8), *v141.i8), 3uLL));
  v145 = vaddq_s16(vaddw_s8((*&vshll_n_u8(*v556.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9)), vbic_s8(*v76.i8, vcgt_u8(0x808080808080808, *v556.i8))), vandq_s8(vceqq_s16((*&vmovl_u8(*v556.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v85), v135));
  v146 = vsubq_s8(v76, v537);
  v147 = vsubq_s8(v76, v538);
  v148 = vsubq_s8(v76, v542);
  v149 = vsubq_s8(v76, v539);
  v150 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(v145, *v146.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v147.i8, *v149.i8), *v148.i8), 3uLL)), v144)), 0);
  v151 = vaddlvq_s8(v150);
  v153 = a5 < 4 || a6 < 2;
  if (v151)
  {
    v154.i64[0] = 0x707070707070707;
    v154.i64[1] = 0x707070707070707;
    v155.i64[0] = -1;
    v155.i64[1] = -1;
    v557 = vbslq_s8(v150, vsubq_s8(v557, vqtbl1q_s8(v557, xmmword_29D2F1230)), v557);
    v558 = vbslq_s8(v150, v536, v558);
    v559 = vbslq_s8(v150, v535, v559);
    v551 = vbslq_s8(v150, v534, v551);
    v156 = vbslq_s8(v150, v533, v555);
    v552 = vbslq_s8(v150, v532, v552);
    v553 = vbslq_s8(v150, v531, v553);
    v554 = vbslq_s8(v150, v530, v554);
    v540 = vbslq_s8(v150, v138, v146);
    v149 = vbslq_s8(v150, v139, v149);
    v543 = vbslq_s8(v150, v140, v147);
    v148 = vbslq_s8(v150, v141, v148);
    v157 = vbslq_s8(v150, vandq_s8(vsubq_s8(vshlq_s8(v155, vsubq_s8(v154, v129)), v528), v527), v547);
    v76 = vbslq_s8(v150, v132, v76);
    v556 = vbslq_s8(v150, v142, v556);
    v158 = vbslq_s8(v150, v529, v549);
    if (v153)
    {
LABEL_10:
      v159 = v156;
      v161 = v558;
      v160 = v559;
      v162 = v541;
      v163 = v543;
      v165 = v556;
      v164 = v557.i32[0];
      v166 = v540;
      goto LABEL_16;
    }
  }

  else
  {
    v540 = v146;
    v543 = v147;
    v156 = v555;
    v157 = v547;
    v158 = v549;
    if (v153)
    {
      goto LABEL_10;
    }
  }

  v548 = v157;
  v550 = v158;
  v169 = vsubq_s8(v16, vqtbl2q_s8(*v16.i8, xmmword_29D2F0F80));
  v170 = vsubq_s8(v17, vqtbl2q_s8(*v16.i8, xmmword_29D2F1030));
  v171 = v19;
  v171.i32[3] = v17.i32[3];
  v172 = v21;
  v172.i32[3] = v17.i32[3];
  v173 = v23;
  v173.i32[3] = v17.i32[3];
  v174 = vsubq_s8(v22, vqtbl2q_s8(*v22.i8, xmmword_29D2F1060));
  v175 = v170;
  v175.i32[3] = v169.i32[0];
  v169.i32[0] = v170.i32[3];
  v176 = vsubq_s8(v23, vqtbl2q_s8(*v22.i8, xmmword_29D2F0F80));
  v177 = v149;
  v178 = vshlq_s8(vsubq_s8(v21, vqtbl2q_s8(*v20.i8, xmmword_29D2F0F80)), xmmword_29D2F1250);
  v179 = v148;
  v180 = vshlq_s8(v174, xmmword_29D2F1250);
  v181 = vshlq_s8(v176, xmmword_29D2F1250);
  v182 = vshlq_s8(vshlq_s8(v169, xmmword_29D2F1250), xmmword_29D2F1260);
  v183 = vshlq_s8(vshlq_s8(v175, xmmword_29D2F1250), xmmword_29D2F1260);
  v184 = vshlq_s8(vshlq_s8(vsubq_s8(v18, vqtbl2q_s8(*v18.i8, xmmword_29D2F0FA0)), xmmword_29D2F1250), xmmword_29D2F1260);
  v185 = vshlq_s8(vshlq_s8(vsubq_s8(v19, vqtbl2q_s8(*v18.i8, xmmword_29D2F1040)), xmmword_29D2F1250), xmmword_29D2F1260);
  v186 = vshlq_s8(vshlq_s8(vsubq_s8(v20, vqtbl2q_s8(*v20.i8, xmmword_29D2F1050)), xmmword_29D2F1250), xmmword_29D2F1260);
  v187 = vshlq_s8(v178, xmmword_29D2F1260);
  v188 = vshlq_s8(v180, xmmword_29D2F1260);
  v189 = vshlq_s8(v181, xmmword_29D2F1260);
  v190 = vqtbl1q_s8(vmaxq_s8(v182, v183), xmmword_29D2F0F70);
  v191 = vqtbl1q_s8(vminq_s8(v182, v183), xmmword_29D2F0F70);
  v192 = vpmaxq_s8(v190, v190);
  v193 = vpminq_s8(v191, v191);
  v194 = vpmaxq_s8(v192, v192);
  v195 = vpminq_s8(v193, v193);
  v196 = vzip1q_s8(v194, v195);
  v197.i64[0] = 0x808080808080808;
  v197.i64[1] = 0x808080808080808;
  v198 = vbicq_s8(vsubq_s8(v197, vclsq_s8(v196)), vceqzq_s8(v196));
  v199 = vpmaxq_s8(v198, v198);
  v200 = vqtbl1q_s8(vmaxq_s8(v184, v185), xmmword_29D2F0F70);
  v201 = vqtbl1q_s8(vminq_s8(v184, v185), xmmword_29D2F0F70);
  v202 = vpmaxq_s8(v200, v200);
  v203 = vpminq_s8(v201, v201);
  v204 = vpmaxq_s8(v202, v202);
  v205 = vpminq_s8(v203, v203);
  v206 = vmaxq_s8(v194, v204);
  v207 = vminq_s8(v195, v205);
  v208 = vzip1q_s8(v204, v205);
  v209 = vbicq_s8(vsubq_s8(v197, vclsq_s8(v208)), vceqzq_s8(v208));
  v210 = vpmaxq_s8(v209, v209);
  v211 = vqtbl1q_s8(vmaxq_s8(v186, v187), xmmword_29D2F0F70);
  v212 = vqtbl1q_s8(vminq_s8(v186, v187), xmmword_29D2F0F70);
  v213 = vpmaxq_s8(v211, v211);
  v214 = vpminq_s8(v212, v212);
  v215 = vpmaxq_s8(v213, v213);
  v216 = vpminq_s8(v214, v214);
  v217 = vmaxq_s8(v206, v215);
  v218 = vminq_s8(v207, v216);
  v219 = vzip1q_s8(v215, v216);
  v220 = vbicq_s8(vsubq_s8(v197, vclsq_s8(v219)), vceqzq_s8(v219));
  v221 = vpmaxq_s8(v220, v220);
  v222 = vqtbl1q_s8(vmaxq_s8(v188, v189), xmmword_29D2F0F70);
  v223 = vqtbl1q_s8(vminq_s8(v188, v189), xmmword_29D2F0F70);
  v224 = vpmaxq_s8(v222, v222);
  v225 = vpminq_s8(v223, v223);
  v226 = vpmaxq_s8(v224, v224);
  v227 = vpminq_s8(v225, v225);
  v228 = v76;
  v229 = vmaxq_s8(v217, v226);
  v230 = vminq_s8(v218, v227);
  v231 = vzip1q_s8(v226, v227);
  v232 = vbicq_s8(vsubq_s8(v197, vclsq_s8(v231)), vceqzq_s8(v231));
  v233 = vpmaxq_s8(v232, v232);
  v234 = vmaxq_s8(vmaxq_s8(v199, v210), vmaxq_s8(v221, v233));
  v235 = vclzq_s8(vsubq_s8(v229, v230));
  v236 = vsubq_s8(v197, v235);
  v237 = vcgtq_s8(v234, v236);
  v238 = vminq_s8(v236, v234);
  v236.i64[0] = 0x909090909090909;
  v236.i64[1] = 0x909090909090909;
  v239.i64[0] = 0x202020202020202;
  v239.i64[1] = 0x202020202020202;
  v240 = vorrq_s8(vandq_s8(vceqzq_s8(v238), v239), vsubq_s8(vandq_s8(v237, v236), vmvnq_s8(v237)));
  v236.i64[0] = 0x303030303030303;
  v236.i64[1] = 0x303030303030303;
  v241 = vmaxq_s8(vminq_s8(vsubq_s8(v238, v199), v236), 0);
  v242 = vmaxq_s8(vminq_s8(vsubq_s8(v238, v210), v236), 0);
  v243 = vmaxq_s8(vminq_s8(vsubq_s8(v238, v221), v236), 0);
  v244 = vmaxq_s8(vminq_s8(vsubq_s8(v238, v233), v236), 0);
  v245 = vsubq_s8(v238, v241);
  v246 = vsubq_s8(v238, v242);
  v247 = vsubq_s8(v238, v243);
  v248 = vsubq_s8(v238, v244);
  v249 = vceqq_s8(vaddq_s8(v244, v243), vnegq_s8(vaddq_s8(v241, v242)));
  v244.i64[0] = 0x404040404040404;
  v244.i64[1] = 0x404040404040404;
  v250 = vorrq_s8(vbicq_s8(v244, v249), v240);
  v251.i64[0] = 0x3000300030003;
  v251.i64[1] = 0x3000300030003;
  v165 = v556;
  v252 = vmovl_s8(*v556.i8);
  v242.i64[0] = 0x8000800080008;
  v242.i64[1] = 0x8000800080008;
  v253 = vbicq_s8(vmovl_s8(*v228.i8), vceqzq_s16(vandq_s8(v252, v242)));
  v254 = vandq_s8(v252, v251);
  v251.i64[0] = 0x2000200020002;
  v251.i64[1] = 0x2000200020002;
  v255 = vandq_s8(vceqq_s16(v254, v251), v242);
  v163 = v543;
  v166 = v540;
  v256 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v253, vandq_s8(vshll_n_s8(*v556.i8, 1uLL), v242)), v255), *v540.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v543.i8, *v177.i8), *v179.i8), 3uLL)), vaddq_s16(vmlal_s8(vaddw_u8(vmovl_s8(vbic_s8(*v238.i8, vcgt_u8(0x808080808080808, *v250.i8))), vand_s8(vadd_s8(*v250.i8, *v250.i8), 0x808080808080808)), *v245.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v247.i8, *v246.i8), *v248.i8), 3uLL)))), 0);
  if (vaddlvq_s8(v256))
  {
    v257.i64[0] = 0x707070707070707;
    v257.i64[1] = 0x707070707070707;
    v258 = vsubq_s8(v257, v235);
    v257.i64[0] = -1;
    v257.i64[1] = -1;
    v259 = vandq_s8(vsubq_s8(vshlq_s8(v257, v258), v230), v237);
    v164 = vbslq_s8(v256, vextq_s8(v17, v17, 0xCuLL), v557).u32[0];
    v161 = vbslq_s8(v256, v182, v558);
    v160 = vbslq_s8(v256, v183, v559);
    v551 = vbslq_s8(v256, v184, v551);
    v159 = vbslq_s8(v256, v185, v156);
    v552 = vbslq_s8(v256, v186, v552);
    v553 = vbslq_s8(v256, v187, v553);
    v554 = vbslq_s8(v256, v188, v554);
    v158 = vbslq_s8(v256, v189, v550);
    v166 = vbslq_s8(v256, v245, v540);
    v149 = vbslq_s8(v256, v246, v177);
    v163 = vbslq_s8(v256, v247, v543);
    v148 = vbslq_s8(v256, v248, v179);
    v157 = vbslq_s8(v256, v259, v548);
    v165 = vbslq_s8(v256, v250, v556);
    v76 = vbslq_s8(v256, v238, v228);
    v162 = v541;
  }

  else
  {
    v157 = v548;
    v158 = v550;
    v76 = v228;
    v159 = v156;
    v148 = v179;
    v161 = v558;
    v160 = v559;
    v149 = v177;
    v162 = v541;
    v164 = v557.i32[0];
  }

LABEL_16:
  v260 = vmovl_s8(*v165.i8);
  v261.i64[0] = 0x8000800080008;
  v261.i64[1] = 0x8000800080008;
  v262.i64[0] = 0x3000300030003;
  v262.i64[1] = 0x3000300030003;
  v263.i64[0] = 0x2000200020002;
  v263.i64[1] = 0x2000200020002;
  v264 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v76.i8), vceqzq_s16(vandq_s8(v260, v261))), vandq_s8(vshll_n_s8(*v165.i8, 1uLL), v261)), vandq_s8(vceqq_s16(vandq_s8(v260, v262), v263), v261)), *v166.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v163.i8, *v149.i8), *v148.i8), 3uLL));
  v265 = vpaddq_s16(v264, v264);
  if ((vpaddq_s16(v265, v265).i16[0] + 55) > 0x1FF)
  {
    *a1 = v545;
    a1[1] = v544;
    v167 = 63;
    a1[2] = v162;
    a1[3] = v546;
    result = 64;
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
    v269 = vzip1_s8(*v76.i8, *v260.i8);
    v270 = vadd_s16(v269, 0xFF00FF00FF00FFLL);
    v271 = vmovl_u16(vceqz_s16((*&v269 & 0xFF00FF00FF00FFLL)));
    v272.i64[0] = v271.u32[0];
    v272.i64[1] = v271.u32[1];
    v273 = vshrq_n_s64(vshlq_n_s64(v272, 0x38uLL), 0x38uLL);
    v272.i64[0] = v271.u32[2];
    v272.i64[1] = v271.u32[3];
    v274 = vshrq_n_s64(vshlq_n_s64(v272, 0x38uLL), 0x38uLL);
    v275 = vshlq_u32(vmovl_u16(vand_s8(v270, 0x7000700070007)), xmmword_29D2F1070);
    v272.i64[0] = v275.u32[0];
    v272.i64[1] = v275.u32[1];
    v276 = v272;
    v272.i64[0] = v275.u32[2];
    v272.i64[1] = v275.u32[3];
    v277 = vorrq_s8(vbicq_s8(v276, v273), vbicq_s8(v272, v274));
    v278 = *&vorr_s8(*v277.i8, *&vextq_s8(v277, v277, 8uLL)) | (32 * (v165.i8[1] & 0x1F)) | ((v165.i8[3] & 0x1F) << 15) | ((v165.i8[2] & 0x1F) << 10) | v165.i8[0] & 0x1F;
    v279 = (v278 << v267) | v268;
    if (v267 >= 0x20)
    {
      *v266 = v279;
      v279 = v278 >> (-8 * (a1 & 7u));
    }

    v280 = (v164 & 1 | (2 * (BYTE1(v164) & 0x1F))) & 0xFFFFFFFFFFFFF83FLL | ((BYTE2(v164) & 0x1F) << 6) | ((HIBYTE(v164) & 0x1F) << 11);
    v281 = (v267 + 32) & 0x38;
    v282 = v279 | (v280 << v281);
    if (v281 >= 0x30)
    {
      *(v266 + (((v267 + 32) >> 3) & 8)) = v282;
      v282 = v280 >> -v281;
    }

    v283 = v267 + 48;
    v284 = vsubq_s8(v76, v166);
    v285 = vsubq_s8(v76, v149);
    v286 = vsubq_s8(v76, v163);
    v287 = vsubq_s8(v76, v148);
    v288 = vtrn1q_s8(v284, v285);
    v289 = vtrn2q_s8(v284, v285);
    v290 = vtrn1q_s8(v286, v287);
    v291 = vtrn2q_s8(v286, v287);
    v292 = vzip1q_s16(v289, v291);
    v293 = vtrn2q_s16(v289, v291);
    v291.i64[0] = vzip1q_s32(vzip1q_s16(v288, v290), v292).u64[0];
    v293.i64[0] = vzip1q_s32(vtrn2q_s16(v288, v290), v293).u64[0];
    v290.i64[0] = 0x202020202020202;
    v290.i64[1] = 0x202020202020202;
    v294 = vandq_s8(vmovl_s16(vtst_s16(*v260.i8, 0x4000400040004)), v290);
    v290.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v290.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v287.i64[0] = -1;
    v287.i64[1] = -1;
    v295 = vshlq_u8(v287, vorrq_s8(v294, v290));
    v296 = vmovl_u8(vand_s8(*v295.i8, *v291.i8));
    v297 = vmovl_u8(vand_s8(*&vextq_s8(v295, v295, 8uLL), *v293.i8));
    v298 = vmovl_u8(*v294.i8);
    v299 = vmovl_high_u8(v294);
    v300 = vpaddq_s16(vshlq_u16(v296, vtrn1q_s16(0, v298)), vshlq_u16(v297, vtrn1q_s16(0, v299)));
    v301 = vpaddq_s16(v298, v299);
    v302 = vmovl_u16(*v301.i8);
    v303 = vmovl_high_u16(v301);
    v304 = vpaddq_s32(vshlq_u32(vmovl_u16(*v300.i8), vtrn1q_s32(0, v302)), vshlq_u32(vmovl_high_u16(v300), vtrn1q_s32(0, v303)));
    v305 = vpaddq_s32(v302, v303);
    v306.i64[0] = v304.u32[0];
    v306.i64[1] = v304.u32[1];
    v307 = v306;
    v306.i64[0] = v304.u32[2];
    v306.i64[1] = v304.u32[3];
    v308 = v306;
    v306.i64[0] = v305.u32[0];
    v306.i64[1] = v305.u32[1];
    v309 = v306;
    v306.i64[0] = v305.u32[2];
    v306.i64[1] = v305.u32[3];
    v310 = vpaddq_s64(vshlq_u64(v307, vzip1q_s64(0, v309)), vshlq_u64(v308, vzip1q_s64(0, v306)));
    v311 = vpaddq_s64(v309, v306);
    v312 = (v267 + 48) & 0x38;
    v313 = (v310.i64[0] << v312) | v282;
    if ((v311.i64[0] + v312) >= 0x40)
    {
      *(v266 + ((v283 >> 3) & 8)) = v313;
      v313 = v310.i64[0] >> -v312;
      if (!v312)
      {
        v313 = 0;
      }
    }

    v314 = vceqq_s8(v76, v166);
    v315 = v311.i64[0] + v283;
    v316 = v313 | (v310.i64[1] << v315);
    if ((v315 & 0x3F) + v311.i64[1] >= 0x40)
    {
      *(v266 + ((v315 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v316;
      v316 = v310.i64[1] >> -(v315 & 0x3F);
      if ((v315 & 0x3F) == 0)
      {
        v316 = 0;
      }
    }

    v317 = vandq_s8(v157, v314);
    v318 = v315 + v311.i64[1];
    v319.i64[0] = 0x808080808080808;
    v319.i64[1] = 0x808080808080808;
    v320.i64[0] = -1;
    v320.i64[1] = -1;
    v321 = vandq_s8(vextq_s8(vtstq_s8(v165, v319), 0, 0xCuLL), v76);
    v322.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v322.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v323 = vandq_s8(vshlq_u8(v320, vaddq_s8(v321, v322)), v157);
    v324 = vmovl_u8(*v321.i8);
    v325 = vpaddq_s16(vshlq_u16(vmovl_u8(*v323.i8), vtrn1q_s16(0, v324)), vmovl_high_u8(v323));
    v326 = vpaddq_s16(v324, vmovl_high_u8(v321));
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
    v337 = (v335.i64[0] << v318) | v316;
    if (v336.i64[0] + (v318 & 0x3F) >= 0x40)
    {
      *(v266 + ((v318 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v337;
      v337 = v335.i64[0] >> -(v318 & 0x3F);
      if ((v318 & 0x3F) == 0)
      {
        v337 = 0;
      }
    }

    v338 = vaddq_s8(v317, v161);
    v339 = v336.i64[0] + v318;
    v340 = v337 | (v335.i64[1] << v339);
    if ((v339 & 0x3F) + v336.i64[1] >= 0x40)
    {
      *(v266 + ((v339 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v340;
      v340 = v335.i64[1] >> -(v339 & 0x3F);
      if ((v339 & 0x3F) == 0)
      {
        v340 = 0;
      }
    }

    v341 = v339 + v336.i64[1];
    v342 = vextq_s8(0, v166, 0xCuLL);
    v343.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v343.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v344.i64[0] = -1;
    v344.i64[1] = -1;
    v345 = vandq_s8(vshlq_u8(v344, vaddq_s8(v342, v343)), v338);
    v346 = vmovl_u8(*v342.i8);
    v347 = vmovl_high_u8(v342);
    v348 = vpaddq_s16(vshlq_u16(vmovl_u8(*v345.i8), vtrn1q_s16(0, v346)), vshlq_u16(vmovl_high_u8(v345), vtrn1q_s16(0, v347)));
    v349 = vpaddq_s16(v346, v347);
    v350 = vmovl_u16(*v349.i8);
    v351 = vmovl_high_u16(v349);
    v352 = vpaddq_s32(vshlq_u32(vmovl_u16(*v348.i8), vtrn1q_s32(0, v350)), vshlq_u32(vmovl_high_u16(v348), vtrn1q_s32(0, v351)));
    v353 = vpaddq_s32(v350, v351);
    v354.i64[0] = v352.u32[0];
    v354.i64[1] = v352.u32[1];
    v355 = v354;
    v354.i64[0] = v352.u32[2];
    v354.i64[1] = v352.u32[3];
    v356 = v354;
    v354.i64[0] = v353.u32[0];
    v354.i64[1] = v353.u32[1];
    v357 = v354;
    v354.i64[0] = v353.u32[2];
    v354.i64[1] = v353.u32[3];
    v358 = vpaddq_s64(vshlq_u64(v355, vzip1q_s64(0, v357)), vshlq_u64(v356, vzip1q_s64(0, v354)));
    v359 = vpaddq_s64(v357, v354);
    v360 = (v358.i64[0] << v341) | v340;
    if (v359.i64[0] + (v341 & 0x3F) >= 0x40)
    {
      *(v266 + ((v341 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v360;
      v360 = v358.i64[0] >> -(v341 & 0x3F);
      if ((v341 & 0x3F) == 0)
      {
        v360 = 0;
      }
    }

    v361 = vceqq_s8(v76, v149);
    v362 = vaddq_s8(v160, v317);
    v363 = v359.i64[0] + v341;
    v364 = v360 | (v358.i64[1] << v363);
    if ((v363 & 0x3F) + v359.i64[1] >= 0x40)
    {
      *(v266 + ((v363 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v364;
      v364 = v358.i64[1] >> -(v363 & 0x3F);
      if ((v363 & 0x3F) == 0)
      {
        v364 = 0;
      }
    }

    v365 = vandq_s8(v157, v361);
    v366 = v363 + v359.i64[1];
    v367.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v367.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v368.i64[0] = -1;
    v368.i64[1] = -1;
    v369 = vandq_s8(vshlq_u8(v368, vaddq_s8(v166, v367)), v362);
    v370 = vmovl_u8(*v166.i8);
    v371 = vmovl_high_u8(v166);
    v372 = vpaddq_s16(vshlq_u16(vmovl_u8(*v369.i8), vtrn1q_s16(0, v370)), vshlq_u16(vmovl_high_u8(v369), vtrn1q_s16(0, v371)));
    v373 = vpaddq_s16(v370, v371);
    v374 = vmovl_u16(*v373.i8);
    v375 = vmovl_high_u16(v373);
    v376 = vpaddq_s32(vshlq_u32(vmovl_u16(*v372.i8), vtrn1q_s32(0, v374)), vshlq_u32(vmovl_high_u16(v372), vtrn1q_s32(0, v375)));
    v377 = vpaddq_s32(v374, v375);
    v378.i64[0] = v376.u32[0];
    v378.i64[1] = v376.u32[1];
    v379 = v378;
    v378.i64[0] = v376.u32[2];
    v378.i64[1] = v376.u32[3];
    v380 = v378;
    v378.i64[0] = v377.u32[0];
    v378.i64[1] = v377.u32[1];
    v381 = v378;
    v378.i64[0] = v377.u32[2];
    v378.i64[1] = v377.u32[3];
    v382 = vpaddq_s64(vshlq_u64(v379, vzip1q_s64(0, v381)), vshlq_u64(v380, vzip1q_s64(0, v378)));
    v383 = vpaddq_s64(v381, v378);
    v384 = (v382.i64[0] << v366) | v364;
    if (v383.i64[0] + (v366 & 0x3F) >= 0x40)
    {
      *(v266 + ((v366 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v384;
      v384 = v382.i64[0] >> -(v366 & 0x3F);
      if ((v366 & 0x3F) == 0)
      {
        v384 = 0;
      }
    }

    v385 = vaddq_s8(v551, v365);
    v386 = v383.i64[0] + v366;
    v387 = v384 | (v382.i64[1] << v386);
    if ((v386 & 0x3F) + v383.i64[1] >= 0x40)
    {
      *(v266 + ((v386 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v387;
      v387 = v382.i64[1] >> -(v386 & 0x3F);
      if ((v386 & 0x3F) == 0)
      {
        v387 = 0;
      }
    }

    v388 = v386 + v383.i64[1];
    v389.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v389.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v390.i64[0] = -1;
    v390.i64[1] = -1;
    v391 = vshlq_u8(v390, vaddq_s8(v149, v389));
    v392 = vandq_s8(v391, v385);
    v393 = vmovl_u8(*v392.i8);
    v394 = vmovl_high_u8(v392);
    v395 = vmovl_u8(*v149.i8);
    v396 = vmovl_high_u8(v149);
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
      *(v266 + ((v388 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v417;
      if ((v388 & 0x3F) != 0)
      {
        v417 = v415.i64[0] >> -(v388 & 0x3F);
      }

      else
      {
        v417 = 0;
      }
    }

    v418 = vceqq_s8(v76, v163);
    v419 = vaddq_s8(v159, v365);
    v420 = v416.i64[0] + v388;
    v421 = v417 | (v415.i64[1] << v420);
    if ((v420 & 0x3F) + v416.i64[1] >= 0x40)
    {
      *(v266 + ((v420 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v421;
      v421 = v415.i64[1] >> -(v420 & 0x3F);
      if ((v420 & 0x3F) == 0)
      {
        v421 = 0;
      }
    }

    v422 = vandq_s8(v157, v418);
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
      *(v266 + ((v423 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v430;
      v430 = v429.i64[0] >> -(v423 & 0x3F);
      if ((v423 & 0x3F) == 0)
      {
        v430 = 0;
      }
    }

    v431 = vaddq_s8(v552, v422);
    v432 = v416.i64[0] + v423;
    v433 = (v416.i64[0] + v423) & 0x3F;
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
    v436.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v436.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v437.i64[0] = -1;
    v437.i64[1] = -1;
    v438 = vshlq_u8(v437, vaddq_s8(v163, v436));
    v439 = vandq_s8(v438, v431);
    v440 = vmovl_u8(*v439.i8);
    v441 = vmovl_high_u8(v439);
    v442 = vmovl_u8(*v163.i8);
    v443 = vmovl_high_u8(v163);
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
    if (v463.i64[0] + (v435 & 0x3F) >= 0x40)
    {
      *(v266 + ((v435 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v464;
      if ((v435 & 0x3F) != 0)
      {
        v464 = v462.i64[0] >> -(v435 & 0x3F);
      }

      else
      {
        v464 = 0;
      }
    }

    v465 = vceqq_s8(v76, v148);
    v466 = vaddq_s8(v553, v422);
    v467 = v463.i64[0] + v435;
    v468 = v464 | (v462.i64[1] << v467);
    if ((v467 & 0x3F) + v463.i64[1] >= 0x40)
    {
      *(v266 + ((v467 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v468;
      v468 = v462.i64[1] >> -(v467 & 0x3F);
      if ((v467 & 0x3F) == 0)
      {
        v468 = 0;
      }
    }

    v469 = vandq_s8(v157, v465);
    v470 = v467 + v463.i64[1];
    v471 = vandq_s8(v438, v466);
    v472 = vpaddq_s16(vshlq_u16(vmovl_u8(*v471.i8), v444), vshlq_u16(vmovl_high_u8(v471), v445));
    v473 = vpaddq_s32(vshlq_u32(vmovl_u16(*v472.i8), v452), vshlq_u32(vmovl_high_u16(v472), v453));
    v474.i64[0] = v473.u32[0];
    v474.i64[1] = v473.u32[1];
    v475 = v474;
    v474.i64[0] = v473.u32[2];
    v474.i64[1] = v473.u32[3];
    v476 = vpaddq_s64(vshlq_u64(v475, v460), vshlq_u64(v474, v461));
    v477 = (v476.i64[0] << v470) | v468;
    if (v463.i64[0] + (v470 & 0x3F) >= 0x40)
    {
      *(v266 + ((v470 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v477;
      v477 = v476.i64[0] >> -(v470 & 0x3F);
      if ((v470 & 0x3F) == 0)
      {
        v477 = 0;
      }
    }

    v478 = vaddq_s8(v554, v469);
    v479 = v463.i64[0] + v470;
    v480 = (v463.i64[0] + v470) & 0x3F;
    v481 = v477 | (v476.i64[1] << v479);
    if ((v479 & 0x3F) + v463.i64[1] >= 0x40)
    {
      *(v266 + ((v479 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v481;
      v481 = v476.i64[1] >> -v480;
      if (!v480)
      {
        v481 = 0;
      }
    }

    v482 = v479 + v463.i64[1];
    v483.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v483.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v484.i64[0] = -1;
    v484.i64[1] = -1;
    v485 = vshlq_u8(v484, vaddq_s8(v148, v483));
    v486 = vandq_s8(v485, v478);
    v487 = vmovl_u8(*v486.i8);
    v488 = vmovl_high_u8(v486);
    v489 = vmovl_u8(*v148.i8);
    v490 = vmovl_high_u8(v148);
    v491 = vtrn1q_s16(0, v489);
    v492 = vtrn1q_s16(0, v490);
    v493 = vpaddq_s16(vshlq_u16(v487, v491), vshlq_u16(v488, v492));
    v494 = vpaddq_s16(v489, v490);
    v495 = vmovl_u16(*v493.i8);
    v496 = vmovl_high_u16(v493);
    v497 = vmovl_u16(*v494.i8);
    v498 = vmovl_high_u16(v494);
    v499 = vtrn1q_s32(0, v497);
    v500 = vtrn1q_s32(0, v498);
    v501 = vpaddq_s32(vshlq_u32(v495, v499), vshlq_u32(v496, v500));
    v502 = vpaddq_s32(v497, v498);
    v503.i64[0] = v501.u32[0];
    v503.i64[1] = v501.u32[1];
    v504 = v503;
    v503.i64[0] = v501.u32[2];
    v503.i64[1] = v501.u32[3];
    v505 = v503;
    v503.i64[0] = v502.u32[0];
    v503.i64[1] = v502.u32[1];
    v506 = v503;
    v503.i64[0] = v502.u32[2];
    v503.i64[1] = v502.u32[3];
    v507 = vzip1q_s64(0, v506);
    v508 = vzip1q_s64(0, v503);
    v509 = vpaddq_s64(vshlq_u64(v504, v507), vshlq_u64(v505, v508));
    v510 = vpaddq_s64(v506, v503);
    v511 = (v509.i64[0] << v482) | v481;
    if (v510.i64[0] + (v482 & 0x3F) > 0x3F)
    {
      *(v266 + ((v482 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v511;
      if ((v482 & 0x3F) != 0)
      {
        v511 = v509.i64[0] >> -(v482 & 0x3F);
      }

      else
      {
        v511 = 0;
      }
    }

    v512 = vaddq_s8(v158, v469);
    v513 = v510.i64[0] + v482;
    v514 = v511 | (v509.i64[1] << v513);
    if ((v513 & 0x3F) + v510.i64[1] >= 0x40)
    {
      *(v266 + ((v513 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v514;
      v514 = v509.i64[1] >> -(v513 & 0x3F);
      if ((v513 & 0x3F) == 0)
      {
        v514 = 0;
      }
    }

    v515 = v513 + v510.i64[1];
    v516 = vandq_s8(v485, v512);
    v517 = vpaddq_s16(vshlq_u16(vmovl_u8(*v516.i8), v491), vshlq_u16(vmovl_high_u8(v516), v492));
    v518 = vpaddq_s32(vshlq_u32(vmovl_u16(*v517.i8), v499), vshlq_u32(vmovl_high_u16(v517), v500));
    v519.i64[0] = v518.u32[0];
    v519.i64[1] = v518.u32[1];
    v520 = v519;
    v519.i64[0] = v518.u32[2];
    v519.i64[1] = v518.u32[3];
    v521 = vpaddq_s64(vshlq_u64(v520, v507), vshlq_u64(v519, v508));
    v522 = (v521.i64[0] << v515) | v514;
    if (v510.i64[0] + (v515 & 0x3F) >= 0x40)
    {
      *(v266 + ((v515 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v522;
      v522 = v521.i64[0] >> -(v515 & 0x3F);
      if ((v515 & 0x3F) == 0)
      {
        v522 = 0;
      }
    }

    v523 = v510.i64[0] + v515;
    v524 = (v510.i64[0] + v515) & 0x3F;
    v525 = v522 | (v521.i64[1] << (v510.i8[0] + v515));
    if ((v524 + v510.i64[1]) >= 0x40)
    {
      *(v266 + ((v523 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v525;
      v525 = v521.i64[1] >> -v524;
      if (!v524)
      {
        v525 = 0;
      }
    }

    v526 = v523 + v510.i64[1];
    if ((v526 & 0x3F) != 0)
    {
      *(v266 + ((v526 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v525;
    }

    result = (v526 - v267 + 7) >> 3;
    v167 = *a2 | (result - 1);
  }

LABEL_91:
  *a2 = v167;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, uint16x8_t *a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, (v11 + v12), a2, v15, v14);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + 1, a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v12 + 16), a2, v20, v19);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, (v11 + 8 * a2), a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, (v11 + 12 * a2), a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + 8 * a2 + 16), a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + 12 * a2 + 16), a2, v30, v29);
}

void *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(void *result, uint64_t a2)
{
  v2 = 8 * ((&v14 + 6) & 7);
  v14 |= 1 << v2;
  v3 = v2 | 1;
  v4 = (v2 | 6) - v2;
  if ((v2 | 1) - v2 > 0xB)
  {
    v4 = (v2 | 1) - v2;
  }

  if (v4 - 12 >= 0xFFFFFFFFFFFFFFEFLL)
  {
    v5 = 0;
    v6 = 0;
    if ((v2 | 1) - v2 <= 0xB)
    {
      v3 = v2 | 6;
    }

    v7 = 5;
    do
    {
      v8 = 64 - v3;
      if (64 - v3 >= v7)
      {
        v8 = v7;
      }

      *(&v14 + v5) |= ((0xFFFFFFFFFFFFFFFFLL >> v6) & ~(-1 << v8)) << v3;
      v6 += v8;
      v9 = v8 + v3;
      v5 += v9 >> 6;
      v3 = v9 & 0x3F;
      v7 -= v8;
    }

    while (v7);
    if (v3 - v2 + (v5 << 6) - 12 >= 0xFFFFFFFFFFFFFFEFLL)
    {
      v10 = 0;
      v11 = 5;
      do
      {
        v12 = 64 - v3;
        if (64 - v3 >= v11)
        {
          v12 = v11;
        }

        *(&v14 + v5) |= ((0xFFFFFFFFFFFFFFFFLL >> v10) & ~(-1 << v12)) << v3;
        v10 += v12;
        v13 = v12 + v3;
        v5 += v13 >> 6;
        v3 = v13 & 0x3F;
        v11 -= v12;
      }

      while (v11);
    }
  }

  *result = 0;
  *(result + a2) = 0;
  *(result + 2 * a2) = 0;
  *(result + 3 * a2) = 0;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int64x2_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v309 = 0;
  v308 = (8 * (a3 & 7)) | 0x200;
  v306 = 8 * (a3 & 7);
  v307 = a3 & 0xFFFFFFFFFFFFFFF8;
  result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)10,AGX::AppleCompressionGen2::Vec<signed char>>(&v311, v316, &v310, &v306, a4);
  v8.i64[0] = 0x303030303030303;
  v8.i64[1] = 0x303030303030303;
  v305 = vandq_s8(v311, v8);
  v9 = vbicq_s8(v316[0], vceqq_s8(v305, v8));
  v316[0] = v9;
  v312 = v9;
  v313 = v9;
  v314 = v9;
  v315 = v9;
  v10.i64[0] = 0x202020202020202;
  v10.i64[1] = 0x202020202020202;
  v11 = vandq_s8(vmovl_s16(vtst_s16(*&vmovl_u8(*v311.i8), 0x4000400040004)), v10);
  v12 = v306;
  if (vmaxvq_s8(v11) < 1)
  {
    v26.i64[0] = -1;
    v26.i64[1] = -1;
    v302 = v26;
    v303 = v26;
    v301 = v26;
    v304 = v26;
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
    v20 = v306 + v18;
    if (v308)
    {
      v21 = v308 >= v20;
    }

    else
    {
      v21 = 1;
    }

    v22 = v21;
    if (v18 <= 0x80 && (v22 & 1) != 0)
    {
      v7.i64[0] = 63;
      v23 = (v307 + 8 * (v306 >> 6));
      v24 = vaddq_s64(vdupq_lane_s64(vandq_s8(v306, v7).i64[0], 0), vzip1q_s64(0, v17));
      v25 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v23, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v24)), vshlq_u64(vdupq_lane_s64(v23->i64[0], 0), vnegq_s64(v24)));
      if ((v306 & 0x3F) + v19 >= 0x81)
      {
        v25 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v23[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v24)), vshlq_u64(vdupq_laneq_s64(v23[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v24))), v25);
      }

      v12 = v20;
    }

    else
    {
      v309 = 1;
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
    v312 = vsubq_s8(v312, v37);
    v313 = vsubq_s8(v313, v38);
    v314 = vsubq_s8(v314, v39);
    v315 = vsubq_s8(v315, v40);
    v301 = vceqzq_s8(v38);
    v302 = vceqzq_s8(v39);
    v303 = vceqzq_s8(v40);
    v304 = vceqzq_s8(v37);
  }

  v41.i64[0] = 0x808080808080808;
  v41.i64[1] = 0x808080808080808;
  v42 = 0uLL;
  v43 = vandq_s8(vextq_s8(vtstq_s8(v311, v41), 0, 0xCuLL), v9);
  v44 = vmovl_u8(*&vpaddq_s8(v43, v43));
  v45 = vmovl_u16(*&vpaddq_s16(v44, v44));
  v46 = vpaddq_s32(v45, v45).u64[0];
  v47.i64[0] = v46;
  v47.i64[1] = HIDWORD(v46);
  v48 = v47;
  v49 = vaddvq_s64(v47);
  if (v308)
  {
    v50 = v308 >= v12 + v49;
  }

  else
  {
    v50 = 1;
  }

  v51 = v50;
  if (v49 <= 0x80 && (v51 & 1) != 0)
  {
    v52 = vaddq_s64(vdupq_n_s64(v12 & 0x3F), vzip1q_s64(0, v48));
    v53 = (v307 + 8 * (v12 >> 6));
    v42 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v53, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v52)), vshlq_u64(vdupq_lane_s64(v53->i64[0], 0), vnegq_s64(v52)));
    if ((v12 & 0x3F) + v49 >= 0x81)
    {
      v42 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v53[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v52)), vshlq_u64(vdupq_laneq_s64(v53[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v52))), v42);
    }

    v12 += v49;
  }

  else
  {
    v309 = 1;
  }

  v54 = v311.i8[0] & 3;
  if (v54 == 2)
  {
    if (v308)
    {
      v55 = v12 + 4;
      v56 = v12 + 8;
      if (v308 >= v12 + 4)
      {
        v12 += 4;
      }

      else
      {
        v56 = v12 + 4;
      }

      if (v308 >= v56)
      {
        v12 = v56;
      }

      if (v308 < v55 || v308 < v56)
      {
        v309 = 1;
      }
    }

    else
    {
      v12 += 8;
    }
  }

  v57 = 0uLL;
  v58 = vextq_s8(0, v312, 0xCuLL);
  v59 = vmovl_u8(*&vpaddq_s8(v58, v58));
  v60 = vmovl_u16(*&vpaddq_s16(v59, v59));
  v61 = vpaddq_s32(v60, v60).u64[0];
  v62.i64[0] = v61;
  v62.i64[1] = HIDWORD(v61);
  v63 = v62;
  v64 = vaddvq_s64(v62);
  v65 = v12 + v64;
  if (v308)
  {
    v66 = v308 >= v65;
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
    v70 = v307;
    v71 = (v307 + 8 * (v12 >> 6));
    v57 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v71, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v69)), vshlq_u64(vdupq_lane_s64(v71->i64[0], 0), vnegq_s64(v69)));
    if (v68 + v64 >= 0x81)
    {
      v57 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v71[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v69)), vshlq_u64(vdupq_laneq_s64(v71[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v69))), v57);
    }

    v72 = v309;
    v12 = v65;
  }

  else
  {
    v72 = 1;
    v70 = v307;
  }

  v73 = vmovl_u8(*&vpaddq_s8(v312, v312));
  v74 = vmovl_u16(*&vpaddq_s16(v73, v73));
  v75 = vpaddq_s32(v74, v74).u64[0];
  v76.i64[0] = v75;
  v76.i64[1] = HIDWORD(v75);
  v77 = v76;
  v78 = vaddvq_s64(v76);
  v79 = v12 + v78;
  if (v308)
  {
    v80 = v308 >= v79;
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

  v87 = vmovl_u8(*&vpaddq_s8(v313, v313));
  v88 = vmovl_u16(*&vpaddq_s16(v87, v87));
  v89 = vpaddq_s32(v88, v88).u64[0];
  v90.i64[0] = v89;
  v90.i64[1] = HIDWORD(v89);
  v91 = v90;
  v92 = vaddvq_s64(v90);
  v93 = v92;
  v94 = v79 + v92;
  if (v308)
  {
    v95 = v308 >= v94;
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
  if (v308)
  {
    v101 = v308 >= v100;
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

  v108 = vmovl_u8(*&vpaddq_s8(v314, v314));
  v109 = vmovl_u16(*&vpaddq_s16(v108, v108));
  v110 = vpaddq_s32(v109, v109).u64[0];
  v111.i64[0] = v110;
  v111.i64[1] = HIDWORD(v110);
  v112 = v111;
  v113 = vaddvq_s64(v111);
  v114 = v113;
  v115 = v100 + v113;
  if (v308)
  {
    v116 = v308 >= v115;
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
  if (v308)
  {
    v122 = v308 >= v121;
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

  v129 = vmovl_u8(*&vpaddq_s8(v315, v315));
  v130 = vmovl_u16(*&vpaddq_s16(v129, v129));
  v131 = vpaddq_s32(v130, v130).u64[0];
  v132.i64[0] = v131;
  v132.i64[1] = HIDWORD(v131);
  v133 = v132;
  v134 = vaddvq_s64(v132);
  v135 = v134;
  v136 = v121 + v134;
  if (v308)
  {
    v137 = v308 >= v136;
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
  if (v308)
  {
    v143 = v308 >= v142;
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

  if ((v72 & 1) != 0 || v308 + 8 * result - v142 - 512 >= 9 || v54 == 2)
  {
LABEL_132:
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(a1, a2);
    return 0;
  }

  else
  {
    v148 = vzip1_s32(*v45.i8, *&vextq_s8(v45, v45, 8uLL));
    v149 = vzip1_s32(*v88.i8, *&vextq_s8(v88, v88, 8uLL));
    v150 = vzip1_s32(*v109.i8, *&vextq_s8(v109, v109, 8uLL));
    v151 = vzip1_s32(*v130.i8, *&vextq_s8(v130, v130, 8uLL));
    v152.i64[0] = v148.u32[0];
    v152.i64[1] = v148.u32[1];
    v153 = vshlq_u64(v42, vnegq_s64(v152));
    v154 = vzip2q_s64(v42, v153);
    v155 = vzip1q_s64(v42, v153);
    v152.i64[0] = v149.u32[0];
    v152.i64[1] = v149.u32[1];
    v156 = vnegq_s64(v152);
    v157 = vshlq_u64(v82, v156);
    v158 = vzip2q_s64(v82, v157);
    v159 = vzip1q_s64(v82, v157);
    v160 = vshlq_u64(v107, v156);
    v161 = vzip2q_s64(v107, v160);
    v162 = vzip1q_s64(v107, v160);
    v152.i64[0] = v150.u32[0];
    v152.i64[1] = v150.u32[1];
    v163 = vnegq_s64(v152);
    v164 = vshlq_u64(v103, v163);
    v165 = vzip2q_s64(v103, v164);
    v166 = vzip1q_s64(v103, v164);
    v167 = vshlq_u64(v128, v163);
    v152.i64[0] = v151.u32[0];
    v152.i64[1] = v151.u32[1];
    v168 = vnegq_s64(v152);
    v169 = vshlq_u64(v124, v168);
    v170 = vuzp1q_s32(v155, v154);
    v171 = vuzp1q_s32(v159, v158);
    v172 = vuzp1q_s32(v162, v161);
    v173 = vnegq_s32((*&v44 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v174 = vnegq_s32((*&v87 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v175 = vuzp1q_s32(v166, v165);
    v176 = vnegq_s32((*&v108 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v177 = vuzp1q_s32(vzip1q_s64(v128, v167), vzip2q_s64(v128, v167));
    v178 = vuzp1q_s32(vzip1q_s64(v124, v169), vzip2q_s64(v124, v169));
    v179 = vnegq_s32((*&v129 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v180 = vshlq_u32(v170, v173);
    v181 = vshlq_u32(v171, v174);
    v182 = vshlq_u32(v172, v174);
    v183 = vshlq_u32(v175, v176);
    v184 = vshlq_u32(v177, v176);
    v185 = vzip2q_s32(v170, v180);
    v186 = vzip1q_s32(v170, v180);
    v187 = vzip2q_s32(v171, v181);
    v188 = vzip1q_s32(v171, v181);
    v189 = vzip2q_s32(v172, v182);
    v190 = vzip1q_s32(v172, v182);
    v191 = vzip2q_s32(v175, v183);
    v192 = vzip1q_s32(v175, v183);
    v193 = vzip2q_s32(v177, v184);
    v194 = vzip1q_s32(v177, v184);
    v195 = vshlq_u32(v178, v179);
    v196 = vzip2q_s32(v178, v195);
    v197 = vzip1q_s32(v178, v195);
    v198 = vuzp1q_s16(v186, v185);
    v199 = vuzp1q_s16(v188, v187);
    v200 = vuzp1q_s16(v190, v189);
    v201 = vuzp1q_s16(v192, v191);
    v202 = vnegq_s16((*&v313 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v203 = vuzp1q_s16(v194, v193);
    v204 = vuzp1q_s16(v197, v196);
    v205 = vshlq_u16(v198, vnegq_s16((*&v43 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v206 = vshlq_u16(v199, v202);
    v207 = vshlq_u16(v200, v202);
    v208 = vzip2q_s16(v198, v205);
    v209 = vzip1q_s16(v198, v205);
    v210 = vuzp1q_s8(vzip1q_s16(v199, v206), vzip2q_s16(v199, v206));
    v206.i64[0] = 0x808080808080808;
    v206.i64[1] = 0x808080808080808;
    v211 = vuzp1q_s8(vzip1q_s16(v200, v207), vzip2q_s16(v200, v207));
    v199.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v199.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v212 = vsubq_s8(v206, v43);
    v213 = vaddq_s8(v43, v199);
    v214.i64[0] = 0x808080808080808;
    v214.i64[1] = 0x808080808080808;
    v215 = vshlq_s8(vuzp1q_s8(v209, v208), v212);
    v212.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v212.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v216 = vsubq_s8(v214, v313);
    v217 = vaddq_s8(v313, v212);
    v218 = vshlq_s8(v210, v216);
    v219 = vnegq_s16((*&v314 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v220 = vshlq_s8(v215, v213);
    v221 = vshlq_s8(v218, v217);
    v222 = vshlq_s8(vshlq_s8(v211, v216), v217);
    v223 = vdupq_lane_s32(*v220.i8, 0);
    v224 = vandq_s8(v301, v223);
    v225 = vsubq_s8(v221, v224);
    v226 = vsubq_s8(v222, v224);
    v227 = vshlq_u16(v201, v219);
    v228 = vshlq_u16(v203, v219);
    v224.i64[0] = 0x808080808080808;
    v224.i64[1] = 0x808080808080808;
    v213.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v213.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v229 = vsubq_s8(v224, v314);
    v230 = vaddq_s8(v314, v213);
    v231 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v203, v228), vzip2q_s16(v203, v228)), v229);
    v232 = vnegq_s16((*&v315 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v233 = vandq_s8(v302, v223);
    v234 = vsubq_s8(vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v201, v227), vzip2q_s16(v201, v227)), v229), v230), v233);
    v235 = vsubq_s8(vshlq_s8(v231, v230), v233);
    v236 = vshlq_u16(v204, v232);
    v233.i64[0] = 0x808080808080808;
    v233.i64[1] = 0x808080808080808;
    v231.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v231.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v237 = vsubq_s8(v233, v315);
    v238 = vaddq_s8(v315, v231);
    v239 = vshlq_u64(v147, v168);
    v240 = vuzp1q_s32(vzip1q_s64(v147, v239), vzip2q_s64(v147, v239));
    v241 = vshlq_u32(v240, v179);
    v242 = vuzp1q_s16(vzip1q_s32(v240, v241), vzip2q_s32(v240, v241));
    v243 = vshlq_u16(v242, v232);
    v244 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v204, v236), vzip2q_s16(v204, v236)), v237), v238);
    v245 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v242, v243), vzip2q_s16(v242, v243)), v237), v238);
    v246 = vandq_s8(v303, v223);
    v247 = vsubq_s8(v244, v246);
    v248 = vsubq_s8(v245, v246);
    *v244.i8 = vzip1_s32(*v60.i8, *&vextq_s8(v60, v60, 8uLL));
    *v245.i8 = vzip1_s32(*v74.i8, *&vextq_s8(v74, v74, 8uLL));
    v152.i64[0] = v244.u32[0];
    v152.i64[1] = v244.u32[1];
    v249 = v152;
    v152.i64[0] = v245.u32[0];
    v152.i64[1] = v245.u32[1];
    v250 = vshlq_u64(v57, vnegq_s64(v249));
    v251 = vshlq_u64(v86, vnegq_s64(v152));
    v252 = vuzp1q_s32(vzip1q_s64(v57, v250), vzip2q_s64(v57, v250));
    v253 = vuzp1q_s32(vzip1q_s64(v86, v251), vzip2q_s64(v86, v251));
    v254 = vshlq_u32(v252, vnegq_s32((*&v59 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v255 = vshlq_u32(v253, vnegq_s32((*&v73 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v256 = vuzp1q_s16(vzip1q_s32(v252, v254), vzip2q_s32(v252, v254));
    v257 = vuzp1q_s16(vzip1q_s32(v253, v255), vzip2q_s32(v253, v255));
    v258 = vshlq_u16(v256, vnegq_s16((*&v58 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v259 = vshlq_u16(v257, vnegq_s16((*&v312 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v260 = vzip2q_s16(v256, v258);
    v261 = vzip1q_s16(v256, v258);
    v262 = vzip2q_s16(v257, v259);
    v263 = vzip1q_s16(v257, v259);
    v259.i64[0] = 0x808080808080808;
    v259.i64[1] = 0x808080808080808;
    v264 = vuzp1q_s8(v263, v262);
    v262.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v262.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v265 = vshlq_s8(vshlq_s8(v264, vsubq_s8(v259, v312)), vaddq_s8(v312, v262));
    v266 = vaddq_s8(vandq_s8(v220, v304), vshlq_s8(vshlq_s8(vuzp1q_s8(v261, v260), vsubq_s8(v259, v58)), vaddq_s8(v58, v262)));
    v267 = vandq_s8(v304, v223);
    v268.i64[0] = 0x101010101010101;
    v268.i64[1] = 0x101010101010101;
    v269 = vsubq_s8(v266, v267);
    v270 = vsubq_s8(v265, v267);
    if (vaddlvq_s8(vceqq_s8(v305, v268)))
    {
      v271 = vnegq_s8(vandq_s8(v311, v268));
      v272 = v270;
      v272.i32[3] = v269.i32[0];
      v273 = v269;
      v273.i32[0] = v270.i32[3];
      v317.val[0] = vbslq_s8(v271, v273, v269);
      v317.val[1] = vbslq_s8(v271, v272, v270);
      v272.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
      v272.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
      v318.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(v317, xmmword_29D2F0F80), v271), v317.val[0]);
      v318.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(v317, v272), v271), v317.val[1]);
      v269 = vaddq_s8(vandq_s8(vqtbl2q_s8(v318, xmmword_29D2F0F90), v271), v318.val[0]);
      v270 = vaddq_s8(vandq_s8(vqtbl2q_s8(v318, v272), v271), v318.val[1]);
      v318.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v225.i8, xmmword_29D2F0FA0), v271), v225);
      v318.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v225.i8, xmmword_29D2F0FB0), v271), v226);
      v225 = vaddq_s8(vandq_s8(vqtbl2q_s8(v318, xmmword_29D2F0FC0), v271), v318.val[0]);
      v226 = vaddq_s8(vandq_s8(vqtbl2q_s8(v318, v272), v271), v318.val[1]);
      v318.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v234.i8, xmmword_29D2F0FD0), v271), v234);
      v318.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v234.i8, xmmword_29D2F0F80), v271), v235);
      v234 = vaddq_s8(vandq_s8(vqtbl2q_s8(v318, v272), v271), v318.val[0]);
      v235 = vaddq_s8(vandq_s8(vqtbl2q_s8(v318, xmmword_29D2F0FE0), v271), v318.val[1]);
      v317.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v247.i8, xmmword_29D2F0FF0), v271), v247);
      v317.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v247.i8, xmmword_29D2F0F80), v271), v248);
      v247 = vaddq_s8(vandq_s8(vqtbl2q_s8(v317, v272), v271), v317.val[0]);
      v248 = vaddq_s8(vandq_s8(vqtbl2q_s8(v317, xmmword_29D2F1000), v271), v317.val[1]);
    }

    v274 = vaddq_s8(v310, v269);
    v275 = vaddq_s8(v270, v310);
    v276 = vaddq_s8(v225, v310);
    v277 = vaddq_s8(v226, v310);
    v278 = vaddq_s8(v234, v310);
    v279 = vaddq_s8(v235, v310);
    v280 = vaddq_s8(v247, v310);
    v281 = vaddq_s8(v248, v310);
    v282.i64[0] = 0x1010101010101010;
    v282.i64[1] = 0x1010101010101010;
    v283 = vceqzq_s8(vandq_s8(v311, v282));
    v284 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v274, xmmword_29D2F1230), v283), v274);
    v285 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v275, xmmword_29D2F1230), v283), v275);
    v286 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v276, xmmword_29D2F1230), v283), v276);
    v287 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v277, xmmword_29D2F1230), v283), v277);
    v288 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v278, xmmword_29D2F1230), v283), v278);
    v289 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v279, xmmword_29D2F1230), v283), v279);
    v290 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v280, xmmword_29D2F1230), v283), v280);
    v291 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v281, xmmword_29D2F1230), v283), v281);
    v276.i64[0] = 0x3E003E003E003ELL;
    v276.i64[1] = 0x3E003E003E003ELL;
    v281.i64[0] = 0xF800F800F800F800;
    v281.i64[1] = 0xF800F800F800F800;
    v292 = vbslq_s8(v281, vshrn_high_n_s32(vshrn_n_s32(v284, 0xDuLL), v285, 0xDuLL), vbslq_s8(xmmword_29D2F1240, vshrn_high_n_s32(vshrn_n_s32(v284, 0xAuLL), v285, 0xAuLL), vbslq_s8(v276, vshrn_high_n_s32(vshrn_n_s32(v284, 7uLL), v285, 7uLL), vuzp1q_s16(v284, v285))));
    v293 = vbslq_s8(v281, vshrn_high_n_s32(vshrn_n_s32(v286, 0xDuLL), v287, 0xDuLL), vbslq_s8(xmmword_29D2F1240, vshrn_high_n_s32(vshrn_n_s32(v286, 0xAuLL), v287, 0xAuLL), vbslq_s8(v276, vshrn_high_n_s32(vshrn_n_s32(v286, 7uLL), v287, 7uLL), vuzp1q_s16(v286, v287))));
    v294 = vbslq_s8(v281, vshrn_high_n_s32(vshrn_n_s32(v288, 0xDuLL), v289, 0xDuLL), vbslq_s8(xmmword_29D2F1240, vshrn_high_n_s32(vshrn_n_s32(v288, 0xAuLL), v289, 0xAuLL), vbslq_s8(v276, vshrn_high_n_s32(vshrn_n_s32(v288, 7uLL), v289, 7uLL), vuzp1q_s16(v288, v289))));
    v295 = vbslq_s8(xmmword_29D2F1240, vshrn_high_n_s32(vshrn_n_s32(v290, 0xAuLL), v291, 0xAuLL), vbslq_s8(v276, vshrn_high_n_s32(vshrn_n_s32(v290, 7uLL), v291, 7uLL), vuzp1q_s16(v290, v291)));
    v296 = vshrn_high_n_s32(vshrn_n_s32(v290, 0xDuLL), v291, 0xDuLL);
    v297 = vzip2q_s64(v292, v293);
    v292.i64[1] = v293.i64[0];
    v298 = vbslq_s8(v281, v296, v295);
    *a1 = v292;
    *(a1 + a2) = v297;
    v299 = vzip2q_s64(v294, v298);
    v294.i64[1] = v298.i64[0];
    v300 = (a1 + 2 * a2);
    *v300 = v294;
    *(v300 + a2) = v299;
  }

  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(uint16x8_t *a1, char *a2, int64x2_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = *(a3 + a4);
  v7 = vzip1q_s64(*a3, v6);
  v8 = vzip2q_s64(*a3, v6);
  v9 = (a3 + 2 * a4);
  v10 = *(v9 + a4);
  v11 = vzip1q_s64(*v9, v10);
  v12 = vzip2q_s64(*v9, v10);
  v13.i64[0] = 0x100000001;
  v13.i64[1] = 0x100000001;
  v10.i64[0] = 0x1F0000001F00;
  v10.i64[1] = 0x1F0000001F00;
  v14.i64[0] = 0x1F0000001F0000;
  v14.i64[1] = 0x1F0000001F0000;
  v545 = v7;
  v15.i64[0] = 0x1F0000001F000000;
  v15.i64[1] = 0x1F0000001F000000;
  v16 = vbslq_s8(v15, vshll_n_u16(*v7.i8, 0xDuLL), vbslq_s8(v14, vshll_n_u16(*v7.i8, 0xAuLL), vbslq_s8(v10, vshll_n_u16(*v7.i8, 7uLL), vbslq_s8(v13, vmovl_u16(*v7.i8), 0))));
  v17 = vbslq_s8(v15, vshll_high_n_u16(v7, 0xDuLL), vbslq_s8(v14, vshll_high_n_u16(v7, 0xAuLL), vbslq_s8(v10, vshll_high_n_u16(v7, 7uLL), vbslq_s8(v13, vmovl_high_u16(v7), 0))));
  v544 = v8;
  v18 = vbslq_s8(v15, vshll_n_u16(*v8.i8, 0xDuLL), vbslq_s8(v14, vshll_n_u16(*v8.i8, 0xAuLL), vbslq_s8(v10, vshll_n_u16(*v8.i8, 7uLL), vbslq_s8(v13, vmovl_u16(*v8.i8), 0))));
  v19 = vbslq_s8(v15, vshll_high_n_u16(v8, 0xDuLL), vbslq_s8(v14, vshll_high_n_u16(v8, 0xAuLL), vbslq_s8(v10, vshll_high_n_u16(v8, 7uLL), vbslq_s8(v13, vmovl_high_u16(v8), 0))));
  v20 = vbslq_s8(v15, vshll_n_u16(*v11.i8, 0xDuLL), vbslq_s8(v14, vshll_n_u16(*v11.i8, 0xAuLL), vbslq_s8(v10, vshll_n_u16(*v11.i8, 7uLL), vbslq_s8(v13, vmovl_u16(*v11.i8), 0))));
  v21 = vbslq_s8(v15, vshll_high_n_u16(v11, 0xDuLL), vbslq_s8(v14, vshll_high_n_u16(v11, 0xAuLL), vbslq_s8(v10, vshll_high_n_u16(v11, 7uLL), vbslq_s8(v13, vmovl_high_u16(v11), 0))));
  v546 = v12;
  v22 = vbslq_s8(v15, vshll_n_u16(*v12.i8, 0xDuLL), vbslq_s8(v14, vshll_n_u16(*v12.i8, 0xAuLL), vbslq_s8(v10, vshll_n_u16(*v12.i8, 7uLL), vbslq_s8(v13, vmovl_u16(*v12.i8), 0))));
  v23 = vbslq_s8(v15, vshll_high_n_u16(v12, 0xDuLL), vbslq_s8(v14, vshll_high_n_u16(v12, 0xAuLL), vbslq_s8(v10, vshll_high_n_u16(v12, 7uLL), vbslq_s8(v13, vmovl_high_u16(v12), 0))));
  v24 = vdupq_lane_s32(*v16.i8, 0);
  v25 = vshlq_s8(vshlq_s8(vsubq_s8(v18, v24), xmmword_29D2F1250), xmmword_29D2F1260);
  v26 = vshlq_s8(vshlq_s8(vsubq_s8(v20, v24), xmmword_29D2F1250), xmmword_29D2F1260);
  v27 = vshlq_s8(vshlq_s8(vsubq_s8(v21, v24), xmmword_29D2F1250), xmmword_29D2F1260);
  v558 = vshlq_s8(vshlq_s8(vsubq_s8(v16, v24), xmmword_29D2F1250), xmmword_29D2F1260);
  v559 = vshlq_s8(vshlq_s8(vsubq_s8(v17, v24), xmmword_29D2F1250), xmmword_29D2F1260);
  v28 = vqtbl1q_s8(vmaxq_s8(v558, v559), xmmword_29D2F0F70);
  v29 = vqtbl1q_s8(vminq_s8(v558, v559), xmmword_29D2F0F70);
  v30 = vpmaxq_s8(v28, v28);
  v31 = vpminq_s8(v29, v29);
  v32 = vpmaxq_s8(v30, v30);
  v33 = vpminq_s8(v31, v31);
  v34 = vzip1q_s8(v32, v33);
  v35.i64[0] = 0x808080808080808;
  v35.i64[1] = 0x808080808080808;
  v36 = vbicq_s8(vsubq_s8(v35, vclsq_s8(v34)), vceqzq_s8(v34));
  v555 = vshlq_s8(vshlq_s8(vsubq_s8(v19, v24), xmmword_29D2F1250), xmmword_29D2F1260);
  v37 = vqtbl1q_s8(vmaxq_s8(v25, v555), xmmword_29D2F0F70);
  v38 = vqtbl1q_s8(vminq_s8(v25, v555), xmmword_29D2F0F70);
  v39 = vpmaxq_s8(v37, v37);
  v40 = vpminq_s8(v38, v38);
  v41 = vpmaxq_s8(v39, v39);
  v42 = vpminq_s8(v40, v40);
  v43 = vmaxq_s8(v32, v41);
  v44 = vminq_s8(v33, v42);
  v45 = vzip1q_s8(v41, v42);
  v46 = vbicq_s8(vsubq_s8(v35, vclsq_s8(v45)), vceqzq_s8(v45));
  v47 = vqtbl1q_s8(vmaxq_s8(v26, v27), xmmword_29D2F0F70);
  v48 = vqtbl1q_s8(vminq_s8(v26, v27), xmmword_29D2F0F70);
  v49 = vpmaxq_s8(v47, v47);
  v50 = vpminq_s8(v48, v48);
  v51 = vpmaxq_s8(v49, v49);
  v52 = vpminq_s8(v50, v50);
  v53 = vmaxq_s8(v43, v51);
  v54 = vminq_s8(v44, v52);
  v55 = vzip1q_s8(v51, v52);
  v56 = vbicq_s8(vsubq_s8(v35, vclsq_s8(v55)), vceqzq_s8(v55));
  v557 = v24;
  v57 = vshlq_s8(vshlq_s8(vsubq_s8(v22, v24), xmmword_29D2F1250), xmmword_29D2F1260);
  v58 = vshlq_s8(vshlq_s8(vsubq_s8(v23, v24), xmmword_29D2F1250), xmmword_29D2F1260);
  v59 = vqtbl1q_s8(vmaxq_s8(v57, v58), xmmword_29D2F0F70);
  v60 = vqtbl1q_s8(vminq_s8(v57, v58), xmmword_29D2F0F70);
  v61 = vpmaxq_s8(v59, v59);
  v62 = vpminq_s8(v60, v60);
  v63 = vpmaxq_s8(v61, v61);
  v64 = vpminq_s8(v62, v62);
  v65 = vmaxq_s8(v53, v63);
  v66 = vminq_s8(v54, v64);
  v67 = vzip1q_s8(v63, v64);
  v68 = vbicq_s8(vsubq_s8(v35, vclsq_s8(v67)), vceqzq_s8(v67));
  v69 = vpmaxq_s8(v36, v36);
  v70 = vpmaxq_s8(v46, v46);
  v71 = vpmaxq_s8(v56, v56);
  v72 = vpmaxq_s8(v68, v68);
  v73 = vmaxq_s8(vmaxq_s8(v69, v70), vmaxq_s8(v71, v72));
  v74 = vclzq_s8(vsubq_s8(v65, v66));
  v75 = vsubq_s8(v35, v74);
  v76 = vminq_s8(v75, v73);
  if (!vmaxvq_s8(v76))
  {
    a1->i16[0] = a3->i16[0];
    v167 = 1;
    result = 2;
    goto LABEL_91;
  }

  v541 = v11;
  v77.i64[0] = -1;
  v77.i64[1] = -1;
  v78.i64[0] = 0x707070707070707;
  v78.i64[1] = 0x707070707070707;
  v79 = vcgtq_s8(v73, v75);
  v547 = vandq_s8(vsubq_s8(vshlq_s8(v77, vsubq_s8(v78, v74)), v66), v79);
  v80.i64[0] = 0x303030303030303;
  v80.i64[1] = 0x303030303030303;
  v539 = vmaxq_s8(vminq_s8(vsubq_s8(v76, v70), v80), 0);
  v537 = vmaxq_s8(vminq_s8(vsubq_s8(v76, v69), v80), 0);
  v538 = vmaxq_s8(vminq_s8(vsubq_s8(v76, v71), v80), 0);
  v542 = vmaxq_s8(vminq_s8(vsubq_s8(v76, v72), v80), 0);
  v77.i64[0] = 0x404040404040404;
  v77.i64[1] = 0x404040404040404;
  v556 = vorrq_s8(vbicq_s8(v77, vceqq_s8(vaddq_s8(v542, v538), vnegq_s8(vaddq_s8(v537, v539)))), vorrq_s8(vandq_s8(vceqzq_s8(v76), v80), vandq_s8(v79, v35)));
  v551 = v25;
  v552 = v26;
  v553 = v27;
  v554 = v57;
  v81 = vshlq_s8(vsubq_s8(v58, vqtbl1q_s8(v58, xmmword_29D2F1230)), xmmword_29D2F1250);
  v82 = vshlq_s8(vshlq_s8(vsubq_s8(v25, vqtbl1q_s8(v25, xmmword_29D2F1230)), xmmword_29D2F1250), xmmword_29D2F1260);
  v83 = vshlq_s8(vshlq_s8(vsubq_s8(v26, vqtbl1q_s8(v26, xmmword_29D2F1230)), xmmword_29D2F1250), xmmword_29D2F1260);
  v549 = v58;
  v84 = vshlq_s8(vshlq_s8(vsubq_s8(v27, vqtbl1q_s8(v27, xmmword_29D2F1230)), xmmword_29D2F1250), xmmword_29D2F1260);
  v85 = vshlq_s8(vshlq_s8(vsubq_s8(v57, vqtbl1q_s8(v57, xmmword_29D2F1230)), xmmword_29D2F1250), xmmword_29D2F1260);
  v86 = vshlq_s8(v81, xmmword_29D2F1260);
  v535 = vshlq_s8(vshlq_s8(vsubq_s8(v559, vqtbl1q_s8(v559, xmmword_29D2F1230)), xmmword_29D2F1250), xmmword_29D2F1260);
  v536 = vshlq_s8(vshlq_s8(vsubq_s8(v558, vqtbl1q_s8(v558, xmmword_29D2F1230)), xmmword_29D2F1250), xmmword_29D2F1260);
  v87 = vqtbl1q_s8(vmaxq_s8(v536, v535), xmmword_29D2F0F70);
  v88 = vqtbl1q_s8(vminq_s8(v536, v535), xmmword_29D2F0F70);
  v89 = vpmaxq_s8(v87, v87);
  v90 = vpminq_s8(v88, v88);
  v91 = vpmaxq_s8(v89, v89);
  v92 = vpminq_s8(v90, v90);
  v93 = vzip1q_s8(v91, v92);
  v94 = vbicq_s8(vsubq_s8(v35, vclsq_s8(v93)), vceqzq_s8(v93));
  v95 = vpmaxq_s8(v94, v94);
  v533 = vshlq_s8(vshlq_s8(vsubq_s8(v555, vqtbl1q_s8(v555, xmmword_29D2F1230)), xmmword_29D2F1250), xmmword_29D2F1260);
  v534 = v82;
  v96 = vqtbl1q_s8(vmaxq_s8(v82, v533), xmmword_29D2F0F70);
  v97 = vqtbl1q_s8(vminq_s8(v82, v533), xmmword_29D2F0F70);
  v98 = vpmaxq_s8(v96, v96);
  v99 = vpminq_s8(v97, v97);
  v100 = vpmaxq_s8(v98, v98);
  v101 = vpminq_s8(v99, v99);
  v102 = vmaxq_s8(v91, v100);
  v103 = vminq_s8(v92, v101);
  v104 = vzip1q_s8(v100, v101);
  v105 = vbicq_s8(vsubq_s8(v35, vclsq_s8(v104)), vceqzq_s8(v104));
  v106 = vpmaxq_s8(v105, v105);
  v531 = v84;
  v532 = v83;
  v107 = vqtbl1q_s8(vmaxq_s8(v83, v84), xmmword_29D2F0F70);
  v108 = vqtbl1q_s8(vminq_s8(v83, v84), xmmword_29D2F0F70);
  v109 = vpmaxq_s8(v107, v107);
  v110 = vpminq_s8(v108, v108);
  v111 = vpmaxq_s8(v109, v109);
  v112 = vpminq_s8(v110, v110);
  v113 = vmaxq_s8(v102, v111);
  v114 = vminq_s8(v103, v112);
  v115 = vzip1q_s8(v111, v112);
  v116 = vbicq_s8(vsubq_s8(v35, vclsq_s8(v115)), vceqzq_s8(v115));
  v117 = vpmaxq_s8(v116, v116);
  v529 = v86;
  v530 = v85;
  v118 = vqtbl1q_s8(vmaxq_s8(v85, v86), xmmword_29D2F0F70);
  v119 = vqtbl1q_s8(vminq_s8(v85, v86), xmmword_29D2F0F70);
  v120 = vpmaxq_s8(v118, v118);
  v121 = vpminq_s8(v119, v119);
  v122 = vpmaxq_s8(v120, v120);
  v123 = vpminq_s8(v121, v121);
  v124 = vminq_s8(v114, v123);
  v125 = vzip1q_s8(v122, v123);
  v126 = vbicq_s8(vsubq_s8(v35, vclsq_s8(v125)), vceqzq_s8(v125));
  v127 = vpmaxq_s8(v126, v126);
  v128 = vmaxq_s8(vmaxq_s8(v95, v106), vmaxq_s8(v117, v127));
  v528 = v124;
  v129 = vclzq_s8(vsubq_s8(vmaxq_s8(v113, v122), v124));
  v130 = vsubq_s8(v35, v129);
  v131 = vcgtq_s8(v128, v130);
  v132 = vminq_s8(v130, v128);
  v82.i64[0] = 0x1010101010101010;
  v82.i64[1] = 0x1010101010101010;
  v128.i64[0] = 0x1818181818181818;
  v128.i64[1] = 0x1818181818181818;
  v527 = v131;
  v133 = vorrq_s8(vandq_s8(vceqzq_s8(v132), v80), vbslq_s8(v131, v128, v82));
  v134 = vmaxq_s8(vminq_s8(vsubq_s8(v132, v95), v80), 0);
  v135 = vmaxq_s8(vminq_s8(vsubq_s8(v132, v106), v80), 0);
  v136 = vmaxq_s8(vminq_s8(vsubq_s8(v132, v117), v80), 0);
  v137 = vmaxq_s8(vminq_s8(vsubq_s8(v132, v127), v80), 0);
  v138 = vsubq_s8(v132, v134);
  v139 = vsubq_s8(v132, v135);
  v140 = vsubq_s8(v132, v136);
  v141 = vsubq_s8(v132, v137);
  v131.i64[0] = 0x404040404040404;
  v131.i64[1] = 0x404040404040404;
  v142 = vorrq_s8(vbicq_s8(v131, vceqq_s8(vaddq_s8(v137, v136), vnegq_s8(vaddq_s8(v134, v135)))), v133);
  v143 = vmovl_u8(*v142.i8);
  v135.i64[0] = 0x8000800080008;
  v135.i64[1] = 0x8000800080008;
  v85.i64[0] = 0x2000200020002;
  v85.i64[1] = 0x2000200020002;
  v144 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v132.i8), vceqzq_s16((*&v143 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8)))), vandq_s8(vshll_n_u8(*v142.i8, 1uLL), v135)), vandq_s8(vceqq_s16((*&v143 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v85), v135)), *v138.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v140.i8, *v139.i8), *v141.i8), 3uLL));
  v145 = vaddq_s16(vaddw_s8((*&vshll_n_u8(*v556.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9)), vbic_s8(*v76.i8, vcgt_u8(0x808080808080808, *v556.i8))), vandq_s8(vceqq_s16((*&vmovl_u8(*v556.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v85), v135));
  v146 = vsubq_s8(v76, v537);
  v147 = vsubq_s8(v76, v538);
  v148 = vsubq_s8(v76, v542);
  v149 = vsubq_s8(v76, v539);
  v150 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(v145, *v146.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v147.i8, *v149.i8), *v148.i8), 3uLL)), v144)), 0);
  v151 = vaddlvq_s8(v150);
  v153 = a5 < 2 || a6 < 2;
  if (v151)
  {
    v154.i64[0] = 0x707070707070707;
    v154.i64[1] = 0x707070707070707;
    v155.i64[0] = -1;
    v155.i64[1] = -1;
    v557 = vbslq_s8(v150, vsubq_s8(v557, vqtbl1q_s8(v557, xmmword_29D2F1230)), v557);
    v558 = vbslq_s8(v150, v536, v558);
    v559 = vbslq_s8(v150, v535, v559);
    v551 = vbslq_s8(v150, v534, v551);
    v156 = vbslq_s8(v150, v533, v555);
    v552 = vbslq_s8(v150, v532, v552);
    v553 = vbslq_s8(v150, v531, v553);
    v554 = vbslq_s8(v150, v530, v554);
    v540 = vbslq_s8(v150, v138, v146);
    v149 = vbslq_s8(v150, v139, v149);
    v543 = vbslq_s8(v150, v140, v147);
    v148 = vbslq_s8(v150, v141, v148);
    v157 = vbslq_s8(v150, vandq_s8(vsubq_s8(vshlq_s8(v155, vsubq_s8(v154, v129)), v528), v527), v547);
    v76 = vbslq_s8(v150, v132, v76);
    v556 = vbslq_s8(v150, v142, v556);
    v158 = vbslq_s8(v150, v529, v549);
    if (v153)
    {
LABEL_10:
      v159 = v156;
      v161 = v558;
      v160 = v559;
      v162 = v541;
      v163 = v543;
      v165 = v556;
      v164 = v557.i32[0];
      v166 = v540;
      goto LABEL_16;
    }
  }

  else
  {
    v540 = v146;
    v543 = v147;
    v156 = v555;
    v157 = v547;
    v158 = v549;
    if (v153)
    {
      goto LABEL_10;
    }
  }

  v548 = v157;
  v550 = v158;
  v169 = vsubq_s8(v16, vqtbl2q_s8(*v16.i8, xmmword_29D2F0F80));
  v170 = vsubq_s8(v17, vqtbl2q_s8(*v16.i8, xmmword_29D2F1030));
  v171 = v19;
  v171.i32[3] = v17.i32[3];
  v172 = v21;
  v172.i32[3] = v17.i32[3];
  v173 = v23;
  v173.i32[3] = v17.i32[3];
  v174 = vsubq_s8(v22, vqtbl2q_s8(*v22.i8, xmmword_29D2F1060));
  v175 = v170;
  v175.i32[3] = v169.i32[0];
  v169.i32[0] = v170.i32[3];
  v176 = vsubq_s8(v23, vqtbl2q_s8(*v22.i8, xmmword_29D2F0F80));
  v177 = v149;
  v178 = vshlq_s8(vsubq_s8(v21, vqtbl2q_s8(*v20.i8, xmmword_29D2F0F80)), xmmword_29D2F1250);
  v179 = v148;
  v180 = vshlq_s8(v174, xmmword_29D2F1250);
  v181 = vshlq_s8(v176, xmmword_29D2F1250);
  v182 = vshlq_s8(vshlq_s8(v169, xmmword_29D2F1250), xmmword_29D2F1260);
  v183 = vshlq_s8(vshlq_s8(v175, xmmword_29D2F1250), xmmword_29D2F1260);
  v184 = vshlq_s8(vshlq_s8(vsubq_s8(v18, vqtbl2q_s8(*v18.i8, xmmword_29D2F0FA0)), xmmword_29D2F1250), xmmword_29D2F1260);
  v185 = vshlq_s8(vshlq_s8(vsubq_s8(v19, vqtbl2q_s8(*v18.i8, xmmword_29D2F1040)), xmmword_29D2F1250), xmmword_29D2F1260);
  v186 = vshlq_s8(vshlq_s8(vsubq_s8(v20, vqtbl2q_s8(*v20.i8, xmmword_29D2F1050)), xmmword_29D2F1250), xmmword_29D2F1260);
  v187 = vshlq_s8(v178, xmmword_29D2F1260);
  v188 = vshlq_s8(v180, xmmword_29D2F1260);
  v189 = vshlq_s8(v181, xmmword_29D2F1260);
  v190 = vqtbl1q_s8(vmaxq_s8(v182, v183), xmmword_29D2F0F70);
  v191 = vqtbl1q_s8(vminq_s8(v182, v183), xmmword_29D2F0F70);
  v192 = vpmaxq_s8(v190, v190);
  v193 = vpminq_s8(v191, v191);
  v194 = vpmaxq_s8(v192, v192);
  v195 = vpminq_s8(v193, v193);
  v196 = vzip1q_s8(v194, v195);
  v197.i64[0] = 0x808080808080808;
  v197.i64[1] = 0x808080808080808;
  v198 = vbicq_s8(vsubq_s8(v197, vclsq_s8(v196)), vceqzq_s8(v196));
  v199 = vpmaxq_s8(v198, v198);
  v200 = vqtbl1q_s8(vmaxq_s8(v184, v185), xmmword_29D2F0F70);
  v201 = vqtbl1q_s8(vminq_s8(v184, v185), xmmword_29D2F0F70);
  v202 = vpmaxq_s8(v200, v200);
  v203 = vpminq_s8(v201, v201);
  v204 = vpmaxq_s8(v202, v202);
  v205 = vpminq_s8(v203, v203);
  v206 = vmaxq_s8(v194, v204);
  v207 = vminq_s8(v195, v205);
  v208 = vzip1q_s8(v204, v205);
  v209 = vbicq_s8(vsubq_s8(v197, vclsq_s8(v208)), vceqzq_s8(v208));
  v210 = vpmaxq_s8(v209, v209);
  v211 = vqtbl1q_s8(vmaxq_s8(v186, v187), xmmword_29D2F0F70);
  v212 = vqtbl1q_s8(vminq_s8(v186, v187), xmmword_29D2F0F70);
  v213 = vpmaxq_s8(v211, v211);
  v214 = vpminq_s8(v212, v212);
  v215 = vpmaxq_s8(v213, v213);
  v216 = vpminq_s8(v214, v214);
  v217 = vmaxq_s8(v206, v215);
  v218 = vminq_s8(v207, v216);
  v219 = vzip1q_s8(v215, v216);
  v220 = vbicq_s8(vsubq_s8(v197, vclsq_s8(v219)), vceqzq_s8(v219));
  v221 = vpmaxq_s8(v220, v220);
  v222 = vqtbl1q_s8(vmaxq_s8(v188, v189), xmmword_29D2F0F70);
  v223 = vqtbl1q_s8(vminq_s8(v188, v189), xmmword_29D2F0F70);
  v224 = vpmaxq_s8(v222, v222);
  v225 = vpminq_s8(v223, v223);
  v226 = vpmaxq_s8(v224, v224);
  v227 = vpminq_s8(v225, v225);
  v228 = v76;
  v229 = vmaxq_s8(v217, v226);
  v230 = vminq_s8(v218, v227);
  v231 = vzip1q_s8(v226, v227);
  v232 = vbicq_s8(vsubq_s8(v197, vclsq_s8(v231)), vceqzq_s8(v231));
  v233 = vpmaxq_s8(v232, v232);
  v234 = vmaxq_s8(vmaxq_s8(v199, v210), vmaxq_s8(v221, v233));
  v235 = vclzq_s8(vsubq_s8(v229, v230));
  v236 = vsubq_s8(v197, v235);
  v237 = vcgtq_s8(v234, v236);
  v238 = vminq_s8(v236, v234);
  v236.i64[0] = 0x909090909090909;
  v236.i64[1] = 0x909090909090909;
  v239.i64[0] = 0x202020202020202;
  v239.i64[1] = 0x202020202020202;
  v240 = vorrq_s8(vandq_s8(vceqzq_s8(v238), v239), vsubq_s8(vandq_s8(v237, v236), vmvnq_s8(v237)));
  v236.i64[0] = 0x303030303030303;
  v236.i64[1] = 0x303030303030303;
  v241 = vmaxq_s8(vminq_s8(vsubq_s8(v238, v199), v236), 0);
  v242 = vmaxq_s8(vminq_s8(vsubq_s8(v238, v210), v236), 0);
  v243 = vmaxq_s8(vminq_s8(vsubq_s8(v238, v221), v236), 0);
  v244 = vmaxq_s8(vminq_s8(vsubq_s8(v238, v233), v236), 0);
  v245 = vsubq_s8(v238, v241);
  v246 = vsubq_s8(v238, v242);
  v247 = vsubq_s8(v238, v243);
  v248 = vsubq_s8(v238, v244);
  v249 = vceqq_s8(vaddq_s8(v244, v243), vnegq_s8(vaddq_s8(v241, v242)));
  v244.i64[0] = 0x404040404040404;
  v244.i64[1] = 0x404040404040404;
  v250 = vorrq_s8(vbicq_s8(v244, v249), v240);
  v251.i64[0] = 0x3000300030003;
  v251.i64[1] = 0x3000300030003;
  v165 = v556;
  v252 = vmovl_s8(*v556.i8);
  v242.i64[0] = 0x8000800080008;
  v242.i64[1] = 0x8000800080008;
  v253 = vbicq_s8(vmovl_s8(*v228.i8), vceqzq_s16(vandq_s8(v252, v242)));
  v254 = vandq_s8(v252, v251);
  v251.i64[0] = 0x2000200020002;
  v251.i64[1] = 0x2000200020002;
  v255 = vandq_s8(vceqq_s16(v254, v251), v242);
  v163 = v543;
  v166 = v540;
  v256 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v253, vandq_s8(vshll_n_s8(*v556.i8, 1uLL), v242)), v255), *v540.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v543.i8, *v177.i8), *v179.i8), 3uLL)), vaddq_s16(vmlal_s8(vaddw_u8(vmovl_s8(vbic_s8(*v238.i8, vcgt_u8(0x808080808080808, *v250.i8))), vand_s8(vadd_s8(*v250.i8, *v250.i8), 0x808080808080808)), *v245.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v247.i8, *v246.i8), *v248.i8), 3uLL)))), 0);
  if (vaddlvq_s8(v256))
  {
    v257.i64[0] = 0x707070707070707;
    v257.i64[1] = 0x707070707070707;
    v258 = vsubq_s8(v257, v235);
    v257.i64[0] = -1;
    v257.i64[1] = -1;
    v259 = vandq_s8(vsubq_s8(vshlq_s8(v257, v258), v230), v237);
    v164 = vbslq_s8(v256, vextq_s8(v17, v17, 0xCuLL), v557).u32[0];
    v161 = vbslq_s8(v256, v182, v558);
    v160 = vbslq_s8(v256, v183, v559);
    v551 = vbslq_s8(v256, v184, v551);
    v159 = vbslq_s8(v256, v185, v156);
    v552 = vbslq_s8(v256, v186, v552);
    v553 = vbslq_s8(v256, v187, v553);
    v554 = vbslq_s8(v256, v188, v554);
    v158 = vbslq_s8(v256, v189, v550);
    v166 = vbslq_s8(v256, v245, v540);
    v149 = vbslq_s8(v256, v246, v177);
    v163 = vbslq_s8(v256, v247, v543);
    v148 = vbslq_s8(v256, v248, v179);
    v157 = vbslq_s8(v256, v259, v548);
    v165 = vbslq_s8(v256, v250, v556);
    v76 = vbslq_s8(v256, v238, v228);
    v162 = v541;
  }

  else
  {
    v157 = v548;
    v158 = v550;
    v76 = v228;
    v159 = v156;
    v148 = v179;
    v161 = v558;
    v160 = v559;
    v149 = v177;
    v162 = v541;
    v164 = v557.i32[0];
  }

LABEL_16:
  v260 = vmovl_s8(*v165.i8);
  v261.i64[0] = 0x8000800080008;
  v261.i64[1] = 0x8000800080008;
  v262.i64[0] = 0x3000300030003;
  v262.i64[1] = 0x3000300030003;
  v263.i64[0] = 0x2000200020002;
  v263.i64[1] = 0x2000200020002;
  v264 = vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v76.i8), vceqzq_s16(vandq_s8(v260, v261))), vandq_s8(vshll_n_s8(*v165.i8, 1uLL), v261)), vandq_s8(vceqq_s16(vandq_s8(v260, v262), v263), v261)), *v166.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v163.i8, *v149.i8), *v148.i8), 3uLL));
  v265 = vpaddq_s16(v264, v264);
  if ((vpaddq_s16(v265, v265).i16[0] + 55) > 0x1FF)
  {
    *a1 = v545;
    a1[1] = v544;
    v167 = 63;
    a1[2] = v162;
    a1[3] = v546;
    result = 64;
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
    v269 = vzip1_s8(*v76.i8, *v260.i8);
    v270 = vadd_s16(v269, 0xFF00FF00FF00FFLL);
    v271 = vmovl_u16(vceqz_s16((*&v269 & 0xFF00FF00FF00FFLL)));
    v272.i64[0] = v271.u32[0];
    v272.i64[1] = v271.u32[1];
    v273 = vshrq_n_s64(vshlq_n_s64(v272, 0x38uLL), 0x38uLL);
    v272.i64[0] = v271.u32[2];
    v272.i64[1] = v271.u32[3];
    v274 = vshrq_n_s64(vshlq_n_s64(v272, 0x38uLL), 0x38uLL);
    v275 = vshlq_u32(vmovl_u16(vand_s8(v270, 0x7000700070007)), xmmword_29D2F1070);
    v272.i64[0] = v275.u32[0];
    v272.i64[1] = v275.u32[1];
    v276 = v272;
    v272.i64[0] = v275.u32[2];
    v272.i64[1] = v275.u32[3];
    v277 = vorrq_s8(vbicq_s8(v276, v273), vbicq_s8(v272, v274));
    v278 = *&vorr_s8(*v277.i8, *&vextq_s8(v277, v277, 8uLL)) | (32 * (v165.i8[1] & 0x1F)) | ((v165.i8[3] & 0x1F) << 15) | ((v165.i8[2] & 0x1F) << 10) | v165.i8[0] & 0x1F;
    v279 = (v278 << v267) | v268;
    if (v267 >= 0x20)
    {
      *v266 = v279;
      v279 = v278 >> (-8 * (a1 & 7u));
    }

    v280 = (v164 & 1 | (2 * (BYTE1(v164) & 0x1F))) & 0xFFFFFFFFFFFFF83FLL | ((BYTE2(v164) & 0x1F) << 6) | ((HIBYTE(v164) & 0x1F) << 11);
    v281 = (v267 + 32) & 0x38;
    v282 = v279 | (v280 << v281);
    if (v281 >= 0x30)
    {
      *(v266 + (((v267 + 32) >> 3) & 8)) = v282;
      v282 = v280 >> -v281;
    }

    v283 = v267 + 48;
    v284 = vsubq_s8(v76, v166);
    v285 = vsubq_s8(v76, v149);
    v286 = vsubq_s8(v76, v163);
    v287 = vsubq_s8(v76, v148);
    v288 = vtrn1q_s8(v284, v285);
    v289 = vtrn2q_s8(v284, v285);
    v290 = vtrn1q_s8(v286, v287);
    v291 = vtrn2q_s8(v286, v287);
    v292 = vzip1q_s16(v289, v291);
    v293 = vtrn2q_s16(v289, v291);
    v291.i64[0] = vzip1q_s32(vzip1q_s16(v288, v290), v292).u64[0];
    v293.i64[0] = vzip1q_s32(vtrn2q_s16(v288, v290), v293).u64[0];
    v290.i64[0] = 0x202020202020202;
    v290.i64[1] = 0x202020202020202;
    v294 = vandq_s8(vmovl_s16(vtst_s16(*v260.i8, 0x4000400040004)), v290);
    v290.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v290.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v287.i64[0] = -1;
    v287.i64[1] = -1;
    v295 = vshlq_u8(v287, vorrq_s8(v294, v290));
    v296 = vmovl_u8(vand_s8(*v295.i8, *v291.i8));
    v297 = vmovl_u8(vand_s8(*&vextq_s8(v295, v295, 8uLL), *v293.i8));
    v298 = vmovl_u8(*v294.i8);
    v299 = vmovl_high_u8(v294);
    v300 = vpaddq_s16(vshlq_u16(v296, vtrn1q_s16(0, v298)), vshlq_u16(v297, vtrn1q_s16(0, v299)));
    v301 = vpaddq_s16(v298, v299);
    v302 = vmovl_u16(*v301.i8);
    v303 = vmovl_high_u16(v301);
    v304 = vpaddq_s32(vshlq_u32(vmovl_u16(*v300.i8), vtrn1q_s32(0, v302)), vshlq_u32(vmovl_high_u16(v300), vtrn1q_s32(0, v303)));
    v305 = vpaddq_s32(v302, v303);
    v306.i64[0] = v304.u32[0];
    v306.i64[1] = v304.u32[1];
    v307 = v306;
    v306.i64[0] = v304.u32[2];
    v306.i64[1] = v304.u32[3];
    v308 = v306;
    v306.i64[0] = v305.u32[0];
    v306.i64[1] = v305.u32[1];
    v309 = v306;
    v306.i64[0] = v305.u32[2];
    v306.i64[1] = v305.u32[3];
    v310 = vpaddq_s64(vshlq_u64(v307, vzip1q_s64(0, v309)), vshlq_u64(v308, vzip1q_s64(0, v306)));
    v311 = vpaddq_s64(v309, v306);
    v312 = (v267 + 48) & 0x38;
    v313 = (v310.i64[0] << v312) | v282;
    if ((v311.i64[0] + v312) >= 0x40)
    {
      *(v266 + ((v283 >> 3) & 8)) = v313;
      v313 = v310.i64[0] >> -v312;
      if (!v312)
      {
        v313 = 0;
      }
    }

    v314 = vceqq_s8(v76, v166);
    v315 = v311.i64[0] + v283;
    v316 = v313 | (v310.i64[1] << v315);
    if ((v315 & 0x3F) + v311.i64[1] >= 0x40)
    {
      *(v266 + ((v315 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v316;
      v316 = v310.i64[1] >> -(v315 & 0x3F);
      if ((v315 & 0x3F) == 0)
      {
        v316 = 0;
      }
    }

    v317 = vandq_s8(v157, v314);
    v318 = v315 + v311.i64[1];
    v319.i64[0] = 0x808080808080808;
    v319.i64[1] = 0x808080808080808;
    v320.i64[0] = -1;
    v320.i64[1] = -1;
    v321 = vandq_s8(vextq_s8(vtstq_s8(v165, v319), 0, 0xCuLL), v76);
    v322.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v322.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v323 = vandq_s8(vshlq_u8(v320, vaddq_s8(v321, v322)), v157);
    v324 = vmovl_u8(*v321.i8);
    v325 = vpaddq_s16(vshlq_u16(vmovl_u8(*v323.i8), vtrn1q_s16(0, v324)), vmovl_high_u8(v323));
    v326 = vpaddq_s16(v324, vmovl_high_u8(v321));
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
    v337 = (v335.i64[0] << v318) | v316;
    if (v336.i64[0] + (v318 & 0x3F) >= 0x40)
    {
      *(v266 + ((v318 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v337;
      v337 = v335.i64[0] >> -(v318 & 0x3F);
      if ((v318 & 0x3F) == 0)
      {
        v337 = 0;
      }
    }

    v338 = vaddq_s8(v317, v161);
    v339 = v336.i64[0] + v318;
    v340 = v337 | (v335.i64[1] << v339);
    if ((v339 & 0x3F) + v336.i64[1] >= 0x40)
    {
      *(v266 + ((v339 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v340;
      v340 = v335.i64[1] >> -(v339 & 0x3F);
      if ((v339 & 0x3F) == 0)
      {
        v340 = 0;
      }
    }

    v341 = v339 + v336.i64[1];
    v342 = vextq_s8(0, v166, 0xCuLL);
    v343.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v343.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v344.i64[0] = -1;
    v344.i64[1] = -1;
    v345 = vandq_s8(vshlq_u8(v344, vaddq_s8(v342, v343)), v338);
    v346 = vmovl_u8(*v342.i8);
    v347 = vmovl_high_u8(v342);
    v348 = vpaddq_s16(vshlq_u16(vmovl_u8(*v345.i8), vtrn1q_s16(0, v346)), vshlq_u16(vmovl_high_u8(v345), vtrn1q_s16(0, v347)));
    v349 = vpaddq_s16(v346, v347);
    v350 = vmovl_u16(*v349.i8);
    v351 = vmovl_high_u16(v349);
    v352 = vpaddq_s32(vshlq_u32(vmovl_u16(*v348.i8), vtrn1q_s32(0, v350)), vshlq_u32(vmovl_high_u16(v348), vtrn1q_s32(0, v351)));
    v353 = vpaddq_s32(v350, v351);
    v354.i64[0] = v352.u32[0];
    v354.i64[1] = v352.u32[1];
    v355 = v354;
    v354.i64[0] = v352.u32[2];
    v354.i64[1] = v352.u32[3];
    v356 = v354;
    v354.i64[0] = v353.u32[0];
    v354.i64[1] = v353.u32[1];
    v357 = v354;
    v354.i64[0] = v353.u32[2];
    v354.i64[1] = v353.u32[3];
    v358 = vpaddq_s64(vshlq_u64(v355, vzip1q_s64(0, v357)), vshlq_u64(v356, vzip1q_s64(0, v354)));
    v359 = vpaddq_s64(v357, v354);
    v360 = (v358.i64[0] << v341) | v340;
    if (v359.i64[0] + (v341 & 0x3F) >= 0x40)
    {
      *(v266 + ((v341 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v360;
      v360 = v358.i64[0] >> -(v341 & 0x3F);
      if ((v341 & 0x3F) == 0)
      {
        v360 = 0;
      }
    }

    v361 = vceqq_s8(v76, v149);
    v362 = vaddq_s8(v160, v317);
    v363 = v359.i64[0] + v341;
    v364 = v360 | (v358.i64[1] << v363);
    if ((v363 & 0x3F) + v359.i64[1] >= 0x40)
    {
      *(v266 + ((v363 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v364;
      v364 = v358.i64[1] >> -(v363 & 0x3F);
      if ((v363 & 0x3F) == 0)
      {
        v364 = 0;
      }
    }

    v365 = vandq_s8(v157, v361);
    v366 = v363 + v359.i64[1];
    v367.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v367.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v368.i64[0] = -1;
    v368.i64[1] = -1;
    v369 = vandq_s8(vshlq_u8(v368, vaddq_s8(v166, v367)), v362);
    v370 = vmovl_u8(*v166.i8);
    v371 = vmovl_high_u8(v166);
    v372 = vpaddq_s16(vshlq_u16(vmovl_u8(*v369.i8), vtrn1q_s16(0, v370)), vshlq_u16(vmovl_high_u8(v369), vtrn1q_s16(0, v371)));
    v373 = vpaddq_s16(v370, v371);
    v374 = vmovl_u16(*v373.i8);
    v375 = vmovl_high_u16(v373);
    v376 = vpaddq_s32(vshlq_u32(vmovl_u16(*v372.i8), vtrn1q_s32(0, v374)), vshlq_u32(vmovl_high_u16(v372), vtrn1q_s32(0, v375)));
    v377 = vpaddq_s32(v374, v375);
    v378.i64[0] = v376.u32[0];
    v378.i64[1] = v376.u32[1];
    v379 = v378;
    v378.i64[0] = v376.u32[2];
    v378.i64[1] = v376.u32[3];
    v380 = v378;
    v378.i64[0] = v377.u32[0];
    v378.i64[1] = v377.u32[1];
    v381 = v378;
    v378.i64[0] = v377.u32[2];
    v378.i64[1] = v377.u32[3];
    v382 = vpaddq_s64(vshlq_u64(v379, vzip1q_s64(0, v381)), vshlq_u64(v380, vzip1q_s64(0, v378)));
    v383 = vpaddq_s64(v381, v378);
    v384 = (v382.i64[0] << v366) | v364;
    if (v383.i64[0] + (v366 & 0x3F) >= 0x40)
    {
      *(v266 + ((v366 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v384;
      v384 = v382.i64[0] >> -(v366 & 0x3F);
      if ((v366 & 0x3F) == 0)
      {
        v384 = 0;
      }
    }

    v385 = vaddq_s8(v551, v365);
    v386 = v383.i64[0] + v366;
    v387 = v384 | (v382.i64[1] << v386);
    if ((v386 & 0x3F) + v383.i64[1] >= 0x40)
    {
      *(v266 + ((v386 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v387;
      v387 = v382.i64[1] >> -(v386 & 0x3F);
      if ((v386 & 0x3F) == 0)
      {
        v387 = 0;
      }
    }

    v388 = v386 + v383.i64[1];
    v389.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v389.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v390.i64[0] = -1;
    v390.i64[1] = -1;
    v391 = vshlq_u8(v390, vaddq_s8(v149, v389));
    v392 = vandq_s8(v391, v385);
    v393 = vmovl_u8(*v392.i8);
    v394 = vmovl_high_u8(v392);
    v395 = vmovl_u8(*v149.i8);
    v396 = vmovl_high_u8(v149);
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
      *(v266 + ((v388 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v417;
      if ((v388 & 0x3F) != 0)
      {
        v417 = v415.i64[0] >> -(v388 & 0x3F);
      }

      else
      {
        v417 = 0;
      }
    }

    v418 = vceqq_s8(v76, v163);
    v419 = vaddq_s8(v159, v365);
    v420 = v416.i64[0] + v388;
    v421 = v417 | (v415.i64[1] << v420);
    if ((v420 & 0x3F) + v416.i64[1] >= 0x40)
    {
      *(v266 + ((v420 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v421;
      v421 = v415.i64[1] >> -(v420 & 0x3F);
      if ((v420 & 0x3F) == 0)
      {
        v421 = 0;
      }
    }

    v422 = vandq_s8(v157, v418);
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
      *(v266 + ((v423 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v430;
      v430 = v429.i64[0] >> -(v423 & 0x3F);
      if ((v423 & 0x3F) == 0)
      {
        v430 = 0;
      }
    }

    v431 = vaddq_s8(v552, v422);
    v432 = v416.i64[0] + v423;
    v433 = (v416.i64[0] + v423) & 0x3F;
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
    v436.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v436.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v437.i64[0] = -1;
    v437.i64[1] = -1;
    v438 = vshlq_u8(v437, vaddq_s8(v163, v436));
    v439 = vandq_s8(v438, v431);
    v440 = vmovl_u8(*v439.i8);
    v441 = vmovl_high_u8(v439);
    v442 = vmovl_u8(*v163.i8);
    v443 = vmovl_high_u8(v163);
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
    if (v463.i64[0] + (v435 & 0x3F) >= 0x40)
    {
      *(v266 + ((v435 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v464;
      if ((v435 & 0x3F) != 0)
      {
        v464 = v462.i64[0] >> -(v435 & 0x3F);
      }

      else
      {
        v464 = 0;
      }
    }

    v465 = vceqq_s8(v76, v148);
    v466 = vaddq_s8(v553, v422);
    v467 = v463.i64[0] + v435;
    v468 = v464 | (v462.i64[1] << v467);
    if ((v467 & 0x3F) + v463.i64[1] >= 0x40)
    {
      *(v266 + ((v467 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v468;
      v468 = v462.i64[1] >> -(v467 & 0x3F);
      if ((v467 & 0x3F) == 0)
      {
        v468 = 0;
      }
    }

    v469 = vandq_s8(v157, v465);
    v470 = v467 + v463.i64[1];
    v471 = vandq_s8(v438, v466);
    v472 = vpaddq_s16(vshlq_u16(vmovl_u8(*v471.i8), v444), vshlq_u16(vmovl_high_u8(v471), v445));
    v473 = vpaddq_s32(vshlq_u32(vmovl_u16(*v472.i8), v452), vshlq_u32(vmovl_high_u16(v472), v453));
    v474.i64[0] = v473.u32[0];
    v474.i64[1] = v473.u32[1];
    v475 = v474;
    v474.i64[0] = v473.u32[2];
    v474.i64[1] = v473.u32[3];
    v476 = vpaddq_s64(vshlq_u64(v475, v460), vshlq_u64(v474, v461));
    v477 = (v476.i64[0] << v470) | v468;
    if (v463.i64[0] + (v470 & 0x3F) >= 0x40)
    {
      *(v266 + ((v470 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v477;
      v477 = v476.i64[0] >> -(v470 & 0x3F);
      if ((v470 & 0x3F) == 0)
      {
        v477 = 0;
      }
    }

    v478 = vaddq_s8(v554, v469);
    v479 = v463.i64[0] + v470;
    v480 = (v463.i64[0] + v470) & 0x3F;
    v481 = v477 | (v476.i64[1] << v479);
    if ((v479 & 0x3F) + v463.i64[1] >= 0x40)
    {
      *(v266 + ((v479 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v481;
      v481 = v476.i64[1] >> -v480;
      if (!v480)
      {
        v481 = 0;
      }
    }

    v482 = v479 + v463.i64[1];
    v483.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v483.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v484.i64[0] = -1;
    v484.i64[1] = -1;
    v485 = vshlq_u8(v484, vaddq_s8(v148, v483));
    v486 = vandq_s8(v485, v478);
    v487 = vmovl_u8(*v486.i8);
    v488 = vmovl_high_u8(v486);
    v489 = vmovl_u8(*v148.i8);
    v490 = vmovl_high_u8(v148);
    v491 = vtrn1q_s16(0, v489);
    v492 = vtrn1q_s16(0, v490);
    v493 = vpaddq_s16(vshlq_u16(v487, v491), vshlq_u16(v488, v492));
    v494 = vpaddq_s16(v489, v490);
    v495 = vmovl_u16(*v493.i8);
    v496 = vmovl_high_u16(v493);
    v497 = vmovl_u16(*v494.i8);
    v498 = vmovl_high_u16(v494);
    v499 = vtrn1q_s32(0, v497);
    v500 = vtrn1q_s32(0, v498);
    v501 = vpaddq_s32(vshlq_u32(v495, v499), vshlq_u32(v496, v500));
    v502 = vpaddq_s32(v497, v498);
    v503.i64[0] = v501.u32[0];
    v503.i64[1] = v501.u32[1];
    v504 = v503;
    v503.i64[0] = v501.u32[2];
    v503.i64[1] = v501.u32[3];
    v505 = v503;
    v503.i64[0] = v502.u32[0];
    v503.i64[1] = v502.u32[1];
    v506 = v503;
    v503.i64[0] = v502.u32[2];
    v503.i64[1] = v502.u32[3];
    v507 = vzip1q_s64(0, v506);
    v508 = vzip1q_s64(0, v503);
    v509 = vpaddq_s64(vshlq_u64(v504, v507), vshlq_u64(v505, v508));
    v510 = vpaddq_s64(v506, v503);
    v511 = (v509.i64[0] << v482) | v481;
    if (v510.i64[0] + (v482 & 0x3F) > 0x3F)
    {
      *(v266 + ((v482 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v511;
      if ((v482 & 0x3F) != 0)
      {
        v511 = v509.i64[0] >> -(v482 & 0x3F);
      }

      else
      {
        v511 = 0;
      }
    }

    v512 = vaddq_s8(v158, v469);
    v513 = v510.i64[0] + v482;
    v514 = v511 | (v509.i64[1] << v513);
    if ((v513 & 0x3F) + v510.i64[1] >= 0x40)
    {
      *(v266 + ((v513 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v514;
      v514 = v509.i64[1] >> -(v513 & 0x3F);
      if ((v513 & 0x3F) == 0)
      {
        v514 = 0;
      }
    }

    v515 = v513 + v510.i64[1];
    v516 = vandq_s8(v485, v512);
    v517 = vpaddq_s16(vshlq_u16(vmovl_u8(*v516.i8), v491), vshlq_u16(vmovl_high_u8(v516), v492));
    v518 = vpaddq_s32(vshlq_u32(vmovl_u16(*v517.i8), v499), vshlq_u32(vmovl_high_u16(v517), v500));
    v519.i64[0] = v518.u32[0];
    v519.i64[1] = v518.u32[1];
    v520 = v519;
    v519.i64[0] = v518.u32[2];
    v519.i64[1] = v518.u32[3];
    v521 = vpaddq_s64(vshlq_u64(v520, v507), vshlq_u64(v519, v508));
    v522 = (v521.i64[0] << v515) | v514;
    if (v510.i64[0] + (v515 & 0x3F) >= 0x40)
    {
      *(v266 + ((v515 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v522;
      v522 = v521.i64[0] >> -(v515 & 0x3F);
      if ((v515 & 0x3F) == 0)
      {
        v522 = 0;
      }
    }

    v523 = v510.i64[0] + v515;
    v524 = (v510.i64[0] + v515) & 0x3F;
    v525 = v522 | (v521.i64[1] << (v510.i8[0] + v515));
    if ((v524 + v510.i64[1]) >= 0x40)
    {
      *(v266 + ((v523 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v525;
      v525 = v521.i64[1] >> -v524;
      if (!v524)
      {
        v525 = 0;
      }
    }

    v526 = v523 + v510.i64[1];
    if ((v526 & 0x3F) != 0)
    {
      *(v266 + ((v526 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v525;
    }

    result = (v526 - v267 + 7) >> 3;
    v167 = *a2 | (result - 1);
  }

LABEL_91:
  *a2 = v167;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, uint16x8_t *a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 1, a2, v14, v13);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, (v11 + v15), a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v15 + 16), a2, v20, v19);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 2, a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 3, a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + v15 + 32), a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + v15 + 48), a2, v30, v29);
}

void *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(void *result, uint64_t a2)
{
  v2 = 8 * ((&v14 + 6) & 7);
  v14 |= 1 << v2;
  v3 = v2 | 1;
  v4 = (v2 | 6) - v2;
  if ((v2 | 1) - v2 > 0xB)
  {
    v4 = (v2 | 1) - v2;
  }

  if (v4 - 12 >= 0xFFFFFFFFFFFFFFEFLL)
  {
    v5 = 0;
    v6 = 0;
    if ((v2 | 1) - v2 <= 0xB)
    {
      v3 = v2 | 6;
    }

    v7 = 5;
    do
    {
      v8 = 64 - v3;
      if (64 - v3 >= v7)
      {
        v8 = v7;
      }

      *(&v14 + v5) |= ((0xFFFFFFFFFFFFFFFFLL >> v6) & ~(-1 << v8)) << v3;
      v6 += v8;
      v9 = v8 + v3;
      v5 += v9 >> 6;
      v3 = v9 & 0x3F;
      v7 -= v8;
    }

    while (v7);
    if (v3 - v2 + (v5 << 6) - 12 >= 0xFFFFFFFFFFFFFFEFLL)
    {
      v10 = 0;
      v11 = 5;
      do
      {
        v12 = 64 - v3;
        if (64 - v3 >= v11)
        {
          v12 = v11;
        }

        *(&v14 + v5) |= ((0xFFFFFFFFFFFFFFFFLL >> v10) & ~(-1 << v12)) << v3;
        v10 += v12;
        v13 = v12 + v3;
        v5 += v13 >> 6;
        v3 = v13 & 0x3F;
        v11 -= v12;
      }

      while (v11);
    }
  }

  *result = 0;
  *(result + a2) = 0;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(int8x16_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
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
    v329 = v13;
    v330 = v12;
    v331 = v11;
    v332 = v10;
    v333 = v9;
    v334 = v8;
    v335 = v7;
    v336 = v6;
    v337 = v4;
    v338 = v5;
    v321 = 0;
    v320 = (8 * (a3 & 7)) | 0x200;
    v318 = 8 * (a3 & 7);
    v319 = a3 & 0xFFFFFFFFFFFFFFF8;
    result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)10,AGX::AppleCompressionGen2::Vec<signed char>>(&v323, v328, &v322, &v318, a4);
    v26.i64[0] = 0x303030303030303;
    v26.i64[1] = 0x303030303030303;
    v317 = vandq_s8(v323, v26);
    v27 = vbicq_s8(v328[0], vceqq_s8(v317, v26));
    v328[0] = v27;
    v324 = v27;
    v325 = v27;
    v326 = v27;
    v327 = v27;
    v28.i64[0] = 0x202020202020202;
    v28.i64[1] = 0x202020202020202;
    v29 = vandq_s8(vmovl_s16(vtst_s16(*&vmovl_u8(*v323.i8), 0x4000400040004)), v28);
    v30 = v318;
    if (vmaxvq_s8(v29) < 1)
    {
      v46.i64[0] = -1;
      v46.i64[1] = -1;
      v314 = v46;
      v315 = v46;
      v313 = v46;
      v316 = v46;
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
      v38 = v318 + v36;
      if (v320)
      {
        v39 = v320 >= v38;
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
        v43 = (v319 + 8 * (v318 >> 6));
        v44 = vaddq_s64(vdupq_lane_s64(vandq_s8(v318, v25).i64[0], 0), vzip1q_s64(0, v35));
        v45 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v43, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v44)), vshlq_u64(vdupq_lane_s64(v43->i64[0], 0), vnegq_s64(v44)));
        if ((v318 & 0x3F) + v37 >= 0x81)
        {
          v45 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v43[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v44)), vshlq_u64(vdupq_laneq_s64(v43[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v44))), v45);
        }

        v30 = v38;
      }

      else
      {
        v321 = 1;
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
      v324 = vsubq_s8(v324, v57);
      v325 = vsubq_s8(v325, v58);
      v326 = vsubq_s8(v326, v59);
      v327 = vsubq_s8(v327, v60);
      v313 = vceqzq_s8(v58);
      v314 = vceqzq_s8(v59);
      v315 = vceqzq_s8(v60);
      v316 = vceqzq_s8(v57);
    }

    v61.i64[0] = 0x808080808080808;
    v61.i64[1] = 0x808080808080808;
    v62 = 0uLL;
    v63 = vandq_s8(vextq_s8(vtstq_s8(v323, v61), 0, 0xCuLL), v27);
    v64 = vmovl_u8(*&vpaddq_s8(v63, v63));
    v65 = vmovl_u16(*&vpaddq_s16(v64, v64));
    v66 = vpaddq_s32(v65, v65).u64[0];
    v67.i64[0] = v66;
    v67.i64[1] = HIDWORD(v66);
    v68 = v67;
    v69 = vaddvq_s64(v67);
    if (v320)
    {
      v70 = v320 >= v30 + v69;
    }

    else
    {
      v70 = 1;
    }

    v71 = v70;
    if (v69 <= 0x80 && (v71 & 1) != 0)
    {
      v72 = vaddq_s64(vdupq_n_s64(v30 & 0x3F), vzip1q_s64(0, v68));
      v73 = (v319 + 8 * (v30 >> 6));
      v62 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v73, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v72)), vshlq_u64(vdupq_lane_s64(v73->i64[0], 0), vnegq_s64(v72)));
      if ((v30 & 0x3F) + v69 >= 0x81)
      {
        v62 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v73[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v72)), vshlq_u64(vdupq_laneq_s64(v73[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v72))), v62);
      }

      v30 += v69;
    }

    else
    {
      v321 = 1;
    }

    v74 = v323.i8[0] & 3;
    if (v74 == 2)
    {
      if (v320)
      {
        v75 = v30 + 4;
        v76 = v30 + 8;
        if (v320 >= v30 + 4)
        {
          v30 += 4;
        }

        else
        {
          v76 = v30 + 4;
        }

        if (v320 >= v76)
        {
          v30 = v76;
        }

        if (v320 < v75 || v320 < v76)
        {
          v321 = 1;
        }
      }

      else
      {
        v30 += 8;
      }
    }

    v77 = 0uLL;
    v78 = vextq_s8(0, v324, 0xCuLL);
    v79 = vmovl_u8(*&vpaddq_s8(v78, v78));
    v80 = vmovl_u16(*&vpaddq_s16(v79, v79));
    v81 = vpaddq_s32(v80, v80).u64[0];
    v82.i64[0] = v81;
    v82.i64[1] = HIDWORD(v81);
    v83 = v82;
    v84 = vaddvq_s64(v82);
    v85 = v30 + v84;
    if (v320)
    {
      v86 = v320 >= v85;
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
      v90 = v319;
      v91 = (v319 + 8 * (v30 >> 6));
      v77 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v91, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v89)), vshlq_u64(vdupq_lane_s64(v91->i64[0], 0), vnegq_s64(v89)));
      if (v88 + v84 >= 0x81)
      {
        v77 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v91[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v89)), vshlq_u64(vdupq_laneq_s64(v91[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v89))), v77);
      }

      v92 = v321;
      v30 = v85;
    }

    else
    {
      v92 = 1;
      v90 = v319;
    }

    v93 = vmovl_u8(*&vpaddq_s8(v324, v324));
    v94 = vmovl_u16(*&vpaddq_s16(v93, v93));
    v95 = vpaddq_s32(v94, v94).u64[0];
    v96.i64[0] = v95;
    v96.i64[1] = HIDWORD(v95);
    v97 = v96;
    v98 = vaddvq_s64(v96);
    v99 = v30 + v98;
    if (v320)
    {
      v100 = v320 >= v99;
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

    v107 = vmovl_u8(*&vpaddq_s8(v325, v325));
    v108 = vmovl_u16(*&vpaddq_s16(v107, v107));
    v109 = vpaddq_s32(v108, v108).u64[0];
    v110.i64[0] = v109;
    v110.i64[1] = HIDWORD(v109);
    v111 = v110;
    v112 = vaddvq_s64(v110);
    v113 = v112;
    v114 = v99 + v112;
    if (v320)
    {
      v115 = v320 >= v114;
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
    if (v320)
    {
      v121 = v320 >= v120;
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

    v128 = vmovl_u8(*&vpaddq_s8(v326, v326));
    v129 = vmovl_u16(*&vpaddq_s16(v128, v128));
    v130 = vpaddq_s32(v129, v129).u64[0];
    v131.i64[0] = v130;
    v131.i64[1] = HIDWORD(v130);
    v132 = v131;
    v133 = vaddvq_s64(v131);
    v134 = v133;
    v135 = v120 + v133;
    if (v320)
    {
      v136 = v320 >= v135;
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
    if (v320)
    {
      v142 = v320 >= v141;
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

    v149 = vmovl_u8(*&vpaddq_s8(v327, v327));
    v150 = vmovl_u16(*&vpaddq_s16(v149, v149));
    v151 = vpaddq_s32(v150, v150).u64[0];
    v152.i64[0] = v151;
    v152.i64[1] = HIDWORD(v151);
    v153 = v152;
    v154 = vaddvq_s64(v152);
    v155 = v154;
    v156 = v141 + v154;
    if (v320)
    {
      v157 = v320 >= v156;
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
    if (v320)
    {
      v163 = v320 >= v162;
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

    if ((v92 & 1) != 0 || v320 + 8 * result - v162 - 512 >= 9 || v74 == 2)
    {
LABEL_138:
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(v42, v41);
      return 0;
    }

    else
    {
      v168 = vzip1_s32(*v65.i8, *&vextq_s8(v65, v65, 8uLL));
      v169 = vzip1_s32(*v108.i8, *&vextq_s8(v108, v108, 8uLL));
      v170 = vzip1_s32(*v129.i8, *&vextq_s8(v129, v129, 8uLL));
      v171 = vzip1_s32(*v150.i8, *&vextq_s8(v150, v150, 8uLL));
      v172.i64[0] = v168.u32[0];
      v172.i64[1] = v168.u32[1];
      v173 = vshlq_u64(v62, vnegq_s64(v172));
      v174 = vzip2q_s64(v62, v173);
      v175 = vzip1q_s64(v62, v173);
      v172.i64[0] = v169.u32[0];
      v172.i64[1] = v169.u32[1];
      v176 = vnegq_s64(v172);
      v177 = vshlq_u64(v102, v176);
      v178 = vzip2q_s64(v102, v177);
      v179 = vzip1q_s64(v102, v177);
      v180 = vshlq_u64(v127, v176);
      v181 = vzip2q_s64(v127, v180);
      v182 = vzip1q_s64(v127, v180);
      v172.i64[0] = v170.u32[0];
      v172.i64[1] = v170.u32[1];
      v183 = vnegq_s64(v172);
      v184 = vshlq_u64(v123, v183);
      v185 = vzip2q_s64(v123, v184);
      v186 = vzip1q_s64(v123, v184);
      v187 = vshlq_u64(v148, v183);
      v172.i64[0] = v171.u32[0];
      v172.i64[1] = v171.u32[1];
      v188 = vnegq_s64(v172);
      v189 = vshlq_u64(v144, v188);
      v190 = vuzp1q_s32(v175, v174);
      v191 = vuzp1q_s32(v179, v178);
      v192 = vuzp1q_s32(v182, v181);
      v193 = vnegq_s32((*&v64 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
      v194 = vnegq_s32((*&v107 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
      v195 = vuzp1q_s32(v186, v185);
      v196 = vnegq_s32((*&v128 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
      v197 = vuzp1q_s32(vzip1q_s64(v148, v187), vzip2q_s64(v148, v187));
      v198 = vuzp1q_s32(vzip1q_s64(v144, v189), vzip2q_s64(v144, v189));
      v199 = vnegq_s32((*&v149 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
      v200 = vshlq_u32(v190, v193);
      v201 = vshlq_u32(v191, v194);
      v202 = vshlq_u32(v192, v194);
      v203 = vshlq_u32(v195, v196);
      v204 = vshlq_u32(v197, v196);
      v205 = vzip2q_s32(v190, v200);
      v206 = vzip1q_s32(v190, v200);
      v207 = vzip2q_s32(v191, v201);
      v208 = vzip1q_s32(v191, v201);
      v209 = vzip2q_s32(v192, v202);
      v210 = vzip1q_s32(v192, v202);
      v211 = vzip2q_s32(v195, v203);
      v212 = vzip1q_s32(v195, v203);
      v213 = vzip2q_s32(v197, v204);
      v214 = vzip1q_s32(v197, v204);
      v215 = vshlq_u32(v198, v199);
      v216 = vzip2q_s32(v198, v215);
      v217 = vzip1q_s32(v198, v215);
      v218 = vuzp1q_s16(v206, v205);
      v219 = vuzp1q_s16(v208, v207);
      v220 = vuzp1q_s16(v210, v209);
      v221 = vuzp1q_s16(v212, v211);
      v222 = vnegq_s16((*&v325 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
      v223 = vuzp1q_s16(v214, v213);
      v224 = vuzp1q_s16(v217, v216);
      v225 = vshlq_u16(v218, vnegq_s16((*&v63 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
      v226 = vshlq_u16(v219, v222);
      v227 = vshlq_u16(v220, v222);
      v228 = vzip2q_s16(v218, v225);
      v229 = vzip1q_s16(v218, v225);
      v230 = vuzp1q_s8(vzip1q_s16(v219, v226), vzip2q_s16(v219, v226));
      v226.i64[0] = 0x808080808080808;
      v226.i64[1] = 0x808080808080808;
      v231 = vuzp1q_s8(vzip1q_s16(v220, v227), vzip2q_s16(v220, v227));
      v219.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v219.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v232 = vsubq_s8(v226, v63);
      v233 = vaddq_s8(v63, v219);
      v234.i64[0] = 0x808080808080808;
      v234.i64[1] = 0x808080808080808;
      v235 = vshlq_s8(vuzp1q_s8(v229, v228), v232);
      v232.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v232.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v236 = vsubq_s8(v234, v325);
      v237 = vaddq_s8(v325, v232);
      v238 = vshlq_s8(v230, v236);
      v239 = vnegq_s16((*&v326 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
      v240 = vshlq_s8(v235, v233);
      v241 = vshlq_s8(v238, v237);
      v242 = vshlq_s8(vshlq_s8(v231, v236), v237);
      v243 = vdupq_lane_s32(*v240.i8, 0);
      v244 = vandq_s8(v313, v243);
      v245 = vsubq_s8(v241, v244);
      v246 = vsubq_s8(v242, v244);
      v247 = vshlq_u16(v221, v239);
      v248 = vshlq_u16(v223, v239);
      v244.i64[0] = 0x808080808080808;
      v244.i64[1] = 0x808080808080808;
      v233.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v233.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v249 = vsubq_s8(v244, v326);
      v250 = vaddq_s8(v326, v233);
      v251 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v223, v248), vzip2q_s16(v223, v248)), v249);
      v252 = vnegq_s16((*&v327 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
      v253 = vandq_s8(v314, v243);
      v254 = vsubq_s8(vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v221, v247), vzip2q_s16(v221, v247)), v249), v250), v253);
      v255 = vsubq_s8(vshlq_s8(v251, v250), v253);
      v256 = vshlq_u16(v224, v252);
      v253.i64[0] = 0x808080808080808;
      v253.i64[1] = 0x808080808080808;
      v251.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v251.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v257 = vsubq_s8(v253, v327);
      v258 = vaddq_s8(v327, v251);
      v259 = vshlq_u64(v167, v188);
      v260 = vuzp1q_s32(vzip1q_s64(v167, v259), vzip2q_s64(v167, v259));
      v261 = vshlq_u32(v260, v199);
      v262 = vuzp1q_s16(vzip1q_s32(v260, v261), vzip2q_s32(v260, v261));
      v263 = vshlq_u16(v262, v252);
      v264 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v224, v256), vzip2q_s16(v224, v256)), v257), v258);
      v265 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v262, v263), vzip2q_s16(v262, v263)), v257), v258);
      v266 = vandq_s8(v315, v243);
      v267 = vsubq_s8(v264, v266);
      v268 = vsubq_s8(v265, v266);
      *v264.i8 = vzip1_s32(*v80.i8, *&vextq_s8(v80, v80, 8uLL));
      *v265.i8 = vzip1_s32(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
      v172.i64[0] = v264.u32[0];
      v172.i64[1] = v264.u32[1];
      v269 = v172;
      v172.i64[0] = v265.u32[0];
      v172.i64[1] = v265.u32[1];
      v270 = vshlq_u64(v77, vnegq_s64(v269));
      v271 = vshlq_u64(v106, vnegq_s64(v172));
      v272 = vuzp1q_s32(vzip1q_s64(v77, v270), vzip2q_s64(v77, v270));
      v273 = vuzp1q_s32(vzip1q_s64(v106, v271), vzip2q_s64(v106, v271));
      v274 = vshlq_u32(v272, vnegq_s32((*&v79 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v275 = vshlq_u32(v273, vnegq_s32((*&v93 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v276 = vuzp1q_s16(vzip1q_s32(v272, v274), vzip2q_s32(v272, v274));
      v277 = vuzp1q_s16(vzip1q_s32(v273, v275), vzip2q_s32(v273, v275));
      v278 = vshlq_u16(v276, vnegq_s16((*&v78 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
      v279 = vshlq_u16(v277, vnegq_s16((*&v324 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
      v280 = vzip2q_s16(v276, v278);
      v281 = vzip1q_s16(v276, v278);
      v282 = vzip2q_s16(v277, v279);
      v283 = vzip1q_s16(v277, v279);
      v279.i64[0] = 0x808080808080808;
      v279.i64[1] = 0x808080808080808;
      v284 = vuzp1q_s8(v283, v282);
      v282.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v282.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v285 = vshlq_s8(vshlq_s8(v284, vsubq_s8(v279, v324)), vaddq_s8(v324, v282));
      v286 = vaddq_s8(vandq_s8(v240, v316), vshlq_s8(vshlq_s8(vuzp1q_s8(v281, v280), vsubq_s8(v279, v78)), vaddq_s8(v78, v282)));
      v287 = vandq_s8(v316, v243);
      v288.i64[0] = 0x101010101010101;
      v288.i64[1] = 0x101010101010101;
      v289 = vsubq_s8(v286, v287);
      v290 = vsubq_s8(v285, v287);
      if (vaddlvq_s8(vceqq_s8(v317, v288)))
      {
        v291 = vnegq_s8(vandq_s8(v323, v288));
        v292 = v290;
        v292.i32[3] = v289.i32[0];
        v293 = v289;
        v293.i32[0] = v290.i32[3];
        v339.val[0] = vbslq_s8(v291, v293, v289);
        v339.val[1] = vbslq_s8(v291, v292, v290);
        v292.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
        v292.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
        v340.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(v339, xmmword_29D2F0F80), v291), v339.val[0]);
        v340.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(v339, v292), v291), v339.val[1]);
        v289 = vaddq_s8(vandq_s8(vqtbl2q_s8(v340, xmmword_29D2F0F90), v291), v340.val[0]);
        v290 = vaddq_s8(vandq_s8(vqtbl2q_s8(v340, v292), v291), v340.val[1]);
        v340.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v245.i8, xmmword_29D2F0FA0), v291), v245);
        v340.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v245.i8, xmmword_29D2F0FB0), v291), v246);
        v245 = vaddq_s8(vandq_s8(vqtbl2q_s8(v340, xmmword_29D2F0FC0), v291), v340.val[0]);
        v246 = vaddq_s8(vandq_s8(vqtbl2q_s8(v340, v292), v291), v340.val[1]);
        v340.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v254.i8, xmmword_29D2F0FD0), v291), v254);
        v340.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v254.i8, xmmword_29D2F0F80), v291), v255);
        v254 = vaddq_s8(vandq_s8(vqtbl2q_s8(v340, v292), v291), v340.val[0]);
        v255 = vaddq_s8(vandq_s8(vqtbl2q_s8(v340, xmmword_29D2F0FE0), v291), v340.val[1]);
        v339.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v267.i8, xmmword_29D2F0FF0), v291), v267);
        v339.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v267.i8, xmmword_29D2F0F80), v291), v268);
        v267 = vaddq_s8(vandq_s8(vqtbl2q_s8(v339, v292), v291), v339.val[0]);
        v268 = vaddq_s8(vandq_s8(vqtbl2q_s8(v339, xmmword_29D2F1000), v291), v339.val[1]);
      }

      v294 = vaddq_s8(v322, v289);
      v295 = vaddq_s8(v290, v322);
      v296 = vaddq_s8(v245, v322);
      v297 = vaddq_s8(v246, v322);
      v298 = vaddq_s8(v254, v322);
      v299 = vaddq_s8(v255, v322);
      v300 = vaddq_s8(v267, v322);
      v301 = vaddq_s8(v268, v322);
      v302.i64[0] = 0x1010101010101010;
      v302.i64[1] = 0x1010101010101010;
      v303 = vceqzq_s8(vandq_s8(v323, v302));
      v304 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v294, xmmword_29D2F1230), v303), v294);
      v305 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v295, xmmword_29D2F1230), v303), v295);
      v306 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v296, xmmword_29D2F1230), v303), v296);
      v307 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v297, xmmword_29D2F1230), v303), v297);
      v308 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v298, xmmword_29D2F1230), v303), v298);
      v309 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v299, xmmword_29D2F1230), v303), v299);
      v310 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v300, xmmword_29D2F1230), v303), v300);
      v311 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v301, xmmword_29D2F1230), v303), v301);
      v299.i64[0] = 0x3E003E003E003ELL;
      v299.i64[1] = 0x3E003E003E003ELL;
      v298.i64[0] = 0xF800F800F800F800;
      v298.i64[1] = 0xF800F800F800F800;
      *v42 = vbslq_s8(v298, vshrn_high_n_s32(vshrn_n_s32(v304, 0xDuLL), v305, 0xDuLL), vbslq_s8(xmmword_29D2F1240, vshrn_high_n_s32(vshrn_n_s32(v304, 0xAuLL), v305, 0xAuLL), vbslq_s8(v299, vshrn_high_n_s32(vshrn_n_s32(v304, 7uLL), v305, 7uLL), vuzp1q_s16(v304, v305))));
      v42[1] = vbslq_s8(v298, vshrn_high_n_s32(vshrn_n_s32(v308, 0xDuLL), v309, 0xDuLL), vbslq_s8(xmmword_29D2F1240, vshrn_high_n_s32(vshrn_n_s32(v308, 0xAuLL), v309, 0xAuLL), vbslq_s8(v299, vshrn_high_n_s32(vshrn_n_s32(v308, 7uLL), v309, 7uLL), vuzp1q_s16(v308, v309))));
      v312 = (v42 + v41);
      *v312 = vbslq_s8(v298, vshrn_high_n_s32(vshrn_n_s32(v306, 0xDuLL), v307, 0xDuLL), vbslq_s8(xmmword_29D2F1240, vshrn_high_n_s32(vshrn_n_s32(v306, 0xAuLL), v307, 0xAuLL), vbslq_s8(v299, vshrn_high_n_s32(vshrn_n_s32(v306, 7uLL), v307, 7uLL), vuzp1q_s16(v306, v307))));
      v312[1] = vbslq_s8(v298, vshrn_high_n_s32(vshrn_n_s32(v310, 0xDuLL), v311, 0xDuLL), vbslq_s8(xmmword_29D2F1240, vshrn_high_n_s32(vshrn_n_s32(v310, 0xAuLL), v311, 0xAuLL), vbslq_s8(v299, vshrn_high_n_s32(vshrn_n_s32(v310, 7uLL), v311, 7uLL), vuzp1q_s16(v310, v311))));
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(int8x16_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 64, a2, *a3);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 8, 64, v5, a3[1]);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 2, 64, v6, a3[2]);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 10, 64, v7, a3[3]);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 16, 64, v8, a3[4]);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 24, 64, v9, a3[5]);
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 18, 64, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 26, 64, v10 + v11, v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
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
  v540 = v8;
  v15 = vbslq_s8(v12, vshll_n_u16(*v8.i8, 0xDuLL), vbslq_s8(v11, vshll_n_u16(*v8.i8, 0xAuLL), vbslq_s8(v10, vshll_n_u16(*v8.i8, 7uLL), vbslq_s8(v9, vmovl_u16(*v8.i8), 0))));
  v16 = vbslq_s8(v12, vshll_high_n_u16(v8, 0xDuLL), vbslq_s8(v11, vshll_high_n_u16(v8, 0xAuLL), vbslq_s8(v10, vshll_high_n_u16(v8, 7uLL), vbslq_s8(v9, vmovl_high_u16(v8), 0))));
  v17 = vbslq_s8(v12, vshll_n_u16(*v6.i8, 0xDuLL), vbslq_s8(v11, vshll_n_u16(*v6.i8, 0xAuLL), vbslq_s8(v10, vshll_n_u16(*v6.i8, 7uLL), vbslq_s8(v9, vmovl_u16(*v6.i8), 0))));
  v18 = vbslq_s8(v12, vshll_high_n_u16(v6, 0xDuLL), vbslq_s8(v11, vshll_high_n_u16(v6, 0xAuLL), vbslq_s8(v10, vshll_high_n_u16(v6, 7uLL), vbslq_s8(v9, vmovl_high_u16(v6), 0))));
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
  v150 = a5 < 2 || a6 == 0;
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
      v159 = *(a3 + 16);
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
    v159 = *(a3 + 16);
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
    v159 = *(a3 + 16);
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(uint64_t result, uint64_t a2, uint64_t a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + v12, a2, v15, v14);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + 32, a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, v11 + v12 + 32, a2, v20, v19);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 4 * a2, a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 6 * a2, a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, v11 + 4 * a2 + 32, a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, v11 + 6 * a2 + 32, a2, v30, v29);
}

_DWORD *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(_DWORD *result, uint64_t a2)
{
  v2 = 8 * ((&v14 + 6) & 7);
  v14 |= 1 << v2;
  v3 = v2 | 1;
  v4 = (v2 | 6) - v2;
  if ((v2 | 1) - v2 > 0xB)
  {
    v4 = (v2 | 1) - v2;
  }

  if (v4 - 12 >= 0xFFFFFFFFFFFFFFEFLL)
  {
    v5 = 0;
    v6 = 0;
    if ((v2 | 1) - v2 <= 0xB)
    {
      v3 = v2 | 6;
    }

    v7 = 5;
    do
    {
      v8 = 64 - v3;
      if (64 - v3 >= v7)
      {
        v8 = v7;
      }

      *(&v14 + v5) |= ((0xFFFFFFFFFFFFFFFFLL >> v6) & ~(-1 << v8)) << v3;
      v6 += v8;
      v9 = v8 + v3;
      v5 += v9 >> 6;
      v3 = v9 & 0x3F;
      v7 -= v8;
    }

    while (v7);
    if (v3 - v2 + (v5 << 6) - 12 >= 0xFFFFFFFFFFFFFFEFLL)
    {
      v10 = 0;
      v11 = 5;
      do
      {
        v12 = 64 - v3;
        if (64 - v3 >= v11)
        {
          v12 = v11;
        }

        *(&v14 + v5) |= ((0xFFFFFFFFFFFFFFFFLL >> v10) & ~(-1 << v12)) << v3;
        v10 += v12;
        v13 = v12 + v3;
        v5 += v13 >> 6;
        v3 = v13 & 0x3F;
        v11 -= v12;
      }

      while (v11);
    }
  }

  *result = 0;
  *(result + a2) = 0;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(int8x16_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
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
    v329 = v13;
    v330 = v12;
    v331 = v11;
    v332 = v10;
    v333 = v9;
    v334 = v8;
    v335 = v7;
    v336 = v6;
    v337 = v4;
    v338 = v5;
    v321 = 0;
    v320 = (8 * (a3 & 7)) | 0x200;
    v318 = 8 * (a3 & 7);
    v319 = a3 & 0xFFFFFFFFFFFFFFF8;
    result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)10,AGX::AppleCompressionGen2::Vec<signed char>>(&v323, v328, &v322, &v318, a4);
    v26.i64[0] = 0x303030303030303;
    v26.i64[1] = 0x303030303030303;
    v317 = vandq_s8(v323, v26);
    v27 = vbicq_s8(v328[0], vceqq_s8(v317, v26));
    v328[0] = v27;
    v324 = v27;
    v325 = v27;
    v326 = v27;
    v327 = v27;
    v28.i64[0] = 0x202020202020202;
    v28.i64[1] = 0x202020202020202;
    v29 = vandq_s8(vmovl_s16(vtst_s16(*&vmovl_u8(*v323.i8), 0x4000400040004)), v28);
    v30 = v318;
    if (vmaxvq_s8(v29) < 1)
    {
      v46.i64[0] = -1;
      v46.i64[1] = -1;
      v314 = v46;
      v315 = v46;
      v313 = v46;
      v316 = v46;
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
      v38 = v318 + v36;
      if (v320)
      {
        v39 = v320 >= v38;
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
        v43 = (v319 + 8 * (v318 >> 6));
        v44 = vaddq_s64(vdupq_lane_s64(vandq_s8(v318, v25).i64[0], 0), vzip1q_s64(0, v35));
        v45 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v43, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v44)), vshlq_u64(vdupq_lane_s64(v43->i64[0], 0), vnegq_s64(v44)));
        if ((v318 & 0x3F) + v37 >= 0x81)
        {
          v45 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v43[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v44)), vshlq_u64(vdupq_laneq_s64(v43[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v44))), v45);
        }

        v30 = v38;
      }

      else
      {
        v321 = 1;
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
      v324 = vsubq_s8(v324, v57);
      v325 = vsubq_s8(v325, v58);
      v326 = vsubq_s8(v326, v59);
      v327 = vsubq_s8(v327, v60);
      v313 = vceqzq_s8(v58);
      v314 = vceqzq_s8(v59);
      v315 = vceqzq_s8(v60);
      v316 = vceqzq_s8(v57);
    }

    v61.i64[0] = 0x808080808080808;
    v61.i64[1] = 0x808080808080808;
    v62 = 0uLL;
    v63 = vandq_s8(vextq_s8(vtstq_s8(v323, v61), 0, 0xCuLL), v27);
    v64 = vmovl_u8(*&vpaddq_s8(v63, v63));
    v65 = vmovl_u16(*&vpaddq_s16(v64, v64));
    v66 = vpaddq_s32(v65, v65).u64[0];
    v67.i64[0] = v66;
    v67.i64[1] = HIDWORD(v66);
    v68 = v67;
    v69 = vaddvq_s64(v67);
    if (v320)
    {
      v70 = v320 >= v30 + v69;
    }

    else
    {
      v70 = 1;
    }

    v71 = v70;
    if (v69 <= 0x80 && (v71 & 1) != 0)
    {
      v72 = vaddq_s64(vdupq_n_s64(v30 & 0x3F), vzip1q_s64(0, v68));
      v73 = (v319 + 8 * (v30 >> 6));
      v62 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v73, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v72)), vshlq_u64(vdupq_lane_s64(v73->i64[0], 0), vnegq_s64(v72)));
      if ((v30 & 0x3F) + v69 >= 0x81)
      {
        v62 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v73[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v72)), vshlq_u64(vdupq_laneq_s64(v73[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v72))), v62);
      }

      v30 += v69;
    }

    else
    {
      v321 = 1;
    }

    v74 = v323.i8[0] & 3;
    if (v74 == 2)
    {
      if (v320)
      {
        v75 = v30 + 4;
        v76 = v30 + 8;
        if (v320 >= v30 + 4)
        {
          v30 += 4;
        }

        else
        {
          v76 = v30 + 4;
        }

        if (v320 >= v76)
        {
          v30 = v76;
        }

        if (v320 < v75 || v320 < v76)
        {
          v321 = 1;
        }
      }

      else
      {
        v30 += 8;
      }
    }

    v77 = 0uLL;
    v78 = vextq_s8(0, v324, 0xCuLL);
    v79 = vmovl_u8(*&vpaddq_s8(v78, v78));
    v80 = vmovl_u16(*&vpaddq_s16(v79, v79));
    v81 = vpaddq_s32(v80, v80).u64[0];
    v82.i64[0] = v81;
    v82.i64[1] = HIDWORD(v81);
    v83 = v82;
    v84 = vaddvq_s64(v82);
    v85 = v30 + v84;
    if (v320)
    {
      v86 = v320 >= v85;
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
      v90 = v319;
      v91 = (v319 + 8 * (v30 >> 6));
      v77 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v91, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v89)), vshlq_u64(vdupq_lane_s64(v91->i64[0], 0), vnegq_s64(v89)));
      if (v88 + v84 >= 0x81)
      {
        v77 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v91[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v89)), vshlq_u64(vdupq_laneq_s64(v91[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v89))), v77);
      }

      v92 = v321;
      v30 = v85;
    }

    else
    {
      v92 = 1;
      v90 = v319;
    }

    v93 = vmovl_u8(*&vpaddq_s8(v324, v324));
    v94 = vmovl_u16(*&vpaddq_s16(v93, v93));
    v95 = vpaddq_s32(v94, v94).u64[0];
    v96.i64[0] = v95;
    v96.i64[1] = HIDWORD(v95);
    v97 = v96;
    v98 = vaddvq_s64(v96);
    v99 = v30 + v98;
    if (v320)
    {
      v100 = v320 >= v99;
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

    v107 = vmovl_u8(*&vpaddq_s8(v325, v325));
    v108 = vmovl_u16(*&vpaddq_s16(v107, v107));
    v109 = vpaddq_s32(v108, v108).u64[0];
    v110.i64[0] = v109;
    v110.i64[1] = HIDWORD(v109);
    v111 = v110;
    v112 = vaddvq_s64(v110);
    v113 = v112;
    v114 = v99 + v112;
    if (v320)
    {
      v115 = v320 >= v114;
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
    if (v320)
    {
      v121 = v320 >= v120;
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

    v128 = vmovl_u8(*&vpaddq_s8(v326, v326));
    v129 = vmovl_u16(*&vpaddq_s16(v128, v128));
    v130 = vpaddq_s32(v129, v129).u64[0];
    v131.i64[0] = v130;
    v131.i64[1] = HIDWORD(v130);
    v132 = v131;
    v133 = vaddvq_s64(v131);
    v134 = v133;
    v135 = v120 + v133;
    if (v320)
    {
      v136 = v320 >= v135;
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
    if (v320)
    {
      v142 = v320 >= v141;
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

    v149 = vmovl_u8(*&vpaddq_s8(v327, v327));
    v150 = vmovl_u16(*&vpaddq_s16(v149, v149));
    v151 = vpaddq_s32(v150, v150).u64[0];
    v152.i64[0] = v151;
    v152.i64[1] = HIDWORD(v151);
    v153 = v152;
    v154 = vaddvq_s64(v152);
    v155 = v154;
    v156 = v141 + v154;
    if (v320)
    {
      v157 = v320 >= v156;
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
    if (v320)
    {
      v163 = v320 >= v162;
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

    if ((v92 & 1) != 0 || v320 + 8 * result - v162 - 512 >= 9 || v74 == 2)
    {
LABEL_138:
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(v42, v41);
      return 0;
    }

    else
    {
      v168 = vzip1_s32(*v65.i8, *&vextq_s8(v65, v65, 8uLL));
      v169 = vzip1_s32(*v108.i8, *&vextq_s8(v108, v108, 8uLL));
      v170 = vzip1_s32(*v129.i8, *&vextq_s8(v129, v129, 8uLL));
      v171 = vzip1_s32(*v150.i8, *&vextq_s8(v150, v150, 8uLL));
      v172.i64[0] = v168.u32[0];
      v172.i64[1] = v168.u32[1];
      v173 = vshlq_u64(v62, vnegq_s64(v172));
      v174 = vzip2q_s64(v62, v173);
      v175 = vzip1q_s64(v62, v173);
      v172.i64[0] = v169.u32[0];
      v172.i64[1] = v169.u32[1];
      v176 = vnegq_s64(v172);
      v177 = vshlq_u64(v102, v176);
      v178 = vzip2q_s64(v102, v177);
      v179 = vzip1q_s64(v102, v177);
      v180 = vshlq_u64(v127, v176);
      v181 = vzip2q_s64(v127, v180);
      v182 = vzip1q_s64(v127, v180);
      v172.i64[0] = v170.u32[0];
      v172.i64[1] = v170.u32[1];
      v183 = vnegq_s64(v172);
      v184 = vshlq_u64(v123, v183);
      v185 = vzip2q_s64(v123, v184);
      v186 = vzip1q_s64(v123, v184);
      v187 = vshlq_u64(v148, v183);
      v172.i64[0] = v171.u32[0];
      v172.i64[1] = v171.u32[1];
      v188 = vnegq_s64(v172);
      v189 = vshlq_u64(v144, v188);
      v190 = vuzp1q_s32(v175, v174);
      v191 = vuzp1q_s32(v179, v178);
      v192 = vuzp1q_s32(v182, v181);
      v193 = vnegq_s32((*&v64 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
      v194 = vnegq_s32((*&v107 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
      v195 = vuzp1q_s32(v186, v185);
      v196 = vnegq_s32((*&v128 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
      v197 = vuzp1q_s32(vzip1q_s64(v148, v187), vzip2q_s64(v148, v187));
      v198 = vuzp1q_s32(vzip1q_s64(v144, v189), vzip2q_s64(v144, v189));
      v199 = vnegq_s32((*&v149 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
      v200 = vshlq_u32(v190, v193);
      v201 = vshlq_u32(v191, v194);
      v202 = vshlq_u32(v192, v194);
      v203 = vshlq_u32(v195, v196);
      v204 = vshlq_u32(v197, v196);
      v205 = vzip2q_s32(v190, v200);
      v206 = vzip1q_s32(v190, v200);
      v207 = vzip2q_s32(v191, v201);
      v208 = vzip1q_s32(v191, v201);
      v209 = vzip2q_s32(v192, v202);
      v210 = vzip1q_s32(v192, v202);
      v211 = vzip2q_s32(v195, v203);
      v212 = vzip1q_s32(v195, v203);
      v213 = vzip2q_s32(v197, v204);
      v214 = vzip1q_s32(v197, v204);
      v215 = vshlq_u32(v198, v199);
      v216 = vzip2q_s32(v198, v215);
      v217 = vzip1q_s32(v198, v215);
      v218 = vuzp1q_s16(v206, v205);
      v219 = vuzp1q_s16(v208, v207);
      v220 = vuzp1q_s16(v210, v209);
      v221 = vuzp1q_s16(v212, v211);
      v222 = vnegq_s16((*&v325 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
      v223 = vuzp1q_s16(v214, v213);
      v224 = vuzp1q_s16(v217, v216);
      v225 = vshlq_u16(v218, vnegq_s16((*&v63 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
      v226 = vshlq_u16(v219, v222);
      v227 = vshlq_u16(v220, v222);
      v228 = vzip2q_s16(v218, v225);
      v229 = vzip1q_s16(v218, v225);
      v230 = vuzp1q_s8(vzip1q_s16(v219, v226), vzip2q_s16(v219, v226));
      v226.i64[0] = 0x808080808080808;
      v226.i64[1] = 0x808080808080808;
      v231 = vuzp1q_s8(vzip1q_s16(v220, v227), vzip2q_s16(v220, v227));
      v219.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v219.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v232 = vsubq_s8(v226, v63);
      v233 = vaddq_s8(v63, v219);
      v234.i64[0] = 0x808080808080808;
      v234.i64[1] = 0x808080808080808;
      v235 = vshlq_s8(vuzp1q_s8(v229, v228), v232);
      v232.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v232.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v236 = vsubq_s8(v234, v325);
      v237 = vaddq_s8(v325, v232);
      v238 = vshlq_s8(v230, v236);
      v239 = vnegq_s16((*&v326 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
      v240 = vshlq_s8(v235, v233);
      v241 = vshlq_s8(v238, v237);
      v242 = vshlq_s8(vshlq_s8(v231, v236), v237);
      v243 = vdupq_lane_s32(*v240.i8, 0);
      v244 = vandq_s8(v313, v243);
      v245 = vsubq_s8(v241, v244);
      v246 = vsubq_s8(v242, v244);
      v247 = vshlq_u16(v221, v239);
      v248 = vshlq_u16(v223, v239);
      v244.i64[0] = 0x808080808080808;
      v244.i64[1] = 0x808080808080808;
      v233.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v233.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v249 = vsubq_s8(v244, v326);
      v250 = vaddq_s8(v326, v233);
      v251 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v223, v248), vzip2q_s16(v223, v248)), v249);
      v252 = vnegq_s16((*&v327 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
      v253 = vandq_s8(v314, v243);
      v254 = vsubq_s8(vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v221, v247), vzip2q_s16(v221, v247)), v249), v250), v253);
      v255 = vsubq_s8(vshlq_s8(v251, v250), v253);
      v256 = vshlq_u16(v224, v252);
      v253.i64[0] = 0x808080808080808;
      v253.i64[1] = 0x808080808080808;
      v251.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v251.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v257 = vsubq_s8(v253, v327);
      v258 = vaddq_s8(v327, v251);
      v259 = vshlq_u64(v167, v188);
      v260 = vuzp1q_s32(vzip1q_s64(v167, v259), vzip2q_s64(v167, v259));
      v261 = vshlq_u32(v260, v199);
      v262 = vuzp1q_s16(vzip1q_s32(v260, v261), vzip2q_s32(v260, v261));
      v263 = vshlq_u16(v262, v252);
      v264 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v224, v256), vzip2q_s16(v224, v256)), v257), v258);
      v265 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v262, v263), vzip2q_s16(v262, v263)), v257), v258);
      v266 = vandq_s8(v315, v243);
      v267 = vsubq_s8(v264, v266);
      v268 = vsubq_s8(v265, v266);
      *v264.i8 = vzip1_s32(*v80.i8, *&vextq_s8(v80, v80, 8uLL));
      *v265.i8 = vzip1_s32(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
      v172.i64[0] = v264.u32[0];
      v172.i64[1] = v264.u32[1];
      v269 = v172;
      v172.i64[0] = v265.u32[0];
      v172.i64[1] = v265.u32[1];
      v270 = vshlq_u64(v77, vnegq_s64(v269));
      v271 = vshlq_u64(v106, vnegq_s64(v172));
      v272 = vuzp1q_s32(vzip1q_s64(v77, v270), vzip2q_s64(v77, v270));
      v273 = vuzp1q_s32(vzip1q_s64(v106, v271), vzip2q_s64(v106, v271));
      v274 = vshlq_u32(v272, vnegq_s32((*&v79 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v275 = vshlq_u32(v273, vnegq_s32((*&v93 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v276 = vuzp1q_s16(vzip1q_s32(v272, v274), vzip2q_s32(v272, v274));
      v277 = vuzp1q_s16(vzip1q_s32(v273, v275), vzip2q_s32(v273, v275));
      v278 = vshlq_u16(v276, vnegq_s16((*&v78 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
      v279 = vshlq_u16(v277, vnegq_s16((*&v324 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
      v280 = vzip2q_s16(v276, v278);
      v281 = vzip1q_s16(v276, v278);
      v282 = vzip2q_s16(v277, v279);
      v283 = vzip1q_s16(v277, v279);
      v279.i64[0] = 0x808080808080808;
      v279.i64[1] = 0x808080808080808;
      v284 = vuzp1q_s8(v283, v282);
      v282.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v282.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v285 = vshlq_s8(vshlq_s8(v284, vsubq_s8(v279, v324)), vaddq_s8(v324, v282));
      v286 = vaddq_s8(vandq_s8(v240, v316), vshlq_s8(vshlq_s8(vuzp1q_s8(v281, v280), vsubq_s8(v279, v78)), vaddq_s8(v78, v282)));
      v287 = vandq_s8(v316, v243);
      v288.i64[0] = 0x101010101010101;
      v288.i64[1] = 0x101010101010101;
      v289 = vsubq_s8(v286, v287);
      v290 = vsubq_s8(v285, v287);
      if (vaddlvq_s8(vceqq_s8(v317, v288)))
      {
        v291 = vnegq_s8(vandq_s8(v323, v288));
        v292 = v290;
        v292.i32[3] = v289.i32[0];
        v293 = v289;
        v293.i32[0] = v290.i32[3];
        v339.val[0] = vbslq_s8(v291, v293, v289);
        v339.val[1] = vbslq_s8(v291, v292, v290);
        v292.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
        v292.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
        v340.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(v339, xmmword_29D2F0F80), v291), v339.val[0]);
        v340.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(v339, v292), v291), v339.val[1]);
        v289 = vaddq_s8(vandq_s8(vqtbl2q_s8(v340, xmmword_29D2F0F90), v291), v340.val[0]);
        v290 = vaddq_s8(vandq_s8(vqtbl2q_s8(v340, v292), v291), v340.val[1]);
        v340.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v245.i8, xmmword_29D2F0FA0), v291), v245);
        v340.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v245.i8, xmmword_29D2F0FB0), v291), v246);
        v245 = vaddq_s8(vandq_s8(vqtbl2q_s8(v340, xmmword_29D2F0FC0), v291), v340.val[0]);
        v246 = vaddq_s8(vandq_s8(vqtbl2q_s8(v340, v292), v291), v340.val[1]);
        v340.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v254.i8, xmmword_29D2F0FD0), v291), v254);
        v340.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v254.i8, xmmword_29D2F0F80), v291), v255);
        v254 = vaddq_s8(vandq_s8(vqtbl2q_s8(v340, v292), v291), v340.val[0]);
        v255 = vaddq_s8(vandq_s8(vqtbl2q_s8(v340, xmmword_29D2F0FE0), v291), v340.val[1]);
        v339.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v267.i8, xmmword_29D2F0FF0), v291), v267);
        v339.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v267.i8, xmmword_29D2F0F80), v291), v268);
        v267 = vaddq_s8(vandq_s8(vqtbl2q_s8(v339, v292), v291), v339.val[0]);
        v268 = vaddq_s8(vandq_s8(vqtbl2q_s8(v339, xmmword_29D2F1000), v291), v339.val[1]);
      }

      v294 = vaddq_s8(v322, v289);
      v295 = vaddq_s8(v290, v322);
      v296 = vaddq_s8(v245, v322);
      v297 = vaddq_s8(v246, v322);
      v298 = vaddq_s8(v254, v322);
      v299 = vaddq_s8(v255, v322);
      v300 = vaddq_s8(v267, v322);
      v301 = vaddq_s8(v268, v322);
      v302.i64[0] = 0x1010101010101010;
      v302.i64[1] = 0x1010101010101010;
      v303 = vceqzq_s8(vandq_s8(v323, v302));
      v304 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v294, xmmword_29D2F1230), v303), v294);
      v305 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v295, xmmword_29D2F1230), v303), v295);
      v306 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v296, xmmword_29D2F1230), v303), v296);
      v307 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v297, xmmword_29D2F1230), v303), v297);
      v308 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v298, xmmword_29D2F1230), v303), v298);
      v309 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v299, xmmword_29D2F1230), v303), v299);
      v310 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v300, xmmword_29D2F1230), v303), v300);
      v311 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v301, xmmword_29D2F1230), v303), v301);
      v299.i64[0] = 0x3E003E003E003ELL;
      v299.i64[1] = 0x3E003E003E003ELL;
      v297.i64[0] = 0xF800F800F800F800;
      v297.i64[1] = 0xF800F800F800F800;
      *v42 = vbslq_s8(v297, vshrn_high_n_s32(vshrn_n_s32(v304, 0xDuLL), v305, 0xDuLL), vbslq_s8(xmmword_29D2F1240, vshrn_high_n_s32(vshrn_n_s32(v304, 0xAuLL), v305, 0xAuLL), vbslq_s8(v299, vshrn_high_n_s32(vshrn_n_s32(v304, 7uLL), v305, 7uLL), vuzp1q_s16(v304, v305))));
      v42[1] = vbslq_s8(v297, vshrn_high_n_s32(vshrn_n_s32(v306, 0xDuLL), v307, 0xDuLL), vbslq_s8(xmmword_29D2F1240, vshrn_high_n_s32(vshrn_n_s32(v306, 0xAuLL), v307, 0xAuLL), vbslq_s8(v299, vshrn_high_n_s32(vshrn_n_s32(v306, 7uLL), v307, 7uLL), vuzp1q_s16(v306, v307))));
      v312 = (v42 + v41);
      *v312 = vbslq_s8(v297, vshrn_high_n_s32(vshrn_n_s32(v308, 0xDuLL), v309, 0xDuLL), vbslq_s8(xmmword_29D2F1240, vshrn_high_n_s32(vshrn_n_s32(v308, 0xAuLL), v309, 0xAuLL), vbslq_s8(v299, vshrn_high_n_s32(vshrn_n_s32(v308, 7uLL), v309, 7uLL), vuzp1q_s16(v308, v309))));
      v312[1] = vbslq_s8(v297, vshrn_high_n_s32(vshrn_n_s32(v310, 0xDuLL), v311, 0xDuLL), vbslq_s8(xmmword_29D2F1240, vshrn_high_n_s32(vshrn_n_s32(v310, 0xAuLL), v311, 0xAuLL), vbslq_s8(v299, vshrn_high_n_s32(vshrn_n_s32(v310, 7uLL), v311, 7uLL), vuzp1q_s16(v310, v311))));
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