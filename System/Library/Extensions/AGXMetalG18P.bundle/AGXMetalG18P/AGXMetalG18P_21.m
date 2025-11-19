uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(int64x2_t *a1, int64x2_t *a2, unsigned __int8 *a3)
{
  v5 = (a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 64, a2, *a3));
  v6 = (v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 16, 64, v5, a3[1]));
  v7 = (v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 2, 64, v6, a3[2]));
  v8 = (v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 18, 64, v7, a3[3]));
  v9 = (v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 32, 64, v8, a3[4]));
  v10 = (v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 48, 64, v9, a3[5]));
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 34, 64, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 50, 64, (v10 + v11), v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(unint64_t a1, char *a2, int64x2_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
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
  v24 = vbslq_s8(xmmword_29D2F1290, v23, 0);
  v25 = vbslq_s8(xmmword_29D2F1290, v22, 0);
  v22.i64[0] = v11.u32[0];
  v22.i64[1] = v11.u32[1];
  v26 = v22;
  v22.i64[0] = v11.u32[2];
  v22.i64[1] = v11.u32[3];
  v27 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v10.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v10.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v10.i8, 6uLL), v24)));
  v28 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v10, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v10, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v10, 6uLL), v25)));
  v525 = v10;
  v526 = v11;
  v29 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v11.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v11.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v11.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v26, 0))));
  v30 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v11, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v11, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v11, 6uLL), vbslq_s8(xmmword_29D2F1290, v22, 0))));
  v22.i64[0] = v18.u32[0];
  v22.i64[1] = v18.u32[1];
  v31 = v22;
  v22.i64[0] = v18.u32[2];
  v22.i64[1] = v18.u32[3];
  v32 = vbslq_s8(xmmword_29D2F1290, v31, 0);
  v33 = vbslq_s8(xmmword_29D2F1290, v22, 0);
  v22.i64[0] = v19.u32[0];
  v22.i64[1] = v19.u32[1];
  v34 = v22;
  v22.i64[0] = v19.u32[2];
  v22.i64[1] = v19.u32[3];
  v35 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v18.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v18.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v18.i8, 6uLL), v32)));
  v36 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v18, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v18, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v18, 6uLL), v33)));
  v523 = v18;
  v524 = v19;
  v37 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v19.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v19.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v19.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v34, 0))));
  v38 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v19, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v19, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v19, 6uLL), vbslq_s8(xmmword_29D2F1290, v22, 0))));
  v22.i64[0] = v12.u32[0];
  v22.i64[1] = v12.u32[1];
  v39 = v22;
  v22.i64[0] = v12.u32[2];
  v22.i64[1] = v12.u32[3];
  v40 = vbslq_s8(xmmword_29D2F1290, v39, 0);
  v41 = vbslq_s8(xmmword_29D2F1290, v22, 0);
  v22.i64[0] = v16.u32[0];
  v22.i64[1] = v16.u32[1];
  v42 = v22;
  v22.i64[0] = v16.u32[2];
  v22.i64[1] = v16.u32[3];
  v43 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v12.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v12.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v12.i8, 6uLL), v40)));
  v44 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v12, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v12, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v12, 6uLL), v41)));
  v529 = v12;
  v530 = v16;
  v45 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v16.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v16.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v16.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v42, 0))));
  v46 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v16, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v16, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v16, 6uLL), vbslq_s8(xmmword_29D2F1290, v22, 0))));
  v22.i64[0] = v20.u32[0];
  v22.i64[1] = v20.u32[1];
  v47 = v22;
  v22.i64[0] = v20.u32[2];
  v22.i64[1] = v20.u32[3];
  v48 = vbslq_s8(xmmword_29D2F1290, v47, 0);
  v49 = vbslq_s8(xmmword_29D2F1290, v22, 0);
  v22.i64[0] = v21.u32[0];
  v22.i64[1] = v21.u32[1];
  v50 = v22;
  v22.i64[0] = v21.u32[2];
  v22.i64[1] = v21.u32[3];
  v51 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v20.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v20.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v20.i8, 6uLL), v48)));
  v52 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v20, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v20, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v20, 6uLL), v49)));
  v527 = v20;
  v528 = v21;
  v53 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v21.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v21.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v21.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v50, 0))));
  v54 = vdupq_lane_s64(v27.i64[0], 0);
  v532 = vshlq_s16(vshlq_s16(vsubq_s16(v27, v54), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v534 = vshlq_s16(vshlq_s16(vsubq_s16(v28, v54), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v55 = vshlq_s16(vshlq_s16(vsubq_s16(v29, v54), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v56 = vminq_s16(vminq_s16(v532, v534), v55);
  v536 = v55;
  v538 = vshlq_s16(vshlq_s16(vsubq_s16(v30, v54), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v57 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v532, v534), v55), v538), xmmword_29D2F1150);
  v58 = vqtbl1q_s8(vminq_s16(v56, v538), xmmword_29D2F1150);
  v59 = vpmaxq_s16(v57, v57);
  v60 = vpminq_s16(v58, v58);
  v61 = vzip1q_s16(v59, v60);
  v15.i64[0] = 0x10001000100010;
  v15.i64[1] = 0x10001000100010;
  v62 = vbicq_s8(vsubq_s16(v15, vclsq_s16(v61)), vceqzq_s16(v61));
  v540 = vshlq_s16(vshlq_s16(vsubq_s16(v35, v54), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v541 = vshlq_s16(vshlq_s16(vsubq_s16(v36, v54), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v521 = v38;
  v63 = vshlq_s16(vshlq_s16(vsubq_s16(v37, v54), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v64 = vminq_s16(vminq_s16(v540, v541), v63);
  v542 = v63;
  v543 = vshlq_s16(vshlq_s16(vsubq_s16(v38, v54), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v12.i64[0] = 0x8000800080008000;
  v12.i64[1] = 0x8000800080008000;
  v65 = vmaxq_s16(v59, v12);
  v12.i64[0] = 0x8000800080008000;
  v12.i64[1] = 0x8000800080008000;
  v66 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v540, v541), v63), v543), xmmword_29D2F1150);
  v67 = vqtbl1q_s8(vminq_s16(v64, v543), xmmword_29D2F1150);
  v68 = vpmaxq_s16(v66, v66);
  v69 = vpminq_s16(v67, v67);
  v70 = vmaxq_s16(v65, v68);
  v71 = vminq_s16(vminq_s16(v60, v12), v69);
  v72 = vzip1q_s16(v68, v69);
  v12.i64[0] = 0x10001000100010;
  v12.i64[1] = 0x10001000100010;
  v73 = vbicq_s8(vsubq_s16(v12, vclsq_s16(v72)), vceqzq_s16(v72));
  v544 = vshlq_s16(vshlq_s16(vsubq_s16(v43, v54), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v545 = vshlq_s16(vshlq_s16(vsubq_s16(v44, v54), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v74 = vshlq_s16(vshlq_s16(vsubq_s16(v45, v54), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v75 = vminq_s16(vminq_s16(v544, v545), v74);
  v546 = v74;
  v547 = vshlq_s16(vshlq_s16(vsubq_s16(v46, v54), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v76 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v544, v545), v74), v547), xmmword_29D2F1150);
  v77 = vqtbl1q_s8(vminq_s16(v75, v547), xmmword_29D2F1150);
  v78 = vpmaxq_s16(v76, v76);
  v79 = vpminq_s16(v77, v77);
  v80 = vmaxq_s16(v70, v78);
  v81 = vminq_s16(v71, v79);
  v82 = vzip1q_s16(v78, v79);
  v83 = vbicq_s8(vsubq_s16(v12, vclsq_s16(v82)), vceqzq_s16(v82));
  v548 = vshlq_s16(vshlq_s16(vsubq_s16(v51, v54), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v549 = vshlq_s16(vshlq_s16(vsubq_s16(v52, v54), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v552 = v54;
  v519 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v21, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v21, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v21, 6uLL), vbslq_s8(xmmword_29D2F1290, v22, 0))));
  v550 = vshlq_s16(vshlq_s16(vsubq_s16(v53, v54), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v551 = vshlq_s16(vshlq_s16(vsubq_s16(v519, v54), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v84 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v548, v549), v550), v551), xmmword_29D2F1150);
  v85 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v548, v549), v550), v551), xmmword_29D2F1150);
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
  v559 = v89;
  v560 = v88;
  v99 = vsubq_s16(vshlq_s16(v98, vsubq_s16(v21, v97)), v89);
  v100 = vsubq_s16(v12, v97);
  v101 = vcgtq_s16(v96, v100);
  v102 = vminq_s16(v100, v96);
  v561 = vandq_s8(v99, v101);
  v99.i64[0] = 0x8000800080008;
  v99.i64[1] = 0x8000800080008;
  v12.i64[0] = 0x3000300030003;
  v12.i64[1] = 0x3000300030003;
  v103 = vorrq_s8(vandq_s8(vceqzq_s16(v102), v12), vorrq_s8(vandq_s8(v101, v99), 0));
  v104 = vmaxq_s16(vminq_s16(vsubq_s16(v102, v93), v12), 0);
  v105 = vmaxq_s16(vminq_s16(vsubq_s16(v102, v94), v12), 0);
  v555 = vsubq_s16(v102, v104);
  v556 = vsubq_s16(v102, v105);
  v106 = vmaxq_s16(vminq_s16(vsubq_s16(v102, v95), v12), 0);
  v557 = vsubq_s16(v102, v106);
  v558 = v102;
  v107 = vmaxq_s16(vminq_s16(vsubq_s16(v102, v92), v12), 0);
  v108 = vceqq_s16(vaddq_s16(v106, v105), vnegq_s16(vaddq_s16(v107, v104)));
  v106.i64[0] = 0x4000400040004;
  v106.i64[1] = 0x4000400040004;
  v109 = vorrq_s8(vbicq_s8(v106, v108), v103);
  v553 = v109;
  v554 = vsubq_s16(v102, v107);
  if (vmaxvq_s16(v102))
  {
    v513 = v35;
    v515 = v36;
    v516 = v37;
    v487 = v46;
    v511 = v103;
    v110 = vshlq_s16(vshlq_s16(vsubq_s16(v540, vqtbl1q_s8(v540, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v111 = vshlq_s16(vshlq_s16(vsubq_s16(v541, vqtbl1q_s8(v541, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v112 = vshlq_s16(vshlq_s16(vsubq_s16(v542, vqtbl1q_s8(v542, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v113 = vshlq_s16(vshlq_s16(vsubq_s16(v543, vqtbl1q_s8(v543, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v114 = vshlq_s16(vshlq_s16(vsubq_s16(v549, vqtbl1q_s8(v549, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v494 = vshlq_s16(vshlq_s16(vsubq_s16(v532, vqtbl1q_s8(v532, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v495 = vshlq_s16(vshlq_s16(vsubq_s16(v534, vqtbl1q_s8(v534, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v496 = vshlq_s16(vshlq_s16(vsubq_s16(v538, vqtbl1q_s8(v538, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v497 = vshlq_s16(vshlq_s16(vsubq_s16(v536, vqtbl1q_s8(v536, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v115 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v494, v495), v497), v496), xmmword_29D2F1150);
    v116 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v494, v495), v497), v496), xmmword_29D2F1150);
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
    v500 = v111;
    v501 = v110;
    v128 = vshlq_s16(vshlq_s16(vsubq_s16(v548, vqtbl1q_s8(v548, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v502 = v113;
    v503 = v112;
    v129 = vminq_s16(vminq_s16(vminq_s16(v110, v111), v112), v113);
    v130 = vshlq_s16(vshlq_s16(vsubq_s16(v550, vqtbl1q_s8(v550, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v131 = vqtbl1q_s8(v127, xmmword_29D2F1150);
    v132 = vqtbl1q_s8(v129, xmmword_29D2F1150);
    v133 = vpmaxq_s16(v131, v131);
    v134 = vpminq_s16(v132, v132);
    v135 = vmaxq_s16(v120, v133);
    v136 = vminq_s16(v122, v134);
    v137 = vzip1q_s16(v133, v134);
    v138 = vbicq_s8(vsubq_s16(v124, vclsq_s16(v137)), vceqzq_s16(v137));
    v139 = vpmaxq_s16(v138, v138);
    v504 = vshlq_s16(vshlq_s16(vsubq_s16(v545, vqtbl1q_s8(v545, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v505 = vshlq_s16(vshlq_s16(vsubq_s16(v544, vqtbl1q_s8(v544, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v507 = vshlq_s16(vshlq_s16(vsubq_s16(v547, vqtbl1q_s8(v547, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v509 = vshlq_s16(vshlq_s16(vsubq_s16(v546, vqtbl1q_s8(v546, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v140 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v505, v504), v509), v507), xmmword_29D2F1150);
    v141 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v505, v504), v509), v507), xmmword_29D2F1150);
    v142 = vpmaxq_s16(v140, v140);
    v143 = vpminq_s16(v141, v141);
    v144 = vmaxq_s16(v135, v142);
    v145 = vminq_s16(v136, v143);
    v146 = vzip1q_s16(v142, v143);
    v147 = vbicq_s8(vsubq_s16(v124, vclsq_s16(v146)), vceqzq_s16(v146));
    v148 = vpmaxq_s16(v147, v147);
    v489 = vshlq_s16(vshlq_s16(vsubq_s16(v551, vqtbl1q_s8(v551, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v149 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v128, v114), v130), v489), xmmword_29D2F1150);
    v150 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v128, v114), v130), v489), xmmword_29D2F1150);
    v151 = vpmaxq_s16(v149, v149);
    v152 = vpminq_s16(v150, v150);
    v153 = vmaxq_s16(v144, v151);
    v154 = vminq_s16(v145, v152);
    v155 = vzip1q_s16(v151, v152);
    v156 = vbicq_s8(vsubq_s16(v124, vclsq_s16(v155)), vceqzq_s16(v155));
    v157 = vpmaxq_s16(v156, v156);
    v158 = vmaxq_s16(vmaxq_s16(v126, v139), vmaxq_s16(v148, v157));
    v498 = v154;
    v499 = v153;
    v488 = vclzq_s16(vsubq_s16(v153, v154));
    v159 = vsubq_s16(v124, v488);
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
    v491 = vsubq_s16(v161, v163);
    v492 = vsubq_s16(v161, v164);
    v493 = vsubq_s16(v161, v166);
    v162.i64[0] = 0x7000700070007;
    v162.i64[1] = 0x7000700070007;
    v490 = v170;
    v171 = vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v161, vceqzq_s16((*&v169 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v167, v167)), v170, v162), vshlq_n_s16(vaddq_s16(vaddq_s16(v492, v491), v493), 3uLL));
    v164.i64[0] = 0x8000800080008;
    v164.i64[1] = 0x8000800080008;
    v160.i64[0] = 0x2000200020002;
    v160.i64[1] = 0x2000200020002;
    v172 = v558;
    v173 = vaddq_s16(vaddq_s16(vbicq_s8(v558, vceqzq_s16(vandq_s8(v511, v164))), vandq_s8(vceqq_s16(vandq_s8(v511, v165), v160), v124)), vandq_s8(vaddq_s16(v109, v109), v164));
    v175 = v554;
    v174 = v555;
    v176 = vmlaq_s16(v173, v554, v162);
    v178 = v556;
    v177 = v557;
    v179 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v176, vshlq_n_s16(vaddq_s16(vaddq_s16(v556, v555), v557), 3uLL)), v171).i64[0], 0);
    v180 = vaddvq_s16(v179);
    v182 = a5 < 4 || a6 < 2;
    if (v180)
    {
      v183.i64[0] = 0x3000300030003;
      v183.i64[1] = 0x3000300030003;
      v517 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v161), v183), v169), v167);
      v184.i64[0] = 0xF000F000F000FLL;
      v184.i64[1] = 0xF000F000F000FLL;
      v532 = vbslq_s8(v179, v494, v532);
      v534 = vbslq_s8(v179, v495, v534);
      v183.i64[0] = -1;
      v183.i64[1] = -1;
      v536 = vbslq_s8(v179, v497, v536);
      v538 = vbslq_s8(v179, v496, v538);
      v185 = vandq_s8(vsubq_s16(vshlq_s16(v183, vsubq_s16(v184, v488)), v498), v168);
      v540 = vbslq_s8(v179, v501, v540);
      v541 = vbslq_s8(v179, v500, v541);
      v542 = vbslq_s8(v179, v503, v542);
      v543 = vbslq_s8(v179, v502, v543);
      v544 = vbslq_s8(v179, v505, v544);
      v545 = vbslq_s8(v179, v504, v545);
      v546 = vbslq_s8(v179, v509, v546);
      v547 = vbslq_s8(v179, v507, v547);
      v548 = vbslq_s8(v179, v128, v548);
      v549 = vbslq_s8(v179, v114, v549);
      v550 = vbslq_s8(v179, v130, v550);
      v551 = vbslq_s8(v179, v489, v551);
      v175 = vbslq_s8(v179, v490, v554);
      v174 = vbslq_s8(v179, v491, v555);
      v554 = v175;
      v555 = v174;
      v178 = vbslq_s8(v179, v492, v556);
      v177 = vbslq_s8(v179, v493, v557);
      v556 = v178;
      v557 = v177;
      v560 = vbslq_s8(v179, v499, v560);
      v561 = vbslq_s8(v179, v185, v561);
      v172 = vbslq_s8(v179, v161, v558);
      v558 = v172;
      v559 = vbslq_s8(v179, v498, v559);
      v109 = vbslq_s8(v179, v517, v553);
      v552 = vbslq_s8(v179, vsubq_s16(v552, vqtbl1q_s8(v552, xmmword_29D2F1270)), v552);
      v553 = v109;
    }

    v186 = v513;
    v187 = v515;
    v188 = v516;
    if (!v182)
    {
      v189 = vqtbl4q_s8(*v27.i8, xmmword_29D2F1160);
      v190 = vsubq_s16(v27, vqtbl4q_s8(*v27.i8, xmmword_29D2F10B0));
      v191 = vsubq_s16(v29, v189);
      v192 = vsubq_s16(v30, v189);
      v193 = v521.i64[0];
      v194 = v30.i64[1];
      v195 = vsubq_s16(v513, vqtbl4q_s8(*v186.i8, xmmword_29D2F10B0));
      v196 = vsubq_s16(v515, vqtbl4q_s8(*v186.i8, xmmword_29D2F10F0));
      v197 = vsubq_s16(v516, vqtbl4q_s8(*v186.i8, xmmword_29D2F1160));
      v198 = vsubq_s16(v521, vqtbl4q_s8(*v186.i8, xmmword_29D2F1100));
      v199 = v487.i64[0];
      v200 = v30.i64[1];
      v201 = vqtbl4q_s8(*v43.i8, xmmword_29D2F10C0);
      v202 = vsubq_s16(v43, vqtbl4q_s8(*v43.i8, xmmword_29D2F1170));
      v203 = vsubq_s16(v44, vqtbl4q_s8(*v43.i8, xmmword_29D2F1180));
      v204 = vsubq_s16(v45, vqtbl4q_s8(*v43.i8, xmmword_29D2F10B0));
      v205 = v519.i64[0];
      v206 = v30.i64[1];
      v207.i64[0] = v192.i64[0];
      v207.i64[1] = v190.i64[0];
      v190.i64[0] = v192.i64[1];
      v208 = vshlq_s16(vsubq_s16(v487, v201), xmmword_29D2F12D0);
      v209 = vshlq_s16(vsubq_s16(v51, vqtbl4q_s8(*v51.i8, xmmword_29D2F1170)), xmmword_29D2F12D0);
      v210 = vshlq_s16(vsubq_s16(v52, vqtbl4q_s8(*v51.i8, xmmword_29D2F1120)), xmmword_29D2F12D0);
      v211 = vshlq_s16(vsubq_s16(v53, vqtbl4q_s8(*v51.i8, xmmword_29D2F10B0)), xmmword_29D2F12D0);
      v212 = vshlq_s16(vsubq_s16(v519, vqtbl4q_s8(*v51.i8, xmmword_29D2F10C0)), xmmword_29D2F12D0);
      v213 = vshlq_s16(vshlq_s16(v190, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v214 = vshlq_s16(vshlq_s16(vsubq_s16(v28, vqtbl4q_s8(*v27.i8, xmmword_29D2F10C0)), xmmword_29D2F12D0), xmmword_29D2F12E0);
      v215 = vshlq_s16(vshlq_s16(v191, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v216 = vshlq_s16(vshlq_s16(v207, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v217 = vshlq_s16(vshlq_s16(v195, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v218 = vshlq_s16(vshlq_s16(v196, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v219 = vshlq_s16(vshlq_s16(v197, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v220 = vshlq_s16(vshlq_s16(v198, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v221 = vshlq_s16(vshlq_s16(v202, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v222 = vshlq_s16(vshlq_s16(v203, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v223 = vshlq_s16(vshlq_s16(v204, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v224 = vshlq_s16(v208, xmmword_29D2F12E0);
      v225 = vshlq_s16(v211, xmmword_29D2F12E0);
      v226 = vshlq_s16(v212, xmmword_29D2F12E0);
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
      v514 = v223;
      v245 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v221, v222), v223), v224), xmmword_29D2F1150);
      v246 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v221, v222), v223), v224), xmmword_29D2F1150);
      v247 = vpmaxq_s16(v245, v245);
      v248 = vpminq_s16(v246, v246);
      v249 = vmaxq_s16(v240, v247);
      v250 = vminq_s16(v241, v248);
      v251 = vzip1q_s16(v247, v248);
      v252 = vbicq_s8(vsubq_s16(v229, vclsq_s16(v251)), vceqzq_s16(v251));
      v253 = vpmaxq_s16(v252, v252);
      v518 = vshlq_s16(v210, xmmword_29D2F12E0);
      v520 = vshlq_s16(v209, xmmword_29D2F12E0);
      v531 = v225;
      v522 = v226;
      v254 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v520, v518), v225), v226), xmmword_29D2F1150);
      v255 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v520, v518), v225), v226), xmmword_29D2F1150);
      v256 = vpmaxq_s16(v254, v254);
      v257 = vpminq_s16(v255, v255);
      v258 = vmaxq_s16(v249, v256);
      v259 = vminq_s16(v250, v257);
      v260 = vzip1q_s16(v256, v257);
      v261 = vbicq_s8(vsubq_s16(v229, vclsq_s16(v260)), vceqzq_s16(v260));
      v262 = vpmaxq_s16(v261, v261);
      v263 = vmaxq_s16(vmaxq_s16(v235, v244), vmaxq_s16(v253, v262));
      v512 = v258;
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
      v506 = vsubq_s16(v267, v270);
      v508 = v273;
      v510 = vsubq_s16(v267, v271);
      v275 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v267, v266), vaddq_s16(v274, v274)), v272, v269), vshlq_n_s16(vaddq_s16(vaddq_s16(v506, v273), v510), 3uLL));
      v276 = v554;
      v277.i64[0] = 0x2000200020002;
      v277.i64[1] = 0x2000200020002;
      v278 = vandq_s8(vceqq_s16(vandq_s8(v553, v263), v277), v229);
      v229.i64[0] = 0x8000800080008;
      v229.i64[1] = 0x8000800080008;
      v279 = vandq_s8(vaddq_s16(v553, v553), v229);
      v280 = vceqzq_s16(vandq_s8(v553, v229));
      v177 = v557;
      v172 = v558;
      v281 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v558, v280), v279), v278), v554, v269);
      v174 = v555;
      v178 = v556;
      v282 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v281, vshlq_n_s16(vaddq_s16(vaddq_s16(v556, v555), v557), 3uLL)), v275).i64[0], 0);
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
        v276 = vbslq_s8(v282, v272, v554);
        v174 = vbslq_s8(v282, v508, v555);
        v178 = vbslq_s8(v282, v506, v556);
        v177 = vbslq_s8(v282, v510, v557);
        v172 = vbslq_s8(v282, v267, v558);
        v551 = vbslq_s8(v282, v522, v551);
        v552 = vbslq_s8(v282, vextq_s8(v30, v30, 8uLL), v552);
        v532 = vbslq_s8(v282, v213, v532);
        v534 = vbslq_s8(v282, v214, v534);
        v536 = vbslq_s8(v282, v215, v536);
        v538 = vbslq_s8(v282, v216, v538);
        v540 = vbslq_s8(v282, v217, v540);
        v541 = vbslq_s8(v282, v218, v541);
        v542 = vbslq_s8(v282, v219, v542);
        v543 = vbslq_s8(v282, v220, v543);
        v544 = vbslq_s8(v282, v221, v544);
        v545 = vbslq_s8(v282, v222, v545);
        v546 = vbslq_s8(v282, v514, v546);
        v547 = vbslq_s8(v282, v224, v547);
        v109 = vbslq_s8(v282, v286, v553);
        v548 = vbslq_s8(v282, v520, v548);
        v549 = vbslq_s8(v282, v518, v549);
        v550 = vbslq_s8(v282, v531, v550);
        v559 = vbslq_s8(v282, v259, v559);
        v560 = vbslq_s8(v282, v512, v560);
        v561 = vbslq_s8(v282, v287, v561);
        v554 = v276;
        v555 = v174;
        v556 = v178;
        v557 = v177;
        v558 = v172;
        v553 = v109;
      }

      else
      {
        v109 = v553;
      }

      v175 = v276;
    }

    v290 = vandq_s8(v561, vceqq_s16(v172, v175));
    v533 = vaddq_s16(v290, v532);
    v535 = vaddq_s16(v534, v290);
    v537 = vaddq_s16(v536, v290);
    v539 = vaddq_s16(v538, v290);
    v291 = vandq_s8(v561, vceqq_s16(v172, v174));
    v540 = vaddq_s16(v540, v291);
    v541 = vaddq_s16(v541, v291);
    v542 = vaddq_s16(v542, v291);
    v543 = vaddq_s16(v543, v291);
    v292 = vandq_s8(v561, vceqq_s16(v172, v178));
    v544 = vaddq_s16(v544, v292);
    v545 = vaddq_s16(v545, v292);
    v546 = vaddq_s16(v546, v292);
    v547 = vaddq_s16(v547, v292);
    v293 = vandq_s8(v561, vceqq_s16(v172, v177));
    v548 = vaddq_s16(v548, v293);
    v549 = vaddq_s16(v549, v293);
    v550 = vaddq_s16(v550, v293);
    v551 = vaddq_s16(v551, v293);
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
    if ((vpaddq_s16(v299, v299).i16[0] + 71) > 0x3FF)
    {
      *a1 = v525;
      *(a1 + 16) = v526;
      *(a1 + 32) = v523;
      *(a1 + 48) = v524;
      *(a1 + 64) = v529;
      *(a1 + 80) = v530;
      v303 = (a1 + 96);
      v288 = 127;
      result = 128;
      *v303 = v527;
      v303[1] = v528;
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
      v304 = v552.i64[0];
      v305 = vmovl_s16(vceqz_s16(*v172.i8));
      v306.i64[0] = v305.i32[0];
      v306.i64[1] = v305.i32[1];
      v307 = v306;
      v306.i64[0] = v305.i32[2];
      v306.i64[1] = v305.i32[3];
      v308 = v306;
      v309 = vand_s8(vadd_s16(*v172.i8, 0xF000F000F000FLL), 0xF000F000F000FLL);
      v309.i16[3] = vbic_s8(0x1000100010001, *&v172).i16[3];
      v310 = vshlq_u32(vmovl_u16(v309), xmmword_29D2F12F0);
      v306.i64[0] = v310.u32[0];
      v306.i64[1] = v310.u32[1];
      v311 = v306;
      v306.i64[0] = v310.u32[2];
      v306.i64[1] = v310.u32[3];
      v312 = vorrq_s8(vbicq_s8(v311, v307), vbicq_s8(v306, v308));
      v313 = *&vorr_s8(*v312.i8, *&vextq_s8(v312, v312, 8uLL)) | v109.i8[0] & 0x1F | (32 * (v109.i8[2] & 0x1F)) & 0x83FF | ((v109.i8[4] & 0x1F) << 10) | ((v109.i8[6] & 0xF) << 15);
      v314 = (v313 << v301) | v302;
      if (v301 >= 0x20)
      {
        *v300 = v314;
        v314 = v313 >> (-8 * (a1 & 7u));
      }

      v315 = v304 & 0x3FF | ((WORD1(v304) & 0x3FF) << 10) | ((WORD2(v304) & 0x3FF) << 20) | ((BYTE6(v304) & 3) << 30);
      v316 = (v301 + 32) & 0x38;
      v317 = v314 | (v315 << v316);
      if (v316 >= 0x20)
      {
        *(v300 + (((v301 + 32) >> 3) & 8)) = v317;
        v317 = v315 >> -v316;
      }

      v318 = vsubq_s16(v558, v554);
      v319 = vsubq_s16(v558, v555);
      v320 = vsubq_s16(v558, v556);
      v321 = vsubq_s16(v558, v557);
      *v318.i8 = vqmovn_u16(v318);
      *v319.i8 = vqmovn_u16(v319);
      *v320.i8 = vqmovn_u16(v320);
      *v321.i8 = vqmovn_u16(v321);
      v322 = vtrn1q_s8(v318, v319);
      v323 = vtrn2q_s8(v318, v319);
      v324 = vtrn1q_s8(v320, v321);
      v325 = vtrn2q_s8(v320, v321);
      v326 = vzip1q_s16(v323, v325);
      v327 = vtrn2q_s16(v323, v325);
      v323.i64[0] = vzip1q_s32(vzip1q_s16(v322, v324), v326).u64[0];
      v327.i64[0] = vzip1q_s32(vtrn2q_s16(v322, v324), v327).u64[0];
      v320.i64[0] = 0x202020202020202;
      v320.i64[1] = 0x202020202020202;
      v328 = vandq_s8(vmovl_s16(vtst_s16(*v553.i8, 0x4000400040004)), v320);
      v320.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v320.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v322.i64[0] = -1;
      v322.i64[1] = -1;
      v329 = vshlq_u8(v322, vorrq_s8(v328, v320));
      v330 = vmovl_u8(vand_s8(*v329.i8, *v323.i8));
      v331 = vmovl_u8(vand_s8(*&vextq_s8(v329, v329, 8uLL), *v327.i8));
      v332 = vmovl_u8(*v328.i8);
      v333 = vmovl_high_u8(v328);
      v334 = vpaddq_s16(vshlq_u16(v330, vtrn1q_s16(0, v332)), vshlq_u16(v331, vtrn1q_s16(0, v333)));
      v335 = vpaddq_s16(v332, v333);
      v336 = vmovl_u16(*v335.i8);
      v337 = vmovl_high_u16(v335);
      v338 = vpaddq_s32(vshlq_u32(vmovl_u16(*v334.i8), vtrn1q_s32(0, v336)), vshlq_u32(vmovl_high_u16(v334), vtrn1q_s32(0, v337)));
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
      v346 = (v344.i64[0] << v301) | v317;
      if (v345.i64[0] + v301 >= 0x40)
      {
        v300[1] = v346;
        v346 = v344.i64[0] >> (-8 * (a1 & 7u));
        if (!v301)
        {
          v346 = 0;
        }
      }

      v347 = v345.i64[0] + (v301 | 0x40);
      v348 = v346 | (v344.i64[1] << v347);
      if ((v347 & 0x3F) + v345.i64[1] >= 0x40)
      {
        *(v300 + ((v347 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v348;
        v348 = v344.i64[1] >> -(v347 & 0x3F);
        if ((v347 & 0x3F) == 0)
        {
          v348 = 0;
        }
      }

      v349 = v347 + v345.i64[1];
      v350.i64[0] = 0x8000800080008;
      v350.i64[1] = 0x8000800080008;
      v351.i64[0] = -1;
      v351.i64[1] = -1;
      v352 = vandq_s8(vextq_s8(vtstq_s16(v553, v350), 0, 8uLL), v558);
      v353.i64[0] = 0xF000F000F000FLL;
      v353.i64[1] = 0xF000F000F000FLL;
      v354 = vandq_s8(vshlq_u16(v351, vaddq_s16(v352, v353)), v561);
      v355 = vmovl_u16(*v352.i8);
      v356 = vpaddq_s32(vshlq_u32(vmovl_u16(*v354.i8), vtrn1q_s32(0, v355)), vmovl_high_u16(v354));
      v357 = vpaddq_s32(v355, vmovl_high_u16(v352));
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
      v364 = (v362.i64[0] << v349) | v348;
      if (v363.i64[0] + (v349 & 0x3F) >= 0x40)
      {
        *(v300 + ((v349 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v364;
        v364 = v362.i64[0] >> -(v349 & 0x3F);
        if ((v349 & 0x3F) == 0)
        {
          v364 = 0;
        }
      }

      v365 = v363.i64[0] + v349;
      v366 = v364 | (v362.i64[1] << v365);
      if ((v365 & 0x3F) + v363.i64[1] >= 0x40)
      {
        *(v300 + ((v365 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v366;
        v366 = v362.i64[1] >> -(v365 & 0x3F);
        if ((v365 & 0x3F) == 0)
        {
          v366 = 0;
        }
      }

      v367 = v365 + v363.i64[1];
      v368 = vextq_s8(0, v554, 8uLL);
      v369.i64[0] = 0xF000F000F000FLL;
      v369.i64[1] = 0xF000F000F000FLL;
      v370.i64[0] = -1;
      v370.i64[1] = -1;
      v371 = vandq_s8(vshlq_u16(v370, vaddq_s16(v368, v369)), v533);
      v372 = vmovl_u16(*v368.i8);
      v373 = vmovl_high_u16(v368);
      v374 = vpaddq_s32(vmovl_u16(*v371.i8), vshlq_u32(vmovl_high_u16(v371), vtrn1q_s32(0, v373)));
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
      v382 = (v380.i64[0] << v367) | v366;
      if (v381.i64[0] + (v367 & 0x3F) >= 0x40)
      {
        *(v300 + ((v367 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v382;
        v382 = v380.i64[0] >> -(v367 & 0x3F);
        if ((v367 & 0x3F) == 0)
        {
          v382 = 0;
        }
      }

      v383 = v381.i64[0] + v367;
      v384 = v382 | (v380.i64[1] << v383);
      if ((v383 & 0x3F) + v381.i64[1] >= 0x40)
      {
        *(v300 + ((v383 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v384;
        v384 = v380.i64[1] >> -(v383 & 0x3F);
        if ((v383 & 0x3F) == 0)
        {
          v384 = 0;
        }
      }

      v385 = v383 + v381.i64[1];
      v386.i64[0] = 0xF000F000F000FLL;
      v386.i64[1] = 0xF000F000F000FLL;
      v387.i64[0] = -1;
      v387.i64[1] = -1;
      v388 = vandq_s8(vshlq_u16(v387, vaddq_s16(v554, v386)), v535);
      v389 = vmovl_u16(*v554.i8);
      v390 = vmovl_high_u16(v554);
      v391 = vpaddq_s32(vshlq_u32(vmovl_u16(*v388.i8), vtrn1q_s32(0, v389)), vshlq_u32(vmovl_high_u16(v388), vtrn1q_s32(0, v390)));
      v392 = vpaddq_s32(v389, v390);
      v393.i64[0] = v391.u32[0];
      v393.i64[1] = v391.u32[1];
      v394 = v393;
      v393.i64[0] = v391.u32[2];
      v393.i64[1] = v391.u32[3];
      v395 = v393;
      v393.i64[0] = v392.u32[0];
      v393.i64[1] = v392.u32[1];
      v396 = v393;
      v393.i64[0] = v392.u32[2];
      v393.i64[1] = v392.u32[3];
      v397 = vpaddq_s64(vshlq_u64(v394, vzip1q_s64(0, v396)), vshlq_u64(v395, vzip1q_s64(0, v393)));
      v398 = vpaddq_s64(v396, v393);
      v399 = (v397.i64[0] << v385) | v384;
      if (v398.i64[0] + (v385 & 0x3F) >= 0x40)
      {
        *(v300 + ((v385 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v399;
        v399 = v397.i64[0] >> -(v385 & 0x3F);
        if ((v385 & 0x3F) == 0)
        {
          v399 = 0;
        }
      }

      v400 = v398.i64[0] + v385;
      v401 = v399 | (v397.i64[1] << v400);
      if ((v400 & 0x3F) + v398.i64[1] >= 0x40)
      {
        *(v300 + ((v400 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v401;
        v401 = v397.i64[1] >> -(v400 & 0x3F);
        if ((v400 & 0x3F) == 0)
        {
          v401 = 0;
        }
      }

      v402 = v400 + v398.i64[1];
      v403.i64[0] = 0xF000F000F000FLL;
      v403.i64[1] = 0xF000F000F000FLL;
      v404.i64[0] = -1;
      v404.i64[1] = -1;
      v405 = vandq_s8(vshlq_u16(v404, vaddq_s16(v554, v403)), v537);
      v406 = vmovl_u16(*v554.i8);
      v407 = vmovl_high_u16(v554);
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
      v416 = (v414.i64[0] << v402) | v401;
      if (v415.i64[0] + (v402 & 0x3F) >= 0x40)
      {
        *(v300 + ((v402 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
        v416 = v414.i64[0] >> -(v402 & 0x3F);
        if ((v402 & 0x3F) == 0)
        {
          v416 = 0;
        }
      }

      v417 = v415.i64[0] + v402;
      v418 = v416 | (v414.i64[1] << v417);
      if ((v417 & 0x3F) + v415.i64[1] >= 0x40)
      {
        *(v300 + ((v417 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v418;
        v418 = v414.i64[1] >> -(v417 & 0x3F);
        if ((v417 & 0x3F) == 0)
        {
          v418 = 0;
        }
      }

      v419 = v417 + v415.i64[1];
      v420.i64[0] = 0xF000F000F000FLL;
      v420.i64[1] = 0xF000F000F000FLL;
      v421.i64[0] = -1;
      v421.i64[1] = -1;
      v422 = vandq_s8(vshlq_u16(v421, vaddq_s16(v554, v420)), v539);
      v423 = vmovl_u16(*v554.i8);
      v424 = vmovl_high_u16(v554);
      v425 = vpaddq_s32(vshlq_u32(vmovl_u16(*v422.i8), vtrn1q_s32(0, v423)), vshlq_u32(vmovl_high_u16(v422), vtrn1q_s32(0, v424)));
      v426 = vpaddq_s32(v423, v424);
      v427.i64[0] = v425.u32[0];
      v427.i64[1] = v425.u32[1];
      v428 = v427;
      v427.i64[0] = v425.u32[2];
      v427.i64[1] = v425.u32[3];
      v429 = v427;
      v427.i64[0] = v426.u32[0];
      v427.i64[1] = v426.u32[1];
      v430 = v427;
      v427.i64[0] = v426.u32[2];
      v427.i64[1] = v426.u32[3];
      v431 = vpaddq_s64(vshlq_u64(v428, vzip1q_s64(0, v430)), vshlq_u64(v429, vzip1q_s64(0, v427)));
      v432 = vpaddq_s64(v430, v427);
      v433 = (v431.i64[0] << v419) | v418;
      if (v432.i64[0] + (v419 & 0x3F) >= 0x40)
      {
        *(v300 + ((v419 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v433;
        v433 = v431.i64[0] >> -(v419 & 0x3F);
        if ((v419 & 0x3F) == 0)
        {
          v433 = 0;
        }
      }

      v434 = v432.i64[1];
      v435 = v432.i64[0] + v419;
      v436 = (v432.i64[0] + v419) & 0x3F;
      v437 = v433 | (v431.i64[1] << v435);
      if ((v436 + v432.i64[1]) >= 0x40)
      {
        *(v300 + ((v435 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v437;
        v437 = v431.i64[1] >> -v436;
        if (!v436)
        {
          v437 = 0;
        }
      }

      v438 = 0;
      v439.i64[0] = 0xF000F000F000FLL;
      v439.i64[1] = 0xF000F000F000FLL;
      v440.i64[0] = -1;
      v440.i64[1] = -1;
      v441 = v435 + v434;
      do
      {
        v442 = vandq_s8(vshlq_u16(v440, vaddq_s16(v555, v439)), *(&v540 + v438));
        v443 = vmovl_u16(*v555.i8);
        v444 = vmovl_high_u16(v555);
        v445 = vpaddq_s32(vshlq_u32(vmovl_u16(*v442.i8), vtrn1q_s32(0, v443)), vshlq_u32(vmovl_high_u16(v442), vtrn1q_s32(0, v444)));
        v446 = vpaddq_s32(v443, v444);
        v447.i64[0] = v445.u32[0];
        v447.i64[1] = v445.u32[1];
        v448 = v447;
        v447.i64[0] = v445.u32[2];
        v447.i64[1] = v445.u32[3];
        v449 = v447;
        v447.i64[0] = v446.u32[0];
        v447.i64[1] = v446.u32[1];
        v450 = v447;
        v447.i64[0] = v446.u32[2];
        v447.i64[1] = v446.u32[3];
        v451 = vpaddq_s64(vshlq_u64(v448, vzip1q_s64(0, v450)), vshlq_u64(v449, vzip1q_s64(0, v447)));
        v452 = vpaddq_s64(v450, v447);
        v453 = (v451.i64[0] << v441) | v437;
        if (v452.i64[0] + (v441 & 0x3F) >= 0x40)
        {
          *(v300 + ((v441 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v453;
          v453 = v451.i64[0] >> -(v441 & 0x3F);
          if ((v441 & 0x3F) == 0)
          {
            v453 = 0;
          }
        }

        v454 = v452.i64[0] + v441;
        v437 = v453 | (v451.i64[1] << v454);
        if ((v454 & 0x3F) + v452.i64[1] >= 0x40)
        {
          *(v300 + ((v454 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v437;
          v437 = v451.i64[1] >> -(v454 & 0x3F);
          if ((v454 & 0x3F) == 0)
          {
            v437 = 0;
          }
        }

        v441 = v454 + v452.i64[1];
        v438 += 16;
      }

      while (v438 != 64);
      v455 = 0;
      v456.i64[0] = 0xF000F000F000FLL;
      v456.i64[1] = 0xF000F000F000FLL;
      v457.i64[0] = -1;
      v457.i64[1] = -1;
      do
      {
        v458 = vandq_s8(vshlq_u16(v457, vaddq_s16(v556, v456)), *(&v544 + v455));
        v459 = vmovl_u16(*v556.i8);
        v460 = vmovl_high_u16(v556);
        v461 = vpaddq_s32(vshlq_u32(vmovl_u16(*v458.i8), vtrn1q_s32(0, v459)), vshlq_u32(vmovl_high_u16(v458), vtrn1q_s32(0, v460)));
        v462 = vpaddq_s32(v459, v460);
        v463.i64[0] = v461.u32[0];
        v463.i64[1] = v461.u32[1];
        v464 = v463;
        v463.i64[0] = v461.u32[2];
        v463.i64[1] = v461.u32[3];
        v465 = v463;
        v463.i64[0] = v462.u32[0];
        v463.i64[1] = v462.u32[1];
        v466 = v463;
        v463.i64[0] = v462.u32[2];
        v463.i64[1] = v462.u32[3];
        v467 = vpaddq_s64(vshlq_u64(v464, vzip1q_s64(0, v466)), vshlq_u64(v465, vzip1q_s64(0, v463)));
        v468 = vpaddq_s64(v466, v463);
        v469 = (v467.i64[0] << v441) | v437;
        if (v468.i64[0] + (v441 & 0x3F) >= 0x40)
        {
          *(v300 + ((v441 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v469;
          v469 = v467.i64[0] >> -(v441 & 0x3F);
          if ((v441 & 0x3F) == 0)
          {
            v469 = 0;
          }
        }

        v470 = v468.i64[0] + v441;
        v437 = v469 | (v467.i64[1] << v470);
        if ((v470 & 0x3F) + v468.i64[1] >= 0x40)
        {
          *(v300 + ((v470 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v437;
          v437 = v467.i64[1] >> -(v470 & 0x3F);
          if ((v470 & 0x3F) == 0)
          {
            v437 = 0;
          }
        }

        v441 = v470 + v468.i64[1];
        v455 += 16;
      }

      while (v455 != 64);
      v471 = 0;
      v472.i64[0] = 0xF000F000F000FLL;
      v472.i64[1] = 0xF000F000F000FLL;
      v473.i64[0] = -1;
      v473.i64[1] = -1;
      do
      {
        v474 = vandq_s8(vshlq_u16(v473, vaddq_s16(v557, v472)), *(&v548 + v471));
        v475 = vmovl_u16(*v557.i8);
        v476 = vmovl_high_u16(v557);
        v477 = vpaddq_s32(vshlq_u32(vmovl_u16(*v474.i8), vtrn1q_s32(0, v475)), vshlq_u32(vmovl_high_u16(v474), vtrn1q_s32(0, v476)));
        v478 = vpaddq_s32(v475, v476);
        v479.i64[0] = v477.u32[0];
        v479.i64[1] = v477.u32[1];
        v480 = v479;
        v479.i64[0] = v477.u32[2];
        v479.i64[1] = v477.u32[3];
        v481 = v479;
        v479.i64[0] = v478.u32[0];
        v479.i64[1] = v478.u32[1];
        v482 = v479;
        v479.i64[0] = v478.u32[2];
        v479.i64[1] = v478.u32[3];
        v483 = vpaddq_s64(vshlq_u64(v480, vzip1q_s64(0, v482)), vshlq_u64(v481, vzip1q_s64(0, v479)));
        v484 = vpaddq_s64(v482, v479);
        v485 = (v483.i64[0] << v441) | v437;
        if (v484.i64[0] + (v441 & 0x3F) >= 0x40)
        {
          *(v300 + ((v441 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v485;
          v485 = v483.i64[0] >> -(v441 & 0x3F);
          if ((v441 & 0x3F) == 0)
          {
            v485 = 0;
          }
        }

        v486 = v484.i64[0] + v441;
        v437 = v485 | (v483.i64[1] << v486);
        if ((v486 & 0x3F) + v484.i64[1] >= 0x40)
        {
          *(v300 + ((v486 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v437;
          v437 = v483.i64[1] >> -(v486 & 0x3F);
          if ((v486 & 0x3F) == 0)
          {
            v437 = 0;
          }
        }

        v441 = v486 + v484.i64[1];
        v471 += 16;
      }

      while (v471 != 64);
      if ((v441 & 0x3F) != 0)
      {
        *(v300 + ((v441 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v437;
      }

      result = (v441 - v301 + 7) >> 3;
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

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, (v11 + v12), a2, v15, v14);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + 2, a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v12 + 32), a2, v20, v19);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, (v11 + 8 * a2), a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, (v11 + 12 * a2), a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + 8 * a2 + 32), a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + 12 * a2 + 32), a2, v30, v29);
}

void *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(void *result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 8 * (&v25 & 7);
  v5 = 10;
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int8x16_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v384 = 0;
  v383 = (8 * (a3 & 7)) | 0x400;
  v381 = 8 * (a3 & 7);
  v382 = a3 & 0xFFFFFFFFFFFFFFF8;
  result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)13,AGX::AppleCompressionGen2::Vec<short>>(&v402, v407, &v401, &v381, a4);
  v8.i64[0] = 0x3000300030003;
  v8.i64[1] = 0x3000300030003;
  v9 = v402;
  v10 = vandq_s8(v402, v8);
  v11 = vbicq_s8(v407[0], vceqq_s16(v10, v8));
  v407[0] = v11;
  v403 = v11;
  v404 = v11;
  v405 = v11;
  v406 = v11;
  v12.i64[0] = 0x202020202020202;
  v12.i64[1] = 0x202020202020202;
  v13 = vandq_s8(vmovl_s16(vtst_s16(*v402.i8, 0x4000400040004)), v12);
  v14 = v381;
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
    v22 = v381 + v20;
    if (v383)
    {
      _CF = v383 >= v22;
    }

    else
    {
      _CF = 1;
    }

    v24 = _CF;
    if (v20 <= 0x80 && (v24 & 1) != 0)
    {
      v7.i64[0] = 63;
      v25 = (v382 + 8 * (v381 >> 6));
      v26 = vaddq_s64(vdupq_lane_s64(vandq_s8(v381, v7).i64[0], 0), vzip1q_s64(0, v19));
      v27 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v25, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v26)), vshlq_u64(vdupq_lane_s64(v25->i64[0], 0), vnegq_s64(v26)));
      if ((v381 & 0x3F) + v21 >= 0x81)
      {
        v27 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v25[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v26)), vshlq_u64(vdupq_laneq_s64(v25[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v26))), v27);
      }

      v14 = v22;
    }

    else
    {
      v384 = 1;
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
    v403 = vsubw_s8(v403, *v39.i8);
    v404 = vsubw_s8(v404, *v38.i8);
    v405 = vsubw_s8(v405, v42);
    v406 = vsubw_s8(v406, *v41.i8);
    v31 = vmovl_s8(vceqz_s8(*v39.i8));
    v30 = vmovl_s8(vceqz_s8(*v38.i8));
    v29 = vmovl_s8(vceqz_s8(v42));
    v28 = vmovl_s8(vceqz_s8(*v41.i8));
  }

  v43.i64[0] = 0x8000800080008;
  v43.i64[1] = 0x8000800080008;
  v44 = 0uLL;
  v45 = vandq_s8(vextq_s8(vtstq_s16(v402, v43), 0, 8uLL), v11);
  v46 = vmovl_u16(*&vpaddq_s16(v45, v45));
  v47 = vpaddq_s32(v46, v46).u64[0];
  v48.i64[0] = v47;
  v48.i64[1] = HIDWORD(v47);
  v49 = v48;
  v50 = vaddvq_s64(v48);
  if (v383)
  {
    v51 = v383 >= v14 + v50;
  }

  else
  {
    v51 = 1;
  }

  v52 = v51;
  if (v50 <= 0x80 && (v52 & 1) != 0)
  {
    v53 = vaddq_s64(vdupq_n_s64(v14 & 0x3F), vzip1q_s64(0, v49));
    v54 = (v382 + 8 * (v14 >> 6));
    v44 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v54, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v53)), vshlq_u64(vdupq_lane_s64(v54->i64[0], 0), vnegq_s64(v53)));
    if ((v14 & 0x3F) + v50 >= 0x81)
    {
      v44 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v54[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v53)), vshlq_u64(vdupq_laneq_s64(v54[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v53))), v44);
    }

    v14 += v50;
  }

  else
  {
    v384 = 1;
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
  v407[3] = v63;
  v64 = v402.i8[0] & 3;
  if (v64 == 2)
  {
    if (v383)
    {
      v65 = v14 + 8;
      v66 = v14 + 16;
      if (v383 >= v14 + 8)
      {
        v14 += 8;
      }

      else
      {
        v66 = v14 + 8;
      }

      if (v383 >= v66)
      {
        v14 = v66;
      }

      if (v383 < v65 || v383 < v66)
      {
        v384 = 1;
      }
    }

    else
    {
      v14 += 16;
    }
  }

  v67 = 0uLL;
  v68 = vextq_s8(0, v403, 8uLL);
  v69 = vmovl_u16(*&vpaddq_s16(v68, v68));
  v70 = vpaddq_s32(v69, v69).u64[0];
  v71.i64[0] = v70;
  v71.i64[1] = HIDWORD(v70);
  v72 = v71;
  v73 = vaddvq_s64(v71);
  v74 = v14 + v73;
  if (v383)
  {
    v75 = v383 >= v74;
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
    v79 = v382;
    v80 = (v382 + 8 * (v14 >> 6));
    v67 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v80, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v78)), vshlq_u64(vdupq_lane_s64(v80->i64[0], 0), vnegq_s64(v78)));
    if (v77 + v73 >= 0x81)
    {
      v67 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v80[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v78)), vshlq_u64(vdupq_laneq_s64(v80[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v78))), v67);
    }

    v81 = v384;
    v14 = v74;
  }

  else
  {
    v81 = 1;
    v79 = v382;
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
  v385 = v90;
  v91 = vmovl_u16(*&vpaddq_s16(v403, v403));
  v85.i64[0] = vpaddq_s32(v91, v91).u64[0];
  v83.i64[0] = v85.u32[0];
  v83.i64[1] = v85.u32[1];
  v92 = v83;
  v93 = vaddvq_s64(v83);
  v94 = v14 + v93;
  if (v383)
  {
    v95 = v383 >= v94;
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
  v107 = vnegq_s32(vandq_s8(v403, v86));
  v108 = vshlq_u32(v106, v107);
  v109 = vuzp1q_s16(vzip1q_s32(v106, v108), vzip2q_s32(v106, v108));
  v110 = vaddq_s16(v403, v88);
  v111 = vsubq_s16(v89, v403);
  v112 = vshlq_s16(vshlq_s16(v109, v111), v110);
  v386 = v112;
  v113 = v94 + v93;
  if (v383)
  {
    v114 = v383 >= v113;
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
  v387 = v122;
  v123 = v113 + v93;
  if (v383)
  {
    v124 = v383 >= v123;
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
  v388 = v134;
  v135 = vmovl_u16(*&vpaddq_s16(v404, v404));
  v136 = vpaddq_s32(v135, v135).u64[0];
  v137.i64[0] = v136;
  v137.i64[1] = HIDWORD(v136);
  v138 = v137;
  v139 = vaddvq_s64(v137);
  v140 = v139;
  v141 = v123 + v139;
  if (v383)
  {
    v142 = v383 >= v141;
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
  v153 = vnegq_s32(vandq_s8(v404, v152));
  v154 = vshlq_u32(v151, v153);
  v155 = vuzp1q_s16(vzip1q_s32(v151, v154), vzip2q_s32(v151, v154));
  v154.i64[0] = 0xF000F000F000FLL;
  v154.i64[1] = 0xF000F000F000FLL;
  v156 = vaddq_s16(v404, v154);
  v154.i64[0] = 0x10001000100010;
  v154.i64[1] = 0x10001000100010;
  v157 = vsubq_s16(v154, v404);
  v158 = vshlq_s16(vshlq_s16(v155, v157), v156);
  v389 = v158;
  v159 = v141 + v140;
  if (v383)
  {
    v160 = v383 >= v159;
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
  v390 = v170;
  v171 = v159 + v140;
  if (v383)
  {
    v172 = v383 >= v171;
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
  v391 = v180;
  v181 = v171 + v140;
  if (v383)
  {
    v182 = v383 >= v181;
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
  v392 = v192;
  v193 = vmovl_u16(*&vpaddq_s16(v405, v405));
  v194 = vpaddq_s32(v193, v193).u64[0];
  v195.i64[0] = v194;
  v195.i64[1] = HIDWORD(v194);
  v196 = v195;
  v197 = vaddvq_s64(v195);
  v198 = v197;
  v199 = v181 + v197;
  if (v383)
  {
    v200 = v383 >= v199;
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
  v211 = vnegq_s32(vandq_s8(v405, v210));
  v212 = vshlq_u32(v209, v211);
  v213 = vuzp1q_s16(vzip1q_s32(v209, v212), vzip2q_s32(v209, v212));
  v212.i64[0] = 0xF000F000F000FLL;
  v212.i64[1] = 0xF000F000F000FLL;
  v214 = vaddq_s16(v405, v212);
  v212.i64[0] = 0x10001000100010;
  v212.i64[1] = 0x10001000100010;
  v215 = vsubq_s16(v212, v405);
  v216 = vshlq_s16(vshlq_s16(v213, v215), v214);
  v393 = v216;
  v217 = v199 + v198;
  if (v383)
  {
    v218 = v383 >= v217;
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
  v394 = v228;
  v229 = v217 + v198;
  if (v383)
  {
    v230 = v383 >= v229;
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
  v395 = v238;
  v239 = v229 + v198;
  if (v383)
  {
    v240 = v383 >= v239;
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
  v396 = v250;
  v251 = vmovl_u16(*&vpaddq_s16(v406, v406));
  v252 = vpaddq_s32(v251, v251).u64[0];
  v253.i64[0] = v252;
  v253.i64[1] = HIDWORD(v252);
  v254 = v253;
  v255 = vaddvq_s64(v253);
  v256 = v255;
  v257 = v239 + v255;
  if (v383)
  {
    v258 = v383 >= v257;
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
  v268 = vnegq_s32(vandq_s8(v406, v266));
  v269 = vshlq_u32(v267, v268);
  v270 = vuzp1q_s16(vzip1q_s32(v267, v269), vzip2q_s32(v267, v269));
  v267.i64[0] = 0xF000F000F000FLL;
  v267.i64[1] = 0xF000F000F000FLL;
  v271 = vaddq_s16(v406, v267);
  v269.i64[0] = 0x10001000100010;
  v269.i64[1] = 0x10001000100010;
  v272 = vsubq_s16(v269, v406);
  v273 = vshlq_s16(vshlq_s16(v270, v272), v271);
  v397 = v273;
  v274 = v257 + v256;
  if (v383)
  {
    v275 = v383 >= v274;
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
  v398 = v285;
  v286 = v274 + v256;
  if (v383)
  {
    v287 = v383 >= v286;
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
  v399 = v295;
  v296 = v286 + v256;
  if (v383)
  {
    v297 = v383 >= v296;
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

  if ((v81 & 1) != 0 || v383 + 8 * result - v296 - 1024 >= 9 || v64 == 2)
  {
LABEL_220:
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(a1, a2);
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
    v385 = v306;
    v325 = vsubq_s16(v285, v323);
    v326 = vsubq_s16(v295, v323);
    v397 = v324;
    v398 = v325;
    v327 = vsubq_s16(v305, v323);
    v399 = v326;
    v400 = v327;
    v328.i64[0] = 0x1000100010001;
    v328.i64[1] = 0x1000100010001;
    if (vaddvq_s16(vceqq_s16(v10, v328)))
    {
      v329 = vnegq_s16(vandq_s8(v402, v328));
      v330.i64[0] = v312.i64[0];
      v331.i64[1] = v309.i64[1];
      v330.i64[1] = v309.i64[0];
      v331.i64[0] = v312.i64[1];
      v332 = vbslq_s8(v329, v331, v309);
      v333 = vbslq_s8(v329, v330, v312);
      v331.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
      v331.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
      v334 = vandq_s8(vqtbl4q_s8(*(&v310 - 1), v331), v329);
      v409.val[0] = vaddq_s16(v332, vandq_s8(vqtbl4q_s8(*(&v310 - 1), xmmword_29D2F10B0), v329));
      v409.val[1] = vaddq_s16(v310, vandq_s8(vqtbl4q_s8(*(&v310 - 1), xmmword_29D2F10C0), v329));
      v409.val[2] = vaddq_s16(v311, v334);
      v409.val[3] = vaddq_s16(v333, v334);
      v335 = vandq_s8(vqtbl4q_s8(v409, v331), v329);
      v309 = vaddq_s16(v409.val[0], vandq_s8(vqtbl4q_s8(v409, xmmword_29D2F10D0), v329));
      v310 = vaddq_s16(v409.val[1], vandq_s8(vqtbl4q_s8(v409, xmmword_29D2F10E0), v329));
      v385 = v309;
      v386 = v310;
      v311 = vaddq_s16(v409.val[2], v335);
      v312 = vaddq_s16(v409.val[3], v335);
      v408.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v314.i8, xmmword_29D2F10B0), v329), v314);
      v408.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v314.i8, xmmword_29D2F10F0), v329), v315);
      v408.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v314.i8, v331), v329), v316);
      v408.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v314.i8, xmmword_29D2F1100), v329), v317);
      v336 = vandq_s8(vqtbl4q_s8(v408, xmmword_29D2F10D0), v329);
      v337 = vandq_s8(vqtbl4q_s8(v408, v331), v329);
      v314 = vaddq_s16(v336, v408.val[0]);
      v315 = vaddq_s16(v408.val[1], v336);
      v316 = vaddq_s16(v408.val[2], v337);
      v317 = vaddq_s16(v408.val[3], v337);
      v408.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v319.i8, xmmword_29D2F0EB0), v329), v319);
      v408.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v319.i8, xmmword_29D2F0FB0), v329), v320);
      v408.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v319.i8, xmmword_29D2F10B0), v329), v321);
      v408.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v319.i8, xmmword_29D2F10C0), v329), v322);
      v338 = vandq_s8(vqtbl4q_s8(v408, v331), v329);
      v319 = vaddq_s16(v408.val[0], v338);
      v320 = vaddq_s16(v408.val[1], v338);
      v321 = vaddq_s16(v408.val[2], vandq_s8(vqtbl4q_s8(v408, xmmword_29D2F0FE0), v329));
      v322 = vaddq_s16(v408.val[3], vandq_s8(vqtbl4q_s8(v408, xmmword_29D2F1110), v329));
      v409.val[0] = v397;
      v409.val[1] = v398;
      v9 = v402;
      v409.val[2] = v399;
      v409.val[3] = v400;
      v408.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(v409, xmmword_29D2F0EB0), v329), v397);
      v408.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(v409, xmmword_29D2F1120), v329), v398);
      v387 = v311;
      v388 = v312;
      v408.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(v409, xmmword_29D2F10B0), v329), v399);
      v408.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(v409, xmmword_29D2F10C0), v329), v400);
      v339 = vandq_s8(vqtbl4q_s8(v408, v331), v329);
      v324 = vaddq_s16(v408.val[0], v339);
      v325 = vaddq_s16(v408.val[1], v339);
      v326 = vaddq_s16(v408.val[2], vandq_s8(vqtbl4q_s8(v408, xmmword_29D2F0FE0), v329));
      v327 = vaddq_s16(v408.val[3], vandq_s8(vqtbl4q_s8(v408, xmmword_29D2F1130), v329));
    }

    v340 = vaddq_s16(v401, v309);
    v341 = vaddq_s16(v310, v401);
    v342 = vaddq_s16(v311, v401);
    v343 = vaddq_s16(v312, v401);
    v344 = vaddq_s16(v314, v401);
    v345 = vaddq_s16(v315, v401);
    v346 = vaddq_s16(v316, v401);
    v347 = vaddq_s16(v317, v401);
    v348 = vaddq_s16(v319, v401);
    v349 = vaddq_s16(v320, v401);
    v350 = vaddq_s16(v321, v401);
    v351 = vaddq_s16(v322, v401);
    v352 = vaddq_s16(v324, v401);
    v353 = vaddq_s16(v325, v401);
    v354 = vaddq_s16(v326, v401);
    v355 = vaddq_s16(v327, v401);
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
    __asm { FMOV            V7.4S, #1.875 }

    v351.i64[0] = 0xC0000000C0000000;
    v351.i64[1] = 0xC0000000C0000000;
    v376 = (a1 + a2);
    *a1 = vbslq_s8(v351, vshrn_high_n_s64(vshrn_n_s64(v358, 0x12uLL), v359, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v358, 0xCuLL), v359, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v358, 6uLL), v359, 6uLL), vuzp1q_s32(v358, v359))));
    a1[1] = vbslq_s8(v351, vshrn_high_n_s64(vshrn_n_s64(v362, 0x12uLL), v363, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v362, 0xCuLL), v363, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v362, 6uLL), v363, 6uLL), vuzp1q_s32(v362, v363))));
    v377 = (a1 + 2 * a2);
    v378 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v354, xmmword_29D2F1270), v357), v354);
    v379 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v355, xmmword_29D2F1270), v357), v355);
    *v376 = vbslq_s8(v351, vshrn_high_n_s64(vshrn_n_s64(v360, 0x12uLL), v361, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v360, 0xCuLL), v361, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v360, 6uLL), v361, 6uLL), vuzp1q_s32(v360, v361))));
    v376[1] = vbslq_s8(v351, vshrn_high_n_s64(vshrn_n_s64(v364, 0x12uLL), v365, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v364, 0xCuLL), v365, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v364, 6uLL), v365, 6uLL), vuzp1q_s32(v364, v365))));
    *v377 = vbslq_s8(v351, vshrn_high_n_s64(vshrn_n_s64(v366, 0x12uLL), v367, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v366, 0xCuLL), v367, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v366, 6uLL), v367, 6uLL), vuzp1q_s32(v366, v367))));
    v377[1] = vbslq_s8(v351, vshrn_high_n_s64(vshrn_n_s64(v370, 0x12uLL), v371, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v370, 0xCuLL), v371, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v370, 6uLL), v371, 6uLL), vuzp1q_s32(v370, v371))));
    v380 = (v377 + a2);
    *v380 = vbslq_s8(v351, vshrn_high_n_s64(vshrn_n_s64(v368, 0x12uLL), v369, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v368, 0xCuLL), v369, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v368, 6uLL), v369, 6uLL), vuzp1q_s32(v368, v369))));
    v380[1] = vbslq_s8(v351, vshrn_high_n_s64(vshrn_n_s64(v378, 0x12uLL), v379, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v378, 0xCuLL), v379, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v378, 6uLL), v379, 6uLL), vuzp1q_s32(v378, v379))));
  }

  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(unint64_t a1, char *a2, uint32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
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
  v14 = vbslq_s8(xmmword_29D2F1290, v13, 0);
  v15 = vbslq_s8(xmmword_29D2F1290, v12, 0);
  v12.i64[0] = v7.u32[0];
  v12.i64[1] = v7.u32[1];
  v16 = v12;
  v12.i64[0] = v7.u32[2];
  v12.i64[1] = v7.u32[3];
  v17 = vbslq_s8(xmmword_29D2F1290, v16, 0);
  v18 = vbslq_s8(xmmword_29D2F1290, v12, 0);
  v530 = *a3;
  v531 = a3[1];
  v12.i64[0] = v531.u32[0];
  v12.i64[1] = v531.u32[1];
  v19 = v12;
  v12.i64[0] = v531.u32[2];
  v12.i64[1] = v531.u32[3];
  v20 = vbslq_s8(xmmword_29D2F1290, v19, 0);
  v21 = vbslq_s8(xmmword_29D2F1290, v12, 0);
  v12.i64[0] = v8.u32[0];
  v12.i64[1] = v8.u32[1];
  v22 = v12;
  v12.i64[0] = v8.u32[2];
  v12.i64[1] = v8.u32[3];
  v23 = vbslq_s8(xmmword_29D2F1290, v22, 0);
  v24 = vbslq_s8(xmmword_29D2F1290, v12, 0);
  v12.i64[0] = v10.u32[0];
  v12.i64[1] = v10.u32[1];
  v25 = v12;
  v12.i64[0] = v10.u32[2];
  v12.i64[1] = v10.u32[3];
  v26 = vbslq_s8(xmmword_29D2F1290, v25, 0);
  v27 = vbslq_s8(xmmword_29D2F1290, v12, 0);
  v12.i64[0] = v9->u32[0];
  v12.i64[1] = HIDWORD(v9->i64[0]);
  v28 = v12;
  v12.i64[0] = v9->i64[1];
  v12.i64[1] = HIDWORD(*v9);
  v29 = vbslq_s8(xmmword_29D2F1290, v12, 0);
  v532 = v10;
  v533 = v11;
  v12.i64[0] = v11.u32[0];
  v12.i64[1] = v11.u32[1];
  v30 = vbslq_s8(xmmword_29D2F1290, v12, 0);
  v12.i64[0] = v11.u32[2];
  v12.i64[1] = v11.u32[3];
  v31 = vbslq_s8(xmmword_29D2F1290, v12, 0);
  v528 = *v9;
  v529 = v9[1];
  v12.i64[0] = v529.u32[0];
  v12.i64[1] = v529.u32[1];
  v32 = vbslq_s8(xmmword_29D2F1290, v12, 0);
  v12.i64[0] = v529.u32[2];
  v12.i64[1] = v529.u32[3];
  v33 = vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v7, 6uLL), v18);
  v502 = vshll_n_u32(*v7.i8, 0xCuLL);
  v500 = vshll_high_n_u32(v7, 0xCuLL);
  v521 = vshll_n_u32(*v7.i8, 0x12uLL);
  v516 = vshll_high_n_u32(v7, 0x12uLL);
  v34 = vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v8.i8, 6uLL), v23);
  v35 = vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v8, 6uLL), v24);
  v493 = vshll_n_u32(*v8.i8, 0xCuLL);
  v492 = vshll_high_n_u32(v8, 0xCuLL);
  v507 = vshll_n_u32(*v8.i8, 0x12uLL);
  v490 = v7;
  v491 = v8;
  v506 = vshll_high_n_u32(v8, 0x12uLL);
  v36 = vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*a3->i8, 6uLL), v14);
  v37 = vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v7.i8, 6uLL), v17);
  v38 = v10;
  v39 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*a3->i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*a3->i8, 0xCuLL), v36));
  v40 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(*a3, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(*a3, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(*a3, 6uLL), v15)));
  v41 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v531.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v531.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v531.i8, 6uLL), v20)));
  v42 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v531, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v531, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v531, 6uLL), v21)));
  v526 = vbslq_s8(xmmword_29D2F12C0, v506, vbslq_s8(xmmword_29D2F12B0, v492, v35));
  v43 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v38.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v38.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v38.i8, 6uLL), v26)));
  v44 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v38, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v38, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v38, 6uLL), v27)));
  v45 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v9->i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v9->i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v9->i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v28, 0))));
  v46 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(*v9, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(*v9, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(*v9, 6uLL), v29)));
  v47 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v11.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v11.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v11.i8, 6uLL), v30)));
  v48 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v11, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v11, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v11, 6uLL), v31)));
  v49 = vdupq_lane_s64(v39.i64[0], 0);
  v534 = vshlq_s16(vshlq_s16(vsubq_s16(v39, v49), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v536 = vshlq_s16(vshlq_s16(vsubq_s16(v40, v49), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v525.val[0] = v39;
  v525.val[1] = v40;
  v525.val[2] = vbslq_s8(xmmword_29D2F12C0, v521, vbslq_s8(xmmword_29D2F12B0, v502, v37));
  v525.val[3] = vbslq_s8(xmmword_29D2F12C0, v516, vbslq_s8(xmmword_29D2F12B0, v500, v33));
  v50 = vshlq_s16(vshlq_s16(vsubq_s16(v525.val[2], v49), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v51 = vminq_s16(vminq_s16(v534, v536), v50);
  v538 = v50;
  v540 = vshlq_s16(vshlq_s16(vsubq_s16(v525.val[3], v49), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v52 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v534, v536), v50), v540), xmmword_29D2F1150);
  v53 = vqtbl1q_s8(vminq_s16(v51, v540), xmmword_29D2F1150);
  v54 = vpmaxq_s16(v52, v52);
  v55 = vpminq_s16(v53, v53);
  v56 = vzip1q_s16(v54, v55);
  v53.i64[0] = 0x10001000100010;
  v53.i64[1] = 0x10001000100010;
  v57 = vbicq_s8(vsubq_s16(v53, vclsq_s16(v56)), vceqzq_s16(v56));
  v542 = vshlq_s16(vshlq_s16(vsubq_s16(v41, v49), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v543 = vshlq_s16(vshlq_s16(vsubq_s16(v42, v49), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v510 = v41;
  v512 = v42;
  v513 = vbslq_s8(xmmword_29D2F12C0, v507, vbslq_s8(xmmword_29D2F12B0, v493, v34));
  v58 = vshlq_s16(vshlq_s16(vsubq_s16(v513, v49), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v59 = vminq_s16(vminq_s16(v542, v543), v58);
  v544 = v58;
  v545 = vshlq_s16(vshlq_s16(vsubq_s16(v526, v49), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v41.i64[0] = 0x8000800080008000;
  v41.i64[1] = 0x8000800080008000;
  v60 = vmaxq_s16(v54, v41);
  v41.i64[0] = 0x8000800080008000;
  v41.i64[1] = 0x8000800080008000;
  v61 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v542, v543), v58), v545), xmmword_29D2F1150);
  v62 = vqtbl1q_s8(vminq_s16(v59, v545), xmmword_29D2F1150);
  v63 = vpmaxq_s16(v61, v61);
  v64 = vpminq_s16(v62, v62);
  v65 = vmaxq_s16(v60, v63);
  v66 = vminq_s16(vminq_s16(v55, v41), v64);
  v67 = vzip1q_s16(v63, v64);
  v68 = vbicq_s8(vsubq_s16(v53, vclsq_s16(v67)), vceqzq_s16(v67));
  v546 = vshlq_s16(vshlq_s16(vsubq_s16(v43, v49), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v547 = vshlq_s16(vshlq_s16(vsubq_s16(v44, v49), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v522 = v43;
  v524 = v44;
  v514 = v46;
  v69 = vshlq_s16(vshlq_s16(vsubq_s16(v45, v49), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v70 = vminq_s16(vminq_s16(v546, v547), v69);
  v548 = v69;
  v549 = vshlq_s16(vshlq_s16(vsubq_s16(v46, v49), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v71 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v546, v547), v69), v549), xmmword_29D2F1150);
  v72 = vqtbl1q_s8(vminq_s16(v70, v549), xmmword_29D2F1150);
  v73 = vpmaxq_s16(v71, v71);
  v74 = vpminq_s16(v72, v72);
  v75 = vmaxq_s16(v65, v73);
  v76 = vminq_s16(v66, v74);
  v77 = vzip1q_s16(v73, v74);
  v78 = vbicq_s8(vsubq_s16(v53, vclsq_s16(v77)), vceqzq_s16(v77));
  v550 = vshlq_s16(vshlq_s16(vsubq_s16(v47, v49), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v551 = vshlq_s16(vshlq_s16(vsubq_s16(v48, v49), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v554 = v49;
  v517 = v47;
  v519 = v48;
  v520 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v529.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v529.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v529.i8, 6uLL), v32)));
  v508 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v529, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v529, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v529, 6uLL), vbslq_s8(xmmword_29D2F1290, v12, 0))));
  v552 = vshlq_s16(vshlq_s16(vsubq_s16(v520, v49), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v553 = vshlq_s16(vshlq_s16(vsubq_s16(v508, v49), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v79 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v550, v551), v552), v553), xmmword_29D2F1150);
  v80 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v550, v551), v552), v553), xmmword_29D2F1150);
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
  v562 = v83;
  v561 = v84;
  v93 = vsubq_s16(vshlq_s16(v37, vsubq_s16(v40, v92)), v84);
  v94 = vsubq_s16(v53, v92);
  v95 = vcgtq_s16(v91, v94);
  v96 = vminq_s16(v94, v91);
  v563 = vandq_s8(v93, v95);
  v53.i64[0] = 0x8000800080008;
  v53.i64[1] = 0x8000800080008;
  v97 = vorrq_s8(vandq_s8(v95, v53), 0);
  v53.i64[0] = 0x3000300030003;
  v53.i64[1] = 0x3000300030003;
  v98 = vorrq_s8(vandq_s8(vceqzq_s16(v96), v53), v97);
  v99 = vmaxq_s16(vminq_s16(vsubq_s16(v96, v88), v53), 0);
  v100 = vmaxq_s16(vminq_s16(vsubq_s16(v96, v89), v53), 0);
  v557 = vsubq_s16(v96, v99);
  v558 = vsubq_s16(v96, v100);
  v101 = vmaxq_s16(vminq_s16(vsubq_s16(v96, v90), v53), 0);
  v559 = vsubq_s16(v96, v101);
  v102 = vaddq_s16(v101, v100);
  v560 = v96;
  v103 = vmaxq_s16(vminq_s16(vsubq_s16(v96, v87), v53), 0);
  v53.i64[0] = 0x4000400040004;
  v53.i64[1] = 0x4000400040004;
  v104 = vorrq_s8(vbicq_s8(v53, vceqq_s16(v102, vnegq_s16(vaddq_s16(v103, v99)))), v98);
  v555 = v104;
  v556 = vsubq_s16(v96, v103);
  if (vmaxvq_s16(v96))
  {
    v105.i64[0] = 0x10001000100010;
    v105.i64[1] = 0x10001000100010;
    v106.i64[0] = 0x3000300030003;
    v106.i64[1] = 0x3000300030003;
    v107 = vshlq_s16(vshlq_s16(vsubq_s16(v534, vqtbl1q_s8(v534, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v108 = vshlq_s16(vshlq_s16(vsubq_s16(v536, vqtbl1q_s8(v536, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v109 = vshlq_s16(vshlq_s16(vsubq_s16(v538, vqtbl1q_s8(v538, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v110 = vshlq_s16(vshlq_s16(vsubq_s16(v540, vqtbl1q_s8(v540, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v111 = vshlq_s16(vshlq_s16(vsubq_s16(v542, vqtbl1q_s8(v542, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v112 = vshlq_s16(vshlq_s16(vsubq_s16(v543, vqtbl1q_s8(v543, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v113 = vshlq_s16(vshlq_s16(vsubq_s16(v544, vqtbl1q_s8(v544, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v114 = vshlq_s16(vshlq_s16(vsubq_s16(v545, vqtbl1q_s8(v545, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v115 = vshlq_s16(vshlq_s16(vsubq_s16(v546, vqtbl1q_s8(v546, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v116 = vshlq_s16(vshlq_s16(vsubq_s16(v547, vqtbl1q_s8(v547, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v117.i64[0] = 0x8000800080008000;
    v117.i64[1] = 0x8000800080008000;
    v118.i64[0] = 0x8000800080008000;
    v118.i64[1] = 0x8000800080008000;
    v119 = vshlq_s16(vshlq_s16(vsubq_s16(v548, vqtbl1q_s8(v548, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v120 = vshlq_s16(vshlq_s16(vsubq_s16(v551, vqtbl1q_s8(v551, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v121 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v107, v108), v109), v110);
    v498 = v107;
    v499 = v108;
    v122 = vminq_s16(v107, v108);
    v123 = vshlq_s16(vshlq_s16(vsubq_s16(v549, vqtbl1q_s8(v549, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v124 = vshlq_s16(vshlq_s16(vsubq_s16(v550, vqtbl1q_s8(v550, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v501 = v110;
    v503 = v109;
    v125 = vminq_s16(vminq_s16(v122, v109), v110);
    v126 = vshlq_s16(vshlq_s16(vsubq_s16(v553, vqtbl1q_s8(v553, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
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
    v494 = vshlq_s16(vshlq_s16(vsubq_s16(v552, vqtbl1q_s8(v552, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v154 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v124, v120), v494), v126), xmmword_29D2F1150);
    v155 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v124, v120), v494), v126), xmmword_29D2F1150);
    v156 = vpmaxq_s16(v154, v154);
    v157 = vpminq_s16(v155, v155);
    v158 = vmaxq_s16(v149, v156);
    v159 = vminq_s16(v150, v157);
    v160 = vzip1q_s16(v156, v157);
    v161 = vbicq_s8(vsubq_s16(v105, vclsq_s16(v160)), vceqzq_s16(v160));
    v162 = vpmaxq_s16(v161, v161);
    v163 = vmaxq_s16(vmaxq_s16(v135, v144), vmaxq_s16(v153, v162));
    v504 = v159;
    v505 = v158;
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
    v496 = vsubq_s16(v167, v169);
    v497 = vsubq_s16(v167, v170);
    v170.i64[0] = 0x7000700070007;
    v170.i64[1] = 0x7000700070007;
    v495 = vsubq_s16(v167, v168);
    v168.i64[0] = 0x8000800080008;
    v168.i64[1] = 0x8000800080008;
    v177 = vandq_s8(vaddq_s16(v104, v104), v168);
    v178 = vandq_s8(v98, v168);
    v157.i64[0] = 0x2000200020002;
    v157.i64[1] = 0x2000200020002;
    v179 = vandq_s8(vceqq_s16(vandq_s8(v98, v106), v157), v105);
    v180 = vceqzq_s16(v178);
    v181 = v560;
    v182 = vaddq_s16(vaddq_s16(vbicq_s8(v560, v180), v179), v177);
    v184 = v556;
    v183 = v557;
    v186 = v558;
    v185 = v559;
    v187 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vmlaq_s16(v182, v556, v170), vshlq_n_s16(vaddq_s16(vaddq_s16(v558, v557), v559), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v167, vceqzq_s16((*&v175 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v173, v173)), v495, v170), vshlq_n_s16(vaddq_s16(vaddq_s16(v497, v496), v176), 3uLL))).i64[0], 0);
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
      v534 = vbslq_s8(v187, v498, v534);
      v536 = vbslq_s8(v187, v499, v536);
      v191.i64[0] = -1;
      v191.i64[1] = -1;
      v538 = vbslq_s8(v187, v503, v538);
      v540 = vbslq_s8(v187, v501, v540);
      v542 = vbslq_s8(v187, v111, v542);
      v543 = vbslq_s8(v187, v112, v543);
      v544 = vbslq_s8(v187, v113, v544);
      v545 = vbslq_s8(v187, v114, v545);
      v546 = vbslq_s8(v187, v115, v546);
      v547 = vbslq_s8(v187, v116, v547);
      v548 = vbslq_s8(v187, v193, v548);
      v549 = vbslq_s8(v187, v123, v549);
      v550 = vbslq_s8(v187, v124, v550);
      v551 = vbslq_s8(v187, v120, v551);
      v552 = vbslq_s8(v187, v494, v552);
      v553 = vbslq_s8(v187, v126, v553);
      v184 = vbslq_s8(v187, v495, v556);
      v183 = vbslq_s8(v187, v496, v557);
      v556 = v184;
      v557 = v183;
      v186 = vbslq_s8(v187, v497, v558);
      v185 = vbslq_s8(v187, v192, v559);
      v558 = v186;
      v559 = v185;
      v562 = vbslq_s8(v187, v505, v562);
      v563 = vbslq_s8(v187, vandq_s8(vsubq_s16(vshlq_s16(v191, vsubq_s16(v195, v164)), v504), v174), v563);
      v181 = vbslq_s8(v187, v167, v560);
      v561 = vbslq_s8(v187, v504, v561);
      v560 = v181;
      v104 = vbslq_s8(v187, v194, v555);
      v554 = vbslq_s8(v187, vsubq_s16(v554, vqtbl1q_s8(v554, xmmword_29D2F1270)), v554);
      v555 = v104;
    }

    if (!v190)
    {
      v196 = vqtbl4q_s8(v525, xmmword_29D2F1160);
      v197 = vsubq_s16(v525.val[0], vqtbl4q_s8(v525, xmmword_29D2F10B0));
      v198 = vsubq_s16(v525.val[2], v196);
      v199 = vsubq_s16(v525.val[3], v196);
      v565.val[0] = v510;
      v565.val[1] = v512;
      v565.val[2] = v513;
      v565.val[3].i64[0] = v526.i64[0];
      v565.val[3].i64[1] = v525.val[3].i64[1];
      v200 = vsubq_s16(v510, vqtbl4q_s8(v565, xmmword_29D2F10B0));
      v201 = vsubq_s16(v512, vqtbl4q_s8(v565, xmmword_29D2F10F0));
      v202 = vsubq_s16(v513, vqtbl4q_s8(v565, xmmword_29D2F1160));
      v203 = vsubq_s16(v526, vqtbl4q_s8(v565, xmmword_29D2F1100));
      v564.val[0] = v522;
      v564.val[1] = v524;
      v564.val[2] = v45;
      v564.val[3].i64[0] = v514.i64[0];
      v564.val[3].i64[1] = v525.val[3].i64[1];
      v565.val[2] = vqtbl4q_s8(v564, xmmword_29D2F10C0);
      v204 = vsubq_s16(v522, vqtbl4q_s8(v564, xmmword_29D2F1170));
      v565.val[0] = vsubq_s16(v524, vqtbl4q_s8(v564, xmmword_29D2F1180));
      v564.val[0] = vsubq_s16(v45, vqtbl4q_s8(v564, xmmword_29D2F10B0));
      v564.val[1] = v517;
      v564.val[2] = v519;
      v564.val[3] = v520;
      v205 = v508.i64[0];
      v206 = v525.val[3].i64[1];
      v565.val[3].i64[0] = v199.i64[0];
      v565.val[3].i64[1] = v197.i64[0];
      v197.i64[0] = v199.i64[1];
      v207 = vshlq_s16(vsubq_s16(v514, v565.val[2]), xmmword_29D2F12D0);
      v208 = vshlq_s16(vsubq_s16(v517, vqtbl4q_s8(*(&v564 + 16), xmmword_29D2F1170)), xmmword_29D2F12D0);
      v209 = vshlq_s16(vsubq_s16(v519, vqtbl4q_s8(*(&v564 + 16), xmmword_29D2F1120)), xmmword_29D2F12D0);
      v210 = vshlq_s16(vsubq_s16(v520, vqtbl4q_s8(*(&v564 + 16), xmmword_29D2F10B0)), xmmword_29D2F12D0);
      v211 = vshlq_s16(vsubq_s16(v508, vqtbl4q_s8(*(&v564 + 16), xmmword_29D2F10C0)), xmmword_29D2F12D0);
      v212 = vshlq_s16(vshlq_s16(v197, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v213 = vshlq_s16(vshlq_s16(vsubq_s16(v525.val[1], vqtbl4q_s8(v525, xmmword_29D2F10C0)), xmmword_29D2F12D0), xmmword_29D2F12E0);
      v214 = vshlq_s16(vshlq_s16(v198, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v215 = vshlq_s16(vshlq_s16(v565.val[3], xmmword_29D2F12D0), xmmword_29D2F12E0);
      v216 = vshlq_s16(vshlq_s16(v200, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v217 = vshlq_s16(vshlq_s16(v201, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v218 = vshlq_s16(vshlq_s16(v202, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v219 = vshlq_s16(vshlq_s16(v203, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v220 = vshlq_s16(vshlq_s16(v204, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v221 = vshlq_s16(vshlq_s16(v565.val[0], xmmword_29D2F12D0), xmmword_29D2F12E0);
      v222 = vshlq_s16(vshlq_s16(v564.val[0], xmmword_29D2F12D0), xmmword_29D2F12E0);
      v223 = vshlq_s16(v207, xmmword_29D2F12E0);
      v224 = vshlq_s16(v208, xmmword_29D2F12E0);
      v225 = vshlq_s16(v210, xmmword_29D2F12E0);
      v226 = vshlq_s16(v211, xmmword_29D2F12E0);
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
      v515 = vshlq_s16(v209, xmmword_29D2F12E0);
      v518 = v224;
      v527 = v225;
      v523 = v226;
      v254 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v224, v515), v225), v226), xmmword_29D2F1150);
      v255 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v224, v515), v225), v226), xmmword_29D2F1150);
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
      v278 = v556;
      v279.i64[0] = 0x2000200020002;
      v279.i64[1] = 0x2000200020002;
      v280 = vandq_s8(vceqq_s16(vandq_s8(v555, v235), v279), v229);
      v229.i64[0] = 0x8000800080008;
      v229.i64[1] = 0x8000800080008;
      v281 = vandq_s8(vaddq_s16(v555, v555), v229);
      v282 = vceqzq_s16(vandq_s8(v555, v229));
      v181 = v560;
      v283 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v560, v282), v281), v280), v556, v271);
      v183 = v557;
      v186 = v558;
      v185 = v559;
      v284 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v283, vshlq_n_s16(vaddq_s16(vaddq_s16(v558, v557), v559), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v267, v266), vaddq_s16(v277, v277)), v273, v271), vshlq_n_s16(vaddq_s16(vaddq_s16(v275, v274), v276), 3uLL))).i64[0], 0);
      if (vaddvq_s16(v284))
      {
        v509 = v258;
        v511 = v276;
        v285.i64[0] = 0x9000900090009;
        v285.i64[1] = 0x9000900090009;
        v286 = vorrq_s8(vandq_s8(vceqzq_s16(v267), v279), vsubq_s16(vandq_s8(v266, v285), vmvnq_s8(v266)));
        v285.i64[0] = -1;
        v285.i64[1] = -1;
        v287 = vorrq_s8(v286, v277);
        v288.i64[0] = 0xF000F000F000FLL;
        v288.i64[1] = 0xF000F000F000FLL;
        v289 = vandq_s8(vsubq_s16(vshlq_s16(v285, vsubq_s16(v288, v264)), v259), v266);
        v290 = vbslq_s8(v284, v213, v536);
        v278 = vbslq_s8(v284, v273, v556);
        v183 = vbslq_s8(v284, v274, v557);
        v186 = vbslq_s8(v284, v275, v558);
        v185 = vbslq_s8(v284, v511, v559);
        v181 = vbslq_s8(v284, v267, v560);
        v104 = vbslq_s8(v284, v287, v555);
        v553 = vbslq_s8(v284, v523, v553);
        v554 = vbslq_s8(v284, vextq_s8(v525.val[3], v525.val[3], 8uLL), v554);
        v534 = vbslq_s8(v284, v212, v534);
        v536 = v290;
        v538 = vbslq_s8(v284, v214, v538);
        v540 = vbslq_s8(v284, v215, v540);
        v542 = vbslq_s8(v284, v216, v542);
        v543 = vbslq_s8(v284, v217, v543);
        v544 = vbslq_s8(v284, v218, v544);
        v545 = vbslq_s8(v284, v219, v545);
        v546 = vbslq_s8(v284, v220, v546);
        v547 = vbslq_s8(v284, v221, v547);
        v548 = vbslq_s8(v284, v222, v548);
        v549 = vbslq_s8(v284, v223, v549);
        v550 = vbslq_s8(v284, v518, v550);
        v551 = vbslq_s8(v284, v515, v551);
        v552 = vbslq_s8(v284, v527, v552);
        v561 = vbslq_s8(v284, v259, v561);
        v562 = vbslq_s8(v284, v509, v562);
        v563 = vbslq_s8(v284, v289, v563);
        v556 = v278;
        v557 = v183;
        v558 = v186;
        v559 = v185;
        v560 = v181;
        v555 = v104;
      }

      else
      {
        v104 = v555;
      }

      v184 = v278;
    }

    v293 = vandq_s8(v563, vceqq_s16(v181, v184));
    v535 = vaddq_s16(v293, v534);
    v537 = vaddq_s16(v536, v293);
    v539 = vaddq_s16(v538, v293);
    v541 = vaddq_s16(v540, v293);
    v294 = vandq_s8(v563, vceqq_s16(v181, v183));
    v542 = vaddq_s16(v542, v294);
    v543 = vaddq_s16(v543, v294);
    v544 = vaddq_s16(v544, v294);
    v545 = vaddq_s16(v545, v294);
    v295 = vandq_s8(v563, vceqq_s16(v181, v186));
    v546 = vaddq_s16(v546, v295);
    v547 = vaddq_s16(v547, v295);
    v548 = vaddq_s16(v548, v295);
    v549 = vaddq_s16(v549, v295);
    v296 = vandq_s8(v563, vceqq_s16(v181, v185));
    v550 = vaddq_s16(v550, v296);
    v551 = vaddq_s16(v551, v296);
    v552 = vaddq_s16(v552, v296);
    v553 = vaddq_s16(v553, v296);
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
    if ((vpaddq_s16(v302, v302).i16[0] + 71) > 0x3FF)
    {
      *a1 = v530;
      *(a1 + 16) = v490;
      *(a1 + 32) = v531;
      *(a1 + 48) = v491;
      *(a1 + 64) = v532;
      *(a1 + 80) = v528;
      v306 = (a1 + 96);
      v291 = 127;
      result = 128;
      *v306 = v533;
      v306[1] = v529;
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
      v307 = v554.i64[0];
      v308 = vmovl_s16(vceqz_s16(*v181.i8));
      v309.i64[0] = v308.i32[0];
      v309.i64[1] = v308.i32[1];
      v310 = v309;
      v309.i64[0] = v308.i32[2];
      v309.i64[1] = v308.i32[3];
      v311 = v309;
      v312 = vand_s8(vadd_s16(*v181.i8, 0xF000F000F000FLL), 0xF000F000F000FLL);
      v312.i16[3] = vbic_s8(0x1000100010001, *&v181).i16[3];
      v313 = vshlq_u32(vmovl_u16(v312), xmmword_29D2F12F0);
      v309.i64[0] = v313.u32[0];
      v309.i64[1] = v313.u32[1];
      v314 = v309;
      v309.i64[0] = v313.u32[2];
      v309.i64[1] = v313.u32[3];
      v315 = vorrq_s8(vbicq_s8(v314, v310), vbicq_s8(v309, v311));
      v316 = *&vorr_s8(*v315.i8, *&vextq_s8(v315, v315, 8uLL)) | v104.i8[0] & 0x1F | (32 * (v104.i8[2] & 0x1F)) & 0x83FF | ((v104.i8[4] & 0x1F) << 10) | ((v104.i8[6] & 0xF) << 15);
      v317 = (v316 << v304) | v305;
      if (v304 >= 0x20)
      {
        *v303 = v317;
        v317 = v316 >> (-8 * (a1 & 7u));
      }

      v318 = v307 & 0x3FF | ((WORD1(v307) & 0x3FF) << 10) | ((WORD2(v307) & 0x3FF) << 20) | ((BYTE6(v307) & 3) << 30);
      v319 = (v304 + 32) & 0x38;
      v320 = v317 | (v318 << v319);
      if (v319 >= 0x20)
      {
        *(v303 + (((v304 + 32) >> 3) & 8)) = v320;
        v320 = v318 >> -v319;
      }

      v321 = vsubq_s16(v560, v556);
      v322 = vsubq_s16(v560, v557);
      v323 = vsubq_s16(v560, v558);
      v324 = vsubq_s16(v560, v559);
      *v321.i8 = vqmovn_u16(v321);
      *v322.i8 = vqmovn_u16(v322);
      *v323.i8 = vqmovn_u16(v323);
      *v324.i8 = vqmovn_u16(v324);
      v325 = vtrn1q_s8(v321, v322);
      v326 = vtrn2q_s8(v321, v322);
      v327 = vtrn1q_s8(v323, v324);
      v328 = vtrn2q_s8(v323, v324);
      v329 = vzip1q_s16(v326, v328);
      v330 = vtrn2q_s16(v326, v328);
      v326.i64[0] = vzip1q_s32(vzip1q_s16(v325, v327), v329).u64[0];
      v330.i64[0] = vzip1q_s32(vtrn2q_s16(v325, v327), v330).u64[0];
      v323.i64[0] = 0x202020202020202;
      v323.i64[1] = 0x202020202020202;
      v331 = vandq_s8(vmovl_s16(vtst_s16(*v555.i8, 0x4000400040004)), v323);
      v323.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v323.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v325.i64[0] = -1;
      v325.i64[1] = -1;
      v332 = vshlq_u8(v325, vorrq_s8(v331, v323));
      v333 = vmovl_u8(vand_s8(*v332.i8, *v326.i8));
      v334 = vmovl_u8(vand_s8(*&vextq_s8(v332, v332, 8uLL), *v330.i8));
      v335 = vmovl_u8(*v331.i8);
      v336 = vmovl_high_u8(v331);
      v337 = vpaddq_s16(vshlq_u16(v333, vtrn1q_s16(0, v335)), vshlq_u16(v334, vtrn1q_s16(0, v336)));
      v338 = vpaddq_s16(v335, v336);
      v339 = vmovl_u16(*v338.i8);
      v340 = vmovl_high_u16(v338);
      v341 = vpaddq_s32(vshlq_u32(vmovl_u16(*v337.i8), vtrn1q_s32(0, v339)), vshlq_u32(vmovl_high_u16(v337), vtrn1q_s32(0, v340)));
      v342 = vpaddq_s32(v339, v340);
      v343.i64[0] = v341.u32[0];
      v343.i64[1] = v341.u32[1];
      v344 = v343;
      v343.i64[0] = v341.u32[2];
      v343.i64[1] = v341.u32[3];
      v345 = v343;
      v343.i64[0] = v342.u32[0];
      v343.i64[1] = v342.u32[1];
      v346 = v343;
      v343.i64[0] = v342.u32[2];
      v343.i64[1] = v342.u32[3];
      v347 = vpaddq_s64(vshlq_u64(v344, vzip1q_s64(0, v346)), vshlq_u64(v345, vzip1q_s64(0, v343)));
      v348 = vpaddq_s64(v346, v343);
      v349 = (v347.i64[0] << v304) | v320;
      if (v348.i64[0] + v304 >= 0x40)
      {
        v303[1] = v349;
        v349 = v347.i64[0] >> (-8 * (a1 & 7u));
        if (!v304)
        {
          v349 = 0;
        }
      }

      v350 = v348.i64[0] + (v304 | 0x40);
      v351 = v349 | (v347.i64[1] << v350);
      if ((v350 & 0x3F) + v348.i64[1] >= 0x40)
      {
        *(v303 + ((v350 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v351;
        v351 = v347.i64[1] >> -(v350 & 0x3F);
        if ((v350 & 0x3F) == 0)
        {
          v351 = 0;
        }
      }

      v352 = v350 + v348.i64[1];
      v353.i64[0] = 0x8000800080008;
      v353.i64[1] = 0x8000800080008;
      v354.i64[0] = -1;
      v354.i64[1] = -1;
      v355 = vandq_s8(vextq_s8(vtstq_s16(v555, v353), 0, 8uLL), v560);
      v356.i64[0] = 0xF000F000F000FLL;
      v356.i64[1] = 0xF000F000F000FLL;
      v357 = vandq_s8(vshlq_u16(v354, vaddq_s16(v355, v356)), v563);
      v358 = vmovl_u16(*v355.i8);
      v359 = vpaddq_s32(vshlq_u32(vmovl_u16(*v357.i8), vtrn1q_s32(0, v358)), vmovl_high_u16(v357));
      v360 = vpaddq_s32(v358, vmovl_high_u16(v355));
      v361.i64[0] = v359.u32[0];
      v361.i64[1] = v359.u32[1];
      v362 = v361;
      v361.i64[0] = v359.u32[2];
      v361.i64[1] = v359.u32[3];
      v363 = v361;
      v361.i64[0] = v360.u32[0];
      v361.i64[1] = v360.u32[1];
      v364 = v361;
      v361.i64[0] = v360.u32[2];
      v361.i64[1] = v360.u32[3];
      v365 = vpaddq_s64(vshlq_u64(v362, vzip1q_s64(0, v364)), vshlq_u64(v363, vzip1q_s64(0, v361)));
      v366 = vpaddq_s64(v364, v361);
      v367 = (v365.i64[0] << v352) | v351;
      if (v366.i64[0] + (v352 & 0x3F) >= 0x40)
      {
        *(v303 + ((v352 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v367;
        v367 = v365.i64[0] >> -(v352 & 0x3F);
        if ((v352 & 0x3F) == 0)
        {
          v367 = 0;
        }
      }

      v368 = v366.i64[0] + v352;
      v369 = v367 | (v365.i64[1] << v368);
      if ((v368 & 0x3F) + v366.i64[1] >= 0x40)
      {
        *(v303 + ((v368 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v369;
        v369 = v365.i64[1] >> -(v368 & 0x3F);
        if ((v368 & 0x3F) == 0)
        {
          v369 = 0;
        }
      }

      v370 = v368 + v366.i64[1];
      v371 = vextq_s8(0, v556, 8uLL);
      v372.i64[0] = 0xF000F000F000FLL;
      v372.i64[1] = 0xF000F000F000FLL;
      v373.i64[0] = -1;
      v373.i64[1] = -1;
      v374 = vandq_s8(vshlq_u16(v373, vaddq_s16(v371, v372)), v535);
      v375 = vmovl_u16(*v371.i8);
      v376 = vmovl_high_u16(v371);
      v377 = vpaddq_s32(vmovl_u16(*v374.i8), vshlq_u32(vmovl_high_u16(v374), vtrn1q_s32(0, v376)));
      v378 = vpaddq_s32(v375, v376);
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
      v383 = vpaddq_s64(vshlq_u64(v380, vzip1q_s64(0, v382)), vshlq_u64(v381, vzip1q_s64(0, v379)));
      v384 = vpaddq_s64(v382, v379);
      v385 = (v383.i64[0] << v370) | v369;
      if (v384.i64[0] + (v370 & 0x3F) >= 0x40)
      {
        *(v303 + ((v370 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v385;
        v385 = v383.i64[0] >> -(v370 & 0x3F);
        if ((v370 & 0x3F) == 0)
        {
          v385 = 0;
        }
      }

      v386 = v384.i64[0] + v370;
      v387 = v385 | (v383.i64[1] << v386);
      if ((v386 & 0x3F) + v384.i64[1] >= 0x40)
      {
        *(v303 + ((v386 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v387;
        v387 = v383.i64[1] >> -(v386 & 0x3F);
        if ((v386 & 0x3F) == 0)
        {
          v387 = 0;
        }
      }

      v388 = v386 + v384.i64[1];
      v389.i64[0] = 0xF000F000F000FLL;
      v389.i64[1] = 0xF000F000F000FLL;
      v390.i64[0] = -1;
      v390.i64[1] = -1;
      v391 = vandq_s8(vshlq_u16(v390, vaddq_s16(v556, v389)), v537);
      v392 = vmovl_u16(*v556.i8);
      v393 = vmovl_high_u16(v556);
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
      v402 = (v400.i64[0] << v388) | v387;
      if (v401.i64[0] + (v388 & 0x3F) >= 0x40)
      {
        *(v303 + ((v388 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v402;
        v402 = v400.i64[0] >> -(v388 & 0x3F);
        if ((v388 & 0x3F) == 0)
        {
          v402 = 0;
        }
      }

      v403 = v401.i64[0] + v388;
      v404 = v402 | (v400.i64[1] << v403);
      if ((v403 & 0x3F) + v401.i64[1] >= 0x40)
      {
        *(v303 + ((v403 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v404;
        v404 = v400.i64[1] >> -(v403 & 0x3F);
        if ((v403 & 0x3F) == 0)
        {
          v404 = 0;
        }
      }

      v405 = v403 + v401.i64[1];
      v406.i64[0] = 0xF000F000F000FLL;
      v406.i64[1] = 0xF000F000F000FLL;
      v407.i64[0] = -1;
      v407.i64[1] = -1;
      v408 = vandq_s8(vshlq_u16(v407, vaddq_s16(v556, v406)), v539);
      v409 = vmovl_u16(*v556.i8);
      v410 = vmovl_high_u16(v556);
      v411 = vpaddq_s32(vshlq_u32(vmovl_u16(*v408.i8), vtrn1q_s32(0, v409)), vshlq_u32(vmovl_high_u16(v408), vtrn1q_s32(0, v410)));
      v412 = vpaddq_s32(v409, v410);
      v413.i64[0] = v411.u32[0];
      v413.i64[1] = v411.u32[1];
      v414 = v413;
      v413.i64[0] = v411.u32[2];
      v413.i64[1] = v411.u32[3];
      v415 = v413;
      v413.i64[0] = v412.u32[0];
      v413.i64[1] = v412.u32[1];
      v416 = v413;
      v413.i64[0] = v412.u32[2];
      v413.i64[1] = v412.u32[3];
      v417 = vpaddq_s64(vshlq_u64(v414, vzip1q_s64(0, v416)), vshlq_u64(v415, vzip1q_s64(0, v413)));
      v418 = vpaddq_s64(v416, v413);
      v419 = (v417.i64[0] << v405) | v404;
      if (v418.i64[0] + (v405 & 0x3F) >= 0x40)
      {
        *(v303 + ((v405 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v419;
        v419 = v417.i64[0] >> -(v405 & 0x3F);
        if ((v405 & 0x3F) == 0)
        {
          v419 = 0;
        }
      }

      v420 = v418.i64[0] + v405;
      v421 = v419 | (v417.i64[1] << v420);
      if ((v420 & 0x3F) + v418.i64[1] >= 0x40)
      {
        *(v303 + ((v420 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v421;
        v421 = v417.i64[1] >> -(v420 & 0x3F);
        if ((v420 & 0x3F) == 0)
        {
          v421 = 0;
        }
      }

      v422 = v420 + v418.i64[1];
      v423.i64[0] = 0xF000F000F000FLL;
      v423.i64[1] = 0xF000F000F000FLL;
      v424.i64[0] = -1;
      v424.i64[1] = -1;
      v425 = vandq_s8(vshlq_u16(v424, vaddq_s16(v556, v423)), v541);
      v426 = vmovl_u16(*v556.i8);
      v427 = vmovl_high_u16(v556);
      v428 = vpaddq_s32(vshlq_u32(vmovl_u16(*v425.i8), vtrn1q_s32(0, v426)), vshlq_u32(vmovl_high_u16(v425), vtrn1q_s32(0, v427)));
      v429 = vpaddq_s32(v426, v427);
      v430.i64[0] = v428.u32[0];
      v430.i64[1] = v428.u32[1];
      v431 = v430;
      v430.i64[0] = v428.u32[2];
      v430.i64[1] = v428.u32[3];
      v432 = v430;
      v430.i64[0] = v429.u32[0];
      v430.i64[1] = v429.u32[1];
      v433 = v430;
      v430.i64[0] = v429.u32[2];
      v430.i64[1] = v429.u32[3];
      v434 = vpaddq_s64(vshlq_u64(v431, vzip1q_s64(0, v433)), vshlq_u64(v432, vzip1q_s64(0, v430)));
      v435 = vpaddq_s64(v433, v430);
      v436 = (v434.i64[0] << v422) | v421;
      if (v435.i64[0] + (v422 & 0x3F) >= 0x40)
      {
        *(v303 + ((v422 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v436;
        v436 = v434.i64[0] >> -(v422 & 0x3F);
        if ((v422 & 0x3F) == 0)
        {
          v436 = 0;
        }
      }

      v437 = v435.i64[1];
      v438 = v435.i64[0] + v422;
      v439 = (v435.i64[0] + v422) & 0x3F;
      v440 = v436 | (v434.i64[1] << v438);
      if ((v439 + v435.i64[1]) >= 0x40)
      {
        *(v303 + ((v438 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v440;
        v440 = v434.i64[1] >> -v439;
        if (!v439)
        {
          v440 = 0;
        }
      }

      v441 = 0;
      v442.i64[0] = 0xF000F000F000FLL;
      v442.i64[1] = 0xF000F000F000FLL;
      v443.i64[0] = -1;
      v443.i64[1] = -1;
      v444 = v438 + v437;
      do
      {
        v445 = vandq_s8(vshlq_u16(v443, vaddq_s16(v557, v442)), *(&v542 + v441));
        v446 = vmovl_u16(*v557.i8);
        v447 = vmovl_high_u16(v557);
        v448 = vpaddq_s32(vshlq_u32(vmovl_u16(*v445.i8), vtrn1q_s32(0, v446)), vshlq_u32(vmovl_high_u16(v445), vtrn1q_s32(0, v447)));
        v449 = vpaddq_s32(v446, v447);
        v450.i64[0] = v448.u32[0];
        v450.i64[1] = v448.u32[1];
        v451 = v450;
        v450.i64[0] = v448.u32[2];
        v450.i64[1] = v448.u32[3];
        v452 = v450;
        v450.i64[0] = v449.u32[0];
        v450.i64[1] = v449.u32[1];
        v453 = v450;
        v450.i64[0] = v449.u32[2];
        v450.i64[1] = v449.u32[3];
        v454 = vpaddq_s64(vshlq_u64(v451, vzip1q_s64(0, v453)), vshlq_u64(v452, vzip1q_s64(0, v450)));
        v455 = vpaddq_s64(v453, v450);
        v456 = (v454.i64[0] << v444) | v440;
        if (v455.i64[0] + (v444 & 0x3F) >= 0x40)
        {
          *(v303 + ((v444 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v456;
          v456 = v454.i64[0] >> -(v444 & 0x3F);
          if ((v444 & 0x3F) == 0)
          {
            v456 = 0;
          }
        }

        v457 = v455.i64[0] + v444;
        v440 = v456 | (v454.i64[1] << v457);
        if ((v457 & 0x3F) + v455.i64[1] >= 0x40)
        {
          *(v303 + ((v457 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v440;
          v440 = v454.i64[1] >> -(v457 & 0x3F);
          if ((v457 & 0x3F) == 0)
          {
            v440 = 0;
          }
        }

        v444 = v457 + v455.i64[1];
        v441 += 16;
      }

      while (v441 != 64);
      v458 = 0;
      v459.i64[0] = 0xF000F000F000FLL;
      v459.i64[1] = 0xF000F000F000FLL;
      v460.i64[0] = -1;
      v460.i64[1] = -1;
      do
      {
        v461 = vandq_s8(vshlq_u16(v460, vaddq_s16(v558, v459)), *(&v546 + v458));
        v462 = vmovl_u16(*v558.i8);
        v463 = vmovl_high_u16(v558);
        v464 = vpaddq_s32(vshlq_u32(vmovl_u16(*v461.i8), vtrn1q_s32(0, v462)), vshlq_u32(vmovl_high_u16(v461), vtrn1q_s32(0, v463)));
        v465 = vpaddq_s32(v462, v463);
        v466.i64[0] = v464.u32[0];
        v466.i64[1] = v464.u32[1];
        v467 = v466;
        v466.i64[0] = v464.u32[2];
        v466.i64[1] = v464.u32[3];
        v468 = v466;
        v466.i64[0] = v465.u32[0];
        v466.i64[1] = v465.u32[1];
        v469 = v466;
        v466.i64[0] = v465.u32[2];
        v466.i64[1] = v465.u32[3];
        v470 = vpaddq_s64(vshlq_u64(v467, vzip1q_s64(0, v469)), vshlq_u64(v468, vzip1q_s64(0, v466)));
        v471 = vpaddq_s64(v469, v466);
        v472 = (v470.i64[0] << v444) | v440;
        if (v471.i64[0] + (v444 & 0x3F) >= 0x40)
        {
          *(v303 + ((v444 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v472;
          v472 = v470.i64[0] >> -(v444 & 0x3F);
          if ((v444 & 0x3F) == 0)
          {
            v472 = 0;
          }
        }

        v473 = v471.i64[0] + v444;
        v440 = v472 | (v470.i64[1] << v473);
        if ((v473 & 0x3F) + v471.i64[1] >= 0x40)
        {
          *(v303 + ((v473 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v440;
          v440 = v470.i64[1] >> -(v473 & 0x3F);
          if ((v473 & 0x3F) == 0)
          {
            v440 = 0;
          }
        }

        v444 = v473 + v471.i64[1];
        v458 += 16;
      }

      while (v458 != 64);
      v474 = 0;
      v475.i64[0] = 0xF000F000F000FLL;
      v475.i64[1] = 0xF000F000F000FLL;
      v476.i64[0] = -1;
      v476.i64[1] = -1;
      do
      {
        v477 = vandq_s8(vshlq_u16(v476, vaddq_s16(v559, v475)), *(&v550 + v474));
        v478 = vmovl_u16(*v559.i8);
        v479 = vmovl_high_u16(v559);
        v480 = vpaddq_s32(vshlq_u32(vmovl_u16(*v477.i8), vtrn1q_s32(0, v478)), vshlq_u32(vmovl_high_u16(v477), vtrn1q_s32(0, v479)));
        v481 = vpaddq_s32(v478, v479);
        v482.i64[0] = v480.u32[0];
        v482.i64[1] = v480.u32[1];
        v483 = v482;
        v482.i64[0] = v480.u32[2];
        v482.i64[1] = v480.u32[3];
        v484 = v482;
        v482.i64[0] = v481.u32[0];
        v482.i64[1] = v481.u32[1];
        v485 = v482;
        v482.i64[0] = v481.u32[2];
        v482.i64[1] = v481.u32[3];
        v486 = vpaddq_s64(vshlq_u64(v483, vzip1q_s64(0, v485)), vshlq_u64(v484, vzip1q_s64(0, v482)));
        v487 = vpaddq_s64(v485, v482);
        v488 = (v486.i64[0] << v444) | v440;
        if (v487.i64[0] + (v444 & 0x3F) >= 0x40)
        {
          *(v303 + ((v444 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v488;
          v488 = v486.i64[0] >> -(v444 & 0x3F);
          if ((v444 & 0x3F) == 0)
          {
            v488 = 0;
          }
        }

        v489 = v487.i64[0] + v444;
        v440 = v488 | (v486.i64[1] << v489);
        if ((v489 & 0x3F) + v487.i64[1] >= 0x40)
        {
          *(v303 + ((v489 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v440;
          v440 = v486.i64[1] >> -(v489 & 0x3F);
          if ((v489 & 0x3F) == 0)
          {
            v440 = 0;
          }
        }

        v444 = v489 + v487.i64[1];
        v474 += 16;
      }

      while (v474 != 64);
      if ((v444 & 0x3F) != 0)
      {
        *(v303 + ((v444 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v440;
      }

      result = (v444 - v304 + 7) >> 3;
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

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 2, a2, v14, v13);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, (v11 + v15), a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v15 + 32), a2, v20, v19);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 4, a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 6, a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + v15 + 64), a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + v15 + 96), a2, v30, v29);
}

void *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(void *result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 8 * (&v23 & 7);
  v5 = 10;
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(float32x4_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
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
    v432 = v13;
    v433 = v12;
    v434 = v11;
    v435 = v10;
    v436 = v9;
    v437 = v8;
    v438 = v7;
    v439 = v6;
    v440 = v4;
    v441 = v5;
    v408 = 0;
    v407 = (8 * (a3 & 7)) | 0x400;
    v405 = 8 * (a3 & 7);
    v406 = a3 & 0xFFFFFFFFFFFFFFF8;
    result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)13,AGX::AppleCompressionGen2::Vec<short>>(&v426, v431, &v425, &v405, a4);
    v31.i64[0] = 0x3000300030003;
    v31.i64[1] = 0x3000300030003;
    v32 = v426;
    v33 = vandq_s8(v426, v31);
    v34 = vbicq_s8(v431[0], vceqq_s16(v33, v31));
    v431[0] = v34;
    v427 = v34;
    v428 = v34;
    v429 = v34;
    v430 = v34;
    v35.i64[0] = 0x202020202020202;
    v35.i64[1] = 0x202020202020202;
    v36 = vandq_s8(vmovl_s16(vtst_s16(*v426.i8, 0x4000400040004)), v35);
    v37 = v405;
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
      v45 = v405 + v43;
      if (v407)
      {
        _CF = v407 >= v45;
      }

      else
      {
        _CF = 1;
      }

      v47 = _CF;
      v48 = a1;
      v49 = a2;
      if (v43 <= 0x80 && (v47 & 1) != 0)
      {
        v30.i64[0] = 63;
        v50 = (v406 + 8 * (v405 >> 6));
        v51 = vaddq_s64(vdupq_lane_s64(vandq_s8(v405, v30).i64[0], 0), vzip1q_s64(0, v42));
        v52 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v50, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v51)), vshlq_u64(vdupq_lane_s64(v50->i64[0], 0), vnegq_s64(v51)));
        if ((v405 & 0x3F) + v44 >= 0x81)
        {
          v52 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v50[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v51)), vshlq_u64(vdupq_laneq_s64(v50[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v51))), v52);
        }

        v37 = v45;
      }

      else
      {
        v408 = 1;
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
      v427 = vsubw_s8(v427, *v64.i8);
      v428 = vsubw_s8(v428, *v63.i8);
      v429 = vsubw_s8(v429, v67);
      v430 = vsubw_s8(v430, *v66.i8);
      v56 = vmovl_s8(vceqz_s8(*v64.i8));
      v55 = vmovl_s8(vceqz_s8(*v63.i8));
      v54 = vmovl_s8(vceqz_s8(v67));
      v53 = vmovl_s8(vceqz_s8(*v66.i8));
    }

    v68.i64[0] = 0x8000800080008;
    v68.i64[1] = 0x8000800080008;
    v69 = 0uLL;
    v70 = vandq_s8(vextq_s8(vtstq_s16(v426, v68), 0, 8uLL), v34);
    v71 = vmovl_u16(*&vpaddq_s16(v70, v70));
    v72 = vpaddq_s32(v71, v71).u64[0];
    v73.i64[0] = v72;
    v73.i64[1] = HIDWORD(v72);
    v74 = v73;
    v75 = vaddvq_s64(v73);
    if (v407)
    {
      v76 = v407 >= v37 + v75;
    }

    else
    {
      v76 = 1;
    }

    v77 = v76;
    if (v75 <= 0x80 && (v77 & 1) != 0)
    {
      v78 = vaddq_s64(vdupq_n_s64(v37 & 0x3F), vzip1q_s64(0, v74));
      v79 = (v406 + 8 * (v37 >> 6));
      v69 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v79, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v78)), vshlq_u64(vdupq_lane_s64(v79->i64[0], 0), vnegq_s64(v78)));
      if ((v37 & 0x3F) + v75 >= 0x81)
      {
        v69 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v79[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v78)), vshlq_u64(vdupq_laneq_s64(v79[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v78))), v69);
      }

      v37 += v75;
    }

    else
    {
      v408 = 1;
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
    v431[3] = v88;
    v89 = v426.i8[0] & 3;
    if (v89 == 2)
    {
      if (v407)
      {
        v90 = v37 + 8;
        v91 = v37 + 16;
        if (v407 >= v37 + 8)
        {
          v37 += 8;
        }

        else
        {
          v91 = v37 + 8;
        }

        if (v407 >= v91)
        {
          v37 = v91;
        }

        if (v407 < v90 || v407 < v91)
        {
          v408 = 1;
        }
      }

      else
      {
        v37 += 16;
      }
    }

    v92 = 0uLL;
    v93 = vextq_s8(0, v427, 8uLL);
    v94 = vmovl_u16(*&vpaddq_s16(v93, v93));
    v95 = vpaddq_s32(v94, v94).u64[0];
    v96.i64[0] = v95;
    v96.i64[1] = HIDWORD(v95);
    v97 = v96;
    v98 = vaddvq_s64(v96);
    v99 = v37 + v98;
    if (v407)
    {
      v100 = v407 >= v99;
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
      v104 = v406;
      v105 = (v406 + 8 * (v37 >> 6));
      v92 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v105, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v103)), vshlq_u64(vdupq_lane_s64(v105->i64[0], 0), vnegq_s64(v103)));
      if (v102 + v98 >= 0x81)
      {
        v92 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v105[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v103)), vshlq_u64(vdupq_laneq_s64(v105[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v103))), v92);
      }

      v106 = v408;
      v37 = v99;
    }

    else
    {
      v106 = 1;
      v104 = v406;
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
    v409 = v115;
    v116 = vmovl_u16(*&vpaddq_s16(v427, v427));
    v110.i64[0] = vpaddq_s32(v116, v116).u64[0];
    v108.i64[0] = v110.u32[0];
    v108.i64[1] = v110.u32[1];
    v117 = v108;
    v118 = vaddvq_s64(v108);
    v119 = v37 + v118;
    if (v407)
    {
      v120 = v407 >= v119;
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
    v132 = vnegq_s32(vandq_s8(v427, v111));
    v133 = vshlq_u32(v131, v132);
    v134 = vuzp1q_s16(vzip1q_s32(v131, v133), vzip2q_s32(v131, v133));
    v135 = vaddq_s16(v427, v113);
    v136 = vsubq_s16(v114, v427);
    v137 = vshlq_s16(vshlq_s16(v134, v136), v135);
    v410 = v137;
    v138 = v119 + v118;
    if (v407)
    {
      v139 = v407 >= v138;
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
    v411 = v147;
    v148 = v138 + v118;
    if (v407)
    {
      v149 = v407 >= v148;
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
    v412 = v159;
    v160 = vmovl_u16(*&vpaddq_s16(v428, v428));
    v161 = vpaddq_s32(v160, v160).u64[0];
    v162.i64[0] = v161;
    v162.i64[1] = HIDWORD(v161);
    v163 = v162;
    v164 = vaddvq_s64(v162);
    v165 = v164;
    v166 = v148 + v164;
    if (v407)
    {
      v167 = v407 >= v166;
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
    v178 = vnegq_s32(vandq_s8(v428, v177));
    v179 = vshlq_u32(v176, v178);
    v180 = vuzp1q_s16(vzip1q_s32(v176, v179), vzip2q_s32(v176, v179));
    v179.i64[0] = 0xF000F000F000FLL;
    v179.i64[1] = 0xF000F000F000FLL;
    v181 = vaddq_s16(v428, v179);
    v179.i64[0] = 0x10001000100010;
    v179.i64[1] = 0x10001000100010;
    v182 = vsubq_s16(v179, v428);
    v183 = vshlq_s16(vshlq_s16(v180, v182), v181);
    v413 = v183;
    v184 = v166 + v165;
    if (v407)
    {
      v185 = v407 >= v184;
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
    v414 = v195;
    v196 = v184 + v165;
    if (v407)
    {
      v197 = v407 >= v196;
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
    v415 = v205;
    v206 = v196 + v165;
    if (v407)
    {
      v207 = v407 >= v206;
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
    v416 = v217;
    v218 = vmovl_u16(*&vpaddq_s16(v429, v429));
    v219 = vpaddq_s32(v218, v218).u64[0];
    v220.i64[0] = v219;
    v220.i64[1] = HIDWORD(v219);
    v221 = v220;
    v222 = vaddvq_s64(v220);
    v223 = v222;
    v224 = v206 + v222;
    if (v407)
    {
      v225 = v407 >= v224;
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
    v236 = vnegq_s32(vandq_s8(v429, v235));
    v237 = vshlq_u32(v234, v236);
    v238 = vuzp1q_s16(vzip1q_s32(v234, v237), vzip2q_s32(v234, v237));
    v237.i64[0] = 0xF000F000F000FLL;
    v237.i64[1] = 0xF000F000F000FLL;
    v239 = vaddq_s16(v429, v237);
    v237.i64[0] = 0x10001000100010;
    v237.i64[1] = 0x10001000100010;
    v240 = vsubq_s16(v237, v429);
    v241 = vshlq_s16(vshlq_s16(v238, v240), v239);
    v417 = v241;
    v242 = v224 + v223;
    if (v407)
    {
      v243 = v407 >= v242;
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
    v418 = v253;
    v254 = v242 + v223;
    if (v407)
    {
      v255 = v407 >= v254;
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
    v419 = v263;
    v264 = v254 + v223;
    if (v407)
    {
      v265 = v407 >= v264;
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
    v420 = v275;
    v276 = vmovl_u16(*&vpaddq_s16(v430, v430));
    v277 = vpaddq_s32(v276, v276).u64[0];
    v278.i64[0] = v277;
    v278.i64[1] = HIDWORD(v277);
    v279 = v278;
    v280 = vaddvq_s64(v278);
    v281 = v280;
    v282 = v264 + v280;
    if (v407)
    {
      v283 = v407 >= v282;
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
    v293 = vnegq_s32(vandq_s8(v430, v291));
    v294 = vshlq_u32(v292, v293);
    v295 = vuzp1q_s16(vzip1q_s32(v292, v294), vzip2q_s32(v292, v294));
    v292.i64[0] = 0xF000F000F000FLL;
    v292.i64[1] = 0xF000F000F000FLL;
    v296 = vaddq_s16(v430, v292);
    v294.i64[0] = 0x10001000100010;
    v294.i64[1] = 0x10001000100010;
    v297 = vsubq_s16(v294, v430);
    v298 = vshlq_s16(vshlq_s16(v295, v297), v296);
    v421 = v298;
    v299 = v282 + v281;
    if (v407)
    {
      v300 = v407 >= v299;
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
    v422 = v310;
    v311 = v299 + v281;
    if (v407)
    {
      v312 = v407 >= v311;
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
    v423 = v320;
    v321 = v311 + v281;
    if (v407)
    {
      v322 = v407 >= v321;
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

    if ((v106 & 1) != 0 || v407 + 8 * result - v321 - 1024 >= 9 || v89 == 2)
    {
LABEL_226:
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(v48, v49);
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
      v409 = v331;
      v350 = vsubq_s16(v310, v348);
      v351 = vsubq_s16(v320, v348);
      v421 = v349;
      v422 = v350;
      v352 = vsubq_s16(v330, v348);
      v423 = v351;
      v424 = v352;
      v353.i64[0] = 0x1000100010001;
      v353.i64[1] = 0x1000100010001;
      if (vaddvq_s16(vceqq_s16(v33, v353)))
      {
        v354 = vnegq_s16(vandq_s8(v426, v353));
        v355.i64[0] = v337.i64[0];
        v356.i64[1] = v334.i64[1];
        v355.i64[1] = v334.i64[0];
        v356.i64[0] = v337.i64[1];
        v357 = vbslq_s8(v354, v356, v334);
        v358 = vbslq_s8(v354, v355, v337);
        v356.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
        v356.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
        v359 = vandq_s8(vqtbl4q_s8(*(&v335 - 1), v356), v354);
        v443.val[0] = vaddq_s16(v357, vandq_s8(vqtbl4q_s8(*(&v335 - 1), xmmword_29D2F10B0), v354));
        v443.val[1] = vaddq_s16(v335, vandq_s8(vqtbl4q_s8(*(&v335 - 1), xmmword_29D2F10C0), v354));
        v443.val[2] = vaddq_s16(v336, v359);
        v443.val[3] = vaddq_s16(v358, v359);
        v360 = vandq_s8(vqtbl4q_s8(v443, v356), v354);
        v334 = vaddq_s16(v443.val[0], vandq_s8(vqtbl4q_s8(v443, xmmword_29D2F10D0), v354));
        v335 = vaddq_s16(v443.val[1], vandq_s8(vqtbl4q_s8(v443, xmmword_29D2F10E0), v354));
        v409 = v334;
        v410 = v335;
        v336 = vaddq_s16(v443.val[2], v360);
        v337 = vaddq_s16(v443.val[3], v360);
        v442.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v339.i8, xmmword_29D2F10B0), v354), v339);
        v442.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v339.i8, xmmword_29D2F10F0), v354), v340);
        v442.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v339.i8, v356), v354), v341);
        v442.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v339.i8, xmmword_29D2F1100), v354), v342);
        v361 = vandq_s8(vqtbl4q_s8(v442, xmmword_29D2F10D0), v354);
        v362 = vandq_s8(vqtbl4q_s8(v442, v356), v354);
        v339 = vaddq_s16(v361, v442.val[0]);
        v340 = vaddq_s16(v442.val[1], v361);
        v341 = vaddq_s16(v442.val[2], v362);
        v342 = vaddq_s16(v442.val[3], v362);
        v442.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v344.i8, xmmword_29D2F0EB0), v354), v344);
        v442.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v344.i8, xmmword_29D2F0FB0), v354), v345);
        v442.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v344.i8, xmmword_29D2F10B0), v354), v346);
        v442.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v344.i8, xmmword_29D2F10C0), v354), v347);
        v363 = vandq_s8(vqtbl4q_s8(v442, v356), v354);
        v344 = vaddq_s16(v442.val[0], v363);
        v345 = vaddq_s16(v442.val[1], v363);
        v346 = vaddq_s16(v442.val[2], vandq_s8(vqtbl4q_s8(v442, xmmword_29D2F0FE0), v354));
        v347 = vaddq_s16(v442.val[3], vandq_s8(vqtbl4q_s8(v442, xmmword_29D2F1110), v354));
        v443.val[0] = v421;
        v443.val[1] = v422;
        v32 = v426;
        v443.val[2] = v423;
        v443.val[3] = v424;
        v442.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(v443, xmmword_29D2F0EB0), v354), v421);
        v442.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(v443, xmmword_29D2F1120), v354), v422);
        v411 = v336;
        v412 = v337;
        v442.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(v443, xmmword_29D2F10B0), v354), v423);
        v442.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(v443, xmmword_29D2F10C0), v354), v424);
        v364 = vandq_s8(vqtbl4q_s8(v442, v356), v354);
        v349 = vaddq_s16(v442.val[0], v364);
        v350 = vaddq_s16(v442.val[1], v364);
        v351 = vaddq_s16(v442.val[2], vandq_s8(vqtbl4q_s8(v442, xmmword_29D2F0FE0), v354));
        v352 = vaddq_s16(v442.val[3], vandq_s8(vqtbl4q_s8(v442, xmmword_29D2F1130), v354));
      }

      v365 = vaddq_s16(v425, v334);
      v366 = vaddq_s16(v335, v425);
      v367 = vaddq_s16(v336, v425);
      v368 = vaddq_s16(v337, v425);
      v369 = vaddq_s16(v339, v425);
      v370 = vaddq_s16(v340, v425);
      v371 = vaddq_s16(v341, v425);
      v372 = vaddq_s16(v342, v425);
      v373 = vaddq_s16(v344, v425);
      v374 = vaddq_s16(v345, v425);
      v375 = vaddq_s16(v346, v425);
      v376 = vaddq_s16(v347, v425);
      v377 = vaddq_s16(v349, v425);
      v378 = vaddq_s16(v350, v425);
      v379 = vaddq_s16(v351, v425);
      v380 = vaddq_s16(v352, v425);
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
      __asm { FMOV            V7.4S, #1.875 }

      v376.i64[0] = 0xC0000000C0000000;
      v376.i64[1] = 0xC0000000C0000000;
      v401 = v48 + 2;
      *v48 = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v383, 0x12uLL), v384, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v383, 0xCuLL), v384, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v383, 6uLL), v384, 6uLL), vuzp1q_s32(v383, v384))));
      v48[1] = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v385, 0x12uLL), v386, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v385, 0xCuLL), v386, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v385, 6uLL), v386, 6uLL), vuzp1q_s32(v385, v386))));
      v402 = (v48 + v49);
      v403 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v379, xmmword_29D2F1270), v382), v379);
      v404 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v380, xmmword_29D2F1270), v382), v380);
      *v401 = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v391, 0x12uLL), v392, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v391, 0xCuLL), v392, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v391, 6uLL), v392, 6uLL), vuzp1q_s32(v391, v392))));
      v401[1] = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v393, 0x12uLL), v394, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v393, 0xCuLL), v394, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v393, 6uLL), v394, 6uLL), vuzp1q_s32(v393, v394))));
      *v402 = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v387, 0x12uLL), v388, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v387, 0xCuLL), v388, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v387, 6uLL), v388, 6uLL), vuzp1q_s32(v387, v388))));
      v402[1] = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v389, 0x12uLL), v390, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v389, 0xCuLL), v390, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v389, 6uLL), v390, 6uLL), vuzp1q_s32(v389, v390))));
      v402 += 2;
      *v402 = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v395, 0x12uLL), v396, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v395, 0xCuLL), v396, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v395, 6uLL), v396, 6uLL), vuzp1q_s32(v395, v396))));
      v402[1] = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v403, 0x12uLL), v404, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v403, 0xCuLL), v404, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v403, 6uLL), v404, 6uLL), vuzp1q_s32(v403, v404))));
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(float32x4_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 128, a2, *a3);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 16, 128, v5, a3[1]);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 4, 128, v6, a3[2]);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 20, 128, v7, a3[3]);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 32, 128, v8, a3[4]);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 48, 128, v9, a3[5]);
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 36, 128, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 52, 128, v10 + v11, v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(unint64_t a1, char *a2, uint32x4_t *a3, uint64_t a4, unsigned int a5, int a6)
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
  v15 = vbslq_s8(xmmword_29D2F1290, v14, 0);
  v16 = vbslq_s8(xmmword_29D2F1290, v13, 0);
  v13.i64[0] = v6.u32[0];
  v13.i64[1] = v6.u32[1];
  v17 = v13;
  v13.i64[0] = v6.u32[2];
  v13.i64[1] = v6.u32[3];
  v18 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*a3->i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*a3->i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*a3->i8, 6uLL), v15)));
  v19 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(*a3, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(*a3, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(*a3, 6uLL), v16)));
  v510 = *a3;
  v511 = v6;
  v20 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v6.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v6.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v6.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v17, 0))));
  v21 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v6, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v6, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v6, 6uLL), vbslq_s8(xmmword_29D2F1290, v13, 0))));
  v13.i64[0] = v9.u32[0];
  v13.i64[1] = v9.u32[1];
  v22 = v13;
  v13.i64[0] = v9.u32[2];
  v13.i64[1] = v9.u32[3];
  v23 = vbslq_s8(xmmword_29D2F1290, v22, 0);
  v24 = vbslq_s8(xmmword_29D2F1290, v13, 0);
  v13.i64[0] = v10.u32[0];
  v13.i64[1] = v10.u32[1];
  v25 = v13;
  v13.i64[0] = v10.u32[2];
  v13.i64[1] = v10.u32[3];
  v26 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v9.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v9.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v9.i8, 6uLL), v23)));
  v27 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v9, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v9, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v9, 6uLL), v24)));
  v507 = v9;
  v508 = v10;
  v28 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v10.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v10.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v10.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v25, 0))));
  v29 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v10, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v10, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v10, 6uLL), vbslq_s8(xmmword_29D2F1290, v13, 0))));
  v13.i64[0] = v7.u32[0];
  v13.i64[1] = v7.u32[1];
  v30 = v13;
  v13.i64[0] = v7.u32[2];
  v13.i64[1] = v7.u32[3];
  v31 = vbslq_s8(xmmword_29D2F1290, v30, 0);
  v32 = vbslq_s8(xmmword_29D2F1290, v13, 0);
  v13.i64[0] = v8.u32[0];
  v13.i64[1] = v8.u32[1];
  v33 = v13;
  v13.i64[0] = v8.u32[2];
  v13.i64[1] = v8.u32[3];
  v34 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v7.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v7.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v7.i8, 6uLL), v31)));
  v35 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v7, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v7, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v7, 6uLL), v32)));
  v36 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v8.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v8.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v8.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v33, 0))));
  v37 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v8, 6uLL), vbslq_s8(xmmword_29D2F1290, v13, 0))));
  v13.i64[0] = v11.u32[0];
  v13.i64[1] = v11.u32[1];
  v38 = v13;
  v13.i64[0] = v11.u32[2];
  v13.i64[1] = v11.u32[3];
  v39 = vbslq_s8(xmmword_29D2F1290, v38, 0);
  v40 = vbslq_s8(xmmword_29D2F1290, v13, 0);
  v13.i64[0] = v12.u32[0];
  v13.i64[1] = v12.u32[1];
  v41 = v13;
  v13.i64[0] = v12.u32[2];
  v13.i64[1] = v12.u32[3];
  v42 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v11.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v11.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v11.i8, 6uLL), v39)));
  v43 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v11, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v11, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v11, 6uLL), v40)));
  v512 = v11;
  v513 = v12;
  v44 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v12.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v12.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v12.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v41, 0))));
  v45 = vdupq_lane_s64(v18.i64[0], 0);
  v514 = vshlq_s16(vshlq_s16(vsubq_s16(v18, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v516 = vshlq_s16(vshlq_s16(vsubq_s16(v19, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v46 = vshlq_s16(vshlq_s16(vsubq_s16(v20, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v47 = vminq_s16(vminq_s16(v514, v516), v46);
  v518 = v46;
  v520 = vshlq_s16(vshlq_s16(vsubq_s16(v21, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v48 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v514, v516), v46), v520), xmmword_29D2F1150);
  v49 = vqtbl1q_s8(vminq_s16(v47, v520), xmmword_29D2F1150);
  v50 = vpmaxq_s16(v48, v48);
  v51 = vpminq_s16(v49, v49);
  v52 = vzip1q_s16(v50, v51);
  v53.i64[0] = 0x10001000100010;
  v53.i64[1] = 0x10001000100010;
  v54 = vbicq_s8(vsubq_s16(v53, vclsq_s16(v52)), vceqzq_s16(v52));
  v522 = vshlq_s16(vshlq_s16(vsubq_s16(v26, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v523 = vshlq_s16(vshlq_s16(vsubq_s16(v27, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v503 = v26;
  v505 = v27;
  v506 = v28;
  v55 = v29;
  v56 = vshlq_s16(vshlq_s16(vsubq_s16(v28, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v57 = vminq_s16(vminq_s16(v522, v523), v56);
  v524 = v56;
  v525 = vshlq_s16(vshlq_s16(vsubq_s16(v29, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v9.i64[0] = 0x8000800080008000;
  v9.i64[1] = 0x8000800080008000;
  v58 = vmaxq_s16(v50, v9);
  v9.i64[0] = 0x8000800080008000;
  v9.i64[1] = 0x8000800080008000;
  v59 = vminq_s16(v51, v9);
  v60 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v522, v523), v56), v525), xmmword_29D2F1150);
  v61 = vqtbl1q_s8(vminq_s16(v57, v525), xmmword_29D2F1150);
  v62 = vpmaxq_s16(v60, v60);
  v63 = vpminq_s16(v61, v61);
  v64 = vmaxq_s16(v58, v62);
  v65 = vminq_s16(v59, v63);
  v66 = vzip1q_s16(v62, v63);
  v27.i64[0] = 0x10001000100010;
  v27.i64[1] = 0x10001000100010;
  v67 = vbicq_s8(vsubq_s16(v27, vclsq_s16(v66)), vceqzq_s16(v66));
  v526 = vshlq_s16(vshlq_s16(vsubq_s16(v34, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v527 = vshlq_s16(vshlq_s16(vsubq_s16(v35, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v68 = vshlq_s16(vshlq_s16(vsubq_s16(v36, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v69 = vminq_s16(vminq_s16(v526, v527), v68);
  v528 = v68;
  v529 = vshlq_s16(vshlq_s16(vsubq_s16(v37, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v70 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v526, v527), v68), v529), xmmword_29D2F1150);
  v71 = vqtbl1q_s8(vminq_s16(v69, v529), xmmword_29D2F1150);
  v72 = vpmaxq_s16(v70, v70);
  v73 = vpminq_s16(v71, v71);
  v74 = vmaxq_s16(v64, v72);
  v75 = vminq_s16(v65, v73);
  v76 = vzip1q_s16(v72, v73);
  v77 = vbicq_s8(vsubq_s16(v27, vclsq_s16(v76)), vceqzq_s16(v76));
  v530 = vshlq_s16(vshlq_s16(vsubq_s16(v42, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v531 = vshlq_s16(vshlq_s16(vsubq_s16(v43, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v534 = v45;
  v501 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v12, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v12, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v12, 6uLL), vbslq_s8(xmmword_29D2F1290, v13, 0))));
  v532 = vshlq_s16(vshlq_s16(vsubq_s16(v44, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v533 = vshlq_s16(vshlq_s16(vsubq_s16(v501, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v78 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v530, v531), v532), v533), xmmword_29D2F1150);
  v79 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v530, v531), v532), v533), xmmword_29D2F1150);
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
  v541 = v83;
  v542 = v82;
  v93 = vsubq_s16(vshlq_s16(v92, vsubq_s16(v29, v91)), v83);
  v94 = vsubq_s16(v27, v91);
  v95 = vcgtq_s16(v90, v94);
  v96 = vminq_s16(v94, v90);
  v543 = vandq_s8(v93, v95);
  v90.i64[0] = 0x8000800080008;
  v90.i64[1] = 0x8000800080008;
  v97 = vorrq_s8(vandq_s8(v95, v90), 0);
  v90.i64[0] = 0x3000300030003;
  v90.i64[1] = 0x3000300030003;
  v98 = vorrq_s8(vandq_s8(vceqzq_s16(v96), v90), v97);
  v99 = vmaxq_s16(vminq_s16(vsubq_s16(v96, v87), v90), 0);
  v100 = vmaxq_s16(vminq_s16(vsubq_s16(v96, v88), v90), 0);
  v537 = vsubq_s16(v96, v99);
  v538 = vsubq_s16(v96, v100);
  v101 = vmaxq_s16(vminq_s16(vsubq_s16(v96, v89), v90), 0);
  v539 = vsubq_s16(v96, v101);
  v540 = v96;
  v102 = vaddq_s16(v101, v100);
  v103 = vmaxq_s16(vminq_s16(vsubq_s16(v96, v86), v90), 0);
  v90.i64[0] = 0x4000400040004;
  v90.i64[1] = 0x4000400040004;
  v104 = vorrq_s8(vbicq_s8(v90, vceqq_s16(v102, vnegq_s16(vaddq_s16(v103, v99)))), v98);
  v535 = v104;
  v536 = vsubq_s16(v96, v103);
  if (vmaxvq_s16(v96))
  {
    v495 = v18;
    v496 = v19;
    v497 = v20;
    v498 = v21;
    v470 = v37;
    v471 = v55;
    v105.i64[0] = 0x4000400040004;
    v105.i64[1] = 0x4000400040004;
    v499 = v7;
    v500 = v8;
    v106 = v98;
    v107 = vshlq_s16(vshlq_s16(vsubq_s16(v522, vqtbl1q_s8(v522, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v108 = vshlq_s16(vshlq_s16(vsubq_s16(v523, vqtbl1q_s8(v523, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v109 = vshlq_s16(vshlq_s16(vsubq_s16(v524, vqtbl1q_s8(v524, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v110 = vshlq_s16(vshlq_s16(vsubq_s16(v525, vqtbl1q_s8(v525, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v475 = vshlq_s16(vshlq_s16(vsubq_s16(v514, vqtbl1q_s8(v514, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v476 = vshlq_s16(vshlq_s16(vsubq_s16(v516, vqtbl1q_s8(v516, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v477 = vshlq_s16(vshlq_s16(vsubq_s16(v520, vqtbl1q_s8(v520, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v478 = vshlq_s16(vshlq_s16(vsubq_s16(v518, vqtbl1q_s8(v518, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v111 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v475, v476), v478), v477), xmmword_29D2F1150);
    v112 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v475, v476), v478), v477), xmmword_29D2F1150);
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
    v481 = v108;
    v482 = v107;
    v123 = vminq_s16(v107, v108);
    v124 = vshlq_s16(vshlq_s16(vsubq_s16(v530, vqtbl1q_s8(v530, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v125 = v104;
    v483 = v110;
    v484 = v109;
    v126 = vminq_s16(vminq_s16(v123, v109), v110);
    v127 = vshlq_s16(vshlq_s16(vsubq_s16(v532, vqtbl1q_s8(v532, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v128 = vshlq_s16(vshlq_s16(vsubq_s16(v533, vqtbl1q_s8(v533, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v129 = vqtbl1q_s8(v122, xmmword_29D2F1150);
    v130 = vqtbl1q_s8(v126, xmmword_29D2F1150);
    v131 = vpmaxq_s16(v129, v129);
    v132 = vpminq_s16(v130, v130);
    v133 = vmaxq_s16(v116, v131);
    v134 = vminq_s16(v117, v132);
    v135 = vzip1q_s16(v131, v132);
    v136 = vbicq_s8(vsubq_s16(v119, vclsq_s16(v135)), vceqzq_s16(v135));
    v137 = vpmaxq_s16(v136, v136);
    v485 = vshlq_s16(vshlq_s16(vsubq_s16(v527, vqtbl1q_s8(v527, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v486 = vshlq_s16(vshlq_s16(vsubq_s16(v526, vqtbl1q_s8(v526, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v490 = vshlq_s16(vshlq_s16(vsubq_s16(v528, vqtbl1q_s8(v528, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v492 = vshlq_s16(vshlq_s16(vsubq_s16(v531, vqtbl1q_s8(v531, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v487 = vshlq_s16(vshlq_s16(vsubq_s16(v529, vqtbl1q_s8(v529, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v138 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v486, v485), v490), v487), xmmword_29D2F1150);
    v139 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v486, v485), v490), v487), xmmword_29D2F1150);
    v140 = vpmaxq_s16(v138, v138);
    v141 = vpminq_s16(v139, v139);
    v142 = vmaxq_s16(v133, v140);
    v143 = vminq_s16(v134, v141);
    v144 = vzip1q_s16(v140, v141);
    v145 = vbicq_s8(vsubq_s16(v119, vclsq_s16(v144)), vceqzq_s16(v144));
    v146 = vpmaxq_s16(v145, v145);
    v147 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v124, v492), v127), v128), xmmword_29D2F1150);
    v148 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v124, v492), v127), v128), xmmword_29D2F1150);
    v149 = vpmaxq_s16(v147, v147);
    v150 = vpminq_s16(v148, v148);
    v151 = vmaxq_s16(v142, v149);
    v152 = vminq_s16(v143, v150);
    v153 = vzip1q_s16(v149, v150);
    v154 = vbicq_s8(vsubq_s16(v119, vclsq_s16(v153)), vceqzq_s16(v153));
    v155 = vpmaxq_s16(v154, v154);
    v156 = vmaxq_s16(vmaxq_s16(v121, v137), vmaxq_s16(v146, v155));
    v479 = v152;
    v480 = v151;
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
    v472 = vsubq_s16(v160, v163);
    v473 = vsubq_s16(v160, v164);
    v161.i64[0] = 0x7000700070007;
    v161.i64[1] = 0x7000700070007;
    v474 = v168;
    v170 = vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v160, vceqzq_s16((*&v167 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v165, v165)), v168, v161), vshlq_n_s16(vaddq_s16(vaddq_s16(v472, v169), v473), 3uLL));
    v151.i64[0] = 0x8000800080008;
    v151.i64[1] = 0x8000800080008;
    v171 = vandq_s8(vaddq_s16(v125, v125), v151);
    v172 = vandq_s8(v106, v151);
    v168.i64[0] = 0x2000200020002;
    v168.i64[1] = 0x2000200020002;
    v173 = vandq_s8(vceqq_s16(vandq_s8(v106, v121), v168), v119);
    v174 = vceqzq_s16(v172);
    v176 = v539;
    v175 = v540;
    v177 = vaddq_s16(vaddq_s16(vbicq_s8(v540, v174), v173), v171);
    v179 = v536;
    v178 = v537;
    v180 = vmlaq_s16(v177, v536, v161);
    v181 = v538;
    v182 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v180, vshlq_n_s16(vaddq_s16(vaddq_s16(v538, v537), v539), 3uLL)), v170).i64[0], 0);
    v183 = vaddvq_s16(v182);
    v185 = a5 < 2 || a6 == 0;
    if (v183)
    {
      v186.i64[0] = 0x3000300030003;
      v186.i64[1] = 0x3000300030003;
      v187 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v160), v186), v167), v165);
      v188.i64[0] = 0xF000F000F000FLL;
      v188.i64[1] = 0xF000F000F000FLL;
      v514 = vbslq_s8(v182, v475, v514);
      v516 = vbslq_s8(v182, v476, v516);
      v186.i64[0] = -1;
      v186.i64[1] = -1;
      v518 = vbslq_s8(v182, v478, v518);
      v520 = vbslq_s8(v182, v477, v520);
      v522 = vbslq_s8(v182, v482, v522);
      v523 = vbslq_s8(v182, v481, v523);
      v524 = vbslq_s8(v182, v484, v524);
      v525 = vbslq_s8(v182, v483, v525);
      v526 = vbslq_s8(v182, v486, v526);
      v527 = vbslq_s8(v182, v485, v527);
      v528 = vbslq_s8(v182, v490, v528);
      v529 = vbslq_s8(v182, v487, v529);
      v530 = vbslq_s8(v182, v124, v530);
      v531 = vbslq_s8(v182, v492, v531);
      v532 = vbslq_s8(v182, v127, v532);
      v533 = vbslq_s8(v182, v128, v533);
      v179 = vbslq_s8(v182, v474, v536);
      v178 = vbslq_s8(v182, v169, v537);
      v536 = v179;
      v537 = v178;
      v181 = vbslq_s8(v182, v472, v538);
      v176 = vbslq_s8(v182, v473, v539);
      v538 = v181;
      v539 = v176;
      v541 = vbslq_s8(v182, v479, v541);
      v542 = vbslq_s8(v182, v480, v542);
      v543 = vbslq_s8(v182, vandq_s8(vsubq_s16(vshlq_s16(v186, vsubq_s16(v188, v157)), v479), v166), v543);
      v175 = vbslq_s8(v182, v160, v540);
      v540 = v175;
      v125 = vbslq_s8(v182, v187, v535);
      v534 = vbslq_s8(v182, vsubq_s16(v534, vqtbl1q_s8(v534, xmmword_29D2F1270)), v534);
      v535 = v125;
    }

    v189 = v495;
    v190 = v496;
    v191 = v497;
    v192 = v498;
    if (!v185)
    {
      v193 = vqtbl4q_s8(*v189.i8, xmmword_29D2F1160);
      v194 = vsubq_s16(v495, vqtbl4q_s8(*v189.i8, xmmword_29D2F10B0));
      v195 = vsubq_s16(v497, v193);
      v196 = vsubq_s16(v498, v193);
      v544.val[0] = v503;
      v544.val[1] = v505;
      v544.val[2] = v506;
      v544.val[3].i64[0] = v471.i64[0];
      v544.val[3].i64[1] = v498.i64[1];
      v197 = vsubq_s16(v503, vqtbl4q_s8(v544, xmmword_29D2F10B0));
      v198 = vsubq_s16(v505, vqtbl4q_s8(v544, xmmword_29D2F10F0));
      v199 = vsubq_s16(v506, vqtbl4q_s8(v544, xmmword_29D2F1160));
      v200 = vsubq_s16(v471, vqtbl4q_s8(v544, xmmword_29D2F1100));
      v201 = v470.i64[0];
      v202 = v498.i64[1];
      v544.val[1] = vqtbl4q_s8(*v34.i8, xmmword_29D2F10C0);
      v203 = vsubq_s16(v34, vqtbl4q_s8(*v34.i8, xmmword_29D2F1170));
      v204 = vsubq_s16(v35, vqtbl4q_s8(*v34.i8, xmmword_29D2F1180));
      v205 = vsubq_s16(v36, vqtbl4q_s8(*v34.i8, xmmword_29D2F10B0));
      v206 = v501.i64[0];
      v207 = v498.i64[1];
      v208 = vsubq_s16(v42, vqtbl4q_s8(*v42.i8, xmmword_29D2F1170));
      v209 = vsubq_s16(v43, vqtbl4q_s8(*v42.i8, xmmword_29D2F1120));
      v210 = vsubq_s16(v44, vqtbl4q_s8(*v42.i8, xmmword_29D2F10B0));
      v211.i64[0] = v196.i64[0];
      v211.i64[1] = v194.i64[0];
      v212 = vsubq_s16(v501, vqtbl4q_s8(*v42.i8, xmmword_29D2F10C0));
      v194.i64[0] = v196.i64[1];
      v544.val[2] = vshlq_s16(v204, xmmword_29D2F12D0);
      v213 = vshlq_s16(v205, xmmword_29D2F12D0);
      v214 = vshlq_s16(vsubq_s16(v470, v544.val[1]), xmmword_29D2F12D0);
      v215 = vshlq_s16(v208, xmmword_29D2F12D0);
      v216 = vshlq_s16(v209, xmmword_29D2F12D0);
      v217 = vshlq_s16(vshlq_s16(v194, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v218 = vshlq_s16(vshlq_s16(vsubq_s16(v496, vqtbl4q_s8(*v189.i8, xmmword_29D2F10C0)), xmmword_29D2F12D0), xmmword_29D2F12E0);
      v219 = vshlq_s16(vshlq_s16(v195, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v220 = vshlq_s16(vshlq_s16(v211, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v221 = vshlq_s16(vshlq_s16(v197, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v222 = vshlq_s16(vshlq_s16(v198, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v223 = vshlq_s16(vshlq_s16(v199, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v224 = vshlq_s16(vshlq_s16(v200, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v225 = vshlq_s16(vshlq_s16(v203, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v226 = vshlq_s16(v544.val[2], xmmword_29D2F12E0);
      v227 = vshlq_s16(v214, xmmword_29D2F12E0);
      v228 = vshlq_s16(vshlq_s16(v210, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v544.val[0] = vshlq_s16(vshlq_s16(v212, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v544.val[3] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v217, v218), v219), v220), xmmword_29D2F1150);
      v229 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v217, v218), v219), v220), xmmword_29D2F1150);
      v544.val[3] = vpmaxq_s16(v544.val[3], v544.val[3]);
      v230 = vpminq_s16(v229, v229);
      v194.i64[0] = 0x8000800080008000;
      v194.i64[1] = 0x8000800080008000;
      v231 = vmaxq_s16(v544.val[3], v194);
      v194.i64[0] = 0x8000800080008000;
      v194.i64[1] = 0x8000800080008000;
      v232 = vminq_s16(v230, v194);
      v544.val[3] = vzip1q_s16(v544.val[3], v230);
      v230.i64[0] = 0x10001000100010;
      v230.i64[1] = 0x10001000100010;
      v544.val[3] = vbicq_s8(vsubq_s16(v230, vclsq_s16(v544.val[3])), vceqzq_s16(v544.val[3]));
      v233 = vpmaxq_s16(v544.val[3], v544.val[3]);
      v544.val[3] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v221, v222), v223), v224), xmmword_29D2F1150);
      v234 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v221, v222), v223), v224), xmmword_29D2F1150);
      v544.val[3] = vpmaxq_s16(v544.val[3], v544.val[3]);
      v235 = vpminq_s16(v234, v234);
      v236 = vmaxq_s16(v231, v544.val[3]);
      v237 = vminq_s16(v232, v235);
      v544.val[3] = vzip1q_s16(v544.val[3], v235);
      v544.val[3] = vbicq_s8(vsubq_s16(v230, vclsq_s16(v544.val[3])), vceqzq_s16(v544.val[3]));
      v238 = vpmaxq_s16(v544.val[3], v544.val[3]);
      v493 = vshlq_s16(v213, xmmword_29D2F12E0);
      v494 = vshlq_s16(v216, xmmword_29D2F12E0);
      v544.val[3] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v225, v226), v493), v227), xmmword_29D2F1150);
      v239 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v225, v226), v493), v227), xmmword_29D2F1150);
      v544.val[3] = vpmaxq_s16(v544.val[3], v544.val[3]);
      v240 = vpminq_s16(v239, v239);
      v241 = vmaxq_s16(v236, v544.val[3]);
      v242 = vminq_s16(v237, v240);
      v544.val[3] = vzip1q_s16(v544.val[3], v240);
      v544.val[3] = vbicq_s8(vsubq_s16(v230, vclsq_s16(v544.val[3])), vceqzq_s16(v544.val[3]));
      v243 = vpmaxq_s16(v544.val[3], v544.val[3]);
      v502 = vshlq_s16(v215, xmmword_29D2F12E0);
      v504 = v544.val[0];
      v544.val[3] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v502, v494), v228), v544.val[0]), xmmword_29D2F1150);
      v244 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v502, v494), v228), v544.val[0]), xmmword_29D2F1150);
      v544.val[3] = vpmaxq_s16(v544.val[3], v544.val[3]);
      v245 = vpminq_s16(v244, v244);
      v544.val[0] = vmaxq_s16(v241, v544.val[3]);
      v246 = vminq_s16(v242, v245);
      v544.val[3] = vzip1q_s16(v544.val[3], v245);
      v544.val[3] = vbicq_s8(vsubq_s16(v230, vclsq_s16(v544.val[3])), vceqzq_s16(v544.val[3]));
      v247 = vpmaxq_s16(v544.val[3], v544.val[3]);
      v544.val[2] = vmaxq_s16(vmaxq_s16(v233, v238), vmaxq_s16(v243, v247));
      v509 = v544.val[0];
      v248 = vclzq_s16(vsubq_s16(v544.val[0], v246));
      v249 = vsubq_s16(v230, v248);
      v250 = vcgtq_s16(v544.val[2], v249);
      v251 = vminq_s16(v249, v544.val[2]);
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
      v488 = v258;
      v489 = v257;
      v491 = vsubq_s16(v251, v255);
      v260 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v251, v250), vaddq_s16(v259, v259)), v256, v254), vshlq_n_s16(vaddq_s16(vaddq_s16(v258, v257), v491), 3uLL));
      v125 = v535;
      v179 = v536;
      v261.i64[0] = 0x2000200020002;
      v261.i64[1] = 0x2000200020002;
      v262 = vandq_s8(vceqq_s16(vandq_s8(v535, v249), v261), v230);
      v230.i64[0] = 0x8000800080008;
      v230.i64[1] = 0x8000800080008;
      v263 = vandq_s8(vaddq_s16(v125, v125), v230);
      v264 = vceqzq_s16(vandq_s8(v535, v230));
      v176 = v539;
      v175 = v540;
      v265 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v540, v264), v263), v262), v536, v254);
      v178 = v537;
      v181 = v538;
      v266 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v265, vshlq_n_s16(vaddq_s16(vaddq_s16(v538, v537), v539), 3uLL)), v260).i64[0], 0);
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
        v179 = vbslq_s8(v266, v256, v536);
        v178 = vbslq_s8(v266, v489, v537);
        v181 = vbslq_s8(v266, v488, v538);
        v176 = vbslq_s8(v266, v491, v539);
        v175 = vbslq_s8(v266, v251, v540);
        v125 = vbslq_s8(v266, v269, v535);
        v533 = vbslq_s8(v266, v504, v533);
        v534 = vbslq_s8(v266, vextq_s8(v498, v498, 8uLL), v534);
        v514 = vbslq_s8(v266, v217, v514);
        v516 = vbslq_s8(v266, v218, v516);
        v518 = vbslq_s8(v266, v219, v518);
        v520 = vbslq_s8(v266, v220, v520);
        v522 = vbslq_s8(v266, v221, v522);
        v523 = vbslq_s8(v266, v222, v523);
        v524 = vbslq_s8(v266, v223, v524);
        v525 = vbslq_s8(v266, v224, v525);
        v526 = vbslq_s8(v266, v225, v526);
        v527 = vbslq_s8(v266, v226, v527);
        v528 = vbslq_s8(v266, v493, v528);
        v529 = vbslq_s8(v266, v227, v529);
        v530 = vbslq_s8(v266, v502, v530);
        v531 = vbslq_s8(v266, v494, v531);
        v532 = vbslq_s8(v266, v228, v532);
        v541 = vbslq_s8(v266, v246, v541);
        v542 = vbslq_s8(v266, v509, v542);
        v543 = vbslq_s8(v266, v270, v543);
        v536 = v179;
        v537 = v178;
        v538 = v181;
        v539 = v176;
        v540 = v175;
        v535 = v125;
      }
    }

    v271 = vandq_s8(v543, vceqq_s16(v175, v179));
    v515 = vaddq_s16(v271, v514);
    v517 = vaddq_s16(v516, v271);
    v519 = vaddq_s16(v518, v271);
    v521 = vaddq_s16(v520, v271);
    v272 = vandq_s8(v543, vceqq_s16(v175, v178));
    v522 = vaddq_s16(v522, v272);
    v523 = vaddq_s16(v523, v272);
    v524 = vaddq_s16(v524, v272);
    v525 = vaddq_s16(v525, v272);
    v273 = vandq_s8(v543, vceqq_s16(v175, v181));
    v526 = vaddq_s16(v526, v273);
    v527 = vaddq_s16(v527, v273);
    v528 = vaddq_s16(v528, v273);
    v529 = vaddq_s16(v529, v273);
    v274 = vandq_s8(v543, vceqq_s16(v175, v176));
    v530 = vaddq_s16(v530, v274);
    v531 = vaddq_s16(v531, v274);
    v532 = vaddq_s16(v532, v274);
    v533 = vaddq_s16(v533, v274);
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
    if ((vpaddq_s16(v280, v280).i16[0] + 71) > 0x3FF)
    {
      *a1 = v510;
      *(a1 + 16) = v511;
      *(a1 + 32) = v507;
      *(a1 + 48) = v508;
      *(a1 + 64) = v499;
      *(a1 + 80) = v500;
      v286 = (a1 + 96);
      v284 = 127;
      result = 128;
      *v286 = v512;
      v286[1] = v513;
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
      v287 = v534.i64[0];
      v288 = vmovl_s16(vceqz_s16(*v175.i8));
      v289.i64[0] = v288.i32[0];
      v289.i64[1] = v288.i32[1];
      v290 = v289;
      v289.i64[0] = v288.i32[2];
      v289.i64[1] = v288.i32[3];
      v291 = v289;
      v292 = vand_s8(vadd_s16(*v175.i8, 0xF000F000F000FLL), 0xF000F000F000FLL);
      v292.i16[3] = vbic_s8(0x1000100010001, *&v175).i16[3];
      v293 = vshlq_u32(vmovl_u16(v292), xmmword_29D2F12F0);
      v289.i64[0] = v293.u32[0];
      v289.i64[1] = v293.u32[1];
      v294 = v289;
      v289.i64[0] = v293.u32[2];
      v289.i64[1] = v293.u32[3];
      v295 = vorrq_s8(vbicq_s8(v294, v290), vbicq_s8(v289, v291));
      v296 = *&vorr_s8(*v295.i8, *&vextq_s8(v295, v295, 8uLL)) | v125.i8[0] & 0x1F | (32 * (v125.i8[2] & 0x1F)) & 0x83FF | ((v125.i8[4] & 0x1F) << 10) | ((v125.i8[6] & 0xF) << 15);
      v297 = (v296 << v282) | v283;
      if (v282 >= 0x20)
      {
        *v281 = v297;
        v297 = v296 >> (-8 * (a1 & 7u));
      }

      v298 = v287 & 0x3FF | ((WORD1(v287) & 0x3FF) << 10) | ((WORD2(v287) & 0x3FF) << 20) | ((BYTE6(v287) & 3) << 30);
      v299 = (v282 + 32) & 0x38;
      v300 = v297 | (v298 << v299);
      if (v299 >= 0x20)
      {
        *(v281 + (((v282 + 32) >> 3) & 8)) = v300;
        v300 = v298 >> -v299;
      }

      v301 = vsubq_s16(v540, v536);
      v302 = vsubq_s16(v540, v537);
      v303 = vsubq_s16(v540, v538);
      v304 = vsubq_s16(v540, v539);
      *v301.i8 = vqmovn_u16(v301);
      *v302.i8 = vqmovn_u16(v302);
      *v303.i8 = vqmovn_u16(v303);
      *v304.i8 = vqmovn_u16(v304);
      v305 = vtrn1q_s8(v301, v302);
      v306 = vtrn2q_s8(v301, v302);
      v307 = vtrn1q_s8(v303, v304);
      v308 = vtrn2q_s8(v303, v304);
      v309 = vzip1q_s16(v306, v308);
      v310 = vtrn2q_s16(v306, v308);
      v306.i64[0] = vzip1q_s32(vzip1q_s16(v305, v307), v309).u64[0];
      v310.i64[0] = vzip1q_s32(vtrn2q_s16(v305, v307), v310).u64[0];
      v303.i64[0] = 0x202020202020202;
      v303.i64[1] = 0x202020202020202;
      v311 = vandq_s8(vmovl_s16(vtst_s16(*v535.i8, 0x4000400040004)), v303);
      v303.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v303.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v305.i64[0] = -1;
      v305.i64[1] = -1;
      v312 = vshlq_u8(v305, vorrq_s8(v311, v303));
      v313 = vmovl_u8(vand_s8(*v312.i8, *v306.i8));
      v314 = vmovl_u8(vand_s8(*&vextq_s8(v312, v312, 8uLL), *v310.i8));
      v315 = vmovl_u8(*v311.i8);
      v316 = vmovl_high_u8(v311);
      v317 = vpaddq_s16(vshlq_u16(v313, vtrn1q_s16(0, v315)), vshlq_u16(v314, vtrn1q_s16(0, v316)));
      v318 = vpaddq_s16(v315, v316);
      v319 = vmovl_u16(*v318.i8);
      v320 = vmovl_high_u16(v318);
      v321 = vpaddq_s32(vshlq_u32(vmovl_u16(*v317.i8), vtrn1q_s32(0, v319)), vshlq_u32(vmovl_high_u16(v317), vtrn1q_s32(0, v320)));
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
      v329 = (v327.i64[0] << v282) | v300;
      if (v328.i64[0] + v282 >= 0x40)
      {
        v281[1] = v329;
        v329 = v327.i64[0] >> (-8 * (a1 & 7u));
        if (!v282)
        {
          v329 = 0;
        }
      }

      v330 = v328.i64[0] + (v282 | 0x40);
      v331 = v329 | (v327.i64[1] << v330);
      if ((v330 & 0x3F) + v328.i64[1] >= 0x40)
      {
        *(v281 + ((v330 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v331;
        v331 = v327.i64[1] >> -(v330 & 0x3F);
        if ((v330 & 0x3F) == 0)
        {
          v331 = 0;
        }
      }

      v332 = v330 + v328.i64[1];
      v333.i64[0] = 0x8000800080008;
      v333.i64[1] = 0x8000800080008;
      v334.i64[0] = -1;
      v334.i64[1] = -1;
      v335 = vandq_s8(vextq_s8(vtstq_s16(v535, v333), 0, 8uLL), v540);
      v336.i64[0] = 0xF000F000F000FLL;
      v336.i64[1] = 0xF000F000F000FLL;
      v337 = vandq_s8(vshlq_u16(v334, vaddq_s16(v335, v336)), v543);
      v338 = vmovl_u16(*v335.i8);
      v339 = vpaddq_s32(vshlq_u32(vmovl_u16(*v337.i8), vtrn1q_s32(0, v338)), vmovl_high_u16(v337));
      v340 = vpaddq_s32(v338, vmovl_high_u16(v335));
      v341.i64[0] = v339.u32[0];
      v341.i64[1] = v339.u32[1];
      v342 = v341;
      v341.i64[0] = v339.u32[2];
      v341.i64[1] = v339.u32[3];
      v343 = v341;
      v341.i64[0] = v340.u32[0];
      v341.i64[1] = v340.u32[1];
      v344 = v341;
      v341.i64[0] = v340.u32[2];
      v341.i64[1] = v340.u32[3];
      v345 = vpaddq_s64(vshlq_u64(v342, vzip1q_s64(0, v344)), vshlq_u64(v343, vzip1q_s64(0, v341)));
      v346 = vpaddq_s64(v344, v341);
      v347 = (v345.i64[0] << v332) | v331;
      if (v346.i64[0] + (v332 & 0x3F) >= 0x40)
      {
        *(v281 + ((v332 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v347;
        v347 = v345.i64[0] >> -(v332 & 0x3F);
        if ((v332 & 0x3F) == 0)
        {
          v347 = 0;
        }
      }

      v348 = v346.i64[0] + v332;
      v349 = v347 | (v345.i64[1] << v348);
      if ((v348 & 0x3F) + v346.i64[1] >= 0x40)
      {
        *(v281 + ((v348 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v349;
        v349 = v345.i64[1] >> -(v348 & 0x3F);
        if ((v348 & 0x3F) == 0)
        {
          v349 = 0;
        }
      }

      v350 = v348 + v346.i64[1];
      v351 = vextq_s8(0, v536, 8uLL);
      v352.i64[0] = 0xF000F000F000FLL;
      v352.i64[1] = 0xF000F000F000FLL;
      v353.i64[0] = -1;
      v353.i64[1] = -1;
      v354 = vandq_s8(vshlq_u16(v353, vaddq_s16(v351, v352)), v515);
      v355 = vmovl_u16(*v351.i8);
      v356 = vmovl_high_u16(v351);
      v357 = vpaddq_s32(vmovl_u16(*v354.i8), vshlq_u32(vmovl_high_u16(v354), vtrn1q_s32(0, v356)));
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
      v365 = (v363.i64[0] << v350) | v349;
      if (v364.i64[0] + (v350 & 0x3F) >= 0x40)
      {
        *(v281 + ((v350 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
        v365 = v363.i64[0] >> -(v350 & 0x3F);
        if ((v350 & 0x3F) == 0)
        {
          v365 = 0;
        }
      }

      v366 = v364.i64[0] + v350;
      v367 = v365 | (v363.i64[1] << v366);
      if ((v366 & 0x3F) + v364.i64[1] >= 0x40)
      {
        *(v281 + ((v366 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v367;
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
      v371 = vandq_s8(vshlq_u16(v370, vaddq_s16(v536, v369)), v517);
      v372 = vmovl_u16(*v536.i8);
      v373 = vmovl_high_u16(v536);
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
        *(v281 + ((v368 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v382;
        v382 = v380.i64[0] >> -(v368 & 0x3F);
        if ((v368 & 0x3F) == 0)
        {
          v382 = 0;
        }
      }

      v383 = v381.i64[0] + v368;
      v384 = v382 | (v380.i64[1] << v383);
      if ((v383 & 0x3F) + v381.i64[1] >= 0x40)
      {
        *(v281 + ((v383 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v384;
        v384 = v380.i64[1] >> -(v383 & 0x3F);
        if ((v383 & 0x3F) == 0)
        {
          v384 = 0;
        }
      }

      v385 = v383 + v381.i64[1];
      v386.i64[0] = 0xF000F000F000FLL;
      v386.i64[1] = 0xF000F000F000FLL;
      v387.i64[0] = -1;
      v387.i64[1] = -1;
      v388 = vandq_s8(vshlq_u16(v387, vaddq_s16(v536, v386)), v519);
      v389 = vmovl_u16(*v536.i8);
      v390 = vmovl_high_u16(v536);
      v391 = vpaddq_s32(vshlq_u32(vmovl_u16(*v388.i8), vtrn1q_s32(0, v389)), vshlq_u32(vmovl_high_u16(v388), vtrn1q_s32(0, v390)));
      v392 = vpaddq_s32(v389, v390);
      v393.i64[0] = v391.u32[0];
      v393.i64[1] = v391.u32[1];
      v394 = v393;
      v393.i64[0] = v391.u32[2];
      v393.i64[1] = v391.u32[3];
      v395 = v393;
      v393.i64[0] = v392.u32[0];
      v393.i64[1] = v392.u32[1];
      v396 = v393;
      v393.i64[0] = v392.u32[2];
      v393.i64[1] = v392.u32[3];
      v397 = vpaddq_s64(vshlq_u64(v394, vzip1q_s64(0, v396)), vshlq_u64(v395, vzip1q_s64(0, v393)));
      v398 = vpaddq_s64(v396, v393);
      v399 = (v397.i64[0] << v385) | v384;
      if (v398.i64[0] + (v385 & 0x3F) >= 0x40)
      {
        *(v281 + ((v385 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v399;
        v399 = v397.i64[0] >> -(v385 & 0x3F);
        if ((v385 & 0x3F) == 0)
        {
          v399 = 0;
        }
      }

      v400 = v398.i64[0] + v385;
      v401 = v399 | (v397.i64[1] << v400);
      if ((v400 & 0x3F) + v398.i64[1] >= 0x40)
      {
        *(v281 + ((v400 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v401;
        v401 = v397.i64[1] >> -(v400 & 0x3F);
        if ((v400 & 0x3F) == 0)
        {
          v401 = 0;
        }
      }

      v402 = v400 + v398.i64[1];
      v403.i64[0] = 0xF000F000F000FLL;
      v403.i64[1] = 0xF000F000F000FLL;
      v404.i64[0] = -1;
      v404.i64[1] = -1;
      v405 = vandq_s8(vshlq_u16(v404, vaddq_s16(v536, v403)), v521);
      v406 = vmovl_u16(*v536.i8);
      v407 = vmovl_high_u16(v536);
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
      v416 = (v414.i64[0] << v402) | v401;
      if (v415.i64[0] + (v402 & 0x3F) >= 0x40)
      {
        *(v281 + ((v402 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
        v416 = v414.i64[0] >> -(v402 & 0x3F);
        if ((v402 & 0x3F) == 0)
        {
          v416 = 0;
        }
      }

      v417 = v415.i64[1];
      v418 = v415.i64[0] + v402;
      v419 = (v415.i64[0] + v402) & 0x3F;
      v420 = v416 | (v414.i64[1] << v418);
      if ((v419 + v415.i64[1]) >= 0x40)
      {
        *(v281 + ((v418 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v420;
        v420 = v414.i64[1] >> -v419;
        if (!v419)
        {
          v420 = 0;
        }
      }

      v421 = 0;
      v422.i64[0] = 0xF000F000F000FLL;
      v422.i64[1] = 0xF000F000F000FLL;
      v423.i64[0] = -1;
      v423.i64[1] = -1;
      v424 = v418 + v417;
      do
      {
        v425 = vandq_s8(vshlq_u16(v423, vaddq_s16(v537, v422)), *(&v522 + v421));
        v426 = vmovl_u16(*v537.i8);
        v427 = vmovl_high_u16(v537);
        v428 = vpaddq_s32(vshlq_u32(vmovl_u16(*v425.i8), vtrn1q_s32(0, v426)), vshlq_u32(vmovl_high_u16(v425), vtrn1q_s32(0, v427)));
        v429 = vpaddq_s32(v426, v427);
        v430.i64[0] = v428.u32[0];
        v430.i64[1] = v428.u32[1];
        v431 = v430;
        v430.i64[0] = v428.u32[2];
        v430.i64[1] = v428.u32[3];
        v432 = v430;
        v430.i64[0] = v429.u32[0];
        v430.i64[1] = v429.u32[1];
        v433 = v430;
        v430.i64[0] = v429.u32[2];
        v430.i64[1] = v429.u32[3];
        v434 = vpaddq_s64(vshlq_u64(v431, vzip1q_s64(0, v433)), vshlq_u64(v432, vzip1q_s64(0, v430)));
        v435 = vpaddq_s64(v433, v430);
        v436 = (v434.i64[0] << v424) | v420;
        if (v435.i64[0] + (v424 & 0x3F) >= 0x40)
        {
          *(v281 + ((v424 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v436;
          v436 = v434.i64[0] >> -(v424 & 0x3F);
          if ((v424 & 0x3F) == 0)
          {
            v436 = 0;
          }
        }

        v437 = v435.i64[0] + v424;
        v420 = v436 | (v434.i64[1] << v437);
        if ((v437 & 0x3F) + v435.i64[1] >= 0x40)
        {
          *(v281 + ((v437 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v420;
          v420 = v434.i64[1] >> -(v437 & 0x3F);
          if ((v437 & 0x3F) == 0)
          {
            v420 = 0;
          }
        }

        v424 = v437 + v435.i64[1];
        v421 += 16;
      }

      while (v421 != 64);
      v438 = 0;
      v439.i64[0] = 0xF000F000F000FLL;
      v439.i64[1] = 0xF000F000F000FLL;
      v440.i64[0] = -1;
      v440.i64[1] = -1;
      do
      {
        v441 = vandq_s8(vshlq_u16(v440, vaddq_s16(v538, v439)), *(&v526 + v438));
        v442 = vmovl_u16(*v538.i8);
        v443 = vmovl_high_u16(v538);
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
        v452 = (v450.i64[0] << v424) | v420;
        if (v451.i64[0] + (v424 & 0x3F) >= 0x40)
        {
          *(v281 + ((v424 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v452;
          v452 = v450.i64[0] >> -(v424 & 0x3F);
          if ((v424 & 0x3F) == 0)
          {
            v452 = 0;
          }
        }

        v453 = v451.i64[0] + v424;
        v420 = v452 | (v450.i64[1] << v453);
        if ((v453 & 0x3F) + v451.i64[1] >= 0x40)
        {
          *(v281 + ((v453 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v420;
          v420 = v450.i64[1] >> -(v453 & 0x3F);
          if ((v453 & 0x3F) == 0)
          {
            v420 = 0;
          }
        }

        v424 = v453 + v451.i64[1];
        v438 += 16;
      }

      while (v438 != 64);
      v454 = 0;
      v455.i64[0] = 0xF000F000F000FLL;
      v455.i64[1] = 0xF000F000F000FLL;
      v456.i64[0] = -1;
      v456.i64[1] = -1;
      do
      {
        v457 = vandq_s8(vshlq_u16(v456, vaddq_s16(v539, v455)), *(&v530 + v454));
        v458 = vmovl_u16(*v539.i8);
        v459 = vmovl_high_u16(v539);
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
        v468 = (v466.i64[0] << v424) | v420;
        if (v467.i64[0] + (v424 & 0x3F) >= 0x40)
        {
          *(v281 + ((v424 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v468;
          v468 = v466.i64[0] >> -(v424 & 0x3F);
          if ((v424 & 0x3F) == 0)
          {
            v468 = 0;
          }
        }

        v469 = v467.i64[0] + v424;
        v420 = v468 | (v466.i64[1] << v469);
        if ((v469 & 0x3F) + v467.i64[1] >= 0x40)
        {
          *(v281 + ((v469 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v420;
          v420 = v466.i64[1] >> -(v469 & 0x3F);
          if ((v469 & 0x3F) == 0)
          {
            v420 = 0;
          }
        }

        v424 = v469 + v467.i64[1];
        v454 += 16;
      }

      while (v454 != 64);
      if ((v424 & 0x3F) != 0)
      {
        *(v281 + ((v424 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v420;
      }

      result = (v424 - v282 + 7) >> 3;
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

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, (v11 + v12), a2, v15, v14);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + 4, a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v12 + 64), a2, v20, v19);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, (v11 + 4 * a2), a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, (v11 + 6 * a2), a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + 4 * a2 + 64), a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + 6 * a2 + 64), a2, v30, v29);
}

double AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(void *a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 8 * (&v23 & 7);
  v5 = 10;
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(float32x4_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
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
    v432 = v13;
    v433 = v12;
    v434 = v11;
    v435 = v10;
    v436 = v9;
    v437 = v8;
    v438 = v7;
    v439 = v6;
    v440 = v4;
    v441 = v5;
    v408 = 0;
    v407 = (8 * (a3 & 7)) | 0x400;
    v405 = 8 * (a3 & 7);
    v406 = a3 & 0xFFFFFFFFFFFFFFF8;
    result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)13,AGX::AppleCompressionGen2::Vec<short>>(&v426, v431, &v425, &v405, a4);
    v31.i64[0] = 0x3000300030003;
    v31.i64[1] = 0x3000300030003;
    v32 = v426;
    v33 = vandq_s8(v426, v31);
    v34 = vbicq_s8(v431[0], vceqq_s16(v33, v31));
    v431[0] = v34;
    v427 = v34;
    v428 = v34;
    v429 = v34;
    v430 = v34;
    v35.i64[0] = 0x202020202020202;
    v35.i64[1] = 0x202020202020202;
    v36 = vandq_s8(vmovl_s16(vtst_s16(*v426.i8, 0x4000400040004)), v35);
    v37 = v405;
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
      v45 = v405 + v43;
      if (v407)
      {
        _CF = v407 >= v45;
      }

      else
      {
        _CF = 1;
      }

      v47 = _CF;
      v48 = a1;
      v49 = a2;
      if (v43 <= 0x80 && (v47 & 1) != 0)
      {
        v30.i64[0] = 63;
        v50 = (v406 + 8 * (v405 >> 6));
        v51 = vaddq_s64(vdupq_lane_s64(vandq_s8(v405, v30).i64[0], 0), vzip1q_s64(0, v42));
        v52 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v50, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v51)), vshlq_u64(vdupq_lane_s64(v50->i64[0], 0), vnegq_s64(v51)));
        if ((v405 & 0x3F) + v44 >= 0x81)
        {
          v52 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v50[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v51)), vshlq_u64(vdupq_laneq_s64(v50[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v51))), v52);
        }

        v37 = v45;
      }

      else
      {
        v408 = 1;
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
      v427 = vsubw_s8(v427, *v64.i8);
      v428 = vsubw_s8(v428, *v63.i8);
      v429 = vsubw_s8(v429, v67);
      v430 = vsubw_s8(v430, *v66.i8);
      v56 = vmovl_s8(vceqz_s8(*v64.i8));
      v55 = vmovl_s8(vceqz_s8(*v63.i8));
      v54 = vmovl_s8(vceqz_s8(v67));
      v53 = vmovl_s8(vceqz_s8(*v66.i8));
    }

    v68.i64[0] = 0x8000800080008;
    v68.i64[1] = 0x8000800080008;
    v69 = 0uLL;
    v70 = vandq_s8(vextq_s8(vtstq_s16(v426, v68), 0, 8uLL), v34);
    v71 = vmovl_u16(*&vpaddq_s16(v70, v70));
    v72 = vpaddq_s32(v71, v71).u64[0];
    v73.i64[0] = v72;
    v73.i64[1] = HIDWORD(v72);
    v74 = v73;
    v75 = vaddvq_s64(v73);
    if (v407)
    {
      v76 = v407 >= v37 + v75;
    }

    else
    {
      v76 = 1;
    }

    v77 = v76;
    if (v75 <= 0x80 && (v77 & 1) != 0)
    {
      v78 = vaddq_s64(vdupq_n_s64(v37 & 0x3F), vzip1q_s64(0, v74));
      v79 = (v406 + 8 * (v37 >> 6));
      v69 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v79, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v78)), vshlq_u64(vdupq_lane_s64(v79->i64[0], 0), vnegq_s64(v78)));
      if ((v37 & 0x3F) + v75 >= 0x81)
      {
        v69 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v79[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v78)), vshlq_u64(vdupq_laneq_s64(v79[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v78))), v69);
      }

      v37 += v75;
    }

    else
    {
      v408 = 1;
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
    v431[3] = v88;
    v89 = v426.i8[0] & 3;
    if (v89 == 2)
    {
      if (v407)
      {
        v90 = v37 + 8;
        v91 = v37 + 16;
        if (v407 >= v37 + 8)
        {
          v37 += 8;
        }

        else
        {
          v91 = v37 + 8;
        }

        if (v407 >= v91)
        {
          v37 = v91;
        }

        if (v407 < v90 || v407 < v91)
        {
          v408 = 1;
        }
      }

      else
      {
        v37 += 16;
      }
    }

    v92 = 0uLL;
    v93 = vextq_s8(0, v427, 8uLL);
    v94 = vmovl_u16(*&vpaddq_s16(v93, v93));
    v95 = vpaddq_s32(v94, v94).u64[0];
    v96.i64[0] = v95;
    v96.i64[1] = HIDWORD(v95);
    v97 = v96;
    v98 = vaddvq_s64(v96);
    v99 = v37 + v98;
    if (v407)
    {
      v100 = v407 >= v99;
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
      v104 = v406;
      v105 = (v406 + 8 * (v37 >> 6));
      v92 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v105, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v103)), vshlq_u64(vdupq_lane_s64(v105->i64[0], 0), vnegq_s64(v103)));
      if (v102 + v98 >= 0x81)
      {
        v92 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v105[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v103)), vshlq_u64(vdupq_laneq_s64(v105[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v103))), v92);
      }

      v106 = v408;
      v37 = v99;
    }

    else
    {
      v106 = 1;
      v104 = v406;
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
    v409 = v115;
    v116 = vmovl_u16(*&vpaddq_s16(v427, v427));
    v110.i64[0] = vpaddq_s32(v116, v116).u64[0];
    v108.i64[0] = v110.u32[0];
    v108.i64[1] = v110.u32[1];
    v117 = v108;
    v118 = vaddvq_s64(v108);
    v119 = v37 + v118;
    if (v407)
    {
      v120 = v407 >= v119;
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
    v132 = vnegq_s32(vandq_s8(v427, v111));
    v133 = vshlq_u32(v131, v132);
    v134 = vuzp1q_s16(vzip1q_s32(v131, v133), vzip2q_s32(v131, v133));
    v135 = vaddq_s16(v427, v113);
    v136 = vsubq_s16(v114, v427);
    v137 = vshlq_s16(vshlq_s16(v134, v136), v135);
    v410 = v137;
    v138 = v119 + v118;
    if (v407)
    {
      v139 = v407 >= v138;
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
    v411 = v147;
    v148 = v138 + v118;
    if (v407)
    {
      v149 = v407 >= v148;
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
    v412 = v159;
    v160 = vmovl_u16(*&vpaddq_s16(v428, v428));
    v161 = vpaddq_s32(v160, v160).u64[0];
    v162.i64[0] = v161;
    v162.i64[1] = HIDWORD(v161);
    v163 = v162;
    v164 = vaddvq_s64(v162);
    v165 = v164;
    v166 = v148 + v164;
    if (v407)
    {
      v167 = v407 >= v166;
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
    v178 = vnegq_s32(vandq_s8(v428, v177));
    v179 = vshlq_u32(v176, v178);
    v180 = vuzp1q_s16(vzip1q_s32(v176, v179), vzip2q_s32(v176, v179));
    v179.i64[0] = 0xF000F000F000FLL;
    v179.i64[1] = 0xF000F000F000FLL;
    v181 = vaddq_s16(v428, v179);
    v179.i64[0] = 0x10001000100010;
    v179.i64[1] = 0x10001000100010;
    v182 = vsubq_s16(v179, v428);
    v183 = vshlq_s16(vshlq_s16(v180, v182), v181);
    v413 = v183;
    v184 = v166 + v165;
    if (v407)
    {
      v185 = v407 >= v184;
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
    v414 = v195;
    v196 = v184 + v165;
    if (v407)
    {
      v197 = v407 >= v196;
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
    v415 = v205;
    v206 = v196 + v165;
    if (v407)
    {
      v207 = v407 >= v206;
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
    v416 = v217;
    v218 = vmovl_u16(*&vpaddq_s16(v429, v429));
    v219 = vpaddq_s32(v218, v218).u64[0];
    v220.i64[0] = v219;
    v220.i64[1] = HIDWORD(v219);
    v221 = v220;
    v222 = vaddvq_s64(v220);
    v223 = v222;
    v224 = v206 + v222;
    if (v407)
    {
      v225 = v407 >= v224;
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
    v236 = vnegq_s32(vandq_s8(v429, v235));
    v237 = vshlq_u32(v234, v236);
    v238 = vuzp1q_s16(vzip1q_s32(v234, v237), vzip2q_s32(v234, v237));
    v237.i64[0] = 0xF000F000F000FLL;
    v237.i64[1] = 0xF000F000F000FLL;
    v239 = vaddq_s16(v429, v237);
    v237.i64[0] = 0x10001000100010;
    v237.i64[1] = 0x10001000100010;
    v240 = vsubq_s16(v237, v429);
    v241 = vshlq_s16(vshlq_s16(v238, v240), v239);
    v417 = v241;
    v242 = v224 + v223;
    if (v407)
    {
      v243 = v407 >= v242;
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
    v418 = v253;
    v254 = v242 + v223;
    if (v407)
    {
      v255 = v407 >= v254;
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
    v419 = v263;
    v264 = v254 + v223;
    if (v407)
    {
      v265 = v407 >= v264;
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
    v420 = v275;
    v276 = vmovl_u16(*&vpaddq_s16(v430, v430));
    v277 = vpaddq_s32(v276, v276).u64[0];
    v278.i64[0] = v277;
    v278.i64[1] = HIDWORD(v277);
    v279 = v278;
    v280 = vaddvq_s64(v278);
    v281 = v280;
    v282 = v264 + v280;
    if (v407)
    {
      v283 = v407 >= v282;
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
    v293 = vnegq_s32(vandq_s8(v430, v291));
    v294 = vshlq_u32(v292, v293);
    v295 = vuzp1q_s16(vzip1q_s32(v292, v294), vzip2q_s32(v292, v294));
    v292.i64[0] = 0xF000F000F000FLL;
    v292.i64[1] = 0xF000F000F000FLL;
    v296 = vaddq_s16(v430, v292);
    v294.i64[0] = 0x10001000100010;
    v294.i64[1] = 0x10001000100010;
    v297 = vsubq_s16(v294, v430);
    v298 = vshlq_s16(vshlq_s16(v295, v297), v296);
    v421 = v298;
    v299 = v282 + v281;
    if (v407)
    {
      v300 = v407 >= v299;
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
    v422 = v310;
    v311 = v299 + v281;
    if (v407)
    {
      v312 = v407 >= v311;
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
    v423 = v320;
    v321 = v311 + v281;
    if (v407)
    {
      v322 = v407 >= v321;
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

    if ((v106 & 1) != 0 || v407 + 8 * result - v321 - 1024 >= 9 || v89 == 2)
    {
LABEL_226:
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(v48, v49);
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
      v409 = v331;
      v350 = vsubq_s16(v310, v348);
      v351 = vsubq_s16(v320, v348);
      v421 = v349;
      v422 = v350;
      v352 = vsubq_s16(v330, v348);
      v423 = v351;
      v424 = v352;
      v353.i64[0] = 0x1000100010001;
      v353.i64[1] = 0x1000100010001;
      if (vaddvq_s16(vceqq_s16(v33, v353)))
      {
        v354 = vnegq_s16(vandq_s8(v426, v353));
        v355.i64[0] = v337.i64[0];
        v356.i64[1] = v334.i64[1];
        v355.i64[1] = v334.i64[0];
        v356.i64[0] = v337.i64[1];
        v357 = vbslq_s8(v354, v356, v334);
        v358 = vbslq_s8(v354, v355, v337);
        v356.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
        v356.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
        v359 = vandq_s8(vqtbl4q_s8(*(&v335 - 1), v356), v354);
        v443.val[0] = vaddq_s16(v357, vandq_s8(vqtbl4q_s8(*(&v335 - 1), xmmword_29D2F10B0), v354));
        v443.val[1] = vaddq_s16(v335, vandq_s8(vqtbl4q_s8(*(&v335 - 1), xmmword_29D2F10C0), v354));
        v443.val[2] = vaddq_s16(v336, v359);
        v443.val[3] = vaddq_s16(v358, v359);
        v360 = vandq_s8(vqtbl4q_s8(v443, v356), v354);
        v334 = vaddq_s16(v443.val[0], vandq_s8(vqtbl4q_s8(v443, xmmword_29D2F10D0), v354));
        v335 = vaddq_s16(v443.val[1], vandq_s8(vqtbl4q_s8(v443, xmmword_29D2F10E0), v354));
        v409 = v334;
        v410 = v335;
        v336 = vaddq_s16(v443.val[2], v360);
        v337 = vaddq_s16(v443.val[3], v360);
        v442.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v339.i8, xmmword_29D2F10B0), v354), v339);
        v442.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v339.i8, xmmword_29D2F10F0), v354), v340);
        v442.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v339.i8, v356), v354), v341);
        v442.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v339.i8, xmmword_29D2F1100), v354), v342);
        v361 = vandq_s8(vqtbl4q_s8(v442, xmmword_29D2F10D0), v354);
        v362 = vandq_s8(vqtbl4q_s8(v442, v356), v354);
        v339 = vaddq_s16(v361, v442.val[0]);
        v340 = vaddq_s16(v442.val[1], v361);
        v341 = vaddq_s16(v442.val[2], v362);
        v342 = vaddq_s16(v442.val[3], v362);
        v442.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v344.i8, xmmword_29D2F0EB0), v354), v344);
        v442.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v344.i8, xmmword_29D2F0FB0), v354), v345);
        v442.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v344.i8, xmmword_29D2F10B0), v354), v346);
        v442.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v344.i8, xmmword_29D2F10C0), v354), v347);
        v363 = vandq_s8(vqtbl4q_s8(v442, v356), v354);
        v344 = vaddq_s16(v442.val[0], v363);
        v345 = vaddq_s16(v442.val[1], v363);
        v346 = vaddq_s16(v442.val[2], vandq_s8(vqtbl4q_s8(v442, xmmword_29D2F0FE0), v354));
        v347 = vaddq_s16(v442.val[3], vandq_s8(vqtbl4q_s8(v442, xmmword_29D2F1110), v354));
        v443.val[0] = v421;
        v443.val[1] = v422;
        v32 = v426;
        v443.val[2] = v423;
        v443.val[3] = v424;
        v442.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(v443, xmmword_29D2F0EB0), v354), v421);
        v442.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(v443, xmmword_29D2F1120), v354), v422);
        v411 = v336;
        v412 = v337;
        v442.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(v443, xmmword_29D2F10B0), v354), v423);
        v442.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(v443, xmmword_29D2F10C0), v354), v424);
        v364 = vandq_s8(vqtbl4q_s8(v442, v356), v354);
        v349 = vaddq_s16(v442.val[0], v364);
        v350 = vaddq_s16(v442.val[1], v364);
        v351 = vaddq_s16(v442.val[2], vandq_s8(vqtbl4q_s8(v442, xmmword_29D2F0FE0), v354));
        v352 = vaddq_s16(v442.val[3], vandq_s8(vqtbl4q_s8(v442, xmmword_29D2F1130), v354));
      }

      v365 = vaddq_s16(v425, v334);
      v366 = vaddq_s16(v335, v425);
      v367 = vaddq_s16(v336, v425);
      v368 = vaddq_s16(v337, v425);
      v369 = vaddq_s16(v339, v425);
      v370 = vaddq_s16(v340, v425);
      v371 = vaddq_s16(v341, v425);
      v372 = vaddq_s16(v342, v425);
      v373 = vaddq_s16(v344, v425);
      v374 = vaddq_s16(v345, v425);
      v375 = vaddq_s16(v346, v425);
      v376 = vaddq_s16(v347, v425);
      v377 = vaddq_s16(v349, v425);
      v378 = vaddq_s16(v350, v425);
      v379 = vaddq_s16(v351, v425);
      v380 = vaddq_s16(v352, v425);
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
      __asm { FMOV            V7.4S, #1.875 }

      v376.i64[0] = 0xC0000000C0000000;
      v376.i64[1] = 0xC0000000C0000000;
      v401 = v48 + 2;
      *v48 = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v383, 0x12uLL), v384, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v383, 0xCuLL), v384, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v383, 6uLL), v384, 6uLL), vuzp1q_s32(v383, v384))));
      v48[1] = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v385, 0x12uLL), v386, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v385, 0xCuLL), v386, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v385, 6uLL), v386, 6uLL), vuzp1q_s32(v385, v386))));
      v402 = (v48 + v49);
      v403 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v379, xmmword_29D2F1270), v382), v379);
      v404 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v380, xmmword_29D2F1270), v382), v380);
      *v401 = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v387, 0x12uLL), v388, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v387, 0xCuLL), v388, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v387, 6uLL), v388, 6uLL), vuzp1q_s32(v387, v388))));
      v401[1] = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v389, 0x12uLL), v390, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v389, 0xCuLL), v390, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v389, 6uLL), v390, 6uLL), vuzp1q_s32(v389, v390))));
      *v402 = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v391, 0x12uLL), v392, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v391, 0xCuLL), v392, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v391, 6uLL), v392, 6uLL), vuzp1q_s32(v391, v392))));
      v402[1] = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v393, 0x12uLL), v394, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v393, 0xCuLL), v394, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v393, 6uLL), v394, 6uLL), vuzp1q_s32(v393, v394))));
      v402 += 2;
      *v402 = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v395, 0x12uLL), v396, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v395, 0xCuLL), v396, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v395, 6uLL), v396, 6uLL), vuzp1q_s32(v395, v396))));
      v402[1] = vbslq_s8(v376, vshrn_high_n_s64(vshrn_n_s64(v403, 0x12uLL), v404, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v403, 0xCuLL), v404, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v403, 6uLL), v404, 6uLL), vuzp1q_s32(v403, v404))));
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(float32x4_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1, 256, a2, *a3);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 4, 256, v5, a3[1]);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 32, 256, v6, a3[2]);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 36, 256, v7, a3[3]);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 8, 256, v8, a3[4]);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 12, 256, v9, a3[5]);
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 40, 256, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(a1 + 44, 256, v10 + v11, v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(unint64_t a1, char *a2, uint32x4_t *a3, uint64_t a4, int a5, int a6)
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
  v15 = vbslq_s8(xmmword_29D2F1290, v14, 0);
  v16 = vbslq_s8(xmmword_29D2F1290, v13, 0);
  v13.i64[0] = v6.u32[0];
  v13.i64[1] = v6.u32[1];
  v17 = v13;
  v13.i64[0] = v6.u32[2];
  v13.i64[1] = v6.u32[3];
  v18 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*a3->i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*a3->i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*a3->i8, 6uLL), v15)));
  v19 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(*a3, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(*a3, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(*a3, 6uLL), v16)));
  v512 = *a3;
  v513 = v6;
  v20 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v6.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v6.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v6.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v17, 0))));
  v21 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v6, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v6, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v6, 6uLL), vbslq_s8(xmmword_29D2F1290, v13, 0))));
  v13.i64[0] = v7.u32[0];
  v13.i64[1] = v7.u32[1];
  v22 = v13;
  v13.i64[0] = v7.u32[2];
  v13.i64[1] = v7.u32[3];
  v23 = vbslq_s8(xmmword_29D2F1290, v22, 0);
  v24 = vbslq_s8(xmmword_29D2F1290, v13, 0);
  v13.i64[0] = v8.u32[0];
  v13.i64[1] = v8.u32[1];
  v25 = v13;
  v13.i64[0] = v8.u32[2];
  v13.i64[1] = v8.u32[3];
  v26 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v7.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v7.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v7.i8, 6uLL), v23)));
  v27 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v7, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v7, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v7, 6uLL), v24)));
  v510 = v7;
  v511 = v8;
  v28 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v8.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v8.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v8.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v25, 0))));
  v29 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v8, 6uLL), vbslq_s8(xmmword_29D2F1290, v13, 0))));
  v13.i64[0] = v9.u32[0];
  v13.i64[1] = v9.u32[1];
  v30 = v13;
  v13.i64[0] = v9.u32[2];
  v13.i64[1] = v9.u32[3];
  v31 = vbslq_s8(xmmword_29D2F1290, v30, 0);
  v32 = vbslq_s8(xmmword_29D2F1290, v13, 0);
  v13.i64[0] = v10.u32[0];
  v13.i64[1] = v10.u32[1];
  v33 = v13;
  v13.i64[0] = v10.u32[2];
  v13.i64[1] = v10.u32[3];
  v34 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v9.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v9.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v9.i8, 6uLL), v31)));
  v35 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v9, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v9, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v9, 6uLL), v32)));
  v507 = v9;
  v508 = v10;
  v36 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v10.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v10.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v10.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v33, 0))));
  v37 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v10, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v10, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v10, 6uLL), vbslq_s8(xmmword_29D2F1290, v13, 0))));
  v13.i64[0] = v11.u32[0];
  v13.i64[1] = v11.u32[1];
  v38 = v13;
  v13.i64[0] = v11.u32[2];
  v13.i64[1] = v11.u32[3];
  v39 = vbslq_s8(xmmword_29D2F1290, v38, 0);
  v40 = vbslq_s8(xmmword_29D2F1290, v13, 0);
  v13.i64[0] = v12.u32[0];
  v13.i64[1] = v12.u32[1];
  v41 = v13;
  v13.i64[0] = v12.u32[2];
  v13.i64[1] = v12.u32[3];
  v42 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v11.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v11.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v11.i8, 6uLL), v39)));
  v43 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v11, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v11, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v11, 6uLL), v40)));
  v44 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v12.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v12.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v12.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v41, 0))));
  v45 = vdupq_lane_s64(v18.i64[0], 0);
  v514 = vshlq_s16(vshlq_s16(vsubq_s16(v18, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v516 = vshlq_s16(vshlq_s16(vsubq_s16(v19, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v46 = vshlq_s16(vshlq_s16(vsubq_s16(v20, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v47 = vminq_s16(vminq_s16(v514, v516), v46);
  v518 = v46;
  v520 = vshlq_s16(vshlq_s16(vsubq_s16(v21, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v48 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v514, v516), v46), v520), xmmword_29D2F1150);
  v49 = vqtbl1q_s8(vminq_s16(v47, v520), xmmword_29D2F1150);
  v50 = vpmaxq_s16(v48, v48);
  v51 = vpminq_s16(v49, v49);
  v52 = vzip1q_s16(v50, v51);
  v53.i64[0] = 0x10001000100010;
  v53.i64[1] = 0x10001000100010;
  v54 = vbicq_s8(vsubq_s16(v53, vclsq_s16(v52)), vceqzq_s16(v52));
  v522 = vshlq_s16(vshlq_s16(vsubq_s16(v26, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v523 = vshlq_s16(vshlq_s16(vsubq_s16(v27, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v503 = v26;
  v505 = v27;
  v506 = v28;
  v55 = v37;
  v56 = vshlq_s16(vshlq_s16(vsubq_s16(v28, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v57 = vminq_s16(vminq_s16(v522, v523), v56);
  v524 = v56;
  v525 = vshlq_s16(vshlq_s16(vsubq_s16(v29, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v9.i64[0] = 0x8000800080008000;
  v9.i64[1] = 0x8000800080008000;
  v58 = vmaxq_s16(v50, v9);
  v9.i64[0] = 0x8000800080008000;
  v9.i64[1] = 0x8000800080008000;
  v59 = vminq_s16(v51, v9);
  v60 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v522, v523), v56), v525), xmmword_29D2F1150);
  v61 = vqtbl1q_s8(vminq_s16(v57, v525), xmmword_29D2F1150);
  v62 = vpmaxq_s16(v60, v60);
  v63 = vpminq_s16(v61, v61);
  v64 = vmaxq_s16(v58, v62);
  v65 = vminq_s16(v59, v63);
  v66 = vzip1q_s16(v62, v63);
  v27.i64[0] = 0x10001000100010;
  v27.i64[1] = 0x10001000100010;
  v67 = vbicq_s8(vsubq_s16(v27, vclsq_s16(v66)), vceqzq_s16(v66));
  v526 = vshlq_s16(vshlq_s16(vsubq_s16(v34, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v527 = vshlq_s16(vshlq_s16(vsubq_s16(v35, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v68 = vshlq_s16(vshlq_s16(vsubq_s16(v36, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v69 = vminq_s16(vminq_s16(v526, v527), v68);
  v528 = v68;
  v529 = vshlq_s16(vshlq_s16(vsubq_s16(v37, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v70 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v526, v527), v68), v529), xmmword_29D2F1150);
  v71 = vqtbl1q_s8(vminq_s16(v69, v529), xmmword_29D2F1150);
  v72 = vpmaxq_s16(v70, v70);
  v73 = vpminq_s16(v71, v71);
  v74 = vmaxq_s16(v64, v72);
  v75 = vminq_s16(v65, v73);
  v76 = vzip1q_s16(v72, v73);
  v77 = vbicq_s8(vsubq_s16(v27, vclsq_s16(v76)), vceqzq_s16(v76));
  v530 = vshlq_s16(vshlq_s16(vsubq_s16(v42, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v531 = vshlq_s16(vshlq_s16(vsubq_s16(v43, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v534 = v45;
  v501 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v12, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v12, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v12, 6uLL), vbslq_s8(xmmword_29D2F1290, v13, 0))));
  v532 = vshlq_s16(vshlq_s16(vsubq_s16(v44, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v533 = vshlq_s16(vshlq_s16(vsubq_s16(v501, v45), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v78 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v530, v531), v532), v533), xmmword_29D2F1150);
  v79 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v530, v531), v532), v533), xmmword_29D2F1150);
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
  v541 = v83;
  v542 = v82;
  v93 = vsubq_s16(vshlq_s16(v92, vsubq_s16(v37, v91)), v83);
  v94 = vsubq_s16(v27, v91);
  v95 = vcgtq_s16(v90, v94);
  v96 = vminq_s16(v94, v90);
  v543 = vandq_s8(v93, v95);
  v90.i64[0] = 0x8000800080008;
  v90.i64[1] = 0x8000800080008;
  v97 = vorrq_s8(vandq_s8(v95, v90), 0);
  v90.i64[0] = 0x3000300030003;
  v90.i64[1] = 0x3000300030003;
  v98 = vorrq_s8(vandq_s8(vceqzq_s16(v96), v90), v97);
  v99 = vmaxq_s16(vminq_s16(vsubq_s16(v96, v87), v90), 0);
  v100 = vmaxq_s16(vminq_s16(vsubq_s16(v96, v88), v90), 0);
  v537 = vsubq_s16(v96, v99);
  v538 = vsubq_s16(v96, v100);
  v101 = vmaxq_s16(vminq_s16(vsubq_s16(v96, v89), v90), 0);
  v539 = vsubq_s16(v96, v101);
  v540 = v96;
  v102 = vaddq_s16(v101, v100);
  v103 = vmaxq_s16(vminq_s16(vsubq_s16(v96, v86), v90), 0);
  v90.i64[0] = 0x4000400040004;
  v90.i64[1] = 0x4000400040004;
  v104 = vorrq_s8(vbicq_s8(v90, vceqq_s16(v102, vnegq_s16(vaddq_s16(v103, v99)))), v98);
  v535 = v104;
  v536 = vsubq_s16(v96, v103);
  if (vmaxvq_s16(v96))
  {
    v495 = v18;
    v496 = v19;
    v497 = v20;
    v498 = v21;
    v470 = v55;
    v471 = v29;
    v105.i64[0] = 0x4000400040004;
    v105.i64[1] = 0x4000400040004;
    v499 = v11;
    v500 = v12;
    v106 = v98;
    v107 = vshlq_s16(vshlq_s16(vsubq_s16(v522, vqtbl1q_s8(v522, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v108 = vshlq_s16(vshlq_s16(vsubq_s16(v523, vqtbl1q_s8(v523, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v109 = vshlq_s16(vshlq_s16(vsubq_s16(v524, vqtbl1q_s8(v524, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v110 = vshlq_s16(vshlq_s16(vsubq_s16(v525, vqtbl1q_s8(v525, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v475 = vshlq_s16(vshlq_s16(vsubq_s16(v514, vqtbl1q_s8(v514, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v476 = vshlq_s16(vshlq_s16(vsubq_s16(v516, vqtbl1q_s8(v516, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v477 = vshlq_s16(vshlq_s16(vsubq_s16(v520, vqtbl1q_s8(v520, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v478 = vshlq_s16(vshlq_s16(vsubq_s16(v518, vqtbl1q_s8(v518, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v111 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v475, v476), v478), v477), xmmword_29D2F1150);
    v112 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v475, v476), v478), v477), xmmword_29D2F1150);
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
    v481 = v108;
    v482 = v107;
    v123 = vminq_s16(v107, v108);
    v124 = vshlq_s16(vshlq_s16(vsubq_s16(v530, vqtbl1q_s8(v530, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v125 = v104;
    v483 = v110;
    v484 = v109;
    v126 = vminq_s16(vminq_s16(v123, v109), v110);
    v127 = vshlq_s16(vshlq_s16(vsubq_s16(v532, vqtbl1q_s8(v532, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v128 = vshlq_s16(vshlq_s16(vsubq_s16(v533, vqtbl1q_s8(v533, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v129 = vqtbl1q_s8(v122, xmmword_29D2F1150);
    v130 = vqtbl1q_s8(v126, xmmword_29D2F1150);
    v131 = vpmaxq_s16(v129, v129);
    v132 = vpminq_s16(v130, v130);
    v133 = vmaxq_s16(v116, v131);
    v134 = vminq_s16(v117, v132);
    v135 = vzip1q_s16(v131, v132);
    v136 = vbicq_s8(vsubq_s16(v119, vclsq_s16(v135)), vceqzq_s16(v135));
    v137 = vpmaxq_s16(v136, v136);
    v485 = vshlq_s16(vshlq_s16(vsubq_s16(v527, vqtbl1q_s8(v527, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v486 = vshlq_s16(vshlq_s16(vsubq_s16(v526, vqtbl1q_s8(v526, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v490 = vshlq_s16(vshlq_s16(vsubq_s16(v528, vqtbl1q_s8(v528, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v492 = vshlq_s16(vshlq_s16(vsubq_s16(v531, vqtbl1q_s8(v531, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v487 = vshlq_s16(vshlq_s16(vsubq_s16(v529, vqtbl1q_s8(v529, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v138 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v486, v485), v490), v487), xmmword_29D2F1150);
    v139 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v486, v485), v490), v487), xmmword_29D2F1150);
    v140 = vpmaxq_s16(v138, v138);
    v141 = vpminq_s16(v139, v139);
    v142 = vmaxq_s16(v133, v140);
    v143 = vminq_s16(v134, v141);
    v144 = vzip1q_s16(v140, v141);
    v145 = vbicq_s8(vsubq_s16(v119, vclsq_s16(v144)), vceqzq_s16(v144));
    v146 = vpmaxq_s16(v145, v145);
    v147 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v124, v492), v127), v128), xmmword_29D2F1150);
    v148 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v124, v492), v127), v128), xmmword_29D2F1150);
    v149 = vpmaxq_s16(v147, v147);
    v150 = vpminq_s16(v148, v148);
    v151 = vmaxq_s16(v142, v149);
    v152 = vminq_s16(v143, v150);
    v153 = vzip1q_s16(v149, v150);
    v154 = vbicq_s8(vsubq_s16(v119, vclsq_s16(v153)), vceqzq_s16(v153));
    v155 = vpmaxq_s16(v154, v154);
    v156 = vmaxq_s16(vmaxq_s16(v121, v137), vmaxq_s16(v146, v155));
    v479 = v152;
    v480 = v151;
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
    v472 = vsubq_s16(v160, v163);
    v473 = vsubq_s16(v160, v164);
    v161.i64[0] = 0x7000700070007;
    v161.i64[1] = 0x7000700070007;
    v474 = v168;
    v170 = vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v160, vceqzq_s16((*&v167 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v165, v165)), v168, v161), vshlq_n_s16(vaddq_s16(vaddq_s16(v472, v169), v473), 3uLL));
    v151.i64[0] = 0x8000800080008;
    v151.i64[1] = 0x8000800080008;
    v171 = vandq_s8(vaddq_s16(v125, v125), v151);
    v172 = vandq_s8(v106, v151);
    v168.i64[0] = 0x2000200020002;
    v168.i64[1] = 0x2000200020002;
    v173 = vandq_s8(vceqq_s16(vandq_s8(v106, v121), v168), v119);
    v174 = vceqzq_s16(v172);
    v176 = v539;
    v175 = v540;
    v177 = vaddq_s16(vaddq_s16(vbicq_s8(v540, v174), v173), v171);
    v179 = v536;
    v178 = v537;
    v180 = vmlaq_s16(v177, v536, v161);
    v181 = v538;
    v182 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v180, vshlq_n_s16(vaddq_s16(vaddq_s16(v538, v537), v539), 3uLL)), v170).i64[0], 0);
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
      v514 = vbslq_s8(v182, v475, v514);
      v516 = vbslq_s8(v182, v476, v516);
      v186.i64[0] = -1;
      v186.i64[1] = -1;
      v518 = vbslq_s8(v182, v478, v518);
      v520 = vbslq_s8(v182, v477, v520);
      v522 = vbslq_s8(v182, v482, v522);
      v523 = vbslq_s8(v182, v481, v523);
      v524 = vbslq_s8(v182, v484, v524);
      v525 = vbslq_s8(v182, v483, v525);
      v526 = vbslq_s8(v182, v486, v526);
      v527 = vbslq_s8(v182, v485, v527);
      v528 = vbslq_s8(v182, v490, v528);
      v529 = vbslq_s8(v182, v487, v529);
      v530 = vbslq_s8(v182, v124, v530);
      v531 = vbslq_s8(v182, v492, v531);
      v532 = vbslq_s8(v182, v127, v532);
      v533 = vbslq_s8(v182, v128, v533);
      v179 = vbslq_s8(v182, v474, v536);
      v178 = vbslq_s8(v182, v169, v537);
      v536 = v179;
      v537 = v178;
      v181 = vbslq_s8(v182, v472, v538);
      v176 = vbslq_s8(v182, v473, v539);
      v538 = v181;
      v539 = v176;
      v541 = vbslq_s8(v182, v479, v541);
      v542 = vbslq_s8(v182, v480, v542);
      v543 = vbslq_s8(v182, vandq_s8(vsubq_s16(vshlq_s16(v186, vsubq_s16(v188, v157)), v479), v166), v543);
      v175 = vbslq_s8(v182, v160, v540);
      v540 = v175;
      v125 = vbslq_s8(v182, v187, v535);
      v534 = vbslq_s8(v182, vsubq_s16(v534, vqtbl1q_s8(v534, xmmword_29D2F1270)), v534);
      v535 = v125;
    }

    v189 = v495;
    v190 = v496;
    v191 = v497;
    v192 = v498;
    if ((v185 & 1) == 0)
    {
      v193 = vqtbl4q_s8(*v189.i8, xmmword_29D2F1160);
      v194 = vsubq_s16(v495, vqtbl4q_s8(*v189.i8, xmmword_29D2F10B0));
      v195 = vsubq_s16(v497, v193);
      v196 = vsubq_s16(v498, v193);
      v544.val[0] = v503;
      v544.val[1] = v505;
      v544.val[2] = v506;
      v544.val[3].i64[0] = v471.i64[0];
      v544.val[3].i64[1] = v498.i64[1];
      v197 = vsubq_s16(v503, vqtbl4q_s8(v544, xmmword_29D2F10B0));
      v198 = vsubq_s16(v505, vqtbl4q_s8(v544, xmmword_29D2F10F0));
      v199 = vsubq_s16(v506, vqtbl4q_s8(v544, xmmword_29D2F1160));
      v200 = vsubq_s16(v471, vqtbl4q_s8(v544, xmmword_29D2F1100));
      v201 = v470.i64[0];
      v202 = v498.i64[1];
      v544.val[1] = vqtbl4q_s8(*v34.i8, xmmword_29D2F10C0);
      v203 = vsubq_s16(v34, vqtbl4q_s8(*v34.i8, xmmword_29D2F1170));
      v204 = vsubq_s16(v35, vqtbl4q_s8(*v34.i8, xmmword_29D2F1180));
      v205 = vsubq_s16(v36, vqtbl4q_s8(*v34.i8, xmmword_29D2F10B0));
      v206 = v501.i64[0];
      v207 = v498.i64[1];
      v208 = vsubq_s16(v42, vqtbl4q_s8(*v42.i8, xmmword_29D2F1170));
      v209 = vsubq_s16(v43, vqtbl4q_s8(*v42.i8, xmmword_29D2F1120));
      v210 = vsubq_s16(v44, vqtbl4q_s8(*v42.i8, xmmword_29D2F10B0));
      v211.i64[0] = v196.i64[0];
      v211.i64[1] = v194.i64[0];
      v212 = vsubq_s16(v501, vqtbl4q_s8(*v42.i8, xmmword_29D2F10C0));
      v194.i64[0] = v196.i64[1];
      v544.val[2] = vshlq_s16(v204, xmmword_29D2F12D0);
      v213 = vshlq_s16(v205, xmmword_29D2F12D0);
      v214 = vshlq_s16(vsubq_s16(v470, v544.val[1]), xmmword_29D2F12D0);
      v215 = vshlq_s16(v208, xmmword_29D2F12D0);
      v216 = vshlq_s16(v209, xmmword_29D2F12D0);
      v217 = vshlq_s16(vshlq_s16(v194, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v218 = vshlq_s16(vshlq_s16(vsubq_s16(v496, vqtbl4q_s8(*v189.i8, xmmword_29D2F10C0)), xmmword_29D2F12D0), xmmword_29D2F12E0);
      v219 = vshlq_s16(vshlq_s16(v195, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v220 = vshlq_s16(vshlq_s16(v211, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v221 = vshlq_s16(vshlq_s16(v197, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v222 = vshlq_s16(vshlq_s16(v198, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v223 = vshlq_s16(vshlq_s16(v199, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v224 = vshlq_s16(vshlq_s16(v200, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v225 = vshlq_s16(vshlq_s16(v203, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v226 = vshlq_s16(v544.val[2], xmmword_29D2F12E0);
      v227 = vshlq_s16(v214, xmmword_29D2F12E0);
      v228 = vshlq_s16(vshlq_s16(v210, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v544.val[0] = vshlq_s16(vshlq_s16(v212, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v544.val[3] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v217, v218), v219), v220), xmmword_29D2F1150);
      v229 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v217, v218), v219), v220), xmmword_29D2F1150);
      v544.val[3] = vpmaxq_s16(v544.val[3], v544.val[3]);
      v230 = vpminq_s16(v229, v229);
      v194.i64[0] = 0x8000800080008000;
      v194.i64[1] = 0x8000800080008000;
      v231 = vmaxq_s16(v544.val[3], v194);
      v194.i64[0] = 0x8000800080008000;
      v194.i64[1] = 0x8000800080008000;
      v232 = vminq_s16(v230, v194);
      v544.val[3] = vzip1q_s16(v544.val[3], v230);
      v230.i64[0] = 0x10001000100010;
      v230.i64[1] = 0x10001000100010;
      v544.val[3] = vbicq_s8(vsubq_s16(v230, vclsq_s16(v544.val[3])), vceqzq_s16(v544.val[3]));
      v233 = vpmaxq_s16(v544.val[3], v544.val[3]);
      v544.val[3] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v221, v222), v223), v224), xmmword_29D2F1150);
      v234 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v221, v222), v223), v224), xmmword_29D2F1150);
      v544.val[3] = vpmaxq_s16(v544.val[3], v544.val[3]);
      v235 = vpminq_s16(v234, v234);
      v236 = vmaxq_s16(v231, v544.val[3]);
      v237 = vminq_s16(v232, v235);
      v544.val[3] = vzip1q_s16(v544.val[3], v235);
      v544.val[3] = vbicq_s8(vsubq_s16(v230, vclsq_s16(v544.val[3])), vceqzq_s16(v544.val[3]));
      v238 = vpmaxq_s16(v544.val[3], v544.val[3]);
      v493 = vshlq_s16(v213, xmmword_29D2F12E0);
      v494 = vshlq_s16(v216, xmmword_29D2F12E0);
      v544.val[3] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v225, v226), v493), v227), xmmword_29D2F1150);
      v239 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v225, v226), v493), v227), xmmword_29D2F1150);
      v544.val[3] = vpmaxq_s16(v544.val[3], v544.val[3]);
      v240 = vpminq_s16(v239, v239);
      v241 = vmaxq_s16(v236, v544.val[3]);
      v242 = vminq_s16(v237, v240);
      v544.val[3] = vzip1q_s16(v544.val[3], v240);
      v544.val[3] = vbicq_s8(vsubq_s16(v230, vclsq_s16(v544.val[3])), vceqzq_s16(v544.val[3]));
      v243 = vpmaxq_s16(v544.val[3], v544.val[3]);
      v502 = vshlq_s16(v215, xmmword_29D2F12E0);
      v504 = v544.val[0];
      v544.val[3] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v502, v494), v228), v544.val[0]), xmmword_29D2F1150);
      v244 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v502, v494), v228), v544.val[0]), xmmword_29D2F1150);
      v544.val[3] = vpmaxq_s16(v544.val[3], v544.val[3]);
      v245 = vpminq_s16(v244, v244);
      v544.val[0] = vmaxq_s16(v241, v544.val[3]);
      v246 = vminq_s16(v242, v245);
      v544.val[3] = vzip1q_s16(v544.val[3], v245);
      v544.val[3] = vbicq_s8(vsubq_s16(v230, vclsq_s16(v544.val[3])), vceqzq_s16(v544.val[3]));
      v247 = vpmaxq_s16(v544.val[3], v544.val[3]);
      v544.val[2] = vmaxq_s16(vmaxq_s16(v233, v238), vmaxq_s16(v243, v247));
      v509 = v544.val[0];
      v248 = vclzq_s16(vsubq_s16(v544.val[0], v246));
      v249 = vsubq_s16(v230, v248);
      v250 = vcgtq_s16(v544.val[2], v249);
      v251 = vminq_s16(v249, v544.val[2]);
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
      v488 = v258;
      v489 = v257;
      v491 = vsubq_s16(v251, v255);
      v260 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v251, v250), vaddq_s16(v259, v259)), v256, v254), vshlq_n_s16(vaddq_s16(vaddq_s16(v258, v257), v491), 3uLL));
      v125 = v535;
      v179 = v536;
      v261.i64[0] = 0x2000200020002;
      v261.i64[1] = 0x2000200020002;
      v262 = vandq_s8(vceqq_s16(vandq_s8(v535, v249), v261), v230);
      v230.i64[0] = 0x8000800080008;
      v230.i64[1] = 0x8000800080008;
      v263 = vandq_s8(vaddq_s16(v125, v125), v230);
      v264 = vceqzq_s16(vandq_s8(v535, v230));
      v176 = v539;
      v175 = v540;
      v265 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v540, v264), v263), v262), v536, v254);
      v178 = v537;
      v181 = v538;
      v266 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v265, vshlq_n_s16(vaddq_s16(vaddq_s16(v538, v537), v539), 3uLL)), v260).i64[0], 0);
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
        v179 = vbslq_s8(v266, v256, v536);
        v178 = vbslq_s8(v266, v489, v537);
        v181 = vbslq_s8(v266, v488, v538);
        v176 = vbslq_s8(v266, v491, v539);
        v175 = vbslq_s8(v266, v251, v540);
        v125 = vbslq_s8(v266, v269, v535);
        v533 = vbslq_s8(v266, v504, v533);
        v534 = vbslq_s8(v266, vextq_s8(v498, v498, 8uLL), v534);
        v514 = vbslq_s8(v266, v217, v514);
        v516 = vbslq_s8(v266, v218, v516);
        v518 = vbslq_s8(v266, v219, v518);
        v520 = vbslq_s8(v266, v220, v520);
        v522 = vbslq_s8(v266, v221, v522);
        v523 = vbslq_s8(v266, v222, v523);
        v524 = vbslq_s8(v266, v223, v524);
        v525 = vbslq_s8(v266, v224, v525);
        v526 = vbslq_s8(v266, v225, v526);
        v527 = vbslq_s8(v266, v226, v527);
        v528 = vbslq_s8(v266, v493, v528);
        v529 = vbslq_s8(v266, v227, v529);
        v530 = vbslq_s8(v266, v502, v530);
        v531 = vbslq_s8(v266, v494, v531);
        v532 = vbslq_s8(v266, v228, v532);
        v541 = vbslq_s8(v266, v246, v541);
        v542 = vbslq_s8(v266, v509, v542);
        v543 = vbslq_s8(v266, v270, v543);
        v536 = v179;
        v537 = v178;
        v538 = v181;
        v539 = v176;
        v540 = v175;
        v535 = v125;
      }
    }

    v271 = vandq_s8(v543, vceqq_s16(v175, v179));
    v515 = vaddq_s16(v271, v514);
    v517 = vaddq_s16(v516, v271);
    v519 = vaddq_s16(v518, v271);
    v521 = vaddq_s16(v520, v271);
    v272 = vandq_s8(v543, vceqq_s16(v175, v178));
    v522 = vaddq_s16(v522, v272);
    v523 = vaddq_s16(v523, v272);
    v524 = vaddq_s16(v524, v272);
    v525 = vaddq_s16(v525, v272);
    v273 = vandq_s8(v543, vceqq_s16(v175, v181));
    v526 = vaddq_s16(v526, v273);
    v527 = vaddq_s16(v527, v273);
    v528 = vaddq_s16(v528, v273);
    v529 = vaddq_s16(v529, v273);
    v274 = vandq_s8(v543, vceqq_s16(v175, v176));
    v530 = vaddq_s16(v530, v274);
    v531 = vaddq_s16(v531, v274);
    v532 = vaddq_s16(v532, v274);
    v533 = vaddq_s16(v533, v274);
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
    if ((vpaddq_s16(v280, v280).i16[0] + 71) > 0x3FF)
    {
      *a1 = v512;
      *(a1 + 16) = v513;
      *(a1 + 32) = v510;
      *(a1 + 48) = v511;
      *(a1 + 64) = v507;
      *(a1 + 80) = v508;
      v286 = (a1 + 96);
      v284 = 127;
      result = 128;
      *v286 = v499;
      v286[1] = v500;
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
      v287 = v534.i64[0];
      v288 = vmovl_s16(vceqz_s16(*v175.i8));
      v289.i64[0] = v288.i32[0];
      v289.i64[1] = v288.i32[1];
      v290 = v289;
      v289.i64[0] = v288.i32[2];
      v289.i64[1] = v288.i32[3];
      v291 = v289;
      v292 = vand_s8(vadd_s16(*v175.i8, 0xF000F000F000FLL), 0xF000F000F000FLL);
      v292.i16[3] = vbic_s8(0x1000100010001, *&v175).i16[3];
      v293 = vshlq_u32(vmovl_u16(v292), xmmword_29D2F12F0);
      v289.i64[0] = v293.u32[0];
      v289.i64[1] = v293.u32[1];
      v294 = v289;
      v289.i64[0] = v293.u32[2];
      v289.i64[1] = v293.u32[3];
      v295 = vorrq_s8(vbicq_s8(v294, v290), vbicq_s8(v289, v291));
      v296 = *&vorr_s8(*v295.i8, *&vextq_s8(v295, v295, 8uLL)) | v125.i8[0] & 0x1F | (32 * (v125.i8[2] & 0x1F)) & 0x83FF | ((v125.i8[4] & 0x1F) << 10) | ((v125.i8[6] & 0xF) << 15);
      v297 = (v296 << v282) | v283;
      if (v282 >= 0x20)
      {
        *v281 = v297;
        v297 = v296 >> (-8 * (a1 & 7u));
      }

      v298 = v287 & 0x3FF | ((WORD1(v287) & 0x3FF) << 10) | ((WORD2(v287) & 0x3FF) << 20) | ((BYTE6(v287) & 3) << 30);
      v299 = (v282 + 32) & 0x38;
      v300 = v297 | (v298 << v299);
      if (v299 >= 0x20)
      {
        *(v281 + (((v282 + 32) >> 3) & 8)) = v300;
        v300 = v298 >> -v299;
      }

      v301 = vsubq_s16(v540, v536);
      v302 = vsubq_s16(v540, v537);
      v303 = vsubq_s16(v540, v538);
      v304 = vsubq_s16(v540, v539);
      *v301.i8 = vqmovn_u16(v301);
      *v302.i8 = vqmovn_u16(v302);
      *v303.i8 = vqmovn_u16(v303);
      *v304.i8 = vqmovn_u16(v304);
      v305 = vtrn1q_s8(v301, v302);
      v306 = vtrn2q_s8(v301, v302);
      v307 = vtrn1q_s8(v303, v304);
      v308 = vtrn2q_s8(v303, v304);
      v309 = vzip1q_s16(v306, v308);
      v310 = vtrn2q_s16(v306, v308);
      v306.i64[0] = vzip1q_s32(vzip1q_s16(v305, v307), v309).u64[0];
      v310.i64[0] = vzip1q_s32(vtrn2q_s16(v305, v307), v310).u64[0];
      v303.i64[0] = 0x202020202020202;
      v303.i64[1] = 0x202020202020202;
      v311 = vandq_s8(vmovl_s16(vtst_s16(*v535.i8, 0x4000400040004)), v303);
      v303.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v303.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v305.i64[0] = -1;
      v305.i64[1] = -1;
      v312 = vshlq_u8(v305, vorrq_s8(v311, v303));
      v313 = vmovl_u8(vand_s8(*v312.i8, *v306.i8));
      v314 = vmovl_u8(vand_s8(*&vextq_s8(v312, v312, 8uLL), *v310.i8));
      v315 = vmovl_u8(*v311.i8);
      v316 = vmovl_high_u8(v311);
      v317 = vpaddq_s16(vshlq_u16(v313, vtrn1q_s16(0, v315)), vshlq_u16(v314, vtrn1q_s16(0, v316)));
      v318 = vpaddq_s16(v315, v316);
      v319 = vmovl_u16(*v318.i8);
      v320 = vmovl_high_u16(v318);
      v321 = vpaddq_s32(vshlq_u32(vmovl_u16(*v317.i8), vtrn1q_s32(0, v319)), vshlq_u32(vmovl_high_u16(v317), vtrn1q_s32(0, v320)));
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
      v329 = (v327.i64[0] << v282) | v300;
      if (v328.i64[0] + v282 >= 0x40)
      {
        v281[1] = v329;
        v329 = v327.i64[0] >> (-8 * (a1 & 7u));
        if (!v282)
        {
          v329 = 0;
        }
      }

      v330 = v328.i64[0] + (v282 | 0x40);
      v331 = v329 | (v327.i64[1] << v330);
      if ((v330 & 0x3F) + v328.i64[1] >= 0x40)
      {
        *(v281 + ((v330 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v331;
        v331 = v327.i64[1] >> -(v330 & 0x3F);
        if ((v330 & 0x3F) == 0)
        {
          v331 = 0;
        }
      }

      v332 = v330 + v328.i64[1];
      v333.i64[0] = 0x8000800080008;
      v333.i64[1] = 0x8000800080008;
      v334.i64[0] = -1;
      v334.i64[1] = -1;
      v335 = vandq_s8(vextq_s8(vtstq_s16(v535, v333), 0, 8uLL), v540);
      v336.i64[0] = 0xF000F000F000FLL;
      v336.i64[1] = 0xF000F000F000FLL;
      v337 = vandq_s8(vshlq_u16(v334, vaddq_s16(v335, v336)), v543);
      v338 = vmovl_u16(*v335.i8);
      v339 = vpaddq_s32(vshlq_u32(vmovl_u16(*v337.i8), vtrn1q_s32(0, v338)), vmovl_high_u16(v337));
      v340 = vpaddq_s32(v338, vmovl_high_u16(v335));
      v341.i64[0] = v339.u32[0];
      v341.i64[1] = v339.u32[1];
      v342 = v341;
      v341.i64[0] = v339.u32[2];
      v341.i64[1] = v339.u32[3];
      v343 = v341;
      v341.i64[0] = v340.u32[0];
      v341.i64[1] = v340.u32[1];
      v344 = v341;
      v341.i64[0] = v340.u32[2];
      v341.i64[1] = v340.u32[3];
      v345 = vpaddq_s64(vshlq_u64(v342, vzip1q_s64(0, v344)), vshlq_u64(v343, vzip1q_s64(0, v341)));
      v346 = vpaddq_s64(v344, v341);
      v347 = (v345.i64[0] << v332) | v331;
      if (v346.i64[0] + (v332 & 0x3F) >= 0x40)
      {
        *(v281 + ((v332 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v347;
        v347 = v345.i64[0] >> -(v332 & 0x3F);
        if ((v332 & 0x3F) == 0)
        {
          v347 = 0;
        }
      }

      v348 = v346.i64[0] + v332;
      v349 = v347 | (v345.i64[1] << v348);
      if ((v348 & 0x3F) + v346.i64[1] >= 0x40)
      {
        *(v281 + ((v348 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v349;
        v349 = v345.i64[1] >> -(v348 & 0x3F);
        if ((v348 & 0x3F) == 0)
        {
          v349 = 0;
        }
      }

      v350 = v348 + v346.i64[1];
      v351 = vextq_s8(0, v536, 8uLL);
      v352.i64[0] = 0xF000F000F000FLL;
      v352.i64[1] = 0xF000F000F000FLL;
      v353.i64[0] = -1;
      v353.i64[1] = -1;
      v354 = vandq_s8(vshlq_u16(v353, vaddq_s16(v351, v352)), v515);
      v355 = vmovl_u16(*v351.i8);
      v356 = vmovl_high_u16(v351);
      v357 = vpaddq_s32(vmovl_u16(*v354.i8), vshlq_u32(vmovl_high_u16(v354), vtrn1q_s32(0, v356)));
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
      v365 = (v363.i64[0] << v350) | v349;
      if (v364.i64[0] + (v350 & 0x3F) >= 0x40)
      {
        *(v281 + ((v350 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
        v365 = v363.i64[0] >> -(v350 & 0x3F);
        if ((v350 & 0x3F) == 0)
        {
          v365 = 0;
        }
      }

      v366 = v364.i64[0] + v350;
      v367 = v365 | (v363.i64[1] << v366);
      if ((v366 & 0x3F) + v364.i64[1] >= 0x40)
      {
        *(v281 + ((v366 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v367;
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
      v371 = vandq_s8(vshlq_u16(v370, vaddq_s16(v536, v369)), v517);
      v372 = vmovl_u16(*v536.i8);
      v373 = vmovl_high_u16(v536);
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
        *(v281 + ((v368 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v382;
        v382 = v380.i64[0] >> -(v368 & 0x3F);
        if ((v368 & 0x3F) == 0)
        {
          v382 = 0;
        }
      }

      v383 = v381.i64[0] + v368;
      v384 = v382 | (v380.i64[1] << v383);
      if ((v383 & 0x3F) + v381.i64[1] >= 0x40)
      {
        *(v281 + ((v383 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v384;
        v384 = v380.i64[1] >> -(v383 & 0x3F);
        if ((v383 & 0x3F) == 0)
        {
          v384 = 0;
        }
      }

      v385 = v383 + v381.i64[1];
      v386.i64[0] = 0xF000F000F000FLL;
      v386.i64[1] = 0xF000F000F000FLL;
      v387.i64[0] = -1;
      v387.i64[1] = -1;
      v388 = vandq_s8(vshlq_u16(v387, vaddq_s16(v536, v386)), v519);
      v389 = vmovl_u16(*v536.i8);
      v390 = vmovl_high_u16(v536);
      v391 = vpaddq_s32(vshlq_u32(vmovl_u16(*v388.i8), vtrn1q_s32(0, v389)), vshlq_u32(vmovl_high_u16(v388), vtrn1q_s32(0, v390)));
      v392 = vpaddq_s32(v389, v390);
      v393.i64[0] = v391.u32[0];
      v393.i64[1] = v391.u32[1];
      v394 = v393;
      v393.i64[0] = v391.u32[2];
      v393.i64[1] = v391.u32[3];
      v395 = v393;
      v393.i64[0] = v392.u32[0];
      v393.i64[1] = v392.u32[1];
      v396 = v393;
      v393.i64[0] = v392.u32[2];
      v393.i64[1] = v392.u32[3];
      v397 = vpaddq_s64(vshlq_u64(v394, vzip1q_s64(0, v396)), vshlq_u64(v395, vzip1q_s64(0, v393)));
      v398 = vpaddq_s64(v396, v393);
      v399 = (v397.i64[0] << v385) | v384;
      if (v398.i64[0] + (v385 & 0x3F) >= 0x40)
      {
        *(v281 + ((v385 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v399;
        v399 = v397.i64[0] >> -(v385 & 0x3F);
        if ((v385 & 0x3F) == 0)
        {
          v399 = 0;
        }
      }

      v400 = v398.i64[0] + v385;
      v401 = v399 | (v397.i64[1] << v400);
      if ((v400 & 0x3F) + v398.i64[1] >= 0x40)
      {
        *(v281 + ((v400 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v401;
        v401 = v397.i64[1] >> -(v400 & 0x3F);
        if ((v400 & 0x3F) == 0)
        {
          v401 = 0;
        }
      }

      v402 = v400 + v398.i64[1];
      v403.i64[0] = 0xF000F000F000FLL;
      v403.i64[1] = 0xF000F000F000FLL;
      v404.i64[0] = -1;
      v404.i64[1] = -1;
      v405 = vandq_s8(vshlq_u16(v404, vaddq_s16(v536, v403)), v521);
      v406 = vmovl_u16(*v536.i8);
      v407 = vmovl_high_u16(v536);
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
      v416 = (v414.i64[0] << v402) | v401;
      if (v415.i64[0] + (v402 & 0x3F) >= 0x40)
      {
        *(v281 + ((v402 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
        v416 = v414.i64[0] >> -(v402 & 0x3F);
        if ((v402 & 0x3F) == 0)
        {
          v416 = 0;
        }
      }

      v417 = v415.i64[1];
      v418 = v415.i64[0] + v402;
      v419 = (v415.i64[0] + v402) & 0x3F;
      v420 = v416 | (v414.i64[1] << v418);
      if ((v419 + v415.i64[1]) >= 0x40)
      {
        *(v281 + ((v418 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v420;
        v420 = v414.i64[1] >> -v419;
        if (!v419)
        {
          v420 = 0;
        }
      }

      v421 = 0;
      v422.i64[0] = 0xF000F000F000FLL;
      v422.i64[1] = 0xF000F000F000FLL;
      v423.i64[0] = -1;
      v423.i64[1] = -1;
      v424 = v418 + v417;
      do
      {
        v425 = vandq_s8(vshlq_u16(v423, vaddq_s16(v537, v422)), *(&v522 + v421));
        v426 = vmovl_u16(*v537.i8);
        v427 = vmovl_high_u16(v537);
        v428 = vpaddq_s32(vshlq_u32(vmovl_u16(*v425.i8), vtrn1q_s32(0, v426)), vshlq_u32(vmovl_high_u16(v425), vtrn1q_s32(0, v427)));
        v429 = vpaddq_s32(v426, v427);
        v430.i64[0] = v428.u32[0];
        v430.i64[1] = v428.u32[1];
        v431 = v430;
        v430.i64[0] = v428.u32[2];
        v430.i64[1] = v428.u32[3];
        v432 = v430;
        v430.i64[0] = v429.u32[0];
        v430.i64[1] = v429.u32[1];
        v433 = v430;
        v430.i64[0] = v429.u32[2];
        v430.i64[1] = v429.u32[3];
        v434 = vpaddq_s64(vshlq_u64(v431, vzip1q_s64(0, v433)), vshlq_u64(v432, vzip1q_s64(0, v430)));
        v435 = vpaddq_s64(v433, v430);
        v436 = (v434.i64[0] << v424) | v420;
        if (v435.i64[0] + (v424 & 0x3F) >= 0x40)
        {
          *(v281 + ((v424 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v436;
          v436 = v434.i64[0] >> -(v424 & 0x3F);
          if ((v424 & 0x3F) == 0)
          {
            v436 = 0;
          }
        }

        v437 = v435.i64[0] + v424;
        v420 = v436 | (v434.i64[1] << v437);
        if ((v437 & 0x3F) + v435.i64[1] >= 0x40)
        {
          *(v281 + ((v437 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v420;
          v420 = v434.i64[1] >> -(v437 & 0x3F);
          if ((v437 & 0x3F) == 0)
          {
            v420 = 0;
          }
        }

        v424 = v437 + v435.i64[1];
        v421 += 16;
      }

      while (v421 != 64);
      v438 = 0;
      v439.i64[0] = 0xF000F000F000FLL;
      v439.i64[1] = 0xF000F000F000FLL;
      v440.i64[0] = -1;
      v440.i64[1] = -1;
      do
      {
        v441 = vandq_s8(vshlq_u16(v440, vaddq_s16(v538, v439)), *(&v526 + v438));
        v442 = vmovl_u16(*v538.i8);
        v443 = vmovl_high_u16(v538);
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
        v452 = (v450.i64[0] << v424) | v420;
        if (v451.i64[0] + (v424 & 0x3F) >= 0x40)
        {
          *(v281 + ((v424 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v452;
          v452 = v450.i64[0] >> -(v424 & 0x3F);
          if ((v424 & 0x3F) == 0)
          {
            v452 = 0;
          }
        }

        v453 = v451.i64[0] + v424;
        v420 = v452 | (v450.i64[1] << v453);
        if ((v453 & 0x3F) + v451.i64[1] >= 0x40)
        {
          *(v281 + ((v453 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v420;
          v420 = v450.i64[1] >> -(v453 & 0x3F);
          if ((v453 & 0x3F) == 0)
          {
            v420 = 0;
          }
        }

        v424 = v453 + v451.i64[1];
        v438 += 16;
      }

      while (v438 != 64);
      v454 = 0;
      v455.i64[0] = 0xF000F000F000FLL;
      v455.i64[1] = 0xF000F000F000FLL;
      v456.i64[0] = -1;
      v456.i64[1] = -1;
      do
      {
        v457 = vandq_s8(vshlq_u16(v456, vaddq_s16(v539, v455)), *(&v530 + v454));
        v458 = vmovl_u16(*v539.i8);
        v459 = vmovl_high_u16(v539);
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
        v468 = (v466.i64[0] << v424) | v420;
        if (v467.i64[0] + (v424 & 0x3F) >= 0x40)
        {
          *(v281 + ((v424 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v468;
          v468 = v466.i64[0] >> -(v424 & 0x3F);
          if ((v424 & 0x3F) == 0)
          {
            v468 = 0;
          }
        }

        v469 = v467.i64[0] + v424;
        v420 = v468 | (v466.i64[1] << v469);
        if ((v469 & 0x3F) + v467.i64[1] >= 0x40)
        {
          *(v281 + ((v469 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v420;
          v420 = v466.i64[1] >> -(v469 & 0x3F);
          if ((v469 & 0x3F) == 0)
          {
            v420 = 0;
          }
        }

        v424 = v469 + v467.i64[1];
        v454 += 16;
      }

      while (v454 != 64);
      if ((v424 & 0x3F) != 0)
      {
        *(v281 + ((v424 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v420;
      }

      result = (v424 - v282 + 7) >> 3;
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

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 4, a2, v14, v13);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, (v11 + v15), a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v15 + 64), a2, v20, v19);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 8, a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 12, a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + v15 + 128), a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + v15 + 192), a2, v30, v29);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
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
  v19 = vzip1q_s64(v15, *v14);
  v20 = vzip2q_s64(v15, *v14);
  v21 = vzip1q_s64(v16, v18);
  v22 = vzip2q_s64(v16, v18);
  v23.i64[0] = v11.u32[0];
  v23.i64[1] = v11.u32[1];
  v24 = v23;
  v23.i64[0] = v11.u32[2];
  v23.i64[1] = v11.u32[3];
  v25 = vbslq_s8(xmmword_29D2F1290, v24, 0);
  v26 = vbslq_s8(xmmword_29D2F1290, v23, 0);
  v23.i64[0] = v12.u32[0];
  v23.i64[1] = v12.u32[1];
  v27 = v23;
  v23.i64[0] = v12.u32[2];
  v23.i64[1] = v12.u32[3];
  v28 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v11.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v11.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v11.i8, 6uLL), v25)));
  v29 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v11, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v11, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v11, 6uLL), v26)));
  v30 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v12.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v12.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v12.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v27, 0))));
  v31 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v12, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v12, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v12, 6uLL), vbslq_s8(xmmword_29D2F1290, v23, 0))));
  v23.i64[0] = v19.u32[0];
  v23.i64[1] = v19.u32[1];
  v32 = v23;
  v23.i64[0] = v19.u32[2];
  v23.i64[1] = v19.u32[3];
  v33 = vbslq_s8(xmmword_29D2F1290, v32, 0);
  v34 = vbslq_s8(xmmword_29D2F1290, v23, 0);
  v23.i64[0] = v20.u32[0];
  v23.i64[1] = v20.u32[1];
  v35 = v23;
  v23.i64[0] = v20.u32[2];
  v23.i64[1] = v20.u32[3];
  v36 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v19.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v19.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v19.i8, 6uLL), v33)));
  v37 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v19, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v19, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v19, 6uLL), v34)));
  v38 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v20.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v20.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v20.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v35, 0))));
  v39 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v20, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v20, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v20, 6uLL), vbslq_s8(xmmword_29D2F1290, v23, 0))));
  v23.i64[0] = v13.u32[0];
  v23.i64[1] = v13.u32[1];
  v40 = v23;
  v23.i64[0] = v13.u32[2];
  v23.i64[1] = v13.u32[3];
  v41 = vbslq_s8(xmmword_29D2F1290, v40, 0);
  v42 = vbslq_s8(xmmword_29D2F1290, v23, 0);
  v23.i64[0] = v17.u32[0];
  v23.i64[1] = v17.u32[1];
  v43 = v23;
  v23.i64[0] = v17.u32[2];
  v23.i64[1] = v17.u32[3];
  v44 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v13.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v13.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v13.i8, 6uLL), v41)));
  v45 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v13, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v13, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v13, 6uLL), v42)));
  v46 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v17.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v17.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v17.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v43, 0))));
  v47 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v17, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v17, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v17, 6uLL), vbslq_s8(xmmword_29D2F1290, v23, 0))));
  v23.i64[0] = v21.u32[0];
  v23.i64[1] = v21.u32[1];
  v48 = v23;
  v23.i64[0] = v21.u32[2];
  v23.i64[1] = v21.u32[3];
  v49 = vbslq_s8(xmmword_29D2F1290, v48, 0);
  v50 = vbslq_s8(xmmword_29D2F1290, v23, 0);
  v23.i64[0] = v22.u32[0];
  v23.i64[1] = v22.u32[1];
  v51 = v23;
  v23.i64[0] = v22.u32[2];
  v23.i64[1] = v22.u32[3];
  v52 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v21.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v21.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v21.i8, 6uLL), v49)));
  v53 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v21, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v21, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v21, 6uLL), v50)));
  v54 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v22.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v22.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v22.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v51, 0))));
  v55 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v22, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v22, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v22, 6uLL), vbslq_s8(xmmword_29D2F1290, v23, 0))));
  v56 = vdupq_lane_s64(v28.i64[0], 0);
  v507 = v39;
  v57 = vsubq_s16(v39, v56);
  v509 = vshlq_s16(vshlq_s16(vsubq_s16(v28, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v511 = vshlq_s16(vshlq_s16(vsubq_s16(v29, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v513 = vshlq_s16(vshlq_s16(vsubq_s16(v30, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v515 = vshlq_s16(vshlq_s16(vsubq_s16(v31, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v517 = vshlq_s16(vshlq_s16(vsubq_s16(v36, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v518 = vshlq_s16(vshlq_s16(vsubq_s16(v37, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v58 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v509, v511), v513), v515), xmmword_29D2F1150);
  v59 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v509, v511), v513), v515), xmmword_29D2F1150);
  v60 = vpmaxq_s16(v58, v58);
  v61 = vpminq_s16(v59, v59);
  v62 = vzip1q_s16(v60, v61);
  v58.i64[0] = 0x10001000100010;
  v58.i64[1] = 0x10001000100010;
  v63 = vbicq_s8(vsubq_s16(v58, vclsq_s16(v62)), vceqzq_s16(v62));
  v519 = vshlq_s16(vshlq_s16(vsubq_s16(v38, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v520 = vshlq_s16(vshlq_s16(v57, xmmword_29D2F12D0), xmmword_29D2F12E0);
  v64.i64[0] = 0x8000800080008000;
  v64.i64[1] = 0x8000800080008000;
  v57.i64[0] = 0x8000800080008000;
  v57.i64[1] = 0x8000800080008000;
  v65 = vminq_s16(v61, v57);
  v66 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v517, v518), v519), v520), xmmword_29D2F1150);
  v67 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v517, v518), v519), v520), xmmword_29D2F1150);
  v68 = vpmaxq_s16(v66, v66);
  v69 = vpminq_s16(v67, v67);
  v70 = vmaxq_s16(vmaxq_s16(v60, v64), v68);
  v71 = vminq_s16(v65, v69);
  v72 = vzip1q_s16(v68, v69);
  v73 = vbicq_s8(vsubq_s16(v58, vclsq_s16(v72)), vceqzq_s16(v72));
  v521 = vshlq_s16(vshlq_s16(vsubq_s16(v44, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v522 = vshlq_s16(vshlq_s16(vsubq_s16(v45, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v74 = vshlq_s16(vshlq_s16(vsubq_s16(v46, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v75 = vminq_s16(vminq_s16(v521, v522), v74);
  v523 = v74;
  v524 = vshlq_s16(vshlq_s16(vsubq_s16(v47, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v76 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v521, v522), v74), v524), xmmword_29D2F1150);
  v77 = vqtbl1q_s8(vminq_s16(v75, v524), xmmword_29D2F1150);
  v78 = vpmaxq_s16(v76, v76);
  v79 = vpminq_s16(v77, v77);
  v80 = vmaxq_s16(v70, v78);
  v81 = vminq_s16(v71, v79);
  v82 = vzip1q_s16(v78, v79);
  v83 = vbicq_s8(vsubq_s16(v58, vclsq_s16(v82)), vceqzq_s16(v82));
  v525 = vshlq_s16(vshlq_s16(vsubq_s16(v52, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v526 = vshlq_s16(vshlq_s16(vsubq_s16(v53, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v529 = v56;
  v527 = vshlq_s16(vshlq_s16(vsubq_s16(v54, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v528 = vshlq_s16(vshlq_s16(vsubq_s16(v55, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v84 = vpmaxq_s16(v63, v63);
  v85 = vpmaxq_s16(v73, v73);
  v86 = vpmaxq_s16(v83, v83);
  v87 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v525, v526), v527), v528), xmmword_29D2F1150);
  v88 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v525, v526), v527), v528), xmmword_29D2F1150);
  v89 = vpmaxq_s16(v87, v87);
  v90 = vpminq_s16(v88, v88);
  v91 = vmaxq_s16(v80, v89);
  v92 = vminq_s16(v81, v90);
  v93 = vzip1q_s16(v89, v90);
  v94 = vbicq_s8(vsubq_s16(v58, vclsq_s16(v93)), vceqzq_s16(v93));
  v95 = vpmaxq_s16(v94, v94);
  v96 = vmaxq_s16(vmaxq_s16(v84, v85), vmaxq_s16(v86, v95));
  v97 = vclzq_s16(vsubq_s16(v91, v92));
  v98.i64[0] = 0xF000F000F000FLL;
  v98.i64[1] = 0xF000F000F000FLL;
  v99.i64[0] = -1;
  v99.i64[1] = -1;
  v536 = v92;
  v537 = v91;
  v100 = vsubq_s16(vshlq_s16(v99, vsubq_s16(v98, v97)), v92);
  v101 = vsubq_s16(v58, v97);
  v102 = vcgtq_s16(v96, v101);
  v103 = vminq_s16(v101, v96);
  v538 = vandq_s8(v100, v102);
  v100.i64[0] = 0x8000800080008;
  v100.i64[1] = 0x8000800080008;
  v58.i64[0] = 0x3000300030003;
  v58.i64[1] = 0x3000300030003;
  v104 = vorrq_s8(vandq_s8(vceqzq_s16(v103), v58), vorrq_s8(vandq_s8(v102, v100), 0));
  v105 = vmaxq_s16(vminq_s16(vsubq_s16(v103, v85), v58), 0);
  v106 = vmaxq_s16(vminq_s16(vsubq_s16(v103, v86), v58), 0);
  v532 = vsubq_s16(v103, v105);
  v533 = vsubq_s16(v103, v106);
  v107 = vmaxq_s16(vminq_s16(vsubq_s16(v103, v95), v58), 0);
  v534 = vsubq_s16(v103, v107);
  v535 = v103;
  v108 = vaddq_s16(v107, v106);
  v109 = vmaxq_s16(vminq_s16(vsubq_s16(v103, v84), v58), 0);
  v110 = vsubq_s16(v103, v109);
  v111 = vceqq_s16(v108, vnegq_s16(vaddq_s16(v109, v105)));
  v109.i64[0] = 0x4000400040004;
  v109.i64[1] = 0x4000400040004;
  v112 = vorrq_s8(vbicq_s8(v109, v111), v104);
  v530 = v112;
  v531 = v110;
  if (vmaxvq_s16(v103))
  {
    v475 = v55;
    v476 = v47;
    v477 = v36;
    v478 = v37;
    v479 = v38;
    v501.val[0] = v28;
    v501.val[1] = v29;
    v501.val[2] = v30;
    v501.val[3] = v31;
    v504 = v104;
    v113 = vshlq_s16(vshlq_s16(vsubq_s16(v525, vqtbl1q_s8(v525, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v114 = vshlq_s16(vshlq_s16(vsubq_s16(v526, vqtbl1q_s8(v526, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v115 = vshlq_s16(vshlq_s16(vsubq_s16(v528, vqtbl1q_s8(v528, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v485 = vshlq_s16(vshlq_s16(vsubq_s16(v509, vqtbl1q_s8(v509, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v486 = vshlq_s16(vshlq_s16(vsubq_s16(v511, vqtbl1q_s8(v511, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v487 = vshlq_s16(vshlq_s16(vsubq_s16(v515, vqtbl1q_s8(v515, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v488 = vshlq_s16(vshlq_s16(vsubq_s16(v513, vqtbl1q_s8(v513, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v116 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v485, v486), v488), v487), xmmword_29D2F1150);
    v117 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v485, v486), v488), v487), xmmword_29D2F1150);
    v118 = vpmaxq_s16(v116, v116);
    v119 = vpminq_s16(v117, v117);
    v120.i64[0] = 0x8000800080008000;
    v120.i64[1] = 0x8000800080008000;
    v121 = vmaxq_s16(v118, v120);
    v122.i64[0] = 0x8000800080008000;
    v122.i64[1] = 0x8000800080008000;
    v123 = vminq_s16(v119, v122);
    v124 = vzip1q_s16(v118, v119);
    v125.i64[0] = 0x10001000100010;
    v125.i64[1] = 0x10001000100010;
    v126 = vbicq_s8(vsubq_s16(v125, vclsq_s16(v124)), vceqzq_s16(v124));
    v127 = vpmaxq_s16(v126, v126);
    v491 = vshlq_s16(vshlq_s16(vsubq_s16(v518, vqtbl1q_s8(v518, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v492 = vshlq_s16(vshlq_s16(vsubq_s16(v517, vqtbl1q_s8(v517, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v493 = vshlq_s16(vshlq_s16(vsubq_s16(v520, vqtbl1q_s8(v520, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v494 = vshlq_s16(vshlq_s16(vsubq_s16(v519, vqtbl1q_s8(v519, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v128 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v492, v491), v494), v493), xmmword_29D2F1150);
    v129 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v492, v491), v494), v493), xmmword_29D2F1150);
    v130 = vpmaxq_s16(v128, v128);
    v131 = vpminq_s16(v129, v129);
    v132 = vmaxq_s16(v121, v130);
    v133 = vminq_s16(v123, v131);
    v134 = vzip1q_s16(v130, v131);
    v135.i64[0] = 0x10001000100010;
    v135.i64[1] = 0x10001000100010;
    v136 = vbicq_s8(vsubq_s16(v125, vclsq_s16(v134)), vceqzq_s16(v134));
    v137 = vpmaxq_s16(v136, v136);
    v495 = vshlq_s16(vshlq_s16(vsubq_s16(v522, vqtbl1q_s8(v522, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v496 = vshlq_s16(vshlq_s16(vsubq_s16(v521, vqtbl1q_s8(v521, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v502 = vshlq_s16(vshlq_s16(vsubq_s16(v523, vqtbl1q_s8(v523, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v498 = vshlq_s16(vshlq_s16(vsubq_s16(v524, vqtbl1q_s8(v524, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v138 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v496, v495), v502), v498), xmmword_29D2F1150);
    v139 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v496, v495), v502), v498), xmmword_29D2F1150);
    v140 = vpmaxq_s16(v138, v138);
    v141 = vpminq_s16(v139, v139);
    v142 = vmaxq_s16(v132, v140);
    v143 = vminq_s16(v133, v141);
    v144 = vzip1q_s16(v140, v141);
    v145 = vbicq_s8(vsubq_s16(v135, vclsq_s16(v144)), vceqzq_s16(v144));
    v146 = vpmaxq_s16(v145, v145);
    v480 = vshlq_s16(vshlq_s16(vsubq_s16(v527, vqtbl1q_s8(v527, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v147 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v113, v114), v480), v115), xmmword_29D2F1150);
    v148 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v113, v114), v480), v115), xmmword_29D2F1150);
    v149 = vpmaxq_s16(v147, v147);
    v150 = vpminq_s16(v148, v148);
    v151 = vmaxq_s16(v142, v149);
    v152 = vminq_s16(v143, v150);
    v153 = vzip1q_s16(v149, v150);
    v150.i64[0] = 0x10001000100010;
    v150.i64[1] = 0x10001000100010;
    v154 = vbicq_s8(vsubq_s16(v150, vclsq_s16(v153)), vceqzq_s16(v153));
    v155 = vpmaxq_s16(v154, v154);
    v156 = vmaxq_s16(vmaxq_s16(v127, v137), vmaxq_s16(v146, v155));
    v489 = v152;
    v490 = v151;
    v157 = vclzq_s16(vsubq_s16(v151, v152));
    v158 = vsubq_s16(v150, v157);
    v151.i64[0] = 0x10001000100010;
    v151.i64[1] = 0x10001000100010;
    v159 = vcgtq_s16(v156, v158);
    v160 = vminq_s16(v158, v156);
    v158.i64[0] = 0x3000300030003;
    v158.i64[1] = 0x3000300030003;
    v161 = vmaxq_s16(vminq_s16(vsubq_s16(v160, v127), v158), 0);
    v162 = vmaxq_s16(vminq_s16(vsubq_s16(v160, v137), v158), 0);
    v163 = vmaxq_s16(vminq_s16(vsubq_s16(v160, v146), v158), 0);
    v152.i64[0] = 0x3000300030003;
    v152.i64[1] = 0x3000300030003;
    v164 = vmaxq_s16(vminq_s16(vsubq_s16(v160, v155), v158), 0);
    v150.i64[0] = 0x4000400040004;
    v150.i64[1] = 0x4000400040004;
    v165 = vbicq_s8(v150, vceqq_s16(vaddq_s16(v164, v163), vnegq_s16(vaddq_s16(v161, v162))));
    v158.i64[0] = 0x18001800180018;
    v158.i64[1] = 0x18001800180018;
    v166 = v159;
    v167 = vbslq_s8(v159, v158, v151);
    v482 = vsubq_s16(v160, v162);
    v483 = vsubq_s16(v160, v163);
    v484 = vsubq_s16(v160, v164);
    v163.i64[0] = 0x7000700070007;
    v163.i64[1] = 0x7000700070007;
    v481 = vsubq_s16(v160, v161);
    v161.i64[0] = 0x8000800080008;
    v161.i64[1] = 0x8000800080008;
    v150.i64[0] = 0x2000200020002;
    v150.i64[1] = 0x2000200020002;
    v169 = v534;
    v168 = v535;
    v170 = vaddq_s16(vaddq_s16(vbicq_s8(v535, vceqzq_s16(vandq_s8(v504, v161))), vandq_s8(vceqq_s16(vandq_s8(v504, v152), v150), v151)), vandq_s8(vaddq_s16(v112, v112), v161));
    v171 = v531;
    v172 = v532;
    v173 = v533;
    v174 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vmlaq_s16(v170, v531, v163), vshlq_n_s16(vaddq_s16(vaddq_s16(v533, v532), v534), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v160, vceqzq_s16((*&v167 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v165, v165)), v481, v163), vshlq_n_s16(vaddq_s16(vaddq_s16(v483, v482), v484), 3uLL))).i64[0], 0);
    v175 = vaddvq_s16(v174);
    v177 = a5 < 4 || a6 < 2;
    if (v175)
    {
      v178.i64[0] = 0x3000300030003;
      v178.i64[1] = 0x3000300030003;
      v179 = vorrq_s8(vandq_s8(vceqzq_s16(v160), v178), v167);
      v180 = v114;
      v181 = vorrq_s8(v179, v165);
      v179.i64[0] = 0xF000F000F000FLL;
      v179.i64[1] = 0xF000F000F000FLL;
      v509 = vbslq_s8(v174, v485, v509);
      v511 = vbslq_s8(v174, v486, v511);
      v178.i64[0] = -1;
      v178.i64[1] = -1;
      v513 = vbslq_s8(v174, v488, v513);
      v515 = vbslq_s8(v174, v487, v515);
      v517 = vbslq_s8(v174, v492, v517);
      v518 = vbslq_s8(v174, v491, v518);
      v519 = vbslq_s8(v174, v494, v519);
      v520 = vbslq_s8(v174, v493, v520);
      v521 = vbslq_s8(v174, v496, v521);
      v522 = vbslq_s8(v174, v495, v522);
      v523 = vbslq_s8(v174, v502, v523);
      v524 = vbslq_s8(v174, v498, v524);
      v525 = vbslq_s8(v174, v113, v525);
      v526 = vbslq_s8(v174, v180, v526);
      v527 = vbslq_s8(v174, v480, v527);
      v528 = vbslq_s8(v174, v115, v528);
      v171 = vbslq_s8(v174, v481, v531);
      v172 = vbslq_s8(v174, v482, v532);
      v531 = v171;
      v532 = v172;
      v173 = vbslq_s8(v174, v483, v533);
      v169 = vbslq_s8(v174, v484, v534);
      v533 = v173;
      v534 = v169;
      v537 = vbslq_s8(v174, v490, v537);
      v538 = vbslq_s8(v174, vandq_s8(vsubq_s16(vshlq_s16(v178, vsubq_s16(v179, v157)), v489), v166), v538);
      v168 = vbslq_s8(v174, v160, v535);
      v535 = v168;
      v536 = vbslq_s8(v174, v489, v536);
      v112 = vbslq_s8(v174, v181, v530);
      v529 = vbslq_s8(v174, vsubq_s16(v529, vqtbl1q_s8(v529, xmmword_29D2F1270)), v529);
      v530 = v112;
    }

    if (!v177)
    {
      v182 = vqtbl4q_s8(v501, xmmword_29D2F1160);
      v183 = vsubq_s16(v501.val[0], vqtbl4q_s8(v501, xmmword_29D2F10B0));
      v184 = vsubq_s16(v501.val[2], v182);
      v185 = vsubq_s16(v501.val[3], v182);
      v539.val[0] = v477;
      v539.val[1] = v478;
      v539.val[2] = v479;
      v539.val[3].i64[0] = v507.i64[0];
      v539.val[3].i64[1] = v501.val[3].i64[1];
      v186 = vsubq_s16(v477, vqtbl4q_s8(v539, xmmword_29D2F10B0));
      v187 = vsubq_s16(v478, vqtbl4q_s8(v539, xmmword_29D2F10F0));
      v188 = vsubq_s16(v479, vqtbl4q_s8(v539, xmmword_29D2F1160));
      v189 = vsubq_s16(v507, vqtbl4q_s8(v539, xmmword_29D2F1100));
      v190 = v476.i64[0];
      v191 = v501.val[3].i64[1];
      v539.val[1] = vqtbl4q_s8(*v44.i8, xmmword_29D2F10C0);
      v192 = vsubq_s16(v44, vqtbl4q_s8(*v44.i8, xmmword_29D2F1170));
      v193 = vsubq_s16(v45, vqtbl4q_s8(*v44.i8, xmmword_29D2F1180));
      v194 = vsubq_s16(v46, vqtbl4q_s8(*v44.i8, xmmword_29D2F10B0));
      v195 = v475.i64[0];
      v196 = v501.val[3].i64[1];
      v539.val[0] = vsubq_s16(v52, vqtbl4q_s8(*v52.i8, xmmword_29D2F1170));
      v197 = vsubq_s16(v53, vqtbl4q_s8(*v52.i8, xmmword_29D2F1120));
      v198 = vsubq_s16(v54, vqtbl4q_s8(*v52.i8, xmmword_29D2F10B0));
      v199.i64[0] = v185.i64[0];
      v199.i64[1] = v183.i64[0];
      v200 = vsubq_s16(v475, vqtbl4q_s8(*v52.i8, xmmword_29D2F10C0));
      v183.i64[0] = v185.i64[1];
      v201 = vshlq_s16(v183, xmmword_29D2F12D0);
      v202 = vshlq_s16(v184, xmmword_29D2F12D0);
      v203 = vshlq_s16(v192, xmmword_29D2F12D0);
      v204 = vshlq_s16(v193, xmmword_29D2F12D0);
      v205 = vshlq_s16(vsubq_s16(v476, v539.val[1]), xmmword_29D2F12D0);
      v539.val[1] = vshlq_s16(v197, xmmword_29D2F12D0);
      v206 = vshlq_s16(v201, xmmword_29D2F12E0);
      v207 = vshlq_s16(vshlq_s16(vsubq_s16(v501.val[1], vqtbl4q_s8(v501, xmmword_29D2F10C0)), xmmword_29D2F12D0), xmmword_29D2F12E0);
      v208 = vshlq_s16(v202, xmmword_29D2F12E0);
      v209 = vshlq_s16(vshlq_s16(v199, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v210 = vshlq_s16(vshlq_s16(v186, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v211 = vshlq_s16(vshlq_s16(v187, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v212 = vshlq_s16(vshlq_s16(v188, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v213 = vshlq_s16(vshlq_s16(v189, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v214 = vshlq_s16(v203, xmmword_29D2F12E0);
      v215 = vshlq_s16(v204, xmmword_29D2F12E0);
      v216 = vshlq_s16(vshlq_s16(v194, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v217 = vshlq_s16(v205, xmmword_29D2F12E0);
      v539.val[2] = vshlq_s16(vshlq_s16(v539.val[0], xmmword_29D2F12D0), xmmword_29D2F12E0);
      v218 = vshlq_s16(v539.val[1], xmmword_29D2F12E0);
      v219 = vshlq_s16(vshlq_s16(v198, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v220 = vshlq_s16(vshlq_s16(v200, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v221 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v206, v207), v208), v209), xmmword_29D2F1150);
      v222 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v206, v207), v208), v209), xmmword_29D2F1150);
      v223 = vpmaxq_s16(v221, v221);
      v224 = vpminq_s16(v222, v222);
      v200.i64[0] = 0x8000800080008000;
      v200.i64[1] = 0x8000800080008000;
      v225 = vmaxq_s16(v223, v200);
      v186.i64[0] = 0x8000800080008000;
      v186.i64[1] = 0x8000800080008000;
      v226 = vminq_s16(v224, v186);
      v227 = vzip1q_s16(v223, v224);
      v205.i64[0] = 0x10001000100010;
      v205.i64[1] = 0x10001000100010;
      v228 = vbicq_s8(vsubq_s16(v205, vclsq_s16(v227)), vceqzq_s16(v227));
      v229 = vpmaxq_s16(v228, v228);
      v230 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v210, v211), v212), v213), xmmword_29D2F1150);
      v231 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v210, v211), v212), v213), xmmword_29D2F1150);
      v232 = vpmaxq_s16(v230, v230);
      v233 = vpminq_s16(v231, v231);
      v234 = vmaxq_s16(v225, v232);
      v235 = vminq_s16(v226, v233);
      v236 = vzip1q_s16(v232, v233);
      v237 = vbicq_s8(vsubq_s16(v205, vclsq_s16(v236)), vceqzq_s16(v236));
      v238 = vpmaxq_s16(v237, v237);
      v239 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v214, v215), v216), v217), xmmword_29D2F1150);
      v240 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v214, v215), v216), v217), xmmword_29D2F1150);
      v241 = vpmaxq_s16(v239, v239);
      v242 = vpminq_s16(v240, v240);
      v243 = vmaxq_s16(v234, v241);
      v244 = vminq_s16(v235, v242);
      v245 = vzip1q_s16(v241, v242);
      v246 = vbicq_s8(vsubq_s16(v205, vclsq_s16(v245)), vceqzq_s16(v245));
      v247 = vpmaxq_s16(v246, v246);
      v505 = v539.val[2];
      v506 = v220;
      v508 = v219;
      v248 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v539.val[2], v218), v219), v220), xmmword_29D2F1150);
      v249 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v539.val[2], v218), v219), v220), xmmword_29D2F1150);
      v250 = vpmaxq_s16(v248, v248);
      v251 = vpminq_s16(v249, v249);
      v252 = vmaxq_s16(v243, v250);
      v253 = vminq_s16(v244, v251);
      v254 = vzip1q_s16(v250, v251);
      v255 = vbicq_s8(vsubq_s16(v205, vclsq_s16(v254)), vceqzq_s16(v254));
      v256 = vpmaxq_s16(v255, v255);
      v257 = vmaxq_s16(vmaxq_s16(v229, v238), vmaxq_s16(v247, v256));
      v503 = v252;
      v258 = vclzq_s16(vsubq_s16(v252, v253));
      v259 = vsubq_s16(v205, v258);
      v260 = vcgtq_s16(v257, v259);
      v261 = vminq_s16(v259, v257);
      v257.i64[0] = 0x3000300030003;
      v257.i64[1] = 0x3000300030003;
      v262 = vmaxq_s16(vminq_s16(vsubq_s16(v261, v229), v257), 0);
      v263 = vmaxq_s16(vminq_s16(vsubq_s16(v261, v238), v257), 0);
      v264 = vmaxq_s16(vminq_s16(vsubq_s16(v261, v247), v257), 0);
      v265 = vmaxq_s16(vminq_s16(vsubq_s16(v261, v256), v257), 0);
      v266 = vsubq_s16(v261, v262);
      v539.val[1] = vsubq_s16(v261, v263);
      v267 = vsubq_s16(v261, v265);
      v268 = vceqq_s16(vaddq_s16(v265, v264), vnegq_s16(vaddq_s16(v262, v263)));
      v263.i64[0] = 0x4000400040004;
      v263.i64[1] = 0x4000400040004;
      v269 = vbicq_s8(v263, v268);
      v265.i64[0] = 0x7000700070007;
      v265.i64[1] = 0x7000700070007;
      v497 = vsubq_s16(v261, v264);
      v499 = v539.val[1];
      v500 = v267;
      v270 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v261, v260), vaddq_s16(v269, v269)), v266, v265), vshlq_n_s16(vaddq_s16(vaddq_s16(v497, v539.val[1]), v267), 3uLL));
      v112 = v530;
      v271 = v531;
      v272.i64[0] = 0x2000200020002;
      v272.i64[1] = 0x2000200020002;
      v273 = vandq_s8(vceqq_s16(vandq_s8(v530, v257), v272), v205);
      v257.i64[0] = 0x8000800080008;
      v257.i64[1] = 0x8000800080008;
      v169 = v534;
      v168 = v535;
      v172 = v532;
      v173 = v533;
      v274 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v535, vceqzq_s16(vandq_s8(v530, v257))), vandq_s8(vaddq_s16(v112, v112), v257)), v273), v531, v265), vshlq_n_s16(vaddq_s16(vaddq_s16(v533, v532), v534), 3uLL)), v270).i64[0], 0);
      if (vaddvq_s16(v274))
      {
        v275.i64[0] = 0x9000900090009;
        v275.i64[1] = 0x9000900090009;
        v276 = vorrq_s8(vandq_s8(vceqzq_s16(v261), v272), vsubq_s16(vandq_s8(v260, v275), vmvnq_s8(v260)));
        v275.i64[0] = -1;
        v275.i64[1] = -1;
        v277.i64[0] = 0xF000F000F000FLL;
        v277.i64[1] = 0xF000F000F000FLL;
        v271 = vbslq_s8(v274, v266, v531);
        v172 = vbslq_s8(v274, v499, v532);
        v173 = vbslq_s8(v274, v497, v533);
        v169 = vbslq_s8(v274, v500, v534);
        v168 = vbslq_s8(v274, v261, v535);
        v112 = vbslq_s8(v274, vorrq_s8(v276, v269), v530);
        v528 = vbslq_s8(v274, v506, v528);
        v529 = vbslq_s8(v274, vextq_s8(v501.val[3], v501.val[3], 8uLL), v529);
        v509 = vbslq_s8(v274, v206, v509);
        v511 = vbslq_s8(v274, v207, v511);
        v513 = vbslq_s8(v274, v208, v513);
        v515 = vbslq_s8(v274, v209, v515);
        v517 = vbslq_s8(v274, v210, v517);
        v518 = vbslq_s8(v274, v211, v518);
        v519 = vbslq_s8(v274, v212, v519);
        v520 = vbslq_s8(v274, v213, v520);
        v521 = vbslq_s8(v274, v214, v521);
        v522 = vbslq_s8(v274, v215, v522);
        v523 = vbslq_s8(v274, v216, v523);
        v524 = vbslq_s8(v274, v217, v524);
        v525 = vbslq_s8(v274, v505, v525);
        v526 = vbslq_s8(v274, v218, v526);
        v527 = vbslq_s8(v274, v508, v527);
        v536 = vbslq_s8(v274, v253, v536);
        v537 = vbslq_s8(v274, v503, v537);
        v538 = vbslq_s8(v274, vandq_s8(vsubq_s16(vshlq_s16(v275, vsubq_s16(v277, v258)), v253), v260), v538);
        v531 = v271;
        v532 = v172;
        v533 = v173;
        v534 = v169;
        v535 = v168;
        v530 = v112;
      }

      v171 = v271;
    }

    v278 = vandq_s8(v538, vceqq_s16(v168, v171));
    v510 = vaddq_s16(v278, v509);
    v512 = vaddq_s16(v511, v278);
    v514 = vaddq_s16(v513, v278);
    v516 = vaddq_s16(v515, v278);
    v279 = vandq_s8(v538, vceqq_s16(v168, v172));
    v517 = vaddq_s16(v517, v279);
    v518 = vaddq_s16(v518, v279);
    v519 = vaddq_s16(v519, v279);
    v520 = vaddq_s16(v520, v279);
    v280 = vandq_s8(v538, vceqq_s16(v168, v173));
    v521 = vaddq_s16(v521, v280);
    v522 = vaddq_s16(v522, v280);
    v523 = vaddq_s16(v523, v280);
    v524 = vaddq_s16(v524, v280);
    v281 = vandq_s8(v538, vceqq_s16(v168, v169));
    v525 = vaddq_s16(v525, v281);
    v526 = vaddq_s16(v526, v281);
    v527 = vaddq_s16(v527, v281);
    v528 = vaddq_s16(v528, v281);
    v281.i64[0] = 0x8000800080008;
    v281.i64[1] = 0x8000800080008;
    v282.i64[0] = 0x3000300030003;
    v282.i64[1] = 0x3000300030003;
    v283.i64[0] = 0x2000200020002;
    v283.i64[1] = 0x2000200020002;
    v284 = vceqq_s16(vandq_s8(v112, v282), v283);
    v283.i64[0] = 0x10001000100010;
    v283.i64[1] = 0x10001000100010;
    v285 = vandq_s8(v284, v283);
    v283.i64[0] = 0x7000700070007;
    v283.i64[1] = 0x7000700070007;
    v286 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v168, vceqzq_s16(vandq_s8(v112, v281))), vandq_s8(vaddq_s16(v112, v112), v281)), v285), v171, v283), vshlq_n_s16(vaddq_s16(vaddq_s16(v173, v172), v169), 3uLL));
    v287 = vpaddq_s16(v286, v286);
    if ((vpaddq_s16(v287, v287).i16[0] - 449) < 0xFFFFFFFFFFFFFDF8)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 64;
    }

    else
    {
      v288 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v289 = 8 * (a1 & 7);
      if (v289)
      {
        v290 = *v288 & ~(-1 << v289);
      }

      else
      {
        v290 = 0;
      }

      *a2 = 0;
      v292 = v529.i64[0];
      v293 = vmovl_s16(vceqz_s16(*v168.i8));
      v294.i64[0] = v293.i32[0];
      v294.i64[1] = v293.i32[1];
      v295 = v294;
      v294.i64[0] = v293.i32[2];
      v294.i64[1] = v293.i32[3];
      v296 = v294;
      v297 = vand_s8(vadd_s16(*v168.i8, 0xF000F000F000FLL), 0xF000F000F000FLL);
      v297.i16[3] = vbic_s8(0x1000100010001, *&v168).i16[3];
      v298 = vshlq_u32(vmovl_u16(v297), xmmword_29D2F12F0);
      v294.i64[0] = v298.u32[0];
      v294.i64[1] = v298.u32[1];
      v299 = v294;
      v294.i64[0] = v298.u32[2];
      v294.i64[1] = v298.u32[3];
      v300 = vorrq_s8(vbicq_s8(v299, v295), vbicq_s8(v294, v296));
      v301 = *&vorr_s8(*v300.i8, *&vextq_s8(v300, v300, 8uLL)) | v112.i8[0] & 0x1F | (32 * (v112.i8[2] & 0x1F)) & 0x83FF | ((v112.i8[4] & 0x1F) << 10) | ((v112.i8[6] & 0xF) << 15);
      v302 = (v301 << v289) | v290;
      if (v289 >= 0x20)
      {
        *v288 = v302;
        v302 = v301 >> (-8 * (a1 & 7u));
      }

      v303 = v292 & 0x3FF | ((WORD1(v292) & 0x3FF) << 10) | ((WORD2(v292) & 0x3FF) << 20) | ((BYTE6(v292) & 3) << 30);
      v304 = (v289 + 32) & 0x38;
      v305 = v302 | (v303 << v304);
      if (v304 >= 0x20)
      {
        *(v288 + (((v289 + 32) >> 3) & 8)) = v305;
        v305 = v303 >> -v304;
      }

      v306 = vsubq_s16(v535, v531);
      v307 = vsubq_s16(v535, v532);
      v308 = vsubq_s16(v535, v533);
      v309 = vsubq_s16(v535, v534);
      *v306.i8 = vqmovn_u16(v306);
      *v307.i8 = vqmovn_u16(v307);
      *v308.i8 = vqmovn_u16(v308);
      *v309.i8 = vqmovn_u16(v309);
      v310 = vtrn1q_s8(v306, v307);
      v311 = vtrn2q_s8(v306, v307);
      v312 = vtrn1q_s8(v308, v309);
      v313 = vtrn2q_s8(v308, v309);
      v314 = vzip1q_s16(v311, v313);
      v315 = vtrn2q_s16(v311, v313);
      v311.i64[0] = vzip1q_s32(vzip1q_s16(v310, v312), v314).u64[0];
      v315.i64[0] = vzip1q_s32(vtrn2q_s16(v310, v312), v315).u64[0];
      v308.i64[0] = 0x202020202020202;
      v308.i64[1] = 0x202020202020202;
      v316 = vandq_s8(vmovl_s16(vtst_s16(*v530.i8, 0x4000400040004)), v308);
      v308.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v308.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v310.i64[0] = -1;
      v310.i64[1] = -1;
      v317 = vshlq_u8(v310, vorrq_s8(v316, v308));
      v318 = vmovl_u8(vand_s8(*v317.i8, *v311.i8));
      v319 = vmovl_u8(vand_s8(*&vextq_s8(v317, v317, 8uLL), *v315.i8));
      v320 = vmovl_u8(*v316.i8);
      v321 = vmovl_high_u8(v316);
      v322 = vpaddq_s16(vshlq_u16(v318, vtrn1q_s16(0, v320)), vshlq_u16(v319, vtrn1q_s16(0, v321)));
      v323 = vpaddq_s16(v320, v321);
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
      v334 = (v332.i64[0] << v289) | v305;
      if (v333.i64[0] + v289 >= 0x40)
      {
        v288[1] = v334;
        v334 = v332.i64[0] >> (-8 * (a1 & 7u));
        if (!v289)
        {
          v334 = 0;
        }
      }

      v335 = v333.i64[0] + (v289 | 0x40);
      v336 = v334 | (v332.i64[1] << v335);
      if ((v335 & 0x3F) + v333.i64[1] >= 0x40)
      {
        *(v288 + ((v335 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v336;
        v336 = v332.i64[1] >> -(v335 & 0x3F);
        if ((v335 & 0x3F) == 0)
        {
          v336 = 0;
        }
      }

      v337 = v335 + v333.i64[1];
      v338.i64[0] = 0x8000800080008;
      v338.i64[1] = 0x8000800080008;
      v339.i64[0] = -1;
      v339.i64[1] = -1;
      v340 = vandq_s8(vextq_s8(vtstq_s16(v530, v338), 0, 8uLL), v535);
      v341.i64[0] = 0xF000F000F000FLL;
      v341.i64[1] = 0xF000F000F000FLL;
      v342 = vandq_s8(vshlq_u16(v339, vaddq_s16(v340, v341)), v538);
      v343 = vmovl_u16(*v340.i8);
      v344 = vpaddq_s32(vshlq_u32(vmovl_u16(*v342.i8), vtrn1q_s32(0, v343)), vmovl_high_u16(v342));
      v345 = vpaddq_s32(v343, vmovl_high_u16(v340));
      v346.i64[0] = v344.u32[0];
      v346.i64[1] = v344.u32[1];
      v347 = v346;
      v346.i64[0] = v344.u32[2];
      v346.i64[1] = v344.u32[3];
      v348 = v346;
      v346.i64[0] = v345.u32[0];
      v346.i64[1] = v345.u32[1];
      v349 = v346;
      v346.i64[0] = v345.u32[2];
      v346.i64[1] = v345.u32[3];
      v350 = vpaddq_s64(vshlq_u64(v347, vzip1q_s64(0, v349)), vshlq_u64(v348, vzip1q_s64(0, v346)));
      v351 = vpaddq_s64(v349, v346);
      v352 = (v350.i64[0] << v337) | v336;
      if (v351.i64[0] + (v337 & 0x3F) >= 0x40)
      {
        *(v288 + ((v337 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v352;
        v352 = v350.i64[0] >> -(v337 & 0x3F);
        if ((v337 & 0x3F) == 0)
        {
          v352 = 0;
        }
      }

      v353 = v351.i64[0] + v337;
      v354 = v352 | (v350.i64[1] << v353);
      if ((v353 & 0x3F) + v351.i64[1] >= 0x40)
      {
        *(v288 + ((v353 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v354;
        v354 = v350.i64[1] >> -(v353 & 0x3F);
        if ((v353 & 0x3F) == 0)
        {
          v354 = 0;
        }
      }

      v355 = v353 + v351.i64[1];
      v356 = vextq_s8(0, v531, 8uLL);
      v357.i64[0] = 0xF000F000F000FLL;
      v357.i64[1] = 0xF000F000F000FLL;
      v358.i64[0] = -1;
      v358.i64[1] = -1;
      v359 = vandq_s8(vshlq_u16(v358, vaddq_s16(v356, v357)), v510);
      v360 = vmovl_u16(*v356.i8);
      v361 = vmovl_high_u16(v356);
      v362 = vpaddq_s32(vmovl_u16(*v359.i8), vshlq_u32(vmovl_high_u16(v359), vtrn1q_s32(0, v361)));
      v363 = vpaddq_s32(v360, v361);
      v364.i64[0] = v362.u32[0];
      v364.i64[1] = v362.u32[1];
      v365 = v364;
      v364.i64[0] = v362.u32[2];
      v364.i64[1] = v362.u32[3];
      v366 = v364;
      v364.i64[0] = v363.u32[0];
      v364.i64[1] = v363.u32[1];
      v367 = v364;
      v364.i64[0] = v363.u32[2];
      v364.i64[1] = v363.u32[3];
      v368 = vpaddq_s64(vshlq_u64(v365, vzip1q_s64(0, v367)), vshlq_u64(v366, vzip1q_s64(0, v364)));
      v369 = vpaddq_s64(v367, v364);
      v370 = (v368.i64[0] << v355) | v354;
      if (v369.i64[0] + (v355 & 0x3F) >= 0x40)
      {
        *(v288 + ((v355 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v370;
        v370 = v368.i64[0] >> -(v355 & 0x3F);
        if ((v355 & 0x3F) == 0)
        {
          v370 = 0;
        }
      }

      v371 = v369.i64[0] + v355;
      v372 = v370 | (v368.i64[1] << v371);
      if ((v371 & 0x3F) + v369.i64[1] >= 0x40)
      {
        *(v288 + ((v371 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v372;
        v372 = v368.i64[1] >> -(v371 & 0x3F);
        if ((v371 & 0x3F) == 0)
        {
          v372 = 0;
        }
      }

      v373 = v371 + v369.i64[1];
      v374.i64[0] = 0xF000F000F000FLL;
      v374.i64[1] = 0xF000F000F000FLL;
      v375.i64[0] = -1;
      v375.i64[1] = -1;
      v376 = vandq_s8(vshlq_u16(v375, vaddq_s16(v531, v374)), v512);
      v377 = vmovl_u16(*v531.i8);
      v378 = vmovl_high_u16(v531);
      v379 = vpaddq_s32(vshlq_u32(vmovl_u16(*v376.i8), vtrn1q_s32(0, v377)), vshlq_u32(vmovl_high_u16(v376), vtrn1q_s32(0, v378)));
      v380 = vpaddq_s32(v377, v378);
      v381.i64[0] = v379.u32[0];
      v381.i64[1] = v379.u32[1];
      v382 = v381;
      v381.i64[0] = v379.u32[2];
      v381.i64[1] = v379.u32[3];
      v383 = v381;
      v381.i64[0] = v380.u32[0];
      v381.i64[1] = v380.u32[1];
      v384 = v381;
      v381.i64[0] = v380.u32[2];
      v381.i64[1] = v380.u32[3];
      v385 = vpaddq_s64(vshlq_u64(v382, vzip1q_s64(0, v384)), vshlq_u64(v383, vzip1q_s64(0, v381)));
      v386 = vpaddq_s64(v384, v381);
      v387 = (v385.i64[0] << v373) | v372;
      if (v386.i64[0] + (v373 & 0x3F) >= 0x40)
      {
        *(v288 + ((v373 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v387;
        v387 = v385.i64[0] >> -(v373 & 0x3F);
        if ((v373 & 0x3F) == 0)
        {
          v387 = 0;
        }
      }

      v388 = v386.i64[0] + v373;
      v389 = v387 | (v385.i64[1] << v388);
      if ((v388 & 0x3F) + v386.i64[1] >= 0x40)
      {
        *(v288 + ((v388 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v389;
        v389 = v385.i64[1] >> -(v388 & 0x3F);
        if ((v388 & 0x3F) == 0)
        {
          v389 = 0;
        }
      }

      v390 = v388 + v386.i64[1];
      v391.i64[0] = 0xF000F000F000FLL;
      v391.i64[1] = 0xF000F000F000FLL;
      v392.i64[0] = -1;
      v392.i64[1] = -1;
      v393 = vandq_s8(vshlq_u16(v392, vaddq_s16(v531, v391)), v514);
      v394 = vmovl_u16(*v531.i8);
      v395 = vmovl_high_u16(v531);
      v396 = vpaddq_s32(vshlq_u32(vmovl_u16(*v393.i8), vtrn1q_s32(0, v394)), vshlq_u32(vmovl_high_u16(v393), vtrn1q_s32(0, v395)));
      v397 = vpaddq_s32(v394, v395);
      v398.i64[0] = v396.u32[0];
      v398.i64[1] = v396.u32[1];
      v399 = v398;
      v398.i64[0] = v396.u32[2];
      v398.i64[1] = v396.u32[3];
      v400 = v398;
      v398.i64[0] = v397.u32[0];
      v398.i64[1] = v397.u32[1];
      v401 = v398;
      v398.i64[0] = v397.u32[2];
      v398.i64[1] = v397.u32[3];
      v402 = vpaddq_s64(vshlq_u64(v399, vzip1q_s64(0, v401)), vshlq_u64(v400, vzip1q_s64(0, v398)));
      v403 = vpaddq_s64(v401, v398);
      v404 = (v402.i64[0] << v390) | v389;
      if (v403.i64[0] + (v390 & 0x3F) >= 0x40)
      {
        *(v288 + ((v390 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v404;
        v404 = v402.i64[0] >> -(v390 & 0x3F);
        if ((v390 & 0x3F) == 0)
        {
          v404 = 0;
        }
      }

      v405 = v403.i64[0] + v390;
      v406 = v404 | (v402.i64[1] << v405);
      if ((v405 & 0x3F) + v403.i64[1] >= 0x40)
      {
        *(v288 + ((v405 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v406;
        v406 = v402.i64[1] >> -(v405 & 0x3F);
        if ((v405 & 0x3F) == 0)
        {
          v406 = 0;
        }
      }

      v407 = v405 + v403.i64[1];
      v408.i64[0] = 0xF000F000F000FLL;
      v408.i64[1] = 0xF000F000F000FLL;
      v409.i64[0] = -1;
      v409.i64[1] = -1;
      v410 = vandq_s8(vshlq_u16(v409, vaddq_s16(v531, v408)), v516);
      v411 = vmovl_u16(*v531.i8);
      v412 = vmovl_high_u16(v531);
      v413 = vpaddq_s32(vshlq_u32(vmovl_u16(*v410.i8), vtrn1q_s32(0, v411)), vshlq_u32(vmovl_high_u16(v410), vtrn1q_s32(0, v412)));
      v414 = vpaddq_s32(v411, v412);
      v415.i64[0] = v413.u32[0];
      v415.i64[1] = v413.u32[1];
      v416 = v415;
      v415.i64[0] = v413.u32[2];
      v415.i64[1] = v413.u32[3];
      v417 = v415;
      v415.i64[0] = v414.u32[0];
      v415.i64[1] = v414.u32[1];
      v418 = v415;
      v415.i64[0] = v414.u32[2];
      v415.i64[1] = v414.u32[3];
      v419 = vpaddq_s64(vshlq_u64(v416, vzip1q_s64(0, v418)), vshlq_u64(v417, vzip1q_s64(0, v415)));
      v420 = vpaddq_s64(v418, v415);
      v421 = (v419.i64[0] << v407) | v406;
      if (v420.i64[0] + (v407 & 0x3F) >= 0x40)
      {
        *(v288 + ((v407 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v421;
        v421 = v419.i64[0] >> -(v407 & 0x3F);
        if ((v407 & 0x3F) == 0)
        {
          v421 = 0;
        }
      }

      v422 = v420.i64[1];
      v423 = v420.i64[0] + v407;
      v424 = (v420.i64[0] + v407) & 0x3F;
      v425 = v421 | (v419.i64[1] << v423);
      if ((v424 + v420.i64[1]) >= 0x40)
      {
        *(v288 + ((v423 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v425;
        v425 = v419.i64[1] >> -v424;
        if (!v424)
        {
          v425 = 0;
        }
      }

      v426 = 0;
      v427.i64[0] = 0xF000F000F000FLL;
      v427.i64[1] = 0xF000F000F000FLL;
      v428.i64[0] = -1;
      v428.i64[1] = -1;
      v429 = v423 + v422;
      do
      {
        v430 = vandq_s8(vshlq_u16(v428, vaddq_s16(v532, v427)), *(&v517 + v426));
        v431 = vmovl_u16(*v532.i8);
        v432 = vmovl_high_u16(v532);
        v433 = vpaddq_s32(vshlq_u32(vmovl_u16(*v430.i8), vtrn1q_s32(0, v431)), vshlq_u32(vmovl_high_u16(v430), vtrn1q_s32(0, v432)));
        v434 = vpaddq_s32(v431, v432);
        v435.i64[0] = v433.u32[0];
        v435.i64[1] = v433.u32[1];
        v436 = v435;
        v435.i64[0] = v433.u32[2];
        v435.i64[1] = v433.u32[3];
        v437 = v435;
        v435.i64[0] = v434.u32[0];
        v435.i64[1] = v434.u32[1];
        v438 = v435;
        v435.i64[0] = v434.u32[2];
        v435.i64[1] = v434.u32[3];
        v439 = vpaddq_s64(vshlq_u64(v436, vzip1q_s64(0, v438)), vshlq_u64(v437, vzip1q_s64(0, v435)));
        v440 = vpaddq_s64(v438, v435);
        v441 = (v439.i64[0] << v429) | v425;
        if (v440.i64[0] + (v429 & 0x3F) >= 0x40)
        {
          *(v288 + ((v429 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v441;
          v441 = v439.i64[0] >> -(v429 & 0x3F);
          if ((v429 & 0x3F) == 0)
          {
            v441 = 0;
          }
        }

        v442 = v440.i64[0] + v429;
        v425 = v441 | (v439.i64[1] << v442);
        if ((v442 & 0x3F) + v440.i64[1] >= 0x40)
        {
          *(v288 + ((v442 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v425;
          v425 = v439.i64[1] >> -(v442 & 0x3F);
          if ((v442 & 0x3F) == 0)
          {
            v425 = 0;
          }
        }

        v429 = v442 + v440.i64[1];
        v426 += 16;
      }

      while (v426 != 64);
      v443 = 0;
      v444.i64[0] = 0xF000F000F000FLL;
      v444.i64[1] = 0xF000F000F000FLL;
      v445.i64[0] = -1;
      v445.i64[1] = -1;
      do
      {
        v446 = vandq_s8(vshlq_u16(v445, vaddq_s16(v533, v444)), *(&v521 + v443));
        v447 = vmovl_u16(*v533.i8);
        v448 = vmovl_high_u16(v533);
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
        v457 = (v455.i64[0] << v429) | v425;
        if (v456.i64[0] + (v429 & 0x3F) >= 0x40)
        {
          *(v288 + ((v429 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v457;
          v457 = v455.i64[0] >> -(v429 & 0x3F);
          if ((v429 & 0x3F) == 0)
          {
            v457 = 0;
          }
        }

        v458 = v456.i64[0] + v429;
        v425 = v457 | (v455.i64[1] << v458);
        if ((v458 & 0x3F) + v456.i64[1] >= 0x40)
        {
          *(v288 + ((v458 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v425;
          v425 = v455.i64[1] >> -(v458 & 0x3F);
          if ((v458 & 0x3F) == 0)
          {
            v425 = 0;
          }
        }

        v429 = v458 + v456.i64[1];
        v443 += 16;
      }

      while (v443 != 64);
      v459 = 0;
      v460.i64[0] = 0xF000F000F000FLL;
      v460.i64[1] = 0xF000F000F000FLL;
      v461.i64[0] = -1;
      v461.i64[1] = -1;
      do
      {
        v462 = vandq_s8(vshlq_u16(v461, vaddq_s16(v534, v460)), *(&v525 + v459));
        v463 = vmovl_u16(*v534.i8);
        v464 = vmovl_high_u16(v534);
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
        v473 = (v471.i64[0] << v429) | v425;
        if (v472.i64[0] + (v429 & 0x3F) >= 0x40)
        {
          *(v288 + ((v429 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v473;
          v473 = v471.i64[0] >> -(v429 & 0x3F);
          if ((v429 & 0x3F) == 0)
          {
            v473 = 0;
          }
        }

        v474 = v472.i64[0] + v429;
        v425 = v473 | (v471.i64[1] << v474);
        if ((v474 & 0x3F) + v472.i64[1] >= 0x40)
        {
          *(v288 + ((v474 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v425;
          v425 = v471.i64[1] >> -(v474 & 0x3F);
          if ((v474 & 0x3F) == 0)
          {
            v425 = 0;
          }
        }

        v429 = v474 + v472.i64[1];
        v459 += 16;
      }

      while (v459 != 64);
      if ((v429 & 0x3F) != 0)
      {
        *(v288 + ((v429 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v425;
      }

      result = (v429 - v289 + 7) >> 3;
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