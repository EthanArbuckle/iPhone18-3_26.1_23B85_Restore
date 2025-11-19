unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(int16x4_t *a1, char *a2, int16x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, double a7, double a8, double a9, double a10, double a11, double a12, int8x8_t a13)
{
  v14 = *a3;
  v15 = *(a3 + a4);
  v16 = vzip1_s16(*a3, v15);
  v17 = vzip2_s16(*a3, v15);
  v18 = (a3 + 2 * a4);
  v19 = *v18;
  v20 = *(v18 + a4);
  v21 = vzip1_s16(*v18, v20);
  v22 = vzip2_s16(*v18, v20);
  *v23.i8 = v16;
  v23.u64[1] = v16;
  *v24.i8 = v21;
  v24.u64[1] = v21;
  *v25.i8 = v17;
  v25.u64[1] = v17;
  *v26.i8 = v22;
  v26.u64[1] = v22;
  v27 = vdupq_lane_s8(*a3, 0);
  v28 = vsubq_s8(v23, v27);
  v29 = vsubq_s8(v24, v27);
  v30 = vsubq_s8(v25, v27);
  v14.i8[0] = vmaxvq_s8(v28);
  v19.i8[0] = vminvq_s8(v28);
  v31 = vdupq_lane_s8(v14, 0);
  v32 = vdupq_lane_s8(v19, 0);
  v33 = vsubq_s8(v26, v27);
  v34 = vzip1q_s8(v31, v32);
  v35.i64[0] = 0x808080808080808;
  v35.i64[1] = 0x808080808080808;
  v36 = vsubq_s8(v35, vclsq_s8(v34));
  v37 = vbicq_s8(v36, vceqzq_s8(v34));
  v38 = vpmaxq_s8(v37, v37);
  v36.i8[0] = vmaxvq_s8(v29);
  a13.i8[0] = vminvq_s8(v29);
  v39 = vdupq_lane_s8(*v36.i8, 0);
  v40 = vdupq_lane_s8(a13, 0);
  v41 = vmaxq_s8(v31, v39);
  v42 = vminq_s8(v32, v40);
  v43 = vzip1q_s8(v39, v40);
  v44 = vsubq_s8(v35, vclsq_s8(v43));
  v45 = vbicq_s8(v44, vceqzq_s8(v43));
  v46 = vpmaxq_s8(v45, v45);
  v44.i8[0] = vmaxvq_s8(v30);
  v40.i8[0] = vminvq_s8(v30);
  v47 = vdupq_lane_s8(*v44.i8, 0);
  v48 = vdupq_lane_s8(*v40.i8, 0);
  v49 = vmaxq_s8(v41, v47);
  v50 = vminq_s8(v42, v48);
  v51 = vzip1q_s8(v47, v48);
  v52 = vsubq_s8(v35, vclsq_s8(v51));
  v53 = vbicq_s8(v52, vceqzq_s8(v51));
  v54 = vpmaxq_s8(v53, v53);
  v52.i8[0] = vmaxvq_s8(v33);
  v13.i8[0] = vminvq_s8(v33);
  v55 = vdupq_lane_s8(*v52.i8, 0);
  v56 = vdupq_lane_s8(v13, 0);
  v57 = vmaxq_s8(v49, v55);
  v58 = vminq_s8(v50, v56);
  v59 = vzip1q_s8(v55, v56);
  v60 = vbicq_s8(vsubq_s8(v35, vclsq_s8(v59)), vceqzq_s8(v59));
  v61 = vpmaxq_s8(v60, v60);
  v62 = vmaxq_s8(vmaxq_s8(v38, v46), vmaxq_s8(v54, v61));
  v63 = vclzq_s8(vsubq_s8(v57, v58));
  v64 = vsubq_s8(v35, v63);
  v65 = vminq_s8(v64, v62);
  if (vmaxvq_s8(v65))
  {
    v66 = 0;
    v67 = 0;
    v68.i64[0] = -1;
    v68.i64[1] = -1;
    v69.i64[0] = 0x707070707070707;
    v69.i64[1] = 0x707070707070707;
    v70 = vshlq_s8(v68, vsubq_s8(v69, v63));
    v71 = vcgtq_s8(v62, v64);
    v72 = vandq_s8(vsubq_s8(v70, v58), v71);
    v73 = vandq_s8(v71, v35);
    v71.i64[0] = 0x303030303030303;
    v71.i64[1] = 0x303030303030303;
    v74 = vorrq_s8(vandq_s8(vceqzq_s8(v65), v71), v73);
    v75 = vmaxq_s8(vminq_s8(vsubq_s8(v65, v38), v71), 0);
    v76 = vmaxq_s8(vminq_s8(vsubq_s8(v65, v46), v71), 0);
    v77 = vmaxq_s8(vminq_s8(vsubq_s8(v65, v54), v71), 0);
    v78 = vmaxq_s8(vminq_s8(vsubq_s8(v65, v61), v71), 0);
    v79 = vsubq_s8(v65, v75);
    v80 = vsubq_s8(v65, v76);
    v81 = vsubq_s8(v65, v77);
    v82 = vsubq_s8(v65, v78);
    v83 = vceqq_s8(vaddq_s8(v78, v77), vnegq_s8(vaddq_s8(v75, v76)));
    v76.i64[0] = 0x404040404040404;
    v76.i64[1] = 0x404040404040404;
    v84 = vorrq_s8(vbicq_s8(v76, v83), v74);
    if (a5 >= 4 && a6 >= 2)
    {
      v382 = v21;
      v383 = v16;
      v384 = v22;
      v385 = v17;
      v395 = v72;
      v85 = v16.u8[1] - v16.u8[0];
      v86 = v85 << 28 >> 28;
      v87 = v16.u8[2] - v16.u8[0];
      v88.i64[0] = 0xFFFF0000FFFF0000;
      v88.i64[1] = 0xFFFF0000FFFF0000;
      v89 = vmlaq_s8(vandq_s8(vdupq_n_s8(v87 << 28 >> 28), v88), vdupq_n_s8(v86), xmmword_29D2F0D60);
      v90 = vsubq_s8(v28, v89);
      v91 = v87 << 28 >> 27;
      v92 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v91), v29), v89);
      v93 = v85 << 28 >> 26;
      v394 = v29;
      v94 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v93), v30), v89);
      v95 = vaddq_s8(vdupq_n_s8(-(v91 + v93)), v33);
      v96 = vsubq_s8(v95, v89);
      v95.i8[0] = vmaxvq_s8(v90);
      v391 = v90;
      v89.i8[0] = vminvq_s8(v90);
      v97 = vdupq_lane_s8(*v95.i8, 0);
      v98 = vdupq_lane_s8(*v89.i8, 0);
      v99 = vzip1q_s8(v97, v98);
      v100.i64[0] = 0x808080808080808;
      v100.i64[1] = 0x808080808080808;
      v101 = vbicq_s8(vsubq_s8(v100, vclsq_s8(v99)), vceqzq_s8(v99));
      v102 = vpmaxq_s8(v101, v101);
      v101.i8[0] = vmaxvq_s8(v92);
      v388 = v92;
      v92.i8[0] = vminvq_s8(v92);
      v103 = vdupq_lane_s8(*v101.i8, 0);
      v104 = vdupq_lane_s8(*v92.i8, 0);
      v105 = vmaxq_s8(v97, v103);
      v106 = vminq_s8(v98, v104);
      v107 = vzip1q_s8(v103, v104);
      v108 = vbicq_s8(vsubq_s8(v100, vclsq_s8(v107)), vceqzq_s8(v107));
      v109 = vpmaxq_s8(v108, v108);
      v108.i8[0] = vmaxvq_s8(v94);
      v70.i8[0] = vminvq_s8(v94);
      v110 = vdupq_lane_s8(*v108.i8, 0);
      v111 = vdupq_lane_s8(*v70.i8, 0);
      v112 = vmaxq_s8(v105, v110);
      v113 = vminq_s8(v106, v111);
      v114 = vzip1q_s8(v110, v111);
      v115 = vsubq_s8(v100, vclsq_s8(v114));
      v116 = vbicq_s8(v115, vceqzq_s8(v114));
      v117 = vpmaxq_s8(v116, v116);
      v116.i8[0] = vmaxvq_s8(v96);
      v115.i8[0] = vminvq_s8(v96);
      v118 = vdupq_lane_s8(*v116.i8, 0);
      v119 = vdupq_lane_s8(*v115.i8, 0);
      v120 = vmaxq_s8(v112, v118);
      v381 = v33;
      v121 = vminq_s8(v113, v119);
      v122 = vzip1q_s8(v118, v119);
      v123 = vbicq_s8(vsubq_s8(v100, vclsq_s8(v122)), vceqzq_s8(v122));
      v124 = vpmaxq_s8(v123, v123);
      v125 = vmaxq_s8(vmaxq_s8(v102, v109), vmaxq_s8(v117, v124));
      v126 = vclzq_s8(vsubq_s8(v120, v121));
      v127 = vsubq_s8(v100, v126);
      v128 = vcgtq_s8(v125, v127);
      v129 = vminq_s8(v127, v125);
      v100.i64[0] = 0x202020202020202;
      v100.i64[1] = 0x202020202020202;
      v125.i64[0] = 0xA0A0A0A0A0A0A0ALL;
      v125.i64[1] = 0xA0A0A0A0A0A0A0ALL;
      v130 = vbslq_s8(v128, v125, v100);
      v125.i64[0] = 0x101010101010101;
      v125.i64[1] = 0x101010101010101;
      v131 = vmaxq_s8(v129, v125);
      v132 = vsubq_s8(v131, v102);
      v102.i64[0] = 0x303030303030303;
      v102.i64[1] = 0x303030303030303;
      v133 = vmaxq_s8(vminq_s8(v132, v102), 0);
      v134 = v82;
      v135 = vmaxq_s8(vminq_s8(vsubq_s8(v131, v109), v102), 0);
      v136 = vmaxq_s8(vminq_s8(vsubq_s8(v131, v117), v102), 0);
      v137 = vmaxq_s8(vminq_s8(vsubq_s8(v131, v124), v102), 0);
      v138 = vsubq_s8(v131, v133);
      v139 = vsubq_s8(v131, v135);
      v140 = vsubq_s8(v131, v136);
      v141 = vsubq_s8(v131, v137);
      v90.i64[0] = 0x404040404040404;
      v90.i64[1] = 0x404040404040404;
      v142 = vorrq_s8(vbicq_s8(v90, vceqq_s8(vaddq_s8(v137, v136), vnegq_s8(vaddq_s8(v133, v135)))), v130);
      v143.i64[0] = 0x8000800080008;
      v143.i64[1] = 0x8000800080008;
      v144 = vmovl_u8(*v84.i8);
      v145 = *&v144 & __PAIR128__(0xFFF8FFF8FFF8FFF8, 0xFFF8FFF8FFF8FFF8);
      v393 = vmovl_s8(*v65.i8);
      v146 = *&vshll_n_u8(*v84.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9);
      v147 = *&v144 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3);
      v90.i64[0] = 0x2000200020002;
      v90.i64[1] = 0x2000200020002;
      v148 = vshll_n_s8(vadd_s8(vadd_s8(*v81.i8, *v80.i8), *v134.i8), 3uLL);
      v149 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(v393, vceqzq_s16(v145)), v146), vandq_s8(vceqq_s16(v147, v90), v143)), *v79.i8, 0x707070707070707), v148), vaddq_s16(vmlal_s8(vaddl_u8(vbic_s8(*v131.i8, vcgt_u8(0x808080808080808, *v142.i8)), vand_s8(vadd_s8(*v142.i8, *v142.i8), 0x808080808080808)), *v138.i8, 0x707070707070707), vaddq_s16(vshll_n_s8(vadd_s8(vadd_s8(*v140.i8, *v139.i8), *v141.i8), 3uLL), v143)))), 0);
      v90.i16[0] = vaddlvq_s8(v149);
      v150 = v86 & 0xF | (16 * v87);
      v151 = v90.u16[0];
      if (v90.i16[0])
      {
        v152.i64[0] = 0x707070707070707;
        v152.i64[1] = 0x707070707070707;
        v153 = vsubq_s8(v152, v126);
        v154.i64[0] = -1;
        v154.i64[1] = -1;
        v155 = vandq_s8(vsubq_s8(vshlq_s8(v154, v153), v121), v128);
        v390 = vbslq_s8(v149, v391, v28);
        v33 = vbslq_s8(v149, v96, v381);
        v81 = vbslq_s8(v149, v140, v81);
        v394 = vbslq_s8(v149, v388, v394);
        v395 = vbslq_s8(v149, v155, v395);
        v65 = vbslq_s8(v149, v131, v65);
        v156 = vbslq_s8(v149, v142, v84);
        v157 = vmovl_u8(*v156.i8);
        v145 = *&v157 & __PAIR128__(0xFFF8FFF8FFF8FFF8, 0xFFF8FFF8FFF8FFF8);
        v392 = vbslq_s8(v149, v141, v134);
        v393 = vmovl_s8(*v65.i8);
        v386 = v156;
        v387 = vbslq_s8(v149, v94, v30);
        v146 = *&vshll_n_u8(*v156.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9);
        v147 = *&v157 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3);
        v158 = vbslq_s8(v149, v138, v79);
        v159 = vmull_s8(*v158.i8, 0x707070707070707);
        v389 = vbslq_s8(v149, v139, v80);
        v148 = vshll_n_s8(vadd_s8(vadd_s8(*v81.i8, *v389.i8), *v392.i8), 3uLL);
      }

      else
      {
        v386 = v84;
        v387 = v30;
        v389 = v80;
        v390 = v28;
        v392 = v134;
        v158 = v79;
        v159 = vmull_s8(*v79.i8, 0x707070707070707);
        v33 = v381;
      }

      v67 = v150;
      v162 = vsubq_s8(v23, vqtbl1q_s8(v23, xmmword_29D2F0DF0));
      v163 = v24;
      v163.i8[7] = v23.i8[7];
      v164 = vsubq_s8(v24, vqtbl1q_s8(v163, xmmword_29D2F0E00));
      v165 = v25;
      v165.i8[7] = v23.i8[7];
      v166 = vsubq_s8(v25, vqtbl1q_s8(v165, xmmword_29D2F0E10));
      v167 = v26;
      v167.i8[7] = v23.i8[7];
      v168 = vqtbl1q_s8(v167, xmmword_29D2F0E20);
      v169 = vsubq_s8(v26, v168);
      v170 = v162;
      v170.i8[0] = v162.i8[7];
      v170.i8[7] = v162.i8[0];
      v162.i8[0] = vmaxvq_s8(v170);
      v168.i8[0] = vminvq_s8(v170);
      v171 = vdupq_lane_s8(*v162.i8, 0);
      v172 = vdupq_lane_s8(*v168.i8, 0);
      v173 = vzip1q_s8(v171, v172);
      v174.i64[0] = 0x808080808080808;
      v174.i64[1] = 0x808080808080808;
      v175 = vsubq_s8(v174, vclsq_s8(v173));
      v176 = vbicq_s8(v175, vceqzq_s8(v173));
      v177 = vpmaxq_s8(v176, v176);
      v175.i8[0] = vmaxvq_s8(v164);
      v139.i8[0] = vminvq_s8(v164);
      v178 = vdupq_lane_s8(*v175.i8, 0);
      v179 = vdupq_lane_s8(*v139.i8, 0);
      v180 = vmaxq_s8(v171, v178);
      v181 = vminq_s8(v172, v179);
      v182 = vzip1q_s8(v178, v179);
      v183 = vsubq_s8(v174, vclsq_s8(v182));
      v184 = vbicq_s8(v183, vceqzq_s8(v182));
      v185 = vpmaxq_s8(v184, v184);
      v184.i8[0] = vmaxvq_s8(v166);
      v183.i8[0] = vminvq_s8(v166);
      v186 = vdupq_lane_s8(*v184.i8, 0);
      v187 = vdupq_lane_s8(*v183.i8, 0);
      v188 = vmaxq_s8(v180, v186);
      v189 = vminq_s8(v181, v187);
      v190 = vzip1q_s8(v186, v187);
      v191 = vsubq_s8(v174, vclsq_s8(v190));
      v192 = vbicq_s8(v191, vceqzq_s8(v190));
      v193 = vpmaxq_s8(v192, v192);
      v192.i8[0] = vmaxvq_s8(v169);
      v191.i8[0] = vminvq_s8(v169);
      v194 = vdupq_lane_s8(*v192.i8, 0);
      v195 = vdupq_lane_s8(*v191.i8, 0);
      v196 = vmaxq_s8(v188, v194);
      v197 = vminq_s8(v189, v195);
      v198 = vzip1q_s8(v194, v195);
      v199 = vbicq_s8(vsubq_s8(v174, vclsq_s8(v198)), vceqzq_s8(v198));
      v200 = vpmaxq_s8(v199, v199);
      v201 = vmaxq_s8(vmaxq_s8(v177, v185), vmaxq_s8(v193, v200));
      v202 = vclzq_s8(vsubq_s8(v196, v197));
      v203 = vsubq_s8(v174, v202);
      v204 = vcgtq_s8(v201, v203);
      v205 = vminq_s8(v203, v201);
      v203.i64[0] = 0x909090909090909;
      v203.i64[1] = 0x909090909090909;
      v174.i64[0] = 0x202020202020202;
      v174.i64[1] = 0x202020202020202;
      v206 = vorrq_s8(vandq_s8(vceqzq_s8(v205), v174), vsubq_s8(vandq_s8(v204, v203), vmvnq_s8(v204)));
      v207.i64[0] = 0x303030303030303;
      v207.i64[1] = 0x303030303030303;
      v208 = vmaxq_s8(vminq_s8(vsubq_s8(v205, v177), v207), 0);
      v209 = vmaxq_s8(vminq_s8(vsubq_s8(v205, v185), v207), 0);
      v210 = vmaxq_s8(vminq_s8(vsubq_s8(v205, v193), v207), 0);
      v211 = vmaxq_s8(vminq_s8(vsubq_s8(v205, v200), v207), 0);
      v212 = vsubq_s8(v205, v208);
      v213 = vsubq_s8(v205, v209);
      v214 = vsubq_s8(v205, v210);
      v215 = vsubq_s8(v205, v211);
      v174.i64[0] = 0x404040404040404;
      v174.i64[1] = 0x404040404040404;
      v216 = vorrq_s8(vbicq_s8(v174, vceqq_s8(vaddq_s8(v211, v210), vnegq_s8(vaddq_s8(v208, v209)))), v206);
      v174.i64[0] = 0x2000200020002;
      v174.i64[1] = 0x2000200020002;
      v217 = vceqq_s16(v147, v174);
      v174.i64[0] = 0x8000800080008;
      v174.i64[1] = 0x8000800080008;
      v218 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v393, vceqzq_s16(v145)), v146), vaddq_s16(vandq_s8(v217, v174), v159)), v148), vaddq_s16(vmlal_s8(vaddw_u8(vmovl_s8(vbic_s8(*v205.i8, vcgt_u8(0x808080808080808, *v216.i8))), vand_s8(vadd_s8(*v216.i8, *v216.i8), 0x808080808080808)), *v212.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v214.i8, *v213.i8), *v215.i8), 3uLL)))), 0);
      v208.i16[0] = vaddlvq_s8(v218);
      v219 = v208.u16[0];
      v17 = v385;
      if (v208.i16[0])
      {
        v220.i64[0] = 0x707070707070707;
        v220.i64[1] = 0x707070707070707;
        v221 = vsubq_s8(v220, v202);
        v222.i64[0] = -1;
        v222.i64[1] = -1;
        v27.i8[0] = vbslq_s8(v218, vextq_s8(v23, v23, 0xFuLL), v27).u8[0];
        v28 = vbslq_s8(v218, v170, v390);
        v29 = vbslq_s8(v218, v164, v394);
        v30 = vbslq_s8(v218, v166, v387);
        v33 = vbslq_s8(v218, v169, v33);
        v79 = vbslq_s8(v218, v212, v158);
        v80 = vbslq_s8(v218, v213, v389);
        v81 = vbslq_s8(v218, v214, v81);
        v82 = vbslq_s8(v218, v215, v392);
        v72 = vbslq_s8(v218, vandq_s8(vsubq_s8(vshlq_s8(v222, v221), v197), v204), v395);
        v65 = vbslq_s8(v218, v205, v65);
        v84 = vbslq_s8(v218, v216, v386);
      }

      else
      {
        v30 = v387;
        v80 = v389;
        v29 = v394;
        v72 = v395;
        v28 = v390;
        v82 = v392;
        v79 = v158;
        v84 = v386;
      }

      v16 = v383;
      v22 = v384;
      v21 = v382;
      if (v151)
      {
        v223 = v219 == 0;
      }

      else
      {
        v223 = 0;
      }

      v66 = v223;
    }

    v224 = vmovl_s8(*v84.i8);
    v225.i64[0] = 0x8000800080008;
    v225.i64[1] = 0x8000800080008;
    v226.i64[0] = 0x3000300030003;
    v226.i64[1] = 0x3000300030003;
    v227.i64[0] = 0x2000200020002;
    v227.i64[1] = 0x2000200020002;
    if (((vbicq_s8(vmovl_s8(*v65.i8), vceqzq_s16(vandq_s8(v224, v225))).u16[0] + ((2 * v224.i16[0]) & 8) + vandq_s8(vceqq_s16(vandq_s8(v224, v226), v227), v225).u16[0] - v79.i8[0] + 8 * v79.i8[0] + 8 * vaddq_s8(vaddq_s8(v81, v80), v82).i8[0]) + 19) >= 0x100)
    {
      *a1 = v16;
      a1[1] = v21;
      a1[2] = v17;
      v160 = 31;
      a1[3] = v22;
      result = 32;
    }

    else
    {
      v228 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v229 = 8 * (a1 & 7);
      if (v229)
      {
        v230 = *v228 & ~(-1 << v229);
      }

      else
      {
        v230 = 0;
      }

      v231 = vextq_s8(v79, 0, 8uLL);
      v232 = vextq_s8(v80, 0, 8uLL);
      v233 = vextq_s8(v81, 0, 8uLL);
      v234 = vextq_s8(v82, 0, 8uLL);
      if (v65.i8[0])
      {
        v235 = (16 * v65.i8[0] + 112) & 0x70;
      }

      else
      {
        v235 = 0;
      }

      *a2 = 32 * v84.i8[0];
      v236 = (v235 & 0xFFFF807F | v84.i8[0] & 8 | (v27.u8[0] << 7)) >> 3;
      v237 = (v236 << v229) | v230;
      if (v229 >= 0x34)
      {
        *v228 = v237;
        v237 = v236 >> (-8 * (a1 & 7u));
      }

      v238 = v229 + 12;
      v239 = vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*v224.i8, 0x4000400040004))));
      v240.i64[0] = 0x202020202020202;
      v240.i64[1] = 0x202020202020202;
      v241 = vandq_s8(v239, v240);
      v240.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v240.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v242.i64[0] = -1;
      v242.i64[1] = -1;
      v243 = vandq_s8(vshlq_u8(v242, vorrq_s8(v241, v240)), vzip1q_s16(vzip1q_s8(vsubq_s8(v65, v231), vsubq_s8(v65, v232)), vzip1q_s8(vsubq_s8(v65, v233), vsubq_s8(v65, v234))).u32[0]);
      v244 = vmovl_u8(*v241.i8);
      v245 = vpaddq_s16(vshlq_u16(vmovl_u8(*v243.i8), vtrn1q_s16(0, v244)), vmovl_high_u8(v243));
      v246 = vpaddq_s16(v244, vmovl_high_u8(v241));
      v247 = vmovl_u16(*v246.i8);
      v248 = vmovl_high_u16(v246);
      v249 = vpaddq_s32(vshlq_u32(vmovl_u16(*v245.i8), vtrn1q_s32(0, v247)), vshlq_u32(vmovl_high_u16(v245), vtrn1q_s32(0, v248)));
      v250 = vpaddq_s32(v247, v248);
      v251.i64[0] = v249.u32[0];
      v251.i64[1] = v249.u32[1];
      v252 = v251;
      v251.i64[0] = v249.u32[2];
      v251.i64[1] = v249.u32[3];
      v253 = v251;
      v251.i64[0] = v250.u32[0];
      v251.i64[1] = v250.u32[1];
      v254 = v251;
      v251.i64[0] = v250.u32[2];
      v251.i64[1] = v250.u32[3];
      v255 = vpaddq_s64(vshlq_u64(v252, vzip1q_s64(0, v254)), vshlq_u64(v253, vzip1q_s64(0, v251)));
      v256 = vpaddq_s64(v254, v251);
      v257 = (v229 + 12) & 0x3C;
      v258 = (v255.i64[0] << v257) | v237;
      if ((v256.i64[0] + v257) >= 0x40)
      {
        *(v228 + ((v238 >> 3) & 8)) = v258;
        v258 = v255.i64[0] >> -v257;
      }

      v259 = v256.i64[0] + v238;
      v260 = v258 | (v255.i64[1] << v259);
      if ((v259 & 0x3F) + v256.i64[1] >= 0x40)
      {
        *(v228 + ((v259 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v260;
        v260 = v255.i64[1] >> -(v259 & 0x3F);
        if ((v259 & 0x3F) == 0)
        {
          v260 = 0;
        }
      }

      v261 = vceqq_s8(v65, v79);
      v262 = v259 + v256.i64[1];
      v263.i64[0] = 0x808080808080808;
      v263.i64[1] = 0x808080808080808;
      v264.i64[0] = -1;
      v264.i64[1] = -1;
      v265 = vandq_s8(vextq_s8(vtstq_s8(v84, v263), 0, 0xFuLL), v65);
      v266.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v266.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v267 = vandq_s8(vshlq_u8(v264, vaddq_s8(v265, v266)), v72);
      v268 = vmovl_u8(*v265.i8);
      v269 = vpaddq_s16(vshlq_u16(vmovl_u8(*v267.i8), vtrn1q_s16(0, v268)), vmovl_high_u8(v267));
      v270 = vpaddq_s16(v268, vmovl_high_u8(v265));
      v271 = vmovl_u16(*v270.i8);
      v272 = vmovl_high_u16(v270);
      v273 = vpaddq_s32(vshlq_u32(vmovl_u16(*v269.i8), vtrn1q_s32(0, v271)), vshlq_u32(vmovl_high_u16(v269), vtrn1q_s32(0, v272)));
      v274 = vpaddq_s32(v271, v272);
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
      v281 = (v279.i64[0] << v262) | v260;
      if (v280.i64[0] + (v262 & 0x3F) >= 0x40)
      {
        *(v228 + ((v262 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v281;
        v281 = v279.i64[0] >> -(v262 & 0x3F);
        if ((v262 & 0x3F) == 0)
        {
          v281 = 0;
        }
      }

      v282 = vandq_s8(v72, v261);
      v283 = v280.i64[0] + v262;
      v284 = v281 | (v279.i64[1] << v283);
      if ((v283 & 0x3F) + v280.i64[1] >= 0x40)
      {
        *(v228 + ((v283 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v284;
        v284 = v279.i64[1] >> -(v283 & 0x3F);
        if ((v283 & 0x3F) == 0)
        {
          v284 = 0;
        }
      }

      v285 = vceqq_s8(v65, v80);
      v286 = vaddq_s8(v282, v28);
      v287 = v283 + v280.i64[1];
      if (v66)
      {
        v284 |= v67 << v287;
        if ((v287 & 0x3F) >= 0x38)
        {
          *(v228 + ((v287 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v284;
          v284 = v67 >> -(v287 & 0x3F);
        }

        v287 += 8;
      }

      v288 = vandq_s8(v72, v285);
      v289 = vmovl_high_u8(v231);
      v231.i8[0] = 0;
      v290.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v290.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v291.i64[0] = -1;
      v291.i64[1] = -1;
      v292 = vandq_s8(vshlq_u8(v291, vaddq_s8(v231, v290)), v286);
      v293 = vmovl_u8(*v231.i8);
      v294 = vpaddq_s16(vshlq_u16(vmovl_u8(*v292.i8), vtrn1q_s16(0, v293)), vshlq_u16(vmovl_high_u8(v292), vtrn1q_s16(0, v289)));
      v295 = vpaddq_s16(v293, v289);
      v296 = vmovl_u16(*v295.i8);
      v297 = vmovl_high_u16(v295);
      v298 = vpaddq_s32(vshlq_u32(vmovl_u16(*v294.i8), vtrn1q_s32(0, v296)), vshlq_u32(vmovl_high_u16(v294), vtrn1q_s32(0, v297)));
      v299 = vpaddq_s32(v296, v297);
      v300.i64[0] = v298.u32[0];
      v300.i64[1] = v298.u32[1];
      v301 = v300;
      v300.i64[0] = v298.u32[2];
      v300.i64[1] = v298.u32[3];
      v302 = v300;
      v300.i64[0] = v299.u32[0];
      v300.i64[1] = v299.u32[1];
      v303 = v300;
      v300.i64[0] = v299.u32[2];
      v300.i64[1] = v299.u32[3];
      v304 = vpaddq_s64(vshlq_u64(v301, vzip1q_s64(0, v303)), vshlq_u64(v302, vzip1q_s64(0, v300)));
      v305 = vpaddq_s64(v303, v300);
      v306 = (v304.i64[0] << v287) | v284;
      if (v305.i64[0] + (v287 & 0x3F) >= 0x40)
      {
        *(v228 + ((v287 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v306;
        v306 = v304.i64[0] >> -(v287 & 0x3F);
        if ((v287 & 0x3F) == 0)
        {
          v306 = 0;
        }
      }

      v307 = vceqq_s8(v65, v81);
      v308 = vaddq_s8(v29, v288);
      v309 = v305.i64[0] + v287;
      v310 = (v305.i64[0] + v287) & 0x3F;
      v311 = v306 | (v304.i64[1] << v309);
      if ((v309 & 0x3F) + v305.i64[1] >= 0x40)
      {
        *(v228 + ((v309 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v311;
        v311 = v304.i64[1] >> -v310;
        if (!v310)
        {
          v311 = 0;
        }
      }

      v312 = vandq_s8(v72, v307);
      v313 = v309 + v305.i64[1];
      v314.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v314.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v315.i64[0] = -1;
      v315.i64[1] = -1;
      v316 = vandq_s8(vshlq_u8(v315, vaddq_s8(v232, v314)), v308);
      v317 = vmovl_u8(*v232.i8);
      v318 = vmovl_high_u8(v232);
      v319 = vpaddq_s16(vshlq_u16(vmovl_u8(*v316.i8), vtrn1q_s16(0, v317)), vshlq_u16(vmovl_high_u8(v316), vtrn1q_s16(0, v318)));
      v320 = vpaddq_s16(v317, v318);
      v321 = vmovl_u16(*v320.i8);
      v322 = vmovl_high_u16(v320);
      v323 = vpaddq_s32(vshlq_u32(vmovl_u16(*v319.i8), vtrn1q_s32(0, v321)), vshlq_u32(vmovl_high_u16(v319), vtrn1q_s32(0, v322)));
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
      v331 = (v329.i64[0] << v313) | v311;
      if (v330.i64[0] + (v313 & 0x3F) >= 0x40)
      {
        *(v228 + ((v313 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v331;
        v331 = v329.i64[0] >> -(v313 & 0x3F);
        if ((v313 & 0x3F) == 0)
        {
          v331 = 0;
        }
      }

      v332 = vceqq_s8(v65, v82);
      v333 = vaddq_s8(v30, v312);
      v334 = v330.i64[0] + v313;
      v335 = v331 | (v329.i64[1] << v334);
      if ((v334 & 0x3F) + v330.i64[1] >= 0x40)
      {
        *(v228 + ((v334 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v335;
        v335 = v329.i64[1] >> -(v334 & 0x3F);
        if ((v334 & 0x3F) == 0)
        {
          v335 = 0;
        }
      }

      v336 = vandq_s8(v72, v332);
      v337 = v334 + v330.i64[1];
      v338.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v338.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v339.i64[0] = -1;
      v339.i64[1] = -1;
      v340 = vandq_s8(vshlq_u8(v339, vaddq_s8(v233, v338)), v333);
      v341 = vmovl_u8(*v233.i8);
      v342 = vmovl_high_u8(v233);
      v343 = vpaddq_s16(vshlq_u16(vmovl_u8(*v340.i8), vtrn1q_s16(0, v341)), vshlq_u16(vmovl_high_u8(v340), vtrn1q_s16(0, v342)));
      v344 = vpaddq_s16(v341, v342);
      v345 = vmovl_u16(*v344.i8);
      v346 = vmovl_high_u16(v344);
      v347 = vpaddq_s32(vshlq_u32(vmovl_u16(*v343.i8), vtrn1q_s32(0, v345)), vshlq_u32(vmovl_high_u16(v343), vtrn1q_s32(0, v346)));
      v348 = vpaddq_s32(v345, v346);
      v349.i64[0] = v347.u32[0];
      v349.i64[1] = v347.u32[1];
      v350 = v349;
      v349.i64[0] = v347.u32[2];
      v349.i64[1] = v347.u32[3];
      v351 = v349;
      v349.i64[0] = v348.u32[0];
      v349.i64[1] = v348.u32[1];
      v352 = v349;
      v349.i64[0] = v348.u32[2];
      v349.i64[1] = v348.u32[3];
      v353 = vpaddq_s64(vshlq_u64(v350, vzip1q_s64(0, v352)), vshlq_u64(v351, vzip1q_s64(0, v349)));
      v354 = vpaddq_s64(v352, v349);
      v355 = (v353.i64[0] << v337) | v335;
      if (v354.i64[0] + (v337 & 0x3F) >= 0x40)
      {
        *(v228 + ((v337 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v355;
        v355 = v353.i64[0] >> -(v337 & 0x3F);
        if ((v337 & 0x3F) == 0)
        {
          v355 = 0;
        }
      }

      v356 = vaddq_s8(v33, v336);
      v357 = v354.i64[0] + v337;
      v358 = v355 | (v353.i64[1] << v357);
      if ((v357 & 0x3F) + v354.i64[1] >= 0x40)
      {
        *(v228 + ((v357 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v358;
        v358 = v353.i64[1] >> -(v357 & 0x3F);
        if ((v357 & 0x3F) == 0)
        {
          v358 = 0;
        }
      }

      v359 = v357 + v354.i64[1];
      v360.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v360.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v361.i64[0] = -1;
      v361.i64[1] = -1;
      v362 = vandq_s8(vshlq_u8(v361, vaddq_s8(v234, v360)), v356);
      v363 = vmovl_u8(*v234.i8);
      v364 = vmovl_high_u8(v234);
      v365 = vpaddq_s16(vshlq_u16(vmovl_u8(*v362.i8), vtrn1q_s16(0, v363)), vshlq_u16(vmovl_high_u8(v362), vtrn1q_s16(0, v364)));
      v366 = vpaddq_s16(v363, v364);
      v367 = vmovl_u16(*v366.i8);
      v368 = vmovl_high_u16(v366);
      v369 = vpaddq_s32(vshlq_u32(vmovl_u16(*v365.i8), vtrn1q_s32(0, v367)), vshlq_u32(vmovl_high_u16(v365), vtrn1q_s32(0, v368)));
      v370 = vpaddq_s32(v367, v368);
      v371.i64[0] = v369.u32[0];
      v371.i64[1] = v369.u32[1];
      v372 = v371;
      v371.i64[0] = v369.u32[2];
      v371.i64[1] = v369.u32[3];
      v373 = v371;
      v371.i64[0] = v370.u32[0];
      v371.i64[1] = v370.u32[1];
      v374 = v371;
      v371.i64[0] = v370.u32[2];
      v371.i64[1] = v370.u32[3];
      v375 = vpaddq_s64(vshlq_u64(v372, vzip1q_s64(0, v374)), vshlq_u64(v373, vzip1q_s64(0, v371)));
      v376 = vpaddq_s64(v374, v371);
      v377 = (v375.i64[0] << v359) | v358;
      if (v376.i64[0] + (v359 & 0x3F) > 0x3F)
      {
        *(v228 + ((v359 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v377;
        if ((v359 & 0x3F) != 0)
        {
          v377 = v375.i64[0] >> -(v359 & 0x3F);
        }

        else
        {
          v377 = 0;
        }
      }

      v378 = v376.i64[0] + v359;
      v379 = v377 | (v375.i64[1] << v378);
      if ((v378 & 0x3F) + v376.i64[1] >= 0x40)
      {
        *(v228 + ((v378 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v379;
        v379 = v375.i64[1] >> -(v378 & 0x3F);
        if ((v378 & 0x3F) == 0)
        {
          v379 = 0;
        }
      }

      v380 = v378 + v376.i64[1];
      if ((v380 & 0x3F) != 0)
      {
        *(v228 + ((v380 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v379;
      }

      result = (v380 - v229 + 7) >> 3;
      v160 = *a2 | (result - 1);
    }
  }

  else
  {
    a1->i8[0] = a3->i8[0];
    v160 = 96;
    result = 1;
  }

  *a2 = v160;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, int16x4_t *a3, char *a4, unsigned int a5, unsigned int a6, double a7, double a8, double a9, double a10, double a11, double a12, int8x8_t a13)
{
  v13 = a6;
  v14 = a5;
  v16 = a3;
  v18 = result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6, a7, a8, a9, a10, a11, a12, a13);
    v16 = (v16 + result);
  }

  else
  {
    *a4 = 0;
  }

  v19 = v14 - 8;
  if (v14 >= 9 && v13)
  {
    if (v13 >= 4)
    {
      v20 = 4;
    }

    else
    {
      v20 = v13;
    }

    if (v19 >= 8)
    {
      v21 = 8;
    }

    else
    {
      v21 = v14 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v16, a4 + 1, v18 + 1, a2, v21, v20, a7, a8, a9, a10, a11, a12, a13);
    v16 = (v16 + result);
  }

  else
  {
    a4[1] = 0;
  }

  v22 = 4 * a2;
  v23 = v13 - 4;
  if (v14 && v13 >= 5)
  {
    if (v23 >= 4)
    {
      v24 = 4;
    }

    else
    {
      v24 = v13 - 4;
    }

    if (v14 >= 8)
    {
      v25 = 8;
    }

    else
    {
      v25 = v14;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v16, a4 + 2, (v18 + v22), a2, v25, v24, a7, a8, a9, a10, a11, a12, a13);
    v16 = (v16 + result);
    if (v14 < 9)
    {
      goto LABEL_38;
    }
  }

  else
  {
    a4[2] = 0;
    if (v14 < 9)
    {
      goto LABEL_38;
    }
  }

  if (v13 >= 5)
  {
    if (v23 >= 4)
    {
      v26 = 4;
    }

    else
    {
      v26 = v13 - 4;
    }

    if (v19 >= 8)
    {
      v27 = 8;
    }

    else
    {
      v27 = v14 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v16, a4 + 3, (v18 + v22 + 8), a2, v27, v26, a7, a8, a9, a10, a11, a12, a13);
    v16 = (v16 + result);
    v28 = v13 - 8;
    goto LABEL_39;
  }

LABEL_38:
  a4[3] = 0;
  v28 = v13 - 8;
  if (!v14)
  {
    goto LABEL_48;
  }

LABEL_39:
  if (v13 < 9)
  {
LABEL_48:
    a4[4] = 0;
    if (v14 < 9)
    {
      goto LABEL_57;
    }

    goto LABEL_49;
  }

  if (v28 >= 4)
  {
    v29 = 4;
  }

  else
  {
    v29 = v28;
  }

  if (v14 >= 8)
  {
    v30 = 8;
  }

  else
  {
    v30 = v14;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v16, a4 + 4, &v18[a2], a2, v30, v29, a7, a8, a9, a10, a11, a12, a13);
  v16 = (v16 + result);
  if (v14 < 9)
  {
LABEL_57:
    a4[5] = 0;
    v33 = v13 - 12;
    if (!v14)
    {
      goto LABEL_67;
    }

    goto LABEL_58;
  }

LABEL_49:
  if (v13 < 9)
  {
    goto LABEL_57;
  }

  if (v28 >= 4)
  {
    v31 = 4;
  }

  else
  {
    v31 = v28;
  }

  if (v19 >= 8)
  {
    v32 = 8;
  }

  else
  {
    v32 = v14 - 8;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v16, a4 + 5, &v18[a2 + 1], a2, v32, v31, a7, a8, a9, a10, a11, a12, a13);
  v16 = (v16 + result);
  v33 = v13 - 12;
LABEL_58:
  if (v13 >= 0xD)
  {
    if (v33 >= 4)
    {
      v34 = 4;
    }

    else
    {
      v34 = v33;
    }

    if (v14 >= 8)
    {
      v35 = 8;
    }

    else
    {
      v35 = v14;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v16, a4 + 6, (v18 + 12 * a2), a2, v35, v34, a7, a8, a9, a10, a11, a12, a13);
    v16 = (v16 + result);
    if (v14 < 9)
    {
      goto LABEL_78;
    }

    goto LABEL_68;
  }

LABEL_67:
  a4[6] = 0;
  if (v14 < 9)
  {
LABEL_78:
    a4[7] = 0;
    return result;
  }

LABEL_68:
  if (v13 < 0xD)
  {
    goto LABEL_78;
  }

  if (v33 >= 4)
  {
    v36 = 4;
  }

  else
  {
    v36 = v33;
  }

  if (v19 >= 8)
  {
    v37 = 8;
  }

  else
  {
    v37 = v14 - 8;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v16, a4 + 7, (v18 + 12 * a2 + 8), a2, v37, v36, a7, a8, a9, a10, a11, a12, a13);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(uint64_t a1, _BYTE *a2, int16x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13, int8x8_t a14)
{
  v16 = *(a3 + a4);
  v17 = *a3;
  v18 = vzip1_s16(*a3, v16);
  *v23.i8 = vzip2_s16(*a3, v16);
  v19 = (a3 + 2 * a4);
  v20 = *(v19 + a4);
  *v22.i8 = vzip1_s16(*v19, v20);
  *v24.i8 = vzip2_s16(*v19, v20);
  *v21.i8 = v18;
  v21.u64[1] = v18;
  v22.i64[1] = v22.i64[0];
  v23.i64[1] = v23.i64[0];
  v24.i64[1] = v24.i64[0];
  v25 = vdupq_lane_s8(*a3, 0);
  v26 = vsubq_s8(v21, v25);
  v27 = vsubq_s8(v22, v25);
  v28 = vsubq_s8(v23, v25);
  v20.i8[0] = vmaxvq_s8(v26);
  v17.i8[0] = vminvq_s8(v26);
  v29 = vdupq_lane_s8(v20, 0);
  v30 = vdupq_lane_s8(v17, 0);
  v31 = vsubq_s8(v24, v25);
  v32 = vzip1q_s8(v29, v30);
  v33.i64[0] = 0x808080808080808;
  v33.i64[1] = 0x808080808080808;
  v34 = vsubq_s8(v33, vclsq_s8(v32));
  v35 = vbicq_s8(v34, vceqzq_s8(v32));
  v36 = vpmaxq_s8(v35, v35);
  v34.i8[0] = vmaxvq_s8(v27);
  a14.i8[0] = vminvq_s8(v27);
  v37 = vdupq_lane_s8(*v34.i8, 0);
  v38 = vdupq_lane_s8(a14, 0);
  v39 = vmaxq_s8(v29, v37);
  v40 = vminq_s8(v30, v38);
  v41 = vzip1q_s8(v37, v38);
  v42 = vsubq_s8(v33, vclsq_s8(v41));
  v43 = vbicq_s8(v42, vceqzq_s8(v41));
  v44 = vpmaxq_s8(v43, v43);
  v42.i8[0] = vmaxvq_s8(v28);
  v14.i8[0] = vminvq_s8(v28);
  v45 = vdupq_lane_s8(*v42.i8, 0);
  v46 = vdupq_lane_s8(v14, 0);
  v47 = vmaxq_s8(v39, v45);
  v48 = vminq_s8(v40, v46);
  v49 = vzip1q_s8(v45, v46);
  v50 = vsubq_s8(v33, vclsq_s8(v49));
  v51 = vbicq_s8(v50, vceqzq_s8(v49));
  v52 = vpmaxq_s8(v51, v51);
  v50.i8[0] = vmaxvq_s8(v31);
  v15.i8[0] = vminvq_s8(v31);
  v53 = vdupq_lane_s8(*v50.i8, 0);
  v54 = vdupq_lane_s8(v15, 0);
  v55 = vmaxq_s8(v47, v53);
  v56 = vminq_s8(v48, v54);
  v57 = vzip1q_s8(v53, v54);
  v58 = vbicq_s8(vsubq_s8(v33, vclsq_s8(v57)), vceqzq_s8(v57));
  v59 = vpmaxq_s8(v58, v58);
  v60 = vmaxq_s8(vmaxq_s8(v36, v44), vmaxq_s8(v52, v59));
  v61 = vclzq_s8(vsubq_s8(v55, v56));
  v62 = vsubq_s8(v33, v61);
  v63 = vminq_s8(v62, v60);
  if (vmaxvq_s8(v63))
  {
    v64 = 0;
    v65 = 0;
    v66.i64[0] = -1;
    v66.i64[1] = -1;
    v67.i64[0] = 0x707070707070707;
    v67.i64[1] = 0x707070707070707;
    v68 = vcgtq_s8(v60, v62);
    v69 = vandq_s8(vsubq_s8(vshlq_s8(v66, vsubq_s8(v67, v61)), v56), v68);
    v70 = vandq_s8(v68, v33);
    v68.i64[0] = 0x303030303030303;
    v68.i64[1] = 0x303030303030303;
    v71 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v36), v68), 0);
    v72 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v44), v68), 0);
    v73 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v52), v68), 0);
    v74 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v59), v68), 0);
    v75 = vsubq_s8(v63, v71);
    v76 = vsubq_s8(v63, v72);
    v77 = vsubq_s8(v63, v73);
    v78 = vsubq_s8(v63, v74);
    v79 = vceqq_s8(vaddq_s8(v74, v73), vnegq_s8(vaddq_s8(v71, v72)));
    v72.i64[0] = 0x404040404040404;
    v72.i64[1] = 0x404040404040404;
    v80 = vorrq_s8(vbicq_s8(v72, v79), vorrq_s8(vandq_s8(vceqzq_s8(v63), v68), v70));
    if (a5 >= 4 && a6 >= 2)
    {
      v384 = v69;
      v81 = v18.u8[1] - v18.u8[0];
      v82 = v81 << 28 >> 28;
      v83 = v18.u8[2] - v18.u8[0];
      v84.i64[0] = 0xFFFF0000FFFF0000;
      v84.i64[1] = 0xFFFF0000FFFF0000;
      v85 = vmlaq_s8(vandq_s8(vdupq_n_s8(v83 << 28 >> 28), v84), vdupq_n_s8(v82), xmmword_29D2F0D60);
      v86 = vsubq_s8(v26, v85);
      v87 = v83 << 28 >> 27;
      v88 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v87), v27), v85);
      v89 = v81 << 28 >> 26;
      v90 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v89), v28), v85);
      v91 = vaddq_s8(vdupq_n_s8(-(v87 + v89)), v31);
      v92 = vsubq_s8(v91, v85);
      v91.i8[0] = vmaxvq_s8(v86);
      v380 = v88;
      v382 = v86;
      v85.i8[0] = vminvq_s8(v86);
      v93 = vdupq_lane_s8(*v91.i8, 0);
      v94 = vdupq_lane_s8(*v85.i8, 0);
      v95 = vzip1q_s8(v93, v94);
      v96.i64[0] = 0x808080808080808;
      v96.i64[1] = 0x808080808080808;
      v97 = vsubq_s8(v96, vclsq_s8(v95));
      v98 = vbicq_s8(v97, vceqzq_s8(v95));
      v99 = vpmaxq_s8(v98, v98);
      v97.i8[0] = vmaxvq_s8(v88);
      v88.i8[0] = vminvq_s8(v88);
      v100 = vdupq_lane_s8(*v97.i8, 0);
      v101 = vdupq_lane_s8(*v88.i8, 0);
      v102 = vmaxq_s8(v93, v100);
      v103 = vminq_s8(v94, v101);
      v104 = vzip1q_s8(v100, v101);
      v105 = vsubq_s8(v96, vclsq_s8(v104));
      v106 = vbicq_s8(v105, vceqzq_s8(v104));
      v107 = vpmaxq_s8(v106, v106);
      v105.i8[0] = vmaxvq_s8(v90);
      v378 = v90;
      v18.i8[0] = vminvq_s8(v90);
      v108 = vdupq_lane_s8(*v105.i8, 0);
      v109 = vdupq_lane_s8(v18, 0);
      v110 = vmaxq_s8(v102, v108);
      v111 = vminq_s8(v103, v109);
      v112 = vzip1q_s8(v108, v109);
      v113 = vsubq_s8(v96, vclsq_s8(v112));
      v114 = vbicq_s8(v113, vceqzq_s8(v112));
      v115 = vpmaxq_s8(v114, v114);
      v113.i8[0] = vmaxvq_s8(v92);
      v116 = v77;
      v77.i8[0] = vminvq_s8(v92);
      v117 = vdupq_lane_s8(*v113.i8, 0);
      v118 = vdupq_lane_s8(*v77.i8, 0);
      v119 = vmaxq_s8(v110, v117);
      v375 = v31;
      v120 = vminq_s8(v111, v118);
      v121 = vzip1q_s8(v117, v118);
      v122 = vbicq_s8(vsubq_s8(v96, vclsq_s8(v121)), vceqzq_s8(v121));
      v123 = vpmaxq_s8(v122, v122);
      v124 = vmaxq_s8(vmaxq_s8(v99, v107), vmaxq_s8(v115, v123));
      v125 = vclzq_s8(vsubq_s8(v119, v120));
      v126 = vsubq_s8(v96, v125);
      v127 = vcgtq_s8(v124, v126);
      v128 = vminq_s8(v126, v124);
      v118.i64[0] = 0x202020202020202;
      v118.i64[1] = 0x202020202020202;
      v124.i64[0] = 0xA0A0A0A0A0A0A0ALL;
      v124.i64[1] = 0xA0A0A0A0A0A0A0ALL;
      v129 = vbslq_s8(v127, v124, v118);
      v124.i64[0] = 0x101010101010101;
      v124.i64[1] = 0x101010101010101;
      v130 = vmaxq_s8(v128, v124);
      v124.i64[0] = 0x303030303030303;
      v124.i64[1] = 0x303030303030303;
      v131 = vmaxq_s8(vminq_s8(vsubq_s8(v130, v99), v124), 0);
      v132 = vmaxq_s8(vminq_s8(vsubq_s8(v130, v107), v124), 0);
      v133 = vmaxq_s8(vminq_s8(vsubq_s8(v130, v115), v124), 0);
      v134 = vmaxq_s8(vminq_s8(vsubq_s8(v130, v123), v124), 0);
      v135 = vsubq_s8(v130, v131);
      v136 = vsubq_s8(v130, v132);
      v137 = vsubq_s8(v130, v133);
      v138 = vsubq_s8(v130, v134);
      v139 = vceqq_s8(vaddq_s8(v134, v133), vnegq_s8(vaddq_s8(v131, v132)));
      v131.i64[0] = 0x404040404040404;
      v131.i64[1] = 0x404040404040404;
      v140 = vorrq_s8(vbicq_s8(v131, v139), v129);
      v141.i64[0] = 0x8000800080008;
      v141.i64[1] = 0x8000800080008;
      v142 = vmovl_u8(*v80.i8);
      v143 = *&v142 & __PAIR128__(0xFFF8FFF8FFF8FFF8, 0xFFF8FFF8FFF8FFF8);
      v385 = vmovl_s8(*v63.i8);
      v144 = *&vshll_n_u8(*v80.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9);
      v145 = *&v142 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3);
      v146.i64[0] = 0x2000200020002;
      v146.i64[1] = 0x2000200020002;
      v147 = vshll_n_s8(vadd_s8(vadd_s8(*v116.i8, *v76.i8), *v78.i8), 3uLL);
      v148 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(v385, vceqzq_s16(v143)), v144), vandq_s8(vceqq_s16(v145, v146), v141)), *v75.i8, 0x707070707070707), v147), vaddq_s16(vmlal_s8(vaddl_u8(vbic_s8(*v130.i8, vcgt_u8(0x808080808080808, *v140.i8)), vand_s8(vadd_s8(*v140.i8, *v140.i8), 0x808080808080808)), *v135.i8, 0x707070707070707), vaddq_s16(vshll_n_s8(vadd_s8(vadd_s8(*v137.i8, *v136.i8), *v138.i8), 3uLL), v141)))), 0);
      v146.i16[0] = vaddlvq_s8(v148);
      v149 = v82 & 0xF | (16 * v83);
      v150 = v146.u16[0];
      if (v146.i16[0])
      {
        v151.i64[0] = 0x707070707070707;
        v151.i64[1] = 0x707070707070707;
        v152 = vsubq_s8(v151, v125);
        v153.i64[0] = -1;
        v153.i64[1] = -1;
        v154 = vandq_s8(vsubq_s8(vshlq_s8(v153, v152), v120), v127);
        v377 = vbslq_s8(v148, v382, v26);
        v383 = vbslq_s8(v148, v380, v27);
        v28 = vbslq_s8(v148, v378, v28);
        v31 = vbslq_s8(v148, v92, v375);
        v75 = vbslq_s8(v148, v135, v75);
        v69 = vbslq_s8(v148, v154, v384);
        v63 = vbslq_s8(v148, v130, v63);
        v80 = vbslq_s8(v148, v140, v80);
        v155 = vmovl_u8(*v80.i8);
        v143 = *&v155 & __PAIR128__(0xFFF8FFF8FFF8FFF8, 0xFFF8FFF8FFF8FFF8);
        v385 = vmovl_s8(*v63.i8);
        v144 = *&vshll_n_u8(*v80.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9);
        v145 = *&v155 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3);
        v156 = vmull_s8(*v75.i8, 0x707070707070707);
        v379 = vbslq_s8(v148, v137, v116);
        v381 = vbslq_s8(v148, v138, v78);
        v376 = vbslq_s8(v148, v136, v76);
        v147 = vshll_n_s8(vadd_s8(vadd_s8(*v379.i8, *v376.i8), *v381.i8), 3uLL);
      }

      else
      {
        v376 = v76;
        v377 = v26;
        v379 = v116;
        v381 = v78;
        v383 = v27;
        v156 = vmull_s8(*v75.i8, 0x707070707070707);
        v31 = v375;
        v69 = v384;
      }

      v65 = v149;
      v158 = vsubq_s8(v21, vqtbl1q_s8(v21, xmmword_29D2F0DF0));
      v159 = v22;
      v159.i8[7] = v21.i8[7];
      v160 = vsubq_s8(v22, vqtbl1q_s8(v159, xmmword_29D2F0E00));
      v161 = v23;
      v161.i8[7] = v21.i8[7];
      v162 = vsubq_s8(v23, vqtbl1q_s8(v161, xmmword_29D2F0E10));
      v163 = v24;
      v163.i8[7] = v21.i8[7];
      v164 = vqtbl1q_s8(v163, xmmword_29D2F0E20);
      v165 = vsubq_s8(v24, v164);
      v166 = v158;
      v166.i8[0] = v158.i8[7];
      v166.i8[7] = v158.i8[0];
      v158.i8[0] = vmaxvq_s8(v166);
      v164.i8[0] = vminvq_s8(v166);
      v167 = vdupq_lane_s8(*v158.i8, 0);
      v168 = vdupq_lane_s8(*v164.i8, 0);
      v169 = vzip1q_s8(v167, v168);
      v170.i64[0] = 0x808080808080808;
      v170.i64[1] = 0x808080808080808;
      v171 = vsubq_s8(v170, vclsq_s8(v169));
      v172 = vbicq_s8(v171, vceqzq_s8(v169));
      v173 = vpmaxq_s8(v172, v172);
      v171.i8[0] = vmaxvq_s8(v160);
      v137.i8[0] = vminvq_s8(v160);
      v174 = vdupq_lane_s8(*v171.i8, 0);
      v175 = vdupq_lane_s8(*v137.i8, 0);
      v176 = vmaxq_s8(v167, v174);
      v177 = vminq_s8(v168, v175);
      v178 = vzip1q_s8(v174, v175);
      v179 = vsubq_s8(v170, vclsq_s8(v178));
      v180 = vbicq_s8(v179, vceqzq_s8(v178));
      v181 = vpmaxq_s8(v180, v180);
      v180.i8[0] = vmaxvq_s8(v162);
      v179.i8[0] = vminvq_s8(v162);
      v182 = vdupq_lane_s8(*v180.i8, 0);
      v183 = vdupq_lane_s8(*v179.i8, 0);
      v184 = vmaxq_s8(v176, v182);
      v185 = vminq_s8(v177, v183);
      v186 = vzip1q_s8(v182, v183);
      v187 = vsubq_s8(v170, vclsq_s8(v186));
      v188 = vbicq_s8(v187, vceqzq_s8(v186));
      v189 = vpmaxq_s8(v188, v188);
      v188.i8[0] = vmaxvq_s8(v165);
      v187.i8[0] = vminvq_s8(v165);
      v190 = vdupq_lane_s8(*v188.i8, 0);
      v191 = vdupq_lane_s8(*v187.i8, 0);
      v192 = vmaxq_s8(v184, v190);
      v193 = vminq_s8(v185, v191);
      v194 = vzip1q_s8(v190, v191);
      v195 = vbicq_s8(vsubq_s8(v170, vclsq_s8(v194)), vceqzq_s8(v194));
      v196 = vpmaxq_s8(v195, v195);
      v197 = vmaxq_s8(vmaxq_s8(v173, v181), vmaxq_s8(v189, v196));
      v198 = vclzq_s8(vsubq_s8(v192, v193));
      v199 = vsubq_s8(v170, v198);
      v200 = vcgtq_s8(v197, v199);
      v201 = vminq_s8(v199, v197);
      v199.i64[0] = 0x909090909090909;
      v199.i64[1] = 0x909090909090909;
      v170.i64[0] = 0x202020202020202;
      v170.i64[1] = 0x202020202020202;
      v202 = vorrq_s8(vandq_s8(vceqzq_s8(v201), v170), vsubq_s8(vandq_s8(v200, v199), vmvnq_s8(v200)));
      v199.i64[0] = 0x303030303030303;
      v199.i64[1] = 0x303030303030303;
      v203 = vmaxq_s8(vminq_s8(vsubq_s8(v201, v173), v199), 0);
      v204 = vmaxq_s8(vminq_s8(vsubq_s8(v201, v181), v199), 0);
      v205 = vmaxq_s8(vminq_s8(vsubq_s8(v201, v189), v199), 0);
      v206 = vmaxq_s8(vminq_s8(vsubq_s8(v201, v196), v199), 0);
      v207 = vsubq_s8(v201, v203);
      v208 = vsubq_s8(v201, v204);
      v209 = vsubq_s8(v201, v205);
      v210 = vsubq_s8(v201, v206);
      v170.i64[0] = 0x404040404040404;
      v170.i64[1] = 0x404040404040404;
      v211 = vorrq_s8(vbicq_s8(v170, vceqq_s8(vaddq_s8(v206, v205), vnegq_s8(vaddq_s8(v203, v204)))), v202);
      v170.i64[0] = 0x2000200020002;
      v170.i64[1] = 0x2000200020002;
      v212 = vceqq_s16(v145, v170);
      v170.i64[0] = 0x8000800080008;
      v170.i64[1] = 0x8000800080008;
      v213 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v385, vceqzq_s16(v143)), v144), vaddq_s16(vandq_s8(v212, v170), v156)), v147), vaddq_s16(vmlal_s8(vaddw_u8(vmovl_s8(vbic_s8(*v201.i8, vcgt_u8(0x808080808080808, *v211.i8))), vand_s8(vadd_s8(*v211.i8, *v211.i8), 0x808080808080808)), *v207.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v209.i8, *v208.i8), *v210.i8), 3uLL)))), 0);
      v203.i16[0] = vaddlvq_s8(v213);
      v214 = v203.u16[0];
      if (v203.i16[0])
      {
        v215.i64[0] = 0x707070707070707;
        v215.i64[1] = 0x707070707070707;
        v216 = vsubq_s8(v215, v198);
        v217.i64[0] = -1;
        v217.i64[1] = -1;
        v25.i8[0] = vbslq_s8(v213, vextq_s8(v21, v21, 0xFuLL), v25).u8[0];
        v26 = vbslq_s8(v213, v166, v377);
        v27 = vbslq_s8(v213, v160, v383);
        v28 = vbslq_s8(v213, v162, v28);
        v31 = vbslq_s8(v213, v165, v31);
        v75 = vbslq_s8(v213, v207, v75);
        v76 = vbslq_s8(v213, v208, v376);
        v77 = vbslq_s8(v213, v209, v379);
        v78 = vbslq_s8(v213, v210, v381);
        v69 = vbslq_s8(v213, vandq_s8(vsubq_s8(vshlq_s8(v217, v216), v193), v200), v69);
        v63 = vbslq_s8(v213, v201, v63);
        v80 = vbslq_s8(v213, v211, v80);
      }

      else
      {
        v78 = v381;
        v27 = v383;
        v26 = v377;
        v77 = v379;
        v76 = v376;
      }

      if (v150)
      {
        v218 = v214 == 0;
      }

      else
      {
        v218 = 0;
      }

      v64 = v218;
    }

    v219 = vmovl_s8(*v80.i8);
    v220.i64[0] = 0x8000800080008;
    v220.i64[1] = 0x8000800080008;
    v221.i64[0] = 0x3000300030003;
    v221.i64[1] = 0x3000300030003;
    v222.i64[0] = 0x2000200020002;
    v222.i64[1] = 0x2000200020002;
    if (((vbicq_s8(vmovl_s8(*v63.i8), vceqzq_s16(vandq_s8(v219, v220))).u16[0] + ((2 * v219.i16[0]) & 8) + vandq_s8(vceqq_s16(vandq_s8(v219, v221), v222), v220).u16[0] - v75.i8[0] + 8 * v75.i8[0] + 8 * vaddq_s8(vaddq_s8(v77, v76), v78).i8[0]) - 181) <= 0xFFFFFFFFFFFFFF37)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 24;
    }

    else
    {
      v223 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v224 = 8 * (a1 & 7);
      if (v224)
      {
        v225 = *v223 & ~(-1 << v224);
      }

      else
      {
        v225 = 0;
      }

      v226 = vextq_s8(v75, 0, 8uLL);
      v227 = vextq_s8(v76, 0, 8uLL);
      v228 = vextq_s8(v77, 0, 8uLL);
      v229 = vextq_s8(v78, 0, 8uLL);
      if (v63.i8[0])
      {
        v230 = (16 * v63.i8[0] + 112) & 0x70;
      }

      else
      {
        v230 = 0;
      }

      *a2 = 32 * v80.i8[0];
      v231 = (v230 & 0xFFFF807F | v80.i8[0] & 8 | (v25.u8[0] << 7)) >> 3;
      v232 = (v231 << v224) | v225;
      if (v224 >= 0x34)
      {
        *v223 = v232;
        v232 = v231 >> (-8 * (a1 & 7u));
      }

      v233 = v224 + 12;
      v234.i64[0] = 0x202020202020202;
      v234.i64[1] = 0x202020202020202;
      v235 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*v219.i8, 0x4000400040004)))), v234);
      v234.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v234.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v236.i64[0] = -1;
      v236.i64[1] = -1;
      v237 = vandq_s8(vshlq_u8(v236, vorrq_s8(v235, v234)), vzip1q_s16(vzip1q_s8(vsubq_s8(v63, v226), vsubq_s8(v63, v227)), vzip1q_s8(vsubq_s8(v63, v228), vsubq_s8(v63, v229))).u32[0]);
      v238 = vmovl_u8(*v235.i8);
      v239 = vpaddq_s16(vshlq_u16(vmovl_u8(*v237.i8), vtrn1q_s16(0, v238)), vmovl_high_u8(v237));
      v240 = vpaddq_s16(v238, vmovl_high_u8(v235));
      v241 = vmovl_u16(*v240.i8);
      v242 = vmovl_high_u16(v240);
      v243 = vpaddq_s32(vshlq_u32(vmovl_u16(*v239.i8), vtrn1q_s32(0, v241)), vshlq_u32(vmovl_high_u16(v239), vtrn1q_s32(0, v242)));
      v244 = vpaddq_s32(v241, v242);
      v245.i64[0] = v243.u32[0];
      v245.i64[1] = v243.u32[1];
      v246 = v245;
      v245.i64[0] = v243.u32[2];
      v245.i64[1] = v243.u32[3];
      v247 = v245;
      v245.i64[0] = v244.u32[0];
      v245.i64[1] = v244.u32[1];
      v248 = v245;
      v245.i64[0] = v244.u32[2];
      v245.i64[1] = v244.u32[3];
      v249 = vpaddq_s64(vshlq_u64(v246, vzip1q_s64(0, v248)), vshlq_u64(v247, vzip1q_s64(0, v245)));
      v250 = vpaddq_s64(v248, v245);
      v251 = (v224 + 12) & 0x3C;
      v252 = (v249.i64[0] << v251) | v232;
      if ((v250.i64[0] + v251) >= 0x40)
      {
        *(v223 + ((v233 >> 3) & 8)) = v252;
        v252 = v249.i64[0] >> -v251;
      }

      v253 = v250.i64[0] + v233;
      v254 = v252 | (v249.i64[1] << v253);
      if ((v253 & 0x3F) + v250.i64[1] >= 0x40)
      {
        *(v223 + ((v253 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v254;
        v254 = v249.i64[1] >> -(v253 & 0x3F);
        if ((v253 & 0x3F) == 0)
        {
          v254 = 0;
        }
      }

      v255 = vceqq_s8(v63, v75);
      v256 = v253 + v250.i64[1];
      v257.i64[0] = 0x808080808080808;
      v257.i64[1] = 0x808080808080808;
      v258.i64[0] = -1;
      v258.i64[1] = -1;
      v259 = vandq_s8(vextq_s8(vtstq_s8(v80, v257), 0, 0xFuLL), v63);
      v260.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v260.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v261 = vandq_s8(vshlq_u8(v258, vaddq_s8(v259, v260)), v69);
      v262 = vmovl_u8(*v259.i8);
      v263 = vpaddq_s16(vshlq_u16(vmovl_u8(*v261.i8), vtrn1q_s16(0, v262)), vmovl_high_u8(v261));
      v264 = vpaddq_s16(v262, vmovl_high_u8(v259));
      v265 = vmovl_u16(*v264.i8);
      v266 = vmovl_high_u16(v264);
      v267 = vpaddq_s32(vshlq_u32(vmovl_u16(*v263.i8), vtrn1q_s32(0, v265)), vshlq_u32(vmovl_high_u16(v263), vtrn1q_s32(0, v266)));
      v268 = vpaddq_s32(v265, v266);
      v269.i64[0] = v267.u32[0];
      v269.i64[1] = v267.u32[1];
      v270 = v269;
      v269.i64[0] = v267.u32[2];
      v269.i64[1] = v267.u32[3];
      v271 = v269;
      v269.i64[0] = v268.u32[0];
      v269.i64[1] = v268.u32[1];
      v272 = v269;
      v269.i64[0] = v268.u32[2];
      v269.i64[1] = v268.u32[3];
      v273 = vpaddq_s64(vshlq_u64(v270, vzip1q_s64(0, v272)), vshlq_u64(v271, vzip1q_s64(0, v269)));
      v274 = vpaddq_s64(v272, v269);
      v275 = (v273.i64[0] << v256) | v254;
      if (v274.i64[0] + (v256 & 0x3F) >= 0x40)
      {
        *(v223 + ((v256 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v275;
        v275 = v273.i64[0] >> -(v256 & 0x3F);
        if ((v256 & 0x3F) == 0)
        {
          v275 = 0;
        }
      }

      v276 = vandq_s8(v69, v255);
      v277 = v274.i64[0] + v256;
      v278 = v275 | (v273.i64[1] << v277);
      if ((v277 & 0x3F) + v274.i64[1] >= 0x40)
      {
        *(v223 + ((v277 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v278;
        v278 = v273.i64[1] >> -(v277 & 0x3F);
        if ((v277 & 0x3F) == 0)
        {
          v278 = 0;
        }
      }

      v279 = vceqq_s8(v63, v76);
      v280 = vaddq_s8(v276, v26);
      v281 = v277 + v274.i64[1];
      if (v64)
      {
        v278 |= v65 << v281;
        if ((v281 & 0x3F) >= 0x38)
        {
          *(v223 + ((v281 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v278;
          v278 = v65 >> -(v281 & 0x3F);
        }

        v281 += 8;
      }

      v282 = vandq_s8(v69, v279);
      v283 = vmovl_high_u8(v226);
      v226.i8[0] = 0;
      v284.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v284.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v285.i64[0] = -1;
      v285.i64[1] = -1;
      v286 = vandq_s8(vshlq_u8(v285, vaddq_s8(v226, v284)), v280);
      v287 = vmovl_u8(*v226.i8);
      v288 = vpaddq_s16(vshlq_u16(vmovl_u8(*v286.i8), vtrn1q_s16(0, v287)), vshlq_u16(vmovl_high_u8(v286), vtrn1q_s16(0, v283)));
      v289 = vpaddq_s16(v287, v283);
      v290 = vmovl_u16(*v289.i8);
      v291 = vmovl_high_u16(v289);
      v292 = vpaddq_s32(vshlq_u32(vmovl_u16(*v288.i8), vtrn1q_s32(0, v290)), vshlq_u32(vmovl_high_u16(v288), vtrn1q_s32(0, v291)));
      v293 = vpaddq_s32(v290, v291);
      v294.i64[0] = v292.u32[0];
      v294.i64[1] = v292.u32[1];
      v295 = v294;
      v294.i64[0] = v292.u32[2];
      v294.i64[1] = v292.u32[3];
      v296 = v294;
      v294.i64[0] = v293.u32[0];
      v294.i64[1] = v293.u32[1];
      v297 = v294;
      v294.i64[0] = v293.u32[2];
      v294.i64[1] = v293.u32[3];
      v298 = vpaddq_s64(vshlq_u64(v295, vzip1q_s64(0, v297)), vshlq_u64(v296, vzip1q_s64(0, v294)));
      v299 = vpaddq_s64(v297, v294);
      v300 = (v298.i64[0] << v281) | v278;
      if (v299.i64[0] + (v281 & 0x3F) >= 0x40)
      {
        *(v223 + ((v281 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v300;
        v300 = v298.i64[0] >> -(v281 & 0x3F);
        if ((v281 & 0x3F) == 0)
        {
          v300 = 0;
        }
      }

      v301 = vceqq_s8(v63, v77);
      v302 = vaddq_s8(v27, v282);
      v303 = v299.i64[0] + v281;
      v304 = (v299.i64[0] + v281) & 0x3F;
      v305 = v300 | (v298.i64[1] << v303);
      if ((v303 & 0x3F) + v299.i64[1] >= 0x40)
      {
        *(v223 + ((v303 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v305;
        v305 = v298.i64[1] >> -v304;
        if (!v304)
        {
          v305 = 0;
        }
      }

      v306 = vandq_s8(v69, v301);
      v307 = v303 + v299.i64[1];
      v308.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v308.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v309.i64[0] = -1;
      v309.i64[1] = -1;
      v310 = vandq_s8(vshlq_u8(v309, vaddq_s8(v227, v308)), v302);
      v311 = vmovl_u8(*v227.i8);
      v312 = vmovl_high_u8(v227);
      v313 = vpaddq_s16(vshlq_u16(vmovl_u8(*v310.i8), vtrn1q_s16(0, v311)), vshlq_u16(vmovl_high_u8(v310), vtrn1q_s16(0, v312)));
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
      v325 = (v323.i64[0] << v307) | v305;
      if (v324.i64[0] + (v307 & 0x3F) >= 0x40)
      {
        *(v223 + ((v307 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v325;
        v325 = v323.i64[0] >> -(v307 & 0x3F);
        if ((v307 & 0x3F) == 0)
        {
          v325 = 0;
        }
      }

      v326 = vceqq_s8(v63, v78);
      v327 = vaddq_s8(v28, v306);
      v328 = v324.i64[0] + v307;
      v329 = v325 | (v323.i64[1] << v328);
      if ((v328 & 0x3F) + v324.i64[1] >= 0x40)
      {
        *(v223 + ((v328 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v329;
        v329 = v323.i64[1] >> -(v328 & 0x3F);
        if ((v328 & 0x3F) == 0)
        {
          v329 = 0;
        }
      }

      v330 = vandq_s8(v69, v326);
      v331 = v328 + v324.i64[1];
      v332.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v332.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v333.i64[0] = -1;
      v333.i64[1] = -1;
      v334 = vandq_s8(vshlq_u8(v333, vaddq_s8(v228, v332)), v327);
      v335 = vmovl_u8(*v228.i8);
      v336 = vmovl_high_u8(v228);
      v337 = vpaddq_s16(vshlq_u16(vmovl_u8(*v334.i8), vtrn1q_s16(0, v335)), vshlq_u16(vmovl_high_u8(v334), vtrn1q_s16(0, v336)));
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
      v349 = (v347.i64[0] << v331) | v329;
      if (v348.i64[0] + (v331 & 0x3F) >= 0x40)
      {
        *(v223 + ((v331 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v349;
        v349 = v347.i64[0] >> -(v331 & 0x3F);
        if ((v331 & 0x3F) == 0)
        {
          v349 = 0;
        }
      }

      v350 = vaddq_s8(v31, v330);
      v351 = v348.i64[0] + v331;
      v352 = v349 | (v347.i64[1] << v351);
      if ((v351 & 0x3F) + v348.i64[1] >= 0x40)
      {
        *(v223 + ((v351 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v352;
        v352 = v347.i64[1] >> -(v351 & 0x3F);
        if ((v351 & 0x3F) == 0)
        {
          v352 = 0;
        }
      }

      v353 = v351 + v348.i64[1];
      v354.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v354.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v355.i64[0] = -1;
      v355.i64[1] = -1;
      v356 = vandq_s8(vshlq_u8(v355, vaddq_s8(v229, v354)), v350);
      v357 = vmovl_u8(*v229.i8);
      v358 = vmovl_high_u8(v229);
      v359 = vpaddq_s16(vshlq_u16(vmovl_u8(*v356.i8), vtrn1q_s16(0, v357)), vshlq_u16(vmovl_high_u8(v356), vtrn1q_s16(0, v358)));
      v360 = vpaddq_s16(v357, v358);
      v361 = vmovl_u16(*v360.i8);
      v362 = vmovl_high_u16(v360);
      v363 = vpaddq_s32(vshlq_u32(vmovl_u16(*v359.i8), vtrn1q_s32(0, v361)), vshlq_u32(vmovl_high_u16(v359), vtrn1q_s32(0, v362)));
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
      v371 = (v369.i64[0] << v353) | v352;
      if (v370.i64[0] + (v353 & 0x3F) > 0x3F)
      {
        *(v223 + ((v353 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v371;
        if ((v353 & 0x3F) != 0)
        {
          v371 = v369.i64[0] >> -(v353 & 0x3F);
        }

        else
        {
          v371 = 0;
        }
      }

      v372 = v370.i64[0] + v353;
      v373 = v371 | (v369.i64[1] << v372);
      if ((v372 & 0x3F) + v370.i64[1] >= 0x40)
      {
        *(v223 + ((v372 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v373;
        v373 = v369.i64[1] >> -(v372 & 0x3F);
        if ((v372 & 0x3F) == 0)
        {
          v373 = 0;
        }
      }

      v374 = v372 + v370.i64[1];
      if ((v374 & 0x3F) != 0)
      {
        *(v223 + ((v374 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v373;
      }

      result = (v374 - v224 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = a3->i8[0];
    *a2 = 96;
    return 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v67 = *MEMORY[0x29EDCA608];
  v65 = 0u;
  v66 = 0u;
  if (!a6 || !a5)
  {
    goto LABEL_30;
  }

  if (a5 <= 1)
  {
    v10 = 0;
    if (a6 >= 8 && a4 == 1)
    {
      if (a6 < 0x20)
      {
        v10 = 0;
        goto LABEL_25;
      }

      v10 = a6 & 0xE0;
      v33 = (a3 + 16);
      v34 = &v66;
      v35 = v10;
      do
      {
        v36 = *v33;
        *(v34 - 1) = *(v33 - 1);
        *v34 = v36;
        v33 += 2;
        v34 += 2;
        v35 -= 32;
      }

      while (v35);
      if (v10 == a6)
      {
        goto LABEL_30;
      }

      if ((a6 & 0x18) != 0)
      {
LABEL_25:
        v37 = v10;
        v10 = a6 & 0xF8;
        v38 = (a3 + v37);
        v39 = (&v65 + v37);
        v40 = v37 - v10;
        do
        {
          v41 = *v38++;
          *v39++ = v41;
          v40 += 8;
        }

        while (v40);
        if (v10 == a6)
        {
          goto LABEL_30;
        }
      }
    }

    v42 = a6 - v10;
    v43 = &v65 + v10;
    v44 = (a3 + v10 * a4);
    do
    {
      *v43++ = *v44;
      v44 += a4;
      --v42;
    }

    while (v42);
    goto LABEL_30;
  }

  v11 = a5 & 0x7E;
  if (a5 == v11)
  {
    v12 = 0;
    v13 = &v65 + 4;
    v14 = (a3 + 1);
    do
    {
      v15 = v14;
      v16 = v13;
      v17 = a5;
      do
      {
        v18 = *(v15 - 1);
        v19 = *v15;
        v15 += 2;
        *(v16 - 4) = v18;
        *v16 = v19;
        v16 += 8;
        v17 -= 2;
      }

      while (v17);
      ++v12;
      ++v13;
      v14 += a4;
    }

    while (v12 != a6);
  }

  else
  {
    v20 = 0;
    v21 = &v65 + 4;
    v22 = (a3 + 1);
    v23 = &v65 + 8 * ((a5 >> 1) & 0x3F);
    do
    {
      v24 = v22;
      v25 = v21;
      v26 = a5 & 0x7E;
      do
      {
        v27 = *(v24 - 1);
        v28 = *v24;
        v24 += 2;
        *(v25 - 4) = v27;
        *v25 = v28;
        v25 += 8;
        v26 -= 2;
      }

      while (v26);
      v29 = (a3 + v20 * a4 + v11);
      v30 = v23;
      v31 = a5 - v11;
      do
      {
        v32 = *v29++;
        *v30 = v32;
        v30 += 4;
        --v31;
      }

      while (v31);
      ++v20;
      ++v21;
      v22 += a4;
      ++v23;
    }

    while (v20 != a6);
  }

LABEL_30:
  v60.i32[0] = v65;
  v60.i32[1] = BYTE4(v65);
  v60.i32[2] = BYTE1(v65);
  v60.i32[3] = BYTE5(v65);
  v61 = BYTE8(v65);
  v62 = BYTE12(v65);
  if (a5 >= 4)
  {
    v45 = 4;
  }

  else
  {
    v45 = a5;
  }

  if (a5 >= 4)
  {
    v46 = a5 - 4;
  }

  else
  {
    v46 = 0;
  }

  v63 = BYTE9(v65);
  v64 = BYTE13(v65);
  if (a6 >= 2)
  {
    v47 = 2;
  }

  else
  {
    v47 = a6;
  }

  if (a6 >= 2)
  {
    v48 = a6 - 2;
  }

  else
  {
    v48 = 0;
  }

  v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1, &v60, a7, v45, v47);
  v60.i32[0] = BYTE2(v65);
  v60.i32[1] = BYTE6(v65);
  v60.i32[2] = BYTE3(v65);
  v60.i32[3] = BYTE7(v65);
  v61 = BYTE10(v65);
  v62 = BYTE14(v65);
  v63 = BYTE11(v65);
  v64 = HIBYTE(v65);
  if (a6 >= 4)
  {
    v51 = 2;
  }

  else
  {
    v51 = v48;
  }

  v52 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 6, &v60, a7, v45, v51);
  v60.i32[0] = v66;
  v60.i32[1] = BYTE4(v66);
  v60.i32[2] = BYTE1(v66);
  v60.i32[3] = BYTE5(v66);
  v61 = BYTE8(v66);
  v62 = BYTE12(v66);
  if (a5 >= 8)
  {
    v53 = 4;
  }

  else
  {
    v53 = v46;
  }

  v63 = BYTE9(v66);
  v64 = BYTE13(v66);
  v54 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 12, &v60, a7, v53, v47);
  v60.i32[0] = BYTE2(v66);
  v60.i32[1] = BYTE6(v66);
  v60.i32[2] = BYTE3(v66);
  v60.i32[3] = BYTE7(v66);
  v61 = BYTE10(v66);
  v62 = BYTE14(v66);
  v63 = BYTE11(v66);
  v64 = HIBYTE(v66);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 18, &v60, a7, v53, v51);
  if (v54)
  {
    v56 = 4;
  }

  else
  {
    v56 = 0;
  }

  if (v52)
  {
    v57 = 2;
  }

  else
  {
    v57 = 0;
  }

  if (result)
  {
    v58 = -8;
  }

  else
  {
    v58 = -16;
  }

  *a2 = v58 | v56 | v50 | v57;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(uint64_t a1, int8x16_t *a2, int a3, unsigned int a4, unsigned int a5)
{
  v120 = *MEMORY[0x29EDCA608];
  if (a3 == 1)
  {
    v9.i64[0] = 0x8000000080;
    v9.i64[1] = 0x8000000080;
    v10.i64[0] = 0x8100000081;
    v10.i64[1] = 0x8100000081;
    v7 = vbicq_s8(veorq_s8(*a2, v9), vceqq_s32(*a2, v10));
    v8 = vbicq_s8(veorq_s8(a2[1], v9), vceqq_s32(a2[1], v10));
    goto LABEL_5;
  }

  if (a3 == 3)
  {
    v6.i64[0] = 0x8000000080;
    v6.i64[1] = 0x8000000080;
    v7 = veorq_s8(*a2, v6);
    v8 = veorq_s8(a2[1], v6);
LABEL_5:
    v118 = v7;
    v119 = v8;
    v11 = v7.i32[0];
    goto LABEL_7;
  }

  v12 = a2[1];
  v118 = *a2;
  v119 = v12;
  v11 = v118.i32[0];
LABEL_7:
  if (a4)
  {
    v13 = a5 != 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = a4 > 1 && a5 != 0;
  if (v14)
  {
    v15 = v118.u32[1];
    v16 = v118.i32[1] < v11;
    if (v118.i32[1] >= v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = v118.u32[1];
    }

    if (v11 > v118.i32[1])
    {
      v15 = v11;
    }
  }

  else
  {
    v16 = 0;
    v15 = v11;
    v17 = v11;
  }

  v18 = a5 <= 1 || a4 == 0;
  v19 = !v18;
  if (!v18)
  {
    if (v118.i32[2] < v17)
    {
      v16 = 2;
      v17 = v118.u32[2];
    }

    if (v15 <= v118.i32[2])
    {
      v15 = v118.u32[2];
    }
  }

  v21 = a5 > 1 && a4 > 1;
  if (v21)
  {
    if (v118.i32[3] < v17)
    {
      v16 = 3;
      v17 = v118.u32[3];
    }

    if (v15 <= v118.i32[3])
    {
      v15 = v118.u32[3];
    }
  }

  if (a5)
  {
    v22 = a4 > 2;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  if (v23 == 1)
  {
    if (v119.i32[0] < v17)
    {
      v16 = 4;
      v17 = v119.i32[0];
    }

    if (v15 <= v119.i32[0])
    {
      v15 = v119.i32[0];
    }
  }

  if (a5)
  {
    v24 = a4 > 3;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;
  if (v25 == 1)
  {
    if (v119.i32[1] < v17)
    {
      v16 = 5;
      v17 = v119.u32[1];
    }

    if (v15 <= v119.i32[1])
    {
      v15 = v119.u32[1];
    }
  }

  v27 = a5 > 1 && a4 > 2;
  if (v27)
  {
    if (v119.i32[2] < v17)
    {
      v16 = 6;
      v17 = v119.u32[2];
    }

    if (v15 <= v119.i32[2])
    {
      v15 = v119.u32[2];
    }
  }

  v29 = a5 > 1 && a4 > 3;
  if (v29)
  {
    if (v119.i32[3] < v17)
    {
      v16 = 7;
      v17 = v119.u32[3];
    }

    if (v15 <= v119.i32[3])
    {
      v15 = v119.u32[3];
    }
  }

  v30 = __clz(v15 - v17);
  if (v15)
  {
    v31 = v15 == 255;
  }

  else
  {
    v31 = 1;
  }

  v32 = !v31;
  v33 = v15 - v17;
  if (v15 != v17)
  {
    v32 = 33 - v30;
  }

  if ((a3 | 2) == 3)
  {
    v34 = 0;
    if (v17 <= 0x7F && v15 >= 0x80)
    {
      v34 = kDQuadParamTable[10 * v32 + 8] == 0;
    }

    if (v32 > 5)
    {
      goto LABEL_103;
    }

LABEL_102:
    if (!v34)
    {
      goto LABEL_111;
    }

    goto LABEL_103;
  }

  v34 = 0;
  if (v32 <= 5)
  {
    goto LABEL_102;
  }

LABEL_103:
  v35 = kDQuadParamTable[10 * v32 + 4];
  v36 = v35 + 2;
  if (v34)
  {
    v37 = 0;
  }

  else
  {
    v37 = -2;
  }

  v38 = v17 & ~(-1 << (6 - v35));
  if (v36 >= 8)
  {
    v38 = 0;
  }

  v39 = v38 + v37;
  if (v39 >= 1 && __clz(v39 + v33) < v30)
  {
    ++v32;
  }

LABEL_111:
  v40 = v32;
  v43 = &kDQuadParamTable[10 * v32];
  v41 = *(v43 + 8);
  v42 = *(v43 + 20);
  LODWORD(v43) = v42 + 2;
  if (a3 == 4)
  {
    result = 1;
  }

  else
  {
    if (a4)
    {
      v45 = a5 == 0;
    }

    else
    {
      v45 = 1;
    }

    result = v45 || v41 >> v43 > 0x10;
  }

  v47 = 0;
  v48 = 0;
  v49 = kDQuadParamTable[10 * v32 + 4] + 2;
  if (v49 >= 8)
  {
    v50 = 8;
  }

  else
  {
    v50 = v49;
  }

  v51 = 8 * (v42 != 0);
  if (v51 >= v43)
  {
    v43 = v43;
  }

  else
  {
    v43 = v51;
  }

  v52 = (-1 << (8 - v50)) & v17;
  v53 = v11 - v52;
  if (!v13)
  {
    v53 = 0;
  }

  v18 = !v14;
  v54 = v118.i32[1] - v52;
  if (v18)
  {
    v54 = 0;
  }

  v117[0] = v53;
  v117[1] = v54;
  memset(v115, 0, sizeof(v115));
  v116 = 0;
  v55 = v41 >> v43;
  v56 = v118.i32[2] - v52;
  if (!v19)
  {
    v56 = 0;
  }

  v57 = v118.i32[3] - v52;
  if (!v21)
  {
    v57 = 0;
  }

  v117[2] = v56;
  v117[3] = v57;
  v58 = v119.i32[0] - v52;
  if (!v23)
  {
    v58 = 0;
  }

  v59 = v119.i32[1] - v52;
  if (!v25)
  {
    v59 = 0;
  }

  v117[4] = v58;
  v117[5] = v59;
  v60 = v119.i32[2] - v52;
  if (!v27)
  {
    v60 = 0;
  }

  v61 = v119.i32[3] - v52;
  if (!v29)
  {
    v61 = 0;
  }

  v117[6] = v60;
  v117[7] = v61;
  if (v55 <= 1)
  {
    v62 = 1;
  }

  else
  {
    v62 = v41 >> v43;
  }

  v63 = v16;
  v64 = 4 * v16;
  v65 = &byte_29D2F3081;
  do
  {
    if (v64 != v47)
    {
      if (v43)
      {
        v66 = v117[v47 / 4] / v62;
      }

      else
      {
        LODWORD(v66) = 0;
      }

      *(v115 + v48) = v66;
      if (v55 >= 2)
      {
        v67 = v117[v47 / 4];
        if (v67)
        {
          if (v67 / v62 * v62 == v67 && ((v67 / v62) & 1) != 0)
          {
            if (v52 || v66 != 1)
            {
              if ((a3 | 2) != 3 || (v69 = v118.u32[v47 / 4], v69 != 128) && ((a3 | 2) != 3 || v62 + 128 != v69))
              {
                LODWORD(v66) = v66 - 1;
                *(v115 + v48) = v66;
              }
            }

            else
            {
              LODWORD(v66) = 1;
            }
          }
        }
      }

      if (v66 >> v43 || v118.i32[v47 / 4] == 255)
      {
        *(v115 + v48) = ~(-1 << v43);
      }

      if (*v65 >= a5 || *(v65 - 1) >= a4)
      {
        *(v115 + v48) = 0;
      }

      ++v48;
    }

    v47 += 4;
    v65 += 2;
  }

  while (v47 != 32);
  v70 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v71 = 8 * (a1 & 7);
  *(a1 + 4) = 0;
  *a1 = 0;
  if (result)
  {
    v72 = 0;
    v73 = 0;
    v74 = v71;
    do
    {
      v75 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v72;
      if (v75[1] >= a5 || *v75 >= a4)
      {
        v77 = 0;
      }

      else
      {
        v77 = v118.u32[v72] >> 4;
      }

      if ((v74 - v71 + (v73 << 6) - 45) >= 0xFFFFFFFFFFFFFFCFLL)
      {
        v78 = 0;
        v79 = 4;
        do
        {
          v80 = 64 - v74;
          if (64 - v74 >= v79)
          {
            v80 = v79;
          }

          v70[v73] |= ((v77 >> v78) & ~(-1 << v80)) << v74;
          v78 += v80;
          v81 = v80 + v74;
          v73 += v81 >> 6;
          v74 = v81 & 0x3F;
          v79 -= v80;
        }

        while (v79);
      }

      ++v72;
    }

    while (v72 != 8);
    return result;
  }

  if (v17 | v40)
  {
    v82 = v71 | 3;
    if (v40 < 3)
    {
      v83 = v40 + 1;
    }

    else
    {
      v83 = 0;
    }

    if (v40 >= 3)
    {
      v84 = (v40 + 6) & 7;
    }

    else
    {
      v84 = 0;
    }

    *v70 |= v84 << v71;
    if (v40 >= 3)
    {
      v86 = 0;
      v90 = 3;
      if (!v49)
      {
        goto LABEL_216;
      }

LABEL_211:
      if ((v50 - v71 + v82 + (v86 << 6)) <= 0x30)
      {
        v91 = 0;
        v92 = v50;
        do
        {
          v93 = 64 - v82;
          if (64 - v82 >= v92)
          {
            v93 = v92;
          }

          v70[v86] |= (((v52 >> (8 - v50)) >> v91) & ~(-1 << v93)) << v82;
          v91 += v93;
          v94 = v93 + v82;
          v86 += v94 >> 6;
          v82 = v94 & 0x3F;
          v92 -= v93;
        }

        while (v92);
      }

      goto LABEL_216;
    }

    v85 = 2 * (v40 < 3);
  }

  else
  {
    v83 = 0;
    v82 = v71 | 3;
    v85 = 2;
  }

  if (v85 - v71 + v82 <= 0x30)
  {
    v86 = 0;
    v87 = 0;
    do
    {
      v88 = 64 - v82;
      if (64 - v82 >= v85)
      {
        v88 = v85;
      }

      v70[v86] |= ((v83 >> v87) & ~(-1 << v88)) << v82;
      v87 += v88;
      v89 = v88 + v82;
      v86 += v89 >> 6;
      v82 = v89 & 0x3F;
      v85 -= v88;
    }

    while (v85);
  }

  else
  {
    v86 = 0;
  }

  v90 = 5;
  if (!v40)
  {
    goto LABEL_217;
  }

  if (v49)
  {
    goto LABEL_211;
  }

LABEL_216:
  v90 += v50;
LABEL_217:
  if (v43)
  {
    if ((v82 - v71 + (v86 << 6) + 3) <= 0x30)
    {
      v95 = 0;
      v96 = 3;
      do
      {
        v97 = 64 - v82;
        if (64 - v82 >= v96)
        {
          v97 = v96;
        }

        v70[v86] |= ((v63 >> v95) & ~(-1 << v97)) << v82;
        v95 += v97;
        v98 = v97 + v82;
        v86 += v98 >> 6;
        v82 = v98 & 0x3F;
        v96 -= v97;
      }

      while (v96);
    }

    v90 += 3;
  }

  v99 = (37 * (48 - v90)) >> 8;
  v100 = -7 * v99 + 48 - v90;
  if ((v100 - 257) >= 0xFFFFFF00 && v82 - v71 + (v86 << 6) + v100 <= 0x30)
  {
    do
    {
      v101 = 64 - v82;
      if (64 - v82 >= v100)
      {
        v101 = v100;
      }

      v102 = v101 + v82;
      v86 += v102 >> 6;
      v82 = v102 & 0x3F;
      v100 -= v101;
    }

    while (v100);
  }

  v103 = 0;
  v104 = v99 - v43;
  if (v104)
  {
    v105 = v104 > 0x100;
  }

  else
  {
    v105 = 1;
  }

  v106 = v105;
  do
  {
    if (v43 && v43 - v71 + v82 + (v86 << 6) <= 0x30)
    {
      v107 = 0;
      v108 = *(v115 + v103);
      v109 = v43;
      do
      {
        v110 = 64 - v82;
        if (64 - v82 >= v109)
        {
          v110 = v109;
        }

        v70[v86] |= ((v108 >> v107) & ~(-1 << v110)) << v82;
        v107 += v110;
        v111 = v110 + v82;
        v86 += v111 >> 6;
        v82 = v111 & 0x3F;
        v109 -= v110;
      }

      while (v109);
    }

    if ((v106 & 1) == 0 && v82 - v71 + (v86 << 6) + v104 <= 0x30)
    {
      v112 = v104;
      do
      {
        v113 = 64 - v82;
        if (64 - v82 >= v112)
        {
          v113 = v112;
        }

        v114 = v113 + v82;
        v86 += v114 >> 6;
        v82 = v114 & 0x3F;
        v112 -= v113;
      }

      while (v112);
    }

    ++v103;
  }

  while (v103 != 7);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(unint64_t result, _DWORD *a2, int a3)
{
  v3 = (result & 0xFFFFFFFFFFFFFFF8);
  v4 = 8 * (result & 7);
  if (a3 == 4)
  {
    v5 = (v4 | 4) - v4;
    v6 = __CFADD__(v5 - 45, 49);
    if ((v5 - 45) >= 0xFFFFFFFFFFFFFFCFLL)
    {
      v7 = ((v4 + 8) & 0x38) - v4;
    }

    else
    {
      v7 = (v4 | 4) - v4;
    }

    if ((v5 - 45) >= 0xFFFFFFFFFFFFFFCFLL)
    {
      v8 = (v4 + 8) & 0x38;
    }

    else
    {
      v8 = v4 | 4;
    }

    if (v6)
    {
      v9 = (v4 + 8) >> 6;
    }

    else
    {
      v9 = 0;
    }

    if (v6)
    {
      v10 = 16 * ((*v3 >> (v4 | 4u)) & 0xF);
    }

    else
    {
      v10 = 0;
    }

    *a2 = 16 * ((*v3 >> v4) & 0xF);
    a2[1] = v10;
    if (v7 + (v9 << 6) - 45 >= 0xFFFFFFFFFFFFFFCFLL)
    {
      v24 = 0;
      v25 = 0;
      v26 = 4;
      do
      {
        v27 = 64 - v8;
        if (64 - v8 >= v26)
        {
          v27 = v26;
        }

        result = ((v3[v9] >> v8) & ~(-1 << v27)) << v25;
        v24 |= result;
        v25 += v27;
        v28 = v27 + v8;
        v9 += v28 >> 6;
        v8 = v28 & 0x3F;
        v26 -= v27;
      }

      while (v26);
      a2[2] = 16 * (v24 & 0xF);
      if (v8 - v4 + (v9 << 6) - 45 >= 0xFFFFFFFFFFFFFFCFLL)
      {
        v31 = 0;
        v32 = 0;
        v33 = 4;
        do
        {
          v34 = 64 - v8;
          if (64 - v8 >= v33)
          {
            v34 = v33;
          }

          result = ((v3[v9] >> v8) & ~(-1 << v34)) << v32;
          v31 |= result;
          v32 += v34;
          v35 = v34 + v8;
          v9 += v35 >> 6;
          v8 = v35 & 0x3F;
          v33 -= v34;
        }

        while (v33);
        a2[3] = 16 * (v31 & 0xF);
        if (v8 - v4 + (v9 << 6) - 45 >= 0xFFFFFFFFFFFFFFCFLL)
        {
          v36 = 0;
          v37 = 0;
          v38 = 4;
          do
          {
            v39 = 64 - v8;
            if (64 - v8 >= v38)
            {
              v39 = v38;
            }

            result = ((v3[v9] >> v8) & ~(-1 << v39)) << v37;
            v36 |= result;
            v37 += v39;
            v40 = v39 + v8;
            v9 += v40 >> 6;
            v8 = v40 & 0x3F;
            v38 -= v39;
          }

          while (v38);
          a2[4] = 16 * (v36 & 0xF);
          if (v8 - v4 + (v9 << 6) - 45 >= 0xFFFFFFFFFFFFFFCFLL)
          {
            v41 = 0;
            v42 = 0;
            v43 = 4;
            do
            {
              v44 = 64 - v8;
              if (64 - v8 >= v43)
              {
                v44 = v43;
              }

              result = ((v3[v9] >> v8) & ~(-1 << v44)) << v42;
              v41 |= result;
              v42 += v44;
              v45 = v44 + v8;
              v9 += v45 >> 6;
              v8 = v45 & 0x3F;
              v43 -= v44;
            }

            while (v43);
            a2[5] = 16 * (v41 & 0xF);
            if (v8 - v4 + (v9 << 6) - 45 >= 0xFFFFFFFFFFFFFFCFLL)
            {
              v46 = 0;
              v47 = 0;
              v48 = 4;
              do
              {
                v49 = 64 - v8;
                if (64 - v8 >= v48)
                {
                  v49 = v48;
                }

                result = ((v3[v9] >> v8) & ~(-1 << v49)) << v47;
                v46 |= result;
                v47 += v49;
                v50 = v49 + v8;
                v9 += v50 >> 6;
                v8 = v50 & 0x3F;
                v48 -= v49;
              }

              while (v48);
              v51 = v8 - v4 + (v9 << 6) - 45;
              a2[6] = 16 * (v46 & 0xF);
              v30 = a2 + 7;
              if (v51 >= 0xFFFFFFFFFFFFFFCFLL)
              {
                v52 = 0;
                v53 = 0;
                v54 = 4;
                do
                {
                  v55 = 64 - v8;
                  if (64 - v8 >= v54)
                  {
                    v55 = v54;
                  }

                  result = ((v3[v9] >> v8) & ~(-1 << v55)) << v53;
                  v52 |= result;
                  v53 += v55;
                  v56 = v55 + v8;
                  v9 += v56 >> 6;
                  v8 = v56 & 0x3F;
                  v54 -= v55;
                }

                while (v54);
                v29 = 16 * (v52 & 0xF);
              }

              else
              {
                v29 = 0;
              }

              goto LABEL_42;
            }

LABEL_41:
            v29 = 0;
            a2[6] = 0;
            v30 = a2 + 7;
LABEL_42:
            *v30 = v29;
            return result;
          }

LABEL_40:
          a2[5] = 0;
          goto LABEL_41;
        }

LABEL_39:
        a2[4] = 0;
        goto LABEL_40;
      }
    }

    else
    {
      a2[2] = 0;
    }

    a2[3] = 0;
    goto LABEL_39;
  }

  v11 = 0;
  v12 = 0;
  v13 = a3 & 0xFFFFFFFD;
  v14 = ((a3 & 0xFFFFFFFD) == 1) << 7;
  v15 = 8 * (result & 7);
  do
  {
    if ((v15 - v4 + (v12 << 6) - 45) >= 0xFFFFFFFFFFFFFFCFLL)
    {
      v16 = 0;
      v17 = 0;
      v18 = 4;
      do
      {
        v19 = 64 - v15;
        if (64 - v15 >= v18)
        {
          v19 = v18;
        }

        v16 |= ((v3[v12] >> v15) & ~(-1 << v19)) << v17;
        v17 += v19;
        v20 = v19 + v15;
        v12 += v20 >> 6;
        v15 = v20 & 0x3F;
        v18 -= v19;
      }

      while (v18);
    }

    else
    {
      v16 = 0;
    }

    v21 = 16 * (v16 & 0xF);
    if (v21 != 128 || v13 != 1)
    {
      v23 = v21 - (v16 & 1) + 8;
      if (v21 == 240)
      {
        v23 = 255;
      }

      if (v21)
      {
        v21 = v23;
      }

      else
      {
        v21 = 0;
      }
    }

    result = v21 ^ v14;
    a2[v11++] = result;
  }

  while (v11 != 8);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(uint64_t a1, int *a2, int a3)
{
  v166 = *MEMORY[0x29EDCA608];
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = 3;
  v6 = v4 | 3;
  if (((*(a1 & 0xFFFFFFFFFFFFFFF8) >> v4) & 7) != 0)
  {
    v7 = 0;
    v8 = 0;
    v9 = ((*(a1 & 0xFFFFFFFFFFFFFFF8) >> v4) & 7) + 2;
    goto LABEL_18;
  }

  if ((v6 - v4) > 0x2E)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v7 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 2;
  do
  {
    v13 = 64 - v6;
    if (64 - v6 >= v12)
    {
      v13 = v12;
    }

    v10 |= ((*(v3 + 8 * v7) >> v6) & ~(-1 << v13)) << v11;
    v11 += v13;
    v14 = v13 + v6;
    v7 += v14 >> 6;
    v6 = v14 & 0x3F;
    v12 -= v13;
  }

  while (v12);
  v15 = v10 & 3;
  if (v15 <= 1)
  {
    if (v15)
    {
      v9 = 0;
      v8 = 255;
      goto LABEL_6;
    }

LABEL_5:
    v8 = 0;
    v9 = 0;
LABEL_6:
    v5 = 5;
    goto LABEL_18;
  }

  v5 = 5;
  if (v15 == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v8 = 0;
LABEL_18:
  v16 = v9;
  v20 = &kDQuadParamTable[10 * v9];
  v17 = *(v20 + 16);
  LODWORD(v20) = *(v20 + 20);
  v18 = v17 + 2;
  v19 = v20 != 0;
  LODWORD(v20) = v20 + 2;
  if ((v17 + 2) >= 8)
  {
    v21 = 8;
  }

  else
  {
    v21 = v18;
  }

  v22 = 8 * v19;
  if (v22 >= v20)
  {
    v20 = v20;
  }

  else
  {
    v20 = v22;
  }

  v23 = 8 - v21;
  if (v9)
  {
    if (v18)
    {
      if ((v21 - v4 + v6 + (v7 << 6)) <= 0x30)
      {
        v24 = 0;
        v93 = 0;
        v94 = v21;
        do
        {
          v95 = 64 - v6;
          if (64 - v6 >= v94)
          {
            v95 = v94;
          }

          v24 |= ((*(v3 + 8 * v7) >> v6) & ~(-1 << v95)) << v93;
          v93 += v95;
          v96 = v95 + v6;
          v7 += v96 >> 6;
          v6 = v96 & 0x3F;
          v94 -= v95;
        }

        while (v94);
      }

      else
      {
        v24 = 0;
      }

      v5 += v21;
      v8 = v24 << v23;
      if (!v20)
      {
        goto LABEL_84;
      }

      goto LABEL_30;
    }

    v8 = 0;
  }

  if (!v20)
  {
LABEL_84:
    v92 = 0;
    v25 = 0;
    v37 = 0;
    v162 = 0;
    v163 = 0;
    v165 = 0;
    v164 = 0;
    goto LABEL_85;
  }

LABEL_30:
  if ((v6 - v4 + (v7 << 6) + 3) <= 0x30)
  {
    LODWORD(v25) = 0;
    v26 = 0;
    v27 = 3;
    do
    {
      v28 = 64 - v6;
      if (64 - v6 >= v27)
      {
        v28 = v27;
      }

      v25 = v25 | (((*(v3 + 8 * v7) >> v6) & ~(-1 << v28)) << v26);
      v26 += v28;
      v29 = v28 + v6;
      v7 += v29 >> 6;
      v6 = v29 & 0x3F;
      v27 -= v28;
    }

    while (v27);
  }

  else
  {
    v25 = 0;
  }

  v30 = 45 - v5;
  v31 = (37 * v30) >> 8;
  v32 = (v20 - v4);
  v33 = (v6 | (v7 << 6)) + -7 * v31 + v30;
  v34 = v33 & 0x3F;
  v35 = v32 + v34 + (v33 & 0xFFFFFFFFFFFFFFC0);
  v162 = 0;
  v163 = 0;
  v165 = 0;
  v164 = 0;
  v36 = v33 >> 6;
  if (v35 <= 0x30)
  {
    v37 = 0;
    v38 = 0;
    v39 = v20;
    do
    {
      v40 = 64 - v34;
      if (64 - v34 >= v39)
      {
        v40 = v39;
      }

      v37 |= ((*(v3 + 8 * v36) >> v34) & ~(-1 << v40)) << v38;
      v38 += v40;
      v41 = v40 + v34;
      v36 += v41 >> 6;
      v34 = v41 & 0x3F;
      v39 -= v40;
    }

    while (v39);
  }

  else
  {
    v37 = 0;
  }

  LODWORD(v162) = v37;
  v42 = v34 | (v36 << 6);
  v43 = v31 - v20;
  v44 = v42 + v43;
  v45 = (v42 + v43) & 0x3F;
  v46 = (v42 + v43) >> 6;
  if (v32 + v45 + (v44 & 0xFFFFFFFFFFFFFFC0) <= 0x30)
  {
    v47 = 0;
    v48 = 0;
    v49 = v20;
    do
    {
      v50 = 64 - v45;
      if (64 - v45 >= v49)
      {
        v50 = v49;
      }

      v47 |= ((*(v3 + 8 * v46) >> v45) & ~(-1 << v50)) << v48;
      v48 += v50;
      v51 = v50 + v45;
      v46 += v51 >> 6;
      v45 = v51 & 0x3F;
      v49 -= v50;
    }

    while (v49);
  }

  else
  {
    v47 = 0;
  }

  HIDWORD(v162) = v47;
  v52 = (v45 | (v46 << 6)) + v43;
  v53 = v52 & 0x3F;
  v54 = v52 >> 6;
  if (v32 + v53 + (v52 & 0xFFFFFFFFFFFFFFC0) <= 0x30)
  {
    v55 = 0;
    v56 = 0;
    v57 = v20;
    do
    {
      v58 = 64 - v53;
      if (64 - v53 >= v57)
      {
        v58 = v57;
      }

      v55 |= ((*(v3 + 8 * v54) >> v53) & ~(-1 << v58)) << v56;
      v56 += v58;
      v59 = v58 + v53;
      v54 += v59 >> 6;
      v53 = v59 & 0x3F;
      v57 -= v58;
    }

    while (v57);
  }

  else
  {
    v55 = 0;
  }

  LODWORD(v163) = v55;
  v60 = (v53 | (v54 << 6)) + v43;
  v61 = v60 & 0x3F;
  v62 = v60 >> 6;
  if (v32 + v61 + (v60 & 0xFFFFFFFFFFFFFFC0) <= 0x30)
  {
    v63 = 0;
    v64 = 0;
    v65 = v20;
    do
    {
      v66 = 64 - v61;
      if (64 - v61 >= v65)
      {
        v66 = v65;
      }

      v63 |= ((*(v3 + 8 * v62) >> v61) & ~(-1 << v66)) << v64;
      v64 += v66;
      v67 = v66 + v61;
      v62 += v67 >> 6;
      v61 = v67 & 0x3F;
      v65 -= v66;
    }

    while (v65);
  }

  else
  {
    v63 = 0;
  }

  HIDWORD(v163) = v63;
  v68 = (v61 | (v62 << 6)) + v43;
  v69 = v68 & 0x3F;
  v70 = v68 >> 6;
  if (v32 + v69 + (v68 & 0xFFFFFFFFFFFFFFC0) <= 0x30)
  {
    v71 = 0;
    v72 = 0;
    v73 = v20;
    do
    {
      v74 = 64 - v69;
      if (64 - v69 >= v73)
      {
        v74 = v73;
      }

      v71 |= ((*(v3 + 8 * v70) >> v69) & ~(-1 << v74)) << v72;
      v72 += v74;
      v75 = v74 + v69;
      v70 += v75 >> 6;
      v69 = v75 & 0x3F;
      v73 -= v74;
    }

    while (v73);
  }

  else
  {
    v71 = 0;
  }

  LODWORD(v164) = v71;
  v76 = (v69 | (v70 << 6)) + v43;
  v77 = v76 & 0x3F;
  v78 = v76 >> 6;
  if (v32 + v77 + (v76 & 0xFFFFFFFFFFFFFFC0) <= 0x30)
  {
    v79 = 0;
    v80 = 0;
    v81 = v20;
    do
    {
      v82 = 64 - v77;
      if (64 - v77 >= v81)
      {
        v82 = v81;
      }

      v79 |= ((*(v3 + 8 * v78) >> v77) & ~(-1 << v82)) << v80;
      v80 += v82;
      v83 = v82 + v77;
      v78 += v83 >> 6;
      v77 = v83 & 0x3F;
      v81 -= v82;
    }

    while (v81);
  }

  else
  {
    v79 = 0;
  }

  HIDWORD(v164) = v79;
  v84 = (v77 | (v78 << 6)) + v43;
  v85 = v84 & 0x3F;
  if (v32 + v85 + (v84 & 0xFFFFFFFFFFFFFFC0) <= 0x30)
  {
    v86 = 0;
    v87 = 0;
    v88 = v84 >> 6;
    v89 = v20;
    do
    {
      v90 = 64 - v85;
      if (64 - v85 >= v89)
      {
        v90 = v89;
      }

      v86 |= ((*(v3 + 8 * v88) >> v85) & ~(-1 << v90)) << v87;
      v87 += v90;
      v91 = v90 + v85;
      v88 += v91 >> 6;
      v85 = v91 & 0x3F;
      v89 -= v90;
    }

    while (v89);
  }

  else
  {
    v86 = 0;
  }

  v165 = v86;
  v92 = v20;
LABEL_85:
  v97 = *&kDQuadParamTable[10 * v16 + 2];
  if (v97 >> v92 <= 1)
  {
    v98 = 1;
  }

  else
  {
    v98 = v97 >> v92;
  }

  v99 = v98 >> 1;
  if (v98 >> 1 >= (1 << v23) >> 1)
  {
    v100 = (1 << v23) >> 1;
  }

  else
  {
    v100 = v98 >> 1;
  }

  v101 = 128 - v8;
  result = v101 / v98;
  v103 = v97 + v8;
  v104 = -1 << v92;
  if (v8)
  {
    v105 = v100;
  }

  else
  {
    v105 = 0;
  }

  v106 = v8 == 128;
  if (v20)
  {
    if (v25)
    {
      v107 = result == v37;
      if (!(v8 | v37))
      {
        v108 = 0;
LABEL_104:
        v109 = 1;
        goto LABEL_105;
      }

      if (v103 < 0x100 || (v104 ^ v37) != 0xFFFFFFFFFFFFFFFFLL)
      {
        v108 = v99 + v98 * v37;
        goto LABEL_104;
      }

      v109 = 1;
      v108 = 255;
    }

    else
    {
      v109 = 0;
      v108 = v105;
      v107 = v8 == 128;
    }
  }

  else
  {
    v109 = 0;
    v108 = 0;
    v107 = v98 > v101;
  }

LABEL_105:
  v110 = a3 & 0xFFFFFFFD;
  v111 = v108 + v8;
  v112 = v111;
  if (a3 == 4)
  {
    v112 = 2139095039;
    if ((v111 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v111 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v112 = 4286578687;
      }

      else
      {
        v112 = v111;
      }
    }
  }

  v113 = 255;
  if (v112 < 0xFF)
  {
    v113 = v112;
  }

  if (v107)
  {
    v114 = 0;
  }

  else
  {
    v114 = v113 ^ 0x80;
  }

  if (v110 != 1)
  {
    v114 = v113;
  }

  *a2 = v114;
  if (v20)
  {
    if (v25 == 1)
    {
      v115 = v105;
      v116 = v8 == 128;
    }

    else
    {
      v117 = *(&v162 | (4 * v109));
      v116 = result == v117;
      if (v8 | v117)
      {
        if (v103 >= 0x100 && (v104 ^ v117) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v115 = 255;
        }

        else
        {
          v115 = v99 + v98 * v117;
        }
      }

      else
      {
        v115 = 0;
      }

      ++v109;
    }
  }

  else
  {
    v115 = 0;
    v116 = v98 > v101;
  }

  v118 = v115 + v8;
  v119 = v118;
  if (a3 == 4)
  {
    v119 = 2139095039;
    if ((v118 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v118 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v119 = 4286578687;
      }

      else
      {
        v119 = v118;
      }
    }
  }

  v120 = 255;
  if (v119 < 0xFF)
  {
    v120 = v119;
  }

  if (v116)
  {
    v121 = 0;
  }

  else
  {
    v121 = v120 ^ 0x80;
  }

  if (v110 != 1)
  {
    v121 = v120;
  }

  a2[1] = v121;
  if (v20)
  {
    if (v25 == 2)
    {
      v122 = v105;
      v123 = v8 == 128;
    }

    else
    {
      v124 = *(&v162 + v109);
      v123 = result == v124;
      if (v8 | v124)
      {
        if (v103 >= 0x100 && (v104 ^ v124) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v122 = 255;
        }

        else
        {
          v122 = v99 + v98 * v124;
        }
      }

      else
      {
        v122 = 0;
      }

      ++v109;
    }
  }

  else
  {
    v122 = 0;
    v123 = v98 > v101;
  }

  v125 = v122 + v8;
  v126 = v125;
  if (a3 == 4)
  {
    v126 = 2139095039;
    if ((v125 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v125 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v126 = 4286578687;
      }

      else
      {
        v126 = v125;
      }
    }
  }

  v127 = 255;
  if (v126 < 0xFF)
  {
    v127 = v126;
  }

  if (v123)
  {
    v128 = 0;
  }

  else
  {
    v128 = v127 ^ 0x80;
  }

  if (v110 != 1)
  {
    v128 = v127;
  }

  a2[2] = v128;
  if (v20)
  {
    if (v25 == 3)
    {
      v129 = v105;
      v130 = v8 == 128;
    }

    else
    {
      v131 = *(&v162 + v109);
      v130 = result == v131;
      if (v8 | v131)
      {
        if (v103 >= 0x100 && (v104 ^ v131) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v129 = 255;
        }

        else
        {
          v129 = v99 + v98 * v131;
        }
      }

      else
      {
        v129 = 0;
      }

      ++v109;
    }
  }

  else
  {
    v129 = 0;
    v130 = v98 > v101;
  }

  v132 = v129 + v8;
  v133 = v132;
  if (a3 == 4)
  {
    v133 = 2139095039;
    if ((v132 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v132 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v133 = 4286578687;
      }

      else
      {
        v133 = v132;
      }
    }
  }

  v134 = 255;
  if (v133 < 0xFF)
  {
    v134 = v133;
  }

  if (v130)
  {
    v135 = 0;
  }

  else
  {
    v135 = v134 ^ 0x80;
  }

  if (v110 != 1)
  {
    v135 = v134;
  }

  a2[3] = v135;
  if (v20)
  {
    if (v25 == 4)
    {
      v136 = v105;
      v137 = v8 == 128;
    }

    else
    {
      v138 = *(&v162 + v109);
      v137 = result == v138;
      if (v8 | v138)
      {
        if (v103 >= 0x100 && (v104 ^ v138) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v136 = 255;
        }

        else
        {
          v136 = v99 + v98 * v138;
        }
      }

      else
      {
        v136 = 0;
      }

      ++v109;
    }
  }

  else
  {
    v136 = 0;
    v137 = v98 > v101;
  }

  v139 = v136 + v8;
  v140 = v139;
  if (a3 == 4)
  {
    v140 = 2139095039;
    if ((v139 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v139 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v140 = 4286578687;
      }

      else
      {
        v140 = v139;
      }
    }
  }

  v141 = 255;
  if (v140 < 0xFF)
  {
    v141 = v140;
  }

  if (v137)
  {
    v142 = 0;
  }

  else
  {
    v142 = v141 ^ 0x80;
  }

  if (v110 != 1)
  {
    v142 = v141;
  }

  a2[4] = v142;
  if (v20)
  {
    if (v25 == 5)
    {
      v143 = v105;
      v144 = v8 == 128;
    }

    else
    {
      v145 = *(&v162 + v109);
      v144 = result == v145;
      if (v8 | v145)
      {
        if (v103 >= 0x100 && (v104 ^ v145) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v143 = 255;
        }

        else
        {
          v143 = v99 + v98 * v145;
        }
      }

      else
      {
        v143 = 0;
      }

      ++v109;
    }
  }

  else
  {
    v143 = 0;
    v144 = v98 > v101;
  }

  v146 = v143 + v8;
  v147 = v146;
  if (a3 == 4)
  {
    v147 = 2139095039;
    if ((v146 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v146 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v147 = 4286578687;
      }

      else
      {
        v147 = v146;
      }
    }
  }

  v148 = 255;
  if (v147 < 0xFF)
  {
    v148 = v147;
  }

  if (v144)
  {
    v149 = 0;
  }

  else
  {
    v149 = v148 ^ 0x80;
  }

  if (v110 != 1)
  {
    v149 = v148;
  }

  a2[5] = v149;
  if (v20)
  {
    if (v25 == 6)
    {
      v150 = v105;
      v151 = v8 == 128;
    }

    else
    {
      v152 = *(&v162 + v109);
      v151 = result == v152;
      if (v8 | v152)
      {
        if (v103 >= 0x100 && (v104 ^ v152) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v150 = 255;
        }

        else
        {
          v150 = v99 + v98 * v152;
        }
      }

      else
      {
        v150 = 0;
      }

      ++v109;
    }
  }

  else
  {
    v150 = 0;
    v151 = v98 > v101;
  }

  v153 = v150 + v8;
  v154 = v153;
  if (a3 == 4)
  {
    v154 = 2139095039;
    if ((v153 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v153 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v154 = 4286578687;
      }

      else
      {
        v154 = v153;
      }
    }
  }

  v155 = 255;
  if (v154 < 0xFF)
  {
    v155 = v154;
  }

  if (v151)
  {
    v156 = 0;
  }

  else
  {
    v156 = v155 ^ 0x80;
  }

  if (v110 != 1)
  {
    v156 = v155;
  }

  a2[6] = v156;
  if (v20)
  {
    if (v25 != 7)
    {
      v157 = *(&v162 + v109);
      v106 = result == v157;
      if (v8 | v157)
      {
        if (v103 >= 0x100 && (v104 ^ v157) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v105 = 255;
        }

        else
        {
          v105 = v99 + v98 * v157;
        }
      }

      else
      {
        v105 = 0;
      }
    }
  }

  else
  {
    v105 = 0;
    v106 = v98 > v101;
  }

  v158 = v105 + v8;
  v159 = v158;
  if (a3 == 4)
  {
    v159 = 2139095039;
    if ((v158 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v158 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v159 = 4286578687;
      }

      else
      {
        v159 = v158;
      }
    }
  }

  v160 = 255;
  if (v159 < 0xFF)
  {
    v160 = v159;
  }

  v161 = v160 ^ 0x80;
  if (v106)
  {
    v161 = 0;
  }

  if (v110 == 1)
  {
    v160 = v161;
  }

  a2[7] = v160;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(int8x8_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, double a6, int8x8_t a7)
{
  v237 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    v12 = 0;
LABEL_6:
    *a1 = 0;
    *(a1 + a2) = 0;
    *(a1 + 2 * a2) = 0;
    *(a1 + 3 * a2) = 0;
    return v12;
  }

  v7 = a4;
  if (a4 >= 0xF0)
  {
    if (a4)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(a3, &v233, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(a3, &v233, a5);
    }

    v230 = v233;
    v226 = v234;
    v229 = v235;
    v225 = v236;
    v14 = a3 + 6;
    if ((v7 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v14, &v233, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v14, &v233, a5);
    }

    v228 = v233;
    v232 = v234;
    v227 = v235;
    v231 = v236;
    v15 = a3 + 12;
    if ((v7 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v15, &v233, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v15, &v233, a5);
    }

    v224 = v233;
    v222 = v234;
    v223 = v235;
    v221 = v236;
    v16 = a3 + 18;
    if ((v7 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v16, &v233, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v16, &v233, a5);
    }

    v17.i64[0] = v222;
    v17.i64[1] = v221;
    v18.i64[0] = v226;
    v18.i64[1] = v225;
    *v18.i8 = vmovn_s16(vuzp1q_s16(v18, v17));
    v19.i64[0] = v224;
    v19.i64[1] = v223;
    v20.i64[0] = v230;
    v20.i64[1] = v229;
    *v20.i8 = vmovn_s16(vuzp1q_s16(v20, v19));
    v17.i64[0] = v233;
    v19.i64[0] = v234;
    v21 = v235;
    v22 = v236;
    *a1 = *v20.i8;
    *(a1 + a2) = *v18.i8;
    v23 = (a1 + a2 + a2);
    v17.i64[1] = v21;
    v18.i64[0] = v228;
    v18.i64[1] = v227;
    v19.i64[1] = v22;
    v20.i64[0] = v232;
    v20.i64[1] = v231;
    *v23 = vmovn_s16(vuzp1q_s16(v18, v17));
    *(v23 + a2) = vmovn_s16(vuzp1q_s16(v20, v19));
    return 24;
  }

  if (a4 == 31)
  {
    v24 = *a3;
    v25 = *(a3 + 8);
    v26 = *(a3 + 16);
    v27 = *(a3 + 24);
    *a1 = vuzp1_s16(*a3, v26);
    *(a1 + a2) = vuzp2_s16(v24, v26);
    v28 = (a1 + 2 * a2);
    *v28 = vuzp1_s16(v25, v27);
    *(v28 + a2) = vuzp2_s16(v25, v27);
    return 32;
  }

  if (a4 == 96)
  {
    v13 = vdup_lane_s8(*a3, 0);
    *a1 = v13;
    *(a1 + a2) = v13;
    *(a1 + 2 * a2) = v13;
    *(a1 + 3 * a2) = v13;
    return 1;
  }

  v30 = 8 * (a3 & 7);
  v31 = a3 & 0xFFFFFFFFFFFFFFF8;
  v32 = v30 + 12;
  v33 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v30;
  if (v30 >= 0x35)
  {
    v33 |= *(v31 + 8) << (-8 * (a3 & 7u));
  }

  v34 = (8 * (a3 & 7)) | 0xC0;
  v35 = (a4 >> 5) | (8 * v33);
  v36 = vdupq_n_s8(v35 & 0xF);
  v37.i64[0] = 0x303030303030303;
  v37.i64[1] = 0x303030303030303;
  a7.i32[0] = v35 & 0xF;
  v38 = vand_s8(a7, 0x4000400040004);
  v39 = vandq_s8(v36, v37);
  v40 = vbicq_s8(vdupq_n_s8(((v33 >> 1) & 7) + 1), vceqq_s8(v39, v37));
  v37.i64[0] = 0x202020202020202;
  v37.i64[1] = 0x202020202020202;
  v41 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vdup_lane_s16(v38, 0)))), v37);
  if (vmaxvq_s8(v41) < 1)
  {
    v49 = 0;
    v72.i64[0] = -1;
    v72.i64[1] = -1;
    v68 = v40;
    v67 = v40;
    v66 = v40;
    v71.i64[0] = -1;
    v71.i64[1] = -1;
    v65 = v40;
    v70.i64[0] = -1;
    v70.i64[1] = -1;
    v69.i64[0] = -1;
    v69.i64[1] = -1;
  }

  else
  {
    v42 = vmovl_u8(*&vpaddq_s8(v41, v41));
    v43 = vmovl_u16(*&vpaddq_s16(v42, v42));
    v44 = vpaddq_s32(v43, v43).u64[0];
    v45.i64[0] = v44;
    v45.i64[1] = HIDWORD(v44);
    v46 = v45;
    v47 = vaddvq_s64(v45);
    v48 = v47 <= 0x80 && v34 >= v47 + v32;
    v49 = !v48;
    v50 = 0uLL;
    if (v48)
    {
      v51 = vaddq_s64(vzip1q_s64(0, v46), vdupq_n_s64(v32 & 0x3C));
      v52 = (v31 + ((v32 >> 3) & 8));
      v50 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v52, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v51)), vshlq_u64(vdupq_lane_s64(v52->i64[0], 0), vnegq_s64(v51)));
      if (v47 + (v32 & 0x3C) >= 0x81)
      {
        v50 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v52[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v51)), vshlq_u64(vdupq_laneq_s64(v52[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v51))), v50);
      }

      v32 += v47;
    }

    v53 = vzip1_s32(*v43.i8, *&vextq_s8(v43, v43, 8uLL));
    v54.i64[0] = v53.u32[0];
    v54.i64[1] = v53.u32[1];
    v55 = vshlq_u64(v50, vnegq_s64(v54));
    v56 = vuzp1q_s32(vzip1q_s64(v50, v55), vzip2q_s64(v50, v55));
    v57 = vshlq_u32(v56, vnegq_s32((*&v42 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v58 = vuzp1q_s16(vzip1q_s32(v56, v57), vzip2q_s32(v56, v57));
    v59 = vzip1q_s16(v58, vshlq_u16(v58, vnegq_s16(vmovl_u8(vuzp1_s8(*v41.i8, *v36.i8)))));
    *v59.i8 = vmovn_s16(v59);
    v56.i64[0] = 0x101010101010101;
    v56.i64[1] = 0x101010101010101;
    v60 = vshlq_s8(v56, v41);
    v56.i64[0] = -1;
    v56.i64[1] = -1;
    v60.i64[0] = vandq_s8(vaddq_s8(v60, v56), v59).u64[0];
    v61 = vdupq_lane_s8(*v60.i8, 0);
    v62 = vdupq_lane_s8(*v60.i8, 1);
    v63 = vdupq_lane_s8(*v60.i8, 2);
    v64 = vdupq_lane_s8(*v60.i8, 3);
    v65 = vsubq_s8(v40, v61);
    v66 = vsubq_s8(v40, v62);
    v67 = vsubq_s8(v40, v63);
    v68 = vsubq_s8(v40, v64);
    v69 = vceqzq_s8(v61);
    v70 = vceqzq_s8(v62);
    v71 = vceqzq_s8(v63);
    v72 = vceqzq_s8(v64);
  }

  v73.i64[0] = 0x707070707070707;
  v73.i64[1] = 0x707070707070707;
  v74 = 0uLL;
  v75 = vandq_s8(vextq_s8(vcgtq_u8(v36, v73), 0, 0xFuLL), v40);
  v76 = vmovl_u8(*&vpaddq_s8(v75, v75));
  v77 = vmovl_u16(*&vpaddq_s16(v76, v76));
  v78 = vpaddq_s32(v77, v77).u64[0];
  v79.i64[0] = v78;
  v79.i64[1] = HIDWORD(v78);
  v80 = v79;
  v81 = vaddvq_s64(v79);
  v82 = v81 + v32;
  if (v81 <= 0x80 && v34 >= v82)
  {
    v84 = v32 & 0x3F;
    v85 = vaddq_s64(vzip1q_s64(0, v80), vdupq_n_s64(v84));
    v86 = (v31 + 8 * (v32 >> 6));
    v74 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v86, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v85)), vshlq_u64(vdupq_lane_s64(v86->i64[0], 0), vnegq_s64(v85)));
    if (v81 + v84 >= 0x81)
    {
      v74 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v86[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v85)), vshlq_u64(vdupq_laneq_s64(v86[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v85))), v74);
    }

    v32 = v82;
  }

  else
  {
    v49 = 1;
  }

  v87 = vandq_s8(v65, xmmword_29D2F0D40);
  v88 = (a4 >> 5) & 3;
  if (v88 != 2)
  {
    v93 = 0;
    v90 = 0;
    v94 = v32;
    goto LABEL_58;
  }

  v89 = v32 + 4;
  if (v34 < v32 + 4)
  {
    v90 = 0;
    v89 = v32;
LABEL_57:
    v93 = 0;
    v49 = 1;
    v94 = v89;
    goto LABEL_58;
  }

  v95 = (v31 + 8 * (v32 >> 6));
  v96 = *v95 >> v32;
  if ((v32 & 0x3F) >= 0x3D)
  {
    v96 |= v95[1] << -(v32 & 0x3F);
  }

  v90 = (v96 << 28) >> 28;
  v94 = v32 + 8;
  if (v34 < v32 + 8)
  {
    goto LABEL_57;
  }

  v91 = (v31 + 8 * (v89 >> 6));
  v92 = *v91 >> v89;
  if ((v89 & 0x3F) >= 0x3D)
  {
    v92 |= v91[1] << -(v89 & 0x3F);
  }

  v93 = (v92 << 28) >> 28;
LABEL_58:
  v97 = vandq_s8(v66, xmmword_29D2F0D50);
  v87.i8[0] = 0;
  v98 = vmovl_u8(*&vpaddq_s8(v87, v87));
  v99 = vmovl_u16(*&vpaddq_s16(v98, v98));
  v100 = vpaddq_s32(v99, v99).u64[0];
  v101.i64[0] = v100;
  v101.i64[1] = HIDWORD(v100);
  v102 = v101;
  v103 = vaddvq_s64(v101);
  v104 = v103 + v94;
  v105 = 0uLL;
  if (v103 <= 0x80 && v34 >= v104)
  {
    v108 = v94 & 0x3F;
    v109 = vaddq_s64(vzip1q_s64(0, v102), vdupq_n_s64(v108));
    v110 = (v31 + 8 * (v94 >> 6));
    v107 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v110, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v109)), vshlq_u64(vdupq_lane_s64(v110->i64[0], 0), vnegq_s64(v109)));
    if (v103 + v108 >= 0x81)
    {
      v107 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v110[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v109)), vshlq_u64(vdupq_laneq_s64(v110[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v109))), v107);
    }

    v94 = v104;
  }

  else
  {
    v49 = 1;
    v107 = 0uLL;
  }

  v111 = vandq_s8(v67, xmmword_29D2F0D50);
  v112 = vmovl_u8(*&vpaddq_s8(v97, v97));
  v113 = vmovl_u16(*&vpaddq_s16(v112, v112));
  v114 = vpaddq_s32(v113, v113).u64[0];
  v115.i64[0] = v114;
  v115.i64[1] = HIDWORD(v114);
  v116 = v115;
  v117 = vaddvq_s64(v115);
  if (v117 >= 0x81)
  {
    v49 = 1;
  }

  else
  {
    v118 = vzip1_s32(*v113.i8, *&vextq_s8(v113, v113, 8uLL));
    v119.i64[0] = v118.u32[0];
    v119.i64[1] = v118.u32[1];
    v120 = v119;
    v121 = *&v112 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v122 = v117 + v94;
    if (v34 >= v117 + v94)
    {
      v123 = v94 & 0x3F;
      v124 = vaddq_s64(vzip1q_s64(0, v116), vdupq_n_s64(v123));
      v125 = (v31 + 8 * (v94 >> 6));
      v105 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v125, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v124)), vshlq_u64(vdupq_lane_s64(v125->i64[0], 0), vnegq_s64(v124)));
      if (v117 + v123 >= 0x81)
      {
        v105 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v125[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v124)), vshlq_u64(vdupq_laneq_s64(v125[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v124))), v105);
      }

      v94 = v122;
    }

    else
    {
      v49 = 1;
    }

    v126 = vshlq_u64(v105, vnegq_s64(v120));
    v127 = vuzp1q_s32(vzip1q_s64(v105, v126), vzip2q_s64(v105, v126));
    v128 = vshlq_u32(v127, vnegq_s32(v121));
    v129 = vuzp1q_s16(vzip1q_s32(v127, v128), vzip2q_s32(v127, v128));
    v130 = vshlq_u16(v129, vnegq_s16((*&v97 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v105 = vuzp1q_s8(vzip1q_s16(v129, v130), vzip2q_s16(v129, v130));
  }

  v131 = vandq_s8(v68, xmmword_29D2F0D50);
  v132 = vmovl_u8(*&vpaddq_s8(v111, v111));
  v133 = vmovl_u16(*&vpaddq_s16(v132, v132));
  v134 = vpaddq_s32(v133, v133).u64[0];
  v135.i64[0] = v134;
  v135.i64[1] = HIDWORD(v134);
  v136 = v135;
  v137 = vaddvq_s64(v135);
  if (v137 >= 0x81)
  {
    v49 = 1;
    v144 = 0uLL;
  }

  else
  {
    v138 = vzip1_s32(*v133.i8, *&vextq_s8(v133, v133, 8uLL));
    v139.i64[0] = v138.u32[0];
    v139.i64[1] = v138.u32[1];
    v140 = v139;
    v141 = *&v132 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v142 = v137 + v94;
    if (v34 >= v137 + v94)
    {
      v145 = v94 & 0x3F;
      v146 = vaddq_s64(vzip1q_s64(0, v136), vdupq_n_s64(v145));
      v147 = (v31 + 8 * (v94 >> 6));
      v143 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v147, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v146)), vshlq_u64(vdupq_lane_s64(v147->i64[0], 0), vnegq_s64(v146)));
      if (v137 + v145 >= 0x81)
      {
        v143 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v147[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v146)), vshlq_u64(vdupq_laneq_s64(v147[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v146))), v143);
      }

      v94 = v142;
    }

    else
    {
      v143 = 0uLL;
      v49 = 1;
    }

    v148 = vshlq_u64(v143, vnegq_s64(v140));
    v149 = vuzp1q_s32(vzip1q_s64(v143, v148), vzip2q_s64(v143, v148));
    v150 = vshlq_u32(v149, vnegq_s32(v141));
    v151 = vuzp1q_s16(vzip1q_s32(v149, v150), vzip2q_s32(v149, v150));
    v152 = vshlq_u16(v151, vnegq_s16((*&v111 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v144 = vuzp1q_s8(vzip1q_s16(v151, v152), vzip2q_s16(v151, v152));
  }

  v153 = vmovl_u8(*&vpaddq_s8(v131, v131));
  v154 = vmovl_u16(*&vpaddq_s16(v153, v153));
  v155 = vpaddq_s32(v154, v154).u64[0];
  v156.i64[0] = v155;
  v156.i64[1] = HIDWORD(v155);
  v157 = v156;
  v158 = vaddvq_s64(v156);
  if (v158 >= 0x81 || v34 < v158 + v94)
  {
    goto LABEL_88;
  }

  v159 = vaddq_s64(vzip1q_s64(0, v157), vdupq_n_s64(v94 & 0x3F));
  v160 = (v31 + 8 * (v94 >> 6));
  v161 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v160, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v159)), vshlq_u64(vdupq_lane_s64(v160->i64[0], 0), vnegq_s64(v159)));
  if (v158 + (v94 & 0x3F) >= 0x81)
  {
    v161 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v160[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v159)), vshlq_u64(vdupq_laneq_s64(v160[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v159))), v161);
  }

  if ((v49 & 1) != 0 || (v12 = (a4 & 0x1F) + 1, 8 * ((a3 & 7) + v12) - (v158 + v94) >= 9))
  {
LABEL_88:
    v12 = 0;
    v233 |= 255 << (8 * ((&vars0 - 120) & 7u));
    goto LABEL_6;
  }

  v162 = vzip1_s32(*v77.i8, *&vextq_s8(v77, v77, 8uLL));
  v163 = vzip1_s32(*v99.i8, *&vextq_s8(v99, v99, 8uLL));
  v164.i64[0] = v162.u32[0];
  v164.i64[1] = v162.u32[1];
  v165 = v164;
  v164.i64[0] = v163.u32[0];
  v164.i64[1] = v163.u32[1];
  v166 = vshlq_u64(v74, vnegq_s64(v165));
  v167 = vshlq_u64(v107, vnegq_s64(v164));
  v168 = vuzp1q_s32(vzip1q_s64(v74, v166), vzip2q_s64(v74, v166));
  v169 = vuzp1q_s32(vzip1q_s64(v107, v167), vzip2q_s64(v107, v167));
  v170 = vshlq_u32(v168, vnegq_s32((*&v76 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v171 = vshlq_u32(v169, vnegq_s32((*&v98 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v172 = vuzp1q_s16(vzip1q_s32(v168, v170), vzip2q_s32(v168, v170));
  v173 = vuzp1q_s16(vzip1q_s32(v169, v171), vzip2q_s32(v169, v171));
  v174 = vshlq_u16(v172, vnegq_s16((*&v75 & __PAIR128__(0xF0FFF0FFF0FFF0FFLL, 0xF0FFF0FFF0FFF0FFLL))));
  v175 = vshlq_u16(v173, vnegq_s16((*&v87 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF0000))));
  v176 = vzip2q_s16(v172, v174);
  v177 = vzip1q_s16(v172, v174);
  v174.i64[0] = 0x808080808080808;
  v174.i64[1] = 0x808080808080808;
  v178 = vzip2q_s16(v173, v175);
  v179 = vzip1q_s16(v173, v175);
  v175.i64[0] = 0x808080808080808;
  v175.i64[1] = 0x808080808080808;
  v180 = v33 >> 4;
  v181 = vuzp1q_s8(v177, v176);
  v176.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v176.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v182 = vuzp1q_s8(v179, v178);
  v178.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v178.i64[1] = 0xF8F8F8F8F8F8F8F8;
  *v167.i8 = vzip1_s32(*v154.i8, *&vextq_s8(v154, v154, 8uLL));
  v183.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v183.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v184.i64[0] = 0x808080808080808;
  v184.i64[1] = 0x808080808080808;
  v185 = vshlq_s8(v181, vsubq_s8(v174, v75));
  v186 = vaddq_s8(v87, v178);
  v187 = vshlq_s8(v182, vsubq_s8(v175, v87));
  v164.i64[0] = v167.u32[0];
  v164.i64[1] = v167.u32[1];
  v188 = vshlq_s8(v185, vaddq_s8(v75, v176));
  v189 = vshlq_s8(v187, v186);
  v190 = vshlq_s8(vshlq_s8(v105, vsubq_s8(v175, v97)), vaddq_s8(v97, v178));
  v191 = vshlq_s8(vshlq_s8(v144, vsubq_s8(v175, v111)), vaddq_s8(v111, v178));
  v192 = vshlq_u64(v161, vnegq_s64(v164));
  v193 = vuzp1q_s32(vzip1q_s64(v161, v192), vzip2q_s64(v161, v192));
  v194 = vshlq_u32(v193, vnegq_s32((*&v153 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v195 = vuzp1q_s16(vzip1q_s32(v193, v194), vzip2q_s32(v193, v194));
  v196 = vshlq_u16(v195, vnegq_s16((*&v131 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v197 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v195, v196), vzip2q_s16(v195, v196)), vsubq_s8(v184, v131)), vaddq_s8(v131, v183));
  if (v88 == 2)
  {
    v198.i64[0] = 0xFFFF0000FFFF0000;
    v198.i64[1] = 0xFFFF0000FFFF0000;
    v199 = vmlaq_s8(vandq_s8(vdupq_n_s8(v93), v198), vdupq_n_s8(v90), xmmword_29D2F0D60);
    v189 = vaddq_s8(v189, v199);
    v190 = vaddq_s8(vaddq_s8(vdupq_n_s8(2 * v93), v199), v190);
    v191 = vaddq_s8(vaddq_s8(vdupq_n_s8(4 * v90), v199), v191);
    v197 = vaddq_s8(vaddq_s8(vdupq_n_s8(4 * v90 + 2 * v93), v199), v197);
  }

  v200 = vdupq_n_s8(v180).u64[0];
  v201 = vaddq_s8(vandq_s8(v188, v69), v189);
  v202 = vdupq_lane_s8(*v188.i8, 0);
  v203 = vsubq_s8(v201, vandq_s8(v202, v69));
  v204 = vsubq_s8(v190, vandq_s8(v202, v70));
  v205 = vsubq_s8(v191, vandq_s8(v202, v71));
  v206 = vsubq_s8(v197, vandq_s8(v202, v72));
  v207.i64[0] = 0x101010101010101;
  v207.i64[1] = 0x101010101010101;
  if (vaddlvq_s8(vceqq_s8(v39, v207)))
  {
    v208 = vandq_s8(v36, v207);
    v209 = vnegq_s8(v208);
    v210 = v203;
    v210.i8[0] = v203.i8[7];
    v210.i8[7] = v203.i8[0];
    v211 = vorrq_s8(vandq_s8(v210, v209), vandq_s8(v203, vceqzq_s8(v208)));
    v212 = vaddq_s8(v211, vandq_s8(vqtbl1q_s8(v211, xmmword_29D2F0D70), v209));
    v203.i64[0] = vaddq_s8(v212, vandq_s8(vqtbl1q_s8(v212, xmmword_29D2F0D80), v209)).u64[0];
    v213 = vaddq_s8(vandq_s8(vqtbl1q_s8(v204, xmmword_29D2F0D90), v209), v204);
    v204.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v213, xmmword_29D2F0DA0), v209), v213).u64[0];
    v214 = vaddq_s8(vandq_s8(vqtbl1q_s8(v205, xmmword_29D2F0DB0), v209), v205);
    v205.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v214, xmmword_29D2F0DC0), v209), v214).u64[0];
    v215 = vaddq_s8(vandq_s8(vqtbl1q_s8(v206, xmmword_29D2F0DD0), v209), v206);
    v206.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v215, xmmword_29D2F0DE0), v209), v215).u64[0];
  }

  v216 = vadd_s8(v200, *v203.i8);
  v217 = vadd_s8(*v205.i8, v200);
  *a1 = vuzp1_s16(v216, v217);
  *(a1 + a2) = vuzp2_s16(v216, v217);
  v218 = (a1 + 2 * a2);
  v219 = vadd_s8(*v204.i8, v200);
  v220 = vadd_s8(*v206.i8, v200);
  *v218 = vuzp1_s16(v219, v220);
  *(v218 + a2) = vuzp2_s16(v219, v220);
  return v12;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(unint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13, int8x8_t a14)
{
  v15 = a6;
  v16 = a5;
  v18 = a3;
  v20 = result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(a3, a4, result, a2, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
    v18 += result;
  }

  else
  {
    *a4 = 0;
  }

  v21 = v16 - 8;
  if (v16 >= 9 && v15)
  {
    if (v15 >= 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = v15;
    }

    if (v21 >= 8)
    {
      v23 = 8;
    }

    else
    {
      v23 = v16 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v18, a4 + 1, v20 + 1, a2, v23, v22, a7, a8, a9, a10, a11, a12, a13, a14);
    v18 += result;
  }

  else
  {
    a4[1] = 0;
  }

  v24 = 4 * a2;
  v25 = v15 - 4;
  if (v16 && v15 >= 5)
  {
    if (v25 >= 4)
    {
      v26 = 4;
    }

    else
    {
      v26 = v15 - 4;
    }

    if (v16 >= 8)
    {
      v27 = 8;
    }

    else
    {
      v27 = v16;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v18, a4 + 2, (v20 + v24), a2, v27, v26, a7, a8, a9, a10, a11, a12, a13, a14);
    v18 += result;
    if (v16 < 9)
    {
      goto LABEL_38;
    }
  }

  else
  {
    a4[2] = 0;
    if (v16 < 9)
    {
      goto LABEL_38;
    }
  }

  if (v15 >= 5)
  {
    if (v25 >= 4)
    {
      v28 = 4;
    }

    else
    {
      v28 = v15 - 4;
    }

    if (v21 >= 8)
    {
      v29 = 8;
    }

    else
    {
      v29 = v16 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v18, a4 + 3, (v20 + v24 + 8), a2, v29, v28, a7, a8, a9, a10, a11, a12, a13, a14);
    v18 += result;
    v30 = v15 - 8;
    goto LABEL_39;
  }

LABEL_38:
  a4[3] = 0;
  v30 = v15 - 8;
  if (!v16)
  {
    goto LABEL_48;
  }

LABEL_39:
  if (v15 < 9)
  {
LABEL_48:
    a4[4] = 0;
    if (v16 < 9)
    {
      goto LABEL_57;
    }

    goto LABEL_49;
  }

  if (v30 >= 4)
  {
    v31 = 4;
  }

  else
  {
    v31 = v30;
  }

  if (v16 >= 8)
  {
    v32 = 8;
  }

  else
  {
    v32 = v16;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v18, a4 + 4, &v20[a2], a2, v32, v31, a7, a8, a9, a10, a11, a12, a13, a14);
  v18 += result;
  if (v16 < 9)
  {
LABEL_57:
    a4[5] = 0;
    v35 = v15 - 12;
    if (!v16)
    {
      goto LABEL_67;
    }

    goto LABEL_58;
  }

LABEL_49:
  if (v15 < 9)
  {
    goto LABEL_57;
  }

  if (v30 >= 4)
  {
    v33 = 4;
  }

  else
  {
    v33 = v30;
  }

  if (v21 >= 8)
  {
    v34 = 8;
  }

  else
  {
    v34 = v16 - 8;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v18, a4 + 5, &v20[a2 + 1], a2, v34, v33, a7, a8, a9, a10, a11, a12, a13, a14);
  v18 += result;
  v35 = v15 - 12;
LABEL_58:
  if (v15 >= 0xD)
  {
    if (v35 >= 4)
    {
      v36 = 4;
    }

    else
    {
      v36 = v35;
    }

    if (v16 >= 8)
    {
      v37 = 8;
    }

    else
    {
      v37 = v16;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v18, a4 + 6, (v20 + 12 * a2), a2, v37, v36, a7, a8, a9, a10, a11, a12, a13, a14);
    v18 += result;
    if (v16 < 9)
    {
      goto LABEL_78;
    }

    goto LABEL_68;
  }

LABEL_67:
  a4[6] = 0;
  if (v16 < 9)
  {
LABEL_78:
    a4[7] = 0;
    return result;
  }

LABEL_68:
  if (v15 < 0xD)
  {
    goto LABEL_78;
  }

  if (v35 >= 4)
  {
    v38 = 4;
  }

  else
  {
    v38 = v35;
  }

  if (v21 >= 8)
  {
    v39 = 8;
  }

  else
  {
    v39 = v16 - 8;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v18, a4 + 7, (v20 + 12 * a2 + 8), a2, v39, v38, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressMacroblock(int8x8_t *a1, uint64_t a2, unsigned __int8 *a3, int a4, double a5, int8x8_t a6)
{
  v9 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1, 16, a2, *a3, a4, a5, a6);
  v12 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 1, 16, v9, a3[1], a4, v10, v11);
  v15 = v12 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 8, 16, v12, a3[2], a4, v13, v14);
  v18 = v15 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 9, 16, v15, a3[3], a4, v16, v17);
  v21 = v18 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 16, 16, v18, a3[4], a4, v19, v20);
  v24 = v21 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 17, 16, v21, a3[5], a4, v22, v23);
  v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 24, 16, v24, a3[6], a4, v25, v26);
  v30 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 25, 16, v24 + v27, v30, a4, v28, v29);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(uint64_t a1, _BYTE *a2, int16x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13, int8x8_t a14)
{
  v16 = *(a3 + a4);
  v17 = *a3;
  v18 = vzip1_s16(*a3, v16);
  *v23.i8 = vzip2_s16(*a3, v16);
  v19 = (a3 + 2 * a4);
  v20 = *(v19 + a4);
  *v22.i8 = vzip1_s16(*v19, v20);
  *v24.i8 = vzip2_s16(*v19, v20);
  *v21.i8 = v18;
  v21.u64[1] = v18;
  v22.i64[1] = v22.i64[0];
  v23.i64[1] = v23.i64[0];
  v24.i64[1] = v24.i64[0];
  v25 = vdupq_lane_s8(*a3, 0);
  v26 = vsubq_s8(v21, v25);
  v27 = vsubq_s8(v22, v25);
  v28 = vsubq_s8(v23, v25);
  v20.i8[0] = vmaxvq_s8(v26);
  v17.i8[0] = vminvq_s8(v26);
  v29 = vdupq_lane_s8(v20, 0);
  v30 = vdupq_lane_s8(v17, 0);
  v31 = vsubq_s8(v24, v25);
  v32 = vzip1q_s8(v29, v30);
  v33.i64[0] = 0x808080808080808;
  v33.i64[1] = 0x808080808080808;
  v34 = vsubq_s8(v33, vclsq_s8(v32));
  v35 = vbicq_s8(v34, vceqzq_s8(v32));
  v36 = vpmaxq_s8(v35, v35);
  v34.i8[0] = vmaxvq_s8(v27);
  a14.i8[0] = vminvq_s8(v27);
  v37 = vdupq_lane_s8(*v34.i8, 0);
  v38 = vdupq_lane_s8(a14, 0);
  v39 = vmaxq_s8(v29, v37);
  v40 = vminq_s8(v30, v38);
  v41 = vzip1q_s8(v37, v38);
  v42 = vsubq_s8(v33, vclsq_s8(v41));
  v43 = vbicq_s8(v42, vceqzq_s8(v41));
  v44 = vpmaxq_s8(v43, v43);
  v42.i8[0] = vmaxvq_s8(v28);
  v14.i8[0] = vminvq_s8(v28);
  v45 = vdupq_lane_s8(*v42.i8, 0);
  v46 = vdupq_lane_s8(v14, 0);
  v47 = vmaxq_s8(v39, v45);
  v48 = vminq_s8(v40, v46);
  v49 = vzip1q_s8(v45, v46);
  v50 = vsubq_s8(v33, vclsq_s8(v49));
  v51 = vbicq_s8(v50, vceqzq_s8(v49));
  v52 = vpmaxq_s8(v51, v51);
  v50.i8[0] = vmaxvq_s8(v31);
  v15.i8[0] = vminvq_s8(v31);
  v53 = vdupq_lane_s8(*v50.i8, 0);
  v54 = vdupq_lane_s8(v15, 0);
  v55 = vmaxq_s8(v47, v53);
  v56 = vminq_s8(v48, v54);
  v57 = vzip1q_s8(v53, v54);
  v58 = vbicq_s8(vsubq_s8(v33, vclsq_s8(v57)), vceqzq_s8(v57));
  v59 = vpmaxq_s8(v58, v58);
  v60 = vmaxq_s8(vmaxq_s8(v36, v44), vmaxq_s8(v52, v59));
  v61 = vclzq_s8(vsubq_s8(v55, v56));
  v62 = vsubq_s8(v33, v61);
  v63 = vminq_s8(v62, v60);
  if (vmaxvq_s8(v63))
  {
    v64 = 0;
    v65 = 0;
    v66.i64[0] = -1;
    v66.i64[1] = -1;
    v67.i64[0] = 0x707070707070707;
    v67.i64[1] = 0x707070707070707;
    v68 = vcgtq_s8(v60, v62);
    v69 = vandq_s8(vsubq_s8(vshlq_s8(v66, vsubq_s8(v67, v61)), v56), v68);
    v70 = vandq_s8(v68, v33);
    v68.i64[0] = 0x303030303030303;
    v68.i64[1] = 0x303030303030303;
    v71 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v36), v68), 0);
    v72 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v44), v68), 0);
    v73 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v52), v68), 0);
    v74 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v59), v68), 0);
    v75 = vsubq_s8(v63, v71);
    v76 = vsubq_s8(v63, v72);
    v77 = vsubq_s8(v63, v73);
    v78 = vsubq_s8(v63, v74);
    v79 = vceqq_s8(vaddq_s8(v74, v73), vnegq_s8(vaddq_s8(v71, v72)));
    v72.i64[0] = 0x404040404040404;
    v72.i64[1] = 0x404040404040404;
    v80 = vorrq_s8(vbicq_s8(v72, v79), vorrq_s8(vandq_s8(vceqzq_s8(v63), v68), v70));
    if (a5 >= 4 && a6 >= 2)
    {
      v384 = v69;
      v81 = v18.u8[1] - v18.u8[0];
      v82 = v81 << 28 >> 28;
      v83 = v18.u8[2] - v18.u8[0];
      v84.i64[0] = 0xFFFF0000FFFF0000;
      v84.i64[1] = 0xFFFF0000FFFF0000;
      v85 = vmlaq_s8(vandq_s8(vdupq_n_s8(v83 << 28 >> 28), v84), vdupq_n_s8(v82), xmmword_29D2F0D60);
      v86 = vsubq_s8(v26, v85);
      v87 = v83 << 28 >> 27;
      v88 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v87), v27), v85);
      v89 = v81 << 28 >> 26;
      v90 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v89), v28), v85);
      v91 = vaddq_s8(vdupq_n_s8(-(v87 + v89)), v31);
      v92 = vsubq_s8(v91, v85);
      v91.i8[0] = vmaxvq_s8(v86);
      v380 = v88;
      v382 = v86;
      v85.i8[0] = vminvq_s8(v86);
      v93 = vdupq_lane_s8(*v91.i8, 0);
      v94 = vdupq_lane_s8(*v85.i8, 0);
      v95 = vzip1q_s8(v93, v94);
      v96.i64[0] = 0x808080808080808;
      v96.i64[1] = 0x808080808080808;
      v97 = vsubq_s8(v96, vclsq_s8(v95));
      v98 = vbicq_s8(v97, vceqzq_s8(v95));
      v99 = vpmaxq_s8(v98, v98);
      v97.i8[0] = vmaxvq_s8(v88);
      v88.i8[0] = vminvq_s8(v88);
      v100 = vdupq_lane_s8(*v97.i8, 0);
      v101 = vdupq_lane_s8(*v88.i8, 0);
      v102 = vmaxq_s8(v93, v100);
      v103 = vminq_s8(v94, v101);
      v104 = vzip1q_s8(v100, v101);
      v105 = vsubq_s8(v96, vclsq_s8(v104));
      v106 = vbicq_s8(v105, vceqzq_s8(v104));
      v107 = vpmaxq_s8(v106, v106);
      v105.i8[0] = vmaxvq_s8(v90);
      v378 = v90;
      v18.i8[0] = vminvq_s8(v90);
      v108 = vdupq_lane_s8(*v105.i8, 0);
      v109 = vdupq_lane_s8(v18, 0);
      v110 = vmaxq_s8(v102, v108);
      v111 = vminq_s8(v103, v109);
      v112 = vzip1q_s8(v108, v109);
      v113 = vsubq_s8(v96, vclsq_s8(v112));
      v114 = vbicq_s8(v113, vceqzq_s8(v112));
      v115 = vpmaxq_s8(v114, v114);
      v113.i8[0] = vmaxvq_s8(v92);
      v116 = v77;
      v77.i8[0] = vminvq_s8(v92);
      v117 = vdupq_lane_s8(*v113.i8, 0);
      v118 = vdupq_lane_s8(*v77.i8, 0);
      v119 = vmaxq_s8(v110, v117);
      v375 = v31;
      v120 = vminq_s8(v111, v118);
      v121 = vzip1q_s8(v117, v118);
      v122 = vbicq_s8(vsubq_s8(v96, vclsq_s8(v121)), vceqzq_s8(v121));
      v123 = vpmaxq_s8(v122, v122);
      v124 = vmaxq_s8(vmaxq_s8(v99, v107), vmaxq_s8(v115, v123));
      v125 = vclzq_s8(vsubq_s8(v119, v120));
      v126 = vsubq_s8(v96, v125);
      v127 = vcgtq_s8(v124, v126);
      v128 = vminq_s8(v126, v124);
      v118.i64[0] = 0x202020202020202;
      v118.i64[1] = 0x202020202020202;
      v124.i64[0] = 0xA0A0A0A0A0A0A0ALL;
      v124.i64[1] = 0xA0A0A0A0A0A0A0ALL;
      v129 = vbslq_s8(v127, v124, v118);
      v124.i64[0] = 0x101010101010101;
      v124.i64[1] = 0x101010101010101;
      v130 = vmaxq_s8(v128, v124);
      v124.i64[0] = 0x303030303030303;
      v124.i64[1] = 0x303030303030303;
      v131 = vmaxq_s8(vminq_s8(vsubq_s8(v130, v99), v124), 0);
      v132 = vmaxq_s8(vminq_s8(vsubq_s8(v130, v107), v124), 0);
      v133 = vmaxq_s8(vminq_s8(vsubq_s8(v130, v115), v124), 0);
      v134 = vmaxq_s8(vminq_s8(vsubq_s8(v130, v123), v124), 0);
      v135 = vsubq_s8(v130, v131);
      v136 = vsubq_s8(v130, v132);
      v137 = vsubq_s8(v130, v133);
      v138 = vsubq_s8(v130, v134);
      v139 = vceqq_s8(vaddq_s8(v134, v133), vnegq_s8(vaddq_s8(v131, v132)));
      v131.i64[0] = 0x404040404040404;
      v131.i64[1] = 0x404040404040404;
      v140 = vorrq_s8(vbicq_s8(v131, v139), v129);
      v141.i64[0] = 0x8000800080008;
      v141.i64[1] = 0x8000800080008;
      v142 = vmovl_u8(*v80.i8);
      v143 = *&v142 & __PAIR128__(0xFFF8FFF8FFF8FFF8, 0xFFF8FFF8FFF8FFF8);
      v385 = vmovl_s8(*v63.i8);
      v144 = *&vshll_n_u8(*v80.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9);
      v145 = *&v142 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3);
      v146.i64[0] = 0x2000200020002;
      v146.i64[1] = 0x2000200020002;
      v147 = vshll_n_s8(vadd_s8(vadd_s8(*v116.i8, *v76.i8), *v78.i8), 3uLL);
      v148 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(v385, vceqzq_s16(v143)), v144), vandq_s8(vceqq_s16(v145, v146), v141)), *v75.i8, 0x707070707070707), v147), vaddq_s16(vmlal_s8(vaddl_u8(vbic_s8(*v130.i8, vcgt_u8(0x808080808080808, *v140.i8)), vand_s8(vadd_s8(*v140.i8, *v140.i8), 0x808080808080808)), *v135.i8, 0x707070707070707), vaddq_s16(vshll_n_s8(vadd_s8(vadd_s8(*v137.i8, *v136.i8), *v138.i8), 3uLL), v141)))), 0);
      v146.i16[0] = vaddlvq_s8(v148);
      v149 = v82 & 0xF | (16 * v83);
      v150 = v146.u16[0];
      if (v146.i16[0])
      {
        v151.i64[0] = 0x707070707070707;
        v151.i64[1] = 0x707070707070707;
        v152 = vsubq_s8(v151, v125);
        v153.i64[0] = -1;
        v153.i64[1] = -1;
        v154 = vandq_s8(vsubq_s8(vshlq_s8(v153, v152), v120), v127);
        v377 = vbslq_s8(v148, v382, v26);
        v383 = vbslq_s8(v148, v380, v27);
        v28 = vbslq_s8(v148, v378, v28);
        v31 = vbslq_s8(v148, v92, v375);
        v75 = vbslq_s8(v148, v135, v75);
        v69 = vbslq_s8(v148, v154, v384);
        v63 = vbslq_s8(v148, v130, v63);
        v80 = vbslq_s8(v148, v140, v80);
        v155 = vmovl_u8(*v80.i8);
        v143 = *&v155 & __PAIR128__(0xFFF8FFF8FFF8FFF8, 0xFFF8FFF8FFF8FFF8);
        v385 = vmovl_s8(*v63.i8);
        v144 = *&vshll_n_u8(*v80.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9);
        v145 = *&v155 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3);
        v156 = vmull_s8(*v75.i8, 0x707070707070707);
        v379 = vbslq_s8(v148, v137, v116);
        v381 = vbslq_s8(v148, v138, v78);
        v376 = vbslq_s8(v148, v136, v76);
        v147 = vshll_n_s8(vadd_s8(vadd_s8(*v379.i8, *v376.i8), *v381.i8), 3uLL);
      }

      else
      {
        v376 = v76;
        v377 = v26;
        v379 = v116;
        v381 = v78;
        v383 = v27;
        v156 = vmull_s8(*v75.i8, 0x707070707070707);
        v31 = v375;
        v69 = v384;
      }

      v65 = v149;
      v158 = vsubq_s8(v21, vqtbl1q_s8(v21, xmmword_29D2F0DF0));
      v159 = v22;
      v159.i8[7] = v21.i8[7];
      v160 = vsubq_s8(v22, vqtbl1q_s8(v159, xmmword_29D2F0E00));
      v161 = v23;
      v161.i8[7] = v21.i8[7];
      v162 = vsubq_s8(v23, vqtbl1q_s8(v161, xmmword_29D2F0E10));
      v163 = v24;
      v163.i8[7] = v21.i8[7];
      v164 = vqtbl1q_s8(v163, xmmword_29D2F0E20);
      v165 = vsubq_s8(v24, v164);
      v166 = v158;
      v166.i8[0] = v158.i8[7];
      v166.i8[7] = v158.i8[0];
      v158.i8[0] = vmaxvq_s8(v166);
      v164.i8[0] = vminvq_s8(v166);
      v167 = vdupq_lane_s8(*v158.i8, 0);
      v168 = vdupq_lane_s8(*v164.i8, 0);
      v169 = vzip1q_s8(v167, v168);
      v170.i64[0] = 0x808080808080808;
      v170.i64[1] = 0x808080808080808;
      v171 = vsubq_s8(v170, vclsq_s8(v169));
      v172 = vbicq_s8(v171, vceqzq_s8(v169));
      v173 = vpmaxq_s8(v172, v172);
      v171.i8[0] = vmaxvq_s8(v160);
      v137.i8[0] = vminvq_s8(v160);
      v174 = vdupq_lane_s8(*v171.i8, 0);
      v175 = vdupq_lane_s8(*v137.i8, 0);
      v176 = vmaxq_s8(v167, v174);
      v177 = vminq_s8(v168, v175);
      v178 = vzip1q_s8(v174, v175);
      v179 = vsubq_s8(v170, vclsq_s8(v178));
      v180 = vbicq_s8(v179, vceqzq_s8(v178));
      v181 = vpmaxq_s8(v180, v180);
      v180.i8[0] = vmaxvq_s8(v162);
      v179.i8[0] = vminvq_s8(v162);
      v182 = vdupq_lane_s8(*v180.i8, 0);
      v183 = vdupq_lane_s8(*v179.i8, 0);
      v184 = vmaxq_s8(v176, v182);
      v185 = vminq_s8(v177, v183);
      v186 = vzip1q_s8(v182, v183);
      v187 = vsubq_s8(v170, vclsq_s8(v186));
      v188 = vbicq_s8(v187, vceqzq_s8(v186));
      v189 = vpmaxq_s8(v188, v188);
      v188.i8[0] = vmaxvq_s8(v165);
      v187.i8[0] = vminvq_s8(v165);
      v190 = vdupq_lane_s8(*v188.i8, 0);
      v191 = vdupq_lane_s8(*v187.i8, 0);
      v192 = vmaxq_s8(v184, v190);
      v193 = vminq_s8(v185, v191);
      v194 = vzip1q_s8(v190, v191);
      v195 = vbicq_s8(vsubq_s8(v170, vclsq_s8(v194)), vceqzq_s8(v194));
      v196 = vpmaxq_s8(v195, v195);
      v197 = vmaxq_s8(vmaxq_s8(v173, v181), vmaxq_s8(v189, v196));
      v198 = vclzq_s8(vsubq_s8(v192, v193));
      v199 = vsubq_s8(v170, v198);
      v200 = vcgtq_s8(v197, v199);
      v201 = vminq_s8(v199, v197);
      v199.i64[0] = 0x909090909090909;
      v199.i64[1] = 0x909090909090909;
      v170.i64[0] = 0x202020202020202;
      v170.i64[1] = 0x202020202020202;
      v202 = vorrq_s8(vandq_s8(vceqzq_s8(v201), v170), vsubq_s8(vandq_s8(v200, v199), vmvnq_s8(v200)));
      v199.i64[0] = 0x303030303030303;
      v199.i64[1] = 0x303030303030303;
      v203 = vmaxq_s8(vminq_s8(vsubq_s8(v201, v173), v199), 0);
      v204 = vmaxq_s8(vminq_s8(vsubq_s8(v201, v181), v199), 0);
      v205 = vmaxq_s8(vminq_s8(vsubq_s8(v201, v189), v199), 0);
      v206 = vmaxq_s8(vminq_s8(vsubq_s8(v201, v196), v199), 0);
      v207 = vsubq_s8(v201, v203);
      v208 = vsubq_s8(v201, v204);
      v209 = vsubq_s8(v201, v205);
      v210 = vsubq_s8(v201, v206);
      v170.i64[0] = 0x404040404040404;
      v170.i64[1] = 0x404040404040404;
      v211 = vorrq_s8(vbicq_s8(v170, vceqq_s8(vaddq_s8(v206, v205), vnegq_s8(vaddq_s8(v203, v204)))), v202);
      v170.i64[0] = 0x2000200020002;
      v170.i64[1] = 0x2000200020002;
      v212 = vceqq_s16(v145, v170);
      v170.i64[0] = 0x8000800080008;
      v170.i64[1] = 0x8000800080008;
      v213 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v385, vceqzq_s16(v143)), v144), vaddq_s16(vandq_s8(v212, v170), v156)), v147), vaddq_s16(vmlal_s8(vaddw_u8(vmovl_s8(vbic_s8(*v201.i8, vcgt_u8(0x808080808080808, *v211.i8))), vand_s8(vadd_s8(*v211.i8, *v211.i8), 0x808080808080808)), *v207.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v209.i8, *v208.i8), *v210.i8), 3uLL)))), 0);
      v203.i16[0] = vaddlvq_s8(v213);
      v214 = v203.u16[0];
      if (v203.i16[0])
      {
        v215.i64[0] = 0x707070707070707;
        v215.i64[1] = 0x707070707070707;
        v216 = vsubq_s8(v215, v198);
        v217.i64[0] = -1;
        v217.i64[1] = -1;
        v25.i8[0] = vbslq_s8(v213, vextq_s8(v21, v21, 0xFuLL), v25).u8[0];
        v26 = vbslq_s8(v213, v166, v377);
        v27 = vbslq_s8(v213, v160, v383);
        v28 = vbslq_s8(v213, v162, v28);
        v31 = vbslq_s8(v213, v165, v31);
        v75 = vbslq_s8(v213, v207, v75);
        v76 = vbslq_s8(v213, v208, v376);
        v77 = vbslq_s8(v213, v209, v379);
        v78 = vbslq_s8(v213, v210, v381);
        v69 = vbslq_s8(v213, vandq_s8(vsubq_s8(vshlq_s8(v217, v216), v193), v200), v69);
        v63 = vbslq_s8(v213, v201, v63);
        v80 = vbslq_s8(v213, v211, v80);
      }

      else
      {
        v78 = v381;
        v27 = v383;
        v26 = v377;
        v77 = v379;
        v76 = v376;
      }

      if (v150)
      {
        v218 = v214 == 0;
      }

      else
      {
        v218 = 0;
      }

      v64 = v218;
    }

    v219 = vmovl_s8(*v80.i8);
    v220.i64[0] = 0x8000800080008;
    v220.i64[1] = 0x8000800080008;
    v221.i64[0] = 0x3000300030003;
    v221.i64[1] = 0x3000300030003;
    v222.i64[0] = 0x2000200020002;
    v222.i64[1] = 0x2000200020002;
    if (((vbicq_s8(vmovl_s8(*v63.i8), vceqzq_s16(vandq_s8(v219, v220))).u16[0] + ((2 * v219.i16[0]) & 8) + vandq_s8(vceqq_s16(vandq_s8(v219, v221), v222), v220).u16[0] - v75.i8[0] + 8 * v75.i8[0] + 8 * vaddq_s8(vaddq_s8(v77, v76), v78).i8[0]) - 149) <= 0xFFFFFFFFFFFFFF57)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 20;
    }

    else
    {
      v223 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v224 = 8 * (a1 & 7);
      if (v224)
      {
        v225 = *v223 & ~(-1 << v224);
      }

      else
      {
        v225 = 0;
      }

      v226 = vextq_s8(v75, 0, 8uLL);
      v227 = vextq_s8(v76, 0, 8uLL);
      v228 = vextq_s8(v77, 0, 8uLL);
      v229 = vextq_s8(v78, 0, 8uLL);
      if (v63.i8[0])
      {
        v230 = (16 * v63.i8[0] + 112) & 0x70;
      }

      else
      {
        v230 = 0;
      }

      *a2 = 32 * v80.i8[0];
      v231 = (v230 & 0xFFFF807F | v80.i8[0] & 8 | (v25.u8[0] << 7)) >> 3;
      v232 = (v231 << v224) | v225;
      if (v224 >= 0x34)
      {
        *v223 = v232;
        v232 = v231 >> (-8 * (a1 & 7u));
      }

      v233 = v224 + 12;
      v234.i64[0] = 0x202020202020202;
      v234.i64[1] = 0x202020202020202;
      v235 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*v219.i8, 0x4000400040004)))), v234);
      v234.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v234.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v236.i64[0] = -1;
      v236.i64[1] = -1;
      v237 = vandq_s8(vshlq_u8(v236, vorrq_s8(v235, v234)), vzip1q_s16(vzip1q_s8(vsubq_s8(v63, v226), vsubq_s8(v63, v227)), vzip1q_s8(vsubq_s8(v63, v228), vsubq_s8(v63, v229))).u32[0]);
      v238 = vmovl_u8(*v235.i8);
      v239 = vpaddq_s16(vshlq_u16(vmovl_u8(*v237.i8), vtrn1q_s16(0, v238)), vmovl_high_u8(v237));
      v240 = vpaddq_s16(v238, vmovl_high_u8(v235));
      v241 = vmovl_u16(*v240.i8);
      v242 = vmovl_high_u16(v240);
      v243 = vpaddq_s32(vshlq_u32(vmovl_u16(*v239.i8), vtrn1q_s32(0, v241)), vshlq_u32(vmovl_high_u16(v239), vtrn1q_s32(0, v242)));
      v244 = vpaddq_s32(v241, v242);
      v245.i64[0] = v243.u32[0];
      v245.i64[1] = v243.u32[1];
      v246 = v245;
      v245.i64[0] = v243.u32[2];
      v245.i64[1] = v243.u32[3];
      v247 = v245;
      v245.i64[0] = v244.u32[0];
      v245.i64[1] = v244.u32[1];
      v248 = v245;
      v245.i64[0] = v244.u32[2];
      v245.i64[1] = v244.u32[3];
      v249 = vpaddq_s64(vshlq_u64(v246, vzip1q_s64(0, v248)), vshlq_u64(v247, vzip1q_s64(0, v245)));
      v250 = vpaddq_s64(v248, v245);
      v251 = (v224 + 12) & 0x3C;
      v252 = (v249.i64[0] << v251) | v232;
      if ((v250.i64[0] + v251) >= 0x40)
      {
        *(v223 + ((v233 >> 3) & 8)) = v252;
        v252 = v249.i64[0] >> -v251;
      }

      v253 = v250.i64[0] + v233;
      v254 = v252 | (v249.i64[1] << v253);
      if ((v253 & 0x3F) + v250.i64[1] >= 0x40)
      {
        *(v223 + ((v253 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v254;
        v254 = v249.i64[1] >> -(v253 & 0x3F);
        if ((v253 & 0x3F) == 0)
        {
          v254 = 0;
        }
      }

      v255 = vceqq_s8(v63, v75);
      v256 = v253 + v250.i64[1];
      v257.i64[0] = 0x808080808080808;
      v257.i64[1] = 0x808080808080808;
      v258.i64[0] = -1;
      v258.i64[1] = -1;
      v259 = vandq_s8(vextq_s8(vtstq_s8(v80, v257), 0, 0xFuLL), v63);
      v260.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v260.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v261 = vandq_s8(vshlq_u8(v258, vaddq_s8(v259, v260)), v69);
      v262 = vmovl_u8(*v259.i8);
      v263 = vpaddq_s16(vshlq_u16(vmovl_u8(*v261.i8), vtrn1q_s16(0, v262)), vmovl_high_u8(v261));
      v264 = vpaddq_s16(v262, vmovl_high_u8(v259));
      v265 = vmovl_u16(*v264.i8);
      v266 = vmovl_high_u16(v264);
      v267 = vpaddq_s32(vshlq_u32(vmovl_u16(*v263.i8), vtrn1q_s32(0, v265)), vshlq_u32(vmovl_high_u16(v263), vtrn1q_s32(0, v266)));
      v268 = vpaddq_s32(v265, v266);
      v269.i64[0] = v267.u32[0];
      v269.i64[1] = v267.u32[1];
      v270 = v269;
      v269.i64[0] = v267.u32[2];
      v269.i64[1] = v267.u32[3];
      v271 = v269;
      v269.i64[0] = v268.u32[0];
      v269.i64[1] = v268.u32[1];
      v272 = v269;
      v269.i64[0] = v268.u32[2];
      v269.i64[1] = v268.u32[3];
      v273 = vpaddq_s64(vshlq_u64(v270, vzip1q_s64(0, v272)), vshlq_u64(v271, vzip1q_s64(0, v269)));
      v274 = vpaddq_s64(v272, v269);
      v275 = (v273.i64[0] << v256) | v254;
      if (v274.i64[0] + (v256 & 0x3F) >= 0x40)
      {
        *(v223 + ((v256 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v275;
        v275 = v273.i64[0] >> -(v256 & 0x3F);
        if ((v256 & 0x3F) == 0)
        {
          v275 = 0;
        }
      }

      v276 = vandq_s8(v69, v255);
      v277 = v274.i64[0] + v256;
      v278 = v275 | (v273.i64[1] << v277);
      if ((v277 & 0x3F) + v274.i64[1] >= 0x40)
      {
        *(v223 + ((v277 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v278;
        v278 = v273.i64[1] >> -(v277 & 0x3F);
        if ((v277 & 0x3F) == 0)
        {
          v278 = 0;
        }
      }

      v279 = vceqq_s8(v63, v76);
      v280 = vaddq_s8(v276, v26);
      v281 = v277 + v274.i64[1];
      if (v64)
      {
        v278 |= v65 << v281;
        if ((v281 & 0x3F) >= 0x38)
        {
          *(v223 + ((v281 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v278;
          v278 = v65 >> -(v281 & 0x3F);
        }

        v281 += 8;
      }

      v282 = vandq_s8(v69, v279);
      v283 = vmovl_high_u8(v226);
      v226.i8[0] = 0;
      v284.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v284.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v285.i64[0] = -1;
      v285.i64[1] = -1;
      v286 = vandq_s8(vshlq_u8(v285, vaddq_s8(v226, v284)), v280);
      v287 = vmovl_u8(*v226.i8);
      v288 = vpaddq_s16(vshlq_u16(vmovl_u8(*v286.i8), vtrn1q_s16(0, v287)), vshlq_u16(vmovl_high_u8(v286), vtrn1q_s16(0, v283)));
      v289 = vpaddq_s16(v287, v283);
      v290 = vmovl_u16(*v289.i8);
      v291 = vmovl_high_u16(v289);
      v292 = vpaddq_s32(vshlq_u32(vmovl_u16(*v288.i8), vtrn1q_s32(0, v290)), vshlq_u32(vmovl_high_u16(v288), vtrn1q_s32(0, v291)));
      v293 = vpaddq_s32(v290, v291);
      v294.i64[0] = v292.u32[0];
      v294.i64[1] = v292.u32[1];
      v295 = v294;
      v294.i64[0] = v292.u32[2];
      v294.i64[1] = v292.u32[3];
      v296 = v294;
      v294.i64[0] = v293.u32[0];
      v294.i64[1] = v293.u32[1];
      v297 = v294;
      v294.i64[0] = v293.u32[2];
      v294.i64[1] = v293.u32[3];
      v298 = vpaddq_s64(vshlq_u64(v295, vzip1q_s64(0, v297)), vshlq_u64(v296, vzip1q_s64(0, v294)));
      v299 = vpaddq_s64(v297, v294);
      v300 = (v298.i64[0] << v281) | v278;
      if (v299.i64[0] + (v281 & 0x3F) >= 0x40)
      {
        *(v223 + ((v281 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v300;
        v300 = v298.i64[0] >> -(v281 & 0x3F);
        if ((v281 & 0x3F) == 0)
        {
          v300 = 0;
        }
      }

      v301 = vceqq_s8(v63, v77);
      v302 = vaddq_s8(v27, v282);
      v303 = v299.i64[0] + v281;
      v304 = (v299.i64[0] + v281) & 0x3F;
      v305 = v300 | (v298.i64[1] << v303);
      if ((v303 & 0x3F) + v299.i64[1] >= 0x40)
      {
        *(v223 + ((v303 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v305;
        v305 = v298.i64[1] >> -v304;
        if (!v304)
        {
          v305 = 0;
        }
      }

      v306 = vandq_s8(v69, v301);
      v307 = v303 + v299.i64[1];
      v308.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v308.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v309.i64[0] = -1;
      v309.i64[1] = -1;
      v310 = vandq_s8(vshlq_u8(v309, vaddq_s8(v227, v308)), v302);
      v311 = vmovl_u8(*v227.i8);
      v312 = vmovl_high_u8(v227);
      v313 = vpaddq_s16(vshlq_u16(vmovl_u8(*v310.i8), vtrn1q_s16(0, v311)), vshlq_u16(vmovl_high_u8(v310), vtrn1q_s16(0, v312)));
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
      v325 = (v323.i64[0] << v307) | v305;
      if (v324.i64[0] + (v307 & 0x3F) >= 0x40)
      {
        *(v223 + ((v307 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v325;
        v325 = v323.i64[0] >> -(v307 & 0x3F);
        if ((v307 & 0x3F) == 0)
        {
          v325 = 0;
        }
      }

      v326 = vceqq_s8(v63, v78);
      v327 = vaddq_s8(v28, v306);
      v328 = v324.i64[0] + v307;
      v329 = v325 | (v323.i64[1] << v328);
      if ((v328 & 0x3F) + v324.i64[1] >= 0x40)
      {
        *(v223 + ((v328 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v329;
        v329 = v323.i64[1] >> -(v328 & 0x3F);
        if ((v328 & 0x3F) == 0)
        {
          v329 = 0;
        }
      }

      v330 = vandq_s8(v69, v326);
      v331 = v328 + v324.i64[1];
      v332.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v332.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v333.i64[0] = -1;
      v333.i64[1] = -1;
      v334 = vandq_s8(vshlq_u8(v333, vaddq_s8(v228, v332)), v327);
      v335 = vmovl_u8(*v228.i8);
      v336 = vmovl_high_u8(v228);
      v337 = vpaddq_s16(vshlq_u16(vmovl_u8(*v334.i8), vtrn1q_s16(0, v335)), vshlq_u16(vmovl_high_u8(v334), vtrn1q_s16(0, v336)));
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
      v349 = (v347.i64[0] << v331) | v329;
      if (v348.i64[0] + (v331 & 0x3F) >= 0x40)
      {
        *(v223 + ((v331 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v349;
        v349 = v347.i64[0] >> -(v331 & 0x3F);
        if ((v331 & 0x3F) == 0)
        {
          v349 = 0;
        }
      }

      v350 = vaddq_s8(v31, v330);
      v351 = v348.i64[0] + v331;
      v352 = v349 | (v347.i64[1] << v351);
      if ((v351 & 0x3F) + v348.i64[1] >= 0x40)
      {
        *(v223 + ((v351 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v352;
        v352 = v347.i64[1] >> -(v351 & 0x3F);
        if ((v351 & 0x3F) == 0)
        {
          v352 = 0;
        }
      }

      v353 = v351 + v348.i64[1];
      v354.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v354.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v355.i64[0] = -1;
      v355.i64[1] = -1;
      v356 = vandq_s8(vshlq_u8(v355, vaddq_s8(v229, v354)), v350);
      v357 = vmovl_u8(*v229.i8);
      v358 = vmovl_high_u8(v229);
      v359 = vpaddq_s16(vshlq_u16(vmovl_u8(*v356.i8), vtrn1q_s16(0, v357)), vshlq_u16(vmovl_high_u8(v356), vtrn1q_s16(0, v358)));
      v360 = vpaddq_s16(v357, v358);
      v361 = vmovl_u16(*v360.i8);
      v362 = vmovl_high_u16(v360);
      v363 = vpaddq_s32(vshlq_u32(vmovl_u16(*v359.i8), vtrn1q_s32(0, v361)), vshlq_u32(vmovl_high_u16(v359), vtrn1q_s32(0, v362)));
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
      v371 = (v369.i64[0] << v353) | v352;
      if (v370.i64[0] + (v353 & 0x3F) > 0x3F)
      {
        *(v223 + ((v353 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v371;
        if ((v353 & 0x3F) != 0)
        {
          v371 = v369.i64[0] >> -(v353 & 0x3F);
        }

        else
        {
          v371 = 0;
        }
      }

      v372 = v370.i64[0] + v353;
      v373 = v371 | (v369.i64[1] << v372);
      if ((v372 & 0x3F) + v370.i64[1] >= 0x40)
      {
        *(v223 + ((v372 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v373;
        v373 = v369.i64[1] >> -(v372 & 0x3F);
        if ((v372 & 0x3F) == 0)
        {
          v373 = 0;
        }
      }

      v374 = v372 + v370.i64[1];
      if ((v374 & 0x3F) != 0)
      {
        *(v223 + ((v374 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v373;
      }

      result = (v374 - v224 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = a3->i8[0];
    *a2 = 96;
    return 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblock(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v67 = *MEMORY[0x29EDCA608];
  v65 = 0u;
  v66 = 0u;
  if (!a6 || !a5)
  {
    goto LABEL_30;
  }

  if (a5 <= 1)
  {
    v10 = 0;
    if (a6 >= 8 && a4 == 1)
    {
      if (a6 < 0x20)
      {
        v10 = 0;
        goto LABEL_25;
      }

      v10 = a6 & 0xE0;
      v33 = (a3 + 16);
      v34 = &v66;
      v35 = v10;
      do
      {
        v36 = *v33;
        *(v34 - 1) = *(v33 - 1);
        *v34 = v36;
        v33 += 2;
        v34 += 2;
        v35 -= 32;
      }

      while (v35);
      if (v10 == a6)
      {
        goto LABEL_30;
      }

      if ((a6 & 0x18) != 0)
      {
LABEL_25:
        v37 = v10;
        v10 = a6 & 0xF8;
        v38 = (a3 + v37);
        v39 = (&v65 + v37);
        v40 = v37 - v10;
        do
        {
          v41 = *v38++;
          *v39++ = v41;
          v40 += 8;
        }

        while (v40);
        if (v10 == a6)
        {
          goto LABEL_30;
        }
      }
    }

    v42 = a6 - v10;
    v43 = &v65 + v10;
    v44 = (a3 + v10 * a4);
    do
    {
      *v43++ = *v44;
      v44 += a4;
      --v42;
    }

    while (v42);
    goto LABEL_30;
  }

  v11 = a5 & 0x7E;
  if (a5 == v11)
  {
    v12 = 0;
    v13 = &v65 + 4;
    v14 = (a3 + 1);
    do
    {
      v15 = v14;
      v16 = v13;
      v17 = a5;
      do
      {
        v18 = *(v15 - 1);
        v19 = *v15;
        v15 += 2;
        *(v16 - 4) = v18;
        *v16 = v19;
        v16 += 8;
        v17 -= 2;
      }

      while (v17);
      ++v12;
      ++v13;
      v14 += a4;
    }

    while (v12 != a6);
  }

  else
  {
    v20 = 0;
    v21 = &v65 + 4;
    v22 = (a3 + 1);
    v23 = &v65 + 8 * ((a5 >> 1) & 0x3F);
    do
    {
      v24 = v22;
      v25 = v21;
      v26 = a5 & 0x7E;
      do
      {
        v27 = *(v24 - 1);
        v28 = *v24;
        v24 += 2;
        *(v25 - 4) = v27;
        *v25 = v28;
        v25 += 8;
        v26 -= 2;
      }

      while (v26);
      v29 = (a3 + v20 * a4 + v11);
      v30 = v23;
      v31 = a5 - v11;
      do
      {
        v32 = *v29++;
        *v30 = v32;
        v30 += 4;
        --v31;
      }

      while (v31);
      ++v20;
      ++v21;
      v22 += a4;
      ++v23;
    }

    while (v20 != a6);
  }

LABEL_30:
  v60.i32[0] = v65;
  v60.i32[1] = BYTE4(v65);
  v60.i32[2] = BYTE1(v65);
  v60.i32[3] = BYTE5(v65);
  v61 = BYTE8(v65);
  v62 = BYTE12(v65);
  if (a5 >= 4)
  {
    v45 = 4;
  }

  else
  {
    v45 = a5;
  }

  if (a5 >= 4)
  {
    v46 = a5 - 4;
  }

  else
  {
    v46 = 0;
  }

  v63 = BYTE9(v65);
  v64 = BYTE13(v65);
  if (a6 >= 2)
  {
    v47 = 2;
  }

  else
  {
    v47 = a6;
  }

  if (a6 >= 2)
  {
    v48 = a6 - 2;
  }

  else
  {
    v48 = 0;
  }

  v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1, &v60, a7, v45, v47);
  v60.i32[0] = BYTE2(v65);
  v60.i32[1] = BYTE6(v65);
  v60.i32[2] = BYTE3(v65);
  v60.i32[3] = BYTE7(v65);
  v61 = BYTE10(v65);
  v62 = BYTE14(v65);
  v63 = BYTE11(v65);
  v64 = HIBYTE(v65);
  if (a6 >= 4)
  {
    v51 = 2;
  }

  else
  {
    v51 = v48;
  }

  v52 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 5, &v60, a7, v45, v51);
  v60.i32[0] = v66;
  v60.i32[1] = BYTE4(v66);
  v60.i32[2] = BYTE1(v66);
  v60.i32[3] = BYTE5(v66);
  v61 = BYTE8(v66);
  v62 = BYTE12(v66);
  if (a5 >= 8)
  {
    v53 = 4;
  }

  else
  {
    v53 = v46;
  }

  v63 = BYTE9(v66);
  v64 = BYTE13(v66);
  v54 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 10, &v60, a7, v53, v47);
  v60.i32[0] = BYTE2(v66);
  v60.i32[1] = BYTE6(v66);
  v60.i32[2] = BYTE3(v66);
  v60.i32[3] = BYTE7(v66);
  v61 = BYTE10(v66);
  v62 = BYTE14(v66);
  v63 = BYTE11(v66);
  v64 = HIBYTE(v66);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 15, &v60, a7, v53, v51);
  if (v54)
  {
    v56 = 4;
  }

  else
  {
    v56 = 0;
  }

  if (v52)
  {
    v57 = 2;
  }

  else
  {
    v57 = 0;
  }

  if (result)
  {
    v58 = -8;
  }

  else
  {
    v58 = -16;
  }

  *a2 = v58 | v56 | v50 | v57;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(uint64_t a1, int8x16_t *a2, int a3, unsigned int a4, unsigned int a5)
{
  v121 = *MEMORY[0x29EDCA608];
  if (a3 == 1)
  {
    v9.i64[0] = 0x8000000080;
    v9.i64[1] = 0x8000000080;
    v10.i64[0] = 0x8100000081;
    v10.i64[1] = 0x8100000081;
    v7 = vbicq_s8(veorq_s8(*a2, v9), vceqq_s32(*a2, v10));
    v8 = vbicq_s8(veorq_s8(a2[1], v9), vceqq_s32(a2[1], v10));
    goto LABEL_5;
  }

  if (a3 == 3)
  {
    v6.i64[0] = 0x8000000080;
    v6.i64[1] = 0x8000000080;
    v7 = veorq_s8(*a2, v6);
    v8 = veorq_s8(a2[1], v6);
LABEL_5:
    v119 = v7;
    v120 = v8;
    v11 = v7.i32[0];
    goto LABEL_7;
  }

  v12 = a2[1];
  v119 = *a2;
  v120 = v12;
  v11 = v119.i32[0];
LABEL_7:
  if (a4)
  {
    v13 = a5 != 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = a4 > 1 && a5 != 0;
  if (v14)
  {
    v15 = v119.u32[1];
    v16 = v119.i32[1] < v11;
    if (v119.i32[1] >= v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = v119.u32[1];
    }

    if (v11 > v119.i32[1])
    {
      v15 = v11;
    }
  }

  else
  {
    v16 = 0;
    v15 = v11;
    v17 = v11;
  }

  v18 = a5 <= 1 || a4 == 0;
  v19 = !v18;
  if (!v18)
  {
    if (v119.i32[2] < v17)
    {
      v16 = 2;
      v17 = v119.u32[2];
    }

    if (v15 <= v119.i32[2])
    {
      v15 = v119.u32[2];
    }
  }

  v21 = a5 > 1 && a4 > 1;
  if (v21)
  {
    if (v119.i32[3] < v17)
    {
      v16 = 3;
      v17 = v119.u32[3];
    }

    if (v15 <= v119.i32[3])
    {
      v15 = v119.u32[3];
    }
  }

  if (a5)
  {
    v22 = a4 > 2;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  if (v23 == 1)
  {
    if (v120.i32[0] < v17)
    {
      v16 = 4;
      v17 = v120.i32[0];
    }

    if (v15 <= v120.i32[0])
    {
      v15 = v120.i32[0];
    }
  }

  if (a5)
  {
    v24 = a4 > 3;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;
  if (v25 == 1)
  {
    if (v120.i32[1] < v17)
    {
      v16 = 5;
      v17 = v120.u32[1];
    }

    if (v15 <= v120.i32[1])
    {
      v15 = v120.u32[1];
    }
  }

  v27 = a5 > 1 && a4 > 2;
  if (v27)
  {
    if (v120.i32[2] < v17)
    {
      v16 = 6;
      v17 = v120.u32[2];
    }

    if (v15 <= v120.i32[2])
    {
      v15 = v120.u32[2];
    }
  }

  v29 = a5 > 1 && a4 > 3;
  if (v29)
  {
    if (v120.i32[3] < v17)
    {
      v16 = 7;
      v17 = v120.u32[3];
    }

    if (v15 <= v120.i32[3])
    {
      v15 = v120.u32[3];
    }
  }

  v30 = __clz(v15 - v17);
  if (v15)
  {
    v31 = v15 == 255;
  }

  else
  {
    v31 = 1;
  }

  v32 = !v31;
  v33 = v15 - v17;
  if (v15 != v17)
  {
    v32 = 33 - v30;
  }

  if ((a3 | 2) == 3)
  {
    v34 = 0;
    if (v17 <= 0x7F && v15 >= 0x80)
    {
      v34 = kDQuadParamTable[10 * v32 + 8] == 0;
    }

    if (v32 > 5)
    {
      goto LABEL_103;
    }

LABEL_102:
    if (!v34)
    {
      goto LABEL_111;
    }

    goto LABEL_103;
  }

  v34 = 0;
  if (v32 <= 5)
  {
    goto LABEL_102;
  }

LABEL_103:
  v35 = kDQuadParamTable[10 * v32 + 4];
  v36 = v35 + 1;
  if (v34)
  {
    v37 = 0;
  }

  else
  {
    v37 = -2;
  }

  v38 = v17 & ~(-1 << (7 - v35));
  if (v36 >= 8)
  {
    v38 = 0;
  }

  v39 = v38 + v37;
  if (v39 >= 1 && __clz(v39 + v33) < v30)
  {
    ++v32;
  }

LABEL_111:
  v40 = v32;
  v43 = &kDQuadParamTable[10 * v32];
  v41 = *(v43 + 8);
  v42 = *(v43 + 20);
  LODWORD(v43) = v42 + 1;
  if (a3 == 4)
  {
    result = 1;
  }

  else
  {
    if (a4)
    {
      v45 = a5 == 0;
    }

    else
    {
      v45 = 1;
    }

    result = v45 || v41 >> v43 > 0x10;
  }

  v47 = 0;
  v48 = 0;
  v49 = kDQuadParamTable[10 * v32 + 4];
  v50 = v49 + 1;
  if ((v49 + 1) < 8)
  {
    v51 = (v49 + 1);
  }

  else
  {
    v51 = 8;
  }

  v52 = 8 * (v42 != 0);
  if (v52 >= v43)
  {
    v43 = v43;
  }

  else
  {
    v43 = v52;
  }

  v53 = (-1 << (8 - v51)) & v17;
  v54 = v11 - v53;
  if (!v13)
  {
    v54 = 0;
  }

  v18 = !v14;
  v55 = v119.i32[1] - v53;
  if (v18)
  {
    v55 = 0;
  }

  v118[0] = v54;
  v118[1] = v55;
  memset(v116, 0, sizeof(v116));
  v117 = 0;
  v56 = v41 >> v43;
  v57 = v119.i32[2] - v53;
  if (!v19)
  {
    v57 = 0;
  }

  v58 = v119.i32[3] - v53;
  if (!v21)
  {
    v58 = 0;
  }

  v118[2] = v57;
  v118[3] = v58;
  v59 = v120.i32[0] - v53;
  if (!v23)
  {
    v59 = 0;
  }

  v60 = v120.i32[1] - v53;
  if (!v25)
  {
    v60 = 0;
  }

  v118[4] = v59;
  v118[5] = v60;
  v61 = v120.i32[2] - v53;
  if (!v27)
  {
    v61 = 0;
  }

  v62 = v120.i32[3] - v53;
  if (!v29)
  {
    v62 = 0;
  }

  v118[6] = v61;
  v118[7] = v62;
  if (v56 <= 1)
  {
    v63 = 1;
  }

  else
  {
    v63 = v41 >> v43;
  }

  v64 = v16;
  v65 = 4 * v16;
  v66 = &byte_29D2F3081;
  do
  {
    if (v65 != v47)
    {
      if (v43)
      {
        v67 = v118[v47 / 4] / v63;
      }

      else
      {
        LODWORD(v67) = 0;
      }

      *(v116 + v48) = v67;
      if (v56 >= 2)
      {
        v68 = v118[v47 / 4];
        if (v68)
        {
          if (v68 / v63 * v63 == v68 && ((v68 / v63) & 1) != 0)
          {
            if (v53 || v67 != 1)
            {
              if ((a3 | 2) != 3 || (v70 = v119.u32[v47 / 4], v70 != 128) && ((a3 | 2) != 3 || v63 + 128 != v70))
              {
                LODWORD(v67) = v67 - 1;
                *(v116 + v48) = v67;
              }
            }

            else
            {
              LODWORD(v67) = 1;
            }
          }
        }
      }

      if (v67 >> v43 || v119.i32[v47 / 4] == 255)
      {
        *(v116 + v48) = ~(-1 << v43);
      }

      if (*v66 >= a5 || *(v66 - 1) >= a4)
      {
        *(v116 + v48) = 0;
      }

      ++v48;
    }

    v47 += 4;
    v66 += 2;
  }

  while (v47 != 32);
  v71 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v72 = 8 * (a1 & 7);
  *(a1 + 4) = 0;
  *a1 = 0;
  if (result)
  {
    v73 = 0;
    v74 = 0;
    v75 = v72;
    do
    {
      v76 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v73;
      if (v76[1] >= a5 || *v76 >= a4)
      {
        v78 = 0;
      }

      else
      {
        v78 = v119.u32[v73] >> 4;
      }

      if ((v75 - v72 + (v74 << 6) - 37) >= 0xFFFFFFFFFFFFFFD7)
      {
        v79 = 0;
        v80 = 4;
        do
        {
          v81 = 64 - v75;
          if (64 - v75 >= v80)
          {
            v81 = v80;
          }

          v71[v74] |= ((v78 >> v79) & ~(-1 << v81)) << v75;
          v79 += v81;
          v82 = v81 + v75;
          v74 += v82 >> 6;
          v75 = v82 & 0x3F;
          v80 -= v81;
        }

        while (v80);
      }

      ++v73;
    }

    while (v73 != 8);
    return result;
  }

  if (v17 | v40)
  {
    v83 = v72 | 3;
    if (v40 < 3)
    {
      v84 = v40 + 1;
    }

    else
    {
      v84 = 0;
    }

    if (v40 >= 3)
    {
      v85 = (v40 + 6) & 7;
    }

    else
    {
      v85 = 0;
    }

    *v71 |= v85 << v72;
    if (v40 >= 3)
    {
      v87 = 0;
      v91 = 3;
      if (!v50)
      {
        goto LABEL_216;
      }

LABEL_211:
      if ((v51 - v72 + v83 + (v87 << 6)) <= 0x28)
      {
        v92 = 0;
        v93 = v51;
        do
        {
          v94 = 64 - v83;
          if (64 - v83 >= v93)
          {
            v94 = v93;
          }

          v71[v87] |= (((v53 >> (8 - v51)) >> v92) & ~(-1 << v94)) << v83;
          v92 += v94;
          v95 = v94 + v83;
          v87 += v95 >> 6;
          v83 = v95 & 0x3F;
          v93 -= v94;
        }

        while (v93);
      }

      goto LABEL_216;
    }

    v86 = 2 * (v40 < 3);
  }

  else
  {
    v84 = 0;
    v83 = v72 | 3;
    v86 = 2;
  }

  if (v86 - v72 + v83 <= 0x28)
  {
    v87 = 0;
    v88 = 0;
    do
    {
      v89 = 64 - v83;
      if (64 - v83 >= v86)
      {
        v89 = v86;
      }

      v71[v87] |= ((v84 >> v88) & ~(-1 << v89)) << v83;
      v88 += v89;
      v90 = v89 + v83;
      v87 += v90 >> 6;
      v83 = v90 & 0x3F;
      v86 -= v89;
    }

    while (v86);
  }

  else
  {
    v87 = 0;
  }

  v91 = 5;
  if (!v40)
  {
    goto LABEL_217;
  }

  if (v50)
  {
    goto LABEL_211;
  }

LABEL_216:
  v91 += v51;
LABEL_217:
  if (v43)
  {
    if ((v83 - v72 + (v87 << 6) + 3) <= 0x28)
    {
      v96 = 0;
      v97 = 3;
      do
      {
        v98 = 64 - v83;
        if (64 - v83 >= v97)
        {
          v98 = v97;
        }

        v71[v87] |= ((v64 >> v96) & ~(-1 << v98)) << v83;
        v96 += v98;
        v99 = v98 + v83;
        v87 += v99 >> 6;
        v83 = v99 & 0x3F;
        v97 -= v98;
      }

      while (v97);
    }

    v91 += 3;
  }

  v100 = (37 * (40 - v91)) >> 8;
  v101 = -7 * v100 + 40 - v91;
  if ((v101 - 257) >= 0xFFFFFF00 && v83 - v72 + (v87 << 6) + v101 <= 0x28)
  {
    do
    {
      v102 = 64 - v83;
      if (64 - v83 >= v101)
      {
        v102 = v101;
      }

      v103 = v102 + v83;
      v87 += v103 >> 6;
      v83 = v103 & 0x3F;
      v101 -= v102;
    }

    while (v101);
  }

  v104 = 0;
  v105 = v100 - v43;
  if (v105)
  {
    v106 = v105 > 0x100;
  }

  else
  {
    v106 = 1;
  }

  v107 = v106;
  do
  {
    if (v43 && v43 - v72 + v83 + (v87 << 6) <= 0x28)
    {
      v108 = 0;
      v109 = *(v116 + v104);
      v110 = v43;
      do
      {
        v111 = 64 - v83;
        if (64 - v83 >= v110)
        {
          v111 = v110;
        }

        v71[v87] |= ((v109 >> v108) & ~(-1 << v111)) << v83;
        v108 += v111;
        v112 = v111 + v83;
        v87 += v112 >> 6;
        v83 = v112 & 0x3F;
        v110 -= v111;
      }

      while (v110);
    }

    if ((v107 & 1) == 0 && v83 - v72 + (v87 << 6) + v105 <= 0x28)
    {
      v113 = v105;
      do
      {
        v114 = 64 - v83;
        if (64 - v83 >= v113)
        {
          v114 = v113;
        }

        v115 = v114 + v83;
        v87 += v115 >> 6;
        v83 = v115 & 0x3F;
        v113 -= v114;
      }

      while (v113);
    }

    ++v104;
  }

  while (v104 != 7);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(unint64_t result, _DWORD *a2, int a3)
{
  v3 = (result & 0xFFFFFFFFFFFFFFF8);
  v4 = 8 * (result & 7);
  if (a3 == 4)
  {
    v5 = (v4 | 4) - v4;
    v6 = __CFADD__(v5 - 37, 41);
    if ((v5 - 37) >= 0xFFFFFFFFFFFFFFD7)
    {
      v7 = ((v4 + 8) & 0x38) - v4;
    }

    else
    {
      v7 = (v4 | 4) - v4;
    }

    if ((v5 - 37) >= 0xFFFFFFFFFFFFFFD7)
    {
      v8 = (v4 + 8) & 0x38;
    }

    else
    {
      v8 = v4 | 4;
    }

    if (v6)
    {
      v9 = (v4 + 8) >> 6;
    }

    else
    {
      v9 = 0;
    }

    if (v6)
    {
      v10 = 16 * ((*v3 >> (v4 | 4u)) & 0xF);
    }

    else
    {
      v10 = 0;
    }

    *a2 = 16 * ((*v3 >> v4) & 0xF);
    a2[1] = v10;
    if (v7 + (v9 << 6) - 37 >= 0xFFFFFFFFFFFFFFD7)
    {
      v24 = 0;
      v25 = 0;
      v26 = 4;
      do
      {
        v27 = 64 - v8;
        if (64 - v8 >= v26)
        {
          v27 = v26;
        }

        result = ((v3[v9] >> v8) & ~(-1 << v27)) << v25;
        v24 |= result;
        v25 += v27;
        v28 = v27 + v8;
        v9 += v28 >> 6;
        v8 = v28 & 0x3F;
        v26 -= v27;
      }

      while (v26);
      a2[2] = 16 * (v24 & 0xF);
      if (v8 - v4 + (v9 << 6) - 37 >= 0xFFFFFFFFFFFFFFD7)
      {
        v31 = 0;
        v32 = 0;
        v33 = 4;
        do
        {
          v34 = 64 - v8;
          if (64 - v8 >= v33)
          {
            v34 = v33;
          }

          result = ((v3[v9] >> v8) & ~(-1 << v34)) << v32;
          v31 |= result;
          v32 += v34;
          v35 = v34 + v8;
          v9 += v35 >> 6;
          v8 = v35 & 0x3F;
          v33 -= v34;
        }

        while (v33);
        a2[3] = 16 * (v31 & 0xF);
        if (v8 - v4 + (v9 << 6) - 37 >= 0xFFFFFFFFFFFFFFD7)
        {
          v36 = 0;
          v37 = 0;
          v38 = 4;
          do
          {
            v39 = 64 - v8;
            if (64 - v8 >= v38)
            {
              v39 = v38;
            }

            result = ((v3[v9] >> v8) & ~(-1 << v39)) << v37;
            v36 |= result;
            v37 += v39;
            v40 = v39 + v8;
            v9 += v40 >> 6;
            v8 = v40 & 0x3F;
            v38 -= v39;
          }

          while (v38);
          a2[4] = 16 * (v36 & 0xF);
          if (v8 - v4 + (v9 << 6) - 37 >= 0xFFFFFFFFFFFFFFD7)
          {
            v41 = 0;
            v42 = 0;
            v43 = 4;
            do
            {
              v44 = 64 - v8;
              if (64 - v8 >= v43)
              {
                v44 = v43;
              }

              result = ((v3[v9] >> v8) & ~(-1 << v44)) << v42;
              v41 |= result;
              v42 += v44;
              v45 = v44 + v8;
              v9 += v45 >> 6;
              v8 = v45 & 0x3F;
              v43 -= v44;
            }

            while (v43);
            a2[5] = 16 * (v41 & 0xF);
            if (v8 - v4 + (v9 << 6) - 37 >= 0xFFFFFFFFFFFFFFD7)
            {
              v46 = 0;
              v47 = 0;
              v48 = 4;
              do
              {
                v49 = 64 - v8;
                if (64 - v8 >= v48)
                {
                  v49 = v48;
                }

                result = ((v3[v9] >> v8) & ~(-1 << v49)) << v47;
                v46 |= result;
                v47 += v49;
                v50 = v49 + v8;
                v9 += v50 >> 6;
                v8 = v50 & 0x3F;
                v48 -= v49;
              }

              while (v48);
              v51 = v8 - v4 + (v9 << 6) - 37;
              a2[6] = 16 * (v46 & 0xF);
              v30 = a2 + 7;
              if (v51 >= 0xFFFFFFFFFFFFFFD7)
              {
                v52 = 0;
                v53 = 0;
                v54 = 4;
                do
                {
                  v55 = 64 - v8;
                  if (64 - v8 >= v54)
                  {
                    v55 = v54;
                  }

                  result = ((v3[v9] >> v8) & ~(-1 << v55)) << v53;
                  v52 |= result;
                  v53 += v55;
                  v56 = v55 + v8;
                  v9 += v56 >> 6;
                  v8 = v56 & 0x3F;
                  v54 -= v55;
                }

                while (v54);
                v29 = 16 * (v52 & 0xF);
              }

              else
              {
                v29 = 0;
              }

              goto LABEL_42;
            }

LABEL_41:
            v29 = 0;
            a2[6] = 0;
            v30 = a2 + 7;
LABEL_42:
            *v30 = v29;
            return result;
          }

LABEL_40:
          a2[5] = 0;
          goto LABEL_41;
        }

LABEL_39:
        a2[4] = 0;
        goto LABEL_40;
      }
    }

    else
    {
      a2[2] = 0;
    }

    a2[3] = 0;
    goto LABEL_39;
  }

  v11 = 0;
  v12 = 0;
  v13 = a3 & 0xFFFFFFFD;
  v14 = ((a3 & 0xFFFFFFFD) == 1) << 7;
  v15 = 8 * (result & 7);
  do
  {
    if ((v15 - v4 + (v12 << 6) - 37) >= 0xFFFFFFFFFFFFFFD7)
    {
      v16 = 0;
      v17 = 0;
      v18 = 4;
      do
      {
        v19 = 64 - v15;
        if (64 - v15 >= v18)
        {
          v19 = v18;
        }

        v16 |= ((v3[v12] >> v15) & ~(-1 << v19)) << v17;
        v17 += v19;
        v20 = v19 + v15;
        v12 += v20 >> 6;
        v15 = v20 & 0x3F;
        v18 -= v19;
      }

      while (v18);
    }

    else
    {
      v16 = 0;
    }

    v21 = 16 * (v16 & 0xF);
    if (v21 != 128 || v13 != 1)
    {
      v23 = v21 - (v16 & 1) + 8;
      if (v21 == 240)
      {
        v23 = 255;
      }

      if (v21)
      {
        v21 = v23;
      }

      else
      {
        v21 = 0;
      }
    }

    result = v21 ^ v14;
    a2[v11++] = result;
  }

  while (v11 != 8);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(uint64_t a1, int *a2, int a3)
{
  v167 = *MEMORY[0x29EDCA608];
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = 3;
  v6 = v4 | 3;
  if (((*(a1 & 0xFFFFFFFFFFFFFFF8) >> v4) & 7) != 0)
  {
    v7 = 0;
    v8 = 0;
    v9 = ((*(a1 & 0xFFFFFFFFFFFFFFF8) >> v4) & 7) + 2;
    goto LABEL_18;
  }

  if ((v6 - v4) > 0x26)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v7 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 2;
  do
  {
    v13 = 64 - v6;
    if (64 - v6 >= v12)
    {
      v13 = v12;
    }

    v10 |= ((*(v3 + 8 * v7) >> v6) & ~(-1 << v13)) << v11;
    v11 += v13;
    v14 = v13 + v6;
    v7 += v14 >> 6;
    v6 = v14 & 0x3F;
    v12 -= v13;
  }

  while (v12);
  v15 = v10 & 3;
  if (v15 <= 1)
  {
    if (v15)
    {
      v9 = 0;
      v8 = 255;
      goto LABEL_6;
    }

LABEL_5:
    v8 = 0;
    v9 = 0;
LABEL_6:
    v5 = 5;
    goto LABEL_18;
  }

  v5 = 5;
  if (v15 == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v8 = 0;
LABEL_18:
  v16 = v9;
  v17 = &kDQuadParamTable[10 * v9];
  v19 = v17[4];
  v18 = v17[5];
  v20 = v19 + 1;
  if ((v19 + 1) < 8)
  {
    v21 = (v19 + 1);
  }

  else
  {
    v21 = 8;
  }

  v22 = 8 * (v18 != 0);
  if (v22 >= v18 + 1)
  {
    v23 = (v18 + 1);
  }

  else
  {
    v23 = v22;
  }

  v24 = 8 - v21;
  if (v9)
  {
    if (v20)
    {
      if ((v21 - v4 + v6 + (v7 << 6)) <= 0x28)
      {
        v25 = 0;
        v94 = 0;
        v95 = v21;
        do
        {
          v96 = 64 - v6;
          if (64 - v6 >= v95)
          {
            v96 = v95;
          }

          v25 |= ((*(v3 + 8 * v7) >> v6) & ~(-1 << v96)) << v94;
          v94 += v96;
          v97 = v96 + v6;
          v7 += v97 >> 6;
          v6 = v97 & 0x3F;
          v95 -= v96;
        }

        while (v95);
      }

      else
      {
        v25 = 0;
      }

      v5 += v21;
      v8 = v25 << v24;
      if (!v23)
      {
        goto LABEL_84;
      }

      goto LABEL_30;
    }

    v8 = 0;
  }

  if (!v23)
  {
LABEL_84:
    v93 = 0;
    v26 = 0;
    v38 = 0;
    v163 = 0;
    v164 = 0;
    v166 = 0;
    v165 = 0;
    goto LABEL_85;
  }

LABEL_30:
  if ((v6 - v4 + (v7 << 6) + 3) <= 0x28)
  {
    LODWORD(v26) = 0;
    v27 = 0;
    v28 = 3;
    do
    {
      v29 = 64 - v6;
      if (64 - v6 >= v28)
      {
        v29 = v28;
      }

      v26 = v26 | (((*(v3 + 8 * v7) >> v6) & ~(-1 << v29)) << v27);
      v27 += v29;
      v30 = v29 + v6;
      v7 += v30 >> 6;
      v6 = v30 & 0x3F;
      v28 -= v29;
    }

    while (v28);
  }

  else
  {
    v26 = 0;
  }

  v31 = 37 - v5;
  v32 = (37 * v31) >> 8;
  v33 = v23 - v4;
  v34 = (v6 | (v7 << 6)) + -7 * v32 + v31;
  v35 = v34 & 0x3F;
  v36 = v33 + v35 + (v34 & 0xFFFFFFFFFFFFFFC0);
  v163 = 0;
  v164 = 0;
  v166 = 0;
  v165 = 0;
  v37 = v34 >> 6;
  if (v36 <= 0x28)
  {
    v38 = 0;
    v39 = 0;
    v40 = v23;
    do
    {
      v41 = 64 - v35;
      if (64 - v35 >= v40)
      {
        v41 = v40;
      }

      v38 |= ((*(v3 + 8 * v37) >> v35) & ~(-1 << v41)) << v39;
      v39 += v41;
      v42 = v41 + v35;
      v37 += v42 >> 6;
      v35 = v42 & 0x3F;
      v40 -= v41;
    }

    while (v40);
  }

  else
  {
    v38 = 0;
  }

  LODWORD(v163) = v38;
  v43 = v35 | (v37 << 6);
  v44 = v32 - v23;
  v45 = v43 + v44;
  v46 = (v43 + v44) & 0x3F;
  v47 = (v43 + v44) >> 6;
  if (v33 + v46 + (v45 & 0xFFFFFFFFFFFFFFC0) <= 0x28)
  {
    v48 = 0;
    v49 = 0;
    v50 = v23;
    do
    {
      v51 = 64 - v46;
      if (64 - v46 >= v50)
      {
        v51 = v50;
      }

      v48 |= ((*(v3 + 8 * v47) >> v46) & ~(-1 << v51)) << v49;
      v49 += v51;
      v52 = v51 + v46;
      v47 += v52 >> 6;
      v46 = v52 & 0x3F;
      v50 -= v51;
    }

    while (v50);
  }

  else
  {
    v48 = 0;
  }

  HIDWORD(v163) = v48;
  v53 = (v46 | (v47 << 6)) + v44;
  v54 = v53 & 0x3F;
  v55 = v53 >> 6;
  if (v33 + v54 + (v53 & 0xFFFFFFFFFFFFFFC0) <= 0x28)
  {
    v56 = 0;
    v57 = 0;
    v58 = v23;
    do
    {
      v59 = 64 - v54;
      if (64 - v54 >= v58)
      {
        v59 = v58;
      }

      v56 |= ((*(v3 + 8 * v55) >> v54) & ~(-1 << v59)) << v57;
      v57 += v59;
      v60 = v59 + v54;
      v55 += v60 >> 6;
      v54 = v60 & 0x3F;
      v58 -= v59;
    }

    while (v58);
  }

  else
  {
    v56 = 0;
  }

  LODWORD(v164) = v56;
  v61 = (v54 | (v55 << 6)) + v44;
  v62 = v61 & 0x3F;
  v63 = v61 >> 6;
  if (v33 + v62 + (v61 & 0xFFFFFFFFFFFFFFC0) <= 0x28)
  {
    v64 = 0;
    v65 = 0;
    v66 = v23;
    do
    {
      v67 = 64 - v62;
      if (64 - v62 >= v66)
      {
        v67 = v66;
      }

      v64 |= ((*(v3 + 8 * v63) >> v62) & ~(-1 << v67)) << v65;
      v65 += v67;
      v68 = v67 + v62;
      v63 += v68 >> 6;
      v62 = v68 & 0x3F;
      v66 -= v67;
    }

    while (v66);
  }

  else
  {
    v64 = 0;
  }

  HIDWORD(v164) = v64;
  v69 = (v62 | (v63 << 6)) + v44;
  v70 = v69 & 0x3F;
  v71 = v69 >> 6;
  if (v33 + v70 + (v69 & 0xFFFFFFFFFFFFFFC0) <= 0x28)
  {
    v72 = 0;
    v73 = 0;
    v74 = v23;
    do
    {
      v75 = 64 - v70;
      if (64 - v70 >= v74)
      {
        v75 = v74;
      }

      v72 |= ((*(v3 + 8 * v71) >> v70) & ~(-1 << v75)) << v73;
      v73 += v75;
      v76 = v75 + v70;
      v71 += v76 >> 6;
      v70 = v76 & 0x3F;
      v74 -= v75;
    }

    while (v74);
  }

  else
  {
    v72 = 0;
  }

  LODWORD(v165) = v72;
  v77 = (v70 | (v71 << 6)) + v44;
  v78 = v77 & 0x3F;
  v79 = v77 >> 6;
  if (v33 + v78 + (v77 & 0xFFFFFFFFFFFFFFC0) <= 0x28)
  {
    v80 = 0;
    v81 = 0;
    v82 = v23;
    do
    {
      v83 = 64 - v78;
      if (64 - v78 >= v82)
      {
        v83 = v82;
      }

      v80 |= ((*(v3 + 8 * v79) >> v78) & ~(-1 << v83)) << v81;
      v81 += v83;
      v84 = v83 + v78;
      v79 += v84 >> 6;
      v78 = v84 & 0x3F;
      v82 -= v83;
    }

    while (v82);
  }

  else
  {
    v80 = 0;
  }

  HIDWORD(v165) = v80;
  v85 = (v78 | (v79 << 6)) + v44;
  v86 = v85 & 0x3F;
  if (v33 + v86 + (v85 & 0xFFFFFFFFFFFFFFC0) <= 0x28)
  {
    v87 = 0;
    v88 = 0;
    v89 = v85 >> 6;
    v90 = v23;
    do
    {
      v91 = 64 - v86;
      if (64 - v86 >= v90)
      {
        v91 = v90;
      }

      v87 |= ((*(v3 + 8 * v89) >> v86) & ~(-1 << v91)) << v88;
      v88 += v91;
      v92 = v91 + v86;
      v89 += v92 >> 6;
      v86 = v92 & 0x3F;
      v90 -= v91;
    }

    while (v90);
  }

  else
  {
    v87 = 0;
  }

  v166 = v87;
  v93 = v23;
LABEL_85:
  v98 = *&kDQuadParamTable[10 * v16 + 2];
  if (v98 >> v93 <= 1)
  {
    v99 = 1;
  }

  else
  {
    v99 = v98 >> v93;
  }

  v100 = v99 >> 1;
  if (v99 >> 1 >= (1 << v24) >> 1)
  {
    v101 = (1 << v24) >> 1;
  }

  else
  {
    v101 = v99 >> 1;
  }

  v102 = 128 - v8;
  result = v102 / v99;
  v104 = v98 + v8;
  v105 = -1 << v93;
  if (v8)
  {
    v106 = v101;
  }

  else
  {
    v106 = 0;
  }

  v107 = v8 == 128;
  if (v23)
  {
    if (v26)
    {
      v108 = result == v38;
      if (!(v8 | v38))
      {
        v109 = 0;
LABEL_104:
        v110 = 1;
        goto LABEL_105;
      }

      if (v104 < 0x100 || (v105 ^ v38) != 0xFFFFFFFFFFFFFFFFLL)
      {
        v109 = v100 + v99 * v38;
        goto LABEL_104;
      }

      v110 = 1;
      v109 = 255;
    }

    else
    {
      v110 = 0;
      v109 = v106;
      v108 = v8 == 128;
    }
  }

  else
  {
    v110 = 0;
    v109 = 0;
    v108 = v99 > v102;
  }

LABEL_105:
  v111 = a3 & 0xFFFFFFFD;
  v112 = v109 + v8;
  v113 = v112;
  if (a3 == 4)
  {
    v113 = 2139095039;
    if ((v112 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v112 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v113 = 4286578687;
      }

      else
      {
        v113 = v112;
      }
    }
  }

  v114 = 255;
  if (v113 < 0xFF)
  {
    v114 = v113;
  }

  if (v108)
  {
    v115 = 0;
  }

  else
  {
    v115 = v114 ^ 0x80;
  }

  if (v111 != 1)
  {
    v115 = v114;
  }

  *a2 = v115;
  if (v23)
  {
    if (v26 == 1)
    {
      v116 = v106;
      v117 = v8 == 128;
    }

    else
    {
      v118 = *(&v163 | (4 * v110));
      v117 = result == v118;
      if (v8 | v118)
      {
        if (v104 >= 0x100 && (v105 ^ v118) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v116 = 255;
        }

        else
        {
          v116 = v100 + v99 * v118;
        }
      }

      else
      {
        v116 = 0;
      }

      ++v110;
    }
  }

  else
  {
    v116 = 0;
    v117 = v99 > v102;
  }

  v119 = v116 + v8;
  v120 = v119;
  if (a3 == 4)
  {
    v120 = 2139095039;
    if ((v119 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v119 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v120 = 4286578687;
      }

      else
      {
        v120 = v119;
      }
    }
  }

  v121 = 255;
  if (v120 < 0xFF)
  {
    v121 = v120;
  }

  if (v117)
  {
    v122 = 0;
  }

  else
  {
    v122 = v121 ^ 0x80;
  }

  if (v111 != 1)
  {
    v122 = v121;
  }

  a2[1] = v122;
  if (v23)
  {
    if (v26 == 2)
    {
      v123 = v106;
      v124 = v8 == 128;
    }

    else
    {
      v125 = *(&v163 + v110);
      v124 = result == v125;
      if (v8 | v125)
      {
        if (v104 >= 0x100 && (v105 ^ v125) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v123 = 255;
        }

        else
        {
          v123 = v100 + v99 * v125;
        }
      }

      else
      {
        v123 = 0;
      }

      ++v110;
    }
  }

  else
  {
    v123 = 0;
    v124 = v99 > v102;
  }

  v126 = v123 + v8;
  v127 = v126;
  if (a3 == 4)
  {
    v127 = 2139095039;
    if ((v126 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v126 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v127 = 4286578687;
      }

      else
      {
        v127 = v126;
      }
    }
  }

  v128 = 255;
  if (v127 < 0xFF)
  {
    v128 = v127;
  }

  if (v124)
  {
    v129 = 0;
  }

  else
  {
    v129 = v128 ^ 0x80;
  }

  if (v111 != 1)
  {
    v129 = v128;
  }

  a2[2] = v129;
  if (v23)
  {
    if (v26 == 3)
    {
      v130 = v106;
      v131 = v8 == 128;
    }

    else
    {
      v132 = *(&v163 + v110);
      v131 = result == v132;
      if (v8 | v132)
      {
        if (v104 >= 0x100 && (v105 ^ v132) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v130 = 255;
        }

        else
        {
          v130 = v100 + v99 * v132;
        }
      }

      else
      {
        v130 = 0;
      }

      ++v110;
    }
  }

  else
  {
    v130 = 0;
    v131 = v99 > v102;
  }

  v133 = v130 + v8;
  v134 = v133;
  if (a3 == 4)
  {
    v134 = 2139095039;
    if ((v133 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v133 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v134 = 4286578687;
      }

      else
      {
        v134 = v133;
      }
    }
  }

  v135 = 255;
  if (v134 < 0xFF)
  {
    v135 = v134;
  }

  if (v131)
  {
    v136 = 0;
  }

  else
  {
    v136 = v135 ^ 0x80;
  }

  if (v111 != 1)
  {
    v136 = v135;
  }

  a2[3] = v136;
  if (v23)
  {
    if (v26 == 4)
    {
      v137 = v106;
      v138 = v8 == 128;
    }

    else
    {
      v139 = *(&v163 + v110);
      v138 = result == v139;
      if (v8 | v139)
      {
        if (v104 >= 0x100 && (v105 ^ v139) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v137 = 255;
        }

        else
        {
          v137 = v100 + v99 * v139;
        }
      }

      else
      {
        v137 = 0;
      }

      ++v110;
    }
  }

  else
  {
    v137 = 0;
    v138 = v99 > v102;
  }

  v140 = v137 + v8;
  v141 = v140;
  if (a3 == 4)
  {
    v141 = 2139095039;
    if ((v140 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v140 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v141 = 4286578687;
      }

      else
      {
        v141 = v140;
      }
    }
  }

  v142 = 255;
  if (v141 < 0xFF)
  {
    v142 = v141;
  }

  if (v138)
  {
    v143 = 0;
  }

  else
  {
    v143 = v142 ^ 0x80;
  }

  if (v111 != 1)
  {
    v143 = v142;
  }

  a2[4] = v143;
  if (v23)
  {
    if (v26 == 5)
    {
      v144 = v106;
      v145 = v8 == 128;
    }

    else
    {
      v146 = *(&v163 + v110);
      v145 = result == v146;
      if (v8 | v146)
      {
        if (v104 >= 0x100 && (v105 ^ v146) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v144 = 255;
        }

        else
        {
          v144 = v100 + v99 * v146;
        }
      }

      else
      {
        v144 = 0;
      }

      ++v110;
    }
  }

  else
  {
    v144 = 0;
    v145 = v99 > v102;
  }

  v147 = v144 + v8;
  v148 = v147;
  if (a3 == 4)
  {
    v148 = 2139095039;
    if ((v147 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v147 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v148 = 4286578687;
      }

      else
      {
        v148 = v147;
      }
    }
  }

  v149 = 255;
  if (v148 < 0xFF)
  {
    v149 = v148;
  }

  if (v145)
  {
    v150 = 0;
  }

  else
  {
    v150 = v149 ^ 0x80;
  }

  if (v111 != 1)
  {
    v150 = v149;
  }

  a2[5] = v150;
  if (v23)
  {
    if (v26 == 6)
    {
      v151 = v106;
      v152 = v8 == 128;
    }

    else
    {
      v153 = *(&v163 + v110);
      v152 = result == v153;
      if (v8 | v153)
      {
        if (v104 >= 0x100 && (v105 ^ v153) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v151 = 255;
        }

        else
        {
          v151 = v100 + v99 * v153;
        }
      }

      else
      {
        v151 = 0;
      }

      ++v110;
    }
  }

  else
  {
    v151 = 0;
    v152 = v99 > v102;
  }

  v154 = v151 + v8;
  v155 = v154;
  if (a3 == 4)
  {
    v155 = 2139095039;
    if ((v154 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v154 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v155 = 4286578687;
      }

      else
      {
        v155 = v154;
      }
    }
  }

  v156 = 255;
  if (v155 < 0xFF)
  {
    v156 = v155;
  }

  if (v152)
  {
    v157 = 0;
  }

  else
  {
    v157 = v156 ^ 0x80;
  }

  if (v111 != 1)
  {
    v157 = v156;
  }

  a2[6] = v157;
  if (v23)
  {
    if (v26 != 7)
    {
      v158 = *(&v163 + v110);
      v107 = result == v158;
      if (v8 | v158)
      {
        if (v104 >= 0x100 && (v105 ^ v158) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v106 = 255;
        }

        else
        {
          v106 = v100 + v99 * v158;
        }
      }

      else
      {
        v106 = 0;
      }
    }
  }

  else
  {
    v106 = 0;
    v107 = v99 > v102;
  }

  v159 = v106 + v8;
  v160 = v159;
  if (a3 == 4)
  {
    v160 = 2139095039;
    if ((v159 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v159 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v160 = 4286578687;
      }

      else
      {
        v160 = v159;
      }
    }
  }

  v161 = 255;
  if (v160 < 0xFF)
  {
    v161 = v160;
  }

  v162 = v161 ^ 0x80;
  if (v107)
  {
    v162 = 0;
  }

  if (v111 == 1)
  {
    v161 = v162;
  }

  a2[7] = v161;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(int8x8_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, double a6, int8x8_t a7)
{
  v237 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    v12 = 0;
LABEL_6:
    *a1 = 0;
    *(a1 + a2) = 0;
    *(a1 + 2 * a2) = 0;
    *(a1 + 3 * a2) = 0;
    return v12;
  }

  v7 = a4;
  if (a4 >= 0xF0)
  {
    if (a4)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(a3, &v233, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(a3, &v233, a5);
    }

    v230 = v233;
    v226 = v234;
    v229 = v235;
    v225 = v236;
    v14 = a3 + 5;
    if ((v7 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v14, &v233, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v14, &v233, a5);
    }

    v228 = v233;
    v232 = v234;
    v227 = v235;
    v231 = v236;
    v15 = a3 + 10;
    if ((v7 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v15, &v233, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v15, &v233, a5);
    }

    v224 = v233;
    v222 = v234;
    v223 = v235;
    v221 = v236;
    v16 = a3 + 15;
    if ((v7 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v16, &v233, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v16, &v233, a5);
    }

    v17.i64[0] = v222;
    v17.i64[1] = v221;
    v18.i64[0] = v226;
    v18.i64[1] = v225;
    *v18.i8 = vmovn_s16(vuzp1q_s16(v18, v17));
    v19.i64[0] = v224;
    v19.i64[1] = v223;
    v20.i64[0] = v230;
    v20.i64[1] = v229;
    *v20.i8 = vmovn_s16(vuzp1q_s16(v20, v19));
    v17.i64[0] = v233;
    v19.i64[0] = v234;
    v21 = v235;
    v22 = v236;
    *a1 = *v20.i8;
    *(a1 + a2) = *v18.i8;
    v23 = (a1 + a2 + a2);
    v17.i64[1] = v21;
    v18.i64[0] = v228;
    v18.i64[1] = v227;
    v19.i64[1] = v22;
    v20.i64[0] = v232;
    v20.i64[1] = v231;
    *v23 = vmovn_s16(vuzp1q_s16(v18, v17));
    *(v23 + a2) = vmovn_s16(vuzp1q_s16(v20, v19));
    return 20;
  }

  if (a4 == 31)
  {
    v24 = *a3;
    v25 = *(a3 + 8);
    v26 = *(a3 + 16);
    v27 = *(a3 + 24);
    *a1 = vuzp1_s16(*a3, v26);
    *(a1 + a2) = vuzp2_s16(v24, v26);
    v28 = (a1 + 2 * a2);
    *v28 = vuzp1_s16(v25, v27);
    *(v28 + a2) = vuzp2_s16(v25, v27);
    return 32;
  }

  if (a4 == 96)
  {
    v13 = vdup_lane_s8(*a3, 0);
    *a1 = v13;
    *(a1 + a2) = v13;
    *(a1 + 2 * a2) = v13;
    *(a1 + 3 * a2) = v13;
    return 1;
  }

  v30 = 8 * (a3 & 7);
  v31 = a3 & 0xFFFFFFFFFFFFFFF8;
  v32 = v30 + 12;
  v33 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v30;
  if (v30 >= 0x35)
  {
    v33 |= *(v31 + 8) << (-8 * (a3 & 7u));
  }

  v34 = v30 + 160;
  v35 = (a4 >> 5) | (8 * v33);
  v36 = vdupq_n_s8(v35 & 0xF);
  v37.i64[0] = 0x303030303030303;
  v37.i64[1] = 0x303030303030303;
  a7.i32[0] = v35 & 0xF;
  v38 = vand_s8(a7, 0x4000400040004);
  v39 = vandq_s8(v36, v37);
  v40 = vbicq_s8(vdupq_n_s8(((v33 >> 1) & 7) + 1), vceqq_s8(v39, v37));
  v37.i64[0] = 0x202020202020202;
  v37.i64[1] = 0x202020202020202;
  v41 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vdup_lane_s16(v38, 0)))), v37);
  if (vmaxvq_s8(v41) < 1)
  {
    v49 = 0;
    v72.i64[0] = -1;
    v72.i64[1] = -1;
    v68 = v40;
    v67 = v40;
    v66 = v40;
    v71.i64[0] = -1;
    v71.i64[1] = -1;
    v65 = v40;
    v70.i64[0] = -1;
    v70.i64[1] = -1;
    v69.i64[0] = -1;
    v69.i64[1] = -1;
  }

  else
  {
    v42 = vmovl_u8(*&vpaddq_s8(v41, v41));
    v43 = vmovl_u16(*&vpaddq_s16(v42, v42));
    v44 = vpaddq_s32(v43, v43).u64[0];
    v45.i64[0] = v44;
    v45.i64[1] = HIDWORD(v44);
    v46 = v45;
    v47 = vaddvq_s64(v45);
    v48 = v47 <= 0x80 && v34 >= v47 + v32;
    v49 = !v48;
    v50 = 0uLL;
    if (v48)
    {
      v51 = vaddq_s64(vzip1q_s64(0, v46), vdupq_n_s64(v32 & 0x3C));
      v52 = (v31 + ((v32 >> 3) & 8));
      v50 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v52, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v51)), vshlq_u64(vdupq_lane_s64(v52->i64[0], 0), vnegq_s64(v51)));
      if (v47 + (v32 & 0x3C) >= 0x81)
      {
        v50 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v52[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v51)), vshlq_u64(vdupq_laneq_s64(v52[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v51))), v50);
      }

      v32 += v47;
    }

    v53 = vzip1_s32(*v43.i8, *&vextq_s8(v43, v43, 8uLL));
    v54.i64[0] = v53.u32[0];
    v54.i64[1] = v53.u32[1];
    v55 = vshlq_u64(v50, vnegq_s64(v54));
    v56 = vuzp1q_s32(vzip1q_s64(v50, v55), vzip2q_s64(v50, v55));
    v57 = vshlq_u32(v56, vnegq_s32((*&v42 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v58 = vuzp1q_s16(vzip1q_s32(v56, v57), vzip2q_s32(v56, v57));
    v59 = vzip1q_s16(v58, vshlq_u16(v58, vnegq_s16(vmovl_u8(vuzp1_s8(*v41.i8, *v36.i8)))));
    *v59.i8 = vmovn_s16(v59);
    v56.i64[0] = 0x101010101010101;
    v56.i64[1] = 0x101010101010101;
    v60 = vshlq_s8(v56, v41);
    v56.i64[0] = -1;
    v56.i64[1] = -1;
    v60.i64[0] = vandq_s8(vaddq_s8(v60, v56), v59).u64[0];
    v61 = vdupq_lane_s8(*v60.i8, 0);
    v62 = vdupq_lane_s8(*v60.i8, 1);
    v63 = vdupq_lane_s8(*v60.i8, 2);
    v64 = vdupq_lane_s8(*v60.i8, 3);
    v65 = vsubq_s8(v40, v61);
    v66 = vsubq_s8(v40, v62);
    v67 = vsubq_s8(v40, v63);
    v68 = vsubq_s8(v40, v64);
    v69 = vceqzq_s8(v61);
    v70 = vceqzq_s8(v62);
    v71 = vceqzq_s8(v63);
    v72 = vceqzq_s8(v64);
  }

  v73.i64[0] = 0x707070707070707;
  v73.i64[1] = 0x707070707070707;
  v74 = 0uLL;
  v75 = vandq_s8(vextq_s8(vcgtq_u8(v36, v73), 0, 0xFuLL), v40);
  v76 = vmovl_u8(*&vpaddq_s8(v75, v75));
  v77 = vmovl_u16(*&vpaddq_s16(v76, v76));
  v78 = vpaddq_s32(v77, v77).u64[0];
  v79.i64[0] = v78;
  v79.i64[1] = HIDWORD(v78);
  v80 = v79;
  v81 = vaddvq_s64(v79);
  v82 = v81 + v32;
  if (v81 <= 0x80 && v34 >= v82)
  {
    v84 = v32 & 0x3F;
    v85 = vaddq_s64(vzip1q_s64(0, v80), vdupq_n_s64(v84));
    v86 = (v31 + 8 * (v32 >> 6));
    v74 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v86, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v85)), vshlq_u64(vdupq_lane_s64(v86->i64[0], 0), vnegq_s64(v85)));
    if (v81 + v84 >= 0x81)
    {
      v74 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v86[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v85)), vshlq_u64(vdupq_laneq_s64(v86[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v85))), v74);
    }

    v32 = v82;
  }

  else
  {
    v49 = 1;
  }

  v87 = vandq_s8(v65, xmmword_29D2F0D40);
  v88 = (a4 >> 5) & 3;
  if (v88 != 2)
  {
    v93 = 0;
    v90 = 0;
    v94 = v32;
    goto LABEL_58;
  }

  v89 = v32 + 4;
  if (v34 < v32 + 4)
  {
    v90 = 0;
    v89 = v32;
LABEL_57:
    v93 = 0;
    v49 = 1;
    v94 = v89;
    goto LABEL_58;
  }

  v95 = (v31 + 8 * (v32 >> 6));
  v96 = *v95 >> v32;
  if ((v32 & 0x3F) >= 0x3D)
  {
    v96 |= v95[1] << -(v32 & 0x3F);
  }

  v90 = (v96 << 28) >> 28;
  v94 = v32 + 8;
  if (v34 < v32 + 8)
  {
    goto LABEL_57;
  }

  v91 = (v31 + 8 * (v89 >> 6));
  v92 = *v91 >> v89;
  if ((v89 & 0x3F) >= 0x3D)
  {
    v92 |= v91[1] << -(v89 & 0x3F);
  }

  v93 = (v92 << 28) >> 28;
LABEL_58:
  v97 = vandq_s8(v66, xmmword_29D2F0D50);
  v87.i8[0] = 0;
  v98 = vmovl_u8(*&vpaddq_s8(v87, v87));
  v99 = vmovl_u16(*&vpaddq_s16(v98, v98));
  v100 = vpaddq_s32(v99, v99).u64[0];
  v101.i64[0] = v100;
  v101.i64[1] = HIDWORD(v100);
  v102 = v101;
  v103 = vaddvq_s64(v101);
  v104 = v103 + v94;
  v105 = 0uLL;
  if (v103 <= 0x80 && v34 >= v104)
  {
    v108 = v94 & 0x3F;
    v109 = vaddq_s64(vzip1q_s64(0, v102), vdupq_n_s64(v108));
    v110 = (v31 + 8 * (v94 >> 6));
    v107 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v110, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v109)), vshlq_u64(vdupq_lane_s64(v110->i64[0], 0), vnegq_s64(v109)));
    if (v103 + v108 >= 0x81)
    {
      v107 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v110[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v109)), vshlq_u64(vdupq_laneq_s64(v110[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v109))), v107);
    }

    v94 = v104;
  }

  else
  {
    v49 = 1;
    v107 = 0uLL;
  }

  v111 = vandq_s8(v67, xmmword_29D2F0D50);
  v112 = vmovl_u8(*&vpaddq_s8(v97, v97));
  v113 = vmovl_u16(*&vpaddq_s16(v112, v112));
  v114 = vpaddq_s32(v113, v113).u64[0];
  v115.i64[0] = v114;
  v115.i64[1] = HIDWORD(v114);
  v116 = v115;
  v117 = vaddvq_s64(v115);
  if (v117 >= 0x81)
  {
    v49 = 1;
  }

  else
  {
    v118 = vzip1_s32(*v113.i8, *&vextq_s8(v113, v113, 8uLL));
    v119.i64[0] = v118.u32[0];
    v119.i64[1] = v118.u32[1];
    v120 = v119;
    v121 = *&v112 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v122 = v117 + v94;
    if (v34 >= v117 + v94)
    {
      v123 = v94 & 0x3F;
      v124 = vaddq_s64(vzip1q_s64(0, v116), vdupq_n_s64(v123));
      v125 = (v31 + 8 * (v94 >> 6));
      v105 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v125, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v124)), vshlq_u64(vdupq_lane_s64(v125->i64[0], 0), vnegq_s64(v124)));
      if (v117 + v123 >= 0x81)
      {
        v105 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v125[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v124)), vshlq_u64(vdupq_laneq_s64(v125[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v124))), v105);
      }

      v94 = v122;
    }

    else
    {
      v49 = 1;
    }

    v126 = vshlq_u64(v105, vnegq_s64(v120));
    v127 = vuzp1q_s32(vzip1q_s64(v105, v126), vzip2q_s64(v105, v126));
    v128 = vshlq_u32(v127, vnegq_s32(v121));
    v129 = vuzp1q_s16(vzip1q_s32(v127, v128), vzip2q_s32(v127, v128));
    v130 = vshlq_u16(v129, vnegq_s16((*&v97 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v105 = vuzp1q_s8(vzip1q_s16(v129, v130), vzip2q_s16(v129, v130));
  }

  v131 = vandq_s8(v68, xmmword_29D2F0D50);
  v132 = vmovl_u8(*&vpaddq_s8(v111, v111));
  v133 = vmovl_u16(*&vpaddq_s16(v132, v132));
  v134 = vpaddq_s32(v133, v133).u64[0];
  v135.i64[0] = v134;
  v135.i64[1] = HIDWORD(v134);
  v136 = v135;
  v137 = vaddvq_s64(v135);
  if (v137 >= 0x81)
  {
    v49 = 1;
    v144 = 0uLL;
  }

  else
  {
    v138 = vzip1_s32(*v133.i8, *&vextq_s8(v133, v133, 8uLL));
    v139.i64[0] = v138.u32[0];
    v139.i64[1] = v138.u32[1];
    v140 = v139;
    v141 = *&v132 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v142 = v137 + v94;
    if (v34 >= v137 + v94)
    {
      v145 = v94 & 0x3F;
      v146 = vaddq_s64(vzip1q_s64(0, v136), vdupq_n_s64(v145));
      v147 = (v31 + 8 * (v94 >> 6));
      v143 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v147, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v146)), vshlq_u64(vdupq_lane_s64(v147->i64[0], 0), vnegq_s64(v146)));
      if (v137 + v145 >= 0x81)
      {
        v143 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v147[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v146)), vshlq_u64(vdupq_laneq_s64(v147[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v146))), v143);
      }

      v94 = v142;
    }

    else
    {
      v143 = 0uLL;
      v49 = 1;
    }

    v148 = vshlq_u64(v143, vnegq_s64(v140));
    v149 = vuzp1q_s32(vzip1q_s64(v143, v148), vzip2q_s64(v143, v148));
    v150 = vshlq_u32(v149, vnegq_s32(v141));
    v151 = vuzp1q_s16(vzip1q_s32(v149, v150), vzip2q_s32(v149, v150));
    v152 = vshlq_u16(v151, vnegq_s16((*&v111 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v144 = vuzp1q_s8(vzip1q_s16(v151, v152), vzip2q_s16(v151, v152));
  }

  v153 = vmovl_u8(*&vpaddq_s8(v131, v131));
  v154 = vmovl_u16(*&vpaddq_s16(v153, v153));
  v155 = vpaddq_s32(v154, v154).u64[0];
  v156.i64[0] = v155;
  v156.i64[1] = HIDWORD(v155);
  v157 = v156;
  v158 = vaddvq_s64(v156);
  if (v158 >= 0x81 || v34 < v158 + v94)
  {
    goto LABEL_88;
  }

  v159 = vaddq_s64(vzip1q_s64(0, v157), vdupq_n_s64(v94 & 0x3F));
  v160 = (v31 + 8 * (v94 >> 6));
  v161 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v160, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v159)), vshlq_u64(vdupq_lane_s64(v160->i64[0], 0), vnegq_s64(v159)));
  if (v158 + (v94 & 0x3F) >= 0x81)
  {
    v161 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v160[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v159)), vshlq_u64(vdupq_laneq_s64(v160[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v159))), v161);
  }

  if ((v49 & 1) != 0 || (v12 = (a4 & 0x1F) + 1, 8 * ((a3 & 7) + v12) - (v158 + v94) >= 9))
  {
LABEL_88:
    v12 = 0;
    v233 |= 255 << (8 * ((&vars0 - 120) & 7u));
    goto LABEL_6;
  }

  v162 = vzip1_s32(*v77.i8, *&vextq_s8(v77, v77, 8uLL));
  v163 = vzip1_s32(*v99.i8, *&vextq_s8(v99, v99, 8uLL));
  v164.i64[0] = v162.u32[0];
  v164.i64[1] = v162.u32[1];
  v165 = v164;
  v164.i64[0] = v163.u32[0];
  v164.i64[1] = v163.u32[1];
  v166 = vshlq_u64(v74, vnegq_s64(v165));
  v167 = vshlq_u64(v107, vnegq_s64(v164));
  v168 = vuzp1q_s32(vzip1q_s64(v74, v166), vzip2q_s64(v74, v166));
  v169 = vuzp1q_s32(vzip1q_s64(v107, v167), vzip2q_s64(v107, v167));
  v170 = vshlq_u32(v168, vnegq_s32((*&v76 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v171 = vshlq_u32(v169, vnegq_s32((*&v98 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v172 = vuzp1q_s16(vzip1q_s32(v168, v170), vzip2q_s32(v168, v170));
  v173 = vuzp1q_s16(vzip1q_s32(v169, v171), vzip2q_s32(v169, v171));
  v174 = vshlq_u16(v172, vnegq_s16((*&v75 & __PAIR128__(0xF0FFF0FFF0FFF0FFLL, 0xF0FFF0FFF0FFF0FFLL))));
  v175 = vshlq_u16(v173, vnegq_s16((*&v87 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF0000))));
  v176 = vzip2q_s16(v172, v174);
  v177 = vzip1q_s16(v172, v174);
  v174.i64[0] = 0x808080808080808;
  v174.i64[1] = 0x808080808080808;
  v178 = vzip2q_s16(v173, v175);
  v179 = vzip1q_s16(v173, v175);
  v175.i64[0] = 0x808080808080808;
  v175.i64[1] = 0x808080808080808;
  v180 = v33 >> 4;
  v181 = vuzp1q_s8(v177, v176);
  v176.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v176.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v182 = vuzp1q_s8(v179, v178);
  v178.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v178.i64[1] = 0xF8F8F8F8F8F8F8F8;
  *v167.i8 = vzip1_s32(*v154.i8, *&vextq_s8(v154, v154, 8uLL));
  v183.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v183.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v184.i64[0] = 0x808080808080808;
  v184.i64[1] = 0x808080808080808;
  v185 = vshlq_s8(v181, vsubq_s8(v174, v75));
  v186 = vaddq_s8(v87, v178);
  v187 = vshlq_s8(v182, vsubq_s8(v175, v87));
  v164.i64[0] = v167.u32[0];
  v164.i64[1] = v167.u32[1];
  v188 = vshlq_s8(v185, vaddq_s8(v75, v176));
  v189 = vshlq_s8(v187, v186);
  v190 = vshlq_s8(vshlq_s8(v105, vsubq_s8(v175, v97)), vaddq_s8(v97, v178));
  v191 = vshlq_s8(vshlq_s8(v144, vsubq_s8(v175, v111)), vaddq_s8(v111, v178));
  v192 = vshlq_u64(v161, vnegq_s64(v164));
  v193 = vuzp1q_s32(vzip1q_s64(v161, v192), vzip2q_s64(v161, v192));
  v194 = vshlq_u32(v193, vnegq_s32((*&v153 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v195 = vuzp1q_s16(vzip1q_s32(v193, v194), vzip2q_s32(v193, v194));
  v196 = vshlq_u16(v195, vnegq_s16((*&v131 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v197 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v195, v196), vzip2q_s16(v195, v196)), vsubq_s8(v184, v131)), vaddq_s8(v131, v183));
  if (v88 == 2)
  {
    v198.i64[0] = 0xFFFF0000FFFF0000;
    v198.i64[1] = 0xFFFF0000FFFF0000;
    v199 = vmlaq_s8(vandq_s8(vdupq_n_s8(v93), v198), vdupq_n_s8(v90), xmmword_29D2F0D60);
    v189 = vaddq_s8(v189, v199);
    v190 = vaddq_s8(vaddq_s8(vdupq_n_s8(2 * v93), v199), v190);
    v191 = vaddq_s8(vaddq_s8(vdupq_n_s8(4 * v90), v199), v191);
    v197 = vaddq_s8(vaddq_s8(vdupq_n_s8(4 * v90 + 2 * v93), v199), v197);
  }

  v200 = vdupq_n_s8(v180).u64[0];
  v201 = vaddq_s8(vandq_s8(v188, v69), v189);
  v202 = vdupq_lane_s8(*v188.i8, 0);
  v203 = vsubq_s8(v201, vandq_s8(v202, v69));
  v204 = vsubq_s8(v190, vandq_s8(v202, v70));
  v205 = vsubq_s8(v191, vandq_s8(v202, v71));
  v206 = vsubq_s8(v197, vandq_s8(v202, v72));
  v207.i64[0] = 0x101010101010101;
  v207.i64[1] = 0x101010101010101;
  if (vaddlvq_s8(vceqq_s8(v39, v207)))
  {
    v208 = vandq_s8(v36, v207);
    v209 = vnegq_s8(v208);
    v210 = v203;
    v210.i8[0] = v203.i8[7];
    v210.i8[7] = v203.i8[0];
    v211 = vorrq_s8(vandq_s8(v210, v209), vandq_s8(v203, vceqzq_s8(v208)));
    v212 = vaddq_s8(v211, vandq_s8(vqtbl1q_s8(v211, xmmword_29D2F0D70), v209));
    v203.i64[0] = vaddq_s8(v212, vandq_s8(vqtbl1q_s8(v212, xmmword_29D2F0D80), v209)).u64[0];
    v213 = vaddq_s8(vandq_s8(vqtbl1q_s8(v204, xmmword_29D2F0D90), v209), v204);
    v204.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v213, xmmword_29D2F0DA0), v209), v213).u64[0];
    v214 = vaddq_s8(vandq_s8(vqtbl1q_s8(v205, xmmword_29D2F0DB0), v209), v205);
    v205.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v214, xmmword_29D2F0DC0), v209), v214).u64[0];
    v215 = vaddq_s8(vandq_s8(vqtbl1q_s8(v206, xmmword_29D2F0DD0), v209), v206);
    v206.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v215, xmmword_29D2F0DE0), v209), v215).u64[0];
  }

  v216 = vadd_s8(v200, *v203.i8);
  v217 = vadd_s8(*v205.i8, v200);
  *a1 = vuzp1_s16(v216, v217);
  *(a1 + a2) = vuzp2_s16(v216, v217);
  v218 = (a1 + 2 * a2);
  v219 = vadd_s8(*v204.i8, v200);
  v220 = vadd_s8(*v206.i8, v200);
  *v218 = vuzp1_s16(v219, v220);
  *(v218 + a2) = vuzp2_s16(v219, v220);
  return v12;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(unint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13, int8x8_t a14)
{
  v15 = a6;
  v16 = a5;
  v18 = a3;
  v20 = result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(a3, a4, result, a2, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
    v18 += result;
  }

  else
  {
    *a4 = 0;
  }

  v21 = v16 - 8;
  if (v16 >= 9 && v15)
  {
    if (v15 >= 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = v15;
    }

    if (v21 >= 8)
    {
      v23 = 8;
    }

    else
    {
      v23 = v16 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v18, a4 + 1, v20 + 1, a2, v23, v22, a7, a8, a9, a10, a11, a12, a13, a14);
    v18 += result;
  }

  else
  {
    a4[1] = 0;
  }

  v24 = 4 * a2;
  v25 = v15 - 4;
  if (v16 && v15 >= 5)
  {
    if (v25 >= 4)
    {
      v26 = 4;
    }

    else
    {
      v26 = v15 - 4;
    }

    if (v16 >= 8)
    {
      v27 = 8;
    }

    else
    {
      v27 = v16;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v18, a4 + 2, (v20 + v24), a2, v27, v26, a7, a8, a9, a10, a11, a12, a13, a14);
    v18 += result;
    if (v16 < 9)
    {
      goto LABEL_38;
    }
  }

  else
  {
    a4[2] = 0;
    if (v16 < 9)
    {
      goto LABEL_38;
    }
  }

  if (v15 >= 5)
  {
    if (v25 >= 4)
    {
      v28 = 4;
    }

    else
    {
      v28 = v15 - 4;
    }

    if (v21 >= 8)
    {
      v29 = 8;
    }

    else
    {
      v29 = v16 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v18, a4 + 3, (v20 + v24 + 8), a2, v29, v28, a7, a8, a9, a10, a11, a12, a13, a14);
    v18 += result;
    v30 = v15 - 8;
    goto LABEL_39;
  }

LABEL_38:
  a4[3] = 0;
  v30 = v15 - 8;
  if (!v16)
  {
    goto LABEL_48;
  }

LABEL_39:
  if (v15 < 9)
  {
LABEL_48:
    a4[4] = 0;
    if (v16 < 9)
    {
      goto LABEL_57;
    }

    goto LABEL_49;
  }

  if (v30 >= 4)
  {
    v31 = 4;
  }

  else
  {
    v31 = v30;
  }

  if (v16 >= 8)
  {
    v32 = 8;
  }

  else
  {
    v32 = v16;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v18, a4 + 4, &v20[a2], a2, v32, v31, a7, a8, a9, a10, a11, a12, a13, a14);
  v18 += result;
  if (v16 < 9)
  {
LABEL_57:
    a4[5] = 0;
    v35 = v15 - 12;
    if (!v16)
    {
      goto LABEL_67;
    }

    goto LABEL_58;
  }

LABEL_49:
  if (v15 < 9)
  {
    goto LABEL_57;
  }

  if (v30 >= 4)
  {
    v33 = 4;
  }

  else
  {
    v33 = v30;
  }

  if (v21 >= 8)
  {
    v34 = 8;
  }

  else
  {
    v34 = v16 - 8;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v18, a4 + 5, &v20[a2 + 1], a2, v34, v33, a7, a8, a9, a10, a11, a12, a13, a14);
  v18 += result;
  v35 = v15 - 12;
LABEL_58:
  if (v15 >= 0xD)
  {
    if (v35 >= 4)
    {
      v36 = 4;
    }

    else
    {
      v36 = v35;
    }

    if (v16 >= 8)
    {
      v37 = 8;
    }

    else
    {
      v37 = v16;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v18, a4 + 6, (v20 + 12 * a2), a2, v37, v36, a7, a8, a9, a10, a11, a12, a13, a14);
    v18 += result;
    if (v16 < 9)
    {
      goto LABEL_78;
    }

    goto LABEL_68;
  }

LABEL_67:
  a4[6] = 0;
  if (v16 < 9)
  {
LABEL_78:
    a4[7] = 0;
    return result;
  }

LABEL_68:
  if (v15 < 0xD)
  {
    goto LABEL_78;
  }

  if (v35 >= 4)
  {
    v38 = 4;
  }

  else
  {
    v38 = v35;
  }

  if (v21 >= 8)
  {
    v39 = 8;
  }

  else
  {
    v39 = v16 - 8;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v18, a4 + 7, (v20 + 12 * a2 + 8), a2, v39, v38, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(int8x8_t *a1, uint64_t a2, unsigned __int8 *a3, int a4, double a5, int8x8_t a6)
{
  v9 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1, 16, a2, *a3, a4, a5, a6);
  v12 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 1, 16, v9, a3[1], a4, v10, v11);
  v15 = v12 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 8, 16, v12, a3[2], a4, v13, v14);
  v18 = v15 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 9, 16, v15, a3[3], a4, v16, v17);
  v21 = v18 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 16, 16, v18, a3[4], a4, v19, v20);
  v24 = v21 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 17, 16, v21, a3[5], a4, v22, v23);
  v27 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 24, 16, v24, a3[6], a4, v25, v26);
  v30 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 25, 16, v24 + v27, v30, a4, v28, v29);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, int16x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13, int8x8_t a14)
{
  v16 = *(a3 + a4);
  v17 = *a3;
  v18 = vzip1_s16(*a3, v16);
  *v23.i8 = vzip2_s16(*a3, v16);
  v19 = (a3 + 2 * a4);
  v20 = *(v19 + a4);
  *v22.i8 = vzip1_s16(*v19, v20);
  *v24.i8 = vzip2_s16(*v19, v20);
  *v21.i8 = v18;
  v21.u64[1] = v18;
  v22.i64[1] = v22.i64[0];
  v23.i64[1] = v23.i64[0];
  v24.i64[1] = v24.i64[0];
  v25 = vdupq_lane_s8(*a3, 0);
  v26 = vsubq_s8(v21, v25);
  v27 = vsubq_s8(v22, v25);
  v28 = vsubq_s8(v23, v25);
  v20.i8[0] = vmaxvq_s8(v26);
  v17.i8[0] = vminvq_s8(v26);
  v29 = vdupq_lane_s8(v20, 0);
  v30 = vdupq_lane_s8(v17, 0);
  v31 = vsubq_s8(v24, v25);
  v32 = vzip1q_s8(v29, v30);
  v33.i64[0] = 0x808080808080808;
  v33.i64[1] = 0x808080808080808;
  v34 = vsubq_s8(v33, vclsq_s8(v32));
  v35 = vbicq_s8(v34, vceqzq_s8(v32));
  v36 = vpmaxq_s8(v35, v35);
  v34.i8[0] = vmaxvq_s8(v27);
  a14.i8[0] = vminvq_s8(v27);
  v37 = vdupq_lane_s8(*v34.i8, 0);
  v38 = vdupq_lane_s8(a14, 0);
  v39 = vmaxq_s8(v29, v37);
  v40 = vminq_s8(v30, v38);
  v41 = vzip1q_s8(v37, v38);
  v42 = vsubq_s8(v33, vclsq_s8(v41));
  v43 = vbicq_s8(v42, vceqzq_s8(v41));
  v44 = vpmaxq_s8(v43, v43);
  v42.i8[0] = vmaxvq_s8(v28);
  v14.i8[0] = vminvq_s8(v28);
  v45 = vdupq_lane_s8(*v42.i8, 0);
  v46 = vdupq_lane_s8(v14, 0);
  v47 = vmaxq_s8(v39, v45);
  v48 = vminq_s8(v40, v46);
  v49 = vzip1q_s8(v45, v46);
  v50 = vsubq_s8(v33, vclsq_s8(v49));
  v51 = vbicq_s8(v50, vceqzq_s8(v49));
  v52 = vpmaxq_s8(v51, v51);
  v50.i8[0] = vmaxvq_s8(v31);
  v15.i8[0] = vminvq_s8(v31);
  v53 = vdupq_lane_s8(*v50.i8, 0);
  v54 = vdupq_lane_s8(v15, 0);
  v55 = vmaxq_s8(v47, v53);
  v56 = vminq_s8(v48, v54);
  v57 = vzip1q_s8(v53, v54);
  v58 = vbicq_s8(vsubq_s8(v33, vclsq_s8(v57)), vceqzq_s8(v57));
  v59 = vpmaxq_s8(v58, v58);
  v60 = vmaxq_s8(vmaxq_s8(v36, v44), vmaxq_s8(v52, v59));
  v61 = vclzq_s8(vsubq_s8(v55, v56));
  v62 = vsubq_s8(v33, v61);
  v63 = vminq_s8(v62, v60);
  if (vmaxvq_s8(v63))
  {
    v64 = 0;
    v65 = 0;
    v66.i64[0] = -1;
    v66.i64[1] = -1;
    v67.i64[0] = 0x707070707070707;
    v67.i64[1] = 0x707070707070707;
    v68 = vcgtq_s8(v60, v62);
    v69 = vandq_s8(vsubq_s8(vshlq_s8(v66, vsubq_s8(v67, v61)), v56), v68);
    v70 = vandq_s8(v68, v33);
    v68.i64[0] = 0x303030303030303;
    v68.i64[1] = 0x303030303030303;
    v71 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v36), v68), 0);
    v72 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v44), v68), 0);
    v73 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v52), v68), 0);
    v74 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v59), v68), 0);
    v75 = vsubq_s8(v63, v71);
    v76 = vsubq_s8(v63, v72);
    v77 = vsubq_s8(v63, v73);
    v78 = vsubq_s8(v63, v74);
    v79 = vceqq_s8(vaddq_s8(v74, v73), vnegq_s8(vaddq_s8(v71, v72)));
    v72.i64[0] = 0x404040404040404;
    v72.i64[1] = 0x404040404040404;
    v80 = vorrq_s8(vbicq_s8(v72, v79), vorrq_s8(vandq_s8(vceqzq_s8(v63), v68), v70));
    if (a5 >= 4 && a6 >= 2)
    {
      v384 = v69;
      v81 = v18.u8[1] - v18.u8[0];
      v82 = v81 << 28 >> 28;
      v83 = v18.u8[2] - v18.u8[0];
      v84.i64[0] = 0xFFFF0000FFFF0000;
      v84.i64[1] = 0xFFFF0000FFFF0000;
      v85 = vmlaq_s8(vandq_s8(vdupq_n_s8(v83 << 28 >> 28), v84), vdupq_n_s8(v82), xmmword_29D2F0D60);
      v86 = vsubq_s8(v26, v85);
      v87 = v83 << 28 >> 27;
      v88 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v87), v27), v85);
      v89 = v81 << 28 >> 26;
      v90 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v89), v28), v85);
      v91 = vaddq_s8(vdupq_n_s8(-(v87 + v89)), v31);
      v92 = vsubq_s8(v91, v85);
      v91.i8[0] = vmaxvq_s8(v86);
      v380 = v88;
      v382 = v86;
      v85.i8[0] = vminvq_s8(v86);
      v93 = vdupq_lane_s8(*v91.i8, 0);
      v94 = vdupq_lane_s8(*v85.i8, 0);
      v95 = vzip1q_s8(v93, v94);
      v96.i64[0] = 0x808080808080808;
      v96.i64[1] = 0x808080808080808;
      v97 = vsubq_s8(v96, vclsq_s8(v95));
      v98 = vbicq_s8(v97, vceqzq_s8(v95));
      v99 = vpmaxq_s8(v98, v98);
      v97.i8[0] = vmaxvq_s8(v88);
      v88.i8[0] = vminvq_s8(v88);
      v100 = vdupq_lane_s8(*v97.i8, 0);
      v101 = vdupq_lane_s8(*v88.i8, 0);
      v102 = vmaxq_s8(v93, v100);
      v103 = vminq_s8(v94, v101);
      v104 = vzip1q_s8(v100, v101);
      v105 = vsubq_s8(v96, vclsq_s8(v104));
      v106 = vbicq_s8(v105, vceqzq_s8(v104));
      v107 = vpmaxq_s8(v106, v106);
      v105.i8[0] = vmaxvq_s8(v90);
      v378 = v90;
      v18.i8[0] = vminvq_s8(v90);
      v108 = vdupq_lane_s8(*v105.i8, 0);
      v109 = vdupq_lane_s8(v18, 0);
      v110 = vmaxq_s8(v102, v108);
      v111 = vminq_s8(v103, v109);
      v112 = vzip1q_s8(v108, v109);
      v113 = vsubq_s8(v96, vclsq_s8(v112));
      v114 = vbicq_s8(v113, vceqzq_s8(v112));
      v115 = vpmaxq_s8(v114, v114);
      v113.i8[0] = vmaxvq_s8(v92);
      v116 = v77;
      v77.i8[0] = vminvq_s8(v92);
      v117 = vdupq_lane_s8(*v113.i8, 0);
      v118 = vdupq_lane_s8(*v77.i8, 0);
      v119 = vmaxq_s8(v110, v117);
      v375 = v31;
      v120 = vminq_s8(v111, v118);
      v121 = vzip1q_s8(v117, v118);
      v122 = vbicq_s8(vsubq_s8(v96, vclsq_s8(v121)), vceqzq_s8(v121));
      v123 = vpmaxq_s8(v122, v122);
      v124 = vmaxq_s8(vmaxq_s8(v99, v107), vmaxq_s8(v115, v123));
      v125 = vclzq_s8(vsubq_s8(v119, v120));
      v126 = vsubq_s8(v96, v125);
      v127 = vcgtq_s8(v124, v126);
      v128 = vminq_s8(v126, v124);
      v118.i64[0] = 0x202020202020202;
      v118.i64[1] = 0x202020202020202;
      v124.i64[0] = 0xA0A0A0A0A0A0A0ALL;
      v124.i64[1] = 0xA0A0A0A0A0A0A0ALL;
      v129 = vbslq_s8(v127, v124, v118);
      v124.i64[0] = 0x101010101010101;
      v124.i64[1] = 0x101010101010101;
      v130 = vmaxq_s8(v128, v124);
      v124.i64[0] = 0x303030303030303;
      v124.i64[1] = 0x303030303030303;
      v131 = vmaxq_s8(vminq_s8(vsubq_s8(v130, v99), v124), 0);
      v132 = vmaxq_s8(vminq_s8(vsubq_s8(v130, v107), v124), 0);
      v133 = vmaxq_s8(vminq_s8(vsubq_s8(v130, v115), v124), 0);
      v134 = vmaxq_s8(vminq_s8(vsubq_s8(v130, v123), v124), 0);
      v135 = vsubq_s8(v130, v131);
      v136 = vsubq_s8(v130, v132);
      v137 = vsubq_s8(v130, v133);
      v138 = vsubq_s8(v130, v134);
      v139 = vceqq_s8(vaddq_s8(v134, v133), vnegq_s8(vaddq_s8(v131, v132)));
      v131.i64[0] = 0x404040404040404;
      v131.i64[1] = 0x404040404040404;
      v140 = vorrq_s8(vbicq_s8(v131, v139), v129);
      v141.i64[0] = 0x8000800080008;
      v141.i64[1] = 0x8000800080008;
      v142 = vmovl_u8(*v80.i8);
      v143 = *&v142 & __PAIR128__(0xFFF8FFF8FFF8FFF8, 0xFFF8FFF8FFF8FFF8);
      v385 = vmovl_s8(*v63.i8);
      v144 = *&vshll_n_u8(*v80.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9);
      v145 = *&v142 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3);
      v146.i64[0] = 0x2000200020002;
      v146.i64[1] = 0x2000200020002;
      v147 = vshll_n_s8(vadd_s8(vadd_s8(*v116.i8, *v76.i8), *v78.i8), 3uLL);
      v148 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(vbicq_s8(v385, vceqzq_s16(v143)), v144), vandq_s8(vceqq_s16(v145, v146), v141)), *v75.i8, 0x707070707070707), v147), vaddq_s16(vmlal_s8(vaddl_u8(vbic_s8(*v130.i8, vcgt_u8(0x808080808080808, *v140.i8)), vand_s8(vadd_s8(*v140.i8, *v140.i8), 0x808080808080808)), *v135.i8, 0x707070707070707), vaddq_s16(vshll_n_s8(vadd_s8(vadd_s8(*v137.i8, *v136.i8), *v138.i8), 3uLL), v141)))), 0);
      v146.i16[0] = vaddlvq_s8(v148);
      v149 = v82 & 0xF | (16 * v83);
      v150 = v146.u16[0];
      if (v146.i16[0])
      {
        v151.i64[0] = 0x707070707070707;
        v151.i64[1] = 0x707070707070707;
        v152 = vsubq_s8(v151, v125);
        v153.i64[0] = -1;
        v153.i64[1] = -1;
        v154 = vandq_s8(vsubq_s8(vshlq_s8(v153, v152), v120), v127);
        v377 = vbslq_s8(v148, v382, v26);
        v383 = vbslq_s8(v148, v380, v27);
        v28 = vbslq_s8(v148, v378, v28);
        v31 = vbslq_s8(v148, v92, v375);
        v75 = vbslq_s8(v148, v135, v75);
        v69 = vbslq_s8(v148, v154, v384);
        v63 = vbslq_s8(v148, v130, v63);
        v80 = vbslq_s8(v148, v140, v80);
        v155 = vmovl_u8(*v80.i8);
        v143 = *&v155 & __PAIR128__(0xFFF8FFF8FFF8FFF8, 0xFFF8FFF8FFF8FFF8);
        v385 = vmovl_s8(*v63.i8);
        v144 = *&vshll_n_u8(*v80.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9);
        v145 = *&v155 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3);
        v156 = vmull_s8(*v75.i8, 0x707070707070707);
        v379 = vbslq_s8(v148, v137, v116);
        v381 = vbslq_s8(v148, v138, v78);
        v376 = vbslq_s8(v148, v136, v76);
        v147 = vshll_n_s8(vadd_s8(vadd_s8(*v379.i8, *v376.i8), *v381.i8), 3uLL);
      }

      else
      {
        v376 = v76;
        v377 = v26;
        v379 = v116;
        v381 = v78;
        v383 = v27;
        v156 = vmull_s8(*v75.i8, 0x707070707070707);
        v31 = v375;
        v69 = v384;
      }

      v65 = v149;
      v158 = vsubq_s8(v21, vqtbl1q_s8(v21, xmmword_29D2F0DF0));
      v159 = v22;
      v159.i8[7] = v21.i8[7];
      v160 = vsubq_s8(v22, vqtbl1q_s8(v159, xmmword_29D2F0E00));
      v161 = v23;
      v161.i8[7] = v21.i8[7];
      v162 = vsubq_s8(v23, vqtbl1q_s8(v161, xmmword_29D2F0E10));
      v163 = v24;
      v163.i8[7] = v21.i8[7];
      v164 = vqtbl1q_s8(v163, xmmword_29D2F0E20);
      v165 = vsubq_s8(v24, v164);
      v166 = v158;
      v166.i8[0] = v158.i8[7];
      v166.i8[7] = v158.i8[0];
      v158.i8[0] = vmaxvq_s8(v166);
      v164.i8[0] = vminvq_s8(v166);
      v167 = vdupq_lane_s8(*v158.i8, 0);
      v168 = vdupq_lane_s8(*v164.i8, 0);
      v169 = vzip1q_s8(v167, v168);
      v170.i64[0] = 0x808080808080808;
      v170.i64[1] = 0x808080808080808;
      v171 = vsubq_s8(v170, vclsq_s8(v169));
      v172 = vbicq_s8(v171, vceqzq_s8(v169));
      v173 = vpmaxq_s8(v172, v172);
      v171.i8[0] = vmaxvq_s8(v160);
      v137.i8[0] = vminvq_s8(v160);
      v174 = vdupq_lane_s8(*v171.i8, 0);
      v175 = vdupq_lane_s8(*v137.i8, 0);
      v176 = vmaxq_s8(v167, v174);
      v177 = vminq_s8(v168, v175);
      v178 = vzip1q_s8(v174, v175);
      v179 = vsubq_s8(v170, vclsq_s8(v178));
      v180 = vbicq_s8(v179, vceqzq_s8(v178));
      v181 = vpmaxq_s8(v180, v180);
      v180.i8[0] = vmaxvq_s8(v162);
      v179.i8[0] = vminvq_s8(v162);
      v182 = vdupq_lane_s8(*v180.i8, 0);
      v183 = vdupq_lane_s8(*v179.i8, 0);
      v184 = vmaxq_s8(v176, v182);
      v185 = vminq_s8(v177, v183);
      v186 = vzip1q_s8(v182, v183);
      v187 = vsubq_s8(v170, vclsq_s8(v186));
      v188 = vbicq_s8(v187, vceqzq_s8(v186));
      v189 = vpmaxq_s8(v188, v188);
      v188.i8[0] = vmaxvq_s8(v165);
      v187.i8[0] = vminvq_s8(v165);
      v190 = vdupq_lane_s8(*v188.i8, 0);
      v191 = vdupq_lane_s8(*v187.i8, 0);
      v192 = vmaxq_s8(v184, v190);
      v193 = vminq_s8(v185, v191);
      v194 = vzip1q_s8(v190, v191);
      v195 = vbicq_s8(vsubq_s8(v170, vclsq_s8(v194)), vceqzq_s8(v194));
      v196 = vpmaxq_s8(v195, v195);
      v197 = vmaxq_s8(vmaxq_s8(v173, v181), vmaxq_s8(v189, v196));
      v198 = vclzq_s8(vsubq_s8(v192, v193));
      v199 = vsubq_s8(v170, v198);
      v200 = vcgtq_s8(v197, v199);
      v201 = vminq_s8(v199, v197);
      v199.i64[0] = 0x909090909090909;
      v199.i64[1] = 0x909090909090909;
      v170.i64[0] = 0x202020202020202;
      v170.i64[1] = 0x202020202020202;
      v202 = vorrq_s8(vandq_s8(vceqzq_s8(v201), v170), vsubq_s8(vandq_s8(v200, v199), vmvnq_s8(v200)));
      v199.i64[0] = 0x303030303030303;
      v199.i64[1] = 0x303030303030303;
      v203 = vmaxq_s8(vminq_s8(vsubq_s8(v201, v173), v199), 0);
      v204 = vmaxq_s8(vminq_s8(vsubq_s8(v201, v181), v199), 0);
      v205 = vmaxq_s8(vminq_s8(vsubq_s8(v201, v189), v199), 0);
      v206 = vmaxq_s8(vminq_s8(vsubq_s8(v201, v196), v199), 0);
      v207 = vsubq_s8(v201, v203);
      v208 = vsubq_s8(v201, v204);
      v209 = vsubq_s8(v201, v205);
      v210 = vsubq_s8(v201, v206);
      v170.i64[0] = 0x404040404040404;
      v170.i64[1] = 0x404040404040404;
      v211 = vorrq_s8(vbicq_s8(v170, vceqq_s8(vaddq_s8(v206, v205), vnegq_s8(vaddq_s8(v203, v204)))), v202);
      v170.i64[0] = 0x2000200020002;
      v170.i64[1] = 0x2000200020002;
      v212 = vceqq_s16(v145, v170);
      v170.i64[0] = 0x8000800080008;
      v170.i64[1] = 0x8000800080008;
      v213 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v385, vceqzq_s16(v143)), v144), vaddq_s16(vandq_s8(v212, v170), v156)), v147), vaddq_s16(vmlal_s8(vaddw_u8(vmovl_s8(vbic_s8(*v201.i8, vcgt_u8(0x808080808080808, *v211.i8))), vand_s8(vadd_s8(*v211.i8, *v211.i8), 0x808080808080808)), *v207.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v209.i8, *v208.i8), *v210.i8), 3uLL)))), 0);
      v203.i16[0] = vaddlvq_s8(v213);
      v214 = v203.u16[0];
      if (v203.i16[0])
      {
        v215.i64[0] = 0x707070707070707;
        v215.i64[1] = 0x707070707070707;
        v216 = vsubq_s8(v215, v198);
        v217.i64[0] = -1;
        v217.i64[1] = -1;
        v25.i8[0] = vbslq_s8(v213, vextq_s8(v21, v21, 0xFuLL), v25).u8[0];
        v26 = vbslq_s8(v213, v166, v377);
        v27 = vbslq_s8(v213, v160, v383);
        v28 = vbslq_s8(v213, v162, v28);
        v31 = vbslq_s8(v213, v165, v31);
        v75 = vbslq_s8(v213, v207, v75);
        v76 = vbslq_s8(v213, v208, v376);
        v77 = vbslq_s8(v213, v209, v379);
        v78 = vbslq_s8(v213, v210, v381);
        v69 = vbslq_s8(v213, vandq_s8(vsubq_s8(vshlq_s8(v217, v216), v193), v200), v69);
        v63 = vbslq_s8(v213, v201, v63);
        v80 = vbslq_s8(v213, v211, v80);
      }

      else
      {
        v78 = v381;
        v27 = v383;
        v26 = v377;
        v77 = v379;
        v76 = v376;
      }

      if (v150)
      {
        v218 = v214 == 0;
      }

      else
      {
        v218 = 0;
      }

      v64 = v218;
    }

    v219 = vmovl_s8(*v80.i8);
    v220.i64[0] = 0x8000800080008;
    v220.i64[1] = 0x8000800080008;
    v221.i64[0] = 0x3000300030003;
    v221.i64[1] = 0x3000300030003;
    v222.i64[0] = 0x2000200020002;
    v222.i64[1] = 0x2000200020002;
    if (((vbicq_s8(vmovl_s8(*v63.i8), vceqzq_s16(vandq_s8(v219, v220))).u16[0] + ((2 * v219.i16[0]) & 8) + vandq_s8(vceqq_s16(vandq_s8(v219, v221), v222), v220).u16[0] - v75.i8[0] + 8 * v75.i8[0] + 8 * vaddq_s8(vaddq_s8(v77, v76), v78).i8[0]) - 117) <= 0xFFFFFFFFFFFFFF77)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 16;
    }

    else
    {
      v223 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v224 = 8 * (a1 & 7);
      if (v224)
      {
        v225 = *v223 & ~(-1 << v224);
      }

      else
      {
        v225 = 0;
      }

      v226 = vextq_s8(v75, 0, 8uLL);
      v227 = vextq_s8(v76, 0, 8uLL);
      v228 = vextq_s8(v77, 0, 8uLL);
      v229 = vextq_s8(v78, 0, 8uLL);
      if (v63.i8[0])
      {
        v230 = (16 * v63.i8[0] + 112) & 0x70;
      }

      else
      {
        v230 = 0;
      }

      *a2 = 32 * v80.i8[0];
      v231 = (v230 & 0xFFFF807F | v80.i8[0] & 8 | (v25.u8[0] << 7)) >> 3;
      v232 = (v231 << v224) | v225;
      if (v224 >= 0x34)
      {
        *v223 = v232;
        v232 = v231 >> (-8 * (a1 & 7u));
      }

      v233 = v224 + 12;
      v234.i64[0] = 0x202020202020202;
      v234.i64[1] = 0x202020202020202;
      v235 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*v219.i8, 0x4000400040004)))), v234);
      v234.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v234.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v236.i64[0] = -1;
      v236.i64[1] = -1;
      v237 = vandq_s8(vshlq_u8(v236, vorrq_s8(v235, v234)), vzip1q_s16(vzip1q_s8(vsubq_s8(v63, v226), vsubq_s8(v63, v227)), vzip1q_s8(vsubq_s8(v63, v228), vsubq_s8(v63, v229))).u32[0]);
      v238 = vmovl_u8(*v235.i8);
      v239 = vpaddq_s16(vshlq_u16(vmovl_u8(*v237.i8), vtrn1q_s16(0, v238)), vmovl_high_u8(v237));
      v240 = vpaddq_s16(v238, vmovl_high_u8(v235));
      v241 = vmovl_u16(*v240.i8);
      v242 = vmovl_high_u16(v240);
      v243 = vpaddq_s32(vshlq_u32(vmovl_u16(*v239.i8), vtrn1q_s32(0, v241)), vshlq_u32(vmovl_high_u16(v239), vtrn1q_s32(0, v242)));
      v244 = vpaddq_s32(v241, v242);
      v245.i64[0] = v243.u32[0];
      v245.i64[1] = v243.u32[1];
      v246 = v245;
      v245.i64[0] = v243.u32[2];
      v245.i64[1] = v243.u32[3];
      v247 = v245;
      v245.i64[0] = v244.u32[0];
      v245.i64[1] = v244.u32[1];
      v248 = v245;
      v245.i64[0] = v244.u32[2];
      v245.i64[1] = v244.u32[3];
      v249 = vpaddq_s64(vshlq_u64(v246, vzip1q_s64(0, v248)), vshlq_u64(v247, vzip1q_s64(0, v245)));
      v250 = vpaddq_s64(v248, v245);
      v251 = (v224 + 12) & 0x3C;
      v252 = (v249.i64[0] << v251) | v232;
      if ((v250.i64[0] + v251) >= 0x40)
      {
        *(v223 + ((v233 >> 3) & 8)) = v252;
        v252 = v249.i64[0] >> -v251;
      }

      v253 = v250.i64[0] + v233;
      v254 = v252 | (v249.i64[1] << v253);
      if ((v253 & 0x3F) + v250.i64[1] >= 0x40)
      {
        *(v223 + ((v253 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v254;
        v254 = v249.i64[1] >> -(v253 & 0x3F);
        if ((v253 & 0x3F) == 0)
        {
          v254 = 0;
        }
      }

      v255 = vceqq_s8(v63, v75);
      v256 = v253 + v250.i64[1];
      v257.i64[0] = 0x808080808080808;
      v257.i64[1] = 0x808080808080808;
      v258.i64[0] = -1;
      v258.i64[1] = -1;
      v259 = vandq_s8(vextq_s8(vtstq_s8(v80, v257), 0, 0xFuLL), v63);
      v260.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v260.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v261 = vandq_s8(vshlq_u8(v258, vaddq_s8(v259, v260)), v69);
      v262 = vmovl_u8(*v259.i8);
      v263 = vpaddq_s16(vshlq_u16(vmovl_u8(*v261.i8), vtrn1q_s16(0, v262)), vmovl_high_u8(v261));
      v264 = vpaddq_s16(v262, vmovl_high_u8(v259));
      v265 = vmovl_u16(*v264.i8);
      v266 = vmovl_high_u16(v264);
      v267 = vpaddq_s32(vshlq_u32(vmovl_u16(*v263.i8), vtrn1q_s32(0, v265)), vshlq_u32(vmovl_high_u16(v263), vtrn1q_s32(0, v266)));
      v268 = vpaddq_s32(v265, v266);
      v269.i64[0] = v267.u32[0];
      v269.i64[1] = v267.u32[1];
      v270 = v269;
      v269.i64[0] = v267.u32[2];
      v269.i64[1] = v267.u32[3];
      v271 = v269;
      v269.i64[0] = v268.u32[0];
      v269.i64[1] = v268.u32[1];
      v272 = v269;
      v269.i64[0] = v268.u32[2];
      v269.i64[1] = v268.u32[3];
      v273 = vpaddq_s64(vshlq_u64(v270, vzip1q_s64(0, v272)), vshlq_u64(v271, vzip1q_s64(0, v269)));
      v274 = vpaddq_s64(v272, v269);
      v275 = (v273.i64[0] << v256) | v254;
      if (v274.i64[0] + (v256 & 0x3F) >= 0x40)
      {
        *(v223 + ((v256 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v275;
        v275 = v273.i64[0] >> -(v256 & 0x3F);
        if ((v256 & 0x3F) == 0)
        {
          v275 = 0;
        }
      }

      v276 = vandq_s8(v69, v255);
      v277 = v274.i64[0] + v256;
      v278 = v275 | (v273.i64[1] << v277);
      if ((v277 & 0x3F) + v274.i64[1] >= 0x40)
      {
        *(v223 + ((v277 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v278;
        v278 = v273.i64[1] >> -(v277 & 0x3F);
        if ((v277 & 0x3F) == 0)
        {
          v278 = 0;
        }
      }

      v279 = vceqq_s8(v63, v76);
      v280 = vaddq_s8(v276, v26);
      v281 = v277 + v274.i64[1];
      if (v64)
      {
        v278 |= v65 << v281;
        if ((v281 & 0x3F) >= 0x38)
        {
          *(v223 + ((v281 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v278;
          v278 = v65 >> -(v281 & 0x3F);
        }

        v281 += 8;
      }

      v282 = vandq_s8(v69, v279);
      v283 = vmovl_high_u8(v226);
      v226.i8[0] = 0;
      v284.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v284.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v285.i64[0] = -1;
      v285.i64[1] = -1;
      v286 = vandq_s8(vshlq_u8(v285, vaddq_s8(v226, v284)), v280);
      v287 = vmovl_u8(*v226.i8);
      v288 = vpaddq_s16(vshlq_u16(vmovl_u8(*v286.i8), vtrn1q_s16(0, v287)), vshlq_u16(vmovl_high_u8(v286), vtrn1q_s16(0, v283)));
      v289 = vpaddq_s16(v287, v283);
      v290 = vmovl_u16(*v289.i8);
      v291 = vmovl_high_u16(v289);
      v292 = vpaddq_s32(vshlq_u32(vmovl_u16(*v288.i8), vtrn1q_s32(0, v290)), vshlq_u32(vmovl_high_u16(v288), vtrn1q_s32(0, v291)));
      v293 = vpaddq_s32(v290, v291);
      v294.i64[0] = v292.u32[0];
      v294.i64[1] = v292.u32[1];
      v295 = v294;
      v294.i64[0] = v292.u32[2];
      v294.i64[1] = v292.u32[3];
      v296 = v294;
      v294.i64[0] = v293.u32[0];
      v294.i64[1] = v293.u32[1];
      v297 = v294;
      v294.i64[0] = v293.u32[2];
      v294.i64[1] = v293.u32[3];
      v298 = vpaddq_s64(vshlq_u64(v295, vzip1q_s64(0, v297)), vshlq_u64(v296, vzip1q_s64(0, v294)));
      v299 = vpaddq_s64(v297, v294);
      v300 = (v298.i64[0] << v281) | v278;
      if (v299.i64[0] + (v281 & 0x3F) >= 0x40)
      {
        *(v223 + ((v281 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v300;
        v300 = v298.i64[0] >> -(v281 & 0x3F);
        if ((v281 & 0x3F) == 0)
        {
          v300 = 0;
        }
      }

      v301 = vceqq_s8(v63, v77);
      v302 = vaddq_s8(v27, v282);
      v303 = v299.i64[0] + v281;
      v304 = (v299.i64[0] + v281) & 0x3F;
      v305 = v300 | (v298.i64[1] << v303);
      if ((v303 & 0x3F) + v299.i64[1] >= 0x40)
      {
        *(v223 + ((v303 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v305;
        v305 = v298.i64[1] >> -v304;
        if (!v304)
        {
          v305 = 0;
        }
      }

      v306 = vandq_s8(v69, v301);
      v307 = v303 + v299.i64[1];
      v308.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v308.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v309.i64[0] = -1;
      v309.i64[1] = -1;
      v310 = vandq_s8(vshlq_u8(v309, vaddq_s8(v227, v308)), v302);
      v311 = vmovl_u8(*v227.i8);
      v312 = vmovl_high_u8(v227);
      v313 = vpaddq_s16(vshlq_u16(vmovl_u8(*v310.i8), vtrn1q_s16(0, v311)), vshlq_u16(vmovl_high_u8(v310), vtrn1q_s16(0, v312)));
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
      v325 = (v323.i64[0] << v307) | v305;
      if (v324.i64[0] + (v307 & 0x3F) >= 0x40)
      {
        *(v223 + ((v307 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v325;
        v325 = v323.i64[0] >> -(v307 & 0x3F);
        if ((v307 & 0x3F) == 0)
        {
          v325 = 0;
        }
      }

      v326 = vceqq_s8(v63, v78);
      v327 = vaddq_s8(v28, v306);
      v328 = v324.i64[0] + v307;
      v329 = v325 | (v323.i64[1] << v328);
      if ((v328 & 0x3F) + v324.i64[1] >= 0x40)
      {
        *(v223 + ((v328 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v329;
        v329 = v323.i64[1] >> -(v328 & 0x3F);
        if ((v328 & 0x3F) == 0)
        {
          v329 = 0;
        }
      }

      v330 = vandq_s8(v69, v326);
      v331 = v328 + v324.i64[1];
      v332.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v332.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v333.i64[0] = -1;
      v333.i64[1] = -1;
      v334 = vandq_s8(vshlq_u8(v333, vaddq_s8(v228, v332)), v327);
      v335 = vmovl_u8(*v228.i8);
      v336 = vmovl_high_u8(v228);
      v337 = vpaddq_s16(vshlq_u16(vmovl_u8(*v334.i8), vtrn1q_s16(0, v335)), vshlq_u16(vmovl_high_u8(v334), vtrn1q_s16(0, v336)));
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
      v349 = (v347.i64[0] << v331) | v329;
      if (v348.i64[0] + (v331 & 0x3F) >= 0x40)
      {
        *(v223 + ((v331 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v349;
        v349 = v347.i64[0] >> -(v331 & 0x3F);
        if ((v331 & 0x3F) == 0)
        {
          v349 = 0;
        }
      }

      v350 = vaddq_s8(v31, v330);
      v351 = v348.i64[0] + v331;
      v352 = v349 | (v347.i64[1] << v351);
      if ((v351 & 0x3F) + v348.i64[1] >= 0x40)
      {
        *(v223 + ((v351 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v352;
        v352 = v347.i64[1] >> -(v351 & 0x3F);
        if ((v351 & 0x3F) == 0)
        {
          v352 = 0;
        }
      }

      v353 = v351 + v348.i64[1];
      v354.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v354.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v355.i64[0] = -1;
      v355.i64[1] = -1;
      v356 = vandq_s8(vshlq_u8(v355, vaddq_s8(v229, v354)), v350);
      v357 = vmovl_u8(*v229.i8);
      v358 = vmovl_high_u8(v229);
      v359 = vpaddq_s16(vshlq_u16(vmovl_u8(*v356.i8), vtrn1q_s16(0, v357)), vshlq_u16(vmovl_high_u8(v356), vtrn1q_s16(0, v358)));
      v360 = vpaddq_s16(v357, v358);
      v361 = vmovl_u16(*v360.i8);
      v362 = vmovl_high_u16(v360);
      v363 = vpaddq_s32(vshlq_u32(vmovl_u16(*v359.i8), vtrn1q_s32(0, v361)), vshlq_u32(vmovl_high_u16(v359), vtrn1q_s32(0, v362)));
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
      v371 = (v369.i64[0] << v353) | v352;
      if (v370.i64[0] + (v353 & 0x3F) > 0x3F)
      {
        *(v223 + ((v353 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v371;
        if ((v353 & 0x3F) != 0)
        {
          v371 = v369.i64[0] >> -(v353 & 0x3F);
        }

        else
        {
          v371 = 0;
        }
      }

      v372 = v370.i64[0] + v353;
      v373 = v371 | (v369.i64[1] << v372);
      if ((v372 & 0x3F) + v370.i64[1] >= 0x40)
      {
        *(v223 + ((v372 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v373;
        v373 = v369.i64[1] >> -(v372 & 0x3F);
        if ((v372 & 0x3F) == 0)
        {
          v373 = 0;
        }
      }

      v374 = v372 + v370.i64[1];
      if ((v374 & 0x3F) != 0)
      {
        *(v223 + ((v374 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v373;
      }

      result = (v374 - v224 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = a3->i8[0];
    *a2 = 96;
    return 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(int8x8_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, double a6, int8x8_t a7)
{
  v237 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    v12 = 0;
LABEL_6:
    *a1 = 0;
    *(a1 + a2) = 0;
    *(a1 + 2 * a2) = 0;
    *(a1 + 3 * a2) = 0;
    return v12;
  }

  v7 = a4;
  if (a4 >= 0xF0)
  {
    if (a4)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v233, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v233, a5);
    }

    v230 = v233;
    v226 = v234;
    v229 = v235;
    v225 = v236;
    v14 = a3 + 4;
    if ((v7 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v14, &v233, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v14, &v233, a5);
    }

    v228 = v233;
    v232 = v234;
    v227 = v235;
    v231 = v236;
    v15 = a3 + 8;
    if ((v7 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v15, &v233, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v15, &v233, a5);
    }

    v224 = v233;
    v222 = v234;
    v223 = v235;
    v221 = v236;
    v16 = a3 + 12;
    if ((v7 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v16, &v233, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v16, &v233, a5);
    }

    v17.i64[0] = v222;
    v17.i64[1] = v221;
    v18.i64[0] = v226;
    v18.i64[1] = v225;
    *v18.i8 = vmovn_s16(vuzp1q_s16(v18, v17));
    v19.i64[0] = v224;
    v19.i64[1] = v223;
    v20.i64[0] = v230;
    v20.i64[1] = v229;
    *v20.i8 = vmovn_s16(vuzp1q_s16(v20, v19));
    v17.i64[0] = v233;
    v19.i64[0] = v234;
    v21 = v235;
    v22 = v236;
    *a1 = *v20.i8;
    *(a1 + a2) = *v18.i8;
    v23 = (a1 + a2 + a2);
    v17.i64[1] = v21;
    v18.i64[0] = v228;
    v18.i64[1] = v227;
    v19.i64[1] = v22;
    v20.i64[0] = v232;
    v20.i64[1] = v231;
    *v23 = vmovn_s16(vuzp1q_s16(v18, v17));
    *(v23 + a2) = vmovn_s16(vuzp1q_s16(v20, v19));
    return 16;
  }

  if (a4 == 31)
  {
    v24 = *a3;
    v25 = *(a3 + 8);
    v26 = *(a3 + 16);
    v27 = *(a3 + 24);
    *a1 = vuzp1_s16(*a3, v26);
    *(a1 + a2) = vuzp2_s16(v24, v26);
    v28 = (a1 + 2 * a2);
    *v28 = vuzp1_s16(v25, v27);
    *(v28 + a2) = vuzp2_s16(v25, v27);
    return 32;
  }

  if (a4 == 96)
  {
    v13 = vdup_lane_s8(*a3, 0);
    *a1 = v13;
    *(a1 + a2) = v13;
    *(a1 + 2 * a2) = v13;
    *(a1 + 3 * a2) = v13;
    return 1;
  }

  v30 = 8 * (a3 & 7);
  v31 = a3 & 0xFFFFFFFFFFFFFFF8;
  v32 = v30 + 12;
  v33 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v30;
  if (v30 >= 0x35)
  {
    v33 |= *(v31 + 8) << (-8 * (a3 & 7u));
  }

  v34 = (8 * (a3 & 7)) | 0x80;
  v35 = (a4 >> 5) | (8 * v33);
  v36 = vdupq_n_s8(v35 & 0xF);
  v37.i64[0] = 0x303030303030303;
  v37.i64[1] = 0x303030303030303;
  a7.i32[0] = v35 & 0xF;
  v38 = vand_s8(a7, 0x4000400040004);
  v39 = vandq_s8(v36, v37);
  v40 = vbicq_s8(vdupq_n_s8(((v33 >> 1) & 7) + 1), vceqq_s8(v39, v37));
  v37.i64[0] = 0x202020202020202;
  v37.i64[1] = 0x202020202020202;
  v41 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vdup_lane_s16(v38, 0)))), v37);
  if (vmaxvq_s8(v41) < 1)
  {
    v49 = 0;
    v72.i64[0] = -1;
    v72.i64[1] = -1;
    v68 = v40;
    v67 = v40;
    v66 = v40;
    v71.i64[0] = -1;
    v71.i64[1] = -1;
    v65 = v40;
    v70.i64[0] = -1;
    v70.i64[1] = -1;
    v69.i64[0] = -1;
    v69.i64[1] = -1;
  }

  else
  {
    v42 = vmovl_u8(*&vpaddq_s8(v41, v41));
    v43 = vmovl_u16(*&vpaddq_s16(v42, v42));
    v44 = vpaddq_s32(v43, v43).u64[0];
    v45.i64[0] = v44;
    v45.i64[1] = HIDWORD(v44);
    v46 = v45;
    v47 = vaddvq_s64(v45);
    v48 = v47 <= 0x80 && v34 >= v47 + v32;
    v49 = !v48;
    v50 = 0uLL;
    if (v48)
    {
      v51 = vaddq_s64(vzip1q_s64(0, v46), vdupq_n_s64(v32 & 0x3C));
      v52 = (v31 + ((v32 >> 3) & 8));
      v50 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v52, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v51)), vshlq_u64(vdupq_lane_s64(v52->i64[0], 0), vnegq_s64(v51)));
      if (v47 + (v32 & 0x3C) >= 0x81)
      {
        v50 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v52[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v51)), vshlq_u64(vdupq_laneq_s64(v52[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v51))), v50);
      }

      v32 += v47;
    }

    v53 = vzip1_s32(*v43.i8, *&vextq_s8(v43, v43, 8uLL));
    v54.i64[0] = v53.u32[0];
    v54.i64[1] = v53.u32[1];
    v55 = vshlq_u64(v50, vnegq_s64(v54));
    v56 = vuzp1q_s32(vzip1q_s64(v50, v55), vzip2q_s64(v50, v55));
    v57 = vshlq_u32(v56, vnegq_s32((*&v42 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v58 = vuzp1q_s16(vzip1q_s32(v56, v57), vzip2q_s32(v56, v57));
    v59 = vzip1q_s16(v58, vshlq_u16(v58, vnegq_s16(vmovl_u8(vuzp1_s8(*v41.i8, *v36.i8)))));
    *v59.i8 = vmovn_s16(v59);
    v56.i64[0] = 0x101010101010101;
    v56.i64[1] = 0x101010101010101;
    v60 = vshlq_s8(v56, v41);
    v56.i64[0] = -1;
    v56.i64[1] = -1;
    v60.i64[0] = vandq_s8(vaddq_s8(v60, v56), v59).u64[0];
    v61 = vdupq_lane_s8(*v60.i8, 0);
    v62 = vdupq_lane_s8(*v60.i8, 1);
    v63 = vdupq_lane_s8(*v60.i8, 2);
    v64 = vdupq_lane_s8(*v60.i8, 3);
    v65 = vsubq_s8(v40, v61);
    v66 = vsubq_s8(v40, v62);
    v67 = vsubq_s8(v40, v63);
    v68 = vsubq_s8(v40, v64);
    v69 = vceqzq_s8(v61);
    v70 = vceqzq_s8(v62);
    v71 = vceqzq_s8(v63);
    v72 = vceqzq_s8(v64);
  }

  v73.i64[0] = 0x707070707070707;
  v73.i64[1] = 0x707070707070707;
  v74 = 0uLL;
  v75 = vandq_s8(vextq_s8(vcgtq_u8(v36, v73), 0, 0xFuLL), v40);
  v76 = vmovl_u8(*&vpaddq_s8(v75, v75));
  v77 = vmovl_u16(*&vpaddq_s16(v76, v76));
  v78 = vpaddq_s32(v77, v77).u64[0];
  v79.i64[0] = v78;
  v79.i64[1] = HIDWORD(v78);
  v80 = v79;
  v81 = vaddvq_s64(v79);
  v82 = v81 + v32;
  if (v81 <= 0x80 && v34 >= v82)
  {
    v84 = v32 & 0x3F;
    v85 = vaddq_s64(vzip1q_s64(0, v80), vdupq_n_s64(v84));
    v86 = (v31 + 8 * (v32 >> 6));
    v74 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v86, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v85)), vshlq_u64(vdupq_lane_s64(v86->i64[0], 0), vnegq_s64(v85)));
    if (v81 + v84 >= 0x81)
    {
      v74 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v86[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v85)), vshlq_u64(vdupq_laneq_s64(v86[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v85))), v74);
    }

    v32 = v82;
  }

  else
  {
    v49 = 1;
  }

  v87 = vandq_s8(v65, xmmword_29D2F0D40);
  v88 = (a4 >> 5) & 3;
  if (v88 != 2)
  {
    v93 = 0;
    v90 = 0;
    v94 = v32;
    goto LABEL_58;
  }

  v89 = v32 + 4;
  if (v34 < v32 + 4)
  {
    v90 = 0;
    v89 = v32;
LABEL_57:
    v93 = 0;
    v49 = 1;
    v94 = v89;
    goto LABEL_58;
  }

  v95 = (v31 + 8 * (v32 >> 6));
  v96 = *v95 >> v32;
  if ((v32 & 0x3F) >= 0x3D)
  {
    v96 |= v95[1] << -(v32 & 0x3F);
  }

  v90 = (v96 << 28) >> 28;
  v94 = v32 + 8;
  if (v34 < v32 + 8)
  {
    goto LABEL_57;
  }

  v91 = (v31 + 8 * (v89 >> 6));
  v92 = *v91 >> v89;
  if ((v89 & 0x3F) >= 0x3D)
  {
    v92 |= v91[1] << -(v89 & 0x3F);
  }

  v93 = (v92 << 28) >> 28;
LABEL_58:
  v97 = vandq_s8(v66, xmmword_29D2F0D50);
  v87.i8[0] = 0;
  v98 = vmovl_u8(*&vpaddq_s8(v87, v87));
  v99 = vmovl_u16(*&vpaddq_s16(v98, v98));
  v100 = vpaddq_s32(v99, v99).u64[0];
  v101.i64[0] = v100;
  v101.i64[1] = HIDWORD(v100);
  v102 = v101;
  v103 = vaddvq_s64(v101);
  v104 = v103 + v94;
  v105 = 0uLL;
  if (v103 <= 0x80 && v34 >= v104)
  {
    v108 = v94 & 0x3F;
    v109 = vaddq_s64(vzip1q_s64(0, v102), vdupq_n_s64(v108));
    v110 = (v31 + 8 * (v94 >> 6));
    v107 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v110, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v109)), vshlq_u64(vdupq_lane_s64(v110->i64[0], 0), vnegq_s64(v109)));
    if (v103 + v108 >= 0x81)
    {
      v107 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v110[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v109)), vshlq_u64(vdupq_laneq_s64(v110[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v109))), v107);
    }

    v94 = v104;
  }

  else
  {
    v49 = 1;
    v107 = 0uLL;
  }

  v111 = vandq_s8(v67, xmmword_29D2F0D50);
  v112 = vmovl_u8(*&vpaddq_s8(v97, v97));
  v113 = vmovl_u16(*&vpaddq_s16(v112, v112));
  v114 = vpaddq_s32(v113, v113).u64[0];
  v115.i64[0] = v114;
  v115.i64[1] = HIDWORD(v114);
  v116 = v115;
  v117 = vaddvq_s64(v115);
  if (v117 >= 0x81)
  {
    v49 = 1;
  }

  else
  {
    v118 = vzip1_s32(*v113.i8, *&vextq_s8(v113, v113, 8uLL));
    v119.i64[0] = v118.u32[0];
    v119.i64[1] = v118.u32[1];
    v120 = v119;
    v121 = *&v112 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v122 = v117 + v94;
    if (v34 >= v117 + v94)
    {
      v123 = v94 & 0x3F;
      v124 = vaddq_s64(vzip1q_s64(0, v116), vdupq_n_s64(v123));
      v125 = (v31 + 8 * (v94 >> 6));
      v105 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v125, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v124)), vshlq_u64(vdupq_lane_s64(v125->i64[0], 0), vnegq_s64(v124)));
      if (v117 + v123 >= 0x81)
      {
        v105 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v125[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v124)), vshlq_u64(vdupq_laneq_s64(v125[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v124))), v105);
      }

      v94 = v122;
    }

    else
    {
      v49 = 1;
    }

    v126 = vshlq_u64(v105, vnegq_s64(v120));
    v127 = vuzp1q_s32(vzip1q_s64(v105, v126), vzip2q_s64(v105, v126));
    v128 = vshlq_u32(v127, vnegq_s32(v121));
    v129 = vuzp1q_s16(vzip1q_s32(v127, v128), vzip2q_s32(v127, v128));
    v130 = vshlq_u16(v129, vnegq_s16((*&v97 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v105 = vuzp1q_s8(vzip1q_s16(v129, v130), vzip2q_s16(v129, v130));
  }

  v131 = vandq_s8(v68, xmmword_29D2F0D50);
  v132 = vmovl_u8(*&vpaddq_s8(v111, v111));
  v133 = vmovl_u16(*&vpaddq_s16(v132, v132));
  v134 = vpaddq_s32(v133, v133).u64[0];
  v135.i64[0] = v134;
  v135.i64[1] = HIDWORD(v134);
  v136 = v135;
  v137 = vaddvq_s64(v135);
  if (v137 >= 0x81)
  {
    v49 = 1;
    v144 = 0uLL;
  }

  else
  {
    v138 = vzip1_s32(*v133.i8, *&vextq_s8(v133, v133, 8uLL));
    v139.i64[0] = v138.u32[0];
    v139.i64[1] = v138.u32[1];
    v140 = v139;
    v141 = *&v132 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v142 = v137 + v94;
    if (v34 >= v137 + v94)
    {
      v145 = v94 & 0x3F;
      v146 = vaddq_s64(vzip1q_s64(0, v136), vdupq_n_s64(v145));
      v147 = (v31 + 8 * (v94 >> 6));
      v143 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v147, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v146)), vshlq_u64(vdupq_lane_s64(v147->i64[0], 0), vnegq_s64(v146)));
      if (v137 + v145 >= 0x81)
      {
        v143 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v147[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v146)), vshlq_u64(vdupq_laneq_s64(v147[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v146))), v143);
      }

      v94 = v142;
    }

    else
    {
      v143 = 0uLL;
      v49 = 1;
    }

    v148 = vshlq_u64(v143, vnegq_s64(v140));
    v149 = vuzp1q_s32(vzip1q_s64(v143, v148), vzip2q_s64(v143, v148));
    v150 = vshlq_u32(v149, vnegq_s32(v141));
    v151 = vuzp1q_s16(vzip1q_s32(v149, v150), vzip2q_s32(v149, v150));
    v152 = vshlq_u16(v151, vnegq_s16((*&v111 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v144 = vuzp1q_s8(vzip1q_s16(v151, v152), vzip2q_s16(v151, v152));
  }

  v153 = vmovl_u8(*&vpaddq_s8(v131, v131));
  v154 = vmovl_u16(*&vpaddq_s16(v153, v153));
  v155 = vpaddq_s32(v154, v154).u64[0];
  v156.i64[0] = v155;
  v156.i64[1] = HIDWORD(v155);
  v157 = v156;
  v158 = vaddvq_s64(v156);
  if (v158 >= 0x81 || v34 < v158 + v94)
  {
    goto LABEL_88;
  }

  v159 = vaddq_s64(vzip1q_s64(0, v157), vdupq_n_s64(v94 & 0x3F));
  v160 = (v31 + 8 * (v94 >> 6));
  v161 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v160, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v159)), vshlq_u64(vdupq_lane_s64(v160->i64[0], 0), vnegq_s64(v159)));
  if (v158 + (v94 & 0x3F) >= 0x81)
  {
    v161 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v160[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v159)), vshlq_u64(vdupq_laneq_s64(v160[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v159))), v161);
  }

  if ((v49 & 1) != 0 || (v12 = (a4 & 0x1F) + 1, 8 * ((a3 & 7) + v12) - (v158 + v94) >= 9))
  {
LABEL_88:
    v12 = 0;
    v233 |= 255 << (8 * ((&vars0 - 120) & 7u));
    goto LABEL_6;
  }

  v162 = vzip1_s32(*v77.i8, *&vextq_s8(v77, v77, 8uLL));
  v163 = vzip1_s32(*v99.i8, *&vextq_s8(v99, v99, 8uLL));
  v164.i64[0] = v162.u32[0];
  v164.i64[1] = v162.u32[1];
  v165 = v164;
  v164.i64[0] = v163.u32[0];
  v164.i64[1] = v163.u32[1];
  v166 = vshlq_u64(v74, vnegq_s64(v165));
  v167 = vshlq_u64(v107, vnegq_s64(v164));
  v168 = vuzp1q_s32(vzip1q_s64(v74, v166), vzip2q_s64(v74, v166));
  v169 = vuzp1q_s32(vzip1q_s64(v107, v167), vzip2q_s64(v107, v167));
  v170 = vshlq_u32(v168, vnegq_s32((*&v76 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v171 = vshlq_u32(v169, vnegq_s32((*&v98 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v172 = vuzp1q_s16(vzip1q_s32(v168, v170), vzip2q_s32(v168, v170));
  v173 = vuzp1q_s16(vzip1q_s32(v169, v171), vzip2q_s32(v169, v171));
  v174 = vshlq_u16(v172, vnegq_s16((*&v75 & __PAIR128__(0xF0FFF0FFF0FFF0FFLL, 0xF0FFF0FFF0FFF0FFLL))));
  v175 = vshlq_u16(v173, vnegq_s16((*&v87 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF0000))));
  v176 = vzip2q_s16(v172, v174);
  v177 = vzip1q_s16(v172, v174);
  v174.i64[0] = 0x808080808080808;
  v174.i64[1] = 0x808080808080808;
  v178 = vzip2q_s16(v173, v175);
  v179 = vzip1q_s16(v173, v175);
  v175.i64[0] = 0x808080808080808;
  v175.i64[1] = 0x808080808080808;
  v180 = v33 >> 4;
  v181 = vuzp1q_s8(v177, v176);
  v176.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v176.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v182 = vuzp1q_s8(v179, v178);
  v178.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v178.i64[1] = 0xF8F8F8F8F8F8F8F8;
  *v167.i8 = vzip1_s32(*v154.i8, *&vextq_s8(v154, v154, 8uLL));
  v183.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v183.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v184.i64[0] = 0x808080808080808;
  v184.i64[1] = 0x808080808080808;
  v185 = vshlq_s8(v181, vsubq_s8(v174, v75));
  v186 = vaddq_s8(v87, v178);
  v187 = vshlq_s8(v182, vsubq_s8(v175, v87));
  v164.i64[0] = v167.u32[0];
  v164.i64[1] = v167.u32[1];
  v188 = vshlq_s8(v185, vaddq_s8(v75, v176));
  v189 = vshlq_s8(v187, v186);
  v190 = vshlq_s8(vshlq_s8(v105, vsubq_s8(v175, v97)), vaddq_s8(v97, v178));
  v191 = vshlq_s8(vshlq_s8(v144, vsubq_s8(v175, v111)), vaddq_s8(v111, v178));
  v192 = vshlq_u64(v161, vnegq_s64(v164));
  v193 = vuzp1q_s32(vzip1q_s64(v161, v192), vzip2q_s64(v161, v192));
  v194 = vshlq_u32(v193, vnegq_s32((*&v153 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v195 = vuzp1q_s16(vzip1q_s32(v193, v194), vzip2q_s32(v193, v194));
  v196 = vshlq_u16(v195, vnegq_s16((*&v131 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v197 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v195, v196), vzip2q_s16(v195, v196)), vsubq_s8(v184, v131)), vaddq_s8(v131, v183));
  if (v88 == 2)
  {
    v198.i64[0] = 0xFFFF0000FFFF0000;
    v198.i64[1] = 0xFFFF0000FFFF0000;
    v199 = vmlaq_s8(vandq_s8(vdupq_n_s8(v93), v198), vdupq_n_s8(v90), xmmword_29D2F0D60);
    v189 = vaddq_s8(v189, v199);
    v190 = vaddq_s8(vaddq_s8(vdupq_n_s8(2 * v93), v199), v190);
    v191 = vaddq_s8(vaddq_s8(vdupq_n_s8(4 * v90), v199), v191);
    v197 = vaddq_s8(vaddq_s8(vdupq_n_s8(4 * v90 + 2 * v93), v199), v197);
  }

  v200 = vdupq_n_s8(v180).u64[0];
  v201 = vaddq_s8(vandq_s8(v188, v69), v189);
  v202 = vdupq_lane_s8(*v188.i8, 0);
  v203 = vsubq_s8(v201, vandq_s8(v202, v69));
  v204 = vsubq_s8(v190, vandq_s8(v202, v70));
  v205 = vsubq_s8(v191, vandq_s8(v202, v71));
  v206 = vsubq_s8(v197, vandq_s8(v202, v72));
  v207.i64[0] = 0x101010101010101;
  v207.i64[1] = 0x101010101010101;
  if (vaddlvq_s8(vceqq_s8(v39, v207)))
  {
    v208 = vandq_s8(v36, v207);
    v209 = vnegq_s8(v208);
    v210 = v203;
    v210.i8[0] = v203.i8[7];
    v210.i8[7] = v203.i8[0];
    v211 = vorrq_s8(vandq_s8(v210, v209), vandq_s8(v203, vceqzq_s8(v208)));
    v212 = vaddq_s8(v211, vandq_s8(vqtbl1q_s8(v211, xmmword_29D2F0D70), v209));
    v203.i64[0] = vaddq_s8(v212, vandq_s8(vqtbl1q_s8(v212, xmmword_29D2F0D80), v209)).u64[0];
    v213 = vaddq_s8(vandq_s8(vqtbl1q_s8(v204, xmmword_29D2F0D90), v209), v204);
    v204.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v213, xmmword_29D2F0DA0), v209), v213).u64[0];
    v214 = vaddq_s8(vandq_s8(vqtbl1q_s8(v205, xmmword_29D2F0DB0), v209), v205);
    v205.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v214, xmmword_29D2F0DC0), v209), v214).u64[0];
    v215 = vaddq_s8(vandq_s8(vqtbl1q_s8(v206, xmmword_29D2F0DD0), v209), v206);
    v206.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v215, xmmword_29D2F0DE0), v209), v215).u64[0];
  }

  v216 = vadd_s8(v200, *v203.i8);
  v217 = vadd_s8(*v205.i8, v200);
  *a1 = vuzp1_s16(v216, v217);
  *(a1 + a2) = vuzp2_s16(v216, v217);
  v218 = (a1 + 2 * a2);
  v219 = vadd_s8(*v204.i8, v200);
  v220 = vadd_s8(*v206.i8, v200);
  *v218 = vuzp1_s16(v219, v220);
  *(v218 + a2) = vuzp2_s16(v219, v220);
  return v12;
}