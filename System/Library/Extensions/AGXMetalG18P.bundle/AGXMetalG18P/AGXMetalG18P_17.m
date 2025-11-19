_OWORD *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressMacroblock(_OWORD *result, _OWORD *a2, char *a3, unsigned int a4, unsigned int a5)
{
  v5 = 0;
  if (a4 && a5)
  {
    v6 = result[1];
    v7 = result[2];
    v8 = result[3];
    v9 = result[4];
    v10 = result[5];
    v11 = result[6];
    v12 = result[7];
    v13 = result[8];
    v14 = result[9];
    v15 = result[10];
    v16 = result[11];
    v17 = result[12];
    v18 = result[13];
    v19 = result[14];
    v20 = result[15];
    v21 = result[32];
    v22 = result[33];
    v23 = result[34];
    v24 = result[35];
    v25 = result[36];
    v26 = result[37];
    v27 = result[38];
    v28 = result[39];
    v29 = result[40];
    v30 = result[41];
    v31 = result[42];
    v32 = result[43];
    v33 = result[44];
    v34 = result[45];
    v35 = result[46];
    v36 = result[47];
    *a2 = *result;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v8;
    a2[4] = v9;
    a2[5] = v10;
    a2[6] = v11;
    a2[7] = v12;
    a2[8] = v13;
    a2[9] = v14;
    a2[10] = v15;
    a2[11] = v16;
    a2[12] = v17;
    a2[13] = v18;
    a2[14] = v19;
    a2[15] = v20;
    a2[16] = v21;
    a2[17] = v22;
    a2[18] = v23;
    a2[19] = v24;
    a2[20] = v25;
    a2[21] = v26;
    a2[22] = v27;
    a2[23] = v28;
    a2[24] = v29;
    a2[25] = v30;
    a2[26] = v31;
    a2[27] = v32;
    v37 = a2 + 28;
    a2 += 32;
    *v37 = v33;
    v37[1] = v34;
    v37[2] = v35;
    v37[3] = v36;
    v5 = -1;
  }

  v38 = 0;
  *a3 = v5;
  if (a4 >= 3 && a5)
  {
    v39 = result[17];
    v40 = result[18];
    v41 = result[19];
    v42 = result[20];
    v43 = result[21];
    v44 = result[22];
    v45 = result[23];
    v46 = result[24];
    v47 = result[25];
    v48 = result[26];
    v49 = result[27];
    v50 = result[28];
    v51 = result[29];
    v52 = result[30];
    v53 = result[31];
    v54 = result[48];
    v55 = result[49];
    v56 = result[50];
    v57 = result[51];
    v58 = result[52];
    v59 = result[53];
    v60 = result[54];
    v61 = result[55];
    v62 = result[56];
    v63 = result[57];
    v64 = result[58];
    v65 = result[59];
    v66 = result[60];
    v67 = result[61];
    v68 = result[62];
    v69 = result[63];
    *a2 = result[16];
    a2[1] = v39;
    a2[2] = v40;
    a2[3] = v41;
    a2[4] = v42;
    a2[5] = v43;
    a2[6] = v44;
    a2[7] = v45;
    a2[8] = v46;
    a2[9] = v47;
    a2[10] = v48;
    a2[11] = v49;
    a2[12] = v50;
    a2[13] = v51;
    a2[14] = v52;
    a2[15] = v53;
    a2[16] = v54;
    a2[17] = v55;
    a2[18] = v56;
    a2[19] = v57;
    a2[20] = v58;
    a2[21] = v59;
    a2[22] = v60;
    a2[23] = v61;
    a2[24] = v62;
    a2[25] = v63;
    a2[26] = v64;
    a2[27] = v65;
    v70 = a2 + 28;
    a2 += 32;
    *v70 = v66;
    v70[1] = v67;
    v70[2] = v68;
    v70[3] = v69;
    v38 = -1;
  }

  v71 = 0;
  a3[1] = v38;
  if (a4 && a5 >= 3)
  {
    v72 = result[65];
    v73 = result[66];
    v74 = result[67];
    v75 = result[68];
    v76 = result[69];
    v77 = result[70];
    v78 = result[71];
    v79 = result[72];
    v80 = result[73];
    v81 = result[74];
    v82 = result[75];
    v83 = result[76];
    v84 = result[77];
    v85 = result[78];
    v86 = result[79];
    v87 = result[96];
    v88 = result[97];
    v89 = result[98];
    v90 = result[99];
    v91 = result[100];
    v92 = result[101];
    v93 = result[102];
    v94 = result[103];
    v95 = result[104];
    v96 = result[105];
    v97 = result[106];
    v98 = result[107];
    v99 = result[108];
    v100 = result[109];
    v101 = result[110];
    v102 = result[111];
    *a2 = result[64];
    a2[1] = v72;
    a2[2] = v73;
    a2[3] = v74;
    a2[4] = v75;
    a2[5] = v76;
    a2[6] = v77;
    a2[7] = v78;
    a2[8] = v79;
    a2[9] = v80;
    a2[10] = v81;
    a2[11] = v82;
    a2[12] = v83;
    a2[13] = v84;
    a2[14] = v85;
    a2[15] = v86;
    a2[16] = v87;
    a2[17] = v88;
    a2[18] = v89;
    a2[19] = v90;
    a2[20] = v91;
    a2[21] = v92;
    a2[22] = v93;
    a2[23] = v94;
    a2[24] = v95;
    a2[25] = v96;
    a2[26] = v97;
    a2[27] = v98;
    v103 = a2 + 28;
    a2 += 32;
    *v103 = v99;
    v103[1] = v100;
    v103[2] = v101;
    v103[3] = v102;
    v71 = -1;
  }

  v104 = 0;
  a3[2] = v71;
  if (a4 >= 3 && a5 >= 3)
  {
    v105 = result[81];
    v106 = result[82];
    v107 = result[83];
    v108 = result[84];
    v109 = result[85];
    v110 = result[86];
    v111 = result[87];
    v112 = result[88];
    v113 = result[89];
    v114 = result[90];
    v115 = result[91];
    v116 = result[92];
    v117 = result[93];
    v118 = result[94];
    v119 = result[95];
    v120 = result[112];
    v121 = result[113];
    v122 = result[114];
    v123 = result[115];
    v124 = result[116];
    v125 = result[117];
    v126 = result[118];
    v127 = result[119];
    v128 = result[120];
    v129 = result[121];
    v130 = result[122];
    v131 = result[123];
    v132 = result[124];
    v133 = result[125];
    v134 = result[126];
    v135 = result[127];
    *a2 = result[80];
    a2[1] = v105;
    a2[2] = v106;
    a2[3] = v107;
    a2[4] = v108;
    a2[5] = v109;
    a2[6] = v110;
    a2[7] = v111;
    a2[8] = v112;
    a2[9] = v113;
    a2[10] = v114;
    a2[11] = v115;
    a2[12] = v116;
    a2[13] = v117;
    a2[14] = v118;
    a2[15] = v119;
    a2[16] = v120;
    a2[17] = v121;
    a2[18] = v122;
    a2[19] = v123;
    a2[20] = v124;
    a2[21] = v125;
    a2[22] = v126;
    a2[23] = v127;
    a2[24] = v128;
    a2[25] = v129;
    a2[26] = v130;
    a2[27] = v131;
    v104 = -1;
    a2[28] = v132;
    a2[29] = v133;
    a2[30] = v134;
    a2[31] = v135;
  }

  a3[3] = v104;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(unint64_t a1, _BYTE *a2, int32x4_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = a3[8];
  v11 = a3[9];
  v12 = a3[10];
  v13 = a3[11];
  v14 = a3[12];
  v15 = a3[13];
  v16 = a3[14];
  v17 = a3[15];
  v18 = *(a3 + a4);
  v19 = *(&a3[1] + a4);
  v20 = *(&a3[2] + a4);
  v21 = *(&a3[3] + a4);
  v22 = vsubq_s32(v8, *a3);
  v23 = vsubq_s32(v9, *a3);
  v24 = vsubq_s32(a3[4], *a3);
  v25 = vsubq_s32(a3[5], *a3);
  v26 = vsubq_s32(a3[6], *a3);
  v285 = a3[4];
  v286 = a3[5];
  v287 = a3[6];
  v288 = a3[7];
  v27 = vsubq_s32(v288, *a3);
  v332 = vsubq_s32(v7, *a3);
  v333 = v22;
  v334 = v23;
  v335 = v24;
  v336 = v25;
  v337 = v26;
  v338 = v27;
  v282 = v10;
  v283 = v11;
  v284 = v12;
  v28 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v332, v22), v23), v24), v25), v26), v27), 0);
  v29 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v332, v22), v23), v24), v25), v26), v27), 0);
  v30.i64[0] = 0x2000000020;
  v30.i64[1] = 0x2000000020;
  v339 = vsubq_s32(v10, v6);
  v340 = vsubq_s32(v11, v6);
  v31 = vmaxq_s32(vbicq_s8(vsubq_s32(v30, vclsq_s32(v28)), vceqzq_s32(v28)), vbicq_s8(vsubq_s32(v30, vclsq_s32(v29)), vceqzq_s32(v29)));
  v341 = vsubq_s32(v12, v6);
  v342 = vsubq_s32(v13, v6);
  v343 = vsubq_s32(v14, v6);
  v344 = vsubq_s32(v15, v6);
  v345 = vsubq_s32(v16, v6);
  v346 = vsubq_s32(v17, v6);
  v27.i64[0] = 0x8000000080000000;
  v27.i64[1] = 0x8000000080000000;
  v32.i64[0] = 0x8000000080000000;
  v32.i64[1] = 0x8000000080000000;
  v33 = vminq_s32(v29, v32);
  v34 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v339, v340), v341), v342), v343), v344), v345), v346);
  v35 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v339, v340), v341), v342), v343), v344), v345), v346);
  v36 = vmaxq_s32(vmaxq_s32(v28, v27), v34);
  v37 = vminq_s32(v33, v35);
  v347 = vsubq_s32(v18, v6);
  v348 = vsubq_s32(v19, v6);
  v38 = vmaxq_s32(vbicq_s8(vsubq_s32(v30, vclsq_s32(v34)), vceqzq_s32(v34)), vbicq_s8(vsubq_s32(v30, vclsq_s32(v35)), vceqzq_s32(v35)));
  v278 = v18;
  v279 = v19;
  v280 = v20;
  v281 = v21;
  v349 = vsubq_s32(v20, v6);
  v350 = vsubq_s32(v21, v6);
  v39 = *(&a3[4] + a4);
  v40 = *(&a3[5] + a4);
  v41 = *(&a3[6] + a4);
  v42 = *(&a3[7] + a4);
  v351 = vsubq_s32(v39, v6);
  v352 = vsubq_s32(v40, v6);
  v353 = vsubq_s32(v41, v6);
  v354 = vsubq_s32(v42, v6);
  v43 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v347, v348), v349), v350), v351), v352), v353), v354);
  v44 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v347, v348), v349), v350), v351), v352), v353), v354);
  v45 = vmaxq_s32(v36, v43);
  v46 = vminq_s32(v37, v44);
  v47 = *(&a3[8] + a4);
  v48 = *(&a3[9] + a4);
  v49 = *(&a3[10] + a4);
  v50 = *(&a3[11] + a4);
  v51 = vmaxq_s32(vbicq_s8(vsubq_s32(v30, vclsq_s32(v43)), vceqzq_s32(v43)), vbicq_s8(vsubq_s32(v30, vclsq_s32(v44)), vceqzq_s32(v44)));
  v355 = vsubq_s32(v47, v6);
  v356 = vsubq_s32(v48, v6);
  v52 = vsubq_s32(v49, v6);
  v53 = vminq_s32(vminq_s32(v355, v356), v52);
  v274 = v47;
  v275 = v48;
  v276 = v49;
  v277 = v50;
  v357 = v52;
  v54 = *(&a3[12] + a4);
  v55 = *(&a3[13] + a4);
  v56 = *(&a3[14] + a4);
  v57 = *(&a3[15] + a4);
  v358 = vsubq_s32(v50, v6);
  v359 = vsubq_s32(v54, v6);
  v360 = vsubq_s32(v55, v6);
  v273 = v54;
  v361 = vsubq_s32(v56, v6);
  v362 = vsubq_s32(v57, v6);
  v58 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v355, v356), v52), v358), v359), v360), v361), v362);
  v59 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v53, v358), v359), v360), v361), v362);
  v60 = vmaxq_s32(v45, v58);
  v61 = vmaxq_s32(vbicq_s8(vsubq_s32(v30, vclsq_s32(v58)), vceqzq_s32(v58)), vbicq_s8(vsubq_s32(v30, vclsq_s32(v59)), vceqzq_s32(v59)));
  v62 = vmaxq_s32(vmaxq_s32(v31, v38), vmaxq_s32(v51, v61));
  v371 = v60;
  v370 = vminq_s32(v46, v59);
  v63 = vclzq_s32(vsubq_s32(v60, v370));
  v59.i64[0] = 0x1F0000001FLL;
  v59.i64[1] = 0x1F0000001FLL;
  v64 = vsubq_s32(v59, v63);
  v59.i64[0] = -1;
  v59.i64[1] = -1;
  v65 = vsubq_s32(vshlq_s32(v59, v64), v370);
  v66 = vsubq_s32(v30, v63);
  v67 = vcgtq_s32(v62, v66);
  v68 = vminq_s32(v66, v62);
  v372 = vandq_s8(v65, v67);
  v62.i64[0] = 0x800000008;
  v62.i64[1] = 0x800000008;
  v59.i64[0] = 0x300000003;
  v59.i64[1] = 0x300000003;
  v69 = vorrq_s8(vandq_s8(vceqzq_s32(v68), v59), vorrq_s8(vandq_s8(v67, v62), 0));
  v70 = vsubq_s32(v68, v38);
  v71.i64[0] = 0xF0000000FLL;
  v71.i64[1] = 0xF0000000FLL;
  v72 = vmaxq_s32(vminq_s32(v70, v71), 0);
  v73 = vmaxq_s32(vminq_s32(vsubq_s32(v68, v51), v71), 0);
  v366 = vsubq_s32(v68, v72);
  v367 = vsubq_s32(v68, v73);
  v74 = vmaxq_s32(vminq_s32(vsubq_s32(v68, v61), v71), 0);
  v368 = vsubq_s32(v68, v74);
  v75 = vaddq_s32(v74, v73);
  v76 = vmaxq_s32(vminq_s32(vsubq_s32(v68, v31), v71), 0);
  v77.i64[0] = 0x400000004;
  v77.i64[1] = 0x400000004;
  v365 = vsubq_s32(v68, v76);
  v364 = vorrq_s8(vbicq_s8(v77, vceqq_s32(v75, vnegq_s32(vaddq_s32(v76, v72)))), v69);
  v369 = v68;
  v331 = 0u;
  v363 = v6;
  if (vmaxvq_s32(v68))
  {
    v265 = v39;
    v266 = v40;
    v267 = v41;
    v268 = v42;
    v269 = v6;
    v270 = v7;
    v271 = v8;
    v272 = v9;
    v78.i64[0] = 0x8000000080000000;
    v78.i64[1] = 0x8000000080000000;
    v298 = vsubq_s32(v340, vqtbl1q_s8(v340, xmmword_29D2F11D0));
    v299 = vsubq_s32(v341, vqtbl1q_s8(v341, xmmword_29D2F11D0));
    v300 = vsubq_s32(v342, vqtbl1q_s8(v342, xmmword_29D2F11D0));
    v301 = vsubq_s32(v343, vqtbl1q_s8(v343, xmmword_29D2F11D0));
    v302 = vsubq_s32(v344, vqtbl1q_s8(v344, xmmword_29D2F11D0));
    v303 = vsubq_s32(v345, vqtbl1q_s8(v345, xmmword_29D2F11D0));
    v304 = vsubq_s32(v346, vqtbl1q_s8(v346, xmmword_29D2F11D0));
    v306 = vsubq_s32(v348, vqtbl1q_s8(v348, xmmword_29D2F11D0));
    v307 = vsubq_s32(v349, vqtbl1q_s8(v349, xmmword_29D2F11D0));
    v308 = vsubq_s32(v350, vqtbl1q_s8(v350, xmmword_29D2F11D0));
    v289 = vsubq_s32(v331, vqtbl1q_s8(v331, xmmword_29D2F11D0));
    v290 = vsubq_s32(v332, vqtbl1q_s8(v332, xmmword_29D2F11D0));
    v291 = vsubq_s32(v333, vqtbl1q_s8(v333, xmmword_29D2F11D0));
    v292 = vsubq_s32(v334, vqtbl1q_s8(v334, xmmword_29D2F11D0));
    v293 = vsubq_s32(v335, vqtbl1q_s8(v335, xmmword_29D2F11D0));
    v294 = vsubq_s32(v336, vqtbl1q_s8(v336, xmmword_29D2F11D0));
    v296 = vsubq_s32(v338, vqtbl1q_s8(v338, xmmword_29D2F11D0));
    v297 = vsubq_s32(v339, vqtbl1q_s8(v339, xmmword_29D2F11D0));
    v305 = vsubq_s32(v347, vqtbl1q_s8(v347, xmmword_29D2F11D0));
    v295 = vsubq_s32(v337, vqtbl1q_s8(v337, xmmword_29D2F11D0));
    v79 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v289, v290), v291), v292), v293), v294), v295), v296);
    v80 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v289, v290), v291), v292), v293), v294), v295), v296);
    v81 = vmaxq_s32(v79, v78);
    v82 = vminq_s32(v80, v32);
    v83 = vmaxq_s32(vbicq_s8(vsubq_s32(v30, vclsq_s32(v79)), vceqzq_s32(v79)), vbicq_s8(vsubq_s32(v30, vclsq_s32(v80)), vceqzq_s32(v80)));
    v84 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v297, v298), v299), v300), v301), v302), v303), v304);
    v85 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v297, v298), v299), v300), v301), v302), v303), v304);
    v86 = vmaxq_s32(v81, v84);
    v87 = vminq_s32(v82, v85);
    v88 = vmaxq_s32(vbicq_s8(vsubq_s32(v30, vclsq_s32(v84)), vceqzq_s32(v84)), vbicq_s8(vsubq_s32(v30, vclsq_s32(v85)), vceqzq_s32(v85)));
    v309 = vsubq_s32(v351, vqtbl1q_s8(v351, xmmword_29D2F11D0));
    v310 = vsubq_s32(v352, vqtbl1q_s8(v352, xmmword_29D2F11D0));
    v311 = vsubq_s32(v353, vqtbl1q_s8(v353, xmmword_29D2F11D0));
    v312 = vsubq_s32(v354, vqtbl1q_s8(v354, xmmword_29D2F11D0));
    v89 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v305, v306), v307), v308), v309), v310), v311), v312);
    v90 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v305, v306), v307), v308), v309), v310), v311), v312);
    v91 = vmaxq_s32(v86, v89);
    v92 = vminq_s32(v87, v90);
    v313 = vsubq_s32(v355, vqtbl1q_s8(v355, xmmword_29D2F11D0));
    v314 = vsubq_s32(v356, vqtbl1q_s8(v356, xmmword_29D2F11D0));
    v93 = vmaxq_s32(vbicq_s8(vsubq_s32(v30, vclsq_s32(v89)), vceqzq_s32(v89)), vbicq_s8(vsubq_s32(v30, vclsq_s32(v90)), vceqzq_s32(v90)));
    v315 = vsubq_s32(v357, vqtbl1q_s8(v357, xmmword_29D2F11D0));
    v316 = vsubq_s32(v358, vqtbl1q_s8(v358, xmmword_29D2F11D0));
    v317 = vsubq_s32(v359, vqtbl1q_s8(v359, xmmword_29D2F11D0));
    v318 = vsubq_s32(v360, vqtbl1q_s8(v360, xmmword_29D2F11D0));
    v319 = vsubq_s32(v361, vqtbl1q_s8(v361, xmmword_29D2F11D0));
    v320 = vsubq_s32(v362, vqtbl1q_s8(v362, xmmword_29D2F11D0));
    v94 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v313, v314), v315), v316), v317), v318), v319), v320);
    v95 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v313, v314), v315), v316), v317), v318), v319), v320);
    v96 = vmaxq_s32(v91, v94);
    v97 = vminq_s32(v92, v95);
    v98 = vmaxq_s32(vbicq_s8(vsubq_s32(v30, vclsq_s32(v94)), vceqzq_s32(v94)), vbicq_s8(vsubq_s32(v30, vclsq_s32(v95)), vceqzq_s32(v95)));
    v99 = vmaxq_s32(vmaxq_s32(v83, v88), vmaxq_s32(v93, v98));
    v100 = vclzq_s32(vsubq_s32(v96, v97));
    v101 = vsubq_s32(v30, v100);
    v102.i64[0] = 0x1F0000001FLL;
    v102.i64[1] = 0x1F0000001FLL;
    v103 = vsubq_s32(v102, v100);
    v102.i64[0] = -1;
    v102.i64[1] = -1;
    v104 = vshlq_s32(v102, v103);
    v105 = vcgtq_s32(v99, v101);
    v106 = vminq_s32(v101, v99);
    v99.i64[0] = 0x1000000010;
    v99.i64[1] = 0x1000000010;
    v107.i64[0] = 0x1800000018;
    v107.i64[1] = 0x1800000018;
    v329 = v96;
    v330 = vandq_s8(vsubq_s32(v104, v97), v105);
    v104.i64[0] = 0x300000003;
    v104.i64[1] = 0x300000003;
    v108 = vmaxq_s32(vminq_s32(vsubq_s32(v106, v83), v71), 0);
    v109 = vmaxq_s32(vminq_s32(vsubq_s32(v106, v88), v71), 0);
    v110 = vmaxq_s32(vminq_s32(vsubq_s32(v106, v93), v71), 0);
    v111 = vmaxq_s32(vminq_s32(vsubq_s32(v106, v98), v71), 0);
    v323 = vsubq_s32(v106, v108);
    v328 = v97;
    v327 = v106;
    v324 = vsubq_s32(v106, v109);
    v325 = vsubq_s32(v106, v110);
    v326 = vsubq_s32(v106, v111);
    v321 = vsubq_s32(v363, vqtbl1q_s8(v363, xmmword_29D2F11D0));
    v322 = vorrq_s8(vbicq_s8(v77, vceqq_s32(vaddq_s32(v111, v110), vnegq_s32(vaddq_s32(v108, v109)))), vorrq_s8(vandq_s8(vceqzq_s32(v106), v104), vbslq_s8(v105, v107, v99)));
    AGX::AppleCompressionGen2::CompressionState<AGX::AppleCompressionGen2::VecArray<int,8ul>,4ul>::select(&v331, &v289);
    v112.i64[1] = v365.i64[1];
    v113 = v369;
    v114 = vandq_s8(v372, vceqq_s32(v369, v365));
    v331 = vaddq_s32(v114, v331);
    v332 = vaddq_s32(v332, v114);
    v333 = vaddq_s32(v333, v114);
    v334 = vaddq_s32(v334, v114);
    v335 = vaddq_s32(v335, v114);
    v336 = vaddq_s32(v336, v114);
    v337 = vaddq_s32(v337, v114);
    v338 = vaddq_s32(v338, v114);
    v115 = vandq_s8(v372, vceqq_s32(v369, v366));
    v339 = vaddq_s32(v339, v115);
    v340 = vaddq_s32(v340, v115);
    v341 = vaddq_s32(v341, v115);
    v342 = vaddq_s32(v342, v115);
    v343 = vaddq_s32(v343, v115);
    v344 = vaddq_s32(v344, v115);
    v345 = vaddq_s32(v345, v115);
    v346 = vaddq_s32(v346, v115);
    v116 = vandq_s8(v372, vceqq_s32(v369, v367));
    v117 = vaddq_s32(v348, v116);
    v118 = vandq_s8(v372, vceqq_s32(v369, v368));
    v119.i64[1] = v362.i64[1];
    *v119.i8 = vqmovn_u32(v364);
    v347 = vaddq_s32(v347, v116);
    v348 = v117;
    v120.i64[0] = 0x8000800080008;
    v120.i64[1] = 0x8000800080008;
    v349 = vaddq_s32(v349, v116);
    v350 = vaddq_s32(v350, v116);
    *v117.i8 = vqmovn_u32(v369);
    v121 = vbicq_s8(v117, vceqzq_s16(vandq_s8(v119, v120)));
    v351 = vaddq_s32(v351, v116);
    v352 = vaddq_s32(v352, v116);
    v122.i64[0] = 0x10001000100010;
    v122.i64[1] = 0x10001000100010;
    v123 = vandq_s8(vshlq_n_s16(v119, 2uLL), v122);
    v122.i64[0] = 0x3000300030003;
    v122.i64[1] = 0x3000300030003;
    v353 = vaddq_s32(v353, v116);
    v354 = vaddq_s32(v354, v116);
    v116.i64[0] = 0x2000200020002;
    v116.i64[1] = 0x2000200020002;
    v355 = vaddq_s32(v355, v118);
    v356 = vaddq_s32(v356, v118);
    v124.i64[0] = 0x20002000200020;
    v124.i64[1] = 0x20002000200020;
    v125 = vaddq_s32(vaddq_s32(v367, v366), v368);
    v357 = vaddq_s32(v357, v118);
    v358 = vaddq_s32(v358, v118);
    *v112.i8 = vqmovn_u32(v365);
    v359 = vaddq_s32(v359, v118);
    v360 = vaddq_s32(v360, v118);
    v126.i64[0] = 0x7000700070007;
    v126.i64[1] = 0x7000700070007;
    *v125.i8 = vqmovn_u32(v125);
    v127 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(v121, v123), vandq_s8(vceqq_s16(vandq_s8(v119, v122), v116), v124)), v112, v126), vshlq_n_s16(v125, 3uLL));
    v128 = vpaddq_s16(v127, v127);
    v361 = vaddq_s32(v361, v118);
    v362 = vaddq_s32(v362, v118);
    if ((vpaddq_s16(v128, v128).i16[0] + 175) > 0xFF7)
    {
      *a1 = v269;
      *(a1 + 16) = v270;
      *(a1 + 32) = v271;
      *(a1 + 48) = v272;
      *(a1 + 64) = v285;
      *(a1 + 80) = v286;
      *(a1 + 96) = v287;
      *(a1 + 112) = v288;
      *(a1 + 128) = v282;
      *(a1 + 144) = v283;
      *(a1 + 160) = v284;
      *(a1 + 176) = v13;
      *(a1 + 192) = v14;
      *(a1 + 208) = v15;
      *(a1 + 224) = v16;
      *(a1 + 240) = v17;
      *(a1 + 256) = v278;
      *(a1 + 272) = v279;
      *(a1 + 288) = v280;
      *(a1 + 304) = v281;
      *(a1 + 320) = v265;
      *(a1 + 336) = v266;
      *(a1 + 352) = v267;
      *(a1 + 368) = v268;
      *(a1 + 384) = v274;
      *(a1 + 400) = v275;
      *(a1 + 416) = v276;
      *(a1 + 432) = v277;
      LOBYTE(v132) = -1;
      *(a1 + 448) = v273;
      *(a1 + 464) = v55;
      *(a1 + 480) = v56;
      *(a1 + 496) = v57;
      result = 512;
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

      if (v369.i32[0])
      {
        v134 = ((v369.i32[0] << 20) + 32505856) & 0x1F00000;
      }

      else
      {
        v134 = 0;
      }

      v135 = vand_s8(vshl_u32(*&vextq_s8(v364, v364, 8uLL), 0xF0000000ALL), 0xF800000007C00);
      v136 = v135.i32[1];
      v137 = v364.i8[0] & 0x1F | (32 * (v364.i8[4] & 0x1F)) | v135.i32[0];
      *a2 = 0;
      v138 = v363;
      v139 = ((v113.i32[1] << 25) + 1040187392) & 0x3E000000;
      if (!v113.i32[1])
      {
        v139 = 0;
      }

      v140 = vextq_s8(v113, v113, 8uLL).u64[0];
      v141 = vceqz_s32(v140);
      v142.i64[0] = v141.i32[0];
      v142.i64[1] = v141.i32[1];
      v143 = v142;
      v144.i64[0] = -1;
      v144.i64[1] = -1;
      v145 = vand_s8(vadd_s32(v140, -1), 0x1F0000001FLL);
      v142.i64[0] = v145.u32[0];
      v142.i64[1] = v145.u32[1];
      v146 = vbicq_s8(vshlq_u64(v142, xmmword_29D2F11E0), v143);
      v147 = vorrq_s8(vdupq_laneq_s64(v146, 1), v146).u64[0] | v137 | v134 | v139 | v136;
      v148 = (v147 << v130) | v131;
      if (v130 >= 0x18)
      {
        *v129 = v148;
        v148 = v147 >> (-8 * (a1 & 7u));
      }

      v149 = (v130 + 40) & 0x38;
      *(v129 + (((v130 + 40) >> 3) & 8)) = v148 | (v138.i64[0] << v149);
      v150 = v138.i64[0] >> -v149;
      if (((v130 + 40) & 0x38) == 0)
      {
        v150 = 0;
      }

      v151 = (v130 + 104) & 0x38;
      *(v129 + (((v130 + 104) >> 3) & 0x18)) = v150 | (v138.i64[1] << v151);
      if (((v130 + 104) & 0x38) != 0)
      {
        v152 = v138.i64[1] >> -v151;
      }

      else
      {
        v152 = 0;
      }

      v153 = v130 + 168;
      v154.i64[1] = v368.i64[1];
      v155 = vsubq_s32(v369, v365);
      v156 = vsubq_s32(v369, v366);
      v157 = vsubq_s32(v369, v368);
      *v154.i8 = vqmovn_u32(v155);
      *v154.i8 = vqmovn_u16(v154);
      *v155.i8 = vqmovn_u32(v156);
      *v155.i8 = vqmovn_u16(v155);
      *v156.i8 = vqmovn_u32(vsubq_s32(v369, v367));
      *v156.i8 = vqmovn_u16(v156);
      *v157.i8 = vqmovn_u32(v157);
      *v157.i8 = vqmovn_u16(v157);
      v158 = vtrn1q_s8(v154, v155);
      v159 = vtrn2q_s8(v154, v155);
      v160 = vtrn1q_s8(v156, v157);
      v161 = vtrn2q_s8(v156, v157);
      v162 = vzip1q_s16(v158, v160);
      v163 = vtrn2q_s16(v158, v160);
      v164 = vzip1q_s16(v159, v161);
      v161.i64[0] = vzip1q_s32(v163, vtrn2q_s16(v159, v161)).u64[0];
      v163.i64[0] = 0x400000004;
      v163.i64[1] = 0x400000004;
      v165.i64[0] = 0x404040404040404;
      v165.i64[1] = 0x404040404040404;
      v166 = vandq_s8(vtstq_s32(v364, v163), v165);
      v165.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v165.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v167 = vshlq_u8(v144, vorrq_s8(v166, v165));
      v168 = vmovl_u8(vand_s8(*v167.i8, *&vzip1q_s32(v162, v164)));
      v169 = vmovl_u8(vand_s8(*&vextq_s8(v167, v167, 8uLL), *v161.i8));
      v170 = vmovl_u8(*v166.i8);
      v171 = vmovl_high_u8(v166);
      v172 = vpaddq_s16(vshlq_u16(v168, vtrn1q_s16(0, v170)), vshlq_u16(v169, vtrn1q_s16(0, v171)));
      v173 = vpaddq_s16(v170, v171);
      v174 = vmovl_u16(*v173.i8);
      v175 = vmovl_high_u16(v173);
      v176 = vpaddq_s32(vshlq_u32(vmovl_u16(*v172.i8), vtrn1q_s32(0, v174)), vshlq_u32(vmovl_high_u16(v172), vtrn1q_s32(0, v175)));
      v177 = vpaddq_s32(v174, v175);
      v178.i64[0] = v176.u32[0];
      v178.i64[1] = v176.u32[1];
      v179 = v178;
      v178.i64[0] = v176.u32[2];
      v178.i64[1] = v176.u32[3];
      v180 = v178;
      v178.i64[0] = v177.u32[0];
      v178.i64[1] = v177.u32[1];
      v181 = v178;
      v178.i64[0] = v177.u32[2];
      v178.i64[1] = v177.u32[3];
      v182 = vpaddq_s64(vshlq_u64(v179, vzip1q_s64(0, v181)), vshlq_u64(v180, vzip1q_s64(0, v178)));
      v183 = vpaddq_s64(v181, v178);
      v184 = (v130 + 168) & 0x38;
      v185 = (v182.i64[0] << ((v130 - 88) & 0x38)) | v152;
      if ((v183.i64[0] + v184) >= 0x40)
      {
        *(v129 + ((v153 >> 3) & 0x18)) = v185;
        v185 = v182.i64[0] >> -((v130 - 88) & 0x38);
        if (!v184)
        {
          v185 = 0;
        }
      }

      v186 = v183.i64[0] + v153;
      v187 = v185 | (v182.i64[1] << v186);
      if ((v186 & 0x3F) + v183.i64[1] >= 0x40)
      {
        *(v129 + ((v186 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v187;
        v187 = v182.i64[1] >> -(v186 & 0x3F);
        if ((v186 & 0x3F) == 0)
        {
          v187 = 0;
        }
      }

      v188 = v186 + v183.i64[1];
      v189.i64[0] = 0x800000008;
      v189.i64[1] = 0x800000008;
      v190 = vbicq_s8(v369, vceqzq_s32(vandq_s8(v364, v189)));
      v191.i64[0] = 0x1F0000001FLL;
      v191.i64[1] = 0x1F0000001FLL;
      v192.i64[0] = -1;
      v192.i64[1] = -1;
      v193 = vandq_s8(vshlq_u32(v192, vaddq_s32(v190, v191)), v372);
      v194.i64[0] = v193.u32[0];
      v194.i64[1] = v193.u32[1];
      v195 = v194;
      v194.i64[0] = v193.u32[2];
      v194.i64[1] = v193.u32[3];
      v196 = v194;
      v194.i64[0] = v190.u32[0];
      v194.i64[1] = v190.u32[1];
      v197 = v194;
      v194.i64[0] = v190.u32[2];
      v194.i64[1] = v190.u32[3];
      v198 = vpaddq_s64(vshlq_u64(v195, vzip1q_s64(0, v197)), vshlq_u64(v196, vzip1q_s64(0, v194)));
      v199 = vpaddq_s64(v197, v194);
      v200 = (v198.i64[0] << v188) | v187;
      if (v199.i64[0] + (v188 & 0x3F) >= 0x40)
      {
        *(v129 + ((v188 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v200;
        v200 = v198.i64[0] >> -(v188 & 0x3F);
        if ((v188 & 0x3F) == 0)
        {
          v200 = 0;
        }
      }

      v201 = v199.i64[0] + v188;
      v202 = v200 | (v198.i64[1] << v201);
      if ((v201 & 0x3F) + v199.i64[1] >= 0x40)
      {
        *(v129 + ((v201 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v202;
        v202 = v198.i64[1] >> -(v201 & 0x3F);
        if ((v201 & 0x3F) == 0)
        {
          v202 = 0;
        }
      }

      v203 = v201 + v199.i64[1];
      v204.i64[0] = 0x1F0000001FLL;
      v204.i64[1] = 0x1F0000001FLL;
      v205.i64[0] = -1;
      v205.i64[1] = -1;
      v206 = vandq_s8(vshlq_u32(v205, v204), v331);
      v207.i64[0] = v206.u32[0];
      v207.i64[1] = v206.u32[1];
      v208 = v207;
      v207.i64[0] = v206.u32[2];
      v207.i64[1] = v206.u32[3];
      v209 = vpaddq_s64(v208, v207);
      v210 = vpaddq_s64(0, 0);
      v211 = (v209.i64[0] << v203) | v202;
      if (v210.i64[0] + (v203 & 0x3F) >= 0x40)
      {
        *(v129 + ((v203 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v211;
        if ((v203 & 0x3F) != 0)
        {
          v211 = v209.i64[0] >> -(v203 & 0x3F);
        }

        else
        {
          v211 = 0;
        }
      }

      v212 = v210.i64[0] + v203;
      v213 = (v210.i64[0] + v203) & 0x3F;
      v214 = v211 | (v209.i64[1] << v212);
      if ((v213 + v210.i64[1]) >= 0x40)
      {
        *(v129 + ((v212 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v214;
        if (v213)
        {
          v214 = v209.i64[1] >> -v213;
        }

        else
        {
          v214 = 0;
        }
      }

      v215 = v212 + v210.i64[1];
      v216.i64[0] = 0x1F0000001FLL;
      v216.i64[1] = 0x1F0000001FLL;
      v217.i64[0] = -1;
      v217.i64[1] = -1;
      for (i = 16; i != 128; i += 16)
      {
        v219 = vandq_s8(vshlq_u32(v217, vaddq_s32(v365, v216)), *(&v331 + i));
        v220.i64[0] = v219.u32[0];
        v220.i64[1] = v219.u32[1];
        v221 = v220;
        v220.i64[0] = v219.u32[2];
        v220.i64[1] = v219.u32[3];
        v222 = v220;
        v220.i64[0] = v365.u32[0];
        v220.i64[1] = v365.u32[1];
        v223 = v220;
        v220.i64[0] = v365.u32[2];
        v220.i64[1] = v365.u32[3];
        v224 = vpaddq_s64(vshlq_u64(v221, vzip1q_s64(0, v223)), vshlq_u64(v222, vzip1q_s64(0, v220)));
        v225 = vpaddq_s64(v223, v220);
        v226 = (v224.i64[0] << v215) | v214;
        if (v225.i64[0] + (v215 & 0x3F) >= 0x40)
        {
          *(v129 + ((v215 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v226;
          v226 = v224.i64[0] >> -(v215 & 0x3F);
          if ((v215 & 0x3F) == 0)
          {
            v226 = 0;
          }
        }

        v227 = v225.i64[0] + v215;
        v214 = v226 | (v224.i64[1] << v227);
        if ((v227 & 0x3F) + v225.i64[1] >= 0x40)
        {
          *(v129 + ((v227 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v214;
          v214 = v224.i64[1] >> -(v227 & 0x3F);
          if ((v227 & 0x3F) == 0)
          {
            v214 = 0;
          }
        }

        v215 = v227 + v225.i64[1];
      }

      v228 = 0;
      v229.i64[0] = 0x1F0000001FLL;
      v229.i64[1] = 0x1F0000001FLL;
      v230.i64[0] = -1;
      v230.i64[1] = -1;
      do
      {
        v231 = vandq_s8(vshlq_u32(v230, vaddq_s32(v366, v229)), *(&v339 + v228));
        v232.i64[0] = v231.u32[0];
        v232.i64[1] = v231.u32[1];
        v233 = v232;
        v232.i64[0] = v231.u32[2];
        v232.i64[1] = v231.u32[3];
        v234 = v232;
        v232.i64[0] = v366.u32[0];
        v232.i64[1] = v366.u32[1];
        v235 = v232;
        v232.i64[0] = v366.u32[2];
        v232.i64[1] = v366.u32[3];
        v236 = vpaddq_s64(vshlq_u64(v233, vzip1q_s64(0, v235)), vshlq_u64(v234, vzip1q_s64(0, v232)));
        v237 = vpaddq_s64(v235, v232);
        v238 = (v236.i64[0] << v215) | v214;
        if (v237.i64[0] + (v215 & 0x3F) >= 0x40)
        {
          *(v129 + ((v215 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v238;
          v238 = v236.i64[0] >> -(v215 & 0x3F);
          if ((v215 & 0x3F) == 0)
          {
            v238 = 0;
          }
        }

        v239 = v237.i64[0] + v215;
        v214 = v238 | (v236.i64[1] << v239);
        if ((v239 & 0x3F) + v237.i64[1] >= 0x40)
        {
          *(v129 + ((v239 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v214;
          v214 = v236.i64[1] >> -(v239 & 0x3F);
          if ((v239 & 0x3F) == 0)
          {
            v214 = 0;
          }
        }

        v215 = v239 + v237.i64[1];
        v228 += 16;
      }

      while (v228 != 128);
      v240 = 0;
      v241.i64[0] = 0x1F0000001FLL;
      v241.i64[1] = 0x1F0000001FLL;
      v242.i64[0] = -1;
      v242.i64[1] = -1;
      do
      {
        v243 = vandq_s8(vshlq_u32(v242, vaddq_s32(v367, v241)), *(&v347 + v240));
        v244.i64[0] = v243.u32[0];
        v244.i64[1] = v243.u32[1];
        v245 = v244;
        v244.i64[0] = v243.u32[2];
        v244.i64[1] = v243.u32[3];
        v246 = v244;
        v244.i64[0] = v367.u32[0];
        v244.i64[1] = v367.u32[1];
        v247 = v244;
        v244.i64[0] = v367.u32[2];
        v244.i64[1] = v367.u32[3];
        v248 = vpaddq_s64(vshlq_u64(v245, vzip1q_s64(0, v247)), vshlq_u64(v246, vzip1q_s64(0, v244)));
        v249 = vpaddq_s64(v247, v244);
        v250 = (v248.i64[0] << v215) | v214;
        if (v249.i64[0] + (v215 & 0x3F) >= 0x40)
        {
          *(v129 + ((v215 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v250;
          v250 = v248.i64[0] >> -(v215 & 0x3F);
          if ((v215 & 0x3F) == 0)
          {
            v250 = 0;
          }
        }

        v251 = v249.i64[0] + v215;
        v214 = v250 | (v248.i64[1] << v251);
        if ((v251 & 0x3F) + v249.i64[1] >= 0x40)
        {
          *(v129 + ((v251 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v214;
          v214 = v248.i64[1] >> -(v251 & 0x3F);
          if ((v251 & 0x3F) == 0)
          {
            v214 = 0;
          }
        }

        v215 = v251 + v249.i64[1];
        v240 += 16;
      }

      while (v240 != 128);
      v252 = 0;
      v253.i64[0] = 0x1F0000001FLL;
      v253.i64[1] = 0x1F0000001FLL;
      v254.i64[0] = -1;
      v254.i64[1] = -1;
      do
      {
        v255 = vandq_s8(vshlq_u32(v254, vaddq_s32(v368, v253)), *(&v355 + v252));
        v256.i64[0] = v255.u32[0];
        v256.i64[1] = v255.u32[1];
        v257 = v256;
        v256.i64[0] = v255.u32[2];
        v256.i64[1] = v255.u32[3];
        v258 = v256;
        v256.i64[0] = v368.u32[0];
        v256.i64[1] = v368.u32[1];
        v259 = v256;
        v256.i64[0] = v368.u32[2];
        v256.i64[1] = v368.u32[3];
        v260 = vpaddq_s64(vshlq_u64(v257, vzip1q_s64(0, v259)), vshlq_u64(v258, vzip1q_s64(0, v256)));
        v261 = vpaddq_s64(v259, v256);
        v262 = (v260.i64[0] << v215) | v214;
        if (v261.i64[0] + (v215 & 0x3F) >= 0x40)
        {
          *(v129 + ((v215 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v262;
          v262 = v260.i64[0] >> -(v215 & 0x3F);
          if ((v215 & 0x3F) == 0)
          {
            v262 = 0;
          }
        }

        v263 = v261.i64[0] + v215;
        v214 = v262 | (v260.i64[1] << v263);
        if ((v263 & 0x3F) + v261.i64[1] >= 0x40)
        {
          *(v129 + ((v263 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v214;
          v214 = v260.i64[1] >> -(v263 & 0x3F);
          if ((v263 & 0x3F) == 0)
          {
            v214 = 0;
          }
        }

        v215 = v263 + v261.i64[1];
        v252 += 16;
      }

      while (v252 != 128);
      if ((v215 & 0x3F) != 0)
      {
        *(v129 + ((v215 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v214;
      }

      v264 = ((v215 - v130 + 7) >> 3) + 1;
      result = v264 & 0x3FFFFFFFFFFFFFFELL;
      v132 = *a2 | ((v264 >> 1) - 1);
    }
  }

  else
  {
    *a1 = *a3;
    LOBYTE(v132) = 7;
    result = 16;
  }

  *a2 = v132;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressMacroblock(uint64_t result, unint64_t a2, _BYTE *a3, unsigned int a4, unsigned int a5)
{
  v8 = a2;
  v9 = result;
  if (a4 && a5)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(a2, a3, result, 512);
    v8 += result;
    if (a4 < 3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *a3 = 0;
    if (a4 < 3)
    {
      goto LABEL_9;
    }
  }

  if (a5)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v8, a3 + 1, v9 + 16, 512);
    v8 += result;
    if (!a4)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

LABEL_9:
  a3[1] = 0;
  if (!a4)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (a5 >= 3)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v8, a3 + 2, v9 + 64, 512);
    v8 += result;
    if (a4 < 3)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

LABEL_13:
  a3[2] = 0;
  if (a4 < 3)
  {
LABEL_18:
    a3[3] = 0;
    return result;
  }

LABEL_14:
  if (a5 < 3)
  {
    goto LABEL_18;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressSubblock(v8, a3 + 3, v9 + 80, 512);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v9 = (a3 + 2 * a4);
  v10 = v9 + 4;
  v12 = *v9;
  v13 = v9[1];
  v14 = v9[2];
  v15 = v9[3];
  v11 = (v9 + a4);
  v16 = *v11;
  v17 = v11[1];
  v18 = v11[2];
  v19 = v11[3];
  v11 += 4;
  v20 = vsubq_s32(*(a3 + a4), *a3);
  v270 = vsubq_s32(*(&a3[1] + a4), *a3);
  v21 = vsubq_s32(*(&a3[2] + a4), *a3);
  v22 = vsubq_s32(*(&a3[3] + a4), *a3);
  v23 = vsubq_s32(v12, *a3);
  v271 = vsubq_s32(v13, *a3);
  v272 = vsubq_s32(v16, *a3);
  v24 = vsubq_s32(v14, *a3);
  v25 = vsubq_s32(v15, *a3);
  v26 = vsubq_s32(v17, *a3);
  v27 = vsubq_s32(v18, *a3);
  v28 = vsubq_s32(v19, *a3);
  v29 = vsubq_s32(a3[5], *a3);
  v273 = vsubq_s32(a3[4], *a3);
  v274 = vsubq_s32(*(&a3[4] + a4), *a3);
  v275 = vsubq_s32(a3[6], *a3);
  v30 = vsubq_s32(a3[7], *a3);
  v31 = vsubq_s32(*(&a3[5] + a4), *a3);
  v32 = vsubq_s32(*(&a3[6] + a4), *a3);
  v33 = vsubq_s32(*(&a3[7] + a4), *a3);
  v34 = vsubq_s32(*v10, *a3);
  v35 = vsubq_s32(v10[1], *a3);
  v276 = vsubq_s32(v10[2], *a3);
  v36 = vsubq_s32(v10[3], *a3);
  v37 = vsubq_s32(*v11, *a3);
  v38 = vsubq_s32(v11[1], *a3);
  v39 = vsubq_s32(v11[2], *a3);
  v40 = vsubq_s32(v11[3], *a3);
  v41 = vsubq_s32(a3[2], *a3);
  v42 = vsubq_s32(a3[3], *a3);
  v320 = vsubq_s32(a3[1], *a3);
  v321 = v20;
  v43 = vminq_s32(v320, v20);
  v322 = v270;
  v323 = v41;
  v324 = v42;
  v325 = v21;
  v326 = v22;
  v327 = v23;
  v44 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v320, v20), v270), v41), v42), v21), v22), 0);
  v45 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v43, v270), v41), v42), v21), v22), 0);
  v46.i64[0] = 0x2000000020;
  v46.i64[1] = 0x2000000020;
  v328 = v271;
  v47 = vmaxq_s32(vbicq_s8(vsubq_s32(v46, vclsq_s32(v44)), vceqzq_s32(v44)), vbicq_s8(vsubq_s32(v46, vclsq_s32(v45)), vceqzq_s32(v45)));
  v329 = v272;
  v330 = v26;
  v331 = v24;
  v332 = v25;
  v333 = v27;
  v334 = v28;
  v48 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v23, v271), v272), v26), v24), v25);
  v49 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v23, v271), v272), v26), v24), v25);
  v25.i64[0] = 0x8000000080000000;
  v25.i64[1] = 0x8000000080000000;
  v50 = vmaxq_s32(v48, v27);
  v51 = vminq_s32(v49, v27);
  v27.i64[0] = 0x8000000080000000;
  v27.i64[1] = 0x8000000080000000;
  v52 = vmaxq_s32(v50, v28);
  v53 = vminq_s32(v51, v28);
  v54 = vmaxq_s32(vmaxq_s32(v44, v25), v52);
  v55 = vminq_s32(vminq_s32(v45, v27), v53);
  v335 = v273;
  v336 = v29;
  v56 = vmaxq_s32(vbicq_s8(vsubq_s32(v46, vclsq_s32(v52)), vceqzq_s32(v52)), vbicq_s8(vsubq_s32(v46, vclsq_s32(v53)), vceqzq_s32(v53)));
  v337 = v274;
  v338 = v31;
  v339 = v275;
  v340 = v30;
  v341 = v32;
  v342 = v33;
  v57 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v273, v29), v274), v31), v275), v30), v32), v33);
  v58 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v273, v29), v274), v31), v275), v30), v32), v33);
  v59 = vmaxq_s32(v54, v57);
  v60 = vminq_s32(v55, v58);
  v343 = v34;
  v344 = v35;
  v61 = vmaxq_s32(vbicq_s8(vsubq_s32(v46, vclsq_s32(v57)), vceqzq_s32(v57)), vbicq_s8(vsubq_s32(v46, vclsq_s32(v58)), vceqzq_s32(v58)));
  v345 = v37;
  v346 = v38;
  v347 = v276;
  v348 = v36;
  v349 = v39;
  v350 = v40;
  v62 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v34, v35), v37), v38), v276), v36), v39), v40);
  v63 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v34, v35), v37), v38), v276), v36), v39), v40);
  v359 = vmaxq_s32(v59, v62);
  v358 = vminq_s32(v60, v63);
  v64 = vmaxq_s32(vbicq_s8(vsubq_s32(v46, vclsq_s32(v62)), vceqzq_s32(v62)), vbicq_s8(vsubq_s32(v46, vclsq_s32(v63)), vceqzq_s32(v63)));
  v65 = vmaxq_s32(vmaxq_s32(v47, v56), vmaxq_s32(v61, v64));
  v66 = vclzq_s32(vsubq_s32(v359, v358));
  v67 = vsubq_s32(v46, v66);
  v63.i64[0] = 0x1F0000001FLL;
  v63.i64[1] = 0x1F0000001FLL;
  v68.i64[0] = -1;
  v68.i64[1] = -1;
  v69 = vcgtq_s32(v65, v67);
  v70 = vminq_s32(v67, v65);
  v360 = vandq_s8(vsubq_s32(vshlq_s32(v68, vsubq_s32(v63, v66)), v358), v69);
  v66.i64[0] = 0x800000008;
  v66.i64[1] = 0x800000008;
  v71 = vandq_s8(v69, v66);
  v69.i64[0] = 0x300000003;
  v69.i64[1] = 0x300000003;
  v72 = vorrq_s8(vandq_s8(vceqzq_s32(v70), v69), vorrq_s8(v71, 0));
  v73.i64[0] = 0xF0000000FLL;
  v73.i64[1] = 0xF0000000FLL;
  v74 = vmaxq_s32(vminq_s32(vsubq_s32(v70, v56), v73), 0);
  v75 = vmaxq_s32(vminq_s32(vsubq_s32(v70, v61), v73), 0);
  v354 = vsubq_s32(v70, v74);
  v76 = vmaxq_s32(vminq_s32(vsubq_s32(v70, v64), v73), 0);
  v355 = vsubq_s32(v70, v75);
  v356 = vsubq_s32(v70, v76);
  v77 = vaddq_s32(v76, v75);
  v78 = vmaxq_s32(vminq_s32(vsubq_s32(v70, v47), v73), 0);
  v79 = vceqq_s32(v77, vnegq_s32(vaddq_s32(v78, v74)));
  v74.i64[0] = 0x400000004;
  v74.i64[1] = 0x400000004;
  v353 = vsubq_s32(v70, v78);
  v352 = vorrq_s8(vbicq_s8(v74, v79), v72);
  v357 = v70;
  v319 = 0u;
  if (vmaxvq_s32(v70))
  {
    v85.i64[0] = 0x8000000080000000;
    v85.i64[1] = 0x8000000080000000;
    v86.i64[0] = 0x8000000080000000;
    v86.i64[1] = 0x8000000080000000;
    v286 = vsubq_s32(v328, vqtbl1q_s8(v328, xmmword_29D2F11D0));
    v287 = vsubq_s32(v329, vqtbl1q_s8(v329, xmmword_29D2F11D0));
    v288 = vsubq_s32(v330, vqtbl1q_s8(v330, xmmword_29D2F11D0));
    v289 = vsubq_s32(v331, vqtbl1q_s8(v331, xmmword_29D2F11D0));
    v290 = vsubq_s32(v332, vqtbl1q_s8(v332, xmmword_29D2F11D0));
    v291 = vsubq_s32(v333, vqtbl1q_s8(v333, xmmword_29D2F11D0));
    v292 = vsubq_s32(v334, vqtbl1q_s8(v334, xmmword_29D2F11D0));
    v294 = vsubq_s32(v336, vqtbl1q_s8(v336, xmmword_29D2F11D0));
    v295 = vsubq_s32(v337, vqtbl1q_s8(v337, xmmword_29D2F11D0));
    v296 = vsubq_s32(v338, vqtbl1q_s8(v338, xmmword_29D2F11D0));
    v277 = vsubq_s32(v319, vqtbl1q_s8(v319, xmmword_29D2F11D0));
    v278 = vsubq_s32(v320, vqtbl1q_s8(v320, xmmword_29D2F11D0));
    v279 = vsubq_s32(v321, vqtbl1q_s8(v321, xmmword_29D2F11D0));
    v280 = vsubq_s32(v322, vqtbl1q_s8(v322, xmmword_29D2F11D0));
    v281 = vsubq_s32(v323, vqtbl1q_s8(v323, xmmword_29D2F11D0));
    v282 = vsubq_s32(v324, vqtbl1q_s8(v324, xmmword_29D2F11D0));
    v284 = vsubq_s32(v326, vqtbl1q_s8(v326, xmmword_29D2F11D0));
    v285 = vsubq_s32(v327, vqtbl1q_s8(v327, xmmword_29D2F11D0));
    v293 = vsubq_s32(v335, vqtbl1q_s8(v335, xmmword_29D2F11D0));
    v283 = vsubq_s32(v325, vqtbl1q_s8(v325, xmmword_29D2F11D0));
    v87 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v277, v278), v279), v280), v281), v282), v283), v284);
    v88 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v277, v278), v279), v280), v281), v282), v283), v284);
    v89 = vmaxq_s32(v87, v86);
    v90 = vminq_s32(v88, v85);
    v91 = vmaxq_s32(vbicq_s8(vsubq_s32(v46, vclsq_s32(v87)), vceqzq_s32(v87)), vbicq_s8(vsubq_s32(v46, vclsq_s32(v88)), vceqzq_s32(v88)));
    v92 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v285, v286), v287), v288), v289), v290), v291), v292);
    v93 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v285, v286), v287), v288), v289), v290), v291), v292);
    v94 = vmaxq_s32(v89, v92);
    v95 = vminq_s32(v90, v93);
    v96 = vmaxq_s32(vbicq_s8(vsubq_s32(v46, vclsq_s32(v92)), vceqzq_s32(v92)), vbicq_s8(vsubq_s32(v46, vclsq_s32(v93)), vceqzq_s32(v93)));
    v297 = vsubq_s32(v339, vqtbl1q_s8(v339, xmmword_29D2F11D0));
    v298 = vsubq_s32(v340, vqtbl1q_s8(v340, xmmword_29D2F11D0));
    v299 = vsubq_s32(v341, vqtbl1q_s8(v341, xmmword_29D2F11D0));
    v300 = vsubq_s32(v342, vqtbl1q_s8(v342, xmmword_29D2F11D0));
    v97 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v293, v294), v295), v296), v297), v298), v299), v300);
    v98 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v293, v294), v295), v296), v297), v298), v299), v300);
    v99 = vmaxq_s32(v94, v97);
    v100 = vminq_s32(v95, v98);
    v301 = vsubq_s32(v343, vqtbl1q_s8(v343, xmmword_29D2F11D0));
    v302 = vsubq_s32(v344, vqtbl1q_s8(v344, xmmword_29D2F11D0));
    v101 = vmaxq_s32(vbicq_s8(vsubq_s32(v46, vclsq_s32(v97)), vceqzq_s32(v97)), vbicq_s8(vsubq_s32(v46, vclsq_s32(v98)), vceqzq_s32(v98)));
    v303 = vsubq_s32(v345, vqtbl1q_s8(v345, xmmword_29D2F11D0));
    v304 = vsubq_s32(v346, vqtbl1q_s8(v346, xmmword_29D2F11D0));
    v305 = vsubq_s32(v347, vqtbl1q_s8(v347, xmmword_29D2F11D0));
    v306 = vsubq_s32(v348, vqtbl1q_s8(v348, xmmword_29D2F11D0));
    v307 = vsubq_s32(v349, vqtbl1q_s8(v349, xmmword_29D2F11D0));
    v308 = vsubq_s32(v350, vqtbl1q_s8(v350, xmmword_29D2F11D0));
    v102 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v301, v302), v303), v304), v305), v306), v307), v308);
    v103 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v301, v302), v303), v304), v305), v306), v307), v308);
    v104 = vmaxq_s32(v99, v102);
    v105 = vminq_s32(v100, v103);
    v106 = vmaxq_s32(vbicq_s8(vsubq_s32(v46, vclsq_s32(v102)), vceqzq_s32(v102)), vbicq_s8(vsubq_s32(v46, vclsq_s32(v103)), vceqzq_s32(v103)));
    v107 = vmaxq_s32(vmaxq_s32(v91, v96), vmaxq_s32(v101, v106));
    v108 = vclzq_s32(vsubq_s32(v104, v105));
    v109 = vsubq_s32(v46, v108);
    v85.i64[0] = 0x1F0000001FLL;
    v85.i64[1] = 0x1F0000001FLL;
    v110 = vshlq_s32(v68, vsubq_s32(v85, v108));
    v111 = vcgtq_s32(v107, v109);
    v112 = vminq_s32(v109, v107);
    v107.i64[0] = 0x1000000010;
    v107.i64[1] = 0x1000000010;
    v108.i64[0] = 0x1800000018;
    v108.i64[1] = 0x1800000018;
    v317 = v104;
    v318 = vandq_s8(vsubq_s32(v110, v105), v111);
    v86.i64[0] = 0x300000003;
    v86.i64[1] = 0x300000003;
    v113 = vorrq_s8(vandq_s8(vceqzq_s32(v112), v86), vbslq_s8(v111, v108, v107));
    v114 = vmaxq_s32(vminq_s32(vsubq_s32(v112, v91), v73), 0);
    v115 = vmaxq_s32(vminq_s32(vsubq_s32(v112, v96), v73), 0);
    v116 = vmaxq_s32(vminq_s32(vsubq_s32(v112, v101), v73), 0);
    v117 = vmaxq_s32(vminq_s32(vsubq_s32(v112, v106), v73), 0);
    v311 = vsubq_s32(v112, v114);
    v312 = vsubq_s32(v112, v115);
    v315 = v112;
    v316 = v105;
    v313 = vsubq_s32(v112, v116);
    v314 = vsubq_s32(v112, v117);
    v118 = vceqq_s32(vaddq_s32(v117, v116), vnegq_s32(vaddq_s32(v114, v115)));
    v117.i64[0] = 0x400000004;
    v117.i64[1] = 0x400000004;
    v309 = vsubq_s32(v351, vqtbl1q_s8(v351, xmmword_29D2F11D0));
    v310 = vorrq_s8(vbicq_s8(v117, v118), v113);
    AGX::AppleCompressionGen2::CompressionState<AGX::AppleCompressionGen2::VecArray<int,8ul>,4ul>::select(&v319, &v277);
    v119.i64[1] = v353.i64[1];
    v120 = v357;
    v121 = vandq_s8(v360, vceqq_s32(v357, v353));
    v319 = vaddq_s32(v121, v319);
    v320 = vaddq_s32(v320, v121);
    v321 = vaddq_s32(v321, v121);
    v322 = vaddq_s32(v322, v121);
    v323 = vaddq_s32(v323, v121);
    v324 = vaddq_s32(v324, v121);
    v325 = vaddq_s32(v325, v121);
    v326 = vaddq_s32(v326, v121);
    v122 = vandq_s8(v360, vceqq_s32(v357, v354));
    v327 = vaddq_s32(v327, v122);
    v328 = vaddq_s32(v328, v122);
    v329 = vaddq_s32(v329, v122);
    v330 = vaddq_s32(v330, v122);
    v331 = vaddq_s32(v331, v122);
    v332 = vaddq_s32(v332, v122);
    v333 = vaddq_s32(v333, v122);
    v334 = vaddq_s32(v334, v122);
    v123 = vandq_s8(v360, vceqq_s32(v357, v355));
    v335 = vaddq_s32(v335, v123);
    v336 = vaddq_s32(v336, v123);
    v124 = vaddq_s32(v338, v123);
    v125 = vandq_s8(v360, vceqq_s32(v357, v356));
    *v126.i8 = vqmovn_u32(v352);
    v337 = vaddq_s32(v337, v123);
    v338 = v124;
    v127.i64[0] = 0x8000800080008;
    v127.i64[1] = 0x8000800080008;
    v339 = vaddq_s32(v339, v123);
    v340 = vaddq_s32(v340, v123);
    *v124.i8 = vqmovn_u32(v357);
    v128 = vbicq_s8(v124, vceqzq_s16(vandq_s8(v126, v127)));
    v341 = vaddq_s32(v341, v123);
    v342 = vaddq_s32(v342, v123);
    v123.i64[0] = 0x10001000100010;
    v123.i64[1] = 0x10001000100010;
    v124.i64[0] = 0x2000200020002;
    v124.i64[1] = 0x2000200020002;
    v343 = vaddq_s32(v343, v125);
    v344 = vaddq_s32(v344, v125);
    v129.i64[0] = 0x3000300030003;
    v129.i64[1] = 0x3000300030003;
    v130 = vceqq_s16(vandq_s8(v126, v129), v124);
    v124.i64[0] = 0x20002000200020;
    v124.i64[1] = 0x20002000200020;
    v345 = vaddq_s32(v345, v125);
    v346 = vaddq_s32(v346, v125);
    *v119.i8 = vqmovn_u32(v353);
    v131 = vaddq_s16(vaddq_s16(v128, vandq_s8(vshlq_n_s16(v126, 2uLL), v123)), vandq_s8(v130, v124));
    v123.i64[0] = 0x7000700070007;
    v123.i64[1] = 0x7000700070007;
    v132 = vaddq_s32(vaddq_s32(v355, v354), v356);
    *v132.i8 = vqmovn_u32(v132);
    v133 = vaddq_s16(vmlaq_s16(v131, v119, v123), vshlq_n_s16(v132, 3uLL));
    v134 = vpaddq_s16(v133, v133);
    v347 = vaddq_s32(v347, v125);
    v348 = vaddq_s32(v348, v125);
    v349 = vaddq_s32(v349, v125);
    v350 = vaddq_s32(v350, v125);
    if (((((vpaddq_s16(v134, v134).i16[0] + 175) >> 3) + 1) & 0x3FFFFFFFFFFFFFFELL) > 0x100)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3->i8, a4, a5, a6, a7);
      return 256;
    }

    else
    {
      v135 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v136 = 8 * (a1 & 7);
      if (v136)
      {
        v137 = *v135 & ~(-1 << v136);
      }

      else
      {
        v137 = 0;
      }

      if (v357.i32[0])
      {
        v139 = ((v357.i32[0] << 20) + 32505856) & 0x1F00000;
      }

      else
      {
        v139 = 0;
      }

      v140 = vand_s8(vshl_u32(*&vextq_s8(v352, v352, 8uLL), 0xF0000000ALL), 0xF800000007C00);
      v141 = v140.i32[1];
      v142 = v352.i8[0] & 0x1F | (32 * (v352.i8[4] & 0x1F)) | v140.i32[0];
      *a2 = 0;
      v143 = v351;
      v144 = ((v120.i32[1] << 25) + 1040187392) & 0x3E000000;
      if (!v120.i32[1])
      {
        v144 = 0;
      }

      v145 = vextq_s8(v120, v120, 8uLL).u64[0];
      v146 = vceqz_s32(v145);
      v147.i64[0] = v146.i32[0];
      v147.i64[1] = v146.i32[1];
      v148 = v147;
      v149.i64[0] = -1;
      v149.i64[1] = -1;
      v150 = vand_s8(vadd_s32(v145, -1), 0x1F0000001FLL);
      v147.i64[0] = v150.u32[0];
      v147.i64[1] = v150.u32[1];
      v151 = vbicq_s8(vshlq_u64(v147, xmmword_29D2F11E0), v148);
      v152 = vorrq_s8(vdupq_laneq_s64(v151, 1), v151).u64[0] | v142 | v139 | v144 | v141;
      v153 = (v152 << v136) | v137;
      if (v136 >= 0x18)
      {
        *v135 = v153;
        v153 = v152 >> (-8 * (a1 & 7u));
      }

      v154 = (v136 + 40) & 0x38;
      *(v135 + (((v136 + 40) >> 3) & 8)) = v153 | (v143.i64[0] << v154);
      v155 = v143.i64[0] >> -v154;
      if (((v136 + 40) & 0x38) == 0)
      {
        v155 = 0;
      }

      v156 = (v136 + 104) & 0x38;
      *(v135 + (((v136 + 104) >> 3) & 0x18)) = v155 | (v143.i64[1] << v156);
      if (((v136 + 104) & 0x38) != 0)
      {
        v157 = v143.i64[1] >> -v156;
      }

      else
      {
        v157 = 0;
      }

      v158 = v136 + 168;
      v159.i64[1] = v356.i64[1];
      v160 = vsubq_s32(v357, v353);
      v161 = vsubq_s32(v357, v354);
      v162 = vsubq_s32(v357, v356);
      *v159.i8 = vqmovn_u32(v160);
      *v159.i8 = vqmovn_u16(v159);
      *v160.i8 = vqmovn_u32(v161);
      *v160.i8 = vqmovn_u16(v160);
      *v161.i8 = vqmovn_u32(vsubq_s32(v357, v355));
      *v161.i8 = vqmovn_u16(v161);
      *v162.i8 = vqmovn_u32(v162);
      *v162.i8 = vqmovn_u16(v162);
      v163 = vtrn1q_s8(v159, v160);
      v164 = vtrn2q_s8(v159, v160);
      v165 = vtrn1q_s8(v161, v162);
      v166 = vtrn2q_s8(v161, v162);
      v167 = vzip1q_s16(v163, v165);
      v168 = vtrn2q_s16(v163, v165);
      v169 = vzip1q_s16(v164, v166);
      v166.i64[0] = vzip1q_s32(v168, vtrn2q_s16(v164, v166)).u64[0];
      v168.i64[0] = 0x400000004;
      v168.i64[1] = 0x400000004;
      v170.i64[0] = 0x404040404040404;
      v170.i64[1] = 0x404040404040404;
      v171 = vandq_s8(vtstq_s32(v352, v168), v170);
      v170.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v170.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v172 = vshlq_u8(v149, vorrq_s8(v171, v170));
      v173 = vmovl_u8(vand_s8(*v172.i8, *&vzip1q_s32(v167, v169)));
      v174 = vmovl_u8(vand_s8(*&vextq_s8(v172, v172, 8uLL), *v166.i8));
      v175 = vmovl_u8(*v171.i8);
      v176 = vmovl_high_u8(v171);
      v177 = vpaddq_s16(vshlq_u16(v173, vtrn1q_s16(0, v175)), vshlq_u16(v174, vtrn1q_s16(0, v176)));
      v178 = vpaddq_s16(v175, v176);
      v179 = vmovl_u16(*v178.i8);
      v180 = vmovl_high_u16(v178);
      v181 = vpaddq_s32(vshlq_u32(vmovl_u16(*v177.i8), vtrn1q_s32(0, v179)), vshlq_u32(vmovl_high_u16(v177), vtrn1q_s32(0, v180)));
      v182 = vpaddq_s32(v179, v180);
      v183.i64[0] = v181.u32[0];
      v183.i64[1] = v181.u32[1];
      v184 = v183;
      v183.i64[0] = v181.u32[2];
      v183.i64[1] = v181.u32[3];
      v185 = v183;
      v183.i64[0] = v182.u32[0];
      v183.i64[1] = v182.u32[1];
      v186 = v183;
      v183.i64[0] = v182.u32[2];
      v183.i64[1] = v182.u32[3];
      v187 = vpaddq_s64(vshlq_u64(v184, vzip1q_s64(0, v186)), vshlq_u64(v185, vzip1q_s64(0, v183)));
      v188 = vpaddq_s64(v186, v183);
      v189 = (v136 + 168) & 0x38;
      v190 = (v187.i64[0] << ((v136 - 88) & 0x38)) | v157;
      if ((v188.i64[0] + v189) >= 0x40)
      {
        *(v135 + ((v158 >> 3) & 0x18)) = v190;
        v190 = v187.i64[0] >> -((v136 - 88) & 0x38);
        if (!v189)
        {
          v190 = 0;
        }
      }

      v191 = v188.i64[0] + v158;
      v192 = v190 | (v187.i64[1] << v191);
      if ((v191 & 0x3F) + v188.i64[1] >= 0x40)
      {
        *(v135 + ((v191 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v192;
        v192 = v187.i64[1] >> -(v191 & 0x3F);
        if ((v191 & 0x3F) == 0)
        {
          v192 = 0;
        }
      }

      v193 = v191 + v188.i64[1];
      v194.i64[0] = 0x800000008;
      v194.i64[1] = 0x800000008;
      v195 = vbicq_s8(v357, vceqzq_s32(vandq_s8(v352, v194)));
      v196.i64[0] = 0x1F0000001FLL;
      v196.i64[1] = 0x1F0000001FLL;
      v197.i64[0] = -1;
      v197.i64[1] = -1;
      v198 = vandq_s8(vshlq_u32(v197, vaddq_s32(v195, v196)), v360);
      v199.i64[0] = v198.u32[0];
      v199.i64[1] = v198.u32[1];
      v200 = v199;
      v199.i64[0] = v198.u32[2];
      v199.i64[1] = v198.u32[3];
      v201 = v199;
      v199.i64[0] = v195.u32[0];
      v199.i64[1] = v195.u32[1];
      v202 = v199;
      v199.i64[0] = v195.u32[2];
      v199.i64[1] = v195.u32[3];
      v203 = vpaddq_s64(vshlq_u64(v200, vzip1q_s64(0, v202)), vshlq_u64(v201, vzip1q_s64(0, v199)));
      v204 = vpaddq_s64(v202, v199);
      v205 = (v203.i64[0] << v193) | v192;
      if (v204.i64[0] + (v193 & 0x3F) >= 0x40)
      {
        *(v135 + ((v193 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v205;
        v205 = v203.i64[0] >> -(v193 & 0x3F);
        if ((v193 & 0x3F) == 0)
        {
          v205 = 0;
        }
      }

      v206 = v204.i64[0] + v193;
      v207 = v205 | (v203.i64[1] << v206);
      if ((v206 & 0x3F) + v204.i64[1] >= 0x40)
      {
        *(v135 + ((v206 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v207;
        v207 = v203.i64[1] >> -(v206 & 0x3F);
        if ((v206 & 0x3F) == 0)
        {
          v207 = 0;
        }
      }

      v208 = v206 + v204.i64[1];
      v209.i64[0] = 0x1F0000001FLL;
      v209.i64[1] = 0x1F0000001FLL;
      v210.i64[0] = -1;
      v210.i64[1] = -1;
      v211 = vandq_s8(vshlq_u32(v210, v209), v319);
      v212.i64[0] = v211.u32[0];
      v212.i64[1] = v211.u32[1];
      v213 = v212;
      v212.i64[0] = v211.u32[2];
      v212.i64[1] = v211.u32[3];
      v214 = vpaddq_s64(v213, v212);
      v215 = vpaddq_s64(0, 0);
      v216 = (v214.i64[0] << v208) | v207;
      if (v215.i64[0] + (v208 & 0x3F) >= 0x40)
      {
        *(v135 + ((v208 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v216;
        if ((v208 & 0x3F) != 0)
        {
          v216 = v214.i64[0] >> -(v208 & 0x3F);
        }

        else
        {
          v216 = 0;
        }
      }

      v217 = v215.i64[0] + v208;
      v218 = (v215.i64[0] + v208) & 0x3F;
      v219 = v216 | (v214.i64[1] << v217);
      if ((v218 + v215.i64[1]) >= 0x40)
      {
        *(v135 + ((v217 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v219;
        if (v218)
        {
          v219 = v214.i64[1] >> -v218;
        }

        else
        {
          v219 = 0;
        }
      }

      v220 = v217 + v215.i64[1];
      v221.i64[0] = 0x1F0000001FLL;
      v221.i64[1] = 0x1F0000001FLL;
      v222.i64[0] = -1;
      v222.i64[1] = -1;
      for (i = 16; i != 128; i += 16)
      {
        v224 = vandq_s8(vshlq_u32(v222, vaddq_s32(v353, v221)), *(&v319 + i));
        v225.i64[0] = v224.u32[0];
        v225.i64[1] = v224.u32[1];
        v226 = v225;
        v225.i64[0] = v224.u32[2];
        v225.i64[1] = v224.u32[3];
        v227 = v225;
        v225.i64[0] = v353.u32[0];
        v225.i64[1] = v353.u32[1];
        v228 = v225;
        v225.i64[0] = v353.u32[2];
        v225.i64[1] = v353.u32[3];
        v229 = vpaddq_s64(vshlq_u64(v226, vzip1q_s64(0, v228)), vshlq_u64(v227, vzip1q_s64(0, v225)));
        v230 = vpaddq_s64(v228, v225);
        v231 = (v229.i64[0] << v220) | v219;
        if (v230.i64[0] + (v220 & 0x3F) >= 0x40)
        {
          *(v135 + ((v220 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v231;
          v231 = v229.i64[0] >> -(v220 & 0x3F);
          if ((v220 & 0x3F) == 0)
          {
            v231 = 0;
          }
        }

        v232 = v230.i64[0] + v220;
        v219 = v231 | (v229.i64[1] << v232);
        if ((v232 & 0x3F) + v230.i64[1] >= 0x40)
        {
          *(v135 + ((v232 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v219;
          v219 = v229.i64[1] >> -(v232 & 0x3F);
          if ((v232 & 0x3F) == 0)
          {
            v219 = 0;
          }
        }

        v220 = v232 + v230.i64[1];
      }

      v233 = 0;
      v234.i64[0] = 0x1F0000001FLL;
      v234.i64[1] = 0x1F0000001FLL;
      v235.i64[0] = -1;
      v235.i64[1] = -1;
      do
      {
        v236 = vandq_s8(vshlq_u32(v235, vaddq_s32(v354, v234)), *(&v327 + v233));
        v237.i64[0] = v236.u32[0];
        v237.i64[1] = v236.u32[1];
        v238 = v237;
        v237.i64[0] = v236.u32[2];
        v237.i64[1] = v236.u32[3];
        v239 = v237;
        v237.i64[0] = v354.u32[0];
        v237.i64[1] = v354.u32[1];
        v240 = v237;
        v237.i64[0] = v354.u32[2];
        v237.i64[1] = v354.u32[3];
        v241 = vpaddq_s64(vshlq_u64(v238, vzip1q_s64(0, v240)), vshlq_u64(v239, vzip1q_s64(0, v237)));
        v242 = vpaddq_s64(v240, v237);
        v243 = (v241.i64[0] << v220) | v219;
        if (v242.i64[0] + (v220 & 0x3F) >= 0x40)
        {
          *(v135 + ((v220 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v243;
          v243 = v241.i64[0] >> -(v220 & 0x3F);
          if ((v220 & 0x3F) == 0)
          {
            v243 = 0;
          }
        }

        v244 = v242.i64[0] + v220;
        v219 = v243 | (v241.i64[1] << v244);
        if ((v244 & 0x3F) + v242.i64[1] >= 0x40)
        {
          *(v135 + ((v244 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v219;
          v219 = v241.i64[1] >> -(v244 & 0x3F);
          if ((v244 & 0x3F) == 0)
          {
            v219 = 0;
          }
        }

        v220 = v244 + v242.i64[1];
        v233 += 16;
      }

      while (v233 != 128);
      v245 = 0;
      v246.i64[0] = 0x1F0000001FLL;
      v246.i64[1] = 0x1F0000001FLL;
      v247.i64[0] = -1;
      v247.i64[1] = -1;
      do
      {
        v248 = vandq_s8(vshlq_u32(v247, vaddq_s32(v355, v246)), *(&v335 + v245));
        v249.i64[0] = v248.u32[0];
        v249.i64[1] = v248.u32[1];
        v250 = v249;
        v249.i64[0] = v248.u32[2];
        v249.i64[1] = v248.u32[3];
        v251 = v249;
        v249.i64[0] = v355.u32[0];
        v249.i64[1] = v355.u32[1];
        v252 = v249;
        v249.i64[0] = v355.u32[2];
        v249.i64[1] = v355.u32[3];
        v253 = vpaddq_s64(vshlq_u64(v250, vzip1q_s64(0, v252)), vshlq_u64(v251, vzip1q_s64(0, v249)));
        v254 = vpaddq_s64(v252, v249);
        v255 = (v253.i64[0] << v220) | v219;
        if (v254.i64[0] + (v220 & 0x3F) >= 0x40)
        {
          *(v135 + ((v220 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v255;
          v255 = v253.i64[0] >> -(v220 & 0x3F);
          if ((v220 & 0x3F) == 0)
          {
            v255 = 0;
          }
        }

        v256 = v254.i64[0] + v220;
        v219 = v255 | (v253.i64[1] << v256);
        if ((v256 & 0x3F) + v254.i64[1] >= 0x40)
        {
          *(v135 + ((v256 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v219;
          v219 = v253.i64[1] >> -(v256 & 0x3F);
          if ((v256 & 0x3F) == 0)
          {
            v219 = 0;
          }
        }

        v220 = v256 + v254.i64[1];
        v245 += 16;
      }

      while (v245 != 128);
      v257 = 0;
      v258.i64[0] = 0x1F0000001FLL;
      v258.i64[1] = 0x1F0000001FLL;
      v259.i64[0] = -1;
      v259.i64[1] = -1;
      do
      {
        v260 = vandq_s8(vshlq_u32(v259, vaddq_s32(v356, v258)), *(&v343 + v257));
        v261.i64[0] = v260.u32[0];
        v261.i64[1] = v260.u32[1];
        v262 = v261;
        v261.i64[0] = v260.u32[2];
        v261.i64[1] = v260.u32[3];
        v263 = v261;
        v261.i64[0] = v356.u32[0];
        v261.i64[1] = v356.u32[1];
        v264 = v261;
        v261.i64[0] = v356.u32[2];
        v261.i64[1] = v356.u32[3];
        v265 = vpaddq_s64(vshlq_u64(v262, vzip1q_s64(0, v264)), vshlq_u64(v263, vzip1q_s64(0, v261)));
        v266 = vpaddq_s64(v264, v261);
        v267 = (v265.i64[0] << v220) | v219;
        if (v266.i64[0] + (v220 & 0x3F) >= 0x40)
        {
          *(v135 + ((v220 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v267;
          v267 = v265.i64[0] >> -(v220 & 0x3F);
          if ((v220 & 0x3F) == 0)
          {
            v267 = 0;
          }
        }

        v268 = v266.i64[0] + v220;
        v219 = v267 | (v265.i64[1] << v268);
        if ((v268 & 0x3F) + v266.i64[1] >= 0x40)
        {
          *(v135 + ((v268 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v219;
          v219 = v265.i64[1] >> -(v268 & 0x3F);
          if ((v268 & 0x3F) == 0)
          {
            v219 = 0;
          }
        }

        v220 = v268 + v266.i64[1];
        v257 += 16;
      }

      while (v257 != 128);
      if ((v220 & 0x3F) != 0)
      {
        *(v135 + ((v220 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v219;
      }

      v269 = ((v220 - v136 + 7) >> 3) + 1;
      result = v269 & 0x3FFFFFFFFFFFFFFELL;
      *a2 |= (v269 >> 1) - 1;
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, __int128 *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v87 = *MEMORY[0x29EDCA608];
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
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
  if (a6 && a5)
  {
    v10 = a6;
    if (a5 > 1)
    {
      v12 = a5 & 0x7E;
      if (a5 == v12)
      {
        v13 = 0;
        v14 = &v59;
        v15 = a3 + 1;
        do
        {
          v16 = v15;
          v17 = v14;
          v18 = a5;
          do
          {
            v19 = *v16;
            *(v17 - 4) = *(v16 - 1);
            *v17 = v19;
            v17 += 8;
            v16 += 2;
            v18 -= 2;
          }

          while (v18);
          ++v13;
          ++v14;
          v15 = (v15 + a4);
        }

        while (v13 != a6);
      }

      else
      {
        v20 = 0;
        v21 = &v59;
        v22 = a3 + 1;
        v23 = &v55 + 8 * ((a5 >> 1) & 0x3F);
        do
        {
          v24 = v22;
          v25 = v21;
          v26 = a5 & 0x7E;
          do
          {
            v27 = *v24;
            *(v25 - 4) = *(v24 - 1);
            *v25 = v27;
            v25 += 8;
            v24 += 2;
            v26 -= 2;
          }

          while (v26);
          v28 = (&a3[v12] + v20 * a4);
          v29 = v23;
          v30 = a5 - v12;
          do
          {
            v31 = *v28++;
            *v29 = v31;
            v29 += 4;
            --v30;
          }

          while (v30);
          ++v20;
          ++v21;
          v22 = (v22 + a4);
          ++v23;
        }

        while (v20 != a6);
      }
    }

    else
    {
      v11 = &v55;
      do
      {
        *v11++ = *a3;
        a3 = (a3 + a4);
        --v10;
      }

      while (v10);
    }
  }

  v47 = v55;
  v48 = v59;
  v49 = v56;
  v50 = v60;
  v51 = v63;
  v52 = v67;
  if (a5 >= 4)
  {
    v32 = 4;
  }

  else
  {
    v32 = a5;
  }

  if (a5 >= 4)
  {
    v33 = a5 - 4;
  }

  else
  {
    v33 = 0;
  }

  if (a6 >= 2)
  {
    v34 = 2;
  }

  else
  {
    v34 = a6;
  }

  v53 = v64;
  v54 = v68;
  if (a6 >= 2)
  {
    v35 = a6 - 2;
  }

  else
  {
    v35 = 0;
  }

  v37 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v47, a7, v32, v34);
  v47 = v57;
  v48 = v61;
  v49 = v58;
  v50 = v62;
  v51 = v65;
  v52 = v69;
  v53 = v66;
  v54 = v70;
  if (a6 >= 4)
  {
    v38 = 2;
  }

  else
  {
    v38 = v35;
  }

  v39 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 64, &v47, a7, v32, v38);
  v47 = v71;
  v48 = v75;
  v49 = v72;
  v50 = v76;
  v51 = v79;
  v52 = v83;
  if (a5 >= 8)
  {
    v40 = 4;
  }

  else
  {
    v40 = v33;
  }

  v53 = v80;
  v54 = v84;
  v41 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 128, &v47, a7, v40, v34);
  v47 = v73;
  v48 = v77;
  v49 = v74;
  v50 = v78;
  v51 = v81;
  v52 = v85;
  v53 = v82;
  v54 = v86;
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 192, &v47, a7, v40, v38);
  if (v41)
  {
    v43 = 4;
  }

  else
  {
    v43 = 0;
  }

  if (v39)
  {
    v44 = 2;
  }

  else
  {
    v44 = 0;
  }

  if (result)
  {
    v45 = -8;
  }

  else
  {
    v45 = -16;
  }

  *a2 = v45 | v43 | v37 | v44;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(unint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v288 = *MEMORY[0x29EDCA608];
  memset_pattern16(&__b, &unk_29D2F2670, 0x10uLL);
  memset_pattern16(v277, &unk_29D2F2680, 0x10uLL);
  memset_pattern16(v276, &unk_29D2F2660, 0x10uLL);
  v9 = 0;
  if (a4)
  {
    v10 = a5 < 2;
  }

  else
  {
    v10 = 1;
  }

  v260 = v10;
  v11 = a4 < 2 || a5 == 0;
  v259 = v11;
  v12 = a4 < 2 || a5 < 2;
  v258 = v12;
  v13 = a4 < 3 || a5 == 0;
  v257 = v13;
  v14 = a4 < 3 || a5 < 2;
  v15 = a4 < 4 || a5 == 0;
  v16 = a4 < 4 || a5 < 2;
  v17 = a2 + 64;
  do
  {
    v19 = (v17 + v9 * 4);
    v20 = *(a2 + v9 * 4);
    if (a3 == 1)
    {
      v29 = &v279[v9 * 4];
      if (v20 == -2147483647)
      {
        v20 = 0;
      }

      else
      {
        v20 ^= 0x80000000;
      }

      *v29 = v20;
      v30 = *(v19 - 12);
      if (v30 == -2147483647)
      {
        v22 = 0;
      }

      else
      {
        v22 = v30 ^ 0x80000000;
      }

      v29[4] = v22;
      v31 = *(v19 - 8);
      if (v31 == -2147483647)
      {
        v23 = 0;
      }

      else
      {
        v23 = v31 ^ 0x80000000;
      }

      v29[8] = v23;
      v32 = *(v19 - 4);
      v24 = v32 ^ 0x80000000;
      if (v32 == -2147483647)
      {
        v24 = 0;
      }

      v29[12] = v24;
      if (*v19 == -2147483647)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v19 ^ 0x80000000;
      }

      v29[16] = v25;
      v33 = v19[4];
      if (v33 == -2147483647)
      {
        v26 = 0;
      }

      else
      {
        v26 = v33 ^ 0x80000000;
      }

      v29[20] = v26;
      v34 = v19[8];
      v27 = v34 ^ 0x80000000;
      if (v34 == -2147483647)
      {
        v27 = 0;
      }

      v29[24] = v27;
      v35 = v19[12];
      v28 = v35 ^ 0x80000000;
      if (v35 == -2147483647)
      {
        v28 = 0;
      }

      v29[28] = v28;
    }

    else
    {
      if (a3 == 3)
      {
        v20 ^= 0x80000000;
        v21 = &v279[v9 * 4];
        *v21 = v20;
        v22 = *(v17 + v9 * 4 - 48) ^ 0x80000000;
        v21[4] = v22;
        v23 = *(v17 + v9 * 4 - 32) ^ 0x80000000;
        v21[8] = v23;
        v24 = *(v17 + v9 * 4 - 16) ^ 0x80000000;
        v21[12] = v24;
        v25 = *(v17 + v9 * 4) ^ 0x80000000;
        v21[16] = v25;
        v26 = *(v17 + v9 * 4 + 16) ^ 0x80000000;
        v21[20] = v26;
        v27 = *(v17 + v9 * 4 + 32) ^ 0x80000000;
        v21[24] = v27;
        v28 = *(v17 + v9 * 4 + 48) ^ 0x80000000;
      }

      else
      {
        v21 = &v279[v9 * 4];
        *v21 = v20;
        v22 = *(v17 + v9 * 4 - 48);
        v21[4] = v22;
        v23 = *(v17 + v9 * 4 - 32);
        v21[8] = v23;
        v24 = *(v17 + v9 * 4 - 16);
        v21[12] = v24;
        v25 = *(v17 + v9 * 4);
        v21[16] = v25;
        v26 = *(v17 + v9 * 4 + 16);
        v21[20] = v26;
        v27 = *(v17 + v9 * 4 + 32);
        v21[24] = v27;
        v28 = *(v17 + v9 * 4 + 48);
      }

      v21[28] = v28;
    }

    v36 = &v283[v9 + 4];
    v283[v9 + 4] = v20;
    v283[v9 + 8] = v20;
    v283[v9] = 0;
    if (v259)
    {
      v37 = v20;
      if (v260)
      {
        goto LABEL_68;
      }

LABEL_63:
      if (v23 < v37)
      {
        v283[v9] = 2;
        v283[v9 + 8] = v23;
        v37 = v23;
      }

      v39 = &v279[v9 * 4 + 32];
      if (v20 >= v23)
      {
        v39 = &v283[v9 + 4];
      }

      v20 = *v39;
      *v36 = *v39;
      goto LABEL_68;
    }

    v37 = v20;
    if (v22 < v20)
    {
      v283[v9] = 1;
      v283[v9 + 8] = v22;
      v37 = v22;
    }

    if (v20 >= v22)
    {
      v38 = &v283[v9 + 4];
    }

    else
    {
      v38 = &v279[v9 * 4 + 16];
    }

    v20 = *v38;
    *v36 = *v38;
    if (!v260)
    {
      goto LABEL_63;
    }

LABEL_68:
    if (v258)
    {
      if (v13)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (v24 < v37)
      {
        v283[v9] = 3;
        v283[v9 + 8] = v24;
        v37 = v24;
      }

      v40 = &v279[v9 * 4 + 48];
      if (v20 >= v24)
      {
        v40 = &v283[v9 + 4];
      }

      v20 = *v40;
      *v36 = *v40;
      if (v13)
      {
LABEL_70:
        if (v15)
        {
          goto LABEL_71;
        }

        goto LABEL_84;
      }
    }

    if (v25 < v37)
    {
      v283[v9] = 4;
      v283[v9 + 8] = v25;
      v37 = v25;
    }

    v41 = &v279[v9 * 4 + 64];
    if (v20 >= v25)
    {
      v41 = &v283[v9 + 4];
    }

    v20 = *v41;
    *v36 = *v41;
    if (v15)
    {
LABEL_71:
      if (v14)
      {
        goto LABEL_72;
      }

      goto LABEL_89;
    }

LABEL_84:
    if (v26 < v37)
    {
      v283[v9] = 5;
      v283[v9 + 8] = v26;
      v37 = v26;
    }

    v42 = &v279[v9 * 4 + 80];
    if (v20 >= v26)
    {
      v42 = &v283[v9 + 4];
    }

    v20 = *v42;
    *v36 = *v42;
    if (v14)
    {
LABEL_72:
      if (v16)
      {
        goto LABEL_99;
      }

LABEL_94:
      if (v28 < v37)
      {
        v283[v9] = 7;
        v283[v9 + 8] = v28;
        v37 = v28;
      }

      v44 = &v279[v9 * 4 + 112];
      if (v20 >= v28)
      {
        v44 = &v283[v9 + 4];
      }

      v20 = *v44;
      *v36 = *v44;
      goto LABEL_99;
    }

LABEL_89:
    if (v27 < v37)
    {
      v283[v9] = 6;
      v283[v9 + 8] = v27;
      v37 = v27;
    }

    v43 = &v279[v9 * 4 + 96];
    if (v20 >= v27)
    {
      v43 = &v283[v9 + 4];
    }

    v20 = *v43;
    *v36 = *v43;
    if (!v16)
    {
      goto LABEL_94;
    }

LABEL_99:
    v45 = __clz(v20 - v37);
    v46 = 32 - v45 + ~((32 - v45) >> 1);
    v18 = v46 & ~(v46 >> 31);
    v280[v9] = v18;
    if ((a3 | 2) == 3)
    {
      v47 = 0;
      if ((v37 & 0x80000000) == 0 && (v20 & 0x80000000) != 0)
      {
        v47 = kDQuadParamTable[10 * v18 + 648] == 0;
      }

      if (v46 <= 12)
      {
LABEL_106:
        if (!v47)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v47 = 0;
      if (v46 <= 12)
      {
        goto LABEL_106;
      }
    }

    v48 = kDQuadParamTable[10 * v18 + 644] - v47;
    if (v47)
    {
      v49 = 0;
    }

    else
    {
      v49 = -2;
    }

    if (v48 >= 0x20)
    {
      v50 = 0;
    }

    else
    {
      v50 = v37 & ~(-1 << -v48);
    }

    v51 = v50 + v49;
    if (v51 >= 1 && __clz(v51 + v20 - v37) < v45)
    {
      ++v18;
    }

    if (v18 >= 0xF)
    {
      v18 = 15;
    }

    v280[v9] = v18;
LABEL_26:
    ++v9;
  }

  while (v9 != 4);
  v275[0] = 0;
  v275[1] = 0;
  v274[0] = 0;
  v274[1] = 0;
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::deriveLossyDQuadBitSharing(v277, v280, v275, v274);
  v52 = 0;
  if (a4)
  {
    v53 = a5 == 0;
  }

  else
  {
    v53 = 1;
  }

  v54 = v53;
  v55 = 0x30u;
  while (2)
  {
    v57 = *(v274 + v55);
    v58 = *&v279[v55 + 80];
    v59 = &kDQuadParamTable[160 * v57 + 10 * v58];
    v60 = *(v59 + 1);
    v62 = v59[4];
    v61 = v59[5];
    *(&v263 + v55) = v62;
    v63 = &v266 + v55;
    *(&v262 + v55) = v61;
    v64 = *(&v264 + v55) - *(&v266 + v55);
    if (v64 < 0)
    {
      v66 = &kDQuadParamTable[160 * v57 + 10 * v58];
      if (v66[7] < (*(&v266 + v55) - *(&v264 + v55)))
      {
        *(v63 - 12) = --v61;
        if (!v66[8])
        {
          v65 = -1;
LABEL_131:
          *(&v263 + v55) = v65 + v62;
        }
      }
    }

    else if (v64)
    {
      v61 += v64;
      *(v63 - 12) = v61;
      v65 = v64;
      goto LABEL_131;
    }

    if (v57 == 5 && v58 == 1)
    {
      v52 |= v64 < 2;
    }

    if (a3 == 4)
    {
      v67 = 1 << (v283[v55 / 4] - 1);
      if (v57 == 3)
      {
        v68 = -31745;
      }

      else
      {
        v68 = -1;
      }

      if (v57 == 4)
      {
        v69 = -2139095041;
      }

      else
      {
        v69 = v68;
      }

      if (v54)
      {
        if (v259)
        {
          goto LABEL_146;
        }

LABEL_160:
        v73 = *(&v278[6] + v55);
        v75 = (v73 | v69) == 0xFFFFFFFF || v73 == v67;
        v52 |= v75;
        if (!v260)
        {
          goto LABEL_167;
        }

LABEL_147:
        if (v258)
        {
          goto LABEL_148;
        }

LABEL_174:
        v79 = *&v279[v55];
        v81 = (v79 | v69) == 0xFFFFFFFF || v79 == v67;
        v52 |= v81;
        if (!v257)
        {
          goto LABEL_181;
        }

LABEL_149:
        if (v15)
        {
          goto LABEL_150;
        }

LABEL_188:
        v85 = *&v279[v55 + 32];
        v87 = (v85 | v69) == 0xFFFFFFFF || v85 == v67;
        v52 |= v87;
        if (!v14)
        {
          goto LABEL_195;
        }

LABEL_151:
        if (!v16)
        {
          goto LABEL_202;
        }
      }

      else
      {
        v70 = *(&v278[5] + v55);
        v72 = (v70 | v69) == 0xFFFFFFFF || v70 == v67;
        v52 |= v72;
        if (!v259)
        {
          goto LABEL_160;
        }

LABEL_146:
        if (v260)
        {
          goto LABEL_147;
        }

LABEL_167:
        v76 = *(&v278[7] + v55);
        v78 = (v76 | v69) == 0xFFFFFFFF || v76 == v67;
        v52 |= v78;
        if (!v258)
        {
          goto LABEL_174;
        }

LABEL_148:
        if (v257)
        {
          goto LABEL_149;
        }

LABEL_181:
        v82 = *&v279[v55 + 16];
        v84 = (v82 | v69) == 0xFFFFFFFF || v82 == v67;
        v52 |= v84;
        if (!v15)
        {
          goto LABEL_188;
        }

LABEL_150:
        if (v14)
        {
          goto LABEL_151;
        }

LABEL_195:
        v88 = *&v279[v55 + 48];
        v90 = (v88 | v69) == 0xFFFFFFFF || v88 == v67;
        v52 |= v90;
        if (!v16)
        {
LABEL_202:
          v91 = *&v279[v55 + 64];
          v93 = (v91 | v69) == 0xFFFFFFFF || v91 == v67;
          v52 |= v93;
        }
      }
    }

    if (v60 >> v61 > 1 << *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)20,(AGXTextureFootprint)3>::lossyFallBackInfo + v55))
    {
      v56 = 1;
    }

    else
    {
      v56 = v54;
    }

    v52 |= v56;
    v55 += 4;
    if (v55 != 64)
    {
      continue;
    }

    break;
  }

  v94 = 0;
  v264 = 0;
  v265 = 0;
  v262 = 0u;
  v263 = 0u;
  memset(v261, 0, sizeof(v261));
  v95 = v279;
  v96 = v278;
  do
  {
    v97 = 0;
    v98 = 0;
    v99 = *(&__b + v94);
    if (v99 >= *(&v270 + v94))
    {
      v100 = *(&v270 + v94);
    }

    else
    {
      v100 = *(&__b + v94);
    }

    *(&v270 + v94) = v100;
    v101 = -1 << v99;
    v102 = &kDQuadParamTable[160 * v277[v94] + 10 * v280[v94]];
    if (v102[5])
    {
      v103 = v99;
    }

    else
    {
      v103 = 0;
    }

    if (v103 >= *(&v266 + v94))
    {
      v103 = *(&v266 + v94);
    }

    *(&v266 + v94) = v103;
    v104 = *(v102 + 1);
    v105 = v283[v94 + 8] & (-1 << (v99 - v100));
    *(&v264 + v94) = v105;
    v106 = v104 >> v103;
    v107 = &v279[4 * v94];
    v108 = *v107 - v105;
    v109 = &v278[2 * v94];
    if (v54)
    {
      v108 = 0;
    }

    v110 = v107[4] - v105;
    if (v259)
    {
      v110 = 0;
    }

    *v109 = v108;
    v109[1] = v110;
    v111 = v107[8] - v105;
    if (v260)
    {
      v111 = 0;
    }

    v112 = v107[12] - v105;
    if (v258)
    {
      v112 = 0;
    }

    v109[2] = v111;
    v109[3] = v112;
    v113 = v107[16] - v105;
    if (v257)
    {
      v113 = 0;
    }

    v114 = v107[20] - v105;
    if (v15)
    {
      v114 = 0;
    }

    v109[4] = v113;
    v109[5] = v114;
    v115 = v107[24] - v105;
    if (v14)
    {
      v115 = 0;
    }

    v116 = v107[28] - v105;
    if (v16)
    {
      v116 = 0;
    }

    v109[6] = v115;
    v109[7] = v116;
    if (v106 <= 1)
    {
      v117 = 1;
    }

    else
    {
      v117 = v106;
    }

    v118 = 4 * v283[v94];
    v119 = v261 + 28 * v94;
    v120 = &byte_29D2F3081;
    do
    {
      if (v118 != v97)
      {
        if (v103)
        {
          v121 = *(v96 + v97) / v117;
        }

        else
        {
          LODWORD(v121) = 0;
        }

        *&v119[4 * v98] = v121;
        if (v106 >= 2)
        {
          v122 = *(v96 + v97);
          if (v122)
          {
            if (v122 / v117 * v117 == v122 && ((v122 / v117) & 1) != 0)
            {
              if (v105 || v121 != 1)
              {
                if ((a3 | 2) != 3 || (v124 = *&v95[4 * v97], v125 = v276[v94], v124 != v125) && ((a3 | 2) != 3 || v117 + v125 != v124))
                {
                  LODWORD(v121) = v121 - 1;
                  *&v119[4 * v98] = v121;
                }
              }

              else
              {
                LODWORD(v121) = 1;
              }
            }
          }
        }

        if (v121 >> v103 || (*&v95[4 * v97] ^ v101) == 0xFFFFFFFF)
        {
          *&v119[4 * v98] = ~(-1 << v103);
        }

        if (*v120 >= a5 || *(v120 - 1) >= a4)
        {
          *&v119[4 * v98] = 0;
        }

        ++v98;
      }

      v97 += 4;
      v120 += 2;
    }

    while (v97 != 32);
    ++v94;
    v96 += 2;
    v95 += 4;
  }

  while (v94 != 4);
  v126 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v127 = 8 * (a1 & 7);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (v52)
  {
    v128 = 0;
    v129 = 0;
    v130 = __b;
    v131 = v285;
    v132 = __b - 16;
    v133 = v285 - 16;
    v135 = v286;
    v134 = v287;
    v136 = v286 - 16;
    v137 = v287 - 16;
    v138 = 8 * (a1 & 7);
    while (1)
    {
      v139 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v128;
      v140 = v139[1] < a5 && a4 > *v139;
      v141 = !v140;
      v142 = &v279[16 * v128];
      if (v140)
      {
        v143 = v142[1];
        if (v132 > 0x100)
        {
          goto LABEL_286;
        }
      }

      else
      {
        v143 = 0;
        if (v132 > 0x100)
        {
          goto LABEL_286;
        }
      }

      if (v130 != 16 && (v138 - v127 + (v129 << 6) + v132) <= 0x200)
      {
        v144 = 0;
        v145 = v130 - 16;
        do
        {
          v146 = 64 - v138;
          if (64 - v138 >= v145)
          {
            v146 = v145;
          }

          v126[v129] |= ((v143 >> v144) & ~(-1 << v146)) << v138;
          v144 += v146;
          v147 = v146 + v138;
          v129 += v147 >> 6;
          v138 = v147 & 0x3F;
          v145 -= v146;
        }

        while (v145);
      }

LABEL_286:
      if (v141)
      {
        v148 = 0;
        if (v133 > 0x100)
        {
          goto LABEL_296;
        }
      }

      else
      {
        v148 = v142[3];
        if (v133 > 0x100)
        {
          goto LABEL_296;
        }
      }

      if (v131 != 16 && (v138 - v127 + (v129 << 6) + v133) <= 0x200)
      {
        v149 = 0;
        v150 = v131 - 16;
        do
        {
          v151 = 64 - v138;
          if (64 - v138 >= v150)
          {
            v151 = v150;
          }

          v126[v129] |= ((v148 >> v149) & ~(-1 << v151)) << v138;
          v149 += v151;
          v152 = v151 + v138;
          v129 += v152 >> 6;
          v138 = v152 & 0x3F;
          v150 -= v151;
        }

        while (v150);
      }

LABEL_296:
      if (v141)
      {
        v153 = 0;
        if (v136 > 0x100)
        {
          goto LABEL_306;
        }
      }

      else
      {
        v153 = v142[5];
        if (v136 > 0x100)
        {
          goto LABEL_306;
        }
      }

      if (v135 != 16 && (v138 - v127 + (v129 << 6) + v136) <= 0x200)
      {
        v154 = 0;
        v155 = v135 - 16;
        do
        {
          v156 = 64 - v138;
          if (64 - v138 >= v155)
          {
            v156 = v155;
          }

          v126[v129] |= ((v153 >> v154) & ~(-1 << v156)) << v138;
          v154 += v156;
          v157 = v156 + v138;
          v129 += v157 >> 6;
          v138 = v157 & 0x3F;
          v155 -= v156;
        }

        while (v155);
      }

LABEL_306:
      if (v141)
      {
        v158 = 0;
        if (v137 <= 0x100)
        {
          goto LABEL_310;
        }
      }

      else
      {
        v158 = v142[7];
        if (v137 <= 0x100)
        {
LABEL_310:
          if (v134 != 16 && (v138 - v127 + (v129 << 6) + v137) <= 0x200)
          {
            v159 = 0;
            v160 = v134 - 16;
            do
            {
              v161 = 64 - v138;
              if (64 - v138 >= v160)
              {
                v161 = v160;
              }

              v126[v129] |= ((v158 >> v159) & ~(-1 << v161)) << v138;
              v159 += v161;
              v162 = v161 + v138;
              v129 += v162 >> 6;
              v138 = v162 & 0x3F;
              v160 -= v161;
            }

            while (v160);
          }
        }
      }

      if (++v128 == 8)
      {
        return v52 & 1;
      }
    }
  }

  v163 = v280[0];
  v164 = v280[1];
  v165 = ((v280[0] & 0xF) << v127) | *v126;
  *v126 = v165;
  v166 = v127 | 4;
  if ((v127 | 4uLL) - v127 - 509 <= 0xFFFFFFFFFFFFFDFELL)
  {
    v167 = 0;
    v168 = v281;
    goto LABEL_320;
  }

  *v126 = ((v164 & 0xF) << v166) | v165;
  v166 = (v127 + 8) & 0x38;
  v167 = (v127 + 8) >> 6;
  v169 = (v127 + 8) & 0x40;
  v168 = v281;
  if ((v169 + v166 - v127 + 4) < 0x201)
  {
    v254 = ((v281 & 0xF) << v166) | v126[v167];
    v126[v167] = v254;
    v171 = v166 | 4;
    v255 = (v166 | 4) - v127 + v169 + 4;
    v170 = v282;
    if (v255 <= 0x200)
    {
      v126[v167] = ((v282 & 0xF) << v171) | v254;
      v167 += (v166 + 8) >> 6;
      v171 = (v166 + 8) & 0x38;
    }
  }

  else
  {
LABEL_320:
    v170 = v282;
    v171 = v166;
  }

  if (v163 || __b == 2 || __b >= 0x10)
  {
    v172 = v270;
    if (v270 <= 0x100 && v270 && v171 - v127 + (v167 << 6) + v270 <= 0x200)
    {
      v173 = 0;
      v174 = v264 >> (__b - v270);
      v175 = v270;
      do
      {
        v176 = 64 - v171;
        if (64 - v171 >= v175)
        {
          v176 = v175;
        }

        v126[v167] |= ((v174 >> v173) & ~(-1 << v176)) << v171;
        v173 += v176;
        v177 = v176 + v171;
        v167 += v177 >> 6;
        v171 = v177 & 0x3F;
        v175 -= v176;
      }

      while (v175);
    }

    v178 = v172 + 16;
    v179 = v285;
    if (v164)
    {
      goto LABEL_330;
    }

LABEL_434:
    if (v179 == 2 || v179 >= 0x10)
    {
      goto LABEL_330;
    }
  }

  else
  {
    v178 = 16;
    v179 = v285;
    if (!v164)
    {
      goto LABEL_434;
    }

LABEL_330:
    v180 = v271;
    if (v271 <= 0x100 && v271 && v171 - v127 + (v167 << 6) + v271 <= 0x200)
    {
      v181 = 0;
      v182 = (HIDWORD(v264) >> (v179 - v271));
      v183 = v271;
      do
      {
        v184 = 64 - v171;
        if (64 - v171 >= v183)
        {
          v184 = v183;
        }

        v126[v167] |= ((v182 >> v181) & ~(-1 << v184)) << v171;
        v181 += v184;
        v185 = v184 + v171;
        v167 += v185 >> 6;
        v171 = v185 & 0x3F;
        v183 -= v184;
      }

      while (v183);
    }

    v178 += v180;
  }

  if (v168 || v286 == 2 || v286 >= 0x10)
  {
    v186 = v272;
    if (v272 <= 0x100 && v272 && v171 - v127 + (v167 << 6) + v272 <= 0x200)
    {
      v187 = 0;
      v188 = v265 >> (v286 - v272);
      v189 = v272;
      do
      {
        v190 = 64 - v171;
        if (64 - v171 >= v189)
        {
          v190 = v189;
        }

        v126[v167] |= ((v188 >> v187) & ~(-1 << v190)) << v171;
        v187 += v190;
        v191 = v190 + v171;
        v167 += v191 >> 6;
        v171 = v191 & 0x3F;
        v189 -= v190;
      }

      while (v189);
    }

    v178 += v186;
  }

  if (v170 || v287 == 2 || v287 >= 0x10)
  {
    v192 = v273;
    if (v273 <= 0x100 && v273 && v171 - v127 + (v167 << 6) + v273 <= 0x200)
    {
      v193 = 0;
      v194 = (HIDWORD(v265) >> (v287 - v273));
      v195 = v273;
      do
      {
        v196 = 64 - v171;
        if (64 - v171 >= v195)
        {
          v196 = v195;
        }

        v126[v167] |= ((v194 >> v193) & ~(-1 << v196)) << v171;
        v193 += v196;
        v197 = v196 + v171;
        v167 += v197 >> 6;
        v171 = v197 & 0x3F;
        v195 -= v196;
      }

      while (v195);
    }

    v178 += v192;
  }

  v198 = v266;
  if (v266)
  {
    if (v171 - v127 + (v167 << 6) + 3 <= 0x200)
    {
      v199 = 0;
      v200 = v283[0];
      v201 = 3;
      do
      {
        v202 = 64 - v171;
        if (64 - v171 >= v201)
        {
          v202 = v201;
        }

        v126[v167] |= ((v200 >> v199) & ~(-1 << v202)) << v171;
        v199 += v202;
        v203 = v202 + v171;
        v167 += v203 >> 6;
        v171 = v203 & 0x3F;
        v201 -= v202;
      }

      while (v201);
    }

    v178 += 3;
  }

  v204 = v267;
  if (v267)
  {
    if (v171 - v127 + (v167 << 6) + 3 <= 0x200)
    {
      v205 = 0;
      v206 = v283[1];
      v207 = 3;
      do
      {
        v208 = 64 - v171;
        if (64 - v171 >= v207)
        {
          v208 = v207;
        }

        v126[v167] |= ((v206 >> v205) & ~(-1 << v208)) << v171;
        v205 += v208;
        v209 = v208 + v171;
        v167 += v209 >> 6;
        v171 = v209 & 0x3F;
        v207 -= v208;
      }

      while (v207);
    }

    v178 += 3;
  }

  v210 = v268;
  if (v268)
  {
    if (v171 - v127 + (v167 << 6) + 3 <= 0x200)
    {
      v211 = 0;
      v212 = v283[2];
      v213 = 3;
      do
      {
        v214 = 64 - v171;
        if (64 - v171 >= v213)
        {
          v214 = v213;
        }

        v126[v167] |= ((v212 >> v211) & ~(-1 << v214)) << v171;
        v211 += v214;
        v215 = v214 + v171;
        v167 += v215 >> 6;
        v171 = v215 & 0x3F;
        v213 -= v214;
      }

      while (v213);
    }

    v178 += 3;
  }

  v216 = v269;
  if (v269)
  {
    if (v171 - v127 + (v167 << 6) + 3 <= 0x200)
    {
      v217 = 0;
      v218 = v283[3];
      v219 = 3;
      do
      {
        v220 = 64 - v171;
        if (64 - v171 >= v219)
        {
          v220 = v219;
        }

        v126[v167] |= ((v218 >> v217) & ~(-1 << v220)) << v171;
        v217 += v220;
        v221 = v220 + v171;
        v167 += v221 >> 6;
        v171 = v221 & 0x3F;
        v219 -= v220;
      }

      while (v219);
    }

    v178 += 3;
  }

  v222 = 512 - v178;
  v223 = (512 - v178) / 7u;
  v224 = v222 % 7;
  if ((v224 - 257) >= 0xFFFFFF00 && v171 - v127 + (v167 << 6) + v224 <= 0x200)
  {
    do
    {
      v225 = 64 - v171;
      if (64 - v171 >= v224)
      {
        v225 = v224;
      }

      v226 = v225 + v171;
      v167 += v226 >> 6;
      v171 = v226 & 0x3F;
      v224 -= v225;
    }

    while (v224);
  }

  v227 = 0;
  while (2)
  {
    if (v198 && v198 <= 0x100 && v171 - v127 + (v167 << 6) + v198 <= 0x200)
    {
      v228 = 0;
      v229 = *(v261 + v227);
      v230 = v198;
      do
      {
        v231 = 64 - v171;
        if (64 - v171 >= v230)
        {
          v231 = v230;
        }

        v126[v167] |= ((v229 >> v228) & ~(-1 << v231)) << v171;
        v228 += v231;
        v232 = v231 + v171;
        v167 += v232 >> 6;
        v171 = v232 & 0x3F;
        v230 -= v231;
      }

      while (v230);
    }

    v233 = v261 + v227;
    if (!v204)
    {
      v239 = v198;
      if (!v210)
      {
        goto LABEL_415;
      }

      goto LABEL_408;
    }

    if (v204 <= 0x100 && v171 - v127 + (v167 << 6) + v204 <= 0x200)
    {
      v234 = 0;
      v235 = v233[7];
      v236 = v204;
      do
      {
        v237 = 64 - v171;
        if (64 - v171 >= v236)
        {
          v237 = v236;
        }

        v126[v167] |= ((v235 >> v234) & ~(-1 << v237)) << v171;
        v234 += v237;
        v238 = v237 + v171;
        v167 += v238 >> 6;
        v171 = v238 & 0x3F;
        v236 -= v237;
      }

      while (v236);
    }

    v239 = v204 + v198;
    if (v210)
    {
LABEL_408:
      if (v210 <= 0x100 && v171 - v127 + (v167 << 6) + v210 <= 0x200)
      {
        v240 = 0;
        v241 = v233[14];
        v242 = v210;
        do
        {
          v243 = 64 - v171;
          if (64 - v171 >= v242)
          {
            v243 = v242;
          }

          v126[v167] |= ((v241 >> v240) & ~(-1 << v243)) << v171;
          v240 += v243;
          v244 = v243 + v171;
          v167 += v244 >> 6;
          v171 = v244 & 0x3F;
          v242 -= v243;
        }

        while (v242);
      }

      v239 += v210;
    }

LABEL_415:
    if (v216)
    {
      if (v216 <= 0x100 && v171 - v127 + (v167 << 6) + v216 <= 0x200)
      {
        v245 = 0;
        v246 = v233[21];
        v247 = v216;
        do
        {
          v248 = 64 - v171;
          if (64 - v171 >= v247)
          {
            v248 = v247;
          }

          v126[v167] |= ((v246 >> v245) & ~(-1 << v248)) << v171;
          v245 += v248;
          v249 = v248 + v171;
          v167 += v249 >> 6;
          v171 = v249 & 0x3F;
          v247 -= v248;
        }

        while (v247);
      }

      v239 += v216;
    }

    v250 = v223 - v239;
    if (v250 && v250 <= 0x100 && v171 - v127 + (v167 << 6) + v250 <= 0x200)
    {
      do
      {
        v251 = 64 - v171;
        if (64 - v171 >= v250)
        {
          v251 = v250;
        }

        v252 = v251 + v171;
        v167 += v252 >> 6;
        v171 = v252 & 0x3F;
        v250 -= v251;
      }

      while (v250);
    }

    if (++v227 != 7)
    {
      continue;
    }

    return v52 & 1;
  }
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = a3 & 0xFFFFFFFD;
  v6 = ((a3 & 0xFFFFFFFD) == 1) << 31;
  if (a3 == 4)
  {
    v7 = 0;
    v8 = 0;
    v9 = 8 * (a1 & 7);
    while (1)
    {
      result = v9 - v4 + (v8 << 6) - 497;
      v12 = (a2 + 16 * v7);
      if (result < 0xFFFFFFFFFFFFFDFFLL)
      {
        break;
      }

      v13 = 0;
      v14 = 0;
      v15 = 16;
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
      result = v6 ^ (v13 << 16);
      *(a2 + 16 * v7) = result;
      if ((v9 - v4 + (v8 << 6) - 497) < 0xFFFFFFFFFFFFFDFFLL)
      {
        goto LABEL_4;
      }

      v18 = 0;
      v19 = 0;
      v20 = 16;
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
      result = v9 - v4 + (v8 << 6) - 497;
      v12[1] = v6 ^ (v18 << 16);
      if (result >= 0xFFFFFFFFFFFFFDFFLL)
      {
        v23 = 0;
        v24 = 0;
        v25 = 16;
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
        result = v9 - v4 + (v8 << 6) - 497;
        v12[2] = v6 ^ (v23 << 16);
        if (result >= 0xFFFFFFFFFFFFFDFFLL)
        {
          v28 = 0;
          result = 0;
          v29 = 16;
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
          v10 = v28 << 16;
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
    if (result - v4 + (v33 << 6) - 497 >= 0xFFFFFFFFFFFFFDFFLL)
    {
      v36 = 0;
      v37 = 0;
      v38 = 16;
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
      v35 = v36 << 16;
      if ((v36 << 16 != 0x80000000 || v5 != 1) && v35 != 0)
      {
        if (v35 == -65536)
        {
          v35 = -1;
        }

        else
        {
          v35 = v35 - (v36 & 1) + 0x8000;
        }
      }
    }

    else
    {
      v35 = 0;
    }

    *(a2 + 16 * v32) = v35 ^ v6;
    if (result - v4 + (v33 << 6) - 497 >= 0xFFFFFFFFFFFFFDFFLL)
    {
      v44 = 0;
      v45 = 0;
      v46 = 16;
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
      v43 = v44 << 16;
      if ((v44 << 16 != 0x80000000 || v5 != 1) && v43 != 0)
      {
        if (v43 == -65536)
        {
          v43 = -1;
        }

        else
        {
          v43 = v43 - (v44 & 1) + 0x8000;
        }
      }
    }

    else
    {
      v43 = 0;
    }

    v51 = (a2 + 16 * v32);
    v51[1] = v43 ^ v6;
    if (result - v4 + (v33 << 6) - 497 >= 0xFFFFFFFFFFFFFDFFLL)
    {
      v53 = 0;
      v54 = 0;
      v55 = 16;
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
      v52 = v53 << 16;
      if ((v53 << 16 != 0x80000000 || v5 != 1) && v52 != 0)
      {
        if (v52 == -65536)
        {
          v52 = -1;
        }

        else
        {
          v52 = v52 - (v53 & 1) + 0x8000;
        }
      }
    }

    else
    {
      v52 = 0;
    }

    v51[2] = v52 ^ v6;
    if (result - v4 + (v33 << 6) - 497 < 0xFFFFFFFFFFFFFDFFLL)
    {
      v34 = 0;
    }

    else
    {
      v60 = 0;
      v61 = 0;
      v62 = 16;
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
      v34 = v60 << 16;
      if ((v60 << 16 != 0x80000000 || v5 != 1) && v34 != 0)
      {
        v67 = v34 - (v60 & 1) + 0x8000;
        if (v34 == -65536)
        {
          v34 = -1;
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

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3)
{
  v232 = *MEMORY[0x29EDCA608];
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = 8 * (a1 & 7);
  v6 = *(a1 & 0xFFFFFFFFFFFFFFF8);
  v7 = v6 >> v5;
  v8 = (v6 >> v5) & 0xF;
  v9 = v5 | 4;
  if ((v5 | 4uLL) - v5 - 509 >= 0xFFFFFFFFFFFFFDFFLL)
  {
    v14 = (v5 + 8) & 0x38;
    v12 = (v5 + 8) >> 6;
    v11 = (v6 >> v9) & 0xF;
    v15 = (v5 + 8) & 0x40;
    if ((v15 + v14 - v5 + 4) <= 0x200)
    {
      v9 = v14 | 4;
      v16 = *(v4 + 8 * v12);
      v10 = (v16 >> v14) & 0xF;
      if ((v14 | 4uLL) - v5 + v15 + 4 <= 0x200)
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

  memset_pattern16(&__b, &unk_29D2F2670, 0x10uLL);
  memset_pattern16(&v227, &unk_29D2F2680, 0x10uLL);
  v231[0] = v8;
  v231[1] = v11;
  v231[2] = v10;
  v231[3] = v13;
  v221 = 0;
  v222 = 0;
  v219 = 0;
  v220 = 0;
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::deriveLossyDQuadBitSharing(&v227, v231, &v221, &v219);
  v19 = &kDQuadParamTable[160 * v227 + 10 * (v7 & 0xF)];
  LODWORD(v20) = v19[4];
  v21 = v19[5];
  v22 = v219 - v221;
  if (v219 - v221 >= 0)
  {
    v23 = v21;
    if (!v22)
    {
      goto LABEL_16;
    }

    v23 = v22 + v21;
    goto LABEL_11;
  }

  v24 = &kDQuadParamTable[160 * v227 + 10 * (v7 & 0xF)];
  if (v24[7] >= v221 - v219)
  {
    v23 = v21;
  }

  else
  {
    v23 = v21 - 1;
    if (!v24[8])
    {
      v22 = -1;
LABEL_11:
      LODWORD(v20) = v22 + v20;
    }
  }

LABEL_16:
  if (__b >= v20)
  {
    v20 = v20;
  }

  else
  {
    v20 = __b;
  }

  v218[0] = v20;
  if (v21)
  {
    LODWORD(v25) = __b;
  }

  else
  {
    LODWORD(v25) = 0;
  }

  if (v25 >= v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = v25;
  }

  v217[0] = v25;
  v26 = &kDQuadParamTable[160 * v228 + 10 * v11];
  v28 = v26[4];
  v27 = v26[5];
  v29 = HIDWORD(v219) - HIDWORD(v221);
  if (HIDWORD(v219) - HIDWORD(v221) >= 0)
  {
    v30 = v27;
    if (!v29)
    {
      goto LABEL_33;
    }

    v30 = v29 + v27;
    goto LABEL_28;
  }

  v31 = &kDQuadParamTable[160 * v228 + 10 * v11];
  if (v31[7] >= HIDWORD(v221) - HIDWORD(v219))
  {
    v30 = v27;
  }

  else
  {
    v30 = v27 - 1;
    if (!v31[8])
    {
      v29 = -1;
LABEL_28:
      v28 += v29;
    }
  }

LABEL_33:
  if (v224 >= v28)
  {
    v32 = v28;
  }

  else
  {
    v32 = v224;
  }

  v218[1] = v32;
  if (v27)
  {
    LODWORD(v33) = v224;
  }

  else
  {
    LODWORD(v33) = 0;
  }

  if (v33 >= v30)
  {
    v33 = v30;
  }

  else
  {
    v33 = v33;
  }

  v217[1] = v33;
  v34 = &kDQuadParamTable[160 * v229 + 10 * v10];
  v36 = v34[4];
  v35 = v34[5];
  v37 = v220 - v222;
  if (v220 - v222 >= 0)
  {
    v38 = v35;
    if (!v37)
    {
      goto LABEL_50;
    }

    v38 = v37 + v35;
    goto LABEL_45;
  }

  v39 = &kDQuadParamTable[160 * v229 + 10 * v10];
  if (v39[7] >= v222 - v220)
  {
    v38 = v35;
  }

  else
  {
    v38 = v35 - 1;
    if (!v39[8])
    {
      v37 = -1;
LABEL_45:
      v36 += v37;
    }
  }

LABEL_50:
  if (v225 >= v36)
  {
    v40 = v36;
  }

  else
  {
    v40 = v225;
  }

  v218[2] = v40;
  if (v35)
  {
    v41 = v225;
  }

  else
  {
    v41 = 0;
  }

  if (v41 >= v38)
  {
    v42 = v38;
  }

  else
  {
    v42 = v41;
  }

  v217[2] = v42;
  v43 = &kDQuadParamTable[160 * v230 + 10 * v13];
  LODWORD(v44) = v43[4];
  v45 = v43[5];
  v46 = HIDWORD(v220) - HIDWORD(v222);
  if (HIDWORD(v220) - HIDWORD(v222) >= 0)
  {
    v47 = v45;
    if (!v46)
    {
      goto LABEL_67;
    }

    v47 = v46 + v45;
    goto LABEL_62;
  }

  v48 = &kDQuadParamTable[160 * v230 + 10 * v13];
  if (v48[7] >= HIDWORD(v222) - HIDWORD(v220))
  {
    v47 = v45;
  }

  else
  {
    v47 = v45 - 1;
    if (!v48[8])
    {
      v46 = -1;
LABEL_62:
      LODWORD(v44) = v46 + v44;
    }
  }

LABEL_67:
  if (v226 >= v44)
  {
    v44 = v44;
  }

  else
  {
    v44 = v226;
  }

  v218[3] = v44;
  if (v45)
  {
    LODWORD(v49) = v226;
  }

  else
  {
    LODWORD(v49) = 0;
  }

  if (v49 >= v47)
  {
    v49 = v47;
  }

  else
  {
    v49 = v49;
  }

  v217[3] = v49;
  v215 = 0;
  v216 = 0;
  if (v8 || __b - 8 >= 5)
  {
    if (v20 <= 0x20)
    {
      v51 = 0;
      if (v20 && v9 - v5 + (v12 << 6) + v20 <= 0x200)
      {
        v51 = 0;
        v52 = 0;
        v53 = v20;
        do
        {
          v54 = 64 - v9;
          if (64 - v9 >= v53)
          {
            v54 = v53;
          }

          v51 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v54)) << v52;
          v52 += v54;
          v12 += (v54 + v9) >> 6;
          v9 = (v54 + v9) & 0x3F;
          v53 -= v54;
        }

        while (v53);
      }
    }

    else
    {
      v51 = 0;
    }

    LODWORD(v215) = v51 << (__b - v20);
    v50 = v20 + 16;
    if (v11)
    {
LABEL_92:
      if (v32 <= 0x20)
      {
        v55 = 0;
        if (v32 && v9 - v5 + (v12 << 6) + v32 <= 0x200)
        {
          v55 = 0;
          v56 = 0;
          v57 = v32;
          do
          {
            v58 = 64 - v9;
            if (64 - v9 >= v57)
            {
              v58 = v57;
            }

            v55 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v58)) << v56;
            v56 += v58;
            v12 += (v58 + v9) >> 6;
            v9 = (v58 + v9) & 0x3F;
            v57 -= v58;
          }

          while (v57);
        }
      }

      else
      {
        v55 = 0;
      }

      HIDWORD(v215) = v55 << (v224 - v32);
      v50 += v32;
      if (v10)
      {
        goto LABEL_104;
      }

      goto LABEL_101;
    }
  }

  else
  {
    v50 = 16;
    if (v11)
    {
      goto LABEL_92;
    }
  }

  if (v224 - 8 >= 5)
  {
    goto LABEL_92;
  }

  HIDWORD(v215) = 0;
  if (v10)
  {
    goto LABEL_104;
  }

LABEL_101:
  if (v225 - 8 < 5)
  {
    LODWORD(v216) = 0;
    if (v13)
    {
      goto LABEL_116;
    }

    goto LABEL_113;
  }

LABEL_104:
  if (v40 <= 0x20)
  {
    v59 = 0;
    if (v40 && v9 - v5 + (v12 << 6) + v40 <= 0x200)
    {
      v59 = 0;
      v60 = 0;
      v61 = v40;
      do
      {
        v62 = 64 - v9;
        if (64 - v9 >= v61)
        {
          v62 = v61;
        }

        v59 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v62)) << v60;
        v60 += v62;
        v12 += (v62 + v9) >> 6;
        v9 = (v62 + v9) & 0x3F;
        v61 -= v62;
      }

      while (v61);
    }
  }

  else
  {
    v59 = 0;
  }

  LODWORD(v216) = v59 << (v225 - v40);
  v50 += v40;
  if (v13)
  {
LABEL_116:
    if (v44 <= 0x20)
    {
      v63 = 0;
      if (v44 && v9 - v5 + (v12 << 6) + v44 <= 0x200)
      {
        v63 = 0;
        v64 = 0;
        v65 = v44;
        do
        {
          v66 = 64 - v9;
          if (64 - v9 >= v65)
          {
            v66 = v65;
          }

          v63 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v66)) << v64;
          v64 += v66;
          v12 += (v66 + v9) >> 6;
          v9 = (v66 + v9) & 0x3F;
          v65 -= v66;
        }

        while (v65);
      }
    }

    else
    {
      v63 = 0;
    }

    HIDWORD(v216) = v63 << (v226 - v44);
    v50 += v44;
    v213 = 0;
    v214 = 0;
    if (!v25)
    {
      goto LABEL_132;
    }

    goto LABEL_125;
  }

LABEL_113:
  if (v226 - 8 >= 5)
  {
    goto LABEL_116;
  }

  HIDWORD(v216) = 0;
  v213 = 0;
  v214 = 0;
  if (v25)
  {
LABEL_125:
    if (v9 - v5 + (v12 << 6) + 3 <= 0x200)
    {
      v67 = 0;
      v68 = 0;
      v69 = 3;
      do
      {
        v70 = 64 - v9;
        if (64 - v9 >= v69)
        {
          v70 = v69;
        }

        v67 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v70)) << v68;
        v68 += v70;
        v12 += (v70 + v9) >> 6;
        v9 = (v70 + v9) & 0x3F;
        v69 -= v70;
      }

      while (v69);
    }

    else
    {
      v67 = 0;
    }

    LODWORD(v213) = v67;
    v50 += 3;
  }

LABEL_132:
  if (v33)
  {
    if (v9 - v5 + (v12 << 6) + 3 <= 0x200)
    {
      v71 = 0;
      v72 = 0;
      v73 = 3;
      do
      {
        v74 = 64 - v9;
        if (64 - v9 >= v73)
        {
          v74 = v73;
        }

        v71 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v74)) << v72;
        v72 += v74;
        v12 += (v74 + v9) >> 6;
        v9 = (v74 + v9) & 0x3F;
        v73 -= v74;
      }

      while (v73);
    }

    else
    {
      v71 = 0;
    }

    HIDWORD(v213) = v71;
    v50 += 3;
  }

  if (v42)
  {
    if (v9 - v5 + (v12 << 6) + 3 <= 0x200)
    {
      v75 = 0;
      v76 = 0;
      v77 = 3;
      do
      {
        v78 = 64 - v9;
        if (64 - v9 >= v77)
        {
          v78 = v77;
        }

        v75 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v78)) << v76;
        v76 += v78;
        v12 += (v78 + v9) >> 6;
        v9 = (v78 + v9) & 0x3F;
        v77 -= v78;
      }

      while (v77);
    }

    else
    {
      v75 = 0;
    }

    LODWORD(v214) = v75;
    v50 += 3;
  }

  if (v49)
  {
    if (v9 - v5 + (v12 << 6) + 3 <= 0x200)
    {
      v79 = 0;
      v80 = 0;
      v81 = 3;
      do
      {
        v82 = 64 - v9;
        if (64 - v9 >= v81)
        {
          v82 = v81;
        }

        v79 |= ((*(v4 + 8 * v12) >> v9) & ~(-1 << v82)) << v80;
        v80 += v82;
        v12 += (v82 + v9) >> 6;
        v9 = (v82 + v9) & 0x3F;
        v81 -= v82;
      }

      while (v81);
    }

    else
    {
      v79 = 0;
    }

    HIDWORD(v214) = v79;
    v50 += 3;
  }

  v83 = 0;
  v84 = a3 & 0xFFFFFFFD;
  v85 = 512 - v50;
  v86 = (512 - v50) / 7u;
  v87 = (v9 | (v12 << 6)) + v85 % 7;
  memset(v212, 0, sizeof(v212));
  do
  {
    v90 = v87 >> 6;
    v91 = v87 & 0x3F;
    if (v25)
    {
      if (v25 <= 0x20 && v91 - v5 + (v87 & 0xFFFFFFFFFFFFFFC0) + v25 <= 0x200)
      {
        v92 = 0;
        v93 = 0;
        v94 = v25;
        do
        {
          v95 = 64 - v91;
          if (64 - v91 >= v94)
          {
            v95 = v94;
          }

          v92 |= ((*(v4 + 8 * v90) >> v91) & ~(-1 << v95)) << v93;
          v93 += v95;
          v96 = v95 + v91;
          v90 += v96 >> 6;
          v91 = v96 & 0x3F;
          v94 -= v95;
        }

        while (v94);
      }

      else
      {
        v92 = 0;
      }

      *(v212 + v83) = v92;
    }

    v97 = v212 + v83;
    if (!v33)
    {
      v89 = v25;
      if (!v42)
      {
        goto LABEL_188;
      }

LABEL_180:
      if (v42 <= 0x20 && v91 - v5 + (v90 << 6) + v42 <= 0x200)
      {
        v103 = 0;
        v104 = 0;
        v105 = v42;
        do
        {
          v106 = 64 - v91;
          if (64 - v91 >= v105)
          {
            v106 = v105;
          }

          v103 |= ((*(v4 + 8 * v90) >> v91) & ~(-1 << v106)) << v104;
          v104 += v106;
          v107 = v106 + v91;
          v90 += v107 >> 6;
          v91 = v107 & 0x3F;
          v105 -= v106;
        }

        while (v105);
      }

      else
      {
        v103 = 0;
      }

      v97[14] = v103;
      v89 += v42;
      goto LABEL_188;
    }

    if (v33 <= 0x20 && v91 - v5 + (v90 << 6) + v33 <= 0x200)
    {
      v98 = 0;
      v99 = 0;
      v100 = v33;
      do
      {
        v101 = 64 - v91;
        if (64 - v91 >= v100)
        {
          v101 = v100;
        }

        v98 |= ((*(v4 + 8 * v90) >> v91) & ~(-1 << v101)) << v99;
        v99 += v101;
        v102 = v101 + v91;
        v90 += v102 >> 6;
        v91 = v102 & 0x3F;
        v100 -= v101;
      }

      while (v100);
    }

    else
    {
      v98 = 0;
    }

    v97[7] = v98;
    v89 = v33 + v25;
    if (v42)
    {
      goto LABEL_180;
    }

LABEL_188:
    if (v49)
    {
      if (v49 > 0x20 || v91 - v5 + (v90 << 6) + v49 > 0x200)
      {
        v88 = 0;
      }

      else
      {
        v88 = 0;
        v108 = 0;
        v109 = v49;
        do
        {
          v110 = 64 - v91;
          if (64 - v91 >= v109)
          {
            v110 = v109;
          }

          v88 |= ((*(v4 + 8 * v90) >> v91) & ~(-1 << v110)) << v108;
          v108 += v110;
          v111 = v110 + v91;
          v90 += v111 >> 6;
          v91 = v111 & 0x3F;
          v109 -= v110;
        }

        while (v109);
      }

      v97[21] = v88;
      v89 += v49;
    }

    v87 = (v91 | (v90 << 6)) + v86 - v89;
    ++v83;
  }

  while (v83 != 7);
  v112 = 0;
  v113 = 0;
  v114 = a2 + 112;
  do
  {
    v119 = *&kDQuadParamTable[160 * *(&v227 + v112) + 2 + 10 * v231[v112 / 4]];
    v120 = v217[v112 / 4];
    if (v119 >> v120 <= 1)
    {
      result = 1;
    }

    else
    {
      result = v119 >> v120;
    }

    v121 = *(&__b + v112);
    v122 = result >> 1;
    if (result >> 1 >= (1 << (v121 - v218[v112 / 4])) >> 1)
    {
      v123 = (1 << (v121 - v218[v112 / 4])) >> 1;
    }

    else
    {
      v123 = result >> 1;
    }

    v124 = (1 << (v121 - 1));
    v125 = *(&v215 + v112);
    v126 = v124 - v125;
    v127 = 1 << v121;
    v128 = (1 << v121) + 0xFFFFFFFFLL;
    if (v125)
    {
      v129 = v123;
    }

    else
    {
      v129 = 0;
    }

    v130 = v125 == v124;
    v131 = v121 == 16;
    if (v121 == 16)
    {
      v132 = 31744;
    }

    else
    {
      v132 = 2139095040;
    }

    if (v121 == 16)
    {
      v133 = 64512;
    }

    else
    {
      v133 = 4286578688;
    }

    v134 = 2143289344;
    if (v131)
    {
      v134 = 32256;
    }

    v135 = 65024;
    if (!v131)
    {
      v135 = 4290772992;
    }

    v136 = (v133 - 1);
    if (v120)
    {
      v137 = v119 + v125;
      v138 = -1 << v120;
      v139 = *(&v213 + v112);
      v140 = v126 / result;
      if (!v139)
      {
        v148 = 0;
        v143 = v129;
        v142 = v125 == v124;
        goto LABEL_266;
      }

      v141 = *(v212 + v113);
      v142 = v140 == v141;
      if (v125 | v141)
      {
        if (v137 >= v127 && (v138 ^ v141) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v148 = 1;
          v143 = v127 - 1;
          goto LABEL_266;
        }

        v143 = v122 + result * v141;
      }

      else
      {
        v143 = 0;
      }

      v148 = 1;
LABEL_266:
      v151 = v143 + v125;
      v152 = v151;
      if (a3 == 4)
      {
        v153 = v151 < v132 || v151 >= v134;
        v152 = (v132 - 1);
        if (v153)
        {
          v154 = v151 < v134 || v151 >= v124;
          v152 = v124;
          if (v154)
          {
            if (v151 < v135 && v151 >= v133)
            {
              v152 = (v133 - 1);
            }

            else
            {
              v152 = v151;
            }
          }
        }
      }

      if (v152 >= v127)
      {
        v156 = v127 - 1;
      }

      else
      {
        v156 = v152;
      }

      if (v142)
      {
        v157 = 0;
      }

      else
      {
        v157 = v156 ^ v124;
      }

      if (v84 != 1)
      {
        v157 = v156;
      }

      *(a2 + v112) = v157;
      if (v139 == 1)
      {
        v158 = v129;
        v159 = v125 == v124;
      }

      else
      {
        v160 = *((v212 | (4 * v148)) + v113);
        v159 = v140 == v160;
        if (v125 | v160)
        {
          if (v137 < v127 || (v158 = v127 - 1, (v138 ^ v160) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v158 = v122 + result * v160;
          }
        }

        else
        {
          v158 = 0;
        }

        ++v148;
      }

      v161 = v158 + v125;
      v162 = v161;
      if (a3 == 4)
      {
        v163 = v161 < v132 || v161 >= v134;
        v162 = (v132 - 1);
        if (v163)
        {
          v164 = v161 < v134 || v161 >= v124;
          v162 = v124;
          if (v164)
          {
            if (v161 < v135 && v161 >= v133)
            {
              v162 = (v133 - 1);
            }

            else
            {
              v162 = v161;
            }
          }
        }
      }

      if (v162 >= v127)
      {
        v166 = v127 - 1;
      }

      else
      {
        v166 = v162;
      }

      if (v159)
      {
        v167 = 0;
      }

      else
      {
        v167 = v166 ^ v124;
      }

      if (v84 != 1)
      {
        v167 = v166;
      }

      *(v114 + v112 - 96) = v167;
      if (v139 == 2)
      {
        v168 = v129;
        v169 = v125 == v124;
      }

      else
      {
        v170 = *((v212 | (4 * v148)) + v113);
        v169 = v140 == v170;
        if (v125 | v170)
        {
          if (v137 < v127 || (v168 = v127 - 1, (v138 ^ v170) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v168 = v122 + result * v170;
          }
        }

        else
        {
          v168 = 0;
        }

        ++v148;
      }

      v171 = v168 + v125;
      v172 = v171;
      if (a3 == 4)
      {
        if (v171 < v132 || (v172 = (v132 - 1), v171 >= v134))
        {
          if (v171 < v134 || (v172 = v124, v171 >= v124))
          {
            if (v171 < v135 && v171 >= v133)
            {
              v172 = (v133 - 1);
            }

            else
            {
              v172 = v171;
            }
          }
        }
      }

      if (v172 >= v127)
      {
        v174 = v127 - 1;
      }

      else
      {
        v174 = v172;
      }

      if (v169)
      {
        v175 = 0;
      }

      else
      {
        v175 = v174 ^ v124;
      }

      if (v84 != 1)
      {
        v175 = v174;
      }

      *(v114 + v112 - 80) = v175;
      if (v139 == 3)
      {
        v176 = v129;
        v177 = v125 == v124;
      }

      else
      {
        v178 = *(v212 + 4 * v148 + v113);
        v177 = v140 == v178;
        if (v125 | v178)
        {
          if (v137 < v127 || (v176 = v127 - 1, (v138 ^ v178) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v176 = v122 + result * v178;
          }
        }

        else
        {
          v176 = 0;
        }

        ++v148;
      }

      v179 = v176 + v125;
      v180 = v179;
      if (a3 == 4)
      {
        if (v179 < v132 || (v180 = (v132 - 1), v179 >= v134))
        {
          if (v179 < v134 || (v180 = v124, v179 >= v124))
          {
            if (v179 < v135 && v179 >= v133)
            {
              v180 = (v133 - 1);
            }

            else
            {
              v180 = v179;
            }
          }
        }
      }

      if (v180 >= v127)
      {
        v182 = v127 - 1;
      }

      else
      {
        v182 = v180;
      }

      if (v177)
      {
        v183 = 0;
      }

      else
      {
        v183 = v182 ^ v124;
      }

      if (v84 != 1)
      {
        v183 = v182;
      }

      *(v114 + v112 - 64) = v183;
      if (v139 == 4)
      {
        v184 = v129;
        v185 = v125 == v124;
      }

      else
      {
        v186 = *(v212 + 4 * v148 + v113);
        v185 = v140 == v186;
        if (v125 | v186)
        {
          if (v137 < v127 || (v184 = v127 - 1, (v138 ^ v186) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v184 = v122 + result * v186;
          }
        }

        else
        {
          v184 = 0;
        }

        ++v148;
      }

      v187 = v184 + v125;
      v188 = v187;
      if (a3 == 4)
      {
        if (v187 < v132 || (v188 = (v132 - 1), v187 >= v134))
        {
          if (v187 < v134 || (v188 = v124, v187 >= v124))
          {
            if (v187 < v135 && v187 >= v133)
            {
              v188 = (v133 - 1);
            }

            else
            {
              v188 = v187;
            }
          }
        }
      }

      if (v188 >= v127)
      {
        v190 = v127 - 1;
      }

      else
      {
        v190 = v188;
      }

      if (v185)
      {
        v191 = 0;
      }

      else
      {
        v191 = v190 ^ v124;
      }

      if (v84 != 1)
      {
        v191 = v190;
      }

      *(v114 + v112 - 48) = v191;
      if (v139 == 5)
      {
        v192 = v129;
        v193 = v125 == v124;
      }

      else
      {
        v194 = *(v212 + 4 * v148 + v113);
        v193 = v140 == v194;
        if (v125 | v194)
        {
          if (v137 < v127 || (v192 = v127 - 1, (v138 ^ v194) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v192 = v122 + result * v194;
          }
        }

        else
        {
          v192 = 0;
        }

        ++v148;
      }

      v195 = v192 + v125;
      v196 = v195;
      if (a3 == 4)
      {
        if (v195 < v132 || (v196 = (v132 - 1), v195 >= v134))
        {
          if (v195 < v134 || (v196 = v124, v195 >= v124))
          {
            if (v195 < v135 && v195 >= v133)
            {
              v196 = (v133 - 1);
            }

            else
            {
              v196 = v195;
            }
          }
        }
      }

      if (v196 >= v127)
      {
        v198 = v127 - 1;
      }

      else
      {
        v198 = v196;
      }

      if (v193)
      {
        v199 = 0;
      }

      else
      {
        v199 = v198 ^ v124;
      }

      if (v84 != 1)
      {
        v199 = v198;
      }

      *(v114 + v112 - 32) = v199;
      if (v139 == 6)
      {
        v200 = v129;
        v201 = v125 == v124;
      }

      else
      {
        v202 = *(v212 + 4 * v148 + v113);
        v201 = v140 == v202;
        if (v125 | v202)
        {
          if (v137 < v127 || (v200 = v127 - 1, (v138 ^ v202) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v200 = v122 + result * v202;
          }
        }

        else
        {
          v200 = 0;
        }

        ++v148;
      }

      v203 = v200 + v125;
      v204 = v203;
      if (a3 == 4)
      {
        if (v203 < v132 || (v204 = (v132 - 1), v203 >= v134))
        {
          if (v203 < v134 || (v204 = v124, v203 >= v124))
          {
            if (v203 < v135 && v203 >= v133)
            {
              v204 = (v133 - 1);
            }

            else
            {
              v204 = v203;
            }
          }
        }
      }

      if (v204 >= v127)
      {
        v206 = v127 - 1;
      }

      else
      {
        v206 = v204;
      }

      if (v201)
      {
        v207 = 0;
      }

      else
      {
        v207 = v206 ^ v124;
      }

      if (v84 != 1)
      {
        v207 = v206;
      }

      *(v114 + v112 - 16) = v207;
      if (v139 != 7)
      {
        v208 = *(v212 + 4 * v148 + v113);
        v130 = v140 == v208;
        if (v125 | v208)
        {
          if (v137 >= v127 && (v138 ^ v208) == 0xFFFFFFFFFFFFFFFFLL)
          {
            v129 = v127 - 1;
          }

          else
          {
            v129 = v122 + result * v208;
          }
        }

        else
        {
          v129 = 0;
        }
      }

      v209 = v129 + v125;
      result = v129 + v125;
      if (a3 == 4)
      {
        if (v209 < v132 || (result = (v132 - 1), v209 >= v134))
        {
          if (v209 < v134 || (result = v124, v209 >= v124))
          {
            if (v209 < v135 && v209 >= v133)
            {
              result = (v133 - 1);
            }

            else
            {
              result = v129 + v125;
            }
          }
        }
      }

      if (result >= v127)
      {
        v117 = v127 - 1;
      }

      else
      {
        v117 = result;
      }

      v118 = v117 ^ v124;
      if (v130)
      {
        v118 = 0;
      }

      if (v84 == 1)
      {
        v117 = v118;
      }

      goto LABEL_210;
    }

    v145 = v134 <= v125 && v125 < v124;
    v147 = v125 >= v133 && v135 > v125;
    if (a3 == 4)
    {
      if (v125 < v132 || v134 <= v125)
      {
        if (v145)
        {
          if (v127 <= v124)
          {
            v117 = v128;
          }

          else
          {
            v117 = v124;
          }
        }

        else
        {
          if (v147)
          {
            v210 = v136;
          }

          else
          {
            v210 = *(&v215 + v112);
          }

          if (v210 >= v127)
          {
            v117 = v128;
          }

          else
          {
            v117 = v210;
          }
        }
      }

      else if (v127 <= (v132 - 1))
      {
        v117 = v128;
      }

      else
      {
        v117 = v132 - 1;
      }
    }

    else
    {
      if (v127 <= v125)
      {
        v117 = v127 - 1;
      }

      else
      {
        v117 = *(&v215 + v112);
      }

      v149 = v117 ^ v124;
      if (result > v126)
      {
        v149 = 0;
      }

      if (v84 == 1)
      {
        v117 = v149;
      }
    }

    v150 = v114 + v112;
    *(v150 - 112) = v117;
    *(v150 - 96) = v117;
    *(v150 - 80) = v117;
    *(v150 - 64) = v117;
    *(v150 - 48) = v117;
    *(v150 - 32) = v117;
    *(v150 - 16) = v117;
LABEL_210:
    *(v114 + v112) = v117;
    v113 += 28;
    v112 += 4;
  }

  while (v113 != 112);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v561 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    result = 0;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v11 = (a1 + a2);
    v11[6] = 0u;
    v11[7] = 0u;
    v11[4] = 0u;
    v11[5] = 0u;
    v11[2] = 0u;
    v11[3] = 0u;
    *v11 = 0u;
    v11[1] = 0u;
    v12 = (a1 + 2 * a2);
    v12[6] = 0u;
    v12[7] = 0u;
    v12[4] = 0u;
    v12[5] = 0u;
    v12[2] = 0u;
    v12[3] = 0u;
    *v12 = 0u;
    v12[1] = 0u;
    v13 = (a1 + a2 + 2 * a2);
    v13[6] = 0u;
    v13[7] = 0u;
    v13[4] = 0u;
    v13[5] = 0u;
    v13[2] = 0u;
    v13[3] = 0u;
    *v13 = 0u;
    v13[1] = 0u;
    return result;
  }

  v7 = a4;
  if (a4 < 0xF0)
  {
    if (a4 == 7)
    {
      v14 = *a3;
      *a1 = *a3;
      *(a1 + 16) = v14;
      *(a1 + 32) = v14;
      *(a1 + 48) = v14;
      *(a1 + 64) = v14;
      *(a1 + 80) = v14;
      *(a1 + 96) = v14;
      *(a1 + 112) = v14;
      v15 = (a1 + a2);
      *v15 = v14;
      v15[1] = v14;
      v15[2] = v14;
      v15[3] = v14;
      v15[4] = v14;
      v15[5] = v14;
      v15[6] = v14;
      v15[7] = v14;
      v16 = (a1 + 2 * a2);
      *v16 = v14;
      v16[1] = v14;
      v16[2] = v14;
      v16[3] = v14;
      v16[4] = v14;
      v16[5] = v14;
      v16[6] = v14;
      v16[7] = v14;
      v17 = (a1 + a2 + 2 * a2);
      *v17 = v14;
      v17[1] = v14;
      v17[2] = v14;
      v17[3] = v14;
      v17[4] = v14;
      v17[5] = v14;
      result = 16;
      v17[6] = v14;
      v17[7] = v14;
      return result;
    }

    v515.i8[8] = 0;
    v515.i64[0] = (8 * (a3 & 7)) | 0x800;
    *&v514 = 8 * (a3 & 7);
    *(&v514 + 1) = a3 & 0xFFFFFFFFFFFFFFF8;
    result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)20,AGX::AppleCompressionGen2::Vec<int>>(&v555, v560, &v554, &v514, a4);
    v20.i64[0] = 0x300000003;
    v20.i64[1] = 0x300000003;
    v21 = vbicq_s8(v560[0], vceqq_s32(vandq_s8(v555, v20), v20));
    v560[0] = v21;
    v556 = v21;
    v557 = v21;
    v558 = v21;
    v559 = v21;
    v22.i64[0] = 0x400000004;
    v22.i64[1] = 0x400000004;
    v23.i64[0] = 0x404040404040404;
    v23.i64[1] = 0x404040404040404;
    v24 = vandq_s8(vtstq_s32(v555, v22), v23);
    v25 = v514;
    if (vmaxvq_s8(v24) < 1)
    {
      v68.i64[0] = -1;
      v68.i64[1] = -1;
      v507 = v68;
      v508 = v68;
      v511 = v68;
      v512 = v68;
    }

    else
    {
      v26 = vmovl_u8(*&vpaddq_s8(v24, v24));
      v27 = vmovl_u16(*&vpaddq_s16(v26, v26));
      v28 = vpaddq_s32(v27, v27).u64[0];
      v29.i64[0] = v28;
      v29.i64[1] = HIDWORD(v28);
      v30 = v29;
      v31 = vaddvq_s64(v29);
      v32 = v31;
      v33 = v514 + v31;
      if (v515.i64[0])
      {
        v34 = v515.i64[0] >= v33;
      }

      else
      {
        v34 = 1;
      }

      v35 = v34;
      if (v31 <= 0x80 && (v35 & 1) != 0)
      {
        v19.i64[0] = 63;
        v36 = (*(&v514 + 1) + 8 * (v514 >> 6));
        v37 = vaddq_s64(vdupq_lane_s64(vandq_s8(v514, v19).i64[0], 0), vzip1q_s64(0, v30));
        v38 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v36, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v37)), vshlq_u64(vdupq_lane_s64(v36->i64[0], 0), vnegq_s64(v37)));
        if (((v514 & 0x3F) + v32) >= 0x81)
        {
          v38 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v36[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v37)), vshlq_u64(vdupq_laneq_s64(v36[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v37))), v38);
        }

        v25 = v33;
      }

      else
      {
        v515.i8[8] = 1;
        v38 = 0uLL;
      }

      v69 = vzip1_s32(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
      v70.i64[0] = v69.u32[0];
      v70.i64[1] = v69.u32[1];
      v71 = vshlq_u64(v38, vnegq_s64(v70));
      v72 = vuzp1q_s32(vzip1q_s64(v38, v71), vzip2q_s64(v38, v71));
      v73 = vshlq_u32(v72, vnegq_s32((*&v26 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v74 = vuzp1q_s16(vzip1q_s32(v72, v73), vzip2q_s32(v72, v73));
      v75 = vshlq_u16(v74, vnegq_s16((*&v24 & __PAIR128__(0xF8FFF8FFF8FFF8FFLL, 0xF8FFF8FFF8FFF8FFLL))));
      v76 = vuzp1q_s8(vzip1q_s16(v74, v75), vzip2q_s16(v74, v75));
      v75.i64[0] = 0x101010101010101;
      v75.i64[1] = 0x101010101010101;
      v77 = vshlq_s8(v75, v24);
      v75.i64[0] = -1;
      v75.i64[1] = -1;
      v78 = vqtbl1q_s8(vandq_s8(vaddq_s8(v77, v75), v76), xmmword_29D2F0F70);
      v76.i64[0] = vmovl_s8(*v78.i8).u64[0];
      v75.i64[0] = vmovl_s8(vdup_lane_s32(*v78.i8, 1)).u64[0];
      v79 = vmovl_s8(*&vdupq_laneq_s32(v78, 2)).u64[0];
      v78.i64[0] = vmovl_s8(*&vdupq_laneq_s32(v78, 3)).u64[0];
      v556 = vsubw_s16(v556, *v76.i8);
      v557 = vsubw_s16(v557, *v75.i8);
      v558 = vsubw_s16(v558, v79);
      v559 = vsubw_s16(v559, *v78.i8);
      v511 = vmovl_s16(vceqz_s16(v79));
      v512 = vmovl_s16(vceqz_s16(*v76.i8));
      v507 = vmovl_s16(vceqz_s16(*v78.i8));
      v508 = vmovl_s16(vceqz_s16(*v75.i8));
    }

    v80.i64[0] = 0x800000008;
    v80.i64[1] = 0x800000008;
    v81 = vbicq_s8(v21, vceqzq_s32(vandq_s8(v555, v80)));
    v80.i64[0] = vpaddq_s32(v81, v81).u64[0];
    v82.i64[0] = v80.u32[0];
    v82.i64[1] = v80.u32[1];
    v83 = v82;
    v84 = vaddvq_s64(v82);
    v85 = v84;
    v86 = v25 + v84;
    if (v515.i64[0])
    {
      v87 = v515.i64[0] >= v86;
    }

    else
    {
      v87 = 1;
    }

    v88 = v87;
    if (v84 <= 0x80 && (v88 & 1) != 0)
    {
      v89 = vaddq_s64(vdupq_n_s64(v25 & 0x3F), vzip1q_s64(0, v83));
      v90 = (*(&v514 + 1) + 8 * (v25 >> 6));
      v91 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v90, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v89)), vshlq_u64(vdupq_lane_s64(v90->i64[0], 0), vnegq_s64(v89)));
      if ((v25 & 0x3F) + v85 >= 0x81)
      {
        v91 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v90[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v89)), vshlq_u64(vdupq_laneq_s64(v90[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v89))), v91);
      }

      v25 = v86;
    }

    else
    {
      v515.i8[8] = 1;
      v91 = 0uLL;
    }

    v92 = vzip1_s32(*v81.i8, *&vextq_s8(v81, v81, 8uLL));
    v93.i64[0] = v92.u32[0];
    v93.i64[1] = v92.u32[1];
    v94 = vshlq_u64(v91, vnegq_s64(v93));
    v95 = vuzp1q_s32(vzip1q_s64(v91, v94), vzip2q_s64(v91, v94));
    v94.i64[0] = 0x1F0000001FLL;
    v94.i64[1] = 0x1F0000001FLL;
    v96.i64[0] = 0x2000000020;
    v96.i64[1] = 0x2000000020;
    v97 = vshlq_s32(vshlq_s32(v95, vsubq_s32(v96, v81)), vaddq_s32(v81, v94));
    v560[3] = v97;
    v98 = v555.i8[0] & 3;
    if (v98 == 2)
    {
      if (v515.i64[0])
      {
        v99 = v25 + 16;
        v100 = v25 + 32;
        if (v515.i64[0] >= v25 + 16)
        {
          v101 = v25 + 16;
        }

        else
        {
          v100 = v25 + 16;
          v101 = v25;
        }

        if (v515.i64[0] >= v100)
        {
          v25 = v100;
        }

        else
        {
          v25 = v101;
        }

        if (v515.i64[0] < v99 || v515.i64[0] < v100)
        {
          v515.i8[8] = 1;
        }
      }

      else
      {
        v25 += 32;
      }
    }

    v102 = vpaddq_s32(0, 0).u64[0];
    v103.i64[0] = v102;
    v103.i64[1] = HIDWORD(v102);
    v104 = v103;
    v105 = vaddvq_s64(v103);
    v106 = v105;
    v107 = v25 + v105;
    if (v515.i64[0])
    {
      v108 = v515.i64[0] >= v107;
    }

    else
    {
      v108 = 1;
    }

    v109 = v108;
    if (v105 <= 0x80 && (v109 & 1) != 0)
    {
      v110 = v25 & 0x3F;
      v111 = vaddq_s64(vdupq_n_s64(v110), vzip1q_s64(0, v104));
      v112 = *(&v514 + 1);
      v113 = (*(&v514 + 1) + 8 * (v25 >> 6));
      v114 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v113, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v111)), vshlq_u64(vdupq_lane_s64(v113->i64[0], 0), vnegq_s64(v111)));
      if (v110 + v106 >= 0x81)
      {
        v111 = vorrq_s8(vshlq_u64(vdupq_lane_s64(v113[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v111)), vshlq_u64(vdupq_laneq_s64(v113[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v111)));
        v114 = vorrq_s8(v111, v114);
      }

      *v111.i8 = vmovn_s64(v114);
      v115 = v515.i8[8];
      v25 = v107;
    }

    else
    {
      v111 = 0uLL;
      v115 = 1;
      v112 = *(&v514 + 1);
    }

    v116.i64[0] = 0x2000000020;
    v116.i64[1] = 0x2000000020;
    v117.i64[0] = 0x1F0000001FLL;
    v117.i64[1] = 0x1F0000001FLL;
    v505 = vshlq_s32(vshlq_s32(vzip1q_s32(v111, v111), v116), v117);
    v522 = v505;
    v118 = vpaddq_s32(v556, v556).u64[0];
    v119.i64[0] = v118;
    v119.i64[1] = HIDWORD(v118);
    v120 = v119;
    v121 = vaddvq_s64(v119);
    v122 = v121;
    v123 = v25 + v121;
    if (v515.i64[0])
    {
      v124 = v515.i64[0] >= v123;
    }

    else
    {
      v124 = 1;
    }

    v125 = v124;
    v126 = 0uLL;
    if (v121 <= 0x80 && v125)
    {
      v127 = v25 & 0x3F;
      v128 = vaddq_s64(vdupq_n_s64(v127), vzip1q_s64(0, v120));
      v129 = (v112 + 8 * (v25 >> 6));
      v130 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v129, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v128)), vshlq_u64(vdupq_lane_s64(v129->i64[0], 0), vnegq_s64(v128)));
      if (v127 + v122 >= 0x81)
      {
        v130 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v129[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v128)), vshlq_u64(vdupq_laneq_s64(v129[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v128))), v130);
      }
    }

    else
    {
      v115 = 1;
      v123 = v25;
      v130 = 0uLL;
    }

    v131 = vzip1_s32(*v556.i8, *&vextq_s8(v556, v556, 8uLL));
    v132.i64[0] = v131.u32[0];
    v132.i64[1] = v131.u32[1];
    v133 = vnegq_s64(v132);
    v134 = vshlq_u64(v130, v133);
    v135 = vaddq_s32(v556, v117);
    v136 = vsubq_s32(v116, v556);
    v137 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v130, v134), vzip2q_s64(v130, v134)), v136), v135);
    v523 = v137;
    v138 = v123 + v122;
    if (v515.i64[0])
    {
      v139 = v515.i64[0] >= v138;
    }

    else
    {
      v139 = 1;
    }

    v140 = v139;
    if (v122 <= 0x80 && v140)
    {
      v141 = v123 & 0x3F;
      v142 = vaddq_s64(vdupq_n_s64(v141), vzip1q_s64(0, v120));
      v143 = (v112 + 8 * (v123 >> 6));
      v126 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v143, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v142)), vshlq_u64(vdupq_lane_s64(v143->i64[0], 0), vnegq_s64(v142)));
      if (v141 + v122 >= 0x81)
      {
        v126 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v143[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v142)), vshlq_u64(vdupq_laneq_s64(v143[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v142))), v126);
      }
    }

    else
    {
      v115 = 1;
      v138 = v123;
    }

    v144 = vshlq_u64(v126, v133);
    v510 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v126, v144), vzip2q_s64(v126, v144)), v136), v135);
    v524 = v510;
    v145 = v138 + v122;
    if (v515.i64[0])
    {
      v146 = v515.i64[0] >= v145;
    }

    else
    {
      v146 = 1;
    }

    v147 = v146;
    v148 = 0uLL;
    if (v122 <= 0x80 && v147)
    {
      v149 = v138 & 0x3F;
      v150 = vaddq_s64(vdupq_n_s64(v149), vzip1q_s64(0, v120));
      v151 = (v112 + 8 * (v138 >> 6));
      v152 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v151, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v150)), vshlq_u64(vdupq_lane_s64(v151->i64[0], 0), vnegq_s64(v150)));
      if (v149 + v122 >= 0x81)
      {
        v152 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v151[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v150)), vshlq_u64(vdupq_laneq_s64(v151[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v150))), v152);
      }
    }

    else
    {
      v115 = 1;
      v145 = v138;
      v152 = 0uLL;
    }

    v153 = vshlq_u64(v152, v133);
    v509 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v152, v153), vzip2q_s64(v152, v153)), v136), v135);
    v525 = v509;
    v154 = v145 + v122;
    if (v515.i64[0])
    {
      v155 = v515.i64[0] >= v154;
    }

    else
    {
      v155 = 1;
    }

    v156 = v155;
    if (v122 <= 0x80 && v156)
    {
      v157 = v145 & 0x3F;
      v158 = vaddq_s64(vdupq_n_s64(v157), vzip1q_s64(0, v120));
      v159 = (v112 + 8 * (v145 >> 6));
      v148 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v159, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v158)), vshlq_u64(vdupq_lane_s64(v159->i64[0], 0), vnegq_s64(v158)));
      if (v157 + v122 >= 0x81)
      {
        v148 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v159[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v158)), vshlq_u64(vdupq_laneq_s64(v159[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v158))), v148);
      }
    }

    else
    {
      v115 = 1;
      v154 = v145;
    }

    v160 = vshlq_u64(v148, v133);
    v161 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v148, v160), vzip2q_s64(v148, v160)), v136), v135);
    v526 = v161;
    v162 = v154 + v122;
    if (v515.i64[0])
    {
      v163 = v515.i64[0] >= v162;
    }

    else
    {
      v163 = 1;
    }

    v164 = v163;
    v165 = 0uLL;
    if (v122 <= 0x80 && v164)
    {
      v166 = v154 & 0x3F;
      v167 = vaddq_s64(vdupq_n_s64(v166), vzip1q_s64(0, v120));
      v168 = (v112 + 8 * (v154 >> 6));
      v169 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v168, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v167)), vshlq_u64(vdupq_lane_s64(v168->i64[0], 0), vnegq_s64(v167)));
      if (v166 + v122 >= 0x81)
      {
        v169 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v168[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v167)), vshlq_u64(vdupq_laneq_s64(v168[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v167))), v169);
      }
    }

    else
    {
      v115 = 1;
      v162 = v154;
      v169 = 0uLL;
    }

    v170 = vshlq_u64(v169, v133);
    v171 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v169, v170), vzip2q_s64(v169, v170)), v136), v135);
    v527 = v171;
    v172 = v162 + v122;
    if (v515.i64[0])
    {
      v173 = v515.i64[0] >= v172;
    }

    else
    {
      v173 = 1;
    }

    v174 = v173;
    if (v122 <= 0x80 && v174)
    {
      v175 = v162 & 0x3F;
      v176 = vaddq_s64(vdupq_n_s64(v175), vzip1q_s64(0, v120));
      v177 = (v112 + 8 * (v162 >> 6));
      v165 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v177, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v176)), vshlq_u64(vdupq_lane_s64(v177->i64[0], 0), vnegq_s64(v176)));
      if (v175 + v122 >= 0x81)
      {
        v165 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v177[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v176)), vshlq_u64(vdupq_laneq_s64(v177[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v176))), v165);
      }
    }

    else
    {
      v115 = 1;
      v172 = v162;
    }

    v178 = vshlq_u64(v165, v133);
    v506 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v165, v178), vzip2q_s64(v165, v178)), v136), v135);
    v528 = v506;
    v179 = v172 + v122;
    if (v515.i64[0])
    {
      v180 = v515.i64[0] >= v179;
    }

    else
    {
      v180 = 1;
    }

    v181 = v180;
    v182 = 0uLL;
    if (v122 <= 0x80 && v181)
    {
      v183 = v172 & 0x3F;
      v184 = vaddq_s64(vdupq_n_s64(v183), vzip1q_s64(0, v120));
      v185 = (v112 + 8 * (v172 >> 6));
      v186 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v185, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v184)), vshlq_u64(vdupq_lane_s64(v185->i64[0], 0), vnegq_s64(v184)));
      if (v183 + v122 >= 0x81)
      {
        v186 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v185[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v184)), vshlq_u64(vdupq_laneq_s64(v185[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v184))), v186);
      }
    }

    else
    {
      v115 = 1;
      v179 = v172;
      v186 = 0uLL;
    }

    v187 = vshlq_u64(v186, v133);
    v504 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v186, v187), vzip2q_s64(v186, v187)), v136), v135);
    v529 = v504;
    v188 = vpaddq_s32(v557, v557).u64[0];
    v189.i64[0] = v188;
    v189.i64[1] = HIDWORD(v188);
    v190 = v189;
    v191 = vaddvq_s64(v189);
    v192 = v191;
    v193 = v179 + v191;
    if (v515.i64[0])
    {
      v194 = v515.i64[0] >= v193;
    }

    else
    {
      v194 = 1;
    }

    v195 = v194;
    if (v191 <= 0x80 && v195)
    {
      v196 = v179 & 0x3F;
      v197 = vaddq_s64(vdupq_n_s64(v196), vzip1q_s64(0, v190));
      v198 = (v112 + 8 * (v179 >> 6));
      v182 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v198, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v197)), vshlq_u64(vdupq_lane_s64(v198->i64[0], 0), vnegq_s64(v197)));
      if (v196 + v192 >= 0x81)
      {
        v182 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v198[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v197)), vshlq_u64(vdupq_laneq_s64(v198[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v197))), v182);
      }
    }

    else
    {
      v115 = 1;
      v193 = v179;
    }

    v199 = vzip1_s32(*v557.i8, *&vextq_s8(v557, v557, 8uLL));
    v200.i64[0] = v199.u32[0];
    v200.i64[1] = v199.u32[1];
    v201 = vnegq_s64(v200);
    v202 = vshlq_u64(v182, v201);
    v203 = vuzp1q_s32(vzip1q_s64(v182, v202), vzip2q_s64(v182, v202));
    v202.i64[0] = 0x1F0000001FLL;
    v202.i64[1] = 0x1F0000001FLL;
    v204 = vaddq_s32(v557, v202);
    v205.i64[0] = 0x2000000020;
    v205.i64[1] = 0x2000000020;
    v206 = vsubq_s32(v205, v557);
    v503 = vshlq_s32(vshlq_s32(v203, v206), v204);
    v530 = v503;
    v207 = v193 + v192;
    if (v515.i64[0])
    {
      v208 = v515.i64[0] >= v207;
    }

    else
    {
      v208 = 1;
    }

    v209 = v208;
    v210 = 0uLL;
    if (v192 <= 0x80 && v209)
    {
      v211 = v193 & 0x3F;
      v212 = vaddq_s64(vdupq_n_s64(v211), vzip1q_s64(0, v190));
      v213 = (v112 + 8 * (v193 >> 6));
      v214 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v213, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v212)), vshlq_u64(vdupq_lane_s64(v213->i64[0], 0), vnegq_s64(v212)));
      if (v211 + v192 >= 0x81)
      {
        v214 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v213[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v212)), vshlq_u64(vdupq_laneq_s64(v213[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v212))), v214);
      }
    }

    else
    {
      v115 = 1;
      v207 = v193;
      v214 = 0uLL;
    }

    v215 = vshlq_u64(v214, v201);
    v502 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v214, v215), vzip2q_s64(v214, v215)), v206), v204);
    v531 = v502;
    v216 = v207 + v192;
    if (v515.i64[0])
    {
      v217 = v515.i64[0] >= v216;
    }

    else
    {
      v217 = 1;
    }

    v218 = v217;
    if (v192 <= 0x80 && v218)
    {
      v219 = v207 & 0x3F;
      v220 = vaddq_s64(vdupq_n_s64(v219), vzip1q_s64(0, v190));
      v221 = (v112 + 8 * (v207 >> 6));
      v210 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v221, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v220)), vshlq_u64(vdupq_lane_s64(v221->i64[0], 0), vnegq_s64(v220)));
      if (v219 + v192 >= 0x81)
      {
        v210 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v221[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v220)), vshlq_u64(vdupq_laneq_s64(v221[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v220))), v210);
      }
    }

    else
    {
      v115 = 1;
      v216 = v207;
    }

    v222 = vshlq_u64(v210, v201);
    v501 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v210, v222), vzip2q_s64(v210, v222)), v206), v204);
    v532 = v501;
    v223 = v216 + v192;
    if (v515.i64[0])
    {
      v224 = v515.i64[0] >= v223;
    }

    else
    {
      v224 = 1;
    }

    v225 = v224;
    v226 = 0uLL;
    if (v192 <= 0x80 && v225)
    {
      v227 = v216 & 0x3F;
      v228 = vaddq_s64(vdupq_n_s64(v227), vzip1q_s64(0, v190));
      v229 = (v112 + 8 * (v216 >> 6));
      v230 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v229, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v228)), vshlq_u64(vdupq_lane_s64(v229->i64[0], 0), vnegq_s64(v228)));
      if (v227 + v192 >= 0x81)
      {
        v230 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v229[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v228)), vshlq_u64(vdupq_laneq_s64(v229[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v228))), v230);
      }
    }

    else
    {
      v115 = 1;
      v223 = v216;
      v230 = 0uLL;
    }

    v231 = vshlq_u64(v230, v201);
    v500 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v230, v231), vzip2q_s64(v230, v231)), v206), v204);
    v533 = v500;
    v232 = v223 + v192;
    if (v515.i64[0])
    {
      v233 = v515.i64[0] >= v232;
    }

    else
    {
      v233 = 1;
    }

    v234 = v233;
    if (v192 <= 0x80 && v234)
    {
      v235 = v223 & 0x3F;
      v236 = vaddq_s64(vdupq_n_s64(v235), vzip1q_s64(0, v190));
      v237 = (v112 + 8 * (v223 >> 6));
      v226 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v237, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v236)), vshlq_u64(vdupq_lane_s64(v237->i64[0], 0), vnegq_s64(v236)));
      if (v235 + v192 >= 0x81)
      {
        v226 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v237[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v236)), vshlq_u64(vdupq_laneq_s64(v237[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v236))), v226);
      }
    }

    else
    {
      v115 = 1;
      v232 = v223;
    }

    v238 = vshlq_u64(v226, v201);
    v239 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v226, v238), vzip2q_s64(v226, v238)), v206), v204);
    v534 = v239;
    v240 = v232 + v192;
    if (v515.i64[0])
    {
      v241 = v515.i64[0] >= v240;
    }

    else
    {
      v241 = 1;
    }

    v242 = v241;
    v243 = 0uLL;
    if (v192 <= 0x80 && v242)
    {
      v244 = v232 & 0x3F;
      v245 = vaddq_s64(vdupq_n_s64(v244), vzip1q_s64(0, v190));
      v246 = (v112 + 8 * (v232 >> 6));
      v247 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v246, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v245)), vshlq_u64(vdupq_lane_s64(v246->i64[0], 0), vnegq_s64(v245)));
      if (v244 + v192 >= 0x81)
      {
        v247 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v246[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v245)), vshlq_u64(vdupq_laneq_s64(v246[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v245))), v247);
      }
    }

    else
    {
      v115 = 1;
      v240 = v232;
      v247 = 0uLL;
    }

    v248 = vshlq_u64(v247, v201);
    v249 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v247, v248), vzip2q_s64(v247, v248)), v206), v204);
    v535 = v249;
    v250 = v240 + v192;
    if (v515.i64[0])
    {
      v251 = v515.i64[0] >= v250;
    }

    else
    {
      v251 = 1;
    }

    v252 = v251;
    if (v192 <= 0x80 && v252)
    {
      v253 = v240 & 0x3F;
      v254 = vaddq_s64(vdupq_n_s64(v253), vzip1q_s64(0, v190));
      v255 = (v112 + 8 * (v240 >> 6));
      v243 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v255, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v254)), vshlq_u64(vdupq_lane_s64(v255->i64[0], 0), vnegq_s64(v254)));
      if (v253 + v192 >= 0x81)
      {
        v243 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v255[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v254)), vshlq_u64(vdupq_laneq_s64(v255[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v254))), v243);
      }
    }

    else
    {
      v115 = 1;
      v250 = v240;
    }

    v256 = vshlq_u64(v243, v201);
    v257 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v243, v256), vzip2q_s64(v243, v256)), v206), v204);
    v536 = v257;
    v258 = v250 + v192;
    if (v515.i64[0])
    {
      v259 = v515.i64[0] >= v258;
    }

    else
    {
      v259 = 1;
    }

    v260 = v259;
    v261 = 0uLL;
    if (v192 <= 0x80 && v260)
    {
      v262 = v250 & 0x3F;
      v263 = vaddq_s64(vdupq_n_s64(v262), vzip1q_s64(0, v190));
      v264 = (v112 + 8 * (v250 >> 6));
      v265 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v264, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v263)), vshlq_u64(vdupq_lane_s64(v264->i64[0], 0), vnegq_s64(v263)));
      if (v262 + v192 >= 0x81)
      {
        v265 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v264[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v263)), vshlq_u64(vdupq_laneq_s64(v264[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v263))), v265);
      }
    }

    else
    {
      v115 = 1;
      v258 = v250;
      v265 = 0uLL;
    }

    v266 = vshlq_u64(v265, v201);
    v267 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v265, v266), vzip2q_s64(v265, v266)), v206), v204);
    v537 = v267;
    v268 = vpaddq_s32(v558, v558).u64[0];
    v269.i64[0] = v268;
    v269.i64[1] = HIDWORD(v268);
    v270 = v269;
    v271 = vaddvq_s64(v269);
    v272 = v271;
    v273 = v258 + v271;
    if (v515.i64[0])
    {
      v274 = v515.i64[0] >= v273;
    }

    else
    {
      v274 = 1;
    }

    v275 = v274;
    if (v271 <= 0x80 && v275)
    {
      v276 = v258 & 0x3F;
      v277 = vaddq_s64(vdupq_n_s64(v276), vzip1q_s64(0, v270));
      v278 = (v112 + 8 * (v258 >> 6));
      v261 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v278, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v277)), vshlq_u64(vdupq_lane_s64(v278->i64[0], 0), vnegq_s64(v277)));
      if (v276 + v272 >= 0x81)
      {
        v261 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v278[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v277)), vshlq_u64(vdupq_laneq_s64(v278[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v277))), v261);
      }
    }

    else
    {
      v115 = 1;
      v273 = v258;
    }

    v279 = vzip1_s32(*v558.i8, *&vextq_s8(v558, v558, 8uLL));
    v280.i64[0] = v279.u32[0];
    v280.i64[1] = v279.u32[1];
    v281 = vnegq_s64(v280);
    v282 = vshlq_u64(v261, v281);
    v283 = vuzp1q_s32(vzip1q_s64(v261, v282), vzip2q_s64(v261, v282));
    v282.i64[0] = 0x1F0000001FLL;
    v282.i64[1] = 0x1F0000001FLL;
    v284 = vaddq_s32(v558, v282);
    v285.i64[0] = 0x2000000020;
    v285.i64[1] = 0x2000000020;
    v286 = vsubq_s32(v285, v558);
    v287 = vshlq_s32(vshlq_s32(v283, v286), v284);
    v538 = v287;
    v288 = v273 + v272;
    if (v515.i64[0])
    {
      v289 = v515.i64[0] >= v288;
    }

    else
    {
      v289 = 1;
    }

    v290 = v289;
    v291 = 0uLL;
    if (v272 <= 0x80 && v290)
    {
      v292 = v273 & 0x3F;
      v293 = vaddq_s64(vdupq_n_s64(v292), vzip1q_s64(0, v270));
      v294 = (v112 + 8 * (v273 >> 6));
      v295 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v294, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v293)), vshlq_u64(vdupq_lane_s64(v294->i64[0], 0), vnegq_s64(v293)));
      if (v292 + v272 >= 0x81)
      {
        v295 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v294[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v293)), vshlq_u64(vdupq_laneq_s64(v294[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v293))), v295);
      }
    }

    else
    {
      v115 = 1;
      v288 = v273;
      v295 = 0uLL;
    }

    v296 = vshlq_u64(v295, v281);
    v297 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v295, v296), vzip2q_s64(v295, v296)), v286), v284);
    v539 = v297;
    v298 = v288 + v272;
    if (v515.i64[0])
    {
      v299 = v515.i64[0] >= v298;
    }

    else
    {
      v299 = 1;
    }

    v300 = v299;
    if (v272 <= 0x80 && v300)
    {
      v301 = v288 & 0x3F;
      v302 = vaddq_s64(vdupq_n_s64(v301), vzip1q_s64(0, v270));
      v303 = (v112 + 8 * (v288 >> 6));
      v291 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v303, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v302)), vshlq_u64(vdupq_lane_s64(v303->i64[0], 0), vnegq_s64(v302)));
      if (v301 + v272 >= 0x81)
      {
        v291 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v303[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v302)), vshlq_u64(vdupq_laneq_s64(v303[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v302))), v291);
      }
    }

    else
    {
      v115 = 1;
      v298 = v288;
    }

    v304 = vshlq_u64(v291, v281);
    v305 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v291, v304), vzip2q_s64(v291, v304)), v286), v284);
    v540 = v305;
    v306 = v298 + v272;
    if (v515.i64[0])
    {
      v307 = v515.i64[0] >= v306;
    }

    else
    {
      v307 = 1;
    }

    v308 = v307;
    v309 = 0uLL;
    if (v272 <= 0x80 && v308)
    {
      v310 = v298 & 0x3F;
      v311 = vaddq_s64(vdupq_n_s64(v310), vzip1q_s64(0, v270));
      v312 = (v112 + 8 * (v298 >> 6));
      v313 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v312, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v311)), vshlq_u64(vdupq_lane_s64(v312->i64[0], 0), vnegq_s64(v311)));
      if (v310 + v272 >= 0x81)
      {
        v313 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v312[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v311)), vshlq_u64(vdupq_laneq_s64(v312[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v311))), v313);
      }
    }

    else
    {
      v115 = 1;
      v306 = v298;
      v313 = 0uLL;
    }

    v314 = vshlq_u64(v313, v281);
    v315 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v313, v314), vzip2q_s64(v313, v314)), v286), v284);
    v541 = v315;
    v316 = v306 + v272;
    if (v515.i64[0])
    {
      v317 = v515.i64[0] >= v316;
    }

    else
    {
      v317 = 1;
    }

    v318 = v317;
    if (v272 <= 0x80 && v318)
    {
      v319 = v306 & 0x3F;
      v320 = vaddq_s64(vdupq_n_s64(v319), vzip1q_s64(0, v270));
      v321 = (v112 + 8 * (v306 >> 6));
      v309 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v321, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v320)), vshlq_u64(vdupq_lane_s64(v321->i64[0], 0), vnegq_s64(v320)));
      if (v319 + v272 >= 0x81)
      {
        v309 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v321[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v320)), vshlq_u64(vdupq_laneq_s64(v321[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v320))), v309);
      }
    }

    else
    {
      v115 = 1;
      v316 = v306;
    }

    v322 = vshlq_u64(v309, v281);
    v323 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v309, v322), vzip2q_s64(v309, v322)), v286), v284);
    v542 = v323;
    v324 = v316 + v272;
    if (v515.i64[0])
    {
      v325 = v515.i64[0] >= v324;
    }

    else
    {
      v325 = 1;
    }

    v326 = v325;
    v327 = 0uLL;
    if (v272 <= 0x80 && v326)
    {
      v328 = v316 & 0x3F;
      v329 = vaddq_s64(vdupq_n_s64(v328), vzip1q_s64(0, v270));
      v330 = (v112 + 8 * (v316 >> 6));
      v331 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v330, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v329)), vshlq_u64(vdupq_lane_s64(v330->i64[0], 0), vnegq_s64(v329)));
      if (v328 + v272 >= 0x81)
      {
        v331 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v330[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v329)), vshlq_u64(vdupq_laneq_s64(v330[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v329))), v331);
      }
    }

    else
    {
      v115 = 1;
      v324 = v316;
      v331 = 0uLL;
    }

    v332 = vshlq_u64(v331, v281);
    v333 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v331, v332), vzip2q_s64(v331, v332)), v286), v284);
    v543 = v333;
    v334 = v324 + v272;
    if (v515.i64[0])
    {
      v335 = v515.i64[0] >= v334;
    }

    else
    {
      v335 = 1;
    }

    v336 = v335;
    if (v272 <= 0x80 && v336)
    {
      v337 = v324 & 0x3F;
      v338 = vaddq_s64(vdupq_n_s64(v337), vzip1q_s64(0, v270));
      v339 = (v112 + 8 * (v324 >> 6));
      v327 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v339, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v338)), vshlq_u64(vdupq_lane_s64(v339->i64[0], 0), vnegq_s64(v338)));
      if (v337 + v272 >= 0x81)
      {
        v327 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v339[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v338)), vshlq_u64(vdupq_laneq_s64(v339[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v338))), v327);
      }
    }

    else
    {
      v115 = 1;
      v334 = v324;
    }

    v340 = vshlq_u64(v327, v281);
    v341 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v327, v340), vzip2q_s64(v327, v340)), v286), v284);
    v544 = v341;
    v342 = v334 + v272;
    if (v515.i64[0])
    {
      v343 = v515.i64[0] >= v342;
    }

    else
    {
      v343 = 1;
    }

    v344 = v343;
    v345 = 0uLL;
    if (v272 <= 0x80 && v344)
    {
      v346 = v334 & 0x3F;
      v347 = vaddq_s64(vdupq_n_s64(v346), vzip1q_s64(0, v270));
      v348 = (v112 + 8 * (v334 >> 6));
      v349 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v348, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v347)), vshlq_u64(vdupq_lane_s64(v348->i64[0], 0), vnegq_s64(v347)));
      if (v346 + v272 >= 0x81)
      {
        v349 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v348[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v347)), vshlq_u64(vdupq_laneq_s64(v348[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v347))), v349);
      }
    }

    else
    {
      v115 = 1;
      v342 = v334;
      v349 = 0uLL;
    }

    v350 = vshlq_u64(v349, v281);
    v351 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v349, v350), vzip2q_s64(v349, v350)), v286), v284);
    v545 = v351;
    v350.i64[0] = vpaddq_s32(v559, v559).u64[0];
    v352.i64[0] = v350.u32[0];
    v352.i64[1] = v350.u32[1];
    v353 = v352;
    v354 = vaddvq_s64(v352);
    v355 = v354;
    v356 = v342 + v354;
    if (v515.i64[0])
    {
      v357 = v515.i64[0] >= v356;
    }

    else
    {
      v357 = 1;
    }

    v358 = v357;
    if (v354 <= 0x80 && v358)
    {
      v359 = v342 & 0x3F;
      v360 = vaddq_s64(vdupq_n_s64(v359), vzip1q_s64(0, v353));
      v361 = (v112 + 8 * (v342 >> 6));
      v345 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v361, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v360)), vshlq_u64(vdupq_lane_s64(v361->i64[0], 0), vnegq_s64(v360)));
      if (v359 + v355 >= 0x81)
      {
        v345 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v361[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v360)), vshlq_u64(vdupq_laneq_s64(v361[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v360))), v345);
      }
    }

    else
    {
      v115 = 1;
      v356 = v342;
    }

    v362 = vzip1_s32(*v559.i8, *&vextq_s8(v559, v559, 8uLL));
    v363.i64[0] = v362.u32[0];
    v363.i64[1] = v362.u32[1];
    v364 = vnegq_s64(v363);
    v365 = vshlq_u64(v345, v364);
    v366 = vuzp1q_s32(vzip1q_s64(v345, v365), vzip2q_s64(v345, v365));
    v367.i64[0] = 0x1F0000001FLL;
    v367.i64[1] = 0x1F0000001FLL;
    v368 = vaddq_s32(v559, v367);
    v369.i64[0] = 0x2000000020;
    v369.i64[1] = 0x2000000020;
    v370 = vsubq_s32(v369, v559);
    v371 = vshlq_s32(vshlq_s32(v366, v370), v368);
    v546 = v371;
    v372 = v356 + v355;
    if (v515.i64[0])
    {
      v373 = v515.i64[0] >= v372;
    }

    else
    {
      v373 = 1;
    }

    v374 = v373;
    v375 = 0uLL;
    if (v355 <= 0x80 && v374)
    {
      v376 = v356 & 0x3F;
      v377 = vaddq_s64(vdupq_n_s64(v376), vzip1q_s64(0, v353));
      v378 = (v112 + 8 * (v356 >> 6));
      v379 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v378, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v377)), vshlq_u64(vdupq_lane_s64(v378->i64[0], 0), vnegq_s64(v377)));
      if (v376 + v355 >= 0x81)
      {
        v379 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v378[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v377)), vshlq_u64(vdupq_laneq_s64(v378[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v377))), v379);
      }
    }

    else
    {
      v115 = 1;
      v372 = v356;
      v379 = 0uLL;
    }

    v380 = vshlq_u64(v379, v364);
    v381 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v379, v380), vzip2q_s64(v379, v380)), v370), v368);
    v547 = v381;
    v382 = v372 + v355;
    if (v515.i64[0])
    {
      v383 = v515.i64[0] >= v382;
    }

    else
    {
      v383 = 1;
    }

    v384 = v383;
    if (v355 <= 0x80 && v384)
    {
      v385 = v372 & 0x3F;
      v386 = vaddq_s64(vdupq_n_s64(v385), vzip1q_s64(0, v353));
      v387 = (v112 + 8 * (v372 >> 6));
      v375 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v387, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v386)), vshlq_u64(vdupq_lane_s64(v387->i64[0], 0), vnegq_s64(v386)));
      if (v385 + v355 >= 0x81)
      {
        v375 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v387[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v386)), vshlq_u64(vdupq_laneq_s64(v387[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v386))), v375);
      }
    }

    else
    {
      v115 = 1;
      v382 = v372;
    }

    v388 = vshlq_u64(v375, v364);
    v389 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v375, v388), vzip2q_s64(v375, v388)), v370), v368);
    v548 = v389;
    v390 = v382 + v355;
    if (v515.i64[0])
    {
      v391 = v515.i64[0] >= v390;
    }

    else
    {
      v391 = 1;
    }

    v392 = v391;
    v393 = 0uLL;
    if (v355 <= 0x80 && v392)
    {
      v394 = v382 & 0x3F;
      v395 = vaddq_s64(vdupq_n_s64(v394), vzip1q_s64(0, v353));
      v396 = (v112 + 8 * (v382 >> 6));
      v397 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v396, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v395)), vshlq_u64(vdupq_lane_s64(v396->i64[0], 0), vnegq_s64(v395)));
      if (v394 + v355 >= 0x81)
      {
        v397 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v396[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v395)), vshlq_u64(vdupq_laneq_s64(v396[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v395))), v397);
      }
    }

    else
    {
      v115 = 1;
      v390 = v382;
      v397 = 0uLL;
    }

    v398 = vshlq_u64(v397, v364);
    v399 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v397, v398), vzip2q_s64(v397, v398)), v370), v368);
    v549 = v399;
    v400 = v390 + v355;
    if (v515.i64[0])
    {
      v401 = v515.i64[0] >= v400;
    }

    else
    {
      v401 = 1;
    }

    v402 = v401;
    if (v355 <= 0x80 && v402)
    {
      v403 = v390 & 0x3F;
      v404 = vaddq_s64(vdupq_n_s64(v403), vzip1q_s64(0, v353));
      v405 = (v112 + 8 * (v390 >> 6));
      v393 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v405, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v404)), vshlq_u64(vdupq_lane_s64(v405->i64[0], 0), vnegq_s64(v404)));
      if (v403 + v355 >= 0x81)
      {
        v393 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v405[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v404)), vshlq_u64(vdupq_laneq_s64(v405[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v404))), v393);
      }
    }

    else
    {
      v115 = 1;
      v400 = v390;
    }

    v406 = vshlq_u64(v393, v364);
    v407 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v393, v406), vzip2q_s64(v393, v406)), v370), v368);
    v550 = v407;
    v408 = v400 + v355;
    if (v515.i64[0])
    {
      v409 = v515.i64[0] >= v408;
    }

    else
    {
      v409 = 1;
    }

    v410 = v409;
    v411 = 0uLL;
    if (v355 <= 0x80 && v410)
    {
      v412 = v400 & 0x3F;
      v413 = vaddq_s64(vdupq_n_s64(v412), vzip1q_s64(0, v353));
      v414 = (v112 + 8 * (v400 >> 6));
      v415 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v414, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v413)), vshlq_u64(vdupq_lane_s64(v414->i64[0], 0), vnegq_s64(v413)));
      if (v412 + v355 >= 0x81)
      {
        v415 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v414[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v413)), vshlq_u64(vdupq_laneq_s64(v414[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v413))), v415);
      }
    }

    else
    {
      v115 = 1;
      v408 = v400;
      v415 = 0uLL;
    }

    v416 = vshlq_u64(v415, v364);
    v417 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v415, v416), vzip2q_s64(v415, v416)), v370), v368);
    v551 = v417;
    v418 = v408 + v355;
    if (v515.i64[0])
    {
      v419 = v515.i64[0] >= v418;
    }

    else
    {
      v419 = 1;
    }

    v420 = v419;
    if (v355 <= 0x80 && v420)
    {
      v421 = v408 & 0x3F;
      v422 = vaddq_s64(vdupq_n_s64(v421), vzip1q_s64(0, v353));
      v423 = (v112 + 8 * (v408 >> 6));
      v411 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v423, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v422)), vshlq_u64(vdupq_lane_s64(v423->i64[0], 0), vnegq_s64(v422)));
      if (v421 + v355 >= 0x81)
      {
        v411 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v423[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v422)), vshlq_u64(vdupq_laneq_s64(v423[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v422))), v411);
      }
    }

    else
    {
      v115 = 1;
      v418 = v408;
    }

    v424 = vshlq_u64(v411, v364);
    v425 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v411, v424), vzip2q_s64(v411, v424)), v370), v368);
    v552 = v425;
    v426 = v418 + v355;
    if (v515.i64[0])
    {
      v427 = v515.i64[0] >= v426;
    }

    else
    {
      v427 = 1;
    }

    v428 = v427;
    if (v355 > 0x80 || !v428)
    {
      goto LABEL_415;
    }

    v429 = vaddq_s64(vdupq_n_s64(v418 & 0x3F), vzip1q_s64(0, v353));
    v430 = (v112 + 8 * (v418 >> 6));
    v431 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v430, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v429)), vshlq_u64(vdupq_lane_s64(v430->i64[0], 0), vnegq_s64(v429)));
    if ((v418 & 0x3F) + v355 < 0x81)
    {
      if (v115)
      {
        goto LABEL_415;
      }

      v435 = vshlq_u64(v431, v364);
      v434 = vuzp1q_s32(vzip1q_s64(v431, v435), vzip2q_s64(v431, v435));
    }

    else
    {
      if (v115)
      {
        goto LABEL_415;
      }

      v432 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v430[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v429)), vshlq_u64(vdupq_laneq_s64(v430[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v429))), v431);
      v433 = vshlq_u64(v432, v364);
      v434 = vuzp1q_s32(vzip1q_s64(v432, v433), vzip2q_s64(v432, v433));
    }

    v436 = vshlq_s32(vshlq_s32(v434, v370), v368);
    if (v515.i64[0] + 8 * result - v426 - 2048 < 0x11 && v98 != 2)
    {
      v437.i64[0] = 0x1000000010;
      v437.i64[1] = 0x1000000010;
      v438 = vandq_s8(v97, v512);
      v439 = v554;
      v513 = v436;
      v440 = vaddq_s32(v554, v505);
      v441 = vaddq_s32(v554, vsubq_s32(v137, v438));
      v442 = vceqzq_s32(vandq_s8(v555, v437));
      v443 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v441, xmmword_29D2F11D0), v442), v441);
      v444 = vaddq_s32(v554, vsubq_s32(v161, v438));
      v445 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v444, xmmword_29D2F11D0), v442), v444);
      v446 = vaddq_s32(v554, vsubq_s32(v171, v438));
      *a1 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v440, xmmword_29D2F11D0), v442), v440);
      *(a1 + 16) = v443;
      *(a1 + 32) = v445;
      *(a1 + 48) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v446, xmmword_29D2F11D0), v442), v446);
      v447 = (a1 + 2 * a2);
      v448 = vandq_s8(v97, v511);
      v449 = vaddq_s32(v439, vsubq_s32(v287, v448));
      v450 = vaddq_s32(v439, vsubq_s32(v297, v448));
      v451 = v97;
      v452 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v449, xmmword_29D2F11D0), v442), v449);
      v453 = vaddq_s32(v439, vsubq_s32(v323, v448));
      v454 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v453, xmmword_29D2F11D0), v442), v453);
      v455 = vaddq_s32(v439, vsubq_s32(v333, v448));
      *(a1 + 64) = v452;
      *(a1 + 80) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v450, xmmword_29D2F11D0), v442), v450);
      *(a1 + 96) = v454;
      *(a1 + 112) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v455, xmmword_29D2F11D0), v442), v455);
      v456 = vaddq_s32(v439, vsubq_s32(v510, v438));
      v457 = vaddq_s32(v439, vsubq_s32(v509, v438));
      v458 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v456, xmmword_29D2F11D0), v442), v456);
      v459 = vaddq_s32(v439, vsubq_s32(v506, v438));
      v460 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v459, xmmword_29D2F11D0), v442), v459);
      v461 = vaddq_s32(v439, vsubq_s32(v504, v438));
      v462 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v461, xmmword_29D2F11D0), v442), v461);
      v463 = vaddq_s32(v439, vsubq_s32(v305, v448));
      v464 = vaddq_s32(v439, vsubq_s32(v315, v448));
      v465 = (a1 + a2);
      *v465 = v458;
      v465[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v457, xmmword_29D2F11D0), v442), v457);
      v465[2] = v460;
      v465[3] = v462;
      v466 = (a1 + a2 + 64);
      v467 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v463, xmmword_29D2F11D0), v442), v463);
      v468 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v464, xmmword_29D2F11D0), v442), v464);
      v469 = vaddq_s32(v439, vsubq_s32(v341, v448));
      v470 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v469, xmmword_29D2F11D0), v442), v469);
      v471 = vaddq_s32(v439, vsubq_s32(v351, v448));
      v472 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v471, xmmword_29D2F11D0), v442), v471);
      v473 = vandq_s8(v451, v508);
      v474 = vaddq_s32(v439, vsubq_s32(v503, v473));
      v475 = vaddq_s32(v439, vsubq_s32(v502, v473));
      *v466 = v467;
      v466[1] = v468;
      v466[2] = v470;
      v466[3] = v472;
      v476 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v474, xmmword_29D2F11D0), v442), v474);
      v477 = vaddq_s32(v439, vsubq_s32(v239, v473));
      v478 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v477, xmmword_29D2F11D0), v442), v477);
      v479 = vaddq_s32(v439, vsubq_s32(v249, v473));
      v480 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v479, xmmword_29D2F11D0), v442), v479);
      v481 = vandq_s8(v451, v507);
      v482 = v447 + 4;
      *v447 = v476;
      v447[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v475, xmmword_29D2F11D0), v442), v475);
      v447[2] = v478;
      v447[3] = v480;
      v483 = (v447 + a2);
      v484 = vaddq_s32(v439, vsubq_s32(v371, v481));
      v485 = vaddq_s32(v439, vsubq_s32(v381, v481));
      v486 = vaddq_s32(v439, vsubq_s32(v407, v481));
      v487 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v486, xmmword_29D2F11D0), v442), v486);
      v488 = vaddq_s32(v439, vsubq_s32(v417, v481));
      *v482 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v484, xmmword_29D2F11D0), v442), v484);
      v482[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v485, xmmword_29D2F11D0), v442), v485);
      v482[2] = v487;
      v482[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v488, xmmword_29D2F11D0), v442), v488);
      v489 = vaddq_s32(v439, vsubq_s32(v501, v473));
      v490 = vaddq_s32(v439, vsubq_s32(v500, v473));
      v491 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v489, xmmword_29D2F11D0), v442), v489);
      v492 = vaddq_s32(v439, vsubq_s32(v257, v473));
      v493 = vaddq_s32(v439, vsubq_s32(v267, v473));
      *v483 = v491;
      v483[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v490, xmmword_29D2F11D0), v442), v490);
      v483[2] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v492, xmmword_29D2F11D0), v442), v492);
      v483[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v493, xmmword_29D2F11D0), v442), v493);
      v483 += 4;
      v494 = vaddq_s32(v439, vsubq_s32(v389, v481));
      v495 = vaddq_s32(v439, vsubq_s32(v399, v481));
      v496 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v494, xmmword_29D2F11D0), v442), v494);
      v497 = vaddq_s32(v439, vsubq_s32(v425, v481));
      v498 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v497, xmmword_29D2F11D0), v442), v497);
      v499 = vaddq_s32(v439, vsubq_s32(v513, v481));
      *v483 = v496;
      v483[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v495, xmmword_29D2F11D0), v442), v495);
      v483[2] = v498;
      v483[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v499, xmmword_29D2F11D0), v442), v499);
      return result;
    }

LABEL_415:
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::writeErrorColorToSubblock(a1, a2);
    return 0;
  }

  if (a4)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v514, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v514, a5);
  }

  v522 = v514;
  v523 = v516;
  v526 = v515;
  v527 = v517;
  v530 = v518;
  v531 = v520;
  v534 = v519;
  v535 = v521;
  v18 = a3 + 64;
  if ((v7 & 2) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v18, &v514, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v18, &v514, a5);
  }

  v524 = v514;
  v525 = v516;
  v528 = v515;
  v529 = v517;
  v532 = v518;
  v533 = v520;
  v536 = v519;
  v537 = v521;
  v39 = a3 + 128;
  if ((v7 & 4) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v39, &v514, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v39, &v514, a5);
  }

  v538 = v514;
  v539 = v516;
  v542 = v515;
  v543 = v517;
  v546 = v518;
  v547 = v520;
  v550 = v519;
  v551 = v521;
  v40 = a3 + 192;
  if ((v7 & 8) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v40, &v514, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v40, &v514, a5);
  }

  v540 = v514;
  v541 = v516;
  v544 = v515;
  v545 = v517;
  v548 = v518;
  v549 = v520;
  v552 = v519;
  v553 = v521;
  v41 = v526;
  v42 = v527;
  v43 = v514;
  *a1 = v522;
  *(a1 + 16) = v41;
  v44 = v531;
  v45 = v534;
  v46 = v535;
  *(a1 + 32) = v530;
  *(a1 + 48) = v45;
  v47 = v539;
  v48 = v542;
  v49 = v543;
  *(a1 + 64) = v538;
  *(a1 + 80) = v48;
  v50 = v547;
  v51 = v550;
  v52 = v551;
  *(a1 + 96) = v546;
  *(a1 + 112) = v51;
  v53 = (a1 + a2);
  *v53 = v523;
  v53[1] = v42;
  v53[2] = v44;
  v53[3] = v46;
  v53[4] = v47;
  v53[5] = v49;
  v53[6] = v50;
  v53[7] = v52;
  v54 = (a1 + a2 + a2);
  v55 = v525;
  v56 = v528;
  v57 = v529;
  *v54 = v524;
  v54[1] = v56;
  v58 = v533;
  v59 = v536;
  v60 = v537;
  v54[2] = v532;
  v54[3] = v59;
  v61 = v544;
  v62 = v541;
  v54[4] = v43;
  v54[5] = v61;
  v63 = v549;
  v64 = v545;
  v65 = v552;
  v54[6] = v548;
  v54[7] = v65;
  v66 = (v54 + a2);
  *v66 = v55;
  v66[1] = v57;
  v66[2] = v58;
  v66[3] = v60;
  v66[4] = v62;
  v66[5] = v64;
  v67 = v553;
  result = 256;
  v66[6] = v63;
  v66[7] = v67;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v9 = (a3 + 2 * a4);
  v10 = v9 + 4;
  v12 = *v9;
  v13 = v9[1];
  v14 = v9[2];
  v15 = v9[3];
  v11 = (v9 + a4);
  v16 = *v11;
  v17 = v11[1];
  v18 = v11[2];
  v19 = v11[3];
  v11 += 4;
  v20 = vsubq_s32(*(a3 + a4), *a3);
  v21 = vsubq_s32(*(&a3[1] + a4), *a3);
  v22 = vsubq_s32(*(&a3[2] + a4), *a3);
  v23 = vsubq_s32(*(&a3[3] + a4), *a3);
  v24 = vsubq_s32(a3[4], *a3);
  v269 = vsubq_s32(a3[5], *a3);
  v25 = vsubq_s32(a3[6], *a3);
  v26 = vsubq_s32(a3[7], *a3);
  v27 = vsubq_s32(*(&a3[4] + a4), *a3);
  v28 = vsubq_s32(*(&a3[5] + a4), *a3);
  v29 = vsubq_s32(*(&a3[6] + a4), *a3);
  v30 = vsubq_s32(*(&a3[7] + a4), *a3);
  v31 = vsubq_s32(v12, *a3);
  v32 = vsubq_s32(v13, *a3);
  v33 = vsubq_s32(v14, *a3);
  v34 = vsubq_s32(v15, *a3);
  v35 = vsubq_s32(v16, *a3);
  v36 = vsubq_s32(v17, *a3);
  v37 = vsubq_s32(v18, *a3);
  v38 = vsubq_s32(v19, *a3);
  v270 = vsubq_s32(v10[1], *a3);
  v271 = vsubq_s32(*v10, *a3);
  v272 = vsubq_s32(v10[2], *a3);
  v39 = vsubq_s32(v10[3], *a3);
  v40 = vsubq_s32(*v11, *a3);
  v41 = vsubq_s32(v11[1], *a3);
  v273 = vsubq_s32(v11[2], *a3);
  v42 = vsubq_s32(v11[3], *a3);
  v43 = vsubq_s32(a3[2], *a3);
  v44 = vsubq_s32(a3[3], *a3);
  v317 = vsubq_s32(a3[1], *a3);
  v318 = v43;
  v45 = vminq_s32(v317, v43);
  v319 = v44;
  v320 = v20;
  v321 = v21;
  v322 = v22;
  v323 = v23;
  v324 = v24;
  v46 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v317, v43), v44), v20), v21), v22), v23), 0);
  v47 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v45, v44), v20), v21), v22), v23), 0);
  v48.i64[0] = 0x2000000020;
  v48.i64[1] = 0x2000000020;
  v325 = v269;
  v326 = v25;
  v49 = vmaxq_s32(vbicq_s8(vsubq_s32(v48, vclsq_s32(v46)), vceqzq_s32(v46)), vbicq_s8(vsubq_s32(v48, vclsq_s32(v47)), vceqzq_s32(v47)));
  v327 = v26;
  v328 = v27;
  v329 = v28;
  v330 = v29;
  v331 = v30;
  v50 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v24, v269), v25), v26), v27), v28);
  v51 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v24, v269), v25), v26), v27), v28);
  v52.i64[0] = 0x8000000080000000;
  v52.i64[1] = 0x8000000080000000;
  v53.i64[0] = 0x8000000080000000;
  v53.i64[1] = 0x8000000080000000;
  v54 = vmaxq_s32(vmaxq_s32(v50, v29), v30);
  v55 = vminq_s32(vminq_s32(v51, v29), v30);
  v56 = vmaxq_s32(vmaxq_s32(v46, v52), v54);
  v57 = vminq_s32(vminq_s32(v47, v53), v55);
  v332 = v31;
  v333 = v32;
  v58 = vmaxq_s32(vbicq_s8(vsubq_s32(v48, vclsq_s32(v54)), vceqzq_s32(v54)), vbicq_s8(vsubq_s32(v48, vclsq_s32(v55)), vceqzq_s32(v55)));
  v334 = v33;
  v335 = v34;
  v336 = v35;
  v337 = v36;
  v338 = v37;
  v339 = v38;
  v59 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v31, v32), v33), v34), v35), v36), v37), v38);
  v60 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v31, v32), v33), v34), v35), v36), v37), v38);
  v61 = vmaxq_s32(v56, v59);
  v62 = vminq_s32(v57, v60);
  v340 = v271;
  v341 = v270;
  v63 = vmaxq_s32(vbicq_s8(vsubq_s32(v48, vclsq_s32(v59)), vceqzq_s32(v59)), vbicq_s8(vsubq_s32(v48, vclsq_s32(v60)), vceqzq_s32(v60)));
  v342 = v272;
  v343 = v39;
  v344 = v40;
  v345 = v41;
  v346 = v273;
  v347 = v42;
  v64 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v271, v270), v272), v39), v40), v41), v273), v42);
  v65 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v271, v270), v272), v39), v40), v41), v273), v42);
  v356 = vmaxq_s32(v61, v64);
  v355 = vminq_s32(v62, v65);
  v66 = vmaxq_s32(vbicq_s8(vsubq_s32(v48, vclsq_s32(v64)), vceqzq_s32(v64)), vbicq_s8(vsubq_s32(v48, vclsq_s32(v65)), vceqzq_s32(v65)));
  v67 = vmaxq_s32(vmaxq_s32(v49, v58), vmaxq_s32(v63, v66));
  v68 = vclzq_s32(vsubq_s32(v356, v355));
  v69 = vsubq_s32(v48, v68);
  v70.i64[0] = 0x1F0000001FLL;
  v70.i64[1] = 0x1F0000001FLL;
  v71.i64[0] = -1;
  v71.i64[1] = -1;
  v72 = vcgtq_s32(v67, v69);
  v73 = vminq_s32(v69, v67);
  v357 = vandq_s8(vsubq_s32(vshlq_s32(v71, vsubq_s32(v70, v68)), v355), v72);
  v67.i64[0] = 0x800000008;
  v67.i64[1] = 0x800000008;
  v68.i64[0] = 0x300000003;
  v68.i64[1] = 0x300000003;
  v74 = vorrq_s8(vandq_s8(vceqzq_s32(v73), v68), vorrq_s8(vandq_s8(v72, v67), 0));
  v75.i64[0] = 0xF0000000FLL;
  v75.i64[1] = 0xF0000000FLL;
  v76 = vmaxq_s32(vminq_s32(vsubq_s32(v73, v58), v75), 0);
  v77 = vmaxq_s32(vminq_s32(vsubq_s32(v73, v63), v75), 0);
  v351 = vsubq_s32(v73, v76);
  v78 = vmaxq_s32(vminq_s32(vsubq_s32(v73, v66), v75), 0);
  v352 = vsubq_s32(v73, v77);
  v353 = vsubq_s32(v73, v78);
  v79 = vmaxq_s32(vminq_s32(vsubq_s32(v73, v49), v75), 0);
  v68.i64[0] = 0x400000004;
  v68.i64[1] = 0x400000004;
  v350 = vsubq_s32(v73, v79);
  v349 = vorrq_s8(vbicq_s8(v68, vceqq_s32(vaddq_s32(v78, v77), vnegq_s32(vaddq_s32(v79, v76)))), v74);
  v354 = v73;
  v316 = 0u;
  if (vmaxvq_s32(v73))
  {
    v85.i64[0] = 0x2000000020;
    v85.i64[1] = 0x2000000020;
    v283 = vsubq_s32(v325, vqtbl1q_s8(v325, xmmword_29D2F11D0));
    v284 = vsubq_s32(v326, vqtbl1q_s8(v326, xmmword_29D2F11D0));
    v285 = vsubq_s32(v327, vqtbl1q_s8(v327, xmmword_29D2F11D0));
    v286 = vsubq_s32(v328, vqtbl1q_s8(v328, xmmword_29D2F11D0));
    v287 = vsubq_s32(v329, vqtbl1q_s8(v329, xmmword_29D2F11D0));
    v288 = vsubq_s32(v330, vqtbl1q_s8(v330, xmmword_29D2F11D0));
    v289 = vsubq_s32(v331, vqtbl1q_s8(v331, xmmword_29D2F11D0));
    v291 = vsubq_s32(v333, vqtbl1q_s8(v333, xmmword_29D2F11D0));
    v292 = vsubq_s32(v334, vqtbl1q_s8(v334, xmmword_29D2F11D0));
    v293 = vsubq_s32(v335, vqtbl1q_s8(v335, xmmword_29D2F11D0));
    v274 = vsubq_s32(v316, vqtbl1q_s8(v316, xmmword_29D2F11D0));
    v275 = vsubq_s32(v317, vqtbl1q_s8(v317, xmmword_29D2F11D0));
    v276 = vsubq_s32(v318, vqtbl1q_s8(v318, xmmword_29D2F11D0));
    v277 = vsubq_s32(v319, vqtbl1q_s8(v319, xmmword_29D2F11D0));
    v278 = vsubq_s32(v320, vqtbl1q_s8(v320, xmmword_29D2F11D0));
    v279 = vsubq_s32(v321, vqtbl1q_s8(v321, xmmword_29D2F11D0));
    v281 = vsubq_s32(v323, vqtbl1q_s8(v323, xmmword_29D2F11D0));
    v282 = vsubq_s32(v324, vqtbl1q_s8(v324, xmmword_29D2F11D0));
    v290 = vsubq_s32(v332, vqtbl1q_s8(v332, xmmword_29D2F11D0));
    v280 = vsubq_s32(v322, vqtbl1q_s8(v322, xmmword_29D2F11D0));
    v86 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v274, v275), v276), v277), v278), v279), v280), v281);
    v87 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v274, v275), v276), v277), v278), v279), v280), v281);
    v88 = vmaxq_s32(v86, v52);
    v89 = vminq_s32(v87, v53);
    v90 = vmaxq_s32(vbicq_s8(vsubq_s32(v85, vclsq_s32(v86)), vceqzq_s32(v86)), vbicq_s8(vsubq_s32(v85, vclsq_s32(v87)), vceqzq_s32(v87)));
    v91 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v282, v283), v284), v285), v286), v287), v288), v289);
    v92 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v282, v283), v284), v285), v286), v287), v288), v289);
    v93 = vmaxq_s32(v88, v91);
    v94 = vminq_s32(v89, v92);
    v95 = vmaxq_s32(vbicq_s8(vsubq_s32(v85, vclsq_s32(v91)), vceqzq_s32(v91)), vbicq_s8(vsubq_s32(v85, vclsq_s32(v92)), vceqzq_s32(v92)));
    v294 = vsubq_s32(v336, vqtbl1q_s8(v336, xmmword_29D2F11D0));
    v295 = vsubq_s32(v337, vqtbl1q_s8(v337, xmmword_29D2F11D0));
    v296 = vsubq_s32(v338, vqtbl1q_s8(v338, xmmword_29D2F11D0));
    v297 = vsubq_s32(v339, vqtbl1q_s8(v339, xmmword_29D2F11D0));
    v96 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v290, v291), v292), v293), v294), v295), v296), v297);
    v97 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v290, v291), v292), v293), v294), v295), v296), v297);
    v98 = vmaxq_s32(v93, v96);
    v99 = vminq_s32(v94, v97);
    v298 = vsubq_s32(v340, vqtbl1q_s8(v340, xmmword_29D2F11D0));
    v299 = vsubq_s32(v341, vqtbl1q_s8(v341, xmmword_29D2F11D0));
    v100 = vmaxq_s32(vbicq_s8(vsubq_s32(v85, vclsq_s32(v96)), vceqzq_s32(v96)), vbicq_s8(vsubq_s32(v85, vclsq_s32(v97)), vceqzq_s32(v97)));
    v300 = vsubq_s32(v342, vqtbl1q_s8(v342, xmmword_29D2F11D0));
    v301 = vsubq_s32(v343, vqtbl1q_s8(v343, xmmword_29D2F11D0));
    v302 = vsubq_s32(v344, vqtbl1q_s8(v344, xmmword_29D2F11D0));
    v303 = vsubq_s32(v345, vqtbl1q_s8(v345, xmmword_29D2F11D0));
    v304 = vsubq_s32(v346, vqtbl1q_s8(v346, xmmword_29D2F11D0));
    v305 = vsubq_s32(v347, vqtbl1q_s8(v347, xmmword_29D2F11D0));
    v101 = vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(vmaxq_s32(v298, v299), v300), v301), v302), v303), v304), v305);
    v102 = vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(vminq_s32(v298, v299), v300), v301), v302), v303), v304), v305);
    v103 = vmaxq_s32(v98, v101);
    v104 = vminq_s32(v99, v102);
    v105 = vmaxq_s32(vbicq_s8(vsubq_s32(v85, vclsq_s32(v101)), vceqzq_s32(v101)), vbicq_s8(vsubq_s32(v85, vclsq_s32(v102)), vceqzq_s32(v102)));
    v106 = vmaxq_s32(vmaxq_s32(v90, v95), vmaxq_s32(v100, v105));
    v107 = vclzq_s32(vsubq_s32(v103, v104));
    v108 = vsubq_s32(v85, v107);
    v109 = vshlq_s32(v71, vsubq_s32(v70, v107));
    v110 = vcgtq_s32(v106, v108);
    v111 = vminq_s32(v108, v106);
    v107.i64[0] = 0x1000000010;
    v107.i64[1] = 0x1000000010;
    v108.i64[0] = 0x1800000018;
    v108.i64[1] = 0x1800000018;
    v314 = v103;
    v315 = vandq_s8(vsubq_s32(v109, v104), v110);
    v85.i64[0] = 0x300000003;
    v85.i64[1] = 0x300000003;
    v112 = vorrq_s8(vandq_s8(vceqzq_s32(v111), v85), vbslq_s8(v110, v108, v107));
    v113 = vmaxq_s32(vminq_s32(vsubq_s32(v111, v90), v75), 0);
    v114 = vmaxq_s32(vminq_s32(vsubq_s32(v111, v95), v75), 0);
    v115 = vmaxq_s32(vminq_s32(vsubq_s32(v111, v100), v75), 0);
    v116 = vmaxq_s32(vminq_s32(vsubq_s32(v111, v105), v75), 0);
    v308 = vsubq_s32(v111, v113);
    v309 = vsubq_s32(v111, v114);
    v312 = v111;
    v313 = v104;
    v310 = vsubq_s32(v111, v115);
    v311 = vsubq_s32(v111, v116);
    v117 = vceqq_s32(vaddq_s32(v116, v115), vnegq_s32(vaddq_s32(v113, v114)));
    v116.i64[0] = 0x400000004;
    v116.i64[1] = 0x400000004;
    v306 = vsubq_s32(v348, vqtbl1q_s8(v348, xmmword_29D2F11D0));
    v307 = vorrq_s8(vbicq_s8(v116, v117), v112);
    AGX::AppleCompressionGen2::CompressionState<AGX::AppleCompressionGen2::VecArray<int,8ul>,4ul>::select(&v316, &v274);
    v118.i64[1] = v350.i64[1];
    v119 = v354;
    v120 = vandq_s8(v357, vceqq_s32(v354, v350));
    v316 = vaddq_s32(v120, v316);
    v317 = vaddq_s32(v317, v120);
    v318 = vaddq_s32(v318, v120);
    v319 = vaddq_s32(v319, v120);
    v320 = vaddq_s32(v320, v120);
    v321 = vaddq_s32(v321, v120);
    v322 = vaddq_s32(v322, v120);
    v323 = vaddq_s32(v323, v120);
    v121 = vandq_s8(v357, vceqq_s32(v354, v351));
    v324 = vaddq_s32(v324, v121);
    v325 = vaddq_s32(v325, v121);
    v326 = vaddq_s32(v326, v121);
    v327 = vaddq_s32(v327, v121);
    v328 = vaddq_s32(v328, v121);
    v329 = vaddq_s32(v329, v121);
    v330 = vaddq_s32(v330, v121);
    v331 = vaddq_s32(v331, v121);
    v122 = vandq_s8(v357, vceqq_s32(v354, v352));
    v332 = vaddq_s32(v332, v122);
    v333 = vaddq_s32(v333, v122);
    v123 = vaddq_s32(v335, v122);
    v124 = vandq_s8(v357, vceqq_s32(v354, v353));
    *v125.i8 = vqmovn_u32(v349);
    v334 = vaddq_s32(v334, v122);
    v335 = v123;
    v126.i64[0] = 0x8000800080008;
    v126.i64[1] = 0x8000800080008;
    v336 = vaddq_s32(v336, v122);
    v337 = vaddq_s32(v337, v122);
    *v123.i8 = vqmovn_u32(v354);
    v127 = vbicq_s8(v123, vceqzq_s16(vandq_s8(v125, v126)));
    v338 = vaddq_s32(v338, v122);
    v339 = vaddq_s32(v339, v122);
    v122.i64[0] = 0x10001000100010;
    v122.i64[1] = 0x10001000100010;
    v123.i64[0] = 0x2000200020002;
    v123.i64[1] = 0x2000200020002;
    v340 = vaddq_s32(v340, v124);
    v341 = vaddq_s32(v341, v124);
    v128.i64[0] = 0x3000300030003;
    v128.i64[1] = 0x3000300030003;
    v129 = vceqq_s16(vandq_s8(v125, v128), v123);
    v123.i64[0] = 0x20002000200020;
    v123.i64[1] = 0x20002000200020;
    v342 = vaddq_s32(v342, v124);
    v343 = vaddq_s32(v343, v124);
    *v118.i8 = vqmovn_u32(v350);
    v130 = vaddq_s16(vaddq_s16(v127, vandq_s8(vshlq_n_s16(v125, 2uLL), v122)), vandq_s8(v129, v123));
    v122.i64[0] = 0x7000700070007;
    v122.i64[1] = 0x7000700070007;
    v131 = vaddq_s32(vaddq_s32(v352, v351), v353);
    *v131.i8 = vqmovn_u32(v131);
    v132 = vaddq_s16(vmlaq_s16(v130, v118, v122), vshlq_n_s16(v131, 3uLL));
    v133 = vpaddq_s16(v132, v132);
    v344 = vaddq_s32(v344, v124);
    v345 = vaddq_s32(v345, v124);
    v346 = vaddq_s32(v346, v124);
    v347 = vaddq_s32(v347, v124);
    if (((((vpaddq_s16(v133, v133).i16[0] + 175) >> 3) + 1) & 0x3FFFFFFFFFFFFFFELL) > 0x100)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3->i8, a4, a5, a6, a7);
      return 256;
    }

    else
    {
      v134 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v135 = 8 * (a1 & 7);
      if (v135)
      {
        v136 = *v134 & ~(-1 << v135);
      }

      else
      {
        v136 = 0;
      }

      if (v354.i32[0])
      {
        v138 = ((v354.i32[0] << 20) + 32505856) & 0x1F00000;
      }

      else
      {
        v138 = 0;
      }

      v139 = vand_s8(vshl_u32(*&vextq_s8(v349, v349, 8uLL), 0xF0000000ALL), 0xF800000007C00);
      v140 = v139.i32[1];
      v141 = v349.i8[0] & 0x1F | (32 * (v349.i8[4] & 0x1F)) | v139.i32[0];
      *a2 = 0;
      v142 = v348;
      v143 = ((v119.i32[1] << 25) + 1040187392) & 0x3E000000;
      if (!v119.i32[1])
      {
        v143 = 0;
      }

      v144 = vextq_s8(v119, v119, 8uLL).u64[0];
      v145 = vceqz_s32(v144);
      v146.i64[0] = v145.i32[0];
      v146.i64[1] = v145.i32[1];
      v147 = v146;
      v148.i64[0] = -1;
      v148.i64[1] = -1;
      v149 = vand_s8(vadd_s32(v144, -1), 0x1F0000001FLL);
      v146.i64[0] = v149.u32[0];
      v146.i64[1] = v149.u32[1];
      v150 = vbicq_s8(vshlq_u64(v146, xmmword_29D2F11E0), v147);
      v151 = vorrq_s8(vdupq_laneq_s64(v150, 1), v150).u64[0] | v141 | v138 | v143 | v140;
      v152 = (v151 << v135) | v136;
      if (v135 >= 0x18)
      {
        *v134 = v152;
        v152 = v151 >> (-8 * (a1 & 7u));
      }

      v153 = (v135 + 40) & 0x38;
      *(v134 + (((v135 + 40) >> 3) & 8)) = v152 | (v142.i64[0] << v153);
      v154 = v142.i64[0] >> -v153;
      if (((v135 + 40) & 0x38) == 0)
      {
        v154 = 0;
      }

      v155 = (v135 + 104) & 0x38;
      *(v134 + (((v135 + 104) >> 3) & 0x18)) = v154 | (v142.i64[1] << v155);
      if (((v135 + 104) & 0x38) != 0)
      {
        v156 = v142.i64[1] >> -v155;
      }

      else
      {
        v156 = 0;
      }

      v157 = v135 + 168;
      v158.i64[1] = v353.i64[1];
      v159 = vsubq_s32(v354, v350);
      v160 = vsubq_s32(v354, v351);
      v161 = vsubq_s32(v354, v353);
      *v158.i8 = vqmovn_u32(v159);
      *v158.i8 = vqmovn_u16(v158);
      *v159.i8 = vqmovn_u32(v160);
      *v159.i8 = vqmovn_u16(v159);
      *v160.i8 = vqmovn_u32(vsubq_s32(v354, v352));
      *v160.i8 = vqmovn_u16(v160);
      *v161.i8 = vqmovn_u32(v161);
      *v161.i8 = vqmovn_u16(v161);
      v162 = vtrn1q_s8(v158, v159);
      v163 = vtrn2q_s8(v158, v159);
      v164 = vtrn1q_s8(v160, v161);
      v165 = vtrn2q_s8(v160, v161);
      v166 = vzip1q_s16(v162, v164);
      v167 = vtrn2q_s16(v162, v164);
      v168 = vzip1q_s16(v163, v165);
      v165.i64[0] = vzip1q_s32(v167, vtrn2q_s16(v163, v165)).u64[0];
      v167.i64[0] = 0x400000004;
      v167.i64[1] = 0x400000004;
      v169.i64[0] = 0x404040404040404;
      v169.i64[1] = 0x404040404040404;
      v170 = vandq_s8(vtstq_s32(v349, v167), v169);
      v169.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v169.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v171 = vshlq_u8(v148, vorrq_s8(v170, v169));
      v172 = vmovl_u8(vand_s8(*v171.i8, *&vzip1q_s32(v166, v168)));
      v173 = vmovl_u8(vand_s8(*&vextq_s8(v171, v171, 8uLL), *v165.i8));
      v174 = vmovl_u8(*v170.i8);
      v175 = vmovl_high_u8(v170);
      v176 = vpaddq_s16(vshlq_u16(v172, vtrn1q_s16(0, v174)), vshlq_u16(v173, vtrn1q_s16(0, v175)));
      v177 = vpaddq_s16(v174, v175);
      v178 = vmovl_u16(*v177.i8);
      v179 = vmovl_high_u16(v177);
      v180 = vpaddq_s32(vshlq_u32(vmovl_u16(*v176.i8), vtrn1q_s32(0, v178)), vshlq_u32(vmovl_high_u16(v176), vtrn1q_s32(0, v179)));
      v181 = vpaddq_s32(v178, v179);
      v182.i64[0] = v180.u32[0];
      v182.i64[1] = v180.u32[1];
      v183 = v182;
      v182.i64[0] = v180.u32[2];
      v182.i64[1] = v180.u32[3];
      v184 = v182;
      v182.i64[0] = v181.u32[0];
      v182.i64[1] = v181.u32[1];
      v185 = v182;
      v182.i64[0] = v181.u32[2];
      v182.i64[1] = v181.u32[3];
      v186 = vpaddq_s64(vshlq_u64(v183, vzip1q_s64(0, v185)), vshlq_u64(v184, vzip1q_s64(0, v182)));
      v187 = vpaddq_s64(v185, v182);
      v188 = (v135 + 168) & 0x38;
      v189 = (v186.i64[0] << ((v135 - 88) & 0x38)) | v156;
      if ((v187.i64[0] + v188) >= 0x40)
      {
        *(v134 + ((v157 >> 3) & 0x18)) = v189;
        v189 = v186.i64[0] >> -((v135 - 88) & 0x38);
        if (!v188)
        {
          v189 = 0;
        }
      }

      v190 = v187.i64[0] + v157;
      v191 = v189 | (v186.i64[1] << v190);
      if ((v190 & 0x3F) + v187.i64[1] >= 0x40)
      {
        *(v134 + ((v190 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v191;
        v191 = v186.i64[1] >> -(v190 & 0x3F);
        if ((v190 & 0x3F) == 0)
        {
          v191 = 0;
        }
      }

      v192 = v190 + v187.i64[1];
      v193.i64[0] = 0x800000008;
      v193.i64[1] = 0x800000008;
      v194 = vbicq_s8(v354, vceqzq_s32(vandq_s8(v349, v193)));
      v195.i64[0] = 0x1F0000001FLL;
      v195.i64[1] = 0x1F0000001FLL;
      v196.i64[0] = -1;
      v196.i64[1] = -1;
      v197 = vandq_s8(vshlq_u32(v196, vaddq_s32(v194, v195)), v357);
      v198.i64[0] = v197.u32[0];
      v198.i64[1] = v197.u32[1];
      v199 = v198;
      v198.i64[0] = v197.u32[2];
      v198.i64[1] = v197.u32[3];
      v200 = v198;
      v198.i64[0] = v194.u32[0];
      v198.i64[1] = v194.u32[1];
      v201 = v198;
      v198.i64[0] = v194.u32[2];
      v198.i64[1] = v194.u32[3];
      v202 = vpaddq_s64(vshlq_u64(v199, vzip1q_s64(0, v201)), vshlq_u64(v200, vzip1q_s64(0, v198)));
      v203 = vpaddq_s64(v201, v198);
      v204 = (v202.i64[0] << v192) | v191;
      if (v203.i64[0] + (v192 & 0x3F) >= 0x40)
      {
        *(v134 + ((v192 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v204;
        v204 = v202.i64[0] >> -(v192 & 0x3F);
        if ((v192 & 0x3F) == 0)
        {
          v204 = 0;
        }
      }

      v205 = v203.i64[0] + v192;
      v206 = v204 | (v202.i64[1] << v205);
      if ((v205 & 0x3F) + v203.i64[1] >= 0x40)
      {
        *(v134 + ((v205 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v206;
        v206 = v202.i64[1] >> -(v205 & 0x3F);
        if ((v205 & 0x3F) == 0)
        {
          v206 = 0;
        }
      }

      v207 = v205 + v203.i64[1];
      v208.i64[0] = 0x1F0000001FLL;
      v208.i64[1] = 0x1F0000001FLL;
      v209.i64[0] = -1;
      v209.i64[1] = -1;
      v210 = vandq_s8(vshlq_u32(v209, v208), v316);
      v211.i64[0] = v210.u32[0];
      v211.i64[1] = v210.u32[1];
      v212 = v211;
      v211.i64[0] = v210.u32[2];
      v211.i64[1] = v210.u32[3];
      v213 = vpaddq_s64(v212, v211);
      v214 = vpaddq_s64(0, 0);
      v215 = (v213.i64[0] << v207) | v206;
      if (v214.i64[0] + (v207 & 0x3F) >= 0x40)
      {
        *(v134 + ((v207 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v215;
        if ((v207 & 0x3F) != 0)
        {
          v215 = v213.i64[0] >> -(v207 & 0x3F);
        }

        else
        {
          v215 = 0;
        }
      }

      v216 = v214.i64[0] + v207;
      v217 = (v214.i64[0] + v207) & 0x3F;
      v218 = v215 | (v213.i64[1] << v216);
      if ((v217 + v214.i64[1]) >= 0x40)
      {
        *(v134 + ((v216 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v218;
        if (v217)
        {
          v218 = v213.i64[1] >> -v217;
        }

        else
        {
          v218 = 0;
        }
      }

      v219 = v216 + v214.i64[1];
      v220.i64[0] = 0x1F0000001FLL;
      v220.i64[1] = 0x1F0000001FLL;
      v221.i64[0] = -1;
      v221.i64[1] = -1;
      for (i = 16; i != 128; i += 16)
      {
        v223 = vandq_s8(vshlq_u32(v221, vaddq_s32(v350, v220)), *(&v316 + i));
        v224.i64[0] = v223.u32[0];
        v224.i64[1] = v223.u32[1];
        v225 = v224;
        v224.i64[0] = v223.u32[2];
        v224.i64[1] = v223.u32[3];
        v226 = v224;
        v224.i64[0] = v350.u32[0];
        v224.i64[1] = v350.u32[1];
        v227 = v224;
        v224.i64[0] = v350.u32[2];
        v224.i64[1] = v350.u32[3];
        v228 = vpaddq_s64(vshlq_u64(v225, vzip1q_s64(0, v227)), vshlq_u64(v226, vzip1q_s64(0, v224)));
        v229 = vpaddq_s64(v227, v224);
        v230 = (v228.i64[0] << v219) | v218;
        if (v229.i64[0] + (v219 & 0x3F) >= 0x40)
        {
          *(v134 + ((v219 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v230;
          v230 = v228.i64[0] >> -(v219 & 0x3F);
          if ((v219 & 0x3F) == 0)
          {
            v230 = 0;
          }
        }

        v231 = v229.i64[0] + v219;
        v218 = v230 | (v228.i64[1] << v231);
        if ((v231 & 0x3F) + v229.i64[1] >= 0x40)
        {
          *(v134 + ((v231 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v218;
          v218 = v228.i64[1] >> -(v231 & 0x3F);
          if ((v231 & 0x3F) == 0)
          {
            v218 = 0;
          }
        }

        v219 = v231 + v229.i64[1];
      }

      v232 = 0;
      v233.i64[0] = 0x1F0000001FLL;
      v233.i64[1] = 0x1F0000001FLL;
      v234.i64[0] = -1;
      v234.i64[1] = -1;
      do
      {
        v235 = vandq_s8(vshlq_u32(v234, vaddq_s32(v351, v233)), *(&v324 + v232));
        v236.i64[0] = v235.u32[0];
        v236.i64[1] = v235.u32[1];
        v237 = v236;
        v236.i64[0] = v235.u32[2];
        v236.i64[1] = v235.u32[3];
        v238 = v236;
        v236.i64[0] = v351.u32[0];
        v236.i64[1] = v351.u32[1];
        v239 = v236;
        v236.i64[0] = v351.u32[2];
        v236.i64[1] = v351.u32[3];
        v240 = vpaddq_s64(vshlq_u64(v237, vzip1q_s64(0, v239)), vshlq_u64(v238, vzip1q_s64(0, v236)));
        v241 = vpaddq_s64(v239, v236);
        v242 = (v240.i64[0] << v219) | v218;
        if (v241.i64[0] + (v219 & 0x3F) >= 0x40)
        {
          *(v134 + ((v219 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v242;
          v242 = v240.i64[0] >> -(v219 & 0x3F);
          if ((v219 & 0x3F) == 0)
          {
            v242 = 0;
          }
        }

        v243 = v241.i64[0] + v219;
        v218 = v242 | (v240.i64[1] << v243);
        if ((v243 & 0x3F) + v241.i64[1] >= 0x40)
        {
          *(v134 + ((v243 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v218;
          v218 = v240.i64[1] >> -(v243 & 0x3F);
          if ((v243 & 0x3F) == 0)
          {
            v218 = 0;
          }
        }

        v219 = v243 + v241.i64[1];
        v232 += 16;
      }

      while (v232 != 128);
      v244 = 0;
      v245.i64[0] = 0x1F0000001FLL;
      v245.i64[1] = 0x1F0000001FLL;
      v246.i64[0] = -1;
      v246.i64[1] = -1;
      do
      {
        v247 = vandq_s8(vshlq_u32(v246, vaddq_s32(v352, v245)), *(&v332 + v244));
        v248.i64[0] = v247.u32[0];
        v248.i64[1] = v247.u32[1];
        v249 = v248;
        v248.i64[0] = v247.u32[2];
        v248.i64[1] = v247.u32[3];
        v250 = v248;
        v248.i64[0] = v352.u32[0];
        v248.i64[1] = v352.u32[1];
        v251 = v248;
        v248.i64[0] = v352.u32[2];
        v248.i64[1] = v352.u32[3];
        v252 = vpaddq_s64(vshlq_u64(v249, vzip1q_s64(0, v251)), vshlq_u64(v250, vzip1q_s64(0, v248)));
        v253 = vpaddq_s64(v251, v248);
        v254 = (v252.i64[0] << v219) | v218;
        if (v253.i64[0] + (v219 & 0x3F) >= 0x40)
        {
          *(v134 + ((v219 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v254;
          v254 = v252.i64[0] >> -(v219 & 0x3F);
          if ((v219 & 0x3F) == 0)
          {
            v254 = 0;
          }
        }

        v255 = v253.i64[0] + v219;
        v218 = v254 | (v252.i64[1] << v255);
        if ((v255 & 0x3F) + v253.i64[1] >= 0x40)
        {
          *(v134 + ((v255 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v218;
          v218 = v252.i64[1] >> -(v255 & 0x3F);
          if ((v255 & 0x3F) == 0)
          {
            v218 = 0;
          }
        }

        v219 = v255 + v253.i64[1];
        v244 += 16;
      }

      while (v244 != 128);
      v256 = 0;
      v257.i64[0] = 0x1F0000001FLL;
      v257.i64[1] = 0x1F0000001FLL;
      v258.i64[0] = -1;
      v258.i64[1] = -1;
      do
      {
        v259 = vandq_s8(vshlq_u32(v258, vaddq_s32(v353, v257)), *(&v340 + v256));
        v260.i64[0] = v259.u32[0];
        v260.i64[1] = v259.u32[1];
        v261 = v260;
        v260.i64[0] = v259.u32[2];
        v260.i64[1] = v259.u32[3];
        v262 = v260;
        v260.i64[0] = v353.u32[0];
        v260.i64[1] = v353.u32[1];
        v263 = v260;
        v260.i64[0] = v353.u32[2];
        v260.i64[1] = v353.u32[3];
        v264 = vpaddq_s64(vshlq_u64(v261, vzip1q_s64(0, v263)), vshlq_u64(v262, vzip1q_s64(0, v260)));
        v265 = vpaddq_s64(v263, v260);
        v266 = (v264.i64[0] << v219) | v218;
        if (v265.i64[0] + (v219 & 0x3F) >= 0x40)
        {
          *(v134 + ((v219 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v266;
          v266 = v264.i64[0] >> -(v219 & 0x3F);
          if ((v219 & 0x3F) == 0)
          {
            v266 = 0;
          }
        }

        v267 = v265.i64[0] + v219;
        v218 = v266 | (v264.i64[1] << v267);
        if ((v267 & 0x3F) + v265.i64[1] >= 0x40)
        {
          *(v134 + ((v267 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v218;
          v218 = v264.i64[1] >> -(v267 & 0x3F);
          if ((v267 & 0x3F) == 0)
          {
            v218 = 0;
          }
        }

        v219 = v267 + v265.i64[1];
        v256 += 16;
      }

      while (v256 != 128);
      if ((v219 & 0x3F) != 0)
      {
        *(v134 + ((v219 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v218;
      }

      v268 = ((v219 - v135 + 7) >> 3) + 1;
      result = v268 & 0x3FFFFFFFFFFFFFFELL;
      *a2 |= (v268 >> 1) - 1;
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, __int128 *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v93 = *MEMORY[0x29EDCA608];
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
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
  if (a6 && a5)
  {
    if (a5 > 1)
    {
      v14 = a5 & 0x7E;
      if (a5 == v14)
      {
        for (i = 0; i != a6; ++i)
        {
          v16 = &v65 + 8 * (i & 0x7F);
          v17 = a3;
          v18 = a5;
          do
          {
            v19 = v17[1];
            v21 = v17[2];
            v20 = v17[3];
            *(v16 - 4) = *v17;
            *(v16 - 3) = v21;
            *v16 = v19;
            v16[1] = v20;
            v16 += 2;
            v17 += 4;
            v18 -= 2;
          }

          while (v18);
          a3 = (a3 + a4);
        }
      }

      else
      {
        v22 = 0;
        v23 = &v65 + 2 * ((a5 >> 1) & 0x3F);
        v24 = a3;
        do
        {
          v25 = (v22 & 0x7F) << 7;
          v26 = (v23 + v25);
          v27 = (&v65 + v25);
          v28 = v24;
          v29 = a5 & 0x7E;
          do
          {
            v30 = v28[1];
            v32 = v28[2];
            v31 = v28[3];
            *(v27 - 4) = *v28;
            *(v27 - 3) = v32;
            *v27 = v30;
            v27[1] = v31;
            v27 += 2;
            v28 += 4;
            v29 -= 2;
          }

          while (v29);
          v33 = (&a3[2 * v14] + v22 * a4);
          v34 = a5 - v14;
          do
          {
            v35 = *v33;
            v36 = v33[1];
            v33 += 2;
            *(v26 - 4) = v35;
            *v26++ = v36;
            --v34;
          }

          while (v34);
          ++v22;
          v24 = (v24 + a4);
        }

        while (v22 != a6);
      }
    }

    else
    {
      v10 = 0;
      v11 = a3 + 1;
      do
      {
        v12 = &v61 + 4 * (v10 & 0xFE);
        v13 = *v11;
        *v12 = *(v11 - 1);
        v12[4] = v13;
        v10 += 2;
        v11 = (v11 + a4);
      }

      while (2 * a6 != v10);
    }
  }

  v53 = v61;
  v54 = v65;
  v55 = v62;
  v56 = v66;
  v57 = v69;
  v58 = v73;
  v37 = 2 * (a5 & 0x7F);
  if (v37 >= 4)
  {
    v38 = 4;
  }

  else
  {
    v38 = 2 * (a5 & 0x7F);
  }

  if (v37 >= 4)
  {
    v39 = v37 - 4;
  }

  else
  {
    v39 = 0;
  }

  if (a6 >= 2)
  {
    v40 = 2;
  }

  else
  {
    v40 = a6;
  }

  v59 = v70;
  v60 = v74;
  if (a6 >= 2)
  {
    v41 = a6 - 2;
  }

  else
  {
    v41 = 0;
  }

  v43 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v53, a7, v38, v40);
  v53 = v63;
  v54 = v67;
  v55 = v64;
  v56 = v68;
  v57 = v71;
  v58 = v75;
  v59 = v72;
  v60 = v76;
  if (a6 >= 4)
  {
    v44 = 2;
  }

  else
  {
    v44 = v41;
  }

  v45 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 64, &v53, a7, v38, v44);
  v53 = v77;
  v54 = v81;
  v55 = v78;
  v56 = v82;
  v57 = v85;
  v58 = v89;
  if (a5 >= 4)
  {
    v46 = 4;
  }

  else
  {
    v46 = v39;
  }

  v59 = v86;
  v60 = v90;
  v47 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 128, &v53, a7, v46, v40);
  v53 = v79;
  v54 = v83;
  v55 = v80;
  v56 = v84;
  v57 = v87;
  v58 = v91;
  v59 = v88;
  v60 = v92;
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 192, &v53, a7, v46, v44);
  if (v47)
  {
    v49 = 4;
  }

  else
  {
    v49 = 0;
  }

  if (v45)
  {
    v50 = 2;
  }

  else
  {
    v50 = 0;
  }

  if (result)
  {
    v51 = -8;
  }

  else
  {
    v51 = -16;
  }

  *a2 = v51 | v49 | v43 | v50;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v560 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    result = 0;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v11 = (a1 + a2);
    v11[6] = 0u;
    v11[7] = 0u;
    v11[4] = 0u;
    v11[5] = 0u;
    v11[2] = 0u;
    v11[3] = 0u;
    *v11 = 0u;
    v11[1] = 0u;
    v12 = (a1 + 2 * a2);
    v12[6] = 0u;
    v12[7] = 0u;
    v12[4] = 0u;
    v12[5] = 0u;
    v12[2] = 0u;
    v12[3] = 0u;
    *v12 = 0u;
    v12[1] = 0u;
    v13 = (a1 + a2 + 2 * a2);
    v13[6] = 0u;
    v13[7] = 0u;
    v13[4] = 0u;
    v13[5] = 0u;
    v13[2] = 0u;
    v13[3] = 0u;
    *v13 = 0u;
    v13[1] = 0u;
    return result;
  }

  v7 = a4;
  if (a4 < 0xF0)
  {
    if (a4 == 7)
    {
      v14 = *a3;
      *a1 = *a3;
      *(a1 + 16) = v14;
      *(a1 + 32) = v14;
      *(a1 + 48) = v14;
      *(a1 + 64) = v14;
      *(a1 + 80) = v14;
      *(a1 + 96) = v14;
      *(a1 + 112) = v14;
      v15 = (a1 + a2);
      *v15 = v14;
      v15[1] = v14;
      v15[2] = v14;
      v15[3] = v14;
      v15[4] = v14;
      v15[5] = v14;
      v15[6] = v14;
      v15[7] = v14;
      v16 = (a1 + 2 * a2);
      *v16 = v14;
      v16[1] = v14;
      v16[2] = v14;
      v16[3] = v14;
      v16[4] = v14;
      v16[5] = v14;
      v16[6] = v14;
      v16[7] = v14;
      v17 = (a1 + a2 + 2 * a2);
      *v17 = v14;
      v17[1] = v14;
      v17[2] = v14;
      v17[3] = v14;
      v17[4] = v14;
      v17[5] = v14;
      result = 16;
      v17[6] = v14;
      v17[7] = v14;
      return result;
    }

    v514.i8[8] = 0;
    v514.i64[0] = (8 * (a3 & 7)) | 0x800;
    *&v513 = 8 * (a3 & 7);
    *(&v513 + 1) = a3 & 0xFFFFFFFFFFFFFFF8;
    result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)20,AGX::AppleCompressionGen2::Vec<int>>(&v554, v559, &v553, &v513, a4);
    v20.i64[0] = 0x300000003;
    v20.i64[1] = 0x300000003;
    v21 = vbicq_s8(v559[0], vceqq_s32(vandq_s8(v554, v20), v20));
    v559[0] = v21;
    v555 = v21;
    v556 = v21;
    v557 = v21;
    v558 = v21;
    v22.i64[0] = 0x400000004;
    v22.i64[1] = 0x400000004;
    v23.i64[0] = 0x404040404040404;
    v23.i64[1] = 0x404040404040404;
    v24 = vandq_s8(vtstq_s32(v554, v22), v23);
    v25 = v513;
    if (vmaxvq_s8(v24) < 1)
    {
      v68.i64[0] = -1;
      v68.i64[1] = -1;
      v508 = v68;
      v509 = v68;
      v511 = v68;
      v512 = v68;
    }

    else
    {
      v26 = vmovl_u8(*&vpaddq_s8(v24, v24));
      v27 = vmovl_u16(*&vpaddq_s16(v26, v26));
      v28 = vpaddq_s32(v27, v27).u64[0];
      v29.i64[0] = v28;
      v29.i64[1] = HIDWORD(v28);
      v30 = v29;
      v31 = vaddvq_s64(v29);
      v32 = v31;
      v33 = v513 + v31;
      if (v514.i64[0])
      {
        v34 = v514.i64[0] >= v33;
      }

      else
      {
        v34 = 1;
      }

      v35 = v34;
      if (v31 <= 0x80 && (v35 & 1) != 0)
      {
        v19.i64[0] = 63;
        v36 = (*(&v513 + 1) + 8 * (v513 >> 6));
        v37 = vaddq_s64(vdupq_lane_s64(vandq_s8(v513, v19).i64[0], 0), vzip1q_s64(0, v30));
        v38 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v36, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v37)), vshlq_u64(vdupq_lane_s64(v36->i64[0], 0), vnegq_s64(v37)));
        if (((v513 & 0x3F) + v32) >= 0x81)
        {
          v38 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v36[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v37)), vshlq_u64(vdupq_laneq_s64(v36[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v37))), v38);
        }

        v25 = v33;
      }

      else
      {
        v514.i8[8] = 1;
        v38 = 0uLL;
      }

      v69 = vzip1_s32(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
      v70.i64[0] = v69.u32[0];
      v70.i64[1] = v69.u32[1];
      v71 = vshlq_u64(v38, vnegq_s64(v70));
      v72 = vuzp1q_s32(vzip1q_s64(v38, v71), vzip2q_s64(v38, v71));
      v73 = vshlq_u32(v72, vnegq_s32((*&v26 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v74 = vuzp1q_s16(vzip1q_s32(v72, v73), vzip2q_s32(v72, v73));
      v75 = vshlq_u16(v74, vnegq_s16((*&v24 & __PAIR128__(0xF8FFF8FFF8FFF8FFLL, 0xF8FFF8FFF8FFF8FFLL))));
      v76 = vuzp1q_s8(vzip1q_s16(v74, v75), vzip2q_s16(v74, v75));
      v75.i64[0] = 0x101010101010101;
      v75.i64[1] = 0x101010101010101;
      v77 = vshlq_s8(v75, v24);
      v75.i64[0] = -1;
      v75.i64[1] = -1;
      v78 = vqtbl1q_s8(vandq_s8(vaddq_s8(v77, v75), v76), xmmword_29D2F0F70);
      v76.i64[0] = vmovl_s8(*v78.i8).u64[0];
      v75.i64[0] = vmovl_s8(vdup_lane_s32(*v78.i8, 1)).u64[0];
      v79 = vmovl_s8(*&vdupq_laneq_s32(v78, 2)).u64[0];
      v78.i64[0] = vmovl_s8(*&vdupq_laneq_s32(v78, 3)).u64[0];
      v555 = vsubw_s16(v555, *v76.i8);
      v556 = vsubw_s16(v556, *v75.i8);
      v557 = vsubw_s16(v557, v79);
      v558 = vsubw_s16(v558, *v78.i8);
      v512 = vmovl_s16(vceqz_s16(*v75.i8));
      v509 = vmovl_s16(vceqz_s16(*v76.i8));
      v511 = vmovl_s16(vceqz_s16(v79));
      v508 = vmovl_s16(vceqz_s16(*v78.i8));
    }

    v80.i64[0] = 0x800000008;
    v80.i64[1] = 0x800000008;
    v81 = vbicq_s8(v21, vceqzq_s32(vandq_s8(v554, v80)));
    v80.i64[0] = vpaddq_s32(v81, v81).u64[0];
    v82.i64[0] = v80.u32[0];
    v82.i64[1] = v80.u32[1];
    v83 = v82;
    v84 = vaddvq_s64(v82);
    v85 = v84;
    v86 = v25 + v84;
    if (v514.i64[0])
    {
      v87 = v514.i64[0] >= v86;
    }

    else
    {
      v87 = 1;
    }

    v88 = v87;
    if (v84 <= 0x80 && (v88 & 1) != 0)
    {
      v89 = vaddq_s64(vdupq_n_s64(v25 & 0x3F), vzip1q_s64(0, v83));
      v90 = (*(&v513 + 1) + 8 * (v25 >> 6));
      v91 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v90, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v89)), vshlq_u64(vdupq_lane_s64(v90->i64[0], 0), vnegq_s64(v89)));
      if ((v25 & 0x3F) + v85 >= 0x81)
      {
        v91 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v90[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v89)), vshlq_u64(vdupq_laneq_s64(v90[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v89))), v91);
      }

      v25 = v86;
    }

    else
    {
      v514.i8[8] = 1;
      v91 = 0uLL;
    }

    v92 = vzip1_s32(*v81.i8, *&vextq_s8(v81, v81, 8uLL));
    v93.i64[0] = v92.u32[0];
    v93.i64[1] = v92.u32[1];
    v94 = vshlq_u64(v91, vnegq_s64(v93));
    v95 = vuzp1q_s32(vzip1q_s64(v91, v94), vzip2q_s64(v91, v94));
    v94.i64[0] = 0x1F0000001FLL;
    v94.i64[1] = 0x1F0000001FLL;
    v96.i64[0] = 0x2000000020;
    v96.i64[1] = 0x2000000020;
    v97 = vshlq_s32(vshlq_s32(v95, vsubq_s32(v96, v81)), vaddq_s32(v81, v94));
    v559[3] = v97;
    v98 = v554.i8[0] & 3;
    if (v98 == 2)
    {
      if (v514.i64[0])
      {
        v99 = v25 + 16;
        v100 = v25 + 32;
        if (v514.i64[0] >= v25 + 16)
        {
          v101 = v25 + 16;
        }

        else
        {
          v100 = v25 + 16;
          v101 = v25;
        }

        if (v514.i64[0] >= v100)
        {
          v25 = v100;
        }

        else
        {
          v25 = v101;
        }

        if (v514.i64[0] < v99 || v514.i64[0] < v100)
        {
          v514.i8[8] = 1;
        }
      }

      else
      {
        v25 += 32;
      }
    }

    v102 = vpaddq_s32(0, 0).u64[0];
    v103.i64[0] = v102;
    v103.i64[1] = HIDWORD(v102);
    v104 = v103;
    v105 = vaddvq_s64(v103);
    v106 = v105;
    v107 = v25 + v105;
    if (v514.i64[0])
    {
      v108 = v514.i64[0] >= v107;
    }

    else
    {
      v108 = 1;
    }

    v109 = v108;
    if (v105 <= 0x80 && (v109 & 1) != 0)
    {
      v110 = v25 & 0x3F;
      v111 = vaddq_s64(vdupq_n_s64(v110), vzip1q_s64(0, v104));
      v112 = *(&v513 + 1);
      v113 = (*(&v513 + 1) + 8 * (v25 >> 6));
      v114 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v113, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v111)), vshlq_u64(vdupq_lane_s64(v113->i64[0], 0), vnegq_s64(v111)));
      if (v110 + v106 >= 0x81)
      {
        v111 = vorrq_s8(vshlq_u64(vdupq_lane_s64(v113[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v111)), vshlq_u64(vdupq_laneq_s64(v113[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v111)));
        v114 = vorrq_s8(v111, v114);
      }

      *v111.i8 = vmovn_s64(v114);
      v115 = v514.i8[8];
      v25 = v107;
    }

    else
    {
      v111 = 0uLL;
      v115 = 1;
      v112 = *(&v513 + 1);
    }

    v116.i64[0] = 0x2000000020;
    v116.i64[1] = 0x2000000020;
    v117.i64[0] = 0x1F0000001FLL;
    v117.i64[1] = 0x1F0000001FLL;
    v507 = vshlq_s32(vshlq_s32(vzip1q_s32(v111, v111), v116), v117);
    v521 = v507;
    v118 = vpaddq_s32(v555, v555).u64[0];
    v119.i64[0] = v118;
    v119.i64[1] = HIDWORD(v118);
    v120 = v119;
    v121 = vaddvq_s64(v119);
    v122 = v121;
    v123 = v25 + v121;
    if (v514.i64[0])
    {
      v124 = v514.i64[0] >= v123;
    }

    else
    {
      v124 = 1;
    }

    v125 = v124;
    v126 = 0uLL;
    if (v121 <= 0x80 && v125)
    {
      v127 = v25 & 0x3F;
      v128 = vaddq_s64(vdupq_n_s64(v127), vzip1q_s64(0, v120));
      v129 = (v112 + 8 * (v25 >> 6));
      v130 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v129, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v128)), vshlq_u64(vdupq_lane_s64(v129->i64[0], 0), vnegq_s64(v128)));
      if (v127 + v122 >= 0x81)
      {
        v130 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v129[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v128)), vshlq_u64(vdupq_laneq_s64(v129[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v128))), v130);
      }
    }

    else
    {
      v115 = 1;
      v123 = v25;
      v130 = 0uLL;
    }

    v131 = vzip1_s32(*v555.i8, *&vextq_s8(v555, v555, 8uLL));
    v132.i64[0] = v131.u32[0];
    v132.i64[1] = v131.u32[1];
    v133 = vnegq_s64(v132);
    v134 = vshlq_u64(v130, v133);
    v135 = vaddq_s32(v555, v117);
    v136 = vsubq_s32(v116, v555);
    v137 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v130, v134), vzip2q_s64(v130, v134)), v136), v135);
    v522 = v137;
    v138 = v123 + v122;
    if (v514.i64[0])
    {
      v139 = v514.i64[0] >= v138;
    }

    else
    {
      v139 = 1;
    }

    v140 = v139;
    if (v122 <= 0x80 && v140)
    {
      v141 = v123 & 0x3F;
      v142 = vaddq_s64(vdupq_n_s64(v141), vzip1q_s64(0, v120));
      v143 = (v112 + 8 * (v123 >> 6));
      v126 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v143, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v142)), vshlq_u64(vdupq_lane_s64(v143->i64[0], 0), vnegq_s64(v142)));
      if (v141 + v122 >= 0x81)
      {
        v126 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v143[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v142)), vshlq_u64(vdupq_laneq_s64(v143[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v142))), v126);
      }
    }

    else
    {
      v115 = 1;
      v138 = v123;
    }

    v144 = vshlq_u64(v126, v133);
    v503 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v126, v144), vzip2q_s64(v126, v144)), v136), v135);
    v523 = v503;
    v145 = v138 + v122;
    if (v514.i64[0])
    {
      v146 = v514.i64[0] >= v145;
    }

    else
    {
      v146 = 1;
    }

    v147 = v146;
    v148 = 0uLL;
    if (v122 <= 0x80 && v147)
    {
      v149 = v138 & 0x3F;
      v150 = vaddq_s64(vdupq_n_s64(v149), vzip1q_s64(0, v120));
      v151 = (v112 + 8 * (v138 >> 6));
      v152 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v151, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v150)), vshlq_u64(vdupq_lane_s64(v151->i64[0], 0), vnegq_s64(v150)));
      if (v149 + v122 >= 0x81)
      {
        v152 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v151[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v150)), vshlq_u64(vdupq_laneq_s64(v151[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v150))), v152);
      }
    }

    else
    {
      v115 = 1;
      v145 = v138;
      v152 = 0uLL;
    }

    v153 = vshlq_u64(v152, v133);
    v154 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v152, v153), vzip2q_s64(v152, v153)), v136), v135);
    v524 = v154;
    v155 = v145 + v122;
    if (v514.i64[0])
    {
      v156 = v514.i64[0] >= v155;
    }

    else
    {
      v156 = 1;
    }

    v157 = v156;
    if (v122 <= 0x80 && v157)
    {
      v158 = v145 & 0x3F;
      v159 = vaddq_s64(vdupq_n_s64(v158), vzip1q_s64(0, v120));
      v160 = (v112 + 8 * (v145 >> 6));
      v148 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v160, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v159)), vshlq_u64(vdupq_lane_s64(v160->i64[0], 0), vnegq_s64(v159)));
      if (v158 + v122 >= 0x81)
      {
        v148 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v160[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v159)), vshlq_u64(vdupq_laneq_s64(v160[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v159))), v148);
      }
    }

    else
    {
      v115 = 1;
      v155 = v145;
    }

    v161 = vshlq_u64(v148, v133);
    v506 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v148, v161), vzip2q_s64(v148, v161)), v136), v135);
    v525 = v506;
    v162 = v155 + v122;
    if (v514.i64[0])
    {
      v163 = v514.i64[0] >= v162;
    }

    else
    {
      v163 = 1;
    }

    v164 = v163;
    v165 = 0uLL;
    if (v122 <= 0x80 && v164)
    {
      v166 = v155 & 0x3F;
      v167 = vaddq_s64(vdupq_n_s64(v166), vzip1q_s64(0, v120));
      v168 = (v112 + 8 * (v155 >> 6));
      v169 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v168, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v167)), vshlq_u64(vdupq_lane_s64(v168->i64[0], 0), vnegq_s64(v167)));
      if (v166 + v122 >= 0x81)
      {
        v169 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v168[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v167)), vshlq_u64(vdupq_laneq_s64(v168[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v167))), v169);
      }
    }

    else
    {
      v115 = 1;
      v162 = v155;
      v169 = 0uLL;
    }

    v170 = vshlq_u64(v169, v133);
    v505 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v169, v170), vzip2q_s64(v169, v170)), v136), v135);
    v526 = v505;
    v171 = v162 + v122;
    if (v514.i64[0])
    {
      v172 = v514.i64[0] >= v171;
    }

    else
    {
      v172 = 1;
    }

    v173 = v172;
    if (v122 <= 0x80 && v173)
    {
      v174 = v162 & 0x3F;
      v175 = vaddq_s64(vdupq_n_s64(v174), vzip1q_s64(0, v120));
      v176 = (v112 + 8 * (v162 >> 6));
      v165 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v176, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v175)), vshlq_u64(vdupq_lane_s64(v176->i64[0], 0), vnegq_s64(v175)));
      if (v174 + v122 >= 0x81)
      {
        v165 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v176[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v175)), vshlq_u64(vdupq_laneq_s64(v176[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v175))), v165);
      }
    }

    else
    {
      v115 = 1;
      v171 = v162;
    }

    v177 = vshlq_u64(v165, v133);
    v504 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v165, v177), vzip2q_s64(v165, v177)), v136), v135);
    v527 = v504;
    v178 = v171 + v122;
    if (v514.i64[0])
    {
      v179 = v514.i64[0] >= v178;
    }

    else
    {
      v179 = 1;
    }

    v180 = v179;
    v181 = 0uLL;
    if (v122 <= 0x80 && v180)
    {
      v182 = v171 & 0x3F;
      v183 = vaddq_s64(vdupq_n_s64(v182), vzip1q_s64(0, v120));
      v184 = (v112 + 8 * (v171 >> 6));
      v185 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v184, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v183)), vshlq_u64(vdupq_lane_s64(v184->i64[0], 0), vnegq_s64(v183)));
      if (v182 + v122 >= 0x81)
      {
        v185 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v184[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v183)), vshlq_u64(vdupq_laneq_s64(v184[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v183))), v185);
      }
    }

    else
    {
      v115 = 1;
      v178 = v171;
      v185 = 0uLL;
    }

    v186 = vshlq_u64(v185, v133);
    v502 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v185, v186), vzip2q_s64(v185, v186)), v136), v135);
    v528 = v502;
    v187 = vpaddq_s32(v556, v556).u64[0];
    v188.i64[0] = v187;
    v188.i64[1] = HIDWORD(v187);
    v189 = v188;
    v190 = vaddvq_s64(v188);
    v191 = v190;
    v192 = v178 + v190;
    if (v514.i64[0])
    {
      v193 = v514.i64[0] >= v192;
    }

    else
    {
      v193 = 1;
    }

    v194 = v193;
    if (v190 <= 0x80 && v194)
    {
      v195 = v178 & 0x3F;
      v196 = vaddq_s64(vdupq_n_s64(v195), vzip1q_s64(0, v189));
      v197 = (v112 + 8 * (v178 >> 6));
      v181 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v197, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v196)), vshlq_u64(vdupq_lane_s64(v197->i64[0], 0), vnegq_s64(v196)));
      if (v195 + v191 >= 0x81)
      {
        v181 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v197[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v196)), vshlq_u64(vdupq_laneq_s64(v197[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v196))), v181);
      }
    }

    else
    {
      v115 = 1;
      v192 = v178;
    }

    v198 = vzip1_s32(*v556.i8, *&vextq_s8(v556, v556, 8uLL));
    v199.i64[0] = v198.u32[0];
    v199.i64[1] = v198.u32[1];
    v200 = vnegq_s64(v199);
    v201 = vshlq_u64(v181, v200);
    v202 = vuzp1q_s32(vzip1q_s64(v181, v201), vzip2q_s64(v181, v201));
    v201.i64[0] = 0x1F0000001FLL;
    v201.i64[1] = 0x1F0000001FLL;
    v203 = vaddq_s32(v556, v201);
    v204.i64[0] = 0x2000000020;
    v204.i64[1] = 0x2000000020;
    v205 = vsubq_s32(v204, v556);
    v206 = vshlq_s32(vshlq_s32(v202, v205), v203);
    v529 = v206;
    v207 = v192 + v191;
    if (v514.i64[0])
    {
      v208 = v514.i64[0] >= v207;
    }

    else
    {
      v208 = 1;
    }

    v209 = v208;
    v210 = 0uLL;
    if (v191 <= 0x80 && v209)
    {
      v211 = v192 & 0x3F;
      v212 = vaddq_s64(vdupq_n_s64(v211), vzip1q_s64(0, v189));
      v213 = (v112 + 8 * (v192 >> 6));
      v214 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v213, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v212)), vshlq_u64(vdupq_lane_s64(v213->i64[0], 0), vnegq_s64(v212)));
      if (v211 + v191 >= 0x81)
      {
        v214 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v213[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v212)), vshlq_u64(vdupq_laneq_s64(v213[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v212))), v214);
      }
    }

    else
    {
      v115 = 1;
      v207 = v192;
      v214 = 0uLL;
    }

    v215 = vshlq_u64(v214, v200);
    v216 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v214, v215), vzip2q_s64(v214, v215)), v205), v203);
    v530 = v216;
    v217 = v207 + v191;
    if (v514.i64[0])
    {
      v218 = v514.i64[0] >= v217;
    }

    else
    {
      v218 = 1;
    }

    v219 = v218;
    if (v191 <= 0x80 && v219)
    {
      v220 = v207 & 0x3F;
      v221 = vaddq_s64(vdupq_n_s64(v220), vzip1q_s64(0, v189));
      v222 = (v112 + 8 * (v207 >> 6));
      v210 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v222, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v221)), vshlq_u64(vdupq_lane_s64(v222->i64[0], 0), vnegq_s64(v221)));
      if (v220 + v191 >= 0x81)
      {
        v210 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v222[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v221)), vshlq_u64(vdupq_laneq_s64(v222[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v221))), v210);
      }
    }

    else
    {
      v115 = 1;
      v217 = v207;
    }

    v223 = vshlq_u64(v210, v200);
    v501 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v210, v223), vzip2q_s64(v210, v223)), v205), v203);
    v531 = v501;
    v224 = v217 + v191;
    if (v514.i64[0])
    {
      v225 = v514.i64[0] >= v224;
    }

    else
    {
      v225 = 1;
    }

    v226 = v225;
    v227 = 0uLL;
    if (v191 <= 0x80 && v226)
    {
      v228 = v217 & 0x3F;
      v229 = vaddq_s64(vdupq_n_s64(v228), vzip1q_s64(0, v189));
      v230 = (v112 + 8 * (v217 >> 6));
      v231 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v230, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v229)), vshlq_u64(vdupq_lane_s64(v230->i64[0], 0), vnegq_s64(v229)));
      if (v228 + v191 >= 0x81)
      {
        v231 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v230[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v229)), vshlq_u64(vdupq_laneq_s64(v230[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v229))), v231);
      }
    }

    else
    {
      v115 = 1;
      v224 = v217;
      v231 = 0uLL;
    }

    v232 = vshlq_u64(v231, v200);
    v500 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v231, v232), vzip2q_s64(v231, v232)), v205), v203);
    v532 = v500;
    v233 = v224 + v191;
    if (v514.i64[0])
    {
      v234 = v514.i64[0] >= v233;
    }

    else
    {
      v234 = 1;
    }

    v235 = v234;
    if (v191 <= 0x80 && v235)
    {
      v236 = v224 & 0x3F;
      v237 = vaddq_s64(vdupq_n_s64(v236), vzip1q_s64(0, v189));
      v238 = (v112 + 8 * (v224 >> 6));
      v227 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v238, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v237)), vshlq_u64(vdupq_lane_s64(v238->i64[0], 0), vnegq_s64(v237)));
      if (v236 + v191 >= 0x81)
      {
        v227 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v238[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v237)), vshlq_u64(vdupq_laneq_s64(v238[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v237))), v227);
      }
    }

    else
    {
      v115 = 1;
      v233 = v224;
    }

    v239 = vshlq_u64(v227, v200);
    v499 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v227, v239), vzip2q_s64(v227, v239)), v205), v203);
    v533 = v499;
    v240 = v233 + v191;
    if (v514.i64[0])
    {
      v241 = v514.i64[0] >= v240;
    }

    else
    {
      v241 = 1;
    }

    v242 = v241;
    v243 = 0uLL;
    if (v191 <= 0x80 && v242)
    {
      v244 = v233 & 0x3F;
      v245 = vaddq_s64(vdupq_n_s64(v244), vzip1q_s64(0, v189));
      v246 = (v112 + 8 * (v233 >> 6));
      v247 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v246, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v245)), vshlq_u64(vdupq_lane_s64(v246->i64[0], 0), vnegq_s64(v245)));
      if (v244 + v191 >= 0x81)
      {
        v247 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v246[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v245)), vshlq_u64(vdupq_laneq_s64(v246[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v245))), v247);
      }
    }

    else
    {
      v115 = 1;
      v240 = v233;
      v247 = 0uLL;
    }

    v248 = vshlq_u64(v247, v200);
    v249 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v247, v248), vzip2q_s64(v247, v248)), v205), v203);
    v534 = v249;
    v250 = v240 + v191;
    if (v514.i64[0])
    {
      v251 = v514.i64[0] >= v250;
    }

    else
    {
      v251 = 1;
    }

    v252 = v251;
    if (v191 <= 0x80 && v252)
    {
      v253 = v240 & 0x3F;
      v254 = vaddq_s64(vdupq_n_s64(v253), vzip1q_s64(0, v189));
      v255 = (v112 + 8 * (v240 >> 6));
      v243 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v255, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v254)), vshlq_u64(vdupq_lane_s64(v255->i64[0], 0), vnegq_s64(v254)));
      if (v253 + v191 >= 0x81)
      {
        v243 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v255[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v254)), vshlq_u64(vdupq_laneq_s64(v255[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v254))), v243);
      }
    }

    else
    {
      v115 = 1;
      v250 = v240;
    }

    v256 = vshlq_u64(v243, v200);
    v257 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v243, v256), vzip2q_s64(v243, v256)), v205), v203);
    v535 = v257;
    v258 = v250 + v191;
    if (v514.i64[0])
    {
      v259 = v514.i64[0] >= v258;
    }

    else
    {
      v259 = 1;
    }

    v260 = v259;
    v261 = 0uLL;
    if (v191 <= 0x80 && v260)
    {
      v262 = v250 & 0x3F;
      v263 = vaddq_s64(vdupq_n_s64(v262), vzip1q_s64(0, v189));
      v264 = (v112 + 8 * (v250 >> 6));
      v265 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v264, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v263)), vshlq_u64(vdupq_lane_s64(v264->i64[0], 0), vnegq_s64(v263)));
      if (v262 + v191 >= 0x81)
      {
        v265 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v264[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v263)), vshlq_u64(vdupq_laneq_s64(v264[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v263))), v265);
      }
    }

    else
    {
      v115 = 1;
      v258 = v250;
      v265 = 0uLL;
    }

    v266 = vshlq_u64(v265, v200);
    v267 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v265, v266), vzip2q_s64(v265, v266)), v205), v203);
    v536 = v267;
    v268 = vpaddq_s32(v557, v557).u64[0];
    v269.i64[0] = v268;
    v269.i64[1] = HIDWORD(v268);
    v270 = v269;
    v271 = vaddvq_s64(v269);
    v272 = v271;
    v273 = v258 + v271;
    if (v514.i64[0])
    {
      v274 = v514.i64[0] >= v273;
    }

    else
    {
      v274 = 1;
    }

    v275 = v274;
    if (v271 <= 0x80 && v275)
    {
      v276 = v258 & 0x3F;
      v277 = vaddq_s64(vdupq_n_s64(v276), vzip1q_s64(0, v270));
      v278 = (v112 + 8 * (v258 >> 6));
      v261 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v278, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v277)), vshlq_u64(vdupq_lane_s64(v278->i64[0], 0), vnegq_s64(v277)));
      if (v276 + v272 >= 0x81)
      {
        v261 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v278[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v277)), vshlq_u64(vdupq_laneq_s64(v278[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v277))), v261);
      }
    }

    else
    {
      v115 = 1;
      v273 = v258;
    }

    v279 = vzip1_s32(*v557.i8, *&vextq_s8(v557, v557, 8uLL));
    v280.i64[0] = v279.u32[0];
    v280.i64[1] = v279.u32[1];
    v281 = vnegq_s64(v280);
    v282 = vshlq_u64(v261, v281);
    v283 = vuzp1q_s32(vzip1q_s64(v261, v282), vzip2q_s64(v261, v282));
    v282.i64[0] = 0x1F0000001FLL;
    v282.i64[1] = 0x1F0000001FLL;
    v284 = vaddq_s32(v557, v282);
    v285.i64[0] = 0x2000000020;
    v285.i64[1] = 0x2000000020;
    v286 = vsubq_s32(v285, v557);
    v287 = vshlq_s32(vshlq_s32(v283, v286), v284);
    v537 = v287;
    v288 = v273 + v272;
    if (v514.i64[0])
    {
      v289 = v514.i64[0] >= v288;
    }

    else
    {
      v289 = 1;
    }

    v290 = v289;
    v291 = 0uLL;
    if (v272 <= 0x80 && v290)
    {
      v292 = v273 & 0x3F;
      v293 = vaddq_s64(vdupq_n_s64(v292), vzip1q_s64(0, v270));
      v294 = (v112 + 8 * (v273 >> 6));
      v295 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v294, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v293)), vshlq_u64(vdupq_lane_s64(v294->i64[0], 0), vnegq_s64(v293)));
      if (v292 + v272 >= 0x81)
      {
        v295 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v294[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v293)), vshlq_u64(vdupq_laneq_s64(v294[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v293))), v295);
      }
    }

    else
    {
      v115 = 1;
      v288 = v273;
      v295 = 0uLL;
    }

    v296 = vshlq_u64(v295, v281);
    v297 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v295, v296), vzip2q_s64(v295, v296)), v286), v284);
    v538 = v297;
    v298 = v288 + v272;
    if (v514.i64[0])
    {
      v299 = v514.i64[0] >= v298;
    }

    else
    {
      v299 = 1;
    }

    v300 = v299;
    if (v272 <= 0x80 && v300)
    {
      v301 = v288 & 0x3F;
      v302 = vaddq_s64(vdupq_n_s64(v301), vzip1q_s64(0, v270));
      v303 = (v112 + 8 * (v288 >> 6));
      v291 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v303, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v302)), vshlq_u64(vdupq_lane_s64(v303->i64[0], 0), vnegq_s64(v302)));
      if (v301 + v272 >= 0x81)
      {
        v291 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v303[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v302)), vshlq_u64(vdupq_laneq_s64(v303[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v302))), v291);
      }
    }

    else
    {
      v115 = 1;
      v298 = v288;
    }

    v304 = vshlq_u64(v291, v281);
    v305 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v291, v304), vzip2q_s64(v291, v304)), v286), v284);
    v539 = v305;
    v306 = v298 + v272;
    if (v514.i64[0])
    {
      v307 = v514.i64[0] >= v306;
    }

    else
    {
      v307 = 1;
    }

    v308 = v307;
    v309 = 0uLL;
    if (v272 <= 0x80 && v308)
    {
      v310 = v298 & 0x3F;
      v311 = vaddq_s64(vdupq_n_s64(v310), vzip1q_s64(0, v270));
      v312 = (v112 + 8 * (v298 >> 6));
      v313 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v312, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v311)), vshlq_u64(vdupq_lane_s64(v312->i64[0], 0), vnegq_s64(v311)));
      if (v310 + v272 >= 0x81)
      {
        v313 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v312[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v311)), vshlq_u64(vdupq_laneq_s64(v312[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v311))), v313);
      }
    }

    else
    {
      v115 = 1;
      v306 = v298;
      v313 = 0uLL;
    }

    v314 = vshlq_u64(v313, v281);
    v315 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v313, v314), vzip2q_s64(v313, v314)), v286), v284);
    v540 = v315;
    v316 = v306 + v272;
    if (v514.i64[0])
    {
      v317 = v514.i64[0] >= v316;
    }

    else
    {
      v317 = 1;
    }

    v318 = v317;
    if (v272 <= 0x80 && v318)
    {
      v319 = v306 & 0x3F;
      v320 = vaddq_s64(vdupq_n_s64(v319), vzip1q_s64(0, v270));
      v321 = (v112 + 8 * (v306 >> 6));
      v309 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v321, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v320)), vshlq_u64(vdupq_lane_s64(v321->i64[0], 0), vnegq_s64(v320)));
      if (v319 + v272 >= 0x81)
      {
        v309 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v321[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v320)), vshlq_u64(vdupq_laneq_s64(v321[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v320))), v309);
      }
    }

    else
    {
      v115 = 1;
      v316 = v306;
    }

    v322 = vshlq_u64(v309, v281);
    v323 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v309, v322), vzip2q_s64(v309, v322)), v286), v284);
    v541 = v323;
    v324 = v316 + v272;
    if (v514.i64[0])
    {
      v325 = v514.i64[0] >= v324;
    }

    else
    {
      v325 = 1;
    }

    v326 = v325;
    v327 = 0uLL;
    if (v272 <= 0x80 && v326)
    {
      v328 = v316 & 0x3F;
      v329 = vaddq_s64(vdupq_n_s64(v328), vzip1q_s64(0, v270));
      v330 = (v112 + 8 * (v316 >> 6));
      v331 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v330, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v329)), vshlq_u64(vdupq_lane_s64(v330->i64[0], 0), vnegq_s64(v329)));
      if (v328 + v272 >= 0x81)
      {
        v331 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v330[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v329)), vshlq_u64(vdupq_laneq_s64(v330[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v329))), v331);
      }
    }

    else
    {
      v115 = 1;
      v324 = v316;
      v331 = 0uLL;
    }

    v332 = vshlq_u64(v331, v281);
    v333 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v331, v332), vzip2q_s64(v331, v332)), v286), v284);
    v542 = v333;
    v334 = v324 + v272;
    if (v514.i64[0])
    {
      v335 = v514.i64[0] >= v334;
    }

    else
    {
      v335 = 1;
    }

    v336 = v335;
    if (v272 <= 0x80 && v336)
    {
      v337 = v324 & 0x3F;
      v338 = vaddq_s64(vdupq_n_s64(v337), vzip1q_s64(0, v270));
      v339 = (v112 + 8 * (v324 >> 6));
      v327 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v339, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v338)), vshlq_u64(vdupq_lane_s64(v339->i64[0], 0), vnegq_s64(v338)));
      if (v337 + v272 >= 0x81)
      {
        v327 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v339[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v338)), vshlq_u64(vdupq_laneq_s64(v339[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v338))), v327);
      }
    }

    else
    {
      v115 = 1;
      v334 = v324;
    }

    v340 = vshlq_u64(v327, v281);
    v341 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v327, v340), vzip2q_s64(v327, v340)), v286), v284);
    v543 = v341;
    v342 = v334 + v272;
    if (v514.i64[0])
    {
      v343 = v514.i64[0] >= v342;
    }

    else
    {
      v343 = 1;
    }

    v344 = v343;
    v345 = 0uLL;
    if (v272 <= 0x80 && v344)
    {
      v346 = v334 & 0x3F;
      v347 = vaddq_s64(vdupq_n_s64(v346), vzip1q_s64(0, v270));
      v348 = (v112 + 8 * (v334 >> 6));
      v349 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v348, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v347)), vshlq_u64(vdupq_lane_s64(v348->i64[0], 0), vnegq_s64(v347)));
      if (v346 + v272 >= 0x81)
      {
        v349 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v348[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v347)), vshlq_u64(vdupq_laneq_s64(v348[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v347))), v349);
      }
    }

    else
    {
      v115 = 1;
      v342 = v334;
      v349 = 0uLL;
    }

    v350 = vshlq_u64(v349, v281);
    v351 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v349, v350), vzip2q_s64(v349, v350)), v286), v284);
    v544 = v351;
    v350.i64[0] = vpaddq_s32(v558, v558).u64[0];
    v352.i64[0] = v350.u32[0];
    v352.i64[1] = v350.u32[1];
    v353 = v352;
    v354 = vaddvq_s64(v352);
    v355 = v354;
    v356 = v342 + v354;
    if (v514.i64[0])
    {
      v357 = v514.i64[0] >= v356;
    }

    else
    {
      v357 = 1;
    }

    v358 = v357;
    if (v354 <= 0x80 && v358)
    {
      v359 = v342 & 0x3F;
      v360 = vaddq_s64(vdupq_n_s64(v359), vzip1q_s64(0, v353));
      v361 = (v112 + 8 * (v342 >> 6));
      v345 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v361, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v360)), vshlq_u64(vdupq_lane_s64(v361->i64[0], 0), vnegq_s64(v360)));
      if (v359 + v355 >= 0x81)
      {
        v345 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v361[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v360)), vshlq_u64(vdupq_laneq_s64(v361[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v360))), v345);
      }
    }

    else
    {
      v115 = 1;
      v356 = v342;
    }

    v362 = vzip1_s32(*v558.i8, *&vextq_s8(v558, v558, 8uLL));
    v363.i64[0] = v362.u32[0];
    v363.i64[1] = v362.u32[1];
    v364 = vnegq_s64(v363);
    v365 = vshlq_u64(v345, v364);
    v366 = vuzp1q_s32(vzip1q_s64(v345, v365), vzip2q_s64(v345, v365));
    v367.i64[0] = 0x1F0000001FLL;
    v367.i64[1] = 0x1F0000001FLL;
    v368 = vaddq_s32(v558, v367);
    v367.i64[0] = 0x2000000020;
    v367.i64[1] = 0x2000000020;
    v369 = vsubq_s32(v367, v558);
    v370 = vshlq_s32(vshlq_s32(v366, v369), v368);
    v545 = v370;
    v371 = v356 + v355;
    if (v514.i64[0])
    {
      v372 = v514.i64[0] >= v371;
    }

    else
    {
      v372 = 1;
    }

    v373 = v372;
    v374 = 0uLL;
    if (v355 <= 0x80 && v373)
    {
      v375 = v356 & 0x3F;
      v376 = vaddq_s64(vdupq_n_s64(v375), vzip1q_s64(0, v353));
      v377 = (v112 + 8 * (v356 >> 6));
      v378 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v377, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v376)), vshlq_u64(vdupq_lane_s64(v377->i64[0], 0), vnegq_s64(v376)));
      if (v375 + v355 >= 0x81)
      {
        v378 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v377[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v376)), vshlq_u64(vdupq_laneq_s64(v377[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v376))), v378);
      }
    }

    else
    {
      v115 = 1;
      v371 = v356;
      v378 = 0uLL;
    }

    v379 = vshlq_u64(v378, v364);
    v380 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v378, v379), vzip2q_s64(v378, v379)), v369), v368);
    v546 = v380;
    v381 = v371 + v355;
    if (v514.i64[0])
    {
      v382 = v514.i64[0] >= v381;
    }

    else
    {
      v382 = 1;
    }

    v383 = v382;
    if (v355 <= 0x80 && v383)
    {
      v384 = v371 & 0x3F;
      v385 = vaddq_s64(vdupq_n_s64(v384), vzip1q_s64(0, v353));
      v386 = (v112 + 8 * (v371 >> 6));
      v374 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v386, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v385)), vshlq_u64(vdupq_lane_s64(v386->i64[0], 0), vnegq_s64(v385)));
      if (v384 + v355 >= 0x81)
      {
        v374 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v386[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v385)), vshlq_u64(vdupq_laneq_s64(v386[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v385))), v374);
      }
    }

    else
    {
      v115 = 1;
      v381 = v371;
    }

    v387 = vshlq_u64(v374, v364);
    v388 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v374, v387), vzip2q_s64(v374, v387)), v369), v368);
    v547 = v388;
    v389 = v381 + v355;
    if (v514.i64[0])
    {
      v390 = v514.i64[0] >= v389;
    }

    else
    {
      v390 = 1;
    }

    v391 = v390;
    v392 = 0uLL;
    if (v355 <= 0x80 && v391)
    {
      v393 = v381 & 0x3F;
      v394 = vaddq_s64(vdupq_n_s64(v393), vzip1q_s64(0, v353));
      v395 = (v112 + 8 * (v381 >> 6));
      v396 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v395, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v394)), vshlq_u64(vdupq_lane_s64(v395->i64[0], 0), vnegq_s64(v394)));
      if (v393 + v355 >= 0x81)
      {
        v396 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v395[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v394)), vshlq_u64(vdupq_laneq_s64(v395[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v394))), v396);
      }
    }

    else
    {
      v115 = 1;
      v389 = v381;
      v396 = 0uLL;
    }

    v397 = vshlq_u64(v396, v364);
    v398 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v396, v397), vzip2q_s64(v396, v397)), v369), v368);
    v548 = v398;
    v399 = v389 + v355;
    if (v514.i64[0])
    {
      v400 = v514.i64[0] >= v399;
    }

    else
    {
      v400 = 1;
    }

    v401 = v400;
    if (v355 <= 0x80 && v401)
    {
      v402 = v389 & 0x3F;
      v403 = vaddq_s64(vdupq_n_s64(v402), vzip1q_s64(0, v353));
      v404 = (v112 + 8 * (v389 >> 6));
      v392 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v404, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v403)), vshlq_u64(vdupq_lane_s64(v404->i64[0], 0), vnegq_s64(v403)));
      if (v402 + v355 >= 0x81)
      {
        v392 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v404[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v403)), vshlq_u64(vdupq_laneq_s64(v404[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v403))), v392);
      }
    }

    else
    {
      v115 = 1;
      v399 = v389;
    }

    v405 = vshlq_u64(v392, v364);
    v406 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v392, v405), vzip2q_s64(v392, v405)), v369), v368);
    v549 = v406;
    v407 = v399 + v355;
    if (v514.i64[0])
    {
      v408 = v514.i64[0] >= v407;
    }

    else
    {
      v408 = 1;
    }

    v409 = v408;
    v410 = 0uLL;
    if (v355 <= 0x80 && v409)
    {
      v411 = v399 & 0x3F;
      v412 = vaddq_s64(vdupq_n_s64(v411), vzip1q_s64(0, v353));
      v413 = (v112 + 8 * (v399 >> 6));
      v414 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v413, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v412)), vshlq_u64(vdupq_lane_s64(v413->i64[0], 0), vnegq_s64(v412)));
      if (v411 + v355 >= 0x81)
      {
        v414 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v413[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v412)), vshlq_u64(vdupq_laneq_s64(v413[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v412))), v414);
      }
    }

    else
    {
      v115 = 1;
      v407 = v399;
      v414 = 0uLL;
    }

    v415 = vshlq_u64(v414, v364);
    v416 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v414, v415), vzip2q_s64(v414, v415)), v369), v368);
    v550 = v416;
    v417 = v407 + v355;
    if (v514.i64[0])
    {
      v418 = v514.i64[0] >= v417;
    }

    else
    {
      v418 = 1;
    }

    v419 = v418;
    if (v355 <= 0x80 && v419)
    {
      v420 = v407 & 0x3F;
      v421 = vaddq_s64(vdupq_n_s64(v420), vzip1q_s64(0, v353));
      v422 = (v112 + 8 * (v407 >> 6));
      v410 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v422, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v421)), vshlq_u64(vdupq_lane_s64(v422->i64[0], 0), vnegq_s64(v421)));
      if (v420 + v355 >= 0x81)
      {
        v410 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v422[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v421)), vshlq_u64(vdupq_laneq_s64(v422[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v421))), v410);
      }
    }

    else
    {
      v115 = 1;
      v417 = v407;
    }

    v423 = vshlq_u64(v410, v364);
    v424 = vshlq_s32(vshlq_s32(vuzp1q_s32(vzip1q_s64(v410, v423), vzip2q_s64(v410, v423)), v369), v368);
    v551 = v424;
    v425 = v417 + v355;
    if (v514.i64[0])
    {
      v426 = v514.i64[0] >= v425;
    }

    else
    {
      v426 = 1;
    }

    v427 = v426;
    if (v355 > 0x80 || !v427)
    {
      goto LABEL_415;
    }

    v428 = vaddq_s64(vdupq_n_s64(v417 & 0x3F), vzip1q_s64(0, v353));
    v429 = (v112 + 8 * (v417 >> 6));
    v430 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v429, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v428)), vshlq_u64(vdupq_lane_s64(v429->i64[0], 0), vnegq_s64(v428)));
    if ((v417 & 0x3F) + v355 < 0x81)
    {
      if (v115)
      {
        goto LABEL_415;
      }

      v434 = vshlq_u64(v430, v364);
      v433 = vuzp1q_s32(vzip1q_s64(v430, v434), vzip2q_s64(v430, v434));
    }

    else
    {
      if (v115)
      {
        goto LABEL_415;
      }

      v431 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v429[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v428)), vshlq_u64(vdupq_laneq_s64(v429[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v428))), v430);
      v432 = vshlq_u64(v431, v364);
      v433 = vuzp1q_s32(vzip1q_s64(v431, v432), vzip2q_s64(v431, v432));
    }

    v435 = vshlq_s32(vshlq_s32(v433, v369), v368);
    if (v514.i64[0] + 8 * result - v425 - 2048 < 0x11 && v98 != 2)
    {
      v436.i64[0] = 0x1000000010;
      v436.i64[1] = 0x1000000010;
      v437 = vandq_s8(v97, v509);
      v438 = v553;
      v510 = v435;
      v439 = vaddq_s32(v553, v507);
      v440 = vaddq_s32(v553, vsubq_s32(v137, v437));
      v441 = vceqzq_s32(vandq_s8(v554, v436));
      v442 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v440, xmmword_29D2F11D0), v441), v440);
      v443 = vaddq_s32(v553, vsubq_s32(v503, v437));
      v444 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v443, xmmword_29D2F11D0), v441), v443);
      v445 = vaddq_s32(v553, vsubq_s32(v154, v437));
      *a1 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v439, xmmword_29D2F11D0), v441), v439);
      *(a1 + 16) = v442;
      *(a1 + 32) = v444;
      *(a1 + 48) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v445, xmmword_29D2F11D0), v441), v445);
      v446 = (a1 + 2 * a2);
      v447 = vandq_s8(v97, v512);
      v448 = vaddq_s32(v438, vsubq_s32(v206, v447));
      v449 = vaddq_s32(v438, vsubq_s32(v216, v447));
      v450 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v448, xmmword_29D2F11D0), v441), v448);
      v451 = vaddq_s32(v438, vsubq_s32(v501, v447));
      v452 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v451, xmmword_29D2F11D0), v441), v451);
      v453 = vaddq_s32(v438, vsubq_s32(v500, v447));
      *(a1 + 64) = v450;
      *(a1 + 80) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v449, xmmword_29D2F11D0), v441), v449);
      *(a1 + 96) = v452;
      *(a1 + 112) = vaddq_s32(vbicq_s8(vqtbl1q_s8(v453, xmmword_29D2F11D0), v441), v453);
      v454 = vaddq_s32(v438, vsubq_s32(v506, v437));
      v455 = vaddq_s32(v438, vsubq_s32(v505, v437));
      v456 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v454, xmmword_29D2F11D0), v441), v454);
      v457 = vaddq_s32(v438, vsubq_s32(v504, v437));
      v458 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v457, xmmword_29D2F11D0), v441), v457);
      v459 = vaddq_s32(v438, vsubq_s32(v502, v437));
      v460 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v459, xmmword_29D2F11D0), v441), v459);
      v461 = vaddq_s32(v438, vsubq_s32(v499, v447));
      v462 = vaddq_s32(v438, vsubq_s32(v249, v447));
      v463 = (a1 + a2);
      *v463 = v456;
      v463[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v455, xmmword_29D2F11D0), v441), v455);
      v463[2] = v458;
      v463[3] = v460;
      v464 = (a1 + a2 + 64);
      v465 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v461, xmmword_29D2F11D0), v441), v461);
      v466 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v462, xmmword_29D2F11D0), v441), v462);
      v467 = vaddq_s32(v438, vsubq_s32(v257, v447));
      v468 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v467, xmmword_29D2F11D0), v441), v467);
      v469 = vaddq_s32(v438, vsubq_s32(v267, v447));
      v470 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v469, xmmword_29D2F11D0), v441), v469);
      v471 = vandq_s8(v97, v511);
      v472 = vaddq_s32(v438, vsubq_s32(v287, v471));
      v473 = vaddq_s32(v438, vsubq_s32(v297, v471));
      *v464 = v465;
      v464[1] = v466;
      v464[2] = v468;
      v464[3] = v470;
      v474 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v472, xmmword_29D2F11D0), v441), v472);
      v475 = vaddq_s32(v438, vsubq_s32(v305, v471));
      v476 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v475, xmmword_29D2F11D0), v441), v475);
      v477 = vaddq_s32(v438, vsubq_s32(v315, v471));
      v478 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v477, xmmword_29D2F11D0), v441), v477);
      v479 = vandq_s8(v97, v508);
      v480 = v446 + 4;
      *v446 = v474;
      v446[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v473, xmmword_29D2F11D0), v441), v473);
      v446[2] = v476;
      v446[3] = v478;
      v481 = (v446 + a2);
      v482 = vaddq_s32(v438, vsubq_s32(v370, v479));
      v483 = vaddq_s32(v438, vsubq_s32(v380, v479));
      v484 = vaddq_s32(v438, vsubq_s32(v388, v479));
      v485 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v484, xmmword_29D2F11D0), v441), v484);
      v486 = vaddq_s32(v438, vsubq_s32(v398, v479));
      *v480 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v482, xmmword_29D2F11D0), v441), v482);
      v480[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v483, xmmword_29D2F11D0), v441), v483);
      v480[2] = v485;
      v480[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v486, xmmword_29D2F11D0), v441), v486);
      v487 = vaddq_s32(v438, vsubq_s32(v323, v471));
      v488 = vaddq_s32(v438, vsubq_s32(v333, v471));
      v489 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v487, xmmword_29D2F11D0), v441), v487);
      v490 = vaddq_s32(v438, vsubq_s32(v341, v471));
      v491 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v490, xmmword_29D2F11D0), v441), v490);
      v492 = vaddq_s32(v438, vsubq_s32(v351, v471));
      *v481 = v489;
      v481[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v488, xmmword_29D2F11D0), v441), v488);
      v481[2] = v491;
      v481[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v492, xmmword_29D2F11D0), v441), v492);
      v481 += 4;
      v493 = vaddq_s32(v438, vsubq_s32(v406, v479));
      v494 = vaddq_s32(v438, vsubq_s32(v416, v479));
      v495 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v493, xmmword_29D2F11D0), v441), v493);
      v496 = vaddq_s32(v438, vsubq_s32(v424, v479));
      v497 = vaddq_s32(vbicq_s8(vqtbl1q_s8(v496, xmmword_29D2F11D0), v441), v496);
      v498 = vaddq_s32(v438, vsubq_s32(v510, v479));
      *v481 = v495;
      v481[1] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v494, xmmword_29D2F11D0), v441), v494);
      v481[2] = v497;
      v481[3] = vaddq_s32(vbicq_s8(vqtbl1q_s8(v498, xmmword_29D2F11D0), v441), v498);
      return result;
    }

LABEL_415:
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::writeErrorColorToSubblock(a1, a2);
    return 0;
  }

  if (a4)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v513, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v513, a5);
  }

  v521 = v513;
  v522 = v515;
  v525 = v514;
  v526 = v516;
  v529 = v517;
  v530 = v519;
  v533 = v518;
  v534 = v520;
  v18 = a3 + 64;
  if ((v7 & 2) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v18, &v513, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v18, &v513, a5);
  }

  v523 = v513;
  v524 = v515;
  v527 = v514;
  v528 = v516;
  v531 = v517;
  v532 = v519;
  v535 = v518;
  v536 = v520;
  v39 = a3 + 128;
  if ((v7 & 4) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v39, &v513, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v39, &v513, a5);
  }

  v537 = v513;
  v538 = v515;
  v541 = v514;
  v542 = v516;
  v545 = v517;
  v546 = v519;
  v549 = v518;
  v550 = v520;
  v40 = a3 + 192;
  if ((v7 & 8) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v40, &v513, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v40, &v513, a5);
  }

  v539 = v513;
  v540 = v515;
  v543 = v514;
  v544 = v516;
  v547 = v517;
  v548 = v519;
  v551 = v518;
  v552 = v520;
  v41 = v525;
  v42 = v526;
  v43 = v513;
  *a1 = v521;
  *(a1 + 16) = v41;
  *(a1 + 32) = v522;
  *(a1 + 48) = v42;
  v44 = v524;
  v45 = v527;
  v46 = v528;
  *(a1 + 64) = v523;
  *(a1 + 80) = v45;
  *(a1 + 96) = v44;
  *(a1 + 112) = v46;
  v47 = (a1 + a2);
  v48 = v530;
  v49 = v533;
  v50 = v534;
  *v47 = v529;
  v47[1] = v49;
  v47[2] = v48;
  v47[3] = v50;
  v51 = v532;
  v52 = v535;
  v53 = v536;
  v47[4] = v531;
  v47[5] = v52;
  v47[6] = v51;
  v47[7] = v53;
  v54 = (a1 + a2 + a2);
  v55 = v538;
  v56 = v541;
  v57 = v542;
  *v54 = v537;
  v54[1] = v56;
  v54[2] = v55;
  v54[3] = v57;
  v59 = v543;
  v58 = v544;
  v60 = v540;
  v54[4] = v43;
  v54[5] = v59;
  v54[6] = v60;
  v54[7] = v58;
  v61 = (v54 + a2);
  v62 = v546;
  v63 = v549;
  v64 = v550;
  *v61 = v545;
  v61[1] = v63;
  v61[2] = v62;
  v61[3] = v64;
  v66 = v551;
  v65 = v552;
  v67 = v548;
  v61[4] = v547;
  v61[5] = v66;
  result = 256;
  v61[6] = v67;
  v61[7] = v65;
  return result;
}