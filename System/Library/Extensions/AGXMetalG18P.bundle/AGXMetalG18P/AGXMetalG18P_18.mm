uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v11 = *(a3 + 16);
  v9 = *(a3 + 32);
  v10 = *(a3 + 48);
  v12 = vsubq_s32(*(a3 + 64), *a3);
  v262 = vsubq_s32(*(a3 + 80), *a3);
  v13 = vsubq_s32(*(a3 + 96), *a3);
  v14 = vsubq_s32(*(a3 + 112), *a3);
  v15 = vsubq_s32(*(a3 + a4), *a3);
  v16 = vsubq_s32(*(a3 + a4 + 16), *a3);
  v17 = vsubq_s32(*(a3 + a4 + 32), *a3);
  v18 = vsubq_s32(*(a3 + a4 + 48), *a3);
  v19 = vsubq_s32(*(a3 + a4 + 64), *a3);
  v20 = vsubq_s32(*(a3 + a4 + 80), *a3);
  v21 = vsubq_s32(*(a3 + a4 + 96), *a3);
  v22 = vsubq_s32(*(a3 + a4 + 112), *a3);
  v23 = vsubq_s32(*(a3 + 144), *a3);
  v263 = vsubq_s32(*(a3 + 128), *a3);
  v264 = vsubq_s32(*(a3 + 160), *a3);
  v24 = vsubq_s32(*(a3 + 176), *a3);
  v25 = vsubq_s32(*(a3 + 192), *a3);
  v26 = vsubq_s32(*(a3 + 208), *a3);
  v27 = vsubq_s32(*(a3 + 224), *a3);
  v28 = vsubq_s32(*(a3 + 240), *a3);
  v29 = vsubq_s32(*(a3 + a4 + 128), *a3);
  v30 = vsubq_s32(*(a3 + a4 + 144), *a3);
  v31 = vsubq_s32(*(a3 + a4 + 160), *a3);
  v32 = vsubq_s32(*(a3 + a4 + 176), *a3);
  v33 = vsubq_s32(*(a3 + a4 + 192), *a3);
  v34 = vsubq_s32(*(a3 + a4 + 208), *a3);
  v35 = vsubq_s32(*(a3 + a4 + 224), *a3);
  v36 = vsubq_s32(*(a3 + a4 + 240), *a3);
  v339 = *a3;
  v308 = vsubq_s32(v11, v339);
  v309 = vsubq_s32(v9, v339);
  v310 = vsubq_s32(v10, v339);
  v311 = v12;
  v312 = v262;
  v313 = v13;
  v314 = v14;
  v315 = v15;
  v37 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v308, v309), v310), v12), v262), v13), v14), 0);
  v38 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v308, v309), v310), v12), v262), v13), v14), 0);
  v39.i64[0] = 0x2000000020;
  v39.i64[1] = 0x2000000020;
  v316 = v16;
  v317 = v17;
  v40 = vmaxq_s32(vbicq_s8(vsubq_s32(v39, vclsq_s32(v37)), vceqzq_s32(v37)), vbicq_s8(vsubq_s32(v39, vclsq_s32(v38)), vceqzq_s32(v38)));
  v318 = v18;
  v319 = v19;
  v320 = v20;
  v321 = v21;
  v322 = v22;
  v41 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v15, v16), v17), v18), v19), v20);
  v42 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v15, v16), v17), v18), v19), v20);
  v15.i64[0] = 0x8000000080000000;
  v15.i64[1] = 0x8000000080000000;
  v16.i64[0] = 0x8000000080000000;
  v16.i64[1] = 0x8000000080000000;
  v43 = vmaxq_s32(vmaxq_s32(v41, v21), v22);
  v44 = vminq_s32(vminq_s32(v42, v21), v22);
  v45 = vminq_s32(vminq_s32(v38, v16), v44);
  v323 = v263;
  v324 = v23;
  v46 = vmaxq_s32(vbicq_s8(vsubq_s32(v39, vclsq_s32(v43)), vceqzq_s32(v43)), vbicq_s8(vsubq_s32(v39, vclsq_s32(v44)), vceqzq_s32(v44)));
  v325 = v264;
  v326 = v24;
  v327 = v25;
  v328 = v26;
  v329 = v27;
  v330 = v28;
  v47 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v263, v23), v264), v24), v25), v26), v27), v28);
  v48 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v263, v23), v264), v24), v25), v26), v27), v28);
  v49 = vmaxq_s32(vmaxq_s32(vmaxq_s32(v37, v15), v43), v47);
  v50 = vminq_s32(v45, v48);
  v331 = v29;
  v332 = v30;
  v51 = vmaxq_s32(vbicq_s8(vsubq_s32(v39, vclsq_s32(v47)), vceqzq_s32(v47)), vbicq_s8(vsubq_s32(v39, vclsq_s32(v48)), vceqzq_s32(v48)));
  v52 = vmaxq_s32(v29, v30);
  v53 = vminq_s32(vminq_s32(v29, v30), v31);
  v333 = v31;
  v334 = v32;
  v335 = v33;
  v336 = v34;
  v337 = v35;
  v338 = v36;
  v54 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v52, v31), v32), v33), v34), v35), v36);
  v55 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v53, v32), v33), v34), v35), v36);
  v347 = vmaxq_s32(v49, v54);
  v346 = vminq_s32(v50, v55);
  v56 = vmaxq_s32(vbicq_s8(vsubq_s32(v39, vclsq_s32(v54)), vceqzq_s32(v54)), vbicq_s8(vsubq_s32(v39, vclsq_s32(v55)), vceqzq_s32(v55)));
  v57 = vmaxq_s32(vmaxq_s32(v40, v46), vmaxq_s32(v51, v56));
  v58 = vclzq_s32(vsubq_s32(v347, v346));
  v59 = vsubq_s32(v39, v58);
  v30.i64[0] = 0x1F0000001FLL;
  v30.i64[1] = 0x1F0000001FLL;
  v60.i64[0] = -1;
  v60.i64[1] = -1;
  v61 = vcgtq_s32(v57, v59);
  v62 = vminq_s32(v59, v57);
  v348 = vandq_s8(vsubq_s32(vshlq_s32(v60, vsubq_s32(v30, v58)), v346), v61);
  v57.i64[0] = 0x800000008;
  v57.i64[1] = 0x800000008;
  v58.i64[0] = 0x300000003;
  v58.i64[1] = 0x300000003;
  v63 = vorrq_s8(vandq_s8(vceqzq_s32(v62), v58), vorrq_s8(vandq_s8(v61, v57), 0));
  v64.i64[0] = 0xF0000000FLL;
  v64.i64[1] = 0xF0000000FLL;
  v65 = vmaxq_s32(vminq_s32(vsubq_s32(v62, v46), v64), 0);
  v66 = vmaxq_s32(vminq_s32(vsubq_s32(v62, v51), v64), 0);
  v342 = vsubq_s32(v62, v65);
  v67 = vmaxq_s32(vminq_s32(vsubq_s32(v62, v56), v64), 0);
  v343 = vsubq_s32(v62, v66);
  v344 = vsubq_s32(v62, v67);
  v68 = vaddq_s32(v67, v66);
  v69 = vmaxq_s32(vminq_s32(vsubq_s32(v62, v40), v64), 0);
  v70 = vceqq_s32(v68, vnegq_s32(vaddq_s32(v69, v65)));
  v71.i64[0] = 0x400000004;
  v71.i64[1] = 0x400000004;
  v341 = vsubq_s32(v62, v69);
  v340 = vorrq_s8(vbicq_s8(v71, v70), v63);
  v345 = v62;
  v307 = 0u;
  if (vmaxvq_s32(v62))
  {
    v77.i64[0] = 0x8000000080000000;
    v77.i64[1] = 0x8000000080000000;
    v78.i64[0] = 0x8000000080000000;
    v78.i64[1] = 0x8000000080000000;
    v274 = vsubq_s32(v316, vqtbl1q_s8(v316, xmmword_29D2F11D0));
    v275 = vsubq_s32(v317, vqtbl1q_s8(v317, xmmword_29D2F11D0));
    v276 = vsubq_s32(v318, vqtbl1q_s8(v318, xmmword_29D2F11D0));
    v277 = vsubq_s32(v319, vqtbl1q_s8(v319, xmmword_29D2F11D0));
    v278 = vsubq_s32(v320, vqtbl1q_s8(v320, xmmword_29D2F11D0));
    v279 = vsubq_s32(v321, vqtbl1q_s8(v321, xmmword_29D2F11D0));
    v280 = vsubq_s32(v322, vqtbl1q_s8(v322, xmmword_29D2F11D0));
    v79 = vsubq_s32(v329, vqtbl1q_s8(v329, xmmword_29D2F11D0));
    v282 = vsubq_s32(v324, vqtbl1q_s8(v324, xmmword_29D2F11D0));
    v283 = vsubq_s32(v325, vqtbl1q_s8(v325, xmmword_29D2F11D0));
    v284 = vsubq_s32(v326, vqtbl1q_s8(v326, xmmword_29D2F11D0));
    v265 = vsubq_s32(v307, vqtbl1q_s8(v307, xmmword_29D2F11D0));
    v266 = vsubq_s32(v308, vqtbl1q_s8(v308, xmmword_29D2F11D0));
    v267 = vsubq_s32(v309, vqtbl1q_s8(v309, xmmword_29D2F11D0));
    v268 = vsubq_s32(v310, vqtbl1q_s8(v310, xmmword_29D2F11D0));
    v269 = vsubq_s32(v311, vqtbl1q_s8(v311, xmmword_29D2F11D0));
    v270 = vsubq_s32(v312, vqtbl1q_s8(v312, xmmword_29D2F11D0));
    v272 = vsubq_s32(v314, vqtbl1q_s8(v314, xmmword_29D2F11D0));
    v273 = vsubq_s32(v315, vqtbl1q_s8(v315, xmmword_29D2F11D0));
    v281 = vsubq_s32(v323, vqtbl1q_s8(v323, xmmword_29D2F11D0));
    v271 = vsubq_s32(v313, vqtbl1q_s8(v313, xmmword_29D2F11D0));
    v80 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v265, v266), v267), v268), v269), v270), v271), v272);
    v81 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v265, v266), v267), v268), v269), v270), v271), v272);
    v82 = vmaxq_s32(v80, v77);
    v83 = vminq_s32(v81, v78);
    v84 = vmaxq_s32(vbicq_s8(vsubq_s32(v39, vclsq_s32(v80)), vceqzq_s32(v80)), vbicq_s8(vsubq_s32(v39, vclsq_s32(v81)), vceqzq_s32(v81)));
    v85 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v273, v274), v275), v276), v277), v278), v279), v280);
    v86 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v273, v274), v275), v276), v277), v278), v279), v280);
    v87 = vminq_s32(v83, v86);
    v88 = vmaxq_s32(vbicq_s8(vsubq_s32(v39, vclsq_s32(v85)), vceqzq_s32(v85)), vbicq_s8(vsubq_s32(v39, vclsq_s32(v86)), vceqzq_s32(v86)));
    v285 = vsubq_s32(v327, vqtbl1q_s8(v327, xmmword_29D2F11D0));
    v286 = vsubq_s32(v328, vqtbl1q_s8(v328, xmmword_29D2F11D0));
    v89 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v281, v282), v283), v284), v285), v286), v79);
    v287 = v79;
    v288 = vsubq_s32(v330, vqtbl1q_s8(v330, xmmword_29D2F11D0));
    v90 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v281, v282), v283), v284), v285), v286), v79), v288);
    v91 = vminq_s32(v89, v288);
    v92 = vmaxq_s32(vmaxq_s32(v82, v85), v90);
    v93 = vminq_s32(v87, v91);
    v289 = vsubq_s32(v331, vqtbl1q_s8(v331, xmmword_29D2F11D0));
    v290 = vsubq_s32(v332, vqtbl1q_s8(v332, xmmword_29D2F11D0));
    v94 = vmaxq_s32(vbicq_s8(vsubq_s32(v39, vclsq_s32(v90)), vceqzq_s32(v90)), vbicq_s8(vsubq_s32(v39, vclsq_s32(v91)), vceqzq_s32(v91)));
    v291 = vsubq_s32(v333, vqtbl1q_s8(v333, xmmword_29D2F11D0));
    v292 = vsubq_s32(v334, vqtbl1q_s8(v334, xmmword_29D2F11D0));
    v293 = vsubq_s32(v335, vqtbl1q_s8(v335, xmmword_29D2F11D0));
    v294 = vsubq_s32(v336, vqtbl1q_s8(v336, xmmword_29D2F11D0));
    v295 = vsubq_s32(v337, vqtbl1q_s8(v337, xmmword_29D2F11D0));
    v296 = vsubq_s32(v338, vqtbl1q_s8(v338, xmmword_29D2F11D0));
    v95 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v289, v290), v291), v292), v293), v294), v295), v296);
    v96 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v289, v290), v291), v292), v293), v294), v295), v296);
    v97 = vmaxq_s32(v92, v95);
    v98 = vminq_s32(v93, v96);
    v99 = vmaxq_s32(vbicq_s8(vsubq_s32(v39, vclsq_s32(v95)), vceqzq_s32(v95)), vbicq_s8(vsubq_s32(v39, vclsq_s32(v96)), vceqzq_s32(v96)));
    v100 = vmaxq_s32(vmaxq_s32(v84, v88), vmaxq_s32(v94, v99));
    v101 = vclzq_s32(vsubq_s32(v97, v98));
    v102 = vsubq_s32(v39, v101);
    v77.i64[0] = 0x1F0000001FLL;
    v77.i64[1] = 0x1F0000001FLL;
    v103 = vshlq_s32(v60, vsubq_s32(v77, v101));
    v104 = vcgtq_s32(v100, v102);
    v105 = vminq_s32(v102, v100);
    v100.i64[0] = 0x1000000010;
    v100.i64[1] = 0x1000000010;
    v101.i64[0] = 0x1800000018;
    v101.i64[1] = 0x1800000018;
    v305 = v97;
    v306 = vandq_s8(vsubq_s32(v103, v98), v104);
    v77.i64[0] = 0x300000003;
    v77.i64[1] = 0x300000003;
    v106 = vorrq_s8(vandq_s8(vceqzq_s32(v105), v77), vbslq_s8(v104, v101, v100));
    v107 = vmaxq_s32(vminq_s32(vsubq_s32(v105, v84), v64), 0);
    v108 = vmaxq_s32(vminq_s32(vsubq_s32(v105, v88), v64), 0);
    v109 = vmaxq_s32(vminq_s32(vsubq_s32(v105, v94), v64), 0);
    v110 = vmaxq_s32(vminq_s32(vsubq_s32(v105, v99), v64), 0);
    v299 = vsubq_s32(v105, v107);
    v300 = vsubq_s32(v105, v108);
    v303 = v105;
    v304 = v98;
    v301 = vsubq_s32(v105, v109);
    v302 = vsubq_s32(v105, v110);
    v297 = vsubq_s32(v339, vqtbl1q_s8(v339, xmmword_29D2F11D0));
    v298 = vorrq_s8(vbicq_s8(v71, vceqq_s32(vaddq_s32(v110, v109), vnegq_s32(vaddq_s32(v107, v108)))), v106);
    AGX::AppleCompressionGen2::CompressionState<AGX::AppleCompressionGen2::VecArray<int,8ul>,4ul>::select(&v307, &v265);
    v111.i64[1] = v341.i64[1];
    v112 = v345;
    v113 = vandq_s8(v348, vceqq_s32(v345, v341));
    v307 = vaddq_s32(v113, v307);
    v308 = vaddq_s32(v308, v113);
    v309 = vaddq_s32(v309, v113);
    v310 = vaddq_s32(v310, v113);
    v311 = vaddq_s32(v311, v113);
    v312 = vaddq_s32(v312, v113);
    v313 = vaddq_s32(v313, v113);
    v314 = vaddq_s32(v314, v113);
    v114 = vandq_s8(v348, vceqq_s32(v345, v342));
    v315 = vaddq_s32(v315, v114);
    v316 = vaddq_s32(v316, v114);
    v317 = vaddq_s32(v317, v114);
    v318 = vaddq_s32(v318, v114);
    v319 = vaddq_s32(v319, v114);
    v320 = vaddq_s32(v320, v114);
    v321 = vaddq_s32(v321, v114);
    v322 = vaddq_s32(v322, v114);
    v115 = vandq_s8(v348, vceqq_s32(v345, v343));
    v323 = vaddq_s32(v323, v115);
    v324 = vaddq_s32(v324, v115);
    v116 = vaddq_s32(v326, v115);
    v117 = vandq_s8(v348, vceqq_s32(v345, v344));
    *v118.i8 = vqmovn_u32(v340);
    v325 = vaddq_s32(v325, v115);
    v326 = v116;
    v119.i64[0] = 0x8000800080008;
    v119.i64[1] = 0x8000800080008;
    v327 = vaddq_s32(v327, v115);
    v328 = vaddq_s32(v328, v115);
    *v116.i8 = vqmovn_u32(v345);
    v120 = vbicq_s8(v116, vceqzq_s16(vandq_s8(v118, v119)));
    v329 = vaddq_s32(v329, v115);
    v330 = vaddq_s32(v330, v115);
    v115.i64[0] = 0x10001000100010;
    v115.i64[1] = 0x10001000100010;
    v116.i64[0] = 0x2000200020002;
    v116.i64[1] = 0x2000200020002;
    v331 = vaddq_s32(v331, v117);
    v332 = vaddq_s32(v332, v117);
    v121.i64[0] = 0x3000300030003;
    v121.i64[1] = 0x3000300030003;
    v122 = vceqq_s16(vandq_s8(v118, v121), v116);
    v116.i64[0] = 0x20002000200020;
    v116.i64[1] = 0x20002000200020;
    v333 = vaddq_s32(v333, v117);
    v334 = vaddq_s32(v334, v117);
    *v111.i8 = vqmovn_u32(v341);
    v123 = vaddq_s16(vaddq_s16(v120, vandq_s8(vshlq_n_s16(v118, 2uLL), v115)), vandq_s8(v122, v116));
    v115.i64[0] = 0x7000700070007;
    v115.i64[1] = 0x7000700070007;
    v124 = vaddq_s32(vaddq_s32(v343, v342), v344);
    *v124.i8 = vqmovn_u32(v124);
    v125 = vaddq_s16(vmlaq_s16(v123, v111, v115), vshlq_n_s16(v124, 3uLL));
    v126 = vpaddq_s16(v125, v125);
    v335 = vaddq_s32(v335, v117);
    v336 = vaddq_s32(v336, v117);
    v337 = vaddq_s32(v337, v117);
    v338 = vaddq_s32(v338, v117);
    if (((((vpaddq_s16(v126, v126).i16[0] + 175) >> 3) + 1) & 0x3FFFFFFFFFFFFFFELL) > 0x100)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 256;
    }

    else
    {
      v127 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v128 = 8 * (a1 & 7);
      if (v128)
      {
        v129 = *v127 & ~(-1 << v128);
      }

      else
      {
        v129 = 0;
      }

      if (v345.i32[0])
      {
        v131 = ((v345.i32[0] << 20) + 32505856) & 0x1F00000;
      }

      else
      {
        v131 = 0;
      }

      v132 = vand_s8(vshl_u32(*&vextq_s8(v340, v340, 8uLL), 0xF0000000ALL), 0xF800000007C00);
      v133 = v132.i32[1];
      v134 = v340.i8[0] & 0x1F | (32 * (v340.i8[4] & 0x1F)) | v132.i32[0];
      *a2 = 0;
      v135 = v339;
      v136 = ((v112.i32[1] << 25) + 1040187392) & 0x3E000000;
      if (!v112.i32[1])
      {
        v136 = 0;
      }

      v137 = vextq_s8(v112, v112, 8uLL).u64[0];
      v138 = vceqz_s32(v137);
      v139.i64[0] = v138.i32[0];
      v139.i64[1] = v138.i32[1];
      v140 = v139;
      v141.i64[0] = -1;
      v141.i64[1] = -1;
      v142 = vand_s8(vadd_s32(v137, -1), 0x1F0000001FLL);
      v139.i64[0] = v142.u32[0];
      v139.i64[1] = v142.u32[1];
      v143 = vbicq_s8(vshlq_u64(v139, xmmword_29D2F11E0), v140);
      v144 = vorrq_s8(vdupq_laneq_s64(v143, 1), v143).u64[0] | v134 | v131 | v136 | v133;
      v145 = (v144 << v128) | v129;
      if (v128 >= 0x18)
      {
        *v127 = v145;
        v145 = v144 >> (-8 * (a1 & 7u));
      }

      v146 = (v128 + 40) & 0x38;
      *(v127 + (((v128 + 40) >> 3) & 8)) = v145 | (v135.i64[0] << v146);
      v147 = v135.i64[0] >> -v146;
      if (((v128 + 40) & 0x38) == 0)
      {
        v147 = 0;
      }

      v148 = (v128 + 104) & 0x38;
      *(v127 + (((v128 + 104) >> 3) & 0x18)) = v147 | (v135.i64[1] << v148);
      if (((v128 + 104) & 0x38) != 0)
      {
        v149 = v135.i64[1] >> -v148;
      }

      else
      {
        v149 = 0;
      }

      v150 = v128 + 168;
      v151.i64[1] = v344.i64[1];
      v152 = vsubq_s32(v345, v341);
      v153 = vsubq_s32(v345, v342);
      v154 = vsubq_s32(v345, v344);
      *v151.i8 = vqmovn_u32(v152);
      *v151.i8 = vqmovn_u16(v151);
      *v152.i8 = vqmovn_u32(v153);
      *v152.i8 = vqmovn_u16(v152);
      *v153.i8 = vqmovn_u32(vsubq_s32(v345, v343));
      *v153.i8 = vqmovn_u16(v153);
      *v154.i8 = vqmovn_u32(v154);
      *v154.i8 = vqmovn_u16(v154);
      v155 = vtrn1q_s8(v151, v152);
      v156 = vtrn2q_s8(v151, v152);
      v157 = vtrn1q_s8(v153, v154);
      v158 = vtrn2q_s8(v153, v154);
      v159 = vzip1q_s16(v155, v157);
      v160 = vtrn2q_s16(v155, v157);
      v161 = vzip1q_s16(v156, v158);
      v158.i64[0] = vzip1q_s32(v160, vtrn2q_s16(v156, v158)).u64[0];
      v160.i64[0] = 0x400000004;
      v160.i64[1] = 0x400000004;
      v162.i64[0] = 0x404040404040404;
      v162.i64[1] = 0x404040404040404;
      v163 = vandq_s8(vtstq_s32(v340, v160), v162);
      v162.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v162.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v164 = vshlq_u8(v141, vorrq_s8(v163, v162));
      v165 = vmovl_u8(vand_s8(*v164.i8, *&vzip1q_s32(v159, v161)));
      v166 = vmovl_u8(vand_s8(*&vextq_s8(v164, v164, 8uLL), *v158.i8));
      v167 = vmovl_u8(*v163.i8);
      v168 = vmovl_high_u8(v163);
      v169 = vpaddq_s16(vshlq_u16(v165, vtrn1q_s16(0, v167)), vshlq_u16(v166, vtrn1q_s16(0, v168)));
      v170 = vpaddq_s16(v167, v168);
      v171 = vmovl_u16(*v170.i8);
      v172 = vmovl_high_u16(v170);
      v173 = vpaddq_s32(vshlq_u32(vmovl_u16(*v169.i8), vtrn1q_s32(0, v171)), vshlq_u32(vmovl_high_u16(v169), vtrn1q_s32(0, v172)));
      v174 = vpaddq_s32(v171, v172);
      v175.i64[0] = v173.u32[0];
      v175.i64[1] = v173.u32[1];
      v176 = v175;
      v175.i64[0] = v173.u32[2];
      v175.i64[1] = v173.u32[3];
      v177 = v175;
      v175.i64[0] = v174.u32[0];
      v175.i64[1] = v174.u32[1];
      v178 = v175;
      v175.i64[0] = v174.u32[2];
      v175.i64[1] = v174.u32[3];
      v179 = vpaddq_s64(vshlq_u64(v176, vzip1q_s64(0, v178)), vshlq_u64(v177, vzip1q_s64(0, v175)));
      v180 = vpaddq_s64(v178, v175);
      v181 = (v128 + 168) & 0x38;
      v182 = (v179.i64[0] << ((v128 - 88) & 0x38)) | v149;
      if ((v180.i64[0] + v181) >= 0x40)
      {
        *(v127 + ((v150 >> 3) & 0x18)) = v182;
        v182 = v179.i64[0] >> -((v128 - 88) & 0x38);
        if (!v181)
        {
          v182 = 0;
        }
      }

      v183 = v180.i64[0] + v150;
      v184 = v182 | (v179.i64[1] << v183);
      if ((v183 & 0x3F) + v180.i64[1] >= 0x40)
      {
        *(v127 + ((v183 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v184;
        v184 = v179.i64[1] >> -(v183 & 0x3F);
        if ((v183 & 0x3F) == 0)
        {
          v184 = 0;
        }
      }

      v185 = v183 + v180.i64[1];
      v186.i64[0] = 0x800000008;
      v186.i64[1] = 0x800000008;
      v187 = vbicq_s8(v345, vceqzq_s32(vandq_s8(v340, v186)));
      v188.i64[0] = 0x1F0000001FLL;
      v188.i64[1] = 0x1F0000001FLL;
      v189.i64[0] = -1;
      v189.i64[1] = -1;
      v190 = vandq_s8(vshlq_u32(v189, vaddq_s32(v187, v188)), v348);
      v191.i64[0] = v190.u32[0];
      v191.i64[1] = v190.u32[1];
      v192 = v191;
      v191.i64[0] = v190.u32[2];
      v191.i64[1] = v190.u32[3];
      v193 = v191;
      v191.i64[0] = v187.u32[0];
      v191.i64[1] = v187.u32[1];
      v194 = v191;
      v191.i64[0] = v187.u32[2];
      v191.i64[1] = v187.u32[3];
      v195 = vpaddq_s64(vshlq_u64(v192, vzip1q_s64(0, v194)), vshlq_u64(v193, vzip1q_s64(0, v191)));
      v196 = vpaddq_s64(v194, v191);
      v197 = (v195.i64[0] << v185) | v184;
      if (v196.i64[0] + (v185 & 0x3F) >= 0x40)
      {
        *(v127 + ((v185 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v197;
        v197 = v195.i64[0] >> -(v185 & 0x3F);
        if ((v185 & 0x3F) == 0)
        {
          v197 = 0;
        }
      }

      v198 = v196.i64[0] + v185;
      v199 = v197 | (v195.i64[1] << v198);
      if ((v198 & 0x3F) + v196.i64[1] >= 0x40)
      {
        *(v127 + ((v198 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v199;
        v199 = v195.i64[1] >> -(v198 & 0x3F);
        if ((v198 & 0x3F) == 0)
        {
          v199 = 0;
        }
      }

      v200 = v198 + v196.i64[1];
      v201.i64[0] = 0x1F0000001FLL;
      v201.i64[1] = 0x1F0000001FLL;
      v202.i64[0] = -1;
      v202.i64[1] = -1;
      v203 = vandq_s8(vshlq_u32(v202, v201), v307);
      v204.i64[0] = v203.u32[0];
      v204.i64[1] = v203.u32[1];
      v205 = v204;
      v204.i64[0] = v203.u32[2];
      v204.i64[1] = v203.u32[3];
      v206 = vpaddq_s64(v205, v204);
      v207 = vpaddq_s64(0, 0);
      v208 = (v206.i64[0] << v200) | v199;
      if (v207.i64[0] + (v200 & 0x3F) >= 0x40)
      {
        *(v127 + ((v200 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v208;
        if ((v200 & 0x3F) != 0)
        {
          v208 = v206.i64[0] >> -(v200 & 0x3F);
        }

        else
        {
          v208 = 0;
        }
      }

      v209 = v207.i64[0] + v200;
      v210 = (v207.i64[0] + v200) & 0x3F;
      v211 = v208 | (v206.i64[1] << v209);
      if ((v210 + v207.i64[1]) >= 0x40)
      {
        *(v127 + ((v209 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v211;
        if (v210)
        {
          v211 = v206.i64[1] >> -v210;
        }

        else
        {
          v211 = 0;
        }
      }

      v212 = v209 + v207.i64[1];
      v213.i64[0] = 0x1F0000001FLL;
      v213.i64[1] = 0x1F0000001FLL;
      v214.i64[0] = -1;
      v214.i64[1] = -1;
      for (i = 16; i != 128; i += 16)
      {
        v216 = vandq_s8(vshlq_u32(v214, vaddq_s32(v341, v213)), *(&v307 + i));
        v217.i64[0] = v216.u32[0];
        v217.i64[1] = v216.u32[1];
        v218 = v217;
        v217.i64[0] = v216.u32[2];
        v217.i64[1] = v216.u32[3];
        v219 = v217;
        v217.i64[0] = v341.u32[0];
        v217.i64[1] = v341.u32[1];
        v220 = v217;
        v217.i64[0] = v341.u32[2];
        v217.i64[1] = v341.u32[3];
        v221 = vpaddq_s64(vshlq_u64(v218, vzip1q_s64(0, v220)), vshlq_u64(v219, vzip1q_s64(0, v217)));
        v222 = vpaddq_s64(v220, v217);
        v223 = (v221.i64[0] << v212) | v211;
        if (v222.i64[0] + (v212 & 0x3F) >= 0x40)
        {
          *(v127 + ((v212 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v223;
          v223 = v221.i64[0] >> -(v212 & 0x3F);
          if ((v212 & 0x3F) == 0)
          {
            v223 = 0;
          }
        }

        v224 = v222.i64[0] + v212;
        v211 = v223 | (v221.i64[1] << v224);
        if ((v224 & 0x3F) + v222.i64[1] >= 0x40)
        {
          *(v127 + ((v224 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v211;
          v211 = v221.i64[1] >> -(v224 & 0x3F);
          if ((v224 & 0x3F) == 0)
          {
            v211 = 0;
          }
        }

        v212 = v224 + v222.i64[1];
      }

      v225 = 0;
      v226.i64[0] = 0x1F0000001FLL;
      v226.i64[1] = 0x1F0000001FLL;
      v227.i64[0] = -1;
      v227.i64[1] = -1;
      do
      {
        v228 = vandq_s8(vshlq_u32(v227, vaddq_s32(v342, v226)), *(&v315 + v225));
        v229.i64[0] = v228.u32[0];
        v229.i64[1] = v228.u32[1];
        v230 = v229;
        v229.i64[0] = v228.u32[2];
        v229.i64[1] = v228.u32[3];
        v231 = v229;
        v229.i64[0] = v342.u32[0];
        v229.i64[1] = v342.u32[1];
        v232 = v229;
        v229.i64[0] = v342.u32[2];
        v229.i64[1] = v342.u32[3];
        v233 = vpaddq_s64(vshlq_u64(v230, vzip1q_s64(0, v232)), vshlq_u64(v231, vzip1q_s64(0, v229)));
        v234 = vpaddq_s64(v232, v229);
        v235 = (v233.i64[0] << v212) | v211;
        if (v234.i64[0] + (v212 & 0x3F) >= 0x40)
        {
          *(v127 + ((v212 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v235;
          v235 = v233.i64[0] >> -(v212 & 0x3F);
          if ((v212 & 0x3F) == 0)
          {
            v235 = 0;
          }
        }

        v236 = v234.i64[0] + v212;
        v211 = v235 | (v233.i64[1] << v236);
        if ((v236 & 0x3F) + v234.i64[1] >= 0x40)
        {
          *(v127 + ((v236 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v211;
          v211 = v233.i64[1] >> -(v236 & 0x3F);
          if ((v236 & 0x3F) == 0)
          {
            v211 = 0;
          }
        }

        v212 = v236 + v234.i64[1];
        v225 += 16;
      }

      while (v225 != 128);
      v237 = 0;
      v238.i64[0] = 0x1F0000001FLL;
      v238.i64[1] = 0x1F0000001FLL;
      v239.i64[0] = -1;
      v239.i64[1] = -1;
      do
      {
        v240 = vandq_s8(vshlq_u32(v239, vaddq_s32(v343, v238)), *(&v323 + v237));
        v241.i64[0] = v240.u32[0];
        v241.i64[1] = v240.u32[1];
        v242 = v241;
        v241.i64[0] = v240.u32[2];
        v241.i64[1] = v240.u32[3];
        v243 = v241;
        v241.i64[0] = v343.u32[0];
        v241.i64[1] = v343.u32[1];
        v244 = v241;
        v241.i64[0] = v343.u32[2];
        v241.i64[1] = v343.u32[3];
        v245 = vpaddq_s64(vshlq_u64(v242, vzip1q_s64(0, v244)), vshlq_u64(v243, vzip1q_s64(0, v241)));
        v246 = vpaddq_s64(v244, v241);
        v247 = (v245.i64[0] << v212) | v211;
        if (v246.i64[0] + (v212 & 0x3F) >= 0x40)
        {
          *(v127 + ((v212 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v247;
          v247 = v245.i64[0] >> -(v212 & 0x3F);
          if ((v212 & 0x3F) == 0)
          {
            v247 = 0;
          }
        }

        v248 = v246.i64[0] + v212;
        v211 = v247 | (v245.i64[1] << v248);
        if ((v248 & 0x3F) + v246.i64[1] >= 0x40)
        {
          *(v127 + ((v248 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v211;
          v211 = v245.i64[1] >> -(v248 & 0x3F);
          if ((v248 & 0x3F) == 0)
          {
            v211 = 0;
          }
        }

        v212 = v248 + v246.i64[1];
        v237 += 16;
      }

      while (v237 != 128);
      v249 = 0;
      v250.i64[0] = 0x1F0000001FLL;
      v250.i64[1] = 0x1F0000001FLL;
      v251.i64[0] = -1;
      v251.i64[1] = -1;
      do
      {
        v252 = vandq_s8(vshlq_u32(v251, vaddq_s32(v344, v250)), *(&v331 + v249));
        v253.i64[0] = v252.u32[0];
        v253.i64[1] = v252.u32[1];
        v254 = v253;
        v253.i64[0] = v252.u32[2];
        v253.i64[1] = v252.u32[3];
        v255 = v253;
        v253.i64[0] = v344.u32[0];
        v253.i64[1] = v344.u32[1];
        v256 = v253;
        v253.i64[0] = v344.u32[2];
        v253.i64[1] = v344.u32[3];
        v257 = vpaddq_s64(vshlq_u64(v254, vzip1q_s64(0, v256)), vshlq_u64(v255, vzip1q_s64(0, v253)));
        v258 = vpaddq_s64(v256, v253);
        v259 = (v257.i64[0] << v212) | v211;
        if (v258.i64[0] + (v212 & 0x3F) >= 0x40)
        {
          *(v127 + ((v212 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v259;
          v259 = v257.i64[0] >> -(v212 & 0x3F);
          if ((v212 & 0x3F) == 0)
          {
            v259 = 0;
          }
        }

        v260 = v258.i64[0] + v212;
        v211 = v259 | (v257.i64[1] << v260);
        if ((v260 & 0x3F) + v258.i64[1] >= 0x40)
        {
          *(v127 + ((v260 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v211;
          v211 = v257.i64[1] >> -(v260 & 0x3F);
          if ((v260 & 0x3F) == 0)
          {
            v211 = 0;
          }
        }

        v212 = v260 + v258.i64[1];
        v249 += 16;
      }

      while (v249 != 128);
      if ((v212 & 0x3F) != 0)
      {
        *(v127 + ((v212 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v211;
      }

      v261 = ((v212 - v128 + 7) >> 3) + 1;
      result = v261 & 0x3FFFFFFFFFFFFFFELL;
      *a2 |= (v261 >> 1) - 1;
    }
  }

  else
  {
    *a1 = *a3;
    *a2 = 7;
    return 16;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v75 = *MEMORY[0x29EDCA608];
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  if (a6 && a5)
  {
    for (i = 0; i != a6; ++i)
    {
      v12 = 0;
      v13 = (a3 + i * a4);
      do
      {
        v14 = &v43 + 8 * (v12 & 0x7F);
        v15 = v13[1];
        v14[2 * (i & 0x7F)] = *v13;
        v16 = &v43 + 4 * ((2 * v12) | 1u);
        v16[2 * (i & 0x7F)] = v15;
        v17 = v13[3];
        v14[(2 * i) | 1u] = v13[2];
        v13 += 4;
        ++v12;
        v16[(2 * i) | 1u] = v17;
      }

      while (a5 != v12);
    }
  }

  v35 = v43;
  v36 = v47;
  v37 = v44;
  v38 = v48;
  v39 = v51;
  v40 = v55;
  v18 = a6 != 0;
  v19 = 2 * (a6 & 0x7F);
  v20 = 2 * (a5 & 0x7F);
  if (v20 >= 4)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2 * (a5 & 0x7F);
  }

  v41 = v52;
  v42 = v56;
  v22 = 2 * v18;
  if (v20 >= 4)
  {
    v23 = v20 - 4;
  }

  else
  {
    v23 = 0;
  }

  v24 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v35, a7, v21, 2 * v18);
  v35 = v45;
  v36 = v49;
  v37 = v46;
  v38 = v50;
  v39 = v53;
  v40 = v57;
  v25 = v19 - 2;
  if (v19 < 2)
  {
    v25 = 0;
  }

  v41 = v54;
  v42 = v58;
  if (a6 >= 2)
  {
    v26 = 2;
  }

  else
  {
    v26 = v25;
  }

  v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 64, &v35, a7, v21, v26);
  v35 = v59;
  v36 = v63;
  v37 = v60;
  v38 = v64;
  v39 = v67;
  v40 = v71;
  if (a5 >= 4)
  {
    v28 = 4;
  }

  else
  {
    v28 = v23;
  }

  v41 = v68;
  v42 = v72;
  v29 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 128, &v35, a7, v28, v22);
  v35 = v61;
  v36 = v65;
  v37 = v62;
  v38 = v66;
  v39 = v69;
  v40 = v73;
  v41 = v70;
  v42 = v74;
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 192, &v35, a7, v28, v26);
  if (v29)
  {
    v31 = 4;
  }

  else
  {
    v31 = 0;
  }

  if (v27)
  {
    v32 = 2;
  }

  else
  {
    v32 = 0;
  }

  if (result)
  {
    v33 = -8;
  }

  else
  {
    v33 = -16;
  }

  *a2 = v33 | v31 | v24 | v32;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v554 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    result = 0;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v11 = (a1 + a2);
    v11[14] = 0u;
    v11[15] = 0u;
    v11[12] = 0u;
    v11[13] = 0u;
    v11[10] = 0u;
    v11[11] = 0u;
    v11[8] = 0u;
    v11[9] = 0u;
    v11[6] = 0u;
    v11[7] = 0u;
    v11[4] = 0u;
    v11[5] = 0u;
    v11[2] = 0u;
    v11[3] = 0u;
    *v11 = 0u;
    v11[1] = 0u;
    return result;
  }

  v7 = a4;
  if (a4 < 0xF0)
  {
    if (a4 == 7)
    {
      v12 = *a3;
      *a1 = *a3;
      *(a1 + 16) = v12;
      *(a1 + 32) = v12;
      *(a1 + 48) = v12;
      *(a1 + 64) = v12;
      *(a1 + 80) = v12;
      *(a1 + 96) = v12;
      *(a1 + 112) = v12;
      *(a1 + 128) = v12;
      *(a1 + 144) = v12;
      *(a1 + 160) = v12;
      *(a1 + 176) = v12;
      *(a1 + 192) = v12;
      *(a1 + 208) = v12;
      *(a1 + 224) = v12;
      *(a1 + 240) = v12;
      v13 = (a1 + a2);
      *v13 = v12;
      v13[1] = v12;
      v13[2] = v12;
      v13[3] = v12;
      v13[4] = v12;
      v13[5] = v12;
      v13[6] = v12;
      v13[7] = v12;
      v13[8] = v12;
      v13[9] = v12;
      v13[10] = v12;
      v13[11] = v12;
      v13[12] = v12;
      v13[13] = v12;
      result = 16;
      v13[14] = v12;
      v13[15] = v12;
      return result;
    }

    v508.i8[8] = 0;
    v508.i64[0] = (8 * (a3 & 7)) | 0x800;
    *&v507 = 8 * (a3 & 7);
    *(&v507 + 1) = a3 & 0xFFFFFFFFFFFFFFF8;
    result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)20,AGX::AppleCompressionGen2::Vec<int>>(&v548, v553, &v547, &v507, a4);
    v16.i64[0] = 0x300000003;
    v16.i64[1] = 0x300000003;
    v17 = vbicq_s8(v553[0], vceqq_s32(vandq_s8(v548, v16), v16));
    v553[0] = v17;
    v549 = v17;
    v550 = v17;
    v551 = v17;
    v552 = v17;
    v18.i64[0] = 0x400000004;
    v18.i64[1] = 0x400000004;
    v19.i64[0] = 0x404040404040404;
    v19.i64[1] = 0x404040404040404;
    v20 = vandq_s8(vtstq_s32(v548, v18), v19);
    v21 = v507;
    if (vmaxvq_s8(v20) < 1)
    {
      v62.i64[0] = -1;
      v62.i64[1] = -1;
      v504 = v62;
      v505 = v62;
      v63.i64[0] = -1;
      v63.i64[1] = -1;
      v503 = v62;
    }

    else
    {
      v22 = vmovl_u8(*&vpaddq_s8(v20, v20));
      v23 = vmovl_u16(*&vpaddq_s16(v22, v22));
      v24 = vpaddq_s32(v23, v23).u64[0];
      v25.i64[0] = v24;
      v25.i64[1] = HIDWORD(v24);
      v26 = v25;
      v27 = vaddvq_s64(v25);
      v28 = v27;
      v29 = v507 + v27;
      if (v508.i64[0])
      {
        v30 = v508.i64[0] >= v29;
      }

      else
      {
        v30 = 1;
      }

      v31 = v30;
      if (v27 <= 0x80 && (v31 & 1) != 0)
      {
        v15.i64[0] = 63;
        v32 = (*(&v507 + 1) + 8 * (v507 >> 6));
        v33 = vaddq_s64(vdupq_lane_s64(vandq_s8(v507, v15).i64[0], 0), vzip1q_s64(0, v26));
        v34 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v32, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v33)), vshlq_u64(vdupq_lane_s64(v32->i64[0], 0), vnegq_s64(v33)));
        if (((v507 & 0x3F) + v28) >= 0x81)
        {
          v34 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v32[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v33)), vshlq_u64(vdupq_laneq_s64(v32[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v33))), v34);
        }

        *&v507 = v29;
        v21 = v29;
      }

      else
      {
        v508.i8[8] = 1;
        v34 = 0uLL;
      }

      v64 = vzip1_s32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
      v65.i64[0] = v64.u32[0];
      v65.i64[1] = v64.u32[1];
      v66 = vshlq_u64(v34, vnegq_s64(v65));
      v67 = vuzp1q_s32(vzip1q_s64(v34, v66), vzip2q_s64(v34, v66));
      v68 = vshlq_u32(v67, vnegq_s32((*&v22 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v69 = vuzp1q_s16(vzip1q_s32(v67, v68), vzip2q_s32(v67, v68));
      v70 = vshlq_u16(v69, vnegq_s16((*&v20 & __PAIR128__(0xF8FFF8FFF8FFF8FFLL, 0xF8FFF8FFF8FFF8FFLL))));
      v71 = vuzp1q_s8(vzip1q_s16(v69, v70), vzip2q_s16(v69, v70));
      v70.i64[0] = 0x101010101010101;
      v70.i64[1] = 0x101010101010101;
      v72 = vshlq_s8(v70, v20);
      v70.i64[0] = -1;
      v70.i64[1] = -1;
      v73 = vqtbl1q_s8(vandq_s8(vaddq_s8(v72, v70), v71), xmmword_29D2F0F70);
      v71.i64[0] = vmovl_s8(*v73.i8).u64[0];
      v70.i64[0] = vmovl_s8(vdup_lane_s32(*v73.i8, 1)).u64[0];
      v74 = vmovl_s8(*&vdupq_laneq_s32(v73, 2)).u64[0];
      v73.i64[0] = vmovl_s8(*&vdupq_laneq_s32(v73, 3)).u64[0];
      v549 = vsubw_s16(v549, *v71.i8);
      v550 = vsubw_s16(v550, *v70.i8);
      v551 = vsubw_s16(v551, v74);
      v552 = vsubw_s16(v552, *v73.i8);
      v503 = vmovl_s16(vceqz_s16(*v70.i8));
      v504 = vmovl_s16(vceqz_s16(*v71.i8));
      v63 = vmovl_s16(vceqz_s16(v74));
      v505 = vmovl_s16(vceqz_s16(*v73.i8));
    }

    v75.i64[0] = 0x800000008;
    v75.i64[1] = 0x800000008;
    v76 = vbicq_s8(v17, vceqzq_s32(vandq_s8(v548, v75)));
    v75.i64[0] = vpaddq_s32(v76, v76).u64[0];
    v77.i64[0] = v75.u32[0];
    v77.i64[1] = v75.u32[1];
    v78 = v77;
    v79 = vaddvq_s64(v77);
    v80 = v79;
    v81 = v21 + v79;
    if (v508.i64[0])
    {
      v82 = v508.i64[0] >= v81;
    }

    else
    {
      v82 = 1;
    }

    v83 = v82;
    if (v79 <= 0x80 && (v83 & 1) != 0)
    {
      v84 = vaddq_s64(vdupq_n_s64(v21 & 0x3F), vzip1q_s64(0, v78));
      v85 = (*(&v507 + 1) + 8 * (v21 >> 6));
      v86 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v85, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v84)), vshlq_u64(vdupq_lane_s64(v85->i64[0], 0), vnegq_s64(v84)));
      if ((v21 & 0x3F) + v80 >= 0x81)
      {
        v86 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v85[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v84)), vshlq_u64(vdupq_laneq_s64(v85[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v84))), v86);
      }

      v21 = v81;
    }

    else
    {
      v508.i8[8] = 1;
      v86 = 0uLL;
    }

    v87 = vzip1_s32(*v76.i8, *&vextq_s8(v76, v76, 8uLL));
    v88.i64[0] = v87.u32[0];
    v88.i64[1] = v87.u32[1];
    v89 = vshlq_u64(v86, vnegq_s64(v88));
    v90 = vuzp1q_s32(vzip1q_s64(v86, v89), vzip2q_s64(v86, v89));
    v89.i64[0] = 0x1F0000001FLL;
    v89.i64[1] = 0x1F0000001FLL;
    v91.i64[0] = 0x2000000020;
    v91.i64[1] = 0x2000000020;
    v92 = vshlq_s32(vshlq_s32(v90, vsubq_s32(v91, v76)), vaddq_s32(v76, v89));
    v553[3] = v92;
    v93 = v548.i8[0] & 3;
    if (v93 == 2)
    {
      if (v508.i64[0])
      {
        v94 = v21 + 16;
        v95 = v21 + 32;
        if (v508.i64[0] >= v21 + 16)
        {
          v96 = v21 + 16;
        }

        else
        {
          v95 = v21 + 16;
          v96 = v21;
        }

        if (v508.i64[0] >= v95)
        {
          v21 = v95;
        }

        else
        {
          v21 = v96;
        }

        if (v508.i64[0] < v94 || v508.i64[0] < v95)
        {
          v508.i8[8] = 1;
        }
      }

      else
      {
        v21 += 32;
      }
    }

    v97 = vpaddq_s32(0, 0).u64[0];
    v98.i64[0] = v97;
    v98.i64[1] = HIDWORD(v97);
    v99 = v98;
    v100 = vaddvq_s64(v98);
    v101 = v100;
    v102 = v21 + v100;
    if (v508.i64[0])
    {
      v103 = v508.i64[0] >= v102;
    }

    else
    {
      v103 = 1;
    }

    v104 = v103;
    if (v100 <= 0x80 && (v104 & 1) != 0)
    {
      v105 = v21 & 0x3F;
      v106 = vaddq_s64(vdupq_n_s64(v105), vzip1q_s64(0, v99));
      v107 = *(&v507 + 1);
      v108 = (*(&v507 + 1) + 8 * (v21 >> 6));
      v109 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v108, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v106)), vshlq_u64(vdupq_lane_s64(v108->i64[0], 0), vnegq_s64(v106)));
      if (v105 + v101 >= 0x81)
      {
        v106 = vorrq_s8(vshlq_u64(vdupq_lane_s64(v108[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v106)), vshlq_u64(vdupq_laneq_s64(v108[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v106)));
        v109 = vorrq_s8(v106, v109);
      }

      *&v507 = v102;
      *v106.i8 = vmovn_s64(v109);
      v110 = v508.i8[8];
      v21 = v102;
    }

    else
    {
      v106 = 0uLL;
      v110 = 1;
      v107 = *(&v507 + 1);
    }

    v111.i64[0] = 0x2000000020;
    v111.i64[1] = 0x2000000020;
    v112.i64[0] = 0x1F0000001FLL;
    v112.i64[1] = 0x1F0000001FLL;
    v113 = vshlq_s32(vshlq_s32(vzip1q_s32(v106, v106), v111), v112);
    v515 = v113;
    v114 = vpaddq_s32(v549, v549).u64[0];
    v115.i64[0] = v114;
    v115.i64[1] = HIDWORD(v114);
    v116 = v115;
    v117 = vaddvq_s64(v115);
    v118 = v117;
    v119 = v21 + v117;
    if (v508.i64[0])
    {
      v120 = v508.i64[0] >= v119;
    }

    else
    {
      v120 = 1;
    }

    v121 = v120;
    v122 = 0uLL;
    if (v117 <= 0x80 && v121)
    {
      v123 = v21 & 0x3F;
      v124 = vaddq_s64(vdupq_n_s64(v123), vzip1q_s64(0, v116));
      v125 = (v107 + 8 * (v21 >> 6));
      v126 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v125, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v124)), vshlq_u64(vdupq_lane_s64(v125->i64[0], 0), vnegq_s64(v124)));
      if (v123 + v118 >= 0x81)
      {
        v126 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v125[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v124)), vshlq_u64(vdupq_laneq_s64(v125[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v124))), v126);
      }
    }

    else
    {
      v110 = 1;
      v119 = v21;
      v126 = 0uLL;
    }

    v127 = vzip1_s32(*v549.i8, *&vextq_s8(v549, v549, 8uLL));
    v128.i64[0] = v127.u32[0];
    v128.i64[1] = v127.u32[1];
    v129 = vnegq_s64(v128);
    v130 = vshlq_u64(v126, v129);
    v131 = vaddq_s32(v549, v112);
    v132 = vsubq_s32(v111, v549);
    v133 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v126, v130), vzip2q_s64(v126, v130)), v132), v131);
    v516 = v133;
    v134 = v119 + v118;
    if (v508.i64[0])
    {
      v135 = v508.i64[0] >= v134;
    }

    else
    {
      v135 = 1;
    }

    v136 = v135;
    if (v118 <= 0x80 && v136)
    {
      v137 = v119 & 0x3F;
      v138 = vaddq_s64(vdupq_n_s64(v137), vzip1q_s64(0, v116));
      v139 = (v107 + 8 * (v119 >> 6));
      v122 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v139, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v138)), vshlq_u64(vdupq_lane_s64(v139->i64[0], 0), vnegq_s64(v138)));
      if (v137 + v118 >= 0x81)
      {
        v122 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v139[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v138)), vshlq_u64(vdupq_laneq_s64(v139[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v138))), v122);
      }
    }

    else
    {
      v110 = 1;
      v134 = v119;
    }

    v140 = vshlq_u64(v122, v129);
    v502 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v122, v140), vzip2q_s64(v122, v140)), v132), v131);
    v517 = v502;
    v141 = v134 + v118;
    if (v508.i64[0])
    {
      v142 = v508.i64[0] >= v141;
    }

    else
    {
      v142 = 1;
    }

    v143 = v142;
    v144 = 0uLL;
    if (v118 <= 0x80 && v143)
    {
      v145 = v134 & 0x3F;
      v146 = vaddq_s64(vdupq_n_s64(v145), vzip1q_s64(0, v116));
      v147 = (v107 + 8 * (v134 >> 6));
      v148 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v147, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v146)), vshlq_u64(vdupq_lane_s64(v147->i64[0], 0), vnegq_s64(v146)));
      if (v145 + v118 >= 0x81)
      {
        v148 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v147[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v146)), vshlq_u64(vdupq_laneq_s64(v147[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v146))), v148);
      }
    }

    else
    {
      v110 = 1;
      v141 = v134;
      v148 = 0uLL;
    }

    v149 = vshlq_u64(v148, v129);
    v150 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v148, v149), vzip2q_s64(v148, v149)), v132), v131);
    v518 = v150;
    v151 = v141 + v118;
    if (v508.i64[0])
    {
      v152 = v508.i64[0] >= v151;
    }

    else
    {
      v152 = 1;
    }

    v153 = v152;
    if (v118 <= 0x80 && v153)
    {
      v154 = v141 & 0x3F;
      v155 = vaddq_s64(vdupq_n_s64(v154), vzip1q_s64(0, v116));
      v156 = (v107 + 8 * (v141 >> 6));
      v144 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v156, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v155)), vshlq_u64(vdupq_lane_s64(v156->i64[0], 0), vnegq_s64(v155)));
      if (v154 + v118 >= 0x81)
      {
        v144 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v156[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v155)), vshlq_u64(vdupq_laneq_s64(v156[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v155))), v144);
      }
    }

    else
    {
      v110 = 1;
      v151 = v141;
    }

    v157 = vshlq_u64(v144, v129);
    v501 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v144, v157), vzip2q_s64(v144, v157)), v132), v131);
    v519 = v501;
    v158 = v151 + v118;
    if (v508.i64[0])
    {
      v159 = v508.i64[0] >= v158;
    }

    else
    {
      v159 = 1;
    }

    v160 = v159;
    v161 = 0uLL;
    if (v118 <= 0x80 && v160)
    {
      v162 = v151 & 0x3F;
      v163 = vaddq_s64(vdupq_n_s64(v162), vzip1q_s64(0, v116));
      v164 = (v107 + 8 * (v151 >> 6));
      v165 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v164, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v163)), vshlq_u64(vdupq_lane_s64(v164->i64[0], 0), vnegq_s64(v163)));
      if (v162 + v118 >= 0x81)
      {
        v165 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v164[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v163)), vshlq_u64(vdupq_laneq_s64(v164[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v163))), v165);
      }
    }

    else
    {
      v110 = 1;
      v158 = v151;
      v165 = 0uLL;
    }

    v166 = vshlq_u64(v165, v129);
    v167 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v165, v166), vzip2q_s64(v165, v166)), v132), v131);
    v520 = v167;
    v168 = v158 + v118;
    if (v508.i64[0])
    {
      v169 = v508.i64[0] >= v168;
    }

    else
    {
      v169 = 1;
    }

    v170 = v169;
    if (v118 <= 0x80 && v170)
    {
      v171 = v158 & 0x3F;
      v172 = vaddq_s64(vdupq_n_s64(v171), vzip1q_s64(0, v116));
      v173 = (v107 + 8 * (v158 >> 6));
      v161 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v173, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v172)), vshlq_u64(vdupq_lane_s64(v173->i64[0], 0), vnegq_s64(v172)));
      if (v171 + v118 >= 0x81)
      {
        v161 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v173[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v172)), vshlq_u64(vdupq_laneq_s64(v173[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v172))), v161);
      }
    }

    else
    {
      v110 = 1;
      v168 = v158;
    }

    v174 = vshlq_u64(v161, v129);
    v500 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v161, v174), vzip2q_s64(v161, v174)), v132), v131);
    v521 = v500;
    v175 = v168 + v118;
    if (v508.i64[0])
    {
      v176 = v508.i64[0] >= v175;
    }

    else
    {
      v176 = 1;
    }

    v177 = v176;
    v178 = 0uLL;
    if (v118 <= 0x80 && v177)
    {
      v179 = v168 & 0x3F;
      v180 = vaddq_s64(vdupq_n_s64(v179), vzip1q_s64(0, v116));
      v181 = (v107 + 8 * (v168 >> 6));
      v182 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v181, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v180)), vshlq_u64(vdupq_lane_s64(v181->i64[0], 0), vnegq_s64(v180)));
      if (v179 + v118 >= 0x81)
      {
        v182 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v181[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v180)), vshlq_u64(vdupq_laneq_s64(v181[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v180))), v182);
      }
    }

    else
    {
      v110 = 1;
      v175 = v168;
      v182 = 0uLL;
    }

    v183 = vshlq_u64(v182, v129);
    v499 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v182, v183), vzip2q_s64(v182, v183)), v132), v131);
    v522 = v499;
    v184 = vpaddq_s32(v550, v550).u64[0];
    v185.i64[0] = v184;
    v185.i64[1] = HIDWORD(v184);
    v186 = v185;
    v187 = vaddvq_s64(v185);
    v188 = v187;
    v189 = v175 + v187;
    if (v508.i64[0])
    {
      v190 = v508.i64[0] >= v189;
    }

    else
    {
      v190 = 1;
    }

    v191 = v190;
    if (v187 <= 0x80 && v191)
    {
      v192 = v175 & 0x3F;
      v193 = vaddq_s64(vdupq_n_s64(v192), vzip1q_s64(0, v186));
      v194 = (v107 + 8 * (v175 >> 6));
      v178 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v194, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v193)), vshlq_u64(vdupq_lane_s64(v194->i64[0], 0), vnegq_s64(v193)));
      if (v192 + v188 >= 0x81)
      {
        v178 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v194[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v193)), vshlq_u64(vdupq_laneq_s64(v194[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v193))), v178);
      }
    }

    else
    {
      v110 = 1;
      v189 = v175;
    }

    v195 = vzip1_s32(*v550.i8, *&vextq_s8(v550, v550, 8uLL));
    v196.i64[0] = v195.u32[0];
    v196.i64[1] = v195.u32[1];
    v197 = vnegq_s64(v196);
    v198 = vshlq_u64(v178, v197);
    v199 = vuzp1q_s32(vzip1q_s64(v178, v198), vzip2q_s64(v178, v198));
    v198.i64[0] = 0x1F0000001FLL;
    v198.i64[1] = 0x1F0000001FLL;
    v200 = vaddq_s32(v550, v198);
    v201.i64[0] = 0x2000000020;
    v201.i64[1] = 0x2000000020;
    v202 = vsubq_s32(v201, v550);
    v498 = vshlq_s32(vshlq_s32(v199, v202), v200);
    v523 = v498;
    v203 = v189 + v188;
    if (v508.i64[0])
    {
      v204 = v508.i64[0] >= v203;
    }

    else
    {
      v204 = 1;
    }

    v205 = v204;
    v206 = 0uLL;
    if (v188 <= 0x80 && v205)
    {
      v207 = v189 & 0x3F;
      v208 = vaddq_s64(vdupq_n_s64(v207), vzip1q_s64(0, v186));
      v209 = (v107 + 8 * (v189 >> 6));
      v210 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v209, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v208)), vshlq_u64(vdupq_lane_s64(v209->i64[0], 0), vnegq_s64(v208)));
      if (v207 + v188 >= 0x81)
      {
        v210 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v209[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v208)), vshlq_u64(vdupq_laneq_s64(v209[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v208))), v210);
      }
    }

    else
    {
      v110 = 1;
      v203 = v189;
      v210 = 0uLL;
    }

    v211 = vshlq_u64(v210, v197);
    v497 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v210, v211), vzip2q_s64(v210, v211)), v202), v200);
    v524 = v497;
    v212 = v203 + v188;
    if (v508.i64[0])
    {
      v213 = v508.i64[0] >= v212;
    }

    else
    {
      v213 = 1;
    }

    v214 = v213;
    if (v188 <= 0x80 && v214)
    {
      v215 = v203 & 0x3F;
      v216 = vaddq_s64(vdupq_n_s64(v215), vzip1q_s64(0, v186));
      v217 = (v107 + 8 * (v203 >> 6));
      v206 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v217, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v216)), vshlq_u64(vdupq_lane_s64(v217->i64[0], 0), vnegq_s64(v216)));
      if (v215 + v188 >= 0x81)
      {
        v206 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v217[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v216)), vshlq_u64(vdupq_laneq_s64(v217[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v216))), v206);
      }
    }

    else
    {
      v110 = 1;
      v212 = v203;
    }

    v218 = vshlq_u64(v206, v197);
    v496 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v206, v218), vzip2q_s64(v206, v218)), v202), v200);
    v525 = v496;
    v219 = v212 + v188;
    if (v508.i64[0])
    {
      v220 = v508.i64[0] >= v219;
    }

    else
    {
      v220 = 1;
    }

    v221 = v220;
    v222 = 0uLL;
    if (v188 <= 0x80 && v221)
    {
      v223 = v212 & 0x3F;
      v224 = vaddq_s64(vdupq_n_s64(v223), vzip1q_s64(0, v186));
      v225 = (v107 + 8 * (v212 >> 6));
      v226 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v225, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v224)), vshlq_u64(vdupq_lane_s64(v225->i64[0], 0), vnegq_s64(v224)));
      if (v223 + v188 >= 0x81)
      {
        v226 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v225[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v224)), vshlq_u64(vdupq_laneq_s64(v225[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v224))), v226);
      }
    }

    else
    {
      v110 = 1;
      v219 = v212;
      v226 = 0uLL;
    }

    v227 = vshlq_u64(v226, v197);
    v495 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v226, v227), vzip2q_s64(v226, v227)), v202), v200);
    v526 = v495;
    v228 = v219 + v188;
    if (v508.i64[0])
    {
      v229 = v508.i64[0] >= v228;
    }

    else
    {
      v229 = 1;
    }

    v230 = v229;
    if (v188 <= 0x80 && v230)
    {
      v231 = v219 & 0x3F;
      v232 = vaddq_s64(vdupq_n_s64(v231), vzip1q_s64(0, v186));
      v233 = (v107 + 8 * (v219 >> 6));
      v222 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v233, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v232)), vshlq_u64(vdupq_lane_s64(v233->i64[0], 0), vnegq_s64(v232)));
      if (v231 + v188 >= 0x81)
      {
        v222 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v233[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v232)), vshlq_u64(vdupq_laneq_s64(v233[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v232))), v222);
      }
    }

    else
    {
      v110 = 1;
      v228 = v219;
    }

    v234 = vshlq_u64(v222, v197);
    v494 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v222, v234), vzip2q_s64(v222, v234)), v202), v200);
    v527 = v494;
    v235 = v228 + v188;
    if (v508.i64[0])
    {
      v236 = v508.i64[0] >= v235;
    }

    else
    {
      v236 = 1;
    }

    v237 = v236;
    v238 = 0uLL;
    if (v188 <= 0x80 && v237)
    {
      v239 = v228 & 0x3F;
      v240 = vaddq_s64(vdupq_n_s64(v239), vzip1q_s64(0, v186));
      v241 = (v107 + 8 * (v228 >> 6));
      v242 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v241, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v240)), vshlq_u64(vdupq_lane_s64(v241->i64[0], 0), vnegq_s64(v240)));
      if (v239 + v188 >= 0x81)
      {
        v242 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v241[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v240)), vshlq_u64(vdupq_laneq_s64(v241[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v240))), v242);
      }
    }

    else
    {
      v110 = 1;
      v235 = v228;
      v242 = 0uLL;
    }

    v243 = vshlq_u64(v242, v197);
    v244 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v242, v243), vzip2q_s64(v242, v243)), v202), v200);
    v528 = v244;
    v245 = v235 + v188;
    if (v508.i64[0])
    {
      v246 = v508.i64[0] >= v245;
    }

    else
    {
      v246 = 1;
    }

    v247 = v246;
    if (v188 <= 0x80 && v247)
    {
      v248 = v235 & 0x3F;
      v249 = vaddq_s64(vdupq_n_s64(v248), vzip1q_s64(0, v186));
      v250 = (v107 + 8 * (v235 >> 6));
      v238 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v250, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v249)), vshlq_u64(vdupq_lane_s64(v250->i64[0], 0), vnegq_s64(v249)));
      if (v248 + v188 >= 0x81)
      {
        v238 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v250[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v249)), vshlq_u64(vdupq_laneq_s64(v250[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v249))), v238);
      }
    }

    else
    {
      v110 = 1;
      v245 = v235;
    }

    v251 = vshlq_u64(v238, v197);
    v252 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v238, v251), vzip2q_s64(v238, v251)), v202), v200);
    v529 = v252;
    v253 = v245 + v188;
    if (v508.i64[0])
    {
      v254 = v508.i64[0] >= v253;
    }

    else
    {
      v254 = 1;
    }

    v255 = v254;
    v256 = 0uLL;
    if (v188 <= 0x80 && v255)
    {
      v257 = v245 & 0x3F;
      v258 = vaddq_s64(vdupq_n_s64(v257), vzip1q_s64(0, v186));
      v259 = (v107 + 8 * (v245 >> 6));
      v260 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v259, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v258)), vshlq_u64(vdupq_lane_s64(v259->i64[0], 0), vnegq_s64(v258)));
      if (v257 + v188 >= 0x81)
      {
        v260 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v259[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v258)), vshlq_u64(vdupq_laneq_s64(v259[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v258))), v260);
      }
    }

    else
    {
      v110 = 1;
      v253 = v245;
      v260 = 0uLL;
    }

    v261 = vshlq_u64(v260, v197);
    v262 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v260, v261), vzip2q_s64(v260, v261)), v202), v200);
    v530 = v262;
    v263 = vpaddq_s32(v551, v551).u64[0];
    v264.i64[0] = v263;
    v264.i64[1] = HIDWORD(v263);
    v265 = v264;
    v266 = vaddvq_s64(v264);
    v267 = v266;
    v268 = v253 + v266;
    if (v508.i64[0])
    {
      v269 = v508.i64[0] >= v268;
    }

    else
    {
      v269 = 1;
    }

    v270 = v269;
    if (v266 <= 0x80 && v270)
    {
      v271 = v253 & 0x3F;
      v272 = vaddq_s64(vdupq_n_s64(v271), vzip1q_s64(0, v265));
      v273 = (v107 + 8 * (v253 >> 6));
      v256 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v273, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v272)), vshlq_u64(vdupq_lane_s64(v273->i64[0], 0), vnegq_s64(v272)));
      if (v271 + v267 >= 0x81)
      {
        v256 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v273[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v272)), vshlq_u64(vdupq_laneq_s64(v273[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v272))), v256);
      }
    }

    else
    {
      v110 = 1;
      v268 = v253;
    }

    v274 = vzip1_s32(*v551.i8, *&vextq_s8(v551, v551, 8uLL));
    v275.i64[0] = v274.u32[0];
    v275.i64[1] = v274.u32[1];
    v276 = vnegq_s64(v275);
    v277 = vshlq_u64(v256, v276);
    v278 = vuzp1q_s32(vzip1q_s64(v256, v277), vzip2q_s64(v256, v277));
    v277.i64[0] = 0x1F0000001FLL;
    v277.i64[1] = 0x1F0000001FLL;
    v279 = vaddq_s32(v551, v277);
    v280.i64[0] = 0x2000000020;
    v280.i64[1] = 0x2000000020;
    v281 = vsubq_s32(v280, v551);
    v282 = vshlq_s32(vshlq_s32(v278, v281), v279);
    v531 = v282;
    v283 = v268 + v267;
    if (v508.i64[0])
    {
      v284 = v508.i64[0] >= v283;
    }

    else
    {
      v284 = 1;
    }

    v285 = v284;
    v286 = 0uLL;
    if (v267 <= 0x80 && v285)
    {
      v287 = v268 & 0x3F;
      v288 = vaddq_s64(vdupq_n_s64(v287), vzip1q_s64(0, v265));
      v289 = (v107 + 8 * (v268 >> 6));
      v290 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v289, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v288)), vshlq_u64(vdupq_lane_s64(v289->i64[0], 0), vnegq_s64(v288)));
      if (v287 + v267 >= 0x81)
      {
        v290 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v289[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v288)), vshlq_u64(vdupq_laneq_s64(v289[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v288))), v290);
      }
    }

    else
    {
      v110 = 1;
      v283 = v268;
      v290 = 0uLL;
    }

    v291 = vshlq_u64(v290, v276);
    v292 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v290, v291), vzip2q_s64(v290, v291)), v281), v279);
    v532 = v292;
    v293 = v283 + v267;
    if (v508.i64[0])
    {
      v294 = v508.i64[0] >= v293;
    }

    else
    {
      v294 = 1;
    }

    v295 = v294;
    if (v267 <= 0x80 && v295)
    {
      v296 = v283 & 0x3F;
      v297 = vaddq_s64(vdupq_n_s64(v296), vzip1q_s64(0, v265));
      v298 = (v107 + 8 * (v283 >> 6));
      v286 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v298, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v297)), vshlq_u64(vdupq_lane_s64(v298->i64[0], 0), vnegq_s64(v297)));
      if (v296 + v267 >= 0x81)
      {
        v286 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v298[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v297)), vshlq_u64(vdupq_laneq_s64(v298[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v297))), v286);
      }
    }

    else
    {
      v110 = 1;
      v293 = v283;
    }

    v299 = vshlq_u64(v286, v276);
    v300 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v286, v299), vzip2q_s64(v286, v299)), v281), v279);
    v533 = v300;
    v301 = v293 + v267;
    if (v508.i64[0])
    {
      v302 = v508.i64[0] >= v301;
    }

    else
    {
      v302 = 1;
    }

    v303 = v302;
    v304 = 0uLL;
    if (v267 <= 0x80 && v303)
    {
      v305 = v293 & 0x3F;
      v306 = vaddq_s64(vdupq_n_s64(v305), vzip1q_s64(0, v265));
      v307 = (v107 + 8 * (v293 >> 6));
      v308 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v307, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v306)), vshlq_u64(vdupq_lane_s64(v307->i64[0], 0), vnegq_s64(v306)));
      if (v305 + v267 >= 0x81)
      {
        v308 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v307[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v306)), vshlq_u64(vdupq_laneq_s64(v307[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v306))), v308);
      }
    }

    else
    {
      v110 = 1;
      v301 = v293;
      v308 = 0uLL;
    }

    v309 = vshlq_u64(v308, v276);
    v310 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v308, v309), vzip2q_s64(v308, v309)), v281), v279);
    v534 = v310;
    v311 = v301 + v267;
    if (v508.i64[0])
    {
      v312 = v508.i64[0] >= v311;
    }

    else
    {
      v312 = 1;
    }

    v313 = v312;
    if (v267 <= 0x80 && v313)
    {
      v314 = v301 & 0x3F;
      v315 = vaddq_s64(vdupq_n_s64(v314), vzip1q_s64(0, v265));
      v316 = (v107 + 8 * (v301 >> 6));
      v304 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v316, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v315)), vshlq_u64(vdupq_lane_s64(v316->i64[0], 0), vnegq_s64(v315)));
      if (v314 + v267 >= 0x81)
      {
        v304 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v316[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v315)), vshlq_u64(vdupq_laneq_s64(v316[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v315))), v304);
      }
    }

    else
    {
      v110 = 1;
      v311 = v301;
    }

    v317 = vshlq_u64(v304, v276);
    v318 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v304, v317), vzip2q_s64(v304, v317)), v281), v279);
    v535 = v318;
    v319 = v311 + v267;
    if (v508.i64[0])
    {
      v320 = v508.i64[0] >= v319;
    }

    else
    {
      v320 = 1;
    }

    v321 = v320;
    v322 = 0uLL;
    if (v267 <= 0x80 && v321)
    {
      v323 = v311 & 0x3F;
      v324 = vaddq_s64(vdupq_n_s64(v323), vzip1q_s64(0, v265));
      v325 = (v107 + 8 * (v311 >> 6));
      v326 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v325, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v324)), vshlq_u64(vdupq_lane_s64(v325->i64[0], 0), vnegq_s64(v324)));
      if (v323 + v267 >= 0x81)
      {
        v326 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v325[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v324)), vshlq_u64(vdupq_laneq_s64(v325[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v324))), v326);
      }
    }

    else
    {
      v110 = 1;
      v319 = v311;
      v326 = 0uLL;
    }

    v327 = vshlq_u64(v326, v276);
    v328 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v326, v327), vzip2q_s64(v326, v327)), v281), v279);
    v536 = v328;
    v329 = v319 + v267;
    if (v508.i64[0])
    {
      v330 = v508.i64[0] >= v329;
    }

    else
    {
      v330 = 1;
    }

    v331 = v330;
    if (v267 <= 0x80 && v331)
    {
      v332 = v319 & 0x3F;
      v333 = vaddq_s64(vdupq_n_s64(v332), vzip1q_s64(0, v265));
      v334 = (v107 + 8 * (v319 >> 6));
      v322 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v334, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v333)), vshlq_u64(vdupq_lane_s64(v334->i64[0], 0), vnegq_s64(v333)));
      if (v332 + v267 >= 0x81)
      {
        v322 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v334[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v333)), vshlq_u64(vdupq_laneq_s64(v334[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v333))), v322);
      }
    }

    else
    {
      v110 = 1;
      v329 = v319;
    }

    v335 = vshlq_u64(v322, v276);
    v336 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v322, v335), vzip2q_s64(v322, v335)), v281), v279);
    v537 = v336;
    v337 = v329 + v267;
    if (v508.i64[0])
    {
      v338 = v508.i64[0] >= v337;
    }

    else
    {
      v338 = 1;
    }

    v339 = v338;
    v340 = 0uLL;
    if (v267 <= 0x80 && v339)
    {
      v341 = v329 & 0x3F;
      v342 = vaddq_s64(vdupq_n_s64(v341), vzip1q_s64(0, v265));
      v343 = (v107 + 8 * (v329 >> 6));
      v344 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v343, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v342)), vshlq_u64(vdupq_lane_s64(v343->i64[0], 0), vnegq_s64(v342)));
      if (v341 + v267 >= 0x81)
      {
        v344 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v343[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v342)), vshlq_u64(vdupq_laneq_s64(v343[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v342))), v344);
      }
    }

    else
    {
      v110 = 1;
      v337 = v329;
      v344 = 0uLL;
    }

    v345 = vshlq_u64(v344, v276);
    v346 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v344, v345), vzip2q_s64(v344, v345)), v281), v279);
    v538 = v346;
    v345.i64[0] = vpaddq_s32(v552, v552).u64[0];
    v347.i64[0] = v345.u32[0];
    v347.i64[1] = v345.u32[1];
    v348 = v347;
    v349 = vaddvq_s64(v347);
    v350 = v349;
    v351 = v337 + v349;
    if (v508.i64[0])
    {
      v352 = v508.i64[0] >= v351;
    }

    else
    {
      v352 = 1;
    }

    v353 = v352;
    if (v349 <= 0x80 && v353)
    {
      v354 = v337 & 0x3F;
      v355 = vaddq_s64(vdupq_n_s64(v354), vzip1q_s64(0, v348));
      v356 = (v107 + 8 * (v337 >> 6));
      v340 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v356, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v355)), vshlq_u64(vdupq_lane_s64(v356->i64[0], 0), vnegq_s64(v355)));
      if (v354 + v350 >= 0x81)
      {
        v340 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v356[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v355)), vshlq_u64(vdupq_laneq_s64(v356[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v355))), v340);
      }
    }

    else
    {
      v110 = 1;
      v351 = v337;
    }

    v357 = vzip1_s32(*v552.i8, *&vextq_s8(v552, v552, 8uLL));
    v358.i64[0] = v357.u32[0];
    v358.i64[1] = v357.u32[1];
    v359 = vnegq_s64(v358);
    v360 = vshlq_u64(v340, v359);
    v361 = vuzp1q_s32(vzip1q_s64(v340, v360), vzip2q_s64(v340, v360));
    v362.i64[0] = 0x1F0000001FLL;
    v362.i64[1] = 0x1F0000001FLL;
    v363 = vaddq_s32(v552, v362);
    v362.i64[0] = 0x2000000020;
    v362.i64[1] = 0x2000000020;
    v364 = vsubq_s32(v362, v552);
    v365 = vshlq_s32(vshlq_s32(v361, v364), v363);
    v539 = v365;
    v366 = v351 + v350;
    if (v508.i64[0])
    {
      v367 = v508.i64[0] >= v366;
    }

    else
    {
      v367 = 1;
    }

    v368 = v367;
    v369 = 0uLL;
    if (v350 <= 0x80 && v368)
    {
      v370 = v351 & 0x3F;
      v371 = vaddq_s64(vdupq_n_s64(v370), vzip1q_s64(0, v348));
      v372 = (v107 + 8 * (v351 >> 6));
      v373 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v372, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v371)), vshlq_u64(vdupq_lane_s64(v372->i64[0], 0), vnegq_s64(v371)));
      if (v370 + v350 >= 0x81)
      {
        v373 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v372[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v371)), vshlq_u64(vdupq_laneq_s64(v372[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v371))), v373);
      }
    }

    else
    {
      v110 = 1;
      v366 = v351;
      v373 = 0uLL;
    }

    v374 = vshlq_u64(v373, v359);
    v375 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v373, v374), vzip2q_s64(v373, v374)), v364), v363);
    v540 = v375;
    v376 = v366 + v350;
    if (v508.i64[0])
    {
      v377 = v508.i64[0] >= v376;
    }

    else
    {
      v377 = 1;
    }

    v378 = v377;
    if (v350 <= 0x80 && v378)
    {
      v379 = v366 & 0x3F;
      v380 = vaddq_s64(vdupq_n_s64(v379), vzip1q_s64(0, v348));
      v381 = (v107 + 8 * (v366 >> 6));
      v369 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v381, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v380)), vshlq_u64(vdupq_lane_s64(v381->i64[0], 0), vnegq_s64(v380)));
      if (v379 + v350 >= 0x81)
      {
        v369 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v381[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v380)), vshlq_u64(vdupq_laneq_s64(v381[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v380))), v369);
      }
    }

    else
    {
      v110 = 1;
      v376 = v366;
    }

    v382 = vshlq_u64(v369, v359);
    v383 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v369, v382), vzip2q_s64(v369, v382)), v364), v363);
    v541 = v383;
    v384 = v376 + v350;
    if (v508.i64[0])
    {
      v385 = v508.i64[0] >= v384;
    }

    else
    {
      v385 = 1;
    }

    v386 = v385;
    v387 = 0uLL;
    if (v350 <= 0x80 && v386)
    {
      v388 = v376 & 0x3F;
      v389 = vaddq_s64(vdupq_n_s64(v388), vzip1q_s64(0, v348));
      v390 = (v107 + 8 * (v376 >> 6));
      v391 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v390, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v389)), vshlq_u64(vdupq_lane_s64(v390->i64[0], 0), vnegq_s64(v389)));
      if (v388 + v350 >= 0x81)
      {
        v391 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v390[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v389)), vshlq_u64(vdupq_laneq_s64(v390[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v389))), v391);
      }
    }

    else
    {
      v110 = 1;
      v384 = v376;
      v391 = 0uLL;
    }

    v392 = vshlq_u64(v391, v359);
    v393 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v391, v392), vzip2q_s64(v391, v392)), v364), v363);
    v542 = v393;
    v394 = v384 + v350;
    if (v508.i64[0])
    {
      v395 = v508.i64[0] >= v394;
    }

    else
    {
      v395 = 1;
    }

    v396 = v395;
    if (v350 <= 0x80 && v396)
    {
      v397 = v384 & 0x3F;
      v398 = vaddq_s64(vdupq_n_s64(v397), vzip1q_s64(0, v348));
      v399 = (v107 + 8 * (v384 >> 6));
      v387 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v399, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v398)), vshlq_u64(vdupq_lane_s64(v399->i64[0], 0), vnegq_s64(v398)));
      if (v397 + v350 >= 0x81)
      {
        v387 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v399[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v398)), vshlq_u64(vdupq_laneq_s64(v399[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v398))), v387);
      }
    }

    else
    {
      v110 = 1;
      v394 = v384;
    }

    v400 = vshlq_u64(v387, v359);
    v401 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v387, v400), vzip2q_s64(v387, v400)), v364), v363);
    v543 = v401;
    v402 = v394 + v350;
    if (v508.i64[0])
    {
      v403 = v508.i64[0] >= v402;
    }

    else
    {
      v403 = 1;
    }

    v404 = v403;
    v405 = 0uLL;
    if (v350 <= 0x80 && v404)
    {
      v406 = v394 & 0x3F;
      v407 = vaddq_s64(vdupq_n_s64(v406), vzip1q_s64(0, v348));
      v408 = (v107 + 8 * (v394 >> 6));
      v409 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v408, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v407)), vshlq_u64(vdupq_lane_s64(v408->i64[0], 0), vnegq_s64(v407)));
      if (v406 + v350 >= 0x81)
      {
        v409 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v408[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v407)), vshlq_u64(vdupq_laneq_s64(v408[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v407))), v409);
      }
    }

    else
    {
      v110 = 1;
      v402 = v394;
      v409 = 0uLL;
    }

    v410 = vshlq_u64(v409, v359);
    v411 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v409, v410), vzip2q_s64(v409, v410)), v364), v363);
    v544 = v411;
    v412 = v402 + v350;
    if (v508.i64[0])
    {
      v413 = v508.i64[0] >= v412;
    }

    else
    {
      v413 = 1;
    }

    v414 = v413;
    if (v350 <= 0x80 && v414)
    {
      v415 = v402 & 0x3F;
      v416 = vaddq_s64(vdupq_n_s64(v415), vzip1q_s64(0, v348));
      v417 = (v107 + 8 * (v402 >> 6));
      v405 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v417, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v416)), vshlq_u64(vdupq_lane_s64(v417->i64[0], 0), vnegq_s64(v416)));
      if (v415 + v350 >= 0x81)
      {
        v405 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v417[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v416)), vshlq_u64(vdupq_laneq_s64(v417[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v416))), v405);
      }
    }

    else
    {
      v110 = 1;
      v412 = v402;
    }

    v418 = vshlq_u64(v405, v359);
    v419 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v405, v418), vzip2q_s64(v405, v418)), v364), v363);
    v545 = v419;
    v420 = v412 + v350;
    if (v508.i64[0])
    {
      v421 = v508.i64[0] >= v420;
    }

    else
    {
      v421 = 1;
    }

    v422 = v421;
    if (v350 > 0x80 || !v422)
    {
      goto LABEL_416;
    }

    v423 = vaddq_s64(vdupq_n_s64(v412 & 0x3F), vzip1q_s64(0, v348));
    v424 = (v107 + 8 * (v412 >> 6));
    v425 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v424, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v423)), vshlq_u64(vdupq_lane_s64(v424->i64[0], 0), vnegq_s64(v423)));
    if ((v412 & 0x3F) + v350 < 0x81)
    {
      if (v110)
      {
        goto LABEL_416;
      }

      v429 = vshlq_u64(v425, v359);
      v428 = vuzp1q_s32(vzip1q_s64(v425, v429), vzip2q_s64(v425, v429));
    }

    else
    {
      if (v110)
      {
        goto LABEL_416;
      }

      v426 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v424[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v423)), vshlq_u64(vdupq_laneq_s64(v424[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v423))), v425);
      v427 = vshlq_u64(v426, v359);
      v428 = vuzp1q_s32(vzip1q_s64(v426, v427), vzip2q_s64(v426, v427));
    }

    v430 = vshlq_s32(vshlq_s32(v428, v364), v363);
    if (v508.i64[0] + 8 * result - v420 - 2048 < 0x11 && v93 != 2)
    {
      v431.i64[0] = 0x1000000010;
      v431.i64[1] = 0x1000000010;
      v432 = vandq_s8(v548, v431);
      v433 = vandq_s8(v92, v504);
      v434 = v547;
      v435 = vaddq_s32(v547, v113);
      v436 = vaddq_s32(v547, vsubq_s32(v133, v433));
      v437 = vceqzq_s32(v432);
      v438 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v436, xmmword_29D2F11D0), v437), v436);
      v439 = vaddq_s32(v547, vsubq_s32(v502, v433));
      v440 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v439, xmmword_29D2F11D0), v437), v439);
      v441 = vaddq_s32(v547, vsubq_s32(v150, v433));
      v442 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v441, xmmword_29D2F11D0), v437), v441);
      v443 = vandq_s8(v92, v505);
      v506 = vsubq_s32(v430, v443);
      *a1 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v435, xmmword_29D2F11D0), v437), v435);
      *(a1 + 16) = v438;
      *(a1 + 32) = v440;
      *(a1 + 48) = v442;
      v444 = vaddq_s32(v434, vsubq_s32(v501, v433));
      v445 = vaddq_s32(v434, vsubq_s32(v167, v433));
      v446 = v92;
      v447 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v444, xmmword_29D2F11D0), v437), v444);
      v448 = vaddq_s32(v434, vsubq_s32(v500, v433));
      v449 = vaddq_s32(v434, vsubq_s32(v499, v433));
      *(a1 + 64) = v447;
      *(a1 + 80) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v445, xmmword_29D2F11D0), v437), v445);
      *(a1 + 96) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v448, xmmword_29D2F11D0), v437), v448);
      *(a1 + 112) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v449, xmmword_29D2F11D0), v437), v449);
      v450 = vandq_s8(v92, v63);
      v451 = vaddq_s32(v434, vsubq_s32(v282, v450));
      v452 = vaddq_s32(v434, vsubq_s32(v292, v450));
      v453 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v451, xmmword_29D2F11D0), v437), v451);
      v454 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v452, xmmword_29D2F11D0), v437), v452);
      v455 = vaddq_s32(v434, vsubq_s32(v300, v450));
      v456 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v455, xmmword_29D2F11D0), v437), v455);
      v457 = vaddq_s32(v434, vsubq_s32(v310, v450));
      v458 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v457, xmmword_29D2F11D0), v437), v457);
      v459 = vaddq_s32(v434, vsubq_s32(v318, v450));
      v460 = vaddq_s32(v434, vsubq_s32(v328, v450));
      *(a1 + 128) = v453;
      *(a1 + 144) = v454;
      *(a1 + 160) = v456;
      *(a1 + 176) = v458;
      v461 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v459, xmmword_29D2F11D0), v437), v459);
      v462 = vaddq_s32(v434, vsubq_s32(v336, v450));
      v463 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v462, xmmword_29D2F11D0), v437), v462);
      v464 = vaddq_s32(v434, vsubq_s32(v346, v450));
      v465 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v464, xmmword_29D2F11D0), v437), v464);
      v466 = vandq_s8(v446, v503);
      v467 = vaddq_s32(v434, vsubq_s32(v498, v466));
      *(a1 + 192) = v461;
      *(a1 + 208) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v460, xmmword_29D2F11D0), v437), v460);
      *(a1 + 224) = v463;
      *(a1 + 240) = v465;
      v468 = vaddq_s32(v434, vsubq_s32(v497, v466));
      v469 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v467, xmmword_29D2F11D0), v437), v467);
      v470 = vaddq_s32(v434, vsubq_s32(v496, v466));
      v471 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v470, xmmword_29D2F11D0), v437), v470);
      v472 = vaddq_s32(v434, vsubq_s32(v495, v466));
      v473 = (a1 + a2);
      *v473 = v469;
      v473[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v468, xmmword_29D2F11D0), v437), v468);
      v473[2] = v471;
      v473[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v472, xmmword_29D2F11D0), v437), v472);
      v474 = a1 + a2 + 64;
      v475 = vaddq_s32(v434, vsubq_s32(v494, v466));
      v476 = vaddq_s32(v434, vsubq_s32(v244, v466));
      v477 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v475, xmmword_29D2F11D0), v437), v475);
      v478 = vaddq_s32(v434, vsubq_s32(v252, v466));
      v479 = vaddq_s32(v434, vsubq_s32(v262, v466));
      *v474 = v477;
      *(v474 + 16) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v476, xmmword_29D2F11D0), v437), v476);
      *(v474 + 32) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v478, xmmword_29D2F11D0), v437), v478);
      *(v474 + 48) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v479, xmmword_29D2F11D0), v437), v479);
      v480 = vaddq_s32(v434, vsubq_s32(v365, v443));
      v481 = vaddq_s32(v434, vsubq_s32(v375, v443));
      v482 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v480, xmmword_29D2F11D0), v437), v480);
      v483 = vaddq_s32(v434, vsubq_s32(v383, v443));
      v484 = vaddq_s32(v434, vsubq_s32(v393, v443));
      v485 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v484, xmmword_29D2F11D0), v437), v484);
      v486 = a1 + a2 + 128;
      v487 = vaddq_s32(v434, vsubq_s32(v401, v443));
      v488 = vaddq_s32(v434, vsubq_s32(v411, v443));
      *v486 = v482;
      *(v486 + 16) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v481, xmmword_29D2F11D0), v437), v481);
      *(v486 + 32) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v483, xmmword_29D2F11D0), v437), v483);
      *(v486 + 48) = v485;
      v489 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v487, xmmword_29D2F11D0), v437), v487);
      v490 = vaddq_s32(v434, vsubq_s32(v419, v443));
      v491 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v490, xmmword_29D2F11D0), v437), v490);
      v492 = vaddq_s32(v434, v506);
      v493 = a1 + a2 + 192;
      *v493 = v489;
      *(v493 + 16) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v488, xmmword_29D2F11D0), v437), v488);
      *(v493 + 32) = v491;
      *(v493 + 48) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v492, xmmword_29D2F11D0), v437), v492);
      return result;
    }

LABEL_416:
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::writeErrorColorToSubblock(a1, a2);
    return 0;
  }

  if (a4)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v507, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v507, a5);
  }

  v515 = v507;
  v516 = v509;
  v519 = v508;
  v520 = v510;
  v523 = v511;
  v524 = v513;
  v527 = v512;
  v528 = v514;
  v14 = a3 + 64;
  if ((v7 & 2) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v14, &v507, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v14, &v507, a5);
  }

  v517 = v507;
  v518 = v509;
  v521 = v508;
  v522 = v510;
  v525 = v511;
  v526 = v513;
  v529 = v512;
  v530 = v514;
  v35 = a3 + 128;
  if ((v7 & 4) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v35, &v507, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v35, &v507, a5);
  }

  v531 = v507;
  v532 = v509;
  v535 = v508;
  v536 = v510;
  v539 = v511;
  v540 = v513;
  v543 = v512;
  v544 = v514;
  v36 = a3 + 192;
  if ((v7 & 8) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v36, &v507, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v36, &v507, a5);
  }

  v533 = v507;
  v534 = v509;
  v537 = v508;
  v538 = v510;
  v541 = v511;
  v542 = v513;
  v545 = v512;
  v546 = v514;
  v37 = v519;
  v38 = v520;
  v39 = v507;
  *a1 = v515;
  *(a1 + 16) = v37;
  *(a1 + 32) = v516;
  *(a1 + 48) = v38;
  v40 = v524;
  v41 = v527;
  v42 = v528;
  *(a1 + 64) = v523;
  *(a1 + 80) = v41;
  *(a1 + 96) = v40;
  *(a1 + 112) = v42;
  v43 = v532;
  v44 = v535;
  v45 = v536;
  *(a1 + 128) = v531;
  *(a1 + 144) = v44;
  *(a1 + 160) = v43;
  *(a1 + 176) = v45;
  v46 = v540;
  v47 = v543;
  v48 = v544;
  *(a1 + 192) = v539;
  *(a1 + 208) = v47;
  *(a1 + 224) = v46;
  *(a1 + 240) = v48;
  v49 = (a1 + a2);
  v50 = v518;
  v51 = v521;
  v52 = v522;
  *v49 = v517;
  v49[1] = v51;
  v49[2] = v50;
  v49[3] = v52;
  v53 = v526;
  v54 = v529;
  v55 = v530;
  v49[4] = v525;
  v49[5] = v54;
  v49[6] = v53;
  v49[7] = v55;
  v57 = v537;
  v56 = v538;
  v58 = v534;
  v49[8] = v39;
  v49[9] = v57;
  v49[10] = v58;
  v49[11] = v56;
  v60 = v545;
  v59 = v546;
  v61 = v542;
  v49[12] = v541;
  v49[13] = v60;
  result = 256;
  v49[14] = v61;
  v49[15] = v59;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v11 = *(a3 + 16);
  v9 = *(a3 + 32);
  v10 = *(a3 + 48);
  v12 = vsubq_s32(*(a3 + 64), *a3);
  v13 = vsubq_s32(*(a3 + 80), *a3);
  v264 = vsubq_s32(*(a3 + 96), *a3);
  v14 = vsubq_s32(*(a3 + 112), *a3);
  v15 = vsubq_s32(*(a3 + 128), *a3);
  v16 = vsubq_s32(*(a3 + 144), *a3);
  v17 = vsubq_s32(*(a3 + 160), *a3);
  v18 = vsubq_s32(*(a3 + 176), *a3);
  v19 = vsubq_s32(*(a3 + 192), *a3);
  v20 = vsubq_s32(*(a3 + 208), *a3);
  v21 = vsubq_s32(*(a3 + 224), *a3);
  v22 = vsubq_s32(*(a3 + 240), *a3);
  v23 = vsubq_s32(*(a3 + a4), *a3);
  v24 = vsubq_s32(*(a3 + a4 + 16), *a3);
  v25 = vsubq_s32(*(a3 + a4 + 32), *a3);
  v26 = vsubq_s32(*(a3 + a4 + 48), *a3);
  v27 = vsubq_s32(*(a3 + a4 + 64), *a3);
  v28 = vsubq_s32(*(a3 + a4 + 80), *a3);
  v29 = vsubq_s32(*(a3 + a4 + 96), *a3);
  v30 = vsubq_s32(*(a3 + a4 + 112), *a3);
  v265 = vsubq_s32(*(a3 + a4 + 144), *a3);
  v266 = vsubq_s32(*(a3 + a4 + 128), *a3);
  v267 = vsubq_s32(*(a3 + a4 + 160), *a3);
  v31 = vsubq_s32(*(a3 + a4 + 176), *a3);
  v32 = vsubq_s32(*(a3 + a4 + 192), *a3);
  v33 = vsubq_s32(*(a3 + a4 + 208), *a3);
  v34 = vsubq_s32(*(a3 + a4 + 224), *a3);
  v35 = vsubq_s32(*(a3 + a4 + 240), *a3);
  v342 = *a3;
  v311 = vsubq_s32(v11, v342);
  v312 = vsubq_s32(v9, v342);
  v313 = vsubq_s32(v10, v342);
  v314 = v12;
  v315 = v13;
  v316 = v264;
  v317 = v14;
  v36 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v311, v312), v313), v12), v13), v264), v14), 0);
  v37 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v311, v312), v313), v12), v13), v264), v14), 0);
  v38.i64[0] = 0x2000000020;
  v38.i64[1] = 0x2000000020;
  v318 = v15;
  v319 = v16;
  v39 = vmaxq_s32(vbicq_s8(vsubq_s32(v38, vclsq_s32(v36)), vceqzq_s32(v36)), vbicq_s8(vsubq_s32(v38, vclsq_s32(v37)), vceqzq_s32(v37)));
  v320 = v17;
  v321 = v18;
  v322 = v19;
  v323 = v20;
  v324 = v21;
  v325 = v22;
  v40 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v15, v16), v17), v18), v19), v20);
  v41 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v15, v16), v17), v18), v19), v20);
  v42.i64[0] = 0x8000000080000000;
  v42.i64[1] = 0x8000000080000000;
  v43 = vmaxq_s32(v40, v21);
  v44 = vminq_s32(v41, v21);
  v45.i64[0] = 0x8000000080000000;
  v45.i64[1] = 0x8000000080000000;
  v46 = vmaxq_s32(v43, v22);
  v47 = vminq_s32(v44, v22);
  v48 = vmaxq_s32(vmaxq_s32(v36, v42), v46);
  v49 = vminq_s32(vminq_s32(v37, v45), v47);
  v326 = v23;
  v327 = v24;
  v50 = vmaxq_s32(vbicq_s8(vsubq_s32(v38, vclsq_s32(v46)), vceqzq_s32(v46)), vbicq_s8(vsubq_s32(v38, vclsq_s32(v47)), vceqzq_s32(v47)));
  v328 = v25;
  v329 = v26;
  v330 = v27;
  v331 = v28;
  v332 = v29;
  v333 = v30;
  v51 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v23, v24), v25), v26), v27), v28), v29), v30);
  v52 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v23, v24), v25), v26), v27), v28), v29), v30);
  v53 = vmaxq_s32(v48, v51);
  v54 = vminq_s32(v49, v52);
  v334 = v266;
  v335 = v265;
  v55 = vmaxq_s32(vbicq_s8(vsubq_s32(v38, vclsq_s32(v51)), vceqzq_s32(v51)), vbicq_s8(vsubq_s32(v38, vclsq_s32(v52)), vceqzq_s32(v52)));
  v336 = v267;
  v337 = v31;
  v338 = v32;
  v339 = v33;
  v340 = v34;
  v341 = v35;
  v56 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v266, v265), v267), v31), v32), v33), v34), v35);
  v57 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v266, v265), v267), v31), v32), v33), v34), v35);
  v350 = vmaxq_s32(v53, v56);
  v349 = vminq_s32(v54, v57);
  v58 = vmaxq_s32(vbicq_s8(vsubq_s32(v38, vclsq_s32(v56)), vceqzq_s32(v56)), vbicq_s8(vsubq_s32(v38, vclsq_s32(v57)), vceqzq_s32(v57)));
  v59 = vmaxq_s32(vmaxq_s32(v39, v50), vmaxq_s32(v55, v58));
  v60 = vclzq_s32(vsubq_s32(v350, v349));
  v61 = vsubq_s32(v38, v60);
  v56.i64[0] = 0x1F0000001FLL;
  v56.i64[1] = 0x1F0000001FLL;
  v62 = vsubq_s32(v56, v60);
  v56.i64[0] = -1;
  v56.i64[1] = -1;
  v63 = vsubq_s32(vshlq_s32(v56, v62), v349);
  v64 = vcgtq_s32(v59, v61);
  v65 = vminq_s32(v61, v59);
  v351 = vandq_s8(v63, v64);
  v63.i64[0] = 0x800000008;
  v63.i64[1] = 0x800000008;
  v66 = vandq_s8(v64, v63);
  v64.i64[0] = 0x300000003;
  v64.i64[1] = 0x300000003;
  v67 = vorrq_s8(vandq_s8(vceqzq_s32(v65), v64), vorrq_s8(v66, 0));
  v68.i64[0] = 0xF0000000FLL;
  v68.i64[1] = 0xF0000000FLL;
  v69 = vmaxq_s32(vminq_s32(vsubq_s32(v65, v50), v68), 0);
  v70 = vmaxq_s32(vminq_s32(vsubq_s32(v65, v55), v68), 0);
  v345 = vsubq_s32(v65, v69);
  v71 = vmaxq_s32(vminq_s32(vsubq_s32(v65, v58), v68), 0);
  v346 = vsubq_s32(v65, v70);
  v347 = vsubq_s32(v65, v71);
  v72 = vaddq_s32(v71, v70);
  v73 = vmaxq_s32(vminq_s32(vsubq_s32(v65, v39), v68), 0);
  v74.i64[0] = 0x400000004;
  v74.i64[1] = 0x400000004;
  v344 = vsubq_s32(v65, v73);
  v343 = vorrq_s8(vbicq_s8(v74, vceqq_s32(v72, vnegq_s32(vaddq_s32(v73, v69)))), v67);
  v348 = v65;
  v310 = 0u;
  if (vmaxvq_s32(v65))
  {
    v277 = vsubq_s32(v319, vqtbl1q_s8(v319, xmmword_29D2F11D0));
    v278 = vsubq_s32(v320, vqtbl1q_s8(v320, xmmword_29D2F11D0));
    v279 = vsubq_s32(v321, vqtbl1q_s8(v321, xmmword_29D2F11D0));
    v280 = vsubq_s32(v322, vqtbl1q_s8(v322, xmmword_29D2F11D0));
    v281 = vsubq_s32(v323, vqtbl1q_s8(v323, xmmword_29D2F11D0));
    v282 = vsubq_s32(v324, vqtbl1q_s8(v324, xmmword_29D2F11D0));
    v283 = vsubq_s32(v325, vqtbl1q_s8(v325, xmmword_29D2F11D0));
    v285 = vsubq_s32(v327, vqtbl1q_s8(v327, xmmword_29D2F11D0));
    v286 = vsubq_s32(v328, vqtbl1q_s8(v328, xmmword_29D2F11D0));
    v287 = vsubq_s32(v329, vqtbl1q_s8(v329, xmmword_29D2F11D0));
    v268 = vsubq_s32(v310, vqtbl1q_s8(v310, xmmword_29D2F11D0));
    v269 = vsubq_s32(v311, vqtbl1q_s8(v311, xmmword_29D2F11D0));
    v270 = vsubq_s32(v312, vqtbl1q_s8(v312, xmmword_29D2F11D0));
    v271 = vsubq_s32(v313, vqtbl1q_s8(v313, xmmword_29D2F11D0));
    v272 = vsubq_s32(v314, vqtbl1q_s8(v314, xmmword_29D2F11D0));
    v273 = vsubq_s32(v315, vqtbl1q_s8(v315, xmmword_29D2F11D0));
    v275 = vsubq_s32(v317, vqtbl1q_s8(v317, xmmword_29D2F11D0));
    v276 = vsubq_s32(v318, vqtbl1q_s8(v318, xmmword_29D2F11D0));
    v284 = vsubq_s32(v326, vqtbl1q_s8(v326, xmmword_29D2F11D0));
    v274 = vsubq_s32(v316, vqtbl1q_s8(v316, xmmword_29D2F11D0));
    v80 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v268, v269), v270), v271), v272), v273), v274), v275);
    v81 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v268, v269), v270), v271), v272), v273), v274), v275);
    v82 = vmaxq_s32(v80, v42);
    v83 = vminq_s32(v81, v45);
    v84 = vmaxq_s32(vbicq_s8(vsubq_s32(v38, vclsq_s32(v80)), vceqzq_s32(v80)), vbicq_s8(vsubq_s32(v38, vclsq_s32(v81)), vceqzq_s32(v81)));
    v85 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v276, v277), v278), v279), v280), v281), v282), v283);
    v86 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v276, v277), v278), v279), v280), v281), v282), v283);
    v87 = vmaxq_s32(v82, v85);
    v88 = vminq_s32(v83, v86);
    v89 = vmaxq_s32(vbicq_s8(vsubq_s32(v38, vclsq_s32(v85)), vceqzq_s32(v85)), vbicq_s8(vsubq_s32(v38, vclsq_s32(v86)), vceqzq_s32(v86)));
    v288 = vsubq_s32(v330, vqtbl1q_s8(v330, xmmword_29D2F11D0));
    v289 = vsubq_s32(v331, vqtbl1q_s8(v331, xmmword_29D2F11D0));
    v290 = vsubq_s32(v332, vqtbl1q_s8(v332, xmmword_29D2F11D0));
    v291 = vsubq_s32(v333, vqtbl1q_s8(v333, xmmword_29D2F11D0));
    v90 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v284, v285), v286), v287), v288), v289), v290), v291);
    v91 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v284, v285), v286), v287), v288), v289), v290), v291);
    v92 = vmaxq_s32(v87, v90);
    v93 = vminq_s32(v88, v91);
    v292 = vsubq_s32(v334, vqtbl1q_s8(v334, xmmword_29D2F11D0));
    v293 = vsubq_s32(v335, vqtbl1q_s8(v335, xmmword_29D2F11D0));
    v94 = vmaxq_s32(vbicq_s8(vsubq_s32(v38, vclsq_s32(v90)), vceqzq_s32(v90)), vbicq_s8(vsubq_s32(v38, vclsq_s32(v91)), vceqzq_s32(v91)));
    v294 = vsubq_s32(v336, vqtbl1q_s8(v336, xmmword_29D2F11D0));
    v295 = vsubq_s32(v337, vqtbl1q_s8(v337, xmmword_29D2F11D0));
    v296 = vsubq_s32(v338, vqtbl1q_s8(v338, xmmword_29D2F11D0));
    v297 = vsubq_s32(v339, vqtbl1q_s8(v339, xmmword_29D2F11D0));
    v298 = vsubq_s32(v340, vqtbl1q_s8(v340, xmmword_29D2F11D0));
    v299 = vsubq_s32(v341, vqtbl1q_s8(v341, xmmword_29D2F11D0));
    v95 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v292, v293), v294), v295), v296), v297), v298), v299);
    v96 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v292, v293), v294), v295), v296), v297), v298), v299);
    v97 = vmaxq_s32(v92, v95);
    v98 = vminq_s32(v93, v96);
    v99 = vmaxq_s32(vbicq_s8(vsubq_s32(v38, vclsq_s32(v95)), vceqzq_s32(v95)), vbicq_s8(vsubq_s32(v38, vclsq_s32(v96)), vceqzq_s32(v96)));
    v100 = vmaxq_s32(vmaxq_s32(v84, v89), vmaxq_s32(v94, v99));
    v101 = vclzq_s32(vsubq_s32(v97, v98));
    v102 = vsubq_s32(v38, v101);
    v103.i64[0] = 0x1F0000001FLL;
    v103.i64[1] = 0x1F0000001FLL;
    v104 = vsubq_s32(v103, v101);
    v103.i64[0] = -1;
    v103.i64[1] = -1;
    v105 = vshlq_s32(v103, v104);
    v106 = vcgtq_s32(v100, v102);
    v107 = vminq_s32(v102, v100);
    v100.i64[0] = 0x1000000010;
    v100.i64[1] = 0x1000000010;
    v108.i64[0] = 0x1800000018;
    v108.i64[1] = 0x1800000018;
    v308 = v97;
    v309 = vandq_s8(vsubq_s32(v105, v98), v106);
    v105.i64[0] = 0x300000003;
    v105.i64[1] = 0x300000003;
    v109 = vmaxq_s32(vminq_s32(vsubq_s32(v107, v84), v68), 0);
    v110 = vmaxq_s32(vminq_s32(vsubq_s32(v107, v89), v68), 0);
    v111 = vmaxq_s32(vminq_s32(vsubq_s32(v107, v94), v68), 0);
    v112 = vmaxq_s32(vminq_s32(vsubq_s32(v107, v99), v68), 0);
    v302 = vsubq_s32(v107, v109);
    v303 = vsubq_s32(v107, v110);
    v306 = v107;
    v307 = v98;
    v304 = vsubq_s32(v107, v111);
    v305 = vsubq_s32(v107, v112);
    v300 = vsubq_s32(v342, vqtbl1q_s8(v342, xmmword_29D2F11D0));
    v301 = vorrq_s8(vbicq_s8(v74, vceqq_s32(vaddq_s32(v112, v111), vnegq_s32(vaddq_s32(v109, v110)))), vorrq_s8(vandq_s8(vceqzq_s32(v107), v105), vbslq_s8(v106, v108, v100)));
    AGX::AppleCompressionGen2::CompressionState<AGX::AppleCompressionGen2::VecArray<int,8ul>,4ul>::select(&v310, &v268);
    v113.i64[1] = v344.i64[1];
    v114 = v348;
    v115 = vandq_s8(v351, vceqq_s32(v348, v344));
    v310 = vaddq_s32(v115, v310);
    v311 = vaddq_s32(v311, v115);
    v312 = vaddq_s32(v312, v115);
    v313 = vaddq_s32(v313, v115);
    v314 = vaddq_s32(v314, v115);
    v315 = vaddq_s32(v315, v115);
    v316 = vaddq_s32(v316, v115);
    v317 = vaddq_s32(v317, v115);
    v116 = vandq_s8(v351, vceqq_s32(v348, v345));
    v318 = vaddq_s32(v318, v116);
    v319 = vaddq_s32(v319, v116);
    v320 = vaddq_s32(v320, v116);
    v321 = vaddq_s32(v321, v116);
    v322 = vaddq_s32(v322, v116);
    v323 = vaddq_s32(v323, v116);
    v324 = vaddq_s32(v324, v116);
    v325 = vaddq_s32(v325, v116);
    v117 = vandq_s8(v351, vceqq_s32(v348, v346));
    v326 = vaddq_s32(v326, v117);
    v327 = vaddq_s32(v327, v117);
    v118 = vaddq_s32(v329, v117);
    v119 = vandq_s8(v351, vceqq_s32(v348, v347));
    *v120.i8 = vqmovn_u32(v343);
    v328 = vaddq_s32(v328, v117);
    v329 = v118;
    v121.i64[0] = 0x8000800080008;
    v121.i64[1] = 0x8000800080008;
    v330 = vaddq_s32(v330, v117);
    v331 = vaddq_s32(v331, v117);
    *v118.i8 = vqmovn_u32(v348);
    v122 = vbicq_s8(v118, vceqzq_s16(vandq_s8(v120, v121)));
    v332 = vaddq_s32(v332, v117);
    v333 = vaddq_s32(v333, v117);
    v117.i64[0] = 0x10001000100010;
    v117.i64[1] = 0x10001000100010;
    v118.i64[0] = 0x2000200020002;
    v118.i64[1] = 0x2000200020002;
    v334 = vaddq_s32(v334, v119);
    v335 = vaddq_s32(v335, v119);
    v123.i64[0] = 0x3000300030003;
    v123.i64[1] = 0x3000300030003;
    v124 = vceqq_s16(vandq_s8(v120, v123), v118);
    v118.i64[0] = 0x20002000200020;
    v118.i64[1] = 0x20002000200020;
    v336 = vaddq_s32(v336, v119);
    v337 = vaddq_s32(v337, v119);
    *v113.i8 = vqmovn_u32(v344);
    v125 = vaddq_s16(vaddq_s16(v122, vandq_s8(vshlq_n_s16(v120, 2uLL), v117)), vandq_s8(v124, v118));
    v117.i64[0] = 0x7000700070007;
    v117.i64[1] = 0x7000700070007;
    v126 = vaddq_s32(vaddq_s32(v346, v345), v347);
    *v126.i8 = vqmovn_u32(v126);
    v127 = vaddq_s16(vmlaq_s16(v125, v113, v117), vshlq_n_s16(v126, 3uLL));
    v128 = vpaddq_s16(v127, v127);
    v338 = vaddq_s32(v338, v119);
    v339 = vaddq_s32(v339, v119);
    v340 = vaddq_s32(v340, v119);
    v341 = vaddq_s32(v341, v119);
    if (((((vpaddq_s16(v128, v128).i16[0] + 175) >> 3) + 1) & 0x3FFFFFFFFFFFFFFELL) > 0x100)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 256;
    }

    else
    {
      v129 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v130 = 8 * (a1 & 7);
      if (v130)
      {
        v131 = *v129 & ~(-1 << v130);
      }

      else
      {
        v131 = 0;
      }

      if (v348.i32[0])
      {
        v133 = ((v348.i32[0] << 20) + 32505856) & 0x1F00000;
      }

      else
      {
        v133 = 0;
      }

      v134 = vand_s8(vshl_u32(*&vextq_s8(v343, v343, 8uLL), 0xF0000000ALL), 0xF800000007C00);
      v135 = v134.i32[1];
      v136 = v343.i8[0] & 0x1F | (32 * (v343.i8[4] & 0x1F)) | v134.i32[0];
      *a2 = 0;
      v137 = v342;
      v138 = ((v114.i32[1] << 25) + 1040187392) & 0x3E000000;
      if (!v114.i32[1])
      {
        v138 = 0;
      }

      v139 = vextq_s8(v114, v114, 8uLL).u64[0];
      v140 = vceqz_s32(v139);
      v141.i64[0] = v140.i32[0];
      v141.i64[1] = v140.i32[1];
      v142 = v141;
      v143.i64[0] = -1;
      v143.i64[1] = -1;
      v144 = vand_s8(vadd_s32(v139, -1), 0x1F0000001FLL);
      v141.i64[0] = v144.u32[0];
      v141.i64[1] = v144.u32[1];
      v145 = vbicq_s8(vshlq_u64(v141, xmmword_29D2F11E0), v142);
      v146 = vorrq_s8(vdupq_laneq_s64(v145, 1), v145).u64[0] | v136 | v133 | v138 | v135;
      v147 = (v146 << v130) | v131;
      if (v130 >= 0x18)
      {
        *v129 = v147;
        v147 = v146 >> (-8 * (a1 & 7u));
      }

      v148 = (v130 + 40) & 0x38;
      *(v129 + (((v130 + 40) >> 3) & 8)) = v147 | (v137.i64[0] << v148);
      v149 = v137.i64[0] >> -v148;
      if (((v130 + 40) & 0x38) == 0)
      {
        v149 = 0;
      }

      v150 = (v130 + 104) & 0x38;
      *(v129 + (((v130 + 104) >> 3) & 0x18)) = v149 | (v137.i64[1] << v150);
      if (((v130 + 104) & 0x38) != 0)
      {
        v151 = v137.i64[1] >> -v150;
      }

      else
      {
        v151 = 0;
      }

      v152 = v130 + 168;
      v153.i64[1] = v347.i64[1];
      v154 = vsubq_s32(v348, v344);
      v155 = vsubq_s32(v348, v345);
      v156 = vsubq_s32(v348, v347);
      *v153.i8 = vqmovn_u32(v154);
      *v153.i8 = vqmovn_u16(v153);
      *v154.i8 = vqmovn_u32(v155);
      *v154.i8 = vqmovn_u16(v154);
      *v155.i8 = vqmovn_u32(vsubq_s32(v348, v346));
      *v155.i8 = vqmovn_u16(v155);
      *v156.i8 = vqmovn_u32(v156);
      *v156.i8 = vqmovn_u16(v156);
      v157 = vtrn1q_s8(v153, v154);
      v158 = vtrn2q_s8(v153, v154);
      v159 = vtrn1q_s8(v155, v156);
      v160 = vtrn2q_s8(v155, v156);
      v161 = vzip1q_s16(v157, v159);
      v162 = vtrn2q_s16(v157, v159);
      v163 = vzip1q_s16(v158, v160);
      v160.i64[0] = vzip1q_s32(v162, vtrn2q_s16(v158, v160)).u64[0];
      v162.i64[0] = 0x400000004;
      v162.i64[1] = 0x400000004;
      v164.i64[0] = 0x404040404040404;
      v164.i64[1] = 0x404040404040404;
      v165 = vandq_s8(vtstq_s32(v343, v162), v164);
      v164.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v164.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v166 = vshlq_u8(v143, vorrq_s8(v165, v164));
      v167 = vmovl_u8(vand_s8(*v166.i8, *&vzip1q_s32(v161, v163)));
      v168 = vmovl_u8(vand_s8(*&vextq_s8(v166, v166, 8uLL), *v160.i8));
      v169 = vmovl_u8(*v165.i8);
      v170 = vmovl_high_u8(v165);
      v171 = vpaddq_s16(vshlq_u16(v167, vtrn1q_s16(0, v169)), vshlq_u16(v168, vtrn1q_s16(0, v170)));
      v172 = vpaddq_s16(v169, v170);
      v173 = vmovl_u16(*v172.i8);
      v174 = vmovl_high_u16(v172);
      v175 = vpaddq_s32(vshlq_u32(vmovl_u16(*v171.i8), vtrn1q_s32(0, v173)), vshlq_u32(vmovl_high_u16(v171), vtrn1q_s32(0, v174)));
      v176 = vpaddq_s32(v173, v174);
      v177.i64[0] = v175.u32[0];
      v177.i64[1] = v175.u32[1];
      v178 = v177;
      v177.i64[0] = v175.u32[2];
      v177.i64[1] = v175.u32[3];
      v179 = v177;
      v177.i64[0] = v176.u32[0];
      v177.i64[1] = v176.u32[1];
      v180 = v177;
      v177.i64[0] = v176.u32[2];
      v177.i64[1] = v176.u32[3];
      v181 = vpaddq_s64(vshlq_u64(v178, vzip1q_s64(0, v180)), vshlq_u64(v179, vzip1q_s64(0, v177)));
      v182 = vpaddq_s64(v180, v177);
      v183 = (v130 + 168) & 0x38;
      v184 = (v181.i64[0] << ((v130 - 88) & 0x38)) | v151;
      if ((v182.i64[0] + v183) >= 0x40)
      {
        *(v129 + ((v152 >> 3) & 0x18)) = v184;
        v184 = v181.i64[0] >> -((v130 - 88) & 0x38);
        if (!v183)
        {
          v184 = 0;
        }
      }

      v185 = v182.i64[0] + v152;
      v186 = v184 | (v181.i64[1] << v185);
      if ((v185 & 0x3F) + v182.i64[1] >= 0x40)
      {
        *(v129 + ((v185 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v186;
        v186 = v181.i64[1] >> -(v185 & 0x3F);
        if ((v185 & 0x3F) == 0)
        {
          v186 = 0;
        }
      }

      v187 = v185 + v182.i64[1];
      v188.i64[0] = 0x800000008;
      v188.i64[1] = 0x800000008;
      v189 = vbicq_s8(v348, vceqzq_s32(vandq_s8(v343, v188)));
      v190.i64[0] = 0x1F0000001FLL;
      v190.i64[1] = 0x1F0000001FLL;
      v191.i64[0] = -1;
      v191.i64[1] = -1;
      v192 = vandq_s8(vshlq_u32(v191, vaddq_s32(v189, v190)), v351);
      v193.i64[0] = v192.u32[0];
      v193.i64[1] = v192.u32[1];
      v194 = v193;
      v193.i64[0] = v192.u32[2];
      v193.i64[1] = v192.u32[3];
      v195 = v193;
      v193.i64[0] = v189.u32[0];
      v193.i64[1] = v189.u32[1];
      v196 = v193;
      v193.i64[0] = v189.u32[2];
      v193.i64[1] = v189.u32[3];
      v197 = vpaddq_s64(vshlq_u64(v194, vzip1q_s64(0, v196)), vshlq_u64(v195, vzip1q_s64(0, v193)));
      v198 = vpaddq_s64(v196, v193);
      v199 = (v197.i64[0] << v187) | v186;
      if (v198.i64[0] + (v187 & 0x3F) >= 0x40)
      {
        *(v129 + ((v187 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v199;
        v199 = v197.i64[0] >> -(v187 & 0x3F);
        if ((v187 & 0x3F) == 0)
        {
          v199 = 0;
        }
      }

      v200 = v198.i64[0] + v187;
      v201 = v199 | (v197.i64[1] << v200);
      if ((v200 & 0x3F) + v198.i64[1] >= 0x40)
      {
        *(v129 + ((v200 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v201;
        v201 = v197.i64[1] >> -(v200 & 0x3F);
        if ((v200 & 0x3F) == 0)
        {
          v201 = 0;
        }
      }

      v202 = v200 + v198.i64[1];
      v203.i64[0] = 0x1F0000001FLL;
      v203.i64[1] = 0x1F0000001FLL;
      v204.i64[0] = -1;
      v204.i64[1] = -1;
      v205 = vandq_s8(vshlq_u32(v204, v203), v310);
      v206.i64[0] = v205.u32[0];
      v206.i64[1] = v205.u32[1];
      v207 = v206;
      v206.i64[0] = v205.u32[2];
      v206.i64[1] = v205.u32[3];
      v208 = vpaddq_s64(v207, v206);
      v209 = vpaddq_s64(0, 0);
      v210 = (v208.i64[0] << v202) | v201;
      if (v209.i64[0] + (v202 & 0x3F) >= 0x40)
      {
        *(v129 + ((v202 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v210;
        if ((v202 & 0x3F) != 0)
        {
          v210 = v208.i64[0] >> -(v202 & 0x3F);
        }

        else
        {
          v210 = 0;
        }
      }

      v211 = v209.i64[0] + v202;
      v212 = (v209.i64[0] + v202) & 0x3F;
      v213 = v210 | (v208.i64[1] << v211);
      if ((v212 + v209.i64[1]) >= 0x40)
      {
        *(v129 + ((v211 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v213;
        if (v212)
        {
          v213 = v208.i64[1] >> -v212;
        }

        else
        {
          v213 = 0;
        }
      }

      v214 = v211 + v209.i64[1];
      v215.i64[0] = 0x1F0000001FLL;
      v215.i64[1] = 0x1F0000001FLL;
      v216.i64[0] = -1;
      v216.i64[1] = -1;
      for (i = 16; i != 128; i += 16)
      {
        v218 = vandq_s8(vshlq_u32(v216, vaddq_s32(v344, v215)), *(&v310 + i));
        v219.i64[0] = v218.u32[0];
        v219.i64[1] = v218.u32[1];
        v220 = v219;
        v219.i64[0] = v218.u32[2];
        v219.i64[1] = v218.u32[3];
        v221 = v219;
        v219.i64[0] = v344.u32[0];
        v219.i64[1] = v344.u32[1];
        v222 = v219;
        v219.i64[0] = v344.u32[2];
        v219.i64[1] = v344.u32[3];
        v223 = vpaddq_s64(vshlq_u64(v220, vzip1q_s64(0, v222)), vshlq_u64(v221, vzip1q_s64(0, v219)));
        v224 = vpaddq_s64(v222, v219);
        v225 = (v223.i64[0] << v214) | v213;
        if (v224.i64[0] + (v214 & 0x3F) >= 0x40)
        {
          *(v129 + ((v214 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v225;
          v225 = v223.i64[0] >> -(v214 & 0x3F);
          if ((v214 & 0x3F) == 0)
          {
            v225 = 0;
          }
        }

        v226 = v224.i64[0] + v214;
        v213 = v225 | (v223.i64[1] << v226);
        if ((v226 & 0x3F) + v224.i64[1] >= 0x40)
        {
          *(v129 + ((v226 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v213;
          v213 = v223.i64[1] >> -(v226 & 0x3F);
          if ((v226 & 0x3F) == 0)
          {
            v213 = 0;
          }
        }

        v214 = v226 + v224.i64[1];
      }

      v227 = 0;
      v228.i64[0] = 0x1F0000001FLL;
      v228.i64[1] = 0x1F0000001FLL;
      v229.i64[0] = -1;
      v229.i64[1] = -1;
      do
      {
        v230 = vandq_s8(vshlq_u32(v229, vaddq_s32(v345, v228)), *(&v318 + v227));
        v231.i64[0] = v230.u32[0];
        v231.i64[1] = v230.u32[1];
        v232 = v231;
        v231.i64[0] = v230.u32[2];
        v231.i64[1] = v230.u32[3];
        v233 = v231;
        v231.i64[0] = v345.u32[0];
        v231.i64[1] = v345.u32[1];
        v234 = v231;
        v231.i64[0] = v345.u32[2];
        v231.i64[1] = v345.u32[3];
        v235 = vpaddq_s64(vshlq_u64(v232, vzip1q_s64(0, v234)), vshlq_u64(v233, vzip1q_s64(0, v231)));
        v236 = vpaddq_s64(v234, v231);
        v237 = (v235.i64[0] << v214) | v213;
        if (v236.i64[0] + (v214 & 0x3F) >= 0x40)
        {
          *(v129 + ((v214 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v237;
          v237 = v235.i64[0] >> -(v214 & 0x3F);
          if ((v214 & 0x3F) == 0)
          {
            v237 = 0;
          }
        }

        v238 = v236.i64[0] + v214;
        v213 = v237 | (v235.i64[1] << v238);
        if ((v238 & 0x3F) + v236.i64[1] >= 0x40)
        {
          *(v129 + ((v238 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v213;
          v213 = v235.i64[1] >> -(v238 & 0x3F);
          if ((v238 & 0x3F) == 0)
          {
            v213 = 0;
          }
        }

        v214 = v238 + v236.i64[1];
        v227 += 16;
      }

      while (v227 != 128);
      v239 = 0;
      v240.i64[0] = 0x1F0000001FLL;
      v240.i64[1] = 0x1F0000001FLL;
      v241.i64[0] = -1;
      v241.i64[1] = -1;
      do
      {
        v242 = vandq_s8(vshlq_u32(v241, vaddq_s32(v346, v240)), *(&v326 + v239));
        v243.i64[0] = v242.u32[0];
        v243.i64[1] = v242.u32[1];
        v244 = v243;
        v243.i64[0] = v242.u32[2];
        v243.i64[1] = v242.u32[3];
        v245 = v243;
        v243.i64[0] = v346.u32[0];
        v243.i64[1] = v346.u32[1];
        v246 = v243;
        v243.i64[0] = v346.u32[2];
        v243.i64[1] = v346.u32[3];
        v247 = vpaddq_s64(vshlq_u64(v244, vzip1q_s64(0, v246)), vshlq_u64(v245, vzip1q_s64(0, v243)));
        v248 = vpaddq_s64(v246, v243);
        v249 = (v247.i64[0] << v214) | v213;
        if (v248.i64[0] + (v214 & 0x3F) >= 0x40)
        {
          *(v129 + ((v214 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v249;
          v249 = v247.i64[0] >> -(v214 & 0x3F);
          if ((v214 & 0x3F) == 0)
          {
            v249 = 0;
          }
        }

        v250 = v248.i64[0] + v214;
        v213 = v249 | (v247.i64[1] << v250);
        if ((v250 & 0x3F) + v248.i64[1] >= 0x40)
        {
          *(v129 + ((v250 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v213;
          v213 = v247.i64[1] >> -(v250 & 0x3F);
          if ((v250 & 0x3F) == 0)
          {
            v213 = 0;
          }
        }

        v214 = v250 + v248.i64[1];
        v239 += 16;
      }

      while (v239 != 128);
      v251 = 0;
      v252.i64[0] = 0x1F0000001FLL;
      v252.i64[1] = 0x1F0000001FLL;
      v253.i64[0] = -1;
      v253.i64[1] = -1;
      do
      {
        v254 = vandq_s8(vshlq_u32(v253, vaddq_s32(v347, v252)), *(&v334 + v251));
        v255.i64[0] = v254.u32[0];
        v255.i64[1] = v254.u32[1];
        v256 = v255;
        v255.i64[0] = v254.u32[2];
        v255.i64[1] = v254.u32[3];
        v257 = v255;
        v255.i64[0] = v347.u32[0];
        v255.i64[1] = v347.u32[1];
        v258 = v255;
        v255.i64[0] = v347.u32[2];
        v255.i64[1] = v347.u32[3];
        v259 = vpaddq_s64(vshlq_u64(v256, vzip1q_s64(0, v258)), vshlq_u64(v257, vzip1q_s64(0, v255)));
        v260 = vpaddq_s64(v258, v255);
        v261 = (v259.i64[0] << v214) | v213;
        if (v260.i64[0] + (v214 & 0x3F) >= 0x40)
        {
          *(v129 + ((v214 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v261;
          v261 = v259.i64[0] >> -(v214 & 0x3F);
          if ((v214 & 0x3F) == 0)
          {
            v261 = 0;
          }
        }

        v262 = v260.i64[0] + v214;
        v213 = v261 | (v259.i64[1] << v262);
        if ((v262 & 0x3F) + v260.i64[1] >= 0x40)
        {
          *(v129 + ((v262 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v213;
          v213 = v259.i64[1] >> -(v262 & 0x3F);
          if ((v262 & 0x3F) == 0)
          {
            v213 = 0;
          }
        }

        v214 = v262 + v260.i64[1];
        v251 += 16;
      }

      while (v251 != 128);
      if ((v214 & 0x3F) != 0)
      {
        *(v129 + ((v214 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v213;
      }

      v263 = ((v214 - v130 + 7) >> 3) + 1;
      result = v263 & 0x3FFFFFFFFFFFFFFELL;
      *a2 |= (v263 >> 1) - 1;
    }
  }

  else
  {
    *a1 = *a3;
    *a2 = 7;
    return 16;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v80 = *MEMORY[0x29EDCA608];
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
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  if (a6 && a5)
  {
    for (i = 0; i != a6; ++i)
    {
      v13 = 0;
      v14 = (a3 + i * a4);
      v15 = &v48 + 16 * (i & 0x3F);
      v16 = &v48 + 4 * ((4 * i) | 1u);
      v17 = &v48 + 4 * ((4 * i) | 2u);
      v18 = &v48 + 4 * ((4 * i) | 3u);
      do
      {
        v19 = v14[1];
        v20 = 2 * (v13 & 0x7F);
        v15[v20] = *v14;
        v16[v20] = v19;
        v21 = v14[3];
        v22 = (2 * v13) | 1u;
        v15[v22] = v14[2];
        v16[v22] = v21;
        v23 = v14[5];
        v17[v20] = v14[4];
        v18[v20] = v23;
        v24 = v14[7];
        v17[v22] = v14[6];
        v14 += 8;
        ++v13;
        v18[v22] = v24;
      }

      while (a5 != v13);
    }
  }

  v40 = v48;
  v41 = v52;
  v42 = v49;
  v43 = v53;
  v44 = v56;
  v45 = v60;
  v25 = 2 * (a6 & 0x7F);
  v26 = 4 * (a5 & 0x3F);
  v46 = v57;
  v47 = v61;
  v27 = 4 * (a5 != 0);
  v28 = 2 * (a6 != 0);
  v29 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v40, a7, v27, v28);
  v40 = v50;
  v41 = v54;
  v42 = v51;
  v43 = v55;
  v44 = v58;
  v45 = v62;
  v30 = v25 - 2;
  if (v25 < 2)
  {
    v30 = 0;
  }

  if (a6 >= 2)
  {
    v31 = 2;
  }

  else
  {
    v31 = v30;
  }

  v46 = v59;
  v47 = v63;
  v32 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 64, &v40, a7, v27, v31);
  v40 = v64;
  v41 = v68;
  v42 = v65;
  v43 = v69;
  v44 = v72;
  v45 = v76;
  v33 = v26 - 4;
  if (v26 < 4)
  {
    v33 = 0;
  }

  if (a5 >= 2)
  {
    v34 = 4;
  }

  else
  {
    v34 = v33;
  }

  v46 = v73;
  v47 = v77;
  v35 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 128, &v40, a7, v34, v28);
  v40 = v66;
  v41 = v70;
  v42 = v67;
  v43 = v71;
  v44 = v74;
  v45 = v78;
  v46 = v75;
  v47 = v79;
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 192, &v40, a7, v34, v31);
  if (v35)
  {
    v37 = 4;
  }

  else
  {
    v37 = 0;
  }

  if (v32)
  {
    v38 = 2;
  }

  else
  {
    v38 = 0;
  }

  if (result)
  {
    v39 = -8;
  }

  else
  {
    v39 = -16;
  }

  *a2 = v39 | v37 | v29 | v38;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v554 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    result = 0;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v11 = (a1 + a2);
    v11[14] = 0u;
    v11[15] = 0u;
    v11[12] = 0u;
    v11[13] = 0u;
    v11[10] = 0u;
    v11[11] = 0u;
    v11[8] = 0u;
    v11[9] = 0u;
    v11[6] = 0u;
    v11[7] = 0u;
    v11[4] = 0u;
    v11[5] = 0u;
    v11[2] = 0u;
    v11[3] = 0u;
    *v11 = 0u;
    v11[1] = 0u;
    return result;
  }

  v7 = a4;
  if (a4 < 0xF0)
  {
    if (a4 == 7)
    {
      v12 = *a3;
      *a1 = *a3;
      *(a1 + 16) = v12;
      *(a1 + 32) = v12;
      *(a1 + 48) = v12;
      *(a1 + 64) = v12;
      *(a1 + 80) = v12;
      *(a1 + 96) = v12;
      *(a1 + 112) = v12;
      *(a1 + 128) = v12;
      *(a1 + 144) = v12;
      *(a1 + 160) = v12;
      *(a1 + 176) = v12;
      *(a1 + 192) = v12;
      *(a1 + 208) = v12;
      *(a1 + 224) = v12;
      *(a1 + 240) = v12;
      v13 = (a1 + a2);
      *v13 = v12;
      v13[1] = v12;
      v13[2] = v12;
      v13[3] = v12;
      v13[4] = v12;
      v13[5] = v12;
      v13[6] = v12;
      v13[7] = v12;
      v13[8] = v12;
      v13[9] = v12;
      v13[10] = v12;
      v13[11] = v12;
      v13[12] = v12;
      v13[13] = v12;
      result = 16;
      v13[14] = v12;
      v13[15] = v12;
      return result;
    }

    v508.i8[8] = 0;
    v508.i64[0] = (8 * (a3 & 7)) | 0x800;
    *&v507 = 8 * (a3 & 7);
    *(&v507 + 1) = a3 & 0xFFFFFFFFFFFFFFF8;
    result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)20,AGX::AppleCompressionGen2::Vec<int>>(&v548, v553, &v547, &v507, a4);
    v16.i64[0] = 0x300000003;
    v16.i64[1] = 0x300000003;
    v17 = vbicq_s8(v553[0], vceqq_s32(vandq_s8(v548, v16), v16));
    v553[0] = v17;
    v549 = v17;
    v550 = v17;
    v551 = v17;
    v552 = v17;
    v18.i64[0] = 0x400000004;
    v18.i64[1] = 0x400000004;
    v19.i64[0] = 0x404040404040404;
    v19.i64[1] = 0x404040404040404;
    v20 = vandq_s8(vtstq_s32(v548, v18), v19);
    v21 = v507;
    if (vmaxvq_s8(v20) < 1)
    {
      v62.i64[0] = -1;
      v62.i64[1] = -1;
      v504 = v62;
      v505 = v62;
      v503 = v62;
      v63.i64[0] = -1;
      v63.i64[1] = -1;
    }

    else
    {
      v22 = vmovl_u8(*&vpaddq_s8(v20, v20));
      v23 = vmovl_u16(*&vpaddq_s16(v22, v22));
      v24 = vpaddq_s32(v23, v23).u64[0];
      v25.i64[0] = v24;
      v25.i64[1] = HIDWORD(v24);
      v26 = v25;
      v27 = vaddvq_s64(v25);
      v28 = v27;
      v29 = v507 + v27;
      if (v508.i64[0])
      {
        v30 = v508.i64[0] >= v29;
      }

      else
      {
        v30 = 1;
      }

      v31 = v30;
      if (v27 <= 0x80 && (v31 & 1) != 0)
      {
        v15.i64[0] = 63;
        v32 = (*(&v507 + 1) + 8 * (v507 >> 6));
        v33 = vaddq_s64(vdupq_lane_s64(vandq_s8(v507, v15).i64[0], 0), vzip1q_s64(0, v26));
        v34 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v32, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v33)), vshlq_u64(vdupq_lane_s64(v32->i64[0], 0), vnegq_s64(v33)));
        if (((v507 & 0x3F) + v28) >= 0x81)
        {
          v34 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v32[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v33)), vshlq_u64(vdupq_laneq_s64(v32[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v33))), v34);
        }

        *&v507 = v29;
        v21 = v29;
      }

      else
      {
        v508.i8[8] = 1;
        v34 = 0uLL;
      }

      v64 = vzip1_s32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
      v65.i64[0] = v64.u32[0];
      v65.i64[1] = v64.u32[1];
      v66 = vshlq_u64(v34, vnegq_s64(v65));
      v67 = vuzp1q_s32(vzip1q_s64(v34, v66), vzip2q_s64(v34, v66));
      v68 = vshlq_u32(v67, vnegq_s32((*&v22 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v69 = vuzp1q_s16(vzip1q_s32(v67, v68), vzip2q_s32(v67, v68));
      v70 = vshlq_u16(v69, vnegq_s16((*&v20 & __PAIR128__(0xF8FFF8FFF8FFF8FFLL, 0xF8FFF8FFF8FFF8FFLL))));
      v71 = vuzp1q_s8(vzip1q_s16(v69, v70), vzip2q_s16(v69, v70));
      v70.i64[0] = 0x101010101010101;
      v70.i64[1] = 0x101010101010101;
      v72 = vshlq_s8(v70, v20);
      v70.i64[0] = -1;
      v70.i64[1] = -1;
      v73 = vqtbl1q_s8(vandq_s8(vaddq_s8(v72, v70), v71), xmmword_29D2F0F70);
      v71.i64[0] = vmovl_s8(*v73.i8).u64[0];
      v70.i64[0] = vmovl_s8(vdup_lane_s32(*v73.i8, 1)).u64[0];
      v74 = vmovl_s8(*&vdupq_laneq_s32(v73, 2)).u64[0];
      v73.i64[0] = vmovl_s8(*&vdupq_laneq_s32(v73, 3)).u64[0];
      v549 = vsubw_s16(v549, *v71.i8);
      v550 = vsubw_s16(v550, *v70.i8);
      v551 = vsubw_s16(v551, v74);
      v552 = vsubw_s16(v552, *v73.i8);
      v63 = vmovl_s16(vceqz_s16(*v70.i8));
      v503 = vmovl_s16(vceqz_s16(v74));
      v504 = vmovl_s16(vceqz_s16(*v71.i8));
      v505 = vmovl_s16(vceqz_s16(*v73.i8));
    }

    v75.i64[0] = 0x800000008;
    v75.i64[1] = 0x800000008;
    v76 = vbicq_s8(v17, vceqzq_s32(vandq_s8(v548, v75)));
    v75.i64[0] = vpaddq_s32(v76, v76).u64[0];
    v77.i64[0] = v75.u32[0];
    v77.i64[1] = v75.u32[1];
    v78 = v77;
    v79 = vaddvq_s64(v77);
    v80 = v79;
    v81 = v21 + v79;
    if (v508.i64[0])
    {
      v82 = v508.i64[0] >= v81;
    }

    else
    {
      v82 = 1;
    }

    v83 = v82;
    if (v79 <= 0x80 && (v83 & 1) != 0)
    {
      v84 = vaddq_s64(vdupq_n_s64(v21 & 0x3F), vzip1q_s64(0, v78));
      v85 = (*(&v507 + 1) + 8 * (v21 >> 6));
      v86 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v85, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v84)), vshlq_u64(vdupq_lane_s64(v85->i64[0], 0), vnegq_s64(v84)));
      if ((v21 & 0x3F) + v80 >= 0x81)
      {
        v86 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v85[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v84)), vshlq_u64(vdupq_laneq_s64(v85[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v84))), v86);
      }

      v21 = v81;
    }

    else
    {
      v508.i8[8] = 1;
      v86 = 0uLL;
    }

    v87 = vzip1_s32(*v76.i8, *&vextq_s8(v76, v76, 8uLL));
    v88.i64[0] = v87.u32[0];
    v88.i64[1] = v87.u32[1];
    v89 = vshlq_u64(v86, vnegq_s64(v88));
    v90 = vuzp1q_s32(vzip1q_s64(v86, v89), vzip2q_s64(v86, v89));
    v89.i64[0] = 0x1F0000001FLL;
    v89.i64[1] = 0x1F0000001FLL;
    v91.i64[0] = 0x2000000020;
    v91.i64[1] = 0x2000000020;
    v92 = vshlq_s32(vshlq_s32(v90, vsubq_s32(v91, v76)), vaddq_s32(v76, v89));
    v553[3] = v92;
    v93 = v548.i8[0] & 3;
    if (v93 == 2)
    {
      if (v508.i64[0])
      {
        v94 = v21 + 16;
        v95 = v21 + 32;
        if (v508.i64[0] >= v21 + 16)
        {
          v96 = v21 + 16;
        }

        else
        {
          v95 = v21 + 16;
          v96 = v21;
        }

        if (v508.i64[0] >= v95)
        {
          v21 = v95;
        }

        else
        {
          v21 = v96;
        }

        if (v508.i64[0] < v94 || v508.i64[0] < v95)
        {
          v508.i8[8] = 1;
        }
      }

      else
      {
        v21 += 32;
      }
    }

    v97 = vpaddq_s32(0, 0).u64[0];
    v98.i64[0] = v97;
    v98.i64[1] = HIDWORD(v97);
    v99 = v98;
    v100 = vaddvq_s64(v98);
    v101 = v100;
    v102 = v21 + v100;
    if (v508.i64[0])
    {
      v103 = v508.i64[0] >= v102;
    }

    else
    {
      v103 = 1;
    }

    v104 = v103;
    if (v100 <= 0x80 && (v104 & 1) != 0)
    {
      v105 = v21 & 0x3F;
      v106 = vaddq_s64(vdupq_n_s64(v105), vzip1q_s64(0, v99));
      v107 = *(&v507 + 1);
      v108 = (*(&v507 + 1) + 8 * (v21 >> 6));
      v109 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v108, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v106)), vshlq_u64(vdupq_lane_s64(v108->i64[0], 0), vnegq_s64(v106)));
      if (v105 + v101 >= 0x81)
      {
        v106 = vorrq_s8(vshlq_u64(vdupq_lane_s64(v108[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v106)), vshlq_u64(vdupq_laneq_s64(v108[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v106)));
        v109 = vorrq_s8(v106, v109);
      }

      *&v507 = v102;
      *v106.i8 = vmovn_s64(v109);
      v110 = v508.i8[8];
      v21 = v102;
    }

    else
    {
      v106 = 0uLL;
      v110 = 1;
      v107 = *(&v507 + 1);
    }

    v111.i64[0] = 0x2000000020;
    v111.i64[1] = 0x2000000020;
    v112.i64[0] = 0x1F0000001FLL;
    v112.i64[1] = 0x1F0000001FLL;
    v113 = vshlq_s32(vshlq_s32(vzip1q_s32(v106, v106), v111), v112);
    v515 = v113;
    v114 = vpaddq_s32(v549, v549).u64[0];
    v115.i64[0] = v114;
    v115.i64[1] = HIDWORD(v114);
    v116 = v115;
    v117 = vaddvq_s64(v115);
    v118 = v117;
    v119 = v21 + v117;
    if (v508.i64[0])
    {
      v120 = v508.i64[0] >= v119;
    }

    else
    {
      v120 = 1;
    }

    v121 = v120;
    v122 = 0uLL;
    if (v117 <= 0x80 && v121)
    {
      v123 = v21 & 0x3F;
      v124 = vaddq_s64(vdupq_n_s64(v123), vzip1q_s64(0, v116));
      v125 = (v107 + 8 * (v21 >> 6));
      v126 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v125, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v124)), vshlq_u64(vdupq_lane_s64(v125->i64[0], 0), vnegq_s64(v124)));
      if (v123 + v118 >= 0x81)
      {
        v126 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v125[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v124)), vshlq_u64(vdupq_laneq_s64(v125[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v124))), v126);
      }
    }

    else
    {
      v110 = 1;
      v119 = v21;
      v126 = 0uLL;
    }

    v127 = vzip1_s32(*v549.i8, *&vextq_s8(v549, v549, 8uLL));
    v128.i64[0] = v127.u32[0];
    v128.i64[1] = v127.u32[1];
    v129 = vnegq_s64(v128);
    v130 = vshlq_u64(v126, v129);
    v131 = vaddq_s32(v549, v112);
    v132 = vsubq_s32(v111, v549);
    v133 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v126, v130), vzip2q_s64(v126, v130)), v132), v131);
    v516 = v133;
    v134 = v119 + v118;
    if (v508.i64[0])
    {
      v135 = v508.i64[0] >= v134;
    }

    else
    {
      v135 = 1;
    }

    v136 = v135;
    if (v118 <= 0x80 && v136)
    {
      v137 = v119 & 0x3F;
      v138 = vaddq_s64(vdupq_n_s64(v137), vzip1q_s64(0, v116));
      v139 = (v107 + 8 * (v119 >> 6));
      v122 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v139, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v138)), vshlq_u64(vdupq_lane_s64(v139->i64[0], 0), vnegq_s64(v138)));
      if (v137 + v118 >= 0x81)
      {
        v122 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v139[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v138)), vshlq_u64(vdupq_laneq_s64(v139[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v138))), v122);
      }
    }

    else
    {
      v110 = 1;
      v134 = v119;
    }

    v140 = vshlq_u64(v122, v129);
    v502 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v122, v140), vzip2q_s64(v122, v140)), v132), v131);
    v517 = v502;
    v141 = v134 + v118;
    if (v508.i64[0])
    {
      v142 = v508.i64[0] >= v141;
    }

    else
    {
      v142 = 1;
    }

    v143 = v142;
    v144 = 0uLL;
    if (v118 <= 0x80 && v143)
    {
      v145 = v134 & 0x3F;
      v146 = vaddq_s64(vdupq_n_s64(v145), vzip1q_s64(0, v116));
      v147 = (v107 + 8 * (v134 >> 6));
      v148 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v147, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v146)), vshlq_u64(vdupq_lane_s64(v147->i64[0], 0), vnegq_s64(v146)));
      if (v145 + v118 >= 0x81)
      {
        v148 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v147[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v146)), vshlq_u64(vdupq_laneq_s64(v147[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v146))), v148);
      }
    }

    else
    {
      v110 = 1;
      v141 = v134;
      v148 = 0uLL;
    }

    v149 = vshlq_u64(v148, v129);
    v150 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v148, v149), vzip2q_s64(v148, v149)), v132), v131);
    v518 = v150;
    v151 = v141 + v118;
    if (v508.i64[0])
    {
      v152 = v508.i64[0] >= v151;
    }

    else
    {
      v152 = 1;
    }

    v153 = v152;
    if (v118 <= 0x80 && v153)
    {
      v154 = v141 & 0x3F;
      v155 = vaddq_s64(vdupq_n_s64(v154), vzip1q_s64(0, v116));
      v156 = (v107 + 8 * (v141 >> 6));
      v144 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v156, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v155)), vshlq_u64(vdupq_lane_s64(v156->i64[0], 0), vnegq_s64(v155)));
      if (v154 + v118 >= 0x81)
      {
        v144 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v156[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v155)), vshlq_u64(vdupq_laneq_s64(v156[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v155))), v144);
      }
    }

    else
    {
      v110 = 1;
      v151 = v141;
    }

    v157 = vshlq_u64(v144, v129);
    v501 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v144, v157), vzip2q_s64(v144, v157)), v132), v131);
    v519 = v501;
    v158 = v151 + v118;
    if (v508.i64[0])
    {
      v159 = v508.i64[0] >= v158;
    }

    else
    {
      v159 = 1;
    }

    v160 = v159;
    v161 = 0uLL;
    if (v118 <= 0x80 && v160)
    {
      v162 = v151 & 0x3F;
      v163 = vaddq_s64(vdupq_n_s64(v162), vzip1q_s64(0, v116));
      v164 = (v107 + 8 * (v151 >> 6));
      v165 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v164, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v163)), vshlq_u64(vdupq_lane_s64(v164->i64[0], 0), vnegq_s64(v163)));
      if (v162 + v118 >= 0x81)
      {
        v165 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v164[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v163)), vshlq_u64(vdupq_laneq_s64(v164[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v163))), v165);
      }
    }

    else
    {
      v110 = 1;
      v158 = v151;
      v165 = 0uLL;
    }

    v166 = vshlq_u64(v165, v129);
    v167 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v165, v166), vzip2q_s64(v165, v166)), v132), v131);
    v520 = v167;
    v168 = v158 + v118;
    if (v508.i64[0])
    {
      v169 = v508.i64[0] >= v168;
    }

    else
    {
      v169 = 1;
    }

    v170 = v169;
    if (v118 <= 0x80 && v170)
    {
      v171 = v158 & 0x3F;
      v172 = vaddq_s64(vdupq_n_s64(v171), vzip1q_s64(0, v116));
      v173 = (v107 + 8 * (v158 >> 6));
      v161 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v173, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v172)), vshlq_u64(vdupq_lane_s64(v173->i64[0], 0), vnegq_s64(v172)));
      if (v171 + v118 >= 0x81)
      {
        v161 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v173[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v172)), vshlq_u64(vdupq_laneq_s64(v173[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v172))), v161);
      }
    }

    else
    {
      v110 = 1;
      v168 = v158;
    }

    v174 = vshlq_u64(v161, v129);
    v500 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v161, v174), vzip2q_s64(v161, v174)), v132), v131);
    v521 = v500;
    v175 = v168 + v118;
    if (v508.i64[0])
    {
      v176 = v508.i64[0] >= v175;
    }

    else
    {
      v176 = 1;
    }

    v177 = v176;
    v178 = 0uLL;
    if (v118 <= 0x80 && v177)
    {
      v179 = v168 & 0x3F;
      v180 = vaddq_s64(vdupq_n_s64(v179), vzip1q_s64(0, v116));
      v181 = (v107 + 8 * (v168 >> 6));
      v182 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v181, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v180)), vshlq_u64(vdupq_lane_s64(v181->i64[0], 0), vnegq_s64(v180)));
      if (v179 + v118 >= 0x81)
      {
        v182 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v181[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v180)), vshlq_u64(vdupq_laneq_s64(v181[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v180))), v182);
      }
    }

    else
    {
      v110 = 1;
      v175 = v168;
      v182 = 0uLL;
    }

    v183 = vshlq_u64(v182, v129);
    v499 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v182, v183), vzip2q_s64(v182, v183)), v132), v131);
    v522 = v499;
    v184 = vpaddq_s32(v550, v550).u64[0];
    v185.i64[0] = v184;
    v185.i64[1] = HIDWORD(v184);
    v186 = v185;
    v187 = vaddvq_s64(v185);
    v188 = v187;
    v189 = v175 + v187;
    if (v508.i64[0])
    {
      v190 = v508.i64[0] >= v189;
    }

    else
    {
      v190 = 1;
    }

    v191 = v190;
    if (v187 <= 0x80 && v191)
    {
      v192 = v175 & 0x3F;
      v193 = vaddq_s64(vdupq_n_s64(v192), vzip1q_s64(0, v186));
      v194 = (v107 + 8 * (v175 >> 6));
      v178 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v194, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v193)), vshlq_u64(vdupq_lane_s64(v194->i64[0], 0), vnegq_s64(v193)));
      if (v192 + v188 >= 0x81)
      {
        v178 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v194[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v193)), vshlq_u64(vdupq_laneq_s64(v194[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v193))), v178);
      }
    }

    else
    {
      v110 = 1;
      v189 = v175;
    }

    v195 = vzip1_s32(*v550.i8, *&vextq_s8(v550, v550, 8uLL));
    v196.i64[0] = v195.u32[0];
    v196.i64[1] = v195.u32[1];
    v197 = vnegq_s64(v196);
    v198 = vshlq_u64(v178, v197);
    v199 = vuzp1q_s32(vzip1q_s64(v178, v198), vzip2q_s64(v178, v198));
    v198.i64[0] = 0x1F0000001FLL;
    v198.i64[1] = 0x1F0000001FLL;
    v200 = vaddq_s32(v550, v198);
    v201.i64[0] = 0x2000000020;
    v201.i64[1] = 0x2000000020;
    v202 = vsubq_s32(v201, v550);
    v498 = vshlq_s32(vshlq_s32(v199, v202), v200);
    v523 = v498;
    v203 = v189 + v188;
    if (v508.i64[0])
    {
      v204 = v508.i64[0] >= v203;
    }

    else
    {
      v204 = 1;
    }

    v205 = v204;
    v206 = 0uLL;
    if (v188 <= 0x80 && v205)
    {
      v207 = v189 & 0x3F;
      v208 = vaddq_s64(vdupq_n_s64(v207), vzip1q_s64(0, v186));
      v209 = (v107 + 8 * (v189 >> 6));
      v210 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v209, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v208)), vshlq_u64(vdupq_lane_s64(v209->i64[0], 0), vnegq_s64(v208)));
      if (v207 + v188 >= 0x81)
      {
        v210 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v209[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v208)), vshlq_u64(vdupq_laneq_s64(v209[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v208))), v210);
      }
    }

    else
    {
      v110 = 1;
      v203 = v189;
      v210 = 0uLL;
    }

    v211 = vshlq_u64(v210, v197);
    v497 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v210, v211), vzip2q_s64(v210, v211)), v202), v200);
    v524 = v497;
    v212 = v203 + v188;
    if (v508.i64[0])
    {
      v213 = v508.i64[0] >= v212;
    }

    else
    {
      v213 = 1;
    }

    v214 = v213;
    if (v188 <= 0x80 && v214)
    {
      v215 = v203 & 0x3F;
      v216 = vaddq_s64(vdupq_n_s64(v215), vzip1q_s64(0, v186));
      v217 = (v107 + 8 * (v203 >> 6));
      v206 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v217, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v216)), vshlq_u64(vdupq_lane_s64(v217->i64[0], 0), vnegq_s64(v216)));
      if (v215 + v188 >= 0x81)
      {
        v206 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v217[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v216)), vshlq_u64(vdupq_laneq_s64(v217[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v216))), v206);
      }
    }

    else
    {
      v110 = 1;
      v212 = v203;
    }

    v218 = vshlq_u64(v206, v197);
    v496 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v206, v218), vzip2q_s64(v206, v218)), v202), v200);
    v525 = v496;
    v219 = v212 + v188;
    if (v508.i64[0])
    {
      v220 = v508.i64[0] >= v219;
    }

    else
    {
      v220 = 1;
    }

    v221 = v220;
    v222 = 0uLL;
    if (v188 <= 0x80 && v221)
    {
      v223 = v212 & 0x3F;
      v224 = vaddq_s64(vdupq_n_s64(v223), vzip1q_s64(0, v186));
      v225 = (v107 + 8 * (v212 >> 6));
      v226 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v225, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v224)), vshlq_u64(vdupq_lane_s64(v225->i64[0], 0), vnegq_s64(v224)));
      if (v223 + v188 >= 0x81)
      {
        v226 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v225[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v224)), vshlq_u64(vdupq_laneq_s64(v225[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v224))), v226);
      }
    }

    else
    {
      v110 = 1;
      v219 = v212;
      v226 = 0uLL;
    }

    v227 = vshlq_u64(v226, v197);
    v495 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v226, v227), vzip2q_s64(v226, v227)), v202), v200);
    v526 = v495;
    v228 = v219 + v188;
    if (v508.i64[0])
    {
      v229 = v508.i64[0] >= v228;
    }

    else
    {
      v229 = 1;
    }

    v230 = v229;
    if (v188 <= 0x80 && v230)
    {
      v231 = v219 & 0x3F;
      v232 = vaddq_s64(vdupq_n_s64(v231), vzip1q_s64(0, v186));
      v233 = (v107 + 8 * (v219 >> 6));
      v222 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v233, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v232)), vshlq_u64(vdupq_lane_s64(v233->i64[0], 0), vnegq_s64(v232)));
      if (v231 + v188 >= 0x81)
      {
        v222 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v233[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v232)), vshlq_u64(vdupq_laneq_s64(v233[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v232))), v222);
      }
    }

    else
    {
      v110 = 1;
      v228 = v219;
    }

    v234 = vshlq_u64(v222, v197);
    v494 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v222, v234), vzip2q_s64(v222, v234)), v202), v200);
    v527 = v494;
    v235 = v228 + v188;
    if (v508.i64[0])
    {
      v236 = v508.i64[0] >= v235;
    }

    else
    {
      v236 = 1;
    }

    v237 = v236;
    v238 = 0uLL;
    if (v188 <= 0x80 && v237)
    {
      v239 = v228 & 0x3F;
      v240 = vaddq_s64(vdupq_n_s64(v239), vzip1q_s64(0, v186));
      v241 = (v107 + 8 * (v228 >> 6));
      v242 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v241, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v240)), vshlq_u64(vdupq_lane_s64(v241->i64[0], 0), vnegq_s64(v240)));
      if (v239 + v188 >= 0x81)
      {
        v242 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v241[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v240)), vshlq_u64(vdupq_laneq_s64(v241[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v240))), v242);
      }
    }

    else
    {
      v110 = 1;
      v235 = v228;
      v242 = 0uLL;
    }

    v243 = vshlq_u64(v242, v197);
    v244 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v242, v243), vzip2q_s64(v242, v243)), v202), v200);
    v528 = v244;
    v245 = v235 + v188;
    if (v508.i64[0])
    {
      v246 = v508.i64[0] >= v245;
    }

    else
    {
      v246 = 1;
    }

    v247 = v246;
    if (v188 <= 0x80 && v247)
    {
      v248 = v235 & 0x3F;
      v249 = vaddq_s64(vdupq_n_s64(v248), vzip1q_s64(0, v186));
      v250 = (v107 + 8 * (v235 >> 6));
      v238 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v250, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v249)), vshlq_u64(vdupq_lane_s64(v250->i64[0], 0), vnegq_s64(v249)));
      if (v248 + v188 >= 0x81)
      {
        v238 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v250[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v249)), vshlq_u64(vdupq_laneq_s64(v250[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v249))), v238);
      }
    }

    else
    {
      v110 = 1;
      v245 = v235;
    }

    v251 = vshlq_u64(v238, v197);
    v252 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v238, v251), vzip2q_s64(v238, v251)), v202), v200);
    v529 = v252;
    v253 = v245 + v188;
    if (v508.i64[0])
    {
      v254 = v508.i64[0] >= v253;
    }

    else
    {
      v254 = 1;
    }

    v255 = v254;
    v256 = 0uLL;
    if (v188 <= 0x80 && v255)
    {
      v257 = v245 & 0x3F;
      v258 = vaddq_s64(vdupq_n_s64(v257), vzip1q_s64(0, v186));
      v259 = (v107 + 8 * (v245 >> 6));
      v260 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v259, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v258)), vshlq_u64(vdupq_lane_s64(v259->i64[0], 0), vnegq_s64(v258)));
      if (v257 + v188 >= 0x81)
      {
        v260 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v259[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v258)), vshlq_u64(vdupq_laneq_s64(v259[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v258))), v260);
      }
    }

    else
    {
      v110 = 1;
      v253 = v245;
      v260 = 0uLL;
    }

    v261 = vshlq_u64(v260, v197);
    v262 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v260, v261), vzip2q_s64(v260, v261)), v202), v200);
    v530 = v262;
    v263 = vpaddq_s32(v551, v551).u64[0];
    v264.i64[0] = v263;
    v264.i64[1] = HIDWORD(v263);
    v265 = v264;
    v266 = vaddvq_s64(v264);
    v267 = v266;
    v268 = v253 + v266;
    if (v508.i64[0])
    {
      v269 = v508.i64[0] >= v268;
    }

    else
    {
      v269 = 1;
    }

    v270 = v269;
    if (v266 <= 0x80 && v270)
    {
      v271 = v253 & 0x3F;
      v272 = vaddq_s64(vdupq_n_s64(v271), vzip1q_s64(0, v265));
      v273 = (v107 + 8 * (v253 >> 6));
      v256 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v273, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v272)), vshlq_u64(vdupq_lane_s64(v273->i64[0], 0), vnegq_s64(v272)));
      if (v271 + v267 >= 0x81)
      {
        v256 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v273[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v272)), vshlq_u64(vdupq_laneq_s64(v273[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v272))), v256);
      }
    }

    else
    {
      v110 = 1;
      v268 = v253;
    }

    v274 = vzip1_s32(*v551.i8, *&vextq_s8(v551, v551, 8uLL));
    v275.i64[0] = v274.u32[0];
    v275.i64[1] = v274.u32[1];
    v276 = vnegq_s64(v275);
    v277 = vshlq_u64(v256, v276);
    v278 = vuzp1q_s32(vzip1q_s64(v256, v277), vzip2q_s64(v256, v277));
    v277.i64[0] = 0x1F0000001FLL;
    v277.i64[1] = 0x1F0000001FLL;
    v279 = vaddq_s32(v551, v277);
    v280.i64[0] = 0x2000000020;
    v280.i64[1] = 0x2000000020;
    v281 = vsubq_s32(v280, v551);
    v282 = vshlq_s32(vshlq_s32(v278, v281), v279);
    v531 = v282;
    v283 = v268 + v267;
    if (v508.i64[0])
    {
      v284 = v508.i64[0] >= v283;
    }

    else
    {
      v284 = 1;
    }

    v285 = v284;
    v286 = 0uLL;
    if (v267 <= 0x80 && v285)
    {
      v287 = v268 & 0x3F;
      v288 = vaddq_s64(vdupq_n_s64(v287), vzip1q_s64(0, v265));
      v289 = (v107 + 8 * (v268 >> 6));
      v290 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v289, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v288)), vshlq_u64(vdupq_lane_s64(v289->i64[0], 0), vnegq_s64(v288)));
      if (v287 + v267 >= 0x81)
      {
        v290 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v289[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v288)), vshlq_u64(vdupq_laneq_s64(v289[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v288))), v290);
      }
    }

    else
    {
      v110 = 1;
      v283 = v268;
      v290 = 0uLL;
    }

    v291 = vshlq_u64(v290, v276);
    v292 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v290, v291), vzip2q_s64(v290, v291)), v281), v279);
    v532 = v292;
    v293 = v283 + v267;
    if (v508.i64[0])
    {
      v294 = v508.i64[0] >= v293;
    }

    else
    {
      v294 = 1;
    }

    v295 = v294;
    if (v267 <= 0x80 && v295)
    {
      v296 = v283 & 0x3F;
      v297 = vaddq_s64(vdupq_n_s64(v296), vzip1q_s64(0, v265));
      v298 = (v107 + 8 * (v283 >> 6));
      v286 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v298, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v297)), vshlq_u64(vdupq_lane_s64(v298->i64[0], 0), vnegq_s64(v297)));
      if (v296 + v267 >= 0x81)
      {
        v286 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v298[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v297)), vshlq_u64(vdupq_laneq_s64(v298[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v297))), v286);
      }
    }

    else
    {
      v110 = 1;
      v293 = v283;
    }

    v299 = vshlq_u64(v286, v276);
    v300 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v286, v299), vzip2q_s64(v286, v299)), v281), v279);
    v533 = v300;
    v301 = v293 + v267;
    if (v508.i64[0])
    {
      v302 = v508.i64[0] >= v301;
    }

    else
    {
      v302 = 1;
    }

    v303 = v302;
    v304 = 0uLL;
    if (v267 <= 0x80 && v303)
    {
      v305 = v293 & 0x3F;
      v306 = vaddq_s64(vdupq_n_s64(v305), vzip1q_s64(0, v265));
      v307 = (v107 + 8 * (v293 >> 6));
      v308 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v307, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v306)), vshlq_u64(vdupq_lane_s64(v307->i64[0], 0), vnegq_s64(v306)));
      if (v305 + v267 >= 0x81)
      {
        v308 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v307[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v306)), vshlq_u64(vdupq_laneq_s64(v307[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v306))), v308);
      }
    }

    else
    {
      v110 = 1;
      v301 = v293;
      v308 = 0uLL;
    }

    v309 = vshlq_u64(v308, v276);
    v310 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v308, v309), vzip2q_s64(v308, v309)), v281), v279);
    v534 = v310;
    v311 = v301 + v267;
    if (v508.i64[0])
    {
      v312 = v508.i64[0] >= v311;
    }

    else
    {
      v312 = 1;
    }

    v313 = v312;
    if (v267 <= 0x80 && v313)
    {
      v314 = v301 & 0x3F;
      v315 = vaddq_s64(vdupq_n_s64(v314), vzip1q_s64(0, v265));
      v316 = (v107 + 8 * (v301 >> 6));
      v304 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v316, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v315)), vshlq_u64(vdupq_lane_s64(v316->i64[0], 0), vnegq_s64(v315)));
      if (v314 + v267 >= 0x81)
      {
        v304 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v316[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v315)), vshlq_u64(vdupq_laneq_s64(v316[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v315))), v304);
      }
    }

    else
    {
      v110 = 1;
      v311 = v301;
    }

    v317 = vshlq_u64(v304, v276);
    v318 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v304, v317), vzip2q_s64(v304, v317)), v281), v279);
    v535 = v318;
    v319 = v311 + v267;
    if (v508.i64[0])
    {
      v320 = v508.i64[0] >= v319;
    }

    else
    {
      v320 = 1;
    }

    v321 = v320;
    v322 = 0uLL;
    if (v267 <= 0x80 && v321)
    {
      v323 = v311 & 0x3F;
      v324 = vaddq_s64(vdupq_n_s64(v323), vzip1q_s64(0, v265));
      v325 = (v107 + 8 * (v311 >> 6));
      v326 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v325, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v324)), vshlq_u64(vdupq_lane_s64(v325->i64[0], 0), vnegq_s64(v324)));
      if (v323 + v267 >= 0x81)
      {
        v326 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v325[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v324)), vshlq_u64(vdupq_laneq_s64(v325[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v324))), v326);
      }
    }

    else
    {
      v110 = 1;
      v319 = v311;
      v326 = 0uLL;
    }

    v327 = vshlq_u64(v326, v276);
    v328 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v326, v327), vzip2q_s64(v326, v327)), v281), v279);
    v536 = v328;
    v329 = v319 + v267;
    if (v508.i64[0])
    {
      v330 = v508.i64[0] >= v329;
    }

    else
    {
      v330 = 1;
    }

    v331 = v330;
    if (v267 <= 0x80 && v331)
    {
      v332 = v319 & 0x3F;
      v333 = vaddq_s64(vdupq_n_s64(v332), vzip1q_s64(0, v265));
      v334 = (v107 + 8 * (v319 >> 6));
      v322 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v334, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v333)), vshlq_u64(vdupq_lane_s64(v334->i64[0], 0), vnegq_s64(v333)));
      if (v332 + v267 >= 0x81)
      {
        v322 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v334[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v333)), vshlq_u64(vdupq_laneq_s64(v334[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v333))), v322);
      }
    }

    else
    {
      v110 = 1;
      v329 = v319;
    }

    v335 = vshlq_u64(v322, v276);
    v336 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v322, v335), vzip2q_s64(v322, v335)), v281), v279);
    v537 = v336;
    v337 = v329 + v267;
    if (v508.i64[0])
    {
      v338 = v508.i64[0] >= v337;
    }

    else
    {
      v338 = 1;
    }

    v339 = v338;
    v340 = 0uLL;
    if (v267 <= 0x80 && v339)
    {
      v341 = v329 & 0x3F;
      v342 = vaddq_s64(vdupq_n_s64(v341), vzip1q_s64(0, v265));
      v343 = (v107 + 8 * (v329 >> 6));
      v344 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v343, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v342)), vshlq_u64(vdupq_lane_s64(v343->i64[0], 0), vnegq_s64(v342)));
      if (v341 + v267 >= 0x81)
      {
        v344 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v343[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v342)), vshlq_u64(vdupq_laneq_s64(v343[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v342))), v344);
      }
    }

    else
    {
      v110 = 1;
      v337 = v329;
      v344 = 0uLL;
    }

    v345 = vshlq_u64(v344, v276);
    v346 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v344, v345), vzip2q_s64(v344, v345)), v281), v279);
    v538 = v346;
    v345.i64[0] = vpaddq_s32(v552, v552).u64[0];
    v347.i64[0] = v345.u32[0];
    v347.i64[1] = v345.u32[1];
    v348 = v347;
    v349 = vaddvq_s64(v347);
    v350 = v349;
    v351 = v337 + v349;
    if (v508.i64[0])
    {
      v352 = v508.i64[0] >= v351;
    }

    else
    {
      v352 = 1;
    }

    v353 = v352;
    if (v349 <= 0x80 && v353)
    {
      v354 = v337 & 0x3F;
      v355 = vaddq_s64(vdupq_n_s64(v354), vzip1q_s64(0, v348));
      v356 = (v107 + 8 * (v337 >> 6));
      v340 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v356, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v355)), vshlq_u64(vdupq_lane_s64(v356->i64[0], 0), vnegq_s64(v355)));
      if (v354 + v350 >= 0x81)
      {
        v340 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v356[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v355)), vshlq_u64(vdupq_laneq_s64(v356[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v355))), v340);
      }
    }

    else
    {
      v110 = 1;
      v351 = v337;
    }

    v357 = vzip1_s32(*v552.i8, *&vextq_s8(v552, v552, 8uLL));
    v358.i64[0] = v357.u32[0];
    v358.i64[1] = v357.u32[1];
    v359 = vnegq_s64(v358);
    v360 = vshlq_u64(v340, v359);
    v361 = vuzp1q_s32(vzip1q_s64(v340, v360), vzip2q_s64(v340, v360));
    v362.i64[0] = 0x1F0000001FLL;
    v362.i64[1] = 0x1F0000001FLL;
    v363 = vaddq_s32(v552, v362);
    v362.i64[0] = 0x2000000020;
    v362.i64[1] = 0x2000000020;
    v364 = vsubq_s32(v362, v552);
    v365 = vshlq_s32(vshlq_s32(v361, v364), v363);
    v539 = v365;
    v366 = v351 + v350;
    if (v508.i64[0])
    {
      v367 = v508.i64[0] >= v366;
    }

    else
    {
      v367 = 1;
    }

    v368 = v367;
    v369 = 0uLL;
    if (v350 <= 0x80 && v368)
    {
      v370 = v351 & 0x3F;
      v371 = vaddq_s64(vdupq_n_s64(v370), vzip1q_s64(0, v348));
      v372 = (v107 + 8 * (v351 >> 6));
      v373 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v372, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v371)), vshlq_u64(vdupq_lane_s64(v372->i64[0], 0), vnegq_s64(v371)));
      if (v370 + v350 >= 0x81)
      {
        v373 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v372[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v371)), vshlq_u64(vdupq_laneq_s64(v372[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v371))), v373);
      }
    }

    else
    {
      v110 = 1;
      v366 = v351;
      v373 = 0uLL;
    }

    v374 = vshlq_u64(v373, v359);
    v375 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v373, v374), vzip2q_s64(v373, v374)), v364), v363);
    v540 = v375;
    v376 = v366 + v350;
    if (v508.i64[0])
    {
      v377 = v508.i64[0] >= v376;
    }

    else
    {
      v377 = 1;
    }

    v378 = v377;
    if (v350 <= 0x80 && v378)
    {
      v379 = v366 & 0x3F;
      v380 = vaddq_s64(vdupq_n_s64(v379), vzip1q_s64(0, v348));
      v381 = (v107 + 8 * (v366 >> 6));
      v369 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v381, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v380)), vshlq_u64(vdupq_lane_s64(v381->i64[0], 0), vnegq_s64(v380)));
      if (v379 + v350 >= 0x81)
      {
        v369 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v381[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v380)), vshlq_u64(vdupq_laneq_s64(v381[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v380))), v369);
      }
    }

    else
    {
      v110 = 1;
      v376 = v366;
    }

    v382 = vshlq_u64(v369, v359);
    v383 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v369, v382), vzip2q_s64(v369, v382)), v364), v363);
    v541 = v383;
    v384 = v376 + v350;
    if (v508.i64[0])
    {
      v385 = v508.i64[0] >= v384;
    }

    else
    {
      v385 = 1;
    }

    v386 = v385;
    v387 = 0uLL;
    if (v350 <= 0x80 && v386)
    {
      v388 = v376 & 0x3F;
      v389 = vaddq_s64(vdupq_n_s64(v388), vzip1q_s64(0, v348));
      v390 = (v107 + 8 * (v376 >> 6));
      v391 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v390, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v389)), vshlq_u64(vdupq_lane_s64(v390->i64[0], 0), vnegq_s64(v389)));
      if (v388 + v350 >= 0x81)
      {
        v391 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v390[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v389)), vshlq_u64(vdupq_laneq_s64(v390[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v389))), v391);
      }
    }

    else
    {
      v110 = 1;
      v384 = v376;
      v391 = 0uLL;
    }

    v392 = vshlq_u64(v391, v359);
    v393 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v391, v392), vzip2q_s64(v391, v392)), v364), v363);
    v542 = v393;
    v394 = v384 + v350;
    if (v508.i64[0])
    {
      v395 = v508.i64[0] >= v394;
    }

    else
    {
      v395 = 1;
    }

    v396 = v395;
    if (v350 <= 0x80 && v396)
    {
      v397 = v384 & 0x3F;
      v398 = vaddq_s64(vdupq_n_s64(v397), vzip1q_s64(0, v348));
      v399 = (v107 + 8 * (v384 >> 6));
      v387 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v399, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v398)), vshlq_u64(vdupq_lane_s64(v399->i64[0], 0), vnegq_s64(v398)));
      if (v397 + v350 >= 0x81)
      {
        v387 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v399[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v398)), vshlq_u64(vdupq_laneq_s64(v399[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v398))), v387);
      }
    }

    else
    {
      v110 = 1;
      v394 = v384;
    }

    v400 = vshlq_u64(v387, v359);
    v401 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v387, v400), vzip2q_s64(v387, v400)), v364), v363);
    v543 = v401;
    v402 = v394 + v350;
    if (v508.i64[0])
    {
      v403 = v508.i64[0] >= v402;
    }

    else
    {
      v403 = 1;
    }

    v404 = v403;
    v405 = 0uLL;
    if (v350 <= 0x80 && v404)
    {
      v406 = v394 & 0x3F;
      v407 = vaddq_s64(vdupq_n_s64(v406), vzip1q_s64(0, v348));
      v408 = (v107 + 8 * (v394 >> 6));
      v409 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v408, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v407)), vshlq_u64(vdupq_lane_s64(v408->i64[0], 0), vnegq_s64(v407)));
      if (v406 + v350 >= 0x81)
      {
        v409 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v408[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v407)), vshlq_u64(vdupq_laneq_s64(v408[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v407))), v409);
      }
    }

    else
    {
      v110 = 1;
      v402 = v394;
      v409 = 0uLL;
    }

    v410 = vshlq_u64(v409, v359);
    v411 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v409, v410), vzip2q_s64(v409, v410)), v364), v363);
    v544 = v411;
    v412 = v402 + v350;
    if (v508.i64[0])
    {
      v413 = v508.i64[0] >= v412;
    }

    else
    {
      v413 = 1;
    }

    v414 = v413;
    if (v350 <= 0x80 && v414)
    {
      v415 = v402 & 0x3F;
      v416 = vaddq_s64(vdupq_n_s64(v415), vzip1q_s64(0, v348));
      v417 = (v107 + 8 * (v402 >> 6));
      v405 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v417, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v416)), vshlq_u64(vdupq_lane_s64(v417->i64[0], 0), vnegq_s64(v416)));
      if (v415 + v350 >= 0x81)
      {
        v405 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v417[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v416)), vshlq_u64(vdupq_laneq_s64(v417[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v416))), v405);
      }
    }

    else
    {
      v110 = 1;
      v412 = v402;
    }

    v418 = vshlq_u64(v405, v359);
    v419 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v405, v418), vzip2q_s64(v405, v418)), v364), v363);
    v545 = v419;
    v420 = v412 + v350;
    if (v508.i64[0])
    {
      v421 = v508.i64[0] >= v420;
    }

    else
    {
      v421 = 1;
    }

    v422 = v421;
    if (v350 > 0x80 || !v422)
    {
      goto LABEL_416;
    }

    v423 = vaddq_s64(vdupq_n_s64(v412 & 0x3F), vzip1q_s64(0, v348));
    v424 = (v107 + 8 * (v412 >> 6));
    v425 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v424, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v423)), vshlq_u64(vdupq_lane_s64(v424->i64[0], 0), vnegq_s64(v423)));
    if ((v412 & 0x3F) + v350 < 0x81)
    {
      if (v110)
      {
        goto LABEL_416;
      }

      v429 = vshlq_u64(v425, v359);
      v428 = vuzp1q_s32(vzip1q_s64(v425, v429), vzip2q_s64(v425, v429));
    }

    else
    {
      if (v110)
      {
        goto LABEL_416;
      }

      v426 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v424[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v423)), vshlq_u64(vdupq_laneq_s64(v424[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v423))), v425);
      v427 = vshlq_u64(v426, v359);
      v428 = vuzp1q_s32(vzip1q_s64(v426, v427), vzip2q_s64(v426, v427));
    }

    v430 = vshlq_s32(vshlq_s32(v428, v364), v363);
    if (v508.i64[0] + 8 * result - v420 - 2048 < 0x11 && v93 != 2)
    {
      v431.i64[0] = 0x1000000010;
      v431.i64[1] = 0x1000000010;
      v432 = vandq_s8(v548, v431);
      v433 = vandq_s8(v92, v504);
      v434 = v547;
      v435 = vaddq_s32(v547, v113);
      v436 = vaddq_s32(v547, vsubq_s32(v133, v433));
      v437 = vceqzq_s32(v432);
      v438 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v436, xmmword_29D2F11D0), v437), v436);
      v439 = vaddq_s32(v547, vsubq_s32(v502, v433));
      v440 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v439, xmmword_29D2F11D0), v437), v439);
      v441 = vaddq_s32(v547, vsubq_s32(v150, v433));
      v442 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v441, xmmword_29D2F11D0), v437), v441);
      v443 = vandq_s8(v92, v505);
      v506 = vsubq_s32(v430, v443);
      *a1 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v435, xmmword_29D2F11D0), v437), v435);
      *(a1 + 16) = v438;
      *(a1 + 32) = v440;
      *(a1 + 48) = v442;
      v444 = vaddq_s32(v434, vsubq_s32(v501, v433));
      v445 = vaddq_s32(v434, vsubq_s32(v167, v433));
      v446 = v92;
      v447 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v444, xmmword_29D2F11D0), v437), v444);
      v448 = vaddq_s32(v434, vsubq_s32(v500, v433));
      v449 = vaddq_s32(v434, vsubq_s32(v499, v433));
      *(a1 + 64) = v447;
      *(a1 + 80) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v445, xmmword_29D2F11D0), v437), v445);
      *(a1 + 96) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v448, xmmword_29D2F11D0), v437), v448);
      *(a1 + 112) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v449, xmmword_29D2F11D0), v437), v449);
      v450 = vandq_s8(v92, v63);
      v451 = vaddq_s32(v434, vsubq_s32(v498, v450));
      v452 = vaddq_s32(v434, vsubq_s32(v497, v450));
      v453 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v451, xmmword_29D2F11D0), v437), v451);
      v454 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v452, xmmword_29D2F11D0), v437), v452);
      v455 = vaddq_s32(v434, vsubq_s32(v496, v450));
      v456 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v455, xmmword_29D2F11D0), v437), v455);
      v457 = vaddq_s32(v434, vsubq_s32(v495, v450));
      v458 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v457, xmmword_29D2F11D0), v437), v457);
      v459 = vaddq_s32(v434, vsubq_s32(v494, v450));
      v460 = vaddq_s32(v434, vsubq_s32(v244, v450));
      *(a1 + 128) = v453;
      *(a1 + 144) = v454;
      *(a1 + 160) = v456;
      *(a1 + 176) = v458;
      v461 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v459, xmmword_29D2F11D0), v437), v459);
      v462 = vaddq_s32(v434, vsubq_s32(v252, v450));
      v463 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v462, xmmword_29D2F11D0), v437), v462);
      v464 = vaddq_s32(v434, vsubq_s32(v262, v450));
      v465 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v464, xmmword_29D2F11D0), v437), v464);
      v466 = vandq_s8(v446, v503);
      v467 = vaddq_s32(v434, vsubq_s32(v282, v466));
      *(a1 + 192) = v461;
      *(a1 + 208) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v460, xmmword_29D2F11D0), v437), v460);
      *(a1 + 224) = v463;
      *(a1 + 240) = v465;
      v468 = vaddq_s32(v434, vsubq_s32(v292, v466));
      v469 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v467, xmmword_29D2F11D0), v437), v467);
      v470 = vaddq_s32(v434, vsubq_s32(v300, v466));
      v471 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v470, xmmword_29D2F11D0), v437), v470);
      v472 = vaddq_s32(v434, vsubq_s32(v310, v466));
      v473 = (a1 + a2);
      *v473 = v469;
      v473[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v468, xmmword_29D2F11D0), v437), v468);
      v473[2] = v471;
      v473[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v472, xmmword_29D2F11D0), v437), v472);
      v474 = a1 + a2 + 64;
      v475 = vaddq_s32(v434, vsubq_s32(v318, v466));
      v476 = vaddq_s32(v434, vsubq_s32(v328, v466));
      v477 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v475, xmmword_29D2F11D0), v437), v475);
      v478 = vaddq_s32(v434, vsubq_s32(v336, v466));
      v479 = vaddq_s32(v434, vsubq_s32(v346, v466));
      *v474 = v477;
      *(v474 + 16) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v476, xmmword_29D2F11D0), v437), v476);
      *(v474 + 32) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v478, xmmword_29D2F11D0), v437), v478);
      *(v474 + 48) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v479, xmmword_29D2F11D0), v437), v479);
      v480 = vaddq_s32(v434, vsubq_s32(v365, v443));
      v481 = vaddq_s32(v434, vsubq_s32(v375, v443));
      v482 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v480, xmmword_29D2F11D0), v437), v480);
      v483 = vaddq_s32(v434, vsubq_s32(v383, v443));
      v484 = vaddq_s32(v434, vsubq_s32(v393, v443));
      v485 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v484, xmmword_29D2F11D0), v437), v484);
      v486 = a1 + a2 + 128;
      v487 = vaddq_s32(v434, vsubq_s32(v401, v443));
      v488 = vaddq_s32(v434, vsubq_s32(v411, v443));
      *v486 = v482;
      *(v486 + 16) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v481, xmmword_29D2F11D0), v437), v481);
      *(v486 + 32) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v483, xmmword_29D2F11D0), v437), v483);
      *(v486 + 48) = v485;
      v489 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v487, xmmword_29D2F11D0), v437), v487);
      v490 = vaddq_s32(v434, vsubq_s32(v419, v443));
      v491 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v490, xmmword_29D2F11D0), v437), v490);
      v492 = vaddq_s32(v434, v506);
      v493 = a1 + a2 + 192;
      *v493 = v489;
      *(v493 + 16) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v488, xmmword_29D2F11D0), v437), v488);
      *(v493 + 32) = v491;
      *(v493 + 48) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v492, xmmword_29D2F11D0), v437), v492);
      return result;
    }

LABEL_416:
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::writeErrorColorToSubblock(a1, a2);
    return 0;
  }

  if (a4)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v507, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v507, a5);
  }

  v515 = v507;
  v516 = v509;
  v519 = v508;
  v520 = v510;
  v523 = v511;
  v524 = v513;
  v527 = v512;
  v528 = v514;
  v14 = a3 + 64;
  if ((v7 & 2) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v14, &v507, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v14, &v507, a5);
  }

  v517 = v507;
  v518 = v509;
  v521 = v508;
  v522 = v510;
  v525 = v511;
  v526 = v513;
  v529 = v512;
  v530 = v514;
  v35 = a3 + 128;
  if ((v7 & 4) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v35, &v507, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v35, &v507, a5);
  }

  v531 = v507;
  v532 = v509;
  v535 = v508;
  v536 = v510;
  v539 = v511;
  v540 = v513;
  v543 = v512;
  v544 = v514;
  v36 = a3 + 192;
  if ((v7 & 8) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v36, &v507, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v36, &v507, a5);
  }

  v533 = v507;
  v534 = v509;
  v537 = v508;
  v538 = v510;
  v541 = v511;
  v542 = v513;
  v545 = v512;
  v546 = v514;
  v37 = v519;
  v38 = v520;
  v39 = v507;
  *a1 = v515;
  *(a1 + 16) = v37;
  *(a1 + 32) = v516;
  *(a1 + 48) = v38;
  v40 = v524;
  v41 = v527;
  v42 = v528;
  *(a1 + 64) = v523;
  *(a1 + 80) = v41;
  *(a1 + 96) = v40;
  *(a1 + 112) = v42;
  v43 = v518;
  v44 = v521;
  v45 = v522;
  *(a1 + 128) = v517;
  *(a1 + 144) = v44;
  *(a1 + 160) = v43;
  *(a1 + 176) = v45;
  v46 = v526;
  v47 = v529;
  v48 = v530;
  *(a1 + 192) = v525;
  *(a1 + 208) = v47;
  *(a1 + 224) = v46;
  *(a1 + 240) = v48;
  v49 = (a1 + a2);
  v50 = v532;
  v51 = v535;
  v52 = v536;
  *v49 = v531;
  v49[1] = v51;
  v49[2] = v50;
  v49[3] = v52;
  v53 = v540;
  v54 = v543;
  v55 = v544;
  v49[4] = v539;
  v49[5] = v54;
  v49[6] = v53;
  v49[7] = v55;
  v57 = v537;
  v56 = v538;
  v58 = v534;
  v49[8] = v39;
  v49[9] = v57;
  v49[10] = v58;
  v49[11] = v56;
  v60 = v545;
  v59 = v546;
  v61 = v542;
  v49[12] = v541;
  v49[13] = v60;
  result = 256;
  v49[14] = v61;
  v49[15] = v59;
  return result;
}

void *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(void *result, uint64_t a2)
{
  v2 = 8 * ((&v16 + 6) & 7);
  v16 |= 31 << v2;
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

        *(&v16 + v5) |= ((0xFFFFFFFFFFFFFFFFLL >> v9) & ~(-1 << v11)) << v3;
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
    *(&v16 + v5) |= 1 << v3;
  }

  v13 = (result + a2);
  *result = 0;
  result[1] = 0;
  v14 = (result + 2 * a2);
  *v13 = 0;
  v13[1] = 0;
  v15 = (result + 2 * a2 + a2);
  *v14 = 0;
  v14[1] = 0;
  *v15 = 0;
  v15[1] = 0;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int32x4_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v305 = 0;
  v304 = (8 * (a3 & 7)) | 0x200;
  v302 = 8 * (a3 & 7);
  v303 = a3 & 0xFFFFFFFFFFFFFFF8;
  result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)9,AGX::AppleCompressionGen2::Vec<signed char>>(&v307, v312, &v306, &v302, a4);
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
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(a1, a2);
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
    v284 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v274, xmmword_29D2F11F0), v283), v274);
    v285 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v275, xmmword_29D2F11F0), v283), v275);
    v286 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v276, xmmword_29D2F11F0), v283), v276);
    v287 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v277, xmmword_29D2F11F0), v283), v277);
    v288 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v278, xmmword_29D2F11F0), v283), v278);
    v289 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v279, xmmword_29D2F11F0), v283), v279);
    v290 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v280, xmmword_29D2F11F0), v283), v280);
    v291 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v281, xmmword_29D2F11F0), v283), v281);
    v277.i64[0] = 0x7C007C007C007C00;
    v277.i64[1] = 0x7C007C007C007C00;
    v278.i64[0] = 0x8000800080008000;
    v278.i64[1] = 0x8000800080008000;
    v292 = vbslq_s8(v278, vshrn_high_n_s32(vshrn_n_s32(v284, 9uLL), v285, 9uLL), vbslq_s8(v277, vshrn_high_n_s32(vshrn_n_s32(v284, 6uLL), v285, 6uLL), vbslq_s8(xmmword_29D2F1200, vshrn_high_n_s32(vshrn_n_s32(v284, 3uLL), v285, 3uLL), vuzp1q_s16(v284, v285))));
    v293 = vbslq_s8(v278, vshrn_high_n_s32(vshrn_n_s32(v286, 9uLL), v287, 9uLL), vbslq_s8(v277, vshrn_high_n_s32(vshrn_n_s32(v286, 6uLL), v287, 6uLL), vbslq_s8(xmmword_29D2F1200, vshrn_high_n_s32(vshrn_n_s32(v286, 3uLL), v287, 3uLL), vuzp1q_s16(v286, v287))));
    v294 = vbslq_s8(v278, vshrn_high_n_s32(vshrn_n_s32(v288, 9uLL), v289, 9uLL), vbslq_s8(v277, vshrn_high_n_s32(vshrn_n_s32(v288, 6uLL), v289, 6uLL), vbslq_s8(xmmword_29D2F1200, vshrn_high_n_s32(vshrn_n_s32(v288, 3uLL), v289, 3uLL), vuzp1q_s16(v288, v289))));
    v295 = vbslq_s8(v278, vshrn_high_n_s32(vshrn_n_s32(v290, 9uLL), v291, 9uLL), vbslq_s8(v277, vshrn_high_n_s32(vshrn_n_s32(v290, 6uLL), v291, 6uLL), vbslq_s8(xmmword_29D2F1200, vshrn_high_n_s32(vshrn_n_s32(v290, 3uLL), v291, 3uLL), vuzp1q_s16(v290, v291))));
    *a1 = vuzp1q_s32(v292, v294);
    *(a1 + a2) = vuzp2q_s32(v292, v294);
    v296 = (a1 + 2 * a2);
    *v296 = vuzp1q_s32(v293, v295);
    *(v296 + a2) = vuzp2q_s32(v293, v295);
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)9,AGX::AppleCompressionGen2::Vec<signed char>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unsigned int a5)
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
  *(a2 + 3) = ((v11 & 0x20000000) != 0) + 1;
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

  *a3 = v15 & 0x1F;
  *(a3 + 1) = (v15 >> 5) & 0x1F;
  *(a3 + 2) = (v15 >> 10) & 0x1F;
  *(a3 + 3) = (v15 & 0x8000) != 0;
  v18 = vld1q_dup_f32(a1);
  *a1 = v18;
  v19 = vld1q_dup_f32(a2);
  *a2 = v19;
  v20 = vld1q_dup_f32(a3);
  *a3 = v20;
  return a5 + 1;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(uint16x8_t *a1, char *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = *(a3 + a4);
  v7 = vzip1q_s32(*a3, v6);
  v8 = vzip2q_s32(*a3, v6);
  v9 = (a3 + 2 * a4);
  v10 = *(v9 + a4);
  v11 = vzip1q_s32(*v9, v10);
  v12 = vzip2q_s32(*v9, v10);
  v13.i64[0] = 0x1F0000001FLL;
  v13.i64[1] = 0x1F0000001FLL;
  v10.i64[0] = 0x1F0000001F00;
  v10.i64[1] = 0x1F0000001F00;
  v14.i64[0] = 0x1F0000001F0000;
  v14.i64[1] = 0x1F0000001F0000;
  v547 = v7;
  v15.i64[0] = 0x100000001000000;
  v15.i64[1] = 0x100000001000000;
  v16 = vbslq_s8(v15, vshll_n_u16(*v7.i8, 9uLL), vbslq_s8(v14, vshll_n_u16(*v7.i8, 6uLL), vbslq_s8(v10, vshll_n_u16(*v7.i8, 3uLL), vbslq_s8(v13, vmovl_u16(*v7.i8), 0))));
  v17 = vbslq_s8(v15, vshll_high_n_u16(v7, 9uLL), vbslq_s8(v14, vshll_high_n_u16(v7, 6uLL), vbslq_s8(v10, vshll_high_n_u16(v7, 3uLL), vbslq_s8(v13, vmovl_high_u16(v7), 0))));
  v546 = v11;
  v18 = vbslq_s8(v15, vshll_n_u16(*v11.i8, 9uLL), vbslq_s8(v14, vshll_n_u16(*v11.i8, 6uLL), vbslq_s8(v10, vshll_n_u16(*v11.i8, 3uLL), vbslq_s8(v13, vmovl_u16(*v11.i8), 0))));
  v19 = vbslq_s8(v15, vshll_high_n_u16(v11, 9uLL), vbslq_s8(v14, vshll_high_n_u16(v11, 6uLL), vbslq_s8(v10, vshll_high_n_u16(v11, 3uLL), vbslq_s8(v13, vmovl_high_u16(v11), 0))));
  v20 = vbslq_s8(v15, vshll_n_u16(*v8.i8, 9uLL), vbslq_s8(v14, vshll_n_u16(*v8.i8, 6uLL), vbslq_s8(v10, vshll_n_u16(*v8.i8, 3uLL), vbslq_s8(v13, vmovl_u16(*v8.i8), 0))));
  v21 = vbslq_s8(v15, vshll_high_n_u16(v8, 9uLL), vbslq_s8(v14, vshll_high_n_u16(v8, 6uLL), vbslq_s8(v10, vshll_high_n_u16(v8, 3uLL), vbslq_s8(v13, vmovl_high_u16(v8), 0))));
  v548 = v12;
  v22 = vbslq_s8(v15, vshll_n_u16(*v12.i8, 9uLL), vbslq_s8(v14, vshll_n_u16(*v12.i8, 6uLL), vbslq_s8(v10, vshll_n_u16(*v12.i8, 3uLL), vbslq_s8(v13, vmovl_u16(*v12.i8), 0))));
  v23 = vbslq_s8(v15, vshll_high_n_u16(v12, 9uLL), vbslq_s8(v14, vshll_high_n_u16(v12, 6uLL), vbslq_s8(v10, vshll_high_n_u16(v12, 3uLL), vbslq_s8(v13, vmovl_high_u16(v12), 0))));
  v24 = vdupq_lane_s32(*v16.i8, 0);
  v25 = vshlq_s8(vshlq_s8(vsubq_s8(v18, v24), xmmword_29D2F1210), xmmword_29D2F1220);
  v26 = vshlq_s8(vshlq_s8(vsubq_s8(v20, v24), xmmword_29D2F1210), xmmword_29D2F1220);
  v27 = vshlq_s8(vshlq_s8(vsubq_s8(v21, v24), xmmword_29D2F1210), xmmword_29D2F1220);
  v560 = vshlq_s8(vshlq_s8(vsubq_s8(v16, v24), xmmword_29D2F1210), xmmword_29D2F1220);
  v561 = vshlq_s8(vshlq_s8(vsubq_s8(v17, v24), xmmword_29D2F1210), xmmword_29D2F1220);
  v28 = vqtbl1q_s8(vmaxq_s8(v560, v561), xmmword_29D2F0F70);
  v29 = vqtbl1q_s8(vminq_s8(v560, v561), xmmword_29D2F0F70);
  v30 = vpmaxq_s8(v28, v28);
  v31 = vpminq_s8(v29, v29);
  v32 = vpmaxq_s8(v30, v30);
  v33 = vpminq_s8(v31, v31);
  v34 = vzip1q_s8(v32, v33);
  v35.i64[0] = 0x808080808080808;
  v35.i64[1] = 0x808080808080808;
  v36 = vbicq_s8(vsubq_s8(v35, vclsq_s8(v34)), vceqzq_s8(v34));
  v557 = vshlq_s8(vshlq_s8(vsubq_s8(v19, v24), xmmword_29D2F1210), xmmword_29D2F1220);
  v37 = vqtbl1q_s8(vmaxq_s8(v25, v557), xmmword_29D2F0F70);
  v38 = vqtbl1q_s8(vminq_s8(v25, v557), xmmword_29D2F0F70);
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
  v559 = v24;
  v57 = vshlq_s8(vshlq_s8(vsubq_s8(v22, v24), xmmword_29D2F1210), xmmword_29D2F1220);
  v58 = vshlq_s8(vshlq_s8(vsubq_s8(v23, v24), xmmword_29D2F1210), xmmword_29D2F1220);
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

  v543 = v8;
  v77.i64[0] = -1;
  v77.i64[1] = -1;
  v78.i64[0] = 0x707070707070707;
  v78.i64[1] = 0x707070707070707;
  v79 = vcgtq_s8(v73, v75);
  v549 = vandq_s8(vsubq_s8(vshlq_s8(v77, vsubq_s8(v78, v74)), v66), v79);
  v80.i64[0] = 0x303030303030303;
  v80.i64[1] = 0x303030303030303;
  v541 = vmaxq_s8(vminq_s8(vsubq_s8(v76, v70), v80), 0);
  v539 = vmaxq_s8(vminq_s8(vsubq_s8(v76, v69), v80), 0);
  v540 = vmaxq_s8(vminq_s8(vsubq_s8(v76, v71), v80), 0);
  v544 = vmaxq_s8(vminq_s8(vsubq_s8(v76, v72), v80), 0);
  v77.i64[0] = 0x404040404040404;
  v77.i64[1] = 0x404040404040404;
  v558 = vorrq_s8(vbicq_s8(v77, vceqq_s8(vaddq_s8(v544, v540), vnegq_s8(vaddq_s8(v539, v541)))), vorrq_s8(vandq_s8(vceqzq_s8(v76), v80), vandq_s8(v79, v35)));
  v553 = v25;
  v554 = v26;
  v555 = v27;
  v556 = v57;
  v81 = vshlq_s8(vsubq_s8(v58, vqtbl1q_s8(v58, xmmword_29D2F11F0)), xmmword_29D2F1210);
  v82 = vshlq_s8(vshlq_s8(vsubq_s8(v25, vqtbl1q_s8(v25, xmmword_29D2F11F0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v83 = vshlq_s8(vshlq_s8(vsubq_s8(v26, vqtbl1q_s8(v26, xmmword_29D2F11F0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v551 = v58;
  v84 = vshlq_s8(vshlq_s8(vsubq_s8(v27, vqtbl1q_s8(v27, xmmword_29D2F11F0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v85 = vshlq_s8(vshlq_s8(vsubq_s8(v57, vqtbl1q_s8(v57, xmmword_29D2F11F0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v86 = vshlq_s8(v81, xmmword_29D2F1220);
  v537 = vshlq_s8(vshlq_s8(vsubq_s8(v561, vqtbl1q_s8(v561, xmmword_29D2F11F0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v538 = vshlq_s8(vshlq_s8(vsubq_s8(v560, vqtbl1q_s8(v560, xmmword_29D2F11F0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v87 = vqtbl1q_s8(vmaxq_s8(v538, v537), xmmword_29D2F0F70);
  v88 = vqtbl1q_s8(vminq_s8(v538, v537), xmmword_29D2F0F70);
  v89 = vpmaxq_s8(v87, v87);
  v90 = vpminq_s8(v88, v88);
  v91 = vpmaxq_s8(v89, v89);
  v92 = vpminq_s8(v90, v90);
  v93 = vzip1q_s8(v91, v92);
  v94 = vbicq_s8(vsubq_s8(v35, vclsq_s8(v93)), vceqzq_s8(v93));
  v95 = vpmaxq_s8(v94, v94);
  v535 = vshlq_s8(vshlq_s8(vsubq_s8(v557, vqtbl1q_s8(v557, xmmword_29D2F11F0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v536 = v82;
  v96 = vqtbl1q_s8(vmaxq_s8(v82, v535), xmmword_29D2F0F70);
  v97 = vqtbl1q_s8(vminq_s8(v82, v535), xmmword_29D2F0F70);
  v98 = vpmaxq_s8(v96, v96);
  v99 = vpminq_s8(v97, v97);
  v100 = vpmaxq_s8(v98, v98);
  v101 = vpminq_s8(v99, v99);
  v102 = vmaxq_s8(v91, v100);
  v103 = vminq_s8(v92, v101);
  v104 = vzip1q_s8(v100, v101);
  v105 = vbicq_s8(vsubq_s8(v35, vclsq_s8(v104)), vceqzq_s8(v104));
  v106 = vpmaxq_s8(v105, v105);
  v533 = v84;
  v534 = v83;
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
  v531 = v86;
  v532 = v85;
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
  v530 = v124;
  v129 = vclzq_s8(vsubq_s8(vmaxq_s8(v113, v122), v124));
  v130 = vsubq_s8(v35, v129);
  v131 = vcgtq_s8(v128, v130);
  v132 = vminq_s8(v130, v128);
  v82.i64[0] = 0x1010101010101010;
  v82.i64[1] = 0x1010101010101010;
  v128.i64[0] = 0x1818181818181818;
  v128.i64[1] = 0x1818181818181818;
  v529 = v131;
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
  v145 = vaddq_s16(vaddw_s8((*&vshll_n_u8(*v558.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9)), vbic_s8(*v76.i8, vcgt_u8(0x808080808080808, *v558.i8))), vandq_s8(vceqq_s16((*&vmovl_u8(*v558.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v85), v135));
  v146 = vsubq_s8(v76, v539);
  v147 = vsubq_s8(v76, v540);
  v148 = vsubq_s8(v76, v544);
  v149 = vsubq_s8(v76, v541);
  v150 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(v145, *v146.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v147.i8, *v149.i8), *v148.i8), 3uLL)), v144)), 0);
  v151 = vaddlvq_s8(v150);
  v153 = a5 < 4 || a6 < 2;
  if (v151)
  {
    v154.i64[0] = 0x707070707070707;
    v154.i64[1] = 0x707070707070707;
    v155.i64[0] = -1;
    v155.i64[1] = -1;
    v559 = vbslq_s8(v150, vsubq_s8(v559, vqtbl1q_s8(v559, xmmword_29D2F11F0)), v559);
    v560 = vbslq_s8(v150, v538, v560);
    v561 = vbslq_s8(v150, v537, v561);
    v553 = vbslq_s8(v150, v536, v553);
    v156 = vbslq_s8(v150, v535, v557);
    v554 = vbslq_s8(v150, v534, v554);
    v555 = vbslq_s8(v150, v533, v555);
    v556 = vbslq_s8(v150, v532, v556);
    v542 = vbslq_s8(v150, v138, v146);
    v149 = vbslq_s8(v150, v139, v149);
    v545 = vbslq_s8(v150, v140, v147);
    v148 = vbslq_s8(v150, v141, v148);
    v157 = vbslq_s8(v150, vandq_s8(vsubq_s8(vshlq_s8(v155, vsubq_s8(v154, v129)), v530), v529), v549);
    v76 = vbslq_s8(v150, v132, v76);
    v558 = vbslq_s8(v150, v142, v558);
    v158 = vbslq_s8(v150, v531, v551);
    if (v153)
    {
LABEL_10:
      v159 = v156;
      v161 = v560;
      v160 = v561;
      v162 = v543;
      v163 = v545;
      v165 = v558;
      v164 = v559.i32[0];
      v166 = v542;
      goto LABEL_16;
    }
  }

  else
  {
    v542 = v146;
    v545 = v147;
    v156 = v557;
    v157 = v549;
    v158 = v551;
    if (v153)
    {
      goto LABEL_10;
    }
  }

  v550 = v157;
  v552 = v158;
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
  v178 = vshlq_s8(vsubq_s8(v21, vqtbl2q_s8(*v20.i8, xmmword_29D2F0F80)), xmmword_29D2F1210);
  v179 = v148;
  v180 = vshlq_s8(v174, xmmword_29D2F1210);
  v181 = vshlq_s8(v176, xmmword_29D2F1210);
  v182 = vshlq_s8(vshlq_s8(v169, xmmword_29D2F1210), xmmword_29D2F1220);
  v183 = vshlq_s8(vshlq_s8(v175, xmmword_29D2F1210), xmmword_29D2F1220);
  v184 = vshlq_s8(vshlq_s8(vsubq_s8(v18, vqtbl2q_s8(*v18.i8, xmmword_29D2F0FA0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v185 = vshlq_s8(vshlq_s8(vsubq_s8(v19, vqtbl2q_s8(*v18.i8, xmmword_29D2F1040)), xmmword_29D2F1210), xmmword_29D2F1220);
  v186 = vshlq_s8(vshlq_s8(vsubq_s8(v20, vqtbl2q_s8(*v20.i8, xmmword_29D2F1050)), xmmword_29D2F1210), xmmword_29D2F1220);
  v187 = vshlq_s8(v178, xmmword_29D2F1220);
  v188 = vshlq_s8(v180, xmmword_29D2F1220);
  v189 = vshlq_s8(v181, xmmword_29D2F1220);
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
  v165 = v558;
  v252 = vmovl_s8(*v558.i8);
  v242.i64[0] = 0x8000800080008;
  v242.i64[1] = 0x8000800080008;
  v253 = vbicq_s8(vmovl_s8(*v228.i8), vceqzq_s16(vandq_s8(v252, v242)));
  v254 = vandq_s8(v252, v251);
  v251.i64[0] = 0x2000200020002;
  v251.i64[1] = 0x2000200020002;
  v255 = vandq_s8(vceqq_s16(v254, v251), v242);
  v163 = v545;
  v166 = v542;
  v256 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v253, vandq_s8(vshll_n_s8(*v558.i8, 1uLL), v242)), v255), *v542.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v545.i8, *v177.i8), *v179.i8), 3uLL)), vaddq_s16(vmlal_s8(vaddw_u8(vmovl_s8(vbic_s8(*v238.i8, vcgt_u8(0x808080808080808, *v250.i8))), vand_s8(vadd_s8(*v250.i8, *v250.i8), 0x808080808080808)), *v245.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v247.i8, *v246.i8), *v248.i8), 3uLL)))), 0);
  if (vaddlvq_s8(v256))
  {
    v257.i64[0] = 0x707070707070707;
    v257.i64[1] = 0x707070707070707;
    v258 = vsubq_s8(v257, v235);
    v257.i64[0] = -1;
    v257.i64[1] = -1;
    v259 = vandq_s8(vsubq_s8(vshlq_s8(v257, v258), v230), v237);
    v164 = vbslq_s8(v256, vextq_s8(v17, v17, 0xCuLL), v559).u32[0];
    v161 = vbslq_s8(v256, v182, v560);
    v160 = vbslq_s8(v256, v183, v561);
    v553 = vbslq_s8(v256, v184, v553);
    v159 = vbslq_s8(v256, v185, v156);
    v554 = vbslq_s8(v256, v186, v554);
    v555 = vbslq_s8(v256, v187, v555);
    v556 = vbslq_s8(v256, v188, v556);
    v158 = vbslq_s8(v256, v189, v552);
    v166 = vbslq_s8(v256, v245, v542);
    v149 = vbslq_s8(v256, v246, v177);
    v163 = vbslq_s8(v256, v247, v545);
    v148 = vbslq_s8(v256, v248, v179);
    v157 = vbslq_s8(v256, v259, v550);
    v165 = vbslq_s8(v256, v250, v558);
    v76 = vbslq_s8(v256, v238, v228);
    v162 = v543;
  }

  else
  {
    v157 = v550;
    v158 = v552;
    v76 = v228;
    v159 = v156;
    v148 = v179;
    v161 = v560;
    v160 = v561;
    v149 = v177;
    v162 = v543;
    v164 = v559.i32[0];
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
    *a1 = v547;
    a1[1] = v546;
    v167 = 63;
    a1[2] = v162;
    a1[3] = v548;
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
    v270 = veor_s8(v269, 0xFF00FF00FF00FFLL);
    v271 = vadd_s16(v269, 0x7000700070007);
    v272 = vmovl_u16(vceqz_s16((*&v269 & 0xFF00FF00FF00FFLL)));
    v273.i64[0] = v272.u32[0];
    v273.i64[1] = v272.u32[1];
    v274 = vshrq_n_s64(vshlq_n_s64(v273, 0x38uLL), 0x38uLL);
    v273.i64[0] = v272.u32[2];
    v273.i64[1] = v272.u32[3];
    v275 = vshrq_n_s64(vshlq_n_s64(v273, 0x38uLL), 0x38uLL);
    v276 = vand_s8(v271, 0x7000700070007);
    v276.i16[3] = vand_s8(v270, 0x1000100010001).i16[3];
    v277 = vshlq_u32(vmovl_u16(v276), xmmword_29D2F1070);
    v273.i64[0] = v277.u32[0];
    v273.i64[1] = v277.u32[1];
    v278 = v273;
    v273.i64[0] = v277.u32[2];
    v273.i64[1] = v277.u32[3];
    v279 = vorrq_s8(vbicq_s8(v278, v274), vbicq_s8(v273, v275));
    v280 = *&vorr_s8(*v279.i8, *&vextq_s8(v279, v279, 8uLL)) | (32 * (v165.i8[1] & 0x1F)) | ((v165.i8[3] & 0x1F) << 15) | ((v165.i8[2] & 0x1F) << 10) | v165.i8[0] & 0x1F;
    v281 = (v280 << v267) | v268;
    if (v267 >= 0x20)
    {
      *v266 = v281;
      v281 = v280 >> (-8 * (a1 & 7u));
    }

    v282 = v164 & 0x1F | (32 * (BYTE1(v164) & 0x1F)) | ((BYTE2(v164) & 0x1F) << 10) | ((HIBYTE(v164) & 1) << 15);
    v283 = (v267 + 32) & 0x38;
    v284 = v281 | (v282 << v283);
    if (v283 >= 0x30)
    {
      *(v266 + (((v267 + 32) >> 3) & 8)) = v284;
      v284 = v282 >> -v283;
    }

    v285 = v267 + 48;
    v286 = vsubq_s8(v76, v166);
    v287 = vsubq_s8(v76, v149);
    v288 = vsubq_s8(v76, v163);
    v289 = vsubq_s8(v76, v148);
    v290 = vtrn1q_s8(v286, v287);
    v291 = vtrn2q_s8(v286, v287);
    v292 = vtrn1q_s8(v288, v289);
    v293 = vtrn2q_s8(v288, v289);
    v294 = vzip1q_s16(v291, v293);
    v295 = vtrn2q_s16(v291, v293);
    v293.i64[0] = vzip1q_s32(vzip1q_s16(v290, v292), v294).u64[0];
    v295.i64[0] = vzip1q_s32(vtrn2q_s16(v290, v292), v295).u64[0];
    v292.i64[0] = 0x202020202020202;
    v292.i64[1] = 0x202020202020202;
    v296 = vandq_s8(vmovl_s16(vtst_s16(*v260.i8, 0x4000400040004)), v292);
    v292.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v292.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v289.i64[0] = -1;
    v289.i64[1] = -1;
    v297 = vshlq_u8(v289, vorrq_s8(v296, v292));
    v298 = vmovl_u8(vand_s8(*v297.i8, *v293.i8));
    v299 = vmovl_u8(vand_s8(*&vextq_s8(v297, v297, 8uLL), *v295.i8));
    v300 = vmovl_u8(*v296.i8);
    v301 = vmovl_high_u8(v296);
    v302 = vpaddq_s16(vshlq_u16(v298, vtrn1q_s16(0, v300)), vshlq_u16(v299, vtrn1q_s16(0, v301)));
    v303 = vpaddq_s16(v300, v301);
    v304 = vmovl_u16(*v303.i8);
    v305 = vmovl_high_u16(v303);
    v306 = vpaddq_s32(vshlq_u32(vmovl_u16(*v302.i8), vtrn1q_s32(0, v304)), vshlq_u32(vmovl_high_u16(v302), vtrn1q_s32(0, v305)));
    v307 = vpaddq_s32(v304, v305);
    v308.i64[0] = v306.u32[0];
    v308.i64[1] = v306.u32[1];
    v309 = v308;
    v308.i64[0] = v306.u32[2];
    v308.i64[1] = v306.u32[3];
    v310 = v308;
    v308.i64[0] = v307.u32[0];
    v308.i64[1] = v307.u32[1];
    v311 = v308;
    v308.i64[0] = v307.u32[2];
    v308.i64[1] = v307.u32[3];
    v312 = vpaddq_s64(vshlq_u64(v309, vzip1q_s64(0, v311)), vshlq_u64(v310, vzip1q_s64(0, v308)));
    v313 = vpaddq_s64(v311, v308);
    v314 = (v267 + 48) & 0x38;
    v315 = (v312.i64[0] << v314) | v284;
    if ((v313.i64[0] + v314) >= 0x40)
    {
      *(v266 + ((v285 >> 3) & 8)) = v315;
      v315 = v312.i64[0] >> -v314;
      if (!v314)
      {
        v315 = 0;
      }
    }

    v316 = vceqq_s8(v76, v166);
    v317 = v313.i64[0] + v285;
    v318 = v315 | (v312.i64[1] << v317);
    if ((v317 & 0x3F) + v313.i64[1] >= 0x40)
    {
      *(v266 + ((v317 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v318;
      v318 = v312.i64[1] >> -(v317 & 0x3F);
      if ((v317 & 0x3F) == 0)
      {
        v318 = 0;
      }
    }

    v319 = vandq_s8(v157, v316);
    v320 = v317 + v313.i64[1];
    v321.i64[0] = 0x808080808080808;
    v321.i64[1] = 0x808080808080808;
    v322.i64[0] = -1;
    v322.i64[1] = -1;
    v323 = vandq_s8(vextq_s8(vtstq_s8(v165, v321), 0, 0xCuLL), v76);
    v324.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v324.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v325 = vandq_s8(vshlq_u8(v322, vaddq_s8(v323, v324)), v157);
    v326 = vmovl_u8(*v323.i8);
    v327 = vpaddq_s16(vshlq_u16(vmovl_u8(*v325.i8), vtrn1q_s16(0, v326)), vmovl_high_u8(v325));
    v328 = vpaddq_s16(v326, vmovl_high_u8(v323));
    v329 = vmovl_u16(*v328.i8);
    v330 = vmovl_high_u16(v328);
    v331 = vpaddq_s32(vshlq_u32(vmovl_u16(*v327.i8), vtrn1q_s32(0, v329)), vshlq_u32(vmovl_high_u16(v327), vtrn1q_s32(0, v330)));
    v332 = vpaddq_s32(v329, v330);
    v333.i64[0] = v331.u32[0];
    v333.i64[1] = v331.u32[1];
    v334 = v333;
    v333.i64[0] = v331.u32[2];
    v333.i64[1] = v331.u32[3];
    v335 = v333;
    v333.i64[0] = v332.u32[0];
    v333.i64[1] = v332.u32[1];
    v336 = v333;
    v333.i64[0] = v332.u32[2];
    v333.i64[1] = v332.u32[3];
    v337 = vpaddq_s64(vshlq_u64(v334, vzip1q_s64(0, v336)), vshlq_u64(v335, vzip1q_s64(0, v333)));
    v338 = vpaddq_s64(v336, v333);
    v339 = (v337.i64[0] << v320) | v318;
    if (v338.i64[0] + (v320 & 0x3F) >= 0x40)
    {
      *(v266 + ((v320 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v339;
      v339 = v337.i64[0] >> -(v320 & 0x3F);
      if ((v320 & 0x3F) == 0)
      {
        v339 = 0;
      }
    }

    v340 = vaddq_s8(v319, v161);
    v341 = v338.i64[0] + v320;
    v342 = v339 | (v337.i64[1] << v341);
    if ((v341 & 0x3F) + v338.i64[1] >= 0x40)
    {
      *(v266 + ((v341 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v342;
      v342 = v337.i64[1] >> -(v341 & 0x3F);
      if ((v341 & 0x3F) == 0)
      {
        v342 = 0;
      }
    }

    v343 = v341 + v338.i64[1];
    v344 = vextq_s8(0, v166, 0xCuLL);
    v345.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v345.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v346.i64[0] = -1;
    v346.i64[1] = -1;
    v347 = vandq_s8(vshlq_u8(v346, vaddq_s8(v344, v345)), v340);
    v348 = vmovl_u8(*v344.i8);
    v349 = vmovl_high_u8(v344);
    v350 = vpaddq_s16(vshlq_u16(vmovl_u8(*v347.i8), vtrn1q_s16(0, v348)), vshlq_u16(vmovl_high_u8(v347), vtrn1q_s16(0, v349)));
    v351 = vpaddq_s16(v348, v349);
    v352 = vmovl_u16(*v351.i8);
    v353 = vmovl_high_u16(v351);
    v354 = vpaddq_s32(vshlq_u32(vmovl_u16(*v350.i8), vtrn1q_s32(0, v352)), vshlq_u32(vmovl_high_u16(v350), vtrn1q_s32(0, v353)));
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
    v362 = (v360.i64[0] << v343) | v342;
    if (v361.i64[0] + (v343 & 0x3F) >= 0x40)
    {
      *(v266 + ((v343 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v362;
      v362 = v360.i64[0] >> -(v343 & 0x3F);
      if ((v343 & 0x3F) == 0)
      {
        v362 = 0;
      }
    }

    v363 = vceqq_s8(v76, v149);
    v364 = vaddq_s8(v160, v319);
    v365 = v361.i64[0] + v343;
    v366 = v362 | (v360.i64[1] << v365);
    if ((v365 & 0x3F) + v361.i64[1] >= 0x40)
    {
      *(v266 + ((v365 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v366;
      v366 = v360.i64[1] >> -(v365 & 0x3F);
      if ((v365 & 0x3F) == 0)
      {
        v366 = 0;
      }
    }

    v367 = vandq_s8(v157, v363);
    v368 = v365 + v361.i64[1];
    v369.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v369.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v370.i64[0] = -1;
    v370.i64[1] = -1;
    v371 = vandq_s8(vshlq_u8(v370, vaddq_s8(v166, v369)), v364);
    v372 = vmovl_u8(*v166.i8);
    v373 = vmovl_high_u8(v166);
    v374 = vpaddq_s16(vshlq_u16(vmovl_u8(*v371.i8), vtrn1q_s16(0, v372)), vshlq_u16(vmovl_high_u8(v371), vtrn1q_s16(0, v373)));
    v375 = vpaddq_s16(v372, v373);
    v376 = vmovl_u16(*v375.i8);
    v377 = vmovl_high_u16(v375);
    v378 = vpaddq_s32(vshlq_u32(vmovl_u16(*v374.i8), vtrn1q_s32(0, v376)), vshlq_u32(vmovl_high_u16(v374), vtrn1q_s32(0, v377)));
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
    v386 = (v384.i64[0] << v368) | v366;
    if (v385.i64[0] + (v368 & 0x3F) >= 0x40)
    {
      *(v266 + ((v368 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v386;
      v386 = v384.i64[0] >> -(v368 & 0x3F);
      if ((v368 & 0x3F) == 0)
      {
        v386 = 0;
      }
    }

    v387 = vaddq_s8(v553, v367);
    v388 = v385.i64[0] + v368;
    v389 = v386 | (v384.i64[1] << v388);
    if ((v388 & 0x3F) + v385.i64[1] >= 0x40)
    {
      *(v266 + ((v388 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v389;
      v389 = v384.i64[1] >> -(v388 & 0x3F);
      if ((v388 & 0x3F) == 0)
      {
        v389 = 0;
      }
    }

    v390 = v388 + v385.i64[1];
    v391.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v391.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v392.i64[0] = -1;
    v392.i64[1] = -1;
    v393 = vshlq_u8(v392, vaddq_s8(v149, v391));
    v394 = vandq_s8(v393, v387);
    v395 = vmovl_u8(*v394.i8);
    v396 = vmovl_high_u8(v394);
    v397 = vmovl_u8(*v149.i8);
    v398 = vmovl_high_u8(v149);
    v399 = vtrn1q_s16(0, v397);
    v400 = vtrn1q_s16(0, v398);
    v401 = vpaddq_s16(vshlq_u16(v395, v399), vshlq_u16(v396, v400));
    v402 = vpaddq_s16(v397, v398);
    v403 = vmovl_u16(*v401.i8);
    v404 = vmovl_high_u16(v401);
    v405 = vmovl_u16(*v402.i8);
    v406 = vmovl_high_u16(v402);
    v407 = vtrn1q_s32(0, v405);
    v408 = vtrn1q_s32(0, v406);
    v409 = vpaddq_s32(vshlq_u32(v403, v407), vshlq_u32(v404, v408));
    v410 = vpaddq_s32(v405, v406);
    v411.i64[0] = v409.u32[0];
    v411.i64[1] = v409.u32[1];
    v412 = v411;
    v411.i64[0] = v409.u32[2];
    v411.i64[1] = v409.u32[3];
    v413 = v411;
    v411.i64[0] = v410.u32[0];
    v411.i64[1] = v410.u32[1];
    v414 = v411;
    v411.i64[0] = v410.u32[2];
    v411.i64[1] = v410.u32[3];
    v415 = vzip1q_s64(0, v414);
    v416 = vzip1q_s64(0, v411);
    v417 = vpaddq_s64(vshlq_u64(v412, v415), vshlq_u64(v413, v416));
    v418 = vpaddq_s64(v414, v411);
    v419 = (v417.i64[0] << v390) | v389;
    if (v418.i64[0] + (v390 & 0x3F) >= 0x40)
    {
      *(v266 + ((v390 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v419;
      if ((v390 & 0x3F) != 0)
      {
        v419 = v417.i64[0] >> -(v390 & 0x3F);
      }

      else
      {
        v419 = 0;
      }
    }

    v420 = vceqq_s8(v76, v163);
    v421 = vaddq_s8(v159, v367);
    v422 = v418.i64[0] + v390;
    v423 = v419 | (v417.i64[1] << v422);
    if ((v422 & 0x3F) + v418.i64[1] >= 0x40)
    {
      *(v266 + ((v422 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v423;
      v423 = v417.i64[1] >> -(v422 & 0x3F);
      if ((v422 & 0x3F) == 0)
      {
        v423 = 0;
      }
    }

    v424 = vandq_s8(v157, v420);
    v425 = v422 + v418.i64[1];
    v426 = vandq_s8(v393, v421);
    v427 = vpaddq_s16(vshlq_u16(vmovl_u8(*v426.i8), v399), vshlq_u16(vmovl_high_u8(v426), v400));
    v428 = vpaddq_s32(vshlq_u32(vmovl_u16(*v427.i8), v407), vshlq_u32(vmovl_high_u16(v427), v408));
    v429.i64[0] = v428.u32[0];
    v429.i64[1] = v428.u32[1];
    v430 = v429;
    v429.i64[0] = v428.u32[2];
    v429.i64[1] = v428.u32[3];
    v431 = vpaddq_s64(vshlq_u64(v430, v415), vshlq_u64(v429, v416));
    v432 = (v431.i64[0] << v425) | v423;
    if (v418.i64[0] + (v425 & 0x3F) >= 0x40)
    {
      *(v266 + ((v425 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v432;
      v432 = v431.i64[0] >> -(v425 & 0x3F);
      if ((v425 & 0x3F) == 0)
      {
        v432 = 0;
      }
    }

    v433 = vaddq_s8(v554, v424);
    v434 = v418.i64[0] + v425;
    v435 = (v418.i64[0] + v425) & 0x3F;
    v436 = v432 | (v431.i64[1] << v434);
    if ((v434 & 0x3F) + v418.i64[1] >= 0x40)
    {
      *(v266 + ((v434 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v436;
      v436 = v431.i64[1] >> -v435;
      if (!v435)
      {
        v436 = 0;
      }
    }

    v437 = v434 + v418.i64[1];
    v438.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v438.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v439.i64[0] = -1;
    v439.i64[1] = -1;
    v440 = vshlq_u8(v439, vaddq_s8(v163, v438));
    v441 = vandq_s8(v440, v433);
    v442 = vmovl_u8(*v441.i8);
    v443 = vmovl_high_u8(v441);
    v444 = vmovl_u8(*v163.i8);
    v445 = vmovl_high_u8(v163);
    v446 = vtrn1q_s16(0, v444);
    v447 = vtrn1q_s16(0, v445);
    v448 = vpaddq_s16(vshlq_u16(v442, v446), vshlq_u16(v443, v447));
    v449 = vpaddq_s16(v444, v445);
    v450 = vmovl_u16(*v448.i8);
    v451 = vmovl_high_u16(v448);
    v452 = vmovl_u16(*v449.i8);
    v453 = vmovl_high_u16(v449);
    v454 = vtrn1q_s32(0, v452);
    v455 = vtrn1q_s32(0, v453);
    v456 = vpaddq_s32(vshlq_u32(v450, v454), vshlq_u32(v451, v455));
    v457 = vpaddq_s32(v452, v453);
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
    v462 = vzip1q_s64(0, v461);
    v463 = vzip1q_s64(0, v458);
    v464 = vpaddq_s64(vshlq_u64(v459, v462), vshlq_u64(v460, v463));
    v465 = vpaddq_s64(v461, v458);
    v466 = (v464.i64[0] << v437) | v436;
    if (v465.i64[0] + (v437 & 0x3F) >= 0x40)
    {
      *(v266 + ((v437 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v466;
      if ((v437 & 0x3F) != 0)
      {
        v466 = v464.i64[0] >> -(v437 & 0x3F);
      }

      else
      {
        v466 = 0;
      }
    }

    v467 = vceqq_s8(v76, v148);
    v468 = vaddq_s8(v555, v424);
    v469 = v465.i64[0] + v437;
    v470 = v466 | (v464.i64[1] << v469);
    if ((v469 & 0x3F) + v465.i64[1] >= 0x40)
    {
      *(v266 + ((v469 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v470;
      v470 = v464.i64[1] >> -(v469 & 0x3F);
      if ((v469 & 0x3F) == 0)
      {
        v470 = 0;
      }
    }

    v471 = vandq_s8(v157, v467);
    v472 = v469 + v465.i64[1];
    v473 = vandq_s8(v440, v468);
    v474 = vpaddq_s16(vshlq_u16(vmovl_u8(*v473.i8), v446), vshlq_u16(vmovl_high_u8(v473), v447));
    v475 = vpaddq_s32(vshlq_u32(vmovl_u16(*v474.i8), v454), vshlq_u32(vmovl_high_u16(v474), v455));
    v476.i64[0] = v475.u32[0];
    v476.i64[1] = v475.u32[1];
    v477 = v476;
    v476.i64[0] = v475.u32[2];
    v476.i64[1] = v475.u32[3];
    v478 = vpaddq_s64(vshlq_u64(v477, v462), vshlq_u64(v476, v463));
    v479 = (v478.i64[0] << v472) | v470;
    if (v465.i64[0] + (v472 & 0x3F) >= 0x40)
    {
      *(v266 + ((v472 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v479;
      v479 = v478.i64[0] >> -(v472 & 0x3F);
      if ((v472 & 0x3F) == 0)
      {
        v479 = 0;
      }
    }

    v480 = vaddq_s8(v556, v471);
    v481 = v465.i64[0] + v472;
    v482 = (v465.i64[0] + v472) & 0x3F;
    v483 = v479 | (v478.i64[1] << v481);
    if ((v481 & 0x3F) + v465.i64[1] >= 0x40)
    {
      *(v266 + ((v481 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v483;
      v483 = v478.i64[1] >> -v482;
      if (!v482)
      {
        v483 = 0;
      }
    }

    v484 = v481 + v465.i64[1];
    v485.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v485.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v486.i64[0] = -1;
    v486.i64[1] = -1;
    v487 = vshlq_u8(v486, vaddq_s8(v148, v485));
    v488 = vandq_s8(v487, v480);
    v489 = vmovl_u8(*v488.i8);
    v490 = vmovl_high_u8(v488);
    v491 = vmovl_u8(*v148.i8);
    v492 = vmovl_high_u8(v148);
    v493 = vtrn1q_s16(0, v491);
    v494 = vtrn1q_s16(0, v492);
    v495 = vpaddq_s16(vshlq_u16(v489, v493), vshlq_u16(v490, v494));
    v496 = vpaddq_s16(v491, v492);
    v497 = vmovl_u16(*v495.i8);
    v498 = vmovl_high_u16(v495);
    v499 = vmovl_u16(*v496.i8);
    v500 = vmovl_high_u16(v496);
    v501 = vtrn1q_s32(0, v499);
    v502 = vtrn1q_s32(0, v500);
    v503 = vpaddq_s32(vshlq_u32(v497, v501), vshlq_u32(v498, v502));
    v504 = vpaddq_s32(v499, v500);
    v505.i64[0] = v503.u32[0];
    v505.i64[1] = v503.u32[1];
    v506 = v505;
    v505.i64[0] = v503.u32[2];
    v505.i64[1] = v503.u32[3];
    v507 = v505;
    v505.i64[0] = v504.u32[0];
    v505.i64[1] = v504.u32[1];
    v508 = v505;
    v505.i64[0] = v504.u32[2];
    v505.i64[1] = v504.u32[3];
    v509 = vzip1q_s64(0, v508);
    v510 = vzip1q_s64(0, v505);
    v511 = vpaddq_s64(vshlq_u64(v506, v509), vshlq_u64(v507, v510));
    v512 = vpaddq_s64(v508, v505);
    v513 = (v511.i64[0] << v484) | v483;
    if (v512.i64[0] + (v484 & 0x3F) > 0x3F)
    {
      *(v266 + ((v484 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v513;
      if ((v484 & 0x3F) != 0)
      {
        v513 = v511.i64[0] >> -(v484 & 0x3F);
      }

      else
      {
        v513 = 0;
      }
    }

    v514 = vaddq_s8(v158, v471);
    v515 = v512.i64[0] + v484;
    v516 = v513 | (v511.i64[1] << v515);
    if ((v515 & 0x3F) + v512.i64[1] >= 0x40)
    {
      *(v266 + ((v515 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v516;
      v516 = v511.i64[1] >> -(v515 & 0x3F);
      if ((v515 & 0x3F) == 0)
      {
        v516 = 0;
      }
    }

    v517 = v515 + v512.i64[1];
    v518 = vandq_s8(v487, v514);
    v519 = vpaddq_s16(vshlq_u16(vmovl_u8(*v518.i8), v493), vshlq_u16(vmovl_high_u8(v518), v494));
    v520 = vpaddq_s32(vshlq_u32(vmovl_u16(*v519.i8), v501), vshlq_u32(vmovl_high_u16(v519), v502));
    v521.i64[0] = v520.u32[0];
    v521.i64[1] = v520.u32[1];
    v522 = v521;
    v521.i64[0] = v520.u32[2];
    v521.i64[1] = v520.u32[3];
    v523 = vpaddq_s64(vshlq_u64(v522, v509), vshlq_u64(v521, v510));
    v524 = (v523.i64[0] << v517) | v516;
    if (v512.i64[0] + (v517 & 0x3F) >= 0x40)
    {
      *(v266 + ((v517 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v524;
      v524 = v523.i64[0] >> -(v517 & 0x3F);
      if ((v517 & 0x3F) == 0)
      {
        v524 = 0;
      }
    }

    v525 = v512.i64[0] + v517;
    v526 = (v512.i64[0] + v517) & 0x3F;
    v527 = v524 | (v523.i64[1] << (v512.i8[0] + v517));
    if ((v526 + v512.i64[1]) >= 0x40)
    {
      *(v266 + ((v525 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v527;
      v527 = v523.i64[1] >> -v526;
      if (!v526)
      {
        v527 = 0;
      }
    }

    v528 = v525 + v512.i64[1];
    if ((v528 & 0x3F) != 0)
    {
      *(v266 + ((v528 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v527;
    }

    result = (v528 - v267 + 7) >> 3;
    v167 = *a2 | (result - 1);
  }

LABEL_91:
  *a2 = v167;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, uint16x8_t *a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, (v11 + v12), a2, v15, v14);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + 1, a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v12 + 16), a2, v20, v19);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, (v11 + 8 * a2), a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, (v11 + 12 * a2), a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + 8 * a2 + 16), a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + 12 * a2 + 16), a2, v30, v29);
}

void *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(void *result, uint64_t a2)
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
  *(result + 2 * a2) = 0;
  *(result + 3 * a2) = 0;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int64x2_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v309 = 0;
  v308 = (8 * (a3 & 7)) | 0x200;
  v306 = 8 * (a3 & 7);
  v307 = a3 & 0xFFFFFFFFFFFFFFF8;
  result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)9,AGX::AppleCompressionGen2::Vec<signed char>>(&v311, v316, &v310, &v306, a4);
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
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(a1, a2);
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
    v284 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v274, xmmword_29D2F11F0), v283), v274);
    v285 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v275, xmmword_29D2F11F0), v283), v275);
    v286 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v276, xmmword_29D2F11F0), v283), v276);
    v287 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v277, xmmword_29D2F11F0), v283), v277);
    v288 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v278, xmmword_29D2F11F0), v283), v278);
    v289 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v279, xmmword_29D2F11F0), v283), v279);
    v290 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v280, xmmword_29D2F11F0), v283), v280);
    v291 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v281, xmmword_29D2F11F0), v283), v281);
    v278.i64[0] = 0x7C007C007C007C00;
    v278.i64[1] = 0x7C007C007C007C00;
    v281.i64[0] = 0x8000800080008000;
    v281.i64[1] = 0x8000800080008000;
    v292 = vbslq_s8(v281, vshrn_high_n_s32(vshrn_n_s32(v284, 9uLL), v285, 9uLL), vbslq_s8(v278, vshrn_high_n_s32(vshrn_n_s32(v284, 6uLL), v285, 6uLL), vbslq_s8(xmmword_29D2F1200, vshrn_high_n_s32(vshrn_n_s32(v284, 3uLL), v285, 3uLL), vuzp1q_s16(v284, v285))));
    v293 = vbslq_s8(v281, vshrn_high_n_s32(vshrn_n_s32(v286, 9uLL), v287, 9uLL), vbslq_s8(v278, vshrn_high_n_s32(vshrn_n_s32(v286, 6uLL), v287, 6uLL), vbslq_s8(xmmword_29D2F1200, vshrn_high_n_s32(vshrn_n_s32(v286, 3uLL), v287, 3uLL), vuzp1q_s16(v286, v287))));
    v294 = vbslq_s8(v281, vshrn_high_n_s32(vshrn_n_s32(v288, 9uLL), v289, 9uLL), vbslq_s8(v278, vshrn_high_n_s32(vshrn_n_s32(v288, 6uLL), v289, 6uLL), vbslq_s8(xmmword_29D2F1200, vshrn_high_n_s32(vshrn_n_s32(v288, 3uLL), v289, 3uLL), vuzp1q_s16(v288, v289))));
    v295 = vbslq_s8(v278, vshrn_high_n_s32(vshrn_n_s32(v290, 6uLL), v291, 6uLL), vbslq_s8(xmmword_29D2F1200, vshrn_high_n_s32(vshrn_n_s32(v290, 3uLL), v291, 3uLL), vuzp1q_s16(v290, v291)));
    v296 = vshrn_high_n_s32(vshrn_n_s32(v290, 9uLL), v291, 9uLL);
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

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(uint16x8_t *a1, char *a2, int64x2_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = *(a3 + a4);
  v7 = vzip1q_s64(*a3, v6);
  v8 = vzip2q_s64(*a3, v6);
  v9 = (a3 + 2 * a4);
  v10 = *(v9 + a4);
  v11 = vzip1q_s64(*v9, v10);
  v12 = vzip2q_s64(*v9, v10);
  v13.i64[0] = 0x1F0000001FLL;
  v13.i64[1] = 0x1F0000001FLL;
  v10.i64[0] = 0x1F0000001F00;
  v10.i64[1] = 0x1F0000001F00;
  v14.i64[0] = 0x1F0000001F0000;
  v14.i64[1] = 0x1F0000001F0000;
  v547 = v7;
  v15.i64[0] = 0x100000001000000;
  v15.i64[1] = 0x100000001000000;
  v16 = vbslq_s8(v15, vshll_n_u16(*v7.i8, 9uLL), vbslq_s8(v14, vshll_n_u16(*v7.i8, 6uLL), vbslq_s8(v10, vshll_n_u16(*v7.i8, 3uLL), vbslq_s8(v13, vmovl_u16(*v7.i8), 0))));
  v17 = vbslq_s8(v15, vshll_high_n_u16(v7, 9uLL), vbslq_s8(v14, vshll_high_n_u16(v7, 6uLL), vbslq_s8(v10, vshll_high_n_u16(v7, 3uLL), vbslq_s8(v13, vmovl_high_u16(v7), 0))));
  v546 = v8;
  v18 = vbslq_s8(v15, vshll_n_u16(*v8.i8, 9uLL), vbslq_s8(v14, vshll_n_u16(*v8.i8, 6uLL), vbslq_s8(v10, vshll_n_u16(*v8.i8, 3uLL), vbslq_s8(v13, vmovl_u16(*v8.i8), 0))));
  v19 = vbslq_s8(v15, vshll_high_n_u16(v8, 9uLL), vbslq_s8(v14, vshll_high_n_u16(v8, 6uLL), vbslq_s8(v10, vshll_high_n_u16(v8, 3uLL), vbslq_s8(v13, vmovl_high_u16(v8), 0))));
  v20 = vbslq_s8(v15, vshll_n_u16(*v11.i8, 9uLL), vbslq_s8(v14, vshll_n_u16(*v11.i8, 6uLL), vbslq_s8(v10, vshll_n_u16(*v11.i8, 3uLL), vbslq_s8(v13, vmovl_u16(*v11.i8), 0))));
  v21 = vbslq_s8(v15, vshll_high_n_u16(v11, 9uLL), vbslq_s8(v14, vshll_high_n_u16(v11, 6uLL), vbslq_s8(v10, vshll_high_n_u16(v11, 3uLL), vbslq_s8(v13, vmovl_high_u16(v11), 0))));
  v548 = v12;
  v22 = vbslq_s8(v15, vshll_n_u16(*v12.i8, 9uLL), vbslq_s8(v14, vshll_n_u16(*v12.i8, 6uLL), vbslq_s8(v10, vshll_n_u16(*v12.i8, 3uLL), vbslq_s8(v13, vmovl_u16(*v12.i8), 0))));
  v23 = vbslq_s8(v15, vshll_high_n_u16(v12, 9uLL), vbslq_s8(v14, vshll_high_n_u16(v12, 6uLL), vbslq_s8(v10, vshll_high_n_u16(v12, 3uLL), vbslq_s8(v13, vmovl_high_u16(v12), 0))));
  v24 = vdupq_lane_s32(*v16.i8, 0);
  v25 = vshlq_s8(vshlq_s8(vsubq_s8(v18, v24), xmmword_29D2F1210), xmmword_29D2F1220);
  v26 = vshlq_s8(vshlq_s8(vsubq_s8(v20, v24), xmmword_29D2F1210), xmmword_29D2F1220);
  v27 = vshlq_s8(vshlq_s8(vsubq_s8(v21, v24), xmmword_29D2F1210), xmmword_29D2F1220);
  v560 = vshlq_s8(vshlq_s8(vsubq_s8(v16, v24), xmmword_29D2F1210), xmmword_29D2F1220);
  v561 = vshlq_s8(vshlq_s8(vsubq_s8(v17, v24), xmmword_29D2F1210), xmmword_29D2F1220);
  v28 = vqtbl1q_s8(vmaxq_s8(v560, v561), xmmword_29D2F0F70);
  v29 = vqtbl1q_s8(vminq_s8(v560, v561), xmmword_29D2F0F70);
  v30 = vpmaxq_s8(v28, v28);
  v31 = vpminq_s8(v29, v29);
  v32 = vpmaxq_s8(v30, v30);
  v33 = vpminq_s8(v31, v31);
  v34 = vzip1q_s8(v32, v33);
  v35.i64[0] = 0x808080808080808;
  v35.i64[1] = 0x808080808080808;
  v36 = vbicq_s8(vsubq_s8(v35, vclsq_s8(v34)), vceqzq_s8(v34));
  v557 = vshlq_s8(vshlq_s8(vsubq_s8(v19, v24), xmmword_29D2F1210), xmmword_29D2F1220);
  v37 = vqtbl1q_s8(vmaxq_s8(v25, v557), xmmword_29D2F0F70);
  v38 = vqtbl1q_s8(vminq_s8(v25, v557), xmmword_29D2F0F70);
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
  v559 = v24;
  v57 = vshlq_s8(vshlq_s8(vsubq_s8(v22, v24), xmmword_29D2F1210), xmmword_29D2F1220);
  v58 = vshlq_s8(vshlq_s8(vsubq_s8(v23, v24), xmmword_29D2F1210), xmmword_29D2F1220);
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

  v543 = v11;
  v77.i64[0] = -1;
  v77.i64[1] = -1;
  v78.i64[0] = 0x707070707070707;
  v78.i64[1] = 0x707070707070707;
  v79 = vcgtq_s8(v73, v75);
  v549 = vandq_s8(vsubq_s8(vshlq_s8(v77, vsubq_s8(v78, v74)), v66), v79);
  v80.i64[0] = 0x303030303030303;
  v80.i64[1] = 0x303030303030303;
  v541 = vmaxq_s8(vminq_s8(vsubq_s8(v76, v70), v80), 0);
  v539 = vmaxq_s8(vminq_s8(vsubq_s8(v76, v69), v80), 0);
  v540 = vmaxq_s8(vminq_s8(vsubq_s8(v76, v71), v80), 0);
  v544 = vmaxq_s8(vminq_s8(vsubq_s8(v76, v72), v80), 0);
  v77.i64[0] = 0x404040404040404;
  v77.i64[1] = 0x404040404040404;
  v558 = vorrq_s8(vbicq_s8(v77, vceqq_s8(vaddq_s8(v544, v540), vnegq_s8(vaddq_s8(v539, v541)))), vorrq_s8(vandq_s8(vceqzq_s8(v76), v80), vandq_s8(v79, v35)));
  v553 = v25;
  v554 = v26;
  v555 = v27;
  v556 = v57;
  v81 = vshlq_s8(vsubq_s8(v58, vqtbl1q_s8(v58, xmmword_29D2F11F0)), xmmword_29D2F1210);
  v82 = vshlq_s8(vshlq_s8(vsubq_s8(v25, vqtbl1q_s8(v25, xmmword_29D2F11F0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v83 = vshlq_s8(vshlq_s8(vsubq_s8(v26, vqtbl1q_s8(v26, xmmword_29D2F11F0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v551 = v58;
  v84 = vshlq_s8(vshlq_s8(vsubq_s8(v27, vqtbl1q_s8(v27, xmmword_29D2F11F0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v85 = vshlq_s8(vshlq_s8(vsubq_s8(v57, vqtbl1q_s8(v57, xmmword_29D2F11F0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v86 = vshlq_s8(v81, xmmword_29D2F1220);
  v537 = vshlq_s8(vshlq_s8(vsubq_s8(v561, vqtbl1q_s8(v561, xmmword_29D2F11F0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v538 = vshlq_s8(vshlq_s8(vsubq_s8(v560, vqtbl1q_s8(v560, xmmword_29D2F11F0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v87 = vqtbl1q_s8(vmaxq_s8(v538, v537), xmmword_29D2F0F70);
  v88 = vqtbl1q_s8(vminq_s8(v538, v537), xmmword_29D2F0F70);
  v89 = vpmaxq_s8(v87, v87);
  v90 = vpminq_s8(v88, v88);
  v91 = vpmaxq_s8(v89, v89);
  v92 = vpminq_s8(v90, v90);
  v93 = vzip1q_s8(v91, v92);
  v94 = vbicq_s8(vsubq_s8(v35, vclsq_s8(v93)), vceqzq_s8(v93));
  v95 = vpmaxq_s8(v94, v94);
  v535 = vshlq_s8(vshlq_s8(vsubq_s8(v557, vqtbl1q_s8(v557, xmmword_29D2F11F0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v536 = v82;
  v96 = vqtbl1q_s8(vmaxq_s8(v82, v535), xmmword_29D2F0F70);
  v97 = vqtbl1q_s8(vminq_s8(v82, v535), xmmword_29D2F0F70);
  v98 = vpmaxq_s8(v96, v96);
  v99 = vpminq_s8(v97, v97);
  v100 = vpmaxq_s8(v98, v98);
  v101 = vpminq_s8(v99, v99);
  v102 = vmaxq_s8(v91, v100);
  v103 = vminq_s8(v92, v101);
  v104 = vzip1q_s8(v100, v101);
  v105 = vbicq_s8(vsubq_s8(v35, vclsq_s8(v104)), vceqzq_s8(v104));
  v106 = vpmaxq_s8(v105, v105);
  v533 = v84;
  v534 = v83;
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
  v531 = v86;
  v532 = v85;
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
  v530 = v124;
  v129 = vclzq_s8(vsubq_s8(vmaxq_s8(v113, v122), v124));
  v130 = vsubq_s8(v35, v129);
  v131 = vcgtq_s8(v128, v130);
  v132 = vminq_s8(v130, v128);
  v82.i64[0] = 0x1010101010101010;
  v82.i64[1] = 0x1010101010101010;
  v128.i64[0] = 0x1818181818181818;
  v128.i64[1] = 0x1818181818181818;
  v529 = v131;
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
  v145 = vaddq_s16(vaddw_s8((*&vshll_n_u8(*v558.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9)), vbic_s8(*v76.i8, vcgt_u8(0x808080808080808, *v558.i8))), vandq_s8(vceqq_s16((*&vmovl_u8(*v558.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v85), v135));
  v146 = vsubq_s8(v76, v539);
  v147 = vsubq_s8(v76, v540);
  v148 = vsubq_s8(v76, v544);
  v149 = vsubq_s8(v76, v541);
  v150 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(v145, *v146.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v147.i8, *v149.i8), *v148.i8), 3uLL)), v144)), 0);
  v151 = vaddlvq_s8(v150);
  v153 = a5 < 2 || a6 < 2;
  if (v151)
  {
    v154.i64[0] = 0x707070707070707;
    v154.i64[1] = 0x707070707070707;
    v155.i64[0] = -1;
    v155.i64[1] = -1;
    v559 = vbslq_s8(v150, vsubq_s8(v559, vqtbl1q_s8(v559, xmmword_29D2F11F0)), v559);
    v560 = vbslq_s8(v150, v538, v560);
    v561 = vbslq_s8(v150, v537, v561);
    v553 = vbslq_s8(v150, v536, v553);
    v156 = vbslq_s8(v150, v535, v557);
    v554 = vbslq_s8(v150, v534, v554);
    v555 = vbslq_s8(v150, v533, v555);
    v556 = vbslq_s8(v150, v532, v556);
    v542 = vbslq_s8(v150, v138, v146);
    v149 = vbslq_s8(v150, v139, v149);
    v545 = vbslq_s8(v150, v140, v147);
    v148 = vbslq_s8(v150, v141, v148);
    v157 = vbslq_s8(v150, vandq_s8(vsubq_s8(vshlq_s8(v155, vsubq_s8(v154, v129)), v530), v529), v549);
    v76 = vbslq_s8(v150, v132, v76);
    v558 = vbslq_s8(v150, v142, v558);
    v158 = vbslq_s8(v150, v531, v551);
    if (v153)
    {
LABEL_10:
      v159 = v156;
      v161 = v560;
      v160 = v561;
      v162 = v543;
      v163 = v545;
      v165 = v558;
      v164 = v559.i32[0];
      v166 = v542;
      goto LABEL_16;
    }
  }

  else
  {
    v542 = v146;
    v545 = v147;
    v156 = v557;
    v157 = v549;
    v158 = v551;
    if (v153)
    {
      goto LABEL_10;
    }
  }

  v550 = v157;
  v552 = v158;
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
  v178 = vshlq_s8(vsubq_s8(v21, vqtbl2q_s8(*v20.i8, xmmword_29D2F0F80)), xmmword_29D2F1210);
  v179 = v148;
  v180 = vshlq_s8(v174, xmmword_29D2F1210);
  v181 = vshlq_s8(v176, xmmword_29D2F1210);
  v182 = vshlq_s8(vshlq_s8(v169, xmmword_29D2F1210), xmmword_29D2F1220);
  v183 = vshlq_s8(vshlq_s8(v175, xmmword_29D2F1210), xmmword_29D2F1220);
  v184 = vshlq_s8(vshlq_s8(vsubq_s8(v18, vqtbl2q_s8(*v18.i8, xmmword_29D2F0FA0)), xmmword_29D2F1210), xmmword_29D2F1220);
  v185 = vshlq_s8(vshlq_s8(vsubq_s8(v19, vqtbl2q_s8(*v18.i8, xmmword_29D2F1040)), xmmword_29D2F1210), xmmword_29D2F1220);
  v186 = vshlq_s8(vshlq_s8(vsubq_s8(v20, vqtbl2q_s8(*v20.i8, xmmword_29D2F1050)), xmmword_29D2F1210), xmmword_29D2F1220);
  v187 = vshlq_s8(v178, xmmword_29D2F1220);
  v188 = vshlq_s8(v180, xmmword_29D2F1220);
  v189 = vshlq_s8(v181, xmmword_29D2F1220);
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
  v165 = v558;
  v252 = vmovl_s8(*v558.i8);
  v242.i64[0] = 0x8000800080008;
  v242.i64[1] = 0x8000800080008;
  v253 = vbicq_s8(vmovl_s8(*v228.i8), vceqzq_s16(vandq_s8(v252, v242)));
  v254 = vandq_s8(v252, v251);
  v251.i64[0] = 0x2000200020002;
  v251.i64[1] = 0x2000200020002;
  v255 = vandq_s8(vceqq_s16(v254, v251), v242);
  v163 = v545;
  v166 = v542;
  v256 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v253, vandq_s8(vshll_n_s8(*v558.i8, 1uLL), v242)), v255), *v542.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v545.i8, *v177.i8), *v179.i8), 3uLL)), vaddq_s16(vmlal_s8(vaddw_u8(vmovl_s8(vbic_s8(*v238.i8, vcgt_u8(0x808080808080808, *v250.i8))), vand_s8(vadd_s8(*v250.i8, *v250.i8), 0x808080808080808)), *v245.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v247.i8, *v246.i8), *v248.i8), 3uLL)))), 0);
  if (vaddlvq_s8(v256))
  {
    v257.i64[0] = 0x707070707070707;
    v257.i64[1] = 0x707070707070707;
    v258 = vsubq_s8(v257, v235);
    v257.i64[0] = -1;
    v257.i64[1] = -1;
    v259 = vandq_s8(vsubq_s8(vshlq_s8(v257, v258), v230), v237);
    v164 = vbslq_s8(v256, vextq_s8(v17, v17, 0xCuLL), v559).u32[0];
    v161 = vbslq_s8(v256, v182, v560);
    v160 = vbslq_s8(v256, v183, v561);
    v553 = vbslq_s8(v256, v184, v553);
    v159 = vbslq_s8(v256, v185, v156);
    v554 = vbslq_s8(v256, v186, v554);
    v555 = vbslq_s8(v256, v187, v555);
    v556 = vbslq_s8(v256, v188, v556);
    v158 = vbslq_s8(v256, v189, v552);
    v166 = vbslq_s8(v256, v245, v542);
    v149 = vbslq_s8(v256, v246, v177);
    v163 = vbslq_s8(v256, v247, v545);
    v148 = vbslq_s8(v256, v248, v179);
    v157 = vbslq_s8(v256, v259, v550);
    v165 = vbslq_s8(v256, v250, v558);
    v76 = vbslq_s8(v256, v238, v228);
    v162 = v543;
  }

  else
  {
    v157 = v550;
    v158 = v552;
    v76 = v228;
    v159 = v156;
    v148 = v179;
    v161 = v560;
    v160 = v561;
    v149 = v177;
    v162 = v543;
    v164 = v559.i32[0];
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
    *a1 = v547;
    a1[1] = v546;
    v167 = 63;
    a1[2] = v162;
    a1[3] = v548;
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
    v270 = veor_s8(v269, 0xFF00FF00FF00FFLL);
    v271 = vadd_s16(v269, 0x7000700070007);
    v272 = vmovl_u16(vceqz_s16((*&v269 & 0xFF00FF00FF00FFLL)));
    v273.i64[0] = v272.u32[0];
    v273.i64[1] = v272.u32[1];
    v274 = vshrq_n_s64(vshlq_n_s64(v273, 0x38uLL), 0x38uLL);
    v273.i64[0] = v272.u32[2];
    v273.i64[1] = v272.u32[3];
    v275 = vshrq_n_s64(vshlq_n_s64(v273, 0x38uLL), 0x38uLL);
    v276 = vand_s8(v271, 0x7000700070007);
    v276.i16[3] = vand_s8(v270, 0x1000100010001).i16[3];
    v277 = vshlq_u32(vmovl_u16(v276), xmmword_29D2F1070);
    v273.i64[0] = v277.u32[0];
    v273.i64[1] = v277.u32[1];
    v278 = v273;
    v273.i64[0] = v277.u32[2];
    v273.i64[1] = v277.u32[3];
    v279 = vorrq_s8(vbicq_s8(v278, v274), vbicq_s8(v273, v275));
    v280 = *&vorr_s8(*v279.i8, *&vextq_s8(v279, v279, 8uLL)) | (32 * (v165.i8[1] & 0x1F)) | ((v165.i8[3] & 0x1F) << 15) | ((v165.i8[2] & 0x1F) << 10) | v165.i8[0] & 0x1F;
    v281 = (v280 << v267) | v268;
    if (v267 >= 0x20)
    {
      *v266 = v281;
      v281 = v280 >> (-8 * (a1 & 7u));
    }

    v282 = v164 & 0x1F | (32 * (BYTE1(v164) & 0x1F)) | ((BYTE2(v164) & 0x1F) << 10) | ((HIBYTE(v164) & 1) << 15);
    v283 = (v267 + 32) & 0x38;
    v284 = v281 | (v282 << v283);
    if (v283 >= 0x30)
    {
      *(v266 + (((v267 + 32) >> 3) & 8)) = v284;
      v284 = v282 >> -v283;
    }

    v285 = v267 + 48;
    v286 = vsubq_s8(v76, v166);
    v287 = vsubq_s8(v76, v149);
    v288 = vsubq_s8(v76, v163);
    v289 = vsubq_s8(v76, v148);
    v290 = vtrn1q_s8(v286, v287);
    v291 = vtrn2q_s8(v286, v287);
    v292 = vtrn1q_s8(v288, v289);
    v293 = vtrn2q_s8(v288, v289);
    v294 = vzip1q_s16(v291, v293);
    v295 = vtrn2q_s16(v291, v293);
    v293.i64[0] = vzip1q_s32(vzip1q_s16(v290, v292), v294).u64[0];
    v295.i64[0] = vzip1q_s32(vtrn2q_s16(v290, v292), v295).u64[0];
    v292.i64[0] = 0x202020202020202;
    v292.i64[1] = 0x202020202020202;
    v296 = vandq_s8(vmovl_s16(vtst_s16(*v260.i8, 0x4000400040004)), v292);
    v292.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v292.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v289.i64[0] = -1;
    v289.i64[1] = -1;
    v297 = vshlq_u8(v289, vorrq_s8(v296, v292));
    v298 = vmovl_u8(vand_s8(*v297.i8, *v293.i8));
    v299 = vmovl_u8(vand_s8(*&vextq_s8(v297, v297, 8uLL), *v295.i8));
    v300 = vmovl_u8(*v296.i8);
    v301 = vmovl_high_u8(v296);
    v302 = vpaddq_s16(vshlq_u16(v298, vtrn1q_s16(0, v300)), vshlq_u16(v299, vtrn1q_s16(0, v301)));
    v303 = vpaddq_s16(v300, v301);
    v304 = vmovl_u16(*v303.i8);
    v305 = vmovl_high_u16(v303);
    v306 = vpaddq_s32(vshlq_u32(vmovl_u16(*v302.i8), vtrn1q_s32(0, v304)), vshlq_u32(vmovl_high_u16(v302), vtrn1q_s32(0, v305)));
    v307 = vpaddq_s32(v304, v305);
    v308.i64[0] = v306.u32[0];
    v308.i64[1] = v306.u32[1];
    v309 = v308;
    v308.i64[0] = v306.u32[2];
    v308.i64[1] = v306.u32[3];
    v310 = v308;
    v308.i64[0] = v307.u32[0];
    v308.i64[1] = v307.u32[1];
    v311 = v308;
    v308.i64[0] = v307.u32[2];
    v308.i64[1] = v307.u32[3];
    v312 = vpaddq_s64(vshlq_u64(v309, vzip1q_s64(0, v311)), vshlq_u64(v310, vzip1q_s64(0, v308)));
    v313 = vpaddq_s64(v311, v308);
    v314 = (v267 + 48) & 0x38;
    v315 = (v312.i64[0] << v314) | v284;
    if ((v313.i64[0] + v314) >= 0x40)
    {
      *(v266 + ((v285 >> 3) & 8)) = v315;
      v315 = v312.i64[0] >> -v314;
      if (!v314)
      {
        v315 = 0;
      }
    }

    v316 = vceqq_s8(v76, v166);
    v317 = v313.i64[0] + v285;
    v318 = v315 | (v312.i64[1] << v317);
    if ((v317 & 0x3F) + v313.i64[1] >= 0x40)
    {
      *(v266 + ((v317 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v318;
      v318 = v312.i64[1] >> -(v317 & 0x3F);
      if ((v317 & 0x3F) == 0)
      {
        v318 = 0;
      }
    }

    v319 = vandq_s8(v157, v316);
    v320 = v317 + v313.i64[1];
    v321.i64[0] = 0x808080808080808;
    v321.i64[1] = 0x808080808080808;
    v322.i64[0] = -1;
    v322.i64[1] = -1;
    v323 = vandq_s8(vextq_s8(vtstq_s8(v165, v321), 0, 0xCuLL), v76);
    v324.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v324.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v325 = vandq_s8(vshlq_u8(v322, vaddq_s8(v323, v324)), v157);
    v326 = vmovl_u8(*v323.i8);
    v327 = vpaddq_s16(vshlq_u16(vmovl_u8(*v325.i8), vtrn1q_s16(0, v326)), vmovl_high_u8(v325));
    v328 = vpaddq_s16(v326, vmovl_high_u8(v323));
    v329 = vmovl_u16(*v328.i8);
    v330 = vmovl_high_u16(v328);
    v331 = vpaddq_s32(vshlq_u32(vmovl_u16(*v327.i8), vtrn1q_s32(0, v329)), vshlq_u32(vmovl_high_u16(v327), vtrn1q_s32(0, v330)));
    v332 = vpaddq_s32(v329, v330);
    v333.i64[0] = v331.u32[0];
    v333.i64[1] = v331.u32[1];
    v334 = v333;
    v333.i64[0] = v331.u32[2];
    v333.i64[1] = v331.u32[3];
    v335 = v333;
    v333.i64[0] = v332.u32[0];
    v333.i64[1] = v332.u32[1];
    v336 = v333;
    v333.i64[0] = v332.u32[2];
    v333.i64[1] = v332.u32[3];
    v337 = vpaddq_s64(vshlq_u64(v334, vzip1q_s64(0, v336)), vshlq_u64(v335, vzip1q_s64(0, v333)));
    v338 = vpaddq_s64(v336, v333);
    v339 = (v337.i64[0] << v320) | v318;
    if (v338.i64[0] + (v320 & 0x3F) >= 0x40)
    {
      *(v266 + ((v320 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v339;
      v339 = v337.i64[0] >> -(v320 & 0x3F);
      if ((v320 & 0x3F) == 0)
      {
        v339 = 0;
      }
    }

    v340 = vaddq_s8(v319, v161);
    v341 = v338.i64[0] + v320;
    v342 = v339 | (v337.i64[1] << v341);
    if ((v341 & 0x3F) + v338.i64[1] >= 0x40)
    {
      *(v266 + ((v341 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v342;
      v342 = v337.i64[1] >> -(v341 & 0x3F);
      if ((v341 & 0x3F) == 0)
      {
        v342 = 0;
      }
    }

    v343 = v341 + v338.i64[1];
    v344 = vextq_s8(0, v166, 0xCuLL);
    v345.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v345.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v346.i64[0] = -1;
    v346.i64[1] = -1;
    v347 = vandq_s8(vshlq_u8(v346, vaddq_s8(v344, v345)), v340);
    v348 = vmovl_u8(*v344.i8);
    v349 = vmovl_high_u8(v344);
    v350 = vpaddq_s16(vshlq_u16(vmovl_u8(*v347.i8), vtrn1q_s16(0, v348)), vshlq_u16(vmovl_high_u8(v347), vtrn1q_s16(0, v349)));
    v351 = vpaddq_s16(v348, v349);
    v352 = vmovl_u16(*v351.i8);
    v353 = vmovl_high_u16(v351);
    v354 = vpaddq_s32(vshlq_u32(vmovl_u16(*v350.i8), vtrn1q_s32(0, v352)), vshlq_u32(vmovl_high_u16(v350), vtrn1q_s32(0, v353)));
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
    v362 = (v360.i64[0] << v343) | v342;
    if (v361.i64[0] + (v343 & 0x3F) >= 0x40)
    {
      *(v266 + ((v343 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v362;
      v362 = v360.i64[0] >> -(v343 & 0x3F);
      if ((v343 & 0x3F) == 0)
      {
        v362 = 0;
      }
    }

    v363 = vceqq_s8(v76, v149);
    v364 = vaddq_s8(v160, v319);
    v365 = v361.i64[0] + v343;
    v366 = v362 | (v360.i64[1] << v365);
    if ((v365 & 0x3F) + v361.i64[1] >= 0x40)
    {
      *(v266 + ((v365 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v366;
      v366 = v360.i64[1] >> -(v365 & 0x3F);
      if ((v365 & 0x3F) == 0)
      {
        v366 = 0;
      }
    }

    v367 = vandq_s8(v157, v363);
    v368 = v365 + v361.i64[1];
    v369.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v369.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v370.i64[0] = -1;
    v370.i64[1] = -1;
    v371 = vandq_s8(vshlq_u8(v370, vaddq_s8(v166, v369)), v364);
    v372 = vmovl_u8(*v166.i8);
    v373 = vmovl_high_u8(v166);
    v374 = vpaddq_s16(vshlq_u16(vmovl_u8(*v371.i8), vtrn1q_s16(0, v372)), vshlq_u16(vmovl_high_u8(v371), vtrn1q_s16(0, v373)));
    v375 = vpaddq_s16(v372, v373);
    v376 = vmovl_u16(*v375.i8);
    v377 = vmovl_high_u16(v375);
    v378 = vpaddq_s32(vshlq_u32(vmovl_u16(*v374.i8), vtrn1q_s32(0, v376)), vshlq_u32(vmovl_high_u16(v374), vtrn1q_s32(0, v377)));
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
    v386 = (v384.i64[0] << v368) | v366;
    if (v385.i64[0] + (v368 & 0x3F) >= 0x40)
    {
      *(v266 + ((v368 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v386;
      v386 = v384.i64[0] >> -(v368 & 0x3F);
      if ((v368 & 0x3F) == 0)
      {
        v386 = 0;
      }
    }

    v387 = vaddq_s8(v553, v367);
    v388 = v385.i64[0] + v368;
    v389 = v386 | (v384.i64[1] << v388);
    if ((v388 & 0x3F) + v385.i64[1] >= 0x40)
    {
      *(v266 + ((v388 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v389;
      v389 = v384.i64[1] >> -(v388 & 0x3F);
      if ((v388 & 0x3F) == 0)
      {
        v389 = 0;
      }
    }

    v390 = v388 + v385.i64[1];
    v391.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v391.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v392.i64[0] = -1;
    v392.i64[1] = -1;
    v393 = vshlq_u8(v392, vaddq_s8(v149, v391));
    v394 = vandq_s8(v393, v387);
    v395 = vmovl_u8(*v394.i8);
    v396 = vmovl_high_u8(v394);
    v397 = vmovl_u8(*v149.i8);
    v398 = vmovl_high_u8(v149);
    v399 = vtrn1q_s16(0, v397);
    v400 = vtrn1q_s16(0, v398);
    v401 = vpaddq_s16(vshlq_u16(v395, v399), vshlq_u16(v396, v400));
    v402 = vpaddq_s16(v397, v398);
    v403 = vmovl_u16(*v401.i8);
    v404 = vmovl_high_u16(v401);
    v405 = vmovl_u16(*v402.i8);
    v406 = vmovl_high_u16(v402);
    v407 = vtrn1q_s32(0, v405);
    v408 = vtrn1q_s32(0, v406);
    v409 = vpaddq_s32(vshlq_u32(v403, v407), vshlq_u32(v404, v408));
    v410 = vpaddq_s32(v405, v406);
    v411.i64[0] = v409.u32[0];
    v411.i64[1] = v409.u32[1];
    v412 = v411;
    v411.i64[0] = v409.u32[2];
    v411.i64[1] = v409.u32[3];
    v413 = v411;
    v411.i64[0] = v410.u32[0];
    v411.i64[1] = v410.u32[1];
    v414 = v411;
    v411.i64[0] = v410.u32[2];
    v411.i64[1] = v410.u32[3];
    v415 = vzip1q_s64(0, v414);
    v416 = vzip1q_s64(0, v411);
    v417 = vpaddq_s64(vshlq_u64(v412, v415), vshlq_u64(v413, v416));
    v418 = vpaddq_s64(v414, v411);
    v419 = (v417.i64[0] << v390) | v389;
    if (v418.i64[0] + (v390 & 0x3F) >= 0x40)
    {
      *(v266 + ((v390 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v419;
      if ((v390 & 0x3F) != 0)
      {
        v419 = v417.i64[0] >> -(v390 & 0x3F);
      }

      else
      {
        v419 = 0;
      }
    }

    v420 = vceqq_s8(v76, v163);
    v421 = vaddq_s8(v159, v367);
    v422 = v418.i64[0] + v390;
    v423 = v419 | (v417.i64[1] << v422);
    if ((v422 & 0x3F) + v418.i64[1] >= 0x40)
    {
      *(v266 + ((v422 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v423;
      v423 = v417.i64[1] >> -(v422 & 0x3F);
      if ((v422 & 0x3F) == 0)
      {
        v423 = 0;
      }
    }

    v424 = vandq_s8(v157, v420);
    v425 = v422 + v418.i64[1];
    v426 = vandq_s8(v393, v421);
    v427 = vpaddq_s16(vshlq_u16(vmovl_u8(*v426.i8), v399), vshlq_u16(vmovl_high_u8(v426), v400));
    v428 = vpaddq_s32(vshlq_u32(vmovl_u16(*v427.i8), v407), vshlq_u32(vmovl_high_u16(v427), v408));
    v429.i64[0] = v428.u32[0];
    v429.i64[1] = v428.u32[1];
    v430 = v429;
    v429.i64[0] = v428.u32[2];
    v429.i64[1] = v428.u32[3];
    v431 = vpaddq_s64(vshlq_u64(v430, v415), vshlq_u64(v429, v416));
    v432 = (v431.i64[0] << v425) | v423;
    if (v418.i64[0] + (v425 & 0x3F) >= 0x40)
    {
      *(v266 + ((v425 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v432;
      v432 = v431.i64[0] >> -(v425 & 0x3F);
      if ((v425 & 0x3F) == 0)
      {
        v432 = 0;
      }
    }

    v433 = vaddq_s8(v554, v424);
    v434 = v418.i64[0] + v425;
    v435 = (v418.i64[0] + v425) & 0x3F;
    v436 = v432 | (v431.i64[1] << v434);
    if ((v434 & 0x3F) + v418.i64[1] >= 0x40)
    {
      *(v266 + ((v434 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v436;
      v436 = v431.i64[1] >> -v435;
      if (!v435)
      {
        v436 = 0;
      }
    }

    v437 = v434 + v418.i64[1];
    v438.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v438.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v439.i64[0] = -1;
    v439.i64[1] = -1;
    v440 = vshlq_u8(v439, vaddq_s8(v163, v438));
    v441 = vandq_s8(v440, v433);
    v442 = vmovl_u8(*v441.i8);
    v443 = vmovl_high_u8(v441);
    v444 = vmovl_u8(*v163.i8);
    v445 = vmovl_high_u8(v163);
    v446 = vtrn1q_s16(0, v444);
    v447 = vtrn1q_s16(0, v445);
    v448 = vpaddq_s16(vshlq_u16(v442, v446), vshlq_u16(v443, v447));
    v449 = vpaddq_s16(v444, v445);
    v450 = vmovl_u16(*v448.i8);
    v451 = vmovl_high_u16(v448);
    v452 = vmovl_u16(*v449.i8);
    v453 = vmovl_high_u16(v449);
    v454 = vtrn1q_s32(0, v452);
    v455 = vtrn1q_s32(0, v453);
    v456 = vpaddq_s32(vshlq_u32(v450, v454), vshlq_u32(v451, v455));
    v457 = vpaddq_s32(v452, v453);
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
    v462 = vzip1q_s64(0, v461);
    v463 = vzip1q_s64(0, v458);
    v464 = vpaddq_s64(vshlq_u64(v459, v462), vshlq_u64(v460, v463));
    v465 = vpaddq_s64(v461, v458);
    v466 = (v464.i64[0] << v437) | v436;
    if (v465.i64[0] + (v437 & 0x3F) >= 0x40)
    {
      *(v266 + ((v437 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v466;
      if ((v437 & 0x3F) != 0)
      {
        v466 = v464.i64[0] >> -(v437 & 0x3F);
      }

      else
      {
        v466 = 0;
      }
    }

    v467 = vceqq_s8(v76, v148);
    v468 = vaddq_s8(v555, v424);
    v469 = v465.i64[0] + v437;
    v470 = v466 | (v464.i64[1] << v469);
    if ((v469 & 0x3F) + v465.i64[1] >= 0x40)
    {
      *(v266 + ((v469 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v470;
      v470 = v464.i64[1] >> -(v469 & 0x3F);
      if ((v469 & 0x3F) == 0)
      {
        v470 = 0;
      }
    }

    v471 = vandq_s8(v157, v467);
    v472 = v469 + v465.i64[1];
    v473 = vandq_s8(v440, v468);
    v474 = vpaddq_s16(vshlq_u16(vmovl_u8(*v473.i8), v446), vshlq_u16(vmovl_high_u8(v473), v447));
    v475 = vpaddq_s32(vshlq_u32(vmovl_u16(*v474.i8), v454), vshlq_u32(vmovl_high_u16(v474), v455));
    v476.i64[0] = v475.u32[0];
    v476.i64[1] = v475.u32[1];
    v477 = v476;
    v476.i64[0] = v475.u32[2];
    v476.i64[1] = v475.u32[3];
    v478 = vpaddq_s64(vshlq_u64(v477, v462), vshlq_u64(v476, v463));
    v479 = (v478.i64[0] << v472) | v470;
    if (v465.i64[0] + (v472 & 0x3F) >= 0x40)
    {
      *(v266 + ((v472 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v479;
      v479 = v478.i64[0] >> -(v472 & 0x3F);
      if ((v472 & 0x3F) == 0)
      {
        v479 = 0;
      }
    }

    v480 = vaddq_s8(v556, v471);
    v481 = v465.i64[0] + v472;
    v482 = (v465.i64[0] + v472) & 0x3F;
    v483 = v479 | (v478.i64[1] << v481);
    if ((v481 & 0x3F) + v465.i64[1] >= 0x40)
    {
      *(v266 + ((v481 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v483;
      v483 = v478.i64[1] >> -v482;
      if (!v482)
      {
        v483 = 0;
      }
    }

    v484 = v481 + v465.i64[1];
    v485.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v485.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v486.i64[0] = -1;
    v486.i64[1] = -1;
    v487 = vshlq_u8(v486, vaddq_s8(v148, v485));
    v488 = vandq_s8(v487, v480);
    v489 = vmovl_u8(*v488.i8);
    v490 = vmovl_high_u8(v488);
    v491 = vmovl_u8(*v148.i8);
    v492 = vmovl_high_u8(v148);
    v493 = vtrn1q_s16(0, v491);
    v494 = vtrn1q_s16(0, v492);
    v495 = vpaddq_s16(vshlq_u16(v489, v493), vshlq_u16(v490, v494));
    v496 = vpaddq_s16(v491, v492);
    v497 = vmovl_u16(*v495.i8);
    v498 = vmovl_high_u16(v495);
    v499 = vmovl_u16(*v496.i8);
    v500 = vmovl_high_u16(v496);
    v501 = vtrn1q_s32(0, v499);
    v502 = vtrn1q_s32(0, v500);
    v503 = vpaddq_s32(vshlq_u32(v497, v501), vshlq_u32(v498, v502));
    v504 = vpaddq_s32(v499, v500);
    v505.i64[0] = v503.u32[0];
    v505.i64[1] = v503.u32[1];
    v506 = v505;
    v505.i64[0] = v503.u32[2];
    v505.i64[1] = v503.u32[3];
    v507 = v505;
    v505.i64[0] = v504.u32[0];
    v505.i64[1] = v504.u32[1];
    v508 = v505;
    v505.i64[0] = v504.u32[2];
    v505.i64[1] = v504.u32[3];
    v509 = vzip1q_s64(0, v508);
    v510 = vzip1q_s64(0, v505);
    v511 = vpaddq_s64(vshlq_u64(v506, v509), vshlq_u64(v507, v510));
    v512 = vpaddq_s64(v508, v505);
    v513 = (v511.i64[0] << v484) | v483;
    if (v512.i64[0] + (v484 & 0x3F) > 0x3F)
    {
      *(v266 + ((v484 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v513;
      if ((v484 & 0x3F) != 0)
      {
        v513 = v511.i64[0] >> -(v484 & 0x3F);
      }

      else
      {
        v513 = 0;
      }
    }

    v514 = vaddq_s8(v158, v471);
    v515 = v512.i64[0] + v484;
    v516 = v513 | (v511.i64[1] << v515);
    if ((v515 & 0x3F) + v512.i64[1] >= 0x40)
    {
      *(v266 + ((v515 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v516;
      v516 = v511.i64[1] >> -(v515 & 0x3F);
      if ((v515 & 0x3F) == 0)
      {
        v516 = 0;
      }
    }

    v517 = v515 + v512.i64[1];
    v518 = vandq_s8(v487, v514);
    v519 = vpaddq_s16(vshlq_u16(vmovl_u8(*v518.i8), v493), vshlq_u16(vmovl_high_u8(v518), v494));
    v520 = vpaddq_s32(vshlq_u32(vmovl_u16(*v519.i8), v501), vshlq_u32(vmovl_high_u16(v519), v502));
    v521.i64[0] = v520.u32[0];
    v521.i64[1] = v520.u32[1];
    v522 = v521;
    v521.i64[0] = v520.u32[2];
    v521.i64[1] = v520.u32[3];
    v523 = vpaddq_s64(vshlq_u64(v522, v509), vshlq_u64(v521, v510));
    v524 = (v523.i64[0] << v517) | v516;
    if (v512.i64[0] + (v517 & 0x3F) >= 0x40)
    {
      *(v266 + ((v517 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v524;
      v524 = v523.i64[0] >> -(v517 & 0x3F);
      if ((v517 & 0x3F) == 0)
      {
        v524 = 0;
      }
    }

    v525 = v512.i64[0] + v517;
    v526 = (v512.i64[0] + v517) & 0x3F;
    v527 = v524 | (v523.i64[1] << (v512.i8[0] + v517));
    if ((v526 + v512.i64[1]) >= 0x40)
    {
      *(v266 + ((v525 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v527;
      v527 = v523.i64[1] >> -v526;
      if (!v526)
      {
        v527 = 0;
      }
    }

    v528 = v525 + v512.i64[1];
    if ((v528 & 0x3F) != 0)
    {
      *(v266 + ((v528 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v527;
    }

    result = (v528 - v267 + 7) >> 3;
    v167 = *a2 | (result - 1);
  }

LABEL_91:
  *a2 = v167;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, uint16x8_t *a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 1, a2, v14, v13);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, (v11 + v15), a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v15 + 16), a2, v20, v19);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 2, a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 3, a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + v15 + 32), a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + v15 + 48), a2, v30, v29);
}

void *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(void *result, uint64_t a2)
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressSubblock(int8x16_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
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
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(v42, v41);
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
      v298.i64[0] = 0x8000800080008000;
      v298.i64[1] = 0x8000800080008000;
      *v42 = vbslq_s8(v298, vshrn_high_n_s32(vshrn_n_s32(v304, 9uLL), v305, 9uLL), vbslq_s8(v296, vshrn_high_n_s32(vshrn_n_s32(v304, 6uLL), v305, 6uLL), vbslq_s8(xmmword_29D2F1200, vshrn_high_n_s32(vshrn_n_s32(v304, 3uLL), v305, 3uLL), vuzp1q_s16(v304, v305))));
      v42[1] = vbslq_s8(v298, vshrn_high_n_s32(vshrn_n_s32(v308, 9uLL), v309, 9uLL), vbslq_s8(v296, vshrn_high_n_s32(vshrn_n_s32(v308, 6uLL), v309, 6uLL), vbslq_s8(xmmword_29D2F1200, vshrn_high_n_s32(vshrn_n_s32(v308, 3uLL), v309, 3uLL), vuzp1q_s16(v308, v309))));
      v312 = (v42 + v41);
      *v312 = vbslq_s8(v298, vshrn_high_n_s32(vshrn_n_s32(v306, 9uLL), v307, 9uLL), vbslq_s8(v296, vshrn_high_n_s32(vshrn_n_s32(v306, 6uLL), v307, 6uLL), vbslq_s8(xmmword_29D2F1200, vshrn_high_n_s32(vshrn_n_s32(v306, 3uLL), v307, 3uLL), vuzp1q_s16(v306, v307))));
      v312[1] = vbslq_s8(v298, vshrn_high_n_s32(vshrn_n_s32(v310, 9uLL), v311, 9uLL), vbslq_s8(v296, vshrn_high_n_s32(vshrn_n_s32(v310, 6uLL), v311, 6uLL), vbslq_s8(xmmword_29D2F1200, vshrn_high_n_s32(vshrn_n_s32(v310, 3uLL), v311, 3uLL), vuzp1q_s16(v310, v311))));
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