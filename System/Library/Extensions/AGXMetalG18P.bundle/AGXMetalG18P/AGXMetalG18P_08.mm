unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v6 = vdupq_lane_s32(*a3, 0);
  v7 = vsubq_s16(*a3, v6);
  v493 = *(a3 + 16);
  v8 = vsubq_s16(v493, v6);
  v489 = *(a3 + 32);
  v9 = vsubq_s16(v489, v6);
  v480 = *(a3 + 48);
  v10 = vsubq_s16(v480, v6);
  v488 = *(a3 + a4);
  v11 = vsubq_s16(v488, v6);
  v479 = *(a3 + a4 + 16);
  v12 = vsubq_s16(v479, v6);
  v13 = vsubq_s16(*(a3 + a4 + 32), v6);
  v14 = vqtbl1q_s8(vmaxq_s16(v7, v8), xmmword_29D2F1090);
  v15 = vqtbl1q_s8(vminq_s16(v7, v8), xmmword_29D2F1090);
  v16 = vpmaxq_s16(v14, v14);
  v17 = vpminq_s16(v15, v15);
  v18 = vpmaxq_s16(v16, v16);
  v19 = vpminq_s16(v17, v17);
  v20.i64[0] = 0x8000800080008000;
  v20.i64[1] = 0x8000800080008000;
  v21 = vmaxq_s16(v18, v20);
  v22.i64[0] = 0x8000800080008000;
  v22.i64[1] = 0x8000800080008000;
  v23 = vminq_s16(v19, v22);
  v24 = vzip1q_s16(v18, v19);
  v25.i64[0] = 0x10001000100010;
  v25.i64[1] = 0x10001000100010;
  v26 = vbicq_s8(vsubq_s16(v25, vclsq_s16(v24)), vceqzq_s16(v24));
  v27 = vqtbl1q_s8(vmaxq_s16(v9, v10), xmmword_29D2F1090);
  v28 = vqtbl1q_s8(vminq_s16(v9, v10), xmmword_29D2F1090);
  v29 = vpmaxq_s16(v27, v27);
  v30 = vpminq_s16(v28, v28);
  v31 = vpmaxq_s16(v29, v29);
  v32 = vpminq_s16(v30, v30);
  v33 = vmaxq_s16(v21, v31);
  v34 = vminq_s16(v23, v32);
  v35 = vzip1q_s16(v31, v32);
  v36 = vbicq_s8(vsubq_s16(v25, vclsq_s16(v35)), vceqzq_s16(v35));
  v37 = vqtbl1q_s8(vmaxq_s16(v11, v12), xmmword_29D2F1090);
  v38 = vqtbl1q_s8(vminq_s16(v11, v12), xmmword_29D2F1090);
  v39 = vpmaxq_s16(v37, v37);
  v40 = vpminq_s16(v38, v38);
  v41 = vpmaxq_s16(v39, v39);
  v42 = vpminq_s16(v40, v40);
  v43 = vmaxq_s16(v33, v41);
  v44 = vminq_s16(v34, v42);
  v45 = vzip1q_s16(v41, v42);
  v46 = vbicq_s8(vsubq_s16(v25, vclsq_s16(v45)), vceqzq_s16(v45));
  v481 = *(a3 + a4 + 48);
  v47 = vsubq_s16(v481, v6);
  v48 = vqtbl1q_s8(vmaxq_s16(v13, v47), xmmword_29D2F1090);
  v49 = vqtbl1q_s8(vminq_s16(v13, v47), xmmword_29D2F1090);
  v50 = vpmaxq_s16(v48, v48);
  v51 = vpminq_s16(v49, v49);
  v52 = vpmaxq_s16(v50, v50);
  v53 = vpminq_s16(v51, v51);
  v54 = vmaxq_s16(v43, v52);
  v55 = vminq_s16(v44, v53);
  v56 = vzip1q_s16(v52, v53);
  v57 = vbicq_s8(vsubq_s16(v25, vclsq_s16(v56)), vceqzq_s16(v56));
  v58 = vpmaxq_s16(v26, v26);
  v59 = vpmaxq_s16(v36, v36);
  v60 = vpmaxq_s16(v46, v46);
  v61 = vpmaxq_s16(v57, v57);
  v62 = vmaxq_s16(vmaxq_s16(v58, v59), vmaxq_s16(v60, v61));
  v63 = vclzq_s16(vsubq_s16(v54, v55));
  v64 = vsubq_s16(v25, v63);
  v65 = vminq_s16(v64, v62);
  v66 = vmaxvq_s16(v65);
  if (a5)
  {
    v67 = a6 == 0;
  }

  else
  {
    v67 = 1;
  }

  v68 = v67;
  if (!v66)
  {
    *a1 = *a3;
    v171 = 3;
    result = 4;
    goto LABEL_90;
  }

  v478 = *(a3 + a4 + 32);
  v69.i64[0] = -1;
  v69.i64[1] = -1;
  v70.i64[0] = 0xF000F000F000FLL;
  v70.i64[1] = 0xF000F000F000FLL;
  v494 = vsubq_s16(vshlq_s16(v69, vsubq_s16(v70, v63)), v55);
  v71 = vcgtq_s16(v62, v64);
  v72.i64[0] = 0x8000800080008;
  v72.i64[1] = 0x8000800080008;
  v73 = vandq_s8(v71, v72);
  v72.i64[0] = 0x3000300030003;
  v72.i64[1] = 0x3000300030003;
  v474 = vorrq_s8(vandq_s8(vceqzq_s16(v65), v72), v73);
  v471 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v58), v72), 0);
  v472 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v59), v72), 0);
  v74 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v60), v72), 0);
  v75 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v61), v72), 0);
  v76.i64[0] = 0x4000400040004;
  v76.i64[1] = 0x4000400040004;
  v473 = vbicq_s8(v76, vceqq_s16(vaddq_s16(v75, v74), vnegq_s16(vaddq_s16(v471, v472))));
  v77 = vsubq_s16(v7, vqtbl1q_s8(v7, xmmword_29D2F1080));
  v78 = vsubq_s16(v8, vqtbl1q_s8(v8, xmmword_29D2F1080));
  v79 = vsubq_s16(v9, vqtbl1q_s8(v9, xmmword_29D2F1080));
  v80 = vsubq_s16(v10, vqtbl1q_s8(v10, xmmword_29D2F1080));
  v81 = vsubq_s16(v11, vqtbl1q_s8(v11, xmmword_29D2F1080));
  v82 = vsubq_s16(v12, vqtbl1q_s8(v12, xmmword_29D2F1080));
  v83 = vsubq_s16(v13, vqtbl1q_s8(v13, xmmword_29D2F1080));
  v490 = v9;
  v491 = v8;
  v492 = v7;
  v84 = vsubq_s16(v47, vqtbl1q_s8(v47, xmmword_29D2F1080));
  v476 = v10;
  v85 = vqtbl1q_s8(vmaxq_s16(v77, v78), xmmword_29D2F1090);
  v86 = vqtbl1q_s8(vminq_s16(v77, v78), xmmword_29D2F1090);
  v87 = vpmaxq_s16(v85, v85);
  v88 = vpminq_s16(v86, v86);
  v89 = vpmaxq_s16(v87, v87);
  v90 = vpminq_s16(v88, v88);
  v91 = vmaxq_s16(v89, v20);
  v92 = vminq_s16(v90, v22);
  v93 = vzip1q_s16(v89, v90);
  v94 = vbicq_s8(vsubq_s16(v25, vclsq_s16(v93)), vceqzq_s16(v93));
  v484 = v12;
  v486 = v13;
  v95 = vpmaxq_s16(v94, v94);
  v96 = vqtbl1q_s8(vmaxq_s16(v79, v80), xmmword_29D2F1090);
  v97 = vqtbl1q_s8(vminq_s16(v79, v80), xmmword_29D2F1090);
  v98 = vpmaxq_s16(v96, v96);
  v99 = vpminq_s16(v97, v97);
  v100 = vpmaxq_s16(v98, v98);
  v101 = vpminq_s16(v99, v99);
  v102 = vmaxq_s16(v91, v100);
  v103 = vminq_s16(v92, v101);
  v104 = vzip1q_s16(v100, v101);
  v105 = vbicq_s8(vsubq_s16(v25, vclsq_s16(v104)), vceqzq_s16(v104));
  v482 = v11;
  v106 = vpmaxq_s16(v105, v105);
  v107 = vqtbl1q_s8(vmaxq_s16(v81, v82), xmmword_29D2F1090);
  v108 = vqtbl1q_s8(vminq_s16(v81, v82), xmmword_29D2F1090);
  v109 = vpmaxq_s16(v107, v107);
  v110 = vpminq_s16(v108, v108);
  v111 = vpmaxq_s16(v109, v109);
  v112 = vpminq_s16(v110, v110);
  v113 = vmaxq_s16(v102, v111);
  v114 = vminq_s16(v103, v112);
  v115 = vzip1q_s16(v111, v112);
  v116 = vbicq_s8(vsubq_s16(v25, vclsq_s16(v115)), vceqzq_s16(v115));
  v117 = v65;
  v118 = vpmaxq_s16(v116, v116);
  v119 = vqtbl1q_s8(vmaxq_s16(v83, v84), xmmword_29D2F1090);
  v120 = vqtbl1q_s8(vminq_s16(v83, v84), xmmword_29D2F1090);
  v121 = vpmaxq_s16(v119, v119);
  v122 = vpminq_s16(v120, v120);
  v123 = vpmaxq_s16(v121, v121);
  v124 = vpminq_s16(v122, v122);
  v125 = vmaxq_s16(v113, v123);
  v126 = vminq_s16(v114, v124);
  v127 = vzip1q_s16(v123, v124);
  v128 = vbicq_s8(vsubq_s16(v25, vclsq_s16(v127)), vceqzq_s16(v127));
  v129 = vpmaxq_s16(v128, v128);
  v130 = vmaxq_s16(vmaxq_s16(v95, v106), vmaxq_s16(v118, v129));
  v131 = vclzq_s16(vsubq_s16(v125, v126));
  v132 = vsubq_s16(v25, v131);
  v133 = vcgtq_s16(v130, v132);
  v134 = vminq_s16(v132, v130);
  v132.i64[0] = 0x18001800180018;
  v132.i64[1] = 0x18001800180018;
  v135 = v47;
  v136 = vbslq_s8(v133, v132, v25);
  v137 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v95), v72), 0);
  v138 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v106), v72), 0);
  v139 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v118), v72), 0);
  v140 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v129), v72), 0);
  v141 = vsubq_s16(v134, v137);
  v142 = vsubq_s16(v134, v138);
  v143 = vsubq_s16(v134, v139);
  v144 = vaddq_s16(v137, v138);
  v145 = vsubq_s16(v134, v140);
  v146.i64[0] = 0x4000400040004;
  v146.i64[1] = 0x4000400040004;
  v147 = vbicq_s8(v146, vceqq_s16(vaddq_s16(v140, v139), vnegq_s16(v144)));
  v144.i64[0] = 0x7000700070007;
  v144.i64[1] = 0x7000700070007;
  v148 = vandq_s8(v494, v71);
  v149 = vsubq_s16(v117, v471);
  v150 = vsubq_s16(v117, v472);
  v151 = vsubq_s16(v117, v74);
  v495 = vsubq_s16(v117, v75);
  v152 = vorrq_s8(v473, v474);
  v153 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v117, v71), v149, v144), vshlq_n_s16(vaddq_s16(vaddq_s16(v151, v150), v495), 3uLL)), vaddq_s16(v473, v473)), vaddq_s16(vaddq_s16(vmlaq_s16(vbicq_s8(v134, vceqzq_s16((*&v136 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), v141, v144), vshlq_n_s16(vaddq_s16(vaddq_s16(v143, v142), v145), 3uLL)), vaddq_s16(v147, v147))), 0);
  if (vaddvq_s16(v153))
  {
    v154.i64[0] = 0x3000300030003;
    v154.i64[1] = 0x3000300030003;
    v155 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v134), v154), v136), v147);
    v154.i64[0] = 0xF000F000F000FLL;
    v154.i64[1] = 0xF000F000F000FLL;
    v156 = vsubq_s16(v154, v131);
    v154.i64[0] = -1;
    v154.i64[1] = -1;
    v157 = vandq_s8(vsubq_s16(vshlq_s16(v154, v156), v126), v133);
    v6 = vbslq_s8(v153, vsubq_s16(v6, vqtbl1q_s8(v6, xmmword_29D2F1080)), v6);
    v491 = vbslq_s8(v153, v78, v491);
    v492 = vbslq_s8(v153, v77, v492);
    v490 = vbslq_s8(v153, v79, v490);
    v158 = vbslq_s8(v153, v80, v476);
    v159 = vbslq_s8(v153, v81, v482);
    v160 = vbslq_s8(v153, v83, v486);
    v161 = vbslq_s8(v153, v141, v149);
    v150 = vbslq_s8(v153, v142, v150);
    v151 = vbslq_s8(v153, v143, v151);
    v495 = vbslq_s8(v153, v145, v495);
    v162 = vbslq_s8(v153, v134, v117);
    v152 = vbslq_s8(v153, v155, v152);
    v163 = vbslq_s8(v153, v84, v135);
    v164 = vbslq_s8(v153, v82, v484);
    v165 = vbslq_s8(v153, v157, v148);
    v166 = *a3;
    v167 = *(a3 + 16);
    if (v68)
    {
LABEL_10:
      v168 = v490;
      v169 = v491;
      v170 = v492;
      goto LABEL_16;
    }
  }

  else
  {
    v162 = v117;
    v163 = v135;
    v164 = v484;
    v160 = v486;
    v159 = v482;
    v158 = v476;
    v165 = v148;
    v166 = *a3;
    v167 = *(a3 + 16);
    v161 = v149;
    if (v68)
    {
      goto LABEL_10;
    }
  }

  v483 = v159;
  v485 = v164;
  v487 = v160;
  v475 = v163;
  v477 = v165;
  v173 = v158;
  v185 = vsubq_s16(v166, vqtbl2q_s8(*v166.i8, xmmword_29D2F0F80));
  v174 = vsubq_s16(v167, vqtbl2q_s8(*v166.i8, xmmword_29D2F1030));
  v496 = *(a3 + 32);
  v496.val[1].i32[3] = v167.i32[3];
  v175 = vqtbl2q_s8(v496, xmmword_29D2F1040);
  v176 = vsubq_s16(v489, vqtbl2q_s8(v496, xmmword_29D2F0FA0));
  v177 = vsubq_s16(v480, v175);
  v496.val[1] = *(a3 + a4);
  v178 = *(a3 + a4 + 16);
  HIDWORD(v178) = v167.i32[3];
  v179 = vsubq_s16(v488, vqtbl2q_s8(*(&v496 + 16), xmmword_29D2F1050));
  v180 = vsubq_s16(v479, vqtbl2q_s8(*(&v496 + 16), xmmword_29D2F0F80));
  v496.val[1] = *(a3 + a4 + 32);
  v181 = *(a3 + a4 + 48);
  v181.i32[3] = v167.i32[3];
  v182 = vqtbl2q_s8(*(&v496 + 16), xmmword_29D2F0F80);
  v183 = vsubq_s16(v478, vqtbl2q_s8(*(&v496 + 16), xmmword_29D2F1060));
  v184 = v174;
  v184.i32[3] = v185.i32[0];
  v185.i32[0] = v174.i32[3];
  v186 = vsubq_s16(v481, v182);
  v187 = vqtbl1q_s8(vmaxq_s16(v185, v184), xmmword_29D2F1090);
  v188 = vqtbl1q_s8(vminq_s16(v185, v184), xmmword_29D2F1090);
  v189 = vpmaxq_s16(v187, v187);
  v190 = vpminq_s16(v188, v188);
  v191 = vpmaxq_s16(v189, v189);
  v192 = vpminq_s16(v190, v190);
  v181.i64[0] = 0x8000800080008000;
  v181.i64[1] = 0x8000800080008000;
  v193 = vmaxq_s16(v191, v181);
  v194.i64[0] = 0x8000800080008000;
  v194.i64[1] = 0x8000800080008000;
  v195 = vminq_s16(v192, v194);
  v196 = vzip1q_s16(v191, v192);
  v191.i64[0] = 0x10001000100010;
  v191.i64[1] = 0x10001000100010;
  v197 = vbicq_s8(vsubq_s16(v191, vclsq_s16(v196)), vceqzq_s16(v196));
  v198 = vpmaxq_s16(v197, v197);
  v199 = vqtbl1q_s8(vmaxq_s16(v176, v177), xmmword_29D2F1090);
  v200 = vqtbl1q_s8(vminq_s16(v176, v177), xmmword_29D2F1090);
  v201 = vpmaxq_s16(v199, v199);
  v202 = vpminq_s16(v200, v200);
  v203 = vpmaxq_s16(v201, v201);
  v204 = vpminq_s16(v202, v202);
  v205 = vmaxq_s16(v193, v203);
  v206 = vminq_s16(v195, v204);
  v207 = vzip1q_s16(v203, v204);
  v208 = vbicq_s8(vsubq_s16(v191, vclsq_s16(v207)), vceqzq_s16(v207));
  v209 = vpmaxq_s16(v208, v208);
  v210 = vqtbl1q_s8(vmaxq_s16(v179, v180), xmmword_29D2F1090);
  v211 = vqtbl1q_s8(vminq_s16(v179, v180), xmmword_29D2F1090);
  v212 = vpmaxq_s16(v210, v210);
  v213 = vpminq_s16(v211, v211);
  v214 = vpmaxq_s16(v212, v212);
  v215 = vpminq_s16(v213, v213);
  v216 = vmaxq_s16(v205, v214);
  v217 = vminq_s16(v206, v215);
  v218 = vzip1q_s16(v214, v215);
  v219 = vbicq_s8(vsubq_s16(v191, vclsq_s16(v218)), vceqzq_s16(v218));
  v220 = vpmaxq_s16(v219, v219);
  v221 = vqtbl1q_s8(vmaxq_s16(v183, v186), xmmword_29D2F1090);
  v222 = vqtbl1q_s8(vminq_s16(v183, v186), xmmword_29D2F1090);
  v223 = vpmaxq_s16(v221, v221);
  v224 = vpminq_s16(v222, v222);
  v225 = vpmaxq_s16(v223, v223);
  v226 = vpminq_s16(v224, v224);
  v227 = vmaxq_s16(v216, v225);
  v228 = vminq_s16(v217, v226);
  v229 = vzip1q_s16(v225, v226);
  v230 = vbicq_s8(vsubq_s16(v191, vclsq_s16(v229)), vceqzq_s16(v229));
  v231 = vpmaxq_s16(v230, v230);
  v232 = vmaxq_s16(vmaxq_s16(v198, v209), vmaxq_s16(v220, v231));
  v233 = vclzq_s16(vsubq_s16(v227, v228));
  v234 = vsubq_s16(v191, v233);
  v235 = vcgtq_s16(v232, v234);
  v236 = vminq_s16(v234, v232);
  v237 = v151;
  v238.i64[0] = 0x3000300030003;
  v238.i64[1] = 0x3000300030003;
  v239 = vmaxq_s16(vminq_s16(vsubq_s16(v236, v198), v238), 0);
  v240 = vmaxq_s16(vminq_s16(vsubq_s16(v236, v209), v238), 0);
  v241 = vmaxq_s16(vminq_s16(vsubq_s16(v236, v220), v238), 0);
  v242 = vmaxq_s16(vminq_s16(vsubq_s16(v236, v231), v238), 0);
  v243 = vsubq_s16(v236, v239);
  v244 = vsubq_s16(v236, v240);
  v245 = vsubq_s16(v236, v241);
  v246 = vsubq_s16(v236, v242);
  v247 = vceqq_s16(vaddq_s16(v242, v241), vnegq_s16(vaddq_s16(v239, v240)));
  v239.i64[0] = 0x4000400040004;
  v239.i64[1] = 0x4000400040004;
  v248 = vbicq_s8(v239, v247);
  v241.i64[0] = 0x7000700070007;
  v241.i64[1] = 0x7000700070007;
  v231.i64[0] = 0x8000800080008;
  v231.i64[1] = 0x8000800080008;
  v249.i64[0] = 0x2000200020002;
  v249.i64[1] = 0x2000200020002;
  v250 = vandq_s8(vceqq_s16(vandq_s8(v152, v238), v249), v191);
  v151 = v237;
  v251 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v162, vceqzq_s16(vandq_s8(v152, v231))), vandq_s8(vaddq_s16(v152, v152), v231)), v250), v161, v241), vshlq_n_s16(vaddq_s16(vaddq_s16(v237, v150), v495), 3uLL)), vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v236, v235), v243, v241), vshlq_n_s16(vaddq_s16(vaddq_s16(v245, v244), v246), 3uLL)), vaddq_s16(v248, v248))), 0);
  if (vaddvq_s16(v251))
  {
    v252.i64[0] = 0x9000900090009;
    v252.i64[1] = 0x9000900090009;
    v253 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v236), v249), vsubq_s16(vandq_s8(v235, v252), vmvnq_s8(v235))), v248);
    v254.i64[0] = 0xF000F000F000FLL;
    v254.i64[1] = 0xF000F000F000FLL;
    v252.i64[0] = -1;
    v252.i64[1] = -1;
    v255 = vandq_s8(vsubq_s16(vshlq_s16(v252, vsubq_s16(v254, v233)), v228), v235);
    v6.i32[0] = vbslq_s8(v251, vextq_s8(v493, v493, 0xCuLL), v6).u32[0];
    v170 = vbslq_s8(v251, v185, v492);
    v169 = vbslq_s8(v251, v184, v491);
    v168 = vbslq_s8(v251, v176, v490);
    v158 = vbslq_s8(v251, v177, v173);
    v159 = vbslq_s8(v251, v179, v483);
    v164 = vbslq_s8(v251, v180, v485);
    v160 = vbslq_s8(v251, v183, v487);
    v163 = vbslq_s8(v251, v186, v475);
    v161 = vbslq_s8(v251, v243, v161);
    v150 = vbslq_s8(v251, v244, v150);
    v151 = vbslq_s8(v251, v245, v237);
    v495 = vbslq_s8(v251, v246, v495);
    v165 = vbslq_s8(v251, v255, v477);
    v162 = vbslq_s8(v251, v236, v162);
    v152 = vbslq_s8(v251, v253, v152);
  }

  else
  {
    v158 = v173;
    v163 = v475;
    v165 = v477;
    v168 = v490;
    v169 = v491;
    v164 = v485;
    v160 = v487;
    v170 = v492;
    v159 = v483;
  }

LABEL_16:
  v256.i64[0] = 0x8000800080008;
  v256.i64[1] = 0x8000800080008;
  v257 = vandq_s8(v152, v256);
  v258.i64[0] = 0x3000300030003;
  v258.i64[1] = 0x3000300030003;
  v259.i64[0] = 0x2000200020002;
  v259.i64[1] = 0x2000200020002;
  v260 = vceqq_s16(vandq_s8(v152, v258), v259);
  v259.i64[0] = 0x10001000100010;
  v259.i64[1] = 0x10001000100010;
  v261 = vandq_s8(v260, v259);
  v259.i64[0] = 0x7000700070007;
  v259.i64[1] = 0x7000700070007;
  v262 = vaddq_s16(vaddq_s16(vaddq_s16(vmlaq_s16(vshlq_n_s16(vaddq_s16(vaddq_s16(v151, v150), v495), 3uLL), v161, v259), vandq_s8(vaddq_s16(v152, v152), v256)), vbicq_s8(v162, vceqzq_s16(v257))), v261);
  if ((vpaddq_s16(v262, v262).i16[0] + 57) > 0x3FF)
  {
    *a1 = *a3;
    *(a1 + 16) = v493;
    *(a1 + 32) = v489;
    *(a1 + 48) = v480;
    *(a1 + 64) = v488;
    *(a1 + 80) = v479;
    v266 = (a1 + 96);
    v171 = 127;
    result = 128;
    *v266 = v478;
    v266[1] = v481;
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
    v267.i32[0] = v162.u16[0];
    v267.i32[1] = v162.u16[1];
    v268 = vshr_n_s32(vshl_n_s32(v267, 0x10uLL), 0x10uLL);
    v269 = vand_s8(vbic_s8(vadd_s32(vshl_u32(v268, 0xE0000000ALL), 0x3C00000003C00), vceqz_s32(v268)), 0x3C00000003C00);
    v270 = vorr_s8(vdup_lane_s32(v269, 1), v269).u32[0] | v152.i8[0] & 0x1F | (32 * (v152.i8[2] & 0x1F));
    v271 = v265 | (v270 << v264);
    if (v264 >= 0x2E)
    {
      *v263 = v271;
      v271 = v270 >> (-8 * (a1 & 7u));
    }

    v272 = (v264 + 18) & 0x3A;
    v273 = v271 | (v6.u32[0] << v272);
    if (v272 >= 0x20)
    {
      *(v263 + (((v264 + 18) >> 3) & 8)) = v273;
      v273 = v6.u32[0] >> -v272;
    }

    v274 = v264 + 50;
    v275 = vsubq_s16(v162, v161);
    v276 = vsubq_s16(v162, v150);
    v277 = vsubq_s16(v162, v151);
    v278 = vsubq_s16(v162, v495);
    *v275.i8 = vqmovn_u16(v275);
    *v276.i8 = vqmovn_u16(v276);
    *v277.i8 = vqmovn_u16(v277);
    *v278.i8 = vqmovn_u16(v278);
    v275.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v275, v276), vzip1q_s8(v277, v278)), vzip1q_s16(vtrn2q_s8(v275, v276), vtrn2q_s8(v277, v278))).u64[0];
    v277.i64[0] = 0x202020202020202;
    v277.i64[1] = 0x202020202020202;
    v279 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v152.i8, 0x4000400040004)))), v277);
    v277.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v277.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v278.i64[0] = -1;
    v278.i64[1] = -1;
    v280 = vandq_s8(vshlq_u8(v278, vorrq_s8(v279, v277)), v275.u64[0]);
    v281 = vmovl_u8(*v279.i8);
    v282 = vpaddq_s16(vshlq_u16(vmovl_u8(*v280.i8), vtrn1q_s16(0, v281)), vmovl_high_u8(v280));
    v283 = vpaddq_s16(v281, vmovl_high_u8(v279));
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
    v294 = (v264 + 50) & 0x3A;
    v295 = (v292.i64[0] << v294) | v273;
    if ((v293.i64[0] + v294) >= 0x40)
    {
      *(v263 + ((v274 >> 3) & 8)) = v295;
      v295 = v292.i64[0] >> -v294;
    }

    v296 = vceqq_s16(v162, v161);
    v297 = v293.i64[0] + v274;
    v298 = v295 | (v292.i64[1] << v297);
    if ((v297 & 0x3F) + v293.i64[1] >= 0x40)
    {
      *(v263 + ((v297 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v298;
      v298 = v292.i64[1] >> -(v297 & 0x3F);
      if ((v297 & 0x3F) == 0)
      {
        v298 = 0;
      }
    }

    v299 = vandq_s8(v165, v296);
    v300 = v297 + v293.i64[1];
    v301.i64[0] = -1;
    v301.i64[1] = -1;
    v302 = vandq_s8(vextq_s8(vtstq_s16(v257, v257), 0, 0xCuLL), v162);
    v303.i64[0] = 0xF000F000F000FLL;
    v303.i64[1] = 0xF000F000F000FLL;
    v304 = vandq_s8(vshlq_u16(v301, vaddq_s16(v302, v303)), v165);
    v305 = vmovl_u16(*v302.i8);
    v306 = vpaddq_s32(vshlq_u32(vmovl_u16(*v304.i8), vtrn1q_s32(0, v305)), vmovl_high_u16(v304));
    v307 = vpaddq_s32(v305, vmovl_high_u16(v302));
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
    v314 = (v312.i64[0] << v300) | v298;
    if (v313.i64[0] + (v300 & 0x3F) >= 0x40)
    {
      *(v263 + ((v300 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v314;
      v314 = v312.i64[0] >> -(v300 & 0x3F);
      if ((v300 & 0x3F) == 0)
      {
        v314 = 0;
      }
    }

    v315 = vaddq_s16(v299, v170);
    v316 = v313.i64[0] + v300;
    v317 = v314 | (v312.i64[1] << v316);
    if ((v316 & 0x3F) + v313.i64[1] >= 0x40)
    {
      *(v263 + ((v316 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v317;
      v317 = v312.i64[1] >> -(v316 & 0x3F);
      if ((v316 & 0x3F) == 0)
      {
        v317 = 0;
      }
    }

    v318 = v316 + v313.i64[1];
    v319 = vextq_s8(0, v161, 0xCuLL);
    v320.i64[0] = 0xF000F000F000FLL;
    v320.i64[1] = 0xF000F000F000FLL;
    v321.i64[0] = -1;
    v321.i64[1] = -1;
    v322 = vandq_s8(vshlq_u16(v321, vaddq_s16(v319, v320)), v315);
    v323 = vmovl_u16(*v319.i8);
    v324 = vmovl_high_u16(v319);
    v325 = vpaddq_s32(vshlq_u32(vmovl_u16(*v322.i8), vtrn1q_s32(0, v323)), vshlq_u32(vmovl_high_u16(v322), vtrn1q_s32(0, v324)));
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
    v333 = (v331.i64[0] << v318) | v317;
    if (v332.i64[0] + (v318 & 0x3F) >= 0x40)
    {
      *(v263 + ((v318 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v333;
      v333 = v331.i64[0] >> -(v318 & 0x3F);
      if ((v318 & 0x3F) == 0)
      {
        v333 = 0;
      }
    }

    v334 = vceqq_s16(v162, v150);
    v335 = vaddq_s16(v169, v299);
    v336 = v332.i64[0] + v318;
    v337 = v333 | (v331.i64[1] << v336);
    if ((v336 & 0x3F) + v332.i64[1] >= 0x40)
    {
      *(v263 + ((v336 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v337;
      v337 = v331.i64[1] >> -(v336 & 0x3F);
      if ((v336 & 0x3F) == 0)
      {
        v337 = 0;
      }
    }

    v338 = vandq_s8(v165, v334);
    v339 = v336 + v332.i64[1];
    v340.i64[0] = 0xF000F000F000FLL;
    v340.i64[1] = 0xF000F000F000FLL;
    v341.i64[0] = -1;
    v341.i64[1] = -1;
    v342 = vandq_s8(vshlq_u16(v341, vaddq_s16(v161, v340)), v335);
    v343 = vmovl_u16(*v161.i8);
    v344 = vmovl_high_u16(v161);
    v345 = vpaddq_s32(vshlq_u32(vmovl_u16(*v342.i8), vtrn1q_s32(0, v343)), vshlq_u32(vmovl_high_u16(v342), vtrn1q_s32(0, v344)));
    v346 = vpaddq_s32(v343, v344);
    v347.i64[0] = v345.u32[0];
    v347.i64[1] = v345.u32[1];
    v348 = v347;
    v347.i64[0] = v345.u32[2];
    v347.i64[1] = v345.u32[3];
    v349 = v347;
    v347.i64[0] = v346.u32[0];
    v347.i64[1] = v346.u32[1];
    v350 = v347;
    v347.i64[0] = v346.u32[2];
    v347.i64[1] = v346.u32[3];
    v351 = vpaddq_s64(vshlq_u64(v348, vzip1q_s64(0, v350)), vshlq_u64(v349, vzip1q_s64(0, v347)));
    v352 = vpaddq_s64(v350, v347);
    v353 = (v351.i64[0] << v339) | v337;
    if (v352.i64[0] + (v339 & 0x3F) >= 0x40)
    {
      *(v263 + ((v339 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v353;
      v353 = v351.i64[0] >> -(v339 & 0x3F);
      if ((v339 & 0x3F) == 0)
      {
        v353 = 0;
      }
    }

    v354 = vaddq_s16(v168, v338);
    v355 = v352.i64[0] + v339;
    v356 = v353 | (v351.i64[1] << v355);
    if ((v355 & 0x3F) + v352.i64[1] >= 0x40)
    {
      *(v263 + ((v355 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v356;
      v356 = v351.i64[1] >> -(v355 & 0x3F);
      if ((v355 & 0x3F) == 0)
      {
        v356 = 0;
      }
    }

    v357 = v355 + v352.i64[1];
    v358.i64[0] = 0xF000F000F000FLL;
    v358.i64[1] = 0xF000F000F000FLL;
    v359.i64[0] = -1;
    v359.i64[1] = -1;
    v360 = vshlq_u16(v359, vaddq_s16(v150, v358));
    v361 = vandq_s8(v360, v354);
    v362 = vmovl_u16(*v361.i8);
    v363 = vmovl_high_u16(v361);
    v364 = vmovl_u16(*v150.i8);
    v365 = vmovl_high_u16(v150);
    v366 = vtrn1q_s32(0, v364);
    v367 = vtrn1q_s32(0, v365);
    v368 = vpaddq_s32(vshlq_u32(v362, v366), vshlq_u32(v363, v367));
    v369 = vpaddq_s32(v364, v365);
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
    v374 = vzip1q_s64(0, v373);
    v375 = vzip1q_s64(0, v370);
    v376 = vpaddq_s64(vshlq_u64(v371, v374), vshlq_u64(v372, v375));
    v377 = vpaddq_s64(v373, v370);
    v378 = (v376.i64[0] << v357) | v356;
    if (v377.i64[0] + (v357 & 0x3F) >= 0x40)
    {
      *(v263 + ((v357 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v378;
      if ((v357 & 0x3F) != 0)
      {
        v378 = v376.i64[0] >> -(v357 & 0x3F);
      }

      else
      {
        v378 = 0;
      }
    }

    v379 = vceqq_s16(v162, v151);
    v380 = vaddq_s16(v158, v338);
    v381 = v377.i64[0] + v357;
    v382 = v378 | (v376.i64[1] << v381);
    if ((v381 & 0x3F) + v377.i64[1] >= 0x40)
    {
      *(v263 + ((v381 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v382;
      v382 = v376.i64[1] >> -(v381 & 0x3F);
      if ((v381 & 0x3F) == 0)
      {
        v382 = 0;
      }
    }

    v383 = vandq_s8(v165, v379);
    v384 = v381 + v377.i64[1];
    v385 = vandq_s8(v360, v380);
    v386 = vpaddq_s32(vshlq_u32(vmovl_u16(*v385.i8), v366), vshlq_u32(vmovl_high_u16(v385), v367));
    v387.i64[0] = v386.u32[0];
    v387.i64[1] = v386.u32[1];
    v388 = v387;
    v387.i64[0] = v386.u32[2];
    v387.i64[1] = v386.u32[3];
    v389 = vpaddq_s64(vshlq_u64(v388, v374), vshlq_u64(v387, v375));
    v390 = (v389.i64[0] << v384) | v382;
    if (v377.i64[0] + (v384 & 0x3F) >= 0x40)
    {
      *(v263 + ((v384 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v390;
      v390 = v389.i64[0] >> -(v384 & 0x3F);
      if ((v384 & 0x3F) == 0)
      {
        v390 = 0;
      }
    }

    v391 = vaddq_s16(v159, v383);
    v392 = v377.i64[0] + v384;
    v393 = (v377.i64[0] + v384) & 0x3F;
    v394 = v390 | (v389.i64[1] << v392);
    if ((v392 & 0x3F) + v377.i64[1] >= 0x40)
    {
      *(v263 + ((v392 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v394;
      v394 = v389.i64[1] >> -v393;
      if (!v393)
      {
        v394 = 0;
      }
    }

    v395 = v392 + v377.i64[1];
    v396.i64[0] = 0xF000F000F000FLL;
    v396.i64[1] = 0xF000F000F000FLL;
    v397.i64[0] = -1;
    v397.i64[1] = -1;
    v398 = vshlq_u16(v397, vaddq_s16(v151, v396));
    v399 = vandq_s8(v398, v391);
    v400 = vmovl_u16(*v399.i8);
    v401 = vmovl_high_u16(v399);
    v402 = vmovl_u16(*v151.i8);
    v403 = vmovl_high_u16(v151);
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
    v416 = (v392 + v377.i64[1]) & 0x3F;
    v417 = (v414.i64[0] << (v392 + v377.i8[8])) | v394;
    if ((v415.i64[0] + v416) >= 0x40)
    {
      *(v263 + ((v395 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v417;
      if (v416)
      {
        v417 = v414.i64[0] >> -v416;
      }

      else
      {
        v417 = 0;
      }
    }

    v418 = vceqq_s16(v162, v495);
    v419 = vaddq_s16(v164, v383);
    v420 = v415.i64[0] + v395;
    v421 = v417 | (v414.i64[1] << v420);
    if ((v420 & 0x3F) + v415.i64[1] >= 0x40)
    {
      *(v263 + ((v420 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v421;
      v421 = v414.i64[1] >> -(v420 & 0x3F);
      if ((v420 & 0x3F) == 0)
      {
        v421 = 0;
      }
    }

    v422 = vandq_s8(v165, v418);
    v423 = v420 + v415.i64[1];
    v424 = vandq_s8(v398, v419);
    v425 = vpaddq_s32(vshlq_u32(vmovl_u16(*v424.i8), v404), vshlq_u32(vmovl_high_u16(v424), v405));
    v426.i64[0] = v425.u32[0];
    v426.i64[1] = v425.u32[1];
    v427 = v426;
    v426.i64[0] = v425.u32[2];
    v426.i64[1] = v425.u32[3];
    v428 = vpaddq_s64(vshlq_u64(v427, v412), vshlq_u64(v426, v413));
    v429 = (v428.i64[0] << v423) | v421;
    if (v415.i64[0] + (v423 & 0x3F) >= 0x40)
    {
      *(v263 + ((v423 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v429;
      v429 = v428.i64[0] >> -(v423 & 0x3F);
      if ((v423 & 0x3F) == 0)
      {
        v429 = 0;
      }
    }

    v430 = vaddq_s16(v160, v422);
    v431 = v415.i64[0] + v423;
    v432 = (v415.i64[0] + v423) & 0x3F;
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
    v435.i64[0] = 0xF000F000F000FLL;
    v435.i64[1] = 0xF000F000F000FLL;
    v436.i64[0] = -1;
    v436.i64[1] = -1;
    v437 = vshlq_u16(v436, vaddq_s16(v495, v435));
    v438 = vandq_s8(v437, v430);
    v439 = vmovl_u16(*v438.i8);
    v440 = vmovl_high_u16(v438);
    v441 = vmovl_u16(*v495.i8);
    v442 = vmovl_high_u16(v495);
    v443 = vtrn1q_s32(0, v441);
    v444 = vtrn1q_s32(0, v442);
    v445 = vpaddq_s32(vshlq_u32(v439, v443), vshlq_u32(v440, v444));
    v446 = vpaddq_s32(v441, v442);
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
    v451 = vzip1q_s64(0, v450);
    v452 = vzip1q_s64(0, v447);
    v453 = vpaddq_s64(vshlq_u64(v448, v451), vshlq_u64(v449, v452));
    v454 = vpaddq_s64(v450, v447);
    v455 = (v431 + v415.i64[1]) & 0x3F;
    v456 = (v453.i64[0] << (v431 + v415.i8[8])) | v433;
    if ((v454.i64[0] + v455) > 0x3F)
    {
      *(v263 + ((v434 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v456;
      if (v455)
      {
        v456 = v453.i64[0] >> -v455;
      }

      else
      {
        v456 = 0;
      }
    }

    v457 = vaddq_s16(v163, v422);
    v458 = v454.i64[0] + v434;
    v459 = v456 | (v453.i64[1] << v458);
    if ((v458 & 0x3F) + v454.i64[1] >= 0x40)
    {
      *(v263 + ((v458 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v459;
      v459 = v453.i64[1] >> -(v458 & 0x3F);
      if ((v458 & 0x3F) == 0)
      {
        v459 = 0;
      }
    }

    v460 = v458 + v454.i64[1];
    v461 = vandq_s8(v437, v457);
    v462 = vpaddq_s32(vshlq_u32(vmovl_u16(*v461.i8), v443), vshlq_u32(vmovl_high_u16(v461), v444));
    v463.i64[0] = v462.u32[0];
    v463.i64[1] = v462.u32[1];
    v464 = v463;
    v463.i64[0] = v462.u32[2];
    v463.i64[1] = v462.u32[3];
    v465 = vpaddq_s64(vshlq_u64(v464, v451), vshlq_u64(v463, v452));
    v466 = (v465.i64[0] << v460) | v459;
    if (v454.i64[0] + (v460 & 0x3F) >= 0x40)
    {
      *(v263 + ((v460 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v466;
      v466 = v465.i64[0] >> -(v460 & 0x3F);
      if ((v460 & 0x3F) == 0)
      {
        v466 = 0;
      }
    }

    v467 = v454.i64[0] + v460;
    v468 = (v454.i64[0] + v460) & 0x3F;
    v469 = v466 | (v465.i64[1] << (v454.i8[0] + v460));
    if ((v468 + v454.i64[1]) >= 0x40)
    {
      *(v263 + ((v467 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v469;
      v469 = v465.i64[1] >> -v468;
      if (!v468)
      {
        v469 = 0;
      }
    }

    v470 = v467 + v454.i64[1];
    if ((v470 & 0x3F) != 0)
    {
      *(v263 + ((v470 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v469;
    }

    result = (v470 - v264 + 7) >> 3;
    v171 = *a2 | (result - 1);
  }

LABEL_90:
  *a2 = v171;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(uint64_t result, uint64_t a2, uint64_t a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 64, a2, v14, v13);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + v15, a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, v11 + v15 + 64, a2, v20, v19);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 128, a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 192, a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, v11 + v15 + 128, a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, v11 + v15 + 192, a2, v30, v29);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v8 = *(a3 + 16);
  v7 = (a3 + 2 * a4);
  v9 = *(a3 + a4);
  v10 = *(a3 + a4 + 16);
  v11 = vzip1q_s64(*a3, v9);
  v12 = vzip2q_s64(*a3, v9);
  v13 = vzip1q_s64(v8, v10);
  v14 = vzip2q_s64(v8, v10);
  v16 = *v7;
  v17 = v7[1];
  v15 = (v7 + a4);
  v18 = v15[1];
  v19 = vzip2q_s64(v16, *v15);
  v20 = vzip1q_s64(v17, v18);
  v21 = vzip2q_s64(v17, v18);
  v22 = vdupq_lane_s32(*v11.i8, 0);
  v23 = vsubq_s16(v11, v22);
  v24 = vsubq_s16(v12, v22);
  v479 = vzip1q_s64(v16, *v15);
  v25 = vsubq_s16(v479, v22);
  v26 = vsubq_s16(v19, v22);
  v27 = vsubq_s16(v13, v22);
  v28 = vsubq_s16(v14, v22);
  v29 = vsubq_s16(v20, v22);
  v30 = vsubq_s16(v21, v22);
  v31 = vqtbl1q_s8(vmaxq_s16(v23, v24), xmmword_29D2F1090);
  v32 = vqtbl1q_s8(vminq_s16(v23, v24), xmmword_29D2F1090);
  v33 = vpmaxq_s16(v31, v31);
  v34 = vpminq_s16(v32, v32);
  v35 = vpmaxq_s16(v33, v33);
  v36 = vpminq_s16(v34, v34);
  v37.i64[0] = 0x8000800080008000;
  v37.i64[1] = 0x8000800080008000;
  v38 = vmaxq_s16(v35, v37);
  v39.i64[0] = 0x8000800080008000;
  v39.i64[1] = 0x8000800080008000;
  v40 = vminq_s16(v36, v39);
  v41 = vzip1q_s16(v35, v36);
  v42.i64[0] = 0x10001000100010;
  v42.i64[1] = 0x10001000100010;
  v43 = vbicq_s8(vsubq_s16(v42, vclsq_s16(v41)), vceqzq_s16(v41));
  v44 = vpmaxq_s16(v43, v43);
  v45 = vqtbl1q_s8(vmaxq_s16(v25, v26), xmmword_29D2F1090);
  v46 = vqtbl1q_s8(vminq_s16(v25, v26), xmmword_29D2F1090);
  v47 = vpmaxq_s16(v45, v45);
  v48 = vpminq_s16(v46, v46);
  v49 = vpmaxq_s16(v47, v47);
  v50 = vpminq_s16(v48, v48);
  v51 = vmaxq_s16(v38, v49);
  v52 = vminq_s16(v40, v50);
  v53 = vzip1q_s16(v49, v50);
  v54 = vbicq_s8(vsubq_s16(v42, vclsq_s16(v53)), vceqzq_s16(v53));
  v55 = vpmaxq_s16(v54, v54);
  v56 = vqtbl1q_s8(vmaxq_s16(v27, v28), xmmword_29D2F1090);
  v57 = vqtbl1q_s8(vminq_s16(v27, v28), xmmword_29D2F1090);
  v58 = vpmaxq_s16(v56, v56);
  v59 = vpminq_s16(v57, v57);
  v60 = vpmaxq_s16(v58, v58);
  v61 = vpminq_s16(v59, v59);
  v62 = vmaxq_s16(v51, v60);
  v63 = vminq_s16(v52, v61);
  v64 = vzip1q_s16(v60, v61);
  v65 = vbicq_s8(vsubq_s16(v42, vclsq_s16(v64)), vceqzq_s16(v64));
  v66 = vpmaxq_s16(v65, v65);
  v67 = vqtbl1q_s8(vmaxq_s16(v29, v30), xmmword_29D2F1090);
  v68 = vqtbl1q_s8(vminq_s16(v29, v30), xmmword_29D2F1090);
  v69 = vpmaxq_s16(v67, v67);
  v70 = vpminq_s16(v68, v68);
  v71 = vpmaxq_s16(v69, v69);
  v72 = vpminq_s16(v70, v70);
  v73 = vmaxq_s16(v62, v71);
  v74 = vminq_s16(v63, v72);
  v75 = vzip1q_s16(v71, v72);
  v76 = vbicq_s8(vsubq_s16(v42, vclsq_s16(v75)), vceqzq_s16(v75));
  v77 = vpmaxq_s16(v76, v76);
  v78 = vmaxq_s16(vmaxq_s16(v44, v55), vmaxq_s16(v66, v77));
  v79 = vclzq_s16(vsubq_s16(v73, v74));
  v80 = vsubq_s16(v42, v79);
  v81 = vminq_s16(v80, v78);
  v82 = vmaxvq_s16(v81);
  v84 = a5 < 4 || a6 < 2;
  if (!v82)
  {
    *a1 = *a3;
    *a2 = 3;
    return 4;
  }

  v467 = v19;
  v468 = v20;
  v469 = v13;
  v470 = v14;
  v471 = v21;
  v85.i64[0] = -1;
  v85.i64[1] = -1;
  v86.i64[0] = 0xF000F000F000FLL;
  v86.i64[1] = 0xF000F000F000FLL;
  v493 = vsubq_s16(vshlq_s16(v85, vsubq_s16(v86, v79)), v74);
  v87 = vcgtq_s16(v78, v80);
  v88.i64[0] = 0x8000800080008;
  v88.i64[1] = 0x8000800080008;
  v86.i64[0] = 0x3000300030003;
  v86.i64[1] = 0x3000300030003;
  v480 = vorrq_s8(vandq_s8(vceqzq_s16(v81), v86), vandq_s8(v87, v88));
  v89 = vmaxq_s16(vminq_s16(vsubq_s16(v81, v44), v86), 0);
  v90 = vmaxq_s16(vminq_s16(vsubq_s16(v81, v55), v86), 0);
  v91 = vmaxq_s16(vminq_s16(vsubq_s16(v81, v66), v86), 0);
  v92 = vmaxq_s16(vminq_s16(vsubq_s16(v81, v77), v86), 0);
  v93.i64[0] = 0x4000400040004;
  v93.i64[1] = 0x4000400040004;
  v477 = vbicq_s8(v93, vceqq_s16(vaddq_s16(v92, v91), vnegq_s16(vaddq_s16(v89, v90))));
  v490 = v30;
  v492 = v23;
  v482 = v24;
  v94 = vsubq_s16(v26, vqtbl1q_s8(v26, xmmword_29D2F1080));
  v95 = vsubq_s16(v27, vqtbl1q_s8(v27, xmmword_29D2F1080));
  v96 = vsubq_s16(v28, vqtbl1q_s8(v28, xmmword_29D2F1080));
  v97 = vsubq_s16(v29, vqtbl1q_s8(v29, xmmword_29D2F1080));
  v98 = vsubq_s16(v30, vqtbl1q_s8(v30, xmmword_29D2F1080));
  v473 = vsubq_s16(v24, vqtbl1q_s8(v24, xmmword_29D2F1080));
  v475 = vsubq_s16(v23, vqtbl1q_s8(v23, xmmword_29D2F1080));
  v99 = vqtbl1q_s8(vmaxq_s16(v475, v473), xmmword_29D2F1090);
  v100 = vqtbl1q_s8(vminq_s16(v475, v473), xmmword_29D2F1090);
  v101 = vpmaxq_s16(v99, v99);
  v102 = vpminq_s16(v100, v100);
  v103 = vpmaxq_s16(v101, v101);
  v104 = vpminq_s16(v102, v102);
  v105 = vmaxq_s16(v103, v37);
  v488 = v29;
  v106 = vminq_s16(v104, v39);
  v107 = vzip1q_s16(v103, v104);
  v108 = vbicq_s8(vsubq_s16(v42, vclsq_s16(v107)), vceqzq_s16(v107));
  v109 = vpmaxq_s16(v108, v108);
  v472 = vsubq_s16(v25, vqtbl1q_s8(v25, xmmword_29D2F1080));
  v110 = vqtbl1q_s8(vmaxq_s16(v472, v94), xmmword_29D2F1090);
  v111 = vqtbl1q_s8(vminq_s16(v472, v94), xmmword_29D2F1090);
  v112 = vpmaxq_s16(v110, v110);
  v113 = vpminq_s16(v111, v111);
  v114 = vpmaxq_s16(v112, v112);
  v115 = vpminq_s16(v113, v113);
  v116 = vmaxq_s16(v105, v114);
  v117 = vminq_s16(v106, v115);
  v118 = vzip1q_s16(v114, v115);
  v119 = vbicq_s8(vsubq_s16(v42, vclsq_s16(v118)), vceqzq_s16(v118));
  v484 = v26;
  v486 = v27;
  v120 = vpmaxq_s16(v119, v119);
  v121 = vqtbl1q_s8(vmaxq_s16(v95, v96), xmmword_29D2F1090);
  v122 = vqtbl1q_s8(vminq_s16(v95, v96), xmmword_29D2F1090);
  v123 = vpmaxq_s16(v121, v121);
  v124 = vpminq_s16(v122, v122);
  v125 = vpmaxq_s16(v123, v123);
  v126 = vpminq_s16(v124, v124);
  v127 = vmaxq_s16(v116, v125);
  v128 = vminq_s16(v117, v126);
  v129 = vzip1q_s16(v125, v126);
  v130 = vbicq_s8(vsubq_s16(v42, vclsq_s16(v129)), vceqzq_s16(v129));
  v131 = vpmaxq_s16(v130, v130);
  v132 = vqtbl1q_s8(vmaxq_s16(v97, v98), xmmword_29D2F1090);
  v133 = vqtbl1q_s8(vminq_s16(v97, v98), xmmword_29D2F1090);
  v134 = vpmaxq_s16(v132, v132);
  v135 = vpminq_s16(v133, v133);
  v136 = vpmaxq_s16(v134, v134);
  v137 = vpminq_s16(v135, v135);
  v138 = vmaxq_s16(v127, v136);
  v139 = vminq_s16(v128, v137);
  v140 = vzip1q_s16(v136, v137);
  v141 = vbicq_s8(vsubq_s16(v42, vclsq_s16(v140)), vceqzq_s16(v140));
  v142 = vpmaxq_s16(v141, v141);
  v143 = vmaxq_s16(vmaxq_s16(v109, v120), vmaxq_s16(v131, v142));
  v144 = vclzq_s16(vsubq_s16(v138, v139));
  v145 = vsubq_s16(v42, v144);
  v146 = vcgtq_s16(v143, v145);
  v147 = vminq_s16(v145, v143);
  v145.i64[0] = 0x18001800180018;
  v145.i64[1] = 0x18001800180018;
  v148 = v28;
  v149 = vbslq_s8(v146, v145, v42);
  v150 = vmaxq_s16(vminq_s16(vsubq_s16(v147, v109), v86), 0);
  v151 = vmaxq_s16(vminq_s16(vsubq_s16(v147, v120), v86), 0);
  v152 = vmaxq_s16(vminq_s16(vsubq_s16(v147, v131), v86), 0);
  v153 = vmaxq_s16(vminq_s16(vsubq_s16(v147, v142), v86), 0);
  v154 = vsubq_s16(v147, v150);
  v155 = vsubq_s16(v147, v151);
  v156 = vsubq_s16(v147, v152);
  v157 = vaddq_s16(v150, v151);
  v158 = vsubq_s16(v147, v153);
  v159.i64[0] = 0x4000400040004;
  v159.i64[1] = 0x4000400040004;
  v160 = vbicq_s8(v159, vceqq_s16(vaddq_s16(v153, v152), vnegq_s16(v157)));
  v142.i64[0] = 0x7000700070007;
  v142.i64[1] = 0x7000700070007;
  v161 = vaddq_s16(vaddq_s16(vmlaq_s16(vbicq_s8(v147, vceqzq_s16((*&v149 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), v154, v142), vshlq_n_s16(vaddq_s16(vaddq_s16(v156, v155), v158), 3uLL)), vaddq_s16(v160, v160));
  v162 = vandq_s8(v493, v87);
  v163 = vsubq_s16(v81, v89);
  v164 = vsubq_s16(v81, v90);
  v165 = vmlaq_s16(vandq_s8(v81, v87), v163, v142);
  v166 = vsubq_s16(v81, v92);
  v494 = vsubq_s16(v81, v91);
  v167 = vaddq_s16(v165, vshlq_n_s16(vaddq_s16(vaddq_s16(v494, v164), v166), 3uLL));
  v168 = vorrq_s8(v477, v480);
  v169 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(v167, vaddq_s16(v477, v477)), v161), 0);
  if (vaddvq_s16(v169))
  {
    v170.i64[0] = 0x3000300030003;
    v170.i64[1] = 0x3000300030003;
    v171 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v147), v170), v149), v160);
    v172.i64[0] = 0xF000F000F000FLL;
    v172.i64[1] = 0xF000F000F000FLL;
    v173 = vsubq_s16(v172, v144);
    v172.i64[0] = -1;
    v172.i64[1] = -1;
    v174 = vandq_s8(vsubq_s16(vshlq_s16(v172, v173), v139), v146);
    v22 = vbslq_s8(v169, vsubq_s16(v22, vqtbl1q_s8(v22, xmmword_29D2F1080)), v22);
    v492 = vbslq_s8(v169, v475, v492);
    v175 = vbslq_s8(v169, v473, v482);
    v481 = vbslq_s8(v169, v472, v25);
    v176 = vbslq_s8(v169, v94, v484);
    v177 = vbslq_s8(v169, v97, v488);
    v478 = vbslq_s8(v169, v154, v163);
    v178 = vbslq_s8(v169, v155, v164);
    v494 = vbslq_s8(v169, v156, v494);
    v166 = vbslq_s8(v169, v158, v166);
    v162 = vbslq_s8(v169, v174, v162);
    v81 = vbslq_s8(v169, v147, v81);
    v168 = vbslq_s8(v169, v171, v168);
    v179 = vbslq_s8(v169, v98, v490);
    v180 = vbslq_s8(v169, v96, v148);
    v181 = vbslq_s8(v169, v95, v486);
    if (v84)
    {
LABEL_10:
      v182 = v492;
      v183 = v478;
      goto LABEL_16;
    }
  }

  else
  {
    v478 = v163;
    v481 = v25;
    v177 = v488;
    v179 = v490;
    v180 = v148;
    v176 = v484;
    v181 = v486;
    v175 = v482;
    v178 = v164;
    if (v84)
    {
      goto LABEL_10;
    }
  }

  v483 = v175;
  v474 = v162;
  v485 = v176;
  v487 = v181;
  v476 = v180;
  v489 = v177;
  v491 = v179;
  v185 = v166;
  v194 = vsubq_s16(v11, vqtbl2q_s8(*v11.i8, xmmword_29D2F0F80));
  v186 = vsubq_s16(v12, vqtbl2q_s8(*v11.i8, xmmword_29D2F1030));
  v495.val[0] = v479;
  v495.val[1] = v467;
  v495.val[1].i32[3] = v12.i32[3];
  v187 = vsubq_s16(v479, vqtbl2q_s8(v495, xmmword_29D2F0FA0));
  v188 = vsubq_s16(v467, vqtbl2q_s8(v495, xmmword_29D2F1040));
  v495.val[0] = v469;
  v495.val[1] = v470;
  v495.val[1].i32[3] = v12.i32[3];
  v189 = vsubq_s16(v469, vqtbl2q_s8(v495, xmmword_29D2F1050));
  v190 = vsubq_s16(v470, vqtbl2q_s8(v495, xmmword_29D2F0F80));
  v191 = v468;
  v495.val[0] = v471;
  v495.val[0].i32[3] = v12.i32[3];
  v192 = vsubq_s16(v468, vqtbl2q_s8(v495, xmmword_29D2F1060));
  v193 = v186;
  v193.i32[3] = v194.i32[0];
  v194.i32[0] = v186.i32[3];
  v195 = vsubq_s16(v471, vqtbl2q_s8(v495, xmmword_29D2F0F80));
  v196 = vqtbl1q_s8(vmaxq_s16(v194, v193), xmmword_29D2F1090);
  v197 = vqtbl1q_s8(vminq_s16(v194, v193), xmmword_29D2F1090);
  v198 = vpmaxq_s16(v196, v196);
  v199 = vpminq_s16(v197, v197);
  v200 = vpmaxq_s16(v198, v198);
  v201 = vpminq_s16(v199, v199);
  v191.i64[0] = 0x8000800080008000;
  v191.i64[1] = 0x8000800080008000;
  v202 = vmaxq_s16(v200, v191);
  v495.val[0].i64[0] = 0x8000800080008000;
  v495.val[0].i64[1] = 0x8000800080008000;
  v495.val[0] = vminq_s16(v201, v495.val[0]);
  v203 = vzip1q_s16(v200, v201);
  v200.i64[0] = 0x10001000100010;
  v200.i64[1] = 0x10001000100010;
  v204 = vbicq_s8(vsubq_s16(v200, vclsq_s16(v203)), vceqzq_s16(v203));
  v205 = vpmaxq_s16(v204, v204);
  v206 = vqtbl1q_s8(vmaxq_s16(v187, v188), xmmword_29D2F1090);
  v495.val[1] = vqtbl1q_s8(vminq_s16(v187, v188), xmmword_29D2F1090);
  v207 = vpmaxq_s16(v206, v206);
  v495.val[1] = vpminq_s16(v495.val[1], v495.val[1]);
  v208 = vpmaxq_s16(v207, v207);
  v495.val[1] = vpminq_s16(v495.val[1], v495.val[1]);
  v209 = vmaxq_s16(v202, v208);
  v495.val[0] = vminq_s16(v495.val[0], v495.val[1]);
  v210 = vzip1q_s16(v208, v495.val[1]);
  v211 = vbicq_s8(vsubq_s16(v200, vclsq_s16(v210)), vceqzq_s16(v210));
  v212 = vpmaxq_s16(v211, v211);
  v213 = vqtbl1q_s8(vmaxq_s16(v189, v190), xmmword_29D2F1090);
  v495.val[1] = vqtbl1q_s8(vminq_s16(v189, v190), xmmword_29D2F1090);
  v214 = vpmaxq_s16(v213, v213);
  v495.val[1] = vpminq_s16(v495.val[1], v495.val[1]);
  v215 = vpmaxq_s16(v214, v214);
  v495.val[1] = vpminq_s16(v495.val[1], v495.val[1]);
  v216 = vmaxq_s16(v209, v215);
  v495.val[0] = vminq_s16(v495.val[0], v495.val[1]);
  v217 = vzip1q_s16(v215, v495.val[1]);
  v218 = vbicq_s8(vsubq_s16(v200, vclsq_s16(v217)), vceqzq_s16(v217));
  v219 = vpmaxq_s16(v218, v218);
  v220 = vqtbl1q_s8(vmaxq_s16(v192, v195), xmmword_29D2F1090);
  v495.val[1] = vqtbl1q_s8(vminq_s16(v192, v195), xmmword_29D2F1090);
  v221 = vpmaxq_s16(v220, v220);
  v495.val[1] = vpminq_s16(v495.val[1], v495.val[1]);
  v222 = vpmaxq_s16(v221, v221);
  v495.val[1] = vpminq_s16(v495.val[1], v495.val[1]);
  v223 = vmaxq_s16(v216, v222);
  v224 = vminq_s16(v495.val[0], v495.val[1]);
  v225 = vzip1q_s16(v222, v495.val[1]);
  v226 = vbicq_s8(vsubq_s16(v200, vclsq_s16(v225)), vceqzq_s16(v225));
  v227 = vpmaxq_s16(v226, v226);
  v228 = vmaxq_s16(vmaxq_s16(v205, v212), vmaxq_s16(v219, v227));
  v229 = vclzq_s16(vsubq_s16(v223, v224));
  v230 = vsubq_s16(v200, v229);
  v231 = vcgtq_s16(v228, v230);
  v232 = vminq_s16(v230, v228);
  v233.i64[0] = 0x3000300030003;
  v233.i64[1] = 0x3000300030003;
  v234 = vmaxq_s16(vminq_s16(vsubq_s16(v232, v205), v233), 0);
  v235 = vmaxq_s16(vminq_s16(vsubq_s16(v232, v212), v233), 0);
  v236 = vmaxq_s16(vminq_s16(vsubq_s16(v232, v219), v233), 0);
  v237 = vmaxq_s16(vminq_s16(vsubq_s16(v232, v227), v233), 0);
  v238 = vsubq_s16(v232, v234);
  v239 = vsubq_s16(v232, v235);
  v240 = vsubq_s16(v232, v236);
  v241 = vsubq_s16(v232, v237);
  v242 = vceqq_s16(vaddq_s16(v237, v236), vnegq_s16(vaddq_s16(v234, v235)));
  v237.i64[0] = 0x4000400040004;
  v237.i64[1] = 0x4000400040004;
  v243 = vbicq_s8(v237, v242);
  v235.i64[0] = 0x7000700070007;
  v235.i64[1] = 0x7000700070007;
  v234.i64[0] = 0x8000800080008;
  v234.i64[1] = 0x8000800080008;
  v244 = vandq_s8(v168, v233);
  v245.i64[0] = 0x2000200020002;
  v245.i64[1] = 0x2000200020002;
  v246 = v185;
  v183 = v478;
  v247 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v81, vceqzq_s16(vandq_s8(v168, v234))), vandq_s8(vaddq_s16(v168, v168), v234)), vandq_s8(vceqq_s16(v244, v245), v200)), v478, v235), vshlq_n_s16(vaddq_s16(vaddq_s16(v494, v178), v185), 3uLL)), vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v232, v231), v238, v235), vshlq_n_s16(vaddq_s16(vaddq_s16(v240, v239), v241), 3uLL)), vaddq_s16(v243, v243))), 0);
  if (vaddvq_s16(v247))
  {
    v248 = vandq_s8(vceqzq_s16(v232), v245);
    v249.i64[0] = 0x9000900090009;
    v249.i64[1] = 0x9000900090009;
    v250 = vorrq_s8(vorrq_s8(v248, vsubq_s16(vandq_s8(v231, v249), vmvnq_s8(v231))), v243);
    v251.i64[0] = 0xF000F000F000FLL;
    v251.i64[1] = 0xF000F000F000FLL;
    v252 = vsubq_s16(v251, v229);
    v251.i64[0] = -1;
    v251.i64[1] = -1;
    v22.i32[0] = vbslq_s8(v247, vextq_s8(v12, v12, 0xCuLL), v22).u32[0];
    v182 = vbslq_s8(v247, v194, v492);
    v175 = vbslq_s8(v247, v193, v483);
    v481 = vbslq_s8(v247, v187, v481);
    v176 = vbslq_s8(v247, v188, v485);
    v181 = vbslq_s8(v247, v189, v487);
    v180 = vbslq_s8(v247, v190, v476);
    v177 = vbslq_s8(v247, v192, v489);
    v179 = vbslq_s8(v247, v195, v491);
    v183 = vbslq_s8(v247, v238, v478);
    v178 = vbslq_s8(v247, v239, v178);
    v494 = vbslq_s8(v247, v240, v494);
    v166 = vbslq_s8(v247, v241, v246);
    v162 = vbslq_s8(v247, vandq_s8(vsubq_s16(vshlq_s16(v251, v252), v224), v231), v474);
    v81 = vbslq_s8(v247, v232, v81);
    v168 = vbslq_s8(v247, v250, v168);
  }

  else
  {
    v177 = v489;
    v179 = v491;
    v162 = v474;
    v180 = v476;
    v176 = v485;
    v181 = v487;
    v166 = v246;
    v175 = v483;
    v182 = v492;
  }

LABEL_16:
  v253.i64[0] = 0x8000800080008;
  v253.i64[1] = 0x8000800080008;
  v254 = vandq_s8(v168, v253);
  v255.i64[0] = 0x3000300030003;
  v255.i64[1] = 0x3000300030003;
  v256.i64[0] = 0x2000200020002;
  v256.i64[1] = 0x2000200020002;
  v257 = vceqq_s16(vandq_s8(v168, v255), v256);
  v256.i64[0] = 0x10001000100010;
  v256.i64[1] = 0x10001000100010;
  v258 = vandq_s8(v257, v256);
  v256.i64[0] = 0x7000700070007;
  v256.i64[1] = 0x7000700070007;
  v259 = vaddq_s16(vaddq_s16(vaddq_s16(vmlaq_s16(vshlq_n_s16(vaddq_s16(vaddq_s16(v494, v178), v166), 3uLL), v183, v256), vandq_s8(vaddq_s16(v168, v168), v253)), vbicq_s8(v81, vceqzq_s16(v254))), v258);
  if ((vpaddq_s16(v259, v259).i16[0] - 463) < 0xFFFFFFFFFFFFFDF8)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
    return 64;
  }

  else
  {
    v260 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v261 = 8 * (a1 & 7);
    if (v261)
    {
      v262 = *v260 & ~(-1 << v261);
    }

    else
    {
      v262 = 0;
    }

    *a2 = 0;
    v263.i32[0] = v81.u16[0];
    v263.i32[1] = v81.u16[1];
    v264 = vshr_n_s32(vshl_n_s32(v263, 0x10uLL), 0x10uLL);
    v265 = vand_s8(vbic_s8(vadd_s32(vshl_u32(v264, 0xE0000000ALL), 0x3C00000003C00), vceqz_s32(v264)), 0x3C00000003C00);
    v266 = vorr_s8(vdup_lane_s32(v265, 1), v265).u32[0] | v168.i8[0] & 0x1F | (32 * (v168.i8[2] & 0x1F));
    v267 = v262 | (v266 << v261);
    if (v261 >= 0x2E)
    {
      *v260 = v267;
      v267 = v266 >> (-8 * (a1 & 7u));
    }

    v268 = (v261 + 18) & 0x3A;
    v269 = v267 | (v22.u32[0] << v268);
    if (v268 >= 0x20)
    {
      *(v260 + (((v261 + 18) >> 3) & 8)) = v269;
      v269 = v22.u32[0] >> -v268;
    }

    v270 = v261 + 50;
    v271 = vsubq_s16(v81, v183);
    v272 = vsubq_s16(v81, v178);
    v273 = vsubq_s16(v81, v494);
    v274 = vsubq_s16(v81, v166);
    *v271.i8 = vqmovn_u16(v271);
    *v272.i8 = vqmovn_u16(v272);
    *v273.i8 = vqmovn_u16(v273);
    *v274.i8 = vqmovn_u16(v274);
    v271.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v271, v272), vzip1q_s8(v273, v274)), vzip1q_s16(vtrn2q_s8(v271, v272), vtrn2q_s8(v273, v274))).u64[0];
    v273.i64[0] = 0x202020202020202;
    v273.i64[1] = 0x202020202020202;
    v275 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v168.i8, 0x4000400040004)))), v273);
    v273.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v273.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v274.i64[0] = -1;
    v274.i64[1] = -1;
    v276 = vandq_s8(vshlq_u8(v274, vorrq_s8(v275, v273)), v271.u64[0]);
    v277 = vmovl_u8(*v275.i8);
    v278 = vpaddq_s16(vshlq_u16(vmovl_u8(*v276.i8), vtrn1q_s16(0, v277)), vmovl_high_u8(v276));
    v279 = vpaddq_s16(v277, vmovl_high_u8(v275));
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
    v290 = (v261 + 50) & 0x3A;
    v291 = (v288.i64[0] << v290) | v269;
    if ((v289.i64[0] + v290) >= 0x40)
    {
      *(v260 + ((v270 >> 3) & 8)) = v291;
      v291 = v288.i64[0] >> -v290;
    }

    v292 = vceqq_s16(v81, v183);
    v293 = v289.i64[0] + v270;
    v294 = v291 | (v288.i64[1] << v293);
    if ((v293 & 0x3F) + v289.i64[1] >= 0x40)
    {
      *(v260 + ((v293 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v294;
      v294 = v288.i64[1] >> -(v293 & 0x3F);
      if ((v293 & 0x3F) == 0)
      {
        v294 = 0;
      }
    }

    v295 = vandq_s8(v162, v292);
    v296 = v293 + v289.i64[1];
    v297.i64[0] = -1;
    v297.i64[1] = -1;
    v298 = vandq_s8(vextq_s8(vtstq_s16(v254, v254), 0, 0xCuLL), v81);
    v299.i64[0] = 0xF000F000F000FLL;
    v299.i64[1] = 0xF000F000F000FLL;
    v300 = vandq_s8(vshlq_u16(v297, vaddq_s16(v298, v299)), v162);
    v301 = vmovl_u16(*v298.i8);
    v302 = vpaddq_s32(vshlq_u32(vmovl_u16(*v300.i8), vtrn1q_s32(0, v301)), vmovl_high_u16(v300));
    v303 = vpaddq_s32(v301, vmovl_high_u16(v298));
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
    v310 = (v308.i64[0] << v296) | v294;
    if (v309.i64[0] + (v296 & 0x3F) >= 0x40)
    {
      *(v260 + ((v296 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v310;
      v310 = v308.i64[0] >> -(v296 & 0x3F);
      if ((v296 & 0x3F) == 0)
      {
        v310 = 0;
      }
    }

    v311 = vaddq_s16(v295, v182);
    v312 = v309.i64[0] + v296;
    v313 = v310 | (v308.i64[1] << v312);
    if ((v312 & 0x3F) + v309.i64[1] >= 0x40)
    {
      *(v260 + ((v312 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v313;
      v313 = v308.i64[1] >> -(v312 & 0x3F);
      if ((v312 & 0x3F) == 0)
      {
        v313 = 0;
      }
    }

    v314 = v312 + v309.i64[1];
    v315 = vextq_s8(0, v183, 0xCuLL);
    v316.i64[0] = 0xF000F000F000FLL;
    v316.i64[1] = 0xF000F000F000FLL;
    v317.i64[0] = -1;
    v317.i64[1] = -1;
    v318 = vandq_s8(vshlq_u16(v317, vaddq_s16(v315, v316)), v311);
    v319 = vmovl_u16(*v315.i8);
    v320 = vmovl_high_u16(v315);
    v321 = vpaddq_s32(vshlq_u32(vmovl_u16(*v318.i8), vtrn1q_s32(0, v319)), vshlq_u32(vmovl_high_u16(v318), vtrn1q_s32(0, v320)));
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
    v329 = (v327.i64[0] << v314) | v313;
    if (v328.i64[0] + (v314 & 0x3F) >= 0x40)
    {
      *(v260 + ((v314 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v329;
      v329 = v327.i64[0] >> -(v314 & 0x3F);
      if ((v314 & 0x3F) == 0)
      {
        v329 = 0;
      }
    }

    v330 = vceqq_s16(v81, v178);
    v331 = vaddq_s16(v175, v295);
    v332 = v328.i64[0] + v314;
    v333 = v329 | (v327.i64[1] << v332);
    if ((v332 & 0x3F) + v328.i64[1] >= 0x40)
    {
      *(v260 + ((v332 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v333;
      v333 = v327.i64[1] >> -(v332 & 0x3F);
      if ((v332 & 0x3F) == 0)
      {
        v333 = 0;
      }
    }

    v334 = vandq_s8(v162, v330);
    v335 = v332 + v328.i64[1];
    v336.i64[0] = 0xF000F000F000FLL;
    v336.i64[1] = 0xF000F000F000FLL;
    v337.i64[0] = -1;
    v337.i64[1] = -1;
    v338 = vandq_s8(vshlq_u16(v337, vaddq_s16(v183, v336)), v331);
    v339 = vmovl_u16(*v183.i8);
    v340 = vmovl_high_u16(v183);
    v341 = vpaddq_s32(vshlq_u32(vmovl_u16(*v338.i8), vtrn1q_s32(0, v339)), vshlq_u32(vmovl_high_u16(v338), vtrn1q_s32(0, v340)));
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
    v349 = (v347.i64[0] << v335) | v333;
    if (v348.i64[0] + (v335 & 0x3F) >= 0x40)
    {
      *(v260 + ((v335 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v349;
      v349 = v347.i64[0] >> -(v335 & 0x3F);
      if ((v335 & 0x3F) == 0)
      {
        v349 = 0;
      }
    }

    v350 = vaddq_s16(v481, v334);
    v351 = v348.i64[0] + v335;
    v352 = v349 | (v347.i64[1] << v351);
    if ((v351 & 0x3F) + v348.i64[1] >= 0x40)
    {
      *(v260 + ((v351 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v352;
      v352 = v347.i64[1] >> -(v351 & 0x3F);
      if ((v351 & 0x3F) == 0)
      {
        v352 = 0;
      }
    }

    v353 = v351 + v348.i64[1];
    v354.i64[0] = 0xF000F000F000FLL;
    v354.i64[1] = 0xF000F000F000FLL;
    v355.i64[0] = -1;
    v355.i64[1] = -1;
    v356 = vshlq_u16(v355, vaddq_s16(v178, v354));
    v357 = vandq_s8(v356, v350);
    v358 = vmovl_u16(*v357.i8);
    v359 = vmovl_high_u16(v357);
    v360 = vmovl_u16(*v178.i8);
    v361 = vmovl_high_u16(v178);
    v362 = vtrn1q_s32(0, v360);
    v363 = vtrn1q_s32(0, v361);
    v364 = vpaddq_s32(vshlq_u32(v358, v362), vshlq_u32(v359, v363));
    v365 = vpaddq_s32(v360, v361);
    v366.i64[0] = v364.u32[0];
    v366.i64[1] = v364.u32[1];
    v367 = v366;
    v366.i64[0] = v364.u32[2];
    v366.i64[1] = v364.u32[3];
    v368 = v366;
    v366.i64[0] = v365.u32[0];
    v366.i64[1] = v365.u32[1];
    v369 = v366;
    v366.i64[0] = v365.u32[2];
    v366.i64[1] = v365.u32[3];
    v370 = vzip1q_s64(0, v369);
    v371 = vzip1q_s64(0, v366);
    v372 = vpaddq_s64(vshlq_u64(v367, v370), vshlq_u64(v368, v371));
    v373 = vpaddq_s64(v369, v366);
    v374 = (v372.i64[0] << v353) | v352;
    if (v373.i64[0] + (v353 & 0x3F) >= 0x40)
    {
      *(v260 + ((v353 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v374;
      if ((v353 & 0x3F) != 0)
      {
        v374 = v372.i64[0] >> -(v353 & 0x3F);
      }

      else
      {
        v374 = 0;
      }
    }

    v375 = vceqq_s16(v81, v494);
    v376 = vaddq_s16(v176, v334);
    v377 = v373.i64[0] + v353;
    v378 = v374 | (v372.i64[1] << v377);
    if ((v377 & 0x3F) + v373.i64[1] >= 0x40)
    {
      *(v260 + ((v377 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v378;
      v378 = v372.i64[1] >> -(v377 & 0x3F);
      if ((v377 & 0x3F) == 0)
      {
        v378 = 0;
      }
    }

    v379 = vandq_s8(v162, v375);
    v380 = v377 + v373.i64[1];
    v381 = vandq_s8(v356, v376);
    v382 = vpaddq_s32(vshlq_u32(vmovl_u16(*v381.i8), v362), vshlq_u32(vmovl_high_u16(v381), v363));
    v383.i64[0] = v382.u32[0];
    v383.i64[1] = v382.u32[1];
    v384 = v383;
    v383.i64[0] = v382.u32[2];
    v383.i64[1] = v382.u32[3];
    v385 = vpaddq_s64(vshlq_u64(v384, v370), vshlq_u64(v383, v371));
    v386 = (v385.i64[0] << v380) | v378;
    if (v373.i64[0] + (v380 & 0x3F) >= 0x40)
    {
      *(v260 + ((v380 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v386;
      v386 = v385.i64[0] >> -(v380 & 0x3F);
      if ((v380 & 0x3F) == 0)
      {
        v386 = 0;
      }
    }

    v387 = vaddq_s16(v181, v379);
    v388 = v373.i64[0] + v380;
    v389 = (v373.i64[0] + v380) & 0x3F;
    v390 = v386 | (v385.i64[1] << v388);
    if ((v388 & 0x3F) + v373.i64[1] >= 0x40)
    {
      *(v260 + ((v388 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v390;
      v390 = v385.i64[1] >> -v389;
      if (!v389)
      {
        v390 = 0;
      }
    }

    v391 = v388 + v373.i64[1];
    v392.i64[0] = 0xF000F000F000FLL;
    v392.i64[1] = 0xF000F000F000FLL;
    v393.i64[0] = -1;
    v393.i64[1] = -1;
    v394 = vshlq_u16(v393, vaddq_s16(v494, v392));
    v395 = vandq_s8(v394, v387);
    v396 = vmovl_u16(*v395.i8);
    v397 = vmovl_high_u16(v395);
    v398 = vmovl_u16(*v494.i8);
    v399 = vmovl_high_u16(v494);
    v400 = vtrn1q_s32(0, v398);
    v401 = vtrn1q_s32(0, v399);
    v402 = vpaddq_s32(vshlq_u32(v396, v400), vshlq_u32(v397, v401));
    v403 = vpaddq_s32(v398, v399);
    v404.i64[0] = v402.u32[0];
    v404.i64[1] = v402.u32[1];
    v405 = v404;
    v404.i64[0] = v402.u32[2];
    v404.i64[1] = v402.u32[3];
    v406 = v404;
    v404.i64[0] = v403.u32[0];
    v404.i64[1] = v403.u32[1];
    v407 = v404;
    v404.i64[0] = v403.u32[2];
    v404.i64[1] = v403.u32[3];
    v408 = vzip1q_s64(0, v407);
    v409 = vzip1q_s64(0, v404);
    v410 = vpaddq_s64(vshlq_u64(v405, v408), vshlq_u64(v406, v409));
    v411 = vpaddq_s64(v407, v404);
    v412 = (v388 + v373.i64[1]) & 0x3F;
    v413 = (v410.i64[0] << (v388 + v373.i8[8])) | v390;
    if ((v411.i64[0] + v412) >= 0x40)
    {
      *(v260 + ((v391 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v413;
      if (v412)
      {
        v413 = v410.i64[0] >> -v412;
      }

      else
      {
        v413 = 0;
      }
    }

    v414 = vceqq_s16(v81, v166);
    v415 = vaddq_s16(v180, v379);
    v416 = v411.i64[0] + v391;
    v417 = v413 | (v410.i64[1] << v416);
    if ((v416 & 0x3F) + v411.i64[1] >= 0x40)
    {
      *(v260 + ((v416 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v417;
      v417 = v410.i64[1] >> -(v416 & 0x3F);
      if ((v416 & 0x3F) == 0)
      {
        v417 = 0;
      }
    }

    v418 = vandq_s8(v162, v414);
    v419 = v416 + v411.i64[1];
    v420 = vandq_s8(v394, v415);
    v421 = vpaddq_s32(vshlq_u32(vmovl_u16(*v420.i8), v400), vshlq_u32(vmovl_high_u16(v420), v401));
    v422.i64[0] = v421.u32[0];
    v422.i64[1] = v421.u32[1];
    v423 = v422;
    v422.i64[0] = v421.u32[2];
    v422.i64[1] = v421.u32[3];
    v424 = vpaddq_s64(vshlq_u64(v423, v408), vshlq_u64(v422, v409));
    v425 = (v424.i64[0] << v419) | v417;
    if (v411.i64[0] + (v419 & 0x3F) >= 0x40)
    {
      *(v260 + ((v419 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v425;
      v425 = v424.i64[0] >> -(v419 & 0x3F);
      if ((v419 & 0x3F) == 0)
      {
        v425 = 0;
      }
    }

    v426 = vaddq_s16(v177, v418);
    v427 = v411.i64[0] + v419;
    v428 = (v411.i64[0] + v419) & 0x3F;
    v429 = v425 | (v424.i64[1] << v427);
    if ((v427 & 0x3F) + v411.i64[1] >= 0x40)
    {
      *(v260 + ((v427 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v429;
      v429 = v424.i64[1] >> -v428;
      if (!v428)
      {
        v429 = 0;
      }
    }

    v430 = v427 + v411.i64[1];
    v431.i64[0] = 0xF000F000F000FLL;
    v431.i64[1] = 0xF000F000F000FLL;
    v432.i64[0] = -1;
    v432.i64[1] = -1;
    v433 = vshlq_u16(v432, vaddq_s16(v166, v431));
    v434 = vandq_s8(v433, v426);
    v435 = vmovl_u16(*v434.i8);
    v436 = vmovl_high_u16(v434);
    v437 = vmovl_u16(*v166.i8);
    v438 = vmovl_high_u16(v166);
    v439 = vtrn1q_s32(0, v437);
    v440 = vtrn1q_s32(0, v438);
    v441 = vpaddq_s32(vshlq_u32(v435, v439), vshlq_u32(v436, v440));
    v442 = vpaddq_s32(v437, v438);
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
    v447 = vzip1q_s64(0, v446);
    v448 = vzip1q_s64(0, v443);
    v449 = vpaddq_s64(vshlq_u64(v444, v447), vshlq_u64(v445, v448));
    v450 = vpaddq_s64(v446, v443);
    v451 = (v427 + v411.i64[1]) & 0x3F;
    v452 = (v449.i64[0] << (v427 + v411.i8[8])) | v429;
    if ((v450.i64[0] + v451) > 0x3F)
    {
      *(v260 + ((v430 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v452;
      if (v451)
      {
        v452 = v449.i64[0] >> -v451;
      }

      else
      {
        v452 = 0;
      }
    }

    v453 = vaddq_s16(v179, v418);
    v454 = v450.i64[0] + v430;
    v455 = v452 | (v449.i64[1] << v454);
    if ((v454 & 0x3F) + v450.i64[1] >= 0x40)
    {
      *(v260 + ((v454 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v455;
      v455 = v449.i64[1] >> -(v454 & 0x3F);
      if ((v454 & 0x3F) == 0)
      {
        v455 = 0;
      }
    }

    v456 = v454 + v450.i64[1];
    v457 = vandq_s8(v433, v453);
    v458 = vpaddq_s32(vshlq_u32(vmovl_u16(*v457.i8), v439), vshlq_u32(vmovl_high_u16(v457), v440));
    v459.i64[0] = v458.u32[0];
    v459.i64[1] = v458.u32[1];
    v460 = v459;
    v459.i64[0] = v458.u32[2];
    v459.i64[1] = v458.u32[3];
    v461 = vpaddq_s64(vshlq_u64(v460, v447), vshlq_u64(v459, v448));
    v462 = (v461.i64[0] << v456) | v455;
    if (v450.i64[0] + (v456 & 0x3F) >= 0x40)
    {
      *(v260 + ((v456 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v462;
      v462 = v461.i64[0] >> -(v456 & 0x3F);
      if ((v456 & 0x3F) == 0)
      {
        v462 = 0;
      }
    }

    v463 = v450.i64[0] + v456;
    v464 = (v450.i64[0] + v456) & 0x3F;
    v465 = v462 | (v461.i64[1] << (v450.i8[0] + v456));
    if ((v464 + v450.i64[1]) >= 0x40)
    {
      *(v260 + ((v463 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v465;
      v465 = v461.i64[1] >> -v464;
      if (!v464)
      {
        v465 = 0;
      }
    }

    v466 = v463 + v450.i64[1];
    if ((v466 & 0x3F) != 0)
    {
      *(v260 + ((v466 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v465;
    }

    result = (v466 - v261 + 7) >> 3;
    *a2 |= result - 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
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

  v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v54, a7, v40, v42);
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

  v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 16, &v54, a7, v40, v45);
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
  v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 32, &v54, a7, v47, v42);
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
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 48, &v54, a7, v47, v45);
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(unint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v5 = 0;
  v328 = *MEMORY[0x29EDCA608];
  v6 = a5 == 0;
  if (a4)
  {
    v7 = a5 < 2;
  }

  else
  {
    v7 = 1;
  }

  v277 = v7;
  v8 = a4 < 2 || a5 == 0;
  v276 = v8;
  v9 = a4 < 2 || a5 < 2;
  v275 = v9;
  v10 = a4 < 3 || a5 == 0;
  v274 = v10;
  v11 = a4 < 3 || a5 < 2;
  v273 = v11;
  if (a4 < 4)
  {
    v6 = 1;
  }

  v272 = v6;
  v12 = a4 < 4 || a5 < 2;
  v271 = v12;
  v13 = &v310;
  v14 = &v312;
  v15 = &v316;
  v16 = &v320;
  v17 = &v324;
  v18 = &v326;
  v19 = &v295;
  v20 = v293;
  v21 = &v291;
  v22 = &v289;
  v23 = &v287;
  v24 = v285;
  v25 = 1;
  v26 = &v314;
  v27 = &v318;
  v28 = &v322;
  v270 = a3;
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
    if (v276)
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
    if (v277)
    {
      if (v275)
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
      if (v275)
      {
LABEL_69:
        if (v274)
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
    if (v274)
    {
LABEL_70:
      if (v272)
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
    if (!v272)
    {
      goto LABEL_90;
    }

LABEL_96:
    a3 = v270;
    if (!v273)
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

    if (!v271)
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
    if ((v270 | 2) == 3)
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
      v62 = kDQuadParamTable[160 * v30 + 4 + 10 * v60] - v61;
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
      v89 = v64 != 0 && v68;
      v65 = v46 & ~(-1 << v64);
      if (!v89)
      {
        v65 = 0;
      }

      v66 = v65 + v63;
      v89 = v66 < 1;
      v67 = __clz(v66 + v54);
      v68 = v89 || v67 >= v55;
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
    v19 = &v294;
    v20 = v292;
    v21 = &v290;
    v22 = &v288;
    v23 = &v286;
    v24 = v284;
    v14 = &v313;
    v13 = &v311;
    v15 = &v317;
    v26 = &v315;
    v16 = &v321;
    v27 = &v319;
    v17 = &v325;
    v28 = &v323;
    v18 = &v327;
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
  v264 = v71;
  v72 = v287;
  v73 = v326;
  v74 = v327;
  v76 = v327 >= v326;
  v77 = v286;
  v78 = kDQuadParamTable[160 * v286 + 6 + 10 * v327];
  v298 = kDQuadParamTable[160 * v287 + 6 + 10 * v326];
  v75 = v298;
  v299 = v78;
  v300[0] = v298;
  v300[1] = v78;
  if (*(&v326 + (v327 >= v326)) == *(&v326 + (v327 < v326)))
  {
    v79 = v298;
  }

  else
  {
    v80 = v300[v327 < v326];
    v79 = v298;
    if (v80 >= 1)
    {
      *(&v298 + (v327 < v326)) = 0;
      *(&v298 + v76) += v80;
      v79 = v298;
    }
  }

  v81 = &kDQuadParamTable[160 * v72 + 10 * v73];
  v82 = *(v81 + 1);
  v84 = v81[4];
  v83 = v81[5];
  v283 = v84;
  v281 = v83;
  v85 = v79 - v75;
  if (v85 < 0)
  {
    v87 = &kDQuadParamTable[160 * v72 + 10 * v73];
    if (v87[7] < -v85)
    {
      v281 = --v83;
      if (!v87[8])
      {
        v86 = -1;
LABEL_177:
        v283 = v86 + v84;
      }
    }
  }

  else if (v85)
  {
    v83 += v85;
    v281 = v83;
    v86 = v85;
    goto LABEL_177;
  }

  v89 = v72 == 5 && v73 == 1 && v85 < 2;
  v90 = v89;
  if (v270 == 4)
  {
    v91 = 1 << (v295 - 1);
    if (v72 == 3)
    {
      v92 = -31745;
    }

    else
    {
      v92 = -1;
    }

    if (v72 == 4)
    {
      v93 = -2139095041;
    }

    else
    {
      v93 = v92;
    }

    if (v264)
    {
      if (v276)
      {
        goto LABEL_198;
      }

LABEL_352:
      if ((v312 | v93) == 0xFFFFFFFF || v312 == v91)
      {
        v90 = 1;
      }

      if (!v277)
      {
        goto LABEL_359;
      }

LABEL_199:
      if (v275)
      {
        goto LABEL_200;
      }

LABEL_366:
      if ((v316 | v93) == 0xFFFFFFFF || v316 == v91)
      {
        v90 = 1;
      }

      if (!v274)
      {
        goto LABEL_373;
      }

LABEL_201:
      if (v272)
      {
        goto LABEL_202;
      }

LABEL_380:
      if ((v320 | v93) == 0xFFFFFFFF || v320 == v91)
      {
        v90 = 1;
      }

      if (!v273)
      {
        goto LABEL_387;
      }

LABEL_203:
      if (!v271)
      {
        goto LABEL_204;
      }
    }

    else
    {
      if ((v310 | v93) == 0xFFFFFFFF || v310 == v91)
      {
        v90 = 1;
      }

      if (!v276)
      {
        goto LABEL_352;
      }

LABEL_198:
      if (v277)
      {
        goto LABEL_199;
      }

LABEL_359:
      if ((v314 | v93) == 0xFFFFFFFF || v314 == v91)
      {
        v90 = 1;
      }

      if (!v275)
      {
        goto LABEL_366;
      }

LABEL_200:
      if (v274)
      {
        goto LABEL_201;
      }

LABEL_373:
      if ((v318 | v93) == 0xFFFFFFFF || v318 == v91)
      {
        v90 = 1;
      }

      if (!v272)
      {
        goto LABEL_380;
      }

LABEL_202:
      if (v273)
      {
        goto LABEL_203;
      }

LABEL_387:
      if ((v322 | v93) == 0xFFFFFFFF || v322 == v91)
      {
        v90 = 1;
      }

      if (!v271)
      {
LABEL_204:
        if ((v324 | v93) == 0xFFFFFFFF || v324 == v91)
        {
          v90 = 1;
        }
      }
    }
  }

  v89 = v82 >> v83 > 0x100;
  v95 = v264;
  if (v89)
  {
    v95 = 1;
  }

  v96 = v95 | v90;
  v97 = &kDQuadParamTable[160 * v77 + 10 * v74];
  v98 = *(v97 + 1);
  v99 = v97[4];
  v100 = v97[5];
  v282 = v99;
  v280 = v100;
  v101 = v299 - v78;
  if (v101 < 0)
  {
    v103 = &kDQuadParamTable[160 * v77 + 10 * v74];
    if (v103[7] < -v101)
    {
      v280 = --v100;
      if (!v103[8])
      {
        v102 = -1;
LABEL_216:
        v282 = v102 + v99;
      }
    }
  }

  else if (v101)
  {
    v100 += v101;
    v280 = v100;
    v102 = v101;
    goto LABEL_216;
  }

  if (v77 == 5 && v74 == 1)
  {
    v96 |= v101 < 2;
  }

  v260 = v73;
  if (v270 == 4)
  {
    v104 = 1 << (v294 - 1);
    if (v77 == 3)
    {
      v105 = -31745;
    }

    else
    {
      v105 = -1;
    }

    if (v77 == 4)
    {
      v106 = -2139095041;
    }

    else
    {
      v106 = v105;
    }

    if (v264)
    {
      if (v276)
      {
        goto LABEL_231;
      }

LABEL_402:
      v204 = (v313 | v106) == 0xFFFFFFFF || v313 == v104;
      v96 |= v204;
      if (!v277)
      {
        goto LABEL_409;
      }

LABEL_232:
      if (v275)
      {
        goto LABEL_233;
      }

LABEL_416:
      v208 = (v317 | v106) == 0xFFFFFFFF || v317 == v104;
      v96 |= v208;
      if (!v274)
      {
        goto LABEL_423;
      }

LABEL_234:
      if (v272)
      {
        goto LABEL_235;
      }

LABEL_430:
      v212 = (v321 | v106) == 0xFFFFFFFF || v321 == v104;
      v96 |= v212;
      if (v273)
      {
        goto LABEL_243;
      }

LABEL_236:
      v108 = (v323 | v106) == 0xFFFFFFFF || v323 == v104;
      v96 |= v108;
      goto LABEL_243;
    }

    v202 = (v311 | v106) == 0xFFFFFFFF || v311 == v104;
    v96 |= v202;
    if (!v276)
    {
      goto LABEL_402;
    }

LABEL_231:
    if (v277)
    {
      goto LABEL_232;
    }

LABEL_409:
    v206 = (v315 | v106) == 0xFFFFFFFF || v315 == v104;
    v96 |= v206;
    if (!v275)
    {
      goto LABEL_416;
    }

LABEL_233:
    if (v274)
    {
      goto LABEL_234;
    }

LABEL_423:
    v210 = (v319 | v106) == 0xFFFFFFFF || v319 == v104;
    v96 |= v210;
    if (!v272)
    {
      goto LABEL_430;
    }

LABEL_235:
    if (!v273)
    {
      goto LABEL_236;
    }

LABEL_243:
    v109 = &v314;
    v110 = v302;
    if (!v271)
    {
      v112 = (v325 | v106) == 0xFFFFFFFF || v325 == v104;
      v96 |= v112;
    }

    v262 = v96;
  }

  else
  {
    v262 = v96;
    v109 = &v314;
    v110 = v302;
  }

  v113 = 0;
  v114 = v264;
  if (v98 >> v100 > 0x100)
  {
    v114 = 1;
  }

  v261 = v114;
  v279 = 0;
  v278 = 0;
  v115 = &v295;
  v116 = v293;
  v297 = 0;
  v269 = &v289;
  v117 = &v326;
  v118 = &v287;
  v267 = v285;
  v119 = &v283;
  v120 = &v281;
  memset(v296, 0, sizeof(v296));
  v121 = &v279;
  v122 = 1;
  v123 = v301;
  v124 = &v310;
  v125 = &v305 + 4;
  v126 = &v304 + 4;
  v127 = &v305;
  v129 = &v303 + 4;
  v128 = &v304;
  v130 = &v316;
  v131 = &v303;
  v132 = &v312;
  v134 = &v320;
  v133 = &v318;
  v136 = &v324;
  v135 = &v322;
  do
  {
    v137 = 0;
    v138 = 0;
    v139 = *v115;
    if (v139 >= *v119)
    {
      v140 = *v119;
    }

    else
    {
      v140 = v139;
    }

    *v119 = v140;
    v141 = &kDQuadParamTable[160 * *v118 + 10 * *v117];
    if (v141[5])
    {
      v142 = v139;
    }

    else
    {
      v142 = 0;
    }

    v143 = *v120;
    if (v142 < *v120)
    {
      v143 = v142;
    }

    v268 = v122;
    *v120 = v143;
    v144 = -1 << v139;
    v145 = *(v141 + 1);
    v146 = *v116 & (-1 << (v139 - v140));
    *v121 = v146;
    v147 = v145 >> v143;
    v148 = *v124 - v146;
    if (v264)
    {
      v148 = 0;
    }

    *v123 = v148;
    v149 = *v132 - v146;
    if (v276)
    {
      v149 = 0;
    }

    *v110 = v149;
    v150 = *v109 - v146;
    if (v277)
    {
      v150 = 0;
    }

    *v131 = v150;
    v151 = *v130 - v146;
    if (v275)
    {
      v151 = 0;
    }

    *v129 = v151;
    v152 = *v133 - v146;
    if (v274)
    {
      v152 = 0;
    }

    *v128 = v152;
    v153 = *v134 - v146;
    if (v272)
    {
      v153 = 0;
    }

    *v126 = v153;
    v154 = *v135 - v146;
    if (v273)
    {
      v154 = 0;
    }

    *v127 = v154;
    v155 = *v136 - v146;
    if (v271)
    {
      v155 = 0;
    }

    *v125 = v155;
    if (v147 <= 1)
    {
      v156 = 1;
    }

    else
    {
      v156 = v145 >> v143;
    }

    v157 = &v301[32 * v113];
    v158 = 4 * v113;
    v159 = 4 * *v269;
    v160 = v296 + 28 * v113;
    v161 = &byte_29D2F3081;
    do
    {
      if (v159 != v137)
      {
        if (v143)
        {
          v162 = *&v157[v137] / v156;
        }

        else
        {
          LODWORD(v162) = 0;
        }

        *&v160[4 * v138] = v162;
        if (v147 >= 2)
        {
          v163 = *&v157[v137];
          if (v163)
          {
            if (v163 / v156 * v156 == v163 && ((v163 / v156) & 1) != 0)
            {
              if (v146 || v162 != 1)
              {
                if ((v270 | 2) != 3 || (v165 = *(&v310 + v158), v166 = *v267, v165 != v166) && ((v270 | 2) != 3 || v156 + v166 != v165))
                {
                  LODWORD(v162) = v162 - 1;
                  *&v160[4 * v138] = v162;
                }
              }

              else
              {
                LODWORD(v162) = 1;
              }
            }
          }
        }

        if (v162 >> v143 || (*(&v310 + v158) ^ v144) == 0xFFFFFFFF)
        {
          *&v160[4 * v138] = ~(-1 << v143);
        }

        if (*v161 >= a5 || *(v161 - 1) >= a4)
        {
          *&v160[4 * v138] = 0;
        }

        ++v138;
      }

      v137 += 4;
      v158 += 8;
      v161 += 2;
    }

    while (v137 != 32);
    v122 = 0;
    v115 = &v294;
    v116 = v292;
    v269 = &v288;
    v118 = &v286;
    v267 = v284;
    v119 = &v282;
    v120 = &v280;
    v121 = &v278;
    v110 = &v306 + 4;
    v123 = &v306;
    v129 = &v307 + 4;
    v131 = &v307;
    v126 = &v308 + 4;
    v128 = &v308;
    v125 = &v309 + 4;
    v127 = &v309;
    v132 = &v313;
    v124 = &v311;
    v130 = &v317;
    v109 = &v315;
    v134 = &v321;
    v133 = &v319;
    v136 = &v325;
    v135 = &v323;
    v117 = &v327;
    v113 = 1;
  }

  while ((v268 & 1) != 0);
  v167 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v168 = 8 * (a1 & 7);
  *a1 = 0;
  *(a1 + 8) = 0;
  if ((v261 | v262))
  {
    v169 = 0;
    v170 = 0;
    v171 = v295;
    v172 = v295 - 8;
    v173 = v294;
    v174 = v294 - 8;
    v175 = 8 * (a1 & 7);
    while (1)
    {
      v176 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v169;
      v177 = v176[1] < a5 && a4 > *v176;
      v178 = !v177;
      if (v177)
      {
        v179 = *(&v310 + 2 * v169) >> 8;
        if (v172 > 0x100)
        {
          goto LABEL_331;
        }
      }

      else
      {
        v179 = 0;
        if (v172 > 0x100)
        {
          goto LABEL_331;
        }
      }

      if (v171 != 8 && v175 - v168 + (v170 << 6) + v172 <= 0x80)
      {
        v180 = 0;
        v181 = v172;
        do
        {
          v182 = 64 - v175;
          if (64 - v175 >= v181)
          {
            v182 = v181;
          }

          v167[v170] |= ((v179 >> v180) & ~(-1 << v182)) << v175;
          v180 += v182;
          v183 = v182 + v175;
          v170 += v183 >> 6;
          v175 = v183 & 0x3F;
          v181 -= v182;
        }

        while (v181);
      }

LABEL_331:
      if (v178)
      {
        v184 = 0;
        if (v174 <= 0x100)
        {
          goto LABEL_335;
        }
      }

      else
      {
        v184 = *(&v310 + 2 * v169 + 1) >> 8;
        if (v174 <= 0x100)
        {
LABEL_335:
          if (v173 != 8 && v175 - v168 + (v170 << 6) + v174 <= 0x80)
          {
            v185 = 0;
            v186 = v174;
            do
            {
              v187 = 64 - v175;
              if (64 - v175 >= v186)
              {
                v187 = v186;
              }

              v167[v170] |= ((v184 >> v185) & ~(-1 << v187)) << v175;
              v185 += v187;
              v188 = v187 + v175;
              v170 += v188 >> 6;
              v175 = v188 & 0x3F;
              v186 -= v187;
            }

            while (v186);
          }
        }
      }

      if (++v169 == 8)
      {
        return (v261 | v262) & 1;
      }
    }
  }

  v189 = ((v260 & 0xF) << v168) | *v167;
  *v167 = v189;
  v190 = v168 | 4;
  v191 = v327;
  if ((v168 | 4uLL) - v168 - 125 < 0xFFFFFFFFFFFFFF7FLL)
  {
    v192 = 0;
    v193 = v295;
    if (!v260)
    {
      goto LABEL_439;
    }

    goto LABEL_443;
  }

  *v167 = ((v327 & 0xF) << v190) | v189;
  v190 = (v168 + 8) & 0x38;
  v192 = (v168 + 8) >> 6;
  v193 = v295;
  if (v260)
  {
    goto LABEL_443;
  }

LABEL_439:
  if (v193 == 2 || v193 >= 0x10)
  {
LABEL_443:
    v215 = v283;
    if (v283 <= 0x100 && v283 && v190 - v168 + (v192 << 6) + v283 <= 0x80)
    {
      v216 = 0;
      v217 = v279 >> (v193 - v283);
      v218 = v283;
      do
      {
        v219 = 64 - v190;
        if (64 - v190 >= v218)
        {
          v219 = v218;
        }

        v167[v192] |= ((v217 >> v216) & ~(-1 << v219)) << v190;
        v216 += v219;
        v220 = v219 + v190;
        v192 += v220 >> 6;
        v190 = v220 & 0x3F;
        v218 -= v219;
      }

      while (v218);
    }

    v213 = v215 + 8;
    v214 = v294;
    if (v191)
    {
      goto LABEL_451;
    }

LABEL_504:
    if (v214 == 2 || v214 >= 0x10)
    {
      goto LABEL_451;
    }
  }

  else
  {
    v213 = 8;
    v214 = v294;
    if (!v191)
    {
      goto LABEL_504;
    }

LABEL_451:
    v221 = v282;
    if (v282 <= 0x100 && v282 && v190 - v168 + (v192 << 6) + v282 <= 0x80)
    {
      v222 = 0;
      v223 = v278 >> (v214 - v282);
      v224 = v282;
      do
      {
        v225 = 64 - v190;
        if (64 - v190 >= v224)
        {
          v225 = v224;
        }

        v167[v192] |= ((v223 >> v222) & ~(-1 << v225)) << v190;
        v222 += v225;
        v226 = v225 + v190;
        v192 += v226 >> 6;
        v190 = v226 & 0x3F;
        v224 -= v225;
      }

      while (v224);
    }

    v213 += v221;
  }

  v227 = v281;
  if (v281)
  {
    if (v190 - v168 + (v192 << 6) + 3 <= 0x80)
    {
      v228 = 0;
      v229 = v289;
      v230 = 3;
      do
      {
        v231 = 64 - v190;
        if (64 - v190 >= v230)
        {
          v231 = v230;
        }

        v167[v192] |= ((v229 >> v228) & ~(-1 << v231)) << v190;
        v228 += v231;
        v232 = v231 + v190;
        v192 += v232 >> 6;
        v190 = v232 & 0x3F;
        v230 -= v231;
      }

      while (v230);
    }

    v213 += 3;
  }

  v233 = v280;
  if (v280)
  {
    if (v190 - v168 + (v192 << 6) + 3 <= 0x80)
    {
      v234 = 0;
      v235 = v288;
      v236 = 3;
      do
      {
        v237 = 64 - v190;
        if (64 - v190 >= v236)
        {
          v237 = v236;
        }

        v167[v192] |= ((v235 >> v234) & ~(-1 << v237)) << v190;
        v234 += v237;
        v238 = v237 + v190;
        v192 += v238 >> 6;
        v190 = v238 & 0x3F;
        v236 -= v237;
      }

      while (v236);
    }

    v213 += 3;
  }

  v239 = 128 - v213;
  v240 = (128 - v213) / 7u;
  v241 = v239 % 7;
  if ((v241 - 257) >= 0xFFFFFF00 && v190 - v168 + (v192 << 6) + v241 <= 0x80)
  {
    do
    {
      v242 = 64 - v190;
      if (64 - v190 >= v241)
      {
        v242 = v241;
      }

      v243 = v242 + v190;
      v192 += v243 >> 6;
      v190 = v243 & 0x3F;
      v241 -= v242;
    }

    while (v241);
  }

  v244 = 0;
  v245 = v233 + v227;
  while (2)
  {
    if (v227 && v227 <= 0x100 && v190 - v168 + (v192 << 6) + v227 <= 0x80)
    {
      v246 = 0;
      v247 = *(v296 + v244);
      v248 = v227;
      do
      {
        v249 = 64 - v190;
        if (64 - v190 >= v248)
        {
          v249 = v248;
        }

        v167[v192] |= ((v247 >> v246) & ~(-1 << v249)) << v190;
        v246 += v249;
        v250 = v249 + v190;
        v192 += v250 >> 6;
        v190 = v250 & 0x3F;
        v248 -= v249;
      }

      while (v248);
    }

    if (v233)
    {
      if (v233 <= 0x100 && v190 - v168 + (v192 << 6) + v233 <= 0x80)
      {
        v251 = 0;
        v252 = *(&v296[1] + v244 + 3);
        v253 = v233;
        do
        {
          v254 = 64 - v190;
          if (64 - v190 >= v253)
          {
            v254 = v253;
          }

          v167[v192] |= ((v252 >> v251) & ~(-1 << v254)) << v190;
          v251 += v254;
          v255 = v254 + v190;
          v192 += v255 >> 6;
          v190 = v255 & 0x3F;
          v253 -= v254;
        }

        while (v253);
      }

      v256 = v240 - v245;
      if (v240 != v245)
      {
LABEL_497:
        if (v256 <= 0x100 && v190 - v168 + (v192 << 6) + v256 <= 0x80)
        {
          do
          {
            v257 = 64 - v190;
            if (64 - v190 >= v256)
            {
              v257 = v256;
            }

            v258 = v257 + v190;
            v192 += v258 >> 6;
            v190 = v258 & 0x3F;
            v256 -= v257;
          }

          while (v256);
        }
      }
    }

    else
    {
      v256 = v240 - v227;
      if (v240 != v227)
      {
        goto LABEL_497;
      }
    }

    if (++v244 != 7)
    {
      continue;
    }

    return (v261 | v262) & 1;
  }
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(_OWORD *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v12 = 8 * (a3 & 7);
  v13 = a3 & 0xFFFFFFFFFFFFFFF8;
  v14 = v12 + 18;
  v15 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v12;
  if (v12 >= 0x2F)
  {
    v15 |= *(v13 + 8) << (-8 * (a3 & 7u));
  }

  v16.i32[0] = v15;
  v16.i32[1] = v15 >> 5;
  v17 = vand_s8(v16, 0x1F0000001FLL);
  v18 = vuzp1_s16(v17, v17);
  v19.i32[0] = v15 >> 10;
  v19.i32[1] = v15 >> 14;
  v20 = vuzp1_s16(vadd_s32(vand_s8(v19, 0xF0000000FLL), 0x100000001), v18);
  v21 = v12 + 50;
  v22 = v14 & 0x3A;
  v23 = (v13 + ((v14 >> 3) & 8));
  v24 = *v23 >> (v14 & 0x3A);
  if (v22 >= 0x21)
  {
    v24 |= v23[1] << -v22;
  }

  v25 = vdupq_lane_s32(v18, 0);
  v26 = vdupq_lane_s32(v20, 0);
  v27 = (8 * (a3 & 7)) | 0x200;
  v28.i64[0] = 0x3000300030003;
  v28.i64[1] = 0x3000300030003;
  v29 = vandq_s8(v25, v28);
  v30 = vbicq_s8(v26, vceqq_s16(v29, v28));
  v28.i64[0] = 0x202020202020202;
  v28.i64[1] = 0x202020202020202;
  v31 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v25.i8, 0x4000400040004)))), v28);
  if (vmaxvq_s8(v31) < 1)
  {
    v40 = 0;
    v61.i64[0] = -1;
    v61.i64[1] = -1;
    v55 = v30;
    v56 = v30;
    v57 = v30;
    v60.i64[0] = -1;
    v60.i64[1] = -1;
    v54 = v30;
    v59.i64[0] = -1;
    v59.i64[1] = -1;
    v58.i64[0] = -1;
    v58.i64[1] = -1;
  }

  else
  {
    v32 = vmovl_u8(*&vpaddq_s8(v31, v31));
    v33 = vmovl_u16(*&vpaddq_s16(v32, v32));
    v34 = vpaddq_s32(v33, v33).u64[0];
    v35.i64[0] = v34;
    v35.i64[1] = HIDWORD(v34);
    v36 = v35;
    v37 = vaddvq_s64(v35);
    v38 = v37 + v21;
    v39 = v37 <= 0x80 && v27 >= v38;
    v40 = !v39;
    v41 = 0uLL;
    if (v39)
    {
      v42 = v21 & 0x3A;
      v43 = vaddq_s64(vzip1q_s64(0, v36), vdupq_n_s64(v42));
      v44 = (v13 + ((v21 >> 3) & 8));
      v41 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v44, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v43)), vshlq_u64(vdupq_lane_s64(v44->i64[0], 0), vnegq_s64(v43)));
      if (v37 + v42 >= 0x81)
      {
        v41 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v44[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v43)), vshlq_u64(vdupq_laneq_s64(v44[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v43))), v41);
      }

      v21 = v38;
    }

    v45 = vzip1_s32(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
    v46.i64[0] = v45.u32[0];
    v46.i64[1] = v45.u32[1];
    v47 = vshlq_u64(v41, vnegq_s64(v46));
    v48 = vuzp1q_s32(vzip1q_s64(v41, v47), vzip2q_s64(v41, v47));
    v49 = vshlq_u32(v48, vnegq_s32((*&v32 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v50 = vuzp1q_s16(vzip1q_s32(v48, v49), vzip2q_s32(v48, v49));
    v48.i64[0] = 0x101010101010101;
    v48.i64[1] = 0x101010101010101;
    *v51.i8 = vand_s8(vadd_s8(*&vshlq_s8(v48, v31), -1), vmovn_s16(vzip1q_s16(v50, vshlq_u16(v50, vnegq_s16(vmovl_u8(vuzp1_s8(*v31.i8, *v25.i8)))))));
    v51.i64[1] = v51.i64[0];
    *v51.i8 = vqtbl1_s8(v51, 0x703060205010400);
    *v50.i8 = vdup_lane_s16(*v51.i8, 0);
    *v48.i8 = vdup_lane_s16(*v51.i8, 1);
    v52 = vdup_lane_s16(*v51.i8, 2);
    v53 = vdup_lane_s16(*v51.i8, 3);
    v54 = vsubw_s8(v30, *v50.i8);
    v55 = vsubw_s8(v30, *v48.i8);
    v56 = vsubw_s8(v30, v52);
    v57 = vsubw_s8(v30, v53);
    v58 = vmovl_s8(vceqz_s8(*v50.i8));
    v59 = vmovl_s8(vceqz_s8(*v48.i8));
    v60 = vmovl_s8(vceqz_s8(v52));
    v61 = vmovl_s8(vceqz_s8(v53));
  }

  v62.i64[0] = 0x8000800080008;
  v62.i64[1] = 0x8000800080008;
  v63 = 0uLL;
  v64 = vandq_s8(vextq_s8(vtstq_s16(v25, v62), 0, 0xCuLL), v30);
  v65 = vmovl_u16(*&vpaddq_s16(v64, v64));
  v66 = vpaddq_s32(v65, v65).u64[0];
  v67.i64[0] = v66;
  v67.i64[1] = HIDWORD(v66);
  v68 = v67;
  v69 = vaddvq_s64(v67);
  v70 = v69 + v21;
  if (v69 <= 0x80 && v27 >= v70)
  {
    v72 = v21 & 0x3F;
    v73 = vaddq_s64(vzip1q_s64(0, v68), vdupq_n_s64(v72));
    v74 = (v13 + 8 * (v21 >> 6));
    v63 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v74, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v73)), vshlq_u64(vdupq_lane_s64(v74->i64[0], 0), vnegq_s64(v73)));
    if (v69 + v72 >= 0x81)
    {
      v63 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v74[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v73)), vshlq_u64(vdupq_laneq_s64(v74[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v73))), v63);
    }

    v21 = v70;
  }

  else
  {
    v40 = 1;
  }

  v75 = v25.i8[0] & 3;
  if (v75 == 2)
  {
    if (v27 < v21 + 8)
    {
      v40 = 1;
    }

    else
    {
      v21 += 8;
    }

    v76 = v27 < v21 + 8;
    if (v27 >= v21 + 8)
    {
      v21 += 8;
    }

    v40 |= v76;
  }

  v77 = 0uLL;
  v78 = vextq_s8(0, v54, 0xCuLL);
  v79 = vmovl_u16(*&vpaddq_s16(v78, v78));
  v80 = vpaddq_s32(v79, v79).u64[0];
  v81.i64[0] = v80;
  v81.i64[1] = HIDWORD(v80);
  v82 = v81;
  v83 = vaddvq_s64(v81);
  v84 = v83 + v21;
  if (v83 <= 0x80 && v27 >= v84)
  {
    v87 = v21 & 0x3F;
    v88 = vaddq_s64(vzip1q_s64(0, v82), vdupq_n_s64(v87));
    v89 = (v13 + 8 * (v21 >> 6));
    v86 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v89, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v88)), vshlq_u64(vdupq_lane_s64(v89->i64[0], 0), vnegq_s64(v88)));
    if (v83 + v87 >= 0x81)
    {
      v86 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v89[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v88)), vshlq_u64(vdupq_laneq_s64(v89[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v88))), v86);
    }

    v21 = v84;
  }

  else
  {
    v40 = 1;
    v86 = 0uLL;
  }

  v90 = vmovl_u16(*&vpaddq_s16(v54, v54));
  v91 = vpaddq_s32(v90, v90).u64[0];
  v92.i64[0] = v91;
  v92.i64[1] = HIDWORD(v91);
  v93 = v92;
  v94 = vaddvq_s64(v92);
  v95 = v94 + v21;
  if (v94 <= 0x80 && v27 >= v95)
  {
    v97 = v21 & 0x3F;
    v98 = vaddq_s64(vzip1q_s64(0, v93), vdupq_n_s64(v97));
    v99 = (v13 + 8 * (v21 >> 6));
    v77 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v99, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v98)), vshlq_u64(vdupq_lane_s64(v99->i64[0], 0), vnegq_s64(v98)));
    if (v94 + v97 >= 0x81)
    {
      v77 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v99[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v98)), vshlq_u64(vdupq_laneq_s64(v99[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v98))), v77);
    }

    v21 = v95;
  }

  else
  {
    v40 = 1;
  }

  v298 = v11;
  v299 = v10;
  v300 = v9;
  v301 = v8;
  v302 = v7;
  v303 = v6;
  v304 = v5;
  v305 = v4;
  v100 = vmovl_u16(*&vpaddq_s16(v55, v55));
  v101 = vpaddq_s32(v100, v100).u64[0];
  v102.i64[0] = v101;
  v102.i64[1] = HIDWORD(v101);
  v103 = v102;
  v104 = vaddvq_s64(v102);
  v105 = v104 + v21;
  v106 = 0uLL;
  if (v104 <= 0x80 && v27 >= v105)
  {
    v109 = v21 & 0x3F;
    v110 = vaddq_s64(vzip1q_s64(0, v103), vdupq_n_s64(v109));
    v111 = (v13 + 8 * (v21 >> 6));
    v108 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v111, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v110)), vshlq_u64(vdupq_lane_s64(v111->i64[0], 0), vnegq_s64(v110)));
    if (v104 + v109 >= 0x81)
    {
      v108 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v111[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v110)), vshlq_u64(vdupq_laneq_s64(v111[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v110))), v108);
    }

    v21 = v105;
    if (v104 > 0x80)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v40 = 1;
    v108 = 0uLL;
    if (v104 > 0x80)
    {
      goto LABEL_62;
    }
  }

  v112 = v104 + v21;
  if (v27 < v104 + v21)
  {
LABEL_62:
    v112 = v21;
    v40 = 1;
    goto LABEL_63;
  }

  v113 = v21 & 0x3F;
  v114 = vaddq_s64(vzip1q_s64(0, v103), vdupq_n_s64(v113));
  v115 = (v13 + 8 * (v21 >> 6));
  v106 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v115, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v114)), vshlq_u64(vdupq_lane_s64(v115->i64[0], 0), vnegq_s64(v114)));
  if (v104 + v113 >= 0x81)
  {
    v106 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v115[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v114)), vshlq_u64(vdupq_laneq_s64(v115[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v114))), v106);
  }

LABEL_63:
  v116 = vmovl_u16(*&vpaddq_s16(v56, v56));
  v117 = vpaddq_s32(v116, v116).u64[0];
  v118.i64[0] = v117;
  v118.i64[1] = HIDWORD(v117);
  v119 = v118;
  v120 = vaddvq_s64(v118);
  v121 = 0uLL;
  if (v120 > 0x80 || (v122 = v120 + v112, v27 < v120 + v112))
  {
    v122 = v112;
    v40 = 1;
    v125 = 0uLL;
  }

  else
  {
    v123 = vaddq_s64(vzip1q_s64(0, v119), vdupq_n_s64(v112 & 0x3F));
    v124 = (v13 + 8 * (v112 >> 6));
    v125 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v124, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v123)), vshlq_u64(vdupq_lane_s64(v124->i64[0], 0), vnegq_s64(v123)));
    if (v120 + (v112 & 0x3F) >= 0x81)
    {
      v125 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v124[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v123)), vshlq_u64(vdupq_laneq_s64(v124[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v123))), v125);
    }
  }

  if (v120 > 0x80 || (v126 = v120 + v122, v27 < v120 + v122))
  {
    v126 = v122;
    v40 = 1;
  }

  else
  {
    v127 = vaddq_s64(vzip1q_s64(0, v119), vdupq_n_s64(v122 & 0x3F));
    v128 = (v13 + 8 * (v122 >> 6));
    v121 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v128, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v127)), vshlq_u64(vdupq_lane_s64(v128->i64[0], 0), vnegq_s64(v127)));
    if (v120 + (v122 & 0x3F) >= 0x81)
    {
      v121 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v128[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v127)), vshlq_u64(vdupq_laneq_s64(v128[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v127))), v121);
    }
  }

  v129 = vmovl_u16(*&vpaddq_s16(v57, v57));
  v130 = vpaddq_s32(v129, v129).u64[0];
  v131.i64[0] = v130;
  v131.i64[1] = HIDWORD(v130);
  v132 = v131;
  v133 = vaddvq_s64(v131);
  if (v133 > 0x80 || (v134 = v133 + v126, v27 < v133 + v126))
  {
    v134 = v126;
    v40 = 1;
    v138 = 0uLL;
  }

  else
  {
    v135 = v126 & 0x3F;
    v136 = vaddq_s64(vzip1q_s64(0, v132), vdupq_n_s64(v135));
    v137 = (v13 + 8 * (v126 >> 6));
    v138 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v137, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v136)), vshlq_u64(vdupq_lane_s64(v137->i64[0], 0), vnegq_s64(v136)));
    if (v133 + v135 >= 0x81)
    {
      v138 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v137[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v136)), vshlq_u64(vdupq_laneq_s64(v137[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v136))), v138);
    }
  }

  if (v133 > 0x80 || v27 < v133 + v134)
  {
    goto LABEL_86;
  }

  v139 = vaddq_s64(vzip1q_s64(0, v132), vdupq_n_s64(v134 & 0x3F));
  v140 = (v13 + 8 * (v134 >> 6));
  v141 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v140, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v139)), vshlq_u64(vdupq_lane_s64(v140->i64[0], 0), vnegq_s64(v139)));
  if (v133 + (v134 & 0x3F) >= 0x81)
  {
    v141 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v140[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v139)), vshlq_u64(vdupq_laneq_s64(v140[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v139))), v141);
  }

  if ((v40 & 1) != 0 || (v142 = a4 + 1, v27 + 8 * v142 - (v133 + v134) - 512 >= 9))
  {
LABEL_86:
    v143 = 0;
    v144 = 0;
    v145 = 8 * (v296 & 7);
    v146 = 16;
    do
    {
      v147 = 64 - v145;
      if (64 - v145 >= v146)
      {
        v147 = v146;
      }

      *&v296[8 * v143] |= ((0xFFFFFFFFFFFFFFFFLL >> v144) & ~(-1 << v147)) << v145;
      v144 += v147;
      v148 = v147 + v145;
      v143 += v148 >> 6;
      v145 = v148 & 0x3F;
      v146 -= v147;
    }

    while (v146);
LABEL_90:
    v142 = 0;
    v149 = (a1 + a2);
    *a1 = 0u;
    a1[1] = 0u;
    v150 = (a1 + 2 * a2);
    *v149 = 0u;
    v149[1] = 0u;
    v151 = (a1 + 2 * a2 + a2);
    *v150 = 0u;
    v150[1] = 0u;
    *v151 = 0u;
    v151[1] = 0u;
    return v142;
  }

  if (v75 == 2)
  {
    v153 = 0;
    v154 = 0;
    v155 = 8 * (&v297 & 7);
    v156 = 16;
    do
    {
      v157 = 64 - v155;
      if (64 - v155 >= v156)
      {
        v157 = v156;
      }

      *&v296[8 * v153] |= ((0xFFFFFFFFFFFFFFFFLL >> v154) & ~(-1 << v157)) << v155;
      v154 += v157;
      v158 = v157 + v155;
      v153 += v158 >> 6;
      v155 = v158 & 0x3F;
      v156 -= v157;
    }

    while (v156);
    goto LABEL_90;
  }

  v159 = vzip1_s32(*v65.i8, *&vextq_s8(v65, v65, 8uLL));
  v160 = vzip1_s32(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
  v161 = vzip1_s32(*v116.i8, *&vextq_s8(v116, v116, 8uLL));
  v162 = vzip1_s32(*v129.i8, *&vextq_s8(v129, v129, 8uLL));
  v163.i64[0] = v159.u32[0];
  v163.i64[1] = v159.u32[1];
  v164 = v163;
  v163.i64[0] = v160.u32[0];
  v163.i64[1] = v160.u32[1];
  v165 = v163;
  v163.i64[0] = v161.u32[0];
  v163.i64[1] = v161.u32[1];
  v166 = v163;
  v163.i64[0] = v162.u32[0];
  v163.i64[1] = v162.u32[1];
  v167 = vnegq_s64(v164);
  v168 = vnegq_s64(v165);
  v169 = vnegq_s64(v166);
  v170 = vnegq_s64(v163);
  v171 = vshlq_u64(v63, v167);
  v172 = vshlq_u64(v108, v168);
  v173 = vshlq_u64(v106, v168);
  v174 = vshlq_u64(v125, v169);
  v175 = vshlq_u64(v121, v169);
  v176 = vshlq_u64(v138, v170);
  v177 = vzip2q_s64(v63, v171);
  v178 = vzip1q_s64(v63, v171);
  v179 = vzip2q_s64(v108, v172);
  v180 = vzip1q_s64(v108, v172);
  v181 = vzip2q_s64(v106, v173);
  v182 = vzip1q_s64(v106, v173);
  v183 = vzip2q_s64(v125, v174);
  v184 = vzip1q_s64(v125, v174);
  v185 = vzip2q_s64(v121, v175);
  v186 = vzip1q_s64(v121, v175);
  v187 = vzip2q_s64(v138, v176);
  v188 = vzip1q_s64(v138, v176);
  v189 = vuzp1q_s32(v178, v177);
  v190 = vuzp1q_s32(v180, v179);
  v191 = vuzp1q_s32(v182, v181);
  v178.i64[0] = 0xFFFF0000FFFFLL;
  v178.i64[1] = 0xFFFF0000FFFFLL;
  v192 = vuzp1q_s32(v184, v183);
  v180.i64[0] = 0xFFFF0000FFFFLL;
  v180.i64[1] = 0xFFFF0000FFFFLL;
  v193 = vnegq_s32(vandq_s8(v64, v178));
  v194 = vnegq_s32(vandq_s8(v55, v180));
  v195 = vuzp1q_s32(v186, v185);
  v196 = vuzp1q_s32(v188, v187);
  v197 = vshlq_u32(v189, v193);
  v198 = vshlq_u32(v190, v194);
  v199 = vshlq_u32(v191, v194);
  v194.i64[0] = 0x10001000100010;
  v194.i64[1] = 0x10001000100010;
  v188.i64[0] = 0xF000F000F000FLL;
  v188.i64[1] = 0xF000F000F000FLL;
  v200 = vsubq_s16(v194, v64);
  v201 = vaddq_s16(v64, v188);
  v188.i64[0] = 0x10001000100010;
  v188.i64[1] = 0x10001000100010;
  v202 = vshlq_s16(vuzp1q_s16(vzip1q_s32(v189, v197), vzip2q_s32(v189, v197)), v200);
  v200.i64[0] = 0xF000F000F000FLL;
  v200.i64[1] = 0xF000F000F000FLL;
  v203 = vsubq_s16(v188, v55);
  v204 = vaddq_s16(v55, v200);
  v200.i64[0] = 0xFFFF0000FFFFLL;
  v200.i64[1] = 0xFFFF0000FFFFLL;
  v205 = vnegq_s32(vandq_s8(v56, v200));
  v206 = vshlq_s16(v202, v201);
  v207 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v190, v198), vzip2q_s32(v190, v198)), v203), v204);
  v208 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v191, v199), vzip2q_s32(v191, v199)), v203), v204);
  v209 = vdupq_lane_s32(*v206.i8, 0);
  v210 = vandq_s8(v59, v209);
  v211 = vsubq_s16(v207, v210);
  v212 = vsubq_s16(v208, v210);
  v213 = vshlq_u32(v192, v205);
  v214 = vshlq_u32(v195, v205);
  v215 = vzip2q_s32(v192, v213);
  v216 = vzip1q_s32(v192, v213);
  v217 = vzip2q_s32(v195, v214);
  v218 = vzip1q_s32(v195, v214);
  v214.i64[0] = 0x10001000100010;
  v214.i64[1] = 0x10001000100010;
  v219 = vuzp1q_s16(v218, v217);
  v217.i64[0] = 0xF000F000F000FLL;
  v217.i64[1] = 0xF000F000F000FLL;
  v220 = vsubq_s16(v214, v56);
  v221 = vaddq_s16(v56, v217);
  v217.i64[0] = 0xFFFF0000FFFFLL;
  v217.i64[1] = 0xFFFF0000FFFFLL;
  v222 = vnegq_s32(vandq_s8(v57, v217));
  v223 = vshlq_s16(vshlq_s16(vuzp1q_s16(v216, v215), v220), v221);
  v224 = vshlq_s16(vshlq_s16(v219, v220), v221);
  v225 = vandq_s8(v60, v209);
  v226 = vsubq_s16(v223, v225);
  v227 = vsubq_s16(v224, v225);
  v228 = vshlq_u32(v196, v222);
  v229 = vzip2q_s32(v196, v228);
  v230 = vzip1q_s32(v196, v228);
  v228.i64[0] = 0x10001000100010;
  v228.i64[1] = 0x10001000100010;
  v231 = vuzp1q_s16(v230, v229);
  v229.i64[0] = 0xF000F000F000FLL;
  v229.i64[1] = 0xF000F000F000FLL;
  v232 = vsubq_s16(v228, v57);
  v233 = vaddq_s16(v57, v229);
  v234 = vshlq_u64(v141, v170);
  v235 = vuzp1q_s32(vzip1q_s64(v141, v234), vzip2q_s64(v141, v234));
  v236 = vshlq_u32(v235, v222);
  v237 = vshlq_s16(vshlq_s16(v231, v232), v233);
  v238 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v235, v236), vzip2q_s32(v235, v236)), v232), v233);
  v239 = vandq_s8(v61, v209);
  v240 = vsubq_s16(v237, v239);
  v241 = vsubq_s16(v238, v239);
  v242 = vzip1_s32(*v79.i8, *&vextq_s8(v79, v79, 8uLL));
  v243 = vzip1_s32(*v90.i8, *&vextq_s8(v90, v90, 8uLL));
  v163.i64[0] = v242.u32[0];
  v163.i64[1] = v242.u32[1];
  v244 = v163;
  v163.i64[0] = v243.u32[0];
  v163.i64[1] = v243.u32[1];
  v245 = vshlq_u64(v86, vnegq_s64(v244));
  v246 = vshlq_u64(v77, vnegq_s64(v163));
  v247 = vzip2q_s64(v86, v245);
  v248 = vzip1q_s64(v86, v245);
  v249 = vzip2q_s64(v77, v246);
  v250 = vzip1q_s64(v77, v246);
  v246.i64[0] = 0xFFFF0000FFFFLL;
  v246.i64[1] = 0xFFFF0000FFFFLL;
  v251 = vuzp1q_s32(v248, v247);
  v252 = vuzp1q_s32(v250, v249);
  v253 = vnegq_s32(vandq_s8(v54, v246));
  v254 = vshlq_u32(v251, vnegq_s32(vandq_s8(v78, v246)));
  v255 = vshlq_u32(v252, v253);
  v256 = vzip2q_s32(v251, v254);
  v257 = vzip1q_s32(v251, v254);
  v258 = vzip2q_s32(v252, v255);
  v259 = vzip1q_s32(v252, v255);
  v255.i64[0] = 0x10001000100010;
  v255.i64[1] = 0x10001000100010;
  v260 = vuzp1q_s16(v259, v258);
  v258.i64[0] = 0xF000F000F000FLL;
  v258.i64[1] = 0xF000F000F000FLL;
  v261 = vaddq_s16(vandq_s8(v206, v58), vshlq_s16(vshlq_s16(vuzp1q_s16(v257, v256), vsubq_s16(v255, v78)), vaddq_s16(v78, v258)));
  v262 = vandq_s8(v58, v209);
  v263.i64[0] = 0x1000100010001;
  v263.i64[1] = 0x1000100010001;
  v264 = vceqq_s16(v29, v263);
  v265 = vaddvq_s16(v264);
  v266 = vsubq_s16(v261, v262);
  v267 = vsubq_s16(vshlq_s16(vshlq_s16(v260, vsubq_s16(v255, v54)), vaddq_s16(v54, v258)), v262);
  v264.i32[0] = v24;
  v268 = vdupq_lane_s32(*v264.i8, 0);
  if (v265)
  {
    v269 = vnegq_s16(vandq_s8(v25, v263));
    v270 = v267;
    v270.i32[3] = v266.i32[0];
    v271 = v266;
    v271.i32[0] = v267.i32[3];
    v306.val[0] = vbslq_s8(v269, v271, v266);
    v306.val[1] = vbslq_s8(v269, v270, v267);
    v270.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v270.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v307.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(v306, xmmword_29D2F0F80), v269), v306.val[0]);
    v307.val[1] = vaddq_s16(v306.val[1], vandq_s8(vqtbl2q_s8(v306, v270), v269));
    v266 = vaddq_s16(vandq_s8(vqtbl2q_s8(v307, xmmword_29D2F0F90), v269), v307.val[0]);
    v267 = vaddq_s16(v307.val[1], vandq_s8(vqtbl2q_s8(v307, v270), v269));
    v307.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v211.i8, xmmword_29D2F0FA0), v269), v211);
    v307.val[1] = vaddq_s16(v212, vandq_s8(vqtbl2q_s8(*v211.i8, xmmword_29D2F0FB0), v269));
    v211 = vaddq_s16(vandq_s8(vqtbl2q_s8(v307, xmmword_29D2F0FC0), v269), v307.val[0]);
    v212 = vaddq_s16(v307.val[1], vandq_s8(vqtbl2q_s8(v307, v270), v269));
    v307.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v226.i8, xmmword_29D2F0FD0), v269), v226);
    v307.val[1] = vaddq_s16(v227, vandq_s8(vqtbl2q_s8(*v226.i8, xmmword_29D2F0F80), v269));
    v226 = vaddq_s16(vandq_s8(vqtbl2q_s8(v307, v270), v269), v307.val[0]);
    v227 = vaddq_s16(v307.val[1], vandq_s8(vqtbl2q_s8(v307, xmmword_29D2F0FE0), v269));
    v306.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v240.i8, xmmword_29D2F0FF0), v269), v240);
    v306.val[1] = vaddq_s16(v241, vandq_s8(vqtbl2q_s8(*v240.i8, xmmword_29D2F0F80), v269));
    v240 = vaddq_s16(vandq_s8(vqtbl2q_s8(v306, v270), v269), v306.val[0]);
    v241 = vaddq_s16(v306.val[1], vandq_s8(vqtbl2q_s8(v306, xmmword_29D2F1000), v269));
  }

  v272 = vaddq_s16(v266, v268);
  v273 = vaddq_s16(v267, v268);
  v274 = vaddq_s16(v211, v268);
  v275 = vaddq_s16(v212, v268);
  v276 = vaddq_s16(v226, v268);
  v277 = vaddq_s16(v227, v268);
  v278 = vaddq_s16(v240, v268);
  v279 = vaddq_s16(v241, v268);
  v280.i64[0] = 0x10001000100010;
  v280.i64[1] = 0x10001000100010;
  v281 = vceqzq_s16(vandq_s8(v25, v280));
  v282 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v272, xmmword_29D2F1080), v281), v272);
  v283 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v273, xmmword_29D2F1080), v281), v273);
  v284 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v274, xmmword_29D2F1080), v281), v274);
  v285 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v275, xmmword_29D2F1080), v281), v275);
  v286 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v276, xmmword_29D2F1080), v281), v276);
  v287 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v277, xmmword_29D2F1080), v281), v277);
  v288 = vzip2q_s64(v282, v283);
  *&v289 = v282.i64[0];
  *(&v289 + 1) = v283.i64[0];
  *&v290 = v286.i64[0];
  *(&v290 + 1) = v287.i64[0];
  v291 = (a1 + a2);
  *a1 = v289;
  a1[1] = v290;
  v292 = (a1 + 2 * a2);
  v293 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v278, xmmword_29D2F1080), v281), v278);
  v294 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v279, xmmword_29D2F1080), v281), v279);
  *v291 = v288;
  v291[1] = vzip2q_s64(v286, v287);
  v287.i64[0] = v284.i64[0];
  v287.i64[1] = v285.i64[0];
  v278.i64[0] = v293.i64[0];
  v278.i64[1] = v294.i64[0];
  *v292 = v287;
  v292[1] = v278;
  v295 = (v292 + a2);
  *v295 = vzip2q_s64(v284, v285);
  v295[1] = vzip2q_s64(v293, v294);
  return v142;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(int *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v100 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, v84, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, v84, a5);
  }

  v67 = v85;
  v68 = v84[0];
  v65 = v87;
  v66 = v86;
  v79 = v88;
  v76 = v90;
  v77 = v89;
  v75 = v91;
  v71 = v93;
  v72 = v92;
  v69 = v95;
  v70 = v94;
  v82 = v96;
  v80 = v98;
  v81 = v97;
  v78 = v99;
  v9 = a3 + 16;
  if ((a4 & 2) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v9, v84, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v9, v84, a5);
  }

  v73 = v85;
  v74 = v84[0];
  v61 = v87;
  v62 = v86;
  v59 = v89;
  v60 = v88;
  v57 = v91;
  v58 = v90;
  v55 = v93;
  v56 = v92;
  v53 = v95;
  v54 = v94;
  v51 = v97;
  v52 = v96;
  v49 = v99;
  v50 = v98;
  v64 = a5;
  v63 = a3;
  v10 = a3 + 32;
  if ((a4 & 4) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v10, v84, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v10, v84, a5);
  }

  v47 = v85;
  v48 = v84[0];
  v45 = v87;
  v46 = v86;
  v43 = v89;
  v44 = v88;
  v41 = v91;
  v42 = v90;
  v11 = v92;
  v12 = v93;
  v13 = v94;
  v14 = v95;
  v15 = v96;
  v16 = v97;
  v17 = v98;
  v18 = v99;
  if ((a4 & 8) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v63 + 48, v84, v64);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v63 + 48, v84, v64);
  }

  v19 = v17 | (v18 << 16);
  v20 = v15 | (v16 << 16);
  a1[4] = v48 | (v47 << 16);
  a1[5] = v46 | (v45 << 16);
  a1[6] = v11 | (v12 << 16);
  a1[7] = v13 | (v14 << 16);
  result = v62 | (v61 << 16);
  v22 = v84[0];
  v23 = v85;
  *a1 = v68 | (v67 << 16);
  a1[1] = v66 | (v65 << 16);
  v24 = v86;
  v25 = v87;
  v26 = v88;
  v27 = v89;
  a1[2] = v72 | (v71 << 16);
  a1[3] = v70 | (v69 << 16);
  v28 = v90;
  v29 = v91;
  v30 = v92;
  v31 = v93;
  v32 = (a1 + a2);
  *v32 = v79 | (v77 << 16);
  v32[1] = v76 | (v75 << 16);
  v33 = v94;
  v34 = v95;
  v35 = v96;
  v36 = v97;
  v32[2] = v82 | (v81 << 16);
  v32[3] = v80 | (v78 << 16);
  v37 = v98;
  v38 = v99;
  v32[4] = v44 | (v43 << 16);
  v32[5] = v42 | (v41 << 16);
  v32[6] = v20;
  v32[7] = v19;
  v39 = (v32 + a2);
  *v39 = v74 | (v73 << 16);
  v39[1] = result;
  v39[2] = v56 | (v55 << 16);
  v39[3] = v54 | (v53 << 16);
  v39[4] = v22 | (v23 << 16);
  v39[5] = v24 | (v25 << 16);
  v39[6] = v30 | (v31 << 16);
  v39[7] = v33 | (v34 << 16);
  v40 = (v32 + a2 + a2);
  *v40 = v60 | (v59 << 16);
  v40[1] = v58 | (v57 << 16);
  v40[2] = v52 | (v51 << 16);
  v40[3] = v50 | (v49 << 16);
  v40[4] = v26 | (v27 << 16);
  v40[5] = v28 | (v29 << 16);
  v40[6] = v35 | (v36 << 16);
  v40[7] = v37 | (v38 << 16);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(uint64_t a1, uint64_t a2, int a3)
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
    if ((result - v6 + (v4 << 6) - 121) >= 0xFFFFFFFFFFFFFF7FLL)
    {
      v12 = 0;
      v13 = 0;
      v14 = 8;
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
      v11 = v12 << 8;
    }

    else
    {
      v11 = 0;
    }

    v17 = ((v11 << 23 >> 31) + 128) | v11;
    if (v11 == 65280)
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
    if ((result - v6 + (v4 << 6) - 121) < 0xFFFFFFFFFFFFFF7FLL)
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
        if (v10 == 65280)
        {
          v10 = 0xFFFF;
        }

        else
        {
          v10 |= (v10 << 23 >> 31) + 128;
        }
      }

      goto LABEL_3;
    }

    v19 = 0;
    v20 = 0;
    v21 = 8;
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
    v10 = v19 << 8;
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

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3)
{
  v166 = *MEMORY[0x29EDCA608];
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = *(a1 & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 >> v4;
  v7 = (v5 >> v4) & 0xF;
  v8 = (v4 | 4) - v4 - 125;
  v9 = (v5 >> (v4 | 4u)) & 0xF;
  if (v8 >= 0xFFFFFFFFFFFFFF7FLL)
  {
    v10 = (v4 + 8) & 0x38;
  }

  else
  {
    v10 = (8 * (a1 & 7)) | 4;
  }

  if (v8 >= 0xFFFFFFFFFFFFFF7FLL)
  {
    v11 = (v4 + 8) >> 6;
  }

  else
  {
    v11 = 0;
  }

  if (v8 >= 0xFFFFFFFFFFFFFF7FLL)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  v164 = v7;
  v165 = v12;
  v13 = v6 & 0xF;
  v14 = dword_29D2F3870[10 * (v6 & 0xF) + 6];
  v15 = v14;
  v16 = v12 >= v7;
  v17 = v12 >= v7;
  v18 = !v16;
  v19 = dword_29D2F3870[10 * v12 + 6];
  v161 = v14;
  v162 = v19;
  v163[0] = v14;
  v163[1] = v19;
  if (*(&v164 + v17) != *(&v164 + v18))
  {
    v20 = v163[v18];
    if (v20 >= 1)
    {
      *(&v161 + v18) = 0;
      *(&v161 + v17) += v20;
      v15 = v161;
    }
  }

  v21 = &kDQuadParamTable[10 * v13];
  v22 = v21[484];
  v23 = v21[485];
  v24 = v15 - v14;
  if (v24 >= 0)
  {
    v25 = v23;
    if (!v24)
    {
      goto LABEL_24;
    }

    v25 = v24 + v23;
    goto LABEL_19;
  }

  v26 = &kDQuadParamTable[10 * v13];
  if (v26[487] >= -v24)
  {
    v25 = v23;
  }

  else
  {
    v25 = v23 - 1;
    if (!v26[488])
    {
      v24 = -1;
LABEL_19:
      v22 += v24;
    }
  }

LABEL_24:
  if (v22 >= 0x10)
  {
    v27 = 16;
  }

  else
  {
    v27 = v22;
  }

  v28 = 16 * (v23 != 0);
  if (v28 >= v25)
  {
    v29 = v25;
  }

  else
  {
    v29 = v28;
  }

  v30 = &kDQuadParamTable[10 * v12];
  v31 = v30[484];
  v32 = v30[485];
  v34 = v162 - v19;
  v33 = v162 == v19;
  if (v162 - v19 < 0)
  {
    v36 = &kDQuadParamTable[10 * v12];
    if (v36[487] >= v19 - v162)
    {
      LODWORD(v35) = v32;
      goto LABEL_38;
    }

    LODWORD(v35) = v32 - 1;
    if (!v36[488])
    {
      v34 = -1;
      goto LABEL_33;
    }
  }

  else
  {
    LODWORD(v35) = v32;
    if (!v33)
    {
      LODWORD(v35) = v34 + v32;
LABEL_33:
      v31 += v34;
    }
  }

LABEL_38:
  v37 = 0;
  if (v31 >= 0x10)
  {
    v38 = 16;
  }

  else
  {
    v38 = v31;
  }

  v39 = 16 * (v32 != 0);
  if (v39 >= v35)
  {
    v35 = v35;
  }

  else
  {
    v35 = v39;
  }

  v40 = v10 - v4 + (v11 << 6);
  if (v22 && v40 + v27 <= 0x80)
  {
    v37 = 0;
    v41 = 0;
    v42 = v27;
    do
    {
      v43 = 64 - v10;
      if (64 - v10 >= v42)
      {
        v43 = v42;
      }

      v37 |= ((*(v3 + 8 * v11) >> v10) & ~(-1 << v43)) << v41;
      v41 += v43;
      v44 = v43 + v10;
      v11 += v44 >> 6;
      v10 = v44 & 0x3F;
      v42 -= v43;
    }

    while (v42);
    v40 = v10 - v4 + (v11 << 6);
  }

  v45 = 0;
  if (v31 && v40 + v38 <= 0x80)
  {
    v45 = 0;
    v46 = 0;
    v47 = v38;
    do
    {
      v48 = 64 - v10;
      if (64 - v10 >= v47)
      {
        v48 = v47;
      }

      v45 |= ((*(v3 + 8 * v11) >> v10) & ~(-1 << v48)) << v46;
      v46 += v48;
      v49 = v48 + v10;
      v11 += v49 >> 6;
      v10 = v49 & 0x3F;
      v47 -= v48;
    }

    while (v47);
  }

  v50 = v38 + v27 + 8;
  v157 = 0;
  v158 = 0;
  if (v29)
  {
    if (v10 - v4 + (v11 << 6) + 3 <= 0x80)
    {
      v51 = 0;
      v52 = 0;
      v53 = 3;
      do
      {
        v54 = 64 - v10;
        if (64 - v10 >= v53)
        {
          v54 = v53;
        }

        v51 |= ((*(v3 + 8 * v11) >> v10) & ~(-1 << v54)) << v52;
        v52 += v54;
        v55 = v54 + v10;
        v11 += v55 >> 6;
        v10 = v55 & 0x3F;
        v53 -= v54;
      }

      while (v53);
    }

    else
    {
      v51 = 0;
    }

    v158 = v51;
    v50 += 3;
  }

  v56 = v37 << (16 - v27);
  v57 = v45 << (16 - v38);
  if (v35)
  {
    if (v10 - v4 + (v11 << 6) + 3 <= 0x80)
    {
      v58 = 0;
      v59 = 0;
      v60 = 3;
      do
      {
        v61 = 64 - v10;
        if (64 - v10 >= v60)
        {
          v61 = v60;
        }

        v58 |= ((*(v3 + 8 * v11) >> v10) & ~(-1 << v61)) << v59;
        v59 += v61;
        v62 = v61 + v10;
        v11 += v62 >> 6;
        v10 = v62 & 0x3F;
        v60 -= v61;
      }

      while (v60);
    }

    else
    {
      v58 = 0;
    }

    v157 = v58;
    v50 += 3;
  }

  v63 = 0;
  v64 = a3 & 0xFFFFFFFD;
  v65 = 128 - v50;
  v66 = (((37 * (128 - v50)) >> 8) + (((0x80 - v50 - ((37 * (128 - v50)) >> 8)) & 0xFE) >> 1)) >> 2;
  v67 = (v10 | (v11 << 6)) + -7 * v66 + v65;
  v160 = 0;
  memset(v159, 0, sizeof(v159));
  do
  {
    v69 = v67 >> 6;
    v70 = v67 & 0x3F;
    if (v29)
    {
      if (v70 - v4 + (v67 & 0xFFFFFFFFFFFFFFC0) + v29 <= 0x80)
      {
        v71 = 0;
        v72 = 0;
        v73 = v29;
        do
        {
          v74 = 64 - v70;
          if (64 - v70 >= v73)
          {
            v74 = v73;
          }

          v71 |= ((*(v3 + 8 * v69) >> v70) & ~(-1 << v74)) << v72;
          v72 += v74;
          v75 = v74 + v70;
          v69 += v75 >> 6;
          v70 = v75 & 0x3F;
          v73 -= v74;
        }

        while (v73);
      }

      else
      {
        v71 = 0;
      }

      *(v159 + v63) = v71;
    }

    if (v35)
    {
      if (v70 - v4 + (v69 << 6) + v35 <= 0x80)
      {
        v76 = 0;
        v77 = 0;
        v78 = v35;
        do
        {
          v79 = 64 - v70;
          if (64 - v70 >= v78)
          {
            v79 = v78;
          }

          v76 |= ((*(v3 + 8 * v69) >> v70) & ~(-1 << v79)) << v77;
          v77 += v79;
          v80 = v79 + v70;
          v69 += v80 >> 6;
          v70 = v80 & 0x3F;
          v78 -= v79;
        }

        while (v78);
      }

      else
      {
        v76 = 0;
      }

      *(&v159[1] + v63 + 3) = v76;
      v68 = v35 + v29;
    }

    else
    {
      v68 = v29;
    }

    v67 = (v70 | (v69 << 6)) + v66 - v68;
    ++v63;
  }

  while (v63 != 7);
  v81 = 0;
  v82 = &v164;
  v83 = &v158;
  v84 = 1;
  v85 = v159;
  do
  {
    v88 = v84;
    result = *&kDQuadParamTable[10 * *v82 + 482];
    if (result >> v29 <= 1)
    {
      v90 = 1;
    }

    else
    {
      v90 = result >> v29;
    }

    v91 = v90 >> 1;
    v92 = (1 << (16 - v27)) >> 1;
    if (v90 >> 1 >= v92)
    {
      v93 = v92;
    }

    else
    {
      v93 = v90 >> 1;
    }

    v94 = v56;
    v95 = 0x8000 - v56;
    if (v56)
    {
      v96 = v93;
    }

    else
    {
      v96 = 0;
    }

    v97 = v56 == 0x8000;
    v98 = (a2 + 4 * v81);
    if (v29)
    {
      v99 = result + v56;
      v100 = -1 << v29;
      v101 = *v83;
      v102 = v95 / v90;
      if (*v83)
      {
        v103 = *v85;
        v104 = v102 == v103;
        if (v94 | v103)
        {
          if (v99 >= 0x10000 && (v100 ^ v103) == -1)
          {
            v107 = 1;
            v105 = 0xFFFFLL;
            goto LABEL_133;
          }

          v105 = v91 + v90 * v103;
        }

        else
        {
          v105 = 0;
        }

        v107 = 1;
      }

      else
      {
        v107 = 0;
        v105 = v96;
        v104 = v97;
      }

LABEL_133:
      v110 = v105 + v94;
      if (a3 != 4)
      {
        goto LABEL_138;
      }

      v111 = v110 & 0xFFFFFFFFFFFFFE00;
      if ((v110 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
      {
        LODWORD(v110) = 31743;
        goto LABEL_142;
      }

      if (v111 == 32256)
      {
        LODWORD(v110) = 0x8000;
        goto LABEL_142;
      }

      if (v111 == 64512)
      {
        LODWORD(v110) = 64511;
      }

      else
      {
LABEL_138:
        v112 = 0xFFFF;
        if (v110 >= 0x10000)
        {
LABEL_143:
          v113 = v112 ^ 0x8000;
          if (v104)
          {
            v113 = 0;
          }

          if (v64 == 1)
          {
            v112 = v113;
          }

          *(a2 + 4 * v81) = v112;
          if (v101 == 1)
          {
            v114 = v96;
            v115 = v97;
          }

          else
          {
            v116 = *(v159 + 7 * v81 + v107);
            v115 = v102 == v116;
            if (v94 | v116)
            {
              if (v99 >= 0x10000 && (v100 ^ v116) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v114 = 0xFFFFLL;
              }

              else
              {
                v114 = v91 + v90 * v116;
              }
            }

            else
            {
              v114 = 0;
            }

            ++v107;
          }

          v117 = v114 + v94;
          if (a3 == 4)
          {
            v118 = v117 & 0xFFFFFFFFFFFFFE00;
            if ((v117 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
            {
              LODWORD(v117) = 31743;
              goto LABEL_165;
            }

            if (v118 == 32256)
            {
              LODWORD(v117) = 0x8000;
              goto LABEL_165;
            }

            if (v118 == 64512)
            {
              LODWORD(v117) = 64511;
LABEL_165:
              v119 = v117;
LABEL_166:
              v120 = v119 ^ 0x8000;
              if (v115)
              {
                v120 = 0;
              }

              if (v64 != 1)
              {
                v120 = v119;
              }

              v98[2] = v120;
              if (v101 == 2)
              {
                v121 = v96;
                v122 = v97;
              }

              else
              {
                v123 = *(v159 + 7 * v81 + v107);
                v122 = v102 == v123;
                if (v94 | v123)
                {
                  if (v99 >= 0x10000 && (v100 ^ v123) == 0xFFFFFFFFFFFFFFFFLL)
                  {
                    v121 = 0xFFFFLL;
                  }

                  else
                  {
                    v121 = v91 + v90 * v123;
                  }
                }

                else
                {
                  v121 = 0;
                }

                ++v107;
              }

              v124 = v121 + v94;
              if (a3 != 4)
              {
                goto LABEL_184;
              }

              v125 = v124 & 0xFFFFFFFFFFFFFE00;
              if ((v124 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
              {
                LODWORD(v124) = 31743;
                goto LABEL_188;
              }

              if (v125 == 32256)
              {
                LODWORD(v124) = 0x8000;
                goto LABEL_188;
              }

              if (v125 == 64512)
              {
                LODWORD(v124) = 64511;
              }

              else
              {
LABEL_184:
                v126 = 0xFFFF;
                if (v124 >= 0x10000)
                {
LABEL_189:
                  v127 = v126 ^ 0x8000;
                  if (v122)
                  {
                    v127 = 0;
                  }

                  if (v64 != 1)
                  {
                    v127 = v126;
                  }

                  v98[4] = v127;
                  if (v101 == 3)
                  {
                    v128 = v96;
                    v129 = v97;
                  }

                  else
                  {
                    v130 = *(v159 + 7 * v81 + v107);
                    v129 = v102 == v130;
                    if (v94 | v130)
                    {
                      if (v99 >= 0x10000 && (v100 ^ v130) == 0xFFFFFFFFFFFFFFFFLL)
                      {
                        v128 = 0xFFFFLL;
                      }

                      else
                      {
                        v128 = v91 + v90 * v130;
                      }
                    }

                    else
                    {
                      v128 = 0;
                    }

                    ++v107;
                  }

                  v131 = v128 + v94;
                  if (a3 == 4)
                  {
                    v132 = v131 & 0xFFFFFFFFFFFFFE00;
                    if ((v131 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
                    {
                      LODWORD(v131) = 31743;
                      goto LABEL_211;
                    }

                    if (v132 == 32256)
                    {
                      LODWORD(v131) = 0x8000;
                      goto LABEL_211;
                    }

                    if (v132 == 64512)
                    {
                      LODWORD(v131) = 64511;
LABEL_211:
                      v133 = v131;
LABEL_212:
                      v134 = v133 ^ 0x8000;
                      if (v129)
                      {
                        v134 = 0;
                      }

                      if (v64 != 1)
                      {
                        v134 = v133;
                      }

                      v98[6] = v134;
                      if (v101 == 4)
                      {
                        v135 = v96;
                        v136 = v97;
                      }

                      else
                      {
                        v137 = *(v159 + 7 * v81 + v107);
                        v136 = v102 == v137;
                        if (v94 | v137)
                        {
                          if (v99 >= 0x10000 && (v100 ^ v137) == 0xFFFFFFFFFFFFFFFFLL)
                          {
                            v135 = 0xFFFFLL;
                          }

                          else
                          {
                            v135 = v91 + v90 * v137;
                          }
                        }

                        else
                        {
                          v135 = 0;
                        }

                        ++v107;
                      }

                      v138 = v135 + v94;
                      if (a3 != 4)
                      {
                        goto LABEL_230;
                      }

                      v139 = v138 & 0xFFFFFFFFFFFFFE00;
                      if ((v138 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
                      {
                        LODWORD(v138) = 31743;
                        goto LABEL_234;
                      }

                      if (v139 == 32256)
                      {
                        LODWORD(v138) = 0x8000;
                        goto LABEL_234;
                      }

                      if (v139 == 64512)
                      {
                        LODWORD(v138) = 64511;
                      }

                      else
                      {
LABEL_230:
                        v140 = 0xFFFF;
                        if (v138 >= 0x10000)
                        {
LABEL_235:
                          v141 = v140 ^ 0x8000;
                          if (v136)
                          {
                            v141 = 0;
                          }

                          if (v64 != 1)
                          {
                            v141 = v140;
                          }

                          v98[8] = v141;
                          if (v101 == 5)
                          {
                            v142 = v96;
                            v143 = v97;
                          }

                          else
                          {
                            v144 = *(v159 + 7 * v81 + v107);
                            v143 = v102 == v144;
                            if (v94 | v144)
                            {
                              if (v99 >= 0x10000 && (v100 ^ v144) == 0xFFFFFFFFFFFFFFFFLL)
                              {
                                v142 = 0xFFFFLL;
                              }

                              else
                              {
                                v142 = v91 + v90 * v144;
                              }
                            }

                            else
                            {
                              v142 = 0;
                            }

                            ++v107;
                          }

                          v145 = v142 + v94;
                          if (a3 == 4)
                          {
                            v146 = v145 & 0xFFFFFFFFFFFFFE00;
                            if ((v145 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
                            {
                              LODWORD(v145) = 31743;
                              goto LABEL_257;
                            }

                            if (v146 == 32256)
                            {
                              LODWORD(v145) = 0x8000;
                              goto LABEL_257;
                            }

                            if (v146 == 64512)
                            {
                              LODWORD(v145) = 64511;
LABEL_257:
                              v147 = v145;
LABEL_258:
                              v148 = v147 ^ 0x8000;
                              if (v143)
                              {
                                v148 = 0;
                              }

                              if (v64 != 1)
                              {
                                v148 = v147;
                              }

                              v98[10] = v148;
                              if (v101 == 6)
                              {
                                v149 = v96;
                                v150 = v97;
                              }

                              else
                              {
                                v151 = *(v159 + 7 * v81 + v107);
                                v150 = v102 == v151;
                                if (v94 | v151)
                                {
                                  if (v99 >= 0x10000 && (v100 ^ v151) == 0xFFFFFFFFFFFFFFFFLL)
                                  {
                                    v149 = 0xFFFFLL;
                                  }

                                  else
                                  {
                                    v149 = v91 + v90 * v151;
                                  }
                                }

                                else
                                {
                                  v149 = 0;
                                }

                                ++v107;
                              }

                              v152 = v149 + v94;
                              if (a3 != 4)
                              {
                                goto LABEL_276;
                              }

                              v153 = v152 & 0xFFFFFFFFFFFFFE00;
                              if ((v152 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
                              {
                                v152 = 31743;
                                goto LABEL_280;
                              }

                              if (v153 == 32256)
                              {
                                v152 = 0x8000;
                                goto LABEL_280;
                              }

                              if (v153 == 64512)
                              {
                                v152 = 64511;
                              }

                              else
                              {
LABEL_276:
                                v154 = 0x10000FFFFLL;
                                if (v152 >= 0x10000)
                                {
LABEL_281:
                                  result = v154 ^ 0x8000;
                                  if (v150)
                                  {
                                    result = 0;
                                  }

                                  if (v64 != 1)
                                  {
                                    result = v154;
                                  }

                                  v98[12] = result;
                                  if (v101 != 7)
                                  {
                                    v155 = *(v159 + 7 * v81 + v107);
                                    v97 = v102 == v155;
                                    if (v94 | v155)
                                    {
                                      if (v99 >= 0x10000 && (v100 ^ v155) == 0xFFFFFFFFFFFFFFFFLL)
                                      {
                                        v96 = 0xFFFFLL;
                                      }

                                      else
                                      {
                                        v96 = v91 + v90 * v155;
                                      }
                                    }

                                    else
                                    {
                                      v96 = 0;
                                    }
                                  }

                                  v86 = v96 + v94;
                                  if (a3 == 4)
                                  {
                                    v156 = v86 & 0xFFFFFFFFFFFFFE00;
                                    if ((v86 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
                                    {
                                      LODWORD(v86) = 31743;
                                      goto LABEL_94;
                                    }

                                    if (v156 == 32256)
                                    {
                                      LODWORD(v86) = 0x8000;
LABEL_94:
                                      v87 = v86;
LABEL_95:
                                      LODWORD(v27) = v87 ^ 0x8000;
                                      if (v97)
                                      {
                                        LODWORD(v27) = 0;
                                      }

                                      if (v64 != 1)
                                      {
                                        LODWORD(v27) = v87;
                                      }

                                      goto LABEL_99;
                                    }

                                    if (v156 == 64512)
                                    {
                                      LODWORD(v86) = 64511;
                                      goto LABEL_94;
                                    }
                                  }

                                  v87 = 0xFFFF;
                                  if (v86 >= 0x10000)
                                  {
                                    goto LABEL_95;
                                  }

                                  goto LABEL_94;
                                }
                              }

LABEL_280:
                              v154 = v152;
                              goto LABEL_281;
                            }
                          }

                          v147 = 0xFFFF;
                          if (v145 >= 0x10000)
                          {
                            goto LABEL_258;
                          }

                          goto LABEL_257;
                        }
                      }

LABEL_234:
                      v140 = v138;
                      goto LABEL_235;
                    }
                  }

                  v133 = 0xFFFF;
                  if (v131 >= 0x10000)
                  {
                    goto LABEL_212;
                  }

                  goto LABEL_211;
                }
              }

LABEL_188:
              v126 = v124;
              goto LABEL_189;
            }
          }

          v119 = 0xFFFF;
          if (v117 >= 0x10000)
          {
            goto LABEL_166;
          }

          goto LABEL_165;
        }
      }

LABEL_142:
      v112 = v110;
      goto LABEL_143;
    }

    if (a3 == 4)
    {
      v106 = v56 & 0xFFFFFE00;
      if ((v56 & 0xFFFFFE00) == 0x7E00)
      {
        LODWORD(v27) = 0x8000;
      }

      else if (v106 == 31744)
      {
        LODWORD(v27) = 31743;
      }

      else
      {
        v33 = v106 == 64512;
        v27 = 64511;
        if (!v33)
        {
          v27 = v56;
        }

        if (v27 >= 0x10000)
        {
          LODWORD(v27) = 0xFFFF;
        }
      }
    }

    else
    {
      if (v56 >= 0xFFFF)
      {
        v109 = 0xFFFF;
      }

      else
      {
        v109 = v56;
      }

      if (v90 <= v95)
      {
        LODWORD(v27) = v109 ^ 0x8000;
      }

      else
      {
        LODWORD(v27) = 0;
      }

      if (v64 != 1)
      {
        LODWORD(v27) = v109;
      }
    }

    *v98 = v27;
    v98[2] = v27;
    v98[4] = v27;
    v98[6] = v27;
    v98[8] = v27;
    v98[10] = v27;
    v98[12] = v27;
LABEL_99:
    v84 = 0;
    v98[14] = v27;
    v83 = &v157;
    v85 = &v159[1] + 3;
    v56 = v57;
    LODWORD(v29) = v35;
    LOBYTE(v27) = v38;
    v82 = &v165;
    v81 = 1;
  }

  while ((v88 & 1) != 0);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + v14, a2, v17, v16, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + 32, a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, v13 + v14 + 32, a2, v22, v21, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 8 * a2, a2, v25, v24, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 12 * a2, a2, v28, v27, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, v13 + 8 * a2 + 32, a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, v13 + 12 * a2 + 32, a2, v32, v31, a7);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = (a3 + 2 * a4);
  v8 = *a3;
  v9 = *(a3 + a4);
  v10 = *(a3 + a4 + 16);
  v12 = *v7;
  v13 = v7[1];
  v11 = (v7 + a4);
  v14 = *v11;
  v15 = v11[1];
  v16 = vdupq_lane_s32(*a3, 0);
  v17 = vsubq_s16(*a3, v16);
  v18 = vsubq_s16(v9, v16);
  v482 = *(a3 + 16);
  v19 = vsubq_s16(v482, v16);
  v20 = vsubq_s16(v10, v16);
  v480 = v12;
  v21 = vsubq_s16(v12, v16);
  v22 = vsubq_s16(*v11, v16);
  v23 = vsubq_s16(v13, v16);
  v24 = vsubq_s16(v15, v16);
  v25 = vqtbl1q_s8(vmaxq_s16(v17, v18), xmmword_29D2F1090);
  v26 = vqtbl1q_s8(vminq_s16(v17, v18), xmmword_29D2F1090);
  v27 = vpmaxq_s16(v25, v25);
  v28 = vpminq_s16(v26, v26);
  v29 = vpmaxq_s16(v27, v27);
  v30 = vpminq_s16(v28, v28);
  v31.i64[0] = 0x8000800080008000;
  v31.i64[1] = 0x8000800080008000;
  v32 = vmaxq_s16(v29, v31);
  v33.i64[0] = 0x8000800080008000;
  v33.i64[1] = 0x8000800080008000;
  v34 = vminq_s16(v30, v33);
  v35 = vzip1q_s16(v29, v30);
  v36.i64[0] = 0x10001000100010;
  v36.i64[1] = 0x10001000100010;
  v37 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v35)), vceqzq_s16(v35));
  v38 = vqtbl1q_s8(vmaxq_s16(v19, v20), xmmword_29D2F1090);
  v39 = vqtbl1q_s8(vminq_s16(v19, v20), xmmword_29D2F1090);
  v40 = vpmaxq_s16(v38, v38);
  v41 = vpminq_s16(v39, v39);
  v42 = vpmaxq_s16(v40, v40);
  v43 = vpminq_s16(v41, v41);
  v44 = vmaxq_s16(v32, v42);
  v45 = vminq_s16(v34, v43);
  v46 = vzip1q_s16(v42, v43);
  v47 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v46)), vceqzq_s16(v46));
  v48 = vqtbl1q_s8(vmaxq_s16(v21, v22), xmmword_29D2F1090);
  v49 = vqtbl1q_s8(vminq_s16(v21, v22), xmmword_29D2F1090);
  v50 = vpmaxq_s16(v48, v48);
  v51 = vpminq_s16(v49, v49);
  v52 = vpmaxq_s16(v50, v50);
  v53 = vpminq_s16(v51, v51);
  v54 = vmaxq_s16(v44, v52);
  v55 = vminq_s16(v45, v53);
  v56 = vzip1q_s16(v52, v53);
  v57 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v56)), vceqzq_s16(v56));
  v58 = vqtbl1q_s8(vmaxq_s16(v23, v24), xmmword_29D2F1090);
  v59 = vqtbl1q_s8(vminq_s16(v23, v24), xmmword_29D2F1090);
  v60 = vpmaxq_s16(v58, v58);
  v61 = vpminq_s16(v59, v59);
  v62 = vpmaxq_s16(v60, v60);
  v63 = vpminq_s16(v61, v61);
  v64 = vmaxq_s16(v54, v62);
  v65 = vminq_s16(v55, v63);
  v66 = vzip1q_s16(v62, v63);
  v67 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v66)), vceqzq_s16(v66));
  v68 = vpmaxq_s16(v37, v37);
  v69 = vpmaxq_s16(v47, v47);
  v70 = vpmaxq_s16(v57, v57);
  v71 = vpmaxq_s16(v67, v67);
  v72 = vmaxq_s16(vmaxq_s16(v68, v69), vmaxq_s16(v70, v71));
  v73 = vclzq_s16(vsubq_s16(v64, v65));
  v74 = vsubq_s16(v36, v73);
  v75 = vminq_s16(v74, v72);
  v76 = vmaxvq_s16(v75);
  v78 = a5 < 2 || a6 < 2;
  if (!v76)
  {
    *a1 = *a3;
    *a2 = 3;
    return 4;
  }

  v466 = v13;
  v467 = v14;
  v468 = v15;
  v79.i64[0] = -1;
  v79.i64[1] = -1;
  v80.i64[0] = 0x8000800080008000;
  v80.i64[1] = 0x8000800080008000;
  v81.i64[0] = 0x8000800080008000;
  v81.i64[1] = 0x8000800080008000;
  v82.i64[0] = 0xF000F000F000FLL;
  v82.i64[1] = 0xF000F000F000FLL;
  v497 = vsubq_s16(vshlq_s16(v79, vsubq_s16(v82, v73)), v65);
  v83 = vcgtq_s16(v72, v74);
  v84.i64[0] = 0x8000800080008;
  v84.i64[1] = 0x8000800080008;
  v85.i64[0] = 0x3000300030003;
  v85.i64[1] = 0x3000300030003;
  v483 = vorrq_s8(vandq_s8(vceqzq_s16(v75), v85), vandq_s8(v83, v84));
  v86 = vmaxq_s16(vminq_s16(vsubq_s16(v75, v68), v85), 0);
  v87 = vmaxq_s16(vminq_s16(vsubq_s16(v75, v70), v85), 0);
  v474 = vmaxq_s16(vminq_s16(vsubq_s16(v75, v69), v85), 0);
  v476 = vmaxq_s16(vminq_s16(vsubq_s16(v75, v71), v85), 0);
  v88.i64[0] = 0x4000400040004;
  v88.i64[1] = 0x4000400040004;
  v478 = vbicq_s8(v88, vceqq_s16(vaddq_s16(v476, v87), vnegq_s16(vaddq_s16(v86, v474))));
  v89 = vsubq_s16(v21, vqtbl1q_s8(v21, xmmword_29D2F1080));
  v90 = vsubq_s16(v22, vqtbl1q_s8(v22, xmmword_29D2F1080));
  v91 = vsubq_s16(v23, vqtbl1q_s8(v23, xmmword_29D2F1080));
  v92 = vsubq_s16(v24, vqtbl1q_s8(v24, xmmword_29D2F1080));
  v471 = vsubq_s16(v18, vqtbl1q_s8(v18, xmmword_29D2F1080));
  v472 = vsubq_s16(v17, vqtbl1q_s8(v17, xmmword_29D2F1080));
  v93 = vqtbl1q_s8(vmaxq_s16(v472, v471), xmmword_29D2F1090);
  v94 = vqtbl1q_s8(vminq_s16(v472, v471), xmmword_29D2F1090);
  v95 = vpmaxq_s16(v93, v93);
  v96 = vpminq_s16(v94, v94);
  v97 = vpmaxq_s16(v95, v95);
  v98 = vpminq_s16(v96, v96);
  v493 = v24;
  v495 = v22;
  v99 = vmaxq_s16(v97, v80);
  v100 = v17;
  v101 = vminq_s16(v98, v81);
  v102 = vzip1q_s16(v97, v98);
  v103 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v102)), vceqzq_s16(v102));
  v104 = vpmaxq_s16(v103, v103);
  v469 = vsubq_s16(v20, vqtbl1q_s8(v20, xmmword_29D2F1080));
  v470 = vsubq_s16(v19, vqtbl1q_s8(v19, xmmword_29D2F1080));
  v105 = vqtbl1q_s8(vmaxq_s16(v470, v469), xmmword_29D2F1090);
  v106 = vqtbl1q_s8(vminq_s16(v470, v469), xmmword_29D2F1090);
  v107 = vpmaxq_s16(v105, v105);
  v108 = vpminq_s16(v106, v106);
  v109 = vpmaxq_s16(v107, v107);
  v110 = vpminq_s16(v108, v108);
  v111 = vmaxq_s16(v99, v109);
  v112 = vminq_s16(v101, v110);
  v113 = vzip1q_s16(v109, v110);
  v114 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v113)), vceqzq_s16(v113));
  v485 = v18;
  v487 = v19;
  v115 = vpmaxq_s16(v114, v114);
  v116 = vqtbl1q_s8(vmaxq_s16(v89, v90), xmmword_29D2F1090);
  v117 = vqtbl1q_s8(vminq_s16(v89, v90), xmmword_29D2F1090);
  v118 = vpmaxq_s16(v116, v116);
  v119 = vpminq_s16(v117, v117);
  v120 = vpmaxq_s16(v118, v118);
  v121 = vpminq_s16(v119, v119);
  v122 = vmaxq_s16(v111, v120);
  v123 = vminq_s16(v112, v121);
  v124 = vzip1q_s16(v120, v121);
  v125 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v124)), vceqzq_s16(v124));
  v489 = v20;
  v491 = v21;
  v126 = vpmaxq_s16(v125, v125);
  v127 = vqtbl1q_s8(vmaxq_s16(v91, v92), xmmword_29D2F1090);
  v128 = vqtbl1q_s8(vminq_s16(v91, v92), xmmword_29D2F1090);
  v129 = vpmaxq_s16(v127, v127);
  v130 = vpminq_s16(v128, v128);
  v131 = vpmaxq_s16(v129, v129);
  v132 = vpminq_s16(v130, v130);
  v133 = vmaxq_s16(v122, v131);
  v134 = vminq_s16(v123, v132);
  v135 = vzip1q_s16(v131, v132);
  v136 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v135)), vceqzq_s16(v135));
  v137 = vpmaxq_s16(v136, v136);
  v138 = vmaxq_s16(vmaxq_s16(v104, v115), vmaxq_s16(v126, v137));
  v139 = vclzq_s16(vsubq_s16(v133, v134));
  v140 = vsubq_s16(v36, v139);
  v141 = vcgtq_s16(v138, v140);
  v142 = vminq_s16(v140, v138);
  v138.i64[0] = 0x18001800180018;
  v138.i64[1] = 0x18001800180018;
  v143 = vbslq_s8(v141, v138, v36);
  v144 = v23;
  v145 = vmaxq_s16(vminq_s16(vsubq_s16(v142, v104), v85), 0);
  v146 = vmaxq_s16(vminq_s16(vsubq_s16(v142, v115), v85), 0);
  v147 = vmaxq_s16(vminq_s16(vsubq_s16(v142, v126), v85), 0);
  v148 = vmaxq_s16(vminq_s16(vsubq_s16(v142, v137), v85), 0);
  v149 = vsubq_s16(v142, v145);
  v150 = vsubq_s16(v142, v146);
  v151 = vsubq_s16(v142, v147);
  v152 = vsubq_s16(v142, v148);
  v88.i64[0] = 0x4000400040004;
  v88.i64[1] = 0x4000400040004;
  v153 = vbicq_s8(v88, vceqq_s16(vaddq_s16(v148, v147), vnegq_s16(vaddq_s16(v145, v146))));
  v147.i64[0] = 0x7000700070007;
  v147.i64[1] = 0x7000700070007;
  v154 = vandq_s8(v497, v83);
  v155 = vsubq_s16(v75, v86);
  v156 = vsubq_s16(v75, v474);
  v157 = vsubq_s16(v75, v87);
  v498 = vsubq_s16(v75, v476);
  v158 = vorrq_s8(v478, v483);
  v159 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v75, v83), v155, v147), vshlq_n_s16(vaddq_s16(vaddq_s16(v157, v156), v498), 3uLL)), vaddq_s16(v478, v478)), vaddq_s16(vaddq_s16(vmlaq_s16(vbicq_s8(v142, vceqzq_s16((*&v143 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), v149, v147), vshlq_n_s16(vaddq_s16(vaddq_s16(v151, v150), v152), 3uLL)), vaddq_s16(v153, v153))), 0);
  if (vaddvq_s16(v159))
  {
    v160.i64[0] = 0x3000300030003;
    v160.i64[1] = 0x3000300030003;
    v161 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v142), v160), v143), v153);
    v162.i64[0] = 0xF000F000F000FLL;
    v162.i64[1] = 0xF000F000F000FLL;
    v163 = vsubq_s16(v162, v139);
    v162.i64[0] = -1;
    v162.i64[1] = -1;
    v164 = vandq_s8(vsubq_s16(vshlq_s16(v162, v163), v134), v141);
    v16 = vbslq_s8(v159, vsubq_s16(v16, vqtbl1q_s8(v16, xmmword_29D2F1080)), v16);
    v484 = vbslq_s8(v159, v472, v100);
    v165 = vbslq_s8(v159, v470, v487);
    v166 = vbslq_s8(v159, v90, v495);
    v144 = vbslq_s8(v159, v91, v144);
    v155 = vbslq_s8(v159, v149, v155);
    v477 = vbslq_s8(v159, v150, v156);
    v479 = vbslq_s8(v159, v151, v157);
    v498 = vbslq_s8(v159, v152, v498);
    v154 = vbslq_s8(v159, v164, v154);
    v75 = vbslq_s8(v159, v142, v75);
    v167 = vbslq_s8(v159, v161, v158);
    v168 = vbslq_s8(v159, v92, v493);
    v169 = vbslq_s8(v159, v89, v491);
    v170 = vbslq_s8(v159, v469, v489);
    v171 = vbslq_s8(v159, v471, v485);
    if (v78)
    {
LABEL_10:
      v172 = v477;
      v173 = v479;
      goto LABEL_16;
    }
  }

  else
  {
    v477 = v156;
    v484 = v100;
    v479 = v157;
    v168 = v493;
    v166 = v495;
    v170 = v489;
    v169 = v491;
    v171 = v485;
    v165 = v487;
    v167 = v158;
    if (v78)
    {
      goto LABEL_10;
    }
  }

  v486 = v171;
  v473 = v144;
  v475 = v154;
  v488 = v165;
  v490 = v170;
  v492 = v169;
  v494 = v168;
  v496 = v166;
  v183 = vsubq_s16(v8, vqtbl2q_s8(*v8.i8, xmmword_29D2F0F80));
  v175 = vsubq_s16(v9, vqtbl2q_s8(*v8.i8, xmmword_29D2F1030));
  v499.val[0] = *(a3 + 16);
  v499.val[1] = *(a3 + a4 + 16);
  v499.val[1].i32[3] = HIDWORD(*(a3 + a4));
  v176 = vsubq_s16(v482, vqtbl2q_s8(v499, xmmword_29D2F0FA0));
  v177 = vsubq_s16(v10, vqtbl2q_s8(v499, xmmword_29D2F1040));
  v499.val[1] = v480;
  v178 = v467;
  v178.i32[3] = HIDWORD(*(a3 + a4));
  v179 = vsubq_s16(v480, vqtbl2q_s8(*(&v499 + 16), xmmword_29D2F1050));
  v180 = vsubq_s16(v467, vqtbl2q_s8(*(&v499 + 16), xmmword_29D2F0F80));
  v500.val[0] = v466;
  v500.val[1] = v468;
  v500.val[1].i32[3] = HIDWORD(*(a3 + a4));
  v181 = vsubq_s16(v466, vqtbl2q_s8(v500, xmmword_29D2F1060));
  v182 = v175;
  v182.i32[3] = v183.i32[0];
  v183.i32[0] = v175.i32[3];
  v184 = vsubq_s16(v468, vqtbl2q_s8(v500, xmmword_29D2F0F80));
  v185 = vqtbl1q_s8(vmaxq_s16(v183, v182), xmmword_29D2F1090);
  v186 = vqtbl1q_s8(vminq_s16(v183, v182), xmmword_29D2F1090);
  v187 = vpmaxq_s16(v185, v185);
  v188 = vpminq_s16(v186, v186);
  v189 = vpmaxq_s16(v187, v187);
  v190 = vpminq_s16(v188, v188);
  v191.i64[0] = 0x8000800080008000;
  v191.i64[1] = 0x8000800080008000;
  v192 = vmaxq_s16(v189, v191);
  v191.i64[0] = 0x8000800080008000;
  v191.i64[1] = 0x8000800080008000;
  v193 = vminq_s16(v190, v191);
  v194 = vzip1q_s16(v189, v190);
  v191.i64[0] = 0x10001000100010;
  v191.i64[1] = 0x10001000100010;
  v195 = vbicq_s8(vsubq_s16(v191, vclsq_s16(v194)), vceqzq_s16(v194));
  v196 = vpmaxq_s16(v195, v195);
  v481 = v177;
  v197 = vqtbl1q_s8(vmaxq_s16(v176, v177), xmmword_29D2F1090);
  v198 = vqtbl1q_s8(vminq_s16(v176, v177), xmmword_29D2F1090);
  v199 = vpmaxq_s16(v197, v197);
  v200 = vpminq_s16(v198, v198);
  v201 = vpmaxq_s16(v199, v199);
  v202 = vpminq_s16(v200, v200);
  v203 = vmaxq_s16(v192, v201);
  v204 = vminq_s16(v193, v202);
  v205 = vzip1q_s16(v201, v202);
  v206 = vbicq_s8(vsubq_s16(v191, vclsq_s16(v205)), vceqzq_s16(v205));
  v207 = vpmaxq_s16(v206, v206);
  v208 = vqtbl1q_s8(vmaxq_s16(v179, v180), xmmword_29D2F1090);
  v209 = vqtbl1q_s8(vminq_s16(v179, v180), xmmword_29D2F1090);
  v210 = vpmaxq_s16(v208, v208);
  v211 = vpminq_s16(v209, v209);
  v212 = vpmaxq_s16(v210, v210);
  v213 = vpminq_s16(v211, v211);
  v214 = vmaxq_s16(v203, v212);
  v215 = vminq_s16(v204, v213);
  v216 = vzip1q_s16(v212, v213);
  v217 = vbicq_s8(vsubq_s16(v191, vclsq_s16(v216)), vceqzq_s16(v216));
  v499.val[0] = vpmaxq_s16(v217, v217);
  v218 = vqtbl1q_s8(vmaxq_s16(v181, v184), xmmword_29D2F1090);
  v219 = vqtbl1q_s8(vminq_s16(v181, v184), xmmword_29D2F1090);
  v220 = vpmaxq_s16(v218, v218);
  v221 = vpminq_s16(v219, v219);
  v222 = vpmaxq_s16(v220, v220);
  v499.val[1] = vpminq_s16(v221, v221);
  v223 = vmaxq_s16(v214, v222);
  v224 = vminq_s16(v215, v499.val[1]);
  v225 = vzip1q_s16(v222, v499.val[1]);
  v226 = vbicq_s8(vsubq_s16(v191, vclsq_s16(v225)), vceqzq_s16(v225));
  v499.val[1] = vpmaxq_s16(v226, v226);
  v227 = vmaxq_s16(vmaxq_s16(v196, v207), vmaxq_s16(v499.val[0], v499.val[1]));
  v228 = vclzq_s16(vsubq_s16(v223, v224));
  v500.val[1] = vsubq_s16(v191, v228);
  v229 = vcgtq_s16(v227, v500.val[1]);
  v230 = vminq_s16(v500.val[1], v227);
  v500.val[1].i64[0] = 0x3000300030003;
  v500.val[1].i64[1] = 0x3000300030003;
  v231 = vmaxq_s16(vminq_s16(vsubq_s16(v230, v196), v500.val[1]), 0);
  v232 = vmaxq_s16(vminq_s16(vsubq_s16(v230, v207), v500.val[1]), 0);
  v233 = vmaxq_s16(vminq_s16(vsubq_s16(v230, v499.val[0]), v500.val[1]), 0);
  v234 = vmaxq_s16(vminq_s16(vsubq_s16(v230, v499.val[1]), v500.val[1]), 0);
  v235 = vsubq_s16(v230, v231);
  v236 = vsubq_s16(v230, v232);
  v237 = vsubq_s16(v230, v233);
  v238 = vsubq_s16(v230, v234);
  v239 = vceqq_s16(vaddq_s16(v234, v233), vnegq_s16(vaddq_s16(v231, v232)));
  v231.i64[0] = 0x4000400040004;
  v231.i64[1] = 0x4000400040004;
  v240 = vbicq_s8(v231, v239);
  v233.i64[0] = 0x7000700070007;
  v233.i64[1] = 0x7000700070007;
  v241 = vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v230, v229), v235, v233), vshlq_n_s16(vaddq_s16(vaddq_s16(v237, v236), v238), 3uLL)), vaddq_s16(v240, v240));
  v232.i64[0] = 0x8000800080008;
  v232.i64[1] = 0x8000800080008;
  v242 = vandq_s8(v167, v500.val[1]);
  v243.i64[0] = 0x2000200020002;
  v243.i64[1] = 0x2000200020002;
  v244 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v75, vceqzq_s16(vandq_s8(v167, v232))), vandq_s8(vaddq_s16(v167, v167), v232)), vandq_s8(vceqq_s16(v242, v243), v191)), v155, v233);
  v172 = v477;
  v173 = v479;
  v245 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(v244, vshlq_n_s16(vaddq_s16(vaddq_s16(v479, v477), v498), 3uLL)), v241), 0);
  if (vaddvq_s16(v245))
  {
    v246.i64[0] = 0x9000900090009;
    v246.i64[1] = 0x9000900090009;
    v247 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v230), v243), vsubq_s16(vandq_s8(v229, v246), vmvnq_s8(v229))), v240);
    v248.i64[0] = 0xF000F000F000FLL;
    v248.i64[1] = 0xF000F000F000FLL;
    v249 = vsubq_s16(v248, v228);
    v248.i64[0] = -1;
    v248.i64[1] = -1;
    v250 = vandq_s8(vsubq_s16(vshlq_s16(v248, v249), v224), v229);
    v16.i32[0] = vbslq_s8(v245, vextq_s8(v9, v9, 0xCuLL), v16).u32[0];
    v484 = vbslq_s8(v245, v183, v484);
    v251 = vbslq_s8(v245, v182, v486);
    v165 = vbslq_s8(v245, v176, v488);
    v170 = vbslq_s8(v245, v481, v490);
    v169 = vbslq_s8(v245, v179, v492);
    v166 = vbslq_s8(v245, v180, v496);
    v144 = vbslq_s8(v245, v181, v473);
    v171 = v251;
    v168 = vbslq_s8(v245, v184, v494);
    v155 = vbslq_s8(v245, v235, v155);
    v172 = vbslq_s8(v245, v236, v477);
    v173 = vbslq_s8(v245, v237, v479);
    v498 = vbslq_s8(v245, v238, v498);
    v154 = vbslq_s8(v245, v250, v475);
    v75 = vbslq_s8(v245, v230, v75);
    v167 = vbslq_s8(v245, v247, v167);
  }

  else
  {
    v168 = v494;
    v166 = v496;
    v170 = v490;
    v169 = v492;
    v171 = v486;
    v165 = v488;
    v144 = v473;
  }

LABEL_16:
  v252.i64[0] = 0x8000800080008;
  v252.i64[1] = 0x8000800080008;
  v253 = vandq_s8(v167, v252);
  v254.i64[0] = 0x3000300030003;
  v254.i64[1] = 0x3000300030003;
  v255.i64[0] = 0x2000200020002;
  v255.i64[1] = 0x2000200020002;
  v256 = vceqq_s16(vandq_s8(v167, v254), v255);
  v255.i64[0] = 0x10001000100010;
  v255.i64[1] = 0x10001000100010;
  v257 = vandq_s8(v256, v255);
  v255.i64[0] = 0x7000700070007;
  v255.i64[1] = 0x7000700070007;
  v258 = vaddq_s16(vaddq_s16(vaddq_s16(vmlaq_s16(vshlq_n_s16(vaddq_s16(vaddq_s16(v173, v172), v498), 3uLL), v155, v255), vandq_s8(vaddq_s16(v167, v167), v252)), vbicq_s8(v75, vceqzq_s16(v253))), v257);
  if ((vpaddq_s16(v258, v258).i16[0] - 463) < 0xFFFFFFFFFFFFFDF8)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
    return 64;
  }

  else
  {
    v259 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v260 = 8 * (a1 & 7);
    if (v260)
    {
      v261 = *v259 & ~(-1 << v260);
    }

    else
    {
      v261 = 0;
    }

    *a2 = 0;
    v262.i32[0] = v75.u16[0];
    v262.i32[1] = v75.u16[1];
    v263 = vshr_n_s32(vshl_n_s32(v262, 0x10uLL), 0x10uLL);
    v264 = vand_s8(vbic_s8(vadd_s32(vshl_u32(v263, 0xE0000000ALL), 0x3C00000003C00), vceqz_s32(v263)), 0x3C00000003C00);
    v265 = vorr_s8(vdup_lane_s32(v264, 1), v264).u32[0] | v167.i8[0] & 0x1F | (32 * (v167.i8[2] & 0x1F));
    v266 = v261 | (v265 << v260);
    if (v260 >= 0x2E)
    {
      *v259 = v266;
      v266 = v265 >> (-8 * (a1 & 7u));
    }

    v267 = (v260 + 18) & 0x3A;
    v268 = v266 | (v16.u32[0] << v267);
    if (v267 >= 0x20)
    {
      *(v259 + (((v260 + 18) >> 3) & 8)) = v268;
      v268 = v16.u32[0] >> -v267;
    }

    v269 = v260 + 50;
    v270 = vsubq_s16(v75, v155);
    v271 = vsubq_s16(v75, v172);
    v272 = vsubq_s16(v75, v173);
    v273 = vsubq_s16(v75, v498);
    *v270.i8 = vqmovn_u16(v270);
    *v271.i8 = vqmovn_u16(v271);
    *v272.i8 = vqmovn_u16(v272);
    *v273.i8 = vqmovn_u16(v273);
    v270.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v270, v271), vzip1q_s8(v272, v273)), vzip1q_s16(vtrn2q_s8(v270, v271), vtrn2q_s8(v272, v273))).u64[0];
    v272.i64[0] = 0x202020202020202;
    v272.i64[1] = 0x202020202020202;
    v274 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v167.i8, 0x4000400040004)))), v272);
    v272.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v272.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v273.i64[0] = -1;
    v273.i64[1] = -1;
    v275 = vandq_s8(vshlq_u8(v273, vorrq_s8(v274, v272)), v270.u64[0]);
    v276 = vmovl_u8(*v274.i8);
    v277 = vpaddq_s16(vshlq_u16(vmovl_u8(*v275.i8), vtrn1q_s16(0, v276)), vmovl_high_u8(v275));
    v278 = vpaddq_s16(v276, vmovl_high_u8(v274));
    v279 = vmovl_u16(*v278.i8);
    v280 = vmovl_high_u16(v278);
    v281 = vpaddq_s32(vshlq_u32(vmovl_u16(*v277.i8), vtrn1q_s32(0, v279)), vshlq_u32(vmovl_high_u16(v277), vtrn1q_s32(0, v280)));
    v282 = vpaddq_s32(v279, v280);
    v283.i64[0] = v281.u32[0];
    v283.i64[1] = v281.u32[1];
    v284 = v283;
    v283.i64[0] = v281.u32[2];
    v283.i64[1] = v281.u32[3];
    v285 = v283;
    v283.i64[0] = v282.u32[0];
    v283.i64[1] = v282.u32[1];
    v286 = v283;
    v283.i64[0] = v282.u32[2];
    v283.i64[1] = v282.u32[3];
    v287 = vpaddq_s64(vshlq_u64(v284, vzip1q_s64(0, v286)), vshlq_u64(v285, vzip1q_s64(0, v283)));
    v288 = vpaddq_s64(v286, v283);
    v289 = (v260 + 50) & 0x3A;
    v290 = (v287.i64[0] << v289) | v268;
    if ((v288.i64[0] + v289) >= 0x40)
    {
      *(v259 + ((v269 >> 3) & 8)) = v290;
      v290 = v287.i64[0] >> -v289;
    }

    v291 = vceqq_s16(v75, v155);
    v292 = v288.i64[0] + v269;
    v293 = v290 | (v287.i64[1] << v292);
    if ((v292 & 0x3F) + v288.i64[1] >= 0x40)
    {
      *(v259 + ((v292 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v293;
      v293 = v287.i64[1] >> -(v292 & 0x3F);
      if ((v292 & 0x3F) == 0)
      {
        v293 = 0;
      }
    }

    v294 = vandq_s8(v154, v291);
    v295 = v292 + v288.i64[1];
    v296.i64[0] = -1;
    v296.i64[1] = -1;
    v297 = vandq_s8(vextq_s8(vtstq_s16(v253, v253), 0, 0xCuLL), v75);
    v298.i64[0] = 0xF000F000F000FLL;
    v298.i64[1] = 0xF000F000F000FLL;
    v299 = vandq_s8(vshlq_u16(v296, vaddq_s16(v297, v298)), v154);
    v300 = vmovl_u16(*v297.i8);
    v301 = vpaddq_s32(vshlq_u32(vmovl_u16(*v299.i8), vtrn1q_s32(0, v300)), vmovl_high_u16(v299));
    v302 = vpaddq_s32(v300, vmovl_high_u16(v297));
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
    v309 = (v307.i64[0] << v295) | v293;
    if (v308.i64[0] + (v295 & 0x3F) >= 0x40)
    {
      *(v259 + ((v295 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v309;
      v309 = v307.i64[0] >> -(v295 & 0x3F);
      if ((v295 & 0x3F) == 0)
      {
        v309 = 0;
      }
    }

    v310 = vaddq_s16(v294, v484);
    v311 = v308.i64[0] + v295;
    v312 = v309 | (v307.i64[1] << v311);
    if ((v311 & 0x3F) + v308.i64[1] >= 0x40)
    {
      *(v259 + ((v311 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v312;
      v312 = v307.i64[1] >> -(v311 & 0x3F);
      if ((v311 & 0x3F) == 0)
      {
        v312 = 0;
      }
    }

    v313 = v311 + v308.i64[1];
    v314 = vextq_s8(0, v155, 0xCuLL);
    v315.i64[0] = 0xF000F000F000FLL;
    v315.i64[1] = 0xF000F000F000FLL;
    v316.i64[0] = -1;
    v316.i64[1] = -1;
    v317 = vandq_s8(vshlq_u16(v316, vaddq_s16(v314, v315)), v310);
    v318 = vmovl_u16(*v314.i8);
    v319 = vmovl_high_u16(v314);
    v320 = vpaddq_s32(vshlq_u32(vmovl_u16(*v317.i8), vtrn1q_s32(0, v318)), vshlq_u32(vmovl_high_u16(v317), vtrn1q_s32(0, v319)));
    v321 = vpaddq_s32(v318, v319);
    v322.i64[0] = v320.u32[0];
    v322.i64[1] = v320.u32[1];
    v323 = v322;
    v322.i64[0] = v320.u32[2];
    v322.i64[1] = v320.u32[3];
    v324 = v322;
    v322.i64[0] = v321.u32[0];
    v322.i64[1] = v321.u32[1];
    v325 = v322;
    v322.i64[0] = v321.u32[2];
    v322.i64[1] = v321.u32[3];
    v326 = vpaddq_s64(vshlq_u64(v323, vzip1q_s64(0, v325)), vshlq_u64(v324, vzip1q_s64(0, v322)));
    v327 = vpaddq_s64(v325, v322);
    v328 = (v326.i64[0] << v313) | v312;
    if (v327.i64[0] + (v313 & 0x3F) >= 0x40)
    {
      *(v259 + ((v313 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v328;
      v328 = v326.i64[0] >> -(v313 & 0x3F);
      if ((v313 & 0x3F) == 0)
      {
        v328 = 0;
      }
    }

    v329 = vceqq_s16(v75, v172);
    v330 = vaddq_s16(v171, v294);
    v331 = v327.i64[0] + v313;
    v332 = v328 | (v326.i64[1] << v331);
    if ((v331 & 0x3F) + v327.i64[1] >= 0x40)
    {
      *(v259 + ((v331 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v332;
      v332 = v326.i64[1] >> -(v331 & 0x3F);
      if ((v331 & 0x3F) == 0)
      {
        v332 = 0;
      }
    }

    v333 = vandq_s8(v154, v329);
    v334 = v331 + v327.i64[1];
    v335.i64[0] = 0xF000F000F000FLL;
    v335.i64[1] = 0xF000F000F000FLL;
    v336.i64[0] = -1;
    v336.i64[1] = -1;
    v337 = vandq_s8(vshlq_u16(v336, vaddq_s16(v155, v335)), v330);
    v338 = vmovl_u16(*v155.i8);
    v339 = vmovl_high_u16(v155);
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
    v348 = (v346.i64[0] << v334) | v332;
    if (v347.i64[0] + (v334 & 0x3F) >= 0x40)
    {
      *(v259 + ((v334 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v348;
      v348 = v346.i64[0] >> -(v334 & 0x3F);
      if ((v334 & 0x3F) == 0)
      {
        v348 = 0;
      }
    }

    v349 = vaddq_s16(v165, v333);
    v350 = v347.i64[0] + v334;
    v351 = v348 | (v346.i64[1] << v350);
    if ((v350 & 0x3F) + v347.i64[1] >= 0x40)
    {
      *(v259 + ((v350 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v351;
      v351 = v346.i64[1] >> -(v350 & 0x3F);
      if ((v350 & 0x3F) == 0)
      {
        v351 = 0;
      }
    }

    v352 = v350 + v347.i64[1];
    v353.i64[0] = 0xF000F000F000FLL;
    v353.i64[1] = 0xF000F000F000FLL;
    v354.i64[0] = -1;
    v354.i64[1] = -1;
    v355 = vshlq_u16(v354, vaddq_s16(v172, v353));
    v356 = vandq_s8(v355, v349);
    v357 = vmovl_u16(*v356.i8);
    v358 = vmovl_high_u16(v356);
    v359 = vmovl_u16(*v172.i8);
    v360 = vmovl_high_u16(v172);
    v361 = vtrn1q_s32(0, v359);
    v362 = vtrn1q_s32(0, v360);
    v363 = vpaddq_s32(vshlq_u32(v357, v361), vshlq_u32(v358, v362));
    v364 = vpaddq_s32(v359, v360);
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
    v369 = vzip1q_s64(0, v368);
    v370 = vzip1q_s64(0, v365);
    v371 = vpaddq_s64(vshlq_u64(v366, v369), vshlq_u64(v367, v370));
    v372 = vpaddq_s64(v368, v365);
    v373 = (v371.i64[0] << v352) | v351;
    if (v372.i64[0] + (v352 & 0x3F) >= 0x40)
    {
      *(v259 + ((v352 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v373;
      if ((v352 & 0x3F) != 0)
      {
        v373 = v371.i64[0] >> -(v352 & 0x3F);
      }

      else
      {
        v373 = 0;
      }
    }

    v374 = vceqq_s16(v75, v173);
    v375 = vaddq_s16(v170, v333);
    v376 = v372.i64[0] + v352;
    v377 = v373 | (v371.i64[1] << v376);
    if ((v376 & 0x3F) + v372.i64[1] >= 0x40)
    {
      *(v259 + ((v376 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v377;
      v377 = v371.i64[1] >> -(v376 & 0x3F);
      if ((v376 & 0x3F) == 0)
      {
        v377 = 0;
      }
    }

    v378 = vandq_s8(v154, v374);
    v379 = v376 + v372.i64[1];
    v380 = vandq_s8(v355, v375);
    v381 = vpaddq_s32(vshlq_u32(vmovl_u16(*v380.i8), v361), vshlq_u32(vmovl_high_u16(v380), v362));
    v382.i64[0] = v381.u32[0];
    v382.i64[1] = v381.u32[1];
    v383 = v382;
    v382.i64[0] = v381.u32[2];
    v382.i64[1] = v381.u32[3];
    v384 = vpaddq_s64(vshlq_u64(v383, v369), vshlq_u64(v382, v370));
    v385 = (v384.i64[0] << v379) | v377;
    if (v372.i64[0] + (v379 & 0x3F) >= 0x40)
    {
      *(v259 + ((v379 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v385;
      v385 = v384.i64[0] >> -(v379 & 0x3F);
      if ((v379 & 0x3F) == 0)
      {
        v385 = 0;
      }
    }

    v386 = vaddq_s16(v169, v378);
    v387 = v372.i64[0] + v379;
    v388 = (v372.i64[0] + v379) & 0x3F;
    v389 = v385 | (v384.i64[1] << v387);
    if ((v387 & 0x3F) + v372.i64[1] >= 0x40)
    {
      *(v259 + ((v387 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v389;
      v389 = v384.i64[1] >> -v388;
      if (!v388)
      {
        v389 = 0;
      }
    }

    v390 = v387 + v372.i64[1];
    v391.i64[0] = 0xF000F000F000FLL;
    v391.i64[1] = 0xF000F000F000FLL;
    v392.i64[0] = -1;
    v392.i64[1] = -1;
    v393 = vshlq_u16(v392, vaddq_s16(v173, v391));
    v394 = vandq_s8(v393, v386);
    v395 = vmovl_u16(*v394.i8);
    v396 = vmovl_high_u16(v394);
    v397 = vmovl_u16(*v173.i8);
    v398 = vmovl_high_u16(v173);
    v399 = vtrn1q_s32(0, v397);
    v400 = vtrn1q_s32(0, v398);
    v401 = vpaddq_s32(vshlq_u32(v395, v399), vshlq_u32(v396, v400));
    v402 = vpaddq_s32(v397, v398);
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
    v407 = vzip1q_s64(0, v406);
    v408 = vzip1q_s64(0, v403);
    v409 = vpaddq_s64(vshlq_u64(v404, v407), vshlq_u64(v405, v408));
    v410 = vpaddq_s64(v406, v403);
    v411 = (v387 + v372.i64[1]) & 0x3F;
    v412 = (v409.i64[0] << (v387 + v372.i8[8])) | v389;
    if ((v410.i64[0] + v411) >= 0x40)
    {
      *(v259 + ((v390 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v412;
      if (v411)
      {
        v412 = v409.i64[0] >> -v411;
      }

      else
      {
        v412 = 0;
      }
    }

    v413 = vceqq_s16(v75, v498);
    v414 = vaddq_s16(v166, v378);
    v415 = v410.i64[0] + v390;
    v416 = v412 | (v409.i64[1] << v415);
    if ((v415 & 0x3F) + v410.i64[1] >= 0x40)
    {
      *(v259 + ((v415 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
      v416 = v409.i64[1] >> -(v415 & 0x3F);
      if ((v415 & 0x3F) == 0)
      {
        v416 = 0;
      }
    }

    v417 = vandq_s8(v154, v413);
    v418 = v415 + v410.i64[1];
    v419 = vandq_s8(v393, v414);
    v420 = vpaddq_s32(vshlq_u32(vmovl_u16(*v419.i8), v399), vshlq_u32(vmovl_high_u16(v419), v400));
    v421.i64[0] = v420.u32[0];
    v421.i64[1] = v420.u32[1];
    v422 = v421;
    v421.i64[0] = v420.u32[2];
    v421.i64[1] = v420.u32[3];
    v423 = vpaddq_s64(vshlq_u64(v422, v407), vshlq_u64(v421, v408));
    v424 = (v423.i64[0] << v418) | v416;
    if (v410.i64[0] + (v418 & 0x3F) >= 0x40)
    {
      *(v259 + ((v418 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v424;
      v424 = v423.i64[0] >> -(v418 & 0x3F);
      if ((v418 & 0x3F) == 0)
      {
        v424 = 0;
      }
    }

    v425 = vaddq_s16(v144, v417);
    v426 = v410.i64[0] + v418;
    v427 = (v410.i64[0] + v418) & 0x3F;
    v428 = v424 | (v423.i64[1] << v426);
    if ((v426 & 0x3F) + v410.i64[1] >= 0x40)
    {
      *(v259 + ((v426 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v428;
      v428 = v423.i64[1] >> -v427;
      if (!v427)
      {
        v428 = 0;
      }
    }

    v429 = v426 + v410.i64[1];
    v430.i64[0] = 0xF000F000F000FLL;
    v430.i64[1] = 0xF000F000F000FLL;
    v431.i64[0] = -1;
    v431.i64[1] = -1;
    v432 = vshlq_u16(v431, vaddq_s16(v498, v430));
    v433 = vandq_s8(v432, v425);
    v434 = vmovl_u16(*v433.i8);
    v435 = vmovl_high_u16(v433);
    v436 = vmovl_u16(*v498.i8);
    v437 = vmovl_high_u16(v498);
    v438 = vtrn1q_s32(0, v436);
    v439 = vtrn1q_s32(0, v437);
    v440 = vpaddq_s32(vshlq_u32(v434, v438), vshlq_u32(v435, v439));
    v441 = vpaddq_s32(v436, v437);
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
    v446 = vzip1q_s64(0, v445);
    v447 = vzip1q_s64(0, v442);
    v448 = vpaddq_s64(vshlq_u64(v443, v446), vshlq_u64(v444, v447));
    v449 = vpaddq_s64(v445, v442);
    v450 = (v426 + v410.i64[1]) & 0x3F;
    v451 = (v448.i64[0] << (v426 + v410.i8[8])) | v428;
    if ((v449.i64[0] + v450) > 0x3F)
    {
      *(v259 + ((v429 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v451;
      if (v450)
      {
        v451 = v448.i64[0] >> -v450;
      }

      else
      {
        v451 = 0;
      }
    }

    v452 = vaddq_s16(v168, v417);
    v453 = v449.i64[0] + v429;
    v454 = v451 | (v448.i64[1] << v453);
    if ((v453 & 0x3F) + v449.i64[1] >= 0x40)
    {
      *(v259 + ((v453 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v454;
      v454 = v448.i64[1] >> -(v453 & 0x3F);
      if ((v453 & 0x3F) == 0)
      {
        v454 = 0;
      }
    }

    v455 = v453 + v449.i64[1];
    v456 = vandq_s8(v432, v452);
    v457 = vpaddq_s32(vshlq_u32(vmovl_u16(*v456.i8), v438), vshlq_u32(vmovl_high_u16(v456), v439));
    v458.i64[0] = v457.u32[0];
    v458.i64[1] = v457.u32[1];
    v459 = v458;
    v458.i64[0] = v457.u32[2];
    v458.i64[1] = v457.u32[3];
    v460 = vpaddq_s64(vshlq_u64(v459, v446), vshlq_u64(v458, v447));
    v461 = (v460.i64[0] << v455) | v454;
    if (v449.i64[0] + (v455 & 0x3F) >= 0x40)
    {
      *(v259 + ((v455 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v461;
      v461 = v460.i64[0] >> -(v455 & 0x3F);
      if ((v455 & 0x3F) == 0)
      {
        v461 = 0;
      }
    }

    v462 = v449.i64[0] + v455;
    v463 = (v449.i64[0] + v455) & 0x3F;
    v464 = v461 | (v460.i64[1] << (v449.i8[0] + v455));
    if ((v463 + v449.i64[1]) >= 0x40)
    {
      *(v259 + ((v462 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v464;
      v464 = v460.i64[1] >> -v463;
      if (!v463)
      {
        v464 = 0;
      }
    }

    v465 = v462 + v449.i64[1];
    if ((v465 & 0x3F) != 0)
    {
      *(v259 + ((v465 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v464;
    }

    result = (v465 - v260 + 7) >> 3;
    *a2 |= result - 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
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
  if (a6 && a5)
  {
    if (a5 > 3)
    {
      v19 = a5 & 0x7C;
      if (v19 == a5)
      {
        for (i = 0; i != a6; ++i)
        {
          v21 = &v68 + 2 * (i & 0x7F);
          v22 = a3;
          v23 = a5;
          do
          {
            v76 = vld2q_f32(v22);
            v22 += 8;
            *(v21++ - 1) = v76;
            v23 -= 4;
          }

          while (v23);
          a3 += a4;
        }
      }

      else
      {
        v24 = 0;
        v25 = a5 - 4;
        v26 = a3;
        do
        {
          v27 = 32 * (v24 & 0x7F);
          v28 = (&v69 + v27);
          v29 = &v68 + v27;
          v30 = v26;
          v31 = a5 & 0x7C;
          do
          {
            v77 = vld2q_f32(v30);
            v30 += 8;
            *(v29 - 16) = v77;
            v29 += 16;
            v31 -= 4;
          }

          while (v31);
          v32 = (a3 + v24 * a4 + 8 * v19);
          v33 = v25;
          do
          {
            v34 = *v32;
            v35 = v32[1];
            v32 += 2;
            *(v28 - 4) = v34;
            *v28++ = v35;
            --v33;
          }

          while (v33);
          ++v24;
          v26 = (v26 + a4);
        }

        while (v24 != a6);
      }
    }

    else
    {
      v11 = 0;
      v12 = (a3 + 12);
      do
      {
        v13 = v11 & 0xFE | 1;
        v14 = *(v12 - 2);
        *(&v67 + 4 * (v11 & 0xFE)) = *(v12 - 3);
        *(&v67 + 4 * v13) = v14;
        if (a5 != 1)
        {
          v15 = *v12;
          v16 = &v67 + (v11 & 0xFE);
          *(v16 + 1) = *(v12 - 1);
          v17 = &v67 + v13;
          *(v17 + 1) = v15;
          if (a5 != 2)
          {
            v18 = v12[2];
            *(v16 + 2) = v12[1];
            *(v17 + 2) = v18;
          }
        }

        v11 += 2;
        v12 = (v12 + a4);
      }

      while (2 * a6 != v11);
    }
  }

  v36 = 2 * (a5 & 0x7F);
  v51 = v67;
  v52 = WORD1(v67);
  v53 = v68;
  v54 = WORD1(v68);
  v55 = WORD2(v67);
  v56 = WORD3(v67);
  v57 = WORD2(v68);
  v58 = WORD3(v68);
  v59 = v69;
  v60 = WORD1(v69);
  v61 = v70;
  v62 = WORD1(v70);
  v63 = WORD2(v69);
  v64 = WORD3(v69);
  if (v36 >= 4)
  {
    v37 = 4;
  }

  else
  {
    v37 = 2 * (a5 & 0x7F);
  }

  if (v36 >= 4)
  {
    v38 = v36 - 4;
  }

  else
  {
    v38 = 0;
  }

  v65 = WORD2(v70);
  v66 = WORD3(v70);
  if (a6 >= 2)
  {
    v39 = 2;
  }

  else
  {
    v39 = a6;
  }

  if (a6 >= 2)
  {
    v40 = a6 - 2;
  }

  else
  {
    v40 = 0;
  }

  v41 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v51, a7, v37, v39);
  v51 = WORD4(v67);
  v52 = WORD5(v67);
  v53 = WORD4(v68);
  v54 = WORD5(v68);
  v55 = WORD6(v67);
  v56 = HIWORD(v67);
  v57 = WORD6(v68);
  v58 = HIWORD(v68);
  v59 = WORD4(v69);
  v60 = WORD5(v69);
  v61 = WORD4(v70);
  v62 = WORD5(v70);
  v63 = WORD6(v69);
  v64 = HIWORD(v69);
  v65 = WORD6(v70);
  v66 = HIWORD(v70);
  if (a6 >= 4)
  {
    v42 = 2;
  }

  else
  {
    v42 = v40;
  }

  v43 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 16, &v51, a7, v37, v42);
  v51 = v71;
  v52 = WORD1(v71);
  v53 = v72;
  v54 = WORD1(v72);
  v55 = WORD2(v71);
  v56 = WORD3(v71);
  v57 = WORD2(v72);
  v58 = WORD3(v72);
  v59 = v73;
  v60 = WORD1(v73);
  v61 = v74;
  v62 = WORD1(v74);
  v63 = WORD2(v73);
  v64 = WORD3(v73);
  if (a5 >= 4)
  {
    v44 = 4;
  }

  else
  {
    v44 = v38;
  }

  v65 = WORD2(v74);
  v66 = WORD3(v74);
  v45 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 32, &v51, a7, v44, v39);
  v51 = WORD4(v71);
  v52 = WORD5(v71);
  v53 = WORD4(v72);
  v54 = WORD5(v72);
  v55 = WORD6(v71);
  v56 = HIWORD(v71);
  v57 = WORD6(v72);
  v58 = HIWORD(v72);
  v59 = WORD4(v73);
  v60 = WORD5(v73);
  v61 = WORD4(v74);
  v62 = WORD5(v74);
  v63 = WORD6(v73);
  v64 = HIWORD(v73);
  v65 = WORD6(v74);
  v66 = HIWORD(v74);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 48, &v51, a7, v44, v42);
  if (v45)
  {
    v47 = 4;
  }

  else
  {
    v47 = 0;
  }

  if (v43)
  {
    v48 = 2;
  }

  else
  {
    v48 = 0;
  }

  if (result)
  {
    v49 = -8;
  }

  else
  {
    v49 = -16;
  }

  *a2 = v49 | v47 | v41 | v48;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(int16x8_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v12 = 8 * (a3 & 7);
  v13 = a3 & 0xFFFFFFFFFFFFFFF8;
  v14 = v12 + 18;
  v15 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v12;
  if (v12 >= 0x2F)
  {
    v15 |= *(v13 + 8) << (-8 * (a3 & 7u));
  }

  v16.i32[0] = v15;
  v16.i32[1] = v15 >> 5;
  v17 = vand_s8(v16, 0x1F0000001FLL);
  v18 = vuzp1_s16(v17, v17);
  v19.i32[0] = v15 >> 10;
  v19.i32[1] = v15 >> 14;
  v20 = vuzp1_s16(vadd_s32(vand_s8(v19, 0xF0000000FLL), 0x100000001), v18);
  v21 = v12 + 50;
  v22 = v14 & 0x3A;
  v23 = (v13 + ((v14 >> 3) & 8));
  v24 = *v23 >> (v14 & 0x3A);
  if (v22 >= 0x21)
  {
    v24 |= v23[1] << -v22;
  }

  v25 = vdupq_lane_s32(v18, 0);
  v26 = vdupq_lane_s32(v20, 0);
  v27 = (8 * (a3 & 7)) | 0x200;
  v28.i64[0] = 0x3000300030003;
  v28.i64[1] = 0x3000300030003;
  v29 = vandq_s8(v25, v28);
  v30 = vbicq_s8(v26, vceqq_s16(v29, v28));
  v28.i64[0] = 0x202020202020202;
  v28.i64[1] = 0x202020202020202;
  v31 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v25.i8, 0x4000400040004)))), v28);
  if (vmaxvq_s8(v31) < 1)
  {
    v40 = 0;
    v61.i64[0] = -1;
    v61.i64[1] = -1;
    v55 = v30;
    v56 = v30;
    v57 = v30;
    v60.i64[0] = -1;
    v60.i64[1] = -1;
    v54 = v30;
    v59.i64[0] = -1;
    v59.i64[1] = -1;
    v58.i64[0] = -1;
    v58.i64[1] = -1;
  }

  else
  {
    v32 = vmovl_u8(*&vpaddq_s8(v31, v31));
    v33 = vmovl_u16(*&vpaddq_s16(v32, v32));
    v34 = vpaddq_s32(v33, v33).u64[0];
    v35.i64[0] = v34;
    v35.i64[1] = HIDWORD(v34);
    v36 = v35;
    v37 = vaddvq_s64(v35);
    v38 = v37 + v21;
    v39 = v37 <= 0x80 && v27 >= v38;
    v40 = !v39;
    v41 = 0uLL;
    if (v39)
    {
      v42 = v21 & 0x3A;
      v43 = vaddq_s64(vzip1q_s64(0, v36), vdupq_n_s64(v42));
      v44 = (v13 + ((v21 >> 3) & 8));
      v41 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v44, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v43)), vshlq_u64(vdupq_lane_s64(v44->i64[0], 0), vnegq_s64(v43)));
      if (v37 + v42 >= 0x81)
      {
        v41 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v44[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v43)), vshlq_u64(vdupq_laneq_s64(v44[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v43))), v41);
      }

      v21 = v38;
    }

    v45 = vzip1_s32(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
    v46.i64[0] = v45.u32[0];
    v46.i64[1] = v45.u32[1];
    v47 = vshlq_u64(v41, vnegq_s64(v46));
    v48 = vuzp1q_s32(vzip1q_s64(v41, v47), vzip2q_s64(v41, v47));
    v49 = vshlq_u32(v48, vnegq_s32((*&v32 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v50 = vuzp1q_s16(vzip1q_s32(v48, v49), vzip2q_s32(v48, v49));
    v48.i64[0] = 0x101010101010101;
    v48.i64[1] = 0x101010101010101;
    *v51.i8 = vand_s8(vadd_s8(*&vshlq_s8(v48, v31), -1), vmovn_s16(vzip1q_s16(v50, vshlq_u16(v50, vnegq_s16(vmovl_u8(vuzp1_s8(*v31.i8, *v25.i8)))))));
    v51.i64[1] = v51.i64[0];
    *v51.i8 = vqtbl1_s8(v51, 0x703060205010400);
    *v50.i8 = vdup_lane_s16(*v51.i8, 0);
    *v48.i8 = vdup_lane_s16(*v51.i8, 1);
    v52 = vdup_lane_s16(*v51.i8, 2);
    v53 = vdup_lane_s16(*v51.i8, 3);
    v54 = vsubw_s8(v30, *v50.i8);
    v55 = vsubw_s8(v30, *v48.i8);
    v56 = vsubw_s8(v30, v52);
    v57 = vsubw_s8(v30, v53);
    v58 = vmovl_s8(vceqz_s8(*v50.i8));
    v59 = vmovl_s8(vceqz_s8(*v48.i8));
    v60 = vmovl_s8(vceqz_s8(v52));
    v61 = vmovl_s8(vceqz_s8(v53));
  }

  v62.i64[0] = 0x8000800080008;
  v62.i64[1] = 0x8000800080008;
  v63 = 0uLL;
  v64 = vandq_s8(vextq_s8(vtstq_s16(v25, v62), 0, 0xCuLL), v30);
  v65 = vmovl_u16(*&vpaddq_s16(v64, v64));
  v66 = vpaddq_s32(v65, v65).u64[0];
  v67.i64[0] = v66;
  v67.i64[1] = HIDWORD(v66);
  v68 = v67;
  v69 = vaddvq_s64(v67);
  v70 = v69 + v21;
  if (v69 <= 0x80 && v27 >= v70)
  {
    v72 = v21 & 0x3F;
    v73 = vaddq_s64(vzip1q_s64(0, v68), vdupq_n_s64(v72));
    v74 = (v13 + 8 * (v21 >> 6));
    v63 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v74, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v73)), vshlq_u64(vdupq_lane_s64(v74->i64[0], 0), vnegq_s64(v73)));
    if (v69 + v72 >= 0x81)
    {
      v63 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v74[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v73)), vshlq_u64(vdupq_laneq_s64(v74[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v73))), v63);
    }

    v21 = v70;
  }

  else
  {
    v40 = 1;
  }

  v75 = v25.i8[0] & 3;
  if (v75 == 2)
  {
    if (v27 < v21 + 8)
    {
      v40 = 1;
    }

    else
    {
      v21 += 8;
    }

    v76 = v27 < v21 + 8;
    if (v27 >= v21 + 8)
    {
      v21 += 8;
    }

    v40 |= v76;
  }

  v77 = 0uLL;
  v78 = vextq_s8(0, v54, 0xCuLL);
  v79 = vmovl_u16(*&vpaddq_s16(v78, v78));
  v80 = vpaddq_s32(v79, v79).u64[0];
  v81.i64[0] = v80;
  v81.i64[1] = HIDWORD(v80);
  v82 = v81;
  v83 = vaddvq_s64(v81);
  v84 = v83 + v21;
  if (v83 <= 0x80 && v27 >= v84)
  {
    v87 = v21 & 0x3F;
    v88 = vaddq_s64(vzip1q_s64(0, v82), vdupq_n_s64(v87));
    v89 = (v13 + 8 * (v21 >> 6));
    v86 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v89, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v88)), vshlq_u64(vdupq_lane_s64(v89->i64[0], 0), vnegq_s64(v88)));
    if (v83 + v87 >= 0x81)
    {
      v86 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v89[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v88)), vshlq_u64(vdupq_laneq_s64(v89[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v88))), v86);
    }

    v21 = v84;
  }

  else
  {
    v40 = 1;
    v86 = 0uLL;
  }

  v90 = vmovl_u16(*&vpaddq_s16(v54, v54));
  v91 = vpaddq_s32(v90, v90).u64[0];
  v92.i64[0] = v91;
  v92.i64[1] = HIDWORD(v91);
  v93 = v92;
  v94 = vaddvq_s64(v92);
  v95 = v94 + v21;
  if (v94 <= 0x80 && v27 >= v95)
  {
    v97 = v21 & 0x3F;
    v98 = vaddq_s64(vzip1q_s64(0, v93), vdupq_n_s64(v97));
    v99 = (v13 + 8 * (v21 >> 6));
    v77 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v99, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v98)), vshlq_u64(vdupq_lane_s64(v99->i64[0], 0), vnegq_s64(v98)));
    if (v94 + v97 >= 0x81)
    {
      v77 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v99[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v98)), vshlq_u64(vdupq_laneq_s64(v99[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v98))), v77);
    }

    v21 = v95;
  }

  else
  {
    v40 = 1;
  }

  v287 = v11;
  v288 = v10;
  v289 = v9;
  v290 = v8;
  v291 = v7;
  v292 = v6;
  v293 = v5;
  v294 = v4;
  v100 = vmovl_u16(*&vpaddq_s16(v55, v55));
  v101 = vpaddq_s32(v100, v100).u64[0];
  v102.i64[0] = v101;
  v102.i64[1] = HIDWORD(v101);
  v103 = v102;
  v104 = vaddvq_s64(v102);
  v105 = v104 + v21;
  v106 = 0uLL;
  if (v104 <= 0x80 && v27 >= v105)
  {
    v109 = v21 & 0x3F;
    v110 = vaddq_s64(vzip1q_s64(0, v103), vdupq_n_s64(v109));
    v111 = (v13 + 8 * (v21 >> 6));
    v108 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v111, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v110)), vshlq_u64(vdupq_lane_s64(v111->i64[0], 0), vnegq_s64(v110)));
    if (v104 + v109 >= 0x81)
    {
      v108 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v111[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v110)), vshlq_u64(vdupq_laneq_s64(v111[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v110))), v108);
    }

    v21 = v105;
    if (v104 > 0x80)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v40 = 1;
    v108 = 0uLL;
    if (v104 > 0x80)
    {
      goto LABEL_62;
    }
  }

  v112 = v104 + v21;
  if (v27 < v104 + v21)
  {
LABEL_62:
    v112 = v21;
    v40 = 1;
    goto LABEL_63;
  }

  v113 = v21 & 0x3F;
  v114 = vaddq_s64(vzip1q_s64(0, v103), vdupq_n_s64(v113));
  v115 = (v13 + 8 * (v21 >> 6));
  v106 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v115, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v114)), vshlq_u64(vdupq_lane_s64(v115->i64[0], 0), vnegq_s64(v114)));
  if (v104 + v113 >= 0x81)
  {
    v106 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v115[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v114)), vshlq_u64(vdupq_laneq_s64(v115[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v114))), v106);
  }

LABEL_63:
  v116 = vmovl_u16(*&vpaddq_s16(v56, v56));
  v117 = vpaddq_s32(v116, v116).u64[0];
  v118.i64[0] = v117;
  v118.i64[1] = HIDWORD(v117);
  v119 = v118;
  v120 = vaddvq_s64(v118);
  v121 = 0uLL;
  if (v120 > 0x80 || (v122 = v120 + v112, v27 < v120 + v112))
  {
    v122 = v112;
    v40 = 1;
    v125 = 0uLL;
  }

  else
  {
    v123 = vaddq_s64(vzip1q_s64(0, v119), vdupq_n_s64(v112 & 0x3F));
    v124 = (v13 + 8 * (v112 >> 6));
    v125 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v124, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v123)), vshlq_u64(vdupq_lane_s64(v124->i64[0], 0), vnegq_s64(v123)));
    if (v120 + (v112 & 0x3F) >= 0x81)
    {
      v125 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v124[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v123)), vshlq_u64(vdupq_laneq_s64(v124[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v123))), v125);
    }
  }

  if (v120 > 0x80 || (v126 = v120 + v122, v27 < v120 + v122))
  {
    v126 = v122;
    v40 = 1;
  }

  else
  {
    v127 = vaddq_s64(vzip1q_s64(0, v119), vdupq_n_s64(v122 & 0x3F));
    v128 = (v13 + 8 * (v122 >> 6));
    v121 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v128, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v127)), vshlq_u64(vdupq_lane_s64(v128->i64[0], 0), vnegq_s64(v127)));
    if (v120 + (v122 & 0x3F) >= 0x81)
    {
      v121 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v128[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v127)), vshlq_u64(vdupq_laneq_s64(v128[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v127))), v121);
    }
  }

  v129 = vmovl_u16(*&vpaddq_s16(v57, v57));
  v130 = vpaddq_s32(v129, v129).u64[0];
  v131.i64[0] = v130;
  v131.i64[1] = HIDWORD(v130);
  v132 = v131;
  v133 = vaddvq_s64(v131);
  if (v133 > 0x80 || (v134 = v133 + v126, v27 < v133 + v126))
  {
    v134 = v126;
    v40 = 1;
    v138 = 0uLL;
  }

  else
  {
    v135 = v126 & 0x3F;
    v136 = vaddq_s64(vzip1q_s64(0, v132), vdupq_n_s64(v135));
    v137 = (v13 + 8 * (v126 >> 6));
    v138 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v137, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v136)), vshlq_u64(vdupq_lane_s64(v137->i64[0], 0), vnegq_s64(v136)));
    if (v133 + v135 >= 0x81)
    {
      v138 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v137[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v136)), vshlq_u64(vdupq_laneq_s64(v137[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v136))), v138);
    }
  }

  if (v133 > 0x80 || v27 < v133 + v134)
  {
    goto LABEL_86;
  }

  v139 = vaddq_s64(vzip1q_s64(0, v132), vdupq_n_s64(v134 & 0x3F));
  v140 = (v13 + 8 * (v134 >> 6));
  v141 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v140, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v139)), vshlq_u64(vdupq_lane_s64(v140->i64[0], 0), vnegq_s64(v139)));
  if (v133 + (v134 & 0x3F) >= 0x81)
  {
    v141 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v140[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v139)), vshlq_u64(vdupq_laneq_s64(v140[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v139))), v141);
  }

  if ((v40 & 1) != 0 || (v142 = a4 + 1, v27 + 8 * v142 - (v133 + v134) - 512 >= 9))
  {
LABEL_86:
    v143 = 0;
    v144 = 0;
    v145 = 8 * (v285 & 7);
    v146 = 16;
    do
    {
      v147 = 64 - v145;
      if (64 - v145 >= v146)
      {
        v147 = v146;
      }

      *&v285[8 * v143] |= ((0xFFFFFFFFFFFFFFFFLL >> v144) & ~(-1 << v147)) << v145;
      v144 += v147;
      v148 = v147 + v145;
      v143 += v148 >> 6;
      v145 = v148 & 0x3F;
      v146 -= v147;
    }

    while (v146);
LABEL_90:
    v142 = 0;
    v149 = (a1->i64 + a2);
    a1->i64[0] = 0;
    a1->i64[1] = 0;
    v150 = (a1->i64 + 2 * a2);
    *v149 = 0;
    v149[1] = 0;
    v151 = (a1->i64 + 2 * a2 + a2);
    *v150 = 0;
    v150[1] = 0;
    *v151 = 0;
    v151[1] = 0;
    return v142;
  }

  if (v75 == 2)
  {
    v153 = 0;
    v154 = 0;
    v155 = 8 * (&v286 & 7);
    v156 = 16;
    do
    {
      v157 = 64 - v155;
      if (64 - v155 >= v156)
      {
        v157 = v156;
      }

      *&v285[8 * v153] |= ((0xFFFFFFFFFFFFFFFFLL >> v154) & ~(-1 << v157)) << v155;
      v154 += v157;
      v158 = v157 + v155;
      v153 += v158 >> 6;
      v155 = v158 & 0x3F;
      v156 -= v157;
    }

    while (v156);
    goto LABEL_90;
  }

  v159 = vzip1_s32(*v65.i8, *&vextq_s8(v65, v65, 8uLL));
  v160 = vzip1_s32(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
  v161 = vzip1_s32(*v116.i8, *&vextq_s8(v116, v116, 8uLL));
  v162 = vzip1_s32(*v129.i8, *&vextq_s8(v129, v129, 8uLL));
  v163.i64[0] = v159.u32[0];
  v163.i64[1] = v159.u32[1];
  v164 = v163;
  v163.i64[0] = v160.u32[0];
  v163.i64[1] = v160.u32[1];
  v165 = v163;
  v163.i64[0] = v161.u32[0];
  v163.i64[1] = v161.u32[1];
  v166 = v163;
  v163.i64[0] = v162.u32[0];
  v163.i64[1] = v162.u32[1];
  v167 = vnegq_s64(v164);
  v168 = vnegq_s64(v165);
  v169 = vnegq_s64(v166);
  v170 = vnegq_s64(v163);
  v171 = vshlq_u64(v63, v167);
  v172 = vshlq_u64(v108, v168);
  v173 = vshlq_u64(v106, v168);
  v174 = vshlq_u64(v125, v169);
  v175 = vshlq_u64(v121, v169);
  v176 = vshlq_u64(v138, v170);
  v177 = vzip2q_s64(v63, v171);
  v178 = vzip1q_s64(v63, v171);
  v179 = vzip2q_s64(v108, v172);
  v180 = vzip1q_s64(v108, v172);
  v181 = vzip2q_s64(v106, v173);
  v182 = vzip1q_s64(v106, v173);
  v183 = vzip2q_s64(v125, v174);
  v184 = vzip1q_s64(v125, v174);
  v185 = vzip2q_s64(v121, v175);
  v186 = vzip1q_s64(v121, v175);
  v187 = vzip2q_s64(v138, v176);
  v188 = vzip1q_s64(v138, v176);
  v189 = vuzp1q_s32(v178, v177);
  v190 = vuzp1q_s32(v180, v179);
  v191 = vuzp1q_s32(v182, v181);
  v178.i64[0] = 0xFFFF0000FFFFLL;
  v178.i64[1] = 0xFFFF0000FFFFLL;
  v192 = vuzp1q_s32(v184, v183);
  v180.i64[0] = 0xFFFF0000FFFFLL;
  v180.i64[1] = 0xFFFF0000FFFFLL;
  v193 = vnegq_s32(vandq_s8(v64, v178));
  v194 = vnegq_s32(vandq_s8(v55, v180));
  v195 = vuzp1q_s32(v186, v185);
  v196 = vuzp1q_s32(v188, v187);
  v197 = vshlq_u32(v189, v193);
  v198 = vshlq_u32(v190, v194);
  v199 = vshlq_u32(v191, v194);
  v194.i64[0] = 0x10001000100010;
  v194.i64[1] = 0x10001000100010;
  v188.i64[0] = 0xF000F000F000FLL;
  v188.i64[1] = 0xF000F000F000FLL;
  v200 = vsubq_s16(v194, v64);
  v201 = vaddq_s16(v64, v188);
  v188.i64[0] = 0x10001000100010;
  v188.i64[1] = 0x10001000100010;
  v202 = vshlq_s16(vuzp1q_s16(vzip1q_s32(v189, v197), vzip2q_s32(v189, v197)), v200);
  v200.i64[0] = 0xF000F000F000FLL;
  v200.i64[1] = 0xF000F000F000FLL;
  v203 = vsubq_s16(v188, v55);
  v204 = vaddq_s16(v55, v200);
  v200.i64[0] = 0xFFFF0000FFFFLL;
  v200.i64[1] = 0xFFFF0000FFFFLL;
  v205 = vnegq_s32(vandq_s8(v56, v200));
  v206 = vshlq_s16(v202, v201);
  v207 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v190, v198), vzip2q_s32(v190, v198)), v203), v204);
  v208 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v191, v199), vzip2q_s32(v191, v199)), v203), v204);
  v209 = vdupq_lane_s32(*v206.i8, 0);
  v210 = vandq_s8(v59, v209);
  v211 = vsubq_s16(v207, v210);
  v212 = vsubq_s16(v208, v210);
  v213 = vshlq_u32(v192, v205);
  v214 = vshlq_u32(v195, v205);
  v215 = vzip2q_s32(v192, v213);
  v216 = vzip1q_s32(v192, v213);
  v217 = vzip2q_s32(v195, v214);
  v218 = vzip1q_s32(v195, v214);
  v214.i64[0] = 0x10001000100010;
  v214.i64[1] = 0x10001000100010;
  v219 = vuzp1q_s16(v218, v217);
  v217.i64[0] = 0xF000F000F000FLL;
  v217.i64[1] = 0xF000F000F000FLL;
  v220 = vsubq_s16(v214, v56);
  v221 = vaddq_s16(v56, v217);
  v217.i64[0] = 0xFFFF0000FFFFLL;
  v217.i64[1] = 0xFFFF0000FFFFLL;
  v222 = vnegq_s32(vandq_s8(v57, v217));
  v223 = vshlq_s16(vshlq_s16(vuzp1q_s16(v216, v215), v220), v221);
  v224 = vshlq_s16(vshlq_s16(v219, v220), v221);
  v225 = vandq_s8(v60, v209);
  v226 = vsubq_s16(v223, v225);
  v227 = vsubq_s16(v224, v225);
  v228 = vshlq_u32(v196, v222);
  v229 = vzip2q_s32(v196, v228);
  v230 = vzip1q_s32(v196, v228);
  v228.i64[0] = 0x10001000100010;
  v228.i64[1] = 0x10001000100010;
  v231 = vuzp1q_s16(v230, v229);
  v229.i64[0] = 0xF000F000F000FLL;
  v229.i64[1] = 0xF000F000F000FLL;
  v232 = vsubq_s16(v228, v57);
  v233 = vaddq_s16(v57, v229);
  v234 = vshlq_u64(v141, v170);
  v235 = vuzp1q_s32(vzip1q_s64(v141, v234), vzip2q_s64(v141, v234));
  v236 = vshlq_u32(v235, v222);
  v237 = vshlq_s16(vshlq_s16(v231, v232), v233);
  v238 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v235, v236), vzip2q_s32(v235, v236)), v232), v233);
  v239 = vandq_s8(v61, v209);
  v240 = vsubq_s16(v237, v239);
  v241 = vsubq_s16(v238, v239);
  v242 = vzip1_s32(*v79.i8, *&vextq_s8(v79, v79, 8uLL));
  v243 = vzip1_s32(*v90.i8, *&vextq_s8(v90, v90, 8uLL));
  v163.i64[0] = v242.u32[0];
  v163.i64[1] = v242.u32[1];
  v244 = v163;
  v163.i64[0] = v243.u32[0];
  v163.i64[1] = v243.u32[1];
  v245 = vshlq_u64(v86, vnegq_s64(v244));
  v246 = vshlq_u64(v77, vnegq_s64(v163));
  v247 = vzip2q_s64(v86, v245);
  v248 = vzip1q_s64(v86, v245);
  v249 = vzip2q_s64(v77, v246);
  v250 = vzip1q_s64(v77, v246);
  v246.i64[0] = 0xFFFF0000FFFFLL;
  v246.i64[1] = 0xFFFF0000FFFFLL;
  v251 = vuzp1q_s32(v248, v247);
  v252 = vuzp1q_s32(v250, v249);
  v253 = vnegq_s32(vandq_s8(v54, v246));
  v254 = vshlq_u32(v251, vnegq_s32(vandq_s8(v78, v246)));
  v255 = vshlq_u32(v252, v253);
  v256 = vzip2q_s32(v251, v254);
  v257 = vzip1q_s32(v251, v254);
  v258 = vzip2q_s32(v252, v255);
  v259 = vzip1q_s32(v252, v255);
  v255.i64[0] = 0x10001000100010;
  v255.i64[1] = 0x10001000100010;
  v260 = vuzp1q_s16(v259, v258);
  v258.i64[0] = 0xF000F000F000FLL;
  v258.i64[1] = 0xF000F000F000FLL;
  v261 = vaddq_s16(vandq_s8(v206, v58), vshlq_s16(vshlq_s16(vuzp1q_s16(v257, v256), vsubq_s16(v255, v78)), vaddq_s16(v78, v258)));
  v262 = vandq_s8(v58, v209);
  v263.i64[0] = 0x1000100010001;
  v263.i64[1] = 0x1000100010001;
  v264 = vceqq_s16(v29, v263);
  v265 = vaddvq_s16(v264);
  v266 = vsubq_s16(v261, v262);
  v267 = vsubq_s16(vshlq_s16(vshlq_s16(v260, vsubq_s16(v255, v54)), vaddq_s16(v54, v258)), v262);
  v264.i32[0] = v24;
  v268 = vdupq_lane_s32(*v264.i8, 0);
  if (v265)
  {
    v269 = vnegq_s16(vandq_s8(v25, v263));
    v270 = v267;
    v270.i32[3] = v266.i32[0];
    v271 = v266;
    v271.i32[0] = v267.i32[3];
    v295.val[0] = vbslq_s8(v269, v271, v266);
    v295.val[1] = vbslq_s8(v269, v270, v267);
    v270.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v270.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v296.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(v295, xmmword_29D2F0F80), v269), v295.val[0]);
    v296.val[1] = vaddq_s16(v295.val[1], vandq_s8(vqtbl2q_s8(v295, v270), v269));
    v266 = vaddq_s16(vandq_s8(vqtbl2q_s8(v296, xmmword_29D2F0F90), v269), v296.val[0]);
    v267 = vaddq_s16(v296.val[1], vandq_s8(vqtbl2q_s8(v296, v270), v269));
    v296.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v211.i8, xmmword_29D2F0FA0), v269), v211);
    v296.val[1] = vaddq_s16(v212, vandq_s8(vqtbl2q_s8(*v211.i8, xmmword_29D2F0FB0), v269));
    v211 = vaddq_s16(vandq_s8(vqtbl2q_s8(v296, xmmword_29D2F0FC0), v269), v296.val[0]);
    v212 = vaddq_s16(v296.val[1], vandq_s8(vqtbl2q_s8(v296, v270), v269));
    v296.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v226.i8, xmmword_29D2F0FD0), v269), v226);
    v296.val[1] = vaddq_s16(v227, vandq_s8(vqtbl2q_s8(*v226.i8, xmmword_29D2F0F80), v269));
    v226 = vaddq_s16(vandq_s8(vqtbl2q_s8(v296, v270), v269), v296.val[0]);
    v227 = vaddq_s16(v296.val[1], vandq_s8(vqtbl2q_s8(v296, xmmword_29D2F0FE0), v269));
    v295.val[0] = vaddq_s16(vandq_s8(vqtbl2q_s8(*v240.i8, xmmword_29D2F0FF0), v269), v240);
    v295.val[1] = vaddq_s16(v241, vandq_s8(vqtbl2q_s8(*v240.i8, xmmword_29D2F0F80), v269));
    v240 = vaddq_s16(vandq_s8(vqtbl2q_s8(v295, v270), v269), v295.val[0]);
    v241 = vaddq_s16(v295.val[1], vandq_s8(vqtbl2q_s8(v295, xmmword_29D2F1000), v269));
  }

  v272 = vaddq_s16(v266, v268);
  v273 = vaddq_s16(v267, v268);
  v274 = vaddq_s16(v211, v268);
  v275 = vaddq_s16(v212, v268);
  v276 = vaddq_s16(v226, v268);
  v277 = vaddq_s16(v227, v268);
  v278 = vaddq_s16(v240, v268);
  v279 = vaddq_s16(v241, v268);
  v280.i64[0] = 0x10001000100010;
  v280.i64[1] = 0x10001000100010;
  v281 = vceqzq_s16(vandq_s8(v25, v280));
  v282 = (a1 + a2);
  *a1 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v272, xmmword_29D2F1080), v281), v272);
  a1[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v274, xmmword_29D2F1080), v281), v274);
  v283 = (a1 + 2 * a2);
  *v282 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v273, xmmword_29D2F1080), v281), v273);
  v282[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v275, xmmword_29D2F1080), v281), v275);
  *v283 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v276, xmmword_29D2F1080), v281), v276);
  v283[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v278, xmmword_29D2F1080), v281), v278);
  v284 = (v283 + a2);
  *v284 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v277, xmmword_29D2F1080), v281), v277);
  v284[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v279, xmmword_29D2F1080), v281), v279);
  return v142;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(float *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v62 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v54, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v54, a5);
  }

  v53 = v54;
  v48 = v55;
  v45 = v56;
  v47 = v57;
  v44 = v58;
  v42 = v59;
  v38 = v60;
  v41 = v61;
  v10 = a3 + 16;
  if ((a4 & 2) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v10, &v54, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v10, &v54, a5);
  }

  v52 = v54;
  v39 = v55;
  v34 = v56;
  v37 = v57;
  v35 = v58;
  v32 = v59;
  v30 = v60;
  v31 = v61;
  v11 = a3 + 32;
  if ((a4 & 4) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v11, &v54, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v11, &v54, a5);
  }

  v50 = v54;
  v46 = v55;
  v33 = v56;
  v36 = v57;
  v51 = v58;
  v49 = v59;
  v40 = v60;
  v43 = v61;
  v12 = a3 + 48;
  if ((a4 & 8) != 0)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v12, &v54, a5);
  }

  else
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v12, &v54, a5);
  }

  v14.i64[0] = v35;
  v14.i64[1] = v30;
  v15.i64[0] = v44;
  v15.i64[1] = v38;
  v16.i64[0] = v32;
  v16.i64[1] = v31;
  v17.i64[0] = v42;
  v17.i64[1] = v41;
  v63.val[1] = vuzp1q_s16(v17, v16);
  v19.i64[0] = v52;
  v18.i64[0] = v53;
  v19.i64[1] = v34;
  v20.i64[0] = v46;
  v18.i64[1] = v45;
  v63.val[0] = vuzp1q_s16(v15, v14);
  v14.i64[0] = v39;
  v14.i64[1] = v37;
  v16.i64[0] = v48;
  v16.i64[1] = v47;
  v64.val[1] = vuzp1q_s16(v16, v14);
  v14.i64[0] = v54;
  v21.i64[0] = v55;
  v14.i64[1] = v56;
  v22.i64[0] = v50;
  v22.i64[1] = v33;
  v21.i64[1] = v57;
  v20.i64[1] = v36;
  v23.i64[0] = v58;
  v24.i64[0] = v59;
  v23.i64[1] = v60;
  v25.i64[0] = v51;
  v25.i64[1] = v40;
  v24.i64[1] = v61;
  v26.i64[0] = v49;
  v26.i64[1] = v43;
  v64.val[0] = vuzp1q_s16(v18, v19);
  vst2q_f32(a1, v64);
  v27 = (a1 + a2);
  v64.val[1] = vuzp1q_s16(v20, v21);
  vst2q_f32(v27, v63);
  v28 = (v27 + a2);
  v64.val[0] = vuzp1q_s16(v22, v14);
  vst2q_f32(v28, v64);
  v29 = (v28 + a2);
  v63.val[1] = vuzp1q_s16(v26, v24);
  v63.val[0] = vuzp1q_s16(v25, v23);
  vst2q_f32(v29, v63);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + 32, a2, v16, v15, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + v17, a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, v13 + v17 + 32, a2, v22, v21, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 64, a2, v25, v24, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 96, a2, v28, v27, a7);
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
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, v13 + 4 * a2 + 64, a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, v13 + v31 + 96, a2, v33, v32, a7);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = vdupq_lane_s32(*a3, 0);
  v8 = vsubq_s16(*a3, v7);
  v9 = vsubq_s16(*(a3 + 16), v7);
  v466 = *(a3 + a4);
  v10 = vsubq_s16(v466, v7);
  v467 = *(a3 + a4 + 16);
  v11 = vsubq_s16(v467, v7);
  v468 = *(a3 + 32);
  v12 = vsubq_s16(v468, v7);
  v470 = *(a3 + 48);
  v13 = vsubq_s16(v470, v7);
  v14 = vsubq_s16(*(a3 + a4 + 32), v7);
  v15 = vqtbl1q_s8(vmaxq_s16(v8, v9), xmmword_29D2F1090);
  v16 = vqtbl1q_s8(vminq_s16(v8, v9), xmmword_29D2F1090);
  v17 = vpmaxq_s16(v15, v15);
  v18 = vpminq_s16(v16, v16);
  v19 = vpmaxq_s16(v17, v17);
  v20 = vpminq_s16(v18, v18);
  v21.i64[0] = 0x8000800080008000;
  v21.i64[1] = 0x8000800080008000;
  v22 = vmaxq_s16(v19, v21);
  v23.i64[0] = 0x8000800080008000;
  v23.i64[1] = 0x8000800080008000;
  v24 = vminq_s16(v20, v23);
  v25 = vzip1q_s16(v19, v20);
  v26.i64[0] = 0x10001000100010;
  v26.i64[1] = 0x10001000100010;
  v27 = vbicq_s8(vsubq_s16(v26, vclsq_s16(v25)), vceqzq_s16(v25));
  v28 = vqtbl1q_s8(vmaxq_s16(v10, v11), xmmword_29D2F1090);
  v29 = vqtbl1q_s8(vminq_s16(v10, v11), xmmword_29D2F1090);
  v30 = vpmaxq_s16(v28, v28);
  v31 = vpminq_s16(v29, v29);
  v32 = vpmaxq_s16(v30, v30);
  v33 = vpminq_s16(v31, v31);
  v34 = vmaxq_s16(v22, v32);
  v35 = vminq_s16(v24, v33);
  v36 = vzip1q_s16(v32, v33);
  v37 = vbicq_s8(vsubq_s16(v26, vclsq_s16(v36)), vceqzq_s16(v36));
  v38 = vqtbl1q_s8(vmaxq_s16(v12, v13), xmmword_29D2F1090);
  v39 = vqtbl1q_s8(vminq_s16(v12, v13), xmmword_29D2F1090);
  v40 = vpmaxq_s16(v38, v38);
  v41 = vpminq_s16(v39, v39);
  v42 = vpmaxq_s16(v40, v40);
  v43 = vpminq_s16(v41, v41);
  v44 = vmaxq_s16(v34, v42);
  v45 = vminq_s16(v35, v43);
  v46 = vzip1q_s16(v42, v43);
  v47 = vbicq_s8(vsubq_s16(v26, vclsq_s16(v46)), vceqzq_s16(v46));
  v48 = vsubq_s16(*(a3 + a4 + 48), v7);
  v49 = vqtbl1q_s8(vmaxq_s16(v14, v48), xmmword_29D2F1090);
  v50 = vqtbl1q_s8(vminq_s16(v14, v48), xmmword_29D2F1090);
  v51 = vpmaxq_s16(v49, v49);
  v52 = vpminq_s16(v50, v50);
  v53 = vpmaxq_s16(v51, v51);
  v54 = vpminq_s16(v52, v52);
  v55 = vmaxq_s16(v44, v53);
  v56 = vminq_s16(v45, v54);
  v57 = vzip1q_s16(v53, v54);
  v58 = vbicq_s8(vsubq_s16(v26, vclsq_s16(v57)), vceqzq_s16(v57));
  v59 = vpmaxq_s16(v27, v27);
  v60 = vpmaxq_s16(v37, v37);
  v61 = vpmaxq_s16(v47, v47);
  v62 = vpmaxq_s16(v58, v58);
  v63 = vmaxq_s16(vmaxq_s16(v59, v60), vmaxq_s16(v61, v62));
  v64 = vclzq_s16(vsubq_s16(v55, v56));
  v65 = vsubq_s16(v26, v64);
  v66 = vminq_s16(v65, v63);
  v67 = vmaxvq_s16(v66);
  v69 = a5 < 2 || a6 == 0;
  if (!v67)
  {
    *a1 = *a3;
    *a2 = 3;
    return 4;
  }

  v454 = *(a3 + 16);
  v70.i64[0] = -1;
  v70.i64[1] = -1;
  v71.i64[0] = 0xF000F000F000FLL;
  v71.i64[1] = 0xF000F000F000FLL;
  v481 = vsubq_s16(vshlq_s16(v70, vsubq_s16(v71, v64)), v56);
  v72 = vcgtq_s16(v63, v65);
  v73.i64[0] = 0x8000800080008;
  v73.i64[1] = 0x8000800080008;
  v74.i64[0] = 0x3000300030003;
  v74.i64[1] = 0x3000300030003;
  v464 = vorrq_s8(vandq_s8(vceqzq_s16(v66), v74), vandq_s8(v72, v73));
  v458 = vmaxq_s16(vminq_s16(vsubq_s16(v66, v59), v74), 0);
  v460 = vmaxq_s16(vminq_s16(vsubq_s16(v66, v60), v74), 0);
  v75 = vmaxq_s16(vminq_s16(vsubq_s16(v66, v61), v74), 0);
  v76 = vmaxq_s16(vminq_s16(vsubq_s16(v66, v62), v74), 0);
  v77.i64[0] = 0x4000400040004;
  v77.i64[1] = 0x4000400040004;
  v462 = vbicq_s8(v77, vceqq_s16(vaddq_s16(v76, v75), vnegq_s16(vaddq_s16(v458, v460))));
  v78 = vsubq_s16(v10, vqtbl1q_s8(v10, xmmword_29D2F1080));
  v79 = vsubq_s16(v11, vqtbl1q_s8(v11, xmmword_29D2F1080));
  v80 = vsubq_s16(v12, vqtbl1q_s8(v12, xmmword_29D2F1080));
  v81 = vsubq_s16(v13, vqtbl1q_s8(v13, xmmword_29D2F1080));
  v82 = vsubq_s16(v14, vqtbl1q_s8(v14, xmmword_29D2F1080));
  v83 = vsubq_s16(v48, vqtbl1q_s8(v48, xmmword_29D2F1080));
  v471 = v14;
  v473 = v10;
  v477 = v12;
  v479 = v13;
  v475 = v11;
  v455 = vsubq_s16(v8, vqtbl1q_s8(v8, xmmword_29D2F1080));
  v456 = vsubq_s16(v9, vqtbl1q_s8(v9, xmmword_29D2F1080));
  v84 = vqtbl1q_s8(vmaxq_s16(v455, v456), xmmword_29D2F1090);
  v85 = vqtbl1q_s8(vminq_s16(v455, v456), xmmword_29D2F1090);
  v86 = vpmaxq_s16(v84, v84);
  v87 = vpminq_s16(v85, v85);
  v88 = vpmaxq_s16(v86, v86);
  v89 = vpminq_s16(v87, v87);
  v90 = vmaxq_s16(v88, v21);
  v91 = vminq_s16(v89, v23);
  v92 = vzip1q_s16(v88, v89);
  v93 = vbicq_s8(vsubq_s16(v26, vclsq_s16(v92)), vceqzq_s16(v92));
  v94 = vpmaxq_s16(v93, v93);
  v95 = vqtbl1q_s8(vmaxq_s16(v78, v79), xmmword_29D2F1090);
  v96 = vqtbl1q_s8(vminq_s16(v78, v79), xmmword_29D2F1090);
  v97 = vpmaxq_s16(v95, v95);
  v98 = vpminq_s16(v96, v96);
  v99 = vpmaxq_s16(v97, v97);
  v100 = vpminq_s16(v98, v98);
  v101 = vmaxq_s16(v90, v99);
  v102 = vminq_s16(v91, v100);
  v103 = vzip1q_s16(v99, v100);
  v104 = vbicq_s8(vsubq_s16(v26, vclsq_s16(v103)), vceqzq_s16(v103));
  v105 = v9;
  v106 = v8;
  v107 = vpmaxq_s16(v104, v104);
  v108 = vqtbl1q_s8(vmaxq_s16(v80, v81), xmmword_29D2F1090);
  v109 = vqtbl1q_s8(vminq_s16(v80, v81), xmmword_29D2F1090);
  v110 = vpmaxq_s16(v108, v108);
  v111 = vpminq_s16(v109, v109);
  v112 = vpmaxq_s16(v110, v110);
  v113 = vpminq_s16(v111, v111);
  v114 = vmaxq_s16(v101, v112);
  v115 = vminq_s16(v102, v113);
  v116 = vzip1q_s16(v112, v113);
  v117 = vbicq_s8(vsubq_s16(v26, vclsq_s16(v116)), vceqzq_s16(v116));
  v118 = vpmaxq_s16(v117, v117);
  v119 = vqtbl1q_s8(vmaxq_s16(v82, v83), xmmword_29D2F1090);
  v120 = vqtbl1q_s8(vminq_s16(v82, v83), xmmword_29D2F1090);
  v121 = vpmaxq_s16(v119, v119);
  v122 = vpminq_s16(v120, v120);
  v123 = vpmaxq_s16(v121, v121);
  v124 = vpminq_s16(v122, v122);
  v125 = vmaxq_s16(v114, v123);
  v126 = v48;
  v127 = vminq_s16(v115, v124);
  v128 = vzip1q_s16(v123, v124);
  v129 = vbicq_s8(vsubq_s16(v26, vclsq_s16(v128)), vceqzq_s16(v128));
  v130 = vpmaxq_s16(v129, v129);
  v131 = vmaxq_s16(vmaxq_s16(v94, v107), vmaxq_s16(v118, v130));
  v132 = vclzq_s16(vsubq_s16(v125, v127));
  v133 = vsubq_s16(v26, v132);
  v134 = vcgtq_s16(v131, v133);
  v135 = vminq_s16(v133, v131);
  v131.i64[0] = 0x18001800180018;
  v131.i64[1] = 0x18001800180018;
  v136 = vbslq_s8(v134, v131, v26);
  v137 = vmaxq_s16(vminq_s16(vsubq_s16(v135, v94), v74), 0);
  v138 = vmaxq_s16(vminq_s16(vsubq_s16(v135, v107), v74), 0);
  v139 = vmaxq_s16(vminq_s16(vsubq_s16(v135, v118), v74), 0);
  v140 = vmaxq_s16(vminq_s16(vsubq_s16(v135, v130), v74), 0);
  v141 = vsubq_s16(v135, v137);
  v142 = vsubq_s16(v135, v138);
  v143 = vsubq_s16(v135, v139);
  v144 = vaddq_s16(v137, v138);
  v145 = vsubq_s16(v135, v140);
  v146.i64[0] = 0x4000400040004;
  v146.i64[1] = 0x4000400040004;
  v147 = vbicq_s8(v146, vceqq_s16(vaddq_s16(v140, v139), vnegq_s16(v144)));
  v140.i64[0] = 0x7000700070007;
  v140.i64[1] = 0x7000700070007;
  v148 = vandq_s8(v481, v72);
  v149 = vsubq_s16(v66, v458);
  v150 = vsubq_s16(v66, v460);
  v151 = vsubq_s16(v66, v75);
  v482 = vsubq_s16(v66, v76);
  v152 = vorrq_s8(v462, v464);
  v153 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v66, v72), v149, v140), vshlq_n_s16(vaddq_s16(vaddq_s16(v151, v150), v482), 3uLL)), vaddq_s16(v462, v462)), vaddq_s16(vaddq_s16(vmlaq_s16(vbicq_s8(v135, vceqzq_s16((*&v136 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), v141, v140), vshlq_n_s16(vaddq_s16(vaddq_s16(v143, v142), v145), 3uLL)), vaddq_s16(v147, v147))), 0);
  if (vaddvq_s16(v153))
  {
    v154.i64[0] = 0x3000300030003;
    v154.i64[1] = 0x3000300030003;
    v155 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v135), v154), v136), v147);
    v154.i64[0] = 0xF000F000F000FLL;
    v154.i64[1] = 0xF000F000F000FLL;
    v156.i64[0] = -1;
    v156.i64[1] = -1;
    v157 = vandq_s8(vsubq_s16(vshlq_s16(v156, vsubq_s16(v154, v132)), v127), v134);
    v7 = vbslq_s8(v153, vsubq_s16(v7, vqtbl1q_s8(v7, xmmword_29D2F1080)), v7);
    v463 = vbslq_s8(v153, v455, v106);
    v465 = vbslq_s8(v153, v456, v105);
    v158 = vbslq_s8(v153, v78, v473);
    v159 = vbslq_s8(v153, v79, v475);
    v160 = vbslq_s8(v153, v80, v477);
    v161 = vbslq_s8(v153, v82, v471);
    v162 = vbslq_s8(v153, v83, v126);
    v149 = vbslq_s8(v153, v141, v149);
    v461 = vbslq_s8(v153, v142, v150);
    v151 = vbslq_s8(v153, v143, v151);
    v482 = vbslq_s8(v153, v145, v482);
    v148 = vbslq_s8(v153, v157, v148);
    v66 = vbslq_s8(v153, v135, v66);
    v152 = vbslq_s8(v153, v155, v152);
    v163 = v161;
    v164 = vbslq_s8(v153, v81, v479);
    v165 = v159;
    if (v69)
    {
LABEL_10:
      v167 = v463;
      v166 = v465;
      v168 = v461;
      goto LABEL_16;
    }
  }

  else
  {
    v461 = v150;
    v463 = v106;
    v465 = v105;
    v162 = v126;
    v163 = v471;
    v158 = v473;
    v160 = v477;
    v164 = v479;
    v165 = v475;
    if (v69)
    {
      goto LABEL_10;
    }
  }

  v457 = v148;
  v474 = v158;
  v459 = v162;
  v476 = v165;
  v478 = v160;
  v480 = v164;
  v472 = v163;
  v483 = *a3;
  v177 = vsubq_s16(*a3, vqtbl2q_s8(*a3, xmmword_29D2F0F80));
  v170 = vsubq_s16(v454, vqtbl2q_s8(*a3, xmmword_29D2F1030));
  v484 = *(a3 + a4);
  v484.val[1].i32[3] = v483.val[1].i32[3];
  v171 = vsubq_s16(v466, vqtbl2q_s8(v484, xmmword_29D2F0FA0));
  v172 = vsubq_s16(v467, vqtbl2q_s8(v484, xmmword_29D2F1040));
  v485 = *(a3 + 32);
  v485.val[1].i32[3] = v483.val[1].i32[3];
  v173 = vsubq_s16(v468, vqtbl2q_s8(v485, xmmword_29D2F1050));
  v174 = vsubq_s16(v470, vqtbl2q_s8(v485, xmmword_29D2F0F80));
  v486 = *(a3 + a4 + 32);
  v486.val[1].i32[3] = v483.val[1].i32[3];
  v175 = vsubq_s16(v486.val[0], vqtbl2q_s8(v486, xmmword_29D2F1060));
  v176 = v170;
  v176.i32[3] = v177.i32[0];
  v177.i32[0] = v170.i32[3];
  v178 = vsubq_s16(*(a3 + a4 + 48), vqtbl2q_s8(v486, xmmword_29D2F0F80));
  v179 = vqtbl1q_s8(vmaxq_s16(v177, v176), xmmword_29D2F1090);
  v180 = vqtbl1q_s8(vminq_s16(v177, v176), xmmword_29D2F1090);
  v181 = vpmaxq_s16(v179, v179);
  v182 = vpminq_s16(v180, v180);
  v183 = vpmaxq_s16(v181, v181);
  v184 = vpminq_s16(v182, v182);
  v185.i64[0] = 0x8000800080008000;
  v185.i64[1] = 0x8000800080008000;
  v186 = vmaxq_s16(v183, v185);
  v187.i64[0] = 0x8000800080008000;
  v187.i64[1] = 0x8000800080008000;
  v188 = vminq_s16(v184, v187);
  v189 = vzip1q_s16(v183, v184);
  v183.i64[0] = 0x10001000100010;
  v183.i64[1] = 0x10001000100010;
  v190 = v149;
  v191 = vbicq_s8(vsubq_s16(v183, vclsq_s16(v189)), vceqzq_s16(v189));
  v192 = vpmaxq_s16(v191, v191);
  v469 = v171;
  v193 = vqtbl1q_s8(vmaxq_s16(v171, v172), xmmword_29D2F1090);
  v486.val[0] = vqtbl1q_s8(vminq_s16(v171, v172), xmmword_29D2F1090);
  v194 = vpmaxq_s16(v193, v193);
  v486.val[0] = vpminq_s16(v486.val[0], v486.val[0]);
  v195 = vpmaxq_s16(v194, v194);
  v486.val[0] = vpminq_s16(v486.val[0], v486.val[0]);
  v196 = vmaxq_s16(v186, v195);
  v197 = vminq_s16(v188, v486.val[0]);
  v198 = vzip1q_s16(v195, v486.val[0]);
  v199 = vbicq_s8(vsubq_s16(v183, vclsq_s16(v198)), vceqzq_s16(v198));
  v200 = vpmaxq_s16(v199, v199);
  v201 = vqtbl1q_s8(vmaxq_s16(v173, v174), xmmword_29D2F1090);
  v486.val[0] = vqtbl1q_s8(vminq_s16(v173, v174), xmmword_29D2F1090);
  v202 = vpmaxq_s16(v201, v201);
  v486.val[0] = vpminq_s16(v486.val[0], v486.val[0]);
  v203 = vpmaxq_s16(v202, v202);
  v486.val[0] = vpminq_s16(v486.val[0], v486.val[0]);
  v204 = vmaxq_s16(v196, v203);
  v205 = vminq_s16(v197, v486.val[0]);
  v206 = vzip1q_s16(v203, v486.val[0]);
  v207 = vbicq_s8(vsubq_s16(v183, vclsq_s16(v206)), vceqzq_s16(v206));
  v208 = vpmaxq_s16(v207, v207);
  v209 = vqtbl1q_s8(vmaxq_s16(v175, v178), xmmword_29D2F1090);
  v486.val[0] = vqtbl1q_s8(vminq_s16(v175, v178), xmmword_29D2F1090);
  v210 = vpmaxq_s16(v209, v209);
  v486.val[0] = vpminq_s16(v486.val[0], v486.val[0]);
  v211 = vpmaxq_s16(v210, v210);
  v486.val[0] = vpminq_s16(v486.val[0], v486.val[0]);
  v212 = vmaxq_s16(v204, v211);
  v213 = vminq_s16(v205, v486.val[0]);
  v214 = vzip1q_s16(v211, v486.val[0]);
  v215 = vbicq_s8(vsubq_s16(v183, vclsq_s16(v214)), vceqzq_s16(v214));
  v216 = vpmaxq_s16(v215, v215);
  v217 = vmaxq_s16(vmaxq_s16(v192, v200), vmaxq_s16(v208, v216));
  v218 = vclzq_s16(vsubq_s16(v212, v213));
  v219 = vsubq_s16(v183, v218);
  v220 = vcgtq_s16(v217, v219);
  v221 = vminq_s16(v219, v217);
  v222.i64[0] = 0x3000300030003;
  v222.i64[1] = 0x3000300030003;
  v223 = vmaxq_s16(vminq_s16(vsubq_s16(v221, v192), v222), 0);
  v224 = vmaxq_s16(vminq_s16(vsubq_s16(v221, v200), v222), 0);
  v225 = vmaxq_s16(vminq_s16(vsubq_s16(v221, v208), v222), 0);
  v226 = vmaxq_s16(vminq_s16(vsubq_s16(v221, v216), v222), 0);
  v227 = vsubq_s16(v221, v223);
  v228 = vsubq_s16(v221, v224);
  v229 = vsubq_s16(v221, v225);
  v230 = vsubq_s16(v221, v226);
  v231 = vceqq_s16(vaddq_s16(v226, v225), vnegq_s16(vaddq_s16(v223, v224)));
  v226.i64[0] = 0x4000400040004;
  v226.i64[1] = 0x4000400040004;
  v232 = vbicq_s8(v226, v231);
  v224.i64[0] = 0x7000700070007;
  v224.i64[1] = 0x7000700070007;
  v226.i64[0] = 0x8000800080008;
  v226.i64[1] = 0x8000800080008;
  v233 = vandq_s8(v152, v222);
  v234.i64[0] = 0x2000200020002;
  v234.i64[1] = 0x2000200020002;
  v168 = v461;
  v235 = vdupq_lane_s32(*&vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v66, vceqzq_s16(vandq_s8(v152, v226))), vandq_s8(vaddq_s16(v152, v152), v226)), vandq_s8(vceqq_s16(v233, v234), v183)), v190, v224), vshlq_n_s16(vaddq_s16(vaddq_s16(v151, v461), v482), 3uLL)), vaddq_s16(vaddq_s16(vmlaq_s16(vandq_s8(v221, v220), v227, v224), vshlq_n_s16(vaddq_s16(vaddq_s16(v229, v228), v230), 3uLL)), vaddq_s16(v232, v232))), 0);
  v167 = v463;
  v166 = v465;
  if (vaddvq_s16(v235))
  {
    v236.i64[0] = 0x9000900090009;
    v236.i64[1] = 0x9000900090009;
    v237 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v221), v234), vsubq_s16(vandq_s8(v220, v236), vmvnq_s8(v220))), v232);
    v236.i64[0] = 0xF000F000F000FLL;
    v236.i64[1] = 0xF000F000F000FLL;
    v238 = vsubq_s16(v236, v218);
    v236.i64[0] = -1;
    v236.i64[1] = -1;
    v239 = vandq_s8(vsubq_s16(vshlq_s16(v236, v238), v213), v220);
    v7.i32[0] = vbslq_s8(v235, vextq_s8(v454, v454, 0xCuLL), v7).u32[0];
    v167 = vbslq_s8(v235, v177, v463);
    v166 = vbslq_s8(v235, v176, v465);
    v158 = vbslq_s8(v235, v469, v474);
    v165 = vbslq_s8(v235, v172, v476);
    v160 = vbslq_s8(v235, v173, v478);
    v164 = vbslq_s8(v235, v174, v480);
    v163 = vbslq_s8(v235, v175, v472);
    v162 = vbslq_s8(v235, v178, v459);
    v149 = vbslq_s8(v235, v227, v190);
    v168 = vbslq_s8(v235, v228, v461);
    v151 = vbslq_s8(v235, v229, v151);
    v482 = vbslq_s8(v235, v230, v482);
    v148 = vbslq_s8(v235, v239, v457);
    v66 = vbslq_s8(v235, v221, v66);
    v152 = vbslq_s8(v235, v237, v152);
  }

  else
  {
    v163 = v472;
    v158 = v474;
    v160 = v478;
    v164 = v480;
    v165 = v476;
    v148 = v457;
    v162 = v459;
    v149 = v190;
  }

LABEL_16:
  v240.i64[0] = 0x8000800080008;
  v240.i64[1] = 0x8000800080008;
  v241 = vandq_s8(v152, v240);
  v242.i64[0] = 0x3000300030003;
  v242.i64[1] = 0x3000300030003;
  v243.i64[0] = 0x2000200020002;
  v243.i64[1] = 0x2000200020002;
  v244 = vceqq_s16(vandq_s8(v152, v242), v243);
  v243.i64[0] = 0x10001000100010;
  v243.i64[1] = 0x10001000100010;
  v245 = vandq_s8(v244, v243);
  v243.i64[0] = 0x7000700070007;
  v243.i64[1] = 0x7000700070007;
  v246 = vaddq_s16(vaddq_s16(vaddq_s16(vmlaq_s16(vshlq_n_s16(vaddq_s16(vaddq_s16(v151, v168), v482), 3uLL), v149, v243), vandq_s8(vaddq_s16(v152, v152), v240)), vbicq_s8(v66, vceqzq_s16(v241))), v245);
  if ((vpaddq_s16(v246, v246).i16[0] - 463) < 0xFFFFFFFFFFFFFDF8)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
    return 64;
  }

  else
  {
    v247 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v248 = 8 * (a1 & 7);
    if (v248)
    {
      v249 = *v247 & ~(-1 << v248);
    }

    else
    {
      v249 = 0;
    }

    *a2 = 0;
    v250.i32[0] = v66.u16[0];
    v250.i32[1] = v66.u16[1];
    v251 = vshr_n_s32(vshl_n_s32(v250, 0x10uLL), 0x10uLL);
    v252 = vand_s8(vbic_s8(vadd_s32(vshl_u32(v251, 0xE0000000ALL), 0x3C00000003C00), vceqz_s32(v251)), 0x3C00000003C00);
    v253 = vorr_s8(vdup_lane_s32(v252, 1), v252).u32[0] | v152.i8[0] & 0x1F | (32 * (v152.i8[2] & 0x1F));
    v254 = v249 | (v253 << v248);
    if (v248 >= 0x2E)
    {
      *v247 = v254;
      v254 = v253 >> (-8 * (a1 & 7u));
    }

    v255 = (v248 + 18) & 0x3A;
    v256 = v254 | (v7.u32[0] << v255);
    if (v255 >= 0x20)
    {
      *(v247 + (((v248 + 18) >> 3) & 8)) = v256;
      v256 = v7.u32[0] >> -v255;
    }

    v257 = v248 + 50;
    v258 = vsubq_s16(v66, v149);
    v259 = vsubq_s16(v66, v168);
    v260 = vsubq_s16(v66, v151);
    v261 = vsubq_s16(v66, v482);
    *v258.i8 = vqmovn_u16(v258);
    *v259.i8 = vqmovn_u16(v259);
    *v260.i8 = vqmovn_u16(v260);
    *v261.i8 = vqmovn_u16(v261);
    v258.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v258, v259), vzip1q_s8(v260, v261)), vzip1q_s16(vtrn2q_s8(v258, v259), vtrn2q_s8(v260, v261))).u64[0];
    v260.i64[0] = 0x202020202020202;
    v260.i64[1] = 0x202020202020202;
    v262 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*v152.i8, 0x4000400040004)))), v260);
    v260.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v260.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v261.i64[0] = -1;
    v261.i64[1] = -1;
    v263 = vandq_s8(vshlq_u8(v261, vorrq_s8(v262, v260)), v258.u64[0]);
    v264 = vmovl_u8(*v262.i8);
    v265 = vpaddq_s16(vshlq_u16(vmovl_u8(*v263.i8), vtrn1q_s16(0, v264)), vmovl_high_u8(v263));
    v266 = vpaddq_s16(v264, vmovl_high_u8(v262));
    v267 = vmovl_u16(*v266.i8);
    v268 = vmovl_high_u16(v266);
    v269 = vpaddq_s32(vshlq_u32(vmovl_u16(*v265.i8), vtrn1q_s32(0, v267)), vshlq_u32(vmovl_high_u16(v265), vtrn1q_s32(0, v268)));
    v270 = vpaddq_s32(v267, v268);
    v271.i64[0] = v269.u32[0];
    v271.i64[1] = v269.u32[1];
    v272 = v271;
    v271.i64[0] = v269.u32[2];
    v271.i64[1] = v269.u32[3];
    v273 = v271;
    v271.i64[0] = v270.u32[0];
    v271.i64[1] = v270.u32[1];
    v274 = v271;
    v271.i64[0] = v270.u32[2];
    v271.i64[1] = v270.u32[3];
    v275 = vpaddq_s64(vshlq_u64(v272, vzip1q_s64(0, v274)), vshlq_u64(v273, vzip1q_s64(0, v271)));
    v276 = vpaddq_s64(v274, v271);
    v277 = (v248 + 50) & 0x3A;
    v278 = (v275.i64[0] << v277) | v256;
    if ((v276.i64[0] + v277) >= 0x40)
    {
      *(v247 + ((v257 >> 3) & 8)) = v278;
      v278 = v275.i64[0] >> -v277;
    }

    v279 = vceqq_s16(v66, v149);
    v280 = v276.i64[0] + v257;
    v281 = v278 | (v275.i64[1] << v280);
    if ((v280 & 0x3F) + v276.i64[1] >= 0x40)
    {
      *(v247 + ((v280 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v281;
      v281 = v275.i64[1] >> -(v280 & 0x3F);
      if ((v280 & 0x3F) == 0)
      {
        v281 = 0;
      }
    }

    v282 = vandq_s8(v148, v279);
    v283 = v280 + v276.i64[1];
    v284.i64[0] = -1;
    v284.i64[1] = -1;
    v285 = vandq_s8(vextq_s8(vtstq_s16(v241, v241), 0, 0xCuLL), v66);
    v286.i64[0] = 0xF000F000F000FLL;
    v286.i64[1] = 0xF000F000F000FLL;
    v287 = vandq_s8(vshlq_u16(v284, vaddq_s16(v285, v286)), v148);
    v288 = vmovl_u16(*v285.i8);
    v289 = vpaddq_s32(vshlq_u32(vmovl_u16(*v287.i8), vtrn1q_s32(0, v288)), vmovl_high_u16(v287));
    v290 = vpaddq_s32(v288, vmovl_high_u16(v285));
    v291.i64[0] = v289.u32[0];
    v291.i64[1] = v289.u32[1];
    v292 = v291;
    v291.i64[0] = v289.u32[2];
    v291.i64[1] = v289.u32[3];
    v293 = v291;
    v291.i64[0] = v290.u32[0];
    v291.i64[1] = v290.u32[1];
    v294 = v291;
    v291.i64[0] = v290.u32[2];
    v291.i64[1] = v290.u32[3];
    v295 = vpaddq_s64(vshlq_u64(v292, vzip1q_s64(0, v294)), vshlq_u64(v293, vzip1q_s64(0, v291)));
    v296 = vpaddq_s64(v294, v291);
    v297 = (v295.i64[0] << v283) | v281;
    if (v296.i64[0] + (v283 & 0x3F) >= 0x40)
    {
      *(v247 + ((v283 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v297;
      v297 = v295.i64[0] >> -(v283 & 0x3F);
      if ((v283 & 0x3F) == 0)
      {
        v297 = 0;
      }
    }

    v298 = vaddq_s16(v282, v167);
    v299 = v296.i64[0] + v283;
    v300 = v297 | (v295.i64[1] << v299);
    if ((v299 & 0x3F) + v296.i64[1] >= 0x40)
    {
      *(v247 + ((v299 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v300;
      v300 = v295.i64[1] >> -(v299 & 0x3F);
      if ((v299 & 0x3F) == 0)
      {
        v300 = 0;
      }
    }

    v301 = v299 + v296.i64[1];
    v302 = vextq_s8(0, v149, 0xCuLL);
    v303.i64[0] = 0xF000F000F000FLL;
    v303.i64[1] = 0xF000F000F000FLL;
    v304.i64[0] = -1;
    v304.i64[1] = -1;
    v305 = vandq_s8(vshlq_u16(v304, vaddq_s16(v302, v303)), v298);
    v306 = vmovl_u16(*v302.i8);
    v307 = vmovl_high_u16(v302);
    v308 = vpaddq_s32(vshlq_u32(vmovl_u16(*v305.i8), vtrn1q_s32(0, v306)), vshlq_u32(vmovl_high_u16(v305), vtrn1q_s32(0, v307)));
    v309 = vpaddq_s32(v306, v307);
    v310.i64[0] = v308.u32[0];
    v310.i64[1] = v308.u32[1];
    v311 = v310;
    v310.i64[0] = v308.u32[2];
    v310.i64[1] = v308.u32[3];
    v312 = v310;
    v310.i64[0] = v309.u32[0];
    v310.i64[1] = v309.u32[1];
    v313 = v310;
    v310.i64[0] = v309.u32[2];
    v310.i64[1] = v309.u32[3];
    v314 = vpaddq_s64(vshlq_u64(v311, vzip1q_s64(0, v313)), vshlq_u64(v312, vzip1q_s64(0, v310)));
    v315 = vpaddq_s64(v313, v310);
    v316 = (v314.i64[0] << v301) | v300;
    if (v315.i64[0] + (v301 & 0x3F) >= 0x40)
    {
      *(v247 + ((v301 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v316;
      v316 = v314.i64[0] >> -(v301 & 0x3F);
      if ((v301 & 0x3F) == 0)
      {
        v316 = 0;
      }
    }

    v317 = vceqq_s16(v66, v168);
    v318 = vaddq_s16(v166, v282);
    v319 = v315.i64[0] + v301;
    v320 = v316 | (v314.i64[1] << v319);
    if ((v319 & 0x3F) + v315.i64[1] >= 0x40)
    {
      *(v247 + ((v319 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v320;
      v320 = v314.i64[1] >> -(v319 & 0x3F);
      if ((v319 & 0x3F) == 0)
      {
        v320 = 0;
      }
    }

    v321 = vandq_s8(v148, v317);
    v322 = v319 + v315.i64[1];
    v323.i64[0] = 0xF000F000F000FLL;
    v323.i64[1] = 0xF000F000F000FLL;
    v324.i64[0] = -1;
    v324.i64[1] = -1;
    v325 = vandq_s8(vshlq_u16(v324, vaddq_s16(v149, v323)), v318);
    v326 = vmovl_u16(*v149.i8);
    v327 = vmovl_high_u16(v149);
    v328 = vpaddq_s32(vshlq_u32(vmovl_u16(*v325.i8), vtrn1q_s32(0, v326)), vshlq_u32(vmovl_high_u16(v325), vtrn1q_s32(0, v327)));
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
    v336 = (v334.i64[0] << v322) | v320;
    if (v335.i64[0] + (v322 & 0x3F) >= 0x40)
    {
      *(v247 + ((v322 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v336;
      v336 = v334.i64[0] >> -(v322 & 0x3F);
      if ((v322 & 0x3F) == 0)
      {
        v336 = 0;
      }
    }

    v337 = vaddq_s16(v158, v321);
    v338 = v335.i64[0] + v322;
    v339 = v336 | (v334.i64[1] << v338);
    if ((v338 & 0x3F) + v335.i64[1] >= 0x40)
    {
      *(v247 + ((v338 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v339;
      v339 = v334.i64[1] >> -(v338 & 0x3F);
      if ((v338 & 0x3F) == 0)
      {
        v339 = 0;
      }
    }

    v340 = v338 + v335.i64[1];
    v341.i64[0] = 0xF000F000F000FLL;
    v341.i64[1] = 0xF000F000F000FLL;
    v342.i64[0] = -1;
    v342.i64[1] = -1;
    v343 = vshlq_u16(v342, vaddq_s16(v168, v341));
    v344 = vandq_s8(v343, v337);
    v345 = vmovl_u16(*v344.i8);
    v346 = vmovl_high_u16(v344);
    v347 = vmovl_u16(*v168.i8);
    v348 = vmovl_high_u16(v168);
    v349 = vtrn1q_s32(0, v347);
    v350 = vtrn1q_s32(0, v348);
    v351 = vpaddq_s32(vshlq_u32(v345, v349), vshlq_u32(v346, v350));
    v352 = vpaddq_s32(v347, v348);
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
    v357 = vzip1q_s64(0, v356);
    v358 = vzip1q_s64(0, v353);
    v359 = vpaddq_s64(vshlq_u64(v354, v357), vshlq_u64(v355, v358));
    v360 = vpaddq_s64(v356, v353);
    v361 = (v359.i64[0] << v340) | v339;
    if (v360.i64[0] + (v340 & 0x3F) >= 0x40)
    {
      *(v247 + ((v340 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v361;
      if ((v340 & 0x3F) != 0)
      {
        v361 = v359.i64[0] >> -(v340 & 0x3F);
      }

      else
      {
        v361 = 0;
      }
    }

    v362 = vceqq_s16(v66, v151);
    v363 = vaddq_s16(v165, v321);
    v364 = v360.i64[0] + v340;
    v365 = v361 | (v359.i64[1] << v364);
    if ((v364 & 0x3F) + v360.i64[1] >= 0x40)
    {
      *(v247 + ((v364 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
      v365 = v359.i64[1] >> -(v364 & 0x3F);
      if ((v364 & 0x3F) == 0)
      {
        v365 = 0;
      }
    }

    v366 = vandq_s8(v148, v362);
    v367 = v364 + v360.i64[1];
    v368 = vandq_s8(v343, v363);
    v369 = vpaddq_s32(vshlq_u32(vmovl_u16(*v368.i8), v349), vshlq_u32(vmovl_high_u16(v368), v350));
    v370.i64[0] = v369.u32[0];
    v370.i64[1] = v369.u32[1];
    v371 = v370;
    v370.i64[0] = v369.u32[2];
    v370.i64[1] = v369.u32[3];
    v372 = vpaddq_s64(vshlq_u64(v371, v357), vshlq_u64(v370, v358));
    v373 = (v372.i64[0] << v367) | v365;
    if (v360.i64[0] + (v367 & 0x3F) >= 0x40)
    {
      *(v247 + ((v367 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v373;
      v373 = v372.i64[0] >> -(v367 & 0x3F);
      if ((v367 & 0x3F) == 0)
      {
        v373 = 0;
      }
    }

    v374 = vaddq_s16(v160, v366);
    v375 = v360.i64[0] + v367;
    v376 = (v360.i64[0] + v367) & 0x3F;
    v377 = v373 | (v372.i64[1] << v375);
    if ((v375 & 0x3F) + v360.i64[1] >= 0x40)
    {
      *(v247 + ((v375 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v377;
      v377 = v372.i64[1] >> -v376;
      if (!v376)
      {
        v377 = 0;
      }
    }

    v378 = v375 + v360.i64[1];
    v379.i64[0] = 0xF000F000F000FLL;
    v379.i64[1] = 0xF000F000F000FLL;
    v380.i64[0] = -1;
    v380.i64[1] = -1;
    v381 = vshlq_u16(v380, vaddq_s16(v151, v379));
    v382 = vandq_s8(v381, v374);
    v383 = vmovl_u16(*v382.i8);
    v384 = vmovl_high_u16(v382);
    v385 = vmovl_u16(*v151.i8);
    v386 = vmovl_high_u16(v151);
    v387 = vtrn1q_s32(0, v385);
    v388 = vtrn1q_s32(0, v386);
    v389 = vpaddq_s32(vshlq_u32(v383, v387), vshlq_u32(v384, v388));
    v390 = vpaddq_s32(v385, v386);
    v391.i64[0] = v389.u32[0];
    v391.i64[1] = v389.u32[1];
    v392 = v391;
    v391.i64[0] = v389.u32[2];
    v391.i64[1] = v389.u32[3];
    v393 = v391;
    v391.i64[0] = v390.u32[0];
    v391.i64[1] = v390.u32[1];
    v394 = v391;
    v391.i64[0] = v390.u32[2];
    v391.i64[1] = v390.u32[3];
    v395 = vzip1q_s64(0, v394);
    v396 = vzip1q_s64(0, v391);
    v397 = vpaddq_s64(vshlq_u64(v392, v395), vshlq_u64(v393, v396));
    v398 = vpaddq_s64(v394, v391);
    v399 = (v375 + v360.i64[1]) & 0x3F;
    v400 = (v397.i64[0] << (v375 + v360.i8[8])) | v377;
    if ((v398.i64[0] + v399) >= 0x40)
    {
      *(v247 + ((v378 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v400;
      if (v399)
      {
        v400 = v397.i64[0] >> -v399;
      }

      else
      {
        v400 = 0;
      }
    }

    v401 = vceqq_s16(v66, v482);
    v402 = vaddq_s16(v164, v366);
    v403 = v398.i64[0] + v378;
    v404 = v400 | (v397.i64[1] << v403);
    if ((v403 & 0x3F) + v398.i64[1] >= 0x40)
    {
      *(v247 + ((v403 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v404;
      v404 = v397.i64[1] >> -(v403 & 0x3F);
      if ((v403 & 0x3F) == 0)
      {
        v404 = 0;
      }
    }

    v405 = vandq_s8(v148, v401);
    v406 = v403 + v398.i64[1];
    v407 = vandq_s8(v381, v402);
    v408 = vpaddq_s32(vshlq_u32(vmovl_u16(*v407.i8), v387), vshlq_u32(vmovl_high_u16(v407), v388));
    v409.i64[0] = v408.u32[0];
    v409.i64[1] = v408.u32[1];
    v410 = v409;
    v409.i64[0] = v408.u32[2];
    v409.i64[1] = v408.u32[3];
    v411 = vpaddq_s64(vshlq_u64(v410, v395), vshlq_u64(v409, v396));
    v412 = (v411.i64[0] << v406) | v404;
    if (v398.i64[0] + (v406 & 0x3F) >= 0x40)
    {
      *(v247 + ((v406 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v412;
      v412 = v411.i64[0] >> -(v406 & 0x3F);
      if ((v406 & 0x3F) == 0)
      {
        v412 = 0;
      }
    }

    v413 = vaddq_s16(v163, v405);
    v414 = v398.i64[0] + v406;
    v415 = (v398.i64[0] + v406) & 0x3F;
    v416 = v412 | (v411.i64[1] << v414);
    if ((v414 & 0x3F) + v398.i64[1] >= 0x40)
    {
      *(v247 + ((v414 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
      v416 = v411.i64[1] >> -v415;
      if (!v415)
      {
        v416 = 0;
      }
    }

    v417 = v414 + v398.i64[1];
    v418.i64[0] = 0xF000F000F000FLL;
    v418.i64[1] = 0xF000F000F000FLL;
    v419.i64[0] = -1;
    v419.i64[1] = -1;
    v420 = vshlq_u16(v419, vaddq_s16(v482, v418));
    v421 = vandq_s8(v420, v413);
    v422 = vmovl_u16(*v421.i8);
    v423 = vmovl_high_u16(v421);
    v424 = vmovl_u16(*v482.i8);
    v425 = vmovl_high_u16(v482);
    v426 = vtrn1q_s32(0, v424);
    v427 = vtrn1q_s32(0, v425);
    v428 = vpaddq_s32(vshlq_u32(v422, v426), vshlq_u32(v423, v427));
    v429 = vpaddq_s32(v424, v425);
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
    v434 = vzip1q_s64(0, v433);
    v435 = vzip1q_s64(0, v430);
    v436 = vpaddq_s64(vshlq_u64(v431, v434), vshlq_u64(v432, v435));
    v437 = vpaddq_s64(v433, v430);
    v438 = (v414 + v398.i64[1]) & 0x3F;
    v439 = (v436.i64[0] << (v414 + v398.i8[8])) | v416;
    if ((v437.i64[0] + v438) > 0x3F)
    {
      *(v247 + ((v417 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v439;
      if (v438)
      {
        v439 = v436.i64[0] >> -v438;
      }

      else
      {
        v439 = 0;
      }
    }

    v440 = vaddq_s16(v162, v405);
    v441 = v437.i64[0] + v417;
    v442 = v439 | (v436.i64[1] << v441);
    if ((v441 & 0x3F) + v437.i64[1] >= 0x40)
    {
      *(v247 + ((v441 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v442;
      v442 = v436.i64[1] >> -(v441 & 0x3F);
      if ((v441 & 0x3F) == 0)
      {
        v442 = 0;
      }
    }

    v443 = v441 + v437.i64[1];
    v444 = vandq_s8(v420, v440);
    v445 = vpaddq_s32(vshlq_u32(vmovl_u16(*v444.i8), v426), vshlq_u32(vmovl_high_u16(v444), v427));
    v446.i64[0] = v445.u32[0];
    v446.i64[1] = v445.u32[1];
    v447 = v446;
    v446.i64[0] = v445.u32[2];
    v446.i64[1] = v445.u32[3];
    v448 = vpaddq_s64(vshlq_u64(v447, v434), vshlq_u64(v446, v435));
    v449 = (v448.i64[0] << v443) | v442;
    if (v437.i64[0] + (v443 & 0x3F) >= 0x40)
    {
      *(v247 + ((v443 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v449;
      v449 = v448.i64[0] >> -(v443 & 0x3F);
      if ((v443 & 0x3F) == 0)
      {
        v449 = 0;
      }
    }

    v450 = v437.i64[0] + v443;
    v451 = (v437.i64[0] + v443) & 0x3F;
    v452 = v449 | (v448.i64[1] << (v437.i8[0] + v443));
    if ((v451 + v437.i64[1]) >= 0x40)
    {
      *(v247 + ((v450 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v452;
      v452 = v448.i64[1] >> -v451;
      if (!v451)
      {
        v452 = 0;
      }
    }

    v453 = v450 + v437.i64[1];
    if ((v453 & 0x3F) != 0)
    {
      *(v247 + ((v453 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v452;
    }

    result = (v453 - v248 + 7) >> 3;
    *a2 |= result - 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v11 = 0;
  v75 = *MEMORY[0x29EDCA608];
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (a6)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    if (a5)
    {
      v27 = 0;
      do
      {
        v28 = 0;
        v29 = (a3 + v27 * a4);
        v30 = (2 * v27) | 1u;
        do
        {
          v31 = &v67 + 2 * (v28 & 0x7F);
          v32 = v29[1];
          *(v31 + 2 * (v27 & 0x7F)) = *v29;
          v33 = v29[3];
          *(v31 + v30) = v29[2];
          v34 = &v67 + ((2 * v28) | 1u);
          *(v34 + 2 * (v27 & 0x7F)) = v32;
          v29 += 4;
          ++v28;
          *(v34 + v30) = v33;
        }

        while (a5 != v28);
        ++v27;
      }

      while (v27 != a6);
      v26 = v67;
      v25 = WORD1(v67);
      v24 = v68;
      v23 = WORD1(v68);
      v22 = WORD2(v67);
      v21 = WORD3(v67);
      v20 = WORD2(v68);
      v19 = WORD3(v68);
      v18 = v69;
      v17 = WORD1(v69);
      v16 = v70;
      v15 = WORD1(v70);
      v14 = WORD2(v69);
      v13 = WORD3(v69);
      v12 = WORD2(v70);
      v11 = WORD3(v70);
    }
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  v35 = 2 * (a6 & 0x7F);
  v51 = v26;
  v52 = v25;
  v36 = 2 * (a5 & 0x7F);
  v53 = v24;
  v54 = v23;
  v55 = v22;
  v56 = v21;
  v57 = v20;
  v58 = v19;
  v59 = v18;
  v60 = v17;
  v61 = v16;
  v62 = v15;
  v63 = v14;
  v64 = v13;
  if (v36 >= 4)
  {
    v37 = 4;
  }

  else
  {
    v37 = 2 * (a5 & 0x7F);
  }

  v65 = v12;
  v66 = v11;
  v38 = 2 * (a6 != 0);
  if (v36 >= 4)
  {
    v39 = v36 - 4;
  }

  else
  {
    v39 = 0;
  }

  v40 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v51, a7, v37, v38);
  v51 = WORD4(v67);
  v52 = WORD5(v67);
  v53 = WORD4(v68);
  v54 = WORD5(v68);
  v55 = WORD6(v67);
  v56 = HIWORD(v67);
  v57 = WORD6(v68);
  v58 = HIWORD(v68);
  v59 = WORD4(v69);
  v60 = WORD5(v69);
  v61 = WORD4(v70);
  v62 = WORD5(v70);
  v63 = WORD6(v69);
  v64 = HIWORD(v69);
  v41 = v35 - 2;
  if (v35 < 2)
  {
    v41 = 0;
  }

  v65 = WORD6(v70);
  v66 = HIWORD(v70);
  if (a6 >= 2)
  {
    v42 = 2;
  }

  else
  {
    v42 = v41;
  }

  v43 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 16, &v51, a7, v37, v42);
  v51 = v71;
  v52 = WORD1(v71);
  v53 = v72;
  v54 = WORD1(v72);
  v55 = WORD2(v71);
  v56 = WORD3(v71);
  v57 = WORD2(v72);
  v58 = WORD3(v72);
  v59 = v73;
  v60 = WORD1(v73);
  v61 = v74;
  v62 = WORD1(v74);
  v63 = WORD2(v73);
  v64 = WORD3(v73);
  if (a5 >= 4)
  {
    v44 = 4;
  }

  else
  {
    v44 = v39;
  }

  v65 = WORD2(v74);
  v66 = WORD3(v74);
  v45 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 32, &v51, a7, v44, v38);
  v51 = WORD4(v71);
  v52 = WORD5(v71);
  v53 = WORD4(v72);
  v54 = WORD5(v72);
  v55 = WORD6(v71);
  v56 = HIWORD(v71);
  v57 = WORD6(v72);
  v58 = HIWORD(v72);
  v59 = WORD4(v73);
  v60 = WORD5(v73);
  v61 = WORD4(v74);
  v62 = WORD5(v74);
  v63 = WORD6(v73);
  v64 = HIWORD(v73);
  v65 = WORD6(v74);
  v66 = HIWORD(v74);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 48, &v51, a7, v44, v42);
  if (v45)
  {
    v47 = 4;
  }

  else
  {
    v47 = 0;
  }

  if (v43)
  {
    v48 = 2;
  }

  else
  {
    v48 = 0;
  }

  if (result)
  {
    v49 = -8;
  }

  else
  {
    v49 = -16;
  }

  *a2 = v49 | v47 | v40 | v48;
  return result;
}