uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 256, a2, *a3);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 64, 256, v5, a3[1]);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 512, 256, v6, a3[2]);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 576, 256, v7, a3[3]);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 128, 256, v8, a3[4]);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 192, 256, v9, a3[5]);
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 640, 256, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 704, 256, v10 + v11, v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(unint64_t a1, char *a2, uint32x4_t *a3, uint64_t a4, int a5, int a6)
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
  v526 = *a3;
  v527 = v6;
  v20 = vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v6.i8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_n_u32(*v6.i8, 5uLL), vbslq_s8(xmmword_29D2F1340, v17, 0)));
  v21 = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v6, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(v6, 5uLL), vbslq_s8(xmmword_29D2F1340, v13, 0)));
  v13.i64[0] = v7.u32[0];
  v13.i64[1] = v7.u32[1];
  v22 = v13;
  v13.i64[0] = v7.u32[2];
  v13.i64[1] = v7.u32[3];
  v23 = vbslq_s8(xmmword_29D2F1340, v22, 0);
  v24 = vbslq_s8(xmmword_29D2F1340, v13, 0);
  v13.i64[0] = v8.u32[0];
  v13.i64[1] = v8.u32[1];
  v25 = v13;
  v13.i64[0] = v8.u32[2];
  v13.i64[1] = v8.u32[3];
  v26 = vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v7.i8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_n_u32(*v7.i8, 5uLL), v23));
  v27 = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v7, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(v7, 5uLL), v24));
  v524 = v7;
  v525 = v8;
  v28 = vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v8.i8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_n_u32(*v8.i8, 5uLL), vbslq_s8(xmmword_29D2F1340, v25, 0)));
  v29 = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(v8, 5uLL), vbslq_s8(xmmword_29D2F1340, v13, 0)));
  v13.i64[0] = v9.u32[0];
  v13.i64[1] = v9.u32[1];
  v30 = v13;
  v13.i64[0] = v9.u32[2];
  v13.i64[1] = v9.u32[3];
  v31 = vbslq_s8(xmmword_29D2F1340, v30, 0);
  v32 = vbslq_s8(xmmword_29D2F1340, v13, 0);
  v13.i64[0] = v10.u32[0];
  v13.i64[1] = v10.u32[1];
  v33 = v13;
  v13.i64[0] = v10.u32[2];
  v13.i64[1] = v10.u32[3];
  v34 = vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v9.i8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_n_u32(*v9.i8, 5uLL), v31));
  v35 = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v9, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(v9, 5uLL), v32));
  v522 = v9;
  v523 = v10;
  v36 = vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v10.i8, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_n_u32(*v10.i8, 5uLL), vbslq_s8(xmmword_29D2F1340, v33, 0)));
  v37 = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v10, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(v10, 5uLL), vbslq_s8(xmmword_29D2F1340, v13, 0)));
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
  v536 = vshlq_s16(vshlq_s16(vsubq_s16(v18, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v538 = vshlq_s16(vshlq_s16(vsubq_s16(v19, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v46 = vshlq_s16(vshlq_s16(vsubq_s16(v20, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v47 = vminq_s16(vminq_s16(v536, v538), v46);
  v540 = v46;
  v542 = vshlq_s16(vshlq_s16(vsubq_s16(v21, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v48 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v536, v538), v46), v542), xmmword_29D2F1150);
  v49 = vqtbl1q_s8(vminq_s16(v47, v542), xmmword_29D2F1150);
  v50 = vpmaxq_s16(v48, v48);
  v51 = vpminq_s16(v49, v49);
  v52 = vzip1q_s16(v50, v51);
  v53.i64[0] = 0x10001000100010;
  v53.i64[1] = 0x10001000100010;
  v54 = vbicq_s8(vsubq_s16(v53, vclsq_s16(v52)), vceqzq_s16(v52));
  v544 = vshlq_s16(vshlq_s16(vsubq_s16(v26, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v545 = vshlq_s16(vshlq_s16(vsubq_s16(v27, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v534 = v29;
  v55 = vshlq_s16(vshlq_s16(vsubq_s16(v28, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v56 = vminq_s16(vminq_s16(v544, v545), v55);
  v546 = v55;
  v547 = vshlq_s16(vshlq_s16(vsubq_s16(v29, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v6.i64[0] = 0x8000800080008000;
  v6.i64[1] = 0x8000800080008000;
  v57 = vmaxq_s16(v50, v6);
  v6.i64[0] = 0x8000800080008000;
  v6.i64[1] = 0x8000800080008000;
  v58 = vminq_s16(v51, v6);
  v59 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v544, v545), v55), v547), xmmword_29D2F1150);
  v60 = vqtbl1q_s8(vminq_s16(v56, v547), xmmword_29D2F1150);
  v61 = vpmaxq_s16(v59, v59);
  v62 = vpminq_s16(v60, v60);
  v63 = vmaxq_s16(v57, v61);
  v64 = vminq_s16(v58, v62);
  v65 = vzip1q_s16(v61, v62);
  v66 = vbicq_s8(vsubq_s16(v53, vclsq_s16(v65)), vceqzq_s16(v65));
  v548 = vshlq_s16(vshlq_s16(vsubq_s16(v34, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v549 = vshlq_s16(vshlq_s16(vsubq_s16(v35, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v532 = v37;
  v67 = vshlq_s16(vshlq_s16(vsubq_s16(v36, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v68 = vminq_s16(vminq_s16(v548, v549), v67);
  v550 = v67;
  v551 = vshlq_s16(vshlq_s16(vsubq_s16(v37, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v69 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v548, v549), v67), v551), xmmword_29D2F1150);
  v70 = vqtbl1q_s8(vminq_s16(v68, v551), xmmword_29D2F1150);
  v71 = vpmaxq_s16(v69, v69);
  v72 = vpminq_s16(v70, v70);
  v73 = vmaxq_s16(v63, v71);
  v74 = vminq_s16(v64, v72);
  v75 = vzip1q_s16(v71, v72);
  v76 = vbicq_s8(vsubq_s16(v53, vclsq_s16(v75)), vceqzq_s16(v75));
  v552 = vshlq_s16(vshlq_s16(vsubq_s16(v42, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v553 = vshlq_s16(vshlq_s16(vsubq_s16(v43, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v556 = v45;
  v530 = vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v12, 0xAuLL), vbslq_s8(xmmword_29D2F1350, vshll_high_n_u32(v12, 5uLL), vbslq_s8(xmmword_29D2F1340, v13, 0)));
  v554 = vshlq_s16(vshlq_s16(vsubq_s16(v44, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v555 = vshlq_s16(vshlq_s16(vsubq_s16(v530, v45), xmmword_29D2F1360), xmmword_29D2F1370);
  v77 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v552, v553), v554), v555), xmmword_29D2F1150);
  v78 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v552, v553), v554), v555), xmmword_29D2F1150);
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
  v91.i64[0] = -1;
  v91.i64[1] = -1;
  v563 = v82;
  v564 = v81;
  v92 = vsubq_s16(vshlq_s16(v91, vsubq_s16(v37, v90)), v82);
  v93 = vsubq_s16(v53, v90);
  v94 = vcgtq_s16(v89, v93);
  v95 = vminq_s16(v93, v89);
  v565 = vandq_s8(v92, v94);
  v89.i64[0] = 0x8000800080008;
  v89.i64[1] = 0x8000800080008;
  v96 = vorrq_s8(vandq_s8(v94, v89), 0);
  v89.i64[0] = 0x3000300030003;
  v89.i64[1] = 0x3000300030003;
  v97 = vorrq_s8(vandq_s8(vceqzq_s16(v95), v89), v96);
  v98 = vmaxq_s16(vminq_s16(vsubq_s16(v95, v86), v89), 0);
  v99 = vmaxq_s16(vminq_s16(vsubq_s16(v95, v87), v89), 0);
  v559 = vsubq_s16(v95, v98);
  v560 = vsubq_s16(v95, v99);
  v100 = vmaxq_s16(vminq_s16(vsubq_s16(v95, v88), v89), 0);
  v561 = vsubq_s16(v95, v100);
  v562 = v95;
  v101 = vaddq_s16(v100, v99);
  v102 = vmaxq_s16(vminq_s16(vsubq_s16(v95, v85), v89), 0);
  v89.i64[0] = 0x4000400040004;
  v89.i64[1] = 0x4000400040004;
  v557 = vorrq_s8(vbicq_s8(v89, vceqq_s16(v101, vnegq_s16(vaddq_s16(v102, v98)))), v97);
  v558 = vsubq_s16(v95, v102);
  if (vmaxvq_s16(v95))
  {
    v497 = v11;
    v498 = v12;
    v103.i64[0] = 0xFFFF00000000;
    v103.i64[1] = 0xFFFF00000000;
    v104 = vsubq_s16(v556, vshlq_s16(vqtbl1q_s8(v556, xmmword_29D2F1140), v103));
    v105 = vsubq_s16(v27, vaddq_s16(v104, vshlq_s16(vqtbl1q_s8(v27, xmmword_29D2F1140), v103)));
    v519 = v26;
    v520 = v27;
    v521 = v28;
    v514 = v97;
    v106 = vsubq_s16(v34, vaddq_s16(v104, vshlq_s16(vqtbl1q_s8(v34, xmmword_29D2F1140), v103)));
    v515 = v34;
    v517 = v35;
    v518 = v36;
    v107 = vsubq_s16(v36, vaddq_s16(v104, vshlq_s16(vqtbl1q_s8(v36, xmmword_29D2F1140), v103)));
    v108 = vshlq_s16(vsubq_s16(v35, vaddq_s16(v104, vshlq_s16(vqtbl1q_s8(v35, xmmword_29D2F1140), v103))), xmmword_29D2F1360);
    v109 = vshlq_s16(vshlq_s16(vsubq_s16(v18, vaddq_s16(vshlq_s16(vqtbl1q_s8(v18, xmmword_29D2F1140), v103), v104)), xmmword_29D2F1360), xmmword_29D2F1370);
    v110 = vshlq_s16(vshlq_s16(vsubq_s16(v19, vaddq_s16(vshlq_s16(vqtbl1q_s8(v19, xmmword_29D2F1140), v103), v104)), xmmword_29D2F1360), xmmword_29D2F1370);
    v111 = vshlq_s16(vshlq_s16(vsubq_s16(v20, vaddq_s16(vshlq_s16(vqtbl1q_s8(v20, xmmword_29D2F1140), v103), v104)), xmmword_29D2F1360), xmmword_29D2F1370);
    v112 = vshlq_s16(vshlq_s16(vsubq_s16(v21, vaddq_s16(vshlq_s16(vqtbl1q_s8(v21, xmmword_29D2F1140), v103), v104)), xmmword_29D2F1360), xmmword_29D2F1370);
    v113 = vshlq_s16(vshlq_s16(vsubq_s16(v26, vaddq_s16(v104, vshlq_s16(vqtbl1q_s8(v26, xmmword_29D2F1140), v103))), xmmword_29D2F1360), xmmword_29D2F1370);
    v114 = vshlq_s16(vshlq_s16(v105, xmmword_29D2F1360), xmmword_29D2F1370);
    v115 = vshlq_s16(vshlq_s16(vsubq_s16(v28, vaddq_s16(v104, vshlq_s16(vqtbl1q_s8(v28, xmmword_29D2F1140), v103))), xmmword_29D2F1360), xmmword_29D2F1370);
    v116 = vshlq_s16(vshlq_s16(vsubq_s16(v534, vaddq_s16(v104, vshlq_s16(vqtbl1q_s8(v534, xmmword_29D2F1140), v103))), xmmword_29D2F1360), xmmword_29D2F1370);
    v117 = vshlq_s16(vshlq_s16(v106, xmmword_29D2F1360), xmmword_29D2F1370);
    v118 = vshlq_s16(v108, xmmword_29D2F1370);
    v119 = vshlq_s16(vshlq_s16(v107, xmmword_29D2F1360), xmmword_29D2F1370);
    v120 = vshlq_s16(vshlq_s16(vsubq_s16(v532, vaddq_s16(v104, vshlq_s16(vqtbl1q_s8(v532, xmmword_29D2F1140), v103))), xmmword_29D2F1360), xmmword_29D2F1370);
    v121 = vshlq_s16(vshlq_s16(vsubq_s16(v42, vaddq_s16(v104, vshlq_s16(vqtbl1q_s8(v42, xmmword_29D2F1140), v103))), xmmword_29D2F1360), xmmword_29D2F1370);
    v122 = vshlq_s16(vshlq_s16(vsubq_s16(v43, vaddq_s16(v104, vshlq_s16(vqtbl1q_s8(v43, xmmword_29D2F1140), v103))), xmmword_29D2F1360), xmmword_29D2F1370);
    v123 = vshlq_s16(vshlq_s16(vsubq_s16(v44, vaddq_s16(v104, vshlq_s16(vqtbl1q_s8(v44, xmmword_29D2F1140), v103))), xmmword_29D2F1360), xmmword_29D2F1370);
    v124 = vshlq_s16(vshlq_s16(vsubq_s16(v530, vaddq_s16(v104, vshlq_s16(vqtbl1q_s8(v530, xmmword_29D2F1140), v103))), xmmword_29D2F1360), xmmword_29D2F1370);
    v125 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v109, v110), v111), v112);
    v503 = v112;
    v500 = v109;
    v126 = vminq_s16(v109, v110);
    v127 = v114;
    v504 = v111;
    v128 = vqtbl1q_s8(v125, xmmword_29D2F1150);
    v129 = vqtbl1q_s8(vminq_s16(vminq_s16(v126, v111), v112), xmmword_29D2F1150);
    v130 = vpmaxq_s16(v128, v128);
    v131 = vpminq_s16(v129, v129);
    v132.i64[0] = 0x8000800080008000;
    v132.i64[1] = 0x8000800080008000;
    v133 = vmaxq_s16(v130, v132);
    v111.i64[0] = 0x8000800080008000;
    v111.i64[1] = 0x8000800080008000;
    v134 = vminq_s16(v131, v111);
    v135 = vzip1q_s16(v130, v131);
    v136.i64[0] = 0x10001000100010;
    v136.i64[1] = 0x10001000100010;
    v137 = vbicq_s8(vsubq_s16(v136, vclsq_s16(v135)), vceqzq_s16(v135));
    v138 = vpmaxq_s16(v137, v137);
    v139 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v113, v114), v115), v116);
    v505 = v115;
    v506 = v118;
    v140 = vminq_s16(vminq_s16(v113, v114), v115);
    v141 = v116;
    v142 = vqtbl1q_s8(v139, xmmword_29D2F1150);
    v143 = vqtbl1q_s8(vminq_s16(v140, v116), xmmword_29D2F1150);
    v144 = vpmaxq_s16(v142, v142);
    v145 = vpminq_s16(v143, v143);
    v146 = vmaxq_s16(v133, v144);
    v147 = vminq_s16(v134, v145);
    v148 = vzip1q_s16(v144, v145);
    v149 = vbicq_s8(vsubq_s16(v136, vclsq_s16(v148)), vceqzq_s16(v148));
    v150 = vpmaxq_s16(v149, v149);
    v507 = v117;
    v508 = v120;
    v509 = v119;
    v510 = v122;
    v151 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v117, v118), v119), v120), xmmword_29D2F1150);
    v152 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v117, v118), v119), v120), xmmword_29D2F1150);
    v153 = vpmaxq_s16(v151, v151);
    v154 = vpminq_s16(v152, v152);
    v155 = vmaxq_s16(v146, v153);
    v156 = vminq_s16(v147, v154);
    v157 = vzip1q_s16(v153, v154);
    v158 = vbicq_s8(vsubq_s16(v136, vclsq_s16(v157)), vceqzq_s16(v157));
    v159 = vpmaxq_s16(v158, v158);
    v511 = v121;
    v512 = v124;
    v513 = v123;
    v160 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v121, v122), v123), v124), xmmword_29D2F1150);
    v161 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v121, v122), v123), v124), xmmword_29D2F1150);
    v162 = vpmaxq_s16(v160, v160);
    v163 = vpminq_s16(v161, v161);
    v164 = vmaxq_s16(v155, v162);
    v165 = vminq_s16(v156, v163);
    v166 = vzip1q_s16(v162, v163);
    v167 = vbicq_s8(vsubq_s16(v136, vclsq_s16(v166)), vceqzq_s16(v166));
    v168 = vpmaxq_s16(v167, v167);
    v169 = vmaxq_s16(vmaxq_s16(v138, v150), vmaxq_s16(v159, v168));
    v170 = vclzq_s16(vsubq_s16(v164, v165));
    v171 = vsubq_s16(v136, v170);
    v172 = vcgtq_s16(v169, v171);
    v173 = vminq_s16(v171, v169);
    v123.i64[0] = 0x3000300030003;
    v123.i64[1] = 0x3000300030003;
    v174 = vmaxq_s16(vminq_s16(vsubq_s16(v173, v138), v123), 0);
    v175 = vmaxq_s16(vminq_s16(vsubq_s16(v173, v150), v123), 0);
    v176 = vmaxq_s16(vminq_s16(vsubq_s16(v173, v159), v123), 0);
    v122.i64[0] = 0x3000300030003;
    v122.i64[1] = 0x3000300030003;
    v177 = vmaxq_s16(vminq_s16(vsubq_s16(v173, v168), v123), 0);
    v159.i64[0] = 0x4000400040004;
    v159.i64[1] = 0x4000400040004;
    v178 = vbicq_s8(v159, vceqq_s16(vaddq_s16(v177, v176), vnegq_s16(vaddq_s16(v174, v175))));
    v159.i64[0] = 0x18001800180018;
    v159.i64[1] = 0x18001800180018;
    v179 = vbslq_s8(v172, v159, v136);
    v180 = vsubq_s16(v173, v175);
    v501 = vsubq_s16(v173, v176);
    v502 = vsubq_s16(v173, v177);
    v175.i64[0] = 0x7000700070007;
    v175.i64[1] = 0x7000700070007;
    v499 = vsubq_s16(v173, v174);
    v181 = vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v173, vceqzq_s16((*&v179 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v178, v178)), v499, v175), vshlq_n_s16(vaddq_s16(vaddq_s16(v501, v180), v502), 3uLL));
    v124.i64[0] = 0x8000800080008;
    v124.i64[1] = 0x8000800080008;
    v182 = vandq_s8(vaddq_s16(v557, v557), v124);
    v183 = vandq_s8(v514, v124);
    v124.i64[0] = 0x2000200020002;
    v124.i64[1] = 0x2000200020002;
    v184 = vandq_s8(vceqq_s16(vandq_s8(v514, v122), v124), v136);
    v185 = vceqzq_s16(v183);
    v186 = v561;
    v187 = v562;
    v188 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v562, v185), v184), v182), v558, v175);
    v189 = v559;
    v190 = v560;
    v191 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v188, vshlq_n_s16(vaddq_s16(vaddq_s16(v560, v559), v561), 3uLL)), v181).i64[0], 0);
    v192 = vaddvq_s16(v191);
    if (a5)
    {
      v193 = a6 == 0;
    }

    else
    {
      v193 = 1;
    }

    v194 = v193;
    if (v192)
    {
      v195.i64[0] = 0x3000300030003;
      v195.i64[1] = 0x3000300030003;
      v528 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v173), v195), v179), v178);
      v196.i64[0] = 0xF000F000F000FLL;
      v196.i64[1] = 0xF000F000F000FLL;
      v536 = vbslq_s8(v191, v500, v536);
      v538 = vbslq_s8(v191, v110, v538);
      v195.i64[0] = -1;
      v195.i64[1] = -1;
      v540 = vbslq_s8(v191, v504, v540);
      v542 = vbslq_s8(v191, v503, v542);
      v197 = vandq_s8(vsubq_s16(vshlq_s16(v195, vsubq_s16(v196, v170)), v165), v172);
      v544 = vbslq_s8(v191, v113, v544);
      v545 = vbslq_s8(v191, v127, v545);
      v546 = vbslq_s8(v191, v505, v546);
      v547 = vbslq_s8(v191, v141, v547);
      v548 = vbslq_s8(v191, v507, v548);
      v549 = vbslq_s8(v191, v506, v549);
      v550 = vbslq_s8(v191, v509, v550);
      v551 = vbslq_s8(v191, v508, v551);
      v552 = vbslq_s8(v191, v511, v552);
      v553 = vbslq_s8(v191, v510, v553);
      v554 = vbslq_s8(v191, v513, v554);
      v555 = vbslq_s8(v191, v512, v555);
      v189 = vbslq_s8(v191, v180, v559);
      v558 = vbslq_s8(v191, v499, v558);
      v559 = v189;
      v190 = vbslq_s8(v191, v501, v560);
      v186 = vbslq_s8(v191, v502, v561);
      v560 = v190;
      v561 = v186;
      v563 = vbslq_s8(v191, v165, v563);
      v564 = vbslq_s8(v191, v164, v564);
      v565 = vbslq_s8(v191, v197, v565);
      v187 = vbslq_s8(v191, v173, v562);
      v562 = v187;
      v198 = vbslq_s8(v191, v528, v557);
      v556 = vbslq_s8(v191, v104, v556);
      v557 = v198;
      v199 = v558;
    }

    else
    {
      v199 = v558;
      v198 = v557;
    }

    v202 = v519;
    v203 = v520;
    v204 = v521;
    v205 = v515;
    v206 = v517;
    v207 = v518;
    if ((v194 & 1) == 0)
    {
      v208 = vqtbl4q_s8(*v18.i8, xmmword_29D2F1160);
      v209 = vsubq_s16(v18, vqtbl4q_s8(*v18.i8, xmmword_29D2F10B0));
      v210 = vsubq_s16(v20, v208);
      v211 = vsubq_s16(v21, v208);
      v212.i64[0] = v534.i64[0];
      v212.i64[1] = v21.i64[1];
      v213 = vqtbl4q_s8(*v202.i8, xmmword_29D2F10B0);
      v566.val[0] = v519;
      v566.val[1] = v520;
      v566.val[2] = v521;
      v566.val[3] = v212;
      v214 = vsubq_s16(v520, vqtbl4q_s8(v566, xmmword_29D2F10F0));
      v215 = vsubq_s16(v521, vqtbl4q_s8(v566, xmmword_29D2F1160));
      v216 = vsubq_s16(v534, vqtbl4q_s8(v566, xmmword_29D2F1100));
      v217 = v532.i64[0];
      v218 = v21.i64[1];
      v566.val[1] = vqtbl4q_s8(*v205.i8, xmmword_29D2F10C0);
      v219 = vsubq_s16(v515, vqtbl4q_s8(*v205.i8, xmmword_29D2F1170));
      v220 = vsubq_s16(v517, vqtbl4q_s8(*v205.i8, xmmword_29D2F1180));
      v221 = vsubq_s16(v518, vqtbl4q_s8(*v205.i8, xmmword_29D2F10B0));
      v222 = v530.i64[0];
      v223 = v21.i64[1];
      v224 = vsubq_s16(v42, vqtbl4q_s8(*v42.i8, xmmword_29D2F1170));
      v225 = vsubq_s16(v43, vqtbl4q_s8(*v42.i8, xmmword_29D2F1120));
      v226 = vsubq_s16(v44, vqtbl4q_s8(*v42.i8, xmmword_29D2F10B0));
      v227.i64[0] = v211.i64[0];
      v227.i64[1] = v209.i64[0];
      v228 = vsubq_s16(v530, vqtbl4q_s8(*v42.i8, xmmword_29D2F10C0));
      v209.i64[0] = v211.i64[1];
      v229 = vshlq_s16(v227, xmmword_29D2F1360);
      v566.val[2] = vshlq_s16(v220, xmmword_29D2F1360);
      v230 = vshlq_s16(v221, xmmword_29D2F1360);
      v231 = vshlq_s16(vsubq_s16(v532, v566.val[1]), xmmword_29D2F1360);
      v232 = vshlq_s16(v224, xmmword_29D2F1360);
      v233 = vshlq_s16(v225, xmmword_29D2F1360);
      v234 = vshlq_s16(v226, xmmword_29D2F1360);
      v235 = vshlq_s16(vshlq_s16(v209, xmmword_29D2F1360), xmmword_29D2F1370);
      v236 = vshlq_s16(vshlq_s16(vsubq_s16(v19, vqtbl4q_s8(*v18.i8, xmmword_29D2F10C0)), xmmword_29D2F1360), xmmword_29D2F1370);
      v237 = vshlq_s16(vshlq_s16(v210, xmmword_29D2F1360), xmmword_29D2F1370);
      v238 = vshlq_s16(v229, xmmword_29D2F1370);
      v239 = vshlq_s16(vshlq_s16(vsubq_s16(v519, v213), xmmword_29D2F1360), xmmword_29D2F1370);
      v240 = vshlq_s16(vshlq_s16(v214, xmmword_29D2F1360), xmmword_29D2F1370);
      v241 = vshlq_s16(vshlq_s16(v215, xmmword_29D2F1360), xmmword_29D2F1370);
      v242 = vshlq_s16(vshlq_s16(v216, xmmword_29D2F1360), xmmword_29D2F1370);
      v243 = vshlq_s16(vshlq_s16(v219, xmmword_29D2F1360), xmmword_29D2F1370);
      v244 = vshlq_s16(v566.val[2], xmmword_29D2F1370);
      v245 = vshlq_s16(v230, xmmword_29D2F1370);
      v246 = vshlq_s16(v231, xmmword_29D2F1370);
      v247 = vshlq_s16(v232, xmmword_29D2F1370);
      v248 = vshlq_s16(v233, xmmword_29D2F1370);
      v249 = vshlq_s16(vshlq_s16(v228, xmmword_29D2F1360), xmmword_29D2F1370);
      v566.val[3] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v235, v236), v237), v238), xmmword_29D2F1150);
      v250 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v235, v236), v237), v238), xmmword_29D2F1150);
      v566.val[3] = vpmaxq_s16(v566.val[3], v566.val[3]);
      v251 = vpminq_s16(v250, v250);
      v228.i64[0] = 0x8000800080008000;
      v228.i64[1] = 0x8000800080008000;
      v252 = vmaxq_s16(v566.val[3], v228);
      v215.i64[0] = 0x8000800080008000;
      v215.i64[1] = 0x8000800080008000;
      v253 = vminq_s16(v251, v215);
      v254 = vzip1q_s16(v566.val[3], v251);
      v566.val[3].i64[0] = 0x10001000100010;
      v566.val[3].i64[1] = 0x10001000100010;
      v255 = vbicq_s8(vsubq_s16(v566.val[3], vclsq_s16(v254)), vceqzq_s16(v254));
      v256 = vpmaxq_s16(v255, v255);
      v257 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v239, v240), v241), v242), xmmword_29D2F1150);
      v566.val[2] = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v239, v240), v241), v242), xmmword_29D2F1150);
      v258 = vpmaxq_s16(v257, v257);
      v566.val[2] = vpminq_s16(v566.val[2], v566.val[2]);
      v259 = vmaxq_s16(v252, v258);
      v260 = vminq_s16(v253, v566.val[2]);
      v261 = vzip1q_s16(v258, v566.val[2]);
      v262 = vbicq_s8(vsubq_s16(v566.val[3], vclsq_s16(v261)), vceqzq_s16(v261));
      v566.val[2] = vpmaxq_s16(v262, v262);
      v263 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v243, v244), v245), v246), xmmword_29D2F1150);
      v264 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v243, v244), v245), v246), xmmword_29D2F1150);
      v265 = vpmaxq_s16(v263, v263);
      v266 = vpminq_s16(v264, v264);
      v267 = vmaxq_s16(v259, v265);
      v268 = vminq_s16(v260, v266);
      v269 = vzip1q_s16(v265, v266);
      v270 = vbicq_s8(vsubq_s16(v566.val[3], vclsq_s16(v269)), vceqzq_s16(v269));
      v271 = vpmaxq_s16(v270, v270);
      v531 = v247;
      v533 = v249;
      v535 = vshlq_s16(v234, xmmword_29D2F1370);
      v272 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v247, v248), v535), v249), xmmword_29D2F1150);
      v273 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v247, v248), v535), v249), xmmword_29D2F1150);
      v274 = vpmaxq_s16(v272, v272);
      v275 = vpminq_s16(v273, v273);
      v276 = vmaxq_s16(v267, v274);
      v277 = vminq_s16(v268, v275);
      v278 = vzip1q_s16(v274, v275);
      v279 = vbicq_s8(vsubq_s16(v566.val[3], vclsq_s16(v278)), vceqzq_s16(v278));
      v280 = vpmaxq_s16(v279, v279);
      v281 = vmaxq_s16(vmaxq_s16(v256, v566.val[2]), vmaxq_s16(v271, v280));
      v529 = v276;
      v282 = vclzq_s16(vsubq_s16(v276, v277));
      v283 = vsubq_s16(v566.val[3], v282);
      v284 = vcgtq_s16(v281, v283);
      v285 = vminq_s16(v283, v281);
      v286.i64[0] = 0x3000300030003;
      v286.i64[1] = 0x3000300030003;
      v287 = vmaxq_s16(vminq_s16(vsubq_s16(v285, v256), v286), 0);
      v566.val[2] = vmaxq_s16(vminq_s16(vsubq_s16(v285, v566.val[2]), v286), 0);
      v288 = vmaxq_s16(vminq_s16(vsubq_s16(v285, v271), v286), 0);
      v289 = vmaxq_s16(vminq_s16(vsubq_s16(v285, v280), v286), 0);
      v290 = vsubq_s16(v285, v287);
      v291 = vsubq_s16(v285, v566.val[2]);
      v292 = vsubq_s16(v285, v289);
      v293 = vceqq_s16(vaddq_s16(v289, v288), vnegq_s16(vaddq_s16(v287, v566.val[2])));
      v287.i64[0] = 0x4000400040004;
      v287.i64[1] = 0x4000400040004;
      v294 = vbicq_s8(v287, v293);
      v566.val[2].i64[0] = 0x7000700070007;
      v566.val[2].i64[1] = 0x7000700070007;
      v516 = vsubq_s16(v285, v288);
      v295.i64[0] = 0x2000200020002;
      v295.i64[1] = 0x2000200020002;
      v296 = vandq_s8(vceqq_s16(vandq_s8(v557, v286), v295), v566.val[3]);
      v566.val[3].i64[0] = 0x8000800080008;
      v566.val[3].i64[1] = 0x8000800080008;
      v297 = vandq_s8(vaddq_s16(v557, v557), v566.val[3]);
      v298 = vceqzq_s16(vandq_s8(v557, v566.val[3]));
      v186 = v561;
      v187 = v562;
      v299 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v562, v298), v297), v296), v558, v566.val[2]);
      v189 = v559;
      v190 = v560;
      v300 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v299, vshlq_n_s16(vaddq_s16(vaddq_s16(v560, v559), v561), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v285, v284), vaddq_s16(v294, v294)), v290, v566.val[2]), vshlq_n_s16(vaddq_s16(vaddq_s16(v516, v291), v292), 3uLL))).i64[0], 0);
      if (vaddvq_s16(v300))
      {
        v301.i64[0] = 0x9000900090009;
        v301.i64[1] = 0x9000900090009;
        v302 = vorrq_s8(vandq_s8(vceqzq_s16(v285), v295), vsubq_s16(vandq_s8(v284, v301), vmvnq_s8(v284)));
        v301.i64[0] = -1;
        v301.i64[1] = -1;
        v303 = vorrq_s8(v302, v294);
        v302.i64[0] = 0xF000F000F000FLL;
        v302.i64[1] = 0xF000F000F000FLL;
        v304 = vandq_s8(vsubq_s16(vshlq_s16(v301, vsubq_s16(v302, v282)), v277), v284);
        v189 = vbslq_s8(v300, v291, v559);
        v190 = vbslq_s8(v300, v516, v560);
        v186 = vbslq_s8(v300, v292, v561);
        v187 = vbslq_s8(v300, v285, v562);
        v555 = vbslq_s8(v300, v533, v555);
        v556 = vbslq_s8(v300, vextq_s8(v21, v21, 8uLL), v556);
        v536 = vbslq_s8(v300, v235, v536);
        v538 = vbslq_s8(v300, v236, v538);
        v198 = vbslq_s8(v300, v303, v557);
        v540 = vbslq_s8(v300, v237, v540);
        v542 = vbslq_s8(v300, v238, v542);
        v544 = vbslq_s8(v300, v239, v544);
        v545 = vbslq_s8(v300, v240, v545);
        v546 = vbslq_s8(v300, v241, v546);
        v547 = vbslq_s8(v300, v242, v547);
        v548 = vbslq_s8(v300, v243, v548);
        v549 = vbslq_s8(v300, v244, v549);
        v550 = vbslq_s8(v300, v245, v550);
        v551 = vbslq_s8(v300, v246, v551);
        v552 = vbslq_s8(v300, v531, v552);
        v553 = vbslq_s8(v300, v248, v553);
        v554 = vbslq_s8(v300, v535, v554);
        v563 = vbslq_s8(v300, v277, v563);
        v564 = vbslq_s8(v300, v529, v564);
        v565 = vbslq_s8(v300, v304, v565);
        v558 = vbslq_s8(v300, v290, v558);
        v559 = v189;
        v560 = v190;
        v561 = v186;
        v562 = v187;
        v557 = v198;
        v199 = v558;
      }

      else
      {
        v199 = v558;
        v198 = v557;
      }
    }

    v305 = vandq_s8(v565, vceqq_s16(v187, v199));
    v537 = vaddq_s16(v305, v536);
    v539 = vaddq_s16(v538, v305);
    v541 = vaddq_s16(v540, v305);
    v543 = vaddq_s16(v542, v305);
    v306 = vandq_s8(v565, vceqq_s16(v187, v189));
    v544 = vaddq_s16(v544, v306);
    v545 = vaddq_s16(v545, v306);
    v546 = vaddq_s16(v546, v306);
    v547 = vaddq_s16(v547, v306);
    v307 = vandq_s8(v565, vceqq_s16(v187, v190));
    v548 = vaddq_s16(v548, v307);
    v549 = vaddq_s16(v549, v307);
    v550 = vaddq_s16(v550, v307);
    v551 = vaddq_s16(v551, v307);
    v308 = vandq_s8(v565, vceqq_s16(v187, v186));
    v552 = vaddq_s16(v552, v308);
    v553 = vaddq_s16(v553, v308);
    v554 = vaddq_s16(v554, v308);
    v555 = vaddq_s16(v555, v308);
    v308.i64[0] = 0x8000800080008;
    v308.i64[1] = 0x8000800080008;
    v309.i64[0] = 0x3000300030003;
    v309.i64[1] = 0x3000300030003;
    v310.i64[0] = 0x2000200020002;
    v310.i64[1] = 0x2000200020002;
    v311 = vceqq_s16(vandq_s8(v198, v309), v310);
    v310.i64[0] = 0x10001000100010;
    v310.i64[1] = 0x10001000100010;
    v312 = vandq_s8(v311, v310);
    v310.i64[0] = 0x7000700070007;
    v310.i64[1] = 0x7000700070007;
    v313 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v187, vceqzq_s16(vandq_s8(v198, v308))), vandq_s8(vaddq_s16(v198, v198), v308)), v312), v199, v310), vshlq_n_s16(vaddq_s16(vaddq_s16(v190, v189), v186), 3uLL));
    v314 = vpaddq_s16(v313, v313);
    if ((vpaddq_s16(v314, v314).i16[0] + 71) > 0x3FF)
    {
      *a1 = v526;
      *(a1 + 16) = v527;
      *(a1 + 32) = v524;
      *(a1 + 48) = v525;
      *(a1 + 64) = v522;
      *(a1 + 80) = v523;
      v318 = (a1 + 96);
      v200 = 127;
      result = 128;
      *v318 = v497;
      v318[1] = v498;
    }

    else
    {
      v315 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v316 = 8 * (a1 & 7);
      if (v316)
      {
        v317 = *v315 & ~(-1 << v316);
      }

      else
      {
        v317 = 0;
      }

      *a2 = 0;
      v319 = ((v187.i8[0] - 1) & 0xF) << 15;
      if (!v187.i16[0])
      {
        v319 = 0;
      }

      if (v187.i16[1])
      {
        v320 = ((v187.i8[2] - 1) & 0xF) << 19;
      }

      else
      {
        v320 = 0;
      }

      if (v187.i16[2])
      {
        v321 = ((v187.i8[4] - 1) & 0xF) << 23;
      }

      else
      {
        v321 = 0;
      }

      v322 = v319 | v320;
      v323 = v556.i16[0] & 0x7FF | ((v556.i16[1] & 0x7FF) << 11) | ((v556.i16[2] & 0x3FF) << 22);
      v324 = v322 | v321 | v198.i8[0] & 0x1F | (32 * (v198.i8[2] & 0x1F)) & 0x83FF | ((v198.i8[4] & 0x1F) << 10);
      v325 = (v324 << v316) | v317;
      if (v316 >= 0x20)
      {
        *v315 = v325;
        v325 = v324 >> (-8 * (a1 & 7u));
      }

      v326 = (v316 + 32) & 0x38;
      v327 = v325 | (v323 << v326);
      if (v326 >= 0x20)
      {
        *(v315 + (((v316 + 32) >> 3) & 8)) = v327;
        v327 = v323 >> -v326;
      }

      v328 = vsubq_s16(v562, v558);
      v329 = vsubq_s16(v562, v559);
      v330 = vsubq_s16(v562, v560);
      v331 = vsubq_s16(v562, v561);
      *v328.i8 = vqmovn_u16(v328);
      *v329.i8 = vqmovn_u16(v329);
      *v330.i8 = vqmovn_u16(v330);
      *v331.i8 = vqmovn_u16(v331);
      v332 = vtrn1q_s8(v328, v329);
      v333 = vtrn2q_s8(v328, v329);
      v334 = vtrn1q_s8(v330, v331);
      v335 = vtrn2q_s8(v330, v331);
      v336 = vzip1q_s16(v333, v335);
      v337 = vtrn2q_s16(v333, v335);
      v333.i64[0] = vzip1q_s32(vzip1q_s16(v332, v334), v336).u64[0];
      v337.i64[0] = vzip1q_s32(vtrn2q_s16(v332, v334), v337).u64[0];
      v330.i64[0] = 0x202020202020202;
      v330.i64[1] = 0x202020202020202;
      v338 = vandq_s8(vmovl_s16(vtst_s16(*v557.i8, 0x4000400040004)), v330);
      v330.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v330.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v332.i64[0] = -1;
      v332.i64[1] = -1;
      v339 = vshlq_u8(v332, vorrq_s8(v338, v330));
      v340 = vmovl_u8(vand_s8(*v339.i8, *v333.i8));
      v341 = vmovl_u8(vand_s8(*&vextq_s8(v339, v339, 8uLL), *v337.i8));
      v342 = vmovl_u8(*v338.i8);
      v343 = vmovl_high_u8(v338);
      v344 = vpaddq_s16(vshlq_u16(v340, vtrn1q_s16(0, v342)), vshlq_u16(v341, vtrn1q_s16(0, v343)));
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
      v356 = (v354.i64[0] << v316) | v327;
      if (v355.i64[0] + v316 >= 0x40)
      {
        v315[1] = v356;
        v356 = v354.i64[0] >> (-8 * (a1 & 7u));
        if (!v316)
        {
          v356 = 0;
        }
      }

      v357 = v355.i64[0] + (v316 | 0x40);
      v358 = v356 | (v354.i64[1] << v357);
      if ((v357 & 0x3F) + v355.i64[1] >= 0x40)
      {
        *(v315 + ((v357 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v358;
        v358 = v354.i64[1] >> -(v357 & 0x3F);
        if ((v357 & 0x3F) == 0)
        {
          v358 = 0;
        }
      }

      v359 = v357 + v355.i64[1];
      v360.i64[0] = 0x8000800080008;
      v360.i64[1] = 0x8000800080008;
      v361.i64[0] = -1;
      v361.i64[1] = -1;
      v362 = vandq_s8(vextq_s8(vtstq_s16(v557, v360), 0, 8uLL), v562);
      v363.i64[0] = 0xF000F000F000FLL;
      v363.i64[1] = 0xF000F000F000FLL;
      v364 = vandq_s8(vshlq_u16(v361, vaddq_s16(v362, v363)), v565);
      v365 = vmovl_u16(*v362.i8);
      v366 = vpaddq_s32(vshlq_u32(vmovl_u16(*v364.i8), vtrn1q_s32(0, v365)), vmovl_high_u16(v364));
      v367 = vpaddq_s32(v365, vmovl_high_u16(v362));
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
      v374 = (v372.i64[0] << v359) | v358;
      if (v373.i64[0] + (v359 & 0x3F) >= 0x40)
      {
        *(v315 + ((v359 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v374;
        v374 = v372.i64[0] >> -(v359 & 0x3F);
        if ((v359 & 0x3F) == 0)
        {
          v374 = 0;
        }
      }

      v375 = v373.i64[0] + v359;
      v376 = v374 | (v372.i64[1] << v375);
      if ((v375 & 0x3F) + v373.i64[1] >= 0x40)
      {
        *(v315 + ((v375 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v376;
        v376 = v372.i64[1] >> -(v375 & 0x3F);
        if ((v375 & 0x3F) == 0)
        {
          v376 = 0;
        }
      }

      v377 = v375 + v373.i64[1];
      v378 = vextq_s8(0, v558, 8uLL);
      v379.i64[0] = 0xF000F000F000FLL;
      v379.i64[1] = 0xF000F000F000FLL;
      v380.i64[0] = -1;
      v380.i64[1] = -1;
      v381 = vandq_s8(vshlq_u16(v380, vaddq_s16(v378, v379)), v537);
      v382 = vmovl_u16(*v378.i8);
      v383 = vmovl_high_u16(v378);
      v384 = vpaddq_s32(vmovl_u16(*v381.i8), vshlq_u32(vmovl_high_u16(v381), vtrn1q_s32(0, v383)));
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
      v392 = (v390.i64[0] << v377) | v376;
      if (v391.i64[0] + (v377 & 0x3F) >= 0x40)
      {
        *(v315 + ((v377 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v392;
        v392 = v390.i64[0] >> -(v377 & 0x3F);
        if ((v377 & 0x3F) == 0)
        {
          v392 = 0;
        }
      }

      v393 = v391.i64[0] + v377;
      v394 = v392 | (v390.i64[1] << v393);
      if ((v393 & 0x3F) + v391.i64[1] >= 0x40)
      {
        *(v315 + ((v393 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v394;
        v394 = v390.i64[1] >> -(v393 & 0x3F);
        if ((v393 & 0x3F) == 0)
        {
          v394 = 0;
        }
      }

      v395 = v393 + v391.i64[1];
      v396.i64[0] = 0xF000F000F000FLL;
      v396.i64[1] = 0xF000F000F000FLL;
      v397.i64[0] = -1;
      v397.i64[1] = -1;
      v398 = vandq_s8(vshlq_u16(v397, vaddq_s16(v558, v396)), v539);
      v399 = vmovl_u16(*v558.i8);
      v400 = vmovl_high_u16(v558);
      v401 = vpaddq_s32(vshlq_u32(vmovl_u16(*v398.i8), vtrn1q_s32(0, v399)), vshlq_u32(vmovl_high_u16(v398), vtrn1q_s32(0, v400)));
      v402 = vpaddq_s32(v399, v400);
      v403.i64[0] = v401.u32[0];
      v403.i64[1] = v401.u32[1];
      v404 = v403;
      v403.i64[0] = v401.u32[2];
      v403.i64[1] = v401.u32[3];
      v405 = v403;
      v403.i64[0] = v402.u32[0];
      v403.i64[1] = v402.u32[1];
      v406 = v403;
      v403.i64[0] = v402.u32[2];
      v403.i64[1] = v402.u32[3];
      v407 = vpaddq_s64(vshlq_u64(v404, vzip1q_s64(0, v406)), vshlq_u64(v405, vzip1q_s64(0, v403)));
      v408 = vpaddq_s64(v406, v403);
      v409 = (v407.i64[0] << v395) | v394;
      if (v408.i64[0] + (v395 & 0x3F) >= 0x40)
      {
        *(v315 + ((v395 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v409;
        v409 = v407.i64[0] >> -(v395 & 0x3F);
        if ((v395 & 0x3F) == 0)
        {
          v409 = 0;
        }
      }

      v410 = v408.i64[0] + v395;
      v411 = v409 | (v407.i64[1] << v410);
      if ((v410 & 0x3F) + v408.i64[1] >= 0x40)
      {
        *(v315 + ((v410 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v411;
        v411 = v407.i64[1] >> -(v410 & 0x3F);
        if ((v410 & 0x3F) == 0)
        {
          v411 = 0;
        }
      }

      v412 = v410 + v408.i64[1];
      v413.i64[0] = 0xF000F000F000FLL;
      v413.i64[1] = 0xF000F000F000FLL;
      v414.i64[0] = -1;
      v414.i64[1] = -1;
      v415 = vandq_s8(vshlq_u16(v414, vaddq_s16(v558, v413)), v541);
      v416 = vmovl_u16(*v558.i8);
      v417 = vmovl_high_u16(v558);
      v418 = vpaddq_s32(vshlq_u32(vmovl_u16(*v415.i8), vtrn1q_s32(0, v416)), vshlq_u32(vmovl_high_u16(v415), vtrn1q_s32(0, v417)));
      v419 = vpaddq_s32(v416, v417);
      v420.i64[0] = v418.u32[0];
      v420.i64[1] = v418.u32[1];
      v421 = v420;
      v420.i64[0] = v418.u32[2];
      v420.i64[1] = v418.u32[3];
      v422 = v420;
      v420.i64[0] = v419.u32[0];
      v420.i64[1] = v419.u32[1];
      v423 = v420;
      v420.i64[0] = v419.u32[2];
      v420.i64[1] = v419.u32[3];
      v424 = vpaddq_s64(vshlq_u64(v421, vzip1q_s64(0, v423)), vshlq_u64(v422, vzip1q_s64(0, v420)));
      v425 = vpaddq_s64(v423, v420);
      v426 = (v424.i64[0] << v412) | v411;
      if (v425.i64[0] + (v412 & 0x3F) >= 0x40)
      {
        *(v315 + ((v412 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v426;
        v426 = v424.i64[0] >> -(v412 & 0x3F);
        if ((v412 & 0x3F) == 0)
        {
          v426 = 0;
        }
      }

      v427 = v425.i64[0] + v412;
      v428 = v426 | (v424.i64[1] << v427);
      if ((v427 & 0x3F) + v425.i64[1] >= 0x40)
      {
        *(v315 + ((v427 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v428;
        v428 = v424.i64[1] >> -(v427 & 0x3F);
        if ((v427 & 0x3F) == 0)
        {
          v428 = 0;
        }
      }

      v429 = v427 + v425.i64[1];
      v430.i64[0] = 0xF000F000F000FLL;
      v430.i64[1] = 0xF000F000F000FLL;
      v431.i64[0] = -1;
      v431.i64[1] = -1;
      v432 = vandq_s8(vshlq_u16(v431, vaddq_s16(v558, v430)), v543);
      v433 = vmovl_u16(*v558.i8);
      v434 = vmovl_high_u16(v558);
      v435 = vpaddq_s32(vshlq_u32(vmovl_u16(*v432.i8), vtrn1q_s32(0, v433)), vshlq_u32(vmovl_high_u16(v432), vtrn1q_s32(0, v434)));
      v436 = vpaddq_s32(v433, v434);
      v437.i64[0] = v435.u32[0];
      v437.i64[1] = v435.u32[1];
      v438 = v437;
      v437.i64[0] = v435.u32[2];
      v437.i64[1] = v435.u32[3];
      v439 = v437;
      v437.i64[0] = v436.u32[0];
      v437.i64[1] = v436.u32[1];
      v440 = v437;
      v437.i64[0] = v436.u32[2];
      v437.i64[1] = v436.u32[3];
      v441 = vpaddq_s64(vshlq_u64(v438, vzip1q_s64(0, v440)), vshlq_u64(v439, vzip1q_s64(0, v437)));
      v442 = vpaddq_s64(v440, v437);
      v443 = (v441.i64[0] << v429) | v428;
      if (v442.i64[0] + (v429 & 0x3F) >= 0x40)
      {
        *(v315 + ((v429 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v443;
        v443 = v441.i64[0] >> -(v429 & 0x3F);
        if ((v429 & 0x3F) == 0)
        {
          v443 = 0;
        }
      }

      v444 = v442.i64[1];
      v445 = v442.i64[0] + v429;
      v446 = (v442.i64[0] + v429) & 0x3F;
      v447 = v443 | (v441.i64[1] << v445);
      if ((v446 + v442.i64[1]) >= 0x40)
      {
        *(v315 + ((v445 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v447;
        v447 = v441.i64[1] >> -v446;
        if (!v446)
        {
          v447 = 0;
        }
      }

      v448 = 0;
      v449.i64[0] = 0xF000F000F000FLL;
      v449.i64[1] = 0xF000F000F000FLL;
      v450.i64[0] = -1;
      v450.i64[1] = -1;
      v451 = v445 + v444;
      do
      {
        v452 = vandq_s8(vshlq_u16(v450, vaddq_s16(v559, v449)), *(&v544 + v448));
        v453 = vmovl_u16(*v559.i8);
        v454 = vmovl_high_u16(v559);
        v455 = vpaddq_s32(vshlq_u32(vmovl_u16(*v452.i8), vtrn1q_s32(0, v453)), vshlq_u32(vmovl_high_u16(v452), vtrn1q_s32(0, v454)));
        v456 = vpaddq_s32(v453, v454);
        v457.i64[0] = v455.u32[0];
        v457.i64[1] = v455.u32[1];
        v458 = v457;
        v457.i64[0] = v455.u32[2];
        v457.i64[1] = v455.u32[3];
        v459 = v457;
        v457.i64[0] = v456.u32[0];
        v457.i64[1] = v456.u32[1];
        v460 = v457;
        v457.i64[0] = v456.u32[2];
        v457.i64[1] = v456.u32[3];
        v461 = vpaddq_s64(vshlq_u64(v458, vzip1q_s64(0, v460)), vshlq_u64(v459, vzip1q_s64(0, v457)));
        v462 = vpaddq_s64(v460, v457);
        v463 = (v461.i64[0] << v451) | v447;
        if (v462.i64[0] + (v451 & 0x3F) >= 0x40)
        {
          *(v315 + ((v451 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v463;
          v463 = v461.i64[0] >> -(v451 & 0x3F);
          if ((v451 & 0x3F) == 0)
          {
            v463 = 0;
          }
        }

        v464 = v462.i64[0] + v451;
        v447 = v463 | (v461.i64[1] << v464);
        if ((v464 & 0x3F) + v462.i64[1] >= 0x40)
        {
          *(v315 + ((v464 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v447;
          v447 = v461.i64[1] >> -(v464 & 0x3F);
          if ((v464 & 0x3F) == 0)
          {
            v447 = 0;
          }
        }

        v451 = v464 + v462.i64[1];
        v448 += 16;
      }

      while (v448 != 64);
      v465 = 0;
      v466.i64[0] = 0xF000F000F000FLL;
      v466.i64[1] = 0xF000F000F000FLL;
      v467.i64[0] = -1;
      v467.i64[1] = -1;
      do
      {
        v468 = vandq_s8(vshlq_u16(v467, vaddq_s16(v560, v466)), *(&v548 + v465));
        v469 = vmovl_u16(*v560.i8);
        v470 = vmovl_high_u16(v560);
        v471 = vpaddq_s32(vshlq_u32(vmovl_u16(*v468.i8), vtrn1q_s32(0, v469)), vshlq_u32(vmovl_high_u16(v468), vtrn1q_s32(0, v470)));
        v472 = vpaddq_s32(v469, v470);
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
        v477 = vpaddq_s64(vshlq_u64(v474, vzip1q_s64(0, v476)), vshlq_u64(v475, vzip1q_s64(0, v473)));
        v478 = vpaddq_s64(v476, v473);
        v479 = (v477.i64[0] << v451) | v447;
        if (v478.i64[0] + (v451 & 0x3F) >= 0x40)
        {
          *(v315 + ((v451 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v479;
          v479 = v477.i64[0] >> -(v451 & 0x3F);
          if ((v451 & 0x3F) == 0)
          {
            v479 = 0;
          }
        }

        v480 = v478.i64[0] + v451;
        v447 = v479 | (v477.i64[1] << v480);
        if ((v480 & 0x3F) + v478.i64[1] >= 0x40)
        {
          *(v315 + ((v480 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v447;
          v447 = v477.i64[1] >> -(v480 & 0x3F);
          if ((v480 & 0x3F) == 0)
          {
            v447 = 0;
          }
        }

        v451 = v480 + v478.i64[1];
        v465 += 16;
      }

      while (v465 != 64);
      v481 = 0;
      v482.i64[0] = 0xF000F000F000FLL;
      v482.i64[1] = 0xF000F000F000FLL;
      v483.i64[0] = -1;
      v483.i64[1] = -1;
      do
      {
        v484 = vandq_s8(vshlq_u16(v483, vaddq_s16(v561, v482)), *(&v552 + v481));
        v485 = vmovl_u16(*v561.i8);
        v486 = vmovl_high_u16(v561);
        v487 = vpaddq_s32(vshlq_u32(vmovl_u16(*v484.i8), vtrn1q_s32(0, v485)), vshlq_u32(vmovl_high_u16(v484), vtrn1q_s32(0, v486)));
        v488 = vpaddq_s32(v485, v486);
        v489.i64[0] = v487.u32[0];
        v489.i64[1] = v487.u32[1];
        v490 = v489;
        v489.i64[0] = v487.u32[2];
        v489.i64[1] = v487.u32[3];
        v491 = v489;
        v489.i64[0] = v488.u32[0];
        v489.i64[1] = v488.u32[1];
        v492 = v489;
        v489.i64[0] = v488.u32[2];
        v489.i64[1] = v488.u32[3];
        v493 = vpaddq_s64(vshlq_u64(v490, vzip1q_s64(0, v492)), vshlq_u64(v491, vzip1q_s64(0, v489)));
        v494 = vpaddq_s64(v492, v489);
        v495 = (v493.i64[0] << v451) | v447;
        if (v494.i64[0] + (v451 & 0x3F) >= 0x40)
        {
          *(v315 + ((v451 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v495;
          v495 = v493.i64[0] >> -(v451 & 0x3F);
          if ((v451 & 0x3F) == 0)
          {
            v495 = 0;
          }
        }

        v496 = v494.i64[0] + v451;
        v447 = v495 | (v493.i64[1] << v496);
        if ((v496 & 0x3F) + v494.i64[1] >= 0x40)
        {
          *(v315 + ((v496 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v447;
          v447 = v493.i64[1] >> -(v496 & 0x3F);
          if ((v496 & 0x3F) == 0)
          {
            v447 = 0;
          }
        }

        v451 = v496 + v494.i64[1];
        v481 += 16;
      }

      while (v481 != 64);
      if ((v451 & 0x3F) != 0)
      {
        *(v315 + ((v451 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v447;
      }

      result = (v451 - v316 + 7) >> 3;
      v200 = *a2 | (result - 1);
    }
  }

  else
  {
    *a1 = a3->i32[0];
    v200 = 3;
    result = 4;
  }

  *a2 = v200;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 4, a2, v14, v13);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, (v11 + v15), a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v15 + 64), a2, v20, v19);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 8, a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 12, a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + v15 + 128), a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + v15 + 192), a2, v30, v29);
}

double AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(_OWORD *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 8 * (&v26 & 7);
  v5 = 9;
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
  if (v9 - 24 >= 0xFFFFFFFFFFFFFFDFLL)
  {
    v10 = 9;
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
    if (v9 - 24 >= 0xFFFFFFFFFFFFFFDFLL)
    {
      v13 = 0;
      v14 = 9;
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

  if (v9 - 28 >= 0xFFFFFFFFFFFFFFDFLL)
  {
    v17 = 0;
    v18 = 5;
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

uint64_t AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)14,AGX::AppleCompressionGen2::Vec<short>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unsigned int a5)
{
  v5 = a4[2];
  v6 = *a4;
  v7 = *a4 + 36;
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
    if (v9 >= 0x1D)
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
  *(a1 + 6) = (v11 >> 15) & 0x1F;
  *a2 = ((v11 >> 20) & 0xF) + 1;
  *(a2 + 2) = (BYTE3(v11) & 0xF) + 1;
  *(a2 + 4) = (v11 >> 28) + 1;
  *(a2 + 6) = (BYTE4(v11) & 7) + 1;
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

  *a3 = v15 & 0x1FF;
  *(a3 + 2) = (v15 >> 9) & 0x1FF;
  *(a3 + 4) = (v15 >> 18) & 0x1FF;
  *(a3 + 6) = v15 >> 27;
  v18 = vld1q_dup_f64(a1);
  *a1 = v18;
  v19 = vld1q_dup_f64(a2);
  *a2 = v19;
  v20 = vld1q_dup_f64(a3);
  *a3 = v20;
  return a5 + 1;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(int64x2_t *a1, uint64_t a2, int64x2_t *a3, unsigned int a4)
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
    v444 = v13;
    v445 = v12;
    v446 = v11;
    v447 = v10;
    v448 = v9;
    v449 = v8;
    v450 = v7;
    v451 = v6;
    v452 = v4;
    v453 = v5;
    v420 = 0;
    v419 = (8 * (a3 & 7)) | 0x400;
    v417 = 8 * (a3 & 7);
    v418 = a3 & 0xFFFFFFFFFFFFFFF8;
    result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)14,AGX::AppleCompressionGen2::Vec<short>>(&v438, v443, &v437, &v417, a4);
    v37.i64[0] = 0x3000300030003;
    v37.i64[1] = 0x3000300030003;
    v38 = v438;
    v39 = vandq_s8(v438, v37);
    v40 = vbicq_s8(v443[0], vceqq_s16(v39, v37));
    v443[0] = v40;
    v439 = v40;
    v440 = v40;
    v441 = v40;
    v442 = v40;
    v41.i64[0] = 0x202020202020202;
    v41.i64[1] = 0x202020202020202;
    v42 = vandq_s8(vmovl_s16(vtst_s16(*v438.i8, 0x4000400040004)), v41);
    v43 = v417;
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
      v51 = v417 + v49;
      if (v419)
      {
        v52 = v419 >= v51;
      }

      else
      {
        v52 = 1;
      }

      v53 = v52;
      v54 = a1;
      v55 = a2;
      if (v49 <= 0x80 && (v53 & 1) != 0)
      {
        v36.i64[0] = 63;
        v56 = (v418 + 8 * (v417 >> 6));
        v57 = vaddq_s64(vdupq_lane_s64(vandq_s8(v417, v36).i64[0], 0), vzip1q_s64(0, v48));
        v58 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v56, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v57)), vshlq_u64(vdupq_lane_s64(v56->i64[0], 0), vnegq_s64(v57)));
        if ((v417 & 0x3F) + v50 >= 0x81)
        {
          v58 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v56[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v57)), vshlq_u64(vdupq_laneq_s64(v56[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v57))), v58);
        }

        v43 = v51;
      }

      else
      {
        v420 = 1;
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
      v439 = vsubw_s8(v439, *v70.i8);
      v440 = vsubw_s8(v440, *v69.i8);
      v441 = vsubw_s8(v441, v73);
      v442 = vsubw_s8(v442, *v72.i8);
      v62 = vmovl_s8(vceqz_s8(*v70.i8));
      v61 = vmovl_s8(vceqz_s8(*v69.i8));
      v60 = vmovl_s8(vceqz_s8(v73));
      v59 = vmovl_s8(vceqz_s8(*v72.i8));
    }

    v74.i64[0] = 0x8000800080008;
    v74.i64[1] = 0x8000800080008;
    v75 = 0uLL;
    v76 = vandq_s8(vextq_s8(vtstq_s16(v438, v74), 0, 8uLL), v40);
    v77 = vmovl_u16(*&vpaddq_s16(v76, v76));
    v78 = vpaddq_s32(v77, v77).u64[0];
    v79.i64[0] = v78;
    v79.i64[1] = HIDWORD(v78);
    v80 = v79;
    v81 = vaddvq_s64(v79);
    if (v419)
    {
      v82 = v419 >= v43 + v81;
    }

    else
    {
      v82 = 1;
    }

    v83 = v82;
    if (v81 <= 0x80 && (v83 & 1) != 0)
    {
      v84 = vaddq_s64(vdupq_n_s64(v43 & 0x3F), vzip1q_s64(0, v80));
      v85 = (v418 + 8 * (v43 >> 6));
      v75 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v85, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v84)), vshlq_u64(vdupq_lane_s64(v85->i64[0], 0), vnegq_s64(v84)));
      if ((v43 & 0x3F) + v81 >= 0x81)
      {
        v75 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v85[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v84)), vshlq_u64(vdupq_laneq_s64(v85[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v84))), v75);
      }

      v43 += v81;
    }

    else
    {
      v420 = 1;
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
    v443[3] = v94;
    v95 = v438.i8[0] & 3;
    if (v95 == 2)
    {
      if (v419)
      {
        v96 = v43 + 8;
        v97 = v43 + 16;
        if (v419 >= v43 + 8)
        {
          v43 += 8;
        }

        else
        {
          v97 = v43 + 8;
        }

        if (v419 >= v97)
        {
          v43 = v97;
        }

        if (v419 < v96 || v419 < v97)
        {
          v420 = 1;
        }
      }

      else
      {
        v43 += 16;
      }
    }

    v98 = 0uLL;
    v99 = vextq_s8(0, v439, 8uLL);
    v100 = vmovl_u16(*&vpaddq_s16(v99, v99));
    v101 = vpaddq_s32(v100, v100).u64[0];
    v102.i64[0] = v101;
    v102.i64[1] = HIDWORD(v101);
    v103 = v102;
    v104 = vaddvq_s64(v102);
    v105 = v43 + v104;
    if (v419)
    {
      v106 = v419 >= v105;
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
      v110 = v418;
      v111 = (v418 + 8 * (v43 >> 6));
      v98 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v111, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v109)), vshlq_u64(vdupq_lane_s64(v111->i64[0], 0), vnegq_s64(v109)));
      if (v108 + v104 >= 0x81)
      {
        v98 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v111[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v109)), vshlq_u64(vdupq_laneq_s64(v111[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v109))), v98);
      }

      v112 = v420;
      v43 = v105;
    }

    else
    {
      v112 = 1;
      v110 = v418;
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
    v421 = v121;
    v122 = vmovl_u16(*&vpaddq_s16(v439, v439));
    v116.i64[0] = vpaddq_s32(v122, v122).u64[0];
    v114.i64[0] = v116.u32[0];
    v114.i64[1] = v116.u32[1];
    v123 = v114;
    v124 = vaddvq_s64(v114);
    v125 = v43 + v124;
    if (v419)
    {
      v126 = v419 >= v125;
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
    v138 = vnegq_s32(vandq_s8(v439, v117));
    v139 = vshlq_u32(v137, v138);
    v140 = vuzp1q_s16(vzip1q_s32(v137, v139), vzip2q_s32(v137, v139));
    v141 = vaddq_s16(v439, v119);
    v142 = vsubq_s16(v120, v439);
    v143 = vshlq_s16(vshlq_s16(v140, v142), v141);
    v422 = v143;
    v144 = v125 + v124;
    if (v419)
    {
      v145 = v419 >= v144;
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
    v423 = v153;
    v154 = v144 + v124;
    if (v419)
    {
      v155 = v419 >= v154;
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
    v424 = v165;
    v166 = vmovl_u16(*&vpaddq_s16(v440, v440));
    v167 = vpaddq_s32(v166, v166).u64[0];
    v168.i64[0] = v167;
    v168.i64[1] = HIDWORD(v167);
    v169 = v168;
    v170 = vaddvq_s64(v168);
    v171 = v170;
    v172 = v154 + v170;
    if (v419)
    {
      v173 = v419 >= v172;
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
    v184 = vnegq_s32(vandq_s8(v440, v183));
    v185 = vshlq_u32(v182, v184);
    v186 = vuzp1q_s16(vzip1q_s32(v182, v185), vzip2q_s32(v182, v185));
    v185.i64[0] = 0xF000F000F000FLL;
    v185.i64[1] = 0xF000F000F000FLL;
    v187 = vaddq_s16(v440, v185);
    v185.i64[0] = 0x10001000100010;
    v185.i64[1] = 0x10001000100010;
    v188 = vsubq_s16(v185, v440);
    v189 = vshlq_s16(vshlq_s16(v186, v188), v187);
    v425 = v189;
    v190 = v172 + v171;
    if (v419)
    {
      v191 = v419 >= v190;
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
    v426 = v201;
    v202 = v190 + v171;
    if (v419)
    {
      v203 = v419 >= v202;
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
    v427 = v211;
    v212 = v202 + v171;
    if (v419)
    {
      v213 = v419 >= v212;
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
    v428 = v223;
    v224 = vmovl_u16(*&vpaddq_s16(v441, v441));
    v225 = vpaddq_s32(v224, v224).u64[0];
    v226.i64[0] = v225;
    v226.i64[1] = HIDWORD(v225);
    v227 = v226;
    v228 = vaddvq_s64(v226);
    v229 = v228;
    v230 = v212 + v228;
    if (v419)
    {
      v231 = v419 >= v230;
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
    v242 = vnegq_s32(vandq_s8(v441, v241));
    v243 = vshlq_u32(v240, v242);
    v244 = vuzp1q_s16(vzip1q_s32(v240, v243), vzip2q_s32(v240, v243));
    v243.i64[0] = 0xF000F000F000FLL;
    v243.i64[1] = 0xF000F000F000FLL;
    v245 = vaddq_s16(v441, v243);
    v243.i64[0] = 0x10001000100010;
    v243.i64[1] = 0x10001000100010;
    v246 = vsubq_s16(v243, v441);
    v247 = vshlq_s16(vshlq_s16(v244, v246), v245);
    v429 = v247;
    v248 = v230 + v229;
    if (v419)
    {
      v249 = v419 >= v248;
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
    v430 = v259;
    v260 = v248 + v229;
    if (v419)
    {
      v261 = v419 >= v260;
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
    v431 = v269;
    v270 = v260 + v229;
    if (v419)
    {
      v271 = v419 >= v270;
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
    v432 = v281;
    v282 = vmovl_u16(*&vpaddq_s16(v442, v442));
    v283 = vpaddq_s32(v282, v282).u64[0];
    v284.i64[0] = v283;
    v284.i64[1] = HIDWORD(v283);
    v285 = v284;
    v286 = vaddvq_s64(v284);
    v287 = v286;
    v288 = v270 + v286;
    if (v419)
    {
      v289 = v419 >= v288;
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
    v299 = vnegq_s32(vandq_s8(v442, v297));
    v300 = vshlq_u32(v298, v299);
    v301 = vuzp1q_s16(vzip1q_s32(v298, v300), vzip2q_s32(v298, v300));
    v298.i64[0] = 0xF000F000F000FLL;
    v298.i64[1] = 0xF000F000F000FLL;
    v302 = vaddq_s16(v442, v298);
    v300.i64[0] = 0x10001000100010;
    v300.i64[1] = 0x10001000100010;
    v303 = vsubq_s16(v300, v442);
    v304 = vshlq_s16(vshlq_s16(v301, v303), v302);
    v433 = v304;
    v305 = v288 + v287;
    if (v419)
    {
      v306 = v419 >= v305;
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
    v434 = v316;
    v317 = v305 + v287;
    if (v419)
    {
      v318 = v419 >= v317;
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
    v435 = v326;
    v327 = v317 + v287;
    if (v419)
    {
      v328 = v419 >= v327;
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

    if ((v112 & 1) != 0 || v419 + 8 * result - v327 - 1024 >= 9 || v95 == 2)
    {
LABEL_226:
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(v54, v55);
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
      v421 = v337;
      v356 = vsubq_s16(v316, v354);
      v357 = vsubq_s16(v326, v354);
      v433 = v355;
      v434 = v356;
      v358 = vsubq_s16(v336, v354);
      v435 = v357;
      v436 = v358;
      v359.i64[0] = 0x1000100010001;
      v359.i64[1] = 0x1000100010001;
      if (vaddvq_s16(vceqq_s16(v39, v359)))
      {
        v360 = vnegq_s16(vandq_s8(v438, v359));
        v361.i64[0] = v343.i64[0];
        v362.i64[1] = v340.i64[1];
        v361.i64[1] = v340.i64[0];
        v362.i64[0] = v343.i64[1];
        v363 = vbslq_s8(v360, v362, v340);
        v364 = vbslq_s8(v360, v361, v343);
        v362.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
        v362.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
        v365 = vandq_s8(vqtbl4q_s8(*(&v341 - 1), v362), v360);
        v455.val[0] = vaddq_s16(v363, vandq_s8(vqtbl4q_s8(*(&v341 - 1), xmmword_29D2F10B0), v360));
        v455.val[1] = vaddq_s16(v341, vandq_s8(vqtbl4q_s8(*(&v341 - 1), xmmword_29D2F10C0), v360));
        v455.val[2] = vaddq_s16(v342, v365);
        v455.val[3] = vaddq_s16(v364, v365);
        v366 = vandq_s8(vqtbl4q_s8(v455, v362), v360);
        v340 = vaddq_s16(v455.val[0], vandq_s8(vqtbl4q_s8(v455, xmmword_29D2F10D0), v360));
        v341 = vaddq_s16(v455.val[1], vandq_s8(vqtbl4q_s8(v455, xmmword_29D2F10E0), v360));
        v421 = v340;
        v422 = v341;
        v342 = vaddq_s16(v455.val[2], v366);
        v343 = vaddq_s16(v455.val[3], v366);
        v454.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v345.i8, xmmword_29D2F10B0), v360), v345);
        v454.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v345.i8, xmmword_29D2F10F0), v360), v346);
        v454.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v345.i8, v362), v360), v347);
        v454.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v345.i8, xmmword_29D2F1100), v360), v348);
        v367 = vandq_s8(vqtbl4q_s8(v454, xmmword_29D2F10D0), v360);
        v368 = vandq_s8(vqtbl4q_s8(v454, v362), v360);
        v345 = vaddq_s16(v367, v454.val[0]);
        v346 = vaddq_s16(v454.val[1], v367);
        v347 = vaddq_s16(v454.val[2], v368);
        v348 = vaddq_s16(v454.val[3], v368);
        v454.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v350.i8, xmmword_29D2F0EB0), v360), v350);
        v454.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v350.i8, xmmword_29D2F0FB0), v360), v351);
        v454.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v350.i8, xmmword_29D2F10B0), v360), v352);
        v454.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v350.i8, xmmword_29D2F10C0), v360), v353);
        v369 = vandq_s8(vqtbl4q_s8(v454, v362), v360);
        v350 = vaddq_s16(v454.val[0], v369);
        v351 = vaddq_s16(v454.val[1], v369);
        v352 = vaddq_s16(v454.val[2], vandq_s8(vqtbl4q_s8(v454, xmmword_29D2F0FE0), v360));
        v353 = vaddq_s16(v454.val[3], vandq_s8(vqtbl4q_s8(v454, xmmword_29D2F1110), v360));
        v455.val[0] = v433;
        v455.val[1] = v434;
        v38 = v438;
        v455.val[2] = v435;
        v455.val[3] = v436;
        v454.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(v455, xmmword_29D2F0EB0), v360), v433);
        v454.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(v455, xmmword_29D2F1120), v360), v434);
        v423 = v342;
        v424 = v343;
        v454.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(v455, xmmword_29D2F10B0), v360), v435);
        v454.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(v455, xmmword_29D2F10C0), v360), v436);
        v370 = vandq_s8(vqtbl4q_s8(v454, v362), v360);
        v355 = vaddq_s16(v454.val[0], v370);
        v356 = vaddq_s16(v454.val[1], v370);
        v357 = vaddq_s16(v454.val[2], vandq_s8(vqtbl4q_s8(v454, xmmword_29D2F0FE0), v360));
        v358 = vaddq_s16(v454.val[3], vandq_s8(vqtbl4q_s8(v454, xmmword_29D2F1130), v360));
      }

      v371 = vaddq_s16(v437, v340);
      v372 = vaddq_s16(v341, v437);
      v373 = vaddq_s16(v342, v437);
      v374 = vaddq_s16(v343, v437);
      v375 = vaddq_s16(v345, v437);
      v376 = vaddq_s16(v346, v437);
      v377 = vaddq_s16(v347, v437);
      v378 = vaddq_s16(v348, v437);
      v379 = vaddq_s16(v350, v437);
      v380 = vaddq_s16(v351, v437);
      v381 = vaddq_s16(v352, v437);
      v382 = vaddq_s16(v353, v437);
      v383 = vaddq_s16(v355, v437);
      v384 = vaddq_s16(v356, v437);
      v385 = vaddq_s16(v357, v437);
      v386 = vaddq_s16(v358, v437);
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
      v384.i64[0] = 0xF8000000F8000000;
      v384.i64[1] = 0xF8000000F8000000;
      v406 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v389, 0x15uLL), v390, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v389, 0xEuLL), v390, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v389, 7uLL), v390, 7uLL), vuzp1q_s32(v389, v390))));
      v407 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v391, 0x15uLL), v392, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v391, 0xEuLL), v392, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v391, 7uLL), v392, 7uLL), vuzp1q_s32(v391, v392))));
      v408 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v393, 0x15uLL), v394, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v393, 0xEuLL), v394, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v393, 7uLL), v394, 7uLL), vuzp1q_s32(v393, v394))));
      v409 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v395, 0x15uLL), v396, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v395, 0xEuLL), v396, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v395, 7uLL), v396, 7uLL), vuzp1q_s32(v395, v396))));
      v410 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v397, 0x15uLL), v398, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v397, 0xEuLL), v398, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v397, 7uLL), v398, 7uLL), vuzp1q_s32(v397, v398))));
      v411 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v399, 0x15uLL), v400, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v399, 0xEuLL), v400, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v399, 7uLL), v400, 7uLL), vuzp1q_s32(v399, v400))));
      v412 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v402, 0x15uLL), v403, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v402, 0xEuLL), v403, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v402, 7uLL), v403, 7uLL), vuzp1q_s32(v402, v403))));
      v413 = (v54 + v55);
      *v54 = vzip1q_s64(v406, v407);
      v54[1] = vzip1q_s64(v410, v411);
      v414 = (v54 + 2 * v55);
      *v413 = vzip2q_s64(v406, v407);
      v413[1] = vzip2q_s64(v410, v411);
      v415 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v404, 0x15uLL), v405, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v404, 0xEuLL), v405, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v404, 7uLL), v405, 7uLL), vuzp1q_s32(v404, v405))));
      *v414 = vzip1q_s64(v408, v409);
      v414[1] = vzip1q_s64(v412, v415);
      v416 = (v414 + v55);
      *v416 = vzip2q_s64(v408, v409);
      v416[1] = vzip2q_s64(v412, v415);
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(int64x2_t *a1, int64x2_t *a2, unsigned __int8 *a3)
{
  v5 = (a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 64, a2, *a3));
  v6 = (v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 16, 64, v5, a3[1]));
  v7 = (v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 2, 64, v6, a3[2]));
  v8 = (v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 18, 64, v7, a3[3]));
  v9 = (v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 32, 64, v8, a3[4]));
  v10 = (v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 48, 64, v9, a3[5]));
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 34, 64, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 50, 64, (v10 + v11), v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(unint64_t a1, char *a2, int64x2_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v7 = a3[1];
  v6 = &a3->i8[2 * a4];
  v8 = *(a3 + a4);
  v9 = *(&a3[1] + a4);
  v10 = vzip1q_s64(*a3, v8);
  v11 = vzip2q_s64(*a3, v8);
  v12 = vzip1q_s64(v7, v9);
  v14 = *v6;
  v15 = *(v6 + 1);
  v13 = &v6[a4];
  v16 = vzip2q_s64(v7, v9);
  v17 = v13[1];
  v18 = vzip1q_s64(v14, *v13);
  v19 = vzip2q_s64(v14, *v13);
  v20 = vzip1q_s64(v15, v17);
  v21 = vzip2q_s64(v15, v17);
  v22.i64[0] = v10.u32[0];
  v22.i64[1] = v10.u32[1];
  v23 = v22;
  v22.i64[0] = v10.u32[2];
  v22.i64[1] = v10.u32[3];
  v24 = vbslq_s8(xmmword_29D2F13A0, v23, 0);
  v25 = vbslq_s8(xmmword_29D2F13A0, v22, 0);
  v22.i64[0] = v11.u32[0];
  v22.i64[1] = v11.u32[1];
  v26 = v22;
  v22.i64[0] = v11.u32[2];
  v22.i64[1] = v11.u32[3];
  v27 = vbslq_s8(xmmword_29D2F13D0, vshll_n_u32(*v10.i8, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_n_u32(*v10.i8, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_n_u32(*v10.i8, 7uLL), v24)));
  v28 = vbslq_s8(xmmword_29D2F13D0, vshll_high_n_u32(v10, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_high_n_u32(v10, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_high_n_u32(v10, 7uLL), v25)));
  v521 = v10;
  v522 = v11;
  v29 = vbslq_s8(xmmword_29D2F13D0, vshll_n_u32(*v11.i8, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_n_u32(*v11.i8, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_n_u32(*v11.i8, 7uLL), vbslq_s8(xmmword_29D2F13A0, v26, 0))));
  v30 = vbslq_s8(xmmword_29D2F13D0, vshll_high_n_u32(v11, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_high_n_u32(v11, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_high_n_u32(v11, 7uLL), vbslq_s8(xmmword_29D2F13A0, v22, 0))));
  v22.i64[0] = v18.u32[0];
  v22.i64[1] = v18.u32[1];
  v31 = v22;
  v22.i64[0] = v18.u32[2];
  v22.i64[1] = v18.u32[3];
  v32 = vbslq_s8(xmmword_29D2F13A0, v31, 0);
  v33 = vbslq_s8(xmmword_29D2F13A0, v22, 0);
  v22.i64[0] = v19.u32[0];
  v22.i64[1] = v19.u32[1];
  v34 = v22;
  v22.i64[0] = v19.u32[2];
  v22.i64[1] = v19.u32[3];
  v35 = vbslq_s8(xmmword_29D2F13D0, vshll_n_u32(*v18.i8, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_n_u32(*v18.i8, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_n_u32(*v18.i8, 7uLL), v32)));
  v36 = vbslq_s8(xmmword_29D2F13D0, vshll_high_n_u32(v18, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_high_n_u32(v18, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_high_n_u32(v18, 7uLL), v33)));
  v519 = v18;
  v520 = v19;
  v37 = vbslq_s8(xmmword_29D2F13D0, vshll_n_u32(*v19.i8, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_n_u32(*v19.i8, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_n_u32(*v19.i8, 7uLL), vbslq_s8(xmmword_29D2F13A0, v34, 0))));
  v38 = vbslq_s8(xmmword_29D2F13D0, vshll_high_n_u32(v19, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_high_n_u32(v19, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_high_n_u32(v19, 7uLL), vbslq_s8(xmmword_29D2F13A0, v22, 0))));
  v22.i64[0] = v12.u32[0];
  v22.i64[1] = v12.u32[1];
  v39 = v22;
  v22.i64[0] = v12.u32[2];
  v22.i64[1] = v12.u32[3];
  v40 = vbslq_s8(xmmword_29D2F13A0, v39, 0);
  v41 = vbslq_s8(xmmword_29D2F13A0, v22, 0);
  v22.i64[0] = v16.u32[0];
  v22.i64[1] = v16.u32[1];
  v42 = v22;
  v22.i64[0] = v16.u32[2];
  v22.i64[1] = v16.u32[3];
  v43 = vbslq_s8(xmmword_29D2F13D0, vshll_n_u32(*v12.i8, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_n_u32(*v12.i8, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_n_u32(*v12.i8, 7uLL), v40)));
  v44 = vbslq_s8(xmmword_29D2F13D0, vshll_high_n_u32(v12, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_high_n_u32(v12, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_high_n_u32(v12, 7uLL), v41)));
  v525 = v12;
  v526 = v16;
  v45 = vbslq_s8(xmmword_29D2F13D0, vshll_n_u32(*v16.i8, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_n_u32(*v16.i8, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_n_u32(*v16.i8, 7uLL), vbslq_s8(xmmword_29D2F13A0, v42, 0))));
  v46 = vbslq_s8(xmmword_29D2F13D0, vshll_high_n_u32(v16, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_high_n_u32(v16, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_high_n_u32(v16, 7uLL), vbslq_s8(xmmword_29D2F13A0, v22, 0))));
  v22.i64[0] = v20.u32[0];
  v22.i64[1] = v20.u32[1];
  v47 = v22;
  v22.i64[0] = v20.u32[2];
  v22.i64[1] = v20.u32[3];
  v48 = vbslq_s8(xmmword_29D2F13A0, v47, 0);
  v49 = vbslq_s8(xmmword_29D2F13A0, v22, 0);
  v22.i64[0] = v21.u32[0];
  v22.i64[1] = v21.u32[1];
  v50 = v22;
  v22.i64[0] = v21.u32[2];
  v22.i64[1] = v21.u32[3];
  v51 = vbslq_s8(xmmword_29D2F13D0, vshll_n_u32(*v20.i8, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_n_u32(*v20.i8, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_n_u32(*v20.i8, 7uLL), v48)));
  v52 = vbslq_s8(xmmword_29D2F13D0, vshll_high_n_u32(v20, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_high_n_u32(v20, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_high_n_u32(v20, 7uLL), v49)));
  v523 = v20;
  v524 = v21;
  v53 = vbslq_s8(xmmword_29D2F13D0, vshll_n_u32(*v21.i8, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_n_u32(*v21.i8, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_n_u32(*v21.i8, 7uLL), vbslq_s8(xmmword_29D2F13A0, v50, 0))));
  v54 = vdupq_lane_s64(v27.i64[0], 0);
  v528 = vshlq_s16(vshlq_s16(vsubq_s16(v27, v54), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v530 = vshlq_s16(vshlq_s16(vsubq_s16(v28, v54), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v55 = vshlq_s16(vshlq_s16(vsubq_s16(v29, v54), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v56 = vminq_s16(vminq_s16(v528, v530), v55);
  v532 = v55;
  v534 = vshlq_s16(vshlq_s16(vsubq_s16(v30, v54), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v57 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v528, v530), v55), v534), xmmword_29D2F1150);
  v58 = vqtbl1q_s8(vminq_s16(v56, v534), xmmword_29D2F1150);
  v59 = vpmaxq_s16(v57, v57);
  v60 = vpminq_s16(v58, v58);
  v61 = vzip1q_s16(v59, v60);
  v15.i64[0] = 0x10001000100010;
  v15.i64[1] = 0x10001000100010;
  v62 = vbicq_s8(vsubq_s16(v15, vclsq_s16(v61)), vceqzq_s16(v61));
  v536 = vshlq_s16(vshlq_s16(vsubq_s16(v35, v54), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v537 = vshlq_s16(vshlq_s16(vsubq_s16(v36, v54), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v517 = v38;
  v63 = vshlq_s16(vshlq_s16(vsubq_s16(v37, v54), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v64 = vminq_s16(vminq_s16(v536, v537), v63);
  v538 = v63;
  v539 = vshlq_s16(vshlq_s16(vsubq_s16(v38, v54), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v12.i64[0] = 0x8000800080008000;
  v12.i64[1] = 0x8000800080008000;
  v65 = vmaxq_s16(v59, v12);
  v12.i64[0] = 0x8000800080008000;
  v12.i64[1] = 0x8000800080008000;
  v66 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v536, v537), v63), v539), xmmword_29D2F1150);
  v67 = vqtbl1q_s8(vminq_s16(v64, v539), xmmword_29D2F1150);
  v68 = vpmaxq_s16(v66, v66);
  v69 = vpminq_s16(v67, v67);
  v70 = vmaxq_s16(v65, v68);
  v71 = vminq_s16(vminq_s16(v60, v12), v69);
  v72 = vzip1q_s16(v68, v69);
  v12.i64[0] = 0x10001000100010;
  v12.i64[1] = 0x10001000100010;
  v73 = vbicq_s8(vsubq_s16(v12, vclsq_s16(v72)), vceqzq_s16(v72));
  v540 = vshlq_s16(vshlq_s16(vsubq_s16(v43, v54), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v541 = vshlq_s16(vshlq_s16(vsubq_s16(v44, v54), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v74 = vshlq_s16(vshlq_s16(vsubq_s16(v45, v54), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v75 = vminq_s16(vminq_s16(v540, v541), v74);
  v542 = v74;
  v543 = vshlq_s16(vshlq_s16(vsubq_s16(v46, v54), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v76 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v540, v541), v74), v543), xmmword_29D2F1150);
  v77 = vqtbl1q_s8(vminq_s16(v75, v543), xmmword_29D2F1150);
  v78 = vpmaxq_s16(v76, v76);
  v79 = vpminq_s16(v77, v77);
  v80 = vmaxq_s16(v70, v78);
  v81 = vminq_s16(v71, v79);
  v82 = vzip1q_s16(v78, v79);
  v83 = vbicq_s8(vsubq_s16(v12, vclsq_s16(v82)), vceqzq_s16(v82));
  v544 = vshlq_s16(vshlq_s16(vsubq_s16(v51, v54), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v545 = vshlq_s16(vshlq_s16(vsubq_s16(v52, v54), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v548 = v54;
  v515 = vbslq_s8(xmmword_29D2F13D0, vshll_high_n_u32(v21, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_high_n_u32(v21, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_high_n_u32(v21, 7uLL), vbslq_s8(xmmword_29D2F13A0, v22, 0))));
  v546 = vshlq_s16(vshlq_s16(vsubq_s16(v53, v54), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v547 = vshlq_s16(vshlq_s16(vsubq_s16(v515, v54), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v84 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v544, v545), v546), v547), xmmword_29D2F1150);
  v85 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v544, v545), v546), v547), xmmword_29D2F1150);
  v86 = vpmaxq_s16(v84, v84);
  v87 = vpminq_s16(v85, v85);
  v88 = vmaxq_s16(v80, v86);
  v89 = vminq_s16(v81, v87);
  v90 = vzip1q_s16(v86, v87);
  v91 = vbicq_s8(vsubq_s16(v12, vclsq_s16(v90)), vceqzq_s16(v90));
  v92 = vpmaxq_s16(v62, v62);
  v93 = vpmaxq_s16(v73, v73);
  v94 = vpmaxq_s16(v83, v83);
  v95 = vpmaxq_s16(v91, v91);
  v96 = vmaxq_s16(vmaxq_s16(v92, v93), vmaxq_s16(v94, v95));
  v97 = vclzq_s16(vsubq_s16(v88, v89));
  v21.i64[0] = 0xF000F000F000FLL;
  v21.i64[1] = 0xF000F000F000FLL;
  v98.i64[0] = -1;
  v98.i64[1] = -1;
  v555 = v89;
  v556 = v88;
  v99 = vsubq_s16(vshlq_s16(v98, vsubq_s16(v21, v97)), v89);
  v100 = vsubq_s16(v12, v97);
  v101 = vcgtq_s16(v96, v100);
  v102 = vminq_s16(v100, v96);
  v557 = vandq_s8(v99, v101);
  v99.i64[0] = 0x8000800080008;
  v99.i64[1] = 0x8000800080008;
  v12.i64[0] = 0x3000300030003;
  v12.i64[1] = 0x3000300030003;
  v103 = vorrq_s8(vandq_s8(vceqzq_s16(v102), v12), vorrq_s8(vandq_s8(v101, v99), 0));
  v104 = vmaxq_s16(vminq_s16(vsubq_s16(v102, v93), v12), 0);
  v105 = vmaxq_s16(vminq_s16(vsubq_s16(v102, v94), v12), 0);
  v551 = vsubq_s16(v102, v104);
  v552 = vsubq_s16(v102, v105);
  v106 = vmaxq_s16(vminq_s16(vsubq_s16(v102, v95), v12), 0);
  v553 = vsubq_s16(v102, v106);
  v554 = v102;
  v107 = vmaxq_s16(vminq_s16(vsubq_s16(v102, v92), v12), 0);
  v108 = vceqq_s16(vaddq_s16(v106, v105), vnegq_s16(vaddq_s16(v107, v104)));
  v106.i64[0] = 0x4000400040004;
  v106.i64[1] = 0x4000400040004;
  v109 = vorrq_s8(vbicq_s8(v106, v108), v103);
  v549 = v109;
  v550 = vsubq_s16(v102, v107);
  if (vmaxvq_s16(v102))
  {
    v509 = v35;
    v511 = v36;
    v512 = v37;
    v483 = v46;
    v507 = v103;
    v110 = vshlq_s16(vshlq_s16(vsubq_s16(v536, vqtbl1q_s8(v536, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v111 = vshlq_s16(vshlq_s16(vsubq_s16(v537, vqtbl1q_s8(v537, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v112 = vshlq_s16(vshlq_s16(vsubq_s16(v538, vqtbl1q_s8(v538, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v113 = vshlq_s16(vshlq_s16(vsubq_s16(v539, vqtbl1q_s8(v539, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v114 = vshlq_s16(vshlq_s16(vsubq_s16(v545, vqtbl1q_s8(v545, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v490 = vshlq_s16(vshlq_s16(vsubq_s16(v528, vqtbl1q_s8(v528, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v491 = vshlq_s16(vshlq_s16(vsubq_s16(v530, vqtbl1q_s8(v530, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v492 = vshlq_s16(vshlq_s16(vsubq_s16(v534, vqtbl1q_s8(v534, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v493 = vshlq_s16(vshlq_s16(vsubq_s16(v532, vqtbl1q_s8(v532, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v115 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v490, v491), v493), v492), xmmword_29D2F1150);
    v116 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v490, v491), v493), v492), xmmword_29D2F1150);
    v117 = vpmaxq_s16(v115, v115);
    v118 = vpminq_s16(v116, v116);
    v119.i64[0] = 0x8000800080008000;
    v119.i64[1] = 0x8000800080008000;
    v120 = vmaxq_s16(v117, v119);
    v121.i64[0] = 0x8000800080008000;
    v121.i64[1] = 0x8000800080008000;
    v122 = vminq_s16(v118, v121);
    v123 = vzip1q_s16(v117, v118);
    v124.i64[0] = 0x10001000100010;
    v124.i64[1] = 0x10001000100010;
    v125 = vbicq_s8(vsubq_s16(v124, vclsq_s16(v123)), vceqzq_s16(v123));
    v126 = vpmaxq_s16(v125, v125);
    v127 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v110, v111), v112), v113);
    v496 = v111;
    v497 = v110;
    v128 = vshlq_s16(vshlq_s16(vsubq_s16(v544, vqtbl1q_s8(v544, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v498 = v113;
    v499 = v112;
    v129 = vminq_s16(vminq_s16(vminq_s16(v110, v111), v112), v113);
    v130 = vshlq_s16(vshlq_s16(vsubq_s16(v546, vqtbl1q_s8(v546, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v131 = vqtbl1q_s8(v127, xmmword_29D2F1150);
    v132 = vqtbl1q_s8(v129, xmmword_29D2F1150);
    v133 = vpmaxq_s16(v131, v131);
    v134 = vpminq_s16(v132, v132);
    v135 = vmaxq_s16(v120, v133);
    v136 = vminq_s16(v122, v134);
    v137 = vzip1q_s16(v133, v134);
    v138 = vbicq_s8(vsubq_s16(v124, vclsq_s16(v137)), vceqzq_s16(v137));
    v139 = vpmaxq_s16(v138, v138);
    v500 = vshlq_s16(vshlq_s16(vsubq_s16(v541, vqtbl1q_s8(v541, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v501 = vshlq_s16(vshlq_s16(vsubq_s16(v540, vqtbl1q_s8(v540, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v503 = vshlq_s16(vshlq_s16(vsubq_s16(v543, vqtbl1q_s8(v543, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v505 = vshlq_s16(vshlq_s16(vsubq_s16(v542, vqtbl1q_s8(v542, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v140 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v501, v500), v505), v503), xmmword_29D2F1150);
    v141 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v501, v500), v505), v503), xmmword_29D2F1150);
    v142 = vpmaxq_s16(v140, v140);
    v143 = vpminq_s16(v141, v141);
    v144 = vmaxq_s16(v135, v142);
    v145 = vminq_s16(v136, v143);
    v146 = vzip1q_s16(v142, v143);
    v147 = vbicq_s8(vsubq_s16(v124, vclsq_s16(v146)), vceqzq_s16(v146));
    v148 = vpmaxq_s16(v147, v147);
    v485 = vshlq_s16(vshlq_s16(vsubq_s16(v547, vqtbl1q_s8(v547, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v149 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v128, v114), v130), v485), xmmword_29D2F1150);
    v150 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v128, v114), v130), v485), xmmword_29D2F1150);
    v151 = vpmaxq_s16(v149, v149);
    v152 = vpminq_s16(v150, v150);
    v153 = vmaxq_s16(v144, v151);
    v154 = vminq_s16(v145, v152);
    v155 = vzip1q_s16(v151, v152);
    v156 = vbicq_s8(vsubq_s16(v124, vclsq_s16(v155)), vceqzq_s16(v155));
    v157 = vpmaxq_s16(v156, v156);
    v158 = vmaxq_s16(vmaxq_s16(v126, v139), vmaxq_s16(v148, v157));
    v494 = v154;
    v495 = v153;
    v484 = vclzq_s16(vsubq_s16(v153, v154));
    v159 = vsubq_s16(v124, v484);
    v160 = vcgtq_s16(v158, v159);
    v161 = vminq_s16(v159, v158);
    v152.i64[0] = 0x3000300030003;
    v152.i64[1] = 0x3000300030003;
    v162 = vmaxq_s16(vminq_s16(vsubq_s16(v161, v126), v152), 0);
    v163 = vmaxq_s16(vminq_s16(vsubq_s16(v161, v139), v152), 0);
    v164 = vmaxq_s16(vminq_s16(vsubq_s16(v161, v148), v152), 0);
    v165.i64[0] = 0x3000300030003;
    v165.i64[1] = 0x3000300030003;
    v166 = vmaxq_s16(vminq_s16(vsubq_s16(v161, v157), v152), 0);
    v148.i64[0] = 0x4000400040004;
    v148.i64[1] = 0x4000400040004;
    v167 = vbicq_s8(v148, vceqq_s16(vaddq_s16(v166, v164), vnegq_s16(vaddq_s16(v162, v163))));
    v148.i64[0] = 0x18001800180018;
    v148.i64[1] = 0x18001800180018;
    v168 = v160;
    v169 = vbslq_s8(v160, v148, v124);
    v170 = vsubq_s16(v161, v162);
    v487 = vsubq_s16(v161, v163);
    v488 = vsubq_s16(v161, v164);
    v489 = vsubq_s16(v161, v166);
    v162.i64[0] = 0x7000700070007;
    v162.i64[1] = 0x7000700070007;
    v486 = v170;
    v171 = vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v161, vceqzq_s16((*&v169 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v167, v167)), v170, v162), vshlq_n_s16(vaddq_s16(vaddq_s16(v488, v487), v489), 3uLL));
    v164.i64[0] = 0x8000800080008;
    v164.i64[1] = 0x8000800080008;
    v160.i64[0] = 0x2000200020002;
    v160.i64[1] = 0x2000200020002;
    v172 = v554;
    v173 = vaddq_s16(vaddq_s16(vbicq_s8(v554, vceqzq_s16(vandq_s8(v507, v164))), vandq_s8(vceqq_s16(vandq_s8(v507, v165), v160), v124)), vandq_s8(vaddq_s16(v109, v109), v164));
    v175 = v550;
    v174 = v551;
    v176 = vmlaq_s16(v173, v550, v162);
    v178 = v552;
    v177 = v553;
    v179 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v176, vshlq_n_s16(vaddq_s16(vaddq_s16(v552, v551), v553), 3uLL)), v171).i64[0], 0);
    v180 = vaddvq_s16(v179);
    v182 = a5 < 4 || a6 < 2;
    if (v180)
    {
      v183.i64[0] = 0x3000300030003;
      v183.i64[1] = 0x3000300030003;
      v513 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v161), v183), v169), v167);
      v184.i64[0] = 0xF000F000F000FLL;
      v184.i64[1] = 0xF000F000F000FLL;
      v528 = vbslq_s8(v179, v490, v528);
      v530 = vbslq_s8(v179, v491, v530);
      v183.i64[0] = -1;
      v183.i64[1] = -1;
      v532 = vbslq_s8(v179, v493, v532);
      v534 = vbslq_s8(v179, v492, v534);
      v185 = vandq_s8(vsubq_s16(vshlq_s16(v183, vsubq_s16(v184, v484)), v494), v168);
      v536 = vbslq_s8(v179, v497, v536);
      v537 = vbslq_s8(v179, v496, v537);
      v538 = vbslq_s8(v179, v499, v538);
      v539 = vbslq_s8(v179, v498, v539);
      v540 = vbslq_s8(v179, v501, v540);
      v541 = vbslq_s8(v179, v500, v541);
      v542 = vbslq_s8(v179, v505, v542);
      v543 = vbslq_s8(v179, v503, v543);
      v544 = vbslq_s8(v179, v128, v544);
      v545 = vbslq_s8(v179, v114, v545);
      v546 = vbslq_s8(v179, v130, v546);
      v547 = vbslq_s8(v179, v485, v547);
      v175 = vbslq_s8(v179, v486, v550);
      v174 = vbslq_s8(v179, v487, v551);
      v550 = v175;
      v551 = v174;
      v178 = vbslq_s8(v179, v488, v552);
      v177 = vbslq_s8(v179, v489, v553);
      v552 = v178;
      v553 = v177;
      v556 = vbslq_s8(v179, v495, v556);
      v557 = vbslq_s8(v179, v185, v557);
      v172 = vbslq_s8(v179, v161, v554);
      v554 = v172;
      v555 = vbslq_s8(v179, v494, v555);
      v109 = vbslq_s8(v179, v513, v549);
      v548 = vbslq_s8(v179, vsubq_s16(v548, vqtbl1q_s8(v548, xmmword_29D2F1270)), v548);
      v549 = v109;
    }

    v186 = v509;
    v187 = v511;
    v188 = v512;
    if (!v182)
    {
      v189 = vqtbl4q_s8(*v27.i8, xmmword_29D2F1160);
      v190 = vsubq_s16(v27, vqtbl4q_s8(*v27.i8, xmmword_29D2F10B0));
      v191 = vsubq_s16(v29, v189);
      v192 = vsubq_s16(v30, v189);
      v193 = v517.i64[0];
      v194 = v30.i64[1];
      v195 = vsubq_s16(v509, vqtbl4q_s8(*v186.i8, xmmword_29D2F10B0));
      v196 = vsubq_s16(v511, vqtbl4q_s8(*v186.i8, xmmword_29D2F10F0));
      v197 = vsubq_s16(v512, vqtbl4q_s8(*v186.i8, xmmword_29D2F1160));
      v198 = vsubq_s16(v517, vqtbl4q_s8(*v186.i8, xmmword_29D2F1100));
      v199 = v483.i64[0];
      v200 = v30.i64[1];
      v201 = vqtbl4q_s8(*v43.i8, xmmword_29D2F10C0);
      v202 = vsubq_s16(v43, vqtbl4q_s8(*v43.i8, xmmword_29D2F1170));
      v203 = vsubq_s16(v44, vqtbl4q_s8(*v43.i8, xmmword_29D2F1180));
      v204 = vsubq_s16(v45, vqtbl4q_s8(*v43.i8, xmmword_29D2F10B0));
      v205 = v515.i64[0];
      v206 = v30.i64[1];
      v207.i64[0] = v192.i64[0];
      v207.i64[1] = v190.i64[0];
      v190.i64[0] = v192.i64[1];
      v208 = vshlq_s16(vsubq_s16(v483, v201), xmmword_29D2F13E0);
      v209 = vshlq_s16(vsubq_s16(v51, vqtbl4q_s8(*v51.i8, xmmword_29D2F1170)), xmmword_29D2F13E0);
      v210 = vshlq_s16(vsubq_s16(v52, vqtbl4q_s8(*v51.i8, xmmword_29D2F1120)), xmmword_29D2F13E0);
      v211 = vshlq_s16(vsubq_s16(v53, vqtbl4q_s8(*v51.i8, xmmword_29D2F10B0)), xmmword_29D2F13E0);
      v212 = vshlq_s16(vsubq_s16(v515, vqtbl4q_s8(*v51.i8, xmmword_29D2F10C0)), xmmword_29D2F13E0);
      v213 = vshlq_s16(vshlq_s16(v190, xmmword_29D2F13E0), xmmword_29D2F13F0);
      v214 = vshlq_s16(vshlq_s16(vsubq_s16(v28, vqtbl4q_s8(*v27.i8, xmmword_29D2F10C0)), xmmword_29D2F13E0), xmmword_29D2F13F0);
      v215 = vshlq_s16(vshlq_s16(v191, xmmword_29D2F13E0), xmmword_29D2F13F0);
      v216 = vshlq_s16(vshlq_s16(v207, xmmword_29D2F13E0), xmmword_29D2F13F0);
      v217 = vshlq_s16(vshlq_s16(v195, xmmword_29D2F13E0), xmmword_29D2F13F0);
      v218 = vshlq_s16(vshlq_s16(v196, xmmword_29D2F13E0), xmmword_29D2F13F0);
      v219 = vshlq_s16(vshlq_s16(v197, xmmword_29D2F13E0), xmmword_29D2F13F0);
      v220 = vshlq_s16(vshlq_s16(v198, xmmword_29D2F13E0), xmmword_29D2F13F0);
      v221 = vshlq_s16(vshlq_s16(v202, xmmword_29D2F13E0), xmmword_29D2F13F0);
      v222 = vshlq_s16(vshlq_s16(v203, xmmword_29D2F13E0), xmmword_29D2F13F0);
      v223 = vshlq_s16(vshlq_s16(v204, xmmword_29D2F13E0), xmmword_29D2F13F0);
      v224 = vshlq_s16(v208, xmmword_29D2F13F0);
      v225 = vshlq_s16(v211, xmmword_29D2F13F0);
      v226 = vshlq_s16(v212, xmmword_29D2F13F0);
      v227 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v213, v214), v215), v216), xmmword_29D2F1150);
      v228 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v213, v214), v215), v216), xmmword_29D2F1150);
      v229 = vpmaxq_s16(v227, v227);
      v230 = vpminq_s16(v228, v228);
      v190.i64[0] = 0x8000800080008000;
      v190.i64[1] = 0x8000800080008000;
      v231 = vmaxq_s16(v229, v190);
      v211.i64[0] = 0x8000800080008000;
      v211.i64[1] = 0x8000800080008000;
      v232 = vminq_s16(v230, v211);
      v233 = vzip1q_s16(v229, v230);
      v229.i64[0] = 0x10001000100010;
      v229.i64[1] = 0x10001000100010;
      v234 = vbicq_s8(vsubq_s16(v229, vclsq_s16(v233)), vceqzq_s16(v233));
      v235 = vpmaxq_s16(v234, v234);
      v236 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v217, v218), v219), v220), xmmword_29D2F1150);
      v237 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v217, v218), v219), v220), xmmword_29D2F1150);
      v238 = vpmaxq_s16(v236, v236);
      v239 = vpminq_s16(v237, v237);
      v240 = vmaxq_s16(v231, v238);
      v241 = vminq_s16(v232, v239);
      v242 = vzip1q_s16(v238, v239);
      v243 = vbicq_s8(vsubq_s16(v229, vclsq_s16(v242)), vceqzq_s16(v242));
      v244 = vpmaxq_s16(v243, v243);
      v510 = v223;
      v245 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v221, v222), v223), v224), xmmword_29D2F1150);
      v246 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v221, v222), v223), v224), xmmword_29D2F1150);
      v247 = vpmaxq_s16(v245, v245);
      v248 = vpminq_s16(v246, v246);
      v249 = vmaxq_s16(v240, v247);
      v250 = vminq_s16(v241, v248);
      v251 = vzip1q_s16(v247, v248);
      v252 = vbicq_s8(vsubq_s16(v229, vclsq_s16(v251)), vceqzq_s16(v251));
      v253 = vpmaxq_s16(v252, v252);
      v514 = vshlq_s16(v210, xmmword_29D2F13F0);
      v516 = vshlq_s16(v209, xmmword_29D2F13F0);
      v527 = v225;
      v518 = v226;
      v254 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v516, v514), v225), v226), xmmword_29D2F1150);
      v255 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v516, v514), v225), v226), xmmword_29D2F1150);
      v256 = vpmaxq_s16(v254, v254);
      v257 = vpminq_s16(v255, v255);
      v258 = vmaxq_s16(v249, v256);
      v259 = vminq_s16(v250, v257);
      v260 = vzip1q_s16(v256, v257);
      v261 = vbicq_s8(vsubq_s16(v229, vclsq_s16(v260)), vceqzq_s16(v260));
      v262 = vpmaxq_s16(v261, v261);
      v263 = vmaxq_s16(vmaxq_s16(v235, v244), vmaxq_s16(v253, v262));
      v508 = v258;
      v264 = vclzq_s16(vsubq_s16(v258, v259));
      v265 = vsubq_s16(v229, v264);
      v266 = vcgtq_s16(v263, v265);
      v267 = vminq_s16(v265, v263);
      v263.i64[0] = 0x3000300030003;
      v263.i64[1] = 0x3000300030003;
      v268 = vmaxq_s16(vminq_s16(vsubq_s16(v267, v235), v263), 0);
      v269 = vmaxq_s16(vminq_s16(vsubq_s16(v267, v244), v263), 0);
      v270 = vmaxq_s16(vminq_s16(vsubq_s16(v267, v253), v263), 0);
      v271 = vmaxq_s16(vminq_s16(vsubq_s16(v267, v262), v263), 0);
      v272 = vsubq_s16(v267, v268);
      v273 = vsubq_s16(v267, v269);
      v262.i64[0] = 0x4000400040004;
      v262.i64[1] = 0x4000400040004;
      v274 = vbicq_s8(v262, vceqq_s16(vaddq_s16(v271, v270), vnegq_s16(vaddq_s16(v268, v269))));
      v269.i64[0] = 0x7000700070007;
      v269.i64[1] = 0x7000700070007;
      v502 = vsubq_s16(v267, v270);
      v504 = v273;
      v506 = vsubq_s16(v267, v271);
      v275 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v267, v266), vaddq_s16(v274, v274)), v272, v269), vshlq_n_s16(vaddq_s16(vaddq_s16(v502, v273), v506), 3uLL));
      v276 = v550;
      v277.i64[0] = 0x2000200020002;
      v277.i64[1] = 0x2000200020002;
      v278 = vandq_s8(vceqq_s16(vandq_s8(v549, v263), v277), v229);
      v229.i64[0] = 0x8000800080008;
      v229.i64[1] = 0x8000800080008;
      v279 = vandq_s8(vaddq_s16(v549, v549), v229);
      v280 = vceqzq_s16(vandq_s8(v549, v229));
      v177 = v553;
      v172 = v554;
      v281 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v554, v280), v279), v278), v550, v269);
      v174 = v551;
      v178 = v552;
      v282 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v281, vshlq_n_s16(vaddq_s16(vaddq_s16(v552, v551), v553), 3uLL)), v275).i64[0], 0);
      if (vaddvq_s16(v282))
      {
        v283 = vandq_s8(vceqzq_s16(v267), v277);
        v284.i64[0] = 0x9000900090009;
        v284.i64[1] = 0x9000900090009;
        v285 = vorrq_s8(v283, vsubq_s16(vandq_s8(v266, v284), vmvnq_s8(v266)));
        v284.i64[0] = -1;
        v284.i64[1] = -1;
        v286 = vorrq_s8(v285, v274);
        v285.i64[0] = 0xF000F000F000FLL;
        v285.i64[1] = 0xF000F000F000FLL;
        v287 = vandq_s8(vsubq_s16(vshlq_s16(v284, vsubq_s16(v285, v264)), v259), v266);
        v276 = vbslq_s8(v282, v272, v550);
        v174 = vbslq_s8(v282, v504, v551);
        v178 = vbslq_s8(v282, v502, v552);
        v177 = vbslq_s8(v282, v506, v553);
        v172 = vbslq_s8(v282, v267, v554);
        v547 = vbslq_s8(v282, v518, v547);
        v548 = vbslq_s8(v282, vextq_s8(v30, v30, 8uLL), v548);
        v528 = vbslq_s8(v282, v213, v528);
        v530 = vbslq_s8(v282, v214, v530);
        v532 = vbslq_s8(v282, v215, v532);
        v534 = vbslq_s8(v282, v216, v534);
        v536 = vbslq_s8(v282, v217, v536);
        v537 = vbslq_s8(v282, v218, v537);
        v538 = vbslq_s8(v282, v219, v538);
        v539 = vbslq_s8(v282, v220, v539);
        v540 = vbslq_s8(v282, v221, v540);
        v541 = vbslq_s8(v282, v222, v541);
        v542 = vbslq_s8(v282, v510, v542);
        v543 = vbslq_s8(v282, v224, v543);
        v109 = vbslq_s8(v282, v286, v549);
        v544 = vbslq_s8(v282, v516, v544);
        v545 = vbslq_s8(v282, v514, v545);
        v546 = vbslq_s8(v282, v527, v546);
        v555 = vbslq_s8(v282, v259, v555);
        v556 = vbslq_s8(v282, v508, v556);
        v557 = vbslq_s8(v282, v287, v557);
        v550 = v276;
        v551 = v174;
        v552 = v178;
        v553 = v177;
        v554 = v172;
        v549 = v109;
      }

      else
      {
        v109 = v549;
      }

      v175 = v276;
    }

    v290 = vandq_s8(v557, vceqq_s16(v172, v175));
    v529 = vaddq_s16(v290, v528);
    v531 = vaddq_s16(v530, v290);
    v533 = vaddq_s16(v532, v290);
    v535 = vaddq_s16(v534, v290);
    v291 = vandq_s8(v557, vceqq_s16(v172, v174));
    v536 = vaddq_s16(v536, v291);
    v537 = vaddq_s16(v537, v291);
    v538 = vaddq_s16(v538, v291);
    v539 = vaddq_s16(v539, v291);
    v292 = vandq_s8(v557, vceqq_s16(v172, v178));
    v540 = vaddq_s16(v540, v292);
    v541 = vaddq_s16(v541, v292);
    v542 = vaddq_s16(v542, v292);
    v543 = vaddq_s16(v543, v292);
    v293 = vandq_s8(v557, vceqq_s16(v172, v177));
    v544 = vaddq_s16(v544, v293);
    v545 = vaddq_s16(v545, v293);
    v546 = vaddq_s16(v546, v293);
    v547 = vaddq_s16(v547, v293);
    v293.i64[0] = 0x8000800080008;
    v293.i64[1] = 0x8000800080008;
    v294.i64[0] = 0x3000300030003;
    v294.i64[1] = 0x3000300030003;
    v295.i64[0] = 0x2000200020002;
    v295.i64[1] = 0x2000200020002;
    v296 = vceqq_s16(vandq_s8(v109, v294), v295);
    v295.i64[0] = 0x10001000100010;
    v295.i64[1] = 0x10001000100010;
    v297 = vandq_s8(v296, v295);
    v295.i64[0] = 0x7000700070007;
    v295.i64[1] = 0x7000700070007;
    v298 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v172, vceqzq_s16(vandq_s8(v109, v293))), vandq_s8(vaddq_s16(v109, v109), v293)), v297), v175, v295), vshlq_n_s16(vaddq_s16(vaddq_s16(v178, v174), v177), 3uLL));
    v299 = vpaddq_s16(v298, v298);
    if ((vpaddq_s16(v299, v299).i16[0] + 75) > 0x3FF)
    {
      *a1 = v521;
      *(a1 + 16) = v522;
      *(a1 + 32) = v519;
      *(a1 + 48) = v520;
      *(a1 + 64) = v525;
      *(a1 + 80) = v526;
      v303 = (a1 + 96);
      v288 = 127;
      result = 128;
      *v303 = v523;
      v303[1] = v524;
    }

    else
    {
      v300 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v301 = 8 * (a1 & 7);
      if (v301)
      {
        v302 = *v300 & ~(-1 << v301);
      }

      else
      {
        v302 = 0;
      }

      *a2 = 0;
      v304 = v548.i64[0];
      if (v172.i16[0])
      {
        v305 = ((v172.i8[0] - 1) & 0xF) << 20;
      }

      else
      {
        v305 = 0;
      }

      if (v172.i16[1])
      {
        v306 = ((v172.i8[2] - 1) & 0xF) << 24;
      }

      else
      {
        v306 = 0;
      }

      if (v172.i16[2])
      {
        v307 = (v172.u16[2] << 28) - 0x10000000;
      }

      else
      {
        v307 = 0;
      }

      if (v172.i16[3])
      {
        v308 = ((v172.i8[6] - 1) & 7) << 32;
      }

      else
      {
        v308 = 0;
      }

      v309 = (v109.i8[0] & 0x1F | (32 * (v109.i8[2] & 0x1F)) & 0x83FF | ((v109.i8[4] & 0x1F) << 10) | ((v109.i8[6] & 0x1F) << 15) | v305 | v306 | v307) + v308;
      v310 = (v309 << v301) | v302;
      if (v301 >= 0x1C)
      {
        *v300 = v310;
        v310 = v309 >> (-8 * (a1 & 7u));
      }

      v311 = v304 & 0x1FF | ((WORD1(v304) & 0x1FF) << 9) | ((WORD2(v304) & 0x1FF) << 18) | ((BYTE6(v304) & 0x1F) << 27);
      v312 = (v301 + 36) & 0x3C;
      v313 = v310 | (v311 << v312);
      if (v312 >= 0x20)
      {
        *(v300 + (((v301 + 36) >> 3) & 8)) = v313;
        v313 = v311 >> -v312;
      }

      v314 = vsubq_s16(v554, v550);
      v315 = vsubq_s16(v554, v551);
      v316 = vsubq_s16(v554, v552);
      v317 = vsubq_s16(v554, v553);
      *v314.i8 = vqmovn_u16(v314);
      *v315.i8 = vqmovn_u16(v315);
      *v316.i8 = vqmovn_u16(v316);
      *v317.i8 = vqmovn_u16(v317);
      v318 = vtrn1q_s8(v314, v315);
      v319 = vtrn2q_s8(v314, v315);
      v320 = vtrn1q_s8(v316, v317);
      v321 = vtrn2q_s8(v316, v317);
      v322 = vzip1q_s16(v319, v321);
      v323 = vtrn2q_s16(v319, v321);
      v319.i64[0] = vzip1q_s32(vzip1q_s16(v318, v320), v322).u64[0];
      v323.i64[0] = vzip1q_s32(vtrn2q_s16(v318, v320), v323).u64[0];
      v316.i64[0] = 0x202020202020202;
      v316.i64[1] = 0x202020202020202;
      v324 = vandq_s8(vmovl_s16(vtst_s16(*v549.i8, 0x4000400040004)), v316);
      v316.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v316.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v318.i64[0] = -1;
      v318.i64[1] = -1;
      v325 = vshlq_u8(v318, vorrq_s8(v324, v316));
      v326 = vmovl_u8(vand_s8(*v325.i8, *v319.i8));
      v327 = vmovl_u8(vand_s8(*&vextq_s8(v325, v325, 8uLL), *v323.i8));
      v328 = vmovl_u8(*v324.i8);
      v329 = vmovl_high_u8(v324);
      v330 = vpaddq_s16(vshlq_u16(v326, vtrn1q_s16(0, v328)), vshlq_u16(v327, vtrn1q_s16(0, v329)));
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
      v342 = (v340.i64[0] << (v301 | 4u)) | v313;
      if (v341.i64[0] + (v301 | 4) >= 0x40)
      {
        v300[1] = v342;
        v342 = v340.i64[0] >> -(v301 | 4);
      }

      v343 = v341.i64[0] + (v301 | 0x44);
      v344 = v342 | (v340.i64[1] << v343);
      if ((v343 & 0x3F) + v341.i64[1] >= 0x40)
      {
        *(v300 + ((v343 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v344;
        v344 = v340.i64[1] >> -(v343 & 0x3F);
        if ((v343 & 0x3F) == 0)
        {
          v344 = 0;
        }
      }

      v345 = v343 + v341.i64[1];
      v346.i64[0] = 0x8000800080008;
      v346.i64[1] = 0x8000800080008;
      v347.i64[0] = -1;
      v347.i64[1] = -1;
      v348 = vandq_s8(vextq_s8(vtstq_s16(v549, v346), 0, 8uLL), v554);
      v349.i64[0] = 0xF000F000F000FLL;
      v349.i64[1] = 0xF000F000F000FLL;
      v350 = vandq_s8(vshlq_u16(v347, vaddq_s16(v348, v349)), v557);
      v351 = vmovl_u16(*v348.i8);
      v352 = vpaddq_s32(vshlq_u32(vmovl_u16(*v350.i8), vtrn1q_s32(0, v351)), vmovl_high_u16(v350));
      v353 = vpaddq_s32(v351, vmovl_high_u16(v348));
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
      v360 = (v358.i64[0] << v345) | v344;
      if (v359.i64[0] + (v345 & 0x3F) >= 0x40)
      {
        *(v300 + ((v345 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v360;
        v360 = v358.i64[0] >> -(v345 & 0x3F);
        if ((v345 & 0x3F) == 0)
        {
          v360 = 0;
        }
      }

      v361 = v359.i64[0] + v345;
      v362 = v360 | (v358.i64[1] << v361);
      if ((v361 & 0x3F) + v359.i64[1] >= 0x40)
      {
        *(v300 + ((v361 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v362;
        v362 = v358.i64[1] >> -(v361 & 0x3F);
        if ((v361 & 0x3F) == 0)
        {
          v362 = 0;
        }
      }

      v363 = v361 + v359.i64[1];
      v364 = vextq_s8(0, v550, 8uLL);
      v365.i64[0] = 0xF000F000F000FLL;
      v365.i64[1] = 0xF000F000F000FLL;
      v366.i64[0] = -1;
      v366.i64[1] = -1;
      v367 = vandq_s8(vshlq_u16(v366, vaddq_s16(v364, v365)), v529);
      v368 = vmovl_u16(*v364.i8);
      v369 = vmovl_high_u16(v364);
      v370 = vpaddq_s32(vmovl_u16(*v367.i8), vshlq_u32(vmovl_high_u16(v367), vtrn1q_s32(0, v369)));
      v371 = vpaddq_s32(v368, v369);
      v372.i64[0] = v370.u32[0];
      v372.i64[1] = v370.u32[1];
      v373 = v372;
      v372.i64[0] = v370.u32[2];
      v372.i64[1] = v370.u32[3];
      v374 = v372;
      v372.i64[0] = v371.u32[0];
      v372.i64[1] = v371.u32[1];
      v375 = v372;
      v372.i64[0] = v371.u32[2];
      v372.i64[1] = v371.u32[3];
      v376 = vpaddq_s64(vshlq_u64(v373, vzip1q_s64(0, v375)), vshlq_u64(v374, vzip1q_s64(0, v372)));
      v377 = vpaddq_s64(v375, v372);
      v378 = (v376.i64[0] << v363) | v362;
      if (v377.i64[0] + (v363 & 0x3F) >= 0x40)
      {
        *(v300 + ((v363 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v378;
        v378 = v376.i64[0] >> -(v363 & 0x3F);
        if ((v363 & 0x3F) == 0)
        {
          v378 = 0;
        }
      }

      v379 = v377.i64[0] + v363;
      v380 = v378 | (v376.i64[1] << v379);
      if ((v379 & 0x3F) + v377.i64[1] >= 0x40)
      {
        *(v300 + ((v379 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v380;
        v380 = v376.i64[1] >> -(v379 & 0x3F);
        if ((v379 & 0x3F) == 0)
        {
          v380 = 0;
        }
      }

      v381 = v379 + v377.i64[1];
      v382.i64[0] = 0xF000F000F000FLL;
      v382.i64[1] = 0xF000F000F000FLL;
      v383.i64[0] = -1;
      v383.i64[1] = -1;
      v384 = vandq_s8(vshlq_u16(v383, vaddq_s16(v550, v382)), v531);
      v385 = vmovl_u16(*v550.i8);
      v386 = vmovl_high_u16(v550);
      v387 = vpaddq_s32(vshlq_u32(vmovl_u16(*v384.i8), vtrn1q_s32(0, v385)), vshlq_u32(vmovl_high_u16(v384), vtrn1q_s32(0, v386)));
      v388 = vpaddq_s32(v385, v386);
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
      v393 = vpaddq_s64(vshlq_u64(v390, vzip1q_s64(0, v392)), vshlq_u64(v391, vzip1q_s64(0, v389)));
      v394 = vpaddq_s64(v392, v389);
      v395 = (v393.i64[0] << v381) | v380;
      if (v394.i64[0] + (v381 & 0x3F) >= 0x40)
      {
        *(v300 + ((v381 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v395;
        v395 = v393.i64[0] >> -(v381 & 0x3F);
        if ((v381 & 0x3F) == 0)
        {
          v395 = 0;
        }
      }

      v396 = v394.i64[0] + v381;
      v397 = v395 | (v393.i64[1] << v396);
      if ((v396 & 0x3F) + v394.i64[1] >= 0x40)
      {
        *(v300 + ((v396 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
        v397 = v393.i64[1] >> -(v396 & 0x3F);
        if ((v396 & 0x3F) == 0)
        {
          v397 = 0;
        }
      }

      v398 = v396 + v394.i64[1];
      v399.i64[0] = 0xF000F000F000FLL;
      v399.i64[1] = 0xF000F000F000FLL;
      v400.i64[0] = -1;
      v400.i64[1] = -1;
      v401 = vandq_s8(vshlq_u16(v400, vaddq_s16(v550, v399)), v533);
      v402 = vmovl_u16(*v550.i8);
      v403 = vmovl_high_u16(v550);
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
      v412 = (v410.i64[0] << v398) | v397;
      if (v411.i64[0] + (v398 & 0x3F) >= 0x40)
      {
        *(v300 + ((v398 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v412;
        v412 = v410.i64[0] >> -(v398 & 0x3F);
        if ((v398 & 0x3F) == 0)
        {
          v412 = 0;
        }
      }

      v413 = v411.i64[0] + v398;
      v414 = v412 | (v410.i64[1] << v413);
      if ((v413 & 0x3F) + v411.i64[1] >= 0x40)
      {
        *(v300 + ((v413 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v414;
        v414 = v410.i64[1] >> -(v413 & 0x3F);
        if ((v413 & 0x3F) == 0)
        {
          v414 = 0;
        }
      }

      v415 = v413 + v411.i64[1];
      v416.i64[0] = 0xF000F000F000FLL;
      v416.i64[1] = 0xF000F000F000FLL;
      v417.i64[0] = -1;
      v417.i64[1] = -1;
      v418 = vandq_s8(vshlq_u16(v417, vaddq_s16(v550, v416)), v535);
      v419 = vmovl_u16(*v550.i8);
      v420 = vmovl_high_u16(v550);
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
      v429 = (v427.i64[0] << v415) | v414;
      if (v428.i64[0] + (v415 & 0x3F) >= 0x40)
      {
        *(v300 + ((v415 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v429;
        v429 = v427.i64[0] >> -(v415 & 0x3F);
        if ((v415 & 0x3F) == 0)
        {
          v429 = 0;
        }
      }

      v430 = v428.i64[1];
      v431 = v428.i64[0] + v415;
      v432 = (v428.i64[0] + v415) & 0x3F;
      v433 = v429 | (v427.i64[1] << v431);
      if ((v432 + v428.i64[1]) >= 0x40)
      {
        *(v300 + ((v431 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v433;
        v433 = v427.i64[1] >> -v432;
        if (!v432)
        {
          v433 = 0;
        }
      }

      v434 = 0;
      v435.i64[0] = 0xF000F000F000FLL;
      v435.i64[1] = 0xF000F000F000FLL;
      v436.i64[0] = -1;
      v436.i64[1] = -1;
      v437 = v431 + v430;
      do
      {
        v438 = vandq_s8(vshlq_u16(v436, vaddq_s16(v551, v435)), *(&v536 + v434));
        v439 = vmovl_u16(*v551.i8);
        v440 = vmovl_high_u16(v551);
        v441 = vpaddq_s32(vshlq_u32(vmovl_u16(*v438.i8), vtrn1q_s32(0, v439)), vshlq_u32(vmovl_high_u16(v438), vtrn1q_s32(0, v440)));
        v442 = vpaddq_s32(v439, v440);
        v443.i64[0] = v441.u32[0];
        v443.i64[1] = v441.u32[1];
        v444 = v443;
        v443.i64[0] = v441.u32[2];
        v443.i64[1] = v441.u32[3];
        v445 = v443;
        v443.i64[0] = v442.u32[0];
        v443.i64[1] = v442.u32[1];
        v446 = v443;
        v443.i64[0] = v442.u32[2];
        v443.i64[1] = v442.u32[3];
        v447 = vpaddq_s64(vshlq_u64(v444, vzip1q_s64(0, v446)), vshlq_u64(v445, vzip1q_s64(0, v443)));
        v448 = vpaddq_s64(v446, v443);
        v449 = (v447.i64[0] << v437) | v433;
        if (v448.i64[0] + (v437 & 0x3F) >= 0x40)
        {
          *(v300 + ((v437 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v449;
          v449 = v447.i64[0] >> -(v437 & 0x3F);
          if ((v437 & 0x3F) == 0)
          {
            v449 = 0;
          }
        }

        v450 = v448.i64[0] + v437;
        v433 = v449 | (v447.i64[1] << v450);
        if ((v450 & 0x3F) + v448.i64[1] >= 0x40)
        {
          *(v300 + ((v450 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v433;
          v433 = v447.i64[1] >> -(v450 & 0x3F);
          if ((v450 & 0x3F) == 0)
          {
            v433 = 0;
          }
        }

        v437 = v450 + v448.i64[1];
        v434 += 16;
      }

      while (v434 != 64);
      v451 = 0;
      v452.i64[0] = 0xF000F000F000FLL;
      v452.i64[1] = 0xF000F000F000FLL;
      v453.i64[0] = -1;
      v453.i64[1] = -1;
      do
      {
        v454 = vandq_s8(vshlq_u16(v453, vaddq_s16(v552, v452)), *(&v540 + v451));
        v455 = vmovl_u16(*v552.i8);
        v456 = vmovl_high_u16(v552);
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
        v465 = (v463.i64[0] << v437) | v433;
        if (v464.i64[0] + (v437 & 0x3F) >= 0x40)
        {
          *(v300 + ((v437 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v465;
          v465 = v463.i64[0] >> -(v437 & 0x3F);
          if ((v437 & 0x3F) == 0)
          {
            v465 = 0;
          }
        }

        v466 = v464.i64[0] + v437;
        v433 = v465 | (v463.i64[1] << v466);
        if ((v466 & 0x3F) + v464.i64[1] >= 0x40)
        {
          *(v300 + ((v466 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v433;
          v433 = v463.i64[1] >> -(v466 & 0x3F);
          if ((v466 & 0x3F) == 0)
          {
            v433 = 0;
          }
        }

        v437 = v466 + v464.i64[1];
        v451 += 16;
      }

      while (v451 != 64);
      v467 = 0;
      v468.i64[0] = 0xF000F000F000FLL;
      v468.i64[1] = 0xF000F000F000FLL;
      v469.i64[0] = -1;
      v469.i64[1] = -1;
      do
      {
        v470 = vandq_s8(vshlq_u16(v469, vaddq_s16(v553, v468)), *(&v544 + v467));
        v471 = vmovl_u16(*v553.i8);
        v472 = vmovl_high_u16(v553);
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
        v481 = (v479.i64[0] << v437) | v433;
        if (v480.i64[0] + (v437 & 0x3F) >= 0x40)
        {
          *(v300 + ((v437 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v481;
          v481 = v479.i64[0] >> -(v437 & 0x3F);
          if ((v437 & 0x3F) == 0)
          {
            v481 = 0;
          }
        }

        v482 = v480.i64[0] + v437;
        v433 = v481 | (v479.i64[1] << v482);
        if ((v482 & 0x3F) + v480.i64[1] >= 0x40)
        {
          *(v300 + ((v482 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v433;
          v433 = v479.i64[1] >> -(v482 & 0x3F);
          if ((v482 & 0x3F) == 0)
          {
            v433 = 0;
          }
        }

        v437 = v482 + v480.i64[1];
        v467 += 16;
      }

      while (v467 != 64);
      if ((v437 & 0x3F) != 0)
      {
        *(v300 + ((v437 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v433;
      }

      result = (v437 - v301 + 7) >> 3;
      v288 = *a2 | (result - 1);
    }
  }

  else
  {
    *a1 = a3->i32[0];
    v288 = 3;
    result = 4;
  }

  *a2 = v288;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, (v11 + v12), a2, v15, v14);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + 2, a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v12 + 32), a2, v20, v19);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, (v11 + 8 * a2), a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, (v11 + 12 * a2), a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + 8 * a2 + 32), a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + 12 * a2 + 32), a2, v30, v29);
}

void *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(void *result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 8 * (&v25 & 7);
  v5 = 9;
  v6 = v4;
  do
  {
    v7 = 64 - v6;
    if (64 - v6 >= v5)
    {
      v7 = v5;
    }

    *&v24[8 * v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v3) & ~(-1 << v7)) << v6;
    v3 += v7;
    v8 = v7 + v6;
    v2 += v8 >> 6;
    v6 = v8 & 0x3F;
    v5 -= v7;
  }

  while (v5);
  v9 = v6 - v4 + (v2 << 6);
  if (v9 - 24 >= 0xFFFFFFFFFFFFFFDFLL)
  {
    v10 = 9;
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
    if (v9 - 24 >= 0xFFFFFFFFFFFFFFDFLL)
    {
      v13 = 0;
      v14 = 9;
      do
      {
        v15 = 64 - v6;
        if (64 - v6 >= v14)
        {
          v15 = v14;
        }

        *&v24[8 * v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v13) & ~(-1 << v15)) << v6;
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

  if (v9 - 28 >= 0xFFFFFFFFFFFFFFDFLL)
  {
    v17 = 0;
    v18 = 5;
    do
    {
      v19 = 64 - v6;
      if (64 - v6 >= v18)
      {
        v19 = v18;
      }

      *&v24[8 * v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v17) & ~(-1 << v19)) << v6;
      v17 += v19;
      v20 = v19 + v6;
      v2 += v20 >> 6;
      v6 = v20 & 0x3F;
      v18 -= v19;
    }

    while (v18);
  }

  v21 = (result + a2);
  *result = 0;
  result[1] = 0;
  v22 = (result + 2 * a2);
  *v21 = 0;
  v21[1] = 0;
  v23 = (result + 2 * a2 + a2);
  *v22 = 0;
  v22[1] = 0;
  *v23 = 0;
  v23[1] = 0;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int8x16_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v380 = 0;
  v379 = (8 * (a3 & 7)) | 0x400;
  v377 = 8 * (a3 & 7);
  v378 = a3 & 0xFFFFFFFFFFFFFFF8;
  result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)14,AGX::AppleCompressionGen2::Vec<short>>(&v398, v403, &v397, &v377, a4);
  v8.i64[0] = 0x3000300030003;
  v8.i64[1] = 0x3000300030003;
  v9 = v398;
  v10 = vandq_s8(v398, v8);
  v11 = vbicq_s8(v403[0], vceqq_s16(v10, v8));
  v403[0] = v11;
  v399 = v11;
  v400 = v11;
  v401 = v11;
  v402 = v11;
  v12.i64[0] = 0x202020202020202;
  v12.i64[1] = 0x202020202020202;
  v13 = vandq_s8(vmovl_s16(vtst_s16(*v398.i8, 0x4000400040004)), v12);
  v14 = v377;
  if (vmaxvq_s8(v13) < 1)
  {
    v28.i64[0] = -1;
    v28.i64[1] = -1;
    v29.i64[0] = -1;
    v29.i64[1] = -1;
    v30.i64[0] = -1;
    v30.i64[1] = -1;
    v31.i64[0] = -1;
    v31.i64[1] = -1;
  }

  else
  {
    v15 = vmovl_u8(*&vpaddq_s8(v13, v13));
    v16 = vmovl_u16(*&vpaddq_s16(v15, v15));
    v17 = vpaddq_s32(v16, v16).u64[0];
    v18.i64[0] = v17;
    v18.i64[1] = HIDWORD(v17);
    v19 = v18;
    v20 = vaddvq_s64(v18);
    v21 = v20;
    v22 = v377 + v20;
    if (v379)
    {
      v23 = v379 >= v22;
    }

    else
    {
      v23 = 1;
    }

    v24 = v23;
    if (v20 <= 0x80 && (v24 & 1) != 0)
    {
      v7.i64[0] = 63;
      v25 = (v378 + 8 * (v377 >> 6));
      v26 = vaddq_s64(vdupq_lane_s64(vandq_s8(v377, v7).i64[0], 0), vzip1q_s64(0, v19));
      v27 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v25, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v26)), vshlq_u64(vdupq_lane_s64(v25->i64[0], 0), vnegq_s64(v26)));
      if ((v377 & 0x3F) + v21 >= 0x81)
      {
        v27 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v25[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v26)), vshlq_u64(vdupq_laneq_s64(v25[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v26))), v27);
      }

      v14 = v22;
    }

    else
    {
      v380 = 1;
      v27 = 0uLL;
    }

    v32 = vzip1_s32(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
    v33.i64[0] = v32.u32[0];
    v33.i64[1] = v32.u32[1];
    v34 = vshlq_u64(v27, vnegq_s64(v33));
    v35 = vuzp1q_s32(vzip1q_s64(v27, v34), vzip2q_s64(v27, v34));
    v36 = vshlq_u32(v35, vnegq_s32((*&v15 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v37 = vuzp1q_s16(vzip1q_s32(v35, v36), vzip2q_s32(v35, v36));
    v38 = vshlq_u16(v37, vnegq_s16((*&v13 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
    v39 = vuzp1q_s8(vzip1q_s16(v37, v38), vzip2q_s16(v37, v38));
    v38.i64[0] = 0x101010101010101;
    v38.i64[1] = 0x101010101010101;
    v40 = vshlq_s8(v38, v13);
    v38.i64[0] = -1;
    v38.i64[1] = -1;
    v41 = vqtbl1q_s8(vandq_s8(vaddq_s8(v40, v38), v39), xmmword_29D2F0F70);
    *v39.i8 = vdup_lane_s32(*v41.i8, 0);
    *v38.i8 = vdup_lane_s32(*v41.i8, 1);
    v42 = vdupq_laneq_s32(v41, 2).u64[0];
    v41.i64[0] = vdupq_laneq_s32(v41, 3).u64[0];
    v399 = vsubw_s8(v399, *v39.i8);
    v400 = vsubw_s8(v400, *v38.i8);
    v401 = vsubw_s8(v401, v42);
    v402 = vsubw_s8(v402, *v41.i8);
    v31 = vmovl_s8(vceqz_s8(*v39.i8));
    v30 = vmovl_s8(vceqz_s8(*v38.i8));
    v29 = vmovl_s8(vceqz_s8(v42));
    v28 = vmovl_s8(vceqz_s8(*v41.i8));
  }

  v43.i64[0] = 0x8000800080008;
  v43.i64[1] = 0x8000800080008;
  v44 = 0uLL;
  v45 = vandq_s8(vextq_s8(vtstq_s16(v398, v43), 0, 8uLL), v11);
  v46 = vmovl_u16(*&vpaddq_s16(v45, v45));
  v47 = vpaddq_s32(v46, v46).u64[0];
  v48.i64[0] = v47;
  v48.i64[1] = HIDWORD(v47);
  v49 = v48;
  v50 = vaddvq_s64(v48);
  if (v379)
  {
    v51 = v379 >= v14 + v50;
  }

  else
  {
    v51 = 1;
  }

  v52 = v51;
  if (v50 <= 0x80 && (v52 & 1) != 0)
  {
    v53 = vaddq_s64(vdupq_n_s64(v14 & 0x3F), vzip1q_s64(0, v49));
    v54 = (v378 + 8 * (v14 >> 6));
    v44 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v54, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v53)), vshlq_u64(vdupq_lane_s64(v54->i64[0], 0), vnegq_s64(v53)));
    if ((v14 & 0x3F) + v50 >= 0x81)
    {
      v44 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v54[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v53)), vshlq_u64(vdupq_laneq_s64(v54[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v53))), v44);
    }

    v14 += v50;
  }

  else
  {
    v380 = 1;
  }

  v55 = vzip1_s32(*v46.i8, *&vextq_s8(v46, v46, 8uLL));
  v56.i64[0] = v55.u32[0];
  v56.i64[1] = v55.u32[1];
  v57 = vshlq_u64(v44, vnegq_s64(v56));
  v58 = vuzp1q_s32(vzip1q_s64(v44, v57), vzip2q_s64(v44, v57));
  v59.i64[0] = 0xFFFF0000FFFFLL;
  v59.i64[1] = 0xFFFF0000FFFFLL;
  v60 = vshlq_u32(v58, vnegq_s32(vandq_s8(v45, v59)));
  v61 = vuzp1q_s16(vzip1q_s32(v58, v60), vzip2q_s32(v58, v60));
  v60.i64[0] = 0xF000F000F000FLL;
  v60.i64[1] = 0xF000F000F000FLL;
  v62.i64[0] = 0x10001000100010;
  v62.i64[1] = 0x10001000100010;
  v63 = vshlq_s16(vshlq_s16(v61, vsubq_s16(v62, v45)), vaddq_s16(v45, v60));
  v403[3] = v63;
  v64 = v398.i8[0] & 3;
  if (v64 == 2)
  {
    if (v379)
    {
      v65 = v14 + 8;
      v66 = v14 + 16;
      if (v379 >= v14 + 8)
      {
        v14 += 8;
      }

      else
      {
        v66 = v14 + 8;
      }

      if (v379 >= v66)
      {
        v14 = v66;
      }

      if (v379 < v65 || v379 < v66)
      {
        v380 = 1;
      }
    }

    else
    {
      v14 += 16;
    }
  }

  v67 = 0uLL;
  v68 = vextq_s8(0, v399, 8uLL);
  v69 = vmovl_u16(*&vpaddq_s16(v68, v68));
  v70 = vpaddq_s32(v69, v69).u64[0];
  v71.i64[0] = v70;
  v71.i64[1] = HIDWORD(v70);
  v72 = v71;
  v73 = vaddvq_s64(v71);
  v74 = v14 + v73;
  if (v379)
  {
    v75 = v379 >= v74;
  }

  else
  {
    v75 = 1;
  }

  v76 = v75;
  if (v73 <= 0x80 && (v76 & 1) != 0)
  {
    v77 = v14 & 0x3F;
    v78 = vaddq_s64(vdupq_n_s64(v77), vzip1q_s64(0, v72));
    v79 = v378;
    v80 = (v378 + 8 * (v14 >> 6));
    v67 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v80, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v78)), vshlq_u64(vdupq_lane_s64(v80->i64[0], 0), vnegq_s64(v78)));
    if (v77 + v73 >= 0x81)
    {
      v67 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v80[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v78)), vshlq_u64(vdupq_laneq_s64(v80[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v78))), v67);
    }

    v81 = v380;
    v14 = v74;
  }

  else
  {
    v81 = 1;
    v79 = v378;
  }

  v82 = vzip1_s32(*v69.i8, *&vextq_s8(v69, v69, 8uLL));
  v83.i64[0] = v82.u32[0];
  v83.i64[1] = v82.u32[1];
  v84 = vshlq_u64(v67, vnegq_s64(v83));
  v85 = vuzp1q_s32(vzip1q_s64(v67, v84), vzip2q_s64(v67, v84));
  v86.i64[0] = 0xFFFF0000FFFFLL;
  v86.i64[1] = 0xFFFF0000FFFFLL;
  v87 = vshlq_u32(v85, vnegq_s32(vandq_s8(v68, v86)));
  v88.i64[0] = 0xF000F000F000FLL;
  v88.i64[1] = 0xF000F000F000FLL;
  v89.i64[0] = 0x10001000100010;
  v89.i64[1] = 0x10001000100010;
  v90 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v85, v87), vzip2q_s32(v85, v87)), vsubq_s16(v89, v68)), vaddq_s16(v68, v88));
  v381 = v90;
  v91 = vmovl_u16(*&vpaddq_s16(v399, v399));
  v85.i64[0] = vpaddq_s32(v91, v91).u64[0];
  v83.i64[0] = v85.u32[0];
  v83.i64[1] = v85.u32[1];
  v92 = v83;
  v93 = vaddvq_s64(v83);
  v94 = v14 + v93;
  if (v379)
  {
    v95 = v379 >= v94;
  }

  else
  {
    v95 = 1;
  }

  v96 = v95;
  v97 = 0uLL;
  if (v93 <= 0x80 && v96)
  {
    v98 = v14 & 0x3F;
    v99 = vaddq_s64(vdupq_n_s64(v98), vzip1q_s64(0, v92));
    v100 = (v79 + 8 * (v14 >> 6));
    v101 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v100, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v99)), vshlq_u64(vdupq_lane_s64(v100->i64[0], 0), vnegq_s64(v99)));
    if (v98 + v93 >= 0x81)
    {
      v101 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v100[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v99)), vshlq_u64(vdupq_laneq_s64(v100[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v99))), v101);
    }
  }

  else
  {
    v81 = 1;
    v94 = v14;
    v101 = 0uLL;
  }

  v102 = vzip1_s32(*v91.i8, *&vextq_s8(v91, v91, 8uLL));
  v103.i64[0] = v102.u32[0];
  v103.i64[1] = v102.u32[1];
  v104 = vnegq_s64(v103);
  v105 = vshlq_u64(v101, v104);
  v106 = vuzp1q_s32(vzip1q_s64(v101, v105), vzip2q_s64(v101, v105));
  v107 = vnegq_s32(vandq_s8(v399, v86));
  v108 = vshlq_u32(v106, v107);
  v109 = vuzp1q_s16(vzip1q_s32(v106, v108), vzip2q_s32(v106, v108));
  v110 = vaddq_s16(v399, v88);
  v111 = vsubq_s16(v89, v399);
  v112 = vshlq_s16(vshlq_s16(v109, v111), v110);
  v382 = v112;
  v113 = v94 + v93;
  if (v379)
  {
    v114 = v379 >= v113;
  }

  else
  {
    v114 = 1;
  }

  v115 = v114;
  if (v93 <= 0x80 && v115)
  {
    v116 = v94 & 0x3F;
    v117 = vaddq_s64(vdupq_n_s64(v116), vzip1q_s64(0, v92));
    v118 = (v79 + 8 * (v94 >> 6));
    v97 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v118, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v117)), vshlq_u64(vdupq_lane_s64(v118->i64[0], 0), vnegq_s64(v117)));
    if (v116 + v93 >= 0x81)
    {
      v97 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v118[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v117)), vshlq_u64(vdupq_laneq_s64(v118[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v117))), v97);
    }
  }

  else
  {
    v81 = 1;
    v113 = v94;
  }

  v119 = vshlq_u64(v97, v104);
  v120 = vuzp1q_s32(vzip1q_s64(v97, v119), vzip2q_s64(v97, v119));
  v121 = vshlq_u32(v120, v107);
  v122 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v120, v121), vzip2q_s32(v120, v121)), v111), v110);
  v383 = v122;
  v123 = v113 + v93;
  if (v379)
  {
    v124 = v379 >= v123;
  }

  else
  {
    v124 = 1;
  }

  v125 = v124;
  v126 = 0uLL;
  if (v93 <= 0x80 && v125)
  {
    v127 = v113 & 0x3F;
    v128 = vaddq_s64(vdupq_n_s64(v127), vzip1q_s64(0, v92));
    v129 = (v79 + 8 * (v113 >> 6));
    v130 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v129, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v128)), vshlq_u64(vdupq_lane_s64(v129->i64[0], 0), vnegq_s64(v128)));
    if (v127 + v93 >= 0x81)
    {
      v130 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v129[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v128)), vshlq_u64(vdupq_laneq_s64(v129[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v128))), v130);
    }
  }

  else
  {
    v81 = 1;
    v123 = v113;
    v130 = 0uLL;
  }

  v131 = vshlq_u64(v130, v104);
  v132 = vuzp1q_s32(vzip1q_s64(v130, v131), vzip2q_s64(v130, v131));
  v133 = vshlq_u32(v132, v107);
  v134 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v132, v133), vzip2q_s32(v132, v133)), v111), v110);
  v384 = v134;
  v135 = vmovl_u16(*&vpaddq_s16(v400, v400));
  v136 = vpaddq_s32(v135, v135).u64[0];
  v137.i64[0] = v136;
  v137.i64[1] = HIDWORD(v136);
  v138 = v137;
  v139 = vaddvq_s64(v137);
  v140 = v139;
  v141 = v123 + v139;
  if (v379)
  {
    v142 = v379 >= v141;
  }

  else
  {
    v142 = 1;
  }

  v143 = v142;
  if (v139 <= 0x80 && v143)
  {
    v144 = v123 & 0x3F;
    v145 = vaddq_s64(vdupq_n_s64(v144), vzip1q_s64(0, v138));
    v146 = (v79 + 8 * (v123 >> 6));
    v126 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v146, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v145)), vshlq_u64(vdupq_lane_s64(v146->i64[0], 0), vnegq_s64(v145)));
    if (v144 + v140 >= 0x81)
    {
      v126 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v146[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v145)), vshlq_u64(vdupq_laneq_s64(v146[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v145))), v126);
    }
  }

  else
  {
    v81 = 1;
    v141 = v123;
  }

  v147 = vzip1_s32(*v135.i8, *&vextq_s8(v135, v135, 8uLL));
  v148.i64[0] = v147.u32[0];
  v148.i64[1] = v147.u32[1];
  v149 = vnegq_s64(v148);
  v150 = vshlq_u64(v126, v149);
  v151 = vuzp1q_s32(vzip1q_s64(v126, v150), vzip2q_s64(v126, v150));
  v152.i64[0] = 0xFFFF0000FFFFLL;
  v152.i64[1] = 0xFFFF0000FFFFLL;
  v153 = vnegq_s32(vandq_s8(v400, v152));
  v154 = vshlq_u32(v151, v153);
  v155 = vuzp1q_s16(vzip1q_s32(v151, v154), vzip2q_s32(v151, v154));
  v154.i64[0] = 0xF000F000F000FLL;
  v154.i64[1] = 0xF000F000F000FLL;
  v156 = vaddq_s16(v400, v154);
  v154.i64[0] = 0x10001000100010;
  v154.i64[1] = 0x10001000100010;
  v157 = vsubq_s16(v154, v400);
  v158 = vshlq_s16(vshlq_s16(v155, v157), v156);
  v385 = v158;
  v159 = v141 + v140;
  if (v379)
  {
    v160 = v379 >= v159;
  }

  else
  {
    v160 = 1;
  }

  v161 = v160;
  v162 = 0uLL;
  if (v140 <= 0x80 && v161)
  {
    v163 = v141 & 0x3F;
    v164 = vaddq_s64(vdupq_n_s64(v163), vzip1q_s64(0, v138));
    v165 = (v79 + 8 * (v141 >> 6));
    v166 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v165, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v164)), vshlq_u64(vdupq_lane_s64(v165->i64[0], 0), vnegq_s64(v164)));
    if (v163 + v140 >= 0x81)
    {
      v166 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v165[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v164)), vshlq_u64(vdupq_laneq_s64(v165[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v164))), v166);
    }
  }

  else
  {
    v81 = 1;
    v159 = v141;
    v166 = 0uLL;
  }

  v167 = vshlq_u64(v166, v149);
  v168 = vuzp1q_s32(vzip1q_s64(v166, v167), vzip2q_s64(v166, v167));
  v169 = vshlq_u32(v168, v153);
  v170 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v168, v169), vzip2q_s32(v168, v169)), v157), v156);
  v386 = v170;
  v171 = v159 + v140;
  if (v379)
  {
    v172 = v379 >= v171;
  }

  else
  {
    v172 = 1;
  }

  v173 = v172;
  if (v140 <= 0x80 && v173)
  {
    v174 = v159 & 0x3F;
    v175 = vaddq_s64(vdupq_n_s64(v174), vzip1q_s64(0, v138));
    v176 = (v79 + 8 * (v159 >> 6));
    v162 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v176, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v175)), vshlq_u64(vdupq_lane_s64(v176->i64[0], 0), vnegq_s64(v175)));
    if (v174 + v140 >= 0x81)
    {
      v162 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v176[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v175)), vshlq_u64(vdupq_laneq_s64(v176[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v175))), v162);
    }
  }

  else
  {
    v81 = 1;
    v171 = v159;
  }

  v177 = vshlq_u64(v162, v149);
  v178 = vuzp1q_s32(vzip1q_s64(v162, v177), vzip2q_s64(v162, v177));
  v179 = vshlq_u32(v178, v153);
  v180 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v178, v179), vzip2q_s32(v178, v179)), v157), v156);
  v387 = v180;
  v181 = v171 + v140;
  if (v379)
  {
    v182 = v379 >= v181;
  }

  else
  {
    v182 = 1;
  }

  v183 = v182;
  v184 = 0uLL;
  if (v140 <= 0x80 && v183)
  {
    v185 = v171 & 0x3F;
    v186 = vaddq_s64(vdupq_n_s64(v185), vzip1q_s64(0, v138));
    v187 = (v79 + 8 * (v171 >> 6));
    v188 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v187, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v186)), vshlq_u64(vdupq_lane_s64(v187->i64[0], 0), vnegq_s64(v186)));
    if (v185 + v140 >= 0x81)
    {
      v188 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v187[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v186)), vshlq_u64(vdupq_laneq_s64(v187[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v186))), v188);
    }
  }

  else
  {
    v81 = 1;
    v181 = v171;
    v188 = 0uLL;
  }

  v189 = vshlq_u64(v188, v149);
  v190 = vuzp1q_s32(vzip1q_s64(v188, v189), vzip2q_s64(v188, v189));
  v191 = vshlq_u32(v190, v153);
  v192 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v190, v191), vzip2q_s32(v190, v191)), v157), v156);
  v388 = v192;
  v193 = vmovl_u16(*&vpaddq_s16(v401, v401));
  v194 = vpaddq_s32(v193, v193).u64[0];
  v195.i64[0] = v194;
  v195.i64[1] = HIDWORD(v194);
  v196 = v195;
  v197 = vaddvq_s64(v195);
  v198 = v197;
  v199 = v181 + v197;
  if (v379)
  {
    v200 = v379 >= v199;
  }

  else
  {
    v200 = 1;
  }

  v201 = v200;
  if (v197 <= 0x80 && v201)
  {
    v202 = v181 & 0x3F;
    v203 = vaddq_s64(vdupq_n_s64(v202), vzip1q_s64(0, v196));
    v204 = (v79 + 8 * (v181 >> 6));
    v184 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v204, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v203)), vshlq_u64(vdupq_lane_s64(v204->i64[0], 0), vnegq_s64(v203)));
    if (v202 + v198 >= 0x81)
    {
      v184 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v204[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v203)), vshlq_u64(vdupq_laneq_s64(v204[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v203))), v184);
    }
  }

  else
  {
    v81 = 1;
    v199 = v181;
  }

  v205 = vzip1_s32(*v193.i8, *&vextq_s8(v193, v193, 8uLL));
  v206.i64[0] = v205.u32[0];
  v206.i64[1] = v205.u32[1];
  v207 = vnegq_s64(v206);
  v208 = vshlq_u64(v184, v207);
  v209 = vuzp1q_s32(vzip1q_s64(v184, v208), vzip2q_s64(v184, v208));
  v210.i64[0] = 0xFFFF0000FFFFLL;
  v210.i64[1] = 0xFFFF0000FFFFLL;
  v211 = vnegq_s32(vandq_s8(v401, v210));
  v212 = vshlq_u32(v209, v211);
  v213 = vuzp1q_s16(vzip1q_s32(v209, v212), vzip2q_s32(v209, v212));
  v212.i64[0] = 0xF000F000F000FLL;
  v212.i64[1] = 0xF000F000F000FLL;
  v214 = vaddq_s16(v401, v212);
  v212.i64[0] = 0x10001000100010;
  v212.i64[1] = 0x10001000100010;
  v215 = vsubq_s16(v212, v401);
  v216 = vshlq_s16(vshlq_s16(v213, v215), v214);
  v389 = v216;
  v217 = v199 + v198;
  if (v379)
  {
    v218 = v379 >= v217;
  }

  else
  {
    v218 = 1;
  }

  v219 = v218;
  v220 = 0uLL;
  if (v198 <= 0x80 && v219)
  {
    v221 = v199 & 0x3F;
    v222 = vaddq_s64(vdupq_n_s64(v221), vzip1q_s64(0, v196));
    v223 = (v79 + 8 * (v199 >> 6));
    v224 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v223, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v222)), vshlq_u64(vdupq_lane_s64(v223->i64[0], 0), vnegq_s64(v222)));
    if (v221 + v198 >= 0x81)
    {
      v224 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v223[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v222)), vshlq_u64(vdupq_laneq_s64(v223[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v222))), v224);
    }
  }

  else
  {
    v81 = 1;
    v217 = v199;
    v224 = 0uLL;
  }

  v225 = vshlq_u64(v224, v207);
  v226 = vuzp1q_s32(vzip1q_s64(v224, v225), vzip2q_s64(v224, v225));
  v227 = vshlq_u32(v226, v211);
  v228 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v226, v227), vzip2q_s32(v226, v227)), v215), v214);
  v390 = v228;
  v229 = v217 + v198;
  if (v379)
  {
    v230 = v379 >= v229;
  }

  else
  {
    v230 = 1;
  }

  v231 = v230;
  if (v198 <= 0x80 && v231)
  {
    v232 = v217 & 0x3F;
    v233 = vaddq_s64(vdupq_n_s64(v232), vzip1q_s64(0, v196));
    v234 = (v79 + 8 * (v217 >> 6));
    v220 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v234, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v233)), vshlq_u64(vdupq_lane_s64(v234->i64[0], 0), vnegq_s64(v233)));
    if (v232 + v198 >= 0x81)
    {
      v220 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v234[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v233)), vshlq_u64(vdupq_laneq_s64(v234[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v233))), v220);
    }
  }

  else
  {
    v81 = 1;
    v229 = v217;
  }

  v235 = vshlq_u64(v220, v207);
  v236 = vuzp1q_s32(vzip1q_s64(v220, v235), vzip2q_s64(v220, v235));
  v237 = vshlq_u32(v236, v211);
  v238 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v236, v237), vzip2q_s32(v236, v237)), v215), v214);
  v391 = v238;
  v239 = v229 + v198;
  if (v379)
  {
    v240 = v379 >= v239;
  }

  else
  {
    v240 = 1;
  }

  v241 = v240;
  v242 = 0uLL;
  if (v198 <= 0x80 && v241)
  {
    v243 = v229 & 0x3F;
    v244 = vaddq_s64(vdupq_n_s64(v243), vzip1q_s64(0, v196));
    v245 = (v79 + 8 * (v229 >> 6));
    v246 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v245, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v244)), vshlq_u64(vdupq_lane_s64(v245->i64[0], 0), vnegq_s64(v244)));
    if (v243 + v198 >= 0x81)
    {
      v246 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v245[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v244)), vshlq_u64(vdupq_laneq_s64(v245[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v244))), v246);
    }
  }

  else
  {
    v81 = 1;
    v239 = v229;
    v246 = 0uLL;
  }

  v247 = vshlq_u64(v246, v207);
  v248 = vuzp1q_s32(vzip1q_s64(v246, v247), vzip2q_s64(v246, v247));
  v249 = vshlq_u32(v248, v211);
  v250 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v248, v249), vzip2q_s32(v248, v249)), v215), v214);
  v392 = v250;
  v251 = vmovl_u16(*&vpaddq_s16(v402, v402));
  v252 = vpaddq_s32(v251, v251).u64[0];
  v253.i64[0] = v252;
  v253.i64[1] = HIDWORD(v252);
  v254 = v253;
  v255 = vaddvq_s64(v253);
  v256 = v255;
  v257 = v239 + v255;
  if (v379)
  {
    v258 = v379 >= v257;
  }

  else
  {
    v258 = 1;
  }

  v259 = v258;
  if (v255 <= 0x80 && v259)
  {
    v260 = v239 & 0x3F;
    v261 = vaddq_s64(vdupq_n_s64(v260), vzip1q_s64(0, v254));
    v262 = (v79 + 8 * (v239 >> 6));
    v242 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v262, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v261)), vshlq_u64(vdupq_lane_s64(v262->i64[0], 0), vnegq_s64(v261)));
    if (v260 + v256 >= 0x81)
    {
      v242 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v262[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v261)), vshlq_u64(vdupq_laneq_s64(v262[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v261))), v242);
    }
  }

  else
  {
    v81 = 1;
    v257 = v239;
  }

  v263 = vzip1_s32(*v251.i8, *&vextq_s8(v251, v251, 8uLL));
  v264.i64[0] = v263.u32[0];
  v264.i64[1] = v263.u32[1];
  v265 = vnegq_s64(v264);
  v266 = vshlq_u64(v242, v265);
  v267 = vuzp1q_s32(vzip1q_s64(v242, v266), vzip2q_s64(v242, v266));
  v266.i64[0] = 0xFFFF0000FFFFLL;
  v266.i64[1] = 0xFFFF0000FFFFLL;
  v268 = vnegq_s32(vandq_s8(v402, v266));
  v269 = vshlq_u32(v267, v268);
  v270 = vuzp1q_s16(vzip1q_s32(v267, v269), vzip2q_s32(v267, v269));
  v267.i64[0] = 0xF000F000F000FLL;
  v267.i64[1] = 0xF000F000F000FLL;
  v271 = vaddq_s16(v402, v267);
  v269.i64[0] = 0x10001000100010;
  v269.i64[1] = 0x10001000100010;
  v272 = vsubq_s16(v269, v402);
  v273 = vshlq_s16(vshlq_s16(v270, v272), v271);
  v393 = v273;
  v274 = v257 + v256;
  if (v379)
  {
    v275 = v379 >= v274;
  }

  else
  {
    v275 = 1;
  }

  v276 = v275;
  v277 = 0uLL;
  if (v256 <= 0x80 && v276)
  {
    v278 = v257 & 0x3F;
    v279 = vaddq_s64(vdupq_n_s64(v278), vzip1q_s64(0, v254));
    v280 = (v79 + 8 * (v257 >> 6));
    v281 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v280, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v279)), vshlq_u64(vdupq_lane_s64(v280->i64[0], 0), vnegq_s64(v279)));
    if (v278 + v256 >= 0x81)
    {
      v281 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v280[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v279)), vshlq_u64(vdupq_laneq_s64(v280[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v279))), v281);
    }
  }

  else
  {
    v81 = 1;
    v274 = v257;
    v281 = 0uLL;
  }

  v282 = vshlq_u64(v281, v265);
  v283 = vuzp1q_s32(vzip1q_s64(v281, v282), vzip2q_s64(v281, v282));
  v284 = vshlq_u32(v283, v268);
  v285 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v283, v284), vzip2q_s32(v283, v284)), v272), v271);
  v394 = v285;
  v286 = v274 + v256;
  if (v379)
  {
    v287 = v379 >= v286;
  }

  else
  {
    v287 = 1;
  }

  v288 = v287;
  if (v256 <= 0x80 && v288)
  {
    v289 = v274 & 0x3F;
    v290 = vaddq_s64(vdupq_n_s64(v289), vzip1q_s64(0, v254));
    v291 = (v79 + 8 * (v274 >> 6));
    v277 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v291, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v290)), vshlq_u64(vdupq_lane_s64(v291->i64[0], 0), vnegq_s64(v290)));
    if (v289 + v256 >= 0x81)
    {
      v277 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v291[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v290)), vshlq_u64(vdupq_laneq_s64(v291[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v290))), v277);
    }
  }

  else
  {
    v81 = 1;
    v286 = v274;
  }

  v292 = vshlq_u64(v277, v265);
  v293 = vuzp1q_s32(vzip1q_s64(v277, v292), vzip2q_s64(v277, v292));
  v294 = vshlq_u32(v293, v268);
  v295 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v293, v294), vzip2q_s32(v293, v294)), v272), v271);
  v395 = v295;
  v296 = v286 + v256;
  if (v379)
  {
    v297 = v379 >= v296;
  }

  else
  {
    v297 = 1;
  }

  v298 = v297;
  if (v256 > 0x80 || !v298)
  {
    goto LABEL_220;
  }

  v299 = vaddq_s64(vdupq_n_s64(v286 & 0x3F), vzip1q_s64(0, v254));
  v300 = (v79 + 8 * (v286 >> 6));
  v301 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v300, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v299)), vshlq_u64(vdupq_lane_s64(v300->i64[0], 0), vnegq_s64(v299)));
  if ((v286 & 0x3F) + v256 >= 0x81)
  {
    v301 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v300[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v299)), vshlq_u64(vdupq_laneq_s64(v300[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v299))), v301);
  }

  if ((v81 & 1) != 0 || v379 + 8 * result - v296 - 1024 >= 9 || v64 == 2)
  {
LABEL_220:
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(a1, a2);
    return 0;
  }

  else
  {
    v302 = vshlq_u64(v301, v265);
    v303 = vuzp1q_s32(vzip1q_s64(v301, v302), vzip2q_s64(v301, v302));
    v304 = vshlq_u32(v303, v268);
    v305 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v303, v304), vzip2q_s32(v303, v304)), v272), v271);
    v306 = vaddq_s16(vandq_s8(v63, v31), v90);
    v307 = vdupq_lane_s64(v63.i64[0], 0);
    v308 = vandq_s8(v31, v307);
    v309 = vsubq_s16(v306, v308);
    v310 = vsubq_s16(v112, v308);
    v311 = vsubq_s16(v122, v308);
    v312 = vsubq_s16(v134, v308);
    v313 = vandq_s8(v30, v307);
    v314 = vsubq_s16(v158, v313);
    v315 = vsubq_s16(v170, v313);
    v316 = vsubq_s16(v180, v313);
    v317 = vsubq_s16(v192, v313);
    v318 = vandq_s8(v29, v307);
    v319 = vsubq_s16(v216, v318);
    v320 = vsubq_s16(v228, v318);
    v321 = vsubq_s16(v238, v318);
    v322 = vsubq_s16(v250, v318);
    v323 = vandq_s8(v28, v307);
    v324 = vsubq_s16(v273, v323);
    v381 = v306;
    v325 = vsubq_s16(v285, v323);
    v326 = vsubq_s16(v295, v323);
    v393 = v324;
    v394 = v325;
    v327 = vsubq_s16(v305, v323);
    v395 = v326;
    v396 = v327;
    v328.i64[0] = 0x1000100010001;
    v328.i64[1] = 0x1000100010001;
    if (vaddvq_s16(vceqq_s16(v10, v328)))
    {
      v329 = vnegq_s16(vandq_s8(v398, v328));
      v330.i64[0] = v312.i64[0];
      v331.i64[1] = v309.i64[1];
      v330.i64[1] = v309.i64[0];
      v331.i64[0] = v312.i64[1];
      v332 = vbslq_s8(v329, v331, v309);
      v333 = vbslq_s8(v329, v330, v312);
      v331.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
      v331.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
      v334 = vandq_s8(vqtbl4q_s8(*(&v310 - 1), v331), v329);
      v405.val[0] = vaddq_s16(v332, vandq_s8(vqtbl4q_s8(*(&v310 - 1), xmmword_29D2F10B0), v329));
      v405.val[1] = vaddq_s16(v310, vandq_s8(vqtbl4q_s8(*(&v310 - 1), xmmword_29D2F10C0), v329));
      v405.val[2] = vaddq_s16(v311, v334);
      v405.val[3] = vaddq_s16(v333, v334);
      v335 = vandq_s8(vqtbl4q_s8(v405, v331), v329);
      v309 = vaddq_s16(v405.val[0], vandq_s8(vqtbl4q_s8(v405, xmmword_29D2F10D0), v329));
      v310 = vaddq_s16(v405.val[1], vandq_s8(vqtbl4q_s8(v405, xmmword_29D2F10E0), v329));
      v381 = v309;
      v382 = v310;
      v311 = vaddq_s16(v405.val[2], v335);
      v312 = vaddq_s16(v405.val[3], v335);
      v404.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v314.i8, xmmword_29D2F10B0), v329), v314);
      v404.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v314.i8, xmmword_29D2F10F0), v329), v315);
      v404.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v314.i8, v331), v329), v316);
      v404.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v314.i8, xmmword_29D2F1100), v329), v317);
      v336 = vandq_s8(vqtbl4q_s8(v404, xmmword_29D2F10D0), v329);
      v337 = vandq_s8(vqtbl4q_s8(v404, v331), v329);
      v314 = vaddq_s16(v336, v404.val[0]);
      v315 = vaddq_s16(v404.val[1], v336);
      v316 = vaddq_s16(v404.val[2], v337);
      v317 = vaddq_s16(v404.val[3], v337);
      v404.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v319.i8, xmmword_29D2F0EB0), v329), v319);
      v404.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v319.i8, xmmword_29D2F0FB0), v329), v320);
      v404.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v319.i8, xmmword_29D2F10B0), v329), v321);
      v404.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v319.i8, xmmword_29D2F10C0), v329), v322);
      v338 = vandq_s8(vqtbl4q_s8(v404, v331), v329);
      v319 = vaddq_s16(v404.val[0], v338);
      v320 = vaddq_s16(v404.val[1], v338);
      v321 = vaddq_s16(v404.val[2], vandq_s8(vqtbl4q_s8(v404, xmmword_29D2F0FE0), v329));
      v322 = vaddq_s16(v404.val[3], vandq_s8(vqtbl4q_s8(v404, xmmword_29D2F1110), v329));
      v405.val[0] = v393;
      v405.val[1] = v394;
      v9 = v398;
      v405.val[2] = v395;
      v405.val[3] = v396;
      v404.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(v405, xmmword_29D2F0EB0), v329), v393);
      v404.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(v405, xmmword_29D2F1120), v329), v394);
      v383 = v311;
      v384 = v312;
      v404.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(v405, xmmword_29D2F10B0), v329), v395);
      v404.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(v405, xmmword_29D2F10C0), v329), v396);
      v339 = vandq_s8(vqtbl4q_s8(v404, v331), v329);
      v324 = vaddq_s16(v404.val[0], v339);
      v325 = vaddq_s16(v404.val[1], v339);
      v326 = vaddq_s16(v404.val[2], vandq_s8(vqtbl4q_s8(v404, xmmword_29D2F0FE0), v329));
      v327 = vaddq_s16(v404.val[3], vandq_s8(vqtbl4q_s8(v404, xmmword_29D2F1130), v329));
    }

    v340 = vaddq_s16(v397, v309);
    v341 = vaddq_s16(v310, v397);
    v342 = vaddq_s16(v311, v397);
    v343 = vaddq_s16(v312, v397);
    v344 = vaddq_s16(v314, v397);
    v345 = vaddq_s16(v315, v397);
    v346 = vaddq_s16(v316, v397);
    v347 = vaddq_s16(v317, v397);
    v348 = vaddq_s16(v319, v397);
    v349 = vaddq_s16(v320, v397);
    v350 = vaddq_s16(v321, v397);
    v351 = vaddq_s16(v322, v397);
    v352 = vaddq_s16(v324, v397);
    v353 = vaddq_s16(v325, v397);
    v354 = vaddq_s16(v326, v397);
    v355 = vaddq_s16(v327, v397);
    v356.i64[0] = 0x10001000100010;
    v356.i64[1] = 0x10001000100010;
    v357 = vceqzq_s16(vandq_s8(v9, v356));
    v358 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v340, xmmword_29D2F1270), v357), v340);
    v359 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v341, xmmword_29D2F1270), v357), v341);
    v360 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v342, xmmword_29D2F1270), v357), v342);
    v361 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v343, xmmword_29D2F1270), v357), v343);
    v362 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v344, xmmword_29D2F1270), v357), v344);
    v363 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v345, xmmword_29D2F1270), v357), v345);
    v364 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v346, xmmword_29D2F1270), v357), v346);
    v365 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v347, xmmword_29D2F1270), v357), v347);
    v366 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v348, xmmword_29D2F1270), v357), v348);
    v367 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v349, xmmword_29D2F1270), v357), v349);
    v368 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v350, xmmword_29D2F1270), v357), v350);
    v369 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v351, xmmword_29D2F1270), v357), v351);
    v370 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v352, xmmword_29D2F1270), v357), v352);
    v371 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v353, xmmword_29D2F1270), v357), v353);
    v351.i64[0] = 0xF8000000F8000000;
    v351.i64[1] = 0xF8000000F8000000;
    v372 = (a1 + a2);
    *a1 = vbslq_s8(v351, vshrn_high_n_s64(vshrn_n_s64(v358, 0x15uLL), v359, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v358, 0xEuLL), v359, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v358, 7uLL), v359, 7uLL), vuzp1q_s32(v358, v359))));
    a1[1] = vbslq_s8(v351, vshrn_high_n_s64(vshrn_n_s64(v362, 0x15uLL), v363, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v362, 0xEuLL), v363, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v362, 7uLL), v363, 7uLL), vuzp1q_s32(v362, v363))));
    v373 = (a1 + 2 * a2);
    v374 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v354, xmmword_29D2F1270), v357), v354);
    v375 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v355, xmmword_29D2F1270), v357), v355);
    *v372 = vbslq_s8(v351, vshrn_high_n_s64(vshrn_n_s64(v360, 0x15uLL), v361, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v360, 0xEuLL), v361, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v360, 7uLL), v361, 7uLL), vuzp1q_s32(v360, v361))));
    v372[1] = vbslq_s8(v351, vshrn_high_n_s64(vshrn_n_s64(v364, 0x15uLL), v365, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v364, 0xEuLL), v365, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v364, 7uLL), v365, 7uLL), vuzp1q_s32(v364, v365))));
    *v373 = vbslq_s8(v351, vshrn_high_n_s64(vshrn_n_s64(v366, 0x15uLL), v367, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v366, 0xEuLL), v367, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v366, 7uLL), v367, 7uLL), vuzp1q_s32(v366, v367))));
    v373[1] = vbslq_s8(v351, vshrn_high_n_s64(vshrn_n_s64(v370, 0x15uLL), v371, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v370, 0xEuLL), v371, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v370, 7uLL), v371, 7uLL), vuzp1q_s32(v370, v371))));
    v376 = (v373 + a2);
    *v376 = vbslq_s8(v351, vshrn_high_n_s64(vshrn_n_s64(v368, 0x15uLL), v369, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v368, 0xEuLL), v369, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v368, 7uLL), v369, 7uLL), vuzp1q_s32(v368, v369))));
    v376[1] = vbslq_s8(v351, vshrn_high_n_s64(vshrn_n_s64(v374, 0x15uLL), v375, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v374, 0xEuLL), v375, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v374, 7uLL), v375, 7uLL), vuzp1q_s32(v374, v375))));
  }

  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(unint64_t a1, char *a2, uint32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = (a3 + 2 * a4);
  v7 = *(a3 + a4);
  v8 = *(&a3[1] + a4);
  v10 = *v6;
  v11 = v6[1];
  v9 = (v6 + a4);
  v12.i64[0] = a3->u32[0];
  v12.i64[1] = HIDWORD(a3->i64[0]);
  v13 = v12;
  v12.i64[0] = a3->i64[1];
  v12.i64[1] = HIDWORD(*a3);
  v14 = vbslq_s8(xmmword_29D2F13A0, v13, 0);
  v15 = vbslq_s8(xmmword_29D2F13A0, v12, 0);
  v12.i64[0] = v7.u32[0];
  v12.i64[1] = v7.u32[1];
  v16 = v12;
  v12.i64[0] = v7.u32[2];
  v12.i64[1] = v7.u32[3];
  v17 = vbslq_s8(xmmword_29D2F13A0, v16, 0);
  v18 = vbslq_s8(xmmword_29D2F13A0, v12, 0);
  v526 = *a3;
  v527 = a3[1];
  v12.i64[0] = v527.u32[0];
  v12.i64[1] = v527.u32[1];
  v19 = v12;
  v12.i64[0] = v527.u32[2];
  v12.i64[1] = v527.u32[3];
  v20 = vbslq_s8(xmmword_29D2F13A0, v19, 0);
  v21 = vbslq_s8(xmmword_29D2F13A0, v12, 0);
  v12.i64[0] = v8.u32[0];
  v12.i64[1] = v8.u32[1];
  v22 = v12;
  v12.i64[0] = v8.u32[2];
  v12.i64[1] = v8.u32[3];
  v23 = vbslq_s8(xmmword_29D2F13A0, v22, 0);
  v24 = vbslq_s8(xmmword_29D2F13A0, v12, 0);
  v12.i64[0] = v10.u32[0];
  v12.i64[1] = v10.u32[1];
  v25 = v12;
  v12.i64[0] = v10.u32[2];
  v12.i64[1] = v10.u32[3];
  v26 = vbslq_s8(xmmword_29D2F13A0, v25, 0);
  v27 = vbslq_s8(xmmword_29D2F13A0, v12, 0);
  v12.i64[0] = v9->u32[0];
  v12.i64[1] = HIDWORD(v9->i64[0]);
  v28 = v12;
  v12.i64[0] = v9->i64[1];
  v12.i64[1] = HIDWORD(*v9);
  v29 = vbslq_s8(xmmword_29D2F13A0, v12, 0);
  v528 = v10;
  v529 = v11;
  v12.i64[0] = v11.u32[0];
  v12.i64[1] = v11.u32[1];
  v30 = vbslq_s8(xmmword_29D2F13A0, v12, 0);
  v12.i64[0] = v11.u32[2];
  v12.i64[1] = v11.u32[3];
  v31 = vbslq_s8(xmmword_29D2F13A0, v12, 0);
  v524 = *v9;
  v525 = v9[1];
  v12.i64[0] = v525.u32[0];
  v12.i64[1] = v525.u32[1];
  v32 = vbslq_s8(xmmword_29D2F13A0, v12, 0);
  v12.i64[0] = v525.u32[2];
  v12.i64[1] = v525.u32[3];
  v33 = vbslq_s8(xmmword_29D2F13B0, vshll_high_n_u32(v7, 7uLL), v18);
  v498 = vshll_n_u32(*v7.i8, 0xEuLL);
  v496 = vshll_high_n_u32(v7, 0xEuLL);
  v517 = vshll_n_u32(*v7.i8, 0x15uLL);
  v512 = vshll_high_n_u32(v7, 0x15uLL);
  v34 = vbslq_s8(xmmword_29D2F13B0, vshll_n_u32(*v8.i8, 7uLL), v23);
  v35 = vbslq_s8(xmmword_29D2F13B0, vshll_high_n_u32(v8, 7uLL), v24);
  v489 = vshll_n_u32(*v8.i8, 0xEuLL);
  v488 = vshll_high_n_u32(v8, 0xEuLL);
  v503 = vshll_n_u32(*v8.i8, 0x15uLL);
  v486 = v7;
  v487 = v8;
  v502 = vshll_high_n_u32(v8, 0x15uLL);
  v36 = vbslq_s8(xmmword_29D2F13B0, vshll_n_u32(*a3->i8, 7uLL), v14);
  v37 = vbslq_s8(xmmword_29D2F13B0, vshll_n_u32(*v7.i8, 7uLL), v17);
  v38 = v10;
  v39 = vbslq_s8(xmmword_29D2F13D0, vshll_n_u32(*a3->i8, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_n_u32(*a3->i8, 0xEuLL), v36));
  v40 = vbslq_s8(xmmword_29D2F13D0, vshll_high_n_u32(*a3, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_high_n_u32(*a3, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_high_n_u32(*a3, 7uLL), v15)));
  v41 = vbslq_s8(xmmword_29D2F13D0, vshll_n_u32(*v527.i8, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_n_u32(*v527.i8, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_n_u32(*v527.i8, 7uLL), v20)));
  v42 = vbslq_s8(xmmword_29D2F13D0, vshll_high_n_u32(v527, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_high_n_u32(v527, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_high_n_u32(v527, 7uLL), v21)));
  v522 = vbslq_s8(xmmword_29D2F13D0, v502, vbslq_s8(xmmword_29D2F13C0, v488, v35));
  v43 = vbslq_s8(xmmword_29D2F13D0, vshll_n_u32(*v38.i8, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_n_u32(*v38.i8, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_n_u32(*v38.i8, 7uLL), v26)));
  v44 = vbslq_s8(xmmword_29D2F13D0, vshll_high_n_u32(v38, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_high_n_u32(v38, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_high_n_u32(v38, 7uLL), v27)));
  v45 = vbslq_s8(xmmword_29D2F13D0, vshll_n_u32(*v9->i8, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_n_u32(*v9->i8, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_n_u32(*v9->i8, 7uLL), vbslq_s8(xmmword_29D2F13A0, v28, 0))));
  v46 = vbslq_s8(xmmword_29D2F13D0, vshll_high_n_u32(*v9, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_high_n_u32(*v9, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_high_n_u32(*v9, 7uLL), v29)));
  v47 = vbslq_s8(xmmword_29D2F13D0, vshll_n_u32(*v11.i8, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_n_u32(*v11.i8, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_n_u32(*v11.i8, 7uLL), v30)));
  v48 = vbslq_s8(xmmword_29D2F13D0, vshll_high_n_u32(v11, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_high_n_u32(v11, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_high_n_u32(v11, 7uLL), v31)));
  v49 = vdupq_lane_s64(v39.i64[0], 0);
  v530 = vshlq_s16(vshlq_s16(vsubq_s16(v39, v49), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v532 = vshlq_s16(vshlq_s16(vsubq_s16(v40, v49), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v521.val[0] = v39;
  v521.val[1] = v40;
  v521.val[2] = vbslq_s8(xmmword_29D2F13D0, v517, vbslq_s8(xmmword_29D2F13C0, v498, v37));
  v521.val[3] = vbslq_s8(xmmword_29D2F13D0, v512, vbslq_s8(xmmword_29D2F13C0, v496, v33));
  v50 = vshlq_s16(vshlq_s16(vsubq_s16(v521.val[2], v49), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v51 = vminq_s16(vminq_s16(v530, v532), v50);
  v534 = v50;
  v536 = vshlq_s16(vshlq_s16(vsubq_s16(v521.val[3], v49), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v52 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v530, v532), v50), v536), xmmword_29D2F1150);
  v53 = vqtbl1q_s8(vminq_s16(v51, v536), xmmword_29D2F1150);
  v54 = vpmaxq_s16(v52, v52);
  v55 = vpminq_s16(v53, v53);
  v56 = vzip1q_s16(v54, v55);
  v53.i64[0] = 0x10001000100010;
  v53.i64[1] = 0x10001000100010;
  v57 = vbicq_s8(vsubq_s16(v53, vclsq_s16(v56)), vceqzq_s16(v56));
  v538 = vshlq_s16(vshlq_s16(vsubq_s16(v41, v49), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v539 = vshlq_s16(vshlq_s16(vsubq_s16(v42, v49), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v506 = v41;
  v508 = v42;
  v509 = vbslq_s8(xmmword_29D2F13D0, v503, vbslq_s8(xmmword_29D2F13C0, v489, v34));
  v58 = vshlq_s16(vshlq_s16(vsubq_s16(v509, v49), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v59 = vminq_s16(vminq_s16(v538, v539), v58);
  v540 = v58;
  v541 = vshlq_s16(vshlq_s16(vsubq_s16(v522, v49), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v41.i64[0] = 0x8000800080008000;
  v41.i64[1] = 0x8000800080008000;
  v60 = vmaxq_s16(v54, v41);
  v41.i64[0] = 0x8000800080008000;
  v41.i64[1] = 0x8000800080008000;
  v61 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v538, v539), v58), v541), xmmword_29D2F1150);
  v62 = vqtbl1q_s8(vminq_s16(v59, v541), xmmword_29D2F1150);
  v63 = vpmaxq_s16(v61, v61);
  v64 = vpminq_s16(v62, v62);
  v65 = vmaxq_s16(v60, v63);
  v66 = vminq_s16(vminq_s16(v55, v41), v64);
  v67 = vzip1q_s16(v63, v64);
  v68 = vbicq_s8(vsubq_s16(v53, vclsq_s16(v67)), vceqzq_s16(v67));
  v542 = vshlq_s16(vshlq_s16(vsubq_s16(v43, v49), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v543 = vshlq_s16(vshlq_s16(vsubq_s16(v44, v49), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v518 = v43;
  v520 = v44;
  v510 = v46;
  v69 = vshlq_s16(vshlq_s16(vsubq_s16(v45, v49), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v70 = vminq_s16(vminq_s16(v542, v543), v69);
  v544 = v69;
  v545 = vshlq_s16(vshlq_s16(vsubq_s16(v46, v49), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v71 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v542, v543), v69), v545), xmmword_29D2F1150);
  v72 = vqtbl1q_s8(vminq_s16(v70, v545), xmmword_29D2F1150);
  v73 = vpmaxq_s16(v71, v71);
  v74 = vpminq_s16(v72, v72);
  v75 = vmaxq_s16(v65, v73);
  v76 = vminq_s16(v66, v74);
  v77 = vzip1q_s16(v73, v74);
  v78 = vbicq_s8(vsubq_s16(v53, vclsq_s16(v77)), vceqzq_s16(v77));
  v546 = vshlq_s16(vshlq_s16(vsubq_s16(v47, v49), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v547 = vshlq_s16(vshlq_s16(vsubq_s16(v48, v49), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v550 = v49;
  v513 = v47;
  v515 = v48;
  v516 = vbslq_s8(xmmword_29D2F13D0, vshll_n_u32(*v525.i8, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_n_u32(*v525.i8, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_n_u32(*v525.i8, 7uLL), v32)));
  v504 = vbslq_s8(xmmword_29D2F13D0, vshll_high_n_u32(v525, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_high_n_u32(v525, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_high_n_u32(v525, 7uLL), vbslq_s8(xmmword_29D2F13A0, v12, 0))));
  v548 = vshlq_s16(vshlq_s16(vsubq_s16(v516, v49), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v549 = vshlq_s16(vshlq_s16(vsubq_s16(v504, v49), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v79 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v546, v547), v548), v549), xmmword_29D2F1150);
  v80 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v546, v547), v548), v549), xmmword_29D2F1150);
  v81 = vpmaxq_s16(v79, v79);
  v82 = vpminq_s16(v80, v80);
  v83 = vmaxq_s16(v75, v81);
  v84 = vminq_s16(v76, v82);
  v85 = vzip1q_s16(v81, v82);
  v86 = vbicq_s8(vsubq_s16(v53, vclsq_s16(v85)), vceqzq_s16(v85));
  v87 = vpmaxq_s16(v57, v57);
  v88 = vpmaxq_s16(v68, v68);
  v89 = vpmaxq_s16(v78, v78);
  v90 = vpmaxq_s16(v86, v86);
  v91 = vmaxq_s16(vmaxq_s16(v87, v88), vmaxq_s16(v89, v90));
  v92 = vclzq_s16(vsubq_s16(v83, v84));
  v40.i64[0] = 0xF000F000F000FLL;
  v40.i64[1] = 0xF000F000F000FLL;
  v37.i64[0] = -1;
  v37.i64[1] = -1;
  v558 = v83;
  v557 = v84;
  v93 = vsubq_s16(vshlq_s16(v37, vsubq_s16(v40, v92)), v84);
  v94 = vsubq_s16(v53, v92);
  v95 = vcgtq_s16(v91, v94);
  v96 = vminq_s16(v94, v91);
  v559 = vandq_s8(v93, v95);
  v53.i64[0] = 0x8000800080008;
  v53.i64[1] = 0x8000800080008;
  v97 = vorrq_s8(vandq_s8(v95, v53), 0);
  v53.i64[0] = 0x3000300030003;
  v53.i64[1] = 0x3000300030003;
  v98 = vorrq_s8(vandq_s8(vceqzq_s16(v96), v53), v97);
  v99 = vmaxq_s16(vminq_s16(vsubq_s16(v96, v88), v53), 0);
  v100 = vmaxq_s16(vminq_s16(vsubq_s16(v96, v89), v53), 0);
  v553 = vsubq_s16(v96, v99);
  v554 = vsubq_s16(v96, v100);
  v101 = vmaxq_s16(vminq_s16(vsubq_s16(v96, v90), v53), 0);
  v555 = vsubq_s16(v96, v101);
  v102 = vaddq_s16(v101, v100);
  v556 = v96;
  v103 = vmaxq_s16(vminq_s16(vsubq_s16(v96, v87), v53), 0);
  v53.i64[0] = 0x4000400040004;
  v53.i64[1] = 0x4000400040004;
  v104 = vorrq_s8(vbicq_s8(v53, vceqq_s16(v102, vnegq_s16(vaddq_s16(v103, v99)))), v98);
  v551 = v104;
  v552 = vsubq_s16(v96, v103);
  if (vmaxvq_s16(v96))
  {
    v105.i64[0] = 0x10001000100010;
    v105.i64[1] = 0x10001000100010;
    v106.i64[0] = 0x3000300030003;
    v106.i64[1] = 0x3000300030003;
    v107 = vshlq_s16(vshlq_s16(vsubq_s16(v530, vqtbl1q_s8(v530, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v108 = vshlq_s16(vshlq_s16(vsubq_s16(v532, vqtbl1q_s8(v532, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v109 = vshlq_s16(vshlq_s16(vsubq_s16(v534, vqtbl1q_s8(v534, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v110 = vshlq_s16(vshlq_s16(vsubq_s16(v536, vqtbl1q_s8(v536, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v111 = vshlq_s16(vshlq_s16(vsubq_s16(v538, vqtbl1q_s8(v538, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v112 = vshlq_s16(vshlq_s16(vsubq_s16(v539, vqtbl1q_s8(v539, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v113 = vshlq_s16(vshlq_s16(vsubq_s16(v540, vqtbl1q_s8(v540, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v114 = vshlq_s16(vshlq_s16(vsubq_s16(v541, vqtbl1q_s8(v541, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v115 = vshlq_s16(vshlq_s16(vsubq_s16(v542, vqtbl1q_s8(v542, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v116 = vshlq_s16(vshlq_s16(vsubq_s16(v543, vqtbl1q_s8(v543, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v117.i64[0] = 0x8000800080008000;
    v117.i64[1] = 0x8000800080008000;
    v118.i64[0] = 0x8000800080008000;
    v118.i64[1] = 0x8000800080008000;
    v119 = vshlq_s16(vshlq_s16(vsubq_s16(v544, vqtbl1q_s8(v544, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v120 = vshlq_s16(vshlq_s16(vsubq_s16(v547, vqtbl1q_s8(v547, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v121 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v107, v108), v109), v110);
    v494 = v107;
    v495 = v108;
    v122 = vminq_s16(v107, v108);
    v123 = vshlq_s16(vshlq_s16(vsubq_s16(v545, vqtbl1q_s8(v545, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v124 = vshlq_s16(vshlq_s16(vsubq_s16(v546, vqtbl1q_s8(v546, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v497 = v110;
    v499 = v109;
    v125 = vminq_s16(vminq_s16(v122, v109), v110);
    v126 = vshlq_s16(vshlq_s16(vsubq_s16(v549, vqtbl1q_s8(v549, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v127 = vqtbl1q_s8(v121, xmmword_29D2F1150);
    v128 = vqtbl1q_s8(v125, xmmword_29D2F1150);
    v129 = vpmaxq_s16(v127, v127);
    v130 = vpminq_s16(v128, v128);
    v131 = vmaxq_s16(v129, v117);
    v132 = vminq_s16(v130, v118);
    v133 = vzip1q_s16(v129, v130);
    v134 = vbicq_s8(vsubq_s16(v105, vclsq_s16(v133)), vceqzq_s16(v133));
    v135 = vpmaxq_s16(v134, v134);
    v136 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v111, v112), v113), v114), xmmword_29D2F1150);
    v137 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v111, v112), v113), v114), xmmword_29D2F1150);
    v138 = vpmaxq_s16(v136, v136);
    v139 = vpminq_s16(v137, v137);
    v140 = vmaxq_s16(v131, v138);
    v141 = vminq_s16(v132, v139);
    v142 = vzip1q_s16(v138, v139);
    v143 = vbicq_s8(vsubq_s16(v105, vclsq_s16(v142)), vceqzq_s16(v142));
    v144 = vpmaxq_s16(v143, v143);
    v145 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v115, v116), v119), v123), xmmword_29D2F1150);
    v146 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v115, v116), v119), v123), xmmword_29D2F1150);
    v147 = vpmaxq_s16(v145, v145);
    v148 = vpminq_s16(v146, v146);
    v149 = vmaxq_s16(v140, v147);
    v150 = vminq_s16(v141, v148);
    v151 = vzip1q_s16(v147, v148);
    v152 = vbicq_s8(vsubq_s16(v105, vclsq_s16(v151)), vceqzq_s16(v151));
    v153 = vpmaxq_s16(v152, v152);
    v490 = vshlq_s16(vshlq_s16(vsubq_s16(v548, vqtbl1q_s8(v548, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v154 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v124, v120), v490), v126), xmmword_29D2F1150);
    v155 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v124, v120), v490), v126), xmmword_29D2F1150);
    v156 = vpmaxq_s16(v154, v154);
    v157 = vpminq_s16(v155, v155);
    v158 = vmaxq_s16(v149, v156);
    v159 = vminq_s16(v150, v157);
    v160 = vzip1q_s16(v156, v157);
    v161 = vbicq_s8(vsubq_s16(v105, vclsq_s16(v160)), vceqzq_s16(v160));
    v162 = vpmaxq_s16(v161, v161);
    v163 = vmaxq_s16(vmaxq_s16(v135, v144), vmaxq_s16(v153, v162));
    v500 = v159;
    v501 = v158;
    v164 = vclzq_s16(vsubq_s16(v158, v159));
    v165 = vsubq_s16(v105, v164);
    v166 = vcgtq_s16(v163, v165);
    v167 = vminq_s16(v165, v163);
    v168 = vmaxq_s16(vminq_s16(vsubq_s16(v167, v135), v106), 0);
    v169 = vmaxq_s16(vminq_s16(vsubq_s16(v167, v144), v106), 0);
    v170 = vmaxq_s16(vminq_s16(vsubq_s16(v167, v153), v106), 0);
    v171 = vmaxq_s16(vminq_s16(vsubq_s16(v167, v162), v106), 0);
    v172.i64[0] = 0x4000400040004;
    v172.i64[1] = 0x4000400040004;
    v173 = vbicq_s8(v172, vceqq_s16(vaddq_s16(v171, v170), vnegq_s16(vaddq_s16(v168, v169))));
    v135.i64[0] = 0x18001800180018;
    v135.i64[1] = 0x18001800180018;
    v174 = v166;
    v175 = vbslq_s8(v166, v135, v105);
    v176 = vsubq_s16(v167, v171);
    v492 = vsubq_s16(v167, v169);
    v493 = vsubq_s16(v167, v170);
    v170.i64[0] = 0x7000700070007;
    v170.i64[1] = 0x7000700070007;
    v491 = vsubq_s16(v167, v168);
    v168.i64[0] = 0x8000800080008;
    v168.i64[1] = 0x8000800080008;
    v177 = vandq_s8(vaddq_s16(v104, v104), v168);
    v178 = vandq_s8(v98, v168);
    v157.i64[0] = 0x2000200020002;
    v157.i64[1] = 0x2000200020002;
    v179 = vandq_s8(vceqq_s16(vandq_s8(v98, v106), v157), v105);
    v180 = vceqzq_s16(v178);
    v181 = v556;
    v182 = vaddq_s16(vaddq_s16(vbicq_s8(v556, v180), v179), v177);
    v184 = v552;
    v183 = v553;
    v186 = v554;
    v185 = v555;
    v187 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vmlaq_s16(v182, v552, v170), vshlq_n_s16(vaddq_s16(vaddq_s16(v554, v553), v555), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v167, vceqzq_s16((*&v175 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v173, v173)), v491, v170), vshlq_n_s16(vaddq_s16(vaddq_s16(v493, v492), v176), 3uLL))).i64[0], 0);
    v188 = vaddvq_s16(v187);
    v190 = a5 < 2 || a6 < 2;
    if (v188)
    {
      v191.i64[0] = 0x3000300030003;
      v191.i64[1] = 0x3000300030003;
      v192 = v176;
      v193 = v119;
      v194 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v167), v191), v175), v173);
      v195.i64[0] = 0xF000F000F000FLL;
      v195.i64[1] = 0xF000F000F000FLL;
      v530 = vbslq_s8(v187, v494, v530);
      v532 = vbslq_s8(v187, v495, v532);
      v191.i64[0] = -1;
      v191.i64[1] = -1;
      v534 = vbslq_s8(v187, v499, v534);
      v536 = vbslq_s8(v187, v497, v536);
      v538 = vbslq_s8(v187, v111, v538);
      v539 = vbslq_s8(v187, v112, v539);
      v540 = vbslq_s8(v187, v113, v540);
      v541 = vbslq_s8(v187, v114, v541);
      v542 = vbslq_s8(v187, v115, v542);
      v543 = vbslq_s8(v187, v116, v543);
      v544 = vbslq_s8(v187, v193, v544);
      v545 = vbslq_s8(v187, v123, v545);
      v546 = vbslq_s8(v187, v124, v546);
      v547 = vbslq_s8(v187, v120, v547);
      v548 = vbslq_s8(v187, v490, v548);
      v549 = vbslq_s8(v187, v126, v549);
      v184 = vbslq_s8(v187, v491, v552);
      v183 = vbslq_s8(v187, v492, v553);
      v552 = v184;
      v553 = v183;
      v186 = vbslq_s8(v187, v493, v554);
      v185 = vbslq_s8(v187, v192, v555);
      v554 = v186;
      v555 = v185;
      v558 = vbslq_s8(v187, v501, v558);
      v559 = vbslq_s8(v187, vandq_s8(vsubq_s16(vshlq_s16(v191, vsubq_s16(v195, v164)), v500), v174), v559);
      v181 = vbslq_s8(v187, v167, v556);
      v557 = vbslq_s8(v187, v500, v557);
      v556 = v181;
      v104 = vbslq_s8(v187, v194, v551);
      v550 = vbslq_s8(v187, vsubq_s16(v550, vqtbl1q_s8(v550, xmmword_29D2F1270)), v550);
      v551 = v104;
    }

    if (!v190)
    {
      v196 = vqtbl4q_s8(v521, xmmword_29D2F1160);
      v197 = vsubq_s16(v521.val[0], vqtbl4q_s8(v521, xmmword_29D2F10B0));
      v198 = vsubq_s16(v521.val[2], v196);
      v199 = vsubq_s16(v521.val[3], v196);
      v561.val[0] = v506;
      v561.val[1] = v508;
      v561.val[2] = v509;
      v561.val[3].i64[0] = v522.i64[0];
      v561.val[3].i64[1] = v521.val[3].i64[1];
      v200 = vsubq_s16(v506, vqtbl4q_s8(v561, xmmword_29D2F10B0));
      v201 = vsubq_s16(v508, vqtbl4q_s8(v561, xmmword_29D2F10F0));
      v202 = vsubq_s16(v509, vqtbl4q_s8(v561, xmmword_29D2F1160));
      v203 = vsubq_s16(v522, vqtbl4q_s8(v561, xmmword_29D2F1100));
      v560.val[0] = v518;
      v560.val[1] = v520;
      v560.val[2] = v45;
      v560.val[3].i64[0] = v510.i64[0];
      v560.val[3].i64[1] = v521.val[3].i64[1];
      v561.val[2] = vqtbl4q_s8(v560, xmmword_29D2F10C0);
      v204 = vsubq_s16(v518, vqtbl4q_s8(v560, xmmword_29D2F1170));
      v561.val[0] = vsubq_s16(v520, vqtbl4q_s8(v560, xmmword_29D2F1180));
      v560.val[0] = vsubq_s16(v45, vqtbl4q_s8(v560, xmmword_29D2F10B0));
      v560.val[1] = v513;
      v560.val[2] = v515;
      v560.val[3] = v516;
      v205 = v504.i64[0];
      v206 = v521.val[3].i64[1];
      v561.val[3].i64[0] = v199.i64[0];
      v561.val[3].i64[1] = v197.i64[0];
      v197.i64[0] = v199.i64[1];
      v207 = vshlq_s16(vsubq_s16(v510, v561.val[2]), xmmword_29D2F13E0);
      v208 = vshlq_s16(vsubq_s16(v513, vqtbl4q_s8(*(&v560 + 16), xmmword_29D2F1170)), xmmword_29D2F13E0);
      v209 = vshlq_s16(vsubq_s16(v515, vqtbl4q_s8(*(&v560 + 16), xmmword_29D2F1120)), xmmword_29D2F13E0);
      v210 = vshlq_s16(vsubq_s16(v516, vqtbl4q_s8(*(&v560 + 16), xmmword_29D2F10B0)), xmmword_29D2F13E0);
      v211 = vshlq_s16(vsubq_s16(v504, vqtbl4q_s8(*(&v560 + 16), xmmword_29D2F10C0)), xmmword_29D2F13E0);
      v212 = vshlq_s16(vshlq_s16(v197, xmmword_29D2F13E0), xmmword_29D2F13F0);
      v213 = vshlq_s16(vshlq_s16(vsubq_s16(v521.val[1], vqtbl4q_s8(v521, xmmword_29D2F10C0)), xmmword_29D2F13E0), xmmword_29D2F13F0);
      v214 = vshlq_s16(vshlq_s16(v198, xmmword_29D2F13E0), xmmword_29D2F13F0);
      v215 = vshlq_s16(vshlq_s16(v561.val[3], xmmword_29D2F13E0), xmmword_29D2F13F0);
      v216 = vshlq_s16(vshlq_s16(v200, xmmword_29D2F13E0), xmmword_29D2F13F0);
      v217 = vshlq_s16(vshlq_s16(v201, xmmword_29D2F13E0), xmmword_29D2F13F0);
      v218 = vshlq_s16(vshlq_s16(v202, xmmword_29D2F13E0), xmmword_29D2F13F0);
      v219 = vshlq_s16(vshlq_s16(v203, xmmword_29D2F13E0), xmmword_29D2F13F0);
      v220 = vshlq_s16(vshlq_s16(v204, xmmword_29D2F13E0), xmmword_29D2F13F0);
      v221 = vshlq_s16(vshlq_s16(v561.val[0], xmmword_29D2F13E0), xmmword_29D2F13F0);
      v222 = vshlq_s16(vshlq_s16(v560.val[0], xmmword_29D2F13E0), xmmword_29D2F13F0);
      v223 = vshlq_s16(v207, xmmword_29D2F13F0);
      v224 = vshlq_s16(v208, xmmword_29D2F13F0);
      v225 = vshlq_s16(v210, xmmword_29D2F13F0);
      v226 = vshlq_s16(v211, xmmword_29D2F13F0);
      v227 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v212, v213), v214), v215), xmmword_29D2F1150);
      v228 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v212, v213), v214), v215), xmmword_29D2F1150);
      v229 = vpmaxq_s16(v227, v227);
      v230 = vpminq_s16(v228, v228);
      v197.i64[0] = 0x8000800080008000;
      v197.i64[1] = 0x8000800080008000;
      v231 = vmaxq_s16(v229, v197);
      v210.i64[0] = 0x8000800080008000;
      v210.i64[1] = 0x8000800080008000;
      v232 = vminq_s16(v230, v210);
      v233 = vzip1q_s16(v229, v230);
      v229.i64[0] = 0x10001000100010;
      v229.i64[1] = 0x10001000100010;
      v234 = vbicq_s8(vsubq_s16(v229, vclsq_s16(v233)), vceqzq_s16(v233));
      v235 = vpmaxq_s16(v234, v234);
      v236 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v216, v217), v218), v219), xmmword_29D2F1150);
      v237 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v216, v217), v218), v219), xmmword_29D2F1150);
      v238 = vpmaxq_s16(v236, v236);
      v239 = vpminq_s16(v237, v237);
      v240 = vmaxq_s16(v231, v238);
      v241 = vminq_s16(v232, v239);
      v242 = vzip1q_s16(v238, v239);
      v243 = vbicq_s8(vsubq_s16(v229, vclsq_s16(v242)), vceqzq_s16(v242));
      v244 = vpmaxq_s16(v243, v243);
      v245 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v220, v221), v222), v223), xmmword_29D2F1150);
      v246 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v220, v221), v222), v223), xmmword_29D2F1150);
      v247 = vpmaxq_s16(v245, v245);
      v248 = vpminq_s16(v246, v246);
      v249 = vmaxq_s16(v240, v247);
      v250 = vminq_s16(v241, v248);
      v251 = vzip1q_s16(v247, v248);
      v252 = vbicq_s8(vsubq_s16(v229, vclsq_s16(v251)), vceqzq_s16(v251));
      v253 = vpmaxq_s16(v252, v252);
      v511 = vshlq_s16(v209, xmmword_29D2F13F0);
      v514 = v224;
      v523 = v225;
      v519 = v226;
      v254 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v224, v511), v225), v226), xmmword_29D2F1150);
      v255 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v224, v511), v225), v226), xmmword_29D2F1150);
      v256 = vpmaxq_s16(v254, v254);
      v257 = vpminq_s16(v255, v255);
      v258 = vmaxq_s16(v249, v256);
      v259 = vminq_s16(v250, v257);
      v260 = vzip1q_s16(v256, v257);
      v261 = vbicq_s8(vsubq_s16(v229, vclsq_s16(v260)), vceqzq_s16(v260));
      v262 = vpmaxq_s16(v261, v261);
      v263 = vmaxq_s16(vmaxq_s16(v235, v244), vmaxq_s16(v253, v262));
      v264 = vclzq_s16(vsubq_s16(v258, v259));
      v265 = vsubq_s16(v229, v264);
      v266 = vcgtq_s16(v263, v265);
      v267 = vminq_s16(v265, v263);
      v268 = vsubq_s16(v267, v235);
      v235.i64[0] = 0x3000300030003;
      v235.i64[1] = 0x3000300030003;
      v269 = vmaxq_s16(vminq_s16(v268, v235), 0);
      v270 = vmaxq_s16(vminq_s16(vsubq_s16(v267, v244), v235), 0);
      v271 = vmaxq_s16(vminq_s16(vsubq_s16(v267, v253), v235), 0);
      v272 = vmaxq_s16(vminq_s16(vsubq_s16(v267, v262), v235), 0);
      v273 = vsubq_s16(v267, v269);
      v274 = vsubq_s16(v267, v270);
      v275 = vsubq_s16(v267, v271);
      v276 = vsubq_s16(v267, v272);
      v262.i64[0] = 0x4000400040004;
      v262.i64[1] = 0x4000400040004;
      v277 = vbicq_s8(v262, vceqq_s16(vaddq_s16(v272, v271), vnegq_s16(vaddq_s16(v269, v270))));
      v271.i64[0] = 0x7000700070007;
      v271.i64[1] = 0x7000700070007;
      v278 = v552;
      v279.i64[0] = 0x2000200020002;
      v279.i64[1] = 0x2000200020002;
      v280 = vandq_s8(vceqq_s16(vandq_s8(v551, v235), v279), v229);
      v229.i64[0] = 0x8000800080008;
      v229.i64[1] = 0x8000800080008;
      v281 = vandq_s8(vaddq_s16(v551, v551), v229);
      v282 = vceqzq_s16(vandq_s8(v551, v229));
      v181 = v556;
      v283 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v556, v282), v281), v280), v552, v271);
      v183 = v553;
      v186 = v554;
      v185 = v555;
      v284 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v283, vshlq_n_s16(vaddq_s16(vaddq_s16(v554, v553), v555), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v267, v266), vaddq_s16(v277, v277)), v273, v271), vshlq_n_s16(vaddq_s16(vaddq_s16(v275, v274), v276), 3uLL))).i64[0], 0);
      if (vaddvq_s16(v284))
      {
        v505 = v258;
        v507 = v276;
        v285.i64[0] = 0x9000900090009;
        v285.i64[1] = 0x9000900090009;
        v286 = vorrq_s8(vandq_s8(vceqzq_s16(v267), v279), vsubq_s16(vandq_s8(v266, v285), vmvnq_s8(v266)));
        v285.i64[0] = -1;
        v285.i64[1] = -1;
        v287 = vorrq_s8(v286, v277);
        v288.i64[0] = 0xF000F000F000FLL;
        v288.i64[1] = 0xF000F000F000FLL;
        v289 = vandq_s8(vsubq_s16(vshlq_s16(v285, vsubq_s16(v288, v264)), v259), v266);
        v290 = vbslq_s8(v284, v213, v532);
        v278 = vbslq_s8(v284, v273, v552);
        v183 = vbslq_s8(v284, v274, v553);
        v186 = vbslq_s8(v284, v275, v554);
        v185 = vbslq_s8(v284, v507, v555);
        v181 = vbslq_s8(v284, v267, v556);
        v104 = vbslq_s8(v284, v287, v551);
        v549 = vbslq_s8(v284, v519, v549);
        v550 = vbslq_s8(v284, vextq_s8(v521.val[3], v521.val[3], 8uLL), v550);
        v530 = vbslq_s8(v284, v212, v530);
        v532 = v290;
        v534 = vbslq_s8(v284, v214, v534);
        v536 = vbslq_s8(v284, v215, v536);
        v538 = vbslq_s8(v284, v216, v538);
        v539 = vbslq_s8(v284, v217, v539);
        v540 = vbslq_s8(v284, v218, v540);
        v541 = vbslq_s8(v284, v219, v541);
        v542 = vbslq_s8(v284, v220, v542);
        v543 = vbslq_s8(v284, v221, v543);
        v544 = vbslq_s8(v284, v222, v544);
        v545 = vbslq_s8(v284, v223, v545);
        v546 = vbslq_s8(v284, v514, v546);
        v547 = vbslq_s8(v284, v511, v547);
        v548 = vbslq_s8(v284, v523, v548);
        v557 = vbslq_s8(v284, v259, v557);
        v558 = vbslq_s8(v284, v505, v558);
        v559 = vbslq_s8(v284, v289, v559);
        v552 = v278;
        v553 = v183;
        v554 = v186;
        v555 = v185;
        v556 = v181;
        v551 = v104;
      }

      else
      {
        v104 = v551;
      }

      v184 = v278;
    }

    v293 = vandq_s8(v559, vceqq_s16(v181, v184));
    v531 = vaddq_s16(v293, v530);
    v533 = vaddq_s16(v532, v293);
    v535 = vaddq_s16(v534, v293);
    v537 = vaddq_s16(v536, v293);
    v294 = vandq_s8(v559, vceqq_s16(v181, v183));
    v538 = vaddq_s16(v538, v294);
    v539 = vaddq_s16(v539, v294);
    v540 = vaddq_s16(v540, v294);
    v541 = vaddq_s16(v541, v294);
    v295 = vandq_s8(v559, vceqq_s16(v181, v186));
    v542 = vaddq_s16(v542, v295);
    v543 = vaddq_s16(v543, v295);
    v544 = vaddq_s16(v544, v295);
    v545 = vaddq_s16(v545, v295);
    v296 = vandq_s8(v559, vceqq_s16(v181, v185));
    v546 = vaddq_s16(v546, v296);
    v547 = vaddq_s16(v547, v296);
    v548 = vaddq_s16(v548, v296);
    v549 = vaddq_s16(v549, v296);
    v296.i64[0] = 0x8000800080008;
    v296.i64[1] = 0x8000800080008;
    v297.i64[0] = 0x3000300030003;
    v297.i64[1] = 0x3000300030003;
    v298.i64[0] = 0x2000200020002;
    v298.i64[1] = 0x2000200020002;
    v299 = vceqq_s16(vandq_s8(v104, v297), v298);
    v298.i64[0] = 0x10001000100010;
    v298.i64[1] = 0x10001000100010;
    v300 = vandq_s8(v299, v298);
    v298.i64[0] = 0x7000700070007;
    v298.i64[1] = 0x7000700070007;
    v301 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v181, vceqzq_s16(vandq_s8(v104, v296))), vandq_s8(vaddq_s16(v104, v104), v296)), v300), v184, v298), vshlq_n_s16(vaddq_s16(vaddq_s16(v186, v183), v185), 3uLL));
    v302 = vpaddq_s16(v301, v301);
    if ((vpaddq_s16(v302, v302).i16[0] + 75) > 0x3FF)
    {
      *a1 = v526;
      *(a1 + 16) = v486;
      *(a1 + 32) = v527;
      *(a1 + 48) = v487;
      *(a1 + 64) = v528;
      *(a1 + 80) = v524;
      v306 = (a1 + 96);
      v291 = 127;
      result = 128;
      *v306 = v529;
      v306[1] = v525;
    }

    else
    {
      v303 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v304 = 8 * (a1 & 7);
      if (v304)
      {
        v305 = *v303 & ~(-1 << v304);
      }

      else
      {
        v305 = 0;
      }

      *a2 = 0;
      v307 = v550.i64[0];
      if (v181.i16[0])
      {
        v308 = ((v181.i8[0] - 1) & 0xF) << 20;
      }

      else
      {
        v308 = 0;
      }

      if (v181.i16[1])
      {
        v309 = ((v181.i8[2] - 1) & 0xF) << 24;
      }

      else
      {
        v309 = 0;
      }

      if (v181.i16[2])
      {
        v310 = (v181.u16[2] << 28) - 0x10000000;
      }

      else
      {
        v310 = 0;
      }

      if (v181.i16[3])
      {
        v311 = ((v181.i8[6] - 1) & 7) << 32;
      }

      else
      {
        v311 = 0;
      }

      v312 = (v104.i8[0] & 0x1F | (32 * (v104.i8[2] & 0x1F)) & 0x83FF | ((v104.i8[4] & 0x1F) << 10) | ((v104.i8[6] & 0x1F) << 15) | v308 | v309 | v310) + v311;
      v313 = (v312 << v304) | v305;
      if (v304 >= 0x1C)
      {
        *v303 = v313;
        v313 = v312 >> (-8 * (a1 & 7u));
      }

      v314 = v307 & 0x1FF | ((WORD1(v307) & 0x1FF) << 9) | ((WORD2(v307) & 0x1FF) << 18) | ((BYTE6(v307) & 0x1F) << 27);
      v315 = (v304 + 36) & 0x3C;
      v316 = v313 | (v314 << v315);
      if (v315 >= 0x20)
      {
        *(v303 + (((v304 + 36) >> 3) & 8)) = v316;
        v316 = v314 >> -v315;
      }

      v317 = vsubq_s16(v556, v552);
      v318 = vsubq_s16(v556, v553);
      v319 = vsubq_s16(v556, v554);
      v320 = vsubq_s16(v556, v555);
      *v317.i8 = vqmovn_u16(v317);
      *v318.i8 = vqmovn_u16(v318);
      *v319.i8 = vqmovn_u16(v319);
      *v320.i8 = vqmovn_u16(v320);
      v321 = vtrn1q_s8(v317, v318);
      v322 = vtrn2q_s8(v317, v318);
      v323 = vtrn1q_s8(v319, v320);
      v324 = vtrn2q_s8(v319, v320);
      v325 = vzip1q_s16(v322, v324);
      v326 = vtrn2q_s16(v322, v324);
      v322.i64[0] = vzip1q_s32(vzip1q_s16(v321, v323), v325).u64[0];
      v326.i64[0] = vzip1q_s32(vtrn2q_s16(v321, v323), v326).u64[0];
      v319.i64[0] = 0x202020202020202;
      v319.i64[1] = 0x202020202020202;
      v327 = vandq_s8(vmovl_s16(vtst_s16(*v551.i8, 0x4000400040004)), v319);
      v319.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v319.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v321.i64[0] = -1;
      v321.i64[1] = -1;
      v328 = vshlq_u8(v321, vorrq_s8(v327, v319));
      v329 = vmovl_u8(vand_s8(*v328.i8, *v322.i8));
      v330 = vmovl_u8(vand_s8(*&vextq_s8(v328, v328, 8uLL), *v326.i8));
      v331 = vmovl_u8(*v327.i8);
      v332 = vmovl_high_u8(v327);
      v333 = vpaddq_s16(vshlq_u16(v329, vtrn1q_s16(0, v331)), vshlq_u16(v330, vtrn1q_s16(0, v332)));
      v334 = vpaddq_s16(v331, v332);
      v335 = vmovl_u16(*v334.i8);
      v336 = vmovl_high_u16(v334);
      v337 = vpaddq_s32(vshlq_u32(vmovl_u16(*v333.i8), vtrn1q_s32(0, v335)), vshlq_u32(vmovl_high_u16(v333), vtrn1q_s32(0, v336)));
      v338 = vpaddq_s32(v335, v336);
      v339.i64[0] = v337.u32[0];
      v339.i64[1] = v337.u32[1];
      v340 = v339;
      v339.i64[0] = v337.u32[2];
      v339.i64[1] = v337.u32[3];
      v341 = v339;
      v339.i64[0] = v338.u32[0];
      v339.i64[1] = v338.u32[1];
      v342 = v339;
      v339.i64[0] = v338.u32[2];
      v339.i64[1] = v338.u32[3];
      v343 = vpaddq_s64(vshlq_u64(v340, vzip1q_s64(0, v342)), vshlq_u64(v341, vzip1q_s64(0, v339)));
      v344 = vpaddq_s64(v342, v339);
      v345 = (v343.i64[0] << (v304 | 4u)) | v316;
      if (v344.i64[0] + (v304 | 4) >= 0x40)
      {
        v303[1] = v345;
        v345 = v343.i64[0] >> -(v304 | 4);
      }

      v346 = v344.i64[0] + (v304 | 0x44);
      v347 = v345 | (v343.i64[1] << v346);
      if ((v346 & 0x3F) + v344.i64[1] >= 0x40)
      {
        *(v303 + ((v346 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v347;
        v347 = v343.i64[1] >> -(v346 & 0x3F);
        if ((v346 & 0x3F) == 0)
        {
          v347 = 0;
        }
      }

      v348 = v346 + v344.i64[1];
      v349.i64[0] = 0x8000800080008;
      v349.i64[1] = 0x8000800080008;
      v350.i64[0] = -1;
      v350.i64[1] = -1;
      v351 = vandq_s8(vextq_s8(vtstq_s16(v551, v349), 0, 8uLL), v556);
      v352.i64[0] = 0xF000F000F000FLL;
      v352.i64[1] = 0xF000F000F000FLL;
      v353 = vandq_s8(vshlq_u16(v350, vaddq_s16(v351, v352)), v559);
      v354 = vmovl_u16(*v351.i8);
      v355 = vpaddq_s32(vshlq_u32(vmovl_u16(*v353.i8), vtrn1q_s32(0, v354)), vmovl_high_u16(v353));
      v356 = vpaddq_s32(v354, vmovl_high_u16(v351));
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
      v363 = (v361.i64[0] << v348) | v347;
      if (v362.i64[0] + (v348 & 0x3F) >= 0x40)
      {
        *(v303 + ((v348 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v363;
        v363 = v361.i64[0] >> -(v348 & 0x3F);
        if ((v348 & 0x3F) == 0)
        {
          v363 = 0;
        }
      }

      v364 = v362.i64[0] + v348;
      v365 = v363 | (v361.i64[1] << v364);
      if ((v364 & 0x3F) + v362.i64[1] >= 0x40)
      {
        *(v303 + ((v364 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
        v365 = v361.i64[1] >> -(v364 & 0x3F);
        if ((v364 & 0x3F) == 0)
        {
          v365 = 0;
        }
      }

      v366 = v364 + v362.i64[1];
      v367 = vextq_s8(0, v552, 8uLL);
      v368.i64[0] = 0xF000F000F000FLL;
      v368.i64[1] = 0xF000F000F000FLL;
      v369.i64[0] = -1;
      v369.i64[1] = -1;
      v370 = vandq_s8(vshlq_u16(v369, vaddq_s16(v367, v368)), v531);
      v371 = vmovl_u16(*v367.i8);
      v372 = vmovl_high_u16(v367);
      v373 = vpaddq_s32(vmovl_u16(*v370.i8), vshlq_u32(vmovl_high_u16(v370), vtrn1q_s32(0, v372)));
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
      v381 = (v379.i64[0] << v366) | v365;
      if (v380.i64[0] + (v366 & 0x3F) >= 0x40)
      {
        *(v303 + ((v366 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v381;
        v381 = v379.i64[0] >> -(v366 & 0x3F);
        if ((v366 & 0x3F) == 0)
        {
          v381 = 0;
        }
      }

      v382 = v380.i64[0] + v366;
      v383 = v381 | (v379.i64[1] << v382);
      if ((v382 & 0x3F) + v380.i64[1] >= 0x40)
      {
        *(v303 + ((v382 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v383;
        v383 = v379.i64[1] >> -(v382 & 0x3F);
        if ((v382 & 0x3F) == 0)
        {
          v383 = 0;
        }
      }

      v384 = v382 + v380.i64[1];
      v385.i64[0] = 0xF000F000F000FLL;
      v385.i64[1] = 0xF000F000F000FLL;
      v386.i64[0] = -1;
      v386.i64[1] = -1;
      v387 = vandq_s8(vshlq_u16(v386, vaddq_s16(v552, v385)), v533);
      v388 = vmovl_u16(*v552.i8);
      v389 = vmovl_high_u16(v552);
      v390 = vpaddq_s32(vshlq_u32(vmovl_u16(*v387.i8), vtrn1q_s32(0, v388)), vshlq_u32(vmovl_high_u16(v387), vtrn1q_s32(0, v389)));
      v391 = vpaddq_s32(v388, v389);
      v392.i64[0] = v390.u32[0];
      v392.i64[1] = v390.u32[1];
      v393 = v392;
      v392.i64[0] = v390.u32[2];
      v392.i64[1] = v390.u32[3];
      v394 = v392;
      v392.i64[0] = v391.u32[0];
      v392.i64[1] = v391.u32[1];
      v395 = v392;
      v392.i64[0] = v391.u32[2];
      v392.i64[1] = v391.u32[3];
      v396 = vpaddq_s64(vshlq_u64(v393, vzip1q_s64(0, v395)), vshlq_u64(v394, vzip1q_s64(0, v392)));
      v397 = vpaddq_s64(v395, v392);
      v398 = (v396.i64[0] << v384) | v383;
      if (v397.i64[0] + (v384 & 0x3F) >= 0x40)
      {
        *(v303 + ((v384 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v398;
        v398 = v396.i64[0] >> -(v384 & 0x3F);
        if ((v384 & 0x3F) == 0)
        {
          v398 = 0;
        }
      }

      v399 = v397.i64[0] + v384;
      v400 = v398 | (v396.i64[1] << v399);
      if ((v399 & 0x3F) + v397.i64[1] >= 0x40)
      {
        *(v303 + ((v399 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v400;
        v400 = v396.i64[1] >> -(v399 & 0x3F);
        if ((v399 & 0x3F) == 0)
        {
          v400 = 0;
        }
      }

      v401 = v399 + v397.i64[1];
      v402.i64[0] = 0xF000F000F000FLL;
      v402.i64[1] = 0xF000F000F000FLL;
      v403.i64[0] = -1;
      v403.i64[1] = -1;
      v404 = vandq_s8(vshlq_u16(v403, vaddq_s16(v552, v402)), v535);
      v405 = vmovl_u16(*v552.i8);
      v406 = vmovl_high_u16(v552);
      v407 = vpaddq_s32(vshlq_u32(vmovl_u16(*v404.i8), vtrn1q_s32(0, v405)), vshlq_u32(vmovl_high_u16(v404), vtrn1q_s32(0, v406)));
      v408 = vpaddq_s32(v405, v406);
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
      v413 = vpaddq_s64(vshlq_u64(v410, vzip1q_s64(0, v412)), vshlq_u64(v411, vzip1q_s64(0, v409)));
      v414 = vpaddq_s64(v412, v409);
      v415 = (v413.i64[0] << v401) | v400;
      if (v414.i64[0] + (v401 & 0x3F) >= 0x40)
      {
        *(v303 + ((v401 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v415;
        v415 = v413.i64[0] >> -(v401 & 0x3F);
        if ((v401 & 0x3F) == 0)
        {
          v415 = 0;
        }
      }

      v416 = v414.i64[0] + v401;
      v417 = v415 | (v413.i64[1] << v416);
      if ((v416 & 0x3F) + v414.i64[1] >= 0x40)
      {
        *(v303 + ((v416 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v417;
        v417 = v413.i64[1] >> -(v416 & 0x3F);
        if ((v416 & 0x3F) == 0)
        {
          v417 = 0;
        }
      }

      v418 = v416 + v414.i64[1];
      v419.i64[0] = 0xF000F000F000FLL;
      v419.i64[1] = 0xF000F000F000FLL;
      v420.i64[0] = -1;
      v420.i64[1] = -1;
      v421 = vandq_s8(vshlq_u16(v420, vaddq_s16(v552, v419)), v537);
      v422 = vmovl_u16(*v552.i8);
      v423 = vmovl_high_u16(v552);
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
      v432 = (v430.i64[0] << v418) | v417;
      if (v431.i64[0] + (v418 & 0x3F) >= 0x40)
      {
        *(v303 + ((v418 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v432;
        v432 = v430.i64[0] >> -(v418 & 0x3F);
        if ((v418 & 0x3F) == 0)
        {
          v432 = 0;
        }
      }

      v433 = v431.i64[1];
      v434 = v431.i64[0] + v418;
      v435 = (v431.i64[0] + v418) & 0x3F;
      v436 = v432 | (v430.i64[1] << v434);
      if ((v435 + v431.i64[1]) >= 0x40)
      {
        *(v303 + ((v434 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v436;
        v436 = v430.i64[1] >> -v435;
        if (!v435)
        {
          v436 = 0;
        }
      }

      v437 = 0;
      v438.i64[0] = 0xF000F000F000FLL;
      v438.i64[1] = 0xF000F000F000FLL;
      v439.i64[0] = -1;
      v439.i64[1] = -1;
      v440 = v434 + v433;
      do
      {
        v441 = vandq_s8(vshlq_u16(v439, vaddq_s16(v553, v438)), *(&v538 + v437));
        v442 = vmovl_u16(*v553.i8);
        v443 = vmovl_high_u16(v553);
        v444 = vpaddq_s32(vshlq_u32(vmovl_u16(*v441.i8), vtrn1q_s32(0, v442)), vshlq_u32(vmovl_high_u16(v441), vtrn1q_s32(0, v443)));
        v445 = vpaddq_s32(v442, v443);
        v446.i64[0] = v444.u32[0];
        v446.i64[1] = v444.u32[1];
        v447 = v446;
        v446.i64[0] = v444.u32[2];
        v446.i64[1] = v444.u32[3];
        v448 = v446;
        v446.i64[0] = v445.u32[0];
        v446.i64[1] = v445.u32[1];
        v449 = v446;
        v446.i64[0] = v445.u32[2];
        v446.i64[1] = v445.u32[3];
        v450 = vpaddq_s64(vshlq_u64(v447, vzip1q_s64(0, v449)), vshlq_u64(v448, vzip1q_s64(0, v446)));
        v451 = vpaddq_s64(v449, v446);
        v452 = (v450.i64[0] << v440) | v436;
        if (v451.i64[0] + (v440 & 0x3F) >= 0x40)
        {
          *(v303 + ((v440 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v452;
          v452 = v450.i64[0] >> -(v440 & 0x3F);
          if ((v440 & 0x3F) == 0)
          {
            v452 = 0;
          }
        }

        v453 = v451.i64[0] + v440;
        v436 = v452 | (v450.i64[1] << v453);
        if ((v453 & 0x3F) + v451.i64[1] >= 0x40)
        {
          *(v303 + ((v453 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v436;
          v436 = v450.i64[1] >> -(v453 & 0x3F);
          if ((v453 & 0x3F) == 0)
          {
            v436 = 0;
          }
        }

        v440 = v453 + v451.i64[1];
        v437 += 16;
      }

      while (v437 != 64);
      v454 = 0;
      v455.i64[0] = 0xF000F000F000FLL;
      v455.i64[1] = 0xF000F000F000FLL;
      v456.i64[0] = -1;
      v456.i64[1] = -1;
      do
      {
        v457 = vandq_s8(vshlq_u16(v456, vaddq_s16(v554, v455)), *(&v542 + v454));
        v458 = vmovl_u16(*v554.i8);
        v459 = vmovl_high_u16(v554);
        v460 = vpaddq_s32(vshlq_u32(vmovl_u16(*v457.i8), vtrn1q_s32(0, v458)), vshlq_u32(vmovl_high_u16(v457), vtrn1q_s32(0, v459)));
        v461 = vpaddq_s32(v458, v459);
        v462.i64[0] = v460.u32[0];
        v462.i64[1] = v460.u32[1];
        v463 = v462;
        v462.i64[0] = v460.u32[2];
        v462.i64[1] = v460.u32[3];
        v464 = v462;
        v462.i64[0] = v461.u32[0];
        v462.i64[1] = v461.u32[1];
        v465 = v462;
        v462.i64[0] = v461.u32[2];
        v462.i64[1] = v461.u32[3];
        v466 = vpaddq_s64(vshlq_u64(v463, vzip1q_s64(0, v465)), vshlq_u64(v464, vzip1q_s64(0, v462)));
        v467 = vpaddq_s64(v465, v462);
        v468 = (v466.i64[0] << v440) | v436;
        if (v467.i64[0] + (v440 & 0x3F) >= 0x40)
        {
          *(v303 + ((v440 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v468;
          v468 = v466.i64[0] >> -(v440 & 0x3F);
          if ((v440 & 0x3F) == 0)
          {
            v468 = 0;
          }
        }

        v469 = v467.i64[0] + v440;
        v436 = v468 | (v466.i64[1] << v469);
        if ((v469 & 0x3F) + v467.i64[1] >= 0x40)
        {
          *(v303 + ((v469 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v436;
          v436 = v466.i64[1] >> -(v469 & 0x3F);
          if ((v469 & 0x3F) == 0)
          {
            v436 = 0;
          }
        }

        v440 = v469 + v467.i64[1];
        v454 += 16;
      }

      while (v454 != 64);
      v470 = 0;
      v471.i64[0] = 0xF000F000F000FLL;
      v471.i64[1] = 0xF000F000F000FLL;
      v472.i64[0] = -1;
      v472.i64[1] = -1;
      do
      {
        v473 = vandq_s8(vshlq_u16(v472, vaddq_s16(v555, v471)), *(&v546 + v470));
        v474 = vmovl_u16(*v555.i8);
        v475 = vmovl_high_u16(v555);
        v476 = vpaddq_s32(vshlq_u32(vmovl_u16(*v473.i8), vtrn1q_s32(0, v474)), vshlq_u32(vmovl_high_u16(v473), vtrn1q_s32(0, v475)));
        v477 = vpaddq_s32(v474, v475);
        v478.i64[0] = v476.u32[0];
        v478.i64[1] = v476.u32[1];
        v479 = v478;
        v478.i64[0] = v476.u32[2];
        v478.i64[1] = v476.u32[3];
        v480 = v478;
        v478.i64[0] = v477.u32[0];
        v478.i64[1] = v477.u32[1];
        v481 = v478;
        v478.i64[0] = v477.u32[2];
        v478.i64[1] = v477.u32[3];
        v482 = vpaddq_s64(vshlq_u64(v479, vzip1q_s64(0, v481)), vshlq_u64(v480, vzip1q_s64(0, v478)));
        v483 = vpaddq_s64(v481, v478);
        v484 = (v482.i64[0] << v440) | v436;
        if (v483.i64[0] + (v440 & 0x3F) >= 0x40)
        {
          *(v303 + ((v440 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v484;
          v484 = v482.i64[0] >> -(v440 & 0x3F);
          if ((v440 & 0x3F) == 0)
          {
            v484 = 0;
          }
        }

        v485 = v483.i64[0] + v440;
        v436 = v484 | (v482.i64[1] << v485);
        if ((v485 & 0x3F) + v483.i64[1] >= 0x40)
        {
          *(v303 + ((v485 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v436;
          v436 = v482.i64[1] >> -(v485 & 0x3F);
          if ((v485 & 0x3F) == 0)
          {
            v436 = 0;
          }
        }

        v440 = v485 + v483.i64[1];
        v470 += 16;
      }

      while (v470 != 64);
      if ((v440 & 0x3F) != 0)
      {
        *(v303 + ((v440 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v436;
      }

      result = (v440 - v304 + 7) >> 3;
      v291 = *a2 | (result - 1);
    }
  }

  else
  {
    *a1 = a3->i32[0];
    v291 = 3;
    result = 4;
  }

  *a2 = v291;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 2, a2, v14, v13);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, (v11 + v15), a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v15 + 32), a2, v20, v19);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 4, a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 6, a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + v15 + 64), a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + v15 + 96), a2, v30, v29);
}

void *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(void *result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 8 * (&v23 & 7);
  v5 = 9;
  v6 = v4;
  do
  {
    v7 = 64 - v6;
    if (64 - v6 >= v5)
    {
      v7 = v5;
    }

    *&v22[8 * v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v3) & ~(-1 << v7)) << v6;
    v3 += v7;
    v8 = v7 + v6;
    v2 += v8 >> 6;
    v6 = v8 & 0x3F;
    v5 -= v7;
  }

  while (v5);
  v9 = v6 - v4 + (v2 << 6);
  if (v9 - 24 >= 0xFFFFFFFFFFFFFFDFLL)
  {
    v10 = 9;
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
    if (v9 - 24 >= 0xFFFFFFFFFFFFFFDFLL)
    {
      v13 = 0;
      v14 = 9;
      do
      {
        v15 = 64 - v6;
        if (64 - v6 >= v14)
        {
          v15 = v14;
        }

        *&v22[8 * v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v13) & ~(-1 << v15)) << v6;
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

  if (v9 - 28 >= 0xFFFFFFFFFFFFFFDFLL)
  {
    v17 = 0;
    v18 = 5;
    do
    {
      v19 = 64 - v6;
      if (64 - v6 >= v18)
      {
        v19 = v18;
      }

      *&v22[8 * v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v17) & ~(-1 << v19)) << v6;
      v17 += v19;
      v20 = v19 + v6;
      v2 += v20 >> 6;
      v6 = v20 & 0x3F;
      v18 -= v19;
    }

    while (v18);
  }

  v21 = (result + a2);
  *result = 0;
  result[1] = 0;
  *v21 = 0;
  v21[1] = 0;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(float32x4_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 == 127)
  {
    v19 = *(a3 + 16);
    v20 = *(a3 + 32);
    v21 = *(a3 + 48);
    v22 = *(a3 + 64);
    v23 = *(a3 + 80);
    v24 = *(a3 + 96);
    v25 = *(a3 + 112);
    f32 = a1[2].f32;
    *a1 = *a3;
    a1[1] = v19;
    v27 = (a1->f32 + a2);
    *f32 = v22;
    f32[1] = v23;
    *v27 = v20;
    v27[1] = v21;
    v27 += 2;
    *v27 = v24;
    v27[1] = v25;
    return 128;
  }

  else if (a4 == 3)
  {
    v17 = vld1q_dup_f32(a3);
    *a1 = v17;
    a1[1] = v17;
    a1[2] = v17;
    a1[3] = v17;
    v18 = (a1 + a2);
    *v18 = v17;
    v18[1] = v17;
    v18[2] = v17;
    v18[3] = v17;
    return 4;
  }

  else if (a4)
  {
    v428 = v13;
    v429 = v12;
    v430 = v11;
    v431 = v10;
    v432 = v9;
    v433 = v8;
    v434 = v7;
    v435 = v6;
    v436 = v4;
    v437 = v5;
    v404 = 0;
    v403 = (8 * (a3 & 7)) | 0x400;
    v401 = 8 * (a3 & 7);
    v402 = a3 & 0xFFFFFFFFFFFFFFF8;
    result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)14,AGX::AppleCompressionGen2::Vec<short>>(&v422, v427, &v421, &v401, a4);
    v31.i64[0] = 0x3000300030003;
    v31.i64[1] = 0x3000300030003;
    v32 = v422;
    v33 = vandq_s8(v422, v31);
    v34 = vbicq_s8(v427[0], vceqq_s16(v33, v31));
    v427[0] = v34;
    v423 = v34;
    v424 = v34;
    v425 = v34;
    v426 = v34;
    v35.i64[0] = 0x202020202020202;
    v35.i64[1] = 0x202020202020202;
    v36 = vandq_s8(vmovl_s16(vtst_s16(*v422.i8, 0x4000400040004)), v35);
    v37 = v401;
    if (vmaxvq_s8(v36) < 1)
    {
      v53.i64[0] = -1;
      v53.i64[1] = -1;
      v54.i64[0] = -1;
      v54.i64[1] = -1;
      v55.i64[0] = -1;
      v55.i64[1] = -1;
      v56.i64[0] = -1;
      v56.i64[1] = -1;
      v48 = a1;
      v49 = a2;
    }

    else
    {
      v38 = vmovl_u8(*&vpaddq_s8(v36, v36));
      v39 = vmovl_u16(*&vpaddq_s16(v38, v38));
      v40 = vpaddq_s32(v39, v39).u64[0];
      v41.i64[0] = v40;
      v41.i64[1] = HIDWORD(v40);
      v42 = v41;
      v43 = vaddvq_s64(v41);
      v44 = v43;
      v45 = v401 + v43;
      if (v403)
      {
        v46 = v403 >= v45;
      }

      else
      {
        v46 = 1;
      }

      v47 = v46;
      v48 = a1;
      v49 = a2;
      if (v43 <= 0x80 && (v47 & 1) != 0)
      {
        v30.i64[0] = 63;
        v50 = (v402 + 8 * (v401 >> 6));
        v51 = vaddq_s64(vdupq_lane_s64(vandq_s8(v401, v30).i64[0], 0), vzip1q_s64(0, v42));
        v52 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v50, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v51)), vshlq_u64(vdupq_lane_s64(v50->i64[0], 0), vnegq_s64(v51)));
        if ((v401 & 0x3F) + v44 >= 0x81)
        {
          v52 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v50[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v51)), vshlq_u64(vdupq_laneq_s64(v50[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v51))), v52);
        }

        v37 = v45;
      }

      else
      {
        v404 = 1;
        v52 = 0uLL;
      }

      v57 = vzip1_s32(*v39.i8, *&vextq_s8(v39, v39, 8uLL));
      v58.i64[0] = v57.u32[0];
      v58.i64[1] = v57.u32[1];
      v59 = vshlq_u64(v52, vnegq_s64(v58));
      v60 = vuzp1q_s32(vzip1q_s64(v52, v59), vzip2q_s64(v52, v59));
      v61 = vshlq_u32(v60, vnegq_s32((*&v38 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v62 = vuzp1q_s16(vzip1q_s32(v60, v61), vzip2q_s32(v60, v61));
      v63 = vshlq_u16(v62, vnegq_s16((*&v36 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
      v64 = vuzp1q_s8(vzip1q_s16(v62, v63), vzip2q_s16(v62, v63));
      v63.i64[0] = 0x101010101010101;
      v63.i64[1] = 0x101010101010101;
      v65 = vshlq_s8(v63, v36);
      v63.i64[0] = -1;
      v63.i64[1] = -1;
      v66 = vqtbl1q_s8(vandq_s8(vaddq_s8(v65, v63), v64), xmmword_29D2F0F70);
      *v64.i8 = vdup_lane_s32(*v66.i8, 0);
      *v63.i8 = vdup_lane_s32(*v66.i8, 1);
      v67 = vdupq_laneq_s32(v66, 2).u64[0];
      v66.i64[0] = vdupq_laneq_s32(v66, 3).u64[0];
      v423 = vsubw_s8(v423, *v64.i8);
      v424 = vsubw_s8(v424, *v63.i8);
      v425 = vsubw_s8(v425, v67);
      v426 = vsubw_s8(v426, *v66.i8);
      v56 = vmovl_s8(vceqz_s8(*v64.i8));
      v55 = vmovl_s8(vceqz_s8(*v63.i8));
      v54 = vmovl_s8(vceqz_s8(v67));
      v53 = vmovl_s8(vceqz_s8(*v66.i8));
    }

    v68.i64[0] = 0x8000800080008;
    v68.i64[1] = 0x8000800080008;
    v69 = 0uLL;
    v70 = vandq_s8(vextq_s8(vtstq_s16(v422, v68), 0, 8uLL), v34);
    v71 = vmovl_u16(*&vpaddq_s16(v70, v70));
    v72 = vpaddq_s32(v71, v71).u64[0];
    v73.i64[0] = v72;
    v73.i64[1] = HIDWORD(v72);
    v74 = v73;
    v75 = vaddvq_s64(v73);
    if (v403)
    {
      v76 = v403 >= v37 + v75;
    }

    else
    {
      v76 = 1;
    }

    v77 = v76;
    if (v75 <= 0x80 && (v77 & 1) != 0)
    {
      v78 = vaddq_s64(vdupq_n_s64(v37 & 0x3F), vzip1q_s64(0, v74));
      v79 = (v402 + 8 * (v37 >> 6));
      v69 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v79, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v78)), vshlq_u64(vdupq_lane_s64(v79->i64[0], 0), vnegq_s64(v78)));
      if ((v37 & 0x3F) + v75 >= 0x81)
      {
        v69 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v79[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v78)), vshlq_u64(vdupq_laneq_s64(v79[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v78))), v69);
      }

      v37 += v75;
    }

    else
    {
      v404 = 1;
    }

    v80 = vzip1_s32(*v71.i8, *&vextq_s8(v71, v71, 8uLL));
    v81.i64[0] = v80.u32[0];
    v81.i64[1] = v80.u32[1];
    v82 = vshlq_u64(v69, vnegq_s64(v81));
    v83 = vuzp1q_s32(vzip1q_s64(v69, v82), vzip2q_s64(v69, v82));
    v84.i64[0] = 0xFFFF0000FFFFLL;
    v84.i64[1] = 0xFFFF0000FFFFLL;
    v85 = vshlq_u32(v83, vnegq_s32(vandq_s8(v70, v84)));
    v86 = vuzp1q_s16(vzip1q_s32(v83, v85), vzip2q_s32(v83, v85));
    v85.i64[0] = 0xF000F000F000FLL;
    v85.i64[1] = 0xF000F000F000FLL;
    v87.i64[0] = 0x10001000100010;
    v87.i64[1] = 0x10001000100010;
    v88 = vshlq_s16(vshlq_s16(v86, vsubq_s16(v87, v70)), vaddq_s16(v70, v85));
    v427[3] = v88;
    v89 = v422.i8[0] & 3;
    if (v89 == 2)
    {
      if (v403)
      {
        v90 = v37 + 8;
        v91 = v37 + 16;
        if (v403 >= v37 + 8)
        {
          v37 += 8;
        }

        else
        {
          v91 = v37 + 8;
        }

        if (v403 >= v91)
        {
          v37 = v91;
        }

        if (v403 < v90 || v403 < v91)
        {
          v404 = 1;
        }
      }

      else
      {
        v37 += 16;
      }
    }

    v92 = 0uLL;
    v93 = vextq_s8(0, v423, 8uLL);
    v94 = vmovl_u16(*&vpaddq_s16(v93, v93));
    v95 = vpaddq_s32(v94, v94).u64[0];
    v96.i64[0] = v95;
    v96.i64[1] = HIDWORD(v95);
    v97 = v96;
    v98 = vaddvq_s64(v96);
    v99 = v37 + v98;
    if (v403)
    {
      v100 = v403 >= v99;
    }

    else
    {
      v100 = 1;
    }

    v101 = v100;
    if (v98 <= 0x80 && (v101 & 1) != 0)
    {
      v102 = v37 & 0x3F;
      v103 = vaddq_s64(vdupq_n_s64(v102), vzip1q_s64(0, v97));
      v104 = v402;
      v105 = (v402 + 8 * (v37 >> 6));
      v92 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v105, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v103)), vshlq_u64(vdupq_lane_s64(v105->i64[0], 0), vnegq_s64(v103)));
      if (v102 + v98 >= 0x81)
      {
        v92 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v105[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v103)), vshlq_u64(vdupq_laneq_s64(v105[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v103))), v92);
      }

      v106 = v404;
      v37 = v99;
    }

    else
    {
      v106 = 1;
      v104 = v402;
    }

    v107 = vzip1_s32(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
    v108.i64[0] = v107.u32[0];
    v108.i64[1] = v107.u32[1];
    v109 = vshlq_u64(v92, vnegq_s64(v108));
    v110 = vuzp1q_s32(vzip1q_s64(v92, v109), vzip2q_s64(v92, v109));
    v111.i64[0] = 0xFFFF0000FFFFLL;
    v111.i64[1] = 0xFFFF0000FFFFLL;
    v112 = vshlq_u32(v110, vnegq_s32(vandq_s8(v93, v111)));
    v113.i64[0] = 0xF000F000F000FLL;
    v113.i64[1] = 0xF000F000F000FLL;
    v114.i64[0] = 0x10001000100010;
    v114.i64[1] = 0x10001000100010;
    v115 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v110, v112), vzip2q_s32(v110, v112)), vsubq_s16(v114, v93)), vaddq_s16(v93, v113));
    v405 = v115;
    v116 = vmovl_u16(*&vpaddq_s16(v423, v423));
    v110.i64[0] = vpaddq_s32(v116, v116).u64[0];
    v108.i64[0] = v110.u32[0];
    v108.i64[1] = v110.u32[1];
    v117 = v108;
    v118 = vaddvq_s64(v108);
    v119 = v37 + v118;
    if (v403)
    {
      v120 = v403 >= v119;
    }

    else
    {
      v120 = 1;
    }

    v121 = v120;
    v122 = 0uLL;
    if (v118 <= 0x80 && v121)
    {
      v123 = v37 & 0x3F;
      v124 = vaddq_s64(vdupq_n_s64(v123), vzip1q_s64(0, v117));
      v125 = (v104 + 8 * (v37 >> 6));
      v126 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v125, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v124)), vshlq_u64(vdupq_lane_s64(v125->i64[0], 0), vnegq_s64(v124)));
      if (v123 + v118 >= 0x81)
      {
        v126 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v125[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v124)), vshlq_u64(vdupq_laneq_s64(v125[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v124))), v126);
      }
    }

    else
    {
      v106 = 1;
      v119 = v37;
      v126 = 0uLL;
    }

    v127 = vzip1_s32(*v116.i8, *&vextq_s8(v116, v116, 8uLL));
    v128.i64[0] = v127.u32[0];
    v128.i64[1] = v127.u32[1];
    v129 = vnegq_s64(v128);
    v130 = vshlq_u64(v126, v129);
    v131 = vuzp1q_s32(vzip1q_s64(v126, v130), vzip2q_s64(v126, v130));
    v132 = vnegq_s32(vandq_s8(v423, v111));
    v133 = vshlq_u32(v131, v132);
    v134 = vuzp1q_s16(vzip1q_s32(v131, v133), vzip2q_s32(v131, v133));
    v135 = vaddq_s16(v423, v113);
    v136 = vsubq_s16(v114, v423);
    v137 = vshlq_s16(vshlq_s16(v134, v136), v135);
    v406 = v137;
    v138 = v119 + v118;
    if (v403)
    {
      v139 = v403 >= v138;
    }

    else
    {
      v139 = 1;
    }

    v140 = v139;
    if (v118 <= 0x80 && v140)
    {
      v141 = v119 & 0x3F;
      v142 = vaddq_s64(vdupq_n_s64(v141), vzip1q_s64(0, v117));
      v143 = (v104 + 8 * (v119 >> 6));
      v122 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v143, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v142)), vshlq_u64(vdupq_lane_s64(v143->i64[0], 0), vnegq_s64(v142)));
      if (v141 + v118 >= 0x81)
      {
        v122 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v143[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v142)), vshlq_u64(vdupq_laneq_s64(v143[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v142))), v122);
      }
    }

    else
    {
      v106 = 1;
      v138 = v119;
    }

    v144 = vshlq_u64(v122, v129);
    v145 = vuzp1q_s32(vzip1q_s64(v122, v144), vzip2q_s64(v122, v144));
    v146 = vshlq_u32(v145, v132);
    v147 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v145, v146), vzip2q_s32(v145, v146)), v136), v135);
    v407 = v147;
    v148 = v138 + v118;
    if (v403)
    {
      v149 = v403 >= v148;
    }

    else
    {
      v149 = 1;
    }

    v150 = v149;
    v151 = 0uLL;
    if (v118 <= 0x80 && v150)
    {
      v152 = v138 & 0x3F;
      v153 = vaddq_s64(vdupq_n_s64(v152), vzip1q_s64(0, v117));
      v154 = (v104 + 8 * (v138 >> 6));
      v155 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v154, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v153)), vshlq_u64(vdupq_lane_s64(v154->i64[0], 0), vnegq_s64(v153)));
      if (v152 + v118 >= 0x81)
      {
        v155 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v154[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v153)), vshlq_u64(vdupq_laneq_s64(v154[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v153))), v155);
      }
    }

    else
    {
      v106 = 1;
      v148 = v138;
      v155 = 0uLL;
    }

    v156 = vshlq_u64(v155, v129);
    v157 = vuzp1q_s32(vzip1q_s64(v155, v156), vzip2q_s64(v155, v156));
    v158 = vshlq_u32(v157, v132);
    v159 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v157, v158), vzip2q_s32(v157, v158)), v136), v135);
    v408 = v159;
    v160 = vmovl_u16(*&vpaddq_s16(v424, v424));
    v161 = vpaddq_s32(v160, v160).u64[0];
    v162.i64[0] = v161;
    v162.i64[1] = HIDWORD(v161);
    v163 = v162;
    v164 = vaddvq_s64(v162);
    v165 = v164;
    v166 = v148 + v164;
    if (v403)
    {
      v167 = v403 >= v166;
    }

    else
    {
      v167 = 1;
    }

    v168 = v167;
    if (v164 <= 0x80 && v168)
    {
      v169 = v148 & 0x3F;
      v170 = vaddq_s64(vdupq_n_s64(v169), vzip1q_s64(0, v163));
      v171 = (v104 + 8 * (v148 >> 6));
      v151 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v171, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v170)), vshlq_u64(vdupq_lane_s64(v171->i64[0], 0), vnegq_s64(v170)));
      if (v169 + v165 >= 0x81)
      {
        v151 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v171[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v170)), vshlq_u64(vdupq_laneq_s64(v171[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v170))), v151);
      }
    }

    else
    {
      v106 = 1;
      v166 = v148;
    }

    v172 = vzip1_s32(*v160.i8, *&vextq_s8(v160, v160, 8uLL));
    v173.i64[0] = v172.u32[0];
    v173.i64[1] = v172.u32[1];
    v174 = vnegq_s64(v173);
    v175 = vshlq_u64(v151, v174);
    v176 = vuzp1q_s32(vzip1q_s64(v151, v175), vzip2q_s64(v151, v175));
    v177.i64[0] = 0xFFFF0000FFFFLL;
    v177.i64[1] = 0xFFFF0000FFFFLL;
    v178 = vnegq_s32(vandq_s8(v424, v177));
    v179 = vshlq_u32(v176, v178);
    v180 = vuzp1q_s16(vzip1q_s32(v176, v179), vzip2q_s32(v176, v179));
    v179.i64[0] = 0xF000F000F000FLL;
    v179.i64[1] = 0xF000F000F000FLL;
    v181 = vaddq_s16(v424, v179);
    v179.i64[0] = 0x10001000100010;
    v179.i64[1] = 0x10001000100010;
    v182 = vsubq_s16(v179, v424);
    v183 = vshlq_s16(vshlq_s16(v180, v182), v181);
    v409 = v183;
    v184 = v166 + v165;
    if (v403)
    {
      v185 = v403 >= v184;
    }

    else
    {
      v185 = 1;
    }

    v186 = v185;
    v187 = 0uLL;
    if (v165 <= 0x80 && v186)
    {
      v188 = v166 & 0x3F;
      v189 = vaddq_s64(vdupq_n_s64(v188), vzip1q_s64(0, v163));
      v190 = (v104 + 8 * (v166 >> 6));
      v191 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v190, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v189)), vshlq_u64(vdupq_lane_s64(v190->i64[0], 0), vnegq_s64(v189)));
      if (v188 + v165 >= 0x81)
      {
        v191 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v190[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v189)), vshlq_u64(vdupq_laneq_s64(v190[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v189))), v191);
      }
    }

    else
    {
      v106 = 1;
      v184 = v166;
      v191 = 0uLL;
    }

    v192 = vshlq_u64(v191, v174);
    v193 = vuzp1q_s32(vzip1q_s64(v191, v192), vzip2q_s64(v191, v192));
    v194 = vshlq_u32(v193, v178);
    v195 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v193, v194), vzip2q_s32(v193, v194)), v182), v181);
    v410 = v195;
    v196 = v184 + v165;
    if (v403)
    {
      v197 = v403 >= v196;
    }

    else
    {
      v197 = 1;
    }

    v198 = v197;
    if (v165 <= 0x80 && v198)
    {
      v199 = v184 & 0x3F;
      v200 = vaddq_s64(vdupq_n_s64(v199), vzip1q_s64(0, v163));
      v201 = (v104 + 8 * (v184 >> 6));
      v187 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v201, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v200)), vshlq_u64(vdupq_lane_s64(v201->i64[0], 0), vnegq_s64(v200)));
      if (v199 + v165 >= 0x81)
      {
        v187 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v201[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v200)), vshlq_u64(vdupq_laneq_s64(v201[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v200))), v187);
      }
    }

    else
    {
      v106 = 1;
      v196 = v184;
    }

    v202 = vshlq_u64(v187, v174);
    v203 = vuzp1q_s32(vzip1q_s64(v187, v202), vzip2q_s64(v187, v202));
    v204 = vshlq_u32(v203, v178);
    v205 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v203, v204), vzip2q_s32(v203, v204)), v182), v181);
    v411 = v205;
    v206 = v196 + v165;
    if (v403)
    {
      v207 = v403 >= v206;
    }

    else
    {
      v207 = 1;
    }

    v208 = v207;
    v209 = 0uLL;
    if (v165 <= 0x80 && v208)
    {
      v210 = v196 & 0x3F;
      v211 = vaddq_s64(vdupq_n_s64(v210), vzip1q_s64(0, v163));
      v212 = (v104 + 8 * (v196 >> 6));
      v213 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v212, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v211)), vshlq_u64(vdupq_lane_s64(v212->i64[0], 0), vnegq_s64(v211)));
      if (v210 + v165 >= 0x81)
      {
        v213 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v212[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v211)), vshlq_u64(vdupq_laneq_s64(v212[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v211))), v213);
      }
    }

    else
    {
      v106 = 1;
      v206 = v196;
      v213 = 0uLL;
    }

    v214 = vshlq_u64(v213, v174);
    v215 = vuzp1q_s32(vzip1q_s64(v213, v214), vzip2q_s64(v213, v214));
    v216 = vshlq_u32(v215, v178);
    v217 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v215, v216), vzip2q_s32(v215, v216)), v182), v181);
    v412 = v217;
    v218 = vmovl_u16(*&vpaddq_s16(v425, v425));
    v219 = vpaddq_s32(v218, v218).u64[0];
    v220.i64[0] = v219;
    v220.i64[1] = HIDWORD(v219);
    v221 = v220;
    v222 = vaddvq_s64(v220);
    v223 = v222;
    v224 = v206 + v222;
    if (v403)
    {
      v225 = v403 >= v224;
    }

    else
    {
      v225 = 1;
    }

    v226 = v225;
    if (v222 <= 0x80 && v226)
    {
      v227 = v206 & 0x3F;
      v228 = vaddq_s64(vdupq_n_s64(v227), vzip1q_s64(0, v221));
      v229 = (v104 + 8 * (v206 >> 6));
      v209 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v229, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v228)), vshlq_u64(vdupq_lane_s64(v229->i64[0], 0), vnegq_s64(v228)));
      if (v227 + v223 >= 0x81)
      {
        v209 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v229[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v228)), vshlq_u64(vdupq_laneq_s64(v229[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v228))), v209);
      }
    }

    else
    {
      v106 = 1;
      v224 = v206;
    }

    v230 = vzip1_s32(*v218.i8, *&vextq_s8(v218, v218, 8uLL));
    v231.i64[0] = v230.u32[0];
    v231.i64[1] = v230.u32[1];
    v232 = vnegq_s64(v231);
    v233 = vshlq_u64(v209, v232);
    v234 = vuzp1q_s32(vzip1q_s64(v209, v233), vzip2q_s64(v209, v233));
    v235.i64[0] = 0xFFFF0000FFFFLL;
    v235.i64[1] = 0xFFFF0000FFFFLL;
    v236 = vnegq_s32(vandq_s8(v425, v235));
    v237 = vshlq_u32(v234, v236);
    v238 = vuzp1q_s16(vzip1q_s32(v234, v237), vzip2q_s32(v234, v237));
    v237.i64[0] = 0xF000F000F000FLL;
    v237.i64[1] = 0xF000F000F000FLL;
    v239 = vaddq_s16(v425, v237);
    v237.i64[0] = 0x10001000100010;
    v237.i64[1] = 0x10001000100010;
    v240 = vsubq_s16(v237, v425);
    v241 = vshlq_s16(vshlq_s16(v238, v240), v239);
    v413 = v241;
    v242 = v224 + v223;
    if (v403)
    {
      v243 = v403 >= v242;
    }

    else
    {
      v243 = 1;
    }

    v244 = v243;
    v245 = 0uLL;
    if (v223 <= 0x80 && v244)
    {
      v246 = v224 & 0x3F;
      v247 = vaddq_s64(vdupq_n_s64(v246), vzip1q_s64(0, v221));
      v248 = (v104 + 8 * (v224 >> 6));
      v249 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v248, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v247)), vshlq_u64(vdupq_lane_s64(v248->i64[0], 0), vnegq_s64(v247)));
      if (v246 + v223 >= 0x81)
      {
        v249 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v248[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v247)), vshlq_u64(vdupq_laneq_s64(v248[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v247))), v249);
      }
    }

    else
    {
      v106 = 1;
      v242 = v224;
      v249 = 0uLL;
    }

    v250 = vshlq_u64(v249, v232);
    v251 = vuzp1q_s32(vzip1q_s64(v249, v250), vzip2q_s64(v249, v250));
    v252 = vshlq_u32(v251, v236);
    v253 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v251, v252), vzip2q_s32(v251, v252)), v240), v239);
    v414 = v253;
    v254 = v242 + v223;
    if (v403)
    {
      v255 = v403 >= v254;
    }

    else
    {
      v255 = 1;
    }

    v256 = v255;
    if (v223 <= 0x80 && v256)
    {
      v257 = v242 & 0x3F;
      v258 = vaddq_s64(vdupq_n_s64(v257), vzip1q_s64(0, v221));
      v259 = (v104 + 8 * (v242 >> 6));
      v245 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v259, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v258)), vshlq_u64(vdupq_lane_s64(v259->i64[0], 0), vnegq_s64(v258)));
      if (v257 + v223 >= 0x81)
      {
        v245 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v259[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v258)), vshlq_u64(vdupq_laneq_s64(v259[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v258))), v245);
      }
    }

    else
    {
      v106 = 1;
      v254 = v242;
    }

    v260 = vshlq_u64(v245, v232);
    v261 = vuzp1q_s32(vzip1q_s64(v245, v260), vzip2q_s64(v245, v260));
    v262 = vshlq_u32(v261, v236);
    v263 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v261, v262), vzip2q_s32(v261, v262)), v240), v239);
    v415 = v263;
    v264 = v254 + v223;
    if (v403)
    {
      v265 = v403 >= v264;
    }

    else
    {
      v265 = 1;
    }

    v266 = v265;
    v267 = 0uLL;
    if (v223 <= 0x80 && v266)
    {
      v268 = v254 & 0x3F;
      v269 = vaddq_s64(vdupq_n_s64(v268), vzip1q_s64(0, v221));
      v270 = (v104 + 8 * (v254 >> 6));
      v271 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v270, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v269)), vshlq_u64(vdupq_lane_s64(v270->i64[0], 0), vnegq_s64(v269)));
      if (v268 + v223 >= 0x81)
      {
        v271 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v270[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v269)), vshlq_u64(vdupq_laneq_s64(v270[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v269))), v271);
      }
    }

    else
    {
      v106 = 1;
      v264 = v254;
      v271 = 0uLL;
    }

    v272 = vshlq_u64(v271, v232);
    v273 = vuzp1q_s32(vzip1q_s64(v271, v272), vzip2q_s64(v271, v272));
    v274 = vshlq_u32(v273, v236);
    v275 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v273, v274), vzip2q_s32(v273, v274)), v240), v239);
    v416 = v275;
    v276 = vmovl_u16(*&vpaddq_s16(v426, v426));
    v277 = vpaddq_s32(v276, v276).u64[0];
    v278.i64[0] = v277;
    v278.i64[1] = HIDWORD(v277);
    v279 = v278;
    v280 = vaddvq_s64(v278);
    v281 = v280;
    v282 = v264 + v280;
    if (v403)
    {
      v283 = v403 >= v282;
    }

    else
    {
      v283 = 1;
    }

    v284 = v283;
    if (v280 <= 0x80 && v284)
    {
      v285 = v264 & 0x3F;
      v286 = vaddq_s64(vdupq_n_s64(v285), vzip1q_s64(0, v279));
      v287 = (v104 + 8 * (v264 >> 6));
      v267 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v287, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v286)), vshlq_u64(vdupq_lane_s64(v287->i64[0], 0), vnegq_s64(v286)));
      if (v285 + v281 >= 0x81)
      {
        v267 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v287[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v286)), vshlq_u64(vdupq_laneq_s64(v287[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v286))), v267);
      }
    }

    else
    {
      v106 = 1;
      v282 = v264;
    }

    v288 = vzip1_s32(*v276.i8, *&vextq_s8(v276, v276, 8uLL));
    v289.i64[0] = v288.u32[0];
    v289.i64[1] = v288.u32[1];
    v290 = vnegq_s64(v289);
    v291 = vshlq_u64(v267, v290);
    v292 = vuzp1q_s32(vzip1q_s64(v267, v291), vzip2q_s64(v267, v291));
    v291.i64[0] = 0xFFFF0000FFFFLL;
    v291.i64[1] = 0xFFFF0000FFFFLL;
    v293 = vnegq_s32(vandq_s8(v426, v291));
    v294 = vshlq_u32(v292, v293);
    v295 = vuzp1q_s16(vzip1q_s32(v292, v294), vzip2q_s32(v292, v294));
    v292.i64[0] = 0xF000F000F000FLL;
    v292.i64[1] = 0xF000F000F000FLL;
    v296 = vaddq_s16(v426, v292);
    v294.i64[0] = 0x10001000100010;
    v294.i64[1] = 0x10001000100010;
    v297 = vsubq_s16(v294, v426);
    v298 = vshlq_s16(vshlq_s16(v295, v297), v296);
    v417 = v298;
    v299 = v282 + v281;
    if (v403)
    {
      v300 = v403 >= v299;
    }

    else
    {
      v300 = 1;
    }

    v301 = v300;
    v302 = 0uLL;
    if (v281 <= 0x80 && v301)
    {
      v303 = v282 & 0x3F;
      v304 = vaddq_s64(vdupq_n_s64(v303), vzip1q_s64(0, v279));
      v305 = (v104 + 8 * (v282 >> 6));
      v306 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v305, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v304)), vshlq_u64(vdupq_lane_s64(v305->i64[0], 0), vnegq_s64(v304)));
      if (v303 + v281 >= 0x81)
      {
        v306 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v305[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v304)), vshlq_u64(vdupq_laneq_s64(v305[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v304))), v306);
      }
    }

    else
    {
      v106 = 1;
      v299 = v282;
      v306 = 0uLL;
    }

    v307 = vshlq_u64(v306, v290);
    v308 = vuzp1q_s32(vzip1q_s64(v306, v307), vzip2q_s64(v306, v307));
    v309 = vshlq_u32(v308, v293);
    v310 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v308, v309), vzip2q_s32(v308, v309)), v297), v296);
    v418 = v310;
    v311 = v299 + v281;
    if (v403)
    {
      v312 = v403 >= v311;
    }

    else
    {
      v312 = 1;
    }

    v313 = v312;
    if (v281 <= 0x80 && v313)
    {
      v314 = v299 & 0x3F;
      v315 = vaddq_s64(vdupq_n_s64(v314), vzip1q_s64(0, v279));
      v316 = (v104 + 8 * (v299 >> 6));
      v302 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v316, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v315)), vshlq_u64(vdupq_lane_s64(v316->i64[0], 0), vnegq_s64(v315)));
      if (v314 + v281 >= 0x81)
      {
        v302 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v316[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v315)), vshlq_u64(vdupq_laneq_s64(v316[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v315))), v302);
      }
    }

    else
    {
      v106 = 1;
      v311 = v299;
    }

    v317 = vshlq_u64(v302, v290);
    v318 = vuzp1q_s32(vzip1q_s64(v302, v317), vzip2q_s64(v302, v317));
    v319 = vshlq_u32(v318, v293);
    v320 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v318, v319), vzip2q_s32(v318, v319)), v297), v296);
    v419 = v320;
    v321 = v311 + v281;
    if (v403)
    {
      v322 = v403 >= v321;
    }

    else
    {
      v322 = 1;
    }

    v323 = v322;
    if (v281 > 0x80 || !v323)
    {
      goto LABEL_226;
    }

    v324 = vaddq_s64(vdupq_n_s64(v311 & 0x3F), vzip1q_s64(0, v279));
    v325 = (v104 + 8 * (v311 >> 6));
    v326 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v325, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v324)), vshlq_u64(vdupq_lane_s64(v325->i64[0], 0), vnegq_s64(v324)));
    if ((v311 & 0x3F) + v281 >= 0x81)
    {
      v326 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v325[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v324)), vshlq_u64(vdupq_laneq_s64(v325[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v324))), v326);
    }

    if ((v106 & 1) != 0 || v403 + 8 * result - v321 - 1024 >= 9 || v89 == 2)
    {
LABEL_226:
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(v48, v49);
      return 0;
    }

    else
    {
      v327 = vshlq_u64(v326, v290);
      v328 = vuzp1q_s32(vzip1q_s64(v326, v327), vzip2q_s64(v326, v327));
      v329 = vshlq_u32(v328, v293);
      v330 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v328, v329), vzip2q_s32(v328, v329)), v297), v296);
      v331 = vaddq_s16(vandq_s8(v88, v56), v115);
      v332 = vdupq_lane_s64(v88.i64[0], 0);
      v333 = vandq_s8(v56, v332);
      v334 = vsubq_s16(v331, v333);
      v335 = vsubq_s16(v137, v333);
      v336 = vsubq_s16(v147, v333);
      v337 = vsubq_s16(v159, v333);
      v338 = vandq_s8(v55, v332);
      v339 = vsubq_s16(v183, v338);
      v340 = vsubq_s16(v195, v338);
      v341 = vsubq_s16(v205, v338);
      v342 = vsubq_s16(v217, v338);
      v343 = vandq_s8(v54, v332);
      v344 = vsubq_s16(v241, v343);
      v345 = vsubq_s16(v253, v343);
      v346 = vsubq_s16(v263, v343);
      v347 = vsubq_s16(v275, v343);
      v348 = vandq_s8(v53, v332);
      v349 = vsubq_s16(v298, v348);
      v405 = v331;
      v350 = vsubq_s16(v310, v348);
      v351 = vsubq_s16(v320, v348);
      v417 = v349;
      v418 = v350;
      v352 = vsubq_s16(v330, v348);
      v419 = v351;
      v420 = v352;
      v353.i64[0] = 0x1000100010001;
      v353.i64[1] = 0x1000100010001;
      if (vaddvq_s16(vceqq_s16(v33, v353)))
      {
        v354 = vnegq_s16(vandq_s8(v422, v353));
        v355.i64[0] = v337.i64[0];
        v356.i64[1] = v334.i64[1];
        v355.i64[1] = v334.i64[0];
        v356.i64[0] = v337.i64[1];
        v357 = vbslq_s8(v354, v356, v334);
        v358 = vbslq_s8(v354, v355, v337);
        v356.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
        v356.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
        v359 = vandq_s8(vqtbl4q_s8(*(&v335 - 1), v356), v354);
        v439.val[0] = vaddq_s16(v357, vandq_s8(vqtbl4q_s8(*(&v335 - 1), xmmword_29D2F10B0), v354));
        v439.val[1] = vaddq_s16(v335, vandq_s8(vqtbl4q_s8(*(&v335 - 1), xmmword_29D2F10C0), v354));
        v439.val[2] = vaddq_s16(v336, v359);
        v439.val[3] = vaddq_s16(v358, v359);
        v360 = vandq_s8(vqtbl4q_s8(v439, v356), v354);
        v334 = vaddq_s16(v439.val[0], vandq_s8(vqtbl4q_s8(v439, xmmword_29D2F10D0), v354));
        v335 = vaddq_s16(v439.val[1], vandq_s8(vqtbl4q_s8(v439, xmmword_29D2F10E0), v354));
        v405 = v334;
        v406 = v335;
        v336 = vaddq_s16(v439.val[2], v360);
        v337 = vaddq_s16(v439.val[3], v360);
        v438.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v339.i8, xmmword_29D2F10B0), v354), v339);
        v438.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v339.i8, xmmword_29D2F10F0), v354), v340);
        v438.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v339.i8, v356), v354), v341);
        v438.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v339.i8, xmmword_29D2F1100), v354), v342);
        v361 = vandq_s8(vqtbl4q_s8(v438, xmmword_29D2F10D0), v354);
        v362 = vandq_s8(vqtbl4q_s8(v438, v356), v354);
        v339 = vaddq_s16(v361, v438.val[0]);
        v340 = vaddq_s16(v438.val[1], v361);
        v341 = vaddq_s16(v438.val[2], v362);
        v342 = vaddq_s16(v438.val[3], v362);
        v438.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v344.i8, xmmword_29D2F0EB0), v354), v344);
        v438.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v344.i8, xmmword_29D2F0FB0), v354), v345);
        v438.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v344.i8, xmmword_29D2F10B0), v354), v346);
        v438.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v344.i8, xmmword_29D2F10C0), v354), v347);
        v363 = vandq_s8(vqtbl4q_s8(v438, v356), v354);
        v344 = vaddq_s16(v438.val[0], v363);
        v345 = vaddq_s16(v438.val[1], v363);
        v346 = vaddq_s16(v438.val[2], vandq_s8(vqtbl4q_s8(v438, xmmword_29D2F0FE0), v354));
        v347 = vaddq_s16(v438.val[3], vandq_s8(vqtbl4q_s8(v438, xmmword_29D2F1110), v354));
        v439.val[0] = v417;
        v439.val[1] = v418;
        v32 = v422;
        v439.val[2] = v419;
        v439.val[3] = v420;
        v438.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(v439, xmmword_29D2F0EB0), v354), v417);
        v438.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(v439, xmmword_29D2F1120), v354), v418);
        v407 = v336;
        v408 = v337;
        v438.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(v439, xmmword_29D2F10B0), v354), v419);
        v438.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(v439, xmmword_29D2F10C0), v354), v420);
        v364 = vandq_s8(vqtbl4q_s8(v438, v356), v354);
        v349 = vaddq_s16(v438.val[0], v364);
        v350 = vaddq_s16(v438.val[1], v364);
        v351 = vaddq_s16(v438.val[2], vandq_s8(vqtbl4q_s8(v438, xmmword_29D2F0FE0), v354));
        v352 = vaddq_s16(v438.val[3], vandq_s8(vqtbl4q_s8(v438, xmmword_29D2F1130), v354));
      }

      v365 = vaddq_s16(v421, v334);
      v366 = vaddq_s16(v335, v421);
      v367 = vaddq_s16(v336, v421);
      v368 = vaddq_s16(v337, v421);
      v369 = vaddq_s16(v339, v421);
      v370 = vaddq_s16(v340, v421);
      v371 = vaddq_s16(v341, v421);
      v372 = vaddq_s16(v342, v421);
      v373 = vaddq_s16(v344, v421);
      v374 = vaddq_s16(v345, v421);
      v375 = vaddq_s16(v346, v421);
      v376 = vaddq_s16(v347, v421);
      v377 = vaddq_s16(v349, v421);
      v378 = vaddq_s16(v350, v421);
      v379 = vaddq_s16(v351, v421);
      v380 = vaddq_s16(v352, v421);
      v381.i64[0] = 0x10001000100010;
      v381.i64[1] = 0x10001000100010;
      v382 = vceqzq_s16(vandq_s8(v32, v381));
      v383 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v365, xmmword_29D2F1270), v382), v365);
      v384 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v366, xmmword_29D2F1270), v382), v366);
      v385 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v367, xmmword_29D2F1270), v382), v367);
      v386 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v368, xmmword_29D2F1270), v382), v368);
      v387 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v369, xmmword_29D2F1270), v382), v369);
      v388 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v370, xmmword_29D2F1270), v382), v370);
      v389 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v371, xmmword_29D2F1270), v382), v371);
      v390 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v372, xmmword_29D2F1270), v382), v372);
      v391 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v373, xmmword_29D2F1270), v382), v373);
      v392 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v374, xmmword_29D2F1270), v382), v374);
      v393 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v375, xmmword_29D2F1270), v382), v375);
      v394 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v376, xmmword_29D2F1270), v382), v376);
      v395 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v377, xmmword_29D2F1270), v382), v377);
      v396 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v378, xmmword_29D2F1270), v382), v378);
      v376.i64[0] = 0xF8000000F8000000;
      v376.i64[1] = 0xF8000000F8000000;
      v397 = v48 + 2;
      *v48 = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v383, 0x15uLL), v384, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v383, 0xEuLL), v384, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v383, 7uLL), v384, 7uLL), vuzp1q_s32(v383, v384))));
      v48[1] = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v385, 0x15uLL), v386, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v385, 0xEuLL), v386, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v385, 7uLL), v386, 7uLL), vuzp1q_s32(v385, v386))));
      v398 = (v48 + v49);
      v399 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v379, xmmword_29D2F1270), v382), v379);
      v400 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v380, xmmword_29D2F1270), v382), v380);
      *v397 = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v391, 0x15uLL), v392, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v391, 0xEuLL), v392, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v391, 7uLL), v392, 7uLL), vuzp1q_s32(v391, v392))));
      v397[1] = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v393, 0x15uLL), v394, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v393, 0xEuLL), v394, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v393, 7uLL), v394, 7uLL), vuzp1q_s32(v393, v394))));
      *v398 = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v387, 0x15uLL), v388, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v387, 0xEuLL), v388, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v387, 7uLL), v388, 7uLL), vuzp1q_s32(v387, v388))));
      v398[1] = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v389, 0x15uLL), v390, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v389, 0xEuLL), v390, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v389, 7uLL), v390, 7uLL), vuzp1q_s32(v389, v390))));
      v398 += 2;
      *v398 = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v395, 0x15uLL), v396, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v395, 0xEuLL), v396, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v395, 7uLL), v396, 7uLL), vuzp1q_s32(v395, v396))));
      v398[1] = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v399, 0x15uLL), v400, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v399, 0xEuLL), v400, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v399, 7uLL), v400, 7uLL), vuzp1q_s32(v399, v400))));
    }
  }

  else
  {
    result = 0;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
    v16 = (a1->f32 + a2);
    v16[2] = 0u;
    v16[3] = 0u;
    *v16 = 0u;
    v16[1] = 0u;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(float32x4_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 128, a2, *a3);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 16, 128, v5, a3[1]);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 4, 128, v6, a3[2]);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 20, 128, v7, a3[3]);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 32, 128, v8, a3[4]);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 48, 128, v9, a3[5]);
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 36, 128, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 52, 128, v10 + v11, v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(unint64_t a1, char *a2, uint32x4_t *a3, uint64_t a4, unsigned int a5, int a6)
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
  v15 = vbslq_s8(xmmword_29D2F13A0, v14, 0);
  v16 = vbslq_s8(xmmword_29D2F13A0, v13, 0);
  v13.i64[0] = v6.u32[0];
  v13.i64[1] = v6.u32[1];
  v17 = v13;
  v13.i64[0] = v6.u32[2];
  v13.i64[1] = v6.u32[3];
  v18 = vbslq_s8(xmmword_29D2F13D0, vshll_n_u32(*a3->i8, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_n_u32(*a3->i8, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_n_u32(*a3->i8, 7uLL), v15)));
  v19 = vbslq_s8(xmmword_29D2F13D0, vshll_high_n_u32(*a3, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_high_n_u32(*a3, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_high_n_u32(*a3, 7uLL), v16)));
  v506 = *a3;
  v507 = v6;
  v20 = vbslq_s8(xmmword_29D2F13D0, vshll_n_u32(*v6.i8, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_n_u32(*v6.i8, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_n_u32(*v6.i8, 7uLL), vbslq_s8(xmmword_29D2F13A0, v17, 0))));
  v21 = vbslq_s8(xmmword_29D2F13D0, vshll_high_n_u32(v6, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_high_n_u32(v6, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_high_n_u32(v6, 7uLL), vbslq_s8(xmmword_29D2F13A0, v13, 0))));
  v13.i64[0] = v9.u32[0];
  v13.i64[1] = v9.u32[1];
  v22 = v13;
  v13.i64[0] = v9.u32[2];
  v13.i64[1] = v9.u32[3];
  v23 = vbslq_s8(xmmword_29D2F13A0, v22, 0);
  v24 = vbslq_s8(xmmword_29D2F13A0, v13, 0);
  v13.i64[0] = v10.u32[0];
  v13.i64[1] = v10.u32[1];
  v25 = v13;
  v13.i64[0] = v10.u32[2];
  v13.i64[1] = v10.u32[3];
  v26 = vbslq_s8(xmmword_29D2F13D0, vshll_n_u32(*v9.i8, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_n_u32(*v9.i8, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_n_u32(*v9.i8, 7uLL), v23)));
  v27 = vbslq_s8(xmmword_29D2F13D0, vshll_high_n_u32(v9, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_high_n_u32(v9, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_high_n_u32(v9, 7uLL), v24)));
  v503 = v9;
  v504 = v10;
  v28 = vbslq_s8(xmmword_29D2F13D0, vshll_n_u32(*v10.i8, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_n_u32(*v10.i8, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_n_u32(*v10.i8, 7uLL), vbslq_s8(xmmword_29D2F13A0, v25, 0))));
  v29 = vbslq_s8(xmmword_29D2F13D0, vshll_high_n_u32(v10, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_high_n_u32(v10, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_high_n_u32(v10, 7uLL), vbslq_s8(xmmword_29D2F13A0, v13, 0))));
  v13.i64[0] = v7.u32[0];
  v13.i64[1] = v7.u32[1];
  v30 = v13;
  v13.i64[0] = v7.u32[2];
  v13.i64[1] = v7.u32[3];
  v31 = vbslq_s8(xmmword_29D2F13A0, v30, 0);
  v32 = vbslq_s8(xmmword_29D2F13A0, v13, 0);
  v13.i64[0] = v8.u32[0];
  v13.i64[1] = v8.u32[1];
  v33 = v13;
  v13.i64[0] = v8.u32[2];
  v13.i64[1] = v8.u32[3];
  v34 = vbslq_s8(xmmword_29D2F13D0, vshll_n_u32(*v7.i8, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_n_u32(*v7.i8, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_n_u32(*v7.i8, 7uLL), v31)));
  v35 = vbslq_s8(xmmword_29D2F13D0, vshll_high_n_u32(v7, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_high_n_u32(v7, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_high_n_u32(v7, 7uLL), v32)));
  v36 = vbslq_s8(xmmword_29D2F13D0, vshll_n_u32(*v8.i8, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_n_u32(*v8.i8, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_n_u32(*v8.i8, 7uLL), vbslq_s8(xmmword_29D2F13A0, v33, 0))));
  v37 = vbslq_s8(xmmword_29D2F13D0, vshll_high_n_u32(v8, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_high_n_u32(v8, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_high_n_u32(v8, 7uLL), vbslq_s8(xmmword_29D2F13A0, v13, 0))));
  v13.i64[0] = v11.u32[0];
  v13.i64[1] = v11.u32[1];
  v38 = v13;
  v13.i64[0] = v11.u32[2];
  v13.i64[1] = v11.u32[3];
  v39 = vbslq_s8(xmmword_29D2F13A0, v38, 0);
  v40 = vbslq_s8(xmmword_29D2F13A0, v13, 0);
  v13.i64[0] = v12.u32[0];
  v13.i64[1] = v12.u32[1];
  v41 = v13;
  v13.i64[0] = v12.u32[2];
  v13.i64[1] = v12.u32[3];
  v42 = vbslq_s8(xmmword_29D2F13D0, vshll_n_u32(*v11.i8, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_n_u32(*v11.i8, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_n_u32(*v11.i8, 7uLL), v39)));
  v43 = vbslq_s8(xmmword_29D2F13D0, vshll_high_n_u32(v11, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_high_n_u32(v11, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_high_n_u32(v11, 7uLL), v40)));
  v508 = v11;
  v509 = v12;
  v44 = vbslq_s8(xmmword_29D2F13D0, vshll_n_u32(*v12.i8, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_n_u32(*v12.i8, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_n_u32(*v12.i8, 7uLL), vbslq_s8(xmmword_29D2F13A0, v41, 0))));
  v45 = vdupq_lane_s64(v18.i64[0], 0);
  v510 = vshlq_s16(vshlq_s16(vsubq_s16(v18, v45), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v512 = vshlq_s16(vshlq_s16(vsubq_s16(v19, v45), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v46 = vshlq_s16(vshlq_s16(vsubq_s16(v20, v45), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v47 = vminq_s16(vminq_s16(v510, v512), v46);
  v514 = v46;
  v516 = vshlq_s16(vshlq_s16(vsubq_s16(v21, v45), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v48 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v510, v512), v46), v516), xmmword_29D2F1150);
  v49 = vqtbl1q_s8(vminq_s16(v47, v516), xmmword_29D2F1150);
  v50 = vpmaxq_s16(v48, v48);
  v51 = vpminq_s16(v49, v49);
  v52 = vzip1q_s16(v50, v51);
  v53.i64[0] = 0x10001000100010;
  v53.i64[1] = 0x10001000100010;
  v54 = vbicq_s8(vsubq_s16(v53, vclsq_s16(v52)), vceqzq_s16(v52));
  v518 = vshlq_s16(vshlq_s16(vsubq_s16(v26, v45), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v519 = vshlq_s16(vshlq_s16(vsubq_s16(v27, v45), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v499 = v26;
  v501 = v27;
  v502 = v28;
  v55 = v29;
  v56 = vshlq_s16(vshlq_s16(vsubq_s16(v28, v45), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v57 = vminq_s16(vminq_s16(v518, v519), v56);
  v520 = v56;
  v521 = vshlq_s16(vshlq_s16(vsubq_s16(v29, v45), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v9.i64[0] = 0x8000800080008000;
  v9.i64[1] = 0x8000800080008000;
  v58 = vmaxq_s16(v50, v9);
  v9.i64[0] = 0x8000800080008000;
  v9.i64[1] = 0x8000800080008000;
  v59 = vminq_s16(v51, v9);
  v60 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v518, v519), v56), v521), xmmword_29D2F1150);
  v61 = vqtbl1q_s8(vminq_s16(v57, v521), xmmword_29D2F1150);
  v62 = vpmaxq_s16(v60, v60);
  v63 = vpminq_s16(v61, v61);
  v64 = vmaxq_s16(v58, v62);
  v65 = vminq_s16(v59, v63);
  v66 = vzip1q_s16(v62, v63);
  v27.i64[0] = 0x10001000100010;
  v27.i64[1] = 0x10001000100010;
  v67 = vbicq_s8(vsubq_s16(v27, vclsq_s16(v66)), vceqzq_s16(v66));
  v522 = vshlq_s16(vshlq_s16(vsubq_s16(v34, v45), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v523 = vshlq_s16(vshlq_s16(vsubq_s16(v35, v45), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v68 = vshlq_s16(vshlq_s16(vsubq_s16(v36, v45), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v69 = vminq_s16(vminq_s16(v522, v523), v68);
  v524 = v68;
  v525 = vshlq_s16(vshlq_s16(vsubq_s16(v37, v45), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v70 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v522, v523), v68), v525), xmmword_29D2F1150);
  v71 = vqtbl1q_s8(vminq_s16(v69, v525), xmmword_29D2F1150);
  v72 = vpmaxq_s16(v70, v70);
  v73 = vpminq_s16(v71, v71);
  v74 = vmaxq_s16(v64, v72);
  v75 = vminq_s16(v65, v73);
  v76 = vzip1q_s16(v72, v73);
  v77 = vbicq_s8(vsubq_s16(v27, vclsq_s16(v76)), vceqzq_s16(v76));
  v526 = vshlq_s16(vshlq_s16(vsubq_s16(v42, v45), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v527 = vshlq_s16(vshlq_s16(vsubq_s16(v43, v45), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v530 = v45;
  v497 = vbslq_s8(xmmword_29D2F13D0, vshll_high_n_u32(v12, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_high_n_u32(v12, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_high_n_u32(v12, 7uLL), vbslq_s8(xmmword_29D2F13A0, v13, 0))));
  v528 = vshlq_s16(vshlq_s16(vsubq_s16(v44, v45), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v529 = vshlq_s16(vshlq_s16(vsubq_s16(v497, v45), xmmword_29D2F13E0), xmmword_29D2F13F0);
  v78 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v526, v527), v528), v529), xmmword_29D2F1150);
  v79 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v526, v527), v528), v529), xmmword_29D2F1150);
  v80 = vpmaxq_s16(v78, v78);
  v81 = vpminq_s16(v79, v79);
  v82 = vmaxq_s16(v74, v80);
  v83 = vminq_s16(v75, v81);
  v84 = vzip1q_s16(v80, v81);
  v85 = vbicq_s8(vsubq_s16(v27, vclsq_s16(v84)), vceqzq_s16(v84));
  v86 = vpmaxq_s16(v54, v54);
  v87 = vpmaxq_s16(v67, v67);
  v88 = vpmaxq_s16(v77, v77);
  v89 = vpmaxq_s16(v85, v85);
  v90 = vmaxq_s16(vmaxq_s16(v86, v87), vmaxq_s16(v88, v89));
  v91 = vclzq_s16(vsubq_s16(v82, v83));
  v29.i64[0] = 0xF000F000F000FLL;
  v29.i64[1] = 0xF000F000F000FLL;
  v92.i64[0] = -1;
  v92.i64[1] = -1;
  v537 = v83;
  v538 = v82;
  v93 = vsubq_s16(vshlq_s16(v92, vsubq_s16(v29, v91)), v83);
  v94 = vsubq_s16(v27, v91);
  v95 = vcgtq_s16(v90, v94);
  v96 = vminq_s16(v94, v90);
  v539 = vandq_s8(v93, v95);
  v90.i64[0] = 0x8000800080008;
  v90.i64[1] = 0x8000800080008;
  v97 = vorrq_s8(vandq_s8(v95, v90), 0);
  v90.i64[0] = 0x3000300030003;
  v90.i64[1] = 0x3000300030003;
  v98 = vorrq_s8(vandq_s8(vceqzq_s16(v96), v90), v97);
  v99 = vmaxq_s16(vminq_s16(vsubq_s16(v96, v87), v90), 0);
  v100 = vmaxq_s16(vminq_s16(vsubq_s16(v96, v88), v90), 0);
  v533 = vsubq_s16(v96, v99);
  v534 = vsubq_s16(v96, v100);
  v101 = vmaxq_s16(vminq_s16(vsubq_s16(v96, v89), v90), 0);
  v535 = vsubq_s16(v96, v101);
  v536 = v96;
  v102 = vaddq_s16(v101, v100);
  v103 = vmaxq_s16(vminq_s16(vsubq_s16(v96, v86), v90), 0);
  v90.i64[0] = 0x4000400040004;
  v90.i64[1] = 0x4000400040004;
  v104 = vorrq_s8(vbicq_s8(v90, vceqq_s16(v102, vnegq_s16(vaddq_s16(v103, v99)))), v98);
  v531 = v104;
  v532 = vsubq_s16(v96, v103);
  if (vmaxvq_s16(v96))
  {
    v491 = v18;
    v492 = v19;
    v493 = v20;
    v494 = v21;
    v466 = v37;
    v467 = v55;
    v105.i64[0] = 0x4000400040004;
    v105.i64[1] = 0x4000400040004;
    v495 = v7;
    v496 = v8;
    v106 = v98;
    v107 = vshlq_s16(vshlq_s16(vsubq_s16(v518, vqtbl1q_s8(v518, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v108 = vshlq_s16(vshlq_s16(vsubq_s16(v519, vqtbl1q_s8(v519, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v109 = vshlq_s16(vshlq_s16(vsubq_s16(v520, vqtbl1q_s8(v520, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v110 = vshlq_s16(vshlq_s16(vsubq_s16(v521, vqtbl1q_s8(v521, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v471 = vshlq_s16(vshlq_s16(vsubq_s16(v510, vqtbl1q_s8(v510, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v472 = vshlq_s16(vshlq_s16(vsubq_s16(v512, vqtbl1q_s8(v512, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v473 = vshlq_s16(vshlq_s16(vsubq_s16(v516, vqtbl1q_s8(v516, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v474 = vshlq_s16(vshlq_s16(vsubq_s16(v514, vqtbl1q_s8(v514, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v111 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v471, v472), v474), v473), xmmword_29D2F1150);
    v112 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v471, v472), v474), v473), xmmword_29D2F1150);
    v113 = vpmaxq_s16(v111, v111);
    v114 = vpminq_s16(v112, v112);
    v115.i64[0] = 0x8000800080008000;
    v115.i64[1] = 0x8000800080008000;
    v116 = vmaxq_s16(v113, v115);
    v115.i64[0] = 0x8000800080008000;
    v115.i64[1] = 0x8000800080008000;
    v117 = vminq_s16(v114, v115);
    v118 = vzip1q_s16(v113, v114);
    v119.i64[0] = 0x10001000100010;
    v119.i64[1] = 0x10001000100010;
    v120 = vbicq_s8(vsubq_s16(v119, vclsq_s16(v118)), vceqzq_s16(v118));
    v121 = vpmaxq_s16(v120, v120);
    v122 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v107, v108), v109), v110);
    v477 = v108;
    v478 = v107;
    v123 = vminq_s16(v107, v108);
    v124 = vshlq_s16(vshlq_s16(vsubq_s16(v526, vqtbl1q_s8(v526, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v125 = v104;
    v479 = v110;
    v480 = v109;
    v126 = vminq_s16(vminq_s16(v123, v109), v110);
    v127 = vshlq_s16(vshlq_s16(vsubq_s16(v528, vqtbl1q_s8(v528, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v128 = vshlq_s16(vshlq_s16(vsubq_s16(v529, vqtbl1q_s8(v529, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v129 = vqtbl1q_s8(v122, xmmword_29D2F1150);
    v130 = vqtbl1q_s8(v126, xmmword_29D2F1150);
    v131 = vpmaxq_s16(v129, v129);
    v132 = vpminq_s16(v130, v130);
    v133 = vmaxq_s16(v116, v131);
    v134 = vminq_s16(v117, v132);
    v135 = vzip1q_s16(v131, v132);
    v136 = vbicq_s8(vsubq_s16(v119, vclsq_s16(v135)), vceqzq_s16(v135));
    v137 = vpmaxq_s16(v136, v136);
    v481 = vshlq_s16(vshlq_s16(vsubq_s16(v523, vqtbl1q_s8(v523, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v482 = vshlq_s16(vshlq_s16(vsubq_s16(v522, vqtbl1q_s8(v522, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v486 = vshlq_s16(vshlq_s16(vsubq_s16(v524, vqtbl1q_s8(v524, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v488 = vshlq_s16(vshlq_s16(vsubq_s16(v527, vqtbl1q_s8(v527, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v483 = vshlq_s16(vshlq_s16(vsubq_s16(v525, vqtbl1q_s8(v525, xmmword_29D2F1270)), xmmword_29D2F13E0), xmmword_29D2F13F0);
    v138 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v482, v481), v486), v483), xmmword_29D2F1150);
    v139 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v482, v481), v486), v483), xmmword_29D2F1150);
    v140 = vpmaxq_s16(v138, v138);
    v141 = vpminq_s16(v139, v139);
    v142 = vmaxq_s16(v133, v140);
    v143 = vminq_s16(v134, v141);
    v144 = vzip1q_s16(v140, v141);
    v145 = vbicq_s8(vsubq_s16(v119, vclsq_s16(v144)), vceqzq_s16(v144));
    v146 = vpmaxq_s16(v145, v145);
    v147 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v124, v488), v127), v128), xmmword_29D2F1150);
    v148 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v124, v488), v127), v128), xmmword_29D2F1150);
    v149 = vpmaxq_s16(v147, v147);
    v150 = vpminq_s16(v148, v148);
    v151 = vmaxq_s16(v142, v149);
    v152 = vminq_s16(v143, v150);
    v153 = vzip1q_s16(v149, v150);
    v154 = vbicq_s8(vsubq_s16(v119, vclsq_s16(v153)), vceqzq_s16(v153));
    v155 = vpmaxq_s16(v154, v154);
    v156 = vmaxq_s16(vmaxq_s16(v121, v137), vmaxq_s16(v146, v155));
    v475 = v152;
    v476 = v151;
    v157 = vclzq_s16(vsubq_s16(v151, v152));
    v158 = vsubq_s16(v119, v157);
    v159 = vcgtq_s16(v156, v158);
    v160 = vminq_s16(v158, v156);
    v151.i64[0] = 0x3000300030003;
    v151.i64[1] = 0x3000300030003;
    v161 = vmaxq_s16(vminq_s16(vsubq_s16(v160, v121), v151), 0);
    v162 = vmaxq_s16(vminq_s16(vsubq_s16(v160, v137), v151), 0);
    v163 = vmaxq_s16(vminq_s16(vsubq_s16(v160, v146), v151), 0);
    v121.i64[0] = 0x3000300030003;
    v121.i64[1] = 0x3000300030003;
    v164 = vmaxq_s16(vminq_s16(vsubq_s16(v160, v155), v151), 0);
    v165 = vbicq_s8(v105, vceqq_s16(vaddq_s16(v164, v163), vnegq_s16(vaddq_s16(v161, v162))));
    v151.i64[0] = 0x18001800180018;
    v151.i64[1] = 0x18001800180018;
    v166 = v159;
    v167 = vbslq_s8(v159, v151, v119);
    v168 = vsubq_s16(v160, v161);
    v169 = vsubq_s16(v160, v162);
    v468 = vsubq_s16(v160, v163);
    v469 = vsubq_s16(v160, v164);
    v161.i64[0] = 0x7000700070007;
    v161.i64[1] = 0x7000700070007;
    v470 = v168;
    v170 = vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v160, vceqzq_s16((*&v167 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v165, v165)), v168, v161), vshlq_n_s16(vaddq_s16(vaddq_s16(v468, v169), v469), 3uLL));
    v151.i64[0] = 0x8000800080008;
    v151.i64[1] = 0x8000800080008;
    v171 = vandq_s8(vaddq_s16(v125, v125), v151);
    v172 = vandq_s8(v106, v151);
    v168.i64[0] = 0x2000200020002;
    v168.i64[1] = 0x2000200020002;
    v173 = vandq_s8(vceqq_s16(vandq_s8(v106, v121), v168), v119);
    v174 = vceqzq_s16(v172);
    v176 = v535;
    v175 = v536;
    v177 = vaddq_s16(vaddq_s16(vbicq_s8(v536, v174), v173), v171);
    v179 = v532;
    v178 = v533;
    v180 = vmlaq_s16(v177, v532, v161);
    v181 = v534;
    v182 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v180, vshlq_n_s16(vaddq_s16(vaddq_s16(v534, v533), v535), 3uLL)), v170).i64[0], 0);
    v183 = vaddvq_s16(v182);
    v185 = a5 < 2 || a6 == 0;
    if (v183)
    {
      v186.i64[0] = 0x3000300030003;
      v186.i64[1] = 0x3000300030003;
      v187 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v160), v186), v167), v165);
      v188.i64[0] = 0xF000F000F000FLL;
      v188.i64[1] = 0xF000F000F000FLL;
      v510 = vbslq_s8(v182, v471, v510);
      v512 = vbslq_s8(v182, v472, v512);
      v186.i64[0] = -1;
      v186.i64[1] = -1;
      v514 = vbslq_s8(v182, v474, v514);
      v516 = vbslq_s8(v182, v473, v516);
      v518 = vbslq_s8(v182, v478, v518);
      v519 = vbslq_s8(v182, v477, v519);
      v520 = vbslq_s8(v182, v480, v520);
      v521 = vbslq_s8(v182, v479, v521);
      v522 = vbslq_s8(v182, v482, v522);
      v523 = vbslq_s8(v182, v481, v523);
      v524 = vbslq_s8(v182, v486, v524);
      v525 = vbslq_s8(v182, v483, v525);
      v526 = vbslq_s8(v182, v124, v526);
      v527 = vbslq_s8(v182, v488, v527);
      v528 = vbslq_s8(v182, v127, v528);
      v529 = vbslq_s8(v182, v128, v529);
      v179 = vbslq_s8(v182, v470, v532);
      v178 = vbslq_s8(v182, v169, v533);
      v532 = v179;
      v533 = v178;
      v181 = vbslq_s8(v182, v468, v534);
      v176 = vbslq_s8(v182, v469, v535);
      v534 = v181;
      v535 = v176;
      v537 = vbslq_s8(v182, v475, v537);
      v538 = vbslq_s8(v182, v476, v538);
      v539 = vbslq_s8(v182, vandq_s8(vsubq_s16(vshlq_s16(v186, vsubq_s16(v188, v157)), v475), v166), v539);
      v175 = vbslq_s8(v182, v160, v536);
      v536 = v175;
      v125 = vbslq_s8(v182, v187, v531);
      v530 = vbslq_s8(v182, vsubq_s16(v530, vqtbl1q_s8(v530, xmmword_29D2F1270)), v530);
      v531 = v125;
    }

    v189 = v491;
    v190 = v492;
    v191 = v493;
    v192 = v494;
    if (!v185)
    {
      v193 = vqtbl4q_s8(*v189.i8, xmmword_29D2F1160);
      v194 = vsubq_s16(v491, vqtbl4q_s8(*v189.i8, xmmword_29D2F10B0));
      v195 = vsubq_s16(v493, v193);
      v196 = vsubq_s16(v494, v193);
      v540.val[0] = v499;
      v540.val[1] = v501;
      v540.val[2] = v502;
      v540.val[3].i64[0] = v467.i64[0];
      v540.val[3].i64[1] = v494.i64[1];
      v197 = vsubq_s16(v499, vqtbl4q_s8(v540, xmmword_29D2F10B0));
      v198 = vsubq_s16(v501, vqtbl4q_s8(v540, xmmword_29D2F10F0));
      v199 = vsubq_s16(v502, vqtbl4q_s8(v540, xmmword_29D2F1160));
      v200 = vsubq_s16(v467, vqtbl4q_s8(v540, xmmword_29D2F1100));
      v201 = v466.i64[0];
      v202 = v494.i64[1];
      v540.val[1] = vqtbl4q_s8(*v34.i8, xmmword_29D2F10C0);
      v203 = vsubq_s16(v34, vqtbl4q_s8(*v34.i8, xmmword_29D2F1170));
      v204 = vsubq_s16(v35, vqtbl4q_s8(*v34.i8, xmmword_29D2F1180));
      v205 = vsubq_s16(v36, vqtbl4q_s8(*v34.i8, xmmword_29D2F10B0));
      v206 = v497.i64[0];
      v207 = v494.i64[1];
      v208 = vsubq_s16(v42, vqtbl4q_s8(*v42.i8, xmmword_29D2F1170));
      v209 = vsubq_s16(v43, vqtbl4q_s8(*v42.i8, xmmword_29D2F1120));
      v210 = vsubq_s16(v44, vqtbl4q_s8(*v42.i8, xmmword_29D2F10B0));
      v211.i64[0] = v196.i64[0];
      v211.i64[1] = v194.i64[0];
      v212 = vsubq_s16(v497, vqtbl4q_s8(*v42.i8, xmmword_29D2F10C0));
      v194.i64[0] = v196.i64[1];
      v540.val[2] = vshlq_s16(v204, xmmword_29D2F13E0);
      v213 = vshlq_s16(v205, xmmword_29D2F13E0);
      v214 = vshlq_s16(vsubq_s16(v466, v540.val[1]), xmmword_29D2F13E0);
      v215 = vshlq_s16(v208, xmmword_29D2F13E0);
      v216 = vshlq_s16(v209, xmmword_29D2F13E0);
      v217 = vshlq_s16(vshlq_s16(v194, xmmword_29D2F13E0), xmmword_29D2F13F0);
      v218 = vshlq_s16(vshlq_s16(vsubq_s16(v492, vqtbl4q_s8(*v189.i8, xmmword_29D2F10C0)), xmmword_29D2F13E0), xmmword_29D2F13F0);
      v219 = vshlq_s16(vshlq_s16(v195, xmmword_29D2F13E0), xmmword_29D2F13F0);
      v220 = vshlq_s16(vshlq_s16(v211, xmmword_29D2F13E0), xmmword_29D2F13F0);
      v221 = vshlq_s16(vshlq_s16(v197, xmmword_29D2F13E0), xmmword_29D2F13F0);
      v222 = vshlq_s16(vshlq_s16(v198, xmmword_29D2F13E0), xmmword_29D2F13F0);
      v223 = vshlq_s16(vshlq_s16(v199, xmmword_29D2F13E0), xmmword_29D2F13F0);
      v224 = vshlq_s16(vshlq_s16(v200, xmmword_29D2F13E0), xmmword_29D2F13F0);
      v225 = vshlq_s16(vshlq_s16(v203, xmmword_29D2F13E0), xmmword_29D2F13F0);
      v226 = vshlq_s16(v540.val[2], xmmword_29D2F13F0);
      v227 = vshlq_s16(v214, xmmword_29D2F13F0);
      v228 = vshlq_s16(vshlq_s16(v210, xmmword_29D2F13E0), xmmword_29D2F13F0);
      v540.val[0] = vshlq_s16(vshlq_s16(v212, xmmword_29D2F13E0), xmmword_29D2F13F0);
      v540.val[3] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v217, v218), v219), v220), xmmword_29D2F1150);
      v229 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v217, v218), v219), v220), xmmword_29D2F1150);
      v540.val[3] = vpmaxq_s16(v540.val[3], v540.val[3]);
      v230 = vpminq_s16(v229, v229);
      v194.i64[0] = 0x8000800080008000;
      v194.i64[1] = 0x8000800080008000;
      v231 = vmaxq_s16(v540.val[3], v194);
      v194.i64[0] = 0x8000800080008000;
      v194.i64[1] = 0x8000800080008000;
      v232 = vminq_s16(v230, v194);
      v540.val[3] = vzip1q_s16(v540.val[3], v230);
      v230.i64[0] = 0x10001000100010;
      v230.i64[1] = 0x10001000100010;
      v540.val[3] = vbicq_s8(vsubq_s16(v230, vclsq_s16(v540.val[3])), vceqzq_s16(v540.val[3]));
      v233 = vpmaxq_s16(v540.val[3], v540.val[3]);
      v540.val[3] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v221, v222), v223), v224), xmmword_29D2F1150);
      v234 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v221, v222), v223), v224), xmmword_29D2F1150);
      v540.val[3] = vpmaxq_s16(v540.val[3], v540.val[3]);
      v235 = vpminq_s16(v234, v234);
      v236 = vmaxq_s16(v231, v540.val[3]);
      v237 = vminq_s16(v232, v235);
      v540.val[3] = vzip1q_s16(v540.val[3], v235);
      v540.val[3] = vbicq_s8(vsubq_s16(v230, vclsq_s16(v540.val[3])), vceqzq_s16(v540.val[3]));
      v238 = vpmaxq_s16(v540.val[3], v540.val[3]);
      v489 = vshlq_s16(v213, xmmword_29D2F13F0);
      v490 = vshlq_s16(v216, xmmword_29D2F13F0);
      v540.val[3] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v225, v226), v489), v227), xmmword_29D2F1150);
      v239 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v225, v226), v489), v227), xmmword_29D2F1150);
      v540.val[3] = vpmaxq_s16(v540.val[3], v540.val[3]);
      v240 = vpminq_s16(v239, v239);
      v241 = vmaxq_s16(v236, v540.val[3]);
      v242 = vminq_s16(v237, v240);
      v540.val[3] = vzip1q_s16(v540.val[3], v240);
      v540.val[3] = vbicq_s8(vsubq_s16(v230, vclsq_s16(v540.val[3])), vceqzq_s16(v540.val[3]));
      v243 = vpmaxq_s16(v540.val[3], v540.val[3]);
      v498 = vshlq_s16(v215, xmmword_29D2F13F0);
      v500 = v540.val[0];
      v540.val[3] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v498, v490), v228), v540.val[0]), xmmword_29D2F1150);
      v244 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v498, v490), v228), v540.val[0]), xmmword_29D2F1150);
      v540.val[3] = vpmaxq_s16(v540.val[3], v540.val[3]);
      v245 = vpminq_s16(v244, v244);
      v540.val[0] = vmaxq_s16(v241, v540.val[3]);
      v246 = vminq_s16(v242, v245);
      v540.val[3] = vzip1q_s16(v540.val[3], v245);
      v540.val[3] = vbicq_s8(vsubq_s16(v230, vclsq_s16(v540.val[3])), vceqzq_s16(v540.val[3]));
      v247 = vpmaxq_s16(v540.val[3], v540.val[3]);
      v540.val[2] = vmaxq_s16(vmaxq_s16(v233, v238), vmaxq_s16(v243, v247));
      v505 = v540.val[0];
      v248 = vclzq_s16(vsubq_s16(v540.val[0], v246));
      v249 = vsubq_s16(v230, v248);
      v250 = vcgtq_s16(v540.val[2], v249);
      v251 = vminq_s16(v249, v540.val[2]);
      v249.i64[0] = 0x3000300030003;
      v249.i64[1] = 0x3000300030003;
      v252 = vmaxq_s16(vminq_s16(vsubq_s16(v251, v233), v249), 0);
      v253 = vmaxq_s16(vminq_s16(vsubq_s16(v251, v238), v249), 0);
      v254 = vmaxq_s16(vminq_s16(vsubq_s16(v251, v243), v249), 0);
      v255 = vmaxq_s16(vminq_s16(vsubq_s16(v251, v247), v249), 0);
      v256 = vsubq_s16(v251, v252);
      v257 = vsubq_s16(v251, v253);
      v258 = vsubq_s16(v251, v254);
      v247.i64[0] = 0x4000400040004;
      v247.i64[1] = 0x4000400040004;
      v259 = vbicq_s8(v247, vceqq_s16(vaddq_s16(v255, v254), vnegq_s16(vaddq_s16(v252, v253))));
      v254.i64[0] = 0x7000700070007;
      v254.i64[1] = 0x7000700070007;
      v484 = v258;
      v485 = v257;
      v487 = vsubq_s16(v251, v255);
      v260 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v251, v250), vaddq_s16(v259, v259)), v256, v254), vshlq_n_s16(vaddq_s16(vaddq_s16(v258, v257), v487), 3uLL));
      v125 = v531;
      v179 = v532;
      v261.i64[0] = 0x2000200020002;
      v261.i64[1] = 0x2000200020002;
      v262 = vandq_s8(vceqq_s16(vandq_s8(v531, v249), v261), v230);
      v230.i64[0] = 0x8000800080008;
      v230.i64[1] = 0x8000800080008;
      v263 = vandq_s8(vaddq_s16(v125, v125), v230);
      v264 = vceqzq_s16(vandq_s8(v531, v230));
      v176 = v535;
      v175 = v536;
      v265 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v536, v264), v263), v262), v532, v254);
      v178 = v533;
      v181 = v534;
      v266 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v265, vshlq_n_s16(vaddq_s16(vaddq_s16(v534, v533), v535), 3uLL)), v260).i64[0], 0);
      if (vaddvq_s16(v266))
      {
        v267.i64[0] = 0x9000900090009;
        v267.i64[1] = 0x9000900090009;
        v268 = vorrq_s8(vandq_s8(vceqzq_s16(v251), v261), vsubq_s16(vandq_s8(v250, v267), vmvnq_s8(v250)));
        v267.i64[0] = -1;
        v267.i64[1] = -1;
        v269 = vorrq_s8(v268, v259);
        v268.i64[0] = 0xF000F000F000FLL;
        v268.i64[1] = 0xF000F000F000FLL;
        v270 = vandq_s8(vsubq_s16(vshlq_s16(v267, vsubq_s16(v268, v248)), v246), v250);
        v179 = vbslq_s8(v266, v256, v532);
        v178 = vbslq_s8(v266, v485, v533);
        v181 = vbslq_s8(v266, v484, v534);
        v176 = vbslq_s8(v266, v487, v535);
        v175 = vbslq_s8(v266, v251, v536);
        v125 = vbslq_s8(v266, v269, v531);
        v529 = vbslq_s8(v266, v500, v529);
        v530 = vbslq_s8(v266, vextq_s8(v494, v494, 8uLL), v530);
        v510 = vbslq_s8(v266, v217, v510);
        v512 = vbslq_s8(v266, v218, v512);
        v514 = vbslq_s8(v266, v219, v514);
        v516 = vbslq_s8(v266, v220, v516);
        v518 = vbslq_s8(v266, v221, v518);
        v519 = vbslq_s8(v266, v222, v519);
        v520 = vbslq_s8(v266, v223, v520);
        v521 = vbslq_s8(v266, v224, v521);
        v522 = vbslq_s8(v266, v225, v522);
        v523 = vbslq_s8(v266, v226, v523);
        v524 = vbslq_s8(v266, v489, v524);
        v525 = vbslq_s8(v266, v227, v525);
        v526 = vbslq_s8(v266, v498, v526);
        v527 = vbslq_s8(v266, v490, v527);
        v528 = vbslq_s8(v266, v228, v528);
        v537 = vbslq_s8(v266, v246, v537);
        v538 = vbslq_s8(v266, v505, v538);
        v539 = vbslq_s8(v266, v270, v539);
        v532 = v179;
        v533 = v178;
        v534 = v181;
        v535 = v176;
        v536 = v175;
        v531 = v125;
      }
    }

    v271 = vandq_s8(v539, vceqq_s16(v175, v179));
    v511 = vaddq_s16(v271, v510);
    v513 = vaddq_s16(v512, v271);
    v515 = vaddq_s16(v514, v271);
    v517 = vaddq_s16(v516, v271);
    v272 = vandq_s8(v539, vceqq_s16(v175, v178));
    v518 = vaddq_s16(v518, v272);
    v519 = vaddq_s16(v519, v272);
    v520 = vaddq_s16(v520, v272);
    v521 = vaddq_s16(v521, v272);
    v273 = vandq_s8(v539, vceqq_s16(v175, v181));
    v522 = vaddq_s16(v522, v273);
    v523 = vaddq_s16(v523, v273);
    v524 = vaddq_s16(v524, v273);
    v525 = vaddq_s16(v525, v273);
    v274 = vandq_s8(v539, vceqq_s16(v175, v176));
    v526 = vaddq_s16(v526, v274);
    v527 = vaddq_s16(v527, v274);
    v528 = vaddq_s16(v528, v274);
    v529 = vaddq_s16(v529, v274);
    v274.i64[0] = 0x8000800080008;
    v274.i64[1] = 0x8000800080008;
    v275.i64[0] = 0x3000300030003;
    v275.i64[1] = 0x3000300030003;
    v276.i64[0] = 0x2000200020002;
    v276.i64[1] = 0x2000200020002;
    v277 = vceqq_s16(vandq_s8(v125, v275), v276);
    v276.i64[0] = 0x10001000100010;
    v276.i64[1] = 0x10001000100010;
    v278 = vandq_s8(v277, v276);
    v276.i64[0] = 0x7000700070007;
    v276.i64[1] = 0x7000700070007;
    v279 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v175, vceqzq_s16(vandq_s8(v125, v274))), vandq_s8(vaddq_s16(v125, v125), v274)), v278), v179, v276), vshlq_n_s16(vaddq_s16(vaddq_s16(v181, v178), v176), 3uLL));
    v280 = vpaddq_s16(v279, v279);
    if ((vpaddq_s16(v280, v280).i16[0] + 75) > 0x3FF)
    {
      *a1 = v506;
      *(a1 + 16) = v507;
      *(a1 + 32) = v503;
      *(a1 + 48) = v504;
      *(a1 + 64) = v495;
      *(a1 + 80) = v496;
      v286 = (a1 + 96);
      v284 = 127;
      result = 128;
      *v286 = v508;
      v286[1] = v509;
    }

    else
    {
      v281 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v282 = 8 * (a1 & 7);
      if (v282)
      {
        v283 = *v281 & ~(-1 << v282);
      }

      else
      {
        v283 = 0;
      }

      *a2 = 0;
      v287 = v530.i64[0];
      if (v175.i16[0])
      {
        v288 = ((v175.i8[0] - 1) & 0xF) << 20;
      }

      else
      {
        v288 = 0;
      }

      if (v175.i16[1])
      {
        v289 = ((v175.i8[2] - 1) & 0xF) << 24;
      }

      else
      {
        v289 = 0;
      }

      if (v175.i16[2])
      {
        v290 = (v175.u16[2] << 28) - 0x10000000;
      }

      else
      {
        v290 = 0;
      }

      if (v175.i16[3])
      {
        v291 = ((v175.i8[6] - 1) & 7) << 32;
      }

      else
      {
        v291 = 0;
      }

      v292 = (v125.i8[0] & 0x1F | (32 * (v125.i8[2] & 0x1F)) & 0x83FF | ((v125.i8[4] & 0x1F) << 10) | ((v125.i8[6] & 0x1F) << 15) | v288 | v289 | v290) + v291;
      v293 = (v292 << v282) | v283;
      if (v282 >= 0x1C)
      {
        *v281 = v293;
        v293 = v292 >> (-8 * (a1 & 7u));
      }

      v294 = v287 & 0x1FF | ((WORD1(v287) & 0x1FF) << 9) | ((WORD2(v287) & 0x1FF) << 18) | ((BYTE6(v287) & 0x1F) << 27);
      v295 = (v282 + 36) & 0x3C;
      v296 = v293 | (v294 << v295);
      if (v295 >= 0x20)
      {
        *(v281 + (((v282 + 36) >> 3) & 8)) = v296;
        v296 = v294 >> -v295;
      }

      v297 = vsubq_s16(v536, v532);
      v298 = vsubq_s16(v536, v533);
      v299 = vsubq_s16(v536, v534);
      v300 = vsubq_s16(v536, v535);
      *v297.i8 = vqmovn_u16(v297);
      *v298.i8 = vqmovn_u16(v298);
      *v299.i8 = vqmovn_u16(v299);
      *v300.i8 = vqmovn_u16(v300);
      v301 = vtrn1q_s8(v297, v298);
      v302 = vtrn2q_s8(v297, v298);
      v303 = vtrn1q_s8(v299, v300);
      v304 = vtrn2q_s8(v299, v300);
      v305 = vzip1q_s16(v302, v304);
      v306 = vtrn2q_s16(v302, v304);
      v302.i64[0] = vzip1q_s32(vzip1q_s16(v301, v303), v305).u64[0];
      v306.i64[0] = vzip1q_s32(vtrn2q_s16(v301, v303), v306).u64[0];
      v299.i64[0] = 0x202020202020202;
      v299.i64[1] = 0x202020202020202;
      v307 = vandq_s8(vmovl_s16(vtst_s16(*v531.i8, 0x4000400040004)), v299);
      v299.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v299.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v301.i64[0] = -1;
      v301.i64[1] = -1;
      v308 = vshlq_u8(v301, vorrq_s8(v307, v299));
      v309 = vmovl_u8(vand_s8(*v308.i8, *v302.i8));
      v310 = vmovl_u8(vand_s8(*&vextq_s8(v308, v308, 8uLL), *v306.i8));
      v311 = vmovl_u8(*v307.i8);
      v312 = vmovl_high_u8(v307);
      v313 = vpaddq_s16(vshlq_u16(v309, vtrn1q_s16(0, v311)), vshlq_u16(v310, vtrn1q_s16(0, v312)));
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
      v325 = (v323.i64[0] << (v282 | 4u)) | v296;
      if (v324.i64[0] + (v282 | 4) >= 0x40)
      {
        v281[1] = v325;
        v325 = v323.i64[0] >> -(v282 | 4);
      }

      v326 = v324.i64[0] + (v282 | 0x44);
      v327 = v325 | (v323.i64[1] << v326);
      if ((v326 & 0x3F) + v324.i64[1] >= 0x40)
      {
        *(v281 + ((v326 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v327;
        v327 = v323.i64[1] >> -(v326 & 0x3F);
        if ((v326 & 0x3F) == 0)
        {
          v327 = 0;
        }
      }

      v328 = v326 + v324.i64[1];
      v329.i64[0] = 0x8000800080008;
      v329.i64[1] = 0x8000800080008;
      v330.i64[0] = -1;
      v330.i64[1] = -1;
      v331 = vandq_s8(vextq_s8(vtstq_s16(v531, v329), 0, 8uLL), v536);
      v332.i64[0] = 0xF000F000F000FLL;
      v332.i64[1] = 0xF000F000F000FLL;
      v333 = vandq_s8(vshlq_u16(v330, vaddq_s16(v331, v332)), v539);
      v334 = vmovl_u16(*v331.i8);
      v335 = vpaddq_s32(vshlq_u32(vmovl_u16(*v333.i8), vtrn1q_s32(0, v334)), vmovl_high_u16(v333));
      v336 = vpaddq_s32(v334, vmovl_high_u16(v331));
      v337.i64[0] = v335.u32[0];
      v337.i64[1] = v335.u32[1];
      v338 = v337;
      v337.i64[0] = v335.u32[2];
      v337.i64[1] = v335.u32[3];
      v339 = v337;
      v337.i64[0] = v336.u32[0];
      v337.i64[1] = v336.u32[1];
      v340 = v337;
      v337.i64[0] = v336.u32[2];
      v337.i64[1] = v336.u32[3];
      v341 = vpaddq_s64(vshlq_u64(v338, vzip1q_s64(0, v340)), vshlq_u64(v339, vzip1q_s64(0, v337)));
      v342 = vpaddq_s64(v340, v337);
      v343 = (v341.i64[0] << v328) | v327;
      if (v342.i64[0] + (v328 & 0x3F) >= 0x40)
      {
        *(v281 + ((v328 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v343;
        v343 = v341.i64[0] >> -(v328 & 0x3F);
        if ((v328 & 0x3F) == 0)
        {
          v343 = 0;
        }
      }

      v344 = v342.i64[0] + v328;
      v345 = v343 | (v341.i64[1] << v344);
      if ((v344 & 0x3F) + v342.i64[1] >= 0x40)
      {
        *(v281 + ((v344 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v345;
        v345 = v341.i64[1] >> -(v344 & 0x3F);
        if ((v344 & 0x3F) == 0)
        {
          v345 = 0;
        }
      }

      v346 = v344 + v342.i64[1];
      v347 = vextq_s8(0, v532, 8uLL);
      v348.i64[0] = 0xF000F000F000FLL;
      v348.i64[1] = 0xF000F000F000FLL;
      v349.i64[0] = -1;
      v349.i64[1] = -1;
      v350 = vandq_s8(vshlq_u16(v349, vaddq_s16(v347, v348)), v511);
      v351 = vmovl_u16(*v347.i8);
      v352 = vmovl_high_u16(v347);
      v353 = vpaddq_s32(vmovl_u16(*v350.i8), vshlq_u32(vmovl_high_u16(v350), vtrn1q_s32(0, v352)));
      v354 = vpaddq_s32(v351, v352);
      v355.i64[0] = v353.u32[0];
      v355.i64[1] = v353.u32[1];
      v356 = v355;
      v355.i64[0] = v353.u32[2];
      v355.i64[1] = v353.u32[3];
      v357 = v355;
      v355.i64[0] = v354.u32[0];
      v355.i64[1] = v354.u32[1];
      v358 = v355;
      v355.i64[0] = v354.u32[2];
      v355.i64[1] = v354.u32[3];
      v359 = vpaddq_s64(vshlq_u64(v356, vzip1q_s64(0, v358)), vshlq_u64(v357, vzip1q_s64(0, v355)));
      v360 = vpaddq_s64(v358, v355);
      v361 = (v359.i64[0] << v346) | v345;
      if (v360.i64[0] + (v346 & 0x3F) >= 0x40)
      {
        *(v281 + ((v346 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v361;
        v361 = v359.i64[0] >> -(v346 & 0x3F);
        if ((v346 & 0x3F) == 0)
        {
          v361 = 0;
        }
      }

      v362 = v360.i64[0] + v346;
      v363 = v361 | (v359.i64[1] << v362);
      if ((v362 & 0x3F) + v360.i64[1] >= 0x40)
      {
        *(v281 + ((v362 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v363;
        v363 = v359.i64[1] >> -(v362 & 0x3F);
        if ((v362 & 0x3F) == 0)
        {
          v363 = 0;
        }
      }

      v364 = v362 + v360.i64[1];
      v365.i64[0] = 0xF000F000F000FLL;
      v365.i64[1] = 0xF000F000F000FLL;
      v366.i64[0] = -1;
      v366.i64[1] = -1;
      v367 = vandq_s8(vshlq_u16(v366, vaddq_s16(v532, v365)), v513);
      v368 = vmovl_u16(*v532.i8);
      v369 = vmovl_high_u16(v532);
      v370 = vpaddq_s32(vshlq_u32(vmovl_u16(*v367.i8), vtrn1q_s32(0, v368)), vshlq_u32(vmovl_high_u16(v367), vtrn1q_s32(0, v369)));
      v371 = vpaddq_s32(v368, v369);
      v372.i64[0] = v370.u32[0];
      v372.i64[1] = v370.u32[1];
      v373 = v372;
      v372.i64[0] = v370.u32[2];
      v372.i64[1] = v370.u32[3];
      v374 = v372;
      v372.i64[0] = v371.u32[0];
      v372.i64[1] = v371.u32[1];
      v375 = v372;
      v372.i64[0] = v371.u32[2];
      v372.i64[1] = v371.u32[3];
      v376 = vpaddq_s64(vshlq_u64(v373, vzip1q_s64(0, v375)), vshlq_u64(v374, vzip1q_s64(0, v372)));
      v377 = vpaddq_s64(v375, v372);
      v378 = (v376.i64[0] << v364) | v363;
      if (v377.i64[0] + (v364 & 0x3F) >= 0x40)
      {
        *(v281 + ((v364 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v378;
        v378 = v376.i64[0] >> -(v364 & 0x3F);
        if ((v364 & 0x3F) == 0)
        {
          v378 = 0;
        }
      }

      v379 = v377.i64[0] + v364;
      v380 = v378 | (v376.i64[1] << v379);
      if ((v379 & 0x3F) + v377.i64[1] >= 0x40)
      {
        *(v281 + ((v379 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v380;
        v380 = v376.i64[1] >> -(v379 & 0x3F);
        if ((v379 & 0x3F) == 0)
        {
          v380 = 0;
        }
      }

      v381 = v379 + v377.i64[1];
      v382.i64[0] = 0xF000F000F000FLL;
      v382.i64[1] = 0xF000F000F000FLL;
      v383.i64[0] = -1;
      v383.i64[1] = -1;
      v384 = vandq_s8(vshlq_u16(v383, vaddq_s16(v532, v382)), v515);
      v385 = vmovl_u16(*v532.i8);
      v386 = vmovl_high_u16(v532);
      v387 = vpaddq_s32(vshlq_u32(vmovl_u16(*v384.i8), vtrn1q_s32(0, v385)), vshlq_u32(vmovl_high_u16(v384), vtrn1q_s32(0, v386)));
      v388 = vpaddq_s32(v385, v386);
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
      v393 = vpaddq_s64(vshlq_u64(v390, vzip1q_s64(0, v392)), vshlq_u64(v391, vzip1q_s64(0, v389)));
      v394 = vpaddq_s64(v392, v389);
      v395 = (v393.i64[0] << v381) | v380;
      if (v394.i64[0] + (v381 & 0x3F) >= 0x40)
      {
        *(v281 + ((v381 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v395;
        v395 = v393.i64[0] >> -(v381 & 0x3F);
        if ((v381 & 0x3F) == 0)
        {
          v395 = 0;
        }
      }

      v396 = v394.i64[0] + v381;
      v397 = v395 | (v393.i64[1] << v396);
      if ((v396 & 0x3F) + v394.i64[1] >= 0x40)
      {
        *(v281 + ((v396 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
        v397 = v393.i64[1] >> -(v396 & 0x3F);
        if ((v396 & 0x3F) == 0)
        {
          v397 = 0;
        }
      }

      v398 = v396 + v394.i64[1];
      v399.i64[0] = 0xF000F000F000FLL;
      v399.i64[1] = 0xF000F000F000FLL;
      v400.i64[0] = -1;
      v400.i64[1] = -1;
      v401 = vandq_s8(vshlq_u16(v400, vaddq_s16(v532, v399)), v517);
      v402 = vmovl_u16(*v532.i8);
      v403 = vmovl_high_u16(v532);
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
      v412 = (v410.i64[0] << v398) | v397;
      if (v411.i64[0] + (v398 & 0x3F) >= 0x40)
      {
        *(v281 + ((v398 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v412;
        v412 = v410.i64[0] >> -(v398 & 0x3F);
        if ((v398 & 0x3F) == 0)
        {
          v412 = 0;
        }
      }

      v413 = v411.i64[1];
      v414 = v411.i64[0] + v398;
      v415 = (v411.i64[0] + v398) & 0x3F;
      v416 = v412 | (v410.i64[1] << v414);
      if ((v415 + v411.i64[1]) >= 0x40)
      {
        *(v281 + ((v414 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
        v416 = v410.i64[1] >> -v415;
        if (!v415)
        {
          v416 = 0;
        }
      }

      v417 = 0;
      v418.i64[0] = 0xF000F000F000FLL;
      v418.i64[1] = 0xF000F000F000FLL;
      v419.i64[0] = -1;
      v419.i64[1] = -1;
      v420 = v414 + v413;
      do
      {
        v421 = vandq_s8(vshlq_u16(v419, vaddq_s16(v533, v418)), *(&v518 + v417));
        v422 = vmovl_u16(*v533.i8);
        v423 = vmovl_high_u16(v533);
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
        v432 = (v430.i64[0] << v420) | v416;
        if (v431.i64[0] + (v420 & 0x3F) >= 0x40)
        {
          *(v281 + ((v420 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v432;
          v432 = v430.i64[0] >> -(v420 & 0x3F);
          if ((v420 & 0x3F) == 0)
          {
            v432 = 0;
          }
        }

        v433 = v431.i64[0] + v420;
        v416 = v432 | (v430.i64[1] << v433);
        if ((v433 & 0x3F) + v431.i64[1] >= 0x40)
        {
          *(v281 + ((v433 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
          v416 = v430.i64[1] >> -(v433 & 0x3F);
          if ((v433 & 0x3F) == 0)
          {
            v416 = 0;
          }
        }

        v420 = v433 + v431.i64[1];
        v417 += 16;
      }

      while (v417 != 64);
      v434 = 0;
      v435.i64[0] = 0xF000F000F000FLL;
      v435.i64[1] = 0xF000F000F000FLL;
      v436.i64[0] = -1;
      v436.i64[1] = -1;
      do
      {
        v437 = vandq_s8(vshlq_u16(v436, vaddq_s16(v534, v435)), *(&v522 + v434));
        v438 = vmovl_u16(*v534.i8);
        v439 = vmovl_high_u16(v534);
        v440 = vpaddq_s32(vshlq_u32(vmovl_u16(*v437.i8), vtrn1q_s32(0, v438)), vshlq_u32(vmovl_high_u16(v437), vtrn1q_s32(0, v439)));
        v441 = vpaddq_s32(v438, v439);
        v442.i64[0] = v440.u32[0];
        v442.i64[1] = v440.u32[1];
        v443 = v442;
        v442.i64[0] = v440.u32[2];
        v442.i64[1] = v440.u32[3];
        v444 = v442;
        v442.i64[0] = v441.u32[0];
        v442.i64[1] = v441.u32[1];
        v445 = v442;
        v442.i64[0] = v441.u32[2];
        v442.i64[1] = v441.u32[3];
        v446 = vpaddq_s64(vshlq_u64(v443, vzip1q_s64(0, v445)), vshlq_u64(v444, vzip1q_s64(0, v442)));
        v447 = vpaddq_s64(v445, v442);
        v448 = (v446.i64[0] << v420) | v416;
        if (v447.i64[0] + (v420 & 0x3F) >= 0x40)
        {
          *(v281 + ((v420 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v448;
          v448 = v446.i64[0] >> -(v420 & 0x3F);
          if ((v420 & 0x3F) == 0)
          {
            v448 = 0;
          }
        }

        v449 = v447.i64[0] + v420;
        v416 = v448 | (v446.i64[1] << v449);
        if ((v449 & 0x3F) + v447.i64[1] >= 0x40)
        {
          *(v281 + ((v449 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
          v416 = v446.i64[1] >> -(v449 & 0x3F);
          if ((v449 & 0x3F) == 0)
          {
            v416 = 0;
          }
        }

        v420 = v449 + v447.i64[1];
        v434 += 16;
      }

      while (v434 != 64);
      v450 = 0;
      v451.i64[0] = 0xF000F000F000FLL;
      v451.i64[1] = 0xF000F000F000FLL;
      v452.i64[0] = -1;
      v452.i64[1] = -1;
      do
      {
        v453 = vandq_s8(vshlq_u16(v452, vaddq_s16(v535, v451)), *(&v526 + v450));
        v454 = vmovl_u16(*v535.i8);
        v455 = vmovl_high_u16(v535);
        v456 = vpaddq_s32(vshlq_u32(vmovl_u16(*v453.i8), vtrn1q_s32(0, v454)), vshlq_u32(vmovl_high_u16(v453), vtrn1q_s32(0, v455)));
        v457 = vpaddq_s32(v454, v455);
        v458.i64[0] = v456.u32[0];
        v458.i64[1] = v456.u32[1];
        v459 = v458;
        v458.i64[0] = v456.u32[2];
        v458.i64[1] = v456.u32[3];
        v460 = v458;
        v458.i64[0] = v457.u32[0];
        v458.i64[1] = v457.u32[1];
        v461 = v458;
        v458.i64[0] = v457.u32[2];
        v458.i64[1] = v457.u32[3];
        v462 = vpaddq_s64(vshlq_u64(v459, vzip1q_s64(0, v461)), vshlq_u64(v460, vzip1q_s64(0, v458)));
        v463 = vpaddq_s64(v461, v458);
        v464 = (v462.i64[0] << v420) | v416;
        if (v463.i64[0] + (v420 & 0x3F) >= 0x40)
        {
          *(v281 + ((v420 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v464;
          v464 = v462.i64[0] >> -(v420 & 0x3F);
          if ((v420 & 0x3F) == 0)
          {
            v464 = 0;
          }
        }

        v465 = v463.i64[0] + v420;
        v416 = v464 | (v462.i64[1] << v465);
        if ((v465 & 0x3F) + v463.i64[1] >= 0x40)
        {
          *(v281 + ((v465 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
          v416 = v462.i64[1] >> -(v465 & 0x3F);
          if ((v465 & 0x3F) == 0)
          {
            v416 = 0;
          }
        }

        v420 = v465 + v463.i64[1];
        v450 += 16;
      }

      while (v450 != 64);
      if ((v420 & 0x3F) != 0)
      {
        *(v281 + ((v420 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
      }

      result = (v420 - v282 + 7) >> 3;
      v284 = *a2 | (result - 1);
    }
  }

  else
  {
    *a1 = a3->i32[0];
    v284 = 3;
    result = 4;
  }

  *a2 = v284;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, (v11 + v12), a2, v15, v14);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + 4, a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v12 + 64), a2, v20, v19);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, (v11 + 4 * a2), a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, (v11 + 6 * a2), a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + 4 * a2 + 64), a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + 6 * a2 + 64), a2, v30, v29);
}

double AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(void *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 8 * (&v23 & 7);
  v5 = 9;
  v6 = v4;
  do
  {
    v7 = 64 - v6;
    if (64 - v6 >= v5)
    {
      v7 = v5;
    }

    *&v22[8 * v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v3) & ~(-1 << v7)) << v6;
    v3 += v7;
    v8 = v7 + v6;
    v2 += v8 >> 6;
    v6 = v8 & 0x3F;
    v5 -= v7;
  }

  while (v5);
  v9 = v6 - v4 + (v2 << 6);
  if (v9 - 24 >= 0xFFFFFFFFFFFFFFDFLL)
  {
    v10 = 9;
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
    if (v9 - 24 >= 0xFFFFFFFFFFFFFFDFLL)
    {
      v13 = 0;
      v14 = 9;
      do
      {
        v15 = 64 - v6;
        if (64 - v6 >= v14)
        {
          v15 = v14;
        }

        *&v22[8 * v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v13) & ~(-1 << v15)) << v6;
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

  if (v9 - 28 >= 0xFFFFFFFFFFFFFFDFLL)
  {
    v17 = 0;
    v18 = 5;
    do
    {
      v19 = 64 - v6;
      if (64 - v6 >= v18)
      {
        v19 = v18;
      }

      *&v22[8 * v2] |= ((0xFFFFFFFFFFFFFFFFLL >> v17) & ~(-1 << v19)) << v6;
      v17 += v19;
      v20 = v19 + v6;
      v2 += v20 >> 6;
      v6 = v20 & 0x3F;
      v18 -= v19;
    }

    while (v18);
  }

  result = 0.0;
  *a1 = 0;
  *(a1 + a2) = 0;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(float32x4_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4 == 127)
  {
    v19 = *(a3 + 16);
    v20 = *(a3 + 32);
    v21 = *(a3 + 48);
    v22 = *(a3 + 64);
    v23 = *(a3 + 80);
    v24 = *(a3 + 96);
    v25 = *(a3 + 112);
    f32 = a1[2].f32;
    *a1 = *a3;
    a1[1] = v19;
    v27 = (a1->f32 + a2);
    *f32 = v20;
    f32[1] = v21;
    *v27 = v22;
    v27[1] = v23;
    v27 += 2;
    *v27 = v24;
    v27[1] = v25;
    return 128;
  }

  else if (a4 == 3)
  {
    v17 = vld1q_dup_f32(a3);
    *a1 = v17;
    a1[1] = v17;
    a1[2] = v17;
    a1[3] = v17;
    v18 = (a1 + a2);
    *v18 = v17;
    v18[1] = v17;
    v18[2] = v17;
    v18[3] = v17;
    return 4;
  }

  else if (a4)
  {
    v428 = v13;
    v429 = v12;
    v430 = v11;
    v431 = v10;
    v432 = v9;
    v433 = v8;
    v434 = v7;
    v435 = v6;
    v436 = v4;
    v437 = v5;
    v404 = 0;
    v403 = (8 * (a3 & 7)) | 0x400;
    v401 = 8 * (a3 & 7);
    v402 = a3 & 0xFFFFFFFFFFFFFFF8;
    result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)14,AGX::AppleCompressionGen2::Vec<short>>(&v422, v427, &v421, &v401, a4);
    v31.i64[0] = 0x3000300030003;
    v31.i64[1] = 0x3000300030003;
    v32 = v422;
    v33 = vandq_s8(v422, v31);
    v34 = vbicq_s8(v427[0], vceqq_s16(v33, v31));
    v427[0] = v34;
    v423 = v34;
    v424 = v34;
    v425 = v34;
    v426 = v34;
    v35.i64[0] = 0x202020202020202;
    v35.i64[1] = 0x202020202020202;
    v36 = vandq_s8(vmovl_s16(vtst_s16(*v422.i8, 0x4000400040004)), v35);
    v37 = v401;
    if (vmaxvq_s8(v36) < 1)
    {
      v53.i64[0] = -1;
      v53.i64[1] = -1;
      v54.i64[0] = -1;
      v54.i64[1] = -1;
      v55.i64[0] = -1;
      v55.i64[1] = -1;
      v56.i64[0] = -1;
      v56.i64[1] = -1;
      v48 = a1;
      v49 = a2;
    }

    else
    {
      v38 = vmovl_u8(*&vpaddq_s8(v36, v36));
      v39 = vmovl_u16(*&vpaddq_s16(v38, v38));
      v40 = vpaddq_s32(v39, v39).u64[0];
      v41.i64[0] = v40;
      v41.i64[1] = HIDWORD(v40);
      v42 = v41;
      v43 = vaddvq_s64(v41);
      v44 = v43;
      v45 = v401 + v43;
      if (v403)
      {
        v46 = v403 >= v45;
      }

      else
      {
        v46 = 1;
      }

      v47 = v46;
      v48 = a1;
      v49 = a2;
      if (v43 <= 0x80 && (v47 & 1) != 0)
      {
        v30.i64[0] = 63;
        v50 = (v402 + 8 * (v401 >> 6));
        v51 = vaddq_s64(vdupq_lane_s64(vandq_s8(v401, v30).i64[0], 0), vzip1q_s64(0, v42));
        v52 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v50, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v51)), vshlq_u64(vdupq_lane_s64(v50->i64[0], 0), vnegq_s64(v51)));
        if ((v401 & 0x3F) + v44 >= 0x81)
        {
          v52 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v50[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v51)), vshlq_u64(vdupq_laneq_s64(v50[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v51))), v52);
        }

        v37 = v45;
      }

      else
      {
        v404 = 1;
        v52 = 0uLL;
      }

      v57 = vzip1_s32(*v39.i8, *&vextq_s8(v39, v39, 8uLL));
      v58.i64[0] = v57.u32[0];
      v58.i64[1] = v57.u32[1];
      v59 = vshlq_u64(v52, vnegq_s64(v58));
      v60 = vuzp1q_s32(vzip1q_s64(v52, v59), vzip2q_s64(v52, v59));
      v61 = vshlq_u32(v60, vnegq_s32((*&v38 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v62 = vuzp1q_s16(vzip1q_s32(v60, v61), vzip2q_s32(v60, v61));
      v63 = vshlq_u16(v62, vnegq_s16((*&v36 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
      v64 = vuzp1q_s8(vzip1q_s16(v62, v63), vzip2q_s16(v62, v63));
      v63.i64[0] = 0x101010101010101;
      v63.i64[1] = 0x101010101010101;
      v65 = vshlq_s8(v63, v36);
      v63.i64[0] = -1;
      v63.i64[1] = -1;
      v66 = vqtbl1q_s8(vandq_s8(vaddq_s8(v65, v63), v64), xmmword_29D2F0F70);
      *v64.i8 = vdup_lane_s32(*v66.i8, 0);
      *v63.i8 = vdup_lane_s32(*v66.i8, 1);
      v67 = vdupq_laneq_s32(v66, 2).u64[0];
      v66.i64[0] = vdupq_laneq_s32(v66, 3).u64[0];
      v423 = vsubw_s8(v423, *v64.i8);
      v424 = vsubw_s8(v424, *v63.i8);
      v425 = vsubw_s8(v425, v67);
      v426 = vsubw_s8(v426, *v66.i8);
      v56 = vmovl_s8(vceqz_s8(*v64.i8));
      v55 = vmovl_s8(vceqz_s8(*v63.i8));
      v54 = vmovl_s8(vceqz_s8(v67));
      v53 = vmovl_s8(vceqz_s8(*v66.i8));
    }

    v68.i64[0] = 0x8000800080008;
    v68.i64[1] = 0x8000800080008;
    v69 = 0uLL;
    v70 = vandq_s8(vextq_s8(vtstq_s16(v422, v68), 0, 8uLL), v34);
    v71 = vmovl_u16(*&vpaddq_s16(v70, v70));
    v72 = vpaddq_s32(v71, v71).u64[0];
    v73.i64[0] = v72;
    v73.i64[1] = HIDWORD(v72);
    v74 = v73;
    v75 = vaddvq_s64(v73);
    if (v403)
    {
      v76 = v403 >= v37 + v75;
    }

    else
    {
      v76 = 1;
    }

    v77 = v76;
    if (v75 <= 0x80 && (v77 & 1) != 0)
    {
      v78 = vaddq_s64(vdupq_n_s64(v37 & 0x3F), vzip1q_s64(0, v74));
      v79 = (v402 + 8 * (v37 >> 6));
      v69 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v79, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v78)), vshlq_u64(vdupq_lane_s64(v79->i64[0], 0), vnegq_s64(v78)));
      if ((v37 & 0x3F) + v75 >= 0x81)
      {
        v69 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v79[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v78)), vshlq_u64(vdupq_laneq_s64(v79[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v78))), v69);
      }

      v37 += v75;
    }

    else
    {
      v404 = 1;
    }

    v80 = vzip1_s32(*v71.i8, *&vextq_s8(v71, v71, 8uLL));
    v81.i64[0] = v80.u32[0];
    v81.i64[1] = v80.u32[1];
    v82 = vshlq_u64(v69, vnegq_s64(v81));
    v83 = vuzp1q_s32(vzip1q_s64(v69, v82), vzip2q_s64(v69, v82));
    v84.i64[0] = 0xFFFF0000FFFFLL;
    v84.i64[1] = 0xFFFF0000FFFFLL;
    v85 = vshlq_u32(v83, vnegq_s32(vandq_s8(v70, v84)));
    v86 = vuzp1q_s16(vzip1q_s32(v83, v85), vzip2q_s32(v83, v85));
    v85.i64[0] = 0xF000F000F000FLL;
    v85.i64[1] = 0xF000F000F000FLL;
    v87.i64[0] = 0x10001000100010;
    v87.i64[1] = 0x10001000100010;
    v88 = vshlq_s16(vshlq_s16(v86, vsubq_s16(v87, v70)), vaddq_s16(v70, v85));
    v427[3] = v88;
    v89 = v422.i8[0] & 3;
    if (v89 == 2)
    {
      if (v403)
      {
        v90 = v37 + 8;
        v91 = v37 + 16;
        if (v403 >= v37 + 8)
        {
          v37 += 8;
        }

        else
        {
          v91 = v37 + 8;
        }

        if (v403 >= v91)
        {
          v37 = v91;
        }

        if (v403 < v90 || v403 < v91)
        {
          v404 = 1;
        }
      }

      else
      {
        v37 += 16;
      }
    }

    v92 = 0uLL;
    v93 = vextq_s8(0, v423, 8uLL);
    v94 = vmovl_u16(*&vpaddq_s16(v93, v93));
    v95 = vpaddq_s32(v94, v94).u64[0];
    v96.i64[0] = v95;
    v96.i64[1] = HIDWORD(v95);
    v97 = v96;
    v98 = vaddvq_s64(v96);
    v99 = v37 + v98;
    if (v403)
    {
      v100 = v403 >= v99;
    }

    else
    {
      v100 = 1;
    }

    v101 = v100;
    if (v98 <= 0x80 && (v101 & 1) != 0)
    {
      v102 = v37 & 0x3F;
      v103 = vaddq_s64(vdupq_n_s64(v102), vzip1q_s64(0, v97));
      v104 = v402;
      v105 = (v402 + 8 * (v37 >> 6));
      v92 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v105, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v103)), vshlq_u64(vdupq_lane_s64(v105->i64[0], 0), vnegq_s64(v103)));
      if (v102 + v98 >= 0x81)
      {
        v92 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v105[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v103)), vshlq_u64(vdupq_laneq_s64(v105[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v103))), v92);
      }

      v106 = v404;
      v37 = v99;
    }

    else
    {
      v106 = 1;
      v104 = v402;
    }

    v107 = vzip1_s32(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
    v108.i64[0] = v107.u32[0];
    v108.i64[1] = v107.u32[1];
    v109 = vshlq_u64(v92, vnegq_s64(v108));
    v110 = vuzp1q_s32(vzip1q_s64(v92, v109), vzip2q_s64(v92, v109));
    v111.i64[0] = 0xFFFF0000FFFFLL;
    v111.i64[1] = 0xFFFF0000FFFFLL;
    v112 = vshlq_u32(v110, vnegq_s32(vandq_s8(v93, v111)));
    v113.i64[0] = 0xF000F000F000FLL;
    v113.i64[1] = 0xF000F000F000FLL;
    v114.i64[0] = 0x10001000100010;
    v114.i64[1] = 0x10001000100010;
    v115 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v110, v112), vzip2q_s32(v110, v112)), vsubq_s16(v114, v93)), vaddq_s16(v93, v113));
    v405 = v115;
    v116 = vmovl_u16(*&vpaddq_s16(v423, v423));
    v110.i64[0] = vpaddq_s32(v116, v116).u64[0];
    v108.i64[0] = v110.u32[0];
    v108.i64[1] = v110.u32[1];
    v117 = v108;
    v118 = vaddvq_s64(v108);
    v119 = v37 + v118;
    if (v403)
    {
      v120 = v403 >= v119;
    }

    else
    {
      v120 = 1;
    }

    v121 = v120;
    v122 = 0uLL;
    if (v118 <= 0x80 && v121)
    {
      v123 = v37 & 0x3F;
      v124 = vaddq_s64(vdupq_n_s64(v123), vzip1q_s64(0, v117));
      v125 = (v104 + 8 * (v37 >> 6));
      v126 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v125, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v124)), vshlq_u64(vdupq_lane_s64(v125->i64[0], 0), vnegq_s64(v124)));
      if (v123 + v118 >= 0x81)
      {
        v126 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v125[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v124)), vshlq_u64(vdupq_laneq_s64(v125[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v124))), v126);
      }
    }

    else
    {
      v106 = 1;
      v119 = v37;
      v126 = 0uLL;
    }

    v127 = vzip1_s32(*v116.i8, *&vextq_s8(v116, v116, 8uLL));
    v128.i64[0] = v127.u32[0];
    v128.i64[1] = v127.u32[1];
    v129 = vnegq_s64(v128);
    v130 = vshlq_u64(v126, v129);
    v131 = vuzp1q_s32(vzip1q_s64(v126, v130), vzip2q_s64(v126, v130));
    v132 = vnegq_s32(vandq_s8(v423, v111));
    v133 = vshlq_u32(v131, v132);
    v134 = vuzp1q_s16(vzip1q_s32(v131, v133), vzip2q_s32(v131, v133));
    v135 = vaddq_s16(v423, v113);
    v136 = vsubq_s16(v114, v423);
    v137 = vshlq_s16(vshlq_s16(v134, v136), v135);
    v406 = v137;
    v138 = v119 + v118;
    if (v403)
    {
      v139 = v403 >= v138;
    }

    else
    {
      v139 = 1;
    }

    v140 = v139;
    if (v118 <= 0x80 && v140)
    {
      v141 = v119 & 0x3F;
      v142 = vaddq_s64(vdupq_n_s64(v141), vzip1q_s64(0, v117));
      v143 = (v104 + 8 * (v119 >> 6));
      v122 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v143, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v142)), vshlq_u64(vdupq_lane_s64(v143->i64[0], 0), vnegq_s64(v142)));
      if (v141 + v118 >= 0x81)
      {
        v122 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v143[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v142)), vshlq_u64(vdupq_laneq_s64(v143[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v142))), v122);
      }
    }

    else
    {
      v106 = 1;
      v138 = v119;
    }

    v144 = vshlq_u64(v122, v129);
    v145 = vuzp1q_s32(vzip1q_s64(v122, v144), vzip2q_s64(v122, v144));
    v146 = vshlq_u32(v145, v132);
    v147 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v145, v146), vzip2q_s32(v145, v146)), v136), v135);
    v407 = v147;
    v148 = v138 + v118;
    if (v403)
    {
      v149 = v403 >= v148;
    }

    else
    {
      v149 = 1;
    }

    v150 = v149;
    v151 = 0uLL;
    if (v118 <= 0x80 && v150)
    {
      v152 = v138 & 0x3F;
      v153 = vaddq_s64(vdupq_n_s64(v152), vzip1q_s64(0, v117));
      v154 = (v104 + 8 * (v138 >> 6));
      v155 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v154, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v153)), vshlq_u64(vdupq_lane_s64(v154->i64[0], 0), vnegq_s64(v153)));
      if (v152 + v118 >= 0x81)
      {
        v155 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v154[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v153)), vshlq_u64(vdupq_laneq_s64(v154[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v153))), v155);
      }
    }

    else
    {
      v106 = 1;
      v148 = v138;
      v155 = 0uLL;
    }

    v156 = vshlq_u64(v155, v129);
    v157 = vuzp1q_s32(vzip1q_s64(v155, v156), vzip2q_s64(v155, v156));
    v158 = vshlq_u32(v157, v132);
    v159 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v157, v158), vzip2q_s32(v157, v158)), v136), v135);
    v408 = v159;
    v160 = vmovl_u16(*&vpaddq_s16(v424, v424));
    v161 = vpaddq_s32(v160, v160).u64[0];
    v162.i64[0] = v161;
    v162.i64[1] = HIDWORD(v161);
    v163 = v162;
    v164 = vaddvq_s64(v162);
    v165 = v164;
    v166 = v148 + v164;
    if (v403)
    {
      v167 = v403 >= v166;
    }

    else
    {
      v167 = 1;
    }

    v168 = v167;
    if (v164 <= 0x80 && v168)
    {
      v169 = v148 & 0x3F;
      v170 = vaddq_s64(vdupq_n_s64(v169), vzip1q_s64(0, v163));
      v171 = (v104 + 8 * (v148 >> 6));
      v151 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v171, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v170)), vshlq_u64(vdupq_lane_s64(v171->i64[0], 0), vnegq_s64(v170)));
      if (v169 + v165 >= 0x81)
      {
        v151 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v171[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v170)), vshlq_u64(vdupq_laneq_s64(v171[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v170))), v151);
      }
    }

    else
    {
      v106 = 1;
      v166 = v148;
    }

    v172 = vzip1_s32(*v160.i8, *&vextq_s8(v160, v160, 8uLL));
    v173.i64[0] = v172.u32[0];
    v173.i64[1] = v172.u32[1];
    v174 = vnegq_s64(v173);
    v175 = vshlq_u64(v151, v174);
    v176 = vuzp1q_s32(vzip1q_s64(v151, v175), vzip2q_s64(v151, v175));
    v177.i64[0] = 0xFFFF0000FFFFLL;
    v177.i64[1] = 0xFFFF0000FFFFLL;
    v178 = vnegq_s32(vandq_s8(v424, v177));
    v179 = vshlq_u32(v176, v178);
    v180 = vuzp1q_s16(vzip1q_s32(v176, v179), vzip2q_s32(v176, v179));
    v179.i64[0] = 0xF000F000F000FLL;
    v179.i64[1] = 0xF000F000F000FLL;
    v181 = vaddq_s16(v424, v179);
    v179.i64[0] = 0x10001000100010;
    v179.i64[1] = 0x10001000100010;
    v182 = vsubq_s16(v179, v424);
    v183 = vshlq_s16(vshlq_s16(v180, v182), v181);
    v409 = v183;
    v184 = v166 + v165;
    if (v403)
    {
      v185 = v403 >= v184;
    }

    else
    {
      v185 = 1;
    }

    v186 = v185;
    v187 = 0uLL;
    if (v165 <= 0x80 && v186)
    {
      v188 = v166 & 0x3F;
      v189 = vaddq_s64(vdupq_n_s64(v188), vzip1q_s64(0, v163));
      v190 = (v104 + 8 * (v166 >> 6));
      v191 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v190, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v189)), vshlq_u64(vdupq_lane_s64(v190->i64[0], 0), vnegq_s64(v189)));
      if (v188 + v165 >= 0x81)
      {
        v191 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v190[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v189)), vshlq_u64(vdupq_laneq_s64(v190[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v189))), v191);
      }
    }

    else
    {
      v106 = 1;
      v184 = v166;
      v191 = 0uLL;
    }

    v192 = vshlq_u64(v191, v174);
    v193 = vuzp1q_s32(vzip1q_s64(v191, v192), vzip2q_s64(v191, v192));
    v194 = vshlq_u32(v193, v178);
    v195 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v193, v194), vzip2q_s32(v193, v194)), v182), v181);
    v410 = v195;
    v196 = v184 + v165;
    if (v403)
    {
      v197 = v403 >= v196;
    }

    else
    {
      v197 = 1;
    }

    v198 = v197;
    if (v165 <= 0x80 && v198)
    {
      v199 = v184 & 0x3F;
      v200 = vaddq_s64(vdupq_n_s64(v199), vzip1q_s64(0, v163));
      v201 = (v104 + 8 * (v184 >> 6));
      v187 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v201, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v200)), vshlq_u64(vdupq_lane_s64(v201->i64[0], 0), vnegq_s64(v200)));
      if (v199 + v165 >= 0x81)
      {
        v187 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v201[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v200)), vshlq_u64(vdupq_laneq_s64(v201[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v200))), v187);
      }
    }

    else
    {
      v106 = 1;
      v196 = v184;
    }

    v202 = vshlq_u64(v187, v174);
    v203 = vuzp1q_s32(vzip1q_s64(v187, v202), vzip2q_s64(v187, v202));
    v204 = vshlq_u32(v203, v178);
    v205 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v203, v204), vzip2q_s32(v203, v204)), v182), v181);
    v411 = v205;
    v206 = v196 + v165;
    if (v403)
    {
      v207 = v403 >= v206;
    }

    else
    {
      v207 = 1;
    }

    v208 = v207;
    v209 = 0uLL;
    if (v165 <= 0x80 && v208)
    {
      v210 = v196 & 0x3F;
      v211 = vaddq_s64(vdupq_n_s64(v210), vzip1q_s64(0, v163));
      v212 = (v104 + 8 * (v196 >> 6));
      v213 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v212, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v211)), vshlq_u64(vdupq_lane_s64(v212->i64[0], 0), vnegq_s64(v211)));
      if (v210 + v165 >= 0x81)
      {
        v213 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v212[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v211)), vshlq_u64(vdupq_laneq_s64(v212[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v211))), v213);
      }
    }

    else
    {
      v106 = 1;
      v206 = v196;
      v213 = 0uLL;
    }

    v214 = vshlq_u64(v213, v174);
    v215 = vuzp1q_s32(vzip1q_s64(v213, v214), vzip2q_s64(v213, v214));
    v216 = vshlq_u32(v215, v178);
    v217 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v215, v216), vzip2q_s32(v215, v216)), v182), v181);
    v412 = v217;
    v218 = vmovl_u16(*&vpaddq_s16(v425, v425));
    v219 = vpaddq_s32(v218, v218).u64[0];
    v220.i64[0] = v219;
    v220.i64[1] = HIDWORD(v219);
    v221 = v220;
    v222 = vaddvq_s64(v220);
    v223 = v222;
    v224 = v206 + v222;
    if (v403)
    {
      v225 = v403 >= v224;
    }

    else
    {
      v225 = 1;
    }

    v226 = v225;
    if (v222 <= 0x80 && v226)
    {
      v227 = v206 & 0x3F;
      v228 = vaddq_s64(vdupq_n_s64(v227), vzip1q_s64(0, v221));
      v229 = (v104 + 8 * (v206 >> 6));
      v209 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v229, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v228)), vshlq_u64(vdupq_lane_s64(v229->i64[0], 0), vnegq_s64(v228)));
      if (v227 + v223 >= 0x81)
      {
        v209 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v229[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v228)), vshlq_u64(vdupq_laneq_s64(v229[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v228))), v209);
      }
    }

    else
    {
      v106 = 1;
      v224 = v206;
    }

    v230 = vzip1_s32(*v218.i8, *&vextq_s8(v218, v218, 8uLL));
    v231.i64[0] = v230.u32[0];
    v231.i64[1] = v230.u32[1];
    v232 = vnegq_s64(v231);
    v233 = vshlq_u64(v209, v232);
    v234 = vuzp1q_s32(vzip1q_s64(v209, v233), vzip2q_s64(v209, v233));
    v235.i64[0] = 0xFFFF0000FFFFLL;
    v235.i64[1] = 0xFFFF0000FFFFLL;
    v236 = vnegq_s32(vandq_s8(v425, v235));
    v237 = vshlq_u32(v234, v236);
    v238 = vuzp1q_s16(vzip1q_s32(v234, v237), vzip2q_s32(v234, v237));
    v237.i64[0] = 0xF000F000F000FLL;
    v237.i64[1] = 0xF000F000F000FLL;
    v239 = vaddq_s16(v425, v237);
    v237.i64[0] = 0x10001000100010;
    v237.i64[1] = 0x10001000100010;
    v240 = vsubq_s16(v237, v425);
    v241 = vshlq_s16(vshlq_s16(v238, v240), v239);
    v413 = v241;
    v242 = v224 + v223;
    if (v403)
    {
      v243 = v403 >= v242;
    }

    else
    {
      v243 = 1;
    }

    v244 = v243;
    v245 = 0uLL;
    if (v223 <= 0x80 && v244)
    {
      v246 = v224 & 0x3F;
      v247 = vaddq_s64(vdupq_n_s64(v246), vzip1q_s64(0, v221));
      v248 = (v104 + 8 * (v224 >> 6));
      v249 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v248, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v247)), vshlq_u64(vdupq_lane_s64(v248->i64[0], 0), vnegq_s64(v247)));
      if (v246 + v223 >= 0x81)
      {
        v249 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v248[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v247)), vshlq_u64(vdupq_laneq_s64(v248[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v247))), v249);
      }
    }

    else
    {
      v106 = 1;
      v242 = v224;
      v249 = 0uLL;
    }

    v250 = vshlq_u64(v249, v232);
    v251 = vuzp1q_s32(vzip1q_s64(v249, v250), vzip2q_s64(v249, v250));
    v252 = vshlq_u32(v251, v236);
    v253 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v251, v252), vzip2q_s32(v251, v252)), v240), v239);
    v414 = v253;
    v254 = v242 + v223;
    if (v403)
    {
      v255 = v403 >= v254;
    }

    else
    {
      v255 = 1;
    }

    v256 = v255;
    if (v223 <= 0x80 && v256)
    {
      v257 = v242 & 0x3F;
      v258 = vaddq_s64(vdupq_n_s64(v257), vzip1q_s64(0, v221));
      v259 = (v104 + 8 * (v242 >> 6));
      v245 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v259, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v258)), vshlq_u64(vdupq_lane_s64(v259->i64[0], 0), vnegq_s64(v258)));
      if (v257 + v223 >= 0x81)
      {
        v245 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v259[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v258)), vshlq_u64(vdupq_laneq_s64(v259[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v258))), v245);
      }
    }

    else
    {
      v106 = 1;
      v254 = v242;
    }

    v260 = vshlq_u64(v245, v232);
    v261 = vuzp1q_s32(vzip1q_s64(v245, v260), vzip2q_s64(v245, v260));
    v262 = vshlq_u32(v261, v236);
    v263 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v261, v262), vzip2q_s32(v261, v262)), v240), v239);
    v415 = v263;
    v264 = v254 + v223;
    if (v403)
    {
      v265 = v403 >= v264;
    }

    else
    {
      v265 = 1;
    }

    v266 = v265;
    v267 = 0uLL;
    if (v223 <= 0x80 && v266)
    {
      v268 = v254 & 0x3F;
      v269 = vaddq_s64(vdupq_n_s64(v268), vzip1q_s64(0, v221));
      v270 = (v104 + 8 * (v254 >> 6));
      v271 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v270, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v269)), vshlq_u64(vdupq_lane_s64(v270->i64[0], 0), vnegq_s64(v269)));
      if (v268 + v223 >= 0x81)
      {
        v271 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v270[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v269)), vshlq_u64(vdupq_laneq_s64(v270[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v269))), v271);
      }
    }

    else
    {
      v106 = 1;
      v264 = v254;
      v271 = 0uLL;
    }

    v272 = vshlq_u64(v271, v232);
    v273 = vuzp1q_s32(vzip1q_s64(v271, v272), vzip2q_s64(v271, v272));
    v274 = vshlq_u32(v273, v236);
    v275 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v273, v274), vzip2q_s32(v273, v274)), v240), v239);
    v416 = v275;
    v276 = vmovl_u16(*&vpaddq_s16(v426, v426));
    v277 = vpaddq_s32(v276, v276).u64[0];
    v278.i64[0] = v277;
    v278.i64[1] = HIDWORD(v277);
    v279 = v278;
    v280 = vaddvq_s64(v278);
    v281 = v280;
    v282 = v264 + v280;
    if (v403)
    {
      v283 = v403 >= v282;
    }

    else
    {
      v283 = 1;
    }

    v284 = v283;
    if (v280 <= 0x80 && v284)
    {
      v285 = v264 & 0x3F;
      v286 = vaddq_s64(vdupq_n_s64(v285), vzip1q_s64(0, v279));
      v287 = (v104 + 8 * (v264 >> 6));
      v267 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v287, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v286)), vshlq_u64(vdupq_lane_s64(v287->i64[0], 0), vnegq_s64(v286)));
      if (v285 + v281 >= 0x81)
      {
        v267 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v287[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v286)), vshlq_u64(vdupq_laneq_s64(v287[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v286))), v267);
      }
    }

    else
    {
      v106 = 1;
      v282 = v264;
    }

    v288 = vzip1_s32(*v276.i8, *&vextq_s8(v276, v276, 8uLL));
    v289.i64[0] = v288.u32[0];
    v289.i64[1] = v288.u32[1];
    v290 = vnegq_s64(v289);
    v291 = vshlq_u64(v267, v290);
    v292 = vuzp1q_s32(vzip1q_s64(v267, v291), vzip2q_s64(v267, v291));
    v291.i64[0] = 0xFFFF0000FFFFLL;
    v291.i64[1] = 0xFFFF0000FFFFLL;
    v293 = vnegq_s32(vandq_s8(v426, v291));
    v294 = vshlq_u32(v292, v293);
    v295 = vuzp1q_s16(vzip1q_s32(v292, v294), vzip2q_s32(v292, v294));
    v292.i64[0] = 0xF000F000F000FLL;
    v292.i64[1] = 0xF000F000F000FLL;
    v296 = vaddq_s16(v426, v292);
    v294.i64[0] = 0x10001000100010;
    v294.i64[1] = 0x10001000100010;
    v297 = vsubq_s16(v294, v426);
    v298 = vshlq_s16(vshlq_s16(v295, v297), v296);
    v417 = v298;
    v299 = v282 + v281;
    if (v403)
    {
      v300 = v403 >= v299;
    }

    else
    {
      v300 = 1;
    }

    v301 = v300;
    v302 = 0uLL;
    if (v281 <= 0x80 && v301)
    {
      v303 = v282 & 0x3F;
      v304 = vaddq_s64(vdupq_n_s64(v303), vzip1q_s64(0, v279));
      v305 = (v104 + 8 * (v282 >> 6));
      v306 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v305, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v304)), vshlq_u64(vdupq_lane_s64(v305->i64[0], 0), vnegq_s64(v304)));
      if (v303 + v281 >= 0x81)
      {
        v306 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v305[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v304)), vshlq_u64(vdupq_laneq_s64(v305[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v304))), v306);
      }
    }

    else
    {
      v106 = 1;
      v299 = v282;
      v306 = 0uLL;
    }

    v307 = vshlq_u64(v306, v290);
    v308 = vuzp1q_s32(vzip1q_s64(v306, v307), vzip2q_s64(v306, v307));
    v309 = vshlq_u32(v308, v293);
    v310 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v308, v309), vzip2q_s32(v308, v309)), v297), v296);
    v418 = v310;
    v311 = v299 + v281;
    if (v403)
    {
      v312 = v403 >= v311;
    }

    else
    {
      v312 = 1;
    }

    v313 = v312;
    if (v281 <= 0x80 && v313)
    {
      v314 = v299 & 0x3F;
      v315 = vaddq_s64(vdupq_n_s64(v314), vzip1q_s64(0, v279));
      v316 = (v104 + 8 * (v299 >> 6));
      v302 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v316, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v315)), vshlq_u64(vdupq_lane_s64(v316->i64[0], 0), vnegq_s64(v315)));
      if (v314 + v281 >= 0x81)
      {
        v302 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v316[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v315)), vshlq_u64(vdupq_laneq_s64(v316[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v315))), v302);
      }
    }

    else
    {
      v106 = 1;
      v311 = v299;
    }

    v317 = vshlq_u64(v302, v290);
    v318 = vuzp1q_s32(vzip1q_s64(v302, v317), vzip2q_s64(v302, v317));
    v319 = vshlq_u32(v318, v293);
    v320 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v318, v319), vzip2q_s32(v318, v319)), v297), v296);
    v419 = v320;
    v321 = v311 + v281;
    if (v403)
    {
      v322 = v403 >= v321;
    }

    else
    {
      v322 = 1;
    }

    v323 = v322;
    if (v281 > 0x80 || !v323)
    {
      goto LABEL_226;
    }

    v324 = vaddq_s64(vdupq_n_s64(v311 & 0x3F), vzip1q_s64(0, v279));
    v325 = (v104 + 8 * (v311 >> 6));
    v326 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v325, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v324)), vshlq_u64(vdupq_lane_s64(v325->i64[0], 0), vnegq_s64(v324)));
    if ((v311 & 0x3F) + v281 >= 0x81)
    {
      v326 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v325[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v324)), vshlq_u64(vdupq_laneq_s64(v325[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v324))), v326);
    }

    if ((v106 & 1) != 0 || v403 + 8 * result - v321 - 1024 >= 9 || v89 == 2)
    {
LABEL_226:
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(v48, v49);
      return 0;
    }

    else
    {
      v327 = vshlq_u64(v326, v290);
      v328 = vuzp1q_s32(vzip1q_s64(v326, v327), vzip2q_s64(v326, v327));
      v329 = vshlq_u32(v328, v293);
      v330 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v328, v329), vzip2q_s32(v328, v329)), v297), v296);
      v331 = vaddq_s16(vandq_s8(v88, v56), v115);
      v332 = vdupq_lane_s64(v88.i64[0], 0);
      v333 = vandq_s8(v56, v332);
      v334 = vsubq_s16(v331, v333);
      v335 = vsubq_s16(v137, v333);
      v336 = vsubq_s16(v147, v333);
      v337 = vsubq_s16(v159, v333);
      v338 = vandq_s8(v55, v332);
      v339 = vsubq_s16(v183, v338);
      v340 = vsubq_s16(v195, v338);
      v341 = vsubq_s16(v205, v338);
      v342 = vsubq_s16(v217, v338);
      v343 = vandq_s8(v54, v332);
      v344 = vsubq_s16(v241, v343);
      v345 = vsubq_s16(v253, v343);
      v346 = vsubq_s16(v263, v343);
      v347 = vsubq_s16(v275, v343);
      v348 = vandq_s8(v53, v332);
      v349 = vsubq_s16(v298, v348);
      v405 = v331;
      v350 = vsubq_s16(v310, v348);
      v351 = vsubq_s16(v320, v348);
      v417 = v349;
      v418 = v350;
      v352 = vsubq_s16(v330, v348);
      v419 = v351;
      v420 = v352;
      v353.i64[0] = 0x1000100010001;
      v353.i64[1] = 0x1000100010001;
      if (vaddvq_s16(vceqq_s16(v33, v353)))
      {
        v354 = vnegq_s16(vandq_s8(v422, v353));
        v355.i64[0] = v337.i64[0];
        v356.i64[1] = v334.i64[1];
        v355.i64[1] = v334.i64[0];
        v356.i64[0] = v337.i64[1];
        v357 = vbslq_s8(v354, v356, v334);
        v358 = vbslq_s8(v354, v355, v337);
        v356.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
        v356.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
        v359 = vandq_s8(vqtbl4q_s8(*(&v335 - 1), v356), v354);
        v439.val[0] = vaddq_s16(v357, vandq_s8(vqtbl4q_s8(*(&v335 - 1), xmmword_29D2F10B0), v354));
        v439.val[1] = vaddq_s16(v335, vandq_s8(vqtbl4q_s8(*(&v335 - 1), xmmword_29D2F10C0), v354));
        v439.val[2] = vaddq_s16(v336, v359);
        v439.val[3] = vaddq_s16(v358, v359);
        v360 = vandq_s8(vqtbl4q_s8(v439, v356), v354);
        v334 = vaddq_s16(v439.val[0], vandq_s8(vqtbl4q_s8(v439, xmmword_29D2F10D0), v354));
        v335 = vaddq_s16(v439.val[1], vandq_s8(vqtbl4q_s8(v439, xmmword_29D2F10E0), v354));
        v405 = v334;
        v406 = v335;
        v336 = vaddq_s16(v439.val[2], v360);
        v337 = vaddq_s16(v439.val[3], v360);
        v438.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v339.i8, xmmword_29D2F10B0), v354), v339);
        v438.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v339.i8, xmmword_29D2F10F0), v354), v340);
        v438.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v339.i8, v356), v354), v341);
        v438.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v339.i8, xmmword_29D2F1100), v354), v342);
        v361 = vandq_s8(vqtbl4q_s8(v438, xmmword_29D2F10D0), v354);
        v362 = vandq_s8(vqtbl4q_s8(v438, v356), v354);
        v339 = vaddq_s16(v361, v438.val[0]);
        v340 = vaddq_s16(v438.val[1], v361);
        v341 = vaddq_s16(v438.val[2], v362);
        v342 = vaddq_s16(v438.val[3], v362);
        v438.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v344.i8, xmmword_29D2F0EB0), v354), v344);
        v438.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v344.i8, xmmword_29D2F0FB0), v354), v345);
        v438.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v344.i8, xmmword_29D2F10B0), v354), v346);
        v438.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v344.i8, xmmword_29D2F10C0), v354), v347);
        v363 = vandq_s8(vqtbl4q_s8(v438, v356), v354);
        v344 = vaddq_s16(v438.val[0], v363);
        v345 = vaddq_s16(v438.val[1], v363);
        v346 = vaddq_s16(v438.val[2], vandq_s8(vqtbl4q_s8(v438, xmmword_29D2F0FE0), v354));
        v347 = vaddq_s16(v438.val[3], vandq_s8(vqtbl4q_s8(v438, xmmword_29D2F1110), v354));
        v439.val[0] = v417;
        v439.val[1] = v418;
        v32 = v422;
        v439.val[2] = v419;
        v439.val[3] = v420;
        v438.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(v439, xmmword_29D2F0EB0), v354), v417);
        v438.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(v439, xmmword_29D2F1120), v354), v418);
        v407 = v336;
        v408 = v337;
        v438.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(v439, xmmword_29D2F10B0), v354), v419);
        v438.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(v439, xmmword_29D2F10C0), v354), v420);
        v364 = vandq_s8(vqtbl4q_s8(v438, v356), v354);
        v349 = vaddq_s16(v438.val[0], v364);
        v350 = vaddq_s16(v438.val[1], v364);
        v351 = vaddq_s16(v438.val[2], vandq_s8(vqtbl4q_s8(v438, xmmword_29D2F0FE0), v354));
        v352 = vaddq_s16(v438.val[3], vandq_s8(vqtbl4q_s8(v438, xmmword_29D2F1130), v354));
      }

      v365 = vaddq_s16(v421, v334);
      v366 = vaddq_s16(v335, v421);
      v367 = vaddq_s16(v336, v421);
      v368 = vaddq_s16(v337, v421);
      v369 = vaddq_s16(v339, v421);
      v370 = vaddq_s16(v340, v421);
      v371 = vaddq_s16(v341, v421);
      v372 = vaddq_s16(v342, v421);
      v373 = vaddq_s16(v344, v421);
      v374 = vaddq_s16(v345, v421);
      v375 = vaddq_s16(v346, v421);
      v376 = vaddq_s16(v347, v421);
      v377 = vaddq_s16(v349, v421);
      v378 = vaddq_s16(v350, v421);
      v379 = vaddq_s16(v351, v421);
      v380 = vaddq_s16(v352, v421);
      v381.i64[0] = 0x10001000100010;
      v381.i64[1] = 0x10001000100010;
      v382 = vceqzq_s16(vandq_s8(v32, v381));
      v383 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v365, xmmword_29D2F1270), v382), v365);
      v384 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v366, xmmword_29D2F1270), v382), v366);
      v385 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v367, xmmword_29D2F1270), v382), v367);
      v386 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v368, xmmword_29D2F1270), v382), v368);
      v387 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v369, xmmword_29D2F1270), v382), v369);
      v388 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v370, xmmword_29D2F1270), v382), v370);
      v389 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v371, xmmword_29D2F1270), v382), v371);
      v390 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v372, xmmword_29D2F1270), v382), v372);
      v391 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v373, xmmword_29D2F1270), v382), v373);
      v392 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v374, xmmword_29D2F1270), v382), v374);
      v393 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v375, xmmword_29D2F1270), v382), v375);
      v394 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v376, xmmword_29D2F1270), v382), v376);
      v395 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v377, xmmword_29D2F1270), v382), v377);
      v396 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v378, xmmword_29D2F1270), v382), v378);
      v376.i64[0] = 0xF8000000F8000000;
      v376.i64[1] = 0xF8000000F8000000;
      v397 = v48 + 2;
      *v48 = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v383, 0x15uLL), v384, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v383, 0xEuLL), v384, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v383, 7uLL), v384, 7uLL), vuzp1q_s32(v383, v384))));
      v48[1] = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v385, 0x15uLL), v386, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v385, 0xEuLL), v386, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v385, 7uLL), v386, 7uLL), vuzp1q_s32(v385, v386))));
      v398 = (v48 + v49);
      v399 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v379, xmmword_29D2F1270), v382), v379);
      v400 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v380, xmmword_29D2F1270), v382), v380);
      *v397 = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v387, 0x15uLL), v388, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v387, 0xEuLL), v388, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v387, 7uLL), v388, 7uLL), vuzp1q_s32(v387, v388))));
      v397[1] = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v389, 0x15uLL), v390, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v389, 0xEuLL), v390, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v389, 7uLL), v390, 7uLL), vuzp1q_s32(v389, v390))));
      *v398 = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v391, 0x15uLL), v392, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v391, 0xEuLL), v392, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v391, 7uLL), v392, 7uLL), vuzp1q_s32(v391, v392))));
      v398[1] = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v393, 0x15uLL), v394, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v393, 0xEuLL), v394, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v393, 7uLL), v394, 7uLL), vuzp1q_s32(v393, v394))));
      v398 += 2;
      *v398 = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v395, 0x15uLL), v396, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v395, 0xEuLL), v396, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v395, 7uLL), v396, 7uLL), vuzp1q_s32(v395, v396))));
      v398[1] = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v399, 0x15uLL), v400, 0x15uLL), vbslq_s8(xmmword_29D2F1390, vshrn_high_n_s64(vshrn_n_s64(v399, 0xEuLL), v400, 0xEuLL), vbslq_s8(xmmword_29D2F1380, vshrn_high_n_s64(vshrn_n_s64(v399, 7uLL), v400, 7uLL), vuzp1q_s32(v399, v400))));
    }
  }

  else
  {
    result = 0;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
    v16 = (a1->f32 + a2);
    v16[2] = 0u;
    v16[3] = 0u;
    *v16 = 0u;
    v16[1] = 0u;
  }

  return result;
}