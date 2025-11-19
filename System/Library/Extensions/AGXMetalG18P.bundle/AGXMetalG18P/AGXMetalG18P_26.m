uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(float32x4_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 256, a2, *a3);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 4, 256, v5, a3[1]);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 32, 256, v6, a3[2]);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 36, 256, v7, a3[3]);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 8, 256, v8, a3[4]);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 12, 256, v9, a3[5]);
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 40, 256, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 44, 256, v10 + v11, v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(unint64_t a1, char *a2, uint32x4_t *a3, uint64_t a4, int a5, int a6)
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
  v508 = *a3;
  v509 = v6;
  v20 = vbslq_s8(xmmword_29D2F13D0, vshll_n_u32(*v6.i8, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_n_u32(*v6.i8, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_n_u32(*v6.i8, 7uLL), vbslq_s8(xmmword_29D2F13A0, v17, 0))));
  v21 = vbslq_s8(xmmword_29D2F13D0, vshll_high_n_u32(v6, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_high_n_u32(v6, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_high_n_u32(v6, 7uLL), vbslq_s8(xmmword_29D2F13A0, v13, 0))));
  v13.i64[0] = v7.u32[0];
  v13.i64[1] = v7.u32[1];
  v22 = v13;
  v13.i64[0] = v7.u32[2];
  v13.i64[1] = v7.u32[3];
  v23 = vbslq_s8(xmmword_29D2F13A0, v22, 0);
  v24 = vbslq_s8(xmmword_29D2F13A0, v13, 0);
  v13.i64[0] = v8.u32[0];
  v13.i64[1] = v8.u32[1];
  v25 = v13;
  v13.i64[0] = v8.u32[2];
  v13.i64[1] = v8.u32[3];
  v26 = vbslq_s8(xmmword_29D2F13D0, vshll_n_u32(*v7.i8, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_n_u32(*v7.i8, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_n_u32(*v7.i8, 7uLL), v23)));
  v27 = vbslq_s8(xmmword_29D2F13D0, vshll_high_n_u32(v7, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_high_n_u32(v7, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_high_n_u32(v7, 7uLL), v24)));
  v506 = v7;
  v507 = v8;
  v28 = vbslq_s8(xmmword_29D2F13D0, vshll_n_u32(*v8.i8, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_n_u32(*v8.i8, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_n_u32(*v8.i8, 7uLL), vbslq_s8(xmmword_29D2F13A0, v25, 0))));
  v29 = vbslq_s8(xmmword_29D2F13D0, vshll_high_n_u32(v8, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_high_n_u32(v8, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_high_n_u32(v8, 7uLL), vbslq_s8(xmmword_29D2F13A0, v13, 0))));
  v13.i64[0] = v9.u32[0];
  v13.i64[1] = v9.u32[1];
  v30 = v13;
  v13.i64[0] = v9.u32[2];
  v13.i64[1] = v9.u32[3];
  v31 = vbslq_s8(xmmword_29D2F13A0, v30, 0);
  v32 = vbslq_s8(xmmword_29D2F13A0, v13, 0);
  v13.i64[0] = v10.u32[0];
  v13.i64[1] = v10.u32[1];
  v33 = v13;
  v13.i64[0] = v10.u32[2];
  v13.i64[1] = v10.u32[3];
  v34 = vbslq_s8(xmmword_29D2F13D0, vshll_n_u32(*v9.i8, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_n_u32(*v9.i8, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_n_u32(*v9.i8, 7uLL), v31)));
  v35 = vbslq_s8(xmmword_29D2F13D0, vshll_high_n_u32(v9, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_high_n_u32(v9, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_high_n_u32(v9, 7uLL), v32)));
  v503 = v9;
  v504 = v10;
  v36 = vbslq_s8(xmmword_29D2F13D0, vshll_n_u32(*v10.i8, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_n_u32(*v10.i8, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_n_u32(*v10.i8, 7uLL), vbslq_s8(xmmword_29D2F13A0, v33, 0))));
  v37 = vbslq_s8(xmmword_29D2F13D0, vshll_high_n_u32(v10, 0x15uLL), vbslq_s8(xmmword_29D2F13C0, vshll_high_n_u32(v10, 0xEuLL), vbslq_s8(xmmword_29D2F13B0, vshll_high_n_u32(v10, 7uLL), vbslq_s8(xmmword_29D2F13A0, v13, 0))));
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
  v55 = v37;
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
  v37.i64[0] = 0xF000F000F000FLL;
  v37.i64[1] = 0xF000F000F000FLL;
  v92.i64[0] = -1;
  v92.i64[1] = -1;
  v537 = v83;
  v538 = v82;
  v93 = vsubq_s16(vshlq_s16(v92, vsubq_s16(v37, v91)), v83);
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
    v466 = v55;
    v467 = v29;
    v105.i64[0] = 0x4000400040004;
    v105.i64[1] = 0x4000400040004;
    v495 = v11;
    v496 = v12;
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
    if (a5)
    {
      v184 = a6 == 0;
    }

    else
    {
      v184 = 1;
    }

    v185 = v184;
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
    if ((v185 & 1) == 0)
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
      *a1 = v508;
      *(a1 + 16) = v509;
      *(a1 + 32) = v506;
      *(a1 + 48) = v507;
      *(a1 + 64) = v503;
      *(a1 + 80) = v504;
      v286 = (a1 + 96);
      v284 = 127;
      result = 128;
      *v286 = v495;
      v286[1] = v496;
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

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 4, a2, v14, v13);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, (v11 + v15), a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v15 + 64), a2, v20, v19);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 8, a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 12, a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + v15 + 128), a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + v15 + 192), a2, v30, v29);
}

uint64_t AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)19,AGX::AppleCompressionGen2::Vec<short>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unsigned int a5)
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
    v12 = v11 & 0xFFFFFFFFFLL;
  }

  else
  {
    v12 = 0;
    *(a4 + 24) = 1;
  }

  *a1 = v12 & 0x1F;
  *(a1 + 2) = (v12 >> 5) & 0x1F;
  *(a1 + 4) = (v12 >> 10) & 0x1F;
  *(a1 + 6) = (v12 >> 15) & 0x1F;
  *a2 = ((v12 >> 20) & 0xF) + 1;
  *(a2 + 2) = (BYTE3(v12) & 0xF) + 1;
  *(a2 + 4) = (v12 >> 28) + 1;
  *(a2 + 6) = WORD2(v12) + 1;
  v13 = a4[2];
  v14 = *a4;
  v15 = *a4 + 40;
  if (v13 && v13 < v15)
  {
    v16 = 0;
    *(a4 + 24) = 1;
  }

  else
  {
    v17 = *a4 & 0x3F;
    v18 = (a4[1] + 8 * (v14 >> 6));
    v16 = *v18 >> v14;
    if (v17 >= 0x19)
    {
      v16 |= v18[1] << -v17;
    }

    *a4 = v15;
  }

  *a3 = v16 & 0x3FF;
  *(a3 + 2) = (v16 >> 10) & 0x3FF;
  *(a3 + 4) = (v16 >> 20) & 0x3FF;
  *(a3 + 6) = (v16 >> 30) & 0x3FF;
  v19 = vld1q_dup_f64(a1);
  *a1 = v19;
  v20 = vld1q_dup_f64(a2);
  *a2 = v20;
  v21 = vld1q_dup_f64(a3);
  *a3 = v21;
  return a5 + 1;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(int64x2_t *a1, uint64_t a2, uint64_t a3, signed int a4)
{
  if (a4 <= 158)
  {
    if (!a4)
    {
      result = 0;
      a1[2] = 0u;
      a1[3] = 0u;
      *a1 = 0u;
      a1[1] = 0u;
      v54 = &a1->i8[a2];
      *(v54 + 2) = 0u;
      *(v54 + 3) = 0u;
      *v54 = 0u;
      *(v54 + 1) = 0u;
      v55 = &a1->i8[2 * a2];
      *(v55 + 2) = 0u;
      *(v55 + 3) = 0u;
      *v55 = 0u;
      *(v55 + 1) = 0u;
      v56 = &v54[2 * a2];
      *(v56 + 2) = 0u;
      *(v56 + 3) = 0u;
      *v56 = 0u;
      *(v56 + 1) = 0u;
      return result;
    }

    if (a4 == 4)
    {
      v5 = vld1q_dup_f64(a3);
      v6 = vorrq_s8(vandq_s8(vshlq_u64(v5, xmmword_29D2F1400), xmmword_29D2F1430), vandq_s8(vshlq_u64(v5, xmmword_29D2F1410), xmmword_29D2F1420));
      v7 = vdupq_n_s64(*&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)));
      *a1 = v7;
      a1[1] = v7;
      a1[2] = v7;
      a1[3] = v7;
      v8 = (a1 + a2);
      *v8 = v7;
      v8[1] = v7;
      v8[2] = v7;
      v8[3] = v7;
      v9 = (a1 + 2 * a2);
      *v9 = v7;
      v9[1] = v7;
      v9[2] = v7;
      v9[3] = v7;
      v10 = (a1 + 2 * a2 + a2);
      *v10 = v7;
      v10[1] = v7;
      v10[2] = v7;
      v10[3] = v7;
      return 5;
    }

LABEL_8:
    v699 = 0;
    v698 = (8 * (a3 & 7)) | 0x500;
    v696 = 8 * (a3 & 7);
    v697 = a3 & 0xFFFFFFFFFFFFFFF8;
    result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)19,AGX::AppleCompressionGen2::Vec<short>>(&v709, v714, &v708, &v696, a4);
    v33.i64[0] = 0x3000300030003;
    v33.i64[1] = 0x3000300030003;
    v34 = vandq_s8(v709, v33);
    v35 = vbicq_s8(v714[0], vceqq_s16(v34, v33));
    v714[0] = v35;
    v710 = v35;
    v711 = v35;
    v712 = v35;
    v713 = v35;
    v36.i64[0] = 0x202020202020202;
    v36.i64[1] = 0x202020202020202;
    v37 = vandq_s8(vmovl_s16(vtst_s16(*v709.i8, 0x4000400040004)), v36);
    v38 = v696;
    if (vmaxvq_s8(v37) < 1)
    {
      v290.i64[0] = -1;
      v290.i64[1] = -1;
      v291.i64[0] = -1;
      v291.i64[1] = -1;
      v292.i64[0] = -1;
      v292.i64[1] = -1;
      v293.i64[0] = -1;
      v293.i64[1] = -1;
      v52 = a1;
      v53 = a2;
    }

    else
    {
      v39 = vmovl_u8(*&vpaddq_s8(v37, v37));
      v40 = vmovl_u16(*&vpaddq_s16(v39, v39));
      v41 = vpaddq_s32(v40, v40).u64[0];
      v42.i64[0] = v41;
      v42.i64[1] = HIDWORD(v41);
      v43 = v42;
      v44 = vaddvq_s64(v42);
      v45 = v44;
      v46 = v696 + v44;
      if (v698)
      {
        v47 = v698 >= v46;
      }

      else
      {
        v47 = 1;
      }

      v48 = v47;
      if (v44 <= 0x80 && (v48 & 1) != 0)
      {
        v32.i64[0] = 63;
        v49 = (v697 + 8 * (v696 >> 6));
        v50 = vaddq_s64(vdupq_lane_s64(vandq_s8(v696, v32).i64[0], 0), vzip1q_s64(0, v43));
        v51 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v49, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v50)), vshlq_u64(vdupq_lane_s64(v49->i64[0], 0), vnegq_s64(v50)));
        if ((v696 & 0x3F) + v45 >= 0x81)
        {
          v51 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v49[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v50)), vshlq_u64(vdupq_laneq_s64(v49[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v50))), v51);
        }

        v52 = a1;
        v53 = a2;
        v696 = v46;
        v38 = v46;
      }

      else
      {
        v699 = 1;
        v51 = 0uLL;
        v52 = a1;
        v53 = a2;
      }

      v294 = vzip1_s32(*v40.i8, *&vextq_s8(v40, v40, 8uLL));
      v295.i64[0] = v294.u32[0];
      v295.i64[1] = v294.u32[1];
      v296 = vshlq_u64(v51, vnegq_s64(v295));
      v297 = vuzp1q_s32(vzip1q_s64(v51, v296), vzip2q_s64(v51, v296));
      v298 = vshlq_u32(v297, vnegq_s32((*&v39 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v299 = vuzp1q_s16(vzip1q_s32(v297, v298), vzip2q_s32(v297, v298));
      v300 = vshlq_u16(v299, vnegq_s16((*&v37 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
      v301 = vuzp1q_s8(vzip1q_s16(v299, v300), vzip2q_s16(v299, v300));
      v300.i64[0] = 0x101010101010101;
      v300.i64[1] = 0x101010101010101;
      v302 = vshlq_s8(v300, v37);
      v300.i64[0] = -1;
      v300.i64[1] = -1;
      v303 = vqtbl1q_s8(vandq_s8(vaddq_s8(v302, v300), v301), xmmword_29D2F0F70);
      *v301.i8 = vdup_lane_s32(*v303.i8, 0);
      *v300.i8 = vdup_lane_s32(*v303.i8, 1);
      v304 = vdupq_laneq_s32(v303, 2).u64[0];
      v305 = vdupq_laneq_s32(v303, 3).u64[0];
      v710 = vsubw_s8(v710, *v301.i8);
      v711 = vsubw_s8(v711, *v300.i8);
      v712 = vsubw_s8(v712, v304);
      v713 = vsubw_s8(v713, v305);
      v293 = vmovl_s8(vceqz_s8(*v301.i8));
      v292 = vmovl_s8(vceqz_s8(*v300.i8));
      v291 = vmovl_s8(vceqz_s8(v304));
      v290 = vmovl_s8(vceqz_s8(v305));
    }

    v306.i64[0] = 0x8000800080008;
    v306.i64[1] = 0x8000800080008;
    v307 = 0uLL;
    v308 = vandq_s8(vextq_s8(vtstq_s16(v709, v306), 0, 8uLL), v35);
    v309 = vmovl_u16(*&vpaddq_s16(v308, v308));
    v310 = vpaddq_s32(v309, v309).u64[0];
    v311.i64[0] = v310;
    v311.i64[1] = HIDWORD(v310);
    v312 = v311;
    v313 = vaddvq_s64(v311);
    v314 = v38 + v313;
    if (v698)
    {
      v315 = v698 >= v314;
    }

    else
    {
      v315 = 1;
    }

    v316 = v315;
    if (v313 <= 0x80 && (v316 & 1) != 0)
    {
      v317 = v38 & 0x3F;
      v318 = vaddq_s64(vdupq_n_s64(v317), vzip1q_s64(0, v312));
      v319 = (v697 + 8 * (v38 >> 6));
      v307 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v319, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v318)), vshlq_u64(vdupq_lane_s64(v319->i64[0], 0), vnegq_s64(v318)));
      if (v317 + v313 >= 0x81)
      {
        v307 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v319[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v318)), vshlq_u64(vdupq_laneq_s64(v319[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v318))), v307);
      }

      v38 = v314;
    }

    else
    {
      v699 = 1;
    }

    v320 = vzip1_s32(*v309.i8, *&vextq_s8(v309, v309, 8uLL));
    v321.i64[0] = v320.u32[0];
    v321.i64[1] = v320.u32[1];
    v322 = vshlq_u64(v307, vnegq_s64(v321));
    v323 = vuzp1q_s32(vzip1q_s64(v307, v322), vzip2q_s64(v307, v322));
    v324.i64[0] = 0xFFFF0000FFFFLL;
    v324.i64[1] = 0xFFFF0000FFFFLL;
    v325 = vshlq_u32(v323, vnegq_s32(vandq_s8(v308, v324)));
    v326 = vuzp1q_s16(vzip1q_s32(v323, v325), vzip2q_s32(v323, v325));
    v325.i64[0] = 0xF000F000F000FLL;
    v325.i64[1] = 0xF000F000F000FLL;
    v327.i64[0] = 0x10001000100010;
    v327.i64[1] = 0x10001000100010;
    v328 = vshlq_s16(vshlq_s16(v326, vsubq_s16(v327, v308)), vaddq_s16(v308, v325));
    v714[3] = v328;
    v329 = v709.i8[0] & 3;
    v693 = v291;
    v695 = v293;
    v691 = v292;
    if (v329 == 2)
    {
      if (!v698)
      {
        v330 = v38 + 16;
LABEL_81:
        v331 = 0uLL;
        v332 = vextq_s8(0, v710, 8uLL);
        v333 = vmovl_u16(*&vpaddq_s16(v332, v332));
        v334 = vpaddq_s32(v333, v333).u64[0];
        v335.i64[0] = v334;
        v335.i64[1] = HIDWORD(v334);
        v336 = v335;
        v337 = vaddvq_s64(v335);
        if (v698)
        {
          v338 = v698 >= v330 + v337;
        }

        else
        {
          v338 = 1;
        }

        v339 = v338;
        if (v337 <= 0x80 && (v339 & 1) != 0)
        {
          v340 = vaddq_s64(vdupq_n_s64(v330 & 0x3F), vzip1q_s64(0, v336));
          v341 = v697;
          v342 = (v697 + 8 * (v330 >> 6));
          v331 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v342, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v340)), vshlq_u64(vdupq_lane_s64(v342->i64[0], 0), vnegq_s64(v340)));
          if ((v330 & 0x3F) + v337 >= 0x81)
          {
            v331 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v342[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v340)), vshlq_u64(vdupq_laneq_s64(v342[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v340))), v331);
          }

          v343 = v699;
          v330 += v337;
        }

        else
        {
          v343 = 1;
          v341 = v697;
        }

        v344.i64[0] = 0xFFFF0000FFFFLL;
        v344.i64[1] = 0xFFFF0000FFFFLL;
        v345.i64[0] = 0xF000F000F000FLL;
        v345.i64[1] = 0xF000F000F000FLL;
        v346.i64[0] = 0x10001000100010;
        v346.i64[1] = 0x10001000100010;
        v347 = vmovl_u16(*&vpaddq_s16(v710, v710));
        v348 = vpaddq_s32(v347, v347).u64[0];
        v349.i64[0] = v348;
        v349.i64[1] = HIDWORD(v348);
        v350 = v349;
        v351 = vaddvq_s64(v349);
        v352 = v351;
        v353 = v330 + v351;
        if (v698)
        {
          v354 = v698 >= v353;
        }

        else
        {
          v354 = 1;
        }

        v355 = v354;
        v356 = 0uLL;
        if (v351 <= 0x80 && v355)
        {
          v357 = v330 & 0x3F;
          v358 = vaddq_s64(vdupq_n_s64(v357), vzip1q_s64(0, v350));
          v359 = (v341 + 8 * (v330 >> 6));
          v360 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v359, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v358)), vshlq_u64(vdupq_lane_s64(v359->i64[0], 0), vnegq_s64(v358)));
          if (v357 + v352 >= 0x81)
          {
            v360 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v359[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v358)), vshlq_u64(vdupq_laneq_s64(v359[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v358))), v360);
          }
        }

        else
        {
          v343 = 1;
          v353 = v330;
          v360 = 0uLL;
        }

        v361 = vzip1_s32(*v347.i8, *&vextq_s8(v347, v347, 8uLL));
        v362.i64[0] = v361.u32[0];
        v362.i64[1] = v361.u32[1];
        v363 = vnegq_s64(v362);
        v364 = vshlq_u64(v360, v363);
        v365 = vuzp1q_s32(vzip1q_s64(v360, v364), vzip2q_s64(v360, v364));
        v366 = vnegq_s32(vandq_s8(v710, v344));
        v367 = vshlq_u32(v365, v366);
        v368 = vuzp1q_s16(vzip1q_s32(v365, v367), vzip2q_s32(v365, v367));
        v369 = vaddq_s16(v710, v345);
        v370 = vsubq_s16(v346, v710);
        v371 = vshlq_s16(vshlq_s16(v368, v370), v369);
        v701 = v371;
        v372 = v353 + v352;
        if (v698)
        {
          v373 = v698 >= v372;
        }

        else
        {
          v373 = 1;
        }

        v374 = v373;
        if (v352 <= 0x80 && v374)
        {
          v375 = v353 & 0x3F;
          v376 = vaddq_s64(vdupq_n_s64(v375), vzip1q_s64(0, v350));
          v377 = (v341 + 8 * (v353 >> 6));
          v356 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v377, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v376)), vshlq_u64(vdupq_lane_s64(v377->i64[0], 0), vnegq_s64(v376)));
          if (v375 + v352 >= 0x81)
          {
            v356 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v377[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v376)), vshlq_u64(vdupq_laneq_s64(v377[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v376))), v356);
          }
        }

        else
        {
          v343 = 1;
          v372 = v353;
        }

        v378 = vshlq_u64(v356, v363);
        v379 = vuzp1q_s32(vzip1q_s64(v356, v378), vzip2q_s64(v356, v378));
        v380 = vshlq_u32(v379, v366);
        v381 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v379, v380), vzip2q_s32(v379, v380)), v370), v369);
        v702 = v381;
        v382 = v372 + v352;
        if (v698)
        {
          v383 = v698 >= v382;
        }

        else
        {
          v383 = 1;
        }

        v384 = v383;
        v385 = 0uLL;
        if (v352 <= 0x80 && v384)
        {
          v386 = v372 & 0x3F;
          v387 = vaddq_s64(vdupq_n_s64(v386), vzip1q_s64(0, v350));
          v388 = (v341 + 8 * (v372 >> 6));
          v389 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v388, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v387)), vshlq_u64(vdupq_lane_s64(v388->i64[0], 0), vnegq_s64(v387)));
          if (v386 + v352 >= 0x81)
          {
            v389 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v388[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v387)), vshlq_u64(vdupq_laneq_s64(v388[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v387))), v389);
          }
        }

        else
        {
          v343 = 1;
          v382 = v372;
          v389 = 0uLL;
        }

        v390 = vshlq_u64(v389, v363);
        v391 = vuzp1q_s32(vzip1q_s64(v389, v390), vzip2q_s64(v389, v390));
        v392 = vshlq_u32(v391, v366);
        v393 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v391, v392), vzip2q_s32(v391, v392)), v370), v369);
        v703 = v393;
        v394 = vmovl_u16(*&vpaddq_s16(v711, v711));
        v391.i64[0] = vpaddq_s32(v394, v394).u64[0];
        v395.i64[0] = v391.u32[0];
        v395.i64[1] = v391.u32[1];
        v396 = v395;
        v397 = vaddvq_s64(v395);
        v398 = v397;
        v399 = v382 + v397;
        if (v698)
        {
          v400 = v698 >= v399;
        }

        else
        {
          v400 = 1;
        }

        v401 = v400;
        if (v397 <= 0x80 && v401)
        {
          v402 = v382 & 0x3F;
          v403 = vaddq_s64(vdupq_n_s64(v402), vzip1q_s64(0, v396));
          v404 = (v341 + 8 * (v382 >> 6));
          v385 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v404, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v403)), vshlq_u64(vdupq_lane_s64(v404->i64[0], 0), vnegq_s64(v403)));
          if (v402 + v398 >= 0x81)
          {
            v385 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v404[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v403)), vshlq_u64(vdupq_laneq_s64(v404[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v403))), v385);
          }
        }

        else
        {
          v343 = 1;
          v399 = v382;
        }

        v405 = v399 + v398;
        if (v698)
        {
          v406 = v698 >= v405;
        }

        else
        {
          v406 = 1;
        }

        v407 = v406;
        v408 = 0uLL;
        if (v398 <= 0x80 && v407)
        {
          v409 = v399 & 0x3F;
          v410 = vaddq_s64(vdupq_n_s64(v409), vzip1q_s64(0, v396));
          v411 = (v341 + 8 * (v399 >> 6));
          v412 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v411, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v410)), vshlq_u64(vdupq_lane_s64(v411->i64[0], 0), vnegq_s64(v410)));
          if (v409 + v398 >= 0x81)
          {
            v412 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v411[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v410)), vshlq_u64(vdupq_laneq_s64(v411[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v410))), v412);
          }
        }

        else
        {
          v343 = 1;
          v405 = v399;
          v412 = 0uLL;
        }

        v413 = v405 + v398;
        if (v698)
        {
          v414 = v698 >= v413;
        }

        else
        {
          v414 = 1;
        }

        v415 = v414;
        if (v398 <= 0x80 && v415)
        {
          v416 = v405 & 0x3F;
          v417 = vaddq_s64(vdupq_n_s64(v416), vzip1q_s64(0, v396));
          v418 = (v341 + 8 * (v405 >> 6));
          v408 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v418, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v417)), vshlq_u64(vdupq_lane_s64(v418->i64[0], 0), vnegq_s64(v417)));
          if (v416 + v398 >= 0x81)
          {
            v408 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v418[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v417)), vshlq_u64(vdupq_laneq_s64(v418[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v417))), v408);
          }
        }

        else
        {
          v343 = 1;
          v413 = v405;
        }

        v419 = v413 + v398;
        if (v698)
        {
          v420 = v698 >= v419;
        }

        else
        {
          v420 = 1;
        }

        v421 = v420;
        v422 = 0uLL;
        if (v398 <= 0x80 && v421)
        {
          v423 = v413 & 0x3F;
          v424 = vaddq_s64(vdupq_n_s64(v423), vzip1q_s64(0, v396));
          v425 = (v341 + 8 * (v413 >> 6));
          v426 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v425, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v424)), vshlq_u64(vdupq_lane_s64(v425->i64[0], 0), vnegq_s64(v424)));
          if (v423 + v398 >= 0x81)
          {
            v426 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v425[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v424)), vshlq_u64(vdupq_laneq_s64(v425[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v424))), v426);
          }
        }

        else
        {
          v343 = 1;
          v419 = v413;
          v426 = 0uLL;
        }

        v427 = vmovl_u16(*&vpaddq_s16(v712, v712));
        v428 = vpaddq_s32(v427, v427).u64[0];
        v429.i64[0] = v428;
        v429.i64[1] = HIDWORD(v428);
        v430 = v429;
        v431 = vaddvq_s64(v429);
        v432 = v431;
        v433 = v419 + v431;
        if (v698)
        {
          v434 = v698 >= v433;
        }

        else
        {
          v434 = 1;
        }

        v435 = v434;
        if (v431 <= 0x80 && v435)
        {
          v436 = v419 & 0x3F;
          v437 = vaddq_s64(vdupq_n_s64(v436), vzip1q_s64(0, v430));
          v438 = (v341 + 8 * (v419 >> 6));
          v422 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v438, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v437)), vshlq_u64(vdupq_lane_s64(v438->i64[0], 0), vnegq_s64(v437)));
          if (v436 + v432 >= 0x81)
          {
            v422 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v438[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v437)), vshlq_u64(vdupq_laneq_s64(v438[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v437))), v422);
          }
        }

        else
        {
          v343 = 1;
          v433 = v419;
        }

        v439 = v433 + v432;
        if (v698)
        {
          v440 = v698 >= v439;
        }

        else
        {
          v440 = 1;
        }

        v441 = v440;
        v442 = 0uLL;
        if (v432 <= 0x80 && v441)
        {
          v443 = v433 & 0x3F;
          v444 = vaddq_s64(vdupq_n_s64(v443), vzip1q_s64(0, v430));
          v445 = (v341 + 8 * (v433 >> 6));
          v446 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v445, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v444)), vshlq_u64(vdupq_lane_s64(v445->i64[0], 0), vnegq_s64(v444)));
          if (v443 + v432 >= 0x81)
          {
            v446 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v445[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v444)), vshlq_u64(vdupq_laneq_s64(v445[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v444))), v446);
          }
        }

        else
        {
          v343 = 1;
          v439 = v433;
          v446 = 0uLL;
        }

        v447 = v439 + v432;
        if (v698)
        {
          v448 = v698 >= v447;
        }

        else
        {
          v448 = 1;
        }

        v449 = v448;
        if (v432 <= 0x80 && v449)
        {
          v450 = v439 & 0x3F;
          v451 = vaddq_s64(vdupq_n_s64(v450), vzip1q_s64(0, v430));
          v452 = (v341 + 8 * (v439 >> 6));
          v442 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v452, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v451)), vshlq_u64(vdupq_lane_s64(v452->i64[0], 0), vnegq_s64(v451)));
          if (v450 + v432 >= 0x81)
          {
            v442 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v452[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v451)), vshlq_u64(vdupq_laneq_s64(v452[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v451))), v442);
          }
        }

        else
        {
          v343 = 1;
          v447 = v439;
        }

        v453 = v447 + v432;
        if (v698)
        {
          v454 = v698 >= v453;
        }

        else
        {
          v454 = 1;
        }

        v455 = v454;
        v456 = 0uLL;
        if (v432 <= 0x80 && v455)
        {
          v457 = v447 & 0x3F;
          v458 = vaddq_s64(vdupq_n_s64(v457), vzip1q_s64(0, v430));
          v459 = (v341 + 8 * (v447 >> 6));
          v460 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v459, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v458)), vshlq_u64(vdupq_lane_s64(v459->i64[0], 0), vnegq_s64(v458)));
          if (v457 + v432 >= 0x81)
          {
            v460 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v459[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v458)), vshlq_u64(vdupq_laneq_s64(v459[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v458))), v460);
          }
        }

        else
        {
          v343 = 1;
          v453 = v447;
          v460 = 0uLL;
        }

        v461 = vmovl_u16(*&vpaddq_s16(v713, v713));
        v462 = vpaddq_s32(v461, v461).u64[0];
        v463.i64[0] = v462;
        v463.i64[1] = HIDWORD(v462);
        v464 = v463;
        v465 = vaddvq_s64(v463);
        v466 = v465;
        v467 = v453 + v465;
        if (v698)
        {
          v468 = v698 >= v467;
        }

        else
        {
          v468 = 1;
        }

        v469 = v468;
        if (v465 <= 0x80 && v469)
        {
          v470 = v453 & 0x3F;
          v471 = vaddq_s64(vdupq_n_s64(v470), vzip1q_s64(0, v464));
          v472 = (v341 + 8 * (v453 >> 6));
          v456 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v472, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v471)), vshlq_u64(vdupq_lane_s64(v472->i64[0], 0), vnegq_s64(v471)));
          if (v470 + v466 >= 0x81)
          {
            v456 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v472[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v471)), vshlq_u64(vdupq_laneq_s64(v472[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v471))), v456);
          }
        }

        else
        {
          v343 = 1;
          v467 = v453;
        }

        v473 = v467 + v466;
        if (v698)
        {
          v474 = v698 >= v473;
        }

        else
        {
          v474 = 1;
        }

        v475 = v474;
        v476 = 0uLL;
        if (v466 <= 0x80 && v475)
        {
          v477 = v467 & 0x3F;
          v478 = vaddq_s64(vdupq_n_s64(v477), vzip1q_s64(0, v464));
          v479 = (v341 + 8 * (v467 >> 6));
          v480 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v479, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v478)), vshlq_u64(vdupq_lane_s64(v479->i64[0], 0), vnegq_s64(v478)));
          if (v477 + v466 >= 0x81)
          {
            v480 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v479[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v478)), vshlq_u64(vdupq_laneq_s64(v479[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v478))), v480);
          }
        }

        else
        {
          v343 = 1;
          v473 = v467;
          v480 = 0uLL;
        }

        v481 = v473 + v466;
        if (v698)
        {
          v482 = v698 >= v481;
        }

        else
        {
          v482 = 1;
        }

        v483 = v482;
        if (v466 <= 0x80 && v483)
        {
          v484 = v473 & 0x3F;
          v485 = vaddq_s64(vdupq_n_s64(v484), vzip1q_s64(0, v464));
          v486 = (v341 + 8 * (v473 >> 6));
          v476 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v486, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v485)), vshlq_u64(vdupq_lane_s64(v486->i64[0], 0), vnegq_s64(v485)));
          if (v484 + v466 >= 0x81)
          {
            v476 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v486[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v485)), vshlq_u64(vdupq_laneq_s64(v486[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v485))), v476);
          }
        }

        else
        {
          v343 = 1;
          v481 = v473;
        }

        v487 = v481 + v466;
        if (v698)
        {
          v488 = v698 >= v487;
        }

        else
        {
          v488 = 1;
        }

        v489 = v488;
        if (v466 > 0x80 || !v489)
        {
          goto LABEL_262;
        }

        v490 = vaddq_s64(vdupq_n_s64(v481 & 0x3F), vzip1q_s64(0, v464));
        v491 = (v341 + 8 * (v481 >> 6));
        v492 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v491, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v490)), vshlq_u64(vdupq_lane_s64(v491->i64[0], 0), vnegq_s64(v490)));
        if ((v481 & 0x3F) + v466 >= 0x81)
        {
          v492 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v491[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v490)), vshlq_u64(vdupq_laneq_s64(v491[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v490))), v492);
        }

        if ((v343 & 1) != 0 || v698 + 8 * result - v487 - 1280 >= 9 || v329 == 2)
        {
LABEL_262:
          result = 0;
          v493 = vdupq_n_s64(0xFFFFF003FFuLL);
          *v52 = v493;
          v52[1] = v493;
          v52[2] = v493;
          v52[3] = v493;
          v494 = (v52 + v53);
          *v494 = v493;
          v494[1] = v493;
          v494[2] = v493;
          v494[3] = v493;
          v495 = 2 * v53;
          v496 = (v52 + v495);
          *v496 = v493;
          v496[1] = v493;
          v496[2] = v493;
          v496[3] = v493;
          v497 = (v494 + v495);
          *v497 = v493;
          v497[1] = v493;
          v497[2] = v493;
          v497[3] = v493;
        }

        else
        {
          v498 = vzip1_s32(*v333.i8, *&vextq_s8(v333, v333, 8uLL));
          v499 = vzip1_s32(*v394.i8, *&vextq_s8(v394, v394, 8uLL));
          v500 = vzip1_s32(*v427.i8, *&vextq_s8(v427, v427, 8uLL));
          v501 = vzip1_s32(*v461.i8, *&vextq_s8(v461, v461, 8uLL));
          v502.i64[0] = v498.u32[0];
          v502.i64[1] = v498.u32[1];
          v503 = vshlq_u64(v331, vnegq_s64(v502));
          v504 = vzip2q_s64(v331, v503);
          v505 = vzip1q_s64(v331, v503);
          v502.i64[0] = v499.u32[0];
          v502.i64[1] = v499.u32[1];
          v506 = vnegq_s64(v502);
          v507 = vshlq_u64(v385, v506);
          v508 = vzip2q_s64(v385, v507);
          v509 = vzip1q_s64(v385, v507);
          v510 = vshlq_u64(v412, v506);
          v511 = vzip2q_s64(v412, v510);
          v512 = vzip1q_s64(v412, v510);
          v513 = vshlq_u64(v408, v506);
          v514 = vzip2q_s64(v408, v513);
          v515 = vzip1q_s64(v408, v513);
          v516 = vshlq_u64(v426, v506);
          v517 = vzip2q_s64(v426, v516);
          v518 = vzip1q_s64(v426, v516);
          v502.i64[0] = v500.u32[0];
          v502.i64[1] = v500.u32[1];
          v519 = vnegq_s64(v502);
          v520 = vshlq_u64(v422, v519);
          v689 = v34;
          v690 = v290;
          v521 = vzip2q_s64(v422, v520);
          v522 = vzip1q_s64(v422, v520);
          v523 = vshlq_u64(v446, v519);
          v524 = vzip2q_s64(v446, v523);
          v525 = vzip1q_s64(v446, v523);
          v526 = vshlq_u64(v442, v519);
          v685 = v328;
          v686 = v381;
          v527 = vzip2q_s64(v442, v526);
          v528 = vzip1q_s64(v442, v526);
          v529 = vshlq_u64(v460, v519);
          v530 = vzip2q_s64(v460, v529);
          v531 = vzip1q_s64(v460, v529);
          v502.i64[0] = v501.u32[0];
          v502.i64[1] = v501.u32[1];
          v532 = vnegq_s64(v502);
          v533 = vshlq_u64(v456, v532);
          v687 = v371;
          v688 = v393;
          v534 = vzip2q_s64(v456, v533);
          v535 = vzip1q_s64(v456, v533);
          v536 = vshlq_u64(v480, v532);
          v537 = v332;
          v538 = vzip2q_s64(v480, v536);
          v539 = vzip1q_s64(v480, v536);
          v540 = vshlq_u64(v476, v532);
          v541 = vuzp1q_s32(v505, v504);
          v542 = vuzp1q_s32(v509, v508);
          v543 = vuzp1q_s32(v512, v511);
          v544 = vuzp1q_s32(v515, v514);
          v545 = vuzp1q_s32(v518, v517);
          v546 = vuzp1q_s32(v522, v521);
          v547 = vuzp1q_s32(v525, v524);
          v548 = vuzp1q_s32(v528, v527);
          v549 = vuzp1q_s32(v531, v530);
          v550 = vuzp1q_s32(v535, v534);
          v551 = vuzp1q_s32(v539, v538);
          v539.i64[0] = 0xFFFF0000FFFFLL;
          v539.i64[1] = 0xFFFF0000FFFFLL;
          v552.i64[0] = 0xFFFF0000FFFFLL;
          v552.i64[1] = 0xFFFF0000FFFFLL;
          v553 = vnegq_s32(vandq_s8(v711, v539));
          v554 = vuzp1q_s32(vzip1q_s64(v476, v540), vzip2q_s64(v476, v540));
          v555 = vshlq_u32(v541, vnegq_s32(vandq_s8(v537, v552)));
          v556 = vzip2q_s32(v541, v555);
          v557 = vzip1q_s32(v541, v555);
          v558 = vshlq_u32(v542, v553);
          v559 = vzip2q_s32(v542, v558);
          v560 = vzip1q_s32(v542, v558);
          v561 = vshlq_u32(v543, v553);
          v562 = vzip2q_s32(v543, v561);
          v563 = vzip1q_s32(v543, v561);
          v564 = vshlq_u32(v544, v553);
          v565 = vzip2q_s32(v544, v564);
          v566 = vzip1q_s32(v544, v564);
          v567 = vshlq_u32(v545, v553);
          v568 = vzip2q_s32(v545, v567);
          v569 = vzip1q_s32(v545, v567);
          v567.i64[0] = 0xFFFF0000FFFFLL;
          v567.i64[1] = 0xFFFF0000FFFFLL;
          v570 = vnegq_s32(vandq_s8(v712, v567));
          v571 = vshlq_u32(v546, v570);
          v572 = vzip2q_s32(v546, v571);
          v573 = vzip1q_s32(v546, v571);
          v574 = vshlq_u32(v547, v570);
          v575 = vzip2q_s32(v547, v574);
          v576 = vzip1q_s32(v547, v574);
          v577 = vshlq_u32(v548, v570);
          v578 = vzip2q_s32(v548, v577);
          v579 = vzip1q_s32(v548, v577);
          v580 = vshlq_u32(v549, v570);
          v581 = vzip2q_s32(v549, v580);
          v582 = vzip1q_s32(v549, v580);
          v580.i64[0] = 0xFFFF0000FFFFLL;
          v580.i64[1] = 0xFFFF0000FFFFLL;
          v583 = vnegq_s32(vandq_s8(v713, v580));
          v584 = vshlq_u32(v550, v583);
          v585 = vzip2q_s32(v550, v584);
          v586 = vzip1q_s32(v550, v584);
          v587 = vshlq_u32(v551, v583);
          v588 = vzip2q_s32(v551, v587);
          v589 = vzip1q_s32(v551, v587);
          v590 = vshlq_u32(v554, v583);
          v591 = vuzp1q_s16(v557, v556);
          v592 = vuzp1q_s16(v569, v568);
          v593.i64[0] = 0x10001000100010;
          v593.i64[1] = 0x10001000100010;
          v569.i64[0] = 0xF000F000F000FLL;
          v569.i64[1] = 0xF000F000F000FLL;
          v594 = vaddq_s16(v537, v569);
          v556.i64[0] = 0x10001000100010;
          v556.i64[1] = 0x10001000100010;
          v595 = vshlq_s16(v591, vsubq_s16(v593, v537));
          v593.i64[0] = 0xF000F000F000FLL;
          v593.i64[1] = 0xF000F000F000FLL;
          v596 = vsubq_s16(v556, v711);
          v597 = vaddq_s16(v711, v593);
          v537.i64[0] = 0x10001000100010;
          v537.i64[1] = 0x10001000100010;
          v598 = vshlq_s16(vuzp1q_s16(v560, v559), v596);
          v599 = vshlq_s16(vuzp1q_s16(v563, v562), v596);
          v600 = vshlq_s16(vuzp1q_s16(v566, v565), v596);
          v601 = vshlq_s16(v592, v596);
          v596.i64[0] = 0xF000F000F000FLL;
          v596.i64[1] = 0xF000F000F000FLL;
          v602 = vsubq_s16(v537, v712);
          v603 = vaddq_s16(v712, v596);
          v559.i64[0] = 0x10001000100010;
          v559.i64[1] = 0x10001000100010;
          v604 = vshlq_s16(vuzp1q_s16(v573, v572), v602);
          v605 = vshlq_s16(vuzp1q_s16(v576, v575), v602);
          v606 = vshlq_s16(vuzp1q_s16(v579, v578), v602);
          v607 = vshlq_s16(vuzp1q_s16(v582, v581), v602);
          v602.i64[0] = 0xF000F000F000FLL;
          v602.i64[1] = 0xF000F000F000FLL;
          v608 = vsubq_s16(v559, v713);
          v609 = vaddq_s16(v713, v602);
          v610 = vshlq_s16(v598, v597);
          v611 = vshlq_s16(v599, v597);
          v612 = vshlq_s16(v600, v597);
          v613 = vshlq_s16(v601, v597);
          v614 = vshlq_s16(v604, v603);
          v615 = vshlq_s16(v605, v603);
          v616 = vshlq_s16(v606, v603);
          v617 = vshlq_s16(v607, v603);
          v618 = vshlq_u64(v492, v532);
          v619 = vuzp1q_s32(vzip1q_s64(v492, v618), vzip2q_s64(v492, v618));
          v620 = vshlq_u32(v619, v583);
          v621 = vshlq_s16(vuzp1q_s16(v589, v588), v608);
          v622 = vshlq_s16(vuzp1q_s16(vzip1q_s32(v554, v590), vzip2q_s32(v554, v590)), v608);
          v623 = vshlq_s16(vshlq_s16(vuzp1q_s16(v586, v585), v608), v609);
          v624 = vshlq_s16(v621, v609);
          v625 = vshlq_s16(v622, v609);
          v626 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v619, v620), vzip2q_s32(v619, v620)), v608), v609);
          v627 = vaddq_s16(vandq_s8(v685, v695), vshlq_s16(v595, v594));
          v628 = vdupq_lane_s64(v685.i64[0], 0);
          v629 = vandq_s8(v691, v628);
          v630 = vsubq_s16(v610, v629);
          v631 = vsubq_s16(v611, v629);
          v632 = vsubq_s16(v612, v629);
          v633 = vsubq_s16(v613, v629);
          v634 = vandq_s8(v693, v628);
          v635 = vsubq_s16(v614, v634);
          v636 = vsubq_s16(v615, v634);
          v637 = vandq_s8(v695, v628);
          v638 = vsubq_s16(v616, v634);
          v639 = vsubq_s16(v617, v634);
          v640.i64[0] = 0x1000100010001;
          v640.i64[1] = 0x1000100010001;
          v641 = vsubq_s16(v687, v637);
          v642 = vsubq_s16(v686, v637);
          v643 = vandq_s8(v690, v628);
          v644 = vsubq_s16(v623, v643);
          v645 = vsubq_s16(v624, v643);
          v646 = vsubq_s16(v625, v643);
          v647 = vsubq_s16(v626, v643);
          v648 = vsubq_s16(v688, v637);
          v649 = vsubq_s16(v627, v637);
          v700 = v627;
          v704 = v644;
          v705 = v645;
          v706 = v646;
          v707 = v647;
          if (vaddvq_s16(vceqq_s16(v689, v640)))
          {
            v650 = vnegq_s16(vandq_s8(v709, v640));
            v651.i64[0] = v648.i64[0];
            v652.i64[1] = v649.i64[1];
            v651.i64[1] = v649.i64[0];
            v652.i64[0] = v648.i64[1];
            v653 = vbslq_s8(v650, v652, v649);
            v654 = vbslq_s8(v650, v651, v648);
            v652.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
            v652.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
            v655 = vandq_s8(vqtbl4q_s8(*(&v641 - 1), v652), v650);
            v717.val[0] = vaddq_s16(v653, vandq_s8(vqtbl4q_s8(*(&v641 - 1), xmmword_29D2F10B0), v650));
            v717.val[1] = vaddq_s16(v641, vandq_s8(vqtbl4q_s8(*(&v641 - 1), xmmword_29D2F10C0), v650));
            v717.val[2] = vaddq_s16(v642, v655);
            v717.val[3] = vaddq_s16(v654, v655);
            v656 = vandq_s8(vqtbl4q_s8(v717, v652), v650);
            v649 = vaddq_s16(v717.val[0], vandq_s8(vqtbl4q_s8(v717, xmmword_29D2F10D0), v650));
            v641 = vaddq_s16(v717.val[1], vandq_s8(vqtbl4q_s8(v717, xmmword_29D2F10E0), v650));
            v700 = v649;
            v701 = v641;
            v642 = vaddq_s16(v717.val[2], v656);
            v648 = vaddq_s16(v717.val[3], v656);
            v715.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v630.i8, xmmword_29D2F10B0), v650), v630);
            v715.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v630.i8, xmmword_29D2F10F0), v650), v631);
            v715.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v630.i8, v652), v650), v632);
            v715.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v630.i8, xmmword_29D2F1100), v650), v633);
            v657 = vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F10D0), v650);
            v658 = vandq_s8(vqtbl4q_s8(v715, v652), v650);
            v630 = vaddq_s16(v657, v715.val[0]);
            v631 = vaddq_s16(v715.val[1], v657);
            v632 = vaddq_s16(v715.val[2], v658);
            v633 = vaddq_s16(v715.val[3], v658);
            v715.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v635.i8, xmmword_29D2F0EB0), v650), v635);
            v715.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v635.i8, xmmword_29D2F0FB0), v650), v636);
            v715.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v635.i8, xmmword_29D2F10B0), v650), v638);
            v715.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v635.i8, xmmword_29D2F10C0), v650), v639);
            v659 = vandq_s8(vqtbl4q_s8(v715, v652), v650);
            v635 = vaddq_s16(v715.val[0], v659);
            v636 = vaddq_s16(v715.val[1], v659);
            v638 = vaddq_s16(v715.val[2], vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F0FE0), v650));
            v639 = vaddq_s16(v715.val[3], vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F1110), v650));
            v715.val[0] = v704;
            v715.val[1] = v705;
            v660 = v709;
            v715.val[2] = v706;
            v715.val[3] = v707;
            v716.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F0EB0), v650), v704);
            v716.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F1120), v650), v705);
            v702 = v642;
            v703 = v648;
            v716.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F10B0), v650), v706);
            v716.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F10C0), v650), v707);
            v661 = vandq_s8(vqtbl4q_s8(v716, v652), v650);
            v662 = vandq_s8(vqtbl4q_s8(v716, xmmword_29D2F0FE0), v650);
            v663 = vandq_s8(vqtbl4q_s8(v716, xmmword_29D2F1130), v650);
            v644 = vaddq_s16(v716.val[0], v661);
            v645 = vaddq_s16(v716.val[1], v661);
            v646 = vaddq_s16(v716.val[2], v662);
            v647 = vaddq_s16(v716.val[3], v663);
          }

          else
          {
            v660 = v709;
          }

          v664 = vaddq_s16(v708, v649);
          v665 = vaddq_s16(v641, v708);
          v666 = vaddq_s16(v642, v708);
          v667 = vaddq_s16(v648, v708);
          v668 = vaddq_s16(v630, v708);
          v669 = vaddq_s16(v631, v708);
          v670 = vaddq_s16(v632, v708);
          v671 = vaddq_s16(v633, v708);
          v672 = vaddq_s16(v635, v708);
          v673 = vaddq_s16(v636, v708);
          v674 = vaddq_s16(v638, v708);
          v675 = vaddq_s16(v639, v708);
          v676 = vaddq_s16(v644, v708);
          v677 = vaddq_s16(v645, v708);
          v678 = vaddq_s16(v646, v708);
          v679 = vaddq_s16(v647, v708);
          v680.i64[0] = 0x10001000100010;
          v680.i64[1] = 0x10001000100010;
          v681 = vceqzq_s16(vandq_s8(v660, v680));
          v682 = &v52->i8[v53];
          *v52 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v664, xmmword_29D2F1140), v681), v664), 6uLL);
          v52[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v666, xmmword_29D2F1140), v681), v666), 6uLL);
          v52[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v672, xmmword_29D2F1140), v681), v672), 6uLL);
          v52[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v674, xmmword_29D2F1140), v681), v674), 6uLL);
          v683 = (v52 + 2 * v53);
          *v682 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v665, xmmword_29D2F1140), v681), v665), 6uLL);
          v682[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v667, xmmword_29D2F1140), v681), v667), 6uLL);
          v682[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v673, xmmword_29D2F1140), v681), v673), 6uLL);
          v682[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v675, xmmword_29D2F1140), v681), v675), 6uLL);
          *v683 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v668, xmmword_29D2F1140), v681), v668), 6uLL);
          v683[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v670, xmmword_29D2F1140), v681), v670), 6uLL);
          v683[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v676, xmmword_29D2F1140), v681), v676), 6uLL);
          v683[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v678, xmmword_29D2F1140), v681), v678), 6uLL);
          v684 = (v683 + v53);
          *v684 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v669, xmmword_29D2F1140), v681), v669), 6uLL);
          v684[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v671, xmmword_29D2F1140), v681), v671), 6uLL);
          v684[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v677, xmmword_29D2F1140), v681), v677), 6uLL);
          v684[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v679, xmmword_29D2F1140), v681), v679), 6uLL);
        }

        return result;
      }

      if (v698 >= v38 + 8)
      {
        v696 = v38 + 8;
        v330 = v38 + 16;
        v38 += 8;
      }

      else
      {
        v699 = 1;
        v330 = v38 + 8;
      }

      if (v698 >= v330)
      {
        goto LABEL_81;
      }

      v699 = 1;
    }

    v330 = v38;
    goto LABEL_81;
  }

  if (a4 != 159)
  {
    if (a4 == 255)
    {
      v12 = *(a3 + 16);
      v13 = *(a3 + 48);
      v14 = *(a3 + 144);
      v15 = *(a3 + 176);
      v16 = *(a3 + 64);
      v17 = *(a3 + 96);
      v18 = *(a3 + 32);
      v19 = *(a3 + 192);
      v20 = *(a3 + 224);
      v21 = *(a3 + 240);
      v22 = *(a3 + 128);
      v23 = *(a3 + 160);
      v24 = *(a3 + 80);
      v25 = *(a3 + 112);
      v26 = *(a3 + 208);
      v27 = &a1->i8[a2];
      *a1 = *a3;
      a1[1] = v18;
      a1[2] = v22;
      a1[3] = v23;
      v28 = &a1->i8[2 * a2];
      *v27 = v12;
      *(v27 + 1) = v13;
      *(v27 + 2) = v14;
      *(v27 + 3) = v15;
      *v28 = v16;
      *(v28 + 1) = v17;
      *(v28 + 2) = v19;
      *(v28 + 3) = v20;
      v29 = &v28[a2];
      result = 256;
      *v29 = v24;
      *(v29 + 1) = v25;
      *(v29 + 2) = v26;
      *(v29 + 3) = v21;
      return result;
    }

    goto LABEL_8;
  }

  v57.i64[0] = 0xA000A000A000ALL;
  v57.i64[1] = 0xA000A000A000ALL;
  v58 = vmovl_u16(*&vpaddq_s16(v57, v57));
  v57.i64[0] = vpaddq_s32(v58, v58).u64[0];
  v59.i64[0] = v57.u32[0];
  v59.i64[1] = v57.u32[1];
  v60 = v59;
  v61 = vaddvq_s64(v59);
  v62 = v61;
  v63 = 0uLL;
  if (v61 > 0x80)
  {
    v277 = 0uLL;
    v278 = 0uLL;
    v279 = 0uLL;
    v269 = 0uLL;
    v270 = 0uLL;
    v271 = 0uLL;
    v272 = 0uLL;
    v276 = 0uLL;
    v275 = 0uLL;
    v274 = 0uLL;
    v273 = 0uLL;
    v286 = 0uLL;
    v285 = 0uLL;
    v284 = 0uLL;
    v283 = 0uLL;
  }

  else
  {
    v64 = (a3 & 0xFFFFFFFFFFFFFFF8);
    v65 = vzip1q_s64(0, v60);
    v66 = 8 * (a3 & 7);
    v67 = v61 + v66;
    v68 = vaddq_s64(v65, vdupq_n_s64(v66));
    v69 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v68)), vshlq_u64(vdupq_lane_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 0), vnegq_s64(v68)));
    if (v67 >= 0x81)
    {
      v69 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v64[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v68)), vshlq_u64(vdupq_laneq_s64(v64[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v68))), v69);
    }

    v70 = v67 & 0x3F;
    v71 = (v64 + 8 * (v67 >> 6));
    v72 = vaddq_s64(v65, vdupq_n_s64(v70));
    v73 = v62 + v67;
    v74 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v71, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v72)), vshlq_u64(vdupq_lane_s64(v71->i64[0], 0), vnegq_s64(v72)));
    if (v62 + v70 >= 0x81)
    {
      v74 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v71[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v72)), vshlq_u64(vdupq_laneq_s64(v71[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v72))), v74);
    }

    v75 = v73 & 0x3F;
    v76 = (v64 + 8 * (v73 >> 6));
    v77 = vaddq_s64(v65, vdupq_n_s64(v75));
    v78 = v62 + v73;
    v79 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v76, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v77)), vshlq_u64(vdupq_lane_s64(v76->i64[0], 0), vnegq_s64(v77)));
    if (v62 + v75 >= 0x81)
    {
      v79 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v76[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v77)), vshlq_u64(vdupq_laneq_s64(v76[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v77))), v79);
    }

    v80 = v78 & 0x3F;
    v81 = (v64 + 8 * (v78 >> 6));
    v82 = vaddq_s64(v65, vdupq_n_s64(v80));
    v83 = v62 + v78;
    v84 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v81, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v82)), vshlq_u64(vdupq_lane_s64(v81->i64[0], 0), vnegq_s64(v82)));
    if (v62 + v80 >= 0x81)
    {
      v84 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v81[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v82)), vshlq_u64(vdupq_laneq_s64(v81[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v82))), v84);
    }

    v85 = vextq_s8(v58, v58, 8uLL).u64[0];
    v86 = v83 & 0x3F;
    v87 = (v64 + 8 * (v83 >> 6));
    v88 = vaddq_s64(v65, vdupq_n_s64(v86));
    v89 = v62 + v83;
    v90 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v87, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v88)), vshlq_u64(vdupq_lane_s64(v87->i64[0], 0), vnegq_s64(v88)));
    if (v62 + v86 >= 0x81)
    {
      v90 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v87[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v88)), vshlq_u64(vdupq_laneq_s64(v87[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v88))), v90);
    }

    v91 = v89 & 0x3F;
    v92 = (v64 + 8 * (v89 >> 6));
    v93 = vaddq_s64(v65, vdupq_n_s64(v91));
    v94 = v62 + v89;
    v95 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v92, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v93)), vshlq_u64(vdupq_lane_s64(v92->i64[0], 0), vnegq_s64(v93)));
    if (v62 + v91 >= 0x81)
    {
      v95 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v92[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v93)), vshlq_u64(vdupq_laneq_s64(v92[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v93))), v95);
    }

    v96 = vzip1_s32(*v58.i8, v85);
    v97 = v94 & 0x3F;
    v98 = (v64 + 8 * (v94 >> 6));
    v99 = vaddq_s64(v65, vdupq_n_s64(v97));
    v100 = v62 + v94;
    v101 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v98, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v99)), vshlq_u64(vdupq_lane_s64(v98->i64[0], 0), vnegq_s64(v99)));
    if (v62 + v97 >= 0x81)
    {
      v101 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v98[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v99)), vshlq_u64(vdupq_laneq_s64(v98[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v99))), v101);
    }

    v102.i64[0] = v96.u32[0];
    v102.i64[1] = v96.u32[1];
    v103 = v102;
    v104 = v100 & 0x3F;
    v105 = (v64 + 8 * (v100 >> 6));
    v106 = vaddq_s64(v65, vdupq_n_s64(v104));
    v107 = v62 + v100;
    v108 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v105, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v106)), vshlq_u64(vdupq_lane_s64(v105->i64[0], 0), vnegq_s64(v106)));
    if (v62 + v104 >= 0x81)
    {
      v108 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v105[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v106)), vshlq_u64(vdupq_laneq_s64(v105[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v106))), v108);
    }

    v109 = vnegq_s64(v103);
    v110 = v107 & 0x3F;
    v111 = (v64 + 8 * (v107 >> 6));
    v112 = vaddq_s64(v65, vdupq_n_s64(v110));
    v113 = v62 + v107;
    v114 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v111, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v112)), vshlq_u64(vdupq_lane_s64(v111->i64[0], 0), vnegq_s64(v112)));
    if (v62 + v110 >= 0x81)
    {
      v114 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v111[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v112)), vshlq_u64(vdupq_laneq_s64(v111[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v112))), v114);
    }

    v115 = vshlq_u64(v69, v109);
    v116 = vshlq_u64(v74, v109);
    v117 = vshlq_u64(v79, v109);
    v118 = vshlq_u64(v84, v109);
    v119 = vshlq_u64(v90, v109);
    v120 = vshlq_u64(v95, v109);
    v121 = vshlq_u64(v101, v109);
    v122 = vshlq_u64(v108, v109);
    v123 = vshlq_u64(v114, v109);
    v124 = v113 & 0x3F;
    v125 = (v64 + 8 * (v113 >> 6));
    v126 = vaddq_s64(v65, vdupq_n_s64(v124));
    v127 = v62 + v113;
    v128 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v125, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v126)), vshlq_u64(vdupq_lane_s64(v125->i64[0], 0), vnegq_s64(v126)));
    if (v62 + v124 >= 0x81)
    {
      v128 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v125[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v126)), vshlq_u64(vdupq_laneq_s64(v125[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v126))), v128);
    }

    v129 = vzip2q_s64(v69, v115);
    v130 = vzip1q_s64(v69, v115);
    v131 = vzip2q_s64(v74, v116);
    v132 = vzip1q_s64(v74, v116);
    v133 = vzip2q_s64(v79, v117);
    v134 = vzip1q_s64(v79, v117);
    v135 = vzip2q_s64(v84, v118);
    v136 = vzip1q_s64(v84, v118);
    v137 = vzip2q_s64(v90, v119);
    v138 = vzip1q_s64(v90, v119);
    v139 = vzip2q_s64(v95, v120);
    v140 = vzip1q_s64(v95, v120);
    v141 = vzip2q_s64(v101, v121);
    v142 = vzip1q_s64(v101, v121);
    v143 = vzip2q_s64(v108, v122);
    v144 = vzip1q_s64(v108, v122);
    v145 = vzip2q_s64(v114, v123);
    v146 = vzip1q_s64(v114, v123);
    v147 = vshlq_u64(v128, v109);
    v148 = vzip2q_s64(v128, v147);
    v149 = vzip1q_s64(v128, v147);
    v150 = (v64 + 8 * (v127 >> 6));
    v151 = vaddq_s64(v65, vdupq_n_s64(v127 & 0x3F));
    v152 = v62 + v127;
    v153 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v150, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v151)), vshlq_u64(vdupq_lane_s64(v150->i64[0], 0), vnegq_s64(v151)));
    if (v62 + (v127 & 0x3F) >= 0x81)
    {
      v153 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v150[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v151)), vshlq_u64(vdupq_laneq_s64(v150[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v151))), v153);
    }

    v154 = vuzp1q_s32(v130, v129);
    v155 = vuzp1q_s32(v132, v131);
    v156 = vuzp1q_s32(v134, v133);
    v157 = vuzp1q_s32(v136, v135);
    v158 = vuzp1q_s32(v138, v137);
    v159 = vuzp1q_s32(v140, v139);
    v160 = vuzp1q_s32(v142, v141);
    v161 = vuzp1q_s32(v144, v143);
    v162 = vuzp1q_s32(v146, v145);
    v163 = vuzp1q_s32(v149, v148);
    v164 = vshlq_u64(v153, v109);
    v165 = vuzp1q_s32(vzip1q_s64(v153, v164), vzip2q_s64(v153, v164));
    v166 = v62 + v152;
    v167 = v152 & 0x3F;
    v168 = vaddq_s64(v65, vdupq_n_s64(v167));
    v169 = (v64 + 8 * (v152 >> 6));
    v170 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v169, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v168)), vshlq_u64(vdupq_lane_s64(v169->i64[0], 0), vnegq_s64(v168)));
    if (v62 + v167 >= 0x81)
    {
      v170 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v169[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v168)), vshlq_u64(vdupq_laneq_s64(v169[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v168))), v170);
    }

    v171 = vshrq_n_u32(v154, 0xAuLL);
    v172 = vshrq_n_u32(v155, 0xAuLL);
    v173 = vshrq_n_u32(v156, 0xAuLL);
    v174 = vshrq_n_u32(v157, 0xAuLL);
    v175 = vshrq_n_u32(v158, 0xAuLL);
    v176 = vshrq_n_u32(v159, 0xAuLL);
    v177 = vshrq_n_u32(v160, 0xAuLL);
    v178 = vshrq_n_u32(v161, 0xAuLL);
    v179 = vshrq_n_u32(v162, 0xAuLL);
    v180 = vshrq_n_u32(v163, 0xAuLL);
    v181 = vshrq_n_u32(v165, 0xAuLL);
    v182 = vshlq_u64(v170, v109);
    v183 = vuzp1q_s32(vzip1q_s64(v170, v182), vzip2q_s64(v170, v182));
    v184 = vshrq_n_u32(v183, 0xAuLL);
    v185 = v166 & 0x3F;
    v186 = (v64 + 8 * (v166 >> 6));
    v187 = vaddq_s64(v65, vdupq_n_s64(v185));
    v188 = v62 + v166;
    v189 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v186, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v187)), vshlq_u64(vdupq_lane_s64(v186->i64[0], 0), vnegq_s64(v187)));
    if (v62 + v185 >= 0x81)
    {
      v189 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v186[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v187)), vshlq_u64(vdupq_laneq_s64(v186[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v187))), v189);
    }

    v190 = vzip2q_s32(v154, v171);
    v191 = vzip1q_s32(v154, v171);
    v692 = vzip1q_s32(v155, v172);
    v694 = vzip2q_s32(v155, v172);
    v192 = vzip2q_s32(v156, v173);
    v193 = vzip1q_s32(v156, v173);
    v194 = vzip2q_s32(v157, v174);
    v195 = vzip1q_s32(v157, v174);
    v196 = vzip2q_s32(v158, v175);
    v197 = vzip1q_s32(v158, v175);
    v198 = vzip2q_s32(v159, v176);
    v199 = vzip1q_s32(v159, v176);
    v200 = vzip2q_s32(v160, v177);
    v201 = vzip1q_s32(v160, v177);
    v202 = vzip2q_s32(v161, v178);
    v203 = vzip1q_s32(v161, v178);
    v204 = vzip2q_s32(v162, v179);
    v205 = vzip1q_s32(v162, v179);
    v206 = vzip2q_s32(v163, v180);
    v207 = vzip1q_s32(v163, v180);
    v208 = vzip2q_s32(v165, v181);
    v209 = vzip1q_s32(v165, v181);
    v210 = vzip2q_s32(v183, v184);
    v211 = vzip1q_s32(v183, v184);
    v212 = vshlq_u64(v189, v109);
    v213 = vuzp1q_s32(vzip1q_s64(v189, v212), vzip2q_s64(v189, v212));
    v214 = vshrq_n_u32(v213, 0xAuLL);
    v215 = vzip2q_s32(v213, v214);
    v216 = vzip1q_s32(v213, v214);
    v217 = vaddq_s64(v65, vdupq_n_s64(v188 & 0x3F));
    v218 = (v64 + 8 * (v188 >> 6));
    v219.i64[0] = 0x1000100010001;
    v219.i64[1] = 0x1000100010001;
    v220 = vshlq_n_s16(v219, 0xAuLL);
    v221 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v218, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v217)), vshlq_u64(vdupq_lane_s64(v218->i64[0], 0), vnegq_s64(v217)));
    v222.i64[0] = -1;
    v222.i64[1] = -1;
    v223 = v62 + v188;
    if (v62 + (v188 & 0x3F) >= 0x81)
    {
      v222.i64[0] = -1;
      v222.i64[1] = -1;
      v221 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v218[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v217)), vshlq_u64(vdupq_laneq_s64(v218[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v217))), v221);
    }

    v224 = vaddq_s16(v220, v222);
    v225 = vuzp1q_s16(v191, v190);
    v226 = vuzp1q_s16(v692, v694);
    v227 = vuzp1q_s16(v193, v192);
    v228 = vuzp1q_s16(v195, v194);
    v229 = vuzp1q_s16(v197, v196);
    v230 = vuzp1q_s16(v199, v198);
    v231 = vuzp1q_s16(v201, v200);
    v232 = vuzp1q_s16(v203, v202);
    v233 = vuzp1q_s16(v205, v204);
    v234 = vuzp1q_s16(v207, v206);
    v235 = vuzp1q_s16(v209, v208);
    v236 = vuzp1q_s16(v211, v210);
    v237 = vuzp1q_s16(v216, v215);
    v238 = vshlq_u64(v221, v109);
    v239 = vuzp1q_s32(vzip1q_s64(v221, v238), vzip2q_s64(v221, v238));
    v240 = vshrq_n_u32(v239, 0xAuLL);
    v241 = vuzp1q_s16(vzip1q_s32(v239, v240), vzip2q_s32(v239, v240));
    v242 = v62 + v223;
    v243 = v223 & 0x3F;
    v244 = vaddq_s64(v65, vdupq_n_s64(v243));
    v245 = (v64 + 8 * (v223 >> 6));
    v246 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v245, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v244)), vshlq_u64(vdupq_lane_s64(v245->i64[0], 0), vnegq_s64(v244)));
    if (v62 + v243 >= 0x81)
    {
      v246 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v245[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v244)), vshlq_u64(vdupq_laneq_s64(v245[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v244))), v246);
    }

    v247 = vandq_s8(v224, v225);
    v248 = vandq_s8(v224, v226);
    v249 = vandq_s8(v224, v227);
    v250 = vandq_s8(v224, v228);
    v251 = vandq_s8(v224, v229);
    v252 = vandq_s8(v224, v230);
    v253 = vandq_s8(v224, v231);
    v254 = vandq_s8(v224, v232);
    v255 = vandq_s8(v224, v233);
    v256 = vandq_s8(v224, v234);
    v257 = vandq_s8(v224, v235);
    v258 = vandq_s8(v224, v236);
    v259 = vandq_s8(v224, v237);
    v260 = vandq_s8(v224, v241);
    v261 = vshlq_u64(v246, v109);
    v262 = vuzp1q_s32(vzip1q_s64(v246, v261), vzip2q_s64(v246, v261));
    v263 = vshrq_n_u32(v262, 0xAuLL);
    v264 = vuzp1q_s16(vzip1q_s32(v262, v263), vzip2q_s32(v262, v263));
    v265 = (v64 + 8 * (v242 >> 6));
    v266 = vaddq_s64(v65, vdupq_n_s64(v242 & 0x3F));
    v267 = vandq_s8(v224, v264);
    v268 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v265, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v266)), vshlq_u64(vdupq_lane_s64(v265->i64[0], 0), vnegq_s64(v266)));
    if (v62 + (v242 & 0x3F) >= 0x81)
    {
      v268 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v265[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v266)), vshlq_u64(vdupq_laneq_s64(v265[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v266))), v268);
    }

    v269 = vshlq_n_s16(v247, 6uLL);
    v270 = vshlq_n_s16(v248, 6uLL);
    v271 = vshlq_n_s16(v249, 6uLL);
    v272 = vshlq_n_s16(v250, 6uLL);
    v273 = vshlq_n_s16(v251, 6uLL);
    v274 = vshlq_n_s16(v252, 6uLL);
    v275 = vshlq_n_s16(v253, 6uLL);
    v276 = vshlq_n_s16(v254, 6uLL);
    v63 = vshlq_n_s16(v255, 6uLL);
    v277 = vshlq_n_s16(v256, 6uLL);
    v278 = vshlq_n_s16(v257, 6uLL);
    v279 = vshlq_n_s16(v258, 6uLL);
    v280 = vshlq_u64(v268, v109);
    v281 = vuzp1q_s32(vzip1q_s64(v268, v280), vzip2q_s64(v268, v280));
    v282 = vshrq_n_u32(v281, 0xAuLL);
    v283 = vshlq_n_s16(v259, 6uLL);
    v284 = vshlq_n_s16(v260, 6uLL);
    v285 = vshlq_n_s16(v267, 6uLL);
    v286 = vshlq_n_s16(vandq_s8(v224, vuzp1q_s16(vzip1q_s32(v281, v282), vzip2q_s32(v281, v282))), 6uLL);
  }

  v287 = &a1->i8[a2];
  *a1 = v269;
  a1[1] = v271;
  a1[2] = v63;
  a1[3] = v278;
  v288 = (a1 + 2 * a2);
  *v287 = v270;
  v287[1] = v272;
  v287[2] = v277;
  v287[3] = v279;
  *v288 = v273;
  v288[1] = v275;
  v288[2] = v283;
  v288[3] = v285;
  v289 = (v288 + a2);
  result = 160;
  *v289 = v274;
  v289[1] = v276;
  v289[2] = v284;
  v289[3] = v286;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(int64x2_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 128, a2, *a3);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 32, 128, v5, a3[1]);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 4, 128, v6, a3[2]);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 36, 128, v7, a3[3]);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 64, 128, v8, a3[4]);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 96, 128, v9, a3[5]);
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 68, 128, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 100, 128, v10 + v11, v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(uint64_t a1, _BYTE *a2, int16x8_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (a3 + 2 * a4);
  v10 = *v8;
  v11 = v8[1];
  v12 = v8[2];
  v13 = v8[3];
  v9 = (v8 + a4);
  v14 = vshrq_n_s16(*a3, 6uLL);
  v15 = vshrq_n_s16(*(a3 + a4), 6uLL);
  v16 = vshrq_n_s16(a3[1], 6uLL);
  v17 = vshrq_n_s16(*(&a3[1] + a4), 6uLL);
  v18 = vshrq_n_s16(v10, 6uLL);
  v19 = vshrq_n_s16(*v9, 6uLL);
  v20 = vshrq_n_s16(v11, 6uLL);
  v21 = vshrq_n_s16(a3[2], 6uLL);
  v22 = vshrq_n_s16(*(&a3[2] + a4), 6uLL);
  v23 = vshrq_n_s16(a3[3], 6uLL);
  v472 = vshrq_n_s16(*(&a3[3] + a4), 6uLL);
  v24 = vshrq_n_s16(v12, 6uLL);
  v25 = vshrq_n_s16(v9[2], 6uLL);
  v26 = vshrq_n_s16(v13, 6uLL);
  v27 = vshrq_n_s16(v9[3], 6uLL);
  v28 = vshrq_n_s16(v9[1], 6uLL);
  v493 = vdupq_lane_s64(v14.i64[0], 0);
  v29 = vsubq_s16(v14, v493);
  v464 = v14;
  v466 = v15;
  v467 = v16;
  v468 = v17;
  v30 = v27;
  v473 = vshrq_n_s16(vshlq_n_s16(v29, 6uLL), 6uLL);
  v475 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v15, v493), 6uLL), 6uLL);
  v477 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v16, v493), 6uLL), 6uLL);
  v479 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v17, v493), 6uLL), 6uLL);
  v481 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v18, v493), 6uLL), 6uLL);
  v482 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v19, v493), 6uLL), 6uLL);
  v31 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v473, v475), v477), v479), xmmword_29D2F1150);
  v32 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v473, v475), v477), v479), xmmword_29D2F1150);
  v33 = vpmaxq_s16(v31, v31);
  v34 = vpminq_s16(v32, v32);
  v35 = vzip1q_s16(v33, v34);
  v36.i64[0] = 0x10001000100010;
  v36.i64[1] = 0x10001000100010;
  v37 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v35)), vceqzq_s16(v35));
  v483 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v20, v493), 6uLL), 6uLL);
  v484 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v28, v493), 6uLL), 6uLL);
  v485 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v21, v493), 6uLL), 6uLL);
  v486 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v22, v493), 6uLL), 6uLL);
  v38.i64[0] = 0x8000800080008000;
  v38.i64[1] = 0x8000800080008000;
  v39.i64[0] = 0x8000800080008000;
  v39.i64[1] = 0x8000800080008000;
  v40 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v481, v482), v483), v484), xmmword_29D2F1150);
  v41 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v481, v482), v483), v484), xmmword_29D2F1150);
  v42 = vpmaxq_s16(v40, v40);
  v43 = vpminq_s16(v41, v41);
  v44 = vmaxq_s16(vmaxq_s16(v33, v38), v42);
  v45 = vminq_s16(vminq_s16(v34, v39), v43);
  v46 = vzip1q_s16(v42, v43);
  v47 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v46)), vceqzq_s16(v46));
  v487 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v23, v493), 6uLL), 6uLL);
  v488 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v472, v493), 6uLL), 6uLL);
  v489 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v24, v493), 6uLL), 6uLL);
  v490 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v25, v493), 6uLL), 6uLL);
  v48 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v485, v486), v487), v488), xmmword_29D2F1150);
  v49 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v485, v486), v487), v488), xmmword_29D2F1150);
  v50 = vpmaxq_s16(v48, v48);
  v51 = vpminq_s16(v49, v49);
  v52 = vmaxq_s16(v44, v50);
  v53 = vminq_s16(v45, v51);
  v54 = vzip1q_s16(v50, v51);
  v55 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v54)), vceqzq_s16(v54));
  v469 = v24;
  v470 = v25;
  v471 = v26;
  v491 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v26, v493), 6uLL), 6uLL);
  v492 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v30, v493), 6uLL), 6uLL);
  v56 = vpmaxq_s16(v37, v37);
  v57 = vpmaxq_s16(v47, v47);
  v58 = vpmaxq_s16(v55, v55);
  v59 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v489, v490), v491), v492), xmmword_29D2F1150);
  v60 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v489, v490), v491), v492), xmmword_29D2F1150);
  v61 = vpmaxq_s16(v59, v59);
  v62 = vpminq_s16(v60, v60);
  v63 = vmaxq_s16(v52, v61);
  v64 = vminq_s16(v53, v62);
  v65 = vzip1q_s16(v61, v62);
  v66 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v65)), vceqzq_s16(v65));
  v67 = vpmaxq_s16(v66, v66);
  v68 = vmaxq_s16(vmaxq_s16(v56, v57), vmaxq_s16(v58, v67));
  v69 = vclzq_s16(vsubq_s16(v63, v64));
  v70.i64[0] = 0xF000F000F000FLL;
  v70.i64[1] = 0xF000F000F000FLL;
  v71.i64[0] = -1;
  v71.i64[1] = -1;
  v500 = v64;
  v501 = v63;
  v72 = vsubq_s16(v36, v69);
  v73 = vsubq_s16(vshlq_s16(v71, vsubq_s16(v70, v69)), v64);
  v74 = vcgtq_s16(v68, v72);
  v75 = vminq_s16(v72, v68);
  v502 = vandq_s8(v73, v74);
  v73.i64[0] = 0x8000800080008;
  v73.i64[1] = 0x8000800080008;
  v76.i64[0] = 0x3000300030003;
  v76.i64[1] = 0x3000300030003;
  v77 = vorrq_s8(vandq_s8(vceqzq_s16(v75), v76), vorrq_s8(vandq_s8(v74, v73), 0));
  v78 = vmaxq_s16(vminq_s16(vsubq_s16(v75, v57), v76), 0);
  v79 = vmaxq_s16(vminq_s16(vsubq_s16(v75, v58), v76), 0);
  v496 = vsubq_s16(v75, v78);
  v497 = vsubq_s16(v75, v79);
  v80 = vmaxq_s16(vminq_s16(vsubq_s16(v75, v67), v76), 0);
  v498 = vsubq_s16(v75, v80);
  v499 = v75;
  v81 = vmaxq_s16(vminq_s16(vsubq_s16(v75, v56), v76), 0);
  v15.i64[0] = 0x4000400040004;
  v15.i64[1] = 0x4000400040004;
  v82 = vorrq_s8(vbicq_s8(v15, vceqq_s16(vaddq_s16(v80, v79), vnegq_s16(vaddq_s16(v81, v78)))), v77);
  v494 = v82;
  v495 = vsubq_s16(v75, v81);
  if (vmaxvq_s16(v75))
  {
    v456 = v30;
    v458 = v21;
    v459 = v22;
    v460 = v23;
    v457 = v28;
    v461 = v18;
    v462 = v19;
    v463 = v20;
    v83 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v473, vqtbl1q_s8(v473, xmmword_29D2F1140)), 6uLL), 6uLL);
    v84 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v475, vqtbl1q_s8(v475, xmmword_29D2F1140)), 6uLL), 6uLL);
    v85 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v477, vqtbl1q_s8(v477, xmmword_29D2F1140)), 6uLL), 6uLL);
    v86 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v479, vqtbl1q_s8(v479, xmmword_29D2F1140)), 6uLL), 6uLL);
    v87 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v481, vqtbl1q_s8(v481, xmmword_29D2F1140)), 6uLL), 6uLL);
    v88.i64[0] = 0x4000400040004;
    v88.i64[1] = 0x4000400040004;
    v89 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v482, vqtbl1q_s8(v482, xmmword_29D2F1140)), 6uLL), 6uLL);
    v90 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v489, vqtbl1q_s8(v489, xmmword_29D2F1140)), 6uLL), 6uLL);
    v91 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v490, vqtbl1q_s8(v490, xmmword_29D2F1140)), 6uLL), 6uLL);
    v92 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v491, vqtbl1q_s8(v491, xmmword_29D2F1140)), 6uLL), 6uLL);
    v93 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v492, vqtbl1q_s8(v492, xmmword_29D2F1140)), 6uLL), 6uLL);
    v94 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v83, v84), v85), v86), xmmword_29D2F1150);
    v95 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v83, v84), v85), v86), xmmword_29D2F1150);
    v96 = vpmaxq_s16(v94, v94);
    v97 = vpminq_s16(v95, v95);
    v98 = vmaxq_s16(v96, v38);
    v99 = vminq_s16(v97, v39);
    v100 = vzip1q_s16(v96, v97);
    v101 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v100)), vceqzq_s16(v100));
    v102 = vpmaxq_s16(v101, v101);
    v444 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v484, vqtbl1q_s8(v484, xmmword_29D2F1140)), 6uLL), 6uLL);
    v446 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v483, vqtbl1q_s8(v483, xmmword_29D2F1140)), 6uLL), 6uLL);
    v103 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v87, v89), v446), v444), xmmword_29D2F1150);
    v104 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v87, v89), v446), v444), xmmword_29D2F1150);
    v105 = vpmaxq_s16(v103, v103);
    v106 = vpminq_s16(v104, v104);
    v107 = vmaxq_s16(v98, v105);
    v108 = vminq_s16(v99, v106);
    v109 = vzip1q_s16(v105, v106);
    v110 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v109)), vceqzq_s16(v109));
    v111 = vpmaxq_s16(v110, v110);
    v448 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v486, vqtbl1q_s8(v486, xmmword_29D2F1140)), 6uLL), 6uLL);
    v450 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v485, vqtbl1q_s8(v485, xmmword_29D2F1140)), 6uLL), 6uLL);
    v452 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v488, vqtbl1q_s8(v488, xmmword_29D2F1140)), 6uLL), 6uLL);
    v454 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v487, vqtbl1q_s8(v487, xmmword_29D2F1140)), 6uLL), 6uLL);
    v112 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v450, v448), v454), v452), xmmword_29D2F1150);
    v113 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v450, v448), v454), v452), xmmword_29D2F1150);
    v114 = vpmaxq_s16(v112, v112);
    v115 = vpminq_s16(v113, v113);
    v116 = vmaxq_s16(v107, v114);
    v117 = vminq_s16(v108, v115);
    v118 = vzip1q_s16(v114, v115);
    v119 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v118)), vceqzq_s16(v118));
    v120 = vpmaxq_s16(v119, v119);
    v121 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v90, v91), v92), v93), xmmword_29D2F1150);
    v122 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v90, v91), v92), v93), xmmword_29D2F1150);
    v123 = vpmaxq_s16(v121, v121);
    v124 = vpminq_s16(v122, v122);
    v125 = vmaxq_s16(v116, v123);
    v126 = vminq_s16(v117, v124);
    v127 = vzip1q_s16(v123, v124);
    v128 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v127)), vceqzq_s16(v127));
    v129 = vpmaxq_s16(v128, v128);
    v130 = vmaxq_s16(vmaxq_s16(v102, v111), vmaxq_s16(v120, v129));
    v131 = vclzq_s16(vsubq_s16(v125, v126));
    v132 = vsubq_s16(v36, v131);
    v133 = vcgtq_s16(v130, v132);
    v134 = vminq_s16(v132, v130);
    v135 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v102), v76), 0);
    v136 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v111), v76), 0);
    v137 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v120), v76), 0);
    v138 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v129), v76), 0);
    v139 = vbicq_s8(v88, vceqq_s16(vaddq_s16(v138, v137), vnegq_s16(vaddq_s16(v135, v136))));
    v132.i64[0] = 0x18001800180018;
    v132.i64[1] = 0x18001800180018;
    v140 = vbslq_s8(v133, v132, v36);
    v438 = vsubq_s16(v134, v136);
    v440 = vsubq_s16(v134, v137);
    v442 = vsubq_s16(v134, v138);
    v137.i64[0] = 0x7000700070007;
    v137.i64[1] = 0x7000700070007;
    v436 = vsubq_s16(v134, v135);
    v135.i64[0] = 0x8000800080008;
    v135.i64[1] = 0x8000800080008;
    v141.i64[0] = 0x2000200020002;
    v141.i64[1] = 0x2000200020002;
    v142 = vandq_s8(vceqq_s16(vandq_s8(v77, v76), v141), v36);
    v143 = v498;
    v144 = v499;
    v145 = vaddq_s16(vaddq_s16(vbicq_s8(v499, vceqzq_s16(vandq_s8(v77, v135))), v142), vandq_s8(vaddq_s16(v82, v82), v135));
    v147 = v495;
    v146 = v496;
    v148 = v497;
    v149 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vmlaq_s16(v145, v495, v137), vshlq_n_s16(vaddq_s16(vaddq_s16(v497, v496), v498), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v134, vceqzq_s16((*&v140 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v139, v139)), v436, v137), vshlq_n_s16(vaddq_s16(vaddq_s16(v440, v438), v442), 3uLL))).i64[0], 0);
    v150 = vaddvq_s16(v149);
    v152 = a5 < 4 || a6 < 2;
    if (v150)
    {
      v153.i64[0] = 0x3000300030003;
      v153.i64[1] = 0x3000300030003;
      v154 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v134), v153), v140), v139);
      v155.i64[0] = 0xF000F000F000FLL;
      v155.i64[1] = 0xF000F000F000FLL;
      v473 = vbslq_s8(v149, v83, v473);
      v475 = vbslq_s8(v149, v84, v475);
      v153.i64[0] = -1;
      v153.i64[1] = -1;
      v477 = vbslq_s8(v149, v85, v477);
      v479 = vbslq_s8(v149, v86, v479);
      v481 = vbslq_s8(v149, v87, v481);
      v482 = vbslq_s8(v149, v89, v482);
      v483 = vbslq_s8(v149, v446, v483);
      v484 = vbslq_s8(v149, v444, v484);
      v485 = vbslq_s8(v149, v450, v485);
      v486 = vbslq_s8(v149, v448, v486);
      v487 = vbslq_s8(v149, v454, v487);
      v488 = vbslq_s8(v149, v452, v488);
      v489 = vbslq_s8(v149, v90, v489);
      v490 = vbslq_s8(v149, v91, v490);
      v491 = vbslq_s8(v149, v92, v491);
      v492 = vbslq_s8(v149, v93, v492);
      v147 = vbslq_s8(v149, v436, v495);
      v146 = vbslq_s8(v149, v438, v496);
      v495 = v147;
      v496 = v146;
      v148 = vbslq_s8(v149, v440, v497);
      v143 = vbslq_s8(v149, v442, v498);
      v497 = v148;
      v498 = v143;
      v500 = vbslq_s8(v149, v126, v500);
      v501 = vbslq_s8(v149, v125, v501);
      v502 = vbslq_s8(v149, vandq_s8(vsubq_s16(vshlq_s16(v153, vsubq_s16(v155, v131)), v126), v133), v502);
      v144 = vbslq_s8(v149, v134, v499);
      v499 = v144;
      v82 = vbslq_s8(v149, v154, v494);
      v493 = vbslq_s8(v149, vsubq_s16(v493, vqtbl1q_s8(v493, xmmword_29D2F1140)), v493);
      v494 = v82;
    }

    v156 = v464;
    v157 = v466;
    v158 = v467;
    v159 = v468;
    if (!v152)
    {
      v160 = vqtbl4q_s8(*v156.i8, xmmword_29D2F1160);
      v161 = vsubq_s16(v464, vqtbl4q_s8(*v156.i8, xmmword_29D2F10B0));
      v162 = vsubq_s16(v467, v160);
      v163 = vsubq_s16(v468, v160);
      v504.val[0] = v461;
      v504.val[1] = v462;
      v504.val[2] = v463;
      v504.val[3].i64[0] = v457.i64[0];
      v504.val[3].i64[1] = v468.i64[1];
      v164 = vsubq_s16(v461, vqtbl4q_s8(v504, xmmword_29D2F10B0));
      v165 = vsubq_s16(v462, vqtbl4q_s8(v504, xmmword_29D2F10F0));
      v166 = vsubq_s16(v463, vqtbl4q_s8(v504, xmmword_29D2F1160));
      v167 = vsubq_s16(v457, vqtbl4q_s8(v504, xmmword_29D2F1100));
      v505.val[0] = v458;
      v505.val[1] = v459;
      v505.val[2] = v460;
      v505.val[3].i64[0] = v472.i64[0];
      v505.val[3].i64[1] = v468.i64[1];
      v504.val[1] = vsubq_s16(v458, vqtbl4q_s8(v505, xmmword_29D2F1170));
      v504.val[2] = vsubq_s16(v459, vqtbl4q_s8(v505, xmmword_29D2F1180));
      v504.val[3] = vsubq_s16(v460, vqtbl4q_s8(v505, xmmword_29D2F10B0));
      v168 = vsubq_s16(v472, vqtbl4q_s8(v505, xmmword_29D2F10C0));
      v503.val[0] = v469;
      v503.val[1] = v470;
      v503.val[2] = v471;
      v503.val[3].i64[0] = v456.i64[0];
      v503.val[3].i64[1] = v468.i64[1];
      v505.val[1].i64[0] = v163.i64[0];
      v505.val[1].i64[1] = v161.i64[0];
      v161.i64[0] = v163.i64[1];
      v504.val[0] = vshlq_n_s16(vsubq_s16(v469, vqtbl4q_s8(v503, xmmword_29D2F1170)), 6uLL);
      v505.val[0] = vshlq_n_s16(vsubq_s16(v470, vqtbl4q_s8(v503, xmmword_29D2F1120)), 6uLL);
      v169 = vshlq_n_s16(vsubq_s16(v471, vqtbl4q_s8(v503, xmmword_29D2F10B0)), 6uLL);
      v170 = vshlq_n_s16(vsubq_s16(v456, vqtbl4q_s8(v503, xmmword_29D2F10C0)), 6uLL);
      v171 = vshrq_n_s16(vshlq_n_s16(v161, 6uLL), 6uLL);
      v172 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v466, vqtbl4q_s8(*v156.i8, xmmword_29D2F10C0)), 6uLL), 6uLL);
      v173 = vshrq_n_s16(vshlq_n_s16(v162, 6uLL), 6uLL);
      v174 = vshrq_n_s16(vshlq_n_s16(v505.val[1], 6uLL), 6uLL);
      v175 = vshrq_n_s16(vshlq_n_s16(v164, 6uLL), 6uLL);
      v503.val[2] = vshrq_n_s16(vshlq_n_s16(v165, 6uLL), 6uLL);
      v503.val[0] = vshrq_n_s16(vshlq_n_s16(v166, 6uLL), 6uLL);
      v176 = vshrq_n_s16(vshlq_n_s16(v504.val[1], 6uLL), 6uLL);
      v505.val[1] = vshrq_n_s16(vshlq_n_s16(v504.val[2], 6uLL), 6uLL);
      v177 = vshrq_n_s16(vshlq_n_s16(v504.val[3], 6uLL), 6uLL);
      v178 = vshrq_n_s16(v504.val[0], 6uLL);
      v179 = vshrq_n_s16(v505.val[0], 6uLL);
      v180 = vshrq_n_s16(v169, 6uLL);
      v181 = vshrq_n_s16(v170, 6uLL);
      v182 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v171, v172), v173), v174), xmmword_29D2F1150);
      v183 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v171, v172), v173), v174), xmmword_29D2F1150);
      v184 = vpmaxq_s16(v182, v182);
      v185 = vpminq_s16(v183, v183);
      v170.i64[0] = 0x8000800080008000;
      v170.i64[1] = 0x8000800080008000;
      v186 = vmaxq_s16(v184, v170);
      v164.i64[0] = 0x8000800080008000;
      v164.i64[1] = 0x8000800080008000;
      v187 = vminq_s16(v185, v164);
      v188 = vzip1q_s16(v184, v185);
      v505.val[3].i64[0] = 0x10001000100010;
      v505.val[3].i64[1] = 0x10001000100010;
      v189 = vbicq_s8(vsubq_s16(v505.val[3], vclsq_s16(v188)), vceqzq_s16(v188));
      v190 = vpmaxq_s16(v189, v189);
      v443 = v503.val[2];
      v445 = v175;
      v447 = vshrq_n_s16(vshlq_n_s16(v167, 6uLL), 6uLL);
      v449 = v503.val[0];
      v191 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v175, v503.val[2]), v503.val[0]), v447), xmmword_29D2F1150);
      v192 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v175, v503.val[2]), v503.val[0]), v447), xmmword_29D2F1150);
      v193 = vpmaxq_s16(v191, v191);
      v194 = vpminq_s16(v192, v192);
      v195 = vmaxq_s16(v186, v193);
      v196 = vminq_s16(v187, v194);
      v197 = vzip1q_s16(v193, v194);
      v198 = vbicq_s8(vsubq_s16(v505.val[3], vclsq_s16(v197)), vceqzq_s16(v197));
      v199 = vpmaxq_s16(v198, v198);
      v451 = v505.val[1];
      v453 = v176;
      v465 = v177;
      v455 = vshrq_n_s16(vshlq_n_s16(v168, 6uLL), 6uLL);
      v200 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v176, v505.val[1]), v177), v455), xmmword_29D2F1150);
      v201 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v176, v505.val[1]), v177), v455), xmmword_29D2F1150);
      v202 = vpmaxq_s16(v200, v200);
      v203 = vpminq_s16(v201, v201);
      v204 = vmaxq_s16(v195, v202);
      v205 = vminq_s16(v196, v203);
      v206 = vzip1q_s16(v202, v203);
      v207 = vbicq_s8(vsubq_s16(v505.val[3], vclsq_s16(v206)), vceqzq_s16(v206));
      v208 = vpmaxq_s16(v207, v207);
      v209 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v178, v179), v180), v181), xmmword_29D2F1150);
      v210 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v178, v179), v180), v181), xmmword_29D2F1150);
      v211 = vpmaxq_s16(v209, v209);
      v212 = vpminq_s16(v210, v210);
      v213 = vmaxq_s16(v204, v211);
      v214 = vminq_s16(v205, v212);
      v215 = vzip1q_s16(v211, v212);
      v216 = vbicq_s8(vsubq_s16(v505.val[3], vclsq_s16(v215)), vceqzq_s16(v215));
      v217 = vpmaxq_s16(v216, v216);
      v218 = vmaxq_s16(vmaxq_s16(v190, v199), vmaxq_s16(v208, v217));
      v219 = v214;
      v220 = vclzq_s16(vsubq_s16(v213, v214));
      v221 = vsubq_s16(v505.val[3], v220);
      v222 = vcgtq_s16(v218, v221);
      v223 = vminq_s16(v221, v218);
      v218.i64[0] = 0x3000300030003;
      v218.i64[1] = 0x3000300030003;
      v224 = vmaxq_s16(vminq_s16(vsubq_s16(v223, v190), v218), 0);
      v225 = vmaxq_s16(vminq_s16(vsubq_s16(v223, v199), v218), 0);
      v226 = vmaxq_s16(vminq_s16(vsubq_s16(v223, v208), v218), 0);
      v227 = vmaxq_s16(vminq_s16(vsubq_s16(v223, v217), v218), 0);
      v505.val[1] = vsubq_s16(v223, v224);
      v228 = vsubq_s16(v223, v225);
      v229 = vsubq_s16(v223, v227);
      v230 = vceqq_s16(vaddq_s16(v227, v226), vnegq_s16(vaddq_s16(v224, v225)));
      v225.i64[0] = 0x4000400040004;
      v225.i64[1] = 0x4000400040004;
      v231 = vbicq_s8(v225, v230);
      v227.i64[0] = 0x7000700070007;
      v227.i64[1] = 0x7000700070007;
      v439 = vsubq_s16(v223, v226);
      v441 = v228;
      v437 = v505.val[1];
      v232 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v223, v222), vaddq_s16(v231, v231)), v505.val[1], v227), vshlq_n_s16(vaddq_s16(vaddq_s16(v439, v228), v229), 3uLL));
      v82 = v494;
      v147 = v495;
      v233.i64[0] = 0x2000200020002;
      v233.i64[1] = 0x2000200020002;
      v234 = vandq_s8(vceqq_s16(vandq_s8(v494, v218), v233), v505.val[3]);
      v218.i64[0] = 0x8000800080008;
      v218.i64[1] = 0x8000800080008;
      v143 = v498;
      v144 = v499;
      v146 = v496;
      v148 = v497;
      v235 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v499, vceqzq_s16(vandq_s8(v494, v218))), vandq_s8(vaddq_s16(v82, v82), v218)), v234), v495, v227), vshlq_n_s16(vaddq_s16(vaddq_s16(v497, v496), v498), 3uLL)), v232).i64[0], 0);
      if (vaddvq_s16(v235))
      {
        v236.i64[0] = 0x9000900090009;
        v236.i64[1] = 0x9000900090009;
        v237.i64[0] = 0xF000F000F000FLL;
        v237.i64[1] = 0xF000F000F000FLL;
        v238.i64[0] = -1;
        v238.i64[1] = -1;
        v147 = vbslq_s8(v235, v437, v495);
        v146 = vbslq_s8(v235, v441, v496);
        v148 = vbslq_s8(v235, v439, v497);
        v143 = vbslq_s8(v235, v229, v498);
        v144 = vbslq_s8(v235, v223, v499);
        v82 = vbslq_s8(v235, vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v223), v233), vsubq_s16(vandq_s8(v222, v236), vmvnq_s8(v222))), v231), v494);
        v492 = vbslq_s8(v235, v181, v492);
        v493 = vbslq_s8(v235, vextq_s8(v468, v468, 8uLL), v493);
        v473 = vbslq_s8(v235, v171, v473);
        v475 = vbslq_s8(v235, v172, v475);
        v477 = vbslq_s8(v235, v173, v477);
        v479 = vbslq_s8(v235, v174, v479);
        v481 = vbslq_s8(v235, v445, v481);
        v482 = vbslq_s8(v235, v443, v482);
        v483 = vbslq_s8(v235, v449, v483);
        v484 = vbslq_s8(v235, v447, v484);
        v485 = vbslq_s8(v235, v453, v485);
        v486 = vbslq_s8(v235, v451, v486);
        v487 = vbslq_s8(v235, v465, v487);
        v488 = vbslq_s8(v235, v455, v488);
        v489 = vbslq_s8(v235, v178, v489);
        v490 = vbslq_s8(v235, v179, v490);
        v491 = vbslq_s8(v235, v180, v491);
        v500 = vbslq_s8(v235, v219, v500);
        v501 = vbslq_s8(v235, v213, v501);
        v502 = vbslq_s8(v235, vandq_s8(vsubq_s16(vshlq_s16(v238, vsubq_s16(v237, v220)), v219), v222), v502);
        v495 = v147;
        v496 = v146;
        v497 = v148;
        v498 = v143;
        v499 = v144;
        v494 = v82;
      }
    }

    v239 = vandq_s8(v502, vceqq_s16(v144, v147));
    v474 = vaddq_s16(v239, v473);
    v476 = vaddq_s16(v475, v239);
    v478 = vaddq_s16(v477, v239);
    v480 = vaddq_s16(v479, v239);
    v240 = vandq_s8(v502, vceqq_s16(v144, v146));
    v481 = vaddq_s16(v481, v240);
    v482 = vaddq_s16(v482, v240);
    v483 = vaddq_s16(v483, v240);
    v484 = vaddq_s16(v484, v240);
    v241 = vandq_s8(v502, vceqq_s16(v144, v148));
    v485 = vaddq_s16(v485, v241);
    v486 = vaddq_s16(v486, v241);
    v487 = vaddq_s16(v487, v241);
    v488 = vaddq_s16(v488, v241);
    v242 = vandq_s8(v502, vceqq_s16(v144, v143));
    v489 = vaddq_s16(v489, v242);
    v490 = vaddq_s16(v490, v242);
    v491 = vaddq_s16(v491, v242);
    v492 = vaddq_s16(v492, v242);
    v242.i64[0] = 0x8000800080008;
    v242.i64[1] = 0x8000800080008;
    v243.i64[0] = 0x3000300030003;
    v243.i64[1] = 0x3000300030003;
    v244.i64[0] = 0x2000200020002;
    v244.i64[1] = 0x2000200020002;
    v245 = vceqq_s16(vandq_s8(v82, v243), v244);
    v244.i64[0] = 0x10001000100010;
    v244.i64[1] = 0x10001000100010;
    v246 = vandq_s8(v245, v244);
    v244.i64[0] = 0x7000700070007;
    v244.i64[1] = 0x7000700070007;
    v247 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v144, vceqzq_s16(vandq_s8(v82, v242))), vandq_s8(vaddq_s16(v82, v82), v242)), v246), v147, v244), vshlq_n_s16(vaddq_s16(vaddq_s16(v148, v146), v143), 3uLL));
    v248 = vpaddq_s16(v247, v247);
    if ((vpaddq_s16(v248, v248).i16[0] + 83) > 0x4FF)
    {
      AGX::AppleCompressionGen2::writePackedUncompressedSubblock<(AGX::AppleCompressionGen2::PixelFormat)19,AGX::AppleCompressionGen2::VecArray<short,4ul>>(a1, a2, v156, v466, v467, v468, v461, v462, v463, v457, a3, a4, a5, a6, a7, a8, v458, v459, v460, v472, v469, v470, v471, v456);
      return 160;
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
      v255 = v493.i64[0];
      if (v144.i16[0])
      {
        v256 = ((v144.i8[0] - 1) & 0xF) << 20;
      }

      else
      {
        v256 = 0;
      }

      if (v144.i16[1])
      {
        v257 = ((v144.i8[2] - 1) & 0xF) << 24;
      }

      else
      {
        v257 = 0;
      }

      if (v144.i16[2])
      {
        v258 = (v144.u16[2] << 28) - 0x10000000;
      }

      else
      {
        v258 = 0;
      }

      if (v144.i16[3])
      {
        v259 = ((v144.i8[6] - 1) & 0xF) << 32;
      }

      else
      {
        v259 = 0;
      }

      v260 = (v82.i8[0] & 0x1F | (32 * (v82.i8[2] & 0x1F)) & 0x83FF | ((v82.i8[4] & 0x1F) << 10) | ((v82.i8[6] & 0x1F) << 15) | v256 | v257 | v258) + v259;
      v261 = (v260 << v250) | v251;
      if (v250 >= 0x1C)
      {
        *v249 = v261;
        v261 = v260 >> (-8 * (a1 & 7u));
      }

      v262 = v255 & 0x3FF | ((WORD1(v255) & 0x3FF) << 10) & 0xFFFFFFFFC00FFFFFLL | ((WORD2(v255) & 0x3FF) << 20) | ((HIWORD(v255) & 0x3FF) << 30);
      v263 = (v250 + 36) & 0x3C;
      v264 = v261 | (v262 << v263);
      if (v263 >= 0x18)
      {
        *(v249 + (((v250 + 36) >> 3) & 8)) = v264;
        v264 = v262 >> -v263;
      }

      v265 = v250 + 76;
      v266 = vsubq_s16(v499, v495);
      v267 = vsubq_s16(v499, v496);
      v268 = vsubq_s16(v499, v497);
      v269 = vsubq_s16(v499, v498);
      *v266.i8 = vqmovn_u16(v266);
      *v267.i8 = vqmovn_u16(v267);
      *v268.i8 = vqmovn_u16(v268);
      *v269.i8 = vqmovn_u16(v269);
      v270 = vtrn1q_s8(v266, v267);
      v271 = vtrn2q_s8(v266, v267);
      v272 = vtrn1q_s8(v268, v269);
      v273 = vtrn2q_s8(v268, v269);
      v274 = vzip1q_s16(v271, v273);
      v275 = vtrn2q_s16(v271, v273);
      v271.i64[0] = vzip1q_s32(vzip1q_s16(v270, v272), v274).u64[0];
      v275.i64[0] = vzip1q_s32(vtrn2q_s16(v270, v272), v275).u64[0];
      v268.i64[0] = 0x202020202020202;
      v268.i64[1] = 0x202020202020202;
      v276 = vandq_s8(vmovl_s16(vtst_s16(*v494.i8, 0x4000400040004)), v268);
      v268.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v268.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v270.i64[0] = -1;
      v270.i64[1] = -1;
      v277 = vshlq_u8(v270, vorrq_s8(v276, v268));
      v278 = vmovl_u8(vand_s8(*v277.i8, *v271.i8));
      v279 = vmovl_u8(vand_s8(*&vextq_s8(v277, v277, 8uLL), *v275.i8));
      v280 = vmovl_u8(*v276.i8);
      v281 = vmovl_high_u8(v276);
      v282 = vpaddq_s16(vshlq_u16(v278, vtrn1q_s16(0, v280)), vshlq_u16(v279, vtrn1q_s16(0, v281)));
      v283 = vpaddq_s16(v280, v281);
      v284 = vmovl_u16(*v283.i8);
      v285 = vmovl_high_u16(v283);
      v286 = vpaddq_s32(vshlq_u32(vmovl_u16(*v282.i8), vtrn1q_s32(0, v284)), vshlq_u32(vmovl_high_u16(v282), vtrn1q_s32(0, v285)));
      v287 = vpaddq_s32(v284, v285);
      v288.i64[0] = v286.u32[0];
      v288.i64[1] = v286.u32[1];
      v289 = v288;
      v288.i64[0] = v286.u32[2];
      v288.i64[1] = v286.u32[3];
      v290 = v288;
      v288.i64[0] = v287.u32[0];
      v288.i64[1] = v287.u32[1];
      v291 = v288;
      v288.i64[0] = v287.u32[2];
      v288.i64[1] = v287.u32[3];
      v292 = vpaddq_s64(vshlq_u64(v289, vzip1q_s64(0, v291)), vshlq_u64(v290, vzip1q_s64(0, v288)));
      v293 = vpaddq_s64(v291, v288);
      v294 = (v250 + 76) & 0x3C;
      v295 = (v292.i64[0] << v294) | v264;
      if ((v293.i64[0] + v294) >= 0x40)
      {
        *(v249 + ((v265 >> 3) & 0x18)) = v295;
        v295 = v292.i64[0] >> -v294;
      }

      v296 = v293.i64[0] + v265;
      v297 = v295 | (v292.i64[1] << v296);
      if ((v296 & 0x3F) + v293.i64[1] >= 0x40)
      {
        *(v249 + ((v296 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v297;
        v297 = v292.i64[1] >> -(v296 & 0x3F);
        if ((v296 & 0x3F) == 0)
        {
          v297 = 0;
        }
      }

      v298 = v296 + v293.i64[1];
      v299.i64[0] = 0x8000800080008;
      v299.i64[1] = 0x8000800080008;
      v300.i64[0] = -1;
      v300.i64[1] = -1;
      v301 = vandq_s8(vextq_s8(vtstq_s16(v494, v299), 0, 8uLL), v499);
      v302.i64[0] = 0xF000F000F000FLL;
      v302.i64[1] = 0xF000F000F000FLL;
      v303 = vandq_s8(vshlq_u16(v300, vaddq_s16(v301, v302)), v502);
      v304 = vmovl_u16(*v301.i8);
      v305 = vpaddq_s32(vshlq_u32(vmovl_u16(*v303.i8), vtrn1q_s32(0, v304)), vmovl_high_u16(v303));
      v306 = vpaddq_s32(v304, vmovl_high_u16(v301));
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
      v313 = (v311.i64[0] << v298) | v297;
      if (v312.i64[0] + (v298 & 0x3F) >= 0x40)
      {
        *(v249 + ((v298 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v313;
        v313 = v311.i64[0] >> -(v298 & 0x3F);
        if ((v298 & 0x3F) == 0)
        {
          v313 = 0;
        }
      }

      v314 = v312.i64[0] + v298;
      v315 = v313 | (v311.i64[1] << v314);
      if ((v314 & 0x3F) + v312.i64[1] >= 0x40)
      {
        *(v249 + ((v314 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v315;
        v315 = v311.i64[1] >> -(v314 & 0x3F);
        if ((v314 & 0x3F) == 0)
        {
          v315 = 0;
        }
      }

      v316 = v314 + v312.i64[1];
      v317 = vextq_s8(0, v495, 8uLL);
      v318.i64[0] = 0xF000F000F000FLL;
      v318.i64[1] = 0xF000F000F000FLL;
      v319.i64[0] = -1;
      v319.i64[1] = -1;
      v320 = vandq_s8(vshlq_u16(v319, vaddq_s16(v317, v318)), v474);
      v321 = vmovl_u16(*v317.i8);
      v322 = vmovl_high_u16(v317);
      v323 = vpaddq_s32(vmovl_u16(*v320.i8), vshlq_u32(vmovl_high_u16(v320), vtrn1q_s32(0, v322)));
      v324 = vpaddq_s32(v321, v322);
      v325.i64[0] = v323.u32[0];
      v325.i64[1] = v323.u32[1];
      v326 = v325;
      v325.i64[0] = v323.u32[2];
      v325.i64[1] = v323.u32[3];
      v327 = v325;
      v325.i64[0] = v324.u32[0];
      v325.i64[1] = v324.u32[1];
      v328 = v325;
      v325.i64[0] = v324.u32[2];
      v325.i64[1] = v324.u32[3];
      v329 = vpaddq_s64(vshlq_u64(v326, vzip1q_s64(0, v328)), vshlq_u64(v327, vzip1q_s64(0, v325)));
      v330 = vpaddq_s64(v328, v325);
      v331 = (v329.i64[0] << v316) | v315;
      if (v330.i64[0] + (v316 & 0x3F) >= 0x40)
      {
        *(v249 + ((v316 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v331;
        v331 = v329.i64[0] >> -(v316 & 0x3F);
        if ((v316 & 0x3F) == 0)
        {
          v331 = 0;
        }
      }

      v332 = v330.i64[0] + v316;
      v333 = v331 | (v329.i64[1] << v332);
      if ((v332 & 0x3F) + v330.i64[1] >= 0x40)
      {
        *(v249 + ((v332 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v333;
        v333 = v329.i64[1] >> -(v332 & 0x3F);
        if ((v332 & 0x3F) == 0)
        {
          v333 = 0;
        }
      }

      v334 = v332 + v330.i64[1];
      v335.i64[0] = 0xF000F000F000FLL;
      v335.i64[1] = 0xF000F000F000FLL;
      v336.i64[0] = -1;
      v336.i64[1] = -1;
      v337 = vandq_s8(vshlq_u16(v336, vaddq_s16(v495, v335)), v476);
      v338 = vmovl_u16(*v495.i8);
      v339 = vmovl_high_u16(v495);
      v340 = vpaddq_s32(vshlq_u32(vmovl_u16(*v337.i8), vtrn1q_s32(0, v338)), vshlq_u32(vmovl_high_u16(v337), vtrn1q_s32(0, v339)));
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
      v348 = (v346.i64[0] << v334) | v333;
      if (v347.i64[0] + (v334 & 0x3F) >= 0x40)
      {
        *(v249 + ((v334 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v348;
        v348 = v346.i64[0] >> -(v334 & 0x3F);
        if ((v334 & 0x3F) == 0)
        {
          v348 = 0;
        }
      }

      v349 = v347.i64[0] + v334;
      v350 = v348 | (v346.i64[1] << v349);
      if ((v349 & 0x3F) + v347.i64[1] >= 0x40)
      {
        *(v249 + ((v349 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v350;
        v350 = v346.i64[1] >> -(v349 & 0x3F);
        if ((v349 & 0x3F) == 0)
        {
          v350 = 0;
        }
      }

      v351 = v349 + v347.i64[1];
      v352.i64[0] = 0xF000F000F000FLL;
      v352.i64[1] = 0xF000F000F000FLL;
      v353.i64[0] = -1;
      v353.i64[1] = -1;
      v354 = vandq_s8(vshlq_u16(v353, vaddq_s16(v495, v352)), v478);
      v355 = vmovl_u16(*v495.i8);
      v356 = vmovl_high_u16(v495);
      v357 = vpaddq_s32(vshlq_u32(vmovl_u16(*v354.i8), vtrn1q_s32(0, v355)), vshlq_u32(vmovl_high_u16(v354), vtrn1q_s32(0, v356)));
      v358 = vpaddq_s32(v355, v356);
      v359.i64[0] = v357.u32[0];
      v359.i64[1] = v357.u32[1];
      v360 = v359;
      v359.i64[0] = v357.u32[2];
      v359.i64[1] = v357.u32[3];
      v361 = v359;
      v359.i64[0] = v358.u32[0];
      v359.i64[1] = v358.u32[1];
      v362 = v359;
      v359.i64[0] = v358.u32[2];
      v359.i64[1] = v358.u32[3];
      v363 = vpaddq_s64(vshlq_u64(v360, vzip1q_s64(0, v362)), vshlq_u64(v361, vzip1q_s64(0, v359)));
      v364 = vpaddq_s64(v362, v359);
      v365 = (v363.i64[0] << v351) | v350;
      if (v364.i64[0] + (v351 & 0x3F) >= 0x40)
      {
        *(v249 + ((v351 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
        v365 = v363.i64[0] >> -(v351 & 0x3F);
        if ((v351 & 0x3F) == 0)
        {
          v365 = 0;
        }
      }

      v366 = v364.i64[0] + v351;
      v367 = v365 | (v363.i64[1] << v366);
      if ((v366 & 0x3F) + v364.i64[1] >= 0x40)
      {
        *(v249 + ((v366 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v367;
        v367 = v363.i64[1] >> -(v366 & 0x3F);
        if ((v366 & 0x3F) == 0)
        {
          v367 = 0;
        }
      }

      v368 = v366 + v364.i64[1];
      v369.i64[0] = 0xF000F000F000FLL;
      v369.i64[1] = 0xF000F000F000FLL;
      v370.i64[0] = -1;
      v370.i64[1] = -1;
      v371 = vandq_s8(vshlq_u16(v370, vaddq_s16(v495, v369)), v480);
      v372 = vmovl_u16(*v495.i8);
      v373 = vmovl_high_u16(v495);
      v374 = vpaddq_s32(vshlq_u32(vmovl_u16(*v371.i8), vtrn1q_s32(0, v372)), vshlq_u32(vmovl_high_u16(v371), vtrn1q_s32(0, v373)));
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
      v382 = (v380.i64[0] << v368) | v367;
      if (v381.i64[0] + (v368 & 0x3F) >= 0x40)
      {
        *(v249 + ((v368 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v382;
        v382 = v380.i64[0] >> -(v368 & 0x3F);
        if ((v368 & 0x3F) == 0)
        {
          v382 = 0;
        }
      }

      v383 = v381.i64[1];
      v384 = v381.i64[0] + v368;
      v385 = (v381.i64[0] + v368) & 0x3F;
      v386 = v382 | (v380.i64[1] << v384);
      if ((v385 + v381.i64[1]) >= 0x40)
      {
        *(v249 + ((v384 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v386;
        v386 = v380.i64[1] >> -v385;
        if (!v385)
        {
          v386 = 0;
        }
      }

      v387 = 0;
      v388.i64[0] = 0xF000F000F000FLL;
      v388.i64[1] = 0xF000F000F000FLL;
      v389.i64[0] = -1;
      v389.i64[1] = -1;
      v390 = v384 + v383;
      do
      {
        v391 = vandq_s8(vshlq_u16(v389, vaddq_s16(v496, v388)), *(&v481 + v387));
        v392 = vmovl_u16(*v496.i8);
        v393 = vmovl_high_u16(v496);
        v394 = vpaddq_s32(vshlq_u32(vmovl_u16(*v391.i8), vtrn1q_s32(0, v392)), vshlq_u32(vmovl_high_u16(v391), vtrn1q_s32(0, v393)));
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
        v402 = (v400.i64[0] << v390) | v386;
        if (v401.i64[0] + (v390 & 0x3F) >= 0x40)
        {
          *(v249 + ((v390 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v402;
          v402 = v400.i64[0] >> -(v390 & 0x3F);
          if ((v390 & 0x3F) == 0)
          {
            v402 = 0;
          }
        }

        v403 = v401.i64[0] + v390;
        v386 = v402 | (v400.i64[1] << v403);
        if ((v403 & 0x3F) + v401.i64[1] >= 0x40)
        {
          *(v249 + ((v403 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v386;
          v386 = v400.i64[1] >> -(v403 & 0x3F);
          if ((v403 & 0x3F) == 0)
          {
            v386 = 0;
          }
        }

        v390 = v403 + v401.i64[1];
        v387 += 16;
      }

      while (v387 != 64);
      v404 = 0;
      v405.i64[0] = 0xF000F000F000FLL;
      v405.i64[1] = 0xF000F000F000FLL;
      v406.i64[0] = -1;
      v406.i64[1] = -1;
      do
      {
        v407 = vandq_s8(vshlq_u16(v406, vaddq_s16(v497, v405)), *(&v485 + v404));
        v408 = vmovl_u16(*v497.i8);
        v409 = vmovl_high_u16(v497);
        v410 = vpaddq_s32(vshlq_u32(vmovl_u16(*v407.i8), vtrn1q_s32(0, v408)), vshlq_u32(vmovl_high_u16(v407), vtrn1q_s32(0, v409)));
        v411 = vpaddq_s32(v408, v409);
        v412.i64[0] = v410.u32[0];
        v412.i64[1] = v410.u32[1];
        v413 = v412;
        v412.i64[0] = v410.u32[2];
        v412.i64[1] = v410.u32[3];
        v414 = v412;
        v412.i64[0] = v411.u32[0];
        v412.i64[1] = v411.u32[1];
        v415 = v412;
        v412.i64[0] = v411.u32[2];
        v412.i64[1] = v411.u32[3];
        v416 = vpaddq_s64(vshlq_u64(v413, vzip1q_s64(0, v415)), vshlq_u64(v414, vzip1q_s64(0, v412)));
        v417 = vpaddq_s64(v415, v412);
        v418 = (v416.i64[0] << v390) | v386;
        if (v417.i64[0] + (v390 & 0x3F) >= 0x40)
        {
          *(v249 + ((v390 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v418;
          v418 = v416.i64[0] >> -(v390 & 0x3F);
          if ((v390 & 0x3F) == 0)
          {
            v418 = 0;
          }
        }

        v419 = v417.i64[0] + v390;
        v386 = v418 | (v416.i64[1] << v419);
        if ((v419 & 0x3F) + v417.i64[1] >= 0x40)
        {
          *(v249 + ((v419 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v386;
          v386 = v416.i64[1] >> -(v419 & 0x3F);
          if ((v419 & 0x3F) == 0)
          {
            v386 = 0;
          }
        }

        v390 = v419 + v417.i64[1];
        v404 += 16;
      }

      while (v404 != 64);
      v420 = 0;
      v421.i64[0] = 0xF000F000F000FLL;
      v421.i64[1] = 0xF000F000F000FLL;
      v422.i64[0] = -1;
      v422.i64[1] = -1;
      do
      {
        v423 = vandq_s8(vshlq_u16(v422, vaddq_s16(v498, v421)), *(&v489 + v420));
        v424 = vmovl_u16(*v498.i8);
        v425 = vmovl_high_u16(v498);
        v426 = vpaddq_s32(vshlq_u32(vmovl_u16(*v423.i8), vtrn1q_s32(0, v424)), vshlq_u32(vmovl_high_u16(v423), vtrn1q_s32(0, v425)));
        v427 = vpaddq_s32(v424, v425);
        v428.i64[0] = v426.u32[0];
        v428.i64[1] = v426.u32[1];
        v429 = v428;
        v428.i64[0] = v426.u32[2];
        v428.i64[1] = v426.u32[3];
        v430 = v428;
        v428.i64[0] = v427.u32[0];
        v428.i64[1] = v427.u32[1];
        v431 = v428;
        v428.i64[0] = v427.u32[2];
        v428.i64[1] = v427.u32[3];
        v432 = vpaddq_s64(vshlq_u64(v429, vzip1q_s64(0, v431)), vshlq_u64(v430, vzip1q_s64(0, v428)));
        v433 = vpaddq_s64(v431, v428);
        v434 = (v432.i64[0] << v390) | v386;
        if (v433.i64[0] + (v390 & 0x3F) >= 0x40)
        {
          *(v249 + ((v390 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v434;
          v434 = v432.i64[0] >> -(v390 & 0x3F);
          if ((v390 & 0x3F) == 0)
          {
            v434 = 0;
          }
        }

        v435 = v433.i64[0] + v390;
        v386 = v434 | (v432.i64[1] << v435);
        if ((v435 & 0x3F) + v433.i64[1] >= 0x40)
        {
          *(v249 + ((v435 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v386;
          v386 = v432.i64[1] >> -(v435 & 0x3F);
          if ((v435 & 0x3F) == 0)
          {
            v386 = 0;
          }
        }

        v390 = v435 + v433.i64[1];
        v420 += 16;
      }

      while (v420 != 64);
      if ((v390 & 0x3F) != 0)
      {
        *(v249 + ((v390 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v386;
      }

      result = (v390 - v250 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    v252 = vld1q_dup_f64(a3->i64);
    v253 = vorrq_s8(vandq_s8(vshlq_u64(v252, xmmword_29D2F1440), xmmword_29D2F1470), vandq_s8(vshlq_u64(v252, xmmword_29D2F1450), xmmword_29D2F1460));
    *v253.i8 = vorr_s8(*v253.i8, *&vextq_s8(v253, v253, 8uLL));
    *a1 = v253.i32[0];
    *(a1 + 4) = v253.i8[4];
    *a2 = 4;
    return 5;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::writePackedUncompressedSubblock<(AGX::AppleCompressionGen2::PixelFormat)19,AGX::AppleCompressionGen2::VecArray<short,4ul>>(uint64_t result, _BYTE *a2, uint16x8_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int8x16_t a17, int8x16_t a18, int8x16_t a19, int8x16_t a20, int8x16_t a21, int8x16_t a22, int8x16_t a23, int8x16_t a24)
{
  v24 = (result & 0xFFFFFFFFFFFFFFF8);
  v25 = 8 * (result & 7);
  if (v25)
  {
    v26 = *v24 & ~(-1 << v25);
  }

  else
  {
    v26 = 0;
  }

  v27.i64[0] = 0xA0000000ALL;
  v27.i64[1] = 0xA0000000ALL;
  v28 = vpaddq_s32(v27, v27);
  v29.i64[0] = v28.u32[0];
  v29.i64[1] = v28.u32[1];
  v30 = v29;
  v29.i64[0] = v28.u32[2];
  v29.i64[1] = v28.u32[3];
  v31 = vzip1q_s64(0, v30);
  v32 = vzip1q_s64(0, v29);
  v33 = vpaddq_s64(v30, v29);
  v34 = v33.i64[1];
  v35 = v33.i64[0];
  a3.i32[0] &= 0x3FF03FFu;
  a3.i16[2] &= 0x3FFu;
  a3.i16[3] &= 0x3FFu;
  a3.i16[4] &= 0x3FFu;
  a3.i16[5] &= 0x3FFu;
  a3.i16[6] &= 0x3FFu;
  a3.i16[7] &= 0x3FFu;
  v36 = vpaddq_s32(vshlq_u32(vmovl_u16(*a3.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(a3), xmmword_29D2F1480));
  v29.i64[0] = v36.u32[0];
  v29.i64[1] = v36.u32[1];
  v37 = v29;
  v29.i64[0] = v36.u32[2];
  v29.i64[1] = v36.u32[3];
  v38 = vpaddq_s64(vshlq_u64(v37, v31), vshlq_u64(v29, v32));
  v39 = v35 + v25;
  v40 = (v38.i64[0] << v25) | v26;
  if ((v35 + v25) >= 0x40)
  {
    *v24 = v40;
    v40 = v38.i64[0] >> (-8 * (result & 7u));
    if (!v25)
    {
      v40 = 0;
    }
  }

  v41 = v38.u64[1];
  v42.i64[0] = 0xFC00FC00FC00FC00;
  v42.i64[1] = 0xFC00FC00FC00FC00;
  v43 = v40 | (v41 << v39);
  if ((v39 & 0x3F) + v34 >= 0x40)
  {
    *(v24 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v43;
    v44 = v41 >> -(v39 & 0x3F);
    if ((v39 & 0x3F) != 0)
    {
      v43 = v44;
    }

    else
    {
      v43 = 0;
    }
  }

  v45 = v39 + v34;
  v46 = vandq_s8(v42, a4);
  v47 = vpaddq_s32(vshlq_u32(vmovl_u16(*v46.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v46), xmmword_29D2F1480));
  v48.i64[0] = v47.u32[0];
  v48.i64[1] = v47.u32[1];
  v49 = v48;
  v48.i64[0] = v47.u32[2];
  v48.i64[1] = v47.u32[3];
  v50 = vpaddq_s64(vshlq_u64(v49, v31), vshlq_u64(v48, v32));
  v51 = (v39 + v34) & 0x3F;
  v52 = (v50.i64[0] << (v39 + v34)) | v43;
  if ((v35 + v51) >= 0x40)
  {
    *(v24 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v52;
    v52 = v50.i64[0] >> -v51;
    if (!v51)
    {
      v52 = 0;
    }
  }

  v53 = v35 + v45;
  v54 = v52 | (v50.i64[1] << v53);
  if ((v53 & 0x3F) + v34 >= 0x40)
  {
    *(v24 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v54;
    v54 = v50.i64[1] >> -(v53 & 0x3F);
    if ((v53 & 0x3F) == 0)
    {
      v54 = 0;
    }
  }

  v55 = v53 + v34;
  v56 = vandq_s8(v42, a5);
  v57 = vpaddq_s32(vshlq_u32(vmovl_u16(*v56.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v56), xmmword_29D2F1480));
  v58.i64[0] = v57.u32[0];
  v58.i64[1] = v57.u32[1];
  v59 = v58;
  v58.i64[0] = v57.u32[2];
  v58.i64[1] = v57.u32[3];
  v60 = vpaddq_s64(vshlq_u64(v59, v31), vshlq_u64(v58, v32));
  v61 = (v60.i64[0] << v55) | v54;
  if (v35 + (v55 & 0x3F) >= 0x40)
  {
    *(v24 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v61;
    v61 = v60.i64[0] >> -(v55 & 0x3F);
    if ((v55 & 0x3F) == 0)
    {
      v61 = 0;
    }
  }

  v62 = v35 + v55;
  v63 = v61 | (v60.i64[1] << v62);
  if ((v62 & 0x3F) + v34 >= 0x40)
  {
    *(v24 + ((v62 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v63;
    v63 = v60.i64[1] >> -(v62 & 0x3F);
    if ((v62 & 0x3F) == 0)
    {
      v63 = 0;
    }
  }

  v64 = v62 + v34;
  v65 = vandq_s8(v42, a6);
  v66 = vpaddq_s32(vshlq_u32(vmovl_u16(*v65.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v65), xmmword_29D2F1480));
  v67.i64[0] = v66.u32[0];
  v67.i64[1] = v66.u32[1];
  v68 = v67;
  v67.i64[0] = v66.u32[2];
  v67.i64[1] = v66.u32[3];
  v69 = vpaddq_s64(vshlq_u64(v68, v31), vshlq_u64(v67, v32));
  v70 = (v69.i64[0] << v64) | v63;
  if (v35 + (v64 & 0x3F) >= 0x40)
  {
    *(v24 + ((v64 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v70;
    v70 = v69.i64[0] >> -(v64 & 0x3F);
    if ((v64 & 0x3F) == 0)
    {
      v70 = 0;
    }
  }

  v71 = v35 + v64;
  v72 = v70 | (v69.i64[1] << v71);
  if ((v71 & 0x3F) + v34 >= 0x40)
  {
    *(v24 + ((v71 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v72;
    v72 = v69.i64[1] >> -(v71 & 0x3F);
    if ((v71 & 0x3F) == 0)
    {
      v72 = 0;
    }
  }

  v73 = v71 + v34;
  v74 = vandq_s8(v42, a7);
  v75 = vpaddq_s32(vshlq_u32(vmovl_u16(*v74.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v74), xmmword_29D2F1480));
  v76.i64[0] = v75.u32[0];
  v76.i64[1] = v75.u32[1];
  v77 = v76;
  v76.i64[0] = v75.u32[2];
  v76.i64[1] = v75.u32[3];
  v78 = vpaddq_s64(vshlq_u64(v77, v31), vshlq_u64(v76, v32));
  v79 = (v78.i64[0] << v73) | v72;
  if (v35 + (v73 & 0x3F) >= 0x40)
  {
    *(v24 + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v79;
    v79 = v78.i64[0] >> -(v73 & 0x3F);
    if ((v73 & 0x3F) == 0)
    {
      v79 = 0;
    }
  }

  v80 = v35 + v73;
  v81 = v79 | (v78.i64[1] << v80);
  if ((v80 & 0x3F) + v34 >= 0x40)
  {
    *(v24 + ((v80 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v81;
    v81 = v78.i64[1] >> -(v80 & 0x3F);
    if ((v80 & 0x3F) == 0)
    {
      v81 = 0;
    }
  }

  v82 = v80 + v34;
  v83 = vandq_s8(v42, a8);
  v84 = vpaddq_s32(vshlq_u32(vmovl_u16(*v83.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v83), xmmword_29D2F1480));
  v85.i64[0] = v84.u32[0];
  v85.i64[1] = v84.u32[1];
  v86 = v85;
  v85.i64[0] = v84.u32[2];
  v85.i64[1] = v84.u32[3];
  v87 = vpaddq_s64(vshlq_u64(v86, v31), vshlq_u64(v85, v32));
  v88 = (v87.i64[0] << v82) | v81;
  if (v35 + (v82 & 0x3F) >= 0x40)
  {
    *(v24 + ((v82 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v88;
    v88 = v87.i64[0] >> -(v82 & 0x3F);
    if ((v82 & 0x3F) == 0)
    {
      v88 = 0;
    }
  }

  v89 = v35 + v82;
  v90 = v88 | (v87.i64[1] << v89);
  if ((v89 & 0x3F) + v34 >= 0x40)
  {
    *(v24 + ((v89 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v90;
    v90 = v87.i64[1] >> -(v89 & 0x3F);
    if ((v89 & 0x3F) == 0)
    {
      v90 = 0;
    }
  }

  v91 = v89 + v34;
  v92 = vandq_s8(v42, a9);
  v93 = vpaddq_s32(vshlq_u32(vmovl_u16(*v92.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v92), xmmword_29D2F1480));
  v94.i64[0] = v93.u32[0];
  v94.i64[1] = v93.u32[1];
  v95 = v94;
  v94.i64[0] = v93.u32[2];
  v94.i64[1] = v93.u32[3];
  v96 = vpaddq_s64(vshlq_u64(v95, v31), vshlq_u64(v94, v32));
  v97 = (v96.i64[0] << v91) | v90;
  if (v35 + (v91 & 0x3F) >= 0x40)
  {
    *(v24 + ((v91 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v97;
    v97 = v96.i64[0] >> -(v91 & 0x3F);
    if ((v91 & 0x3F) == 0)
    {
      v97 = 0;
    }
  }

  v98 = v35 + v91;
  v99 = v97 | (v96.i64[1] << v98);
  if ((v98 & 0x3F) + v34 >= 0x40)
  {
    *(v24 + ((v98 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v99;
    v99 = v96.i64[1] >> -(v98 & 0x3F);
    if ((v98 & 0x3F) == 0)
    {
      v99 = 0;
    }
  }

  v100 = v98 + v34;
  v101 = vandq_s8(v42, a10);
  v102 = vpaddq_s32(vshlq_u32(vmovl_u16(*v101.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v101), xmmword_29D2F1480));
  v103.i64[0] = v102.u32[0];
  v103.i64[1] = v102.u32[1];
  v104 = v103;
  v103.i64[0] = v102.u32[2];
  v103.i64[1] = v102.u32[3];
  v105 = vpaddq_s64(vshlq_u64(v104, v31), vshlq_u64(v103, v32));
  v106 = (v105.i64[0] << v100) | v99;
  if (v35 + (v100 & 0x3F) >= 0x40)
  {
    *(v24 + ((v100 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v106;
    v106 = v105.i64[0] >> -(v100 & 0x3F);
    if ((v100 & 0x3F) == 0)
    {
      v106 = 0;
    }
  }

  v107 = v35 + v100;
  v108 = v106 | (v105.i64[1] << v107);
  if ((v107 & 0x3F) + v34 >= 0x40)
  {
    *(v24 + ((v107 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v108;
    v108 = v105.i64[1] >> -(v107 & 0x3F);
    if ((v107 & 0x3F) == 0)
    {
      v108 = 0;
    }
  }

  v109 = v107 + v34;
  v110 = vandq_s8(v42, a17);
  v111 = vpaddq_s32(vshlq_u32(vmovl_u16(*v110.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v110), xmmword_29D2F1480));
  v112.i64[0] = v111.u32[0];
  v112.i64[1] = v111.u32[1];
  v113 = v112;
  v112.i64[0] = v111.u32[2];
  v112.i64[1] = v111.u32[3];
  v114 = vpaddq_s64(vshlq_u64(v113, v31), vshlq_u64(v112, v32));
  v115 = (v114.i64[0] << v109) | v108;
  if (v35 + (v109 & 0x3F) >= 0x40)
  {
    *(v24 + ((v109 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v115;
    v115 = v114.i64[0] >> -(v109 & 0x3F);
    if ((v109 & 0x3F) == 0)
    {
      v115 = 0;
    }
  }

  v116 = v35 + v109;
  v117 = v115 | (v114.i64[1] << v116);
  if ((v116 & 0x3F) + v34 >= 0x40)
  {
    *(v24 + ((v116 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v117;
    v117 = v114.i64[1] >> -(v116 & 0x3F);
    if ((v116 & 0x3F) == 0)
    {
      v117 = 0;
    }
  }

  v118 = v116 + v34;
  v119 = vandq_s8(v42, a18);
  v120 = vpaddq_s32(vshlq_u32(vmovl_u16(*v119.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v119), xmmword_29D2F1480));
  v121.i64[0] = v120.u32[0];
  v121.i64[1] = v120.u32[1];
  v122 = v121;
  v121.i64[0] = v120.u32[2];
  v121.i64[1] = v120.u32[3];
  v123 = vpaddq_s64(vshlq_u64(v122, v31), vshlq_u64(v121, v32));
  v124 = (v123.i64[0] << v118) | v117;
  if (v35 + (v118 & 0x3F) >= 0x40)
  {
    *(v24 + ((v118 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v124;
    v124 = v123.i64[0] >> -(v118 & 0x3F);
    if ((v118 & 0x3F) == 0)
    {
      v124 = 0;
    }
  }

  v125 = v35 + v118;
  v126 = v124 | (v123.i64[1] << v125);
  if ((v125 & 0x3F) + v34 >= 0x40)
  {
    *(v24 + ((v125 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v126;
    v126 = v123.i64[1] >> -(v125 & 0x3F);
    if ((v125 & 0x3F) == 0)
    {
      v126 = 0;
    }
  }

  v127 = v125 + v34;
  v128 = vandq_s8(v42, a19);
  v129 = vpaddq_s32(vshlq_u32(vmovl_u16(*v128.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v128), xmmword_29D2F1480));
  v130.i64[0] = v129.u32[0];
  v130.i64[1] = v129.u32[1];
  v131 = v130;
  v130.i64[0] = v129.u32[2];
  v130.i64[1] = v129.u32[3];
  v132 = vpaddq_s64(vshlq_u64(v131, v31), vshlq_u64(v130, v32));
  v133 = (v132.i64[0] << v127) | v126;
  if (v35 + (v127 & 0x3F) >= 0x40)
  {
    *(v24 + ((v127 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v133;
    v133 = v132.i64[0] >> -(v127 & 0x3F);
    if ((v127 & 0x3F) == 0)
    {
      v133 = 0;
    }
  }

  v134 = v35 + v127;
  v135 = v133 | (v132.i64[1] << v134);
  if ((v134 & 0x3F) + v34 >= 0x40)
  {
    *(v24 + ((v134 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v135;
    v135 = v132.i64[1] >> -(v134 & 0x3F);
    if ((v134 & 0x3F) == 0)
    {
      v135 = 0;
    }
  }

  v136 = v134 + v34;
  v137 = vandq_s8(v42, a20);
  v138 = vpaddq_s32(vshlq_u32(vmovl_u16(*v137.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v137), xmmword_29D2F1480));
  v139.i64[0] = v138.u32[0];
  v139.i64[1] = v138.u32[1];
  v140 = v139;
  v139.i64[0] = v138.u32[2];
  v139.i64[1] = v138.u32[3];
  v141 = vpaddq_s64(vshlq_u64(v140, v31), vshlq_u64(v139, v32));
  v142 = (v141.i64[0] << v136) | v135;
  if (v35 + (v136 & 0x3F) >= 0x40)
  {
    *(v24 + ((v136 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v142;
    v142 = v141.i64[0] >> -(v136 & 0x3F);
    if ((v136 & 0x3F) == 0)
    {
      v142 = 0;
    }
  }

  v143 = v35 + v136;
  v144 = v142 | (v141.i64[1] << v143);
  if ((v143 & 0x3F) + v34 >= 0x40)
  {
    *(v24 + ((v143 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v144;
    v144 = v141.i64[1] >> -(v143 & 0x3F);
    if ((v143 & 0x3F) == 0)
    {
      v144 = 0;
    }
  }

  v145 = v143 + v34;
  v146 = vandq_s8(v42, a21);
  v147 = vpaddq_s32(vshlq_u32(vmovl_u16(*v146.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v146), xmmword_29D2F1480));
  v148.i64[0] = v147.u32[0];
  v148.i64[1] = v147.u32[1];
  v149 = v148;
  v148.i64[0] = v147.u32[2];
  v148.i64[1] = v147.u32[3];
  v150 = vpaddq_s64(vshlq_u64(v149, v31), vshlq_u64(v148, v32));
  v151 = (v150.i64[0] << v145) | v144;
  if (v35 + (v145 & 0x3F) >= 0x40)
  {
    *(v24 + ((v145 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v151;
    v151 = v150.i64[0] >> -(v145 & 0x3F);
    if ((v145 & 0x3F) == 0)
    {
      v151 = 0;
    }
  }

  v152 = v35 + v145;
  v153 = v151 | (v150.i64[1] << v152);
  if ((v152 & 0x3F) + v34 >= 0x40)
  {
    *(v24 + ((v152 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v153;
    v153 = v150.i64[1] >> -(v152 & 0x3F);
    if ((v152 & 0x3F) == 0)
    {
      v153 = 0;
    }
  }

  v154 = v152 + v34;
  v155 = vandq_s8(v42, a22);
  v156 = vpaddq_s32(vshlq_u32(vmovl_u16(*v155.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v155), xmmword_29D2F1480));
  v157.i64[0] = v156.u32[0];
  v157.i64[1] = v156.u32[1];
  v158 = v157;
  v157.i64[0] = v156.u32[2];
  v157.i64[1] = v156.u32[3];
  v159 = vpaddq_s64(vshlq_u64(v158, v31), vshlq_u64(v157, v32));
  v160 = (v159.i64[0] << v154) | v153;
  if (v35 + (v154 & 0x3F) >= 0x40)
  {
    *(v24 + ((v154 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v160;
    v160 = v159.i64[0] >> -(v154 & 0x3F);
    if ((v154 & 0x3F) == 0)
    {
      v160 = 0;
    }
  }

  v161 = v35 + v154;
  v162 = v160 | (v159.i64[1] << v161);
  if ((v161 & 0x3F) + v34 >= 0x40)
  {
    *(v24 + ((v161 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v162;
    v162 = v159.i64[1] >> -(v161 & 0x3F);
    if ((v161 & 0x3F) == 0)
    {
      v162 = 0;
    }
  }

  v163 = v161 + v34;
  v164 = vandq_s8(v42, a23);
  v165 = vpaddq_s32(vshlq_u32(vmovl_u16(*v164.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v164), xmmword_29D2F1480));
  v166.i64[0] = v165.u32[0];
  v166.i64[1] = v165.u32[1];
  v167 = v166;
  v166.i64[0] = v165.u32[2];
  v166.i64[1] = v165.u32[3];
  v168 = vpaddq_s64(vshlq_u64(v167, v31), vshlq_u64(v166, v32));
  v169 = (v168.i64[0] << v163) | v162;
  if (v35 + (v163 & 0x3F) >= 0x40)
  {
    *(v24 + ((v163 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v169;
    v169 = v168.i64[0] >> -(v163 & 0x3F);
    if ((v163 & 0x3F) == 0)
    {
      v169 = 0;
    }
  }

  v170 = v35 + v163;
  v171 = v169 | (v168.i64[1] << v170);
  if ((v170 & 0x3F) + v34 >= 0x40)
  {
    *(v24 + ((v170 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v171;
    v171 = v168.i64[1] >> -(v170 & 0x3F);
    if ((v170 & 0x3F) == 0)
    {
      v171 = 0;
    }
  }

  v172 = v170 + v34;
  v173 = vandq_s8(v42, a24);
  v174 = vpaddq_s32(vshlq_u32(vmovl_u16(*v173.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v173), xmmword_29D2F1480));
  v175.i64[0] = v174.u32[0];
  v175.i64[1] = v174.u32[1];
  v176 = v175;
  v175.i64[0] = v174.u32[2];
  v175.i64[1] = v174.u32[3];
  v177 = vpaddq_s64(vshlq_u64(v176, v31), vshlq_u64(v175, v32));
  v178 = (v177.i64[0] << v172) | v171;
  if (v35 + (v172 & 0x3F) >= 0x40)
  {
    *(v24 + ((v172 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v178;
    v178 = v177.i64[0] >> -(v172 & 0x3F);
    if ((v172 & 0x3F) == 0)
    {
      v178 = 0;
    }
  }

  v179 = v35 + v172;
  if ((v179 & 0x3F) + v34 >= 0x40)
  {
    *(v24 + ((v179 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v178 | (v177.i64[1] << (v179 & 0x3F));
  }

  *a2 = -97;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

    else
    {
      a6 = a6;
    }

    if (a5 >= 8)
    {
      a5 = 8;
    }

    else
    {
      a5 = a5;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6, a7, a8);
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
      v16 = v15;
    }

    if (v9 >= 8)
    {
      v17 = 8;
    }

    else
    {
      v17 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v11, a4 + 1, (v13 + v14), a2, v17, v16, a7, a8);
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
      v20 = v18;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v11, a4 + 2, v13 + 4, a2, v20, v19, a7, a8);
    v11 += result;
  }

  else
  {
    a4[2] = 0;
    if (v9 < 9)
    {
      goto LABEL_39;
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
      v21 = v15;
    }

    if (v18 >= 8)
    {
      v22 = 8;
    }

    else
    {
      v22 = v18;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v11, a4 + 3, (v13 + v14 + 64), a2, v22, v21, a7, a8);
    v11 += result;
    v23 = v8 - 8;
    goto LABEL_40;
  }

LABEL_39:
  a4[3] = 0;
  v23 = v8 - 8;
  if (!v9)
  {
    goto LABEL_48;
  }

LABEL_40:
  if (v8 < 9)
  {
LABEL_48:
    a4[4] = 0;
    v26 = v8 - 12;
    if (!v9)
    {
      goto LABEL_58;
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v11, a4 + 4, (v13 + 8 * a2), a2, v25, v24, a7, a8);
  v11 += result;
  v26 = v8 - 12;
LABEL_49:
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v11, a4 + 5, (v13 + 12 * a2), a2, v28, v27, a7, a8);
    v11 += result;
    if (v9 < 9)
    {
      goto LABEL_67;
    }

    goto LABEL_59;
  }

LABEL_58:
  a4[5] = 0;
  if (v9 < 9)
  {
    goto LABEL_67;
  }

LABEL_59:
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
      v30 = v18;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v11, a4 + 6, (v13 + 8 * a2 + 64), a2, v30, v29, a7, a8);
    v11 += result;
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
    v32 = v18;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v11, a4 + 7, (v13 + 12 * a2 + 64), a2, v32, v31, a7, a8);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(int64x2_t *a1, uint64_t a2, uint64_t a3, signed int a4)
{
  if (a4 > 158)
  {
    if (a4 == 159)
    {
      v58.i64[0] = 0xA000A000A000ALL;
      v58.i64[1] = 0xA000A000A000ALL;
      v59 = vmovl_u16(*&vpaddq_s16(v58, v58));
      v58.i64[0] = vpaddq_s32(v59, v59).u64[0];
      v60.i64[0] = v58.u32[0];
      v60.i64[1] = v58.u32[1];
      v61 = v60;
      v62 = vaddvq_s64(v60);
      v63 = v62;
      v64 = 0uLL;
      if (v62 > 0x80)
      {
        v278 = 0uLL;
        v279 = 0uLL;
        v280 = 0uLL;
        v270 = 0uLL;
        v271 = 0uLL;
        v272 = 0uLL;
        v273 = 0uLL;
        v277 = 0uLL;
        v276 = 0uLL;
        v275 = 0uLL;
        v274 = 0uLL;
        v287 = 0uLL;
        v286 = 0uLL;
        v285 = 0uLL;
        v284 = 0uLL;
      }

      else
      {
        v65 = (a3 & 0xFFFFFFFFFFFFFFF8);
        v66 = vzip1q_s64(0, v61);
        v67 = 8 * (a3 & 7);
        v68 = v62 + v67;
        v69 = vaddq_s64(v66, vdupq_n_s64(v67));
        v70 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v69)), vshlq_u64(vdupq_lane_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 0), vnegq_s64(v69)));
        if (v68 >= 0x81)
        {
          v70 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v65[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v69)), vshlq_u64(vdupq_laneq_s64(v65[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v69))), v70);
        }

        v71 = v68 & 0x3F;
        v72 = (v65 + 8 * (v68 >> 6));
        v73 = vaddq_s64(v66, vdupq_n_s64(v71));
        v74 = v63 + v68;
        v75 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v72, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v73)), vshlq_u64(vdupq_lane_s64(v72->i64[0], 0), vnegq_s64(v73)));
        if (v63 + v71 >= 0x81)
        {
          v75 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v72[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v73)), vshlq_u64(vdupq_laneq_s64(v72[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v73))), v75);
        }

        v76 = v74 & 0x3F;
        v77 = (v65 + 8 * (v74 >> 6));
        v78 = vaddq_s64(v66, vdupq_n_s64(v76));
        v79 = v63 + v74;
        v80 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v77, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v78)), vshlq_u64(vdupq_lane_s64(v77->i64[0], 0), vnegq_s64(v78)));
        if (v63 + v76 >= 0x81)
        {
          v80 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v77[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v78)), vshlq_u64(vdupq_laneq_s64(v77[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v78))), v80);
        }

        v81 = v79 & 0x3F;
        v82 = (v65 + 8 * (v79 >> 6));
        v83 = vaddq_s64(v66, vdupq_n_s64(v81));
        v84 = v63 + v79;
        v85 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v82, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v83)), vshlq_u64(vdupq_lane_s64(v82->i64[0], 0), vnegq_s64(v83)));
        if (v63 + v81 >= 0x81)
        {
          v85 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v82[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v83)), vshlq_u64(vdupq_laneq_s64(v82[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v83))), v85);
        }

        v86 = vextq_s8(v59, v59, 8uLL).u64[0];
        v87 = v84 & 0x3F;
        v88 = (v65 + 8 * (v84 >> 6));
        v89 = vaddq_s64(v66, vdupq_n_s64(v87));
        v90 = v63 + v84;
        v91 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v88, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v89)), vshlq_u64(vdupq_lane_s64(v88->i64[0], 0), vnegq_s64(v89)));
        if (v63 + v87 >= 0x81)
        {
          v91 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v88[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v89)), vshlq_u64(vdupq_laneq_s64(v88[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v89))), v91);
        }

        v92 = v90 & 0x3F;
        v93 = (v65 + 8 * (v90 >> 6));
        v94 = vaddq_s64(v66, vdupq_n_s64(v92));
        v95 = v63 + v90;
        v96 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v93, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v94)), vshlq_u64(vdupq_lane_s64(v93->i64[0], 0), vnegq_s64(v94)));
        if (v63 + v92 >= 0x81)
        {
          v96 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v93[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v94)), vshlq_u64(vdupq_laneq_s64(v93[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v94))), v96);
        }

        v97 = vzip1_s32(*v59.i8, v86);
        v98 = v95 & 0x3F;
        v99 = (v65 + 8 * (v95 >> 6));
        v100 = vaddq_s64(v66, vdupq_n_s64(v98));
        v101 = v63 + v95;
        v102 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v99, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v100)), vshlq_u64(vdupq_lane_s64(v99->i64[0], 0), vnegq_s64(v100)));
        if (v63 + v98 >= 0x81)
        {
          v102 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v99[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v100)), vshlq_u64(vdupq_laneq_s64(v99[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v100))), v102);
        }

        v103.i64[0] = v97.u32[0];
        v103.i64[1] = v97.u32[1];
        v104 = v103;
        v105 = v101 & 0x3F;
        v106 = (v65 + 8 * (v101 >> 6));
        v107 = vaddq_s64(v66, vdupq_n_s64(v105));
        v108 = v63 + v101;
        v109 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v106, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v107)), vshlq_u64(vdupq_lane_s64(v106->i64[0], 0), vnegq_s64(v107)));
        if (v63 + v105 >= 0x81)
        {
          v109 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v106[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v107)), vshlq_u64(vdupq_laneq_s64(v106[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v107))), v109);
        }

        v110 = vnegq_s64(v104);
        v111 = v108 & 0x3F;
        v112 = (v65 + 8 * (v108 >> 6));
        v113 = vaddq_s64(v66, vdupq_n_s64(v111));
        v114 = v63 + v108;
        v115 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v112, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v113)), vshlq_u64(vdupq_lane_s64(v112->i64[0], 0), vnegq_s64(v113)));
        if (v63 + v111 >= 0x81)
        {
          v115 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v112[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v113)), vshlq_u64(vdupq_laneq_s64(v112[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v113))), v115);
        }

        v116 = vshlq_u64(v70, v110);
        v117 = vshlq_u64(v75, v110);
        v118 = vshlq_u64(v80, v110);
        v119 = vshlq_u64(v85, v110);
        v120 = vshlq_u64(v91, v110);
        v121 = vshlq_u64(v96, v110);
        v122 = vshlq_u64(v102, v110);
        v123 = vshlq_u64(v109, v110);
        v124 = vshlq_u64(v115, v110);
        v125 = v114 & 0x3F;
        v126 = (v65 + 8 * (v114 >> 6));
        v127 = vaddq_s64(v66, vdupq_n_s64(v125));
        v128 = v63 + v114;
        v129 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v126, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v127)), vshlq_u64(vdupq_lane_s64(v126->i64[0], 0), vnegq_s64(v127)));
        if (v63 + v125 >= 0x81)
        {
          v129 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v126[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v127)), vshlq_u64(vdupq_laneq_s64(v126[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v127))), v129);
        }

        v130 = vzip2q_s64(v70, v116);
        v131 = vzip1q_s64(v70, v116);
        v132 = vzip2q_s64(v75, v117);
        v133 = vzip1q_s64(v75, v117);
        v134 = vzip2q_s64(v80, v118);
        v135 = vzip1q_s64(v80, v118);
        v136 = vzip2q_s64(v85, v119);
        v137 = vzip1q_s64(v85, v119);
        v138 = vzip2q_s64(v91, v120);
        v139 = vzip1q_s64(v91, v120);
        v140 = vzip2q_s64(v96, v121);
        v141 = vzip1q_s64(v96, v121);
        v142 = vzip2q_s64(v102, v122);
        v143 = vzip1q_s64(v102, v122);
        v144 = vzip2q_s64(v109, v123);
        v145 = vzip1q_s64(v109, v123);
        v146 = vzip2q_s64(v115, v124);
        v147 = vzip1q_s64(v115, v124);
        v148 = vshlq_u64(v129, v110);
        v149 = vzip2q_s64(v129, v148);
        v150 = vzip1q_s64(v129, v148);
        v151 = (v65 + 8 * (v128 >> 6));
        v152 = vaddq_s64(v66, vdupq_n_s64(v128 & 0x3F));
        v153 = v63 + v128;
        v154 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v151, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v152)), vshlq_u64(vdupq_lane_s64(v151->i64[0], 0), vnegq_s64(v152)));
        if (v63 + (v128 & 0x3F) >= 0x81)
        {
          v154 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v151[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v152)), vshlq_u64(vdupq_laneq_s64(v151[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v152))), v154);
        }

        v155 = vuzp1q_s32(v131, v130);
        v156 = vuzp1q_s32(v133, v132);
        v157 = vuzp1q_s32(v135, v134);
        v158 = vuzp1q_s32(v137, v136);
        v159 = vuzp1q_s32(v139, v138);
        v160 = vuzp1q_s32(v141, v140);
        v161 = vuzp1q_s32(v143, v142);
        v162 = vuzp1q_s32(v145, v144);
        v163 = vuzp1q_s32(v147, v146);
        v164 = vuzp1q_s32(v150, v149);
        v165 = vshlq_u64(v154, v110);
        v166 = vuzp1q_s32(vzip1q_s64(v154, v165), vzip2q_s64(v154, v165));
        v167 = v63 + v153;
        v168 = v153 & 0x3F;
        v169 = vaddq_s64(v66, vdupq_n_s64(v168));
        v170 = (v65 + 8 * (v153 >> 6));
        v171 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v170, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v169)), vshlq_u64(vdupq_lane_s64(v170->i64[0], 0), vnegq_s64(v169)));
        if (v63 + v168 >= 0x81)
        {
          v171 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v170[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v169)), vshlq_u64(vdupq_laneq_s64(v170[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v169))), v171);
        }

        v172 = vshrq_n_u32(v155, 0xAuLL);
        v173 = vshrq_n_u32(v156, 0xAuLL);
        v174 = vshrq_n_u32(v157, 0xAuLL);
        v175 = vshrq_n_u32(v158, 0xAuLL);
        v176 = vshrq_n_u32(v159, 0xAuLL);
        v177 = vshrq_n_u32(v160, 0xAuLL);
        v178 = vshrq_n_u32(v161, 0xAuLL);
        v179 = vshrq_n_u32(v162, 0xAuLL);
        v180 = vshrq_n_u32(v163, 0xAuLL);
        v181 = vshrq_n_u32(v164, 0xAuLL);
        v182 = vshrq_n_u32(v166, 0xAuLL);
        v183 = vshlq_u64(v171, v110);
        v184 = vuzp1q_s32(vzip1q_s64(v171, v183), vzip2q_s64(v171, v183));
        v185 = vshrq_n_u32(v184, 0xAuLL);
        v186 = v167 & 0x3F;
        v187 = (v65 + 8 * (v167 >> 6));
        v188 = vaddq_s64(v66, vdupq_n_s64(v186));
        v189 = v63 + v167;
        v190 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v187, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v188)), vshlq_u64(vdupq_lane_s64(v187->i64[0], 0), vnegq_s64(v188)));
        if (v63 + v186 >= 0x81)
        {
          v190 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v187[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v188)), vshlq_u64(vdupq_laneq_s64(v187[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v188))), v190);
        }

        v191 = vzip2q_s32(v155, v172);
        v192 = vzip1q_s32(v155, v172);
        v684 = vzip1q_s32(v156, v173);
        v687 = vzip2q_s32(v156, v173);
        v193 = vzip2q_s32(v157, v174);
        v194 = vzip1q_s32(v157, v174);
        v195 = vzip2q_s32(v158, v175);
        v196 = vzip1q_s32(v158, v175);
        v197 = vzip2q_s32(v159, v176);
        v198 = vzip1q_s32(v159, v176);
        v199 = vzip2q_s32(v160, v177);
        v200 = vzip1q_s32(v160, v177);
        v201 = vzip2q_s32(v161, v178);
        v202 = vzip1q_s32(v161, v178);
        v203 = vzip2q_s32(v162, v179);
        v204 = vzip1q_s32(v162, v179);
        v205 = vzip2q_s32(v163, v180);
        v206 = vzip1q_s32(v163, v180);
        v207 = vzip2q_s32(v164, v181);
        v208 = vzip1q_s32(v164, v181);
        v209 = vzip2q_s32(v166, v182);
        v210 = vzip1q_s32(v166, v182);
        v211 = vzip2q_s32(v184, v185);
        v212 = vzip1q_s32(v184, v185);
        v213 = vshlq_u64(v190, v110);
        v214 = vuzp1q_s32(vzip1q_s64(v190, v213), vzip2q_s64(v190, v213));
        v215 = vshrq_n_u32(v214, 0xAuLL);
        v216 = vzip2q_s32(v214, v215);
        v217 = vzip1q_s32(v214, v215);
        v218 = vaddq_s64(v66, vdupq_n_s64(v189 & 0x3F));
        v219 = (v65 + 8 * (v189 >> 6));
        v220.i64[0] = 0x1000100010001;
        v220.i64[1] = 0x1000100010001;
        v221 = vshlq_n_s16(v220, 0xAuLL);
        v222 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v219, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v218)), vshlq_u64(vdupq_lane_s64(v219->i64[0], 0), vnegq_s64(v218)));
        v223.i64[0] = -1;
        v223.i64[1] = -1;
        v224 = v63 + v189;
        if (v63 + (v189 & 0x3F) >= 0x81)
        {
          v223.i64[0] = -1;
          v223.i64[1] = -1;
          v222 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v219[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v218)), vshlq_u64(vdupq_laneq_s64(v219[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v218))), v222);
        }

        v225 = vaddq_s16(v221, v223);
        v226 = vuzp1q_s16(v192, v191);
        v227 = vuzp1q_s16(v684, v687);
        v228 = vuzp1q_s16(v194, v193);
        v229 = vuzp1q_s16(v196, v195);
        v230 = vuzp1q_s16(v198, v197);
        v231 = vuzp1q_s16(v200, v199);
        v232 = vuzp1q_s16(v202, v201);
        v233 = vuzp1q_s16(v204, v203);
        v234 = vuzp1q_s16(v206, v205);
        v235 = vuzp1q_s16(v208, v207);
        v236 = vuzp1q_s16(v210, v209);
        v237 = vuzp1q_s16(v212, v211);
        v238 = vuzp1q_s16(v217, v216);
        v239 = vshlq_u64(v222, v110);
        v240 = vuzp1q_s32(vzip1q_s64(v222, v239), vzip2q_s64(v222, v239));
        v241 = vshrq_n_u32(v240, 0xAuLL);
        v242 = vuzp1q_s16(vzip1q_s32(v240, v241), vzip2q_s32(v240, v241));
        v243 = v63 + v224;
        v244 = v224 & 0x3F;
        v245 = vaddq_s64(v66, vdupq_n_s64(v244));
        v246 = (v65 + 8 * (v224 >> 6));
        v247 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v246, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v245)), vshlq_u64(vdupq_lane_s64(v246->i64[0], 0), vnegq_s64(v245)));
        if (v63 + v244 >= 0x81)
        {
          v247 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v246[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v245)), vshlq_u64(vdupq_laneq_s64(v246[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v245))), v247);
        }

        v248 = vandq_s8(v225, v226);
        v249 = vandq_s8(v225, v227);
        v250 = vandq_s8(v225, v228);
        v251 = vandq_s8(v225, v229);
        v252 = vandq_s8(v225, v230);
        v253 = vandq_s8(v225, v231);
        v254 = vandq_s8(v225, v232);
        v255 = vandq_s8(v225, v233);
        v256 = vandq_s8(v225, v234);
        v257 = vandq_s8(v225, v235);
        v258 = vandq_s8(v225, v236);
        v259 = vandq_s8(v225, v237);
        v260 = vandq_s8(v225, v238);
        v261 = vandq_s8(v225, v242);
        v262 = vshlq_u64(v247, v110);
        v263 = vuzp1q_s32(vzip1q_s64(v247, v262), vzip2q_s64(v247, v262));
        v264 = vshrq_n_u32(v263, 0xAuLL);
        v265 = vuzp1q_s16(vzip1q_s32(v263, v264), vzip2q_s32(v263, v264));
        v266 = (v65 + 8 * (v243 >> 6));
        v267 = vaddq_s64(v66, vdupq_n_s64(v243 & 0x3F));
        v268 = vandq_s8(v225, v265);
        v269 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v266, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v267)), vshlq_u64(vdupq_lane_s64(v266->i64[0], 0), vnegq_s64(v267)));
        if (v63 + (v243 & 0x3F) >= 0x81)
        {
          v269 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v266[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v267)), vshlq_u64(vdupq_laneq_s64(v266[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v267))), v269);
        }

        v270 = vshlq_n_s16(v248, 6uLL);
        v271 = vshlq_n_s16(v249, 6uLL);
        v272 = vshlq_n_s16(v250, 6uLL);
        v273 = vshlq_n_s16(v251, 6uLL);
        v274 = vshlq_n_s16(v252, 6uLL);
        v275 = vshlq_n_s16(v253, 6uLL);
        v276 = vshlq_n_s16(v254, 6uLL);
        v277 = vshlq_n_s16(v255, 6uLL);
        v64 = vshlq_n_s16(v256, 6uLL);
        v278 = vshlq_n_s16(v257, 6uLL);
        v279 = vshlq_n_s16(v258, 6uLL);
        v280 = vshlq_n_s16(v259, 6uLL);
        v281 = vshlq_u64(v269, v110);
        v282 = vuzp1q_s32(vzip1q_s64(v269, v281), vzip2q_s64(v269, v281));
        v283 = vshrq_n_u32(v282, 0xAuLL);
        v284 = vshlq_n_s16(v260, 6uLL);
        v285 = vshlq_n_s16(v261, 6uLL);
        v286 = vshlq_n_s16(v268, 6uLL);
        v287 = vshlq_n_s16(vandq_s8(v225, vuzp1q_s16(vzip1q_s32(v282, v283), vzip2q_s32(v282, v283))), 6uLL);
      }

      v288 = &a1->i8[a2];
      *a1 = v270;
      a1[1] = v271;
      a1[2] = v274;
      a1[3] = v275;
      v289 = (a1 + 2 * a2);
      *v288 = v272;
      v288[1] = v273;
      v288[2] = v276;
      v288[3] = v277;
      *v289 = v64;
      v289[1] = v278;
      v289[2] = v284;
      v289[3] = v285;
      v290 = (v289 + a2);
      result = 160;
      *v290 = v279;
      v290[1] = v280;
      v290[2] = v286;
      v290[3] = v287;
      return result;
    }

    if (a4 == 255)
    {
      v12 = *(a3 + 16);
      v13 = *(a3 + 32);
      v14 = *(a3 + 48);
      v15 = *(a3 + 128);
      v16 = *(a3 + 144);
      v17 = *(a3 + 96);
      v18 = *(a3 + 192);
      v19 = *(a3 + 208);
      v20 = *(a3 + 224);
      v21 = *(a3 + 240);
      v22 = *(a3 + 112);
      v23 = *(a3 + 64);
      v24 = *(a3 + 80);
      v25 = *(a3 + 160);
      v26 = *(a3 + 176);
      v27 = &a1->i8[a2];
      *a1 = *a3;
      a1[1] = v12;
      a1[2] = v23;
      a1[3] = v24;
      v28 = &a1->i8[2 * a2];
      *v27 = v13;
      *(v27 + 1) = v14;
      *(v27 + 2) = v17;
      *(v27 + 3) = v22;
      *v28 = v15;
      *(v28 + 1) = v16;
      *(v28 + 2) = v18;
      *(v28 + 3) = v19;
      v29 = &v28[a2];
      result = 256;
      *v29 = v25;
      *(v29 + 1) = v26;
      *(v29 + 2) = v20;
      *(v29 + 3) = v21;
      return result;
    }
  }

  else
  {
    if (!a4)
    {
      result = 0;
      v54 = 0uLL;
      a1[2] = 0u;
      a1[3] = 0u;
      *a1 = 0u;
      a1[1] = 0u;
      v55 = &a1->i8[a2];
      *(v55 + 2) = 0u;
      *(v55 + 3) = 0u;
      *v55 = 0u;
      *(v55 + 1) = 0u;
      v56 = &a1->i8[2 * a2];
      *(v56 + 2) = 0u;
      *(v56 + 3) = 0u;
      *v56 = 0u;
      *(v56 + 1) = 0u;
      v57 = &v55[2 * a2];
      v57[2] = 0u;
      v57[3] = 0u;
LABEL_265:
      *v57 = v54;
      v57[1] = v54;
      return result;
    }

    if (a4 == 4)
    {
      v5 = vld1q_dup_f64(a3);
      v6 = vorrq_s8(vandq_s8(vshlq_u64(v5, xmmword_29D2F1400), xmmword_29D2F1430), vandq_s8(vshlq_u64(v5, xmmword_29D2F1410), xmmword_29D2F1420));
      v7 = vdupq_n_s64(*&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)));
      *a1 = v7;
      a1[1] = v7;
      a1[2] = v7;
      a1[3] = v7;
      v8 = (a1 + a2);
      *v8 = v7;
      v8[1] = v7;
      v8[2] = v7;
      v8[3] = v7;
      v9 = (a1 + 2 * a2);
      *v9 = v7;
      v9[1] = v7;
      v9[2] = v7;
      v9[3] = v7;
      v10 = (a1 + 2 * a2 + a2);
      *v10 = v7;
      v10[1] = v7;
      v10[2] = v7;
      v10[3] = v7;
      return 5;
    }
  }

  v691 = 0;
  v690 = (8 * (a3 & 7)) | 0x500;
  v688 = 8 * (a3 & 7);
  v689 = a3 & 0xFFFFFFFFFFFFFFF8;
  result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)19,AGX::AppleCompressionGen2::Vec<short>>(&v701, v706, &v700, &v688, a4);
  v33.i64[0] = 0x3000300030003;
  v33.i64[1] = 0x3000300030003;
  v34 = vandq_s8(v701, v33);
  v35 = vbicq_s8(v706[0], vceqq_s16(v34, v33));
  v706[0] = v35;
  v702 = v35;
  v703 = v35;
  v704 = v35;
  v705 = v35;
  v36.i64[0] = 0x202020202020202;
  v36.i64[1] = 0x202020202020202;
  v37 = vandq_s8(vmovl_s16(vtst_s16(*v701.i8, 0x4000400040004)), v36);
  v38 = v688;
  v686 = v34;
  if (vmaxvq_s8(v37) < 1)
  {
    v291.i64[0] = -1;
    v291.i64[1] = -1;
    v292.i64[0] = -1;
    v292.i64[1] = -1;
    v293.i64[0] = -1;
    v293.i64[1] = -1;
    v294.i64[0] = -1;
    v294.i64[1] = -1;
    v49 = a1;
    v50 = a2;
  }

  else
  {
    v39 = vmovl_u8(*&vpaddq_s8(v37, v37));
    v40 = vmovl_u16(*&vpaddq_s16(v39, v39));
    v41 = vpaddq_s32(v40, v40).u64[0];
    v42.i64[0] = v41;
    v42.i64[1] = HIDWORD(v41);
    v43 = v42;
    v44 = vaddvq_s64(v42);
    v45 = v44;
    v46 = v688 + v44;
    if (v690)
    {
      v47 = v690 >= v46;
    }

    else
    {
      v47 = 1;
    }

    v48 = v47;
    v49 = a1;
    v50 = a2;
    if (v44 <= 0x80 && (v48 & 1) != 0)
    {
      v32.i64[0] = 63;
      v51 = (v689 + 8 * (v688 >> 6));
      v52 = vaddq_s64(vdupq_lane_s64(vandq_s8(v688, v32).i64[0], 0), vzip1q_s64(0, v43));
      v53 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v51, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v52)), vshlq_u64(vdupq_lane_s64(v51->i64[0], 0), vnegq_s64(v52)));
      if ((v688 & 0x3F) + v45 >= 0x81)
      {
        v53 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v51[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v52)), vshlq_u64(vdupq_laneq_s64(v51[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v52))), v53);
      }

      v38 = v46;
    }

    else
    {
      v691 = 1;
      v53 = 0uLL;
    }

    v295 = vzip1_s32(*v40.i8, *&vextq_s8(v40, v40, 8uLL));
    v296.i64[0] = v295.u32[0];
    v296.i64[1] = v295.u32[1];
    v297 = vshlq_u64(v53, vnegq_s64(v296));
    v298 = vuzp1q_s32(vzip1q_s64(v53, v297), vzip2q_s64(v53, v297));
    v299 = vshlq_u32(v298, vnegq_s32((*&v39 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v300 = vuzp1q_s16(vzip1q_s32(v298, v299), vzip2q_s32(v298, v299));
    v301 = vshlq_u16(v300, vnegq_s16((*&v37 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
    v302 = vuzp1q_s8(vzip1q_s16(v300, v301), vzip2q_s16(v300, v301));
    v301.i64[0] = 0x101010101010101;
    v301.i64[1] = 0x101010101010101;
    v303 = vshlq_s8(v301, v37);
    v301.i64[0] = -1;
    v301.i64[1] = -1;
    v304 = vqtbl1q_s8(vandq_s8(vaddq_s8(v303, v301), v302), xmmword_29D2F0F70);
    *v302.i8 = vdup_lane_s32(*v304.i8, 0);
    *v301.i8 = vdup_lane_s32(*v304.i8, 1);
    v305 = vdupq_laneq_s32(v304, 2).u64[0];
    v304.i64[0] = vdupq_laneq_s32(v304, 3).u64[0];
    v702 = vsubw_s8(v702, *v302.i8);
    v703 = vsubw_s8(v703, *v301.i8);
    v704 = vsubw_s8(v704, v305);
    v705 = vsubw_s8(v705, *v304.i8);
    v294 = vmovl_s8(vceqz_s8(*v302.i8));
    v293 = vmovl_s8(vceqz_s8(*v301.i8));
    v292 = vmovl_s8(vceqz_s8(v305));
    v291 = vmovl_s8(vceqz_s8(*v304.i8));
  }

  v306.i64[0] = 0x8000800080008;
  v306.i64[1] = 0x8000800080008;
  v307 = 0uLL;
  v308 = vandq_s8(vextq_s8(vtstq_s16(v701, v306), 0, 8uLL), v35);
  v309 = vmovl_u16(*&vpaddq_s16(v308, v308));
  v310 = vpaddq_s32(v309, v309).u64[0];
  v311.i64[0] = v310;
  v311.i64[1] = HIDWORD(v310);
  v312 = v311;
  v313 = vaddvq_s64(v311);
  if (v690)
  {
    v314 = v690 >= v38 + v313;
  }

  else
  {
    v314 = 1;
  }

  v315 = v314;
  if (v313 <= 0x80 && (v315 & 1) != 0)
  {
    v316 = vaddq_s64(vdupq_n_s64(v38 & 0x3F), vzip1q_s64(0, v312));
    v317 = (v689 + 8 * (v38 >> 6));
    v307 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v317, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v316)), vshlq_u64(vdupq_lane_s64(v317->i64[0], 0), vnegq_s64(v316)));
    if ((v38 & 0x3F) + v313 >= 0x81)
    {
      v307 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v317[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v316)), vshlq_u64(vdupq_laneq_s64(v317[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v316))), v307);
    }

    v38 += v313;
  }

  else
  {
    v691 = 1;
  }

  v318 = v701.i8[0] & 3;
  v683 = v292;
  v685 = v294;
  v681 = v308;
  v682 = v293;
  if (v318 == 2)
  {
    if (v690)
    {
      v319 = v38 + 8;
      v320 = v38 + 16;
      if (v690 >= v38 + 8)
      {
        v38 += 8;
      }

      else
      {
        v320 = v38 + 8;
      }

      if (v690 >= v320)
      {
        v38 = v320;
      }

      if (v690 < v319 || v690 < v320)
      {
        v691 = 1;
      }
    }

    else
    {
      v38 += 16;
    }
  }

  v321 = 0uLL;
  v322 = vextq_s8(0, v702, 8uLL);
  v323 = vmovl_u16(*&vpaddq_s16(v322, v322));
  v324 = vpaddq_s32(v323, v323).u64[0];
  v325.i64[0] = v324;
  v325.i64[1] = HIDWORD(v324);
  v326 = v325;
  v327 = vaddvq_s64(v325);
  v328 = v38 + v327;
  if (v690)
  {
    v329 = v690 >= v328;
  }

  else
  {
    v329 = 1;
  }

  v330 = v329;
  if (v327 <= 0x80 && (v330 & 1) != 0)
  {
    v331 = v38 & 0x3F;
    v332 = vaddq_s64(vdupq_n_s64(v331), vzip1q_s64(0, v326));
    v333 = v689;
    v334 = (v689 + 8 * (v38 >> 6));
    v321 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v334, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v332)), vshlq_u64(vdupq_lane_s64(v334->i64[0], 0), vnegq_s64(v332)));
    if (v331 + v327 >= 0x81)
    {
      v321 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v334[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v332)), vshlq_u64(vdupq_laneq_s64(v334[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v332))), v321);
    }

    v335 = v691;
    v38 = v328;
  }

  else
  {
    v335 = 1;
    v333 = v689;
  }

  v336.i64[0] = 0xFFFF0000FFFFLL;
  v336.i64[1] = 0xFFFF0000FFFFLL;
  v337.i64[0] = 0xF000F000F000FLL;
  v337.i64[1] = 0xF000F000F000FLL;
  v338.i64[0] = 0x10001000100010;
  v338.i64[1] = 0x10001000100010;
  v339 = vmovl_u16(*&vpaddq_s16(v702, v702));
  v340 = vpaddq_s32(v339, v339).u64[0];
  v341.i64[0] = v340;
  v341.i64[1] = HIDWORD(v340);
  v342 = v341;
  v343 = vaddvq_s64(v341);
  v344 = v343;
  v345 = v38 + v343;
  if (v690)
  {
    v346 = v690 >= v345;
  }

  else
  {
    v346 = 1;
  }

  v347 = v346;
  v348 = 0uLL;
  if (v343 <= 0x80 && v347)
  {
    v349 = v38 & 0x3F;
    v350 = vaddq_s64(vdupq_n_s64(v349), vzip1q_s64(0, v342));
    v351 = (v333 + 8 * (v38 >> 6));
    v352 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v351, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v350)), vshlq_u64(vdupq_lane_s64(v351->i64[0], 0), vnegq_s64(v350)));
    if (v349 + v344 >= 0x81)
    {
      v352 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v351[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v350)), vshlq_u64(vdupq_laneq_s64(v351[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v350))), v352);
    }
  }

  else
  {
    v335 = 1;
    v345 = v38;
    v352 = 0uLL;
  }

  v353 = vzip1_s32(*v339.i8, *&vextq_s8(v339, v339, 8uLL));
  v354.i64[0] = v353.u32[0];
  v354.i64[1] = v353.u32[1];
  v355 = vnegq_s64(v354);
  v356 = vshlq_u64(v352, v355);
  v357 = vuzp1q_s32(vzip1q_s64(v352, v356), vzip2q_s64(v352, v356));
  v358 = vnegq_s32(vandq_s8(v702, v336));
  v359 = vshlq_u32(v357, v358);
  v360 = vuzp1q_s16(vzip1q_s32(v357, v359), vzip2q_s32(v357, v359));
  v361 = vaddq_s16(v702, v337);
  v362 = vsubq_s16(v338, v702);
  v363 = vshlq_s16(vshlq_s16(v360, v362), v361);
  v693 = v363;
  v364 = v345 + v344;
  if (v690)
  {
    v365 = v690 >= v364;
  }

  else
  {
    v365 = 1;
  }

  v366 = v365;
  if (v344 <= 0x80 && v366)
  {
    v367 = v345 & 0x3F;
    v368 = vaddq_s64(vdupq_n_s64(v367), vzip1q_s64(0, v342));
    v369 = (v333 + 8 * (v345 >> 6));
    v348 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v369, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v368)), vshlq_u64(vdupq_lane_s64(v369->i64[0], 0), vnegq_s64(v368)));
    if (v367 + v344 >= 0x81)
    {
      v348 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v369[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v368)), vshlq_u64(vdupq_laneq_s64(v369[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v368))), v348);
    }
  }

  else
  {
    v335 = 1;
    v364 = v345;
  }

  v370 = vshlq_u64(v348, v355);
  v371 = vuzp1q_s32(vzip1q_s64(v348, v370), vzip2q_s64(v348, v370));
  v372 = vshlq_u32(v371, v358);
  v373 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v371, v372), vzip2q_s32(v371, v372)), v362), v361);
  v694 = v373;
  v374 = v364 + v344;
  if (v690)
  {
    v375 = v690 >= v374;
  }

  else
  {
    v375 = 1;
  }

  v376 = v375;
  v377 = 0uLL;
  if (v344 <= 0x80 && v376)
  {
    v378 = v364 & 0x3F;
    v379 = vaddq_s64(vdupq_n_s64(v378), vzip1q_s64(0, v342));
    v380 = (v333 + 8 * (v364 >> 6));
    v381 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v380, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v379)), vshlq_u64(vdupq_lane_s64(v380->i64[0], 0), vnegq_s64(v379)));
    if (v378 + v344 >= 0x81)
    {
      v381 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v380[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v379)), vshlq_u64(vdupq_laneq_s64(v380[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v379))), v381);
    }
  }

  else
  {
    v335 = 1;
    v374 = v364;
    v381 = 0uLL;
  }

  v382 = vshlq_u64(v381, v355);
  v383 = vuzp1q_s32(vzip1q_s64(v381, v382), vzip2q_s64(v381, v382));
  v384 = vshlq_u32(v383, v358);
  v385 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v383, v384), vzip2q_s32(v383, v384)), v362), v361);
  v695 = v385;
  v386 = vmovl_u16(*&vpaddq_s16(v703, v703));
  v383.i64[0] = vpaddq_s32(v386, v386).u64[0];
  v387.i64[0] = v383.u32[0];
  v387.i64[1] = v383.u32[1];
  v388 = v387;
  v389 = vaddvq_s64(v387);
  v390 = v389;
  v391 = v374 + v389;
  if (v690)
  {
    v392 = v690 >= v391;
  }

  else
  {
    v392 = 1;
  }

  v393 = v392;
  if (v389 <= 0x80 && v393)
  {
    v394 = v374 & 0x3F;
    v395 = vaddq_s64(vdupq_n_s64(v394), vzip1q_s64(0, v388));
    v396 = (v333 + 8 * (v374 >> 6));
    v377 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v396, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v395)), vshlq_u64(vdupq_lane_s64(v396->i64[0], 0), vnegq_s64(v395)));
    if (v394 + v390 >= 0x81)
    {
      v377 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v396[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v395)), vshlq_u64(vdupq_laneq_s64(v396[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v395))), v377);
    }
  }

  else
  {
    v335 = 1;
    v391 = v374;
  }

  v397 = v391 + v390;
  if (v690)
  {
    v398 = v690 >= v397;
  }

  else
  {
    v398 = 1;
  }

  v399 = v398;
  v400 = 0uLL;
  if (v390 <= 0x80 && v399)
  {
    v401 = v391 & 0x3F;
    v402 = vaddq_s64(vdupq_n_s64(v401), vzip1q_s64(0, v388));
    v403 = (v333 + 8 * (v391 >> 6));
    v404 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v403, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v402)), vshlq_u64(vdupq_lane_s64(v403->i64[0], 0), vnegq_s64(v402)));
    if (v401 + v390 >= 0x81)
    {
      v404 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v403[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v402)), vshlq_u64(vdupq_laneq_s64(v403[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v402))), v404);
    }
  }

  else
  {
    v335 = 1;
    v397 = v391;
    v404 = 0uLL;
  }

  v405 = v397 + v390;
  if (v690)
  {
    v406 = v690 >= v405;
  }

  else
  {
    v406 = 1;
  }

  v407 = v406;
  if (v390 <= 0x80 && v407)
  {
    v408 = vaddq_s64(vdupq_n_s64(v397 & 0x3F), vzip1q_s64(0, v388));
    v409 = (v333 + 8 * (v397 >> 6));
    v400 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v409, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v408)), vshlq_u64(vdupq_lane_s64(v409->i64[0], 0), vnegq_s64(v408)));
    if ((v397 & 0x3F) + v390 >= 0x81)
    {
      v400 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v409[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v408)), vshlq_u64(vdupq_laneq_s64(v409[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v408))), v400);
    }
  }

  else
  {
    v335 = 1;
    v405 = v397;
  }

  v410 = v405 + v390;
  if (v690)
  {
    v411 = v690 >= v410;
  }

  else
  {
    v411 = 1;
  }

  v412 = v411;
  v413 = 0uLL;
  if (v390 <= 0x80 && v412)
  {
    v414 = vaddq_s64(vdupq_n_s64(v405 & 0x3F), vzip1q_s64(0, v388));
    v415 = (v333 + 8 * (v405 >> 6));
    v416 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v415, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v414)), vshlq_u64(vdupq_lane_s64(v415->i64[0], 0), vnegq_s64(v414)));
    if ((v405 & 0x3F) + v390 >= 0x81)
    {
      v416 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v415[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v414)), vshlq_u64(vdupq_laneq_s64(v415[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v414))), v416);
    }
  }

  else
  {
    v335 = 1;
    v410 = v405;
    v416 = 0uLL;
  }

  v417 = vmovl_u16(*&vpaddq_s16(v704, v704));
  v418 = vpaddq_s32(v417, v417).u64[0];
  v419.i64[0] = v418;
  v419.i64[1] = HIDWORD(v418);
  v420 = v419;
  v421 = vaddvq_s64(v419);
  v422 = v421;
  v423 = v410 + v421;
  if (v690)
  {
    v424 = v690 >= v423;
  }

  else
  {
    v424 = 1;
  }

  v425 = v424;
  if (v421 <= 0x80 && v425)
  {
    v426 = v410 & 0x3F;
    v427 = vaddq_s64(vdupq_n_s64(v426), vzip1q_s64(0, v420));
    v428 = (v333 + 8 * (v410 >> 6));
    v413 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v428, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v427)), vshlq_u64(vdupq_lane_s64(v428->i64[0], 0), vnegq_s64(v427)));
    if (v426 + v422 >= 0x81)
    {
      v413 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v428[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v427)), vshlq_u64(vdupq_laneq_s64(v428[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v427))), v413);
    }
  }

  else
  {
    v335 = 1;
    v423 = v410;
  }

  v429 = v423 + v422;
  if (v690)
  {
    v430 = v690 >= v429;
  }

  else
  {
    v430 = 1;
  }

  v431 = v430;
  v432 = 0uLL;
  if (v422 <= 0x80 && v431)
  {
    v433 = v423 & 0x3F;
    v434 = vaddq_s64(vdupq_n_s64(v433), vzip1q_s64(0, v420));
    v435 = (v333 + 8 * (v423 >> 6));
    v436 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v435, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v434)), vshlq_u64(vdupq_lane_s64(v435->i64[0], 0), vnegq_s64(v434)));
    if (v433 + v422 >= 0x81)
    {
      v436 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v435[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v434)), vshlq_u64(vdupq_laneq_s64(v435[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v434))), v436);
    }
  }

  else
  {
    v335 = 1;
    v429 = v423;
    v436 = 0uLL;
  }

  v437 = v429 + v422;
  if (v690)
  {
    v438 = v690 >= v437;
  }

  else
  {
    v438 = 1;
  }

  v439 = v438;
  if (v422 <= 0x80 && v439)
  {
    v440 = v429 & 0x3F;
    v441 = vaddq_s64(vdupq_n_s64(v440), vzip1q_s64(0, v420));
    v442 = (v333 + 8 * (v429 >> 6));
    v432 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v442, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v441)), vshlq_u64(vdupq_lane_s64(v442->i64[0], 0), vnegq_s64(v441)));
    if (v440 + v422 >= 0x81)
    {
      v432 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v442[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v441)), vshlq_u64(vdupq_laneq_s64(v442[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v441))), v432);
    }
  }

  else
  {
    v335 = 1;
    v437 = v429;
  }

  v443 = v437 + v422;
  if (v690)
  {
    v444 = v690 >= v443;
  }

  else
  {
    v444 = 1;
  }

  v445 = v444;
  v446 = 0uLL;
  if (v422 <= 0x80 && v445)
  {
    v447 = v437 & 0x3F;
    v448 = vaddq_s64(vdupq_n_s64(v447), vzip1q_s64(0, v420));
    v449 = (v333 + 8 * (v437 >> 6));
    v450 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v449, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v448)), vshlq_u64(vdupq_lane_s64(v449->i64[0], 0), vnegq_s64(v448)));
    if (v447 + v422 >= 0x81)
    {
      v450 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v449[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v448)), vshlq_u64(vdupq_laneq_s64(v449[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v448))), v450);
    }
  }

  else
  {
    v335 = 1;
    v443 = v437;
    v450 = 0uLL;
  }

  v451 = vmovl_u16(*&vpaddq_s16(v705, v705));
  v452 = vpaddq_s32(v451, v451).u64[0];
  v453.i64[0] = v452;
  v453.i64[1] = HIDWORD(v452);
  v454 = v453;
  v455 = vaddvq_s64(v453);
  v456 = v455;
  v457 = v443 + v455;
  if (v690)
  {
    v458 = v690 >= v457;
  }

  else
  {
    v458 = 1;
  }

  v459 = v458;
  if (v455 <= 0x80 && v459)
  {
    v460 = v443 & 0x3F;
    v461 = vaddq_s64(vdupq_n_s64(v460), vzip1q_s64(0, v454));
    v462 = (v333 + 8 * (v443 >> 6));
    v446 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v462, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v461)), vshlq_u64(vdupq_lane_s64(v462->i64[0], 0), vnegq_s64(v461)));
    if (v460 + v456 >= 0x81)
    {
      v446 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v462[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v461)), vshlq_u64(vdupq_laneq_s64(v462[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v461))), v446);
    }
  }

  else
  {
    v335 = 1;
    v457 = v443;
  }

  v463 = v457 + v456;
  if (v690)
  {
    v464 = v690 >= v463;
  }

  else
  {
    v464 = 1;
  }

  v465 = v464;
  v466 = 0uLL;
  if (v456 <= 0x80 && v465)
  {
    v467 = v457 & 0x3F;
    v468 = vaddq_s64(vdupq_n_s64(v467), vzip1q_s64(0, v454));
    v469 = (v333 + 8 * (v457 >> 6));
    v470 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v469, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v468)), vshlq_u64(vdupq_lane_s64(v469->i64[0], 0), vnegq_s64(v468)));
    if (v467 + v456 >= 0x81)
    {
      v470 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v469[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v468)), vshlq_u64(vdupq_laneq_s64(v469[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v468))), v470);
    }
  }

  else
  {
    v335 = 1;
    v463 = v457;
    v470 = 0uLL;
  }

  v471 = v463 + v456;
  if (v690)
  {
    v472 = v690 >= v471;
  }

  else
  {
    v472 = 1;
  }

  v473 = v472;
  if (v456 <= 0x80 && v473)
  {
    v474 = v463 & 0x3F;
    v475 = vaddq_s64(vdupq_n_s64(v474), vzip1q_s64(0, v454));
    v476 = (v333 + 8 * (v463 >> 6));
    v466 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v476, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v475)), vshlq_u64(vdupq_lane_s64(v476->i64[0], 0), vnegq_s64(v475)));
    if (v474 + v456 >= 0x81)
    {
      v466 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v476[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v475)), vshlq_u64(vdupq_laneq_s64(v476[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v475))), v466);
    }
  }

  else
  {
    v335 = 1;
    v471 = v463;
  }

  v477 = v471 + v456;
  if (v690)
  {
    v478 = v690 >= v477;
  }

  else
  {
    v478 = 1;
  }

  v479 = v478;
  if (v456 > 0x80 || !v479)
  {
    goto LABEL_264;
  }

  v480 = vaddq_s64(vdupq_n_s64(v471 & 0x3F), vzip1q_s64(0, v454));
  v481 = (v333 + 8 * (v471 >> 6));
  v482 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v481, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v480)), vshlq_u64(vdupq_lane_s64(v481->i64[0], 0), vnegq_s64(v480)));
  if ((v471 & 0x3F) + v456 >= 0x81)
  {
    v482 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v481[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v480)), vshlq_u64(vdupq_laneq_s64(v481[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v480))), v482);
  }

  if ((v335 & 1) != 0 || v690 + 8 * result - v477 - 1280 >= 9 || v318 == 2)
  {
LABEL_264:
    result = 0;
    v54 = vdupq_n_s64(0xFFFFF003FFuLL);
    *v49 = v54;
    v49[1] = v54;
    v483 = (v49 + v50);
    *v483 = v54;
    v483[1] = v54;
    v484 = 2 * v50;
    v485 = (v49 + v484);
    *v485 = v54;
    v485[1] = v54;
    v57 = (v483 + v484);
    goto LABEL_265;
  }

  v486 = vzip1_s32(*v309.i8, *&vextq_s8(v309, v309, 8uLL));
  v487 = vzip1_s32(*v323.i8, *&vextq_s8(v323, v323, 8uLL));
  v488 = vzip1_s32(*v386.i8, *&vextq_s8(v386, v386, 8uLL));
  v489 = vzip1_s32(*v417.i8, *&vextq_s8(v417, v417, 8uLL));
  v490 = vzip1_s32(*v451.i8, *&vextq_s8(v451, v451, 8uLL));
  v491.i64[0] = v486.u32[0];
  v491.i64[1] = v486.u32[1];
  v492 = vshlq_u64(v307, vnegq_s64(v491));
  v493 = vzip2q_s64(v307, v492);
  v494 = vzip1q_s64(v307, v492);
  v491.i64[0] = v487.u32[0];
  v491.i64[1] = v487.u32[1];
  v495 = vshlq_u64(v321, vnegq_s64(v491));
  v496 = vzip2q_s64(v321, v495);
  v497 = vzip1q_s64(v321, v495);
  v491.i64[0] = v488.u32[0];
  v491.i64[1] = v488.u32[1];
  v498 = vnegq_s64(v491);
  v499 = vshlq_u64(v377, v498);
  v500 = vzip2q_s64(v377, v499);
  v501 = vzip1q_s64(v377, v499);
  v502 = vshlq_u64(v404, v498);
  v503 = vzip2q_s64(v404, v502);
  v504 = vzip1q_s64(v404, v502);
  v505 = vshlq_u64(v400, v498);
  v506 = vzip2q_s64(v400, v505);
  v507 = vzip1q_s64(v400, v505);
  v508 = vshlq_u64(v416, v498);
  v509 = vzip2q_s64(v416, v508);
  v510 = vzip1q_s64(v416, v508);
  v491.i64[0] = v489.u32[0];
  v491.i64[1] = v489.u32[1];
  v511 = vnegq_s64(v491);
  v512 = vshlq_u64(v413, v511);
  v679 = v363;
  v680 = v291;
  v513 = vzip2q_s64(v413, v512);
  v514 = vzip1q_s64(v413, v512);
  v515 = vshlq_u64(v436, v511);
  v516 = vzip2q_s64(v436, v515);
  v517 = vzip1q_s64(v436, v515);
  v518 = vshlq_u64(v432, v511);
  v519 = v322;
  v675 = v322;
  v520 = vzip2q_s64(v432, v518);
  v521 = vzip1q_s64(v432, v518);
  v522 = vshlq_u64(v450, v511);
  v523 = vzip2q_s64(v450, v522);
  v524 = vzip1q_s64(v450, v522);
  v491.i64[0] = v490.u32[0];
  v491.i64[1] = v490.u32[1];
  v676 = vnegq_s64(v491);
  v677 = v373;
  v525 = vshlq_u64(v446, v676);
  v526 = vzip2q_s64(v446, v525);
  v527 = vzip1q_s64(v446, v525);
  v528 = vshlq_u64(v470, v676);
  v678 = v385;
  v529 = vzip2q_s64(v470, v528);
  v530 = vzip1q_s64(v470, v528);
  v531 = vshlq_u64(v466, v676);
  v532 = vuzp1q_s32(v494, v493);
  v533 = vuzp1q_s32(v497, v496);
  v534 = vuzp1q_s32(v501, v500);
  v535 = vuzp1q_s32(v504, v503);
  v536 = vuzp1q_s32(v507, v506);
  v537 = vuzp1q_s32(v510, v509);
  v538 = vuzp1q_s32(v514, v513);
  v539 = vuzp1q_s32(v517, v516);
  v540 = vuzp1q_s32(v521, v520);
  v541 = vuzp1q_s32(v524, v523);
  v542 = vuzp1q_s32(v527, v526);
  v543 = vuzp1q_s32(v530, v529);
  v544 = vuzp1q_s32(vzip1q_s64(v466, v531), vzip2q_s64(v466, v531));
  v530.i64[0] = 0xFFFF0000FFFFLL;
  v530.i64[1] = 0xFFFF0000FFFFLL;
  v529.i64[0] = 0xFFFF0000FFFFLL;
  v529.i64[1] = 0xFFFF0000FFFFLL;
  v545 = vshlq_u32(v532, vnegq_s32(vandq_s8(v681, v530)));
  v546 = vzip2q_s32(v532, v545);
  v547 = vzip1q_s32(v532, v545);
  v548 = vshlq_u32(v533, vnegq_s32(vandq_s8(v519, v529)));
  v549 = vzip2q_s32(v533, v548);
  v550 = vzip1q_s32(v533, v548);
  v548.i64[0] = 0xFFFF0000FFFFLL;
  v548.i64[1] = 0xFFFF0000FFFFLL;
  v551 = vnegq_s32(vandq_s8(v703, v548));
  v552 = vshlq_u32(v534, v551);
  v553 = vzip2q_s32(v534, v552);
  v554 = vzip1q_s32(v534, v552);
  v555 = vshlq_u32(v535, v551);
  v556 = vzip2q_s32(v535, v555);
  v557 = vzip1q_s32(v535, v555);
  v558 = vshlq_u32(v536, v551);
  v559 = vzip2q_s32(v536, v558);
  v560 = vzip1q_s32(v536, v558);
  v561 = vshlq_u32(v537, v551);
  v562 = vzip2q_s32(v537, v561);
  v563 = vzip1q_s32(v537, v561);
  v561.i64[0] = 0xFFFF0000FFFFLL;
  v561.i64[1] = 0xFFFF0000FFFFLL;
  v564 = vnegq_s32(vandq_s8(v704, v561));
  v565 = vshlq_u32(v538, v564);
  v566 = vzip2q_s32(v538, v565);
  v567 = vzip1q_s32(v538, v565);
  v568 = vshlq_u32(v539, v564);
  v569 = vzip2q_s32(v539, v568);
  v570 = vzip1q_s32(v539, v568);
  v571 = vshlq_u32(v540, v564);
  v572 = vzip2q_s32(v540, v571);
  v573 = vzip1q_s32(v540, v571);
  v574 = vshlq_u32(v541, v564);
  v575 = vzip2q_s32(v541, v574);
  v576 = vzip1q_s32(v541, v574);
  v574.i64[0] = 0xFFFF0000FFFFLL;
  v574.i64[1] = 0xFFFF0000FFFFLL;
  v577 = vnegq_s32(vandq_s8(v705, v574));
  v578 = vshlq_u32(v542, v577);
  v579 = vzip2q_s32(v542, v578);
  v580 = vzip1q_s32(v542, v578);
  v581 = vshlq_u32(v543, v577);
  v582 = vzip2q_s32(v543, v581);
  v583 = vzip1q_s32(v543, v581);
  v584 = vshlq_u32(v544, v577);
  v585 = vuzp1q_s16(v547, v546);
  v586 = vuzp1q_s16(v550, v549);
  v587 = vuzp1q_s16(v554, v553);
  v588 = vuzp1q_s16(v557, v556);
  v589 = vuzp1q_s16(v560, v559);
  v590 = vuzp1q_s16(v563, v562);
  v591 = vuzp1q_s16(vzip1q_s32(v544, v584), vzip2q_s32(v544, v584));
  v544.i64[0] = 0x10001000100010;
  v544.i64[1] = 0x10001000100010;
  v549.i64[0] = 0xF000F000F000FLL;
  v549.i64[1] = 0xF000F000F000FLL;
  v592 = vshlq_s16(v585, vsubq_s16(v544, v681));
  v544.i64[0] = 0x10001000100010;
  v544.i64[1] = 0x10001000100010;
  v562.i64[0] = 0xF000F000F000FLL;
  v562.i64[1] = 0xF000F000F000FLL;
  v593 = vaddq_s16(v675, v562);
  v562.i64[0] = 0x10001000100010;
  v562.i64[1] = 0x10001000100010;
  v594 = vshlq_s16(v586, vsubq_s16(v544, v675));
  v586.i64[0] = 0xF000F000F000FLL;
  v586.i64[1] = 0xF000F000F000FLL;
  v595 = vsubq_s16(v562, v703);
  v596 = vaddq_s16(v703, v586);
  v553.i64[0] = 0x10001000100010;
  v553.i64[1] = 0x10001000100010;
  v597 = vshlq_s16(v587, v595);
  v598 = vshlq_s16(v588, v595);
  v599 = vshlq_s16(v589, v595);
  v600 = vshlq_s16(v590, v595);
  v595.i64[0] = 0xF000F000F000FLL;
  v595.i64[1] = 0xF000F000F000FLL;
  v601 = vsubq_s16(v553, v704);
  v602 = vaddq_s16(v704, v595);
  v556.i64[0] = 0x10001000100010;
  v556.i64[1] = 0x10001000100010;
  v603 = vshlq_s16(vuzp1q_s16(v567, v566), v601);
  v604 = vshlq_s16(vuzp1q_s16(v570, v569), v601);
  v605 = vshlq_s16(vuzp1q_s16(v573, v572), v601);
  v606 = vshlq_s16(vuzp1q_s16(v576, v575), v601);
  v601.i64[0] = 0xF000F000F000FLL;
  v601.i64[1] = 0xF000F000F000FLL;
  v607 = vsubq_s16(v556, v705);
  v608 = vaddq_s16(v705, v601);
  v609 = vshlq_s16(v592, vaddq_s16(v681, v549));
  v610 = vshlq_u64(v482, v676);
  v611 = vuzp1q_s32(vzip1q_s64(v482, v610), vzip2q_s64(v482, v610));
  v612 = vshlq_u32(v611, v577);
  v613 = vshlq_s16(vshlq_s16(vuzp1q_s16(v580, v579), v607), v608);
  v614 = vshlq_s16(vshlq_s16(vuzp1q_s16(v583, v582), v607), v608);
  v615 = vshlq_s16(vshlq_s16(v591, v607), v608);
  v616 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v611, v612), vzip2q_s32(v611, v612)), v607), v608);
  v617 = vaddq_s16(vandq_s8(v609, v685), vshlq_s16(v594, v593));
  v618 = vdupq_lane_s64(v609.i64[0], 0);
  v619 = vandq_s8(v682, v618);
  v620 = vsubq_s16(vshlq_s16(v597, v596), v619);
  v621 = vsubq_s16(vshlq_s16(v598, v596), v619);
  v622 = vsubq_s16(vshlq_s16(v599, v596), v619);
  v623 = vsubq_s16(vshlq_s16(v600, v596), v619);
  v624 = vandq_s8(v683, v618);
  v625 = vsubq_s16(vshlq_s16(v603, v602), v624);
  v626 = vsubq_s16(vshlq_s16(v604, v602), v624);
  v627 = vandq_s8(v685, v618);
  v628 = vsubq_s16(vshlq_s16(v605, v602), v624);
  v629 = vsubq_s16(vshlq_s16(v606, v602), v624);
  v630.i64[0] = 0x1000100010001;
  v630.i64[1] = 0x1000100010001;
  v631 = vsubq_s16(v679, v627);
  v632 = vsubq_s16(v677, v627);
  v633 = vandq_s8(v680, v618);
  v634 = vsubq_s16(v613, v633);
  v635 = vsubq_s16(v614, v633);
  v636 = vsubq_s16(v615, v633);
  v637 = vsubq_s16(v616, v633);
  v638 = vsubq_s16(v678, v627);
  v639 = vsubq_s16(v617, v627);
  v692 = v617;
  v696 = v634;
  v697 = v635;
  v698 = v636;
  v699 = v637;
  if (vaddvq_s16(vceqq_s16(v686, v630)))
  {
    v640 = vnegq_s16(vandq_s8(v701, v630));
    v641.i64[0] = v638.i64[0];
    v642.i64[1] = v639.i64[1];
    v641.i64[1] = v639.i64[0];
    v642.i64[0] = v638.i64[1];
    v643 = vbslq_s8(v640, v642, v639);
    v644 = vbslq_s8(v640, v641, v638);
    v642.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v642.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v645 = vandq_s8(vqtbl4q_s8(*(&v631 - 1), v642), v640);
    v707.val[0] = vaddq_s16(v643, vandq_s8(vqtbl4q_s8(*(&v631 - 1), xmmword_29D2F10B0), v640));
    v707.val[1] = vaddq_s16(v631, vandq_s8(vqtbl4q_s8(*(&v631 - 1), xmmword_29D2F10C0), v640));
    v707.val[2] = vaddq_s16(v632, v645);
    v707.val[3] = vaddq_s16(v644, v645);
    v646 = vandq_s8(vqtbl4q_s8(v707, v642), v640);
    v639 = vaddq_s16(v707.val[0], vandq_s8(vqtbl4q_s8(v707, xmmword_29D2F10D0), v640));
    v631 = vaddq_s16(v707.val[1], vandq_s8(vqtbl4q_s8(v707, xmmword_29D2F10E0), v640));
    v692 = v639;
    v693 = v631;
    v632 = vaddq_s16(v707.val[2], v646);
    v638 = vaddq_s16(v707.val[3], v646);
    v707.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v620.i8, xmmword_29D2F10B0), v640), v620);
    v707.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v620.i8, xmmword_29D2F10F0), v640), v621);
    v707.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v620.i8, v642), v640), v622);
    v707.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v620.i8, xmmword_29D2F1100), v640), v623);
    v647 = vandq_s8(vqtbl4q_s8(v707, xmmword_29D2F10D0), v640);
    v648 = vandq_s8(vqtbl4q_s8(v707, v642), v640);
    v620 = vaddq_s16(v647, v707.val[0]);
    v621 = vaddq_s16(v707.val[1], v647);
    v622 = vaddq_s16(v707.val[2], v648);
    v623 = vaddq_s16(v707.val[3], v648);
    v707.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v625.i8, xmmword_29D2F0EB0), v640), v625);
    v707.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v625.i8, xmmword_29D2F0FB0), v640), v626);
    v707.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v625.i8, xmmword_29D2F10B0), v640), v628);
    v707.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v625.i8, xmmword_29D2F10C0), v640), v629);
    v649 = vandq_s8(vqtbl4q_s8(v707, v642), v640);
    v625 = vaddq_s16(v707.val[0], v649);
    v626 = vaddq_s16(v707.val[1], v649);
    v628 = vaddq_s16(v707.val[2], vandq_s8(vqtbl4q_s8(v707, xmmword_29D2F0FE0), v640));
    v629 = vaddq_s16(v707.val[3], vandq_s8(vqtbl4q_s8(v707, xmmword_29D2F1110), v640));
    v707.val[0] = v696;
    v707.val[1] = v697;
    v707.val[2] = v698;
    v707.val[3] = v699;
    v708.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(v707, xmmword_29D2F0EB0), v640), v696);
    v708.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(v707, xmmword_29D2F1120), v640), v697);
    v694 = v632;
    v695 = v638;
    v708.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(v707, xmmword_29D2F10B0), v640), v698);
    v708.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(v707, xmmword_29D2F10C0), v640), v699);
    v650 = v701;
    v651 = vandq_s8(vqtbl4q_s8(v708, v642), v640);
    v652 = vandq_s8(vqtbl4q_s8(v708, xmmword_29D2F0FE0), v640);
    v653 = vandq_s8(vqtbl4q_s8(v708, xmmword_29D2F1130), v640);
    v634 = vaddq_s16(v708.val[0], v651);
    v635 = vaddq_s16(v708.val[1], v651);
    v636 = vaddq_s16(v708.val[2], v652);
    v637 = vaddq_s16(v708.val[3], v653);
  }

  else
  {
    v650 = v701;
  }

  v654 = vaddq_s16(v700, v639);
  v655 = vaddq_s16(v631, v700);
  v656 = vaddq_s16(v632, v700);
  v657 = vaddq_s16(v638, v700);
  v658 = vaddq_s16(v620, v700);
  v659 = vaddq_s16(v621, v700);
  v660 = vaddq_s16(v622, v700);
  v661 = vaddq_s16(v623, v700);
  v662 = vaddq_s16(v625, v700);
  v663 = vaddq_s16(v626, v700);
  v664 = vaddq_s16(v628, v700);
  v665 = vaddq_s16(v629, v700);
  v666 = vaddq_s16(v634, v700);
  v667 = vaddq_s16(v635, v700);
  v668 = vaddq_s16(v636, v700);
  v669 = vaddq_s16(v637, v700);
  v670.i64[0] = 0x10001000100010;
  v670.i64[1] = 0x10001000100010;
  v671 = vceqzq_s16(vandq_s8(v650, v670));
  v672 = &v49->i8[v50];
  *v49 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v654, xmmword_29D2F1140), v671), v654), 6uLL);
  v49[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v655, xmmword_29D2F1140), v671), v655), 6uLL);
  v49[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v658, xmmword_29D2F1140), v671), v658), 6uLL);
  v49[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v659, xmmword_29D2F1140), v671), v659), 6uLL);
  v673 = (v49 + 2 * v50);
  *v672 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v656, xmmword_29D2F1140), v671), v656), 6uLL);
  v672[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v657, xmmword_29D2F1140), v671), v657), 6uLL);
  v672[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v660, xmmword_29D2F1140), v671), v660), 6uLL);
  v672[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v661, xmmword_29D2F1140), v671), v661), 6uLL);
  *v673 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v662, xmmword_29D2F1140), v671), v662), 6uLL);
  v673[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v663, xmmword_29D2F1140), v671), v663), 6uLL);
  v673[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v666, xmmword_29D2F1140), v671), v666), 6uLL);
  v673[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v667, xmmword_29D2F1140), v671), v667), 6uLL);
  v674 = (v673 + v50);
  *v674 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v664, xmmword_29D2F1140), v671), v664), 6uLL);
  v674[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v665, xmmword_29D2F1140), v671), v665), 6uLL);
  v674[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v668, xmmword_29D2F1140), v671), v668), 6uLL);
  v674[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v669, xmmword_29D2F1140), v671), v669), 6uLL);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(int64x2_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 256, a2, *a3);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 4, 256, v5, a3[1]);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 64, 256, v6, a3[2]);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 68, 256, v7, a3[3]);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 8, 256, v8, a3[4]);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 12, 256, v9, a3[5]);
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 72, 256, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 76, 256, v10 + v11, v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(uint64_t a1, _BYTE *a2, int16x8_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (a3 + 2 * a4);
  v10 = *v8;
  v11 = v8[1];
  v12 = v8[2];
  v13 = v8[3];
  v9 = (v8 + a4);
  v14 = v9[2];
  v15 = vshrq_n_s16(*a3, 6uLL);
  v16 = vshrq_n_s16(a3[1], 6uLL);
  v17 = vshrq_n_s16(*(a3 + a4), 6uLL);
  v18 = vshrq_n_s16(*(&a3[1] + a4), 6uLL);
  v19 = vshrq_n_s16(a3[2], 6uLL);
  v20 = vshrq_n_s16(a3[3], 6uLL);
  v21 = vshrq_n_s16(*(&a3[2] + a4), 6uLL);
  v22 = vshrq_n_s16(v10, 6uLL);
  v23 = vshrq_n_s16(v11, 6uLL);
  v24 = vshrq_n_s16(*v9, 6uLL);
  v472 = vshrq_n_s16(v9[1], 6uLL);
  v25 = vshrq_n_s16(v12, 6uLL);
  v26 = vshrq_n_s16(v13, 6uLL);
  v27 = vshrq_n_s16(v9[3], 6uLL);
  v28 = vshrq_n_s16(*(&a3[3] + a4), 6uLL);
  v493 = vdupq_lane_s64(v15.i64[0], 0);
  v29 = vsubq_s16(v15, v493);
  v464 = v15;
  v466 = v16;
  v467 = v17;
  v468 = v18;
  v30 = v27;
  v473 = vshrq_n_s16(vshlq_n_s16(v29, 6uLL), 6uLL);
  v475 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v16, v493), 6uLL), 6uLL);
  v477 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v17, v493), 6uLL), 6uLL);
  v479 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v18, v493), 6uLL), 6uLL);
  v481 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v19, v493), 6uLL), 6uLL);
  v482 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v20, v493), 6uLL), 6uLL);
  v31 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v473, v475), v477), v479), xmmword_29D2F1150);
  v32 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v473, v475), v477), v479), xmmword_29D2F1150);
  v33 = vpmaxq_s16(v31, v31);
  v34 = vpminq_s16(v32, v32);
  v35 = vzip1q_s16(v33, v34);
  v36.i64[0] = 0x10001000100010;
  v36.i64[1] = 0x10001000100010;
  v37 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v35)), vceqzq_s16(v35));
  v483 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v21, v493), 6uLL), 6uLL);
  v484 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v28, v493), 6uLL), 6uLL);
  v485 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v22, v493), 6uLL), 6uLL);
  v486 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v23, v493), 6uLL), 6uLL);
  v38.i64[0] = 0x8000800080008000;
  v38.i64[1] = 0x8000800080008000;
  v39.i64[0] = 0x8000800080008000;
  v39.i64[1] = 0x8000800080008000;
  v40 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v481, v482), v483), v484), xmmword_29D2F1150);
  v41 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v481, v482), v483), v484), xmmword_29D2F1150);
  v42 = vpmaxq_s16(v40, v40);
  v43 = vpminq_s16(v41, v41);
  v44 = vmaxq_s16(vmaxq_s16(v33, v38), v42);
  v45 = vminq_s16(vminq_s16(v34, v39), v43);
  v46 = vzip1q_s16(v42, v43);
  v47 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v46)), vceqzq_s16(v46));
  v487 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v24, v493), 6uLL), 6uLL);
  v488 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v472, v493), 6uLL), 6uLL);
  v489 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v25, v493), 6uLL), 6uLL);
  v490 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v26, v493), 6uLL), 6uLL);
  v48 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v485, v486), v487), v488), xmmword_29D2F1150);
  v49 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v485, v486), v487), v488), xmmword_29D2F1150);
  v50 = vpmaxq_s16(v48, v48);
  v51 = vpminq_s16(v49, v49);
  v52 = vmaxq_s16(v44, v50);
  v53 = vminq_s16(v45, v51);
  v54 = vzip1q_s16(v50, v51);
  v55 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v54)), vceqzq_s16(v54));
  v469 = v25;
  v470 = v26;
  v471 = vshrq_n_s16(v14, 6uLL);
  v491 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v471, v493), 6uLL), 6uLL);
  v492 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v30, v493), 6uLL), 6uLL);
  v56 = vpmaxq_s16(v37, v37);
  v57 = vpmaxq_s16(v47, v47);
  v58 = vpmaxq_s16(v55, v55);
  v59 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v489, v490), v491), v492), xmmword_29D2F1150);
  v60 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v489, v490), v491), v492), xmmword_29D2F1150);
  v61 = vpmaxq_s16(v59, v59);
  v62 = vpminq_s16(v60, v60);
  v63 = vmaxq_s16(v52, v61);
  v64 = vminq_s16(v53, v62);
  v65 = vzip1q_s16(v61, v62);
  v66 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v65)), vceqzq_s16(v65));
  v67 = vpmaxq_s16(v66, v66);
  v68 = vmaxq_s16(vmaxq_s16(v56, v57), vmaxq_s16(v58, v67));
  v69 = vclzq_s16(vsubq_s16(v63, v64));
  v70.i64[0] = 0xF000F000F000FLL;
  v70.i64[1] = 0xF000F000F000FLL;
  v71.i64[0] = -1;
  v71.i64[1] = -1;
  v500 = v64;
  v501 = v63;
  v72 = vsubq_s16(v36, v69);
  v73 = vsubq_s16(vshlq_s16(v71, vsubq_s16(v70, v69)), v64);
  v74 = vcgtq_s16(v68, v72);
  v75 = vminq_s16(v72, v68);
  v502 = vandq_s8(v73, v74);
  v73.i64[0] = 0x8000800080008;
  v73.i64[1] = 0x8000800080008;
  v76.i64[0] = 0x3000300030003;
  v76.i64[1] = 0x3000300030003;
  v77 = vorrq_s8(vandq_s8(vceqzq_s16(v75), v76), vorrq_s8(vandq_s8(v74, v73), 0));
  v78 = vmaxq_s16(vminq_s16(vsubq_s16(v75, v57), v76), 0);
  v79 = vmaxq_s16(vminq_s16(vsubq_s16(v75, v58), v76), 0);
  v496 = vsubq_s16(v75, v78);
  v497 = vsubq_s16(v75, v79);
  v80 = vmaxq_s16(vminq_s16(vsubq_s16(v75, v67), v76), 0);
  v498 = vsubq_s16(v75, v80);
  v499 = v75;
  v81 = vmaxq_s16(vminq_s16(vsubq_s16(v75, v56), v76), 0);
  v16.i64[0] = 0x4000400040004;
  v16.i64[1] = 0x4000400040004;
  v82 = vorrq_s8(vbicq_s8(v16, vceqq_s16(vaddq_s16(v80, v79), vnegq_s16(vaddq_s16(v81, v78)))), v77);
  v494 = v82;
  v495 = vsubq_s16(v75, v81);
  if (vmaxvq_s16(v75))
  {
    v456 = v30;
    v458 = v22;
    v459 = v23;
    v460 = v24;
    v457 = v28;
    v461 = v19;
    v462 = v20;
    v463 = v21;
    v83 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v473, vqtbl1q_s8(v473, xmmword_29D2F1140)), 6uLL), 6uLL);
    v84 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v475, vqtbl1q_s8(v475, xmmword_29D2F1140)), 6uLL), 6uLL);
    v85 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v477, vqtbl1q_s8(v477, xmmword_29D2F1140)), 6uLL), 6uLL);
    v86 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v479, vqtbl1q_s8(v479, xmmword_29D2F1140)), 6uLL), 6uLL);
    v87 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v481, vqtbl1q_s8(v481, xmmword_29D2F1140)), 6uLL), 6uLL);
    v88.i64[0] = 0x4000400040004;
    v88.i64[1] = 0x4000400040004;
    v89 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v482, vqtbl1q_s8(v482, xmmword_29D2F1140)), 6uLL), 6uLL);
    v90 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v489, vqtbl1q_s8(v489, xmmword_29D2F1140)), 6uLL), 6uLL);
    v91 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v490, vqtbl1q_s8(v490, xmmword_29D2F1140)), 6uLL), 6uLL);
    v92 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v491, vqtbl1q_s8(v491, xmmword_29D2F1140)), 6uLL), 6uLL);
    v93 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v492, vqtbl1q_s8(v492, xmmword_29D2F1140)), 6uLL), 6uLL);
    v94 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v83, v84), v85), v86), xmmword_29D2F1150);
    v95 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v83, v84), v85), v86), xmmword_29D2F1150);
    v96 = vpmaxq_s16(v94, v94);
    v97 = vpminq_s16(v95, v95);
    v98 = vmaxq_s16(v96, v38);
    v99 = vminq_s16(v97, v39);
    v100 = vzip1q_s16(v96, v97);
    v101 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v100)), vceqzq_s16(v100));
    v102 = vpmaxq_s16(v101, v101);
    v444 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v484, vqtbl1q_s8(v484, xmmword_29D2F1140)), 6uLL), 6uLL);
    v446 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v483, vqtbl1q_s8(v483, xmmword_29D2F1140)), 6uLL), 6uLL);
    v103 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v87, v89), v446), v444), xmmword_29D2F1150);
    v104 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v87, v89), v446), v444), xmmword_29D2F1150);
    v105 = vpmaxq_s16(v103, v103);
    v106 = vpminq_s16(v104, v104);
    v107 = vmaxq_s16(v98, v105);
    v108 = vminq_s16(v99, v106);
    v109 = vzip1q_s16(v105, v106);
    v110 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v109)), vceqzq_s16(v109));
    v111 = vpmaxq_s16(v110, v110);
    v448 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v486, vqtbl1q_s8(v486, xmmword_29D2F1140)), 6uLL), 6uLL);
    v450 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v485, vqtbl1q_s8(v485, xmmword_29D2F1140)), 6uLL), 6uLL);
    v452 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v488, vqtbl1q_s8(v488, xmmword_29D2F1140)), 6uLL), 6uLL);
    v454 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v487, vqtbl1q_s8(v487, xmmword_29D2F1140)), 6uLL), 6uLL);
    v112 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v450, v448), v454), v452), xmmword_29D2F1150);
    v113 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v450, v448), v454), v452), xmmword_29D2F1150);
    v114 = vpmaxq_s16(v112, v112);
    v115 = vpminq_s16(v113, v113);
    v116 = vmaxq_s16(v107, v114);
    v117 = vminq_s16(v108, v115);
    v118 = vzip1q_s16(v114, v115);
    v119 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v118)), vceqzq_s16(v118));
    v120 = vpmaxq_s16(v119, v119);
    v121 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v90, v91), v92), v93), xmmword_29D2F1150);
    v122 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v90, v91), v92), v93), xmmword_29D2F1150);
    v123 = vpmaxq_s16(v121, v121);
    v124 = vpminq_s16(v122, v122);
    v125 = vmaxq_s16(v116, v123);
    v126 = vminq_s16(v117, v124);
    v127 = vzip1q_s16(v123, v124);
    v128 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v127)), vceqzq_s16(v127));
    v129 = vpmaxq_s16(v128, v128);
    v130 = vmaxq_s16(vmaxq_s16(v102, v111), vmaxq_s16(v120, v129));
    v131 = vclzq_s16(vsubq_s16(v125, v126));
    v132 = vsubq_s16(v36, v131);
    v133 = vcgtq_s16(v130, v132);
    v134 = vminq_s16(v132, v130);
    v135 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v102), v76), 0);
    v136 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v111), v76), 0);
    v137 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v120), v76), 0);
    v138 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v129), v76), 0);
    v139 = vbicq_s8(v88, vceqq_s16(vaddq_s16(v138, v137), vnegq_s16(vaddq_s16(v135, v136))));
    v132.i64[0] = 0x18001800180018;
    v132.i64[1] = 0x18001800180018;
    v140 = vbslq_s8(v133, v132, v36);
    v438 = vsubq_s16(v134, v136);
    v440 = vsubq_s16(v134, v137);
    v442 = vsubq_s16(v134, v138);
    v137.i64[0] = 0x7000700070007;
    v137.i64[1] = 0x7000700070007;
    v436 = vsubq_s16(v134, v135);
    v135.i64[0] = 0x8000800080008;
    v135.i64[1] = 0x8000800080008;
    v141.i64[0] = 0x2000200020002;
    v141.i64[1] = 0x2000200020002;
    v142 = vandq_s8(vceqq_s16(vandq_s8(v77, v76), v141), v36);
    v143 = v498;
    v144 = v499;
    v145 = vaddq_s16(vaddq_s16(vbicq_s8(v499, vceqzq_s16(vandq_s8(v77, v135))), v142), vandq_s8(vaddq_s16(v82, v82), v135));
    v147 = v495;
    v146 = v496;
    v148 = v497;
    v149 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vmlaq_s16(v145, v495, v137), vshlq_n_s16(vaddq_s16(vaddq_s16(v497, v496), v498), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v134, vceqzq_s16((*&v140 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v139, v139)), v436, v137), vshlq_n_s16(vaddq_s16(vaddq_s16(v440, v438), v442), 3uLL))).i64[0], 0);
    v150 = vaddvq_s16(v149);
    v152 = a5 < 2 || a6 < 2;
    if (v150)
    {
      v153.i64[0] = 0x3000300030003;
      v153.i64[1] = 0x3000300030003;
      v154 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v134), v153), v140), v139);
      v155.i64[0] = 0xF000F000F000FLL;
      v155.i64[1] = 0xF000F000F000FLL;
      v473 = vbslq_s8(v149, v83, v473);
      v475 = vbslq_s8(v149, v84, v475);
      v153.i64[0] = -1;
      v153.i64[1] = -1;
      v477 = vbslq_s8(v149, v85, v477);
      v479 = vbslq_s8(v149, v86, v479);
      v481 = vbslq_s8(v149, v87, v481);
      v482 = vbslq_s8(v149, v89, v482);
      v483 = vbslq_s8(v149, v446, v483);
      v484 = vbslq_s8(v149, v444, v484);
      v485 = vbslq_s8(v149, v450, v485);
      v486 = vbslq_s8(v149, v448, v486);
      v487 = vbslq_s8(v149, v454, v487);
      v488 = vbslq_s8(v149, v452, v488);
      v489 = vbslq_s8(v149, v90, v489);
      v490 = vbslq_s8(v149, v91, v490);
      v491 = vbslq_s8(v149, v92, v491);
      v492 = vbslq_s8(v149, v93, v492);
      v147 = vbslq_s8(v149, v436, v495);
      v146 = vbslq_s8(v149, v438, v496);
      v495 = v147;
      v496 = v146;
      v148 = vbslq_s8(v149, v440, v497);
      v143 = vbslq_s8(v149, v442, v498);
      v497 = v148;
      v498 = v143;
      v500 = vbslq_s8(v149, v126, v500);
      v501 = vbslq_s8(v149, v125, v501);
      v502 = vbslq_s8(v149, vandq_s8(vsubq_s16(vshlq_s16(v153, vsubq_s16(v155, v131)), v126), v133), v502);
      v144 = vbslq_s8(v149, v134, v499);
      v499 = v144;
      v82 = vbslq_s8(v149, v154, v494);
      v493 = vbslq_s8(v149, vsubq_s16(v493, vqtbl1q_s8(v493, xmmword_29D2F1140)), v493);
      v494 = v82;
    }

    v156 = v464;
    v157 = v466;
    v158 = v467;
    v159 = v468;
    if (!v152)
    {
      v160 = vqtbl4q_s8(*v156.i8, xmmword_29D2F1160);
      v161 = vsubq_s16(v464, vqtbl4q_s8(*v156.i8, xmmword_29D2F10B0));
      v162 = vsubq_s16(v467, v160);
      v163 = vsubq_s16(v468, v160);
      v504.val[0] = v461;
      v504.val[1] = v462;
      v504.val[2] = v463;
      v504.val[3].i64[0] = v457.i64[0];
      v504.val[3].i64[1] = v468.i64[1];
      v164 = vsubq_s16(v461, vqtbl4q_s8(v504, xmmword_29D2F10B0));
      v165 = vsubq_s16(v462, vqtbl4q_s8(v504, xmmword_29D2F10F0));
      v166 = vsubq_s16(v463, vqtbl4q_s8(v504, xmmword_29D2F1160));
      v167 = vsubq_s16(v457, vqtbl4q_s8(v504, xmmword_29D2F1100));
      v505.val[0] = v458;
      v505.val[1] = v459;
      v505.val[2] = v460;
      v505.val[3].i64[0] = v472.i64[0];
      v505.val[3].i64[1] = v468.i64[1];
      v504.val[1] = vsubq_s16(v458, vqtbl4q_s8(v505, xmmword_29D2F1170));
      v504.val[2] = vsubq_s16(v459, vqtbl4q_s8(v505, xmmword_29D2F1180));
      v504.val[3] = vsubq_s16(v460, vqtbl4q_s8(v505, xmmword_29D2F10B0));
      v168 = vsubq_s16(v472, vqtbl4q_s8(v505, xmmword_29D2F10C0));
      v503.val[0] = v469;
      v503.val[1] = v470;
      v503.val[2] = v471;
      v503.val[3].i64[0] = v456.i64[0];
      v503.val[3].i64[1] = v468.i64[1];
      v505.val[1].i64[0] = v163.i64[0];
      v505.val[1].i64[1] = v161.i64[0];
      v161.i64[0] = v163.i64[1];
      v504.val[0] = vshlq_n_s16(vsubq_s16(v469, vqtbl4q_s8(v503, xmmword_29D2F1170)), 6uLL);
      v505.val[0] = vshlq_n_s16(vsubq_s16(v470, vqtbl4q_s8(v503, xmmword_29D2F1120)), 6uLL);
      v169 = vshlq_n_s16(vsubq_s16(v471, vqtbl4q_s8(v503, xmmword_29D2F10B0)), 6uLL);
      v170 = vshlq_n_s16(vsubq_s16(v456, vqtbl4q_s8(v503, xmmword_29D2F10C0)), 6uLL);
      v171 = vshrq_n_s16(vshlq_n_s16(v161, 6uLL), 6uLL);
      v172 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v466, vqtbl4q_s8(*v156.i8, xmmword_29D2F10C0)), 6uLL), 6uLL);
      v173 = vshrq_n_s16(vshlq_n_s16(v162, 6uLL), 6uLL);
      v174 = vshrq_n_s16(vshlq_n_s16(v505.val[1], 6uLL), 6uLL);
      v175 = vshrq_n_s16(vshlq_n_s16(v164, 6uLL), 6uLL);
      v503.val[2] = vshrq_n_s16(vshlq_n_s16(v165, 6uLL), 6uLL);
      v503.val[0] = vshrq_n_s16(vshlq_n_s16(v166, 6uLL), 6uLL);
      v176 = vshrq_n_s16(vshlq_n_s16(v504.val[1], 6uLL), 6uLL);
      v505.val[1] = vshrq_n_s16(vshlq_n_s16(v504.val[2], 6uLL), 6uLL);
      v177 = vshrq_n_s16(vshlq_n_s16(v504.val[3], 6uLL), 6uLL);
      v178 = vshrq_n_s16(v504.val[0], 6uLL);
      v179 = vshrq_n_s16(v505.val[0], 6uLL);
      v180 = vshrq_n_s16(v169, 6uLL);
      v181 = vshrq_n_s16(v170, 6uLL);
      v182 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v171, v172), v173), v174), xmmword_29D2F1150);
      v183 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v171, v172), v173), v174), xmmword_29D2F1150);
      v184 = vpmaxq_s16(v182, v182);
      v185 = vpminq_s16(v183, v183);
      v170.i64[0] = 0x8000800080008000;
      v170.i64[1] = 0x8000800080008000;
      v186 = vmaxq_s16(v184, v170);
      v164.i64[0] = 0x8000800080008000;
      v164.i64[1] = 0x8000800080008000;
      v187 = vminq_s16(v185, v164);
      v188 = vzip1q_s16(v184, v185);
      v505.val[3].i64[0] = 0x10001000100010;
      v505.val[3].i64[1] = 0x10001000100010;
      v189 = vbicq_s8(vsubq_s16(v505.val[3], vclsq_s16(v188)), vceqzq_s16(v188));
      v190 = vpmaxq_s16(v189, v189);
      v443 = v503.val[2];
      v445 = v175;
      v447 = vshrq_n_s16(vshlq_n_s16(v167, 6uLL), 6uLL);
      v449 = v503.val[0];
      v191 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v175, v503.val[2]), v503.val[0]), v447), xmmword_29D2F1150);
      v192 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v175, v503.val[2]), v503.val[0]), v447), xmmword_29D2F1150);
      v193 = vpmaxq_s16(v191, v191);
      v194 = vpminq_s16(v192, v192);
      v195 = vmaxq_s16(v186, v193);
      v196 = vminq_s16(v187, v194);
      v197 = vzip1q_s16(v193, v194);
      v198 = vbicq_s8(vsubq_s16(v505.val[3], vclsq_s16(v197)), vceqzq_s16(v197));
      v199 = vpmaxq_s16(v198, v198);
      v451 = v505.val[1];
      v453 = v176;
      v465 = v177;
      v455 = vshrq_n_s16(vshlq_n_s16(v168, 6uLL), 6uLL);
      v200 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v176, v505.val[1]), v177), v455), xmmword_29D2F1150);
      v201 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v176, v505.val[1]), v177), v455), xmmword_29D2F1150);
      v202 = vpmaxq_s16(v200, v200);
      v203 = vpminq_s16(v201, v201);
      v204 = vmaxq_s16(v195, v202);
      v205 = vminq_s16(v196, v203);
      v206 = vzip1q_s16(v202, v203);
      v207 = vbicq_s8(vsubq_s16(v505.val[3], vclsq_s16(v206)), vceqzq_s16(v206));
      v208 = vpmaxq_s16(v207, v207);
      v209 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v178, v179), v180), v181), xmmword_29D2F1150);
      v210 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v178, v179), v180), v181), xmmword_29D2F1150);
      v211 = vpmaxq_s16(v209, v209);
      v212 = vpminq_s16(v210, v210);
      v213 = vmaxq_s16(v204, v211);
      v214 = vminq_s16(v205, v212);
      v215 = vzip1q_s16(v211, v212);
      v216 = vbicq_s8(vsubq_s16(v505.val[3], vclsq_s16(v215)), vceqzq_s16(v215));
      v217 = vpmaxq_s16(v216, v216);
      v218 = vmaxq_s16(vmaxq_s16(v190, v199), vmaxq_s16(v208, v217));
      v219 = v214;
      v220 = vclzq_s16(vsubq_s16(v213, v214));
      v221 = vsubq_s16(v505.val[3], v220);
      v222 = vcgtq_s16(v218, v221);
      v223 = vminq_s16(v221, v218);
      v218.i64[0] = 0x3000300030003;
      v218.i64[1] = 0x3000300030003;
      v224 = vmaxq_s16(vminq_s16(vsubq_s16(v223, v190), v218), 0);
      v225 = vmaxq_s16(vminq_s16(vsubq_s16(v223, v199), v218), 0);
      v226 = vmaxq_s16(vminq_s16(vsubq_s16(v223, v208), v218), 0);
      v227 = vmaxq_s16(vminq_s16(vsubq_s16(v223, v217), v218), 0);
      v505.val[1] = vsubq_s16(v223, v224);
      v228 = vsubq_s16(v223, v225);
      v229 = vsubq_s16(v223, v227);
      v230 = vceqq_s16(vaddq_s16(v227, v226), vnegq_s16(vaddq_s16(v224, v225)));
      v225.i64[0] = 0x4000400040004;
      v225.i64[1] = 0x4000400040004;
      v231 = vbicq_s8(v225, v230);
      v227.i64[0] = 0x7000700070007;
      v227.i64[1] = 0x7000700070007;
      v439 = vsubq_s16(v223, v226);
      v441 = v228;
      v437 = v505.val[1];
      v232 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v223, v222), vaddq_s16(v231, v231)), v505.val[1], v227), vshlq_n_s16(vaddq_s16(vaddq_s16(v439, v228), v229), 3uLL));
      v82 = v494;
      v147 = v495;
      v233.i64[0] = 0x2000200020002;
      v233.i64[1] = 0x2000200020002;
      v234 = vandq_s8(vceqq_s16(vandq_s8(v494, v218), v233), v505.val[3]);
      v218.i64[0] = 0x8000800080008;
      v218.i64[1] = 0x8000800080008;
      v143 = v498;
      v144 = v499;
      v146 = v496;
      v148 = v497;
      v235 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v499, vceqzq_s16(vandq_s8(v494, v218))), vandq_s8(vaddq_s16(v82, v82), v218)), v234), v495, v227), vshlq_n_s16(vaddq_s16(vaddq_s16(v497, v496), v498), 3uLL)), v232).i64[0], 0);
      if (vaddvq_s16(v235))
      {
        v236.i64[0] = 0x9000900090009;
        v236.i64[1] = 0x9000900090009;
        v237.i64[0] = 0xF000F000F000FLL;
        v237.i64[1] = 0xF000F000F000FLL;
        v238.i64[0] = -1;
        v238.i64[1] = -1;
        v147 = vbslq_s8(v235, v437, v495);
        v146 = vbslq_s8(v235, v441, v496);
        v148 = vbslq_s8(v235, v439, v497);
        v143 = vbslq_s8(v235, v229, v498);
        v144 = vbslq_s8(v235, v223, v499);
        v82 = vbslq_s8(v235, vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v223), v233), vsubq_s16(vandq_s8(v222, v236), vmvnq_s8(v222))), v231), v494);
        v492 = vbslq_s8(v235, v181, v492);
        v493 = vbslq_s8(v235, vextq_s8(v468, v468, 8uLL), v493);
        v473 = vbslq_s8(v235, v171, v473);
        v475 = vbslq_s8(v235, v172, v475);
        v477 = vbslq_s8(v235, v173, v477);
        v479 = vbslq_s8(v235, v174, v479);
        v481 = vbslq_s8(v235, v445, v481);
        v482 = vbslq_s8(v235, v443, v482);
        v483 = vbslq_s8(v235, v449, v483);
        v484 = vbslq_s8(v235, v447, v484);
        v485 = vbslq_s8(v235, v453, v485);
        v486 = vbslq_s8(v235, v451, v486);
        v487 = vbslq_s8(v235, v465, v487);
        v488 = vbslq_s8(v235, v455, v488);
        v489 = vbslq_s8(v235, v178, v489);
        v490 = vbslq_s8(v235, v179, v490);
        v491 = vbslq_s8(v235, v180, v491);
        v500 = vbslq_s8(v235, v219, v500);
        v501 = vbslq_s8(v235, v213, v501);
        v502 = vbslq_s8(v235, vandq_s8(vsubq_s16(vshlq_s16(v238, vsubq_s16(v237, v220)), v219), v222), v502);
        v495 = v147;
        v496 = v146;
        v497 = v148;
        v498 = v143;
        v499 = v144;
        v494 = v82;
      }
    }

    v239 = vandq_s8(v502, vceqq_s16(v144, v147));
    v474 = vaddq_s16(v239, v473);
    v476 = vaddq_s16(v475, v239);
    v478 = vaddq_s16(v477, v239);
    v480 = vaddq_s16(v479, v239);
    v240 = vandq_s8(v502, vceqq_s16(v144, v146));
    v481 = vaddq_s16(v481, v240);
    v482 = vaddq_s16(v482, v240);
    v483 = vaddq_s16(v483, v240);
    v484 = vaddq_s16(v484, v240);
    v241 = vandq_s8(v502, vceqq_s16(v144, v148));
    v485 = vaddq_s16(v485, v241);
    v486 = vaddq_s16(v486, v241);
    v487 = vaddq_s16(v487, v241);
    v488 = vaddq_s16(v488, v241);
    v242 = vandq_s8(v502, vceqq_s16(v144, v143));
    v489 = vaddq_s16(v489, v242);
    v490 = vaddq_s16(v490, v242);
    v491 = vaddq_s16(v491, v242);
    v492 = vaddq_s16(v492, v242);
    v242.i64[0] = 0x8000800080008;
    v242.i64[1] = 0x8000800080008;
    v243.i64[0] = 0x3000300030003;
    v243.i64[1] = 0x3000300030003;
    v244.i64[0] = 0x2000200020002;
    v244.i64[1] = 0x2000200020002;
    v245 = vceqq_s16(vandq_s8(v82, v243), v244);
    v244.i64[0] = 0x10001000100010;
    v244.i64[1] = 0x10001000100010;
    v246 = vandq_s8(v245, v244);
    v244.i64[0] = 0x7000700070007;
    v244.i64[1] = 0x7000700070007;
    v247 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v144, vceqzq_s16(vandq_s8(v82, v242))), vandq_s8(vaddq_s16(v82, v82), v242)), v246), v147, v244), vshlq_n_s16(vaddq_s16(vaddq_s16(v148, v146), v143), 3uLL));
    v248 = vpaddq_s16(v247, v247);
    if ((vpaddq_s16(v248, v248).i16[0] + 83) > 0x4FF)
    {
      AGX::AppleCompressionGen2::writePackedUncompressedSubblock<(AGX::AppleCompressionGen2::PixelFormat)19,AGX::AppleCompressionGen2::VecArray<short,4ul>>(a1, a2, v156, v466, v467, v468, v461, v462, v463, v457, a3, a4, a5, a6, a7, a8, v458, v459, v460, v472, v469, v470, v471, v456);
      return 160;
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
      v255 = v493.i64[0];
      if (v144.i16[0])
      {
        v256 = ((v144.i8[0] - 1) & 0xF) << 20;
      }

      else
      {
        v256 = 0;
      }

      if (v144.i16[1])
      {
        v257 = ((v144.i8[2] - 1) & 0xF) << 24;
      }

      else
      {
        v257 = 0;
      }

      if (v144.i16[2])
      {
        v258 = (v144.u16[2] << 28) - 0x10000000;
      }

      else
      {
        v258 = 0;
      }

      if (v144.i16[3])
      {
        v259 = ((v144.i8[6] - 1) & 0xF) << 32;
      }

      else
      {
        v259 = 0;
      }

      v260 = (v82.i8[0] & 0x1F | (32 * (v82.i8[2] & 0x1F)) & 0x83FF | ((v82.i8[4] & 0x1F) << 10) | ((v82.i8[6] & 0x1F) << 15) | v256 | v257 | v258) + v259;
      v261 = (v260 << v250) | v251;
      if (v250 >= 0x1C)
      {
        *v249 = v261;
        v261 = v260 >> (-8 * (a1 & 7u));
      }

      v262 = v255 & 0x3FF | ((WORD1(v255) & 0x3FF) << 10) & 0xFFFFFFFFC00FFFFFLL | ((WORD2(v255) & 0x3FF) << 20) | ((HIWORD(v255) & 0x3FF) << 30);
      v263 = (v250 + 36) & 0x3C;
      v264 = v261 | (v262 << v263);
      if (v263 >= 0x18)
      {
        *(v249 + (((v250 + 36) >> 3) & 8)) = v264;
        v264 = v262 >> -v263;
      }

      v265 = v250 + 76;
      v266 = vsubq_s16(v499, v495);
      v267 = vsubq_s16(v499, v496);
      v268 = vsubq_s16(v499, v497);
      v269 = vsubq_s16(v499, v498);
      *v266.i8 = vqmovn_u16(v266);
      *v267.i8 = vqmovn_u16(v267);
      *v268.i8 = vqmovn_u16(v268);
      *v269.i8 = vqmovn_u16(v269);
      v270 = vtrn1q_s8(v266, v267);
      v271 = vtrn2q_s8(v266, v267);
      v272 = vtrn1q_s8(v268, v269);
      v273 = vtrn2q_s8(v268, v269);
      v274 = vzip1q_s16(v271, v273);
      v275 = vtrn2q_s16(v271, v273);
      v271.i64[0] = vzip1q_s32(vzip1q_s16(v270, v272), v274).u64[0];
      v275.i64[0] = vzip1q_s32(vtrn2q_s16(v270, v272), v275).u64[0];
      v268.i64[0] = 0x202020202020202;
      v268.i64[1] = 0x202020202020202;
      v276 = vandq_s8(vmovl_s16(vtst_s16(*v494.i8, 0x4000400040004)), v268);
      v268.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v268.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v270.i64[0] = -1;
      v270.i64[1] = -1;
      v277 = vshlq_u8(v270, vorrq_s8(v276, v268));
      v278 = vmovl_u8(vand_s8(*v277.i8, *v271.i8));
      v279 = vmovl_u8(vand_s8(*&vextq_s8(v277, v277, 8uLL), *v275.i8));
      v280 = vmovl_u8(*v276.i8);
      v281 = vmovl_high_u8(v276);
      v282 = vpaddq_s16(vshlq_u16(v278, vtrn1q_s16(0, v280)), vshlq_u16(v279, vtrn1q_s16(0, v281)));
      v283 = vpaddq_s16(v280, v281);
      v284 = vmovl_u16(*v283.i8);
      v285 = vmovl_high_u16(v283);
      v286 = vpaddq_s32(vshlq_u32(vmovl_u16(*v282.i8), vtrn1q_s32(0, v284)), vshlq_u32(vmovl_high_u16(v282), vtrn1q_s32(0, v285)));
      v287 = vpaddq_s32(v284, v285);
      v288.i64[0] = v286.u32[0];
      v288.i64[1] = v286.u32[1];
      v289 = v288;
      v288.i64[0] = v286.u32[2];
      v288.i64[1] = v286.u32[3];
      v290 = v288;
      v288.i64[0] = v287.u32[0];
      v288.i64[1] = v287.u32[1];
      v291 = v288;
      v288.i64[0] = v287.u32[2];
      v288.i64[1] = v287.u32[3];
      v292 = vpaddq_s64(vshlq_u64(v289, vzip1q_s64(0, v291)), vshlq_u64(v290, vzip1q_s64(0, v288)));
      v293 = vpaddq_s64(v291, v288);
      v294 = (v250 + 76) & 0x3C;
      v295 = (v292.i64[0] << v294) | v264;
      if ((v293.i64[0] + v294) >= 0x40)
      {
        *(v249 + ((v265 >> 3) & 0x18)) = v295;
        v295 = v292.i64[0] >> -v294;
      }

      v296 = v293.i64[0] + v265;
      v297 = v295 | (v292.i64[1] << v296);
      if ((v296 & 0x3F) + v293.i64[1] >= 0x40)
      {
        *(v249 + ((v296 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v297;
        v297 = v292.i64[1] >> -(v296 & 0x3F);
        if ((v296 & 0x3F) == 0)
        {
          v297 = 0;
        }
      }

      v298 = v296 + v293.i64[1];
      v299.i64[0] = 0x8000800080008;
      v299.i64[1] = 0x8000800080008;
      v300.i64[0] = -1;
      v300.i64[1] = -1;
      v301 = vandq_s8(vextq_s8(vtstq_s16(v494, v299), 0, 8uLL), v499);
      v302.i64[0] = 0xF000F000F000FLL;
      v302.i64[1] = 0xF000F000F000FLL;
      v303 = vandq_s8(vshlq_u16(v300, vaddq_s16(v301, v302)), v502);
      v304 = vmovl_u16(*v301.i8);
      v305 = vpaddq_s32(vshlq_u32(vmovl_u16(*v303.i8), vtrn1q_s32(0, v304)), vmovl_high_u16(v303));
      v306 = vpaddq_s32(v304, vmovl_high_u16(v301));
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
      v313 = (v311.i64[0] << v298) | v297;
      if (v312.i64[0] + (v298 & 0x3F) >= 0x40)
      {
        *(v249 + ((v298 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v313;
        v313 = v311.i64[0] >> -(v298 & 0x3F);
        if ((v298 & 0x3F) == 0)
        {
          v313 = 0;
        }
      }

      v314 = v312.i64[0] + v298;
      v315 = v313 | (v311.i64[1] << v314);
      if ((v314 & 0x3F) + v312.i64[1] >= 0x40)
      {
        *(v249 + ((v314 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v315;
        v315 = v311.i64[1] >> -(v314 & 0x3F);
        if ((v314 & 0x3F) == 0)
        {
          v315 = 0;
        }
      }

      v316 = v314 + v312.i64[1];
      v317 = vextq_s8(0, v495, 8uLL);
      v318.i64[0] = 0xF000F000F000FLL;
      v318.i64[1] = 0xF000F000F000FLL;
      v319.i64[0] = -1;
      v319.i64[1] = -1;
      v320 = vandq_s8(vshlq_u16(v319, vaddq_s16(v317, v318)), v474);
      v321 = vmovl_u16(*v317.i8);
      v322 = vmovl_high_u16(v317);
      v323 = vpaddq_s32(vmovl_u16(*v320.i8), vshlq_u32(vmovl_high_u16(v320), vtrn1q_s32(0, v322)));
      v324 = vpaddq_s32(v321, v322);
      v325.i64[0] = v323.u32[0];
      v325.i64[1] = v323.u32[1];
      v326 = v325;
      v325.i64[0] = v323.u32[2];
      v325.i64[1] = v323.u32[3];
      v327 = v325;
      v325.i64[0] = v324.u32[0];
      v325.i64[1] = v324.u32[1];
      v328 = v325;
      v325.i64[0] = v324.u32[2];
      v325.i64[1] = v324.u32[3];
      v329 = vpaddq_s64(vshlq_u64(v326, vzip1q_s64(0, v328)), vshlq_u64(v327, vzip1q_s64(0, v325)));
      v330 = vpaddq_s64(v328, v325);
      v331 = (v329.i64[0] << v316) | v315;
      if (v330.i64[0] + (v316 & 0x3F) >= 0x40)
      {
        *(v249 + ((v316 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v331;
        v331 = v329.i64[0] >> -(v316 & 0x3F);
        if ((v316 & 0x3F) == 0)
        {
          v331 = 0;
        }
      }

      v332 = v330.i64[0] + v316;
      v333 = v331 | (v329.i64[1] << v332);
      if ((v332 & 0x3F) + v330.i64[1] >= 0x40)
      {
        *(v249 + ((v332 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v333;
        v333 = v329.i64[1] >> -(v332 & 0x3F);
        if ((v332 & 0x3F) == 0)
        {
          v333 = 0;
        }
      }

      v334 = v332 + v330.i64[1];
      v335.i64[0] = 0xF000F000F000FLL;
      v335.i64[1] = 0xF000F000F000FLL;
      v336.i64[0] = -1;
      v336.i64[1] = -1;
      v337 = vandq_s8(vshlq_u16(v336, vaddq_s16(v495, v335)), v476);
      v338 = vmovl_u16(*v495.i8);
      v339 = vmovl_high_u16(v495);
      v340 = vpaddq_s32(vshlq_u32(vmovl_u16(*v337.i8), vtrn1q_s32(0, v338)), vshlq_u32(vmovl_high_u16(v337), vtrn1q_s32(0, v339)));
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
      v348 = (v346.i64[0] << v334) | v333;
      if (v347.i64[0] + (v334 & 0x3F) >= 0x40)
      {
        *(v249 + ((v334 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v348;
        v348 = v346.i64[0] >> -(v334 & 0x3F);
        if ((v334 & 0x3F) == 0)
        {
          v348 = 0;
        }
      }

      v349 = v347.i64[0] + v334;
      v350 = v348 | (v346.i64[1] << v349);
      if ((v349 & 0x3F) + v347.i64[1] >= 0x40)
      {
        *(v249 + ((v349 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v350;
        v350 = v346.i64[1] >> -(v349 & 0x3F);
        if ((v349 & 0x3F) == 0)
        {
          v350 = 0;
        }
      }

      v351 = v349 + v347.i64[1];
      v352.i64[0] = 0xF000F000F000FLL;
      v352.i64[1] = 0xF000F000F000FLL;
      v353.i64[0] = -1;
      v353.i64[1] = -1;
      v354 = vandq_s8(vshlq_u16(v353, vaddq_s16(v495, v352)), v478);
      v355 = vmovl_u16(*v495.i8);
      v356 = vmovl_high_u16(v495);
      v357 = vpaddq_s32(vshlq_u32(vmovl_u16(*v354.i8), vtrn1q_s32(0, v355)), vshlq_u32(vmovl_high_u16(v354), vtrn1q_s32(0, v356)));
      v358 = vpaddq_s32(v355, v356);
      v359.i64[0] = v357.u32[0];
      v359.i64[1] = v357.u32[1];
      v360 = v359;
      v359.i64[0] = v357.u32[2];
      v359.i64[1] = v357.u32[3];
      v361 = v359;
      v359.i64[0] = v358.u32[0];
      v359.i64[1] = v358.u32[1];
      v362 = v359;
      v359.i64[0] = v358.u32[2];
      v359.i64[1] = v358.u32[3];
      v363 = vpaddq_s64(vshlq_u64(v360, vzip1q_s64(0, v362)), vshlq_u64(v361, vzip1q_s64(0, v359)));
      v364 = vpaddq_s64(v362, v359);
      v365 = (v363.i64[0] << v351) | v350;
      if (v364.i64[0] + (v351 & 0x3F) >= 0x40)
      {
        *(v249 + ((v351 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
        v365 = v363.i64[0] >> -(v351 & 0x3F);
        if ((v351 & 0x3F) == 0)
        {
          v365 = 0;
        }
      }

      v366 = v364.i64[0] + v351;
      v367 = v365 | (v363.i64[1] << v366);
      if ((v366 & 0x3F) + v364.i64[1] >= 0x40)
      {
        *(v249 + ((v366 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v367;
        v367 = v363.i64[1] >> -(v366 & 0x3F);
        if ((v366 & 0x3F) == 0)
        {
          v367 = 0;
        }
      }

      v368 = v366 + v364.i64[1];
      v369.i64[0] = 0xF000F000F000FLL;
      v369.i64[1] = 0xF000F000F000FLL;
      v370.i64[0] = -1;
      v370.i64[1] = -1;
      v371 = vandq_s8(vshlq_u16(v370, vaddq_s16(v495, v369)), v480);
      v372 = vmovl_u16(*v495.i8);
      v373 = vmovl_high_u16(v495);
      v374 = vpaddq_s32(vshlq_u32(vmovl_u16(*v371.i8), vtrn1q_s32(0, v372)), vshlq_u32(vmovl_high_u16(v371), vtrn1q_s32(0, v373)));
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
      v382 = (v380.i64[0] << v368) | v367;
      if (v381.i64[0] + (v368 & 0x3F) >= 0x40)
      {
        *(v249 + ((v368 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v382;
        v382 = v380.i64[0] >> -(v368 & 0x3F);
        if ((v368 & 0x3F) == 0)
        {
          v382 = 0;
        }
      }

      v383 = v381.i64[1];
      v384 = v381.i64[0] + v368;
      v385 = (v381.i64[0] + v368) & 0x3F;
      v386 = v382 | (v380.i64[1] << v384);
      if ((v385 + v381.i64[1]) >= 0x40)
      {
        *(v249 + ((v384 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v386;
        v386 = v380.i64[1] >> -v385;
        if (!v385)
        {
          v386 = 0;
        }
      }

      v387 = 0;
      v388.i64[0] = 0xF000F000F000FLL;
      v388.i64[1] = 0xF000F000F000FLL;
      v389.i64[0] = -1;
      v389.i64[1] = -1;
      v390 = v384 + v383;
      do
      {
        v391 = vandq_s8(vshlq_u16(v389, vaddq_s16(v496, v388)), *(&v481 + v387));
        v392 = vmovl_u16(*v496.i8);
        v393 = vmovl_high_u16(v496);
        v394 = vpaddq_s32(vshlq_u32(vmovl_u16(*v391.i8), vtrn1q_s32(0, v392)), vshlq_u32(vmovl_high_u16(v391), vtrn1q_s32(0, v393)));
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
        v402 = (v400.i64[0] << v390) | v386;
        if (v401.i64[0] + (v390 & 0x3F) >= 0x40)
        {
          *(v249 + ((v390 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v402;
          v402 = v400.i64[0] >> -(v390 & 0x3F);
          if ((v390 & 0x3F) == 0)
          {
            v402 = 0;
          }
        }

        v403 = v401.i64[0] + v390;
        v386 = v402 | (v400.i64[1] << v403);
        if ((v403 & 0x3F) + v401.i64[1] >= 0x40)
        {
          *(v249 + ((v403 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v386;
          v386 = v400.i64[1] >> -(v403 & 0x3F);
          if ((v403 & 0x3F) == 0)
          {
            v386 = 0;
          }
        }

        v390 = v403 + v401.i64[1];
        v387 += 16;
      }

      while (v387 != 64);
      v404 = 0;
      v405.i64[0] = 0xF000F000F000FLL;
      v405.i64[1] = 0xF000F000F000FLL;
      v406.i64[0] = -1;
      v406.i64[1] = -1;
      do
      {
        v407 = vandq_s8(vshlq_u16(v406, vaddq_s16(v497, v405)), *(&v485 + v404));
        v408 = vmovl_u16(*v497.i8);
        v409 = vmovl_high_u16(v497);
        v410 = vpaddq_s32(vshlq_u32(vmovl_u16(*v407.i8), vtrn1q_s32(0, v408)), vshlq_u32(vmovl_high_u16(v407), vtrn1q_s32(0, v409)));
        v411 = vpaddq_s32(v408, v409);
        v412.i64[0] = v410.u32[0];
        v412.i64[1] = v410.u32[1];
        v413 = v412;
        v412.i64[0] = v410.u32[2];
        v412.i64[1] = v410.u32[3];
        v414 = v412;
        v412.i64[0] = v411.u32[0];
        v412.i64[1] = v411.u32[1];
        v415 = v412;
        v412.i64[0] = v411.u32[2];
        v412.i64[1] = v411.u32[3];
        v416 = vpaddq_s64(vshlq_u64(v413, vzip1q_s64(0, v415)), vshlq_u64(v414, vzip1q_s64(0, v412)));
        v417 = vpaddq_s64(v415, v412);
        v418 = (v416.i64[0] << v390) | v386;
        if (v417.i64[0] + (v390 & 0x3F) >= 0x40)
        {
          *(v249 + ((v390 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v418;
          v418 = v416.i64[0] >> -(v390 & 0x3F);
          if ((v390 & 0x3F) == 0)
          {
            v418 = 0;
          }
        }

        v419 = v417.i64[0] + v390;
        v386 = v418 | (v416.i64[1] << v419);
        if ((v419 & 0x3F) + v417.i64[1] >= 0x40)
        {
          *(v249 + ((v419 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v386;
          v386 = v416.i64[1] >> -(v419 & 0x3F);
          if ((v419 & 0x3F) == 0)
          {
            v386 = 0;
          }
        }

        v390 = v419 + v417.i64[1];
        v404 += 16;
      }

      while (v404 != 64);
      v420 = 0;
      v421.i64[0] = 0xF000F000F000FLL;
      v421.i64[1] = 0xF000F000F000FLL;
      v422.i64[0] = -1;
      v422.i64[1] = -1;
      do
      {
        v423 = vandq_s8(vshlq_u16(v422, vaddq_s16(v498, v421)), *(&v489 + v420));
        v424 = vmovl_u16(*v498.i8);
        v425 = vmovl_high_u16(v498);
        v426 = vpaddq_s32(vshlq_u32(vmovl_u16(*v423.i8), vtrn1q_s32(0, v424)), vshlq_u32(vmovl_high_u16(v423), vtrn1q_s32(0, v425)));
        v427 = vpaddq_s32(v424, v425);
        v428.i64[0] = v426.u32[0];
        v428.i64[1] = v426.u32[1];
        v429 = v428;
        v428.i64[0] = v426.u32[2];
        v428.i64[1] = v426.u32[3];
        v430 = v428;
        v428.i64[0] = v427.u32[0];
        v428.i64[1] = v427.u32[1];
        v431 = v428;
        v428.i64[0] = v427.u32[2];
        v428.i64[1] = v427.u32[3];
        v432 = vpaddq_s64(vshlq_u64(v429, vzip1q_s64(0, v431)), vshlq_u64(v430, vzip1q_s64(0, v428)));
        v433 = vpaddq_s64(v431, v428);
        v434 = (v432.i64[0] << v390) | v386;
        if (v433.i64[0] + (v390 & 0x3F) >= 0x40)
        {
          *(v249 + ((v390 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v434;
          v434 = v432.i64[0] >> -(v390 & 0x3F);
          if ((v390 & 0x3F) == 0)
          {
            v434 = 0;
          }
        }

        v435 = v433.i64[0] + v390;
        v386 = v434 | (v432.i64[1] << v435);
        if ((v435 & 0x3F) + v433.i64[1] >= 0x40)
        {
          *(v249 + ((v435 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v386;
          v386 = v432.i64[1] >> -(v435 & 0x3F);
          if ((v435 & 0x3F) == 0)
          {
            v386 = 0;
          }
        }

        v390 = v435 + v433.i64[1];
        v420 += 16;
      }

      while (v420 != 64);
      if ((v390 & 0x3F) != 0)
      {
        *(v249 + ((v390 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v386;
      }

      result = (v390 - v250 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    v252 = vld1q_dup_f64(a3->i64);
    v253 = vorrq_s8(vandq_s8(vshlq_u64(v252, xmmword_29D2F1440), xmmword_29D2F1470), vandq_s8(vshlq_u64(v252, xmmword_29D2F1450), xmmword_29D2F1460));
    *v253.i8 = vorr_s8(*v253.i8, *&vextq_s8(v253, v253, 8uLL));
    *a1 = v253.i32[0];
    *(a1 + 4) = v253.i8[4];
    *a2 = 4;
    return 5;
  }

  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

    else
    {
      a6 = a6;
    }

    if (a5 >= 4)
    {
      a5 = 4;
    }

    else
    {
      a5 = a5;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6, a7, a8);
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
      v16 = v14;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v11, a4 + 1, v13 + 4, a2, v16, v15, a7, a8);
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
      v19 = v18;
    }

    if (v9 >= 4)
    {
      v20 = 4;
    }

    else
    {
      v20 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v11, a4 + 2, (v13 + v17), a2, v20, v19, a7, a8);
    v11 += result;
    if (v9 < 5)
    {
      goto LABEL_40;
    }
  }

  else
  {
    a4[2] = 0;
    if (v9 < 5)
    {
      goto LABEL_40;
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
      v21 = v18;
    }

    if (v14 >= 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = v14;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v11, a4 + 3, (v13 + v17 + 64), a2, v22, v21, a7, a8);
    v11 += result;
    goto LABEL_41;
  }

LABEL_40:
  a4[3] = 0;
LABEL_41:
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
      v25 = v23;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v11, a4 + 4, v13 + 8, a2, v25, v24, a7, a8);
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
      v28 = v26;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v11, a4 + 5, v13 + 12, a2, v28, v27, a7, a8);
    v11 += result;
  }

  else
  {
    a4[5] = 0;
    if (v9 < 9)
    {
      goto LABEL_70;
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
      v29 = v18;
    }

    if (v23 >= 4)
    {
      v30 = 4;
    }

    else
    {
      v30 = v23;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v11, a4 + 6, (v13 + v17 + 128), a2, v30, v29, a7, a8);
    v11 += result;
    if (v9 < 0xD)
    {
      goto LABEL_81;
    }

    goto LABEL_71;
  }

LABEL_70:
  a4[6] = 0;
  if (v9 < 0xD)
  {
LABEL_81:
    a4[7] = 0;
    return result;
  }

LABEL_71:
  if (v8 < 5)
  {
    goto LABEL_81;
  }

  if (v18 >= 4)
  {
    v31 = 4;
  }

  else
  {
    v31 = v18;
  }

  if (v26 >= 4)
  {
    v32 = 4;
  }

  else
  {
    v32 = v26;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v11, a4 + 7, (v13 + v17 + 192), a2, v32, v31, a7, a8);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(int64x2_t *a1, uint64_t a2, uint64_t a3, signed int a4)
{
  if (a4 > 158)
  {
    if (a4 == 159)
    {
      v54.i64[0] = 0xA000A000A000ALL;
      v54.i64[1] = 0xA000A000A000ALL;
      v55 = vmovl_u16(*&vpaddq_s16(v54, v54));
      v54.i64[0] = vpaddq_s32(v55, v55).u64[0];
      v56.i64[0] = v54.u32[0];
      v56.i64[1] = v54.u32[1];
      v57 = v56;
      v58 = vaddvq_s64(v56);
      v59 = v58;
      v60 = 0uLL;
      if (v58 > 0x80)
      {
        v264 = 0uLL;
        v265 = 0uLL;
        v266 = 0uLL;
        v256 = 0uLL;
        v257 = 0uLL;
        v258 = 0uLL;
        v259 = 0uLL;
        v263 = 0uLL;
        v262 = 0uLL;
        v261 = 0uLL;
        v260 = 0uLL;
        v284 = 0uLL;
        v283 = 0uLL;
        v282 = 0uLL;
        v281 = 0uLL;
      }

      else
      {
        v61 = (a3 & 0xFFFFFFFFFFFFFFF8);
        v62 = vzip1q_s64(0, v57);
        v63 = 8 * (a3 & 7);
        v64 = v58 + v63;
        v65 = vaddq_s64(v62, vdupq_n_s64(v63));
        v66 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v65)), vshlq_u64(vdupq_lane_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 0), vnegq_s64(v65)));
        if (v64 >= 0x81)
        {
          v66 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v61[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v65)), vshlq_u64(vdupq_laneq_s64(v61[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v65))), v66);
        }

        v67 = v64 & 0x3F;
        v68 = (v61 + 8 * (v64 >> 6));
        v69 = vaddq_s64(v62, vdupq_n_s64(v67));
        v70 = v59 + v64;
        v71 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v68, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v69)), vshlq_u64(vdupq_lane_s64(v68->i64[0], 0), vnegq_s64(v69)));
        if (v59 + v67 >= 0x81)
        {
          v71 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v68[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v69)), vshlq_u64(vdupq_laneq_s64(v68[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v69))), v71);
        }

        v72 = v70 & 0x3F;
        v73 = (v61 + 8 * (v70 >> 6));
        v74 = vaddq_s64(v62, vdupq_n_s64(v72));
        v75 = v59 + v70;
        v76 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v73, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v74)), vshlq_u64(vdupq_lane_s64(v73->i64[0], 0), vnegq_s64(v74)));
        if (v59 + v72 >= 0x81)
        {
          v76 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v73[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v74)), vshlq_u64(vdupq_laneq_s64(v73[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v74))), v76);
        }

        v77 = vextq_s8(v55, v55, 8uLL).u64[0];
        v78 = v75 & 0x3F;
        v79 = (v61 + 8 * (v75 >> 6));
        v80 = vaddq_s64(v62, vdupq_n_s64(v78));
        v81 = v59 + v75;
        v82 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v79, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v80)), vshlq_u64(vdupq_lane_s64(v79->i64[0], 0), vnegq_s64(v80)));
        if (v59 + v78 >= 0x81)
        {
          v82 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v79[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v80)), vshlq_u64(vdupq_laneq_s64(v79[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v80))), v82);
        }

        v83 = v81 & 0x3F;
        v84 = (v61 + 8 * (v81 >> 6));
        v85 = vaddq_s64(v62, vdupq_n_s64(v83));
        v86 = v59 + v81;
        v87 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v84, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v85)), vshlq_u64(vdupq_lane_s64(v84->i64[0], 0), vnegq_s64(v85)));
        if (v59 + v83 >= 0x81)
        {
          v87 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v84[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v85)), vshlq_u64(vdupq_laneq_s64(v84[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v85))), v87);
        }

        v88 = vzip1_s32(*v55.i8, v77);
        v89 = v86 & 0x3F;
        v90 = (v61 + 8 * (v86 >> 6));
        v91 = vaddq_s64(v62, vdupq_n_s64(v89));
        v92 = v59 + v86;
        v93 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v90, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v91)), vshlq_u64(vdupq_lane_s64(v90->i64[0], 0), vnegq_s64(v91)));
        if (v59 + v89 >= 0x81)
        {
          v93 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v90[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v91)), vshlq_u64(vdupq_laneq_s64(v90[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v91))), v93);
        }

        v94.i64[0] = v88.u32[0];
        v94.i64[1] = v88.u32[1];
        v95 = v94;
        v96 = v92 & 0x3F;
        v97 = (v61 + 8 * (v92 >> 6));
        v98 = vaddq_s64(v62, vdupq_n_s64(v96));
        v99 = v59 + v92;
        v100 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v97, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v98)), vshlq_u64(vdupq_lane_s64(v97->i64[0], 0), vnegq_s64(v98)));
        if (v59 + v96 >= 0x81)
        {
          v100 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v97[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v98)), vshlq_u64(vdupq_laneq_s64(v97[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v98))), v100);
        }

        v101 = vnegq_s64(v95);
        v102 = v99 & 0x3F;
        v103 = (v61 + 8 * (v99 >> 6));
        v104 = vaddq_s64(v62, vdupq_n_s64(v102));
        v105 = v59 + v99;
        v106 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v103, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v104)), vshlq_u64(vdupq_lane_s64(v103->i64[0], 0), vnegq_s64(v104)));
        if (v59 + v102 >= 0x81)
        {
          v106 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v103[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v104)), vshlq_u64(vdupq_laneq_s64(v103[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v104))), v106);
        }

        v107 = vshlq_u64(v66, v101);
        v108 = vshlq_u64(v71, v101);
        v109 = vshlq_u64(v76, v101);
        v110 = vshlq_u64(v82, v101);
        v111 = vshlq_u64(v87, v101);
        v112 = vshlq_u64(v93, v101);
        v113 = vshlq_u64(v100, v101);
        v114 = vshlq_u64(v106, v101);
        v115 = v105 & 0x3F;
        v116 = (v61 + 8 * (v105 >> 6));
        v117 = vaddq_s64(v62, vdupq_n_s64(v115));
        v118 = v59 + v105;
        v119 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v116, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v117)), vshlq_u64(vdupq_lane_s64(v116->i64[0], 0), vnegq_s64(v117)));
        if (v59 + v115 >= 0x81)
        {
          v119 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v116[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v117)), vshlq_u64(vdupq_laneq_s64(v116[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v117))), v119);
        }

        v120 = vzip2q_s64(v66, v107);
        v121 = vzip1q_s64(v66, v107);
        v122 = vzip2q_s64(v71, v108);
        v123 = vzip1q_s64(v71, v108);
        v124 = vzip2q_s64(v76, v109);
        v125 = vzip1q_s64(v76, v109);
        v126 = vzip2q_s64(v82, v110);
        v127 = vzip1q_s64(v82, v110);
        v128 = vzip2q_s64(v87, v111);
        v129 = vzip1q_s64(v87, v111);
        v130 = vzip2q_s64(v93, v112);
        v131 = vzip1q_s64(v93, v112);
        v132 = vzip2q_s64(v100, v113);
        v133 = vzip1q_s64(v100, v113);
        v134 = vzip2q_s64(v106, v114);
        v135 = vzip1q_s64(v106, v114);
        v136 = vshlq_u64(v119, v101);
        v137 = vzip2q_s64(v119, v136);
        v138 = vzip1q_s64(v119, v136);
        v139 = (v61 + 8 * (v118 >> 6));
        v140 = vaddq_s64(v62, vdupq_n_s64(v118 & 0x3F));
        v141 = v59 + v118;
        v142 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v139, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v139->i64[0], 0), vnegq_s64(v140)));
        if (v59 + (v118 & 0x3F) >= 0x81)
        {
          v142 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v139[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v139[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v142);
        }

        v143 = vuzp1q_s32(v121, v120);
        v144 = vuzp1q_s32(v123, v122);
        v145 = vuzp1q_s32(v125, v124);
        v146 = vuzp1q_s32(v127, v126);
        v147 = vuzp1q_s32(v129, v128);
        v148 = vuzp1q_s32(v131, v130);
        v149 = vuzp1q_s32(v133, v132);
        v150 = vuzp1q_s32(v135, v134);
        v151 = vuzp1q_s32(v138, v137);
        v152 = vshlq_u64(v142, v101);
        v153 = vuzp1q_s32(vzip1q_s64(v142, v152), vzip2q_s64(v142, v152));
        v154 = v59 + v141;
        v155 = v141 & 0x3F;
        v156 = vaddq_s64(v62, vdupq_n_s64(v155));
        v157 = (v61 + 8 * (v141 >> 6));
        v158 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v157, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v156)), vshlq_u64(vdupq_lane_s64(v157->i64[0], 0), vnegq_s64(v156)));
        if (v59 + v155 >= 0x81)
        {
          v158 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v157[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v156)), vshlq_u64(vdupq_laneq_s64(v157[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v156))), v158);
        }

        v159.i64[0] = 0x1000100010001;
        v159.i64[1] = 0x1000100010001;
        v160 = vshrq_n_u32(v143, 0xAuLL);
        v161 = vshrq_n_u32(v144, 0xAuLL);
        v162 = vshrq_n_u32(v145, 0xAuLL);
        v163 = vshrq_n_u32(v146, 0xAuLL);
        v164 = vshrq_n_u32(v147, 0xAuLL);
        v165 = vshrq_n_u32(v148, 0xAuLL);
        v166 = vshrq_n_u32(v149, 0xAuLL);
        v167 = vshrq_n_u32(v150, 0xAuLL);
        v168 = vshrq_n_u32(v151, 0xAuLL);
        v169 = vshrq_n_u32(v153, 0xAuLL);
        v170 = vshlq_u64(v158, v101);
        v171 = vuzp1q_s32(vzip1q_s64(v158, v170), vzip2q_s64(v158, v170));
        v172 = vshrq_n_u32(v171, 0xAuLL);
        v173 = v154 & 0x3F;
        v174 = (v61 + 8 * (v154 >> 6));
        v175 = vaddq_s64(v62, vdupq_n_s64(v173));
        v176 = v59 + v154;
        v177 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v174, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v175)), vshlq_u64(vdupq_lane_s64(v174->i64[0], 0), vnegq_s64(v175)));
        if (v59 + v173 >= 0x81)
        {
          v177 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v174[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v175)), vshlq_u64(vdupq_laneq_s64(v174[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v175))), v177);
        }

        v178 = vshlq_n_s16(v159, 0xAuLL);
        v179.i64[0] = -1;
        v179.i64[1] = -1;
        v180 = vzip2q_s32(v143, v160);
        v181 = vzip1q_s32(v143, v160);
        v182 = vzip2q_s32(v144, v161);
        v183 = vzip1q_s32(v144, v161);
        v184 = vzip2q_s32(v145, v162);
        v185 = vzip1q_s32(v145, v162);
        v186 = vzip2q_s32(v146, v163);
        v187 = vzip1q_s32(v146, v163);
        v188 = vzip2q_s32(v147, v164);
        v189 = vzip1q_s32(v147, v164);
        v190 = vzip2q_s32(v148, v165);
        v191 = vzip1q_s32(v148, v165);
        v192 = vzip2q_s32(v149, v166);
        v193 = vzip1q_s32(v149, v166);
        v194 = vzip2q_s32(v150, v167);
        v195 = vzip1q_s32(v150, v167);
        v196 = vzip2q_s32(v151, v168);
        v197 = vzip1q_s32(v151, v168);
        v198 = vzip2q_s32(v153, v169);
        v199 = vzip1q_s32(v153, v169);
        v200 = vzip2q_s32(v171, v172);
        v201 = vzip1q_s32(v171, v172);
        v202 = vshlq_u64(v177, v101);
        v203 = vuzp1q_s32(vzip1q_s64(v177, v202), vzip2q_s64(v177, v202));
        v204 = vshrq_n_u32(v203, 0xAuLL);
        v205 = vzip2q_s32(v203, v204);
        v206 = vzip1q_s32(v203, v204);
        v207 = (v61 + 8 * (v176 >> 6));
        v208 = vaddq_s64(v62, vdupq_n_s64(v176 & 0x3F));
        v209 = v59 + v176;
        v210 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v207, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v208)), vshlq_u64(vdupq_lane_s64(v207->i64[0], 0), vnegq_s64(v208)));
        if (v59 + (v176 & 0x3F) >= 0x81)
        {
          v179.i64[0] = -1;
          v179.i64[1] = -1;
          v210 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v207[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v208)), vshlq_u64(vdupq_laneq_s64(v207[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v208))), v210);
        }

        v211 = vaddq_s16(v178, v179);
        v212 = vuzp1q_s16(v181, v180);
        v213 = vuzp1q_s16(v183, v182);
        v214 = vuzp1q_s16(v185, v184);
        v215 = vuzp1q_s16(v187, v186);
        v216 = vuzp1q_s16(v189, v188);
        v217 = vuzp1q_s16(v191, v190);
        v218 = vuzp1q_s16(v193, v192);
        v219 = vuzp1q_s16(v195, v194);
        v220 = vuzp1q_s16(v197, v196);
        v221 = vuzp1q_s16(v199, v198);
        v222 = vuzp1q_s16(v201, v200);
        v223 = vuzp1q_s16(v206, v205);
        v224 = vshlq_u64(v210, v101);
        v225 = vuzp1q_s32(vzip1q_s64(v210, v224), vzip2q_s64(v210, v224));
        v226 = vshrq_n_u32(v225, 0xAuLL);
        v227 = vzip2q_s32(v225, v226);
        v228 = vzip1q_s32(v225, v226);
        v229 = v59 + v209;
        v230 = v209 & 0x3F;
        v231 = vaddq_s64(v62, vdupq_n_s64(v230));
        v232 = (v61 + 8 * (v209 >> 6));
        v233 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v232, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v231)), vshlq_u64(vdupq_lane_s64(v232->i64[0], 0), vnegq_s64(v231)));
        if (v59 + v230 >= 0x81)
        {
          v233 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v232[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v231)), vshlq_u64(vdupq_laneq_s64(v232[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v231))), v233);
        }

        v234 = vandq_s8(v211, v212);
        v235 = vandq_s8(v211, v213);
        v236 = vandq_s8(v211, v214);
        v237 = vandq_s8(v211, v215);
        v238 = vandq_s8(v211, v216);
        v239 = vandq_s8(v211, v217);
        v240 = vandq_s8(v211, v218);
        v241 = vandq_s8(v211, v219);
        v242 = vandq_s8(v211, v220);
        v243 = vandq_s8(v211, v221);
        v244 = vandq_s8(v211, v222);
        v245 = vandq_s8(v211, v223);
        v246 = vuzp1q_s16(v228, v227);
        v247 = vshlq_u64(v233, v101);
        v248 = vuzp1q_s32(vzip1q_s64(v233, v247), vzip2q_s64(v233, v247));
        v249 = vshrq_n_u32(v248, 0xAuLL);
        v250 = vuzp1q_s16(vzip1q_s32(v248, v249), vzip2q_s32(v248, v249));
        v251 = v229 & 0x3F;
        v252 = (v61 + 8 * (v229 >> 6));
        v253 = vaddq_s64(v62, vdupq_n_s64(v251));
        v254 = v59 + v229;
        v255 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v252, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v253)), vshlq_u64(vdupq_lane_s64(v252->i64[0], 0), vnegq_s64(v253)));
        if (v59 + v251 >= 0x81)
        {
          v255 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v252[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v253)), vshlq_u64(vdupq_laneq_s64(v252[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v253))), v255);
        }

        v256 = vshlq_n_s16(v234, 6uLL);
        v257 = vshlq_n_s16(v235, 6uLL);
        v258 = vshlq_n_s16(v236, 6uLL);
        v259 = vshlq_n_s16(v237, 6uLL);
        v260 = vshlq_n_s16(v238, 6uLL);
        v261 = vshlq_n_s16(v239, 6uLL);
        v262 = vshlq_n_s16(v240, 6uLL);
        v263 = vshlq_n_s16(v241, 6uLL);
        v60 = vshlq_n_s16(v242, 6uLL);
        v264 = vshlq_n_s16(v243, 6uLL);
        v265 = vshlq_n_s16(v244, 6uLL);
        v266 = vshlq_n_s16(v245, 6uLL);
        v267 = vandq_s8(v211, v246);
        v268 = vandq_s8(v211, v250);
        v269 = vshlq_u64(v255, v101);
        v270 = vuzp1q_s32(vzip1q_s64(v255, v269), vzip2q_s64(v255, v269));
        v271 = vshrq_n_u32(v270, 0xAuLL);
        v272 = vuzp1q_s16(vzip1q_s32(v270, v271), vzip2q_s32(v270, v271));
        v273 = (v61 + 8 * (v254 >> 6));
        v274 = vaddq_s64(v62, vdupq_n_s64(v254 & 0x3F));
        v275 = vandq_s8(v211, v272);
        v276 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v273, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v274)), vshlq_u64(vdupq_lane_s64(v273->i64[0], 0), vnegq_s64(v274)));
        if (v59 + (v254 & 0x3F) >= 0x81)
        {
          v276 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v273[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v274)), vshlq_u64(vdupq_laneq_s64(v273[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v274))), v276);
        }

        v277 = vshlq_u64(v276, v101);
        v278 = vuzp1q_s32(vzip1q_s64(v276, v277), vzip2q_s64(v276, v277));
        v279 = vshrq_n_u32(v278, 0xAuLL);
        v280 = vandq_s8(v211, vuzp1q_s16(vzip1q_s32(v278, v279), vzip2q_s32(v278, v279)));
        v281 = vshlq_n_s16(v267, 6uLL);
        v282 = vshlq_n_s16(v268, 6uLL);
        v283 = vshlq_n_s16(v275, 6uLL);
        v284 = vshlq_n_s16(v280, 6uLL);
      }

      *a1 = v256;
      a1[1] = v257;
      a1[2] = v258;
      a1[3] = v259;
      v285 = &a1->i8[a2];
      a1[4] = v60;
      a1[5] = v264;
      a1[6] = v265;
      a1[7] = v266;
      *v285 = v260;
      v285[1] = v261;
      v285[2] = v262;
      v285[3] = v263;
      v286 = &a1[4].i8[a2];
      result = 160;
      *v286 = v281;
      v286[1] = v282;
      v286[2] = v283;
      v286[3] = v284;
      return result;
    }

    if (a4 == 255)
    {
      v10 = *(a3 + 16);
      v11 = *(a3 + 32);
      v12 = *(a3 + 48);
      v13 = *(a3 + 64);
      v14 = *(a3 + 80);
      v15 = *(a3 + 96);
      v16 = *(a3 + 112);
      v17 = *(a3 + 128);
      v18 = *(a3 + 144);
      v19 = *(a3 + 160);
      v20 = *(a3 + 176);
      v21 = *(a3 + 192);
      v22 = *(a3 + 208);
      v23 = *(a3 + 224);
      v24 = *(a3 + 240);
      *a1 = *a3;
      a1[1] = v10;
      a1[2] = v11;
      a1[3] = v12;
      v25 = &a1->i8[a2];
      a1[4] = v17;
      a1[5] = v18;
      a1[6] = v19;
      a1[7] = v20;
      *v25 = v13;
      *(v25 + 1) = v14;
      *(v25 + 2) = v15;
      *(v25 + 3) = v16;
      v26 = &a1[4].i8[a2];
      result = 256;
      *v26 = v21;
      *(v26 + 1) = v22;
      *(v26 + 2) = v23;
      *(v26 + 3) = v24;
      return result;
    }
  }

  else
  {
    if (!a4)
    {
      result = 0;
      v52 = 0uLL;
      a1[6] = 0u;
      a1[7] = 0u;
      a1[4] = 0u;
      a1[5] = 0u;
      a1[2] = 0u;
      a1[3] = 0u;
      *a1 = 0u;
      a1[1] = 0u;
      v53 = (a1 + a2);
      v53[6] = 0u;
      v53[7] = 0u;
      v53[4] = 0u;
      v53[5] = 0u;
      v53[2] = 0u;
      v53[3] = 0u;
LABEL_265:
      *v53 = v52;
      v53[1] = v52;
      return result;
    }

    if (a4 == 4)
    {
      v5 = vld1q_dup_f64(a3);
      v6 = vorrq_s8(vandq_s8(vshlq_u64(v5, xmmword_29D2F1400), xmmword_29D2F1430), vandq_s8(vshlq_u64(v5, xmmword_29D2F1410), xmmword_29D2F1420));
      v7 = vdupq_n_s64(*&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)));
      *a1 = v7;
      a1[1] = v7;
      a1[2] = v7;
      a1[3] = v7;
      a1[4] = v7;
      a1[5] = v7;
      a1[6] = v7;
      a1[7] = v7;
      v8 = (a1 + a2);
      *v8 = v7;
      v8[1] = v7;
      v8[2] = v7;
      v8[3] = v7;
      v8[4] = v7;
      v8[5] = v7;
      v8[6] = v7;
      v8[7] = v7;
      return 5;
    }
  }

  v622 = 0;
  v621 = (8 * (a3 & 7)) | 0x500;
  v619 = 8 * (a3 & 7);
  v620 = a3 & 0xFFFFFFFFFFFFFFF8;
  result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)19,AGX::AppleCompressionGen2::Vec<short>>(&v640, v645, &v639, &v619, a4);
  v30.i64[0] = 0x3000300030003;
  v30.i64[1] = 0x3000300030003;
  v31 = v640;
  v32 = vandq_s8(v640, v30);
  v33 = vbicq_s8(v645[0], vceqq_s16(v32, v30));
  v645[0] = v33;
  v641 = v33;
  v642 = v33;
  v643 = v33;
  v644 = v33;
  v34.i64[0] = 0x202020202020202;
  v34.i64[1] = 0x202020202020202;
  v35 = vandq_s8(vmovl_s16(vtst_s16(*v640.i8, 0x4000400040004)), v34);
  v36 = v619;
  if (vmaxvq_s8(v35) < 1)
  {
    v287.i64[0] = -1;
    v287.i64[1] = -1;
    v288.i64[0] = -1;
    v288.i64[1] = -1;
    v289.i64[0] = -1;
    v289.i64[1] = -1;
    v290.i64[0] = -1;
    v290.i64[1] = -1;
    v47 = a1;
    v48 = a2;
  }

  else
  {
    v37 = vmovl_u8(*&vpaddq_s8(v35, v35));
    v38 = vmovl_u16(*&vpaddq_s16(v37, v37));
    v39 = vpaddq_s32(v38, v38).u64[0];
    v40.i64[0] = v39;
    v40.i64[1] = HIDWORD(v39);
    v41 = v40;
    v42 = vaddvq_s64(v40);
    v43 = v42;
    v44 = v619 + v42;
    if (v621)
    {
      v45 = v621 >= v44;
    }

    else
    {
      v45 = 1;
    }

    v46 = v45;
    v47 = a1;
    v48 = a2;
    if (v42 <= 0x80 && (v46 & 1) != 0)
    {
      v29.i64[0] = 63;
      v49 = (v620 + 8 * (v619 >> 6));
      v50 = vaddq_s64(vdupq_lane_s64(vandq_s8(v619, v29).i64[0], 0), vzip1q_s64(0, v41));
      v51 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v49, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v50)), vshlq_u64(vdupq_lane_s64(v49->i64[0], 0), vnegq_s64(v50)));
      if ((v619 & 0x3F) + v43 >= 0x81)
      {
        v51 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v49[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v50)), vshlq_u64(vdupq_laneq_s64(v49[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v50))), v51);
      }

      v36 = v44;
    }

    else
    {
      v622 = 1;
      v51 = 0uLL;
    }

    v291 = vzip1_s32(*v38.i8, *&vextq_s8(v38, v38, 8uLL));
    v292.i64[0] = v291.u32[0];
    v292.i64[1] = v291.u32[1];
    v293 = vshlq_u64(v51, vnegq_s64(v292));
    v294 = vuzp1q_s32(vzip1q_s64(v51, v293), vzip2q_s64(v51, v293));
    v295 = vshlq_u32(v294, vnegq_s32((*&v37 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v296 = vuzp1q_s16(vzip1q_s32(v294, v295), vzip2q_s32(v294, v295));
    v297 = vshlq_u16(v296, vnegq_s16((*&v35 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
    v298 = vuzp1q_s8(vzip1q_s16(v296, v297), vzip2q_s16(v296, v297));
    v297.i64[0] = 0x101010101010101;
    v297.i64[1] = 0x101010101010101;
    v299 = vshlq_s8(v297, v35);
    v297.i64[0] = -1;
    v297.i64[1] = -1;
    v300 = vqtbl1q_s8(vandq_s8(vaddq_s8(v299, v297), v298), xmmword_29D2F0F70);
    *v298.i8 = vdup_lane_s32(*v300.i8, 0);
    *v297.i8 = vdup_lane_s32(*v300.i8, 1);
    v301 = vdupq_laneq_s32(v300, 2).u64[0];
    v300.i64[0] = vdupq_laneq_s32(v300, 3).u64[0];
    v641 = vsubw_s8(v641, *v298.i8);
    v642 = vsubw_s8(v642, *v297.i8);
    v643 = vsubw_s8(v643, v301);
    v644 = vsubw_s8(v644, *v300.i8);
    v290 = vmovl_s8(vceqz_s8(*v298.i8));
    v289 = vmovl_s8(vceqz_s8(*v297.i8));
    v288 = vmovl_s8(vceqz_s8(v301));
    v287 = vmovl_s8(vceqz_s8(*v300.i8));
  }

  v302.i64[0] = 0x8000800080008;
  v302.i64[1] = 0x8000800080008;
  v303 = 0uLL;
  v304 = vandq_s8(vextq_s8(vtstq_s16(v640, v302), 0, 8uLL), v33);
  v305 = vmovl_u16(*&vpaddq_s16(v304, v304));
  v306 = vpaddq_s32(v305, v305).u64[0];
  v307.i64[0] = v306;
  v307.i64[1] = HIDWORD(v306);
  v308 = v307;
  v309 = vaddvq_s64(v307);
  if (v621)
  {
    v310 = v621 >= v36 + v309;
  }

  else
  {
    v310 = 1;
  }

  v311 = v310;
  if (v309 <= 0x80 && (v311 & 1) != 0)
  {
    v312 = vaddq_s64(vdupq_n_s64(v36 & 0x3F), vzip1q_s64(0, v308));
    v313 = (v620 + 8 * (v36 >> 6));
    v303 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v313, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v312)), vshlq_u64(vdupq_lane_s64(v313->i64[0], 0), vnegq_s64(v312)));
    if ((v36 & 0x3F) + v309 >= 0x81)
    {
      v303 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v313[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v312)), vshlq_u64(vdupq_laneq_s64(v313[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v312))), v303);
    }

    v36 += v309;
  }

  else
  {
    v622 = 1;
  }

  v314 = vzip1_s32(*v305.i8, *&vextq_s8(v305, v305, 8uLL));
  v315.i64[0] = v314.u32[0];
  v315.i64[1] = v314.u32[1];
  v316 = vshlq_u64(v303, vnegq_s64(v315));
  v317 = vuzp1q_s32(vzip1q_s64(v303, v316), vzip2q_s64(v303, v316));
  v318.i64[0] = 0xFFFF0000FFFFLL;
  v318.i64[1] = 0xFFFF0000FFFFLL;
  v319 = vshlq_u32(v317, vnegq_s32(vandq_s8(v304, v318)));
  v320 = vuzp1q_s16(vzip1q_s32(v317, v319), vzip2q_s32(v317, v319));
  v319.i64[0] = 0xF000F000F000FLL;
  v319.i64[1] = 0xF000F000F000FLL;
  v321.i64[0] = 0x10001000100010;
  v321.i64[1] = 0x10001000100010;
  v322 = vshlq_s16(vshlq_s16(v320, vsubq_s16(v321, v304)), vaddq_s16(v304, v319));
  v645[3] = v322;
  v323 = v640.i8[0] & 3;
  if (v323 == 2)
  {
    if (v621)
    {
      v324 = v36 + 8;
      v325 = v36 + 16;
      if (v621 >= v36 + 8)
      {
        v36 += 8;
      }

      else
      {
        v325 = v36 + 8;
      }

      if (v621 >= v325)
      {
        v36 = v325;
      }

      if (v621 < v324 || v621 < v325)
      {
        v622 = 1;
      }
    }

    else
    {
      v36 += 16;
    }
  }

  v326 = 0uLL;
  v327 = vextq_s8(0, v641, 8uLL);
  v328 = vmovl_u16(*&vpaddq_s16(v327, v327));
  v329 = vpaddq_s32(v328, v328).u64[0];
  v330.i64[0] = v329;
  v330.i64[1] = HIDWORD(v329);
  v331 = v330;
  v332 = vaddvq_s64(v330);
  v333 = v36 + v332;
  if (v621)
  {
    v334 = v621 >= v333;
  }

  else
  {
    v334 = 1;
  }

  v335 = v334;
  if (v332 <= 0x80 && (v335 & 1) != 0)
  {
    v336 = v36 & 0x3F;
    v337 = vaddq_s64(vdupq_n_s64(v336), vzip1q_s64(0, v331));
    v338 = v620;
    v339 = (v620 + 8 * (v36 >> 6));
    v326 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v339, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v337)), vshlq_u64(vdupq_lane_s64(v339->i64[0], 0), vnegq_s64(v337)));
    if (v336 + v332 >= 0x81)
    {
      v326 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v339[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v337)), vshlq_u64(vdupq_laneq_s64(v339[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v337))), v326);
    }

    v340 = v622;
    v36 = v333;
  }

  else
  {
    v340 = 1;
    v338 = v620;
  }

  v341 = vzip1_s32(*v328.i8, *&vextq_s8(v328, v328, 8uLL));
  v342.i64[0] = v341.u32[0];
  v342.i64[1] = v341.u32[1];
  v343 = vshlq_u64(v326, vnegq_s64(v342));
  v344 = vuzp1q_s32(vzip1q_s64(v326, v343), vzip2q_s64(v326, v343));
  v345.i64[0] = 0xFFFF0000FFFFLL;
  v345.i64[1] = 0xFFFF0000FFFFLL;
  v346 = vshlq_u32(v344, vnegq_s32(vandq_s8(v327, v345)));
  v347.i64[0] = 0xF000F000F000FLL;
  v347.i64[1] = 0xF000F000F000FLL;
  v348.i64[0] = 0x10001000100010;
  v348.i64[1] = 0x10001000100010;
  v349 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v344, v346), vzip2q_s32(v344, v346)), vsubq_s16(v348, v327)), vaddq_s16(v327, v347));
  v623 = v349;
  v350 = vmovl_u16(*&vpaddq_s16(v641, v641));
  v344.i64[0] = vpaddq_s32(v350, v350).u64[0];
  v342.i64[0] = v344.u32[0];
  v342.i64[1] = v344.u32[1];
  v351 = v342;
  v352 = vaddvq_s64(v342);
  v353 = v36 + v352;
  if (v621)
  {
    v354 = v621 >= v353;
  }

  else
  {
    v354 = 1;
  }

  v355 = v354;
  v356 = 0uLL;
  if (v352 <= 0x80 && v355)
  {
    v357 = v36 & 0x3F;
    v358 = vaddq_s64(vdupq_n_s64(v357), vzip1q_s64(0, v351));
    v359 = (v338 + 8 * (v36 >> 6));
    v360 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v359, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v358)), vshlq_u64(vdupq_lane_s64(v359->i64[0], 0), vnegq_s64(v358)));
    if (v357 + v352 >= 0x81)
    {
      v360 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v359[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v358)), vshlq_u64(vdupq_laneq_s64(v359[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v358))), v360);
    }
  }

  else
  {
    v340 = 1;
    v353 = v36;
    v360 = 0uLL;
  }

  v361 = vzip1_s32(*v350.i8, *&vextq_s8(v350, v350, 8uLL));
  v362.i64[0] = v361.u32[0];
  v362.i64[1] = v361.u32[1];
  v363 = vnegq_s64(v362);
  v364 = vshlq_u64(v360, v363);
  v365 = vuzp1q_s32(vzip1q_s64(v360, v364), vzip2q_s64(v360, v364));
  v366 = vnegq_s32(vandq_s8(v641, v345));
  v367 = vshlq_u32(v365, v366);
  v368 = vuzp1q_s16(vzip1q_s32(v365, v367), vzip2q_s32(v365, v367));
  v369 = vaddq_s16(v641, v347);
  v370 = vsubq_s16(v348, v641);
  v371 = vshlq_s16(vshlq_s16(v368, v370), v369);
  v624 = v371;
  v372 = v353 + v352;
  if (v621)
  {
    v373 = v621 >= v372;
  }

  else
  {
    v373 = 1;
  }

  v374 = v373;
  if (v352 <= 0x80 && v374)
  {
    v375 = v353 & 0x3F;
    v376 = vaddq_s64(vdupq_n_s64(v375), vzip1q_s64(0, v351));
    v377 = (v338 + 8 * (v353 >> 6));
    v356 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v377, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v376)), vshlq_u64(vdupq_lane_s64(v377->i64[0], 0), vnegq_s64(v376)));
    if (v375 + v352 >= 0x81)
    {
      v356 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v377[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v376)), vshlq_u64(vdupq_laneq_s64(v377[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v376))), v356);
    }
  }

  else
  {
    v340 = 1;
    v372 = v353;
  }

  v378 = vshlq_u64(v356, v363);
  v379 = vuzp1q_s32(vzip1q_s64(v356, v378), vzip2q_s64(v356, v378));
  v380 = vshlq_u32(v379, v366);
  v381 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v379, v380), vzip2q_s32(v379, v380)), v370), v369);
  v625 = v381;
  v382 = v372 + v352;
  if (v621)
  {
    v383 = v621 >= v382;
  }

  else
  {
    v383 = 1;
  }

  v384 = v383;
  v385 = 0uLL;
  if (v352 <= 0x80 && v384)
  {
    v386 = v372 & 0x3F;
    v387 = vaddq_s64(vdupq_n_s64(v386), vzip1q_s64(0, v351));
    v388 = (v338 + 8 * (v372 >> 6));
    v389 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v388, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v387)), vshlq_u64(vdupq_lane_s64(v388->i64[0], 0), vnegq_s64(v387)));
    if (v386 + v352 >= 0x81)
    {
      v389 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v388[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v387)), vshlq_u64(vdupq_laneq_s64(v388[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v387))), v389);
    }
  }

  else
  {
    v340 = 1;
    v382 = v372;
    v389 = 0uLL;
  }

  v390 = vshlq_u64(v389, v363);
  v391 = vuzp1q_s32(vzip1q_s64(v389, v390), vzip2q_s64(v389, v390));
  v392 = vshlq_u32(v391, v366);
  v393 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v391, v392), vzip2q_s32(v391, v392)), v370), v369);
  v626 = v393;
  v394 = vmovl_u16(*&vpaddq_s16(v642, v642));
  v395 = vpaddq_s32(v394, v394).u64[0];
  v396.i64[0] = v395;
  v396.i64[1] = HIDWORD(v395);
  v397 = v396;
  v398 = vaddvq_s64(v396);
  v399 = v398;
  v400 = v382 + v398;
  if (v621)
  {
    v401 = v621 >= v400;
  }

  else
  {
    v401 = 1;
  }

  v402 = v401;
  if (v398 <= 0x80 && v402)
  {
    v403 = v382 & 0x3F;
    v404 = vaddq_s64(vdupq_n_s64(v403), vzip1q_s64(0, v397));
    v405 = (v338 + 8 * (v382 >> 6));
    v385 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v405, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v404)), vshlq_u64(vdupq_lane_s64(v405->i64[0], 0), vnegq_s64(v404)));
    if (v403 + v399 >= 0x81)
    {
      v385 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v405[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v404)), vshlq_u64(vdupq_laneq_s64(v405[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v404))), v385);
    }
  }

  else
  {
    v340 = 1;
    v400 = v382;
  }

  v406 = vzip1_s32(*v394.i8, *&vextq_s8(v394, v394, 8uLL));
  v407.i64[0] = v406.u32[0];
  v407.i64[1] = v406.u32[1];
  v408 = vnegq_s64(v407);
  v409 = vshlq_u64(v385, v408);
  v410 = vuzp1q_s32(vzip1q_s64(v385, v409), vzip2q_s64(v385, v409));
  v411.i64[0] = 0xFFFF0000FFFFLL;
  v411.i64[1] = 0xFFFF0000FFFFLL;
  v412 = vnegq_s32(vandq_s8(v642, v411));
  v413 = vshlq_u32(v410, v412);
  v414 = vuzp1q_s16(vzip1q_s32(v410, v413), vzip2q_s32(v410, v413));
  v413.i64[0] = 0xF000F000F000FLL;
  v413.i64[1] = 0xF000F000F000FLL;
  v415 = vaddq_s16(v642, v413);
  v413.i64[0] = 0x10001000100010;
  v413.i64[1] = 0x10001000100010;
  v416 = vsubq_s16(v413, v642);
  v417 = vshlq_s16(vshlq_s16(v414, v416), v415);
  v627 = v417;
  v418 = v400 + v399;
  if (v621)
  {
    v419 = v621 >= v418;
  }

  else
  {
    v419 = 1;
  }

  v420 = v419;
  v421 = 0uLL;
  if (v399 <= 0x80 && v420)
  {
    v422 = v400 & 0x3F;
    v423 = vaddq_s64(vdupq_n_s64(v422), vzip1q_s64(0, v397));
    v424 = (v338 + 8 * (v400 >> 6));
    v425 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v424, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v423)), vshlq_u64(vdupq_lane_s64(v424->i64[0], 0), vnegq_s64(v423)));
    if (v422 + v399 >= 0x81)
    {
      v425 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v424[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v423)), vshlq_u64(vdupq_laneq_s64(v424[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v423))), v425);
    }
  }

  else
  {
    v340 = 1;
    v418 = v400;
    v425 = 0uLL;
  }

  v426 = vshlq_u64(v425, v408);
  v427 = vuzp1q_s32(vzip1q_s64(v425, v426), vzip2q_s64(v425, v426));
  v428 = vshlq_u32(v427, v412);
  v429 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v427, v428), vzip2q_s32(v427, v428)), v416), v415);
  v628 = v429;
  v430 = v418 + v399;
  if (v621)
  {
    v431 = v621 >= v430;
  }

  else
  {
    v431 = 1;
  }

  v432 = v431;
  if (v399 <= 0x80 && v432)
  {
    v433 = v418 & 0x3F;
    v434 = vaddq_s64(vdupq_n_s64(v433), vzip1q_s64(0, v397));
    v435 = (v338 + 8 * (v418 >> 6));
    v421 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v435, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v434)), vshlq_u64(vdupq_lane_s64(v435->i64[0], 0), vnegq_s64(v434)));
    if (v433 + v399 >= 0x81)
    {
      v421 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v435[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v434)), vshlq_u64(vdupq_laneq_s64(v435[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v434))), v421);
    }
  }

  else
  {
    v340 = 1;
    v430 = v418;
  }

  v436 = vshlq_u64(v421, v408);
  v437 = vuzp1q_s32(vzip1q_s64(v421, v436), vzip2q_s64(v421, v436));
  v438 = vshlq_u32(v437, v412);
  v439 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v437, v438), vzip2q_s32(v437, v438)), v416), v415);
  v629 = v439;
  v440 = v430 + v399;
  if (v621)
  {
    v441 = v621 >= v440;
  }

  else
  {
    v441 = 1;
  }

  v442 = v441;
  v443 = 0uLL;
  if (v399 <= 0x80 && v442)
  {
    v444 = v430 & 0x3F;
    v445 = vaddq_s64(vdupq_n_s64(v444), vzip1q_s64(0, v397));
    v446 = (v338 + 8 * (v430 >> 6));
    v447 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v446, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v445)), vshlq_u64(vdupq_lane_s64(v446->i64[0], 0), vnegq_s64(v445)));
    if (v444 + v399 >= 0x81)
    {
      v447 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v446[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v445)), vshlq_u64(vdupq_laneq_s64(v446[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v445))), v447);
    }
  }

  else
  {
    v340 = 1;
    v440 = v430;
    v447 = 0uLL;
  }

  v448 = vshlq_u64(v447, v408);
  v449 = vuzp1q_s32(vzip1q_s64(v447, v448), vzip2q_s64(v447, v448));
  v450 = vshlq_u32(v449, v412);
  v451 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v449, v450), vzip2q_s32(v449, v450)), v416), v415);
  v630 = v451;
  v452 = vmovl_u16(*&vpaddq_s16(v643, v643));
  v453 = vpaddq_s32(v452, v452).u64[0];
  v454.i64[0] = v453;
  v454.i64[1] = HIDWORD(v453);
  v455 = v454;
  v456 = vaddvq_s64(v454);
  v457 = v456;
  v458 = v440 + v456;
  if (v621)
  {
    v459 = v621 >= v458;
  }

  else
  {
    v459 = 1;
  }

  v460 = v459;
  if (v456 <= 0x80 && v460)
  {
    v461 = v440 & 0x3F;
    v462 = vaddq_s64(vdupq_n_s64(v461), vzip1q_s64(0, v455));
    v463 = (v338 + 8 * (v440 >> 6));
    v443 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v463, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v462)), vshlq_u64(vdupq_lane_s64(v463->i64[0], 0), vnegq_s64(v462)));
    if (v461 + v457 >= 0x81)
    {
      v443 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v463[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v462)), vshlq_u64(vdupq_laneq_s64(v463[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v462))), v443);
    }
  }

  else
  {
    v340 = 1;
    v458 = v440;
  }

  v464 = vzip1_s32(*v452.i8, *&vextq_s8(v452, v452, 8uLL));
  v465.i64[0] = v464.u32[0];
  v465.i64[1] = v464.u32[1];
  v466 = vnegq_s64(v465);
  v467 = vshlq_u64(v443, v466);
  v468 = vuzp1q_s32(vzip1q_s64(v443, v467), vzip2q_s64(v443, v467));
  v469.i64[0] = 0xFFFF0000FFFFLL;
  v469.i64[1] = 0xFFFF0000FFFFLL;
  v470 = vnegq_s32(vandq_s8(v643, v469));
  v471 = vshlq_u32(v468, v470);
  v472 = vuzp1q_s16(vzip1q_s32(v468, v471), vzip2q_s32(v468, v471));
  v471.i64[0] = 0xF000F000F000FLL;
  v471.i64[1] = 0xF000F000F000FLL;
  v473 = vaddq_s16(v643, v471);
  v471.i64[0] = 0x10001000100010;
  v471.i64[1] = 0x10001000100010;
  v474 = vsubq_s16(v471, v643);
  v475 = vshlq_s16(vshlq_s16(v472, v474), v473);
  v631 = v475;
  v476 = v458 + v457;
  if (v621)
  {
    v477 = v621 >= v476;
  }

  else
  {
    v477 = 1;
  }

  v478 = v477;
  v479 = 0uLL;
  if (v457 <= 0x80 && v478)
  {
    v480 = v458 & 0x3F;
    v481 = vaddq_s64(vdupq_n_s64(v480), vzip1q_s64(0, v455));
    v482 = (v338 + 8 * (v458 >> 6));
    v483 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v482, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v481)), vshlq_u64(vdupq_lane_s64(v482->i64[0], 0), vnegq_s64(v481)));
    if (v480 + v457 >= 0x81)
    {
      v483 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v482[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v481)), vshlq_u64(vdupq_laneq_s64(v482[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v481))), v483);
    }
  }

  else
  {
    v340 = 1;
    v476 = v458;
    v483 = 0uLL;
  }

  v484 = vshlq_u64(v483, v466);
  v485 = vuzp1q_s32(vzip1q_s64(v483, v484), vzip2q_s64(v483, v484));
  v486 = vshlq_u32(v485, v470);
  v487 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v485, v486), vzip2q_s32(v485, v486)), v474), v473);
  v632 = v487;
  v488 = v476 + v457;
  if (v621)
  {
    v489 = v621 >= v488;
  }

  else
  {
    v489 = 1;
  }

  v490 = v489;
  if (v457 <= 0x80 && v490)
  {
    v491 = v476 & 0x3F;
    v492 = vaddq_s64(vdupq_n_s64(v491), vzip1q_s64(0, v455));
    v493 = (v338 + 8 * (v476 >> 6));
    v479 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v493, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v492)), vshlq_u64(vdupq_lane_s64(v493->i64[0], 0), vnegq_s64(v492)));
    if (v491 + v457 >= 0x81)
    {
      v479 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v493[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v492)), vshlq_u64(vdupq_laneq_s64(v493[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v492))), v479);
    }
  }

  else
  {
    v340 = 1;
    v488 = v476;
  }

  v494 = vshlq_u64(v479, v466);
  v495 = vuzp1q_s32(vzip1q_s64(v479, v494), vzip2q_s64(v479, v494));
  v496 = vshlq_u32(v495, v470);
  v497 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v495, v496), vzip2q_s32(v495, v496)), v474), v473);
  v633 = v497;
  v498 = v488 + v457;
  if (v621)
  {
    v499 = v621 >= v498;
  }

  else
  {
    v499 = 1;
  }

  v500 = v499;
  v501 = 0uLL;
  if (v457 <= 0x80 && v500)
  {
    v502 = v488 & 0x3F;
    v503 = vaddq_s64(vdupq_n_s64(v502), vzip1q_s64(0, v455));
    v504 = (v338 + 8 * (v488 >> 6));
    v505 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v504, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v503)), vshlq_u64(vdupq_lane_s64(v504->i64[0], 0), vnegq_s64(v503)));
    if (v502 + v457 >= 0x81)
    {
      v505 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v504[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v503)), vshlq_u64(vdupq_laneq_s64(v504[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v503))), v505);
    }
  }

  else
  {
    v340 = 1;
    v498 = v488;
    v505 = 0uLL;
  }

  v506 = vshlq_u64(v505, v466);
  v507 = vuzp1q_s32(vzip1q_s64(v505, v506), vzip2q_s64(v505, v506));
  v508 = vshlq_u32(v507, v470);
  v509 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v507, v508), vzip2q_s32(v507, v508)), v474), v473);
  v634 = v509;
  v510 = vmovl_u16(*&vpaddq_s16(v644, v644));
  v511 = vpaddq_s32(v510, v510).u64[0];
  v512.i64[0] = v511;
  v512.i64[1] = HIDWORD(v511);
  v513 = v512;
  v514 = vaddvq_s64(v512);
  v515 = v514;
  v516 = v498 + v514;
  if (v621)
  {
    v517 = v621 >= v516;
  }

  else
  {
    v517 = 1;
  }

  v518 = v517;
  if (v514 <= 0x80 && v518)
  {
    v519 = v498 & 0x3F;
    v520 = vaddq_s64(vdupq_n_s64(v519), vzip1q_s64(0, v513));
    v521 = (v338 + 8 * (v498 >> 6));
    v501 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v521, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v520)), vshlq_u64(vdupq_lane_s64(v521->i64[0], 0), vnegq_s64(v520)));
    if (v519 + v515 >= 0x81)
    {
      v501 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v521[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v520)), vshlq_u64(vdupq_laneq_s64(v521[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v520))), v501);
    }
  }

  else
  {
    v340 = 1;
    v516 = v498;
  }

  v522 = vzip1_s32(*v510.i8, *&vextq_s8(v510, v510, 8uLL));
  v523.i64[0] = v522.u32[0];
  v523.i64[1] = v522.u32[1];
  v524 = vnegq_s64(v523);
  v525 = vshlq_u64(v501, v524);
  v526 = vuzp1q_s32(vzip1q_s64(v501, v525), vzip2q_s64(v501, v525));
  v525.i64[0] = 0xFFFF0000FFFFLL;
  v525.i64[1] = 0xFFFF0000FFFFLL;
  v527 = vnegq_s32(vandq_s8(v644, v525));
  v528 = vshlq_u32(v526, v527);
  v529 = vuzp1q_s16(vzip1q_s32(v526, v528), vzip2q_s32(v526, v528));
  v526.i64[0] = 0xF000F000F000FLL;
  v526.i64[1] = 0xF000F000F000FLL;
  v530 = vaddq_s16(v644, v526);
  v528.i64[0] = 0x10001000100010;
  v528.i64[1] = 0x10001000100010;
  v531 = vsubq_s16(v528, v644);
  v532 = vshlq_s16(vshlq_s16(v529, v531), v530);
  v635 = v532;
  v533 = v516 + v515;
  if (v621)
  {
    v534 = v621 >= v533;
  }

  else
  {
    v534 = 1;
  }

  v535 = v534;
  v536 = 0uLL;
  if (v515 <= 0x80 && v535)
  {
    v537 = v516 & 0x3F;
    v538 = vaddq_s64(vdupq_n_s64(v537), vzip1q_s64(0, v513));
    v539 = (v338 + 8 * (v516 >> 6));
    v540 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v539, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v538)), vshlq_u64(vdupq_lane_s64(v539->i64[0], 0), vnegq_s64(v538)));
    if (v537 + v515 >= 0x81)
    {
      v540 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v539[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v538)), vshlq_u64(vdupq_laneq_s64(v539[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v538))), v540);
    }
  }

  else
  {
    v340 = 1;
    v533 = v516;
    v540 = 0uLL;
  }

  v541 = vshlq_u64(v540, v524);
  v542 = vuzp1q_s32(vzip1q_s64(v540, v541), vzip2q_s64(v540, v541));
  v543 = vshlq_u32(v542, v527);
  v544 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v542, v543), vzip2q_s32(v542, v543)), v531), v530);
  v636 = v544;
  v545 = v533 + v515;
  if (v621)
  {
    v546 = v621 >= v545;
  }

  else
  {
    v546 = 1;
  }

  v547 = v546;
  if (v515 <= 0x80 && v547)
  {
    v548 = v533 & 0x3F;
    v549 = vaddq_s64(vdupq_n_s64(v548), vzip1q_s64(0, v513));
    v550 = (v338 + 8 * (v533 >> 6));
    v536 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v550, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v549)), vshlq_u64(vdupq_lane_s64(v550->i64[0], 0), vnegq_s64(v549)));
    if (v548 + v515 >= 0x81)
    {
      v536 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v550[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v549)), vshlq_u64(vdupq_laneq_s64(v550[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v549))), v536);
    }
  }

  else
  {
    v340 = 1;
    v545 = v533;
  }

  v551 = vshlq_u64(v536, v524);
  v552 = vuzp1q_s32(vzip1q_s64(v536, v551), vzip2q_s64(v536, v551));
  v553 = vshlq_u32(v552, v527);
  v554 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v552, v553), vzip2q_s32(v552, v553)), v531), v530);
  v637 = v554;
  v555 = v545 + v515;
  if (v621)
  {
    v556 = v621 >= v555;
  }

  else
  {
    v556 = 1;
  }

  v557 = v556;
  if (v515 > 0x80 || !v557)
  {
    goto LABEL_264;
  }

  v558 = vaddq_s64(vdupq_n_s64(v545 & 0x3F), vzip1q_s64(0, v513));
  v559 = (v338 + 8 * (v545 >> 6));
  v560 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v559, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v558)), vshlq_u64(vdupq_lane_s64(v559->i64[0], 0), vnegq_s64(v558)));
  if ((v545 & 0x3F) + v515 >= 0x81)
  {
    v560 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v559[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v558)), vshlq_u64(vdupq_laneq_s64(v559[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v558))), v560);
  }

  if ((v340 & 1) != 0 || v621 + 8 * result - v555 - 1280 >= 9 || v323 == 2)
  {
LABEL_264:
    result = 0;
    v52 = vdupq_n_s64(0xFFFFF003FFuLL);
    *v47 = v52;
    v47[1] = v52;
    v53 = (v47 + v48);
    goto LABEL_265;
  }

  v561 = vshlq_u64(v560, v524);
  v562 = vuzp1q_s32(vzip1q_s64(v560, v561), vzip2q_s64(v560, v561));
  v563 = vshlq_u32(v562, v527);
  v564 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v562, v563), vzip2q_s32(v562, v563)), v531), v530);
  v565 = vaddq_s16(vandq_s8(v322, v290), v349);
  v566 = vdupq_lane_s64(v322.i64[0], 0);
  v567 = vandq_s8(v290, v566);
  v568 = vsubq_s16(v565, v567);
  v569 = vsubq_s16(v371, v567);
  v570 = vsubq_s16(v381, v567);
  v571 = vsubq_s16(v393, v567);
  v572 = vandq_s8(v289, v566);
  v573 = vsubq_s16(v417, v572);
  v574 = vsubq_s16(v429, v572);
  v575 = vsubq_s16(v439, v572);
  v576 = vsubq_s16(v451, v572);
  v577 = vandq_s8(v288, v566);
  v578 = vsubq_s16(v475, v577);
  v579 = vsubq_s16(v487, v577);
  v580 = vsubq_s16(v497, v577);
  v581 = vsubq_s16(v509, v577);
  v582 = vandq_s8(v287, v566);
  v583 = vsubq_s16(v532, v582);
  v623 = v565;
  v584 = vsubq_s16(v544, v582);
  v585 = vsubq_s16(v554, v582);
  v635 = v583;
  v636 = v584;
  v586 = vsubq_s16(v564, v582);
  v637 = v585;
  v638 = v586;
  v587.i64[0] = 0x1000100010001;
  v587.i64[1] = 0x1000100010001;
  if (vaddvq_s16(vceqq_s16(v32, v587)))
  {
    v588 = vnegq_s16(vandq_s8(v640, v587));
    v589.i64[0] = v571.i64[0];
    v590.i64[1] = v568.i64[1];
    v589.i64[1] = v568.i64[0];
    v590.i64[0] = v571.i64[1];
    v591 = vbslq_s8(v588, v590, v568);
    v592 = vbslq_s8(v588, v589, v571);
    v590.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v590.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v593 = vandq_s8(vqtbl4q_s8(*(&v569 - 1), v590), v588);
    v647.val[0] = vaddq_s16(v591, vandq_s8(vqtbl4q_s8(*(&v569 - 1), xmmword_29D2F10B0), v588));
    v647.val[1] = vaddq_s16(v569, vandq_s8(vqtbl4q_s8(*(&v569 - 1), xmmword_29D2F10C0), v588));
    v647.val[2] = vaddq_s16(v570, v593);
    v647.val[3] = vaddq_s16(v592, v593);
    v594 = vandq_s8(vqtbl4q_s8(v647, v590), v588);
    v568 = vaddq_s16(v647.val[0], vandq_s8(vqtbl4q_s8(v647, xmmword_29D2F10D0), v588));
    v569 = vaddq_s16(v647.val[1], vandq_s8(vqtbl4q_s8(v647, xmmword_29D2F10E0), v588));
    v623 = v568;
    v624 = v569;
    v570 = vaddq_s16(v647.val[2], v594);
    v571 = vaddq_s16(v647.val[3], v594);
    v646.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v573.i8, xmmword_29D2F10B0), v588), v573);
    v646.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v573.i8, xmmword_29D2F10F0), v588), v574);
    v646.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v573.i8, v590), v588), v575);
    v646.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v573.i8, xmmword_29D2F1100), v588), v576);
    v595 = vandq_s8(vqtbl4q_s8(v646, xmmword_29D2F10D0), v588);
    v596 = vandq_s8(vqtbl4q_s8(v646, v590), v588);
    v573 = vaddq_s16(v595, v646.val[0]);
    v574 = vaddq_s16(v646.val[1], v595);
    v575 = vaddq_s16(v646.val[2], v596);
    v576 = vaddq_s16(v646.val[3], v596);
    v646.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v578.i8, xmmword_29D2F0EB0), v588), v578);
    v646.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v578.i8, xmmword_29D2F0FB0), v588), v579);
    v646.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v578.i8, xmmword_29D2F10B0), v588), v580);
    v646.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v578.i8, xmmword_29D2F10C0), v588), v581);
    v597 = vandq_s8(vqtbl4q_s8(v646, v590), v588);
    v578 = vaddq_s16(v646.val[0], v597);
    v579 = vaddq_s16(v646.val[1], v597);
    v580 = vaddq_s16(v646.val[2], vandq_s8(vqtbl4q_s8(v646, xmmword_29D2F0FE0), v588));
    v581 = vaddq_s16(v646.val[3], vandq_s8(vqtbl4q_s8(v646, xmmword_29D2F1110), v588));
    v647.val[0] = v635;
    v647.val[1] = v636;
    v31 = v640;
    v647.val[2] = v637;
    v647.val[3] = v638;
    v646.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(v647, xmmword_29D2F0EB0), v588), v635);
    v646.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(v647, xmmword_29D2F1120), v588), v636);
    v625 = v570;
    v626 = v571;
    v646.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(v647, xmmword_29D2F10B0), v588), v637);
    v646.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(v647, xmmword_29D2F10C0), v588), v638);
    v598 = vandq_s8(vqtbl4q_s8(v646, v590), v588);
    v583 = vaddq_s16(v646.val[0], v598);
    v584 = vaddq_s16(v646.val[1], v598);
    v585 = vaddq_s16(v646.val[2], vandq_s8(vqtbl4q_s8(v646, xmmword_29D2F0FE0), v588));
    v586 = vaddq_s16(v646.val[3], vandq_s8(vqtbl4q_s8(v646, xmmword_29D2F1130), v588));
  }

  v599 = vaddq_s16(v639, v568);
  v600 = vaddq_s16(v569, v639);
  v601 = vaddq_s16(v570, v639);
  v602 = vaddq_s16(v571, v639);
  v603 = vaddq_s16(v573, v639);
  v604 = vaddq_s16(v574, v639);
  v605 = vaddq_s16(v575, v639);
  v606 = vaddq_s16(v576, v639);
  v607 = vaddq_s16(v578, v639);
  v608 = vaddq_s16(v579, v639);
  v609 = vaddq_s16(v580, v639);
  v610 = vaddq_s16(v581, v639);
  v611 = vaddq_s16(v583, v639);
  v612 = vaddq_s16(v584, v639);
  v613 = vaddq_s16(v585, v639);
  v614 = vaddq_s16(v586, v639);
  v615.i64[0] = 0x10001000100010;
  v615.i64[1] = 0x10001000100010;
  v616 = vceqzq_s16(vandq_s8(v31, v615));
  v617 = &v47[4];
  *v47 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v599, xmmword_29D2F1140), v616), v599), 6uLL);
  v47[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v600, xmmword_29D2F1140), v616), v600), 6uLL);
  v47[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v601, xmmword_29D2F1140), v616), v601), 6uLL);
  v47[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v602, xmmword_29D2F1140), v616), v602), 6uLL);
  v618 = &v47->i8[v48];
  *v617 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v607, xmmword_29D2F1140), v616), v607), 6uLL);
  v617[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v608, xmmword_29D2F1140), v616), v608), 6uLL);
  v617[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v609, xmmword_29D2F1140), v616), v609), 6uLL);
  v617[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v610, xmmword_29D2F1140), v616), v610), 6uLL);
  *v618 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v603, xmmword_29D2F1140), v616), v603), 6uLL);
  v618[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v604, xmmword_29D2F1140), v616), v604), 6uLL);
  v618[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v605, xmmword_29D2F1140), v616), v605), 6uLL);
  v618[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v606, xmmword_29D2F1140), v616), v606), 6uLL);
  v618 += 4;
  *v618 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v611, xmmword_29D2F1140), v616), v611), 6uLL);
  v618[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v612, xmmword_29D2F1140), v616), v612), 6uLL);
  v618[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v613, xmmword_29D2F1140), v616), v613), 6uLL);
  v618[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v614, xmmword_29D2F1140), v616), v614), 6uLL);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(int64x2_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 256, a2, *a3);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 32, 256, v5, a3[1]);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 8, 256, v6, a3[2]);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 40, 256, v7, a3[3]);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 64, 256, v8, a3[4]);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 96, 256, v9, a3[5]);
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 72, 256, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 104, 256, v10 + v11, v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(uint64_t a1, _BYTE *a2, int16x8_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = vshrq_n_s16(*a3, 6uLL);
  v9 = vshrq_n_s16(a3[1], 6uLL);
  v10 = vshrq_n_s16(a3[2], 6uLL);
  v11 = vshrq_n_s16(a3[3], 6uLL);
  v12 = vshrq_n_s16(*(a3 + a4), 6uLL);
  v13 = vshrq_n_s16(*(&a3[1] + a4), 6uLL);
  v14 = vshrq_n_s16(*(&a3[2] + a4), 6uLL);
  v15 = vshrq_n_s16(*(&a3[3] + a4), 6uLL);
  v16 = vshrq_n_s16(a3[4], 6uLL);
  v17 = vshrq_n_s16(a3[5], 6uLL);
  v18 = vshrq_n_s16(a3[6], 6uLL);
  v19 = vshrq_n_s16(a3[7], 6uLL);
  v20 = vshrq_n_s16(*(&a3[4] + a4), 6uLL);
  v21 = vshrq_n_s16(*(&a3[5] + a4), 6uLL);
  v22 = vshrq_n_s16(*(&a3[6] + a4), 6uLL);
  v23 = vshrq_n_s16(*(&a3[7] + a4), 6uLL);
  v482 = vdupq_lane_s64(v8.i64[0], 0);
  v462 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v8, v482), 6uLL), 6uLL);
  v464 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v9, v482), 6uLL), 6uLL);
  v466 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v10, v482), 6uLL), 6uLL);
  v468 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v11, v482), 6uLL), 6uLL);
  v470 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v12, v482), 6uLL), 6uLL);
  v471 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v13, v482), 6uLL), 6uLL);
  v24 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v462, v464), v466), v468), xmmword_29D2F1150);
  v25 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v462, v464), v466), v468), xmmword_29D2F1150);
  v26 = vpmaxq_s16(v24, v24);
  v27 = vpminq_s16(v25, v25);
  v28 = vzip1q_s16(v26, v27);
  v29.i64[0] = 0x10001000100010;
  v29.i64[1] = 0x10001000100010;
  v30 = vbicq_s8(vsubq_s16(v29, vclsq_s16(v28)), vceqzq_s16(v28));
  v472 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v14, v482), 6uLL), 6uLL);
  v473 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v15, v482), 6uLL), 6uLL);
  v474 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v16, v482), 6uLL), 6uLL);
  v475 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v17, v482), 6uLL), 6uLL);
  v31.i64[0] = 0x8000800080008000;
  v31.i64[1] = 0x8000800080008000;
  v32.i64[0] = 0x8000800080008000;
  v32.i64[1] = 0x8000800080008000;
  v33 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v470, v471), v472), v473), xmmword_29D2F1150);
  v34 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v470, v471), v472), v473), xmmword_29D2F1150);
  v35 = vpmaxq_s16(v33, v33);
  v36 = vpminq_s16(v34, v34);
  v37 = vmaxq_s16(vmaxq_s16(v26, v31), v35);
  v38 = vminq_s16(vminq_s16(v27, v32), v36);
  v39 = vzip1q_s16(v35, v36);
  v40 = vbicq_s8(vsubq_s16(v29, vclsq_s16(v39)), vceqzq_s16(v39));
  v476 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v18, v482), 6uLL), 6uLL);
  v477 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v19, v482), 6uLL), 6uLL);
  v478 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v20, v482), 6uLL), 6uLL);
  v479 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v21, v482), 6uLL), 6uLL);
  v41 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v474, v475), v476), v477), xmmword_29D2F1150);
  v42 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v474, v475), v476), v477), xmmword_29D2F1150);
  v43 = vpmaxq_s16(v41, v41);
  v44 = vpminq_s16(v42, v42);
  v45 = vmaxq_s16(v37, v43);
  v46 = vminq_s16(v38, v44);
  v47 = vzip1q_s16(v43, v44);
  v48 = vbicq_s8(vsubq_s16(v29, vclsq_s16(v47)), vceqzq_s16(v47));
  v459 = v20;
  v460 = v21;
  v461 = v22;
  v458 = v23;
  v480 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v22, v482), 6uLL), 6uLL);
  v481 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v23, v482), 6uLL), 6uLL);
  v49 = vpmaxq_s16(v30, v30);
  v50 = vpmaxq_s16(v40, v40);
  v51 = vpmaxq_s16(v48, v48);
  v52 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v478, v479), v480), v481), xmmword_29D2F1150);
  v53 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v478, v479), v480), v481), xmmword_29D2F1150);
  v54 = vpmaxq_s16(v52, v52);
  v55 = vpminq_s16(v53, v53);
  v56 = vmaxq_s16(v45, v54);
  v57 = vminq_s16(v46, v55);
  v58 = vzip1q_s16(v54, v55);
  v59 = vbicq_s8(vsubq_s16(v29, vclsq_s16(v58)), vceqzq_s16(v58));
  v60 = vpmaxq_s16(v59, v59);
  v61 = vmaxq_s16(vmaxq_s16(v49, v50), vmaxq_s16(v51, v60));
  v62 = vclzq_s16(vsubq_s16(v56, v57));
  v63.i64[0] = 0xF000F000F000FLL;
  v63.i64[1] = 0xF000F000F000FLL;
  v31.i64[0] = -1;
  v31.i64[1] = -1;
  v489 = v57;
  v490 = v56;
  v64 = vsubq_s16(v29, v62);
  v65 = vsubq_s16(vshlq_s16(v31, vsubq_s16(v63, v62)), v57);
  v66 = vcgtq_s16(v61, v64);
  v67 = vminq_s16(v64, v61);
  v491 = vandq_s8(v65, v66);
  v65.i64[0] = 0x8000800080008;
  v65.i64[1] = 0x8000800080008;
  v68.i64[0] = 0x3000300030003;
  v68.i64[1] = 0x3000300030003;
  v69 = vorrq_s8(vandq_s8(vceqzq_s16(v67), v68), vorrq_s8(vandq_s8(v66, v65), 0));
  v70 = vmaxq_s16(vminq_s16(vsubq_s16(v67, v50), v68), 0);
  v71 = vmaxq_s16(vminq_s16(vsubq_s16(v67, v51), v68), 0);
  v485 = vsubq_s16(v67, v70);
  v486 = vsubq_s16(v67, v71);
  v72 = vmaxq_s16(vminq_s16(vsubq_s16(v67, v60), v68), 0);
  v487 = vsubq_s16(v67, v72);
  v488 = v67;
  v73 = vmaxq_s16(vminq_s16(vsubq_s16(v67, v49), v68), 0);
  v74 = vaddq_s16(v73, v70);
  v75 = vsubq_s16(v67, v73);
  v76 = vmaxvq_s16(v67);
  v67.i64[0] = 0x4000400040004;
  v67.i64[1] = 0x4000400040004;
  v77 = vorrq_s8(vbicq_s8(v67, vceqq_s16(vaddq_s16(v72, v71), vnegq_s16(v74))), v69);
  v483 = v77;
  v484 = v75;
  if (v76)
  {
    v450 = v19;
    v452 = v16;
    v453 = v17;
    v454 = v18;
    v451 = v15;
    v455 = v12;
    v456 = v13;
    v457 = v14;
    v78 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v462, vqtbl1q_s8(v462, xmmword_29D2F1140)), 6uLL), 6uLL);
    v79 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v464, vqtbl1q_s8(v464, xmmword_29D2F1140)), 6uLL), 6uLL);
    v80 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v468, vqtbl1q_s8(v468, xmmword_29D2F1140)), 6uLL), 6uLL);
    v81 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v478, vqtbl1q_s8(v478, xmmword_29D2F1140)), 6uLL), 6uLL);
    v82 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v479, vqtbl1q_s8(v479, xmmword_29D2F1140)), 6uLL), 6uLL);
    v83 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v480, vqtbl1q_s8(v480, xmmword_29D2F1140)), 6uLL), 6uLL);
    v84 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v481, vqtbl1q_s8(v481, xmmword_29D2F1140)), 6uLL), 6uLL);
    v430 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v466, vqtbl1q_s8(v466, xmmword_29D2F1140)), 6uLL), 6uLL);
    v85 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v78, v79), v430), v80), xmmword_29D2F1150);
    v86 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v78, v79), v430), v80), xmmword_29D2F1150);
    v87 = vpmaxq_s16(v85, v85);
    v88 = vpminq_s16(v86, v86);
    v89.i64[0] = 0x8000800080008000;
    v89.i64[1] = 0x8000800080008000;
    v90 = vmaxq_s16(v87, v89);
    v91.i64[0] = 0x8000800080008000;
    v91.i64[1] = 0x8000800080008000;
    v92 = vminq_s16(v88, v91);
    v93 = vzip1q_s16(v87, v88);
    v94 = vbicq_s8(vsubq_s16(v29, vclsq_s16(v93)), vceqzq_s16(v93));
    v95 = vpmaxq_s16(v94, v94);
    v434 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v471, vqtbl1q_s8(v471, xmmword_29D2F1140)), 6uLL), 6uLL);
    v436 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v470, vqtbl1q_s8(v470, xmmword_29D2F1140)), 6uLL), 6uLL);
    v438 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v473, vqtbl1q_s8(v473, xmmword_29D2F1140)), 6uLL), 6uLL);
    v440 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v472, vqtbl1q_s8(v472, xmmword_29D2F1140)), 6uLL), 6uLL);
    v96 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v436, v434), v440), v438), xmmword_29D2F1150);
    v97 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v436, v434), v440), v438), xmmword_29D2F1150);
    v98 = vpmaxq_s16(v96, v96);
    v99 = vpminq_s16(v97, v97);
    v100 = vmaxq_s16(v90, v98);
    v101 = vminq_s16(v92, v99);
    v102 = vzip1q_s16(v98, v99);
    v103 = vbicq_s8(vsubq_s16(v29, vclsq_s16(v102)), vceqzq_s16(v102));
    v104 = vpmaxq_s16(v103, v103);
    v442 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v475, vqtbl1q_s8(v475, xmmword_29D2F1140)), 6uLL), 6uLL);
    v444 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v474, vqtbl1q_s8(v474, xmmword_29D2F1140)), 6uLL), 6uLL);
    v446 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v477, vqtbl1q_s8(v477, xmmword_29D2F1140)), 6uLL), 6uLL);
    v448 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v476, vqtbl1q_s8(v476, xmmword_29D2F1140)), 6uLL), 6uLL);
    v105 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v444, v442), v448), v446), xmmword_29D2F1150);
    v106 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v444, v442), v448), v446), xmmword_29D2F1150);
    v107 = vpmaxq_s16(v105, v105);
    v108 = vpminq_s16(v106, v106);
    v109 = vmaxq_s16(v100, v107);
    v110 = vminq_s16(v101, v108);
    v111 = vzip1q_s16(v107, v108);
    v112 = vbicq_s8(vsubq_s16(v29, vclsq_s16(v111)), vceqzq_s16(v111));
    v113 = vpmaxq_s16(v112, v112);
    v114 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v81, v82), v83), v84), xmmword_29D2F1150);
    v115 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v81, v82), v83), v84), xmmword_29D2F1150);
    v116 = vpmaxq_s16(v114, v114);
    v117 = vpminq_s16(v115, v115);
    v118 = vmaxq_s16(v109, v116);
    v119 = vminq_s16(v110, v117);
    v120 = vzip1q_s16(v116, v117);
    v121 = vbicq_s8(vsubq_s16(v29, vclsq_s16(v120)), vceqzq_s16(v120));
    v122 = vpmaxq_s16(v121, v121);
    v123 = vmaxq_s16(vmaxq_s16(v95, v104), vmaxq_s16(v113, v122));
    v124 = v119;
    v432 = v118;
    v125 = vclzq_s16(vsubq_s16(v118, v119));
    v126 = vsubq_s16(v29, v125);
    v127 = vcgtq_s16(v123, v126);
    v128 = vminq_s16(v126, v123);
    v129 = vmaxq_s16(vminq_s16(vsubq_s16(v128, v95), v68), 0);
    v130 = vmaxq_s16(vminq_s16(vsubq_s16(v128, v104), v68), 0);
    v131 = vmaxq_s16(vminq_s16(vsubq_s16(v128, v113), v68), 0);
    v132 = vmaxq_s16(vminq_s16(vsubq_s16(v128, v122), v68), 0);
    v126.i64[0] = 0x4000400040004;
    v126.i64[1] = 0x4000400040004;
    v133 = vbicq_s8(v126, vceqq_s16(vaddq_s16(v132, v131), vnegq_s16(vaddq_s16(v129, v130))));
    v126.i64[0] = 0x18001800180018;
    v126.i64[1] = 0x18001800180018;
    v134 = vbslq_s8(v127, v126, v29);
    v426 = vsubq_s16(v128, v130);
    v427 = vsubq_s16(v128, v131);
    v428 = vsubq_s16(v128, v132);
    v131.i64[0] = 0x7000700070007;
    v131.i64[1] = 0x7000700070007;
    v425 = vsubq_s16(v128, v129);
    v129.i64[0] = 0x8000800080008;
    v129.i64[1] = 0x8000800080008;
    v119.i64[0] = 0x2000200020002;
    v119.i64[1] = 0x2000200020002;
    v135 = vandq_s8(vceqq_s16(vandq_s8(v69, v68), v119), v29);
    v136 = v487;
    v137 = v488;
    v138 = vaddq_s16(vaddq_s16(vbicq_s8(v488, vceqzq_s16(vandq_s8(v69, v129))), v135), vandq_s8(vaddq_s16(v77, v77), v129));
    v140 = v484;
    v139 = v485;
    v141 = v486;
    v142 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vmlaq_s16(v138, v484, v131), vshlq_n_s16(vaddq_s16(vaddq_s16(v486, v485), v487), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v128, vceqzq_s16((*&v134 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v133, v133)), v425, v131), vshlq_n_s16(vaddq_s16(vaddq_s16(v427, v426), v428), 3uLL))).i64[0], 0);
    v143 = vaddvq_s16(v142);
    v145 = a5 < 2 || a6 == 0;
    if (v143)
    {
      v146.i64[0] = 0x3000300030003;
      v146.i64[1] = 0x3000300030003;
      v147 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v128), v146), v134), v133);
      v148.i64[0] = 0xF000F000F000FLL;
      v148.i64[1] = 0xF000F000F000FLL;
      v462 = vbslq_s8(v142, v78, v462);
      v464 = vbslq_s8(v142, v79, v464);
      v146.i64[0] = -1;
      v146.i64[1] = -1;
      v466 = vbslq_s8(v142, v430, v466);
      v468 = vbslq_s8(v142, v80, v468);
      v470 = vbslq_s8(v142, v436, v470);
      v471 = vbslq_s8(v142, v434, v471);
      v472 = vbslq_s8(v142, v440, v472);
      v473 = vbslq_s8(v142, v438, v473);
      v474 = vbslq_s8(v142, v444, v474);
      v475 = vbslq_s8(v142, v442, v475);
      v476 = vbslq_s8(v142, v448, v476);
      v477 = vbslq_s8(v142, v446, v477);
      v478 = vbslq_s8(v142, v81, v478);
      v479 = vbslq_s8(v142, v82, v479);
      v480 = vbslq_s8(v142, v83, v480);
      v481 = vbslq_s8(v142, v84, v481);
      v140 = vbslq_s8(v142, v425, v484);
      v139 = vbslq_s8(v142, v426, v485);
      v484 = v140;
      v485 = v139;
      v141 = vbslq_s8(v142, v427, v486);
      v136 = vbslq_s8(v142, v428, v487);
      v486 = v141;
      v487 = v136;
      v490 = vbslq_s8(v142, v432, v490);
      v491 = vbslq_s8(v142, vandq_s8(vsubq_s16(vshlq_s16(v146, vsubq_s16(v148, v125)), v124), v127), v491);
      v137 = vbslq_s8(v142, v128, v488);
      v488 = v137;
      v489 = vbslq_s8(v142, v124, v489);
      v77 = vbslq_s8(v142, v147, v483);
      v482 = vbslq_s8(v142, vsubq_s16(v482, vqtbl1q_s8(v482, xmmword_29D2F1140)), v482);
      v483 = v77;
    }

    if (!v145)
    {
      v149 = vqtbl4q_s8(*v8.i8, xmmword_29D2F1160);
      v150 = vsubq_s16(v8, vqtbl4q_s8(*v8.i8, xmmword_29D2F10B0));
      v151 = vsubq_s16(v10, v149);
      v152 = vsubq_s16(v11, v149);
      v493.val[0] = v455;
      v493.val[1] = v456;
      v493.val[2] = v457;
      v493.val[3].i64[0] = v451.i64[0];
      v493.val[3].i64[1] = v11.i64[1];
      v153 = vsubq_s16(v455, vqtbl4q_s8(v493, xmmword_29D2F10B0));
      v154 = vsubq_s16(v456, vqtbl4q_s8(v493, xmmword_29D2F10F0));
      v155 = vsubq_s16(v457, vqtbl4q_s8(v493, xmmword_29D2F1160));
      v156 = vsubq_s16(v451, vqtbl4q_s8(v493, xmmword_29D2F1100));
      v494.val[0] = v452;
      v494.val[1] = v453;
      v494.val[2] = v454;
      v494.val[3].i64[0] = v450.i64[0];
      v494.val[3].i64[1] = v11.i64[1];
      v493.val[1] = vsubq_s16(v452, vqtbl4q_s8(v494, xmmword_29D2F1170));
      v493.val[2] = vsubq_s16(v453, vqtbl4q_s8(v494, xmmword_29D2F1180));
      v493.val[3] = vsubq_s16(v454, vqtbl4q_s8(v494, xmmword_29D2F10B0));
      v157 = vsubq_s16(v450, vqtbl4q_s8(v494, xmmword_29D2F10C0));
      v492.val[0] = v459;
      v492.val[1] = v460;
      v492.val[2] = v461;
      v492.val[3].i64[0] = v458.i64[0];
      v492.val[3].i64[1] = v11.i64[1];
      v494.val[1].i64[0] = v152.i64[0];
      v494.val[1].i64[1] = v150.i64[0];
      v150.i64[0] = v152.i64[1];
      v493.val[0] = vshlq_n_s16(vsubq_s16(v459, vqtbl4q_s8(v492, xmmword_29D2F1170)), 6uLL);
      v494.val[0] = vshlq_n_s16(vsubq_s16(v460, vqtbl4q_s8(v492, xmmword_29D2F1120)), 6uLL);
      v158 = vshlq_n_s16(vsubq_s16(v461, vqtbl4q_s8(v492, xmmword_29D2F10B0)), 6uLL);
      v159 = vshlq_n_s16(vsubq_s16(v458, vqtbl4q_s8(v492, xmmword_29D2F10C0)), 6uLL);
      v160 = vshrq_n_s16(vshlq_n_s16(v150, 6uLL), 6uLL);
      v161 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v9, vqtbl4q_s8(*v8.i8, xmmword_29D2F10C0)), 6uLL), 6uLL);
      v162 = vshrq_n_s16(vshlq_n_s16(v151, 6uLL), 6uLL);
      v163 = vshrq_n_s16(vshlq_n_s16(v494.val[1], 6uLL), 6uLL);
      v164 = vshrq_n_s16(vshlq_n_s16(v153, 6uLL), 6uLL);
      v492.val[2] = vshrq_n_s16(vshlq_n_s16(v154, 6uLL), 6uLL);
      v492.val[0] = vshrq_n_s16(vshlq_n_s16(v155, 6uLL), 6uLL);
      v165 = vshrq_n_s16(vshlq_n_s16(v493.val[1], 6uLL), 6uLL);
      v494.val[1] = vshrq_n_s16(vshlq_n_s16(v493.val[2], 6uLL), 6uLL);
      v166 = vshrq_n_s16(vshlq_n_s16(v493.val[3], 6uLL), 6uLL);
      v167 = vshrq_n_s16(v493.val[0], 6uLL);
      v168 = vshrq_n_s16(v494.val[0], 6uLL);
      v169 = vshrq_n_s16(v158, 6uLL);
      v170 = vshrq_n_s16(v159, 6uLL);
      v171 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v160, v161), v162), v163), xmmword_29D2F1150);
      v172 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v160, v161), v162), v163), xmmword_29D2F1150);
      v173 = vpmaxq_s16(v171, v171);
      v174 = vpminq_s16(v172, v172);
      v159.i64[0] = 0x8000800080008000;
      v159.i64[1] = 0x8000800080008000;
      v175 = vmaxq_s16(v173, v159);
      v153.i64[0] = 0x8000800080008000;
      v153.i64[1] = 0x8000800080008000;
      v176 = vminq_s16(v174, v153);
      v177 = vzip1q_s16(v173, v174);
      v494.val[3].i64[0] = 0x10001000100010;
      v494.val[3].i64[1] = 0x10001000100010;
      v178 = vbicq_s8(vsubq_s16(v494.val[3], vclsq_s16(v177)), vceqzq_s16(v177));
      v179 = vpmaxq_s16(v178, v178);
      v435 = v492.val[2];
      v437 = v164;
      v439 = vshrq_n_s16(vshlq_n_s16(v156, 6uLL), 6uLL);
      v441 = v492.val[0];
      v180 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v164, v492.val[2]), v492.val[0]), v439), xmmword_29D2F1150);
      v181 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v164, v492.val[2]), v492.val[0]), v439), xmmword_29D2F1150);
      v182 = vpmaxq_s16(v180, v180);
      v183 = vpminq_s16(v181, v181);
      v184 = vmaxq_s16(v175, v182);
      v185 = vminq_s16(v176, v183);
      v186 = vzip1q_s16(v182, v183);
      v187 = vbicq_s8(vsubq_s16(v494.val[3], vclsq_s16(v186)), vceqzq_s16(v186));
      v188 = vpmaxq_s16(v187, v187);
      v443 = v494.val[1];
      v445 = v165;
      v447 = vshrq_n_s16(vshlq_n_s16(v157, 6uLL), 6uLL);
      v449 = v166;
      v189 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v165, v494.val[1]), v166), v447), xmmword_29D2F1150);
      v190 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v165, v494.val[1]), v166), v447), xmmword_29D2F1150);
      v191 = vpmaxq_s16(v189, v189);
      v192 = vpminq_s16(v190, v190);
      v193 = vmaxq_s16(v184, v191);
      v194 = vminq_s16(v185, v192);
      v195 = vzip1q_s16(v191, v192);
      v196 = vbicq_s8(vsubq_s16(v494.val[3], vclsq_s16(v195)), vceqzq_s16(v195));
      v197 = vpmaxq_s16(v196, v196);
      v198 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v167, v168), v169), v170), xmmword_29D2F1150);
      v199 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v167, v168), v169), v170), xmmword_29D2F1150);
      v200 = vpmaxq_s16(v198, v198);
      v201 = vpminq_s16(v199, v199);
      v202 = vmaxq_s16(v193, v200);
      v203 = vminq_s16(v194, v201);
      v204 = vzip1q_s16(v200, v201);
      v205 = vbicq_s8(vsubq_s16(v494.val[3], vclsq_s16(v204)), vceqzq_s16(v204));
      v206 = vpmaxq_s16(v205, v205);
      v207 = vmaxq_s16(vmaxq_s16(v179, v188), vmaxq_s16(v197, v206));
      v208 = v203;
      v209 = vclzq_s16(vsubq_s16(v202, v203));
      v210 = vsubq_s16(v494.val[3], v209);
      v211 = vcgtq_s16(v207, v210);
      v212 = vminq_s16(v210, v207);
      v207.i64[0] = 0x3000300030003;
      v207.i64[1] = 0x3000300030003;
      v213 = vmaxq_s16(vminq_s16(vsubq_s16(v212, v179), v207), 0);
      v214 = vmaxq_s16(vminq_s16(vsubq_s16(v212, v188), v207), 0);
      v215 = vmaxq_s16(vminq_s16(vsubq_s16(v212, v197), v207), 0);
      v216 = vmaxq_s16(vminq_s16(vsubq_s16(v212, v206), v207), 0);
      v494.val[1] = vsubq_s16(v212, v213);
      v217 = vsubq_s16(v212, v214);
      v218 = vsubq_s16(v212, v216);
      v219 = vceqq_s16(vaddq_s16(v216, v215), vnegq_s16(vaddq_s16(v213, v214)));
      v214.i64[0] = 0x4000400040004;
      v214.i64[1] = 0x4000400040004;
      v220 = vbicq_s8(v214, v219);
      v216.i64[0] = 0x7000700070007;
      v216.i64[1] = 0x7000700070007;
      v431 = vsubq_s16(v212, v215);
      v433 = v217;
      v429 = v494.val[1];
      v221 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v212, v211), vaddq_s16(v220, v220)), v494.val[1], v216), vshlq_n_s16(vaddq_s16(vaddq_s16(v431, v217), v218), 3uLL));
      v77 = v483;
      v140 = v484;
      v222.i64[0] = 0x2000200020002;
      v222.i64[1] = 0x2000200020002;
      v223 = vandq_s8(vceqq_s16(vandq_s8(v483, v207), v222), v494.val[3]);
      v207.i64[0] = 0x8000800080008;
      v207.i64[1] = 0x8000800080008;
      v136 = v487;
      v137 = v488;
      v139 = v485;
      v141 = v486;
      v224 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v488, vceqzq_s16(vandq_s8(v483, v207))), vandq_s8(vaddq_s16(v77, v77), v207)), v223), v484, v216), vshlq_n_s16(vaddq_s16(vaddq_s16(v486, v485), v487), 3uLL)), v221).i64[0], 0);
      if (vaddvq_s16(v224))
      {
        v225.i64[0] = 0x9000900090009;
        v225.i64[1] = 0x9000900090009;
        v226.i64[0] = 0xF000F000F000FLL;
        v226.i64[1] = 0xF000F000F000FLL;
        v227.i64[0] = -1;
        v227.i64[1] = -1;
        v140 = vbslq_s8(v224, v429, v484);
        v139 = vbslq_s8(v224, v433, v485);
        v141 = vbslq_s8(v224, v431, v486);
        v136 = vbslq_s8(v224, v218, v487);
        v137 = vbslq_s8(v224, v212, v488);
        v77 = vbslq_s8(v224, vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v212), v222), vsubq_s16(vandq_s8(v211, v225), vmvnq_s8(v211))), v220), v483);
        v481 = vbslq_s8(v224, v170, v481);
        v482 = vbslq_s8(v224, vextq_s8(v11, v11, 8uLL), v482);
        v462 = vbslq_s8(v224, v160, v462);
        v464 = vbslq_s8(v224, v161, v464);
        v466 = vbslq_s8(v224, v162, v466);
        v468 = vbslq_s8(v224, v163, v468);
        v470 = vbslq_s8(v224, v437, v470);
        v471 = vbslq_s8(v224, v435, v471);
        v472 = vbslq_s8(v224, v441, v472);
        v473 = vbslq_s8(v224, v439, v473);
        v474 = vbslq_s8(v224, v445, v474);
        v475 = vbslq_s8(v224, v443, v475);
        v476 = vbslq_s8(v224, v449, v476);
        v477 = vbslq_s8(v224, v447, v477);
        v478 = vbslq_s8(v224, v167, v478);
        v479 = vbslq_s8(v224, v168, v479);
        v480 = vbslq_s8(v224, v169, v480);
        v489 = vbslq_s8(v224, v208, v489);
        v490 = vbslq_s8(v224, v202, v490);
        v491 = vbslq_s8(v224, vandq_s8(vsubq_s16(vshlq_s16(v227, vsubq_s16(v226, v209)), v208), v211), v491);
        v484 = v140;
        v485 = v139;
        v486 = v141;
        v487 = v136;
        v488 = v137;
        v483 = v77;
      }
    }

    v228 = vandq_s8(v491, vceqq_s16(v137, v140));
    v463 = vaddq_s16(v228, v462);
    v465 = vaddq_s16(v464, v228);
    v467 = vaddq_s16(v466, v228);
    v469 = vaddq_s16(v468, v228);
    v229 = vandq_s8(v491, vceqq_s16(v137, v139));
    v470 = vaddq_s16(v470, v229);
    v471 = vaddq_s16(v471, v229);
    v472 = vaddq_s16(v472, v229);
    v473 = vaddq_s16(v473, v229);
    v230 = vandq_s8(v491, vceqq_s16(v137, v141));
    v474 = vaddq_s16(v474, v230);
    v475 = vaddq_s16(v475, v230);
    v476 = vaddq_s16(v476, v230);
    v477 = vaddq_s16(v477, v230);
    v231 = vandq_s8(v491, vceqq_s16(v137, v136));
    v478 = vaddq_s16(v478, v231);
    v479 = vaddq_s16(v479, v231);
    v480 = vaddq_s16(v480, v231);
    v481 = vaddq_s16(v481, v231);
    v231.i64[0] = 0x8000800080008;
    v231.i64[1] = 0x8000800080008;
    v232.i64[0] = 0x3000300030003;
    v232.i64[1] = 0x3000300030003;
    v233.i64[0] = 0x2000200020002;
    v233.i64[1] = 0x2000200020002;
    v234 = vceqq_s16(vandq_s8(v77, v232), v233);
    v233.i64[0] = 0x10001000100010;
    v233.i64[1] = 0x10001000100010;
    v235 = vandq_s8(v234, v233);
    v233.i64[0] = 0x7000700070007;
    v233.i64[1] = 0x7000700070007;
    v236 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v137, vceqzq_s16(vandq_s8(v77, v231))), vandq_s8(vaddq_s16(v77, v77), v231)), v235), v140, v233), vshlq_n_s16(vaddq_s16(vaddq_s16(v141, v139), v136), 3uLL));
    v237 = vpaddq_s16(v236, v236);
    if ((vpaddq_s16(v237, v237).i16[0] + 83) > 0x4FF)
    {
      AGX::AppleCompressionGen2::writePackedUncompressedSubblock<(AGX::AppleCompressionGen2::PixelFormat)19,AGX::AppleCompressionGen2::VecArray<short,4ul>>(a1, a2, v8, v9, v10, v11, v455, v456, v457, v451, a3, a4, a5, a6, a7, a8, v452, v453, v454, v450, v459, v460, v461, v458);
      return 160;
    }

    else
    {
      v238 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v239 = 8 * (a1 & 7);
      if (v239)
      {
        v240 = *v238 & ~(-1 << v239);
      }

      else
      {
        v240 = 0;
      }

      *a2 = 0;
      v244 = v482.i64[0];
      if (v137.i16[0])
      {
        v245 = ((v137.i8[0] - 1) & 0xF) << 20;
      }

      else
      {
        v245 = 0;
      }

      if (v137.i16[1])
      {
        v246 = ((v137.i8[2] - 1) & 0xF) << 24;
      }

      else
      {
        v246 = 0;
      }

      if (v137.i16[2])
      {
        v247 = (v137.u16[2] << 28) - 0x10000000;
      }

      else
      {
        v247 = 0;
      }

      if (v137.i16[3])
      {
        v248 = ((v137.i8[6] - 1) & 0xF) << 32;
      }

      else
      {
        v248 = 0;
      }

      v249 = (v77.i8[0] & 0x1F | (32 * (v77.i8[2] & 0x1F)) & 0x83FF | ((v77.i8[4] & 0x1F) << 10) | ((v77.i8[6] & 0x1F) << 15) | v245 | v246 | v247) + v248;
      v250 = (v249 << v239) | v240;
      if (v239 >= 0x1C)
      {
        *v238 = v250;
        v250 = v249 >> (-8 * (a1 & 7u));
      }

      v251 = v244 & 0x3FF | ((WORD1(v244) & 0x3FF) << 10) & 0xFFFFFFFFC00FFFFFLL | ((WORD2(v244) & 0x3FF) << 20) | ((HIWORD(v244) & 0x3FF) << 30);
      v252 = (v239 + 36) & 0x3C;
      v253 = v250 | (v251 << v252);
      if (v252 >= 0x18)
      {
        *(v238 + (((v239 + 36) >> 3) & 8)) = v253;
        v253 = v251 >> -v252;
      }

      v254 = v239 + 76;
      v255 = vsubq_s16(v488, v484);
      v256 = vsubq_s16(v488, v485);
      v257 = vsubq_s16(v488, v486);
      v258 = vsubq_s16(v488, v487);
      *v255.i8 = vqmovn_u16(v255);
      *v256.i8 = vqmovn_u16(v256);
      *v257.i8 = vqmovn_u16(v257);
      *v258.i8 = vqmovn_u16(v258);
      v259 = vtrn1q_s8(v255, v256);
      v260 = vtrn2q_s8(v255, v256);
      v261 = vtrn1q_s8(v257, v258);
      v262 = vtrn2q_s8(v257, v258);
      v263 = vzip1q_s16(v260, v262);
      v264 = vtrn2q_s16(v260, v262);
      v260.i64[0] = vzip1q_s32(vzip1q_s16(v259, v261), v263).u64[0];
      v264.i64[0] = vzip1q_s32(vtrn2q_s16(v259, v261), v264).u64[0];
      v257.i64[0] = 0x202020202020202;
      v257.i64[1] = 0x202020202020202;
      v265 = vandq_s8(vmovl_s16(vtst_s16(*v483.i8, 0x4000400040004)), v257);
      v257.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v257.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v259.i64[0] = -1;
      v259.i64[1] = -1;
      v266 = vshlq_u8(v259, vorrq_s8(v265, v257));
      v267 = vmovl_u8(vand_s8(*v266.i8, *v260.i8));
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
      v283 = (v239 + 76) & 0x3C;
      v284 = (v281.i64[0] << v283) | v253;
      if ((v282.i64[0] + v283) >= 0x40)
      {
        *(v238 + ((v254 >> 3) & 0x18)) = v284;
        v284 = v281.i64[0] >> -v283;
      }

      v285 = v282.i64[0] + v254;
      v286 = v284 | (v281.i64[1] << v285);
      if ((v285 & 0x3F) + v282.i64[1] >= 0x40)
      {
        *(v238 + ((v285 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v286;
        v286 = v281.i64[1] >> -(v285 & 0x3F);
        if ((v285 & 0x3F) == 0)
        {
          v286 = 0;
        }
      }

      v287 = v285 + v282.i64[1];
      v288.i64[0] = 0x8000800080008;
      v288.i64[1] = 0x8000800080008;
      v289.i64[0] = -1;
      v289.i64[1] = -1;
      v290 = vandq_s8(vextq_s8(vtstq_s16(v483, v288), 0, 8uLL), v488);
      v291.i64[0] = 0xF000F000F000FLL;
      v291.i64[1] = 0xF000F000F000FLL;
      v292 = vandq_s8(vshlq_u16(v289, vaddq_s16(v290, v291)), v491);
      v293 = vmovl_u16(*v290.i8);
      v294 = vpaddq_s32(vshlq_u32(vmovl_u16(*v292.i8), vtrn1q_s32(0, v293)), vmovl_high_u16(v292));
      v295 = vpaddq_s32(v293, vmovl_high_u16(v290));
      v296.i64[0] = v294.u32[0];
      v296.i64[1] = v294.u32[1];
      v297 = v296;
      v296.i64[0] = v294.u32[2];
      v296.i64[1] = v294.u32[3];
      v298 = v296;
      v296.i64[0] = v295.u32[0];
      v296.i64[1] = v295.u32[1];
      v299 = v296;
      v296.i64[0] = v295.u32[2];
      v296.i64[1] = v295.u32[3];
      v300 = vpaddq_s64(vshlq_u64(v297, vzip1q_s64(0, v299)), vshlq_u64(v298, vzip1q_s64(0, v296)));
      v301 = vpaddq_s64(v299, v296);
      v302 = (v300.i64[0] << v287) | v286;
      if (v301.i64[0] + (v287 & 0x3F) >= 0x40)
      {
        *(v238 + ((v287 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v302;
        v302 = v300.i64[0] >> -(v287 & 0x3F);
        if ((v287 & 0x3F) == 0)
        {
          v302 = 0;
        }
      }

      v303 = v301.i64[0] + v287;
      v304 = v302 | (v300.i64[1] << v303);
      if ((v303 & 0x3F) + v301.i64[1] >= 0x40)
      {
        *(v238 + ((v303 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v304;
        v304 = v300.i64[1] >> -(v303 & 0x3F);
        if ((v303 & 0x3F) == 0)
        {
          v304 = 0;
        }
      }

      v305 = v303 + v301.i64[1];
      v306 = vextq_s8(0, v484, 8uLL);
      v307.i64[0] = 0xF000F000F000FLL;
      v307.i64[1] = 0xF000F000F000FLL;
      v308.i64[0] = -1;
      v308.i64[1] = -1;
      v309 = vandq_s8(vshlq_u16(v308, vaddq_s16(v306, v307)), v463);
      v310 = vmovl_u16(*v306.i8);
      v311 = vmovl_high_u16(v306);
      v312 = vpaddq_s32(vmovl_u16(*v309.i8), vshlq_u32(vmovl_high_u16(v309), vtrn1q_s32(0, v311)));
      v313 = vpaddq_s32(v310, v311);
      v314.i64[0] = v312.u32[0];
      v314.i64[1] = v312.u32[1];
      v315 = v314;
      v314.i64[0] = v312.u32[2];
      v314.i64[1] = v312.u32[3];
      v316 = v314;
      v314.i64[0] = v313.u32[0];
      v314.i64[1] = v313.u32[1];
      v317 = v314;
      v314.i64[0] = v313.u32[2];
      v314.i64[1] = v313.u32[3];
      v318 = vpaddq_s64(vshlq_u64(v315, vzip1q_s64(0, v317)), vshlq_u64(v316, vzip1q_s64(0, v314)));
      v319 = vpaddq_s64(v317, v314);
      v320 = (v318.i64[0] << v305) | v304;
      if (v319.i64[0] + (v305 & 0x3F) >= 0x40)
      {
        *(v238 + ((v305 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v320;
        v320 = v318.i64[0] >> -(v305 & 0x3F);
        if ((v305 & 0x3F) == 0)
        {
          v320 = 0;
        }
      }

      v321 = v319.i64[0] + v305;
      v322 = v320 | (v318.i64[1] << v321);
      if ((v321 & 0x3F) + v319.i64[1] >= 0x40)
      {
        *(v238 + ((v321 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v322;
        v322 = v318.i64[1] >> -(v321 & 0x3F);
        if ((v321 & 0x3F) == 0)
        {
          v322 = 0;
        }
      }

      v323 = v321 + v319.i64[1];
      v324.i64[0] = 0xF000F000F000FLL;
      v324.i64[1] = 0xF000F000F000FLL;
      v325.i64[0] = -1;
      v325.i64[1] = -1;
      v326 = vandq_s8(vshlq_u16(v325, vaddq_s16(v484, v324)), v465);
      v327 = vmovl_u16(*v484.i8);
      v328 = vmovl_high_u16(v484);
      v329 = vpaddq_s32(vshlq_u32(vmovl_u16(*v326.i8), vtrn1q_s32(0, v327)), vshlq_u32(vmovl_high_u16(v326), vtrn1q_s32(0, v328)));
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
      v337 = (v335.i64[0] << v323) | v322;
      if (v336.i64[0] + (v323 & 0x3F) >= 0x40)
      {
        *(v238 + ((v323 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v337;
        v337 = v335.i64[0] >> -(v323 & 0x3F);
        if ((v323 & 0x3F) == 0)
        {
          v337 = 0;
        }
      }

      v338 = v336.i64[0] + v323;
      v339 = v337 | (v335.i64[1] << v338);
      if ((v338 & 0x3F) + v336.i64[1] >= 0x40)
      {
        *(v238 + ((v338 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v339;
        v339 = v335.i64[1] >> -(v338 & 0x3F);
        if ((v338 & 0x3F) == 0)
        {
          v339 = 0;
        }
      }

      v340 = v338 + v336.i64[1];
      v341.i64[0] = 0xF000F000F000FLL;
      v341.i64[1] = 0xF000F000F000FLL;
      v342.i64[0] = -1;
      v342.i64[1] = -1;
      v343 = vandq_s8(vshlq_u16(v342, vaddq_s16(v484, v341)), v467);
      v344 = vmovl_u16(*v484.i8);
      v345 = vmovl_high_u16(v484);
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
      v354 = (v352.i64[0] << v340) | v339;
      if (v353.i64[0] + (v340 & 0x3F) >= 0x40)
      {
        *(v238 + ((v340 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v354;
        v354 = v352.i64[0] >> -(v340 & 0x3F);
        if ((v340 & 0x3F) == 0)
        {
          v354 = 0;
        }
      }

      v355 = v353.i64[0] + v340;
      v356 = v354 | (v352.i64[1] << v355);
      if ((v355 & 0x3F) + v353.i64[1] >= 0x40)
      {
        *(v238 + ((v355 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v356;
        v356 = v352.i64[1] >> -(v355 & 0x3F);
        if ((v355 & 0x3F) == 0)
        {
          v356 = 0;
        }
      }

      v357 = v355 + v353.i64[1];
      v358.i64[0] = 0xF000F000F000FLL;
      v358.i64[1] = 0xF000F000F000FLL;
      v359.i64[0] = -1;
      v359.i64[1] = -1;
      v360 = vandq_s8(vshlq_u16(v359, vaddq_s16(v484, v358)), v469);
      v361 = vmovl_u16(*v484.i8);
      v362 = vmovl_high_u16(v484);
      v363 = vpaddq_s32(vshlq_u32(vmovl_u16(*v360.i8), vtrn1q_s32(0, v361)), vshlq_u32(vmovl_high_u16(v360), vtrn1q_s32(0, v362)));
      v364 = vpaddq_s32(v361, v362);
      v365.i64[0] = v363.u32[0];
      v365.i64[1] = v363.u32[1];
      v366 = v365;
      v365.i64[0] = v363.u32[2];
      v365.i64[1] = v363.u32[3];
      v367 = v365;
      v365.i64[0] = v364.u32[0];
      v365.i64[1] = v364.u32[1];
      v368 = v365;
      v365.i64[0] = v364.u32[2];
      v365.i64[1] = v364.u32[3];
      v369 = vpaddq_s64(vshlq_u64(v366, vzip1q_s64(0, v368)), vshlq_u64(v367, vzip1q_s64(0, v365)));
      v370 = vpaddq_s64(v368, v365);
      v371 = (v369.i64[0] << v357) | v356;
      if (v370.i64[0] + (v357 & 0x3F) >= 0x40)
      {
        *(v238 + ((v357 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v371;
        v371 = v369.i64[0] >> -(v357 & 0x3F);
        if ((v357 & 0x3F) == 0)
        {
          v371 = 0;
        }
      }

      v372 = v370.i64[1];
      v373 = v370.i64[0] + v357;
      v374 = (v370.i64[0] + v357) & 0x3F;
      v375 = v371 | (v369.i64[1] << v373);
      if ((v374 + v370.i64[1]) >= 0x40)
      {
        *(v238 + ((v373 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v375;
        v375 = v369.i64[1] >> -v374;
        if (!v374)
        {
          v375 = 0;
        }
      }

      v376 = 0;
      v377.i64[0] = 0xF000F000F000FLL;
      v377.i64[1] = 0xF000F000F000FLL;
      v378.i64[0] = -1;
      v378.i64[1] = -1;
      v379 = v373 + v372;
      do
      {
        v380 = vandq_s8(vshlq_u16(v378, vaddq_s16(v485, v377)), *(&v470 + v376));
        v381 = vmovl_u16(*v485.i8);
        v382 = vmovl_high_u16(v485);
        v383 = vpaddq_s32(vshlq_u32(vmovl_u16(*v380.i8), vtrn1q_s32(0, v381)), vshlq_u32(vmovl_high_u16(v380), vtrn1q_s32(0, v382)));
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
        v391 = (v389.i64[0] << v379) | v375;
        if (v390.i64[0] + (v379 & 0x3F) >= 0x40)
        {
          *(v238 + ((v379 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v391;
          v391 = v389.i64[0] >> -(v379 & 0x3F);
          if ((v379 & 0x3F) == 0)
          {
            v391 = 0;
          }
        }

        v392 = v390.i64[0] + v379;
        v375 = v391 | (v389.i64[1] << v392);
        if ((v392 & 0x3F) + v390.i64[1] >= 0x40)
        {
          *(v238 + ((v392 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v375;
          v375 = v389.i64[1] >> -(v392 & 0x3F);
          if ((v392 & 0x3F) == 0)
          {
            v375 = 0;
          }
        }

        v379 = v392 + v390.i64[1];
        v376 += 16;
      }

      while (v376 != 64);
      v393 = 0;
      v394.i64[0] = 0xF000F000F000FLL;
      v394.i64[1] = 0xF000F000F000FLL;
      v395.i64[0] = -1;
      v395.i64[1] = -1;
      do
      {
        v396 = vandq_s8(vshlq_u16(v395, vaddq_s16(v486, v394)), *(&v474 + v393));
        v397 = vmovl_u16(*v486.i8);
        v398 = vmovl_high_u16(v486);
        v399 = vpaddq_s32(vshlq_u32(vmovl_u16(*v396.i8), vtrn1q_s32(0, v397)), vshlq_u32(vmovl_high_u16(v396), vtrn1q_s32(0, v398)));
        v400 = vpaddq_s32(v397, v398);
        v401.i64[0] = v399.u32[0];
        v401.i64[1] = v399.u32[1];
        v402 = v401;
        v401.i64[0] = v399.u32[2];
        v401.i64[1] = v399.u32[3];
        v403 = v401;
        v401.i64[0] = v400.u32[0];
        v401.i64[1] = v400.u32[1];
        v404 = v401;
        v401.i64[0] = v400.u32[2];
        v401.i64[1] = v400.u32[3];
        v405 = vpaddq_s64(vshlq_u64(v402, vzip1q_s64(0, v404)), vshlq_u64(v403, vzip1q_s64(0, v401)));
        v406 = vpaddq_s64(v404, v401);
        v407 = (v405.i64[0] << v379) | v375;
        if (v406.i64[0] + (v379 & 0x3F) >= 0x40)
        {
          *(v238 + ((v379 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v407;
          v407 = v405.i64[0] >> -(v379 & 0x3F);
          if ((v379 & 0x3F) == 0)
          {
            v407 = 0;
          }
        }

        v408 = v406.i64[0] + v379;
        v375 = v407 | (v405.i64[1] << v408);
        if ((v408 & 0x3F) + v406.i64[1] >= 0x40)
        {
          *(v238 + ((v408 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v375;
          v375 = v405.i64[1] >> -(v408 & 0x3F);
          if ((v408 & 0x3F) == 0)
          {
            v375 = 0;
          }
        }

        v379 = v408 + v406.i64[1];
        v393 += 16;
      }

      while (v393 != 64);
      v409 = 0;
      v410.i64[0] = 0xF000F000F000FLL;
      v410.i64[1] = 0xF000F000F000FLL;
      v411.i64[0] = -1;
      v411.i64[1] = -1;
      do
      {
        v412 = vandq_s8(vshlq_u16(v411, vaddq_s16(v487, v410)), *(&v478 + v409));
        v413 = vmovl_u16(*v487.i8);
        v414 = vmovl_high_u16(v487);
        v415 = vpaddq_s32(vshlq_u32(vmovl_u16(*v412.i8), vtrn1q_s32(0, v413)), vshlq_u32(vmovl_high_u16(v412), vtrn1q_s32(0, v414)));
        v416 = vpaddq_s32(v413, v414);
        v417.i64[0] = v415.u32[0];
        v417.i64[1] = v415.u32[1];
        v418 = v417;
        v417.i64[0] = v415.u32[2];
        v417.i64[1] = v415.u32[3];
        v419 = v417;
        v417.i64[0] = v416.u32[0];
        v417.i64[1] = v416.u32[1];
        v420 = v417;
        v417.i64[0] = v416.u32[2];
        v417.i64[1] = v416.u32[3];
        v421 = vpaddq_s64(vshlq_u64(v418, vzip1q_s64(0, v420)), vshlq_u64(v419, vzip1q_s64(0, v417)));
        v422 = vpaddq_s64(v420, v417);
        v423 = (v421.i64[0] << v379) | v375;
        if (v422.i64[0] + (v379 & 0x3F) >= 0x40)
        {
          *(v238 + ((v379 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v423;
          v423 = v421.i64[0] >> -(v379 & 0x3F);
          if ((v379 & 0x3F) == 0)
          {
            v423 = 0;
          }
        }

        v424 = v422.i64[0] + v379;
        v375 = v423 | (v421.i64[1] << v424);
        if ((v424 & 0x3F) + v422.i64[1] >= 0x40)
        {
          *(v238 + ((v424 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v375;
          v375 = v421.i64[1] >> -(v424 & 0x3F);
          if ((v424 & 0x3F) == 0)
          {
            v375 = 0;
          }
        }

        v379 = v424 + v422.i64[1];
        v409 += 16;
      }

      while (v409 != 64);
      if ((v379 & 0x3F) != 0)
      {
        *(v238 + ((v379 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v375;
      }

      result = (v379 - v239 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    v241 = vld1q_dup_f64(a3->i64);
    v242 = vorrq_s8(vandq_s8(vshlq_u64(v241, xmmword_29D2F1440), xmmword_29D2F1470), vandq_s8(vshlq_u64(v241, xmmword_29D2F1450), xmmword_29D2F1460));
    *v242.i8 = vorr_s8(*v242.i8, *&vextq_s8(v242, v242, 8uLL));
    *a1 = v242.i32[0];
    *(a1 + 4) = v242.i8[4];
    *a2 = 4;
    return 5;
  }

  return result;
}