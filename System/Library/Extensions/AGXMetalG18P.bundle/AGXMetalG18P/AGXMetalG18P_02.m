unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(int8x16_t *a1, char *a2, int64x2_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v7 = a5 < 2 || a6 < 2;
  v8 = *(a3 + a4);
  v9 = vzip1q_s64(*a3, v8);
  v10 = vzip2q_s64(*a3, v8);
  v11 = (a3 + 2 * a4);
  v12 = *(v11 + a4);
  v13 = vzip1q_s64(*v11, v12);
  v14 = vzip2q_s64(*v11, v12);
  v15 = vdupq_lane_s16(*v9.i8, 0);
  v16 = vsubq_s8(v9, v15);
  v17 = vsubq_s8(v10, v15);
  v18 = vsubq_s8(v13, v15);
  v19 = vsubq_s8(v14, v15);
  v20 = vqtbl1q_s8(v16, xmmword_29D2F0EF0);
  v21 = vpmaxq_s8(v20, v20);
  v22 = vpminq_s8(v20, v20);
  v23 = vpmaxq_s8(v21, v21);
  v24 = vpminq_s8(v22, v22);
  v25 = vpmaxq_s8(v23, v23);
  v26 = vpminq_s8(v24, v24);
  v27 = vzip1q_s8(v25, v26);
  v28.i64[0] = 0x808080808080808;
  v28.i64[1] = 0x808080808080808;
  v29 = vbicq_s8(vsubq_s8(v28, vclsq_s8(v27)), vceqzq_s8(v27));
  v30 = vpmaxq_s8(v29, v29);
  v31 = vqtbl1q_s8(v17, xmmword_29D2F0EF0);
  v32 = vpmaxq_s8(v31, v31);
  v33 = vpminq_s8(v31, v31);
  v34 = vpmaxq_s8(v32, v32);
  v35 = vpminq_s8(v33, v33);
  v36 = vpmaxq_s8(v34, v34);
  v37 = vpminq_s8(v35, v35);
  v38 = vmaxq_s8(v25, v36);
  v39 = vminq_s8(v26, v37);
  v40 = vzip1q_s8(v36, v37);
  v41 = vbicq_s8(vsubq_s8(v28, vclsq_s8(v40)), vceqzq_s8(v40));
  v42 = vpmaxq_s8(v41, v41);
  v43 = vqtbl1q_s8(v18, xmmword_29D2F0EF0);
  v44 = vpmaxq_s8(v43, v43);
  v45 = vpminq_s8(v43, v43);
  v46 = vpmaxq_s8(v44, v44);
  v47 = vpminq_s8(v45, v45);
  v48 = vpmaxq_s8(v46, v46);
  v49 = vpminq_s8(v47, v47);
  v50 = vmaxq_s8(v38, v48);
  v51 = vminq_s8(v39, v49);
  v52 = vzip1q_s8(v48, v49);
  v53 = vbicq_s8(vsubq_s8(v28, vclsq_s8(v52)), vceqzq_s8(v52));
  v54 = vpmaxq_s8(v53, v53);
  v55 = vqtbl1q_s8(v19, xmmword_29D2F0EF0);
  v56 = vpmaxq_s8(v55, v55);
  v57 = vpminq_s8(v55, v55);
  v58 = vpmaxq_s8(v56, v56);
  v59 = vpminq_s8(v57, v57);
  v60 = vpmaxq_s8(v58, v58);
  v61 = vpminq_s8(v59, v59);
  v62 = vmaxq_s8(v50, v60);
  v63 = vminq_s8(v51, v61);
  v64 = vzip1q_s8(v60, v61);
  v65 = vbicq_s8(vsubq_s8(v28, vclsq_s8(v64)), vceqzq_s8(v64));
  v66 = vpmaxq_s8(v65, v65);
  v67 = vmaxq_s8(vmaxq_s8(v30, v42), vmaxq_s8(v54, v66));
  v68 = vclzq_s8(vsubq_s8(v62, v63));
  v69 = vsubq_s8(v28, v68);
  v70 = vminq_s8(v69, v67);
  if (vmaxvq_s8(v70))
  {
    v400 = v9;
    v401 = v10;
    v402 = v14;
    v403 = v13;
    v71.i64[0] = -1;
    v71.i64[1] = -1;
    v72.i64[0] = 0x707070707070707;
    v72.i64[1] = 0x707070707070707;
    v73 = vcgtq_s8(v67, v69);
    v404 = vandq_s8(vsubq_s8(vshlq_s8(v71, vsubq_s8(v72, v68)), v63), v73);
    v74.i64[0] = 0x303030303030303;
    v74.i64[1] = 0x303030303030303;
    v75 = vmaxq_s8(vminq_s8(vsubq_s8(v70, v30), v74), 0);
    v76 = vmaxq_s8(vminq_s8(vsubq_s8(v70, v42), v74), 0);
    v77 = vmaxq_s8(vminq_s8(vsubq_s8(v70, v54), v74), 0);
    v78 = vmaxq_s8(vminq_s8(vsubq_s8(v70, v66), v74), 0);
    v79.i64[0] = 0x404040404040404;
    v79.i64[1] = 0x404040404040404;
    v80 = vorrq_s8(vbicq_s8(v79, vceqq_s8(vaddq_s8(v78, v77), vnegq_s8(vaddq_s8(v75, v76)))), vorrq_s8(vandq_s8(vceqzq_s8(v70), v74), vandq_s8(v73, v28)));
    v81 = vsubq_s8(v16, vqtbl1q_s8(v16, xmmword_29D2F0EE0));
    v82 = vsubq_s8(v17, vqtbl1q_s8(v17, xmmword_29D2F0EE0));
    v83 = vsubq_s8(v18, vqtbl1q_s8(v18, xmmword_29D2F0EE0));
    v84 = vsubq_s8(v19, vqtbl1q_s8(v19, xmmword_29D2F0EE0));
    v85 = vqtbl1q_s8(v81, xmmword_29D2F0EF0);
    v86 = vpmaxq_s8(v85, v85);
    v87 = vpminq_s8(v85, v85);
    v88 = vpmaxq_s8(v86, v86);
    v89 = vpminq_s8(v87, v87);
    v90 = vpmaxq_s8(v88, v88);
    v91 = vpminq_s8(v89, v89);
    v92 = vzip1q_s8(v90, v91);
    v93 = vbicq_s8(vsubq_s8(v28, vclsq_s8(v92)), vceqzq_s8(v92));
    v94 = v19;
    v95 = vpmaxq_s8(v93, v93);
    v96 = vqtbl1q_s8(v82, xmmword_29D2F0EF0);
    v97 = vpmaxq_s8(v96, v96);
    v98 = vpminq_s8(v96, v96);
    v99 = vpmaxq_s8(v97, v97);
    v100 = vpminq_s8(v98, v98);
    v101 = vpmaxq_s8(v99, v99);
    v102 = vpminq_s8(v100, v100);
    v103 = vmaxq_s8(v90, v101);
    v104 = vminq_s8(v91, v102);
    v105 = vzip1q_s8(v101, v102);
    v106 = vbicq_s8(vsubq_s8(v28, vclsq_s8(v105)), vceqzq_s8(v105));
    v107 = vpmaxq_s8(v106, v106);
    v108 = vqtbl1q_s8(v83, xmmword_29D2F0EF0);
    v109 = vpmaxq_s8(v108, v108);
    v110 = vpminq_s8(v108, v108);
    v111 = vpmaxq_s8(v109, v109);
    v112 = vpminq_s8(v110, v110);
    v113 = vpmaxq_s8(v111, v111);
    v114 = vpminq_s8(v112, v112);
    v115 = vmaxq_s8(v103, v113);
    v116 = vminq_s8(v104, v114);
    v117 = vzip1q_s8(v113, v114);
    v118 = vbicq_s8(vsubq_s8(v28, vclsq_s8(v117)), vceqzq_s8(v117));
    v119 = vpmaxq_s8(v118, v118);
    v120 = vqtbl1q_s8(v84, xmmword_29D2F0EF0);
    v121 = vpmaxq_s8(v120, v120);
    v122 = vpminq_s8(v120, v120);
    v123 = vpmaxq_s8(v121, v121);
    v124 = vpminq_s8(v122, v122);
    v125 = vpmaxq_s8(v123, v123);
    v126 = vpminq_s8(v124, v124);
    v127 = vmaxq_s8(v115, v125);
    v128 = vminq_s8(v116, v126);
    v129 = vzip1q_s8(v125, v126);
    v130 = vbicq_s8(vsubq_s8(v28, vclsq_s8(v129)), vceqzq_s8(v129));
    v131 = vpmaxq_s8(v130, v130);
    v132 = vmaxq_s8(vmaxq_s8(v95, v107), vmaxq_s8(v119, v131));
    v133 = vclzq_s8(vsubq_s8(v127, v128));
    v134 = vsubq_s8(v28, v133);
    v135 = vcgtq_s8(v132, v134);
    v136 = vminq_s8(v134, v132);
    v134.i64[0] = 0x1010101010101010;
    v134.i64[1] = 0x1010101010101010;
    v137.i64[0] = 0x1818181818181818;
    v137.i64[1] = 0x1818181818181818;
    v138 = vorrq_s8(vandq_s8(vceqzq_s8(v136), v74), vbslq_s8(v135, v137, v134));
    v139 = vmaxq_s8(vminq_s8(vsubq_s8(v136, v95), v74), 0);
    v140 = vmaxq_s8(vminq_s8(vsubq_s8(v136, v107), v74), 0);
    v141 = vmaxq_s8(vminq_s8(vsubq_s8(v136, v119), v74), 0);
    v142 = vmaxq_s8(vminq_s8(vsubq_s8(v136, v131), v74), 0);
    v143 = vsubq_s8(v136, v139);
    v144 = vsubq_s8(v136, v140);
    v145 = vsubq_s8(v136, v141);
    v146 = vsubq_s8(v136, v142);
    v147 = vorrq_s8(v138, vbicq_s8(v79, vceqq_s8(vaddq_s8(v142, v141), vnegq_s8(vaddq_s8(v139, v140)))));
    v148 = vmovl_u8(*v147.i8);
    v140.i64[0] = 0x8000800080008;
    v140.i64[1] = 0x8000800080008;
    v139.i64[0] = 0x2000200020002;
    v139.i64[1] = 0x2000200020002;
    v149 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v145.i8, *v144.i8), *v146.i8), 3uLL), *v143.i8, 0x707070707070707), vandq_s8(vshll_n_u8(*v147.i8, 1uLL), v140)), vbicq_s8(vmovl_s8(*v136.i8), vceqzq_s16((*&v148 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8))))), vandq_s8(vceqq_s16((*&v148 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v139), v140));
    v150 = vceqq_s16((*&vmovl_u8(*v80.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v139);
    v151 = vsubq_s8(v70, v75);
    v152 = vsubq_s8(v70, v76);
    v153 = vsubq_s8(v70, v77);
    v154 = vsubq_s8(v70, v78);
    v155 = vdupq_lane_s16(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddw_s8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v153.i8, *v152.i8), *v154.i8), 3uLL), *v151.i8, 0x707070707070707), vbic_s8(*v70.i8, vcgt_u8(0x808080808080808, *v80.i8))), (*&vshll_n_u8(*v80.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9))), vandq_s8(v150, v140)), v149)), 0);
    if (vaddlvq_s8(v155))
    {
      v156.i64[0] = 0x707070707070707;
      v156.i64[1] = 0x707070707070707;
      v157.i64[0] = -1;
      v157.i64[1] = -1;
      v15 = vbslq_s8(v155, vsubq_s8(v15, vqtbl1q_s8(v15, xmmword_29D2F0EE0)), v15);
      v16 = vbslq_s8(v155, v81, v16);
      v17 = vbslq_s8(v155, v82, v17);
      v18 = vbslq_s8(v155, v83, v18);
      v94 = vbslq_s8(v155, v84, v94);
      v151 = vbslq_s8(v155, v143, v151);
      v152 = vbslq_s8(v155, v144, v152);
      v153 = vbslq_s8(v155, v145, v153);
      v154 = vbslq_s8(v155, v146, v154);
      v158 = vbslq_s8(v155, vandq_s8(vsubq_s8(vshlq_s8(v157, vsubq_s8(v156, v133)), v128), v135), v404);
      v70 = vbslq_s8(v155, v136, v70);
      v80 = vbslq_s8(v155, v147, v80);
    }

    else
    {
      v158 = v404;
    }

    if (v7)
    {
      v161 = v18;
    }

    else
    {
      v405 = v158;
      v162 = vsubq_s8(v400, vqtbl1q_s8(v400, xmmword_29D2F0F00));
      v163 = v10;
      v163.i16[7] = v400.i16[7];
      v164 = vsubq_s8(v10, vqtbl1q_s8(v163, xmmword_29D2F0F10));
      v165 = v403;
      v165.i16[7] = v400.i16[7];
      v166 = v402;
      v166.i16[7] = v400.i16[7];
      v167 = vsubq_s8(v403, vqtbl1q_s8(v165, xmmword_29D2F0F20));
      v168 = vsubq_s8(v402, vqtbl1q_s8(v166, xmmword_29D2F0F30));
      v169 = v162;
      v169.i16[0] = v162.i16[7];
      v169.i16[7] = v162.i16[0];
      v170 = vqtbl1q_s8(v169, xmmword_29D2F0EF0);
      v171 = vpmaxq_s8(v170, v170);
      v172 = vpminq_s8(v170, v170);
      v173 = vpmaxq_s8(v171, v171);
      v174 = vpminq_s8(v172, v172);
      v175 = vpmaxq_s8(v173, v173);
      v176 = vpminq_s8(v174, v174);
      v177 = vzip1q_s8(v175, v176);
      v178.i64[0] = 0x808080808080808;
      v178.i64[1] = 0x808080808080808;
      v179 = vbicq_s8(vsubq_s8(v178, vclsq_s8(v177)), vceqzq_s8(v177));
      v180 = vpmaxq_s8(v179, v179);
      v399 = v164;
      v181 = vqtbl1q_s8(v164, xmmword_29D2F0EF0);
      v182 = vpmaxq_s8(v181, v181);
      v183 = vpminq_s8(v181, v181);
      v184 = vpmaxq_s8(v182, v182);
      v185 = vpminq_s8(v183, v183);
      v186 = vpmaxq_s8(v184, v184);
      v187 = vpminq_s8(v185, v185);
      v188 = vmaxq_s8(v175, v186);
      v189 = vminq_s8(v176, v187);
      v190 = vzip1q_s8(v186, v187);
      v191 = vbicq_s8(vsubq_s8(v178, vclsq_s8(v190)), vceqzq_s8(v190));
      v192 = vpmaxq_s8(v191, v191);
      v193 = vqtbl1q_s8(v167, xmmword_29D2F0EF0);
      v194 = vpmaxq_s8(v193, v193);
      v195 = vpminq_s8(v193, v193);
      v196 = vpmaxq_s8(v194, v194);
      v197 = vpminq_s8(v195, v195);
      v198 = vpmaxq_s8(v196, v196);
      v199 = vpminq_s8(v197, v197);
      v200 = vmaxq_s8(v188, v198);
      v201 = vminq_s8(v189, v199);
      v202 = vzip1q_s8(v198, v199);
      v203 = vbicq_s8(vsubq_s8(v178, vclsq_s8(v202)), vceqzq_s8(v202));
      v204 = vpmaxq_s8(v203, v203);
      v205 = vqtbl1q_s8(v168, xmmword_29D2F0EF0);
      v206 = vpmaxq_s8(v205, v205);
      v207 = vpminq_s8(v205, v205);
      v208 = vpmaxq_s8(v206, v206);
      v209 = vpminq_s8(v207, v207);
      v210 = vpmaxq_s8(v208, v208);
      v211 = vpminq_s8(v209, v209);
      v212 = vmaxq_s8(v200, v210);
      v213 = vminq_s8(v201, v211);
      v214 = vzip1q_s8(v210, v211);
      v215 = vbicq_s8(vsubq_s8(v178, vclsq_s8(v214)), vceqzq_s8(v214));
      v216 = vpmaxq_s8(v215, v215);
      v217 = vmaxq_s8(vmaxq_s8(v180, v192), vmaxq_s8(v204, v216));
      v218 = vclzq_s8(vsubq_s8(v212, v213));
      v219 = vsubq_s8(v178, v218);
      v220 = vcgtq_s8(v217, v219);
      v221 = vminq_s8(v219, v217);
      v219.i64[0] = 0x909090909090909;
      v219.i64[1] = 0x909090909090909;
      v222.i64[0] = 0x202020202020202;
      v222.i64[1] = 0x202020202020202;
      v223 = vorrq_s8(vandq_s8(vceqzq_s8(v221), v222), vsubq_s8(vandq_s8(v220, v219), vmvnq_s8(v220)));
      v178.i64[0] = 0x303030303030303;
      v178.i64[1] = 0x303030303030303;
      v224 = vmaxq_s8(vminq_s8(vsubq_s8(v221, v180), v178), 0);
      v225 = vmaxq_s8(vminq_s8(vsubq_s8(v221, v192), v178), 0);
      v226 = vmaxq_s8(vminq_s8(vsubq_s8(v221, v204), v178), 0);
      v227 = vmaxq_s8(vminq_s8(vsubq_s8(v221, v216), v178), 0);
      v228 = vsubq_s8(v221, v224);
      v229 = vsubq_s8(v221, v225);
      v230 = vsubq_s8(v221, v226);
      v231 = vsubq_s8(v221, v227);
      v232 = vceqq_s8(vaddq_s8(v227, v226), vnegq_s8(vaddq_s8(v224, v225)));
      v224.i64[0] = 0x404040404040404;
      v224.i64[1] = 0x404040404040404;
      v233 = vorrq_s8(v223, vbicq_s8(v224, v232));
      v226.i64[0] = 0x3000300030003;
      v226.i64[1] = 0x3000300030003;
      v234 = vmovl_s8(*v80.i8);
      v178.i64[0] = 0x8000800080008;
      v178.i64[1] = 0x8000800080008;
      v235 = vbicq_s8(vmovl_s8(*v70.i8), vceqzq_s16(vandq_s8(v234, v178)));
      v236 = vandq_s8(v234, v226);
      v226.i64[0] = 0x2000200020002;
      v226.i64[1] = 0x2000200020002;
      v237 = vdupq_lane_s16(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v235, vandq_s8(vshll_n_s8(*v80.i8, 1uLL), v178)), vandq_s8(vceqq_s16(v236, v226), v178)), *v151.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v153.i8, *v152.i8), *v154.i8), 3uLL)), vaddw_s8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v230.i8, *v229.i8), *v231.i8), 3uLL), *v228.i8, 0x707070707070707), vand_s8(vadd_s8(*v233.i8, *v233.i8), 0x808080808080808)), vbic_s8(*v221.i8, vcgt_u8(0x808080808080808, *v233.i8))))), 0);
      if (vaddlvq_s8(v237))
      {
        v238.i64[0] = 0x707070707070707;
        v238.i64[1] = 0x707070707070707;
        v239.i64[0] = -1;
        v239.i64[1] = -1;
        v15.i16[0] = vbslq_s8(v237, vextq_s8(v400, v400, 0xEuLL), v15).u16[0];
        v16 = vbslq_s8(v237, v169, v16);
        v17 = vbslq_s8(v237, v399, v17);
        v161 = vbslq_s8(v237, v167, v18);
        v94 = vbslq_s8(v237, v168, v94);
        v151 = vbslq_s8(v237, v228, v151);
        v152 = vbslq_s8(v237, v229, v152);
        v153 = vbslq_s8(v237, v230, v153);
        v154 = vbslq_s8(v237, v231, v154);
        v158 = vbslq_s8(v237, vandq_s8(vsubq_s8(vshlq_s8(v239, vsubq_s8(v238, v218)), v213), v220), v405);
        v70 = vbslq_s8(v237, v221, v70);
        v80 = vbslq_s8(v237, v233, v80);
      }

      else
      {
        v161 = v18;
        v158 = v405;
      }
    }

    v240 = vmovl_s8(*v80.i8);
    v241.i64[0] = 0x8000800080008;
    v241.i64[1] = 0x8000800080008;
    v242 = vbicq_s8(vmovl_s8(*v70.i8), vceqzq_s16(vandq_s8(v240, v241)));
    v243.i64[0] = 0x3000300030003;
    v243.i64[1] = 0x3000300030003;
    v244 = vandq_s8(v240, v243);
    v243.i64[0] = 0x2000200020002;
    v243.i64[1] = 0x2000200020002;
    v245 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v153.i8, *v152.i8), *v154.i8), 3uLL), *v151.i8, 0x707070707070707), vandq_s8(vshll_n_s8(*v80.i8, 1uLL), v241)), v242), vandq_s8(vceqq_s16(v244, v243), v241));
    if ((vpaddq_s16(v245, v245).i16[0] + 37) >= 0x200)
    {
      *a1 = v400;
      a1[1] = v401;
      v159 = 63;
      a1[2] = v403;
      a1[3] = v402;
      result = 64;
    }

    else
    {
      v246 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v247 = 8 * (a1 & 7);
      if (v247)
      {
        v248 = *v246 & ~(-1 << v247);
      }

      else
      {
        v248 = 0;
      }

      v249 = ((v70.i8[0] - 1) & 7) << 10;
      if (!v70.i8[0])
      {
        v249 = 0;
      }

      if (v70.i8[1])
      {
        v250 = ((v70.u8[1] << 13) - 0x2000) & 0xE000;
      }

      else
      {
        v250 = 0;
      }

      *a2 = v80.i8[0] << 6;
      v251 = ((v249 | v250) & 0xFFFFFFFFFFFFFC1FLL | v80.i8[0] & 0x1C | (32 * (v80.i8[1] & 0x1F))) >> 2;
      v252 = v248 | (v251 << v247);
      if (v247 >= 0x32)
      {
        *v246 = v252;
        v252 = v251 >> (-8 * (a1 & 7u));
      }

      v253 = (v247 + 14) & 0x3E;
      v254 = v252 | (v15.u16[0] << v253);
      if (v253 >= 0x30)
      {
        *(v246 + (((v247 + 14) >> 3) & 8)) = v254;
        v254 = v15.u16[0] >> -v253;
      }

      v255 = v247 + 30;
      v256 = vsubq_s8(v70, v151);
      v257 = vsubq_s8(v70, v152);
      v258 = vsubq_s8(v70, v153);
      v259 = vsubq_s8(v70, v154);
      v256.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v256, v257), vzip1q_s8(v258, v259)), vzip1q_s16(vtrn2q_s8(v256, v257), vtrn2q_s8(v258, v259))).u64[0];
      v258.i64[0] = 0x202020202020202;
      v258.i64[1] = 0x202020202020202;
      v260 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*&vmovl_u8(*v80.i8), 0x4000400040004)))), v258);
      v258.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v258.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v259.i64[0] = -1;
      v259.i64[1] = -1;
      v261 = vandq_s8(vshlq_u8(v259, vorrq_s8(v260, v258)), v256.u64[0]);
      v262 = vmovl_u8(*v260.i8);
      v263 = vpaddq_s16(vshlq_u16(vmovl_u8(*v261.i8), vtrn1q_s16(0, v262)), vmovl_high_u8(v261));
      v264 = vpaddq_s16(v262, vmovl_high_u8(v260));
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
      v275 = (v247 + 30) & 0x3E;
      v276 = (v273.i64[0] << v275) | v254;
      if ((v274.i64[0] + v275) >= 0x40)
      {
        *(v246 + ((v255 >> 3) & 8)) = v276;
        v276 = v273.i64[0] >> -v275;
      }

      v277 = vceqq_s8(v70, v151);
      v278 = v274.i64[0] + v255;
      v279 = v276 | (v273.i64[1] << v278);
      if ((v278 & 0x3F) + v274.i64[1] >= 0x40)
      {
        *(v246 + ((v278 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v279;
        v279 = v273.i64[1] >> -(v278 & 0x3F);
        if ((v278 & 0x3F) == 0)
        {
          v279 = 0;
        }
      }

      v280 = vandq_s8(v158, v277);
      v281 = v278 + v274.i64[1];
      v282.i64[0] = 0x808080808080808;
      v282.i64[1] = 0x808080808080808;
      v283.i64[0] = -1;
      v283.i64[1] = -1;
      v284 = vandq_s8(vextq_s8(vtstq_s8(v80, v282), 0, 0xEuLL), v70);
      v285.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v285.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v286 = vandq_s8(vshlq_u8(v283, vaddq_s8(v284, v285)), v158);
      v287 = vmovl_u8(*v284.i8);
      v288 = vpaddq_s16(vshlq_u16(vmovl_u8(*v286.i8), vtrn1q_s16(0, v287)), vmovl_high_u8(v286));
      v289 = vpaddq_s16(v287, vmovl_high_u8(v284));
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
      v300 = (v298.i64[0] << v281) | v279;
      if (v299.i64[0] + (v281 & 0x3F) >= 0x40)
      {
        *(v246 + ((v281 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v300;
        v300 = v298.i64[0] >> -(v281 & 0x3F);
        if ((v281 & 0x3F) == 0)
        {
          v300 = 0;
        }
      }

      v301 = vceqq_s8(v70, v152);
      v302 = vaddq_s8(v280, v16);
      v303 = v299.i64[0] + v281;
      v304 = v300 | (v298.i64[1] << v303);
      if ((v303 & 0x3F) + v299.i64[1] >= 0x40)
      {
        *(v246 + ((v303 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v304;
        v304 = v298.i64[1] >> -(v303 & 0x3F);
        if ((v303 & 0x3F) == 0)
        {
          v304 = 0;
        }
      }

      v305 = vandq_s8(v158, v301);
      v306 = v303 + v299.i64[1];
      v307 = vextq_s8(0, v151, 0xEuLL);
      v308.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v308.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v309.i64[0] = -1;
      v309.i64[1] = -1;
      v310 = vandq_s8(vshlq_u8(v309, vaddq_s8(v307, v308)), v302);
      v311 = vmovl_u8(*v307.i8);
      v312 = vmovl_high_u8(v307);
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
      v325 = (v323.i64[0] << v306) | v304;
      if (v324.i64[0] + (v306 & 0x3F) >= 0x40)
      {
        *(v246 + ((v306 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v325;
        v325 = v323.i64[0] >> -(v306 & 0x3F);
        if ((v306 & 0x3F) == 0)
        {
          v325 = 0;
        }
      }

      v326 = vceqq_s8(v70, v153);
      v327 = vaddq_s8(v17, v305);
      v328 = v324.i64[0] + v306;
      v329 = v325 | (v323.i64[1] << v328);
      if ((v328 & 0x3F) + v324.i64[1] >= 0x40)
      {
        *(v246 + ((v328 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v329;
        v329 = v323.i64[1] >> -(v328 & 0x3F);
        if ((v328 & 0x3F) == 0)
        {
          v329 = 0;
        }
      }

      v330 = vandq_s8(v158, v326);
      v331 = v328 + v324.i64[1];
      v332.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v332.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v333.i64[0] = -1;
      v333.i64[1] = -1;
      v334 = vandq_s8(vshlq_u8(v333, vaddq_s8(v152, v332)), v327);
      v335 = vmovl_u8(*v152.i8);
      v336 = vmovl_high_u8(v152);
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
        *(v246 + ((v331 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v349;
        v349 = v347.i64[0] >> -(v331 & 0x3F);
        if ((v331 & 0x3F) == 0)
        {
          v349 = 0;
        }
      }

      v350 = vceqq_s8(v70, v154);
      v351 = vaddq_s8(v161, v330);
      v352 = v348.i64[0] + v331;
      v353 = v349 | (v347.i64[1] << v352);
      if ((v352 & 0x3F) + v348.i64[1] >= 0x40)
      {
        *(v246 + ((v352 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v353;
        v353 = v347.i64[1] >> -(v352 & 0x3F);
        if ((v352 & 0x3F) == 0)
        {
          v353 = 0;
        }
      }

      v354 = vandq_s8(v158, v350);
      v355 = v352 + v348.i64[1];
      v356.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v356.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v357.i64[0] = -1;
      v357.i64[1] = -1;
      v358 = vandq_s8(vshlq_u8(v357, vaddq_s8(v153, v356)), v351);
      v359 = vmovl_u8(*v153.i8);
      v360 = vmovl_high_u8(v153);
      v361 = vpaddq_s16(vshlq_u16(vmovl_u8(*v358.i8), vtrn1q_s16(0, v359)), vshlq_u16(vmovl_high_u8(v358), vtrn1q_s16(0, v360)));
      v362 = vpaddq_s16(v359, v360);
      v363 = vmovl_u16(*v362.i8);
      v364 = vmovl_high_u16(v362);
      v365 = vpaddq_s32(vshlq_u32(vmovl_u16(*v361.i8), vtrn1q_s32(0, v363)), vshlq_u32(vmovl_high_u16(v361), vtrn1q_s32(0, v364)));
      v366 = vpaddq_s32(v363, v364);
      v367.i64[0] = v365.u32[0];
      v367.i64[1] = v365.u32[1];
      v368 = v367;
      v367.i64[0] = v365.u32[2];
      v367.i64[1] = v365.u32[3];
      v369 = v367;
      v367.i64[0] = v366.u32[0];
      v367.i64[1] = v366.u32[1];
      v370 = v367;
      v367.i64[0] = v366.u32[2];
      v367.i64[1] = v366.u32[3];
      v371 = vpaddq_s64(vshlq_u64(v368, vzip1q_s64(0, v370)), vshlq_u64(v369, vzip1q_s64(0, v367)));
      v372 = vpaddq_s64(v370, v367);
      v373 = (v371.i64[0] << v355) | v353;
      if (v372.i64[0] + (v355 & 0x3F) >= 0x40)
      {
        *(v246 + ((v355 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v373;
        v373 = v371.i64[0] >> -(v355 & 0x3F);
        if ((v355 & 0x3F) == 0)
        {
          v373 = 0;
        }
      }

      v374 = vaddq_s8(v94, v354);
      v375 = v372.i64[0] + v355;
      v376 = v373 | (v371.i64[1] << v375);
      if ((v375 & 0x3F) + v372.i64[1] >= 0x40)
      {
        *(v246 + ((v375 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v376;
        v376 = v371.i64[1] >> -(v375 & 0x3F);
        if ((v375 & 0x3F) == 0)
        {
          v376 = 0;
        }
      }

      v377 = v375 + v372.i64[1];
      v378.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v378.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v379.i64[0] = -1;
      v379.i64[1] = -1;
      v380 = vandq_s8(vshlq_u8(v379, vaddq_s8(v154, v378)), v374);
      v381 = vmovl_u8(*v154.i8);
      v382 = vmovl_high_u8(v154);
      v383 = vpaddq_s16(vshlq_u16(vmovl_u8(*v380.i8), vtrn1q_s16(0, v381)), vshlq_u16(vmovl_high_u8(v380), vtrn1q_s16(0, v382)));
      v384 = vpaddq_s16(v381, v382);
      v385 = vmovl_u16(*v384.i8);
      v386 = vmovl_high_u16(v384);
      v387 = vpaddq_s32(vshlq_u32(vmovl_u16(*v383.i8), vtrn1q_s32(0, v385)), vshlq_u32(vmovl_high_u16(v383), vtrn1q_s32(0, v386)));
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
      v395 = (v393.i64[0] << v377) | v376;
      if (v394.i64[0] + (v377 & 0x3F) > 0x3F)
      {
        *(v246 + ((v377 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v395;
        if ((v377 & 0x3F) != 0)
        {
          v395 = v393.i64[0] >> -(v377 & 0x3F);
        }

        else
        {
          v395 = 0;
        }
      }

      v396 = v394.i64[0] + v377;
      v397 = v395 | (v393.i64[1] << v396);
      if ((v396 & 0x3F) + v394.i64[1] >= 0x40)
      {
        *(v246 + ((v396 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
        v397 = v393.i64[1] >> -(v396 & 0x3F);
        if ((v396 & 0x3F) == 0)
        {
          v397 = 0;
        }
      }

      v398 = v396 + v394.i64[1];
      if ((v398 & 0x3F) != 0)
      {
        *(v246 + ((v398 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
      }

      result = (v398 - v247 + 7) >> 3;
      v159 = *a2 | (result - 1);
    }
  }

  else
  {
    a1->i16[0] = a3->i16[0];
    v159 = 1;
    result = 2;
  }

  *a2 = v159;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, int8x16_t *a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 1, a2, v14, v13);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, (v11 + v15), a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v15 + 16), a2, v20, v19);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 2, a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 3, a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + v15 + 32), a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + v15 + 48), a2, v30, v29);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int8x16_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int8x8_t a5, int8x8_t a6)
{
  v12 = 8 * (a3 & 7);
  v13 = a3 & 0xFFFFFFFFFFFFFFF8;
  v14 = v12 + 14;
  v15 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v12;
  if (v12 >= 0x33)
  {
    v15 |= *(v13 + 8) << (-8 * (a3 & 7u));
  }

  a6.i32[0] = 4 * v15;
  a5.i32[0] = a4 >> 6;
  v16.i32[0] = vorr_s8(a6, a5).u32[0];
  v16.i32[1] = vshr_n_u32(vdup_n_s32(4 * v15), 5uLL).i32[1];
  v17 = v12 + 30;
  v18 = v14 & 0x3E;
  v19 = (v13 + ((v14 >> 3) & 8));
  v20 = *v19 >> v18;
  if (v18 >= 0x31)
  {
    v20 |= v19[1] << -v18;
  }

  v21 = (8 * (a3 & 7)) | 0x200;
  v22 = vand_s8(v16, 0x1F0000001FLL);
  v224.val[1] = vdupq_lane_s8(v22, 4);
  v224.val[0] = vdupq_lane_s8(v22, 0);
  v23 = vqtbl2q_s8(v224, xmmword_29D2F0E30);
  v24 = vshlq_u32(vdupq_lane_s32(a6, 0), xmmword_29D2F0E40);
  v25 = vuzp1q_s16(v24, v24);
  v224.val[0].i64[0] = 0x707070707070707;
  v224.val[0].i64[1] = 0x707070707070707;
  v26 = vandq_s8(vuzp1q_s8(v25, v25), v224.val[0]);
  v224.val[0].i64[0] = 0x101010101010101;
  v224.val[0].i64[1] = 0x101010101010101;
  v224.val[0] = vaddq_s8(v26, v224.val[0]);
  v224.val[1].i64[0] = 0x303030303030303;
  v224.val[1].i64[1] = 0x303030303030303;
  v27 = vandq_s8(v23, v224.val[1]);
  v28 = vbicq_s8(v224.val[0], vceqq_s8(v27, v224.val[1]));
  v224.val[1].i64[0] = 0x202020202020202;
  v224.val[1].i64[1] = 0x202020202020202;
  v29 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16((*&vuzp1_s16(v22, v22) & 0xFFE4FFE4FFE4FFE4)))), v224.val[1]);
  if (vmaxvq_s8(v29) < 1)
  {
    v38 = 0;
    v62.i64[0] = -1;
    v62.i64[1] = -1;
    v56 = v28;
    v57 = v28;
    v58 = v28;
    v61.i64[0] = -1;
    v61.i64[1] = -1;
    v55 = v28;
    v60.i64[0] = -1;
    v60.i64[1] = -1;
    v59.i64[0] = -1;
    v59.i64[1] = -1;
  }

  else
  {
    v30 = vmovl_u8(*&vpaddq_s8(v29, v29));
    v31 = vmovl_u16(*&vpaddq_s16(v30, v30));
    v32 = vpaddq_s32(v31, v31).u64[0];
    v33.i64[0] = v32;
    v33.i64[1] = HIDWORD(v32);
    v34 = v33;
    v35 = vaddvq_s64(v33);
    v36 = v35 + v17;
    v37 = v35 <= 0x80 && v21 >= v36;
    v38 = !v37;
    v39 = 0uLL;
    if (v37)
    {
      v40 = v17 & 0x3E;
      v41 = vaddq_s64(vzip1q_s64(0, v34), vdupq_n_s64(v40));
      v42 = (v13 + ((v17 >> 3) & 8));
      v39 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v42, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v41)), vshlq_u64(vdupq_lane_s64(v42->i64[0], 0), vnegq_s64(v41)));
      if (v35 + v40 >= 0x81)
      {
        v39 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v42[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v41)), vshlq_u64(vdupq_laneq_s64(v42[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v41))), v39);
      }

      v17 = v36;
    }

    v43 = vzip1_s32(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
    v44.i64[0] = v43.u32[0];
    v44.i64[1] = v43.u32[1];
    v45 = vshlq_u64(v39, vnegq_s64(v44));
    v46 = vuzp1q_s32(vzip1q_s64(v39, v45), vzip2q_s64(v39, v45));
    v47 = vshlq_u32(v46, vnegq_s32((*&v30 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v48 = vuzp1q_s16(vzip1q_s32(v46, v47), vzip2q_s32(v46, v47));
    v49 = vzip1q_s16(v48, vshlq_u16(v48, vnegq_s16(vmovl_u8(vuzp1_s8(*v29.i8, *v23.i8)))));
    *v49.i8 = vmovn_s16(v49);
    v46.i64[0] = 0x101010101010101;
    v46.i64[1] = 0x101010101010101;
    v50 = vshlq_s8(v46, v29);
    v46.i64[0] = -1;
    v46.i64[1] = -1;
    v50.i64[0] = vqtbl1q_s8(vandq_s8(vaddq_s8(v50, v46), v49), xmmword_29D2F0E50).u64[0];
    v51 = vdupq_lane_s16(*v50.i8, 0);
    v52 = vdupq_lane_s16(*v50.i8, 1);
    v53 = vdupq_lane_s16(*v50.i8, 2);
    v54 = vdupq_lane_s16(*v50.i8, 3);
    v55 = vsubq_s8(v28, v51);
    v56 = vsubq_s8(v28, v52);
    v57 = vsubq_s8(v28, v53);
    v58 = vsubq_s8(v28, v54);
    v59 = vceqzq_s8(v51);
    v60 = vceqzq_s8(v52);
    v61 = vceqzq_s8(v53);
    v62 = vceqzq_s8(v54);
  }

  v63.i64[0] = 0x808080808080808;
  v63.i64[1] = 0x808080808080808;
  v64 = 0uLL;
  v65 = vandq_s8(vextq_s8(vtstq_s8(v23, v63), 0, 0xEuLL), v28);
  v66 = vmovl_u8(*&vpaddq_s8(v65, v65));
  v67 = vmovl_u16(*&vpaddq_s16(v66, v66));
  v68 = vpaddq_s32(v67, v67).u64[0];
  v69.i64[0] = v68;
  v69.i64[1] = HIDWORD(v68);
  v70 = v69;
  v71 = vaddvq_s64(v69);
  v72 = v71 + v17;
  if (v71 <= 0x80 && v21 >= v72)
  {
    v74 = v17 & 0x3F;
    v75 = vaddq_s64(vzip1q_s64(0, v70), vdupq_n_s64(v74));
    v76 = (v13 + 8 * (v17 >> 6));
    v64 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v76, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v75)), vshlq_u64(vdupq_lane_s64(v76->i64[0], 0), vnegq_s64(v75)));
    if (v71 + v74 >= 0x81)
    {
      v64 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v76[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v75)), vshlq_u64(vdupq_laneq_s64(v76[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v75))), v64);
    }

    v17 = v72;
  }

  else
  {
    v38 = 1;
  }

  v77 = v22.i8[0] & 3;
  if (v77 == 2)
  {
    if (v21 < v17 + 4)
    {
      v38 = 1;
    }

    else
    {
      v17 += 4;
    }

    v78 = v21 < v17 + 4;
    if (v21 >= v17 + 4)
    {
      v17 += 4;
    }

    v38 |= v78;
  }

  v79 = 0uLL;
  v80 = vextq_s8(0, v55, 0xEuLL);
  v81 = vmovl_u8(*&vpaddq_s8(v80, v80));
  v82 = vmovl_u16(*&vpaddq_s16(v81, v81));
  v83 = vpaddq_s32(v82, v82).u64[0];
  v84.i64[0] = v83;
  v84.i64[1] = HIDWORD(v83);
  v85 = v84;
  v86 = vaddvq_s64(v84);
  v87 = v86 + v17;
  if (v86 <= 0x80 && v21 >= v87)
  {
    v90 = v17 & 0x3F;
    v91 = vaddq_s64(vzip1q_s64(0, v85), vdupq_n_s64(v90));
    v92 = (v13 + 8 * (v17 >> 6));
    v89 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v92, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v91)), vshlq_u64(vdupq_lane_s64(v92->i64[0], 0), vnegq_s64(v91)));
    if (v86 + v90 >= 0x81)
    {
      v89 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v92[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v91)), vshlq_u64(vdupq_laneq_s64(v92[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v91))), v89);
    }

    v17 = v87;
  }

  else
  {
    v38 = 1;
    v89 = 0uLL;
  }

  v218 = v11;
  v219 = v10;
  v220 = v9;
  v221 = v8;
  v222 = v7;
  v223 = v6;
  v93 = vmovl_u8(*&vpaddq_s8(v56, v56));
  v94 = vmovl_u16(*&vpaddq_s16(v93, v93));
  v95 = vpaddq_s32(v94, v94).u64[0];
  v96.i64[0] = v95;
  v96.i64[1] = HIDWORD(v95);
  v97 = v96;
  v98 = vaddvq_s64(v96);
  if (v98 >= 0x81)
  {
    v38 = 1;
  }

  else
  {
    v99 = vzip1_s32(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
    v100.i64[0] = v99.u32[0];
    v100.i64[1] = v99.u32[1];
    v101 = v100;
    v102 = *&v93 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v103 = v98 + v17;
    if (v21 >= v98 + v17)
    {
      v105 = v17 & 0x3F;
      v106 = vaddq_s64(vzip1q_s64(0, v97), vdupq_n_s64(v105));
      v107 = (v13 + 8 * (v17 >> 6));
      v104 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v107, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v106)), vshlq_u64(vdupq_lane_s64(v107->i64[0], 0), vnegq_s64(v106)));
      if (v98 + v105 >= 0x81)
      {
        v104 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v107[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v106)), vshlq_u64(vdupq_laneq_s64(v107[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v106))), v104);
      }

      v17 = v103;
    }

    else
    {
      v104 = 0uLL;
      v38 = 1;
    }

    v108 = vshlq_u64(v104, vnegq_s64(v101));
    v109 = vuzp1q_s32(vzip1q_s64(v104, v108), vzip2q_s64(v104, v108));
    v110 = vshlq_u32(v109, vnegq_s32(v102));
    v111 = vuzp1q_s16(vzip1q_s32(v109, v110), vzip2q_s32(v109, v110));
    v112 = vshlq_u16(v111, vnegq_s16((*&v56 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v79 = vuzp1q_s8(vzip1q_s16(v111, v112), vzip2q_s16(v111, v112));
  }

  v113 = vmovl_u8(*&vpaddq_s8(v57, v57));
  v114 = vmovl_u16(*&vpaddq_s16(v113, v113));
  v115 = vpaddq_s32(v114, v114).u64[0];
  v116.i64[0] = v115;
  v116.i64[1] = HIDWORD(v115);
  v117 = v116;
  v118 = vaddvq_s64(v116);
  v119 = v118 + v17;
  if (v118 <= 0x80 && v21 >= v119)
  {
    v122 = v17 & 0x3F;
    v123 = vaddq_s64(vzip1q_s64(0, v117), vdupq_n_s64(v122));
    v124 = (v13 + 8 * (v17 >> 6));
    v121 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v124, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v123)), vshlq_u64(vdupq_lane_s64(v124->i64[0], 0), vnegq_s64(v123)));
    if (v118 + v122 >= 0x81)
    {
      v121 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v124[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v123)), vshlq_u64(vdupq_laneq_s64(v124[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v123))), v121);
    }

    v17 = v119;
  }

  else
  {
    v38 = 1;
    v121 = 0uLL;
  }

  v125 = vmovl_u8(*&vpaddq_s8(v58, v58));
  v126 = vmovl_u16(*&vpaddq_s16(v125, v125));
  v127 = vpaddq_s32(v126, v126).u64[0];
  v128.i64[0] = v127;
  v128.i64[1] = HIDWORD(v127);
  v129 = v128;
  v130 = vaddvq_s64(v128);
  if (v130 > 0x80 || v21 < v130 + v17)
  {
    goto LABEL_66;
  }

  v131 = vaddq_s64(vzip1q_s64(0, v129), vdupq_n_s64(v17 & 0x3F));
  v132 = (v13 + 8 * (v17 >> 6));
  v133 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v132, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v131)), vshlq_u64(vdupq_lane_s64(v132->i64[0], 0), vnegq_s64(v131)));
  if (v130 + (v17 & 0x3F) >= 0x81)
  {
    v133 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v132[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v131)), vshlq_u64(vdupq_laneq_s64(v132[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v131))), v133);
  }

  if ((v38 & 1) != 0 || (v134 = (a4 & 0x3F) + 1, 8 * ((a3 & 7) + v134) - (v130 + v17) >= 9))
  {
LABEL_66:
    v134 = 0;
    v135 = &v216;
LABEL_67:
    *(v135 & 0xFFFFFFFFFFFFFFF8) |= 255 << (8 * (v135 & 7u));
    a1->i64[0] = 0;
    *(a1->i64 + a2) = 0;
    return v134;
  }

  if (v77 == 2)
  {
    v134 = 0;
    v135 = &v217;
    goto LABEL_67;
  }

  v137 = vzip1_s32(*v67.i8, *&vextq_s8(v67, v67, 8uLL));
  v138 = vzip1_s32(*v82.i8, *&vextq_s8(v82, v82, 8uLL));
  v139 = vzip1_s32(*v114.i8, *&vextq_s8(v114, v114, 8uLL));
  v140.i64[0] = v137.u32[0];
  v140.i64[1] = v137.u32[1];
  v141 = v140;
  v140.i64[0] = v138.u32[0];
  v140.i64[1] = v138.u32[1];
  v142 = v140;
  v140.i64[0] = v139.u32[0];
  v140.i64[1] = v139.u32[1];
  v143 = vshlq_u64(v64, vnegq_s64(v141));
  v144 = vshlq_u64(v89, vnegq_s64(v142));
  v145 = vshlq_u64(v121, vnegq_s64(v140));
  v146 = vuzp1q_s32(vzip1q_s64(v64, v143), vzip2q_s64(v64, v143));
  v147 = vuzp1q_s32(vzip1q_s64(v89, v144), vzip2q_s64(v89, v144));
  v148 = vuzp1q_s32(vzip1q_s64(v121, v145), vzip2q_s64(v121, v145));
  v149 = vshlq_u32(v146, vnegq_s32((*&v66 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v150 = vshlq_u32(v147, vnegq_s32((*&v81 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v151 = vshlq_u32(v148, vnegq_s32((*&v113 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v152 = vzip2q_s32(v147, v150);
  v153 = vuzp1q_s16(vzip1q_s32(v146, v149), vzip2q_s32(v146, v149));
  v154 = vuzp1q_s16(vzip1q_s32(v147, v150), v152);
  v155 = vuzp1q_s16(vzip1q_s32(v148, v151), vzip2q_s32(v148, v151));
  v156 = vshlq_u16(v153, vnegq_s16((*&v65 & __PAIR128__(0xF0FFF0FFF0FFF0FFLL, 0xF0FFF0FFF0FFF0FFLL))));
  v157 = vshlq_u16(v154, vnegq_s16((*&v80 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v158 = vshlq_u16(v155, vnegq_s16((*&v57 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v152.i32[0] = v20;
  v159 = vzip2q_s16(v153, v156);
  v160 = vzip1q_s16(v153, v156);
  v161 = vzip2q_s16(v154, v157);
  v162 = vzip1q_s16(v154, v157);
  v157.i64[0] = 0x808080808080808;
  v157.i64[1] = 0x808080808080808;
  v163 = vzip2q_s16(v155, v158);
  v164 = vzip1q_s16(v155, v158);
  v165 = vuzp1q_s8(v160, v159);
  v158.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v158.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v166 = vsubq_s8(v63, v65);
  v167 = vuzp1q_s8(v162, v161);
  v162.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v162.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v168 = vsubq_s8(v157, v80);
  v169 = vsubq_s8(v157, v56);
  v170 = vsubq_s8(v157, v57);
  v171 = vuzp1q_s8(v164, v163);
  v172 = vzip1_s32(*v126.i8, *&vextq_s8(v126, v126, 8uLL));
  v173.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v173.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v163.i64[0] = 0x808080808080808;
  v163.i64[1] = 0x808080808080808;
  v152.i8[1] = BYTE1(v20);
  v174 = vaddq_s8(v65, v158);
  v175 = vshlq_s8(v165, v166);
  v176 = vaddq_s8(v80, v162);
  v177 = vaddq_s8(v56, v162);
  v178 = vshlq_s8(v79, v169);
  v179 = vaddq_s8(v57, v162);
  v180 = vshlq_s8(v171, v170);
  v140.i64[0] = v172.u32[0];
  v140.i64[1] = v172.u32[1];
  v181 = *&v58 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
  v182 = vaddq_s8(v58, v173);
  v183 = vsubq_s8(v163, v58);
  v184 = vdupq_lane_s16(*v152.i8, 0);
  v185 = vshlq_s8(v175, v174);
  v186 = vshlq_s8(vshlq_s8(v167, v168), v176);
  v187 = vshlq_u64(v133, vnegq_s64(v140));
  v188 = vuzp1q_s32(vzip1q_s64(v133, v187), vzip2q_s64(v133, v187));
  v189 = vshlq_u32(v188, vnegq_s32((*&v125 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v190 = vuzp1q_s16(vzip1q_s32(v188, v189), vzip2q_s32(v188, v189));
  v191 = vshlq_u16(v190, vnegq_s16(v181));
  v192 = vaddq_s8(vandq_s8(v185, v59), v186);
  v193 = vdupq_lane_s16(*v185.i8, 0);
  v194 = vsubq_s8(v192, vandq_s8(v59, v193));
  v195 = vsubq_s8(vshlq_s8(v178, v177), vandq_s8(v60, v193));
  v196 = vsubq_s8(vshlq_s8(v180, v179), vandq_s8(v61, v193));
  v197 = vandq_s8(v62, v193);
  v198.i64[0] = 0x101010101010101;
  v198.i64[1] = 0x101010101010101;
  v199 = vaddlvq_s8(vceqq_s8(v27, v198));
  v200 = vsubq_s8(vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v190, v191), vzip2q_s16(v190, v191)), v183), v182), v197);
  if (v199)
  {
    v201 = vandq_s8(v23, v198);
    v202 = vnegq_s8(v201);
    v203 = v194;
    v203.i16[0] = v194.i16[7];
    v203.i16[7] = v194.i16[0];
    v204 = vorrq_s8(vandq_s8(v203, v202), vandq_s8(v194, vceqzq_s8(v201)));
    v205 = vaddq_s8(v204, vandq_s8(vqtbl1q_s8(v204, xmmword_29D2F0E60), v202));
    v194 = vaddq_s8(v205, vandq_s8(vqtbl1q_s8(v205, xmmword_29D2F0E70), v202));
    v206 = vaddq_s8(vandq_s8(vqtbl1q_s8(v195, xmmword_29D2F0E80), v202), v195);
    v195 = vaddq_s8(vandq_s8(vqtbl1q_s8(v206, xmmword_29D2F0E90), v202), v206);
    v207 = vaddq_s8(vandq_s8(vqtbl1q_s8(v196, xmmword_29D2F0EA0), v202), v196);
    v196 = vaddq_s8(vandq_s8(vqtbl1q_s8(v207, xmmword_29D2F0EB0), v202), v207);
    v208 = vaddq_s8(vandq_s8(vqtbl1q_s8(v200, xmmword_29D2F0EC0), v202), v200);
    v200 = vaddq_s8(vandq_s8(vqtbl1q_s8(v208, xmmword_29D2F0ED0), v202), v208);
  }

  v209 = vaddq_s8(v194, v184);
  v210 = vaddq_s8(v195, v184);
  v211 = vaddq_s8(v196, v184);
  v212 = vaddq_s8(v200, v184);
  v213.i64[0] = 0x1010101010101010;
  v213.i64[1] = 0x1010101010101010;
  v214 = vcgtq_u8(v213, v23);
  *a1 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v209, xmmword_29D2F0EE0), v214), v209);
  a1[1] = vaddq_s8(vbicq_s8(vqtbl1q_s8(v211, xmmword_29D2F0EE0), v214), v211);
  v215 = (a1 + a2);
  *v215 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v210, xmmword_29D2F0EE0), v214), v210);
  v215[1] = vaddq_s8(vbicq_s8(vqtbl1q_s8(v212, xmmword_29D2F0EE0), v214), v212);
  return v134;
}

_OWORD *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(_OWORD *result, uint64_t a2, _OWORD *a3, char *a4, unsigned int a5, unsigned int a6)
{
  v6 = 0;
  if (a5 && a6)
  {
    v7 = result[1];
    v8 = *(result + a2);
    v9 = *(result + a2 + 16);
    *a3 = *result;
    a3[1] = v8;
    a3[2] = v7;
    a3[3] = v9;
    a3 += 4;
    v6 = 63;
  }

  v10 = 0;
  v11 = 2 * a2;
  *a4 = v6;
  if (a5 && a6 >= 3)
  {
    v12 = *(result + v11 + 16);
    v13 = (result + v11 + a2);
    v14 = *v13;
    v15 = v13[1];
    *a3 = *(result + 2 * a2);
    a3[1] = v14;
    a3[2] = v12;
    a3[3] = v15;
    a3 += 4;
    v10 = 63;
  }

  v16 = 0;
  a4[1] = v10;
  if (a5 >= 5 && a6)
  {
    v17 = result[3];
    v18 = (result + a2 + 32);
    v19 = *v18;
    v20 = v18[1];
    *a3 = result[2];
    a3[1] = v19;
    a3[2] = v17;
    a3[3] = v20;
    a3 += 4;
    v16 = 63;
  }

  v21 = 0;
  a4[2] = v16;
  if (a5 >= 5 && a6 >= 3)
  {
    v22 = result + v11;
    v23 = *(v22 + 2);
    v24 = *(v22 + 3);
    v25 = &v22[a2 + 32];
    v26 = *v25;
    v27 = *(v25 + 1);
    *a3 = v23;
    a3[1] = v26;
    a3[2] = v24;
    a3[3] = v27;
    a3 += 4;
    v21 = 63;
  }

  v28 = 0;
  a4[3] = v21;
  if (a5 && a6 >= 5)
  {
    v29 = (result + 4 * a2);
    v30 = *v29;
    v31 = v29[1];
    v32 = (v29 + a2);
    v33 = *v32;
    v34 = v32[1];
    *a3 = v30;
    a3[1] = v33;
    a3[2] = v31;
    a3[3] = v34;
    a3 += 4;
    v28 = 63;
  }

  v35 = 0;
  a4[4] = v28;
  if (a5 && a6 >= 7)
  {
    v36 = (result + 6 * a2);
    v37 = *v36;
    v38 = v36[1];
    v39 = (v36 + a2);
    v40 = *v39;
    v41 = v39[1];
    *a3 = v37;
    a3[1] = v40;
    a3[2] = v38;
    a3[3] = v41;
    a3 += 4;
    v35 = 63;
  }

  v42 = 0;
  a4[5] = v35;
  if (a5 >= 5 && a6 >= 5)
  {
    v43 = result + 4 * a2;
    v44 = *(v43 + 2);
    v45 = *(v43 + 3);
    v46 = &v43[a2 + 32];
    v47 = *v46;
    v48 = *(v46 + 1);
    *a3 = v44;
    a3[1] = v47;
    a3[2] = v45;
    a3[3] = v48;
    a3 += 4;
    v42 = 63;
  }

  v49 = 0;
  a4[6] = v42;
  if (a5 >= 5 && a6 >= 7)
  {
    v50 = result + 6 * a2;
    v51 = *(v50 + 2);
    v52 = *(v50 + 3);
    v53 = &v50[a2 + 32];
    v54 = *v53;
    v55 = *(v53 + 1);
    *a3 = v51;
    a3[1] = v54;
    a3[2] = v52;
    a3[3] = v55;
    v49 = 63;
  }

  a4[7] = v49;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int8x8_t a4, __n128 a5)
{
  v8 = *a3;
  if (v8 == 63)
  {
    v10 = *a2;
    a5 = *(a2 + 16);
    v11 = *(a2 + 32);
    v12 = *(a2 + 48);
    *a1 = *a2;
    *(a1 + 16) = v11;
    *(a1 + 64) = a5;
    *(a1 + 80) = v12;
    v9 = 64;
  }

  else if (v8 == 1)
  {
    v10 = vld1q_dup_s16(a2);
    *a1 = v10;
    *(a1 + 16) = v10;
    *(a1 + 64) = v10;
    *(a1 + 80) = v10;
    v9 = 2;
  }

  else if (*a3)
  {
    v9 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(a1, 64, a2, v8, a4, a5.n128_u64[0]);
  }

  else
  {
    v9 = 0;
    v10.i64[0] = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
  }

  v13 = a2 + v9;
  v14 = a3[1];
  if (a3[1])
  {
    if (v14 == 1)
    {
      v15 = vld1q_dup_s16(v13);
      *(a1 + 128) = v15;
      *(a1 + 144) = v15;
      *(a1 + 192) = v15;
      *(a1 + 208) = v15;
      v18 = 2;
    }

    else if (v14 == 63)
    {
      v15 = *v13;
      a5 = *(v13 + 16);
      v16 = *(v13 + 32);
      v17 = *(v13 + 48);
      *(a1 + 128) = *v13;
      *(a1 + 144) = v16;
      *(a1 + 192) = a5;
      *(a1 + 208) = v17;
      v18 = 64;
    }

    else
    {
      v18 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 128), 64, v13, v14, *v10.i8, a5.n128_u64[0]);
    }
  }

  else
  {
    v18 = 0;
    v15.i64[0] = 0;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
  }

  v19 = v13 + v18;
  v20 = a3[2];
  if (a3[2])
  {
    if (v20 == 1)
    {
      v21 = vld1q_dup_s16(v19);
      *(a1 + 32) = v21;
      *(a1 + 48) = v21;
      *(a1 + 96) = v21;
      *(a1 + 112) = v21;
      v24 = 2;
    }

    else if (v20 == 63)
    {
      v21 = *v19;
      a5 = *(v19 + 16);
      v22 = *(v19 + 32);
      v23 = *(v19 + 48);
      *(a1 + 32) = *v19;
      *(a1 + 48) = v22;
      *(a1 + 96) = a5;
      *(a1 + 112) = v23;
      v24 = 64;
    }

    else
    {
      v24 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 32), 64, v19, v20, *v15.i8, a5.n128_u64[0]);
    }
  }

  else
  {
    v24 = 0;
    v21.i64[0] = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
  }

  v25 = v19 + v24;
  v26 = a3[3];
  if (a3[3])
  {
    if (v26 == 1)
    {
      v27 = vld1q_dup_s16(v25);
      *(a1 + 160) = v27;
      *(a1 + 176) = v27;
      *(a1 + 224) = v27;
      *(a1 + 240) = v27;
      v30 = 2;
    }

    else if (v26 == 63)
    {
      v27 = *v25;
      a5 = *(v25 + 16);
      v28 = *(v25 + 32);
      v29 = *(v25 + 48);
      *(a1 + 160) = *v25;
      *(a1 + 176) = v28;
      *(a1 + 224) = a5;
      *(a1 + 240) = v29;
      v30 = 64;
    }

    else
    {
      v30 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 160), 64, v25, v26, *v21.i8, a5.n128_u64[0]);
    }
  }

  else
  {
    v30 = 0;
    v27.i64[0] = 0;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
  }

  v31 = v25 + v30;
  v32 = a3[4];
  if (a3[4])
  {
    if (v32 == 1)
    {
      v33 = vld1q_dup_s16(v31);
      *(a1 + 256) = v33;
      *(a1 + 272) = v33;
      *(a1 + 320) = v33;
      *(a1 + 336) = v33;
      v36 = 2;
    }

    else if (v32 == 63)
    {
      v33 = *v31;
      a5 = *(v31 + 16);
      v34 = *(v31 + 32);
      v35 = *(v31 + 48);
      *(a1 + 256) = *v31;
      *(a1 + 272) = v34;
      *(a1 + 320) = a5;
      *(a1 + 336) = v35;
      v36 = 64;
    }

    else
    {
      v36 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 256), 64, v31, v32, *v27.i8, a5.n128_u64[0]);
    }
  }

  else
  {
    v36 = 0;
    v33.i64[0] = 0;
    *(a1 + 256) = 0u;
    *(a1 + 272) = 0u;
    *(a1 + 320) = 0u;
    *(a1 + 336) = 0u;
  }

  v37 = v31 + v36;
  v38 = a3[5];
  if (a3[5])
  {
    if (v38 == 1)
    {
      v39 = vld1q_dup_s16(v37);
      *(a1 + 384) = v39;
      *(a1 + 400) = v39;
      *(a1 + 448) = v39;
      *(a1 + 464) = v39;
      v42 = 2;
    }

    else if (v38 == 63)
    {
      v39 = *v37;
      a5 = *(v37 + 16);
      v40 = *(v37 + 32);
      v41 = *(v37 + 48);
      *(a1 + 384) = *v37;
      *(a1 + 400) = v40;
      *(a1 + 448) = a5;
      *(a1 + 464) = v41;
      v42 = 64;
    }

    else
    {
      v42 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 384), 64, v37, v38, *v33.i8, a5.n128_u64[0]);
    }
  }

  else
  {
    v42 = 0;
    v39.i64[0] = 0;
    *(a1 + 384) = 0u;
    *(a1 + 400) = 0u;
    *(a1 + 448) = 0u;
    *(a1 + 464) = 0u;
  }

  v43 = v37 + v42;
  v44 = a3[6];
  if (!a3[6])
  {
    result = 0;
    v45.i64[0] = 0;
    *(a1 + 288) = 0u;
    *(a1 + 304) = 0u;
    *(a1 + 352) = 0u;
    *(a1 + 368) = 0u;
    v49 = a3[7];
    if (a3[7])
    {
      goto LABEL_49;
    }

LABEL_54:
    v54 = 0uLL;
    goto LABEL_55;
  }

  if (v44 == 1)
  {
    v45 = vld1q_dup_s16(v43);
    *(a1 + 288) = v45;
    *(a1 + 304) = v45;
    *(a1 + 352) = v45;
    *(a1 + 368) = v45;
    result = 2;
    v49 = a3[7];
    if (a3[7])
    {
      goto LABEL_49;
    }

    goto LABEL_54;
  }

  if (v44 == 63)
  {
    v45 = *v43;
    a5 = *(v43 + 16);
    v46 = *(v43 + 32);
    v47 = *(v43 + 48);
    *(a1 + 288) = *v43;
    *(a1 + 304) = v46;
    *(a1 + 352) = a5;
    *(a1 + 368) = v47;
    result = 64;
    v49 = a3[7];
    if (!a3[7])
    {
      goto LABEL_54;
    }
  }

  else
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 288), 64, v43, v44, *v39.i8, a5.n128_u64[0]);
    v49 = a3[7];
    if (!a3[7])
    {
      goto LABEL_54;
    }
  }

LABEL_49:
  v50 = v43 + result;
  if (v49 == 1)
  {
    v54 = vld1q_dup_s16(v50);
LABEL_55:
    *(a1 + 416) = v54;
    *(a1 + 432) = v54;
    *(a1 + 480) = v54;
    *(a1 + 496) = v54;
    return result;
  }

  if (v49 == 63)
  {
    v51 = *(v50 + 16);
    v52 = *(v50 + 32);
    v53 = *(v50 + 48);
    *(a1 + 416) = *v50;
    *(a1 + 432) = v52;
    *(a1 + 480) = v51;
    *(a1 + 496) = v53;
  }

  else
  {

    return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 416), 64, v50, v49, *v45.i8, a5.n128_u64[0]);
  }

  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(int8x16_t *a1, char *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v7 = a5 < 2 || a6 == 0;
  v8 = vdupq_lane_s16(*a3, 0);
  v9 = vsubq_s8(*a3, v8);
  v10 = vsubq_s8(*(a3 + a4), v8);
  v11 = vsubq_s8(*(a3 + 16), v8);
  v12 = vsubq_s8(*(a3 + a4 + 16), v8);
  v13 = vqtbl1q_s8(v9, xmmword_29D2F0EF0);
  v14 = vpmaxq_s8(v13, v13);
  v15 = vpminq_s8(v13, v13);
  v16 = vpmaxq_s8(v14, v14);
  v17 = vpminq_s8(v15, v15);
  v18 = vpmaxq_s8(v16, v16);
  v19 = vpminq_s8(v17, v17);
  v20 = vzip1q_s8(v18, v19);
  v21.i64[0] = 0x808080808080808;
  v21.i64[1] = 0x808080808080808;
  v22 = vbicq_s8(vsubq_s8(v21, vclsq_s8(v20)), vceqzq_s8(v20));
  v23 = vpmaxq_s8(v22, v22);
  v24 = vqtbl1q_s8(v10, xmmword_29D2F0EF0);
  v25 = vpmaxq_s8(v24, v24);
  v26 = vpminq_s8(v24, v24);
  v27 = vpmaxq_s8(v25, v25);
  v28 = vpminq_s8(v26, v26);
  v29 = vpmaxq_s8(v27, v27);
  v30 = vpminq_s8(v28, v28);
  v31 = vmaxq_s8(v18, v29);
  v32 = vminq_s8(v19, v30);
  v33 = vzip1q_s8(v29, v30);
  v34 = vbicq_s8(vsubq_s8(v21, vclsq_s8(v33)), vceqzq_s8(v33));
  v35 = vpmaxq_s8(v34, v34);
  v36 = vqtbl1q_s8(v11, xmmword_29D2F0EF0);
  v37 = vpmaxq_s8(v36, v36);
  v38 = vpminq_s8(v36, v36);
  v39 = vpmaxq_s8(v37, v37);
  v40 = vpminq_s8(v38, v38);
  v41 = vpmaxq_s8(v39, v39);
  v42 = vpminq_s8(v40, v40);
  v43 = vmaxq_s8(v31, v41);
  v44 = vminq_s8(v32, v42);
  v45 = vzip1q_s8(v41, v42);
  v46 = vbicq_s8(vsubq_s8(v21, vclsq_s8(v45)), vceqzq_s8(v45));
  v47 = vpmaxq_s8(v46, v46);
  v48 = vqtbl1q_s8(v12, xmmword_29D2F0EF0);
  v49 = vpmaxq_s8(v48, v48);
  v50 = vpminq_s8(v48, v48);
  v51 = vpmaxq_s8(v49, v49);
  v52 = vpminq_s8(v50, v50);
  v53 = vpmaxq_s8(v51, v51);
  v54 = vpminq_s8(v52, v52);
  v55 = vmaxq_s8(v43, v53);
  v56 = vminq_s8(v44, v54);
  v57 = vzip1q_s8(v53, v54);
  v58 = vbicq_s8(vsubq_s8(v21, vclsq_s8(v57)), vceqzq_s8(v57));
  v59 = vpmaxq_s8(v58, v58);
  v60 = vmaxq_s8(vmaxq_s8(v23, v35), vmaxq_s8(v47, v59));
  v61 = vclzq_s8(vsubq_s8(v55, v56));
  v62 = vsubq_s8(v21, v61);
  v63 = vminq_s8(v62, v60);
  if (vmaxvq_s8(v63))
  {
    v392 = *(a3 + a4);
    v393 = *a3;
    v394 = *(a3 + a4 + 16);
    v395 = *(a3 + 16);
    v64.i64[0] = -1;
    v64.i64[1] = -1;
    v65.i64[0] = 0x707070707070707;
    v65.i64[1] = 0x707070707070707;
    v66 = vcgtq_s8(v60, v62);
    v396 = vandq_s8(vsubq_s8(vshlq_s8(v64, vsubq_s8(v65, v61)), v56), v66);
    v67.i64[0] = 0x303030303030303;
    v67.i64[1] = 0x303030303030303;
    v68 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v23), v67), 0);
    v69 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v35), v67), 0);
    v70 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v47), v67), 0);
    v71 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v59), v67), 0);
    v72.i64[0] = 0x404040404040404;
    v72.i64[1] = 0x404040404040404;
    v73 = vorrq_s8(vbicq_s8(v72, vceqq_s8(vaddq_s8(v71, v70), vnegq_s8(vaddq_s8(v68, v69)))), vorrq_s8(vandq_s8(vceqzq_s8(v63), v67), vandq_s8(v66, v21)));
    v74 = vsubq_s8(v9, vqtbl1q_s8(v9, xmmword_29D2F0EE0));
    v75 = vsubq_s8(v10, vqtbl1q_s8(v10, xmmword_29D2F0EE0));
    v76 = vsubq_s8(v11, vqtbl1q_s8(v11, xmmword_29D2F0EE0));
    v77 = vsubq_s8(v12, vqtbl1q_s8(v12, xmmword_29D2F0EE0));
    v78 = vqtbl1q_s8(v74, xmmword_29D2F0EF0);
    v79 = vpmaxq_s8(v78, v78);
    v80 = vpminq_s8(v78, v78);
    v81 = vpmaxq_s8(v79, v79);
    v82 = vpminq_s8(v80, v80);
    v83 = vpmaxq_s8(v81, v81);
    v84 = vpminq_s8(v82, v82);
    v85 = vzip1q_s8(v83, v84);
    v86 = vbicq_s8(vsubq_s8(v21, vclsq_s8(v85)), vceqzq_s8(v85));
    v87 = v12;
    v88 = vpmaxq_s8(v86, v86);
    v89 = vqtbl1q_s8(v75, xmmword_29D2F0EF0);
    v90 = vpmaxq_s8(v89, v89);
    v91 = vpminq_s8(v89, v89);
    v92 = vpmaxq_s8(v90, v90);
    v93 = vpminq_s8(v91, v91);
    v94 = vpmaxq_s8(v92, v92);
    v95 = vpminq_s8(v93, v93);
    v96 = vmaxq_s8(v83, v94);
    v97 = vminq_s8(v84, v95);
    v98 = vzip1q_s8(v94, v95);
    v99 = vbicq_s8(vsubq_s8(v21, vclsq_s8(v98)), vceqzq_s8(v98));
    v100 = vpmaxq_s8(v99, v99);
    v101 = vqtbl1q_s8(v76, xmmword_29D2F0EF0);
    v102 = vpmaxq_s8(v101, v101);
    v103 = vpminq_s8(v101, v101);
    v104 = vpmaxq_s8(v102, v102);
    v105 = vpminq_s8(v103, v103);
    v106 = vpmaxq_s8(v104, v104);
    v107 = vpminq_s8(v105, v105);
    v108 = vmaxq_s8(v96, v106);
    v109 = vminq_s8(v97, v107);
    v110 = vzip1q_s8(v106, v107);
    v111 = vbicq_s8(vsubq_s8(v21, vclsq_s8(v110)), vceqzq_s8(v110));
    v112 = vpmaxq_s8(v111, v111);
    v113 = vqtbl1q_s8(v77, xmmword_29D2F0EF0);
    v114 = vpmaxq_s8(v113, v113);
    v115 = vpminq_s8(v113, v113);
    v116 = vpmaxq_s8(v114, v114);
    v117 = vpminq_s8(v115, v115);
    v118 = vpmaxq_s8(v116, v116);
    v119 = vpminq_s8(v117, v117);
    v120 = vmaxq_s8(v108, v118);
    v121 = vminq_s8(v109, v119);
    v122 = vzip1q_s8(v118, v119);
    v123 = vbicq_s8(vsubq_s8(v21, vclsq_s8(v122)), vceqzq_s8(v122));
    v124 = vpmaxq_s8(v123, v123);
    v125 = vmaxq_s8(vmaxq_s8(v88, v100), vmaxq_s8(v112, v124));
    v126 = vclzq_s8(vsubq_s8(v120, v121));
    v127 = vsubq_s8(v21, v126);
    v128 = vcgtq_s8(v125, v127);
    v129 = vminq_s8(v127, v125);
    v127.i64[0] = 0x1010101010101010;
    v127.i64[1] = 0x1010101010101010;
    v130.i64[0] = 0x1818181818181818;
    v130.i64[1] = 0x1818181818181818;
    v131 = vorrq_s8(vandq_s8(vceqzq_s8(v129), v67), vbslq_s8(v128, v130, v127));
    v132 = vmaxq_s8(vminq_s8(vsubq_s8(v129, v88), v67), 0);
    v133 = vmaxq_s8(vminq_s8(vsubq_s8(v129, v100), v67), 0);
    v134 = vmaxq_s8(vminq_s8(vsubq_s8(v129, v112), v67), 0);
    v135 = vmaxq_s8(vminq_s8(vsubq_s8(v129, v124), v67), 0);
    v136 = vsubq_s8(v129, v132);
    v137 = vsubq_s8(v129, v133);
    v138 = vsubq_s8(v129, v134);
    v139 = vsubq_s8(v129, v135);
    v140 = vorrq_s8(v131, vbicq_s8(v72, vceqq_s8(vaddq_s8(v135, v134), vnegq_s8(vaddq_s8(v132, v133)))));
    v141 = vmovl_u8(*v140.i8);
    v133.i64[0] = 0x8000800080008;
    v133.i64[1] = 0x8000800080008;
    v132.i64[0] = 0x2000200020002;
    v132.i64[1] = 0x2000200020002;
    v142 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v138.i8, *v137.i8), *v139.i8), 3uLL), *v136.i8, 0x707070707070707), vandq_s8(vshll_n_u8(*v140.i8, 1uLL), v133)), vbicq_s8(vmovl_s8(*v129.i8), vceqzq_s16((*&v141 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8))))), vandq_s8(vceqq_s16((*&v141 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v132), v133));
    v143 = vceqq_s16((*&vmovl_u8(*v73.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v132);
    v144 = vsubq_s8(v63, v68);
    v145 = vsubq_s8(v63, v69);
    v146 = vsubq_s8(v63, v70);
    v147 = vsubq_s8(v63, v71);
    v148 = vdupq_lane_s16(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddw_s8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v146.i8, *v145.i8), *v147.i8), 3uLL), *v144.i8, 0x707070707070707), vbic_s8(*v63.i8, vcgt_u8(0x808080808080808, *v73.i8))), (*&vshll_n_u8(*v73.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9))), vandq_s8(v143, v133)), v142)), 0);
    if (vaddlvq_s8(v148))
    {
      v149.i64[0] = 0x707070707070707;
      v149.i64[1] = 0x707070707070707;
      v150.i64[0] = -1;
      v150.i64[1] = -1;
      v8 = vbslq_s8(v148, vsubq_s8(v8, vqtbl1q_s8(v8, xmmword_29D2F0EE0)), v8);
      v9 = vbslq_s8(v148, v74, v9);
      v10 = vbslq_s8(v148, v75, v10);
      v11 = vbslq_s8(v148, v76, v11);
      v87 = vbslq_s8(v148, v77, v87);
      v144 = vbslq_s8(v148, v136, v144);
      v145 = vbslq_s8(v148, v137, v145);
      v146 = vbslq_s8(v148, v138, v146);
      v147 = vbslq_s8(v148, v139, v147);
      v151 = vbslq_s8(v148, vandq_s8(vsubq_s8(vshlq_s8(v150, vsubq_s8(v149, v126)), v121), v128), v396);
      v63 = vbslq_s8(v148, v129, v63);
      v73 = vbslq_s8(v148, v140, v73);
    }

    else
    {
      v151 = v396;
    }

    if (!v7)
    {
      v397 = v151;
      v154 = vsubq_s8(v393, vqtbl1q_s8(v393, xmmword_29D2F0F00));
      v155 = *(a3 + a4);
      v155.i16[7] = HIWORD(*a3);
      v156 = vsubq_s8(v392, vqtbl1q_s8(v155, xmmword_29D2F0F10));
      v157 = *(a3 + 16);
      v157.i16[7] = HIWORD(*a3);
      v158 = *(a3 + a4 + 16);
      v158.i16[7] = v157.i16[7];
      v159 = vsubq_s8(v395, vqtbl1q_s8(v157, xmmword_29D2F0F20));
      v160 = vsubq_s8(v394, vqtbl1q_s8(v158, xmmword_29D2F0F30));
      v161 = v154;
      v161.i16[0] = v154.i16[7];
      v161.i16[7] = v154.i16[0];
      v162 = vqtbl1q_s8(v161, xmmword_29D2F0EF0);
      v163 = vpmaxq_s8(v162, v162);
      v164 = vpminq_s8(v162, v162);
      v165 = vpmaxq_s8(v163, v163);
      v166 = vpminq_s8(v164, v164);
      v167 = vpmaxq_s8(v165, v165);
      v168 = vpminq_s8(v166, v166);
      v169 = vzip1q_s8(v167, v168);
      v170.i64[0] = 0x808080808080808;
      v170.i64[1] = 0x808080808080808;
      v171 = vbicq_s8(vsubq_s8(v170, vclsq_s8(v169)), vceqzq_s8(v169));
      v172 = vpmaxq_s8(v171, v171);
      v391 = v156;
      v173 = vqtbl1q_s8(v156, xmmword_29D2F0EF0);
      v174 = vpmaxq_s8(v173, v173);
      v175 = vpminq_s8(v173, v173);
      v176 = vpmaxq_s8(v174, v174);
      v177 = vpminq_s8(v175, v175);
      v178 = vpmaxq_s8(v176, v176);
      v179 = vpminq_s8(v177, v177);
      v180 = vmaxq_s8(v167, v178);
      v181 = vminq_s8(v168, v179);
      v182 = vzip1q_s8(v178, v179);
      v183 = vbicq_s8(vsubq_s8(v170, vclsq_s8(v182)), vceqzq_s8(v182));
      v184 = vpmaxq_s8(v183, v183);
      v185 = vqtbl1q_s8(v159, xmmword_29D2F0EF0);
      v186 = vpmaxq_s8(v185, v185);
      v187 = vpminq_s8(v185, v185);
      v188 = vpmaxq_s8(v186, v186);
      v189 = vpminq_s8(v187, v187);
      v190 = vpmaxq_s8(v188, v188);
      v191 = vpminq_s8(v189, v189);
      v192 = vmaxq_s8(v180, v190);
      v193 = vminq_s8(v181, v191);
      v194 = vzip1q_s8(v190, v191);
      v195 = vbicq_s8(vsubq_s8(v170, vclsq_s8(v194)), vceqzq_s8(v194));
      v196 = vpmaxq_s8(v195, v195);
      v197 = vqtbl1q_s8(v160, xmmword_29D2F0EF0);
      v198 = vpmaxq_s8(v197, v197);
      v199 = vpminq_s8(v197, v197);
      v200 = vpmaxq_s8(v198, v198);
      v201 = vpminq_s8(v199, v199);
      v202 = vpmaxq_s8(v200, v200);
      v203 = vpminq_s8(v201, v201);
      v204 = vmaxq_s8(v192, v202);
      v205 = vminq_s8(v193, v203);
      v206 = vzip1q_s8(v202, v203);
      v207 = vbicq_s8(vsubq_s8(v170, vclsq_s8(v206)), vceqzq_s8(v206));
      v208 = vpmaxq_s8(v207, v207);
      v209 = vmaxq_s8(vmaxq_s8(v172, v184), vmaxq_s8(v196, v208));
      v210 = vclzq_s8(vsubq_s8(v204, v205));
      v211 = vsubq_s8(v170, v210);
      v212 = vcgtq_s8(v209, v211);
      v213 = vminq_s8(v211, v209);
      v211.i64[0] = 0x909090909090909;
      v211.i64[1] = 0x909090909090909;
      v214.i64[0] = 0x202020202020202;
      v214.i64[1] = 0x202020202020202;
      v215 = vorrq_s8(vandq_s8(vceqzq_s8(v213), v214), vsubq_s8(vandq_s8(v212, v211), vmvnq_s8(v212)));
      v170.i64[0] = 0x303030303030303;
      v170.i64[1] = 0x303030303030303;
      v216 = vmaxq_s8(vminq_s8(vsubq_s8(v213, v172), v170), 0);
      v217 = vmaxq_s8(vminq_s8(vsubq_s8(v213, v184), v170), 0);
      v218 = vmaxq_s8(vminq_s8(vsubq_s8(v213, v196), v170), 0);
      v219 = vmaxq_s8(vminq_s8(vsubq_s8(v213, v208), v170), 0);
      v220 = vsubq_s8(v213, v216);
      v221 = vsubq_s8(v213, v217);
      v222 = vsubq_s8(v213, v218);
      v223 = vsubq_s8(v213, v219);
      v224 = vceqq_s8(vaddq_s8(v219, v218), vnegq_s8(vaddq_s8(v216, v217)));
      v216.i64[0] = 0x404040404040404;
      v216.i64[1] = 0x404040404040404;
      v225 = vorrq_s8(v215, vbicq_s8(v216, v224));
      v218.i64[0] = 0x3000300030003;
      v218.i64[1] = 0x3000300030003;
      v226 = vmovl_s8(*v73.i8);
      v170.i64[0] = 0x8000800080008;
      v170.i64[1] = 0x8000800080008;
      v227 = vbicq_s8(vmovl_s8(*v63.i8), vceqzq_s16(vandq_s8(v226, v170)));
      v228 = vandq_s8(v226, v218);
      v218.i64[0] = 0x2000200020002;
      v218.i64[1] = 0x2000200020002;
      v229 = vdupq_lane_s16(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v227, vandq_s8(vshll_n_s8(*v73.i8, 1uLL), v170)), vandq_s8(vceqq_s16(v228, v218), v170)), *v144.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v146.i8, *v145.i8), *v147.i8), 3uLL)), vaddw_s8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v222.i8, *v221.i8), *v223.i8), 3uLL), *v220.i8, 0x707070707070707), vand_s8(vadd_s8(*v225.i8, *v225.i8), 0x808080808080808)), vbic_s8(*v213.i8, vcgt_u8(0x808080808080808, *v225.i8))))), 0);
      if (vaddlvq_s8(v229))
      {
        v230.i64[0] = 0x707070707070707;
        v230.i64[1] = 0x707070707070707;
        v231.i64[0] = -1;
        v231.i64[1] = -1;
        v8.i16[0] = vbslq_s8(v229, vextq_s8(v393, v393, 0xEuLL), v8).u16[0];
        v9 = vbslq_s8(v229, v161, v9);
        v10 = vbslq_s8(v229, v391, v10);
        v11 = vbslq_s8(v229, v159, v11);
        v87 = vbslq_s8(v229, v160, v87);
        v144 = vbslq_s8(v229, v220, v144);
        v145 = vbslq_s8(v229, v221, v145);
        v146 = vbslq_s8(v229, v222, v146);
        v147 = vbslq_s8(v229, v223, v147);
        v151 = vbslq_s8(v229, vandq_s8(vsubq_s8(vshlq_s8(v231, vsubq_s8(v230, v210)), v205), v212), v397);
        v63 = vbslq_s8(v229, v213, v63);
        v73 = vbslq_s8(v229, v225, v73);
      }

      else
      {
        v151 = v397;
      }
    }

    v232 = vmovl_s8(*v73.i8);
    v233.i64[0] = 0x8000800080008;
    v233.i64[1] = 0x8000800080008;
    v234 = vbicq_s8(vmovl_s8(*v63.i8), vceqzq_s16(vandq_s8(v232, v233)));
    v235.i64[0] = 0x3000300030003;
    v235.i64[1] = 0x3000300030003;
    v236 = vandq_s8(v232, v235);
    v235.i64[0] = 0x2000200020002;
    v235.i64[1] = 0x2000200020002;
    v237 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v146.i8, *v145.i8), *v147.i8), 3uLL), *v144.i8, 0x707070707070707), vandq_s8(vshll_n_s8(*v73.i8, 1uLL), v233)), v234), vandq_s8(vceqq_s16(v236, v235), v233));
    if ((vpaddq_s16(v237, v237).i16[0] + 37) >= 0x200)
    {
      *a1 = v393;
      a1[1] = v392;
      v152 = 63;
      a1[2] = v395;
      a1[3] = v394;
      result = 64;
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

      v241 = ((v63.i8[0] - 1) & 7) << 10;
      if (!v63.i8[0])
      {
        v241 = 0;
      }

      if (v63.i8[1])
      {
        v242 = ((v63.u8[1] << 13) - 0x2000) & 0xE000;
      }

      else
      {
        v242 = 0;
      }

      *a2 = v73.i8[0] << 6;
      v243 = ((v241 | v242) & 0xFFFFFFFFFFFFFC1FLL | v73.i8[0] & 0x1C | (32 * (v73.i8[1] & 0x1F))) >> 2;
      v244 = v240 | (v243 << v239);
      if (v239 >= 0x32)
      {
        *v238 = v244;
        v244 = v243 >> (-8 * (a1 & 7u));
      }

      v245 = (v239 + 14) & 0x3E;
      v246 = v244 | (v8.u16[0] << v245);
      if (v245 >= 0x30)
      {
        *(v238 + (((v239 + 14) >> 3) & 8)) = v246;
        v246 = v8.u16[0] >> -v245;
      }

      v247 = v239 + 30;
      v248 = vsubq_s8(v63, v144);
      v249 = vsubq_s8(v63, v145);
      v250 = vsubq_s8(v63, v146);
      v251 = vsubq_s8(v63, v147);
      v248.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v248, v249), vzip1q_s8(v250, v251)), vzip1q_s16(vtrn2q_s8(v248, v249), vtrn2q_s8(v250, v251))).u64[0];
      v250.i64[0] = 0x202020202020202;
      v250.i64[1] = 0x202020202020202;
      v252 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*&vmovl_u8(*v73.i8), 0x4000400040004)))), v250);
      v250.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v250.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v251.i64[0] = -1;
      v251.i64[1] = -1;
      v253 = vandq_s8(vshlq_u8(v251, vorrq_s8(v252, v250)), v248.u64[0]);
      v254 = vmovl_u8(*v252.i8);
      v255 = vpaddq_s16(vshlq_u16(vmovl_u8(*v253.i8), vtrn1q_s16(0, v254)), vmovl_high_u8(v253));
      v256 = vpaddq_s16(v254, vmovl_high_u8(v252));
      v257 = vmovl_u16(*v256.i8);
      v258 = vmovl_high_u16(v256);
      v259 = vpaddq_s32(vshlq_u32(vmovl_u16(*v255.i8), vtrn1q_s32(0, v257)), vshlq_u32(vmovl_high_u16(v255), vtrn1q_s32(0, v258)));
      v260 = vpaddq_s32(v257, v258);
      v261.i64[0] = v259.u32[0];
      v261.i64[1] = v259.u32[1];
      v262 = v261;
      v261.i64[0] = v259.u32[2];
      v261.i64[1] = v259.u32[3];
      v263 = v261;
      v261.i64[0] = v260.u32[0];
      v261.i64[1] = v260.u32[1];
      v264 = v261;
      v261.i64[0] = v260.u32[2];
      v261.i64[1] = v260.u32[3];
      v265 = vpaddq_s64(vshlq_u64(v262, vzip1q_s64(0, v264)), vshlq_u64(v263, vzip1q_s64(0, v261)));
      v266 = vpaddq_s64(v264, v261);
      v267 = (v239 + 30) & 0x3E;
      v268 = (v265.i64[0] << v267) | v246;
      if ((v266.i64[0] + v267) >= 0x40)
      {
        *(v238 + ((v247 >> 3) & 8)) = v268;
        v268 = v265.i64[0] >> -v267;
      }

      v269 = vceqq_s8(v63, v144);
      v270 = v266.i64[0] + v247;
      v271 = v268 | (v265.i64[1] << v270);
      if ((v270 & 0x3F) + v266.i64[1] >= 0x40)
      {
        *(v238 + ((v270 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v271;
        v271 = v265.i64[1] >> -(v270 & 0x3F);
        if ((v270 & 0x3F) == 0)
        {
          v271 = 0;
        }
      }

      v272 = vandq_s8(v151, v269);
      v273 = v270 + v266.i64[1];
      v274.i64[0] = 0x808080808080808;
      v274.i64[1] = 0x808080808080808;
      v275.i64[0] = -1;
      v275.i64[1] = -1;
      v276 = vandq_s8(vextq_s8(vtstq_s8(v73, v274), 0, 0xEuLL), v63);
      v277.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v277.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v278 = vandq_s8(vshlq_u8(v275, vaddq_s8(v276, v277)), v151);
      v279 = vmovl_u8(*v276.i8);
      v280 = vpaddq_s16(vshlq_u16(vmovl_u8(*v278.i8), vtrn1q_s16(0, v279)), vmovl_high_u8(v278));
      v281 = vpaddq_s16(v279, vmovl_high_u8(v276));
      v282 = vmovl_u16(*v281.i8);
      v283 = vmovl_high_u16(v281);
      v284 = vpaddq_s32(vshlq_u32(vmovl_u16(*v280.i8), vtrn1q_s32(0, v282)), vshlq_u32(vmovl_high_u16(v280), vtrn1q_s32(0, v283)));
      v285 = vpaddq_s32(v282, v283);
      v286.i64[0] = v284.u32[0];
      v286.i64[1] = v284.u32[1];
      v287 = v286;
      v286.i64[0] = v284.u32[2];
      v286.i64[1] = v284.u32[3];
      v288 = v286;
      v286.i64[0] = v285.u32[0];
      v286.i64[1] = v285.u32[1];
      v289 = v286;
      v286.i64[0] = v285.u32[2];
      v286.i64[1] = v285.u32[3];
      v290 = vpaddq_s64(vshlq_u64(v287, vzip1q_s64(0, v289)), vshlq_u64(v288, vzip1q_s64(0, v286)));
      v291 = vpaddq_s64(v289, v286);
      v292 = (v290.i64[0] << v273) | v271;
      if (v291.i64[0] + (v273 & 0x3F) >= 0x40)
      {
        *(v238 + ((v273 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v292;
        v292 = v290.i64[0] >> -(v273 & 0x3F);
        if ((v273 & 0x3F) == 0)
        {
          v292 = 0;
        }
      }

      v293 = vceqq_s8(v63, v145);
      v294 = vaddq_s8(v272, v9);
      v295 = v291.i64[0] + v273;
      v296 = v292 | (v290.i64[1] << v295);
      if ((v295 & 0x3F) + v291.i64[1] >= 0x40)
      {
        *(v238 + ((v295 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v296;
        v296 = v290.i64[1] >> -(v295 & 0x3F);
        if ((v295 & 0x3F) == 0)
        {
          v296 = 0;
        }
      }

      v297 = vandq_s8(v151, v293);
      v298 = v295 + v291.i64[1];
      v299 = vextq_s8(0, v144, 0xEuLL);
      v300.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v300.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v301.i64[0] = -1;
      v301.i64[1] = -1;
      v302 = vandq_s8(vshlq_u8(v301, vaddq_s8(v299, v300)), v294);
      v303 = vmovl_u8(*v299.i8);
      v304 = vmovl_high_u8(v299);
      v305 = vpaddq_s16(vshlq_u16(vmovl_u8(*v302.i8), vtrn1q_s16(0, v303)), vshlq_u16(vmovl_high_u8(v302), vtrn1q_s16(0, v304)));
      v306 = vpaddq_s16(v303, v304);
      v307 = vmovl_u16(*v306.i8);
      v308 = vmovl_high_u16(v306);
      v309 = vpaddq_s32(vshlq_u32(vmovl_u16(*v305.i8), vtrn1q_s32(0, v307)), vshlq_u32(vmovl_high_u16(v305), vtrn1q_s32(0, v308)));
      v310 = vpaddq_s32(v307, v308);
      v311.i64[0] = v309.u32[0];
      v311.i64[1] = v309.u32[1];
      v312 = v311;
      v311.i64[0] = v309.u32[2];
      v311.i64[1] = v309.u32[3];
      v313 = v311;
      v311.i64[0] = v310.u32[0];
      v311.i64[1] = v310.u32[1];
      v314 = v311;
      v311.i64[0] = v310.u32[2];
      v311.i64[1] = v310.u32[3];
      v315 = vpaddq_s64(vshlq_u64(v312, vzip1q_s64(0, v314)), vshlq_u64(v313, vzip1q_s64(0, v311)));
      v316 = vpaddq_s64(v314, v311);
      v317 = (v315.i64[0] << v298) | v296;
      if (v316.i64[0] + (v298 & 0x3F) >= 0x40)
      {
        *(v238 + ((v298 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v317;
        v317 = v315.i64[0] >> -(v298 & 0x3F);
        if ((v298 & 0x3F) == 0)
        {
          v317 = 0;
        }
      }

      v318 = vceqq_s8(v63, v146);
      v319 = vaddq_s8(v10, v297);
      v320 = v316.i64[0] + v298;
      v321 = v317 | (v315.i64[1] << v320);
      if ((v320 & 0x3F) + v316.i64[1] >= 0x40)
      {
        *(v238 + ((v320 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v321;
        v321 = v315.i64[1] >> -(v320 & 0x3F);
        if ((v320 & 0x3F) == 0)
        {
          v321 = 0;
        }
      }

      v322 = vandq_s8(v151, v318);
      v323 = v320 + v316.i64[1];
      v324.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v324.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v325.i64[0] = -1;
      v325.i64[1] = -1;
      v326 = vandq_s8(vshlq_u8(v325, vaddq_s8(v145, v324)), v319);
      v327 = vmovl_u8(*v145.i8);
      v328 = vmovl_high_u8(v145);
      v329 = vpaddq_s16(vshlq_u16(vmovl_u8(*v326.i8), vtrn1q_s16(0, v327)), vshlq_u16(vmovl_high_u8(v326), vtrn1q_s16(0, v328)));
      v330 = vpaddq_s16(v327, v328);
      v331 = vmovl_u16(*v330.i8);
      v332 = vmovl_high_u16(v330);
      v333 = vpaddq_s32(vshlq_u32(vmovl_u16(*v329.i8), vtrn1q_s32(0, v331)), vshlq_u32(vmovl_high_u16(v329), vtrn1q_s32(0, v332)));
      v334 = vpaddq_s32(v331, v332);
      v335.i64[0] = v333.u32[0];
      v335.i64[1] = v333.u32[1];
      v336 = v335;
      v335.i64[0] = v333.u32[2];
      v335.i64[1] = v333.u32[3];
      v337 = v335;
      v335.i64[0] = v334.u32[0];
      v335.i64[1] = v334.u32[1];
      v338 = v335;
      v335.i64[0] = v334.u32[2];
      v335.i64[1] = v334.u32[3];
      v339 = vpaddq_s64(vshlq_u64(v336, vzip1q_s64(0, v338)), vshlq_u64(v337, vzip1q_s64(0, v335)));
      v340 = vpaddq_s64(v338, v335);
      v341 = (v339.i64[0] << v323) | v321;
      if (v340.i64[0] + (v323 & 0x3F) >= 0x40)
      {
        *(v238 + ((v323 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v341;
        v341 = v339.i64[0] >> -(v323 & 0x3F);
        if ((v323 & 0x3F) == 0)
        {
          v341 = 0;
        }
      }

      v342 = vceqq_s8(v63, v147);
      v343 = vaddq_s8(v11, v322);
      v344 = v340.i64[0] + v323;
      v345 = v341 | (v339.i64[1] << v344);
      if ((v344 & 0x3F) + v340.i64[1] >= 0x40)
      {
        *(v238 + ((v344 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v345;
        v345 = v339.i64[1] >> -(v344 & 0x3F);
        if ((v344 & 0x3F) == 0)
        {
          v345 = 0;
        }
      }

      v346 = vandq_s8(v151, v342);
      v347 = v344 + v340.i64[1];
      v348.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v348.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v349.i64[0] = -1;
      v349.i64[1] = -1;
      v350 = vandq_s8(vshlq_u8(v349, vaddq_s8(v146, v348)), v343);
      v351 = vmovl_u8(*v146.i8);
      v352 = vmovl_high_u8(v146);
      v353 = vpaddq_s16(vshlq_u16(vmovl_u8(*v350.i8), vtrn1q_s16(0, v351)), vshlq_u16(vmovl_high_u8(v350), vtrn1q_s16(0, v352)));
      v354 = vpaddq_s16(v351, v352);
      v355 = vmovl_u16(*v354.i8);
      v356 = vmovl_high_u16(v354);
      v357 = vpaddq_s32(vshlq_u32(vmovl_u16(*v353.i8), vtrn1q_s32(0, v355)), vshlq_u32(vmovl_high_u16(v353), vtrn1q_s32(0, v356)));
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
      v365 = (v363.i64[0] << v347) | v345;
      if (v364.i64[0] + (v347 & 0x3F) >= 0x40)
      {
        *(v238 + ((v347 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
        v365 = v363.i64[0] >> -(v347 & 0x3F);
        if ((v347 & 0x3F) == 0)
        {
          v365 = 0;
        }
      }

      v366 = vaddq_s8(v87, v346);
      v367 = v364.i64[0] + v347;
      v368 = v365 | (v363.i64[1] << v367);
      if ((v367 & 0x3F) + v364.i64[1] >= 0x40)
      {
        *(v238 + ((v367 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v368;
        v368 = v363.i64[1] >> -(v367 & 0x3F);
        if ((v367 & 0x3F) == 0)
        {
          v368 = 0;
        }
      }

      v369 = v367 + v364.i64[1];
      v370.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v370.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v371.i64[0] = -1;
      v371.i64[1] = -1;
      v372 = vandq_s8(vshlq_u8(v371, vaddq_s8(v147, v370)), v366);
      v373 = vmovl_u8(*v147.i8);
      v374 = vmovl_high_u8(v147);
      v375 = vpaddq_s16(vshlq_u16(vmovl_u8(*v372.i8), vtrn1q_s16(0, v373)), vshlq_u16(vmovl_high_u8(v372), vtrn1q_s16(0, v374)));
      v376 = vpaddq_s16(v373, v374);
      v377 = vmovl_u16(*v376.i8);
      v378 = vmovl_high_u16(v376);
      v379 = vpaddq_s32(vshlq_u32(vmovl_u16(*v375.i8), vtrn1q_s32(0, v377)), vshlq_u32(vmovl_high_u16(v375), vtrn1q_s32(0, v378)));
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
      v387 = (v385.i64[0] << v369) | v368;
      if (v386.i64[0] + (v369 & 0x3F) > 0x3F)
      {
        *(v238 + ((v369 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v387;
        if ((v369 & 0x3F) != 0)
        {
          v387 = v385.i64[0] >> -(v369 & 0x3F);
        }

        else
        {
          v387 = 0;
        }
      }

      v388 = v386.i64[0] + v369;
      v389 = v387 | (v385.i64[1] << v388);
      if ((v388 & 0x3F) + v386.i64[1] >= 0x40)
      {
        *(v238 + ((v388 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v389;
        v389 = v385.i64[1] >> -(v388 & 0x3F);
        if ((v388 & 0x3F) == 0)
        {
          v389 = 0;
        }
      }

      v390 = v388 + v386.i64[1];
      if ((v390 & 0x3F) != 0)
      {
        *(v238 + ((v390 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v389;
      }

      result = (v390 - v239 + 7) >> 3;
      v152 = *a2 | (result - 1);
    }
  }

  else
  {
    a1->i16[0] = *a3;
    v152 = 1;
    result = 2;
  }

  *a2 = v152;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(uint64_t result, uint64_t a2, int8x16_t *a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + v12, a2, v15, v14);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + 32, a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, v11 + v12 + 32, a2, v20, v19);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 4 * a2, a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 6 * a2, a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, v11 + 4 * a2 + 32, a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, v11 + 6 * a2 + 32, a2, v30, v29);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int8x16_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int8x8_t a5, int8x8_t a6)
{
  v12 = 8 * (a3 & 7);
  v13 = a3 & 0xFFFFFFFFFFFFFFF8;
  v14 = v12 + 14;
  v15 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v12;
  if (v12 >= 0x33)
  {
    v15 |= *(v13 + 8) << (-8 * (a3 & 7u));
  }

  a6.i32[0] = 4 * v15;
  a5.i32[0] = a4 >> 6;
  v16.i32[0] = vorr_s8(a6, a5).u32[0];
  v16.i32[1] = vshr_n_u32(vdup_n_s32(4 * v15), 5uLL).i32[1];
  v17 = v12 + 30;
  v18 = v14 & 0x3E;
  v19 = (v13 + ((v14 >> 3) & 8));
  v20 = *v19 >> v18;
  if (v18 >= 0x31)
  {
    v20 |= v19[1] << -v18;
  }

  v21 = (8 * (a3 & 7)) | 0x200;
  v22 = vand_s8(v16, 0x1F0000001FLL);
  v224.val[1] = vdupq_lane_s8(v22, 4);
  v224.val[0] = vdupq_lane_s8(v22, 0);
  v23 = vqtbl2q_s8(v224, xmmword_29D2F0E30);
  v24 = vshlq_u32(vdupq_lane_s32(a6, 0), xmmword_29D2F0E40);
  v25 = vuzp1q_s16(v24, v24);
  v224.val[0].i64[0] = 0x707070707070707;
  v224.val[0].i64[1] = 0x707070707070707;
  v26 = vandq_s8(vuzp1q_s8(v25, v25), v224.val[0]);
  v224.val[0].i64[0] = 0x101010101010101;
  v224.val[0].i64[1] = 0x101010101010101;
  v224.val[0] = vaddq_s8(v26, v224.val[0]);
  v224.val[1].i64[0] = 0x303030303030303;
  v224.val[1].i64[1] = 0x303030303030303;
  v27 = vandq_s8(v23, v224.val[1]);
  v28 = vbicq_s8(v224.val[0], vceqq_s8(v27, v224.val[1]));
  v224.val[1].i64[0] = 0x202020202020202;
  v224.val[1].i64[1] = 0x202020202020202;
  v29 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16((*&vuzp1_s16(v22, v22) & 0xFFE4FFE4FFE4FFE4)))), v224.val[1]);
  if (vmaxvq_s8(v29) < 1)
  {
    v38 = 0;
    v62.i64[0] = -1;
    v62.i64[1] = -1;
    v56 = v28;
    v57 = v28;
    v58 = v28;
    v61.i64[0] = -1;
    v61.i64[1] = -1;
    v55 = v28;
    v60.i64[0] = -1;
    v60.i64[1] = -1;
    v59.i64[0] = -1;
    v59.i64[1] = -1;
  }

  else
  {
    v30 = vmovl_u8(*&vpaddq_s8(v29, v29));
    v31 = vmovl_u16(*&vpaddq_s16(v30, v30));
    v32 = vpaddq_s32(v31, v31).u64[0];
    v33.i64[0] = v32;
    v33.i64[1] = HIDWORD(v32);
    v34 = v33;
    v35 = vaddvq_s64(v33);
    v36 = v35 + v17;
    v37 = v35 <= 0x80 && v21 >= v36;
    v38 = !v37;
    v39 = 0uLL;
    if (v37)
    {
      v40 = v17 & 0x3E;
      v41 = vaddq_s64(vzip1q_s64(0, v34), vdupq_n_s64(v40));
      v42 = (v13 + ((v17 >> 3) & 8));
      v39 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v42, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v41)), vshlq_u64(vdupq_lane_s64(v42->i64[0], 0), vnegq_s64(v41)));
      if (v35 + v40 >= 0x81)
      {
        v39 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v42[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v41)), vshlq_u64(vdupq_laneq_s64(v42[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v41))), v39);
      }

      v17 = v36;
    }

    v43 = vzip1_s32(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
    v44.i64[0] = v43.u32[0];
    v44.i64[1] = v43.u32[1];
    v45 = vshlq_u64(v39, vnegq_s64(v44));
    v46 = vuzp1q_s32(vzip1q_s64(v39, v45), vzip2q_s64(v39, v45));
    v47 = vshlq_u32(v46, vnegq_s32((*&v30 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v48 = vuzp1q_s16(vzip1q_s32(v46, v47), vzip2q_s32(v46, v47));
    v49 = vzip1q_s16(v48, vshlq_u16(v48, vnegq_s16(vmovl_u8(vuzp1_s8(*v29.i8, *v23.i8)))));
    *v49.i8 = vmovn_s16(v49);
    v46.i64[0] = 0x101010101010101;
    v46.i64[1] = 0x101010101010101;
    v50 = vshlq_s8(v46, v29);
    v46.i64[0] = -1;
    v46.i64[1] = -1;
    v50.i64[0] = vqtbl1q_s8(vandq_s8(vaddq_s8(v50, v46), v49), xmmword_29D2F0E50).u64[0];
    v51 = vdupq_lane_s16(*v50.i8, 0);
    v52 = vdupq_lane_s16(*v50.i8, 1);
    v53 = vdupq_lane_s16(*v50.i8, 2);
    v54 = vdupq_lane_s16(*v50.i8, 3);
    v55 = vsubq_s8(v28, v51);
    v56 = vsubq_s8(v28, v52);
    v57 = vsubq_s8(v28, v53);
    v58 = vsubq_s8(v28, v54);
    v59 = vceqzq_s8(v51);
    v60 = vceqzq_s8(v52);
    v61 = vceqzq_s8(v53);
    v62 = vceqzq_s8(v54);
  }

  v63.i64[0] = 0x808080808080808;
  v63.i64[1] = 0x808080808080808;
  v64 = 0uLL;
  v65 = vandq_s8(vextq_s8(vtstq_s8(v23, v63), 0, 0xEuLL), v28);
  v66 = vmovl_u8(*&vpaddq_s8(v65, v65));
  v67 = vmovl_u16(*&vpaddq_s16(v66, v66));
  v68 = vpaddq_s32(v67, v67).u64[0];
  v69.i64[0] = v68;
  v69.i64[1] = HIDWORD(v68);
  v70 = v69;
  v71 = vaddvq_s64(v69);
  v72 = v71 + v17;
  if (v71 <= 0x80 && v21 >= v72)
  {
    v74 = v17 & 0x3F;
    v75 = vaddq_s64(vzip1q_s64(0, v70), vdupq_n_s64(v74));
    v76 = (v13 + 8 * (v17 >> 6));
    v64 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v76, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v75)), vshlq_u64(vdupq_lane_s64(v76->i64[0], 0), vnegq_s64(v75)));
    if (v71 + v74 >= 0x81)
    {
      v64 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v76[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v75)), vshlq_u64(vdupq_laneq_s64(v76[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v75))), v64);
    }

    v17 = v72;
  }

  else
  {
    v38 = 1;
  }

  v77 = v22.i8[0] & 3;
  if (v77 == 2)
  {
    if (v21 < v17 + 4)
    {
      v38 = 1;
    }

    else
    {
      v17 += 4;
    }

    v78 = v21 < v17 + 4;
    if (v21 >= v17 + 4)
    {
      v17 += 4;
    }

    v38 |= v78;
  }

  v79 = 0uLL;
  v80 = vextq_s8(0, v55, 0xEuLL);
  v81 = vmovl_u8(*&vpaddq_s8(v80, v80));
  v82 = vmovl_u16(*&vpaddq_s16(v81, v81));
  v83 = vpaddq_s32(v82, v82).u64[0];
  v84.i64[0] = v83;
  v84.i64[1] = HIDWORD(v83);
  v85 = v84;
  v86 = vaddvq_s64(v84);
  v87 = v86 + v17;
  if (v86 <= 0x80 && v21 >= v87)
  {
    v90 = v17 & 0x3F;
    v91 = vaddq_s64(vzip1q_s64(0, v85), vdupq_n_s64(v90));
    v92 = (v13 + 8 * (v17 >> 6));
    v89 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v92, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v91)), vshlq_u64(vdupq_lane_s64(v92->i64[0], 0), vnegq_s64(v91)));
    if (v86 + v90 >= 0x81)
    {
      v89 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v92[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v91)), vshlq_u64(vdupq_laneq_s64(v92[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v91))), v89);
    }

    v17 = v87;
  }

  else
  {
    v38 = 1;
    v89 = 0uLL;
  }

  v218 = v11;
  v219 = v10;
  v220 = v9;
  v221 = v8;
  v222 = v7;
  v223 = v6;
  v93 = vmovl_u8(*&vpaddq_s8(v56, v56));
  v94 = vmovl_u16(*&vpaddq_s16(v93, v93));
  v95 = vpaddq_s32(v94, v94).u64[0];
  v96.i64[0] = v95;
  v96.i64[1] = HIDWORD(v95);
  v97 = v96;
  v98 = vaddvq_s64(v96);
  if (v98 >= 0x81)
  {
    v38 = 1;
  }

  else
  {
    v99 = vzip1_s32(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
    v100.i64[0] = v99.u32[0];
    v100.i64[1] = v99.u32[1];
    v101 = v100;
    v102 = *&v93 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v103 = v98 + v17;
    if (v21 >= v98 + v17)
    {
      v105 = v17 & 0x3F;
      v106 = vaddq_s64(vzip1q_s64(0, v97), vdupq_n_s64(v105));
      v107 = (v13 + 8 * (v17 >> 6));
      v104 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v107, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v106)), vshlq_u64(vdupq_lane_s64(v107->i64[0], 0), vnegq_s64(v106)));
      if (v98 + v105 >= 0x81)
      {
        v104 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v107[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v106)), vshlq_u64(vdupq_laneq_s64(v107[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v106))), v104);
      }

      v17 = v103;
    }

    else
    {
      v104 = 0uLL;
      v38 = 1;
    }

    v108 = vshlq_u64(v104, vnegq_s64(v101));
    v109 = vuzp1q_s32(vzip1q_s64(v104, v108), vzip2q_s64(v104, v108));
    v110 = vshlq_u32(v109, vnegq_s32(v102));
    v111 = vuzp1q_s16(vzip1q_s32(v109, v110), vzip2q_s32(v109, v110));
    v112 = vshlq_u16(v111, vnegq_s16((*&v56 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v79 = vuzp1q_s8(vzip1q_s16(v111, v112), vzip2q_s16(v111, v112));
  }

  v113 = vmovl_u8(*&vpaddq_s8(v57, v57));
  v114 = vmovl_u16(*&vpaddq_s16(v113, v113));
  v115 = vpaddq_s32(v114, v114).u64[0];
  v116.i64[0] = v115;
  v116.i64[1] = HIDWORD(v115);
  v117 = v116;
  v118 = vaddvq_s64(v116);
  v119 = v118 + v17;
  if (v118 <= 0x80 && v21 >= v119)
  {
    v122 = v17 & 0x3F;
    v123 = vaddq_s64(vzip1q_s64(0, v117), vdupq_n_s64(v122));
    v124 = (v13 + 8 * (v17 >> 6));
    v121 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v124, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v123)), vshlq_u64(vdupq_lane_s64(v124->i64[0], 0), vnegq_s64(v123)));
    if (v118 + v122 >= 0x81)
    {
      v121 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v124[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v123)), vshlq_u64(vdupq_laneq_s64(v124[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v123))), v121);
    }

    v17 = v119;
  }

  else
  {
    v38 = 1;
    v121 = 0uLL;
  }

  v125 = vmovl_u8(*&vpaddq_s8(v58, v58));
  v126 = vmovl_u16(*&vpaddq_s16(v125, v125));
  v127 = vpaddq_s32(v126, v126).u64[0];
  v128.i64[0] = v127;
  v128.i64[1] = HIDWORD(v127);
  v129 = v128;
  v130 = vaddvq_s64(v128);
  if (v130 > 0x80 || v21 < v130 + v17)
  {
    goto LABEL_66;
  }

  v131 = vaddq_s64(vzip1q_s64(0, v129), vdupq_n_s64(v17 & 0x3F));
  v132 = (v13 + 8 * (v17 >> 6));
  v133 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v132, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v131)), vshlq_u64(vdupq_lane_s64(v132->i64[0], 0), vnegq_s64(v131)));
  if (v130 + (v17 & 0x3F) >= 0x81)
  {
    v133 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v132[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v131)), vshlq_u64(vdupq_laneq_s64(v132[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v131))), v133);
  }

  if ((v38 & 1) != 0 || (v134 = (a4 & 0x3F) + 1, 8 * ((a3 & 7) + v134) - (v130 + v17) >= 9))
  {
LABEL_66:
    v134 = 0;
    v135 = &v216;
LABEL_67:
    *(v135 & 0xFFFFFFFFFFFFFFF8) |= 255 << (8 * (v135 & 7u));
    a1->i32[0] = 0;
    *(a1->i32 + a2) = 0;
    return v134;
  }

  if (v77 == 2)
  {
    v134 = 0;
    v135 = &v217;
    goto LABEL_67;
  }

  v137 = vzip1_s32(*v67.i8, *&vextq_s8(v67, v67, 8uLL));
  v138 = vzip1_s32(*v82.i8, *&vextq_s8(v82, v82, 8uLL));
  v139 = vzip1_s32(*v114.i8, *&vextq_s8(v114, v114, 8uLL));
  v140.i64[0] = v137.u32[0];
  v140.i64[1] = v137.u32[1];
  v141 = v140;
  v140.i64[0] = v138.u32[0];
  v140.i64[1] = v138.u32[1];
  v142 = v140;
  v140.i64[0] = v139.u32[0];
  v140.i64[1] = v139.u32[1];
  v143 = vshlq_u64(v64, vnegq_s64(v141));
  v144 = vshlq_u64(v89, vnegq_s64(v142));
  v145 = vshlq_u64(v121, vnegq_s64(v140));
  v146 = vuzp1q_s32(vzip1q_s64(v64, v143), vzip2q_s64(v64, v143));
  v147 = vuzp1q_s32(vzip1q_s64(v89, v144), vzip2q_s64(v89, v144));
  v148 = vuzp1q_s32(vzip1q_s64(v121, v145), vzip2q_s64(v121, v145));
  v149 = vshlq_u32(v146, vnegq_s32((*&v66 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v150 = vshlq_u32(v147, vnegq_s32((*&v81 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v151 = vshlq_u32(v148, vnegq_s32((*&v113 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v152 = vzip2q_s32(v147, v150);
  v153 = vuzp1q_s16(vzip1q_s32(v146, v149), vzip2q_s32(v146, v149));
  v154 = vuzp1q_s16(vzip1q_s32(v147, v150), v152);
  v155 = vuzp1q_s16(vzip1q_s32(v148, v151), vzip2q_s32(v148, v151));
  v156 = vshlq_u16(v153, vnegq_s16((*&v65 & __PAIR128__(0xF0FFF0FFF0FFF0FFLL, 0xF0FFF0FFF0FFF0FFLL))));
  v157 = vshlq_u16(v154, vnegq_s16((*&v80 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v158 = vshlq_u16(v155, vnegq_s16((*&v57 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v152.i32[0] = v20;
  v159 = vzip2q_s16(v153, v156);
  v160 = vzip1q_s16(v153, v156);
  v161 = vzip2q_s16(v154, v157);
  v162 = vzip1q_s16(v154, v157);
  v157.i64[0] = 0x808080808080808;
  v157.i64[1] = 0x808080808080808;
  v163 = vzip2q_s16(v155, v158);
  v164 = vzip1q_s16(v155, v158);
  v165 = vuzp1q_s8(v160, v159);
  v158.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v158.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v166 = vsubq_s8(v63, v65);
  v167 = vuzp1q_s8(v162, v161);
  v162.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v162.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v168 = vsubq_s8(v157, v80);
  v169 = vsubq_s8(v157, v56);
  v170 = vsubq_s8(v157, v57);
  v171 = vuzp1q_s8(v164, v163);
  v172 = vzip1_s32(*v126.i8, *&vextq_s8(v126, v126, 8uLL));
  v173.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v173.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v163.i64[0] = 0x808080808080808;
  v163.i64[1] = 0x808080808080808;
  v152.i8[1] = BYTE1(v20);
  v174 = vaddq_s8(v65, v158);
  v175 = vshlq_s8(v165, v166);
  v176 = vaddq_s8(v80, v162);
  v177 = vaddq_s8(v56, v162);
  v178 = vshlq_s8(v79, v169);
  v179 = vaddq_s8(v57, v162);
  v180 = vshlq_s8(v171, v170);
  v140.i64[0] = v172.u32[0];
  v140.i64[1] = v172.u32[1];
  v181 = *&v58 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
  v182 = vaddq_s8(v58, v173);
  v183 = vsubq_s8(v163, v58);
  v184 = vdupq_lane_s16(*v152.i8, 0);
  v185 = vshlq_s8(v175, v174);
  v186 = vshlq_s8(vshlq_s8(v167, v168), v176);
  v187 = vshlq_u64(v133, vnegq_s64(v140));
  v188 = vuzp1q_s32(vzip1q_s64(v133, v187), vzip2q_s64(v133, v187));
  v189 = vshlq_u32(v188, vnegq_s32((*&v125 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v190 = vuzp1q_s16(vzip1q_s32(v188, v189), vzip2q_s32(v188, v189));
  v191 = vshlq_u16(v190, vnegq_s16(v181));
  v192 = vaddq_s8(vandq_s8(v185, v59), v186);
  v193 = vdupq_lane_s16(*v185.i8, 0);
  v194 = vsubq_s8(v192, vandq_s8(v59, v193));
  v195 = vsubq_s8(vshlq_s8(v178, v177), vandq_s8(v60, v193));
  v196 = vsubq_s8(vshlq_s8(v180, v179), vandq_s8(v61, v193));
  v197 = vandq_s8(v62, v193);
  v198.i64[0] = 0x101010101010101;
  v198.i64[1] = 0x101010101010101;
  v199 = vaddlvq_s8(vceqq_s8(v27, v198));
  v200 = vsubq_s8(vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v190, v191), vzip2q_s16(v190, v191)), v183), v182), v197);
  if (v199)
  {
    v201 = vandq_s8(v23, v198);
    v202 = vnegq_s8(v201);
    v203 = v194;
    v203.i16[0] = v194.i16[7];
    v203.i16[7] = v194.i16[0];
    v204 = vorrq_s8(vandq_s8(v203, v202), vandq_s8(v194, vceqzq_s8(v201)));
    v205 = vaddq_s8(v204, vandq_s8(vqtbl1q_s8(v204, xmmword_29D2F0E60), v202));
    v194 = vaddq_s8(v205, vandq_s8(vqtbl1q_s8(v205, xmmword_29D2F0E70), v202));
    v206 = vaddq_s8(vandq_s8(vqtbl1q_s8(v195, xmmword_29D2F0E80), v202), v195);
    v195 = vaddq_s8(vandq_s8(vqtbl1q_s8(v206, xmmword_29D2F0E90), v202), v206);
    v207 = vaddq_s8(vandq_s8(vqtbl1q_s8(v196, xmmword_29D2F0EA0), v202), v196);
    v196 = vaddq_s8(vandq_s8(vqtbl1q_s8(v207, xmmword_29D2F0EB0), v202), v207);
    v208 = vaddq_s8(vandq_s8(vqtbl1q_s8(v200, xmmword_29D2F0EC0), v202), v200);
    v200 = vaddq_s8(vandq_s8(vqtbl1q_s8(v208, xmmword_29D2F0ED0), v202), v208);
  }

  v209 = vaddq_s8(v194, v184);
  v210 = vaddq_s8(v195, v184);
  v211 = vaddq_s8(v196, v184);
  v212 = vaddq_s8(v200, v184);
  v213.i64[0] = 0x1010101010101010;
  v213.i64[1] = 0x1010101010101010;
  v214 = vcgtq_u8(v213, v23);
  *a1 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v209, xmmword_29D2F0EE0), v214), v209);
  a1[1] = vaddq_s8(vbicq_s8(vqtbl1q_s8(v210, xmmword_29D2F0EE0), v214), v210);
  v215 = (a1 + a2);
  *v215 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v211, xmmword_29D2F0EE0), v214), v211);
  v215[1] = vaddq_s8(vbicq_s8(vqtbl1q_s8(v212, xmmword_29D2F0EE0), v214), v212);
  return v134;
}

_OWORD *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(_OWORD *result, uint64_t a2, _OWORD *a3, char *a4, unsigned int a5, unsigned int a6)
{
  v6 = 0;
  if (a5 && a6)
  {
    v7 = result[1];
    v8 = *(result + a2);
    v9 = *(result + a2 + 16);
    *a3 = *result;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v9;
    a3 += 4;
    v6 = 63;
  }

  v10 = 0;
  *a4 = v6;
  if (a5 >= 3 && a6)
  {
    v11 = result[3];
    v12 = (result + a2 + 32);
    v13 = *v12;
    v14 = v12[1];
    *a3 = result[2];
    a3[1] = v11;
    a3[2] = v13;
    a3[3] = v14;
    a3 += 4;
    v10 = 63;
  }

  v15 = 0;
  v16 = 2 * a2;
  a4[1] = v10;
  if (a5 && a6 >= 3)
  {
    v17 = *(result + v16 + 16);
    v18 = (result + v16 + a2);
    v19 = *v18;
    v20 = v18[1];
    *a3 = *(result + 2 * a2);
    a3[1] = v17;
    a3[2] = v19;
    a3[3] = v20;
    a3 += 4;
    v15 = 63;
  }

  v21 = 0;
  a4[2] = v15;
  if (a5 >= 3 && a6 >= 3)
  {
    v22 = *(result + v16 + 48);
    v23 = (result + v16 + a2 + 32);
    v24 = *v23;
    v25 = v23[1];
    *a3 = *(result + v16 + 32);
    a3[1] = v22;
    a3[2] = v24;
    a3[3] = v25;
    a3 += 4;
    v21 = 63;
  }

  v26 = 0;
  a4[3] = v21;
  if (a5 >= 5 && a6)
  {
    v27 = result[5];
    v28 = (result + a2 + 64);
    v29 = *v28;
    v30 = v28[1];
    *a3 = result[4];
    a3[1] = v27;
    a3[2] = v29;
    a3[3] = v30;
    a3 += 4;
    v26 = 63;
  }

  v31 = 0;
  a4[4] = v26;
  if (a5 >= 7 && a6)
  {
    v32 = result[7];
    v33 = (result + a2 + 96);
    v34 = *v33;
    v35 = v33[1];
    *a3 = result[6];
    a3[1] = v32;
    a3[2] = v34;
    a3[3] = v35;
    a3 += 4;
    v31 = 63;
  }

  v36 = 0;
  a4[5] = v31;
  if (a5 >= 5 && a6 >= 3)
  {
    v37 = *(result + v16 + 80);
    v38 = (result + v16 + a2 + 64);
    v39 = *v38;
    v40 = v38[1];
    *a3 = *(result + v16 + 64);
    a3[1] = v37;
    a3[2] = v39;
    a3[3] = v40;
    a3 += 4;
    v36 = 63;
  }

  v41 = 0;
  a4[6] = v36;
  if (a5 >= 7 && a6 >= 3)
  {
    v42 = result + v16;
    v43 = *(v42 + 6);
    v44 = *(v42 + 7);
    v45 = &v42[a2 + 96];
    v46 = *v45;
    v47 = *(v45 + 1);
    *a3 = v43;
    a3[1] = v44;
    a3[2] = v46;
    a3[3] = v47;
    v41 = 63;
  }

  a4[7] = v41;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int8x8_t a4, __n128 a5)
{
  v8 = *a3;
  if (v8 == 63)
  {
    v10 = *a2;
    a5 = *(a2 + 16);
    v11 = *(a2 + 32);
    v12 = *(a2 + 48);
    *a1 = *a2;
    *(a1 + 16) = a5;
    *(a1 + 128) = v11;
    *(a1 + 144) = v12;
    v9 = 64;
  }

  else if (v8 == 1)
  {
    v10 = vld1q_dup_s16(a2);
    *a1 = v10;
    *(a1 + 16) = v10;
    *(a1 + 128) = v10;
    *(a1 + 144) = v10;
    v9 = 2;
  }

  else if (*a3)
  {
    v9 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(a1, 128, a2, v8, a4, a5.n128_u64[0]);
  }

  else
  {
    v9 = 0;
    v10.i64[0] = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
  }

  v13 = a2 + v9;
  v14 = a3[1];
  if (a3[1])
  {
    if (v14 == 1)
    {
      v15 = vld1q_dup_s16(v13);
      *(a1 + 32) = v15;
      *(a1 + 48) = v15;
      *(a1 + 160) = v15;
      *(a1 + 176) = v15;
      v18 = 2;
    }

    else if (v14 == 63)
    {
      v15 = *v13;
      a5 = *(v13 + 16);
      v16 = *(v13 + 32);
      v17 = *(v13 + 48);
      *(a1 + 32) = *v13;
      *(a1 + 48) = a5;
      *(a1 + 160) = v16;
      *(a1 + 176) = v17;
      v18 = 64;
    }

    else
    {
      v18 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 32), 128, v13, v14, *v10.i8, a5.n128_u64[0]);
    }
  }

  else
  {
    v18 = 0;
    v15.i64[0] = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
  }

  v19 = v13 + v18;
  v20 = a3[2];
  if (a3[2])
  {
    if (v20 == 1)
    {
      v21 = vld1q_dup_s16(v19);
      *(a1 + 256) = v21;
      *(a1 + 272) = v21;
      *(a1 + 384) = v21;
      *(a1 + 400) = v21;
      v24 = 2;
    }

    else if (v20 == 63)
    {
      v21 = *v19;
      a5 = *(v19 + 16);
      v22 = *(v19 + 32);
      v23 = *(v19 + 48);
      *(a1 + 256) = *v19;
      *(a1 + 272) = a5;
      *(a1 + 384) = v22;
      *(a1 + 400) = v23;
      v24 = 64;
    }

    else
    {
      v24 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 256), 128, v19, v20, *v15.i8, a5.n128_u64[0]);
    }
  }

  else
  {
    v24 = 0;
    v21.i64[0] = 0;
    *(a1 + 256) = 0u;
    *(a1 + 272) = 0u;
    *(a1 + 384) = 0u;
    *(a1 + 400) = 0u;
  }

  v25 = v19 + v24;
  v26 = a3[3];
  if (a3[3])
  {
    if (v26 == 1)
    {
      v27 = vld1q_dup_s16(v25);
      *(a1 + 288) = v27;
      *(a1 + 304) = v27;
      *(a1 + 416) = v27;
      *(a1 + 432) = v27;
      v30 = 2;
    }

    else if (v26 == 63)
    {
      v27 = *v25;
      a5 = *(v25 + 16);
      v28 = *(v25 + 32);
      v29 = *(v25 + 48);
      *(a1 + 288) = *v25;
      *(a1 + 304) = a5;
      *(a1 + 416) = v28;
      *(a1 + 432) = v29;
      v30 = 64;
    }

    else
    {
      v30 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 288), 128, v25, v26, *v21.i8, a5.n128_u64[0]);
    }
  }

  else
  {
    v30 = 0;
    v27.i64[0] = 0;
    *(a1 + 288) = 0u;
    *(a1 + 304) = 0u;
    *(a1 + 416) = 0u;
    *(a1 + 432) = 0u;
  }

  v31 = v25 + v30;
  v32 = a3[4];
  if (a3[4])
  {
    if (v32 == 1)
    {
      v33 = vld1q_dup_s16(v31);
      *(a1 + 64) = v33;
      *(a1 + 80) = v33;
      *(a1 + 192) = v33;
      *(a1 + 208) = v33;
      v36 = 2;
    }

    else if (v32 == 63)
    {
      v33 = *v31;
      a5 = *(v31 + 16);
      v34 = *(v31 + 32);
      v35 = *(v31 + 48);
      *(a1 + 64) = *v31;
      *(a1 + 80) = a5;
      *(a1 + 192) = v34;
      *(a1 + 208) = v35;
      v36 = 64;
    }

    else
    {
      v36 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 64), 128, v31, v32, *v27.i8, a5.n128_u64[0]);
    }
  }

  else
  {
    v36 = 0;
    v33.i64[0] = 0;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
  }

  v37 = v31 + v36;
  v38 = a3[5];
  if (a3[5])
  {
    if (v38 == 1)
    {
      v39 = vld1q_dup_s16(v37);
      *(a1 + 96) = v39;
      *(a1 + 112) = v39;
      *(a1 + 224) = v39;
      *(a1 + 240) = v39;
      v42 = 2;
    }

    else if (v38 == 63)
    {
      v39 = *v37;
      a5 = *(v37 + 16);
      v40 = *(v37 + 32);
      v41 = *(v37 + 48);
      *(a1 + 96) = *v37;
      *(a1 + 112) = a5;
      *(a1 + 224) = v40;
      *(a1 + 240) = v41;
      v42 = 64;
    }

    else
    {
      v42 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 96), 128, v37, v38, *v33.i8, a5.n128_u64[0]);
    }
  }

  else
  {
    v42 = 0;
    v39.i64[0] = 0;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
  }

  v43 = v37 + v42;
  v44 = a3[6];
  if (!a3[6])
  {
    result = 0;
    v45.i64[0] = 0;
    *(a1 + 320) = 0u;
    *(a1 + 336) = 0u;
    *(a1 + 448) = 0u;
    *(a1 + 464) = 0u;
    v49 = a3[7];
    if (a3[7])
    {
      goto LABEL_49;
    }

LABEL_54:
    v54 = 0uLL;
    goto LABEL_55;
  }

  if (v44 == 1)
  {
    v45 = vld1q_dup_s16(v43);
    *(a1 + 320) = v45;
    *(a1 + 336) = v45;
    *(a1 + 448) = v45;
    *(a1 + 464) = v45;
    result = 2;
    v49 = a3[7];
    if (a3[7])
    {
      goto LABEL_49;
    }

    goto LABEL_54;
  }

  if (v44 == 63)
  {
    v45 = *v43;
    a5 = *(v43 + 16);
    v46 = *(v43 + 32);
    v47 = *(v43 + 48);
    *(a1 + 320) = *v43;
    *(a1 + 336) = a5;
    *(a1 + 448) = v46;
    *(a1 + 464) = v47;
    result = 64;
    v49 = a3[7];
    if (!a3[7])
    {
      goto LABEL_54;
    }
  }

  else
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 320), 128, v43, v44, *v39.i8, a5.n128_u64[0]);
    v49 = a3[7];
    if (!a3[7])
    {
      goto LABEL_54;
    }
  }

LABEL_49:
  v50 = v43 + result;
  if (v49 == 1)
  {
    v54 = vld1q_dup_s16(v50);
LABEL_55:
    *(a1 + 352) = v54;
    *(a1 + 368) = v54;
    *(a1 + 480) = v54;
    *(a1 + 496) = v54;
    return result;
  }

  if (v49 == 63)
  {
    v51 = *(v50 + 16);
    v52 = *(v50 + 32);
    v53 = *(v50 + 48);
    *(a1 + 352) = *v50;
    *(a1 + 368) = v51;
    *(a1 + 480) = v52;
    *(a1 + 496) = v53;
  }

  else
  {

    return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 352), 128, v50, v49, *v45.i8, a5.n128_u64[0]);
  }

  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(int8x16_t *a1, char *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  if (a5)
  {
    v6 = a6 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  v8 = vdupq_lane_s16(*a3, 0);
  v9 = vsubq_s8(*a3, v8);
  v10 = vsubq_s8(*(a3 + 16), v8);
  v11 = vsubq_s8(*(a3 + a4), v8);
  v12 = vsubq_s8(*(a3 + a4 + 16), v8);
  v13 = vqtbl1q_s8(v9, xmmword_29D2F0EF0);
  v14 = vpmaxq_s8(v13, v13);
  v15 = vpminq_s8(v13, v13);
  v16 = vpmaxq_s8(v14, v14);
  v17 = vpminq_s8(v15, v15);
  v18 = vpmaxq_s8(v16, v16);
  v19 = vpminq_s8(v17, v17);
  v20 = vzip1q_s8(v18, v19);
  v21.i64[0] = 0x808080808080808;
  v21.i64[1] = 0x808080808080808;
  v22 = vbicq_s8(vsubq_s8(v21, vclsq_s8(v20)), vceqzq_s8(v20));
  v23 = vpmaxq_s8(v22, v22);
  v24 = vqtbl1q_s8(v10, xmmword_29D2F0EF0);
  v25 = vpmaxq_s8(v24, v24);
  v26 = vpminq_s8(v24, v24);
  v27 = vpmaxq_s8(v25, v25);
  v28 = vpminq_s8(v26, v26);
  v29 = vpmaxq_s8(v27, v27);
  v30 = vpminq_s8(v28, v28);
  v31 = vmaxq_s8(v18, v29);
  v32 = vminq_s8(v19, v30);
  v33 = vzip1q_s8(v29, v30);
  v34 = vbicq_s8(vsubq_s8(v21, vclsq_s8(v33)), vceqzq_s8(v33));
  v35 = vpmaxq_s8(v34, v34);
  v36 = vqtbl1q_s8(v11, xmmword_29D2F0EF0);
  v37 = vpmaxq_s8(v36, v36);
  v38 = vpminq_s8(v36, v36);
  v39 = vpmaxq_s8(v37, v37);
  v40 = vpminq_s8(v38, v38);
  v41 = vpmaxq_s8(v39, v39);
  v42 = vpminq_s8(v40, v40);
  v43 = vmaxq_s8(v31, v41);
  v44 = vminq_s8(v32, v42);
  v45 = vzip1q_s8(v41, v42);
  v46 = vbicq_s8(vsubq_s8(v21, vclsq_s8(v45)), vceqzq_s8(v45));
  v47 = vpmaxq_s8(v46, v46);
  v48 = vqtbl1q_s8(v12, xmmword_29D2F0EF0);
  v49 = vpmaxq_s8(v48, v48);
  v50 = vpminq_s8(v48, v48);
  v51 = vpmaxq_s8(v49, v49);
  v52 = vpminq_s8(v50, v50);
  v53 = vpmaxq_s8(v51, v51);
  v54 = vpminq_s8(v52, v52);
  v55 = vmaxq_s8(v43, v53);
  v56 = vminq_s8(v44, v54);
  v57 = vzip1q_s8(v53, v54);
  v58 = vbicq_s8(vsubq_s8(v21, vclsq_s8(v57)), vceqzq_s8(v57));
  v59 = vpmaxq_s8(v58, v58);
  v60 = vmaxq_s8(vmaxq_s8(v23, v35), vmaxq_s8(v47, v59));
  v61 = vclzq_s8(vsubq_s8(v55, v56));
  v62 = vsubq_s8(v21, v61);
  v63 = vminq_s8(v62, v60);
  if (vmaxvq_s8(v63))
  {
    v393 = *a3;
    v394 = *(a3 + 16);
    v395 = *(a3 + a4 + 16);
    v396 = *(a3 + a4);
    v64.i64[0] = -1;
    v64.i64[1] = -1;
    v65.i64[0] = 0x707070707070707;
    v65.i64[1] = 0x707070707070707;
    v66 = vcgtq_s8(v60, v62);
    v397 = vandq_s8(vsubq_s8(vshlq_s8(v64, vsubq_s8(v65, v61)), v56), v66);
    v67.i64[0] = 0x303030303030303;
    v67.i64[1] = 0x303030303030303;
    v68 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v23), v67), 0);
    v69 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v35), v67), 0);
    v70 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v47), v67), 0);
    v71 = vmaxq_s8(vminq_s8(vsubq_s8(v63, v59), v67), 0);
    v72.i64[0] = 0x404040404040404;
    v72.i64[1] = 0x404040404040404;
    v73 = vorrq_s8(vbicq_s8(v72, vceqq_s8(vaddq_s8(v71, v70), vnegq_s8(vaddq_s8(v68, v69)))), vorrq_s8(vandq_s8(vceqzq_s8(v63), v67), vandq_s8(v66, v21)));
    v74 = vsubq_s8(v9, vqtbl1q_s8(v9, xmmword_29D2F0EE0));
    v75 = vsubq_s8(v10, vqtbl1q_s8(v10, xmmword_29D2F0EE0));
    v76 = vsubq_s8(v11, vqtbl1q_s8(v11, xmmword_29D2F0EE0));
    v77 = vsubq_s8(v12, vqtbl1q_s8(v12, xmmword_29D2F0EE0));
    v78 = vqtbl1q_s8(v74, xmmword_29D2F0EF0);
    v79 = vpmaxq_s8(v78, v78);
    v80 = vpminq_s8(v78, v78);
    v81 = vpmaxq_s8(v79, v79);
    v82 = vpminq_s8(v80, v80);
    v83 = vpmaxq_s8(v81, v81);
    v84 = vpminq_s8(v82, v82);
    v85 = vzip1q_s8(v83, v84);
    v86 = vbicq_s8(vsubq_s8(v21, vclsq_s8(v85)), vceqzq_s8(v85));
    v87 = v12;
    v88 = vpmaxq_s8(v86, v86);
    v89 = vqtbl1q_s8(v75, xmmword_29D2F0EF0);
    v90 = vpmaxq_s8(v89, v89);
    v91 = vpminq_s8(v89, v89);
    v92 = vpmaxq_s8(v90, v90);
    v93 = vpminq_s8(v91, v91);
    v94 = vpmaxq_s8(v92, v92);
    v95 = vpminq_s8(v93, v93);
    v96 = vmaxq_s8(v83, v94);
    v97 = vminq_s8(v84, v95);
    v98 = vzip1q_s8(v94, v95);
    v99 = vbicq_s8(vsubq_s8(v21, vclsq_s8(v98)), vceqzq_s8(v98));
    v100 = vpmaxq_s8(v99, v99);
    v101 = vqtbl1q_s8(v76, xmmword_29D2F0EF0);
    v102 = vpmaxq_s8(v101, v101);
    v103 = vpminq_s8(v101, v101);
    v104 = vpmaxq_s8(v102, v102);
    v105 = vpminq_s8(v103, v103);
    v106 = vpmaxq_s8(v104, v104);
    v107 = vpminq_s8(v105, v105);
    v108 = vmaxq_s8(v96, v106);
    v109 = vminq_s8(v97, v107);
    v110 = vzip1q_s8(v106, v107);
    v111 = vbicq_s8(vsubq_s8(v21, vclsq_s8(v110)), vceqzq_s8(v110));
    v112 = vpmaxq_s8(v111, v111);
    v113 = vqtbl1q_s8(v77, xmmword_29D2F0EF0);
    v114 = vpmaxq_s8(v113, v113);
    v115 = vpminq_s8(v113, v113);
    v116 = vpmaxq_s8(v114, v114);
    v117 = vpminq_s8(v115, v115);
    v118 = vpmaxq_s8(v116, v116);
    v119 = vpminq_s8(v117, v117);
    v120 = vmaxq_s8(v108, v118);
    v121 = vminq_s8(v109, v119);
    v122 = vzip1q_s8(v118, v119);
    v123 = vbicq_s8(vsubq_s8(v21, vclsq_s8(v122)), vceqzq_s8(v122));
    v124 = vpmaxq_s8(v123, v123);
    v125 = vmaxq_s8(vmaxq_s8(v88, v100), vmaxq_s8(v112, v124));
    v126 = vclzq_s8(vsubq_s8(v120, v121));
    v127 = vsubq_s8(v21, v126);
    v128 = vcgtq_s8(v125, v127);
    v129 = vminq_s8(v127, v125);
    v127.i64[0] = 0x1010101010101010;
    v127.i64[1] = 0x1010101010101010;
    v130.i64[0] = 0x1818181818181818;
    v130.i64[1] = 0x1818181818181818;
    v131 = vorrq_s8(vandq_s8(vceqzq_s8(v129), v67), vbslq_s8(v128, v130, v127));
    v132 = vmaxq_s8(vminq_s8(vsubq_s8(v129, v88), v67), 0);
    v133 = vmaxq_s8(vminq_s8(vsubq_s8(v129, v100), v67), 0);
    v134 = vmaxq_s8(vminq_s8(vsubq_s8(v129, v112), v67), 0);
    v135 = vmaxq_s8(vminq_s8(vsubq_s8(v129, v124), v67), 0);
    v136 = vsubq_s8(v129, v132);
    v137 = vsubq_s8(v129, v133);
    v138 = vsubq_s8(v129, v134);
    v139 = vsubq_s8(v129, v135);
    v140 = vorrq_s8(v131, vbicq_s8(v72, vceqq_s8(vaddq_s8(v135, v134), vnegq_s8(vaddq_s8(v132, v133)))));
    v141 = vmovl_u8(*v140.i8);
    v133.i64[0] = 0x8000800080008;
    v133.i64[1] = 0x8000800080008;
    v132.i64[0] = 0x2000200020002;
    v132.i64[1] = 0x2000200020002;
    v142 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v138.i8, *v137.i8), *v139.i8), 3uLL), *v136.i8, 0x707070707070707), vandq_s8(vshll_n_u8(*v140.i8, 1uLL), v133)), vbicq_s8(vmovl_s8(*v129.i8), vceqzq_s16((*&v141 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8))))), vandq_s8(vceqq_s16((*&v141 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v132), v133));
    v143 = vceqq_s16((*&vmovl_u8(*v73.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v132);
    v144 = vsubq_s8(v63, v68);
    v145 = vsubq_s8(v63, v69);
    v146 = vsubq_s8(v63, v70);
    v147 = vsubq_s8(v63, v71);
    v148 = vdupq_lane_s16(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddw_s8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v146.i8, *v145.i8), *v147.i8), 3uLL), *v144.i8, 0x707070707070707), vbic_s8(*v63.i8, vcgt_u8(0x808080808080808, *v73.i8))), (*&vshll_n_u8(*v73.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9))), vandq_s8(v143, v133)), v142)), 0);
    if (vaddlvq_s8(v148))
    {
      v149.i64[0] = 0x707070707070707;
      v149.i64[1] = 0x707070707070707;
      v150.i64[0] = -1;
      v150.i64[1] = -1;
      v8 = vbslq_s8(v148, vsubq_s8(v8, vqtbl1q_s8(v8, xmmword_29D2F0EE0)), v8);
      v9 = vbslq_s8(v148, v74, v9);
      v10 = vbslq_s8(v148, v75, v10);
      v11 = vbslq_s8(v148, v76, v11);
      v87 = vbslq_s8(v148, v77, v87);
      v144 = vbslq_s8(v148, v136, v144);
      v145 = vbslq_s8(v148, v137, v145);
      v146 = vbslq_s8(v148, v138, v146);
      v147 = vbslq_s8(v148, v139, v147);
      v151 = vbslq_s8(v148, vandq_s8(vsubq_s8(vshlq_s8(v150, vsubq_s8(v149, v126)), v121), v128), v397);
      v63 = vbslq_s8(v148, v129, v63);
      v73 = vbslq_s8(v148, v140, v73);
    }

    else
    {
      v151 = v397;
    }

    if (v7)
    {
      v154 = v11;
    }

    else
    {
      v398 = v151;
      v155 = vsubq_s8(v393, vqtbl1q_s8(v393, xmmword_29D2F0F00));
      v156 = *(a3 + 16);
      v156.i16[7] = HIWORD(*a3);
      v157 = vsubq_s8(v394, vqtbl1q_s8(v156, xmmword_29D2F0F10));
      v158 = *(a3 + a4);
      v158.i16[7] = HIWORD(*a3);
      v159 = *(a3 + a4 + 16);
      v159.i16[7] = v158.i16[7];
      v160 = vsubq_s8(v396, vqtbl1q_s8(v158, xmmword_29D2F0F20));
      v161 = vsubq_s8(v395, vqtbl1q_s8(v159, xmmword_29D2F0F30));
      v162 = v155;
      v162.i16[0] = v155.i16[7];
      v162.i16[7] = v155.i16[0];
      v163 = vqtbl1q_s8(v162, xmmword_29D2F0EF0);
      v164 = vpmaxq_s8(v163, v163);
      v165 = vpminq_s8(v163, v163);
      v166 = vpmaxq_s8(v164, v164);
      v167 = vpminq_s8(v165, v165);
      v168 = vpmaxq_s8(v166, v166);
      v169 = vpminq_s8(v167, v167);
      v170 = vzip1q_s8(v168, v169);
      v171.i64[0] = 0x808080808080808;
      v171.i64[1] = 0x808080808080808;
      v172 = vbicq_s8(vsubq_s8(v171, vclsq_s8(v170)), vceqzq_s8(v170));
      v173 = vpmaxq_s8(v172, v172);
      v392 = v157;
      v174 = vqtbl1q_s8(v157, xmmword_29D2F0EF0);
      v175 = vpmaxq_s8(v174, v174);
      v176 = vpminq_s8(v174, v174);
      v177 = vpmaxq_s8(v175, v175);
      v178 = vpminq_s8(v176, v176);
      v179 = vpmaxq_s8(v177, v177);
      v180 = vpminq_s8(v178, v178);
      v181 = vmaxq_s8(v168, v179);
      v182 = vminq_s8(v169, v180);
      v183 = vzip1q_s8(v179, v180);
      v184 = vbicq_s8(vsubq_s8(v171, vclsq_s8(v183)), vceqzq_s8(v183));
      v185 = vpmaxq_s8(v184, v184);
      v186 = vqtbl1q_s8(v160, xmmword_29D2F0EF0);
      v187 = vpmaxq_s8(v186, v186);
      v188 = vpminq_s8(v186, v186);
      v189 = vpmaxq_s8(v187, v187);
      v190 = vpminq_s8(v188, v188);
      v191 = vpmaxq_s8(v189, v189);
      v192 = vpminq_s8(v190, v190);
      v193 = vmaxq_s8(v181, v191);
      v194 = vminq_s8(v182, v192);
      v195 = vzip1q_s8(v191, v192);
      v196 = vbicq_s8(vsubq_s8(v171, vclsq_s8(v195)), vceqzq_s8(v195));
      v197 = vpmaxq_s8(v196, v196);
      v198 = vqtbl1q_s8(v161, xmmword_29D2F0EF0);
      v199 = vpmaxq_s8(v198, v198);
      v200 = vpminq_s8(v198, v198);
      v201 = vpmaxq_s8(v199, v199);
      v202 = vpminq_s8(v200, v200);
      v203 = vpmaxq_s8(v201, v201);
      v204 = vpminq_s8(v202, v202);
      v205 = vmaxq_s8(v193, v203);
      v206 = vminq_s8(v194, v204);
      v207 = vzip1q_s8(v203, v204);
      v208 = vbicq_s8(vsubq_s8(v171, vclsq_s8(v207)), vceqzq_s8(v207));
      v209 = vpmaxq_s8(v208, v208);
      v210 = vmaxq_s8(vmaxq_s8(v173, v185), vmaxq_s8(v197, v209));
      v211 = vclzq_s8(vsubq_s8(v205, v206));
      v212 = vsubq_s8(v171, v211);
      v213 = vcgtq_s8(v210, v212);
      v214 = vminq_s8(v212, v210);
      v212.i64[0] = 0x909090909090909;
      v212.i64[1] = 0x909090909090909;
      v215.i64[0] = 0x202020202020202;
      v215.i64[1] = 0x202020202020202;
      v216 = vorrq_s8(vandq_s8(vceqzq_s8(v214), v215), vsubq_s8(vandq_s8(v213, v212), vmvnq_s8(v213)));
      v171.i64[0] = 0x303030303030303;
      v171.i64[1] = 0x303030303030303;
      v217 = vmaxq_s8(vminq_s8(vsubq_s8(v214, v173), v171), 0);
      v218 = vmaxq_s8(vminq_s8(vsubq_s8(v214, v185), v171), 0);
      v219 = vmaxq_s8(vminq_s8(vsubq_s8(v214, v197), v171), 0);
      v220 = vmaxq_s8(vminq_s8(vsubq_s8(v214, v209), v171), 0);
      v221 = vsubq_s8(v214, v217);
      v222 = vsubq_s8(v214, v218);
      v223 = vsubq_s8(v214, v219);
      v224 = vsubq_s8(v214, v220);
      v225 = vceqq_s8(vaddq_s8(v220, v219), vnegq_s8(vaddq_s8(v217, v218)));
      v217.i64[0] = 0x404040404040404;
      v217.i64[1] = 0x404040404040404;
      v226 = vorrq_s8(v216, vbicq_s8(v217, v225));
      v219.i64[0] = 0x3000300030003;
      v219.i64[1] = 0x3000300030003;
      v227 = vmovl_s8(*v73.i8);
      v171.i64[0] = 0x8000800080008;
      v171.i64[1] = 0x8000800080008;
      v228 = vbicq_s8(vmovl_s8(*v63.i8), vceqzq_s16(vandq_s8(v227, v171)));
      v229 = vandq_s8(v227, v219);
      v219.i64[0] = 0x2000200020002;
      v219.i64[1] = 0x2000200020002;
      v230 = vdupq_lane_s16(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v228, vandq_s8(vshll_n_s8(*v73.i8, 1uLL), v171)), vandq_s8(vceqq_s16(v229, v219), v171)), *v144.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v146.i8, *v145.i8), *v147.i8), 3uLL)), vaddw_s8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v223.i8, *v222.i8), *v224.i8), 3uLL), *v221.i8, 0x707070707070707), vand_s8(vadd_s8(*v226.i8, *v226.i8), 0x808080808080808)), vbic_s8(*v214.i8, vcgt_u8(0x808080808080808, *v226.i8))))), 0);
      if (vaddlvq_s8(v230))
      {
        v231.i64[0] = 0x707070707070707;
        v231.i64[1] = 0x707070707070707;
        v232.i64[0] = -1;
        v232.i64[1] = -1;
        v8.i16[0] = vbslq_s8(v230, vextq_s8(v393, v393, 0xEuLL), v8).u16[0];
        v9 = vbslq_s8(v230, v162, v9);
        v10 = vbslq_s8(v230, v392, v10);
        v154 = vbslq_s8(v230, v160, v11);
        v87 = vbslq_s8(v230, v161, v87);
        v144 = vbslq_s8(v230, v221, v144);
        v145 = vbslq_s8(v230, v222, v145);
        v146 = vbslq_s8(v230, v223, v146);
        v147 = vbslq_s8(v230, v224, v147);
        v151 = vbslq_s8(v230, vandq_s8(vsubq_s8(vshlq_s8(v232, vsubq_s8(v231, v211)), v206), v213), v398);
        v63 = vbslq_s8(v230, v214, v63);
        v73 = vbslq_s8(v230, v226, v73);
      }

      else
      {
        v154 = v11;
        v151 = v398;
      }
    }

    v233 = vmovl_s8(*v73.i8);
    v234.i64[0] = 0x8000800080008;
    v234.i64[1] = 0x8000800080008;
    v235 = vbicq_s8(vmovl_s8(*v63.i8), vceqzq_s16(vandq_s8(v233, v234)));
    v236.i64[0] = 0x3000300030003;
    v236.i64[1] = 0x3000300030003;
    v237 = vandq_s8(v233, v236);
    v236.i64[0] = 0x2000200020002;
    v236.i64[1] = 0x2000200020002;
    v238 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v146.i8, *v145.i8), *v147.i8), 3uLL), *v144.i8, 0x707070707070707), vandq_s8(vshll_n_s8(*v73.i8, 1uLL), v234)), v235), vandq_s8(vceqq_s16(v237, v236), v234));
    if ((vpaddq_s16(v238, v238).i16[0] + 37) >= 0x200)
    {
      *a1 = v393;
      a1[1] = v394;
      v152 = 63;
      a1[2] = v396;
      a1[3] = v395;
      result = 64;
    }

    else
    {
      v239 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v240 = 8 * (a1 & 7);
      if (v240)
      {
        v241 = *v239 & ~(-1 << v240);
      }

      else
      {
        v241 = 0;
      }

      v242 = ((v63.i8[0] - 1) & 7) << 10;
      if (!v63.i8[0])
      {
        v242 = 0;
      }

      if (v63.i8[1])
      {
        v243 = ((v63.u8[1] << 13) - 0x2000) & 0xE000;
      }

      else
      {
        v243 = 0;
      }

      *a2 = v73.i8[0] << 6;
      v244 = ((v242 | v243) & 0xFFFFFFFFFFFFFC1FLL | v73.i8[0] & 0x1C | (32 * (v73.i8[1] & 0x1F))) >> 2;
      v245 = v241 | (v244 << v240);
      if (v240 >= 0x32)
      {
        *v239 = v245;
        v245 = v244 >> (-8 * (a1 & 7u));
      }

      v246 = (v240 + 14) & 0x3E;
      v247 = v245 | (v8.u16[0] << v246);
      if (v246 >= 0x30)
      {
        *(v239 + (((v240 + 14) >> 3) & 8)) = v247;
        v247 = v8.u16[0] >> -v246;
      }

      v248 = v240 + 30;
      v249 = vsubq_s8(v63, v144);
      v250 = vsubq_s8(v63, v145);
      v251 = vsubq_s8(v63, v146);
      v252 = vsubq_s8(v63, v147);
      v249.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v249, v250), vzip1q_s8(v251, v252)), vzip1q_s16(vtrn2q_s8(v249, v250), vtrn2q_s8(v251, v252))).u64[0];
      v251.i64[0] = 0x202020202020202;
      v251.i64[1] = 0x202020202020202;
      v253 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*&vmovl_u8(*v73.i8), 0x4000400040004)))), v251);
      v251.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v251.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v252.i64[0] = -1;
      v252.i64[1] = -1;
      v254 = vandq_s8(vshlq_u8(v252, vorrq_s8(v253, v251)), v249.u64[0]);
      v255 = vmovl_u8(*v253.i8);
      v256 = vpaddq_s16(vshlq_u16(vmovl_u8(*v254.i8), vtrn1q_s16(0, v255)), vmovl_high_u8(v254));
      v257 = vpaddq_s16(v255, vmovl_high_u8(v253));
      v258 = vmovl_u16(*v257.i8);
      v259 = vmovl_high_u16(v257);
      v260 = vpaddq_s32(vshlq_u32(vmovl_u16(*v256.i8), vtrn1q_s32(0, v258)), vshlq_u32(vmovl_high_u16(v256), vtrn1q_s32(0, v259)));
      v261 = vpaddq_s32(v258, v259);
      v262.i64[0] = v260.u32[0];
      v262.i64[1] = v260.u32[1];
      v263 = v262;
      v262.i64[0] = v260.u32[2];
      v262.i64[1] = v260.u32[3];
      v264 = v262;
      v262.i64[0] = v261.u32[0];
      v262.i64[1] = v261.u32[1];
      v265 = v262;
      v262.i64[0] = v261.u32[2];
      v262.i64[1] = v261.u32[3];
      v266 = vpaddq_s64(vshlq_u64(v263, vzip1q_s64(0, v265)), vshlq_u64(v264, vzip1q_s64(0, v262)));
      v267 = vpaddq_s64(v265, v262);
      v268 = (v240 + 30) & 0x3E;
      v269 = (v266.i64[0] << v268) | v247;
      if ((v267.i64[0] + v268) >= 0x40)
      {
        *(v239 + ((v248 >> 3) & 8)) = v269;
        v269 = v266.i64[0] >> -v268;
      }

      v270 = vceqq_s8(v63, v144);
      v271 = v267.i64[0] + v248;
      v272 = v269 | (v266.i64[1] << v271);
      if ((v271 & 0x3F) + v267.i64[1] >= 0x40)
      {
        *(v239 + ((v271 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v272;
        v272 = v266.i64[1] >> -(v271 & 0x3F);
        if ((v271 & 0x3F) == 0)
        {
          v272 = 0;
        }
      }

      v273 = vandq_s8(v151, v270);
      v274 = v271 + v267.i64[1];
      v275.i64[0] = 0x808080808080808;
      v275.i64[1] = 0x808080808080808;
      v276.i64[0] = -1;
      v276.i64[1] = -1;
      v277 = vandq_s8(vextq_s8(vtstq_s8(v73, v275), 0, 0xEuLL), v63);
      v278.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v278.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v279 = vandq_s8(vshlq_u8(v276, vaddq_s8(v277, v278)), v151);
      v280 = vmovl_u8(*v277.i8);
      v281 = vpaddq_s16(vshlq_u16(vmovl_u8(*v279.i8), vtrn1q_s16(0, v280)), vmovl_high_u8(v279));
      v282 = vpaddq_s16(v280, vmovl_high_u8(v277));
      v283 = vmovl_u16(*v282.i8);
      v284 = vmovl_high_u16(v282);
      v285 = vpaddq_s32(vshlq_u32(vmovl_u16(*v281.i8), vtrn1q_s32(0, v283)), vshlq_u32(vmovl_high_u16(v281), vtrn1q_s32(0, v284)));
      v286 = vpaddq_s32(v283, v284);
      v287.i64[0] = v285.u32[0];
      v287.i64[1] = v285.u32[1];
      v288 = v287;
      v287.i64[0] = v285.u32[2];
      v287.i64[1] = v285.u32[3];
      v289 = v287;
      v287.i64[0] = v286.u32[0];
      v287.i64[1] = v286.u32[1];
      v290 = v287;
      v287.i64[0] = v286.u32[2];
      v287.i64[1] = v286.u32[3];
      v291 = vpaddq_s64(vshlq_u64(v288, vzip1q_s64(0, v290)), vshlq_u64(v289, vzip1q_s64(0, v287)));
      v292 = vpaddq_s64(v290, v287);
      v293 = (v291.i64[0] << v274) | v272;
      if (v292.i64[0] + (v274 & 0x3F) >= 0x40)
      {
        *(v239 + ((v274 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v293;
        v293 = v291.i64[0] >> -(v274 & 0x3F);
        if ((v274 & 0x3F) == 0)
        {
          v293 = 0;
        }
      }

      v294 = vceqq_s8(v63, v145);
      v295 = vaddq_s8(v273, v9);
      v296 = v292.i64[0] + v274;
      v297 = v293 | (v291.i64[1] << v296);
      if ((v296 & 0x3F) + v292.i64[1] >= 0x40)
      {
        *(v239 + ((v296 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v297;
        v297 = v291.i64[1] >> -(v296 & 0x3F);
        if ((v296 & 0x3F) == 0)
        {
          v297 = 0;
        }
      }

      v298 = vandq_s8(v151, v294);
      v299 = v296 + v292.i64[1];
      v300 = vextq_s8(0, v144, 0xEuLL);
      v301.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v301.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v302.i64[0] = -1;
      v302.i64[1] = -1;
      v303 = vandq_s8(vshlq_u8(v302, vaddq_s8(v300, v301)), v295);
      v304 = vmovl_u8(*v300.i8);
      v305 = vmovl_high_u8(v300);
      v306 = vpaddq_s16(vshlq_u16(vmovl_u8(*v303.i8), vtrn1q_s16(0, v304)), vshlq_u16(vmovl_high_u8(v303), vtrn1q_s16(0, v305)));
      v307 = vpaddq_s16(v304, v305);
      v308 = vmovl_u16(*v307.i8);
      v309 = vmovl_high_u16(v307);
      v310 = vpaddq_s32(vshlq_u32(vmovl_u16(*v306.i8), vtrn1q_s32(0, v308)), vshlq_u32(vmovl_high_u16(v306), vtrn1q_s32(0, v309)));
      v311 = vpaddq_s32(v308, v309);
      v312.i64[0] = v310.u32[0];
      v312.i64[1] = v310.u32[1];
      v313 = v312;
      v312.i64[0] = v310.u32[2];
      v312.i64[1] = v310.u32[3];
      v314 = v312;
      v312.i64[0] = v311.u32[0];
      v312.i64[1] = v311.u32[1];
      v315 = v312;
      v312.i64[0] = v311.u32[2];
      v312.i64[1] = v311.u32[3];
      v316 = vpaddq_s64(vshlq_u64(v313, vzip1q_s64(0, v315)), vshlq_u64(v314, vzip1q_s64(0, v312)));
      v317 = vpaddq_s64(v315, v312);
      v318 = (v316.i64[0] << v299) | v297;
      if (v317.i64[0] + (v299 & 0x3F) >= 0x40)
      {
        *(v239 + ((v299 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v318;
        v318 = v316.i64[0] >> -(v299 & 0x3F);
        if ((v299 & 0x3F) == 0)
        {
          v318 = 0;
        }
      }

      v319 = vceqq_s8(v63, v146);
      v320 = vaddq_s8(v10, v298);
      v321 = v317.i64[0] + v299;
      v322 = v318 | (v316.i64[1] << v321);
      if ((v321 & 0x3F) + v317.i64[1] >= 0x40)
      {
        *(v239 + ((v321 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v322;
        v322 = v316.i64[1] >> -(v321 & 0x3F);
        if ((v321 & 0x3F) == 0)
        {
          v322 = 0;
        }
      }

      v323 = vandq_s8(v151, v319);
      v324 = v321 + v317.i64[1];
      v325.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v325.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v326.i64[0] = -1;
      v326.i64[1] = -1;
      v327 = vandq_s8(vshlq_u8(v326, vaddq_s8(v145, v325)), v320);
      v328 = vmovl_u8(*v145.i8);
      v329 = vmovl_high_u8(v145);
      v330 = vpaddq_s16(vshlq_u16(vmovl_u8(*v327.i8), vtrn1q_s16(0, v328)), vshlq_u16(vmovl_high_u8(v327), vtrn1q_s16(0, v329)));
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
      v342 = (v340.i64[0] << v324) | v322;
      if (v341.i64[0] + (v324 & 0x3F) >= 0x40)
      {
        *(v239 + ((v324 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v342;
        v342 = v340.i64[0] >> -(v324 & 0x3F);
        if ((v324 & 0x3F) == 0)
        {
          v342 = 0;
        }
      }

      v343 = vceqq_s8(v63, v147);
      v344 = vaddq_s8(v154, v323);
      v345 = v341.i64[0] + v324;
      v346 = v342 | (v340.i64[1] << v345);
      if ((v345 & 0x3F) + v341.i64[1] >= 0x40)
      {
        *(v239 + ((v345 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v346;
        v346 = v340.i64[1] >> -(v345 & 0x3F);
        if ((v345 & 0x3F) == 0)
        {
          v346 = 0;
        }
      }

      v347 = vandq_s8(v151, v343);
      v348 = v345 + v341.i64[1];
      v349.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v349.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v350.i64[0] = -1;
      v350.i64[1] = -1;
      v351 = vandq_s8(vshlq_u8(v350, vaddq_s8(v146, v349)), v344);
      v352 = vmovl_u8(*v146.i8);
      v353 = vmovl_high_u8(v146);
      v354 = vpaddq_s16(vshlq_u16(vmovl_u8(*v351.i8), vtrn1q_s16(0, v352)), vshlq_u16(vmovl_high_u8(v351), vtrn1q_s16(0, v353)));
      v355 = vpaddq_s16(v352, v353);
      v356 = vmovl_u16(*v355.i8);
      v357 = vmovl_high_u16(v355);
      v358 = vpaddq_s32(vshlq_u32(vmovl_u16(*v354.i8), vtrn1q_s32(0, v356)), vshlq_u32(vmovl_high_u16(v354), vtrn1q_s32(0, v357)));
      v359 = vpaddq_s32(v356, v357);
      v360.i64[0] = v358.u32[0];
      v360.i64[1] = v358.u32[1];
      v361 = v360;
      v360.i64[0] = v358.u32[2];
      v360.i64[1] = v358.u32[3];
      v362 = v360;
      v360.i64[0] = v359.u32[0];
      v360.i64[1] = v359.u32[1];
      v363 = v360;
      v360.i64[0] = v359.u32[2];
      v360.i64[1] = v359.u32[3];
      v364 = vpaddq_s64(vshlq_u64(v361, vzip1q_s64(0, v363)), vshlq_u64(v362, vzip1q_s64(0, v360)));
      v365 = vpaddq_s64(v363, v360);
      v366 = (v364.i64[0] << v348) | v346;
      if (v365.i64[0] + (v348 & 0x3F) >= 0x40)
      {
        *(v239 + ((v348 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v366;
        v366 = v364.i64[0] >> -(v348 & 0x3F);
        if ((v348 & 0x3F) == 0)
        {
          v366 = 0;
        }
      }

      v367 = vaddq_s8(v87, v347);
      v368 = v365.i64[0] + v348;
      v369 = v366 | (v364.i64[1] << v368);
      if ((v368 & 0x3F) + v365.i64[1] >= 0x40)
      {
        *(v239 + ((v368 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v369;
        v369 = v364.i64[1] >> -(v368 & 0x3F);
        if ((v368 & 0x3F) == 0)
        {
          v369 = 0;
        }
      }

      v370 = v368 + v365.i64[1];
      v371.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v371.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v372.i64[0] = -1;
      v372.i64[1] = -1;
      v373 = vandq_s8(vshlq_u8(v372, vaddq_s8(v147, v371)), v367);
      v374 = vmovl_u8(*v147.i8);
      v375 = vmovl_high_u8(v147);
      v376 = vpaddq_s16(vshlq_u16(vmovl_u8(*v373.i8), vtrn1q_s16(0, v374)), vshlq_u16(vmovl_high_u8(v373), vtrn1q_s16(0, v375)));
      v377 = vpaddq_s16(v374, v375);
      v378 = vmovl_u16(*v377.i8);
      v379 = vmovl_high_u16(v377);
      v380 = vpaddq_s32(vshlq_u32(vmovl_u16(*v376.i8), vtrn1q_s32(0, v378)), vshlq_u32(vmovl_high_u16(v376), vtrn1q_s32(0, v379)));
      v381 = vpaddq_s32(v378, v379);
      v382.i64[0] = v380.u32[0];
      v382.i64[1] = v380.u32[1];
      v383 = v382;
      v382.i64[0] = v380.u32[2];
      v382.i64[1] = v380.u32[3];
      v384 = v382;
      v382.i64[0] = v381.u32[0];
      v382.i64[1] = v381.u32[1];
      v385 = v382;
      v382.i64[0] = v381.u32[2];
      v382.i64[1] = v381.u32[3];
      v386 = vpaddq_s64(vshlq_u64(v383, vzip1q_s64(0, v385)), vshlq_u64(v384, vzip1q_s64(0, v382)));
      v387 = vpaddq_s64(v385, v382);
      v388 = (v386.i64[0] << v370) | v369;
      if (v387.i64[0] + (v370 & 0x3F) > 0x3F)
      {
        *(v239 + ((v370 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v388;
        if ((v370 & 0x3F) != 0)
        {
          v388 = v386.i64[0] >> -(v370 & 0x3F);
        }

        else
        {
          v388 = 0;
        }
      }

      v389 = v387.i64[0] + v370;
      v390 = v388 | (v386.i64[1] << v389);
      if ((v389 & 0x3F) + v387.i64[1] >= 0x40)
      {
        *(v239 + ((v389 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v390;
        v390 = v386.i64[1] >> -(v389 & 0x3F);
        if ((v389 & 0x3F) == 0)
        {
          v390 = 0;
        }
      }

      v391 = v389 + v387.i64[1];
      if ((v391 & 0x3F) != 0)
      {
        *(v239 + ((v391 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v390;
      }

      result = (v391 - v240 + 7) >> 3;
      v152 = *a2 | (result - 1);
    }
  }

  else
  {
    a1->i16[0] = *a3;
    v152 = 1;
    result = 2;
  }

  *a2 = v152;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(uint64_t result, uint64_t a2, int8x16_t *a3, char *a4, unsigned int a5, unsigned int a6)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 32, a2, v14, v13);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + v15, a2, v18, v17);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, v11 + v15 + 32, a2, v20, v19);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 64, a2, v23, v22);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 96, a2, v26, v25);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, v11 + v15 + 64, a2, v28, v27);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, v11 + v15 + 96, a2, v30, v29);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v8 = a5 < 4 || a6 < 2;
  v9 = *(a3 + a4);
  v10 = vzip1q_s32(*a3, v9);
  v11 = vzip2q_s32(*a3, v9);
  v12 = (a3 + 2 * a4);
  v13 = *(v12 + a4);
  v14 = vzip1q_s32(*v12, v13);
  v15 = vzip2q_s32(*v12, v13);
  v16 = vdupq_lane_s16(*v10.i8, 0);
  v17 = vsubq_s8(v10, v16);
  v18 = vsubq_s8(v14, v16);
  v19 = vsubq_s8(v11, v16);
  v20 = vsubq_s8(v15, v16);
  v21 = vqtbl1q_s8(v17, xmmword_29D2F0EF0);
  v22 = vpmaxq_s8(v21, v21);
  v23 = vpminq_s8(v21, v21);
  v24 = vpmaxq_s8(v22, v22);
  v25 = vpminq_s8(v23, v23);
  v26 = vpmaxq_s8(v24, v24);
  v27 = vpminq_s8(v25, v25);
  v28 = vzip1q_s8(v26, v27);
  v29.i64[0] = 0x808080808080808;
  v29.i64[1] = 0x808080808080808;
  v30 = vbicq_s8(vsubq_s8(v29, vclsq_s8(v28)), vceqzq_s8(v28));
  v31 = vpmaxq_s8(v30, v30);
  v32 = vqtbl1q_s8(v18, xmmword_29D2F0EF0);
  v33 = vpmaxq_s8(v32, v32);
  v34 = vpminq_s8(v32, v32);
  v35 = vpmaxq_s8(v33, v33);
  v36 = vpminq_s8(v34, v34);
  v37 = vpmaxq_s8(v35, v35);
  v38 = vpminq_s8(v36, v36);
  v39 = vmaxq_s8(v26, v37);
  v40 = vminq_s8(v27, v38);
  v41 = vzip1q_s8(v37, v38);
  v42 = vbicq_s8(vsubq_s8(v29, vclsq_s8(v41)), vceqzq_s8(v41));
  v43 = vpmaxq_s8(v42, v42);
  v44 = vqtbl1q_s8(v19, xmmword_29D2F0EF0);
  v45 = vpmaxq_s8(v44, v44);
  v46 = vpminq_s8(v44, v44);
  v47 = vpmaxq_s8(v45, v45);
  v48 = vpminq_s8(v46, v46);
  v49 = vpmaxq_s8(v47, v47);
  v50 = vpminq_s8(v48, v48);
  v51 = vmaxq_s8(v39, v49);
  v52 = vminq_s8(v40, v50);
  v53 = vzip1q_s8(v49, v50);
  v54 = vbicq_s8(vsubq_s8(v29, vclsq_s8(v53)), vceqzq_s8(v53));
  v55 = vpmaxq_s8(v54, v54);
  v56 = vqtbl1q_s8(v20, xmmword_29D2F0EF0);
  v57 = vpmaxq_s8(v56, v56);
  v58 = vpminq_s8(v56, v56);
  v59 = vpmaxq_s8(v57, v57);
  v60 = vpminq_s8(v58, v58);
  v61 = vpmaxq_s8(v59, v59);
  v62 = vpminq_s8(v60, v60);
  v63 = vmaxq_s8(v51, v61);
  v64 = vminq_s8(v52, v62);
  v65 = vzip1q_s8(v61, v62);
  v66 = vbicq_s8(vsubq_s8(v29, vclsq_s8(v65)), vceqzq_s8(v65));
  v67 = vpmaxq_s8(v66, v66);
  v68 = vmaxq_s8(vmaxq_s8(v31, v43), vmaxq_s8(v55, v67));
  v69 = vclzq_s8(vsubq_s8(v63, v64));
  v70 = vsubq_s8(v29, v69);
  v71 = vminq_s8(v70, v68);
  if (!vmaxvq_s8(v71))
  {
    *a1 = a3->i16[0];
    *a2 = 1;
    return 2;
  }

  v406 = v14;
  v407 = v15;
  v72.i64[0] = -1;
  v72.i64[1] = -1;
  v73.i64[0] = 0x707070707070707;
  v73.i64[1] = 0x707070707070707;
  v74 = vcgtq_s8(v68, v70);
  v409 = vandq_s8(vsubq_s8(vshlq_s8(v72, vsubq_s8(v73, v69)), v64), v74);
  v75.i64[0] = 0x303030303030303;
  v75.i64[1] = 0x303030303030303;
  v76 = vorrq_s8(vandq_s8(vceqzq_s8(v71), v75), vandq_s8(v74, v29));
  v77 = vmaxq_s8(vminq_s8(vsubq_s8(v71, v31), v75), 0);
  v78 = vmaxq_s8(vminq_s8(vsubq_s8(v71, v43), v75), 0);
  v79 = vmaxq_s8(vminq_s8(vsubq_s8(v71, v55), v75), 0);
  v80 = vmaxq_s8(vminq_s8(vsubq_s8(v71, v67), v75), 0);
  v81.i64[0] = 0x404040404040404;
  v81.i64[1] = 0x404040404040404;
  v82 = vorrq_s8(vbicq_s8(v81, vceqq_s8(vaddq_s8(v80, v79), vnegq_s8(vaddq_s8(v77, v78)))), v76);
  v83 = vsubq_s8(v18, vqtbl1q_s8(v18, xmmword_29D2F0EE0));
  v84 = vsubq_s8(v19, vqtbl1q_s8(v19, xmmword_29D2F0EE0));
  v85 = vsubq_s8(v20, vqtbl1q_s8(v20, xmmword_29D2F0EE0));
  v408 = vsubq_s8(v17, vqtbl1q_s8(v17, xmmword_29D2F0EE0));
  v86 = vqtbl1q_s8(v408, xmmword_29D2F0EF0);
  v87 = vpmaxq_s8(v86, v86);
  v88 = vpminq_s8(v86, v86);
  v89 = vpmaxq_s8(v87, v87);
  v90 = vpminq_s8(v88, v88);
  v91 = vpmaxq_s8(v89, v89);
  v92 = vpminq_s8(v90, v90);
  v93 = vzip1q_s8(v91, v92);
  v94 = v19;
  v95 = vbicq_s8(vsubq_s8(v29, vclsq_s8(v93)), vceqzq_s8(v93));
  v96 = vpmaxq_s8(v95, v95);
  v97 = vqtbl1q_s8(v83, xmmword_29D2F0EF0);
  v98 = vpmaxq_s8(v97, v97);
  v99 = vpminq_s8(v97, v97);
  v100 = vpmaxq_s8(v98, v98);
  v101 = vpminq_s8(v99, v99);
  v102 = vpmaxq_s8(v100, v100);
  v103 = vpminq_s8(v101, v101);
  v104 = vmaxq_s8(v91, v102);
  v105 = vminq_s8(v92, v103);
  v106 = vzip1q_s8(v102, v103);
  v107 = vbicq_s8(vsubq_s8(v29, vclsq_s8(v106)), vceqzq_s8(v106));
  v108 = vpmaxq_s8(v107, v107);
  v109 = vqtbl1q_s8(v84, xmmword_29D2F0EF0);
  v110 = vpmaxq_s8(v109, v109);
  v111 = vpminq_s8(v109, v109);
  v112 = vpmaxq_s8(v110, v110);
  v113 = vpminq_s8(v111, v111);
  v114 = vpmaxq_s8(v112, v112);
  v115 = vpminq_s8(v113, v113);
  v116 = vmaxq_s8(v104, v114);
  v117 = vminq_s8(v105, v115);
  v118 = vzip1q_s8(v114, v115);
  v119 = vbicq_s8(vsubq_s8(v29, vclsq_s8(v118)), vceqzq_s8(v118));
  v120 = vpmaxq_s8(v119, v119);
  v121 = vqtbl1q_s8(v85, xmmword_29D2F0EF0);
  v122 = vpmaxq_s8(v121, v121);
  v123 = vpminq_s8(v121, v121);
  v124 = vpmaxq_s8(v122, v122);
  v125 = vpminq_s8(v123, v123);
  v126 = vpmaxq_s8(v124, v124);
  v127 = vpminq_s8(v125, v125);
  v128 = v20;
  v129 = vmaxq_s8(v116, v126);
  v130 = vminq_s8(v117, v127);
  v131 = vzip1q_s8(v126, v127);
  v132 = vbicq_s8(vsubq_s8(v29, vclsq_s8(v131)), vceqzq_s8(v131));
  v133 = vpmaxq_s8(v132, v132);
  v134 = vmaxq_s8(vmaxq_s8(v96, v108), vmaxq_s8(v120, v133));
  v135 = vclzq_s8(vsubq_s8(v129, v130));
  v136 = vsubq_s8(v29, v135);
  v137 = vcgtq_s8(v134, v136);
  v138 = vminq_s8(v136, v134);
  v136.i64[0] = 0x1010101010101010;
  v136.i64[1] = 0x1010101010101010;
  v139.i64[0] = 0x1818181818181818;
  v139.i64[1] = 0x1818181818181818;
  v140 = vorrq_s8(vandq_s8(vceqzq_s8(v138), v75), vbslq_s8(v137, v139, v136));
  v141 = vmaxq_s8(vminq_s8(vsubq_s8(v138, v96), v75), 0);
  v142 = vmaxq_s8(vminq_s8(vsubq_s8(v138, v108), v75), 0);
  v143 = vmaxq_s8(vminq_s8(vsubq_s8(v138, v120), v75), 0);
  v144 = vmaxq_s8(vminq_s8(vsubq_s8(v138, v133), v75), 0);
  v145 = vsubq_s8(v138, v141);
  v146 = vsubq_s8(v138, v142);
  v147 = vsubq_s8(v138, v143);
  v148 = vsubq_s8(v138, v144);
  v149 = vorrq_s8(v140, vbicq_s8(v81, vceqq_s8(vaddq_s8(v144, v143), vnegq_s8(vaddq_s8(v141, v142)))));
  v150 = vmovl_u8(*v149.i8);
  v142.i64[0] = 0x8000800080008;
  v142.i64[1] = 0x8000800080008;
  v141.i64[0] = 0x2000200020002;
  v141.i64[1] = 0x2000200020002;
  v151 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v147.i8, *v146.i8), *v148.i8), 3uLL), *v145.i8, 0x707070707070707), vandq_s8(vshll_n_u8(*v149.i8, 1uLL), v142)), vbicq_s8(vmovl_s8(*v138.i8), vceqzq_s16((*&v150 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8))))), vandq_s8(vceqq_s16((*&v150 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v141), v142));
  v152 = vceqq_s16((*&vmovl_u8(*v82.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v141);
  v153 = vsubq_s8(v71, v77);
  v154 = vsubq_s8(v71, v78);
  v155 = vsubq_s8(v71, v79);
  v156 = vsubq_s8(v71, v80);
  v157 = vdupq_lane_s16(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddw_s8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v155.i8, *v154.i8), *v156.i8), 3uLL), *v153.i8, 0x707070707070707), vbic_s8(*v71.i8, vcgt_u8(0x808080808080808, *v82.i8))), (*&vshll_n_u8(*v82.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9))), vandq_s8(v152, v142)), v151)), 0);
  if (vaddlvq_s8(v157))
  {
    v158.i64[0] = 0x707070707070707;
    v158.i64[1] = 0x707070707070707;
    v159.i64[0] = -1;
    v159.i64[1] = -1;
    v160 = vandq_s8(vsubq_s8(vshlq_s8(v159, vsubq_s8(v158, v135)), v130), v137);
    v16 = vbslq_s8(v157, vsubq_s8(v16, vqtbl1q_s8(v16, xmmword_29D2F0EE0)), v16);
    v161 = vbslq_s8(v157, v408, v17);
    v162 = vbslq_s8(v157, v83, v18);
    v94 = vbslq_s8(v157, v84, v94);
    v128 = vbslq_s8(v157, v85, v128);
    v153 = vbslq_s8(v157, v145, v153);
    v154 = vbslq_s8(v157, v146, v154);
    v155 = vbslq_s8(v157, v147, v155);
    v156 = vbslq_s8(v157, v148, v156);
    v163 = vbslq_s8(v157, v160, v409);
    v71 = vbslq_s8(v157, v138, v71);
    v82 = vbslq_s8(v157, v149, v82);
    if (v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v163 = v409;
    v162 = v18;
    v161 = v17;
    if (v8)
    {
      goto LABEL_16;
    }
  }

  v410 = v128;
  v165 = v162;
  v166 = v94;
  v167 = vsubq_s8(v10, vqtbl1q_s8(v10, xmmword_29D2F0F00));
  v168 = v406;
  v168.i16[7] = v10.i16[7];
  v169 = vsubq_s8(v406, vqtbl1q_s8(v168, xmmword_29D2F0F10));
  v170 = v11;
  v170.i16[7] = v10.i16[7];
  v171 = v407;
  v171.i16[7] = v10.i16[7];
  v172 = vsubq_s8(v11, vqtbl1q_s8(v170, xmmword_29D2F0F20));
  v173 = vsubq_s8(v407, vqtbl1q_s8(v171, xmmword_29D2F0F30));
  v174 = v167;
  v174.i16[0] = v167.i16[7];
  v174.i16[7] = v167.i16[0];
  v175 = vqtbl1q_s8(v174, xmmword_29D2F0EF0);
  v176 = vpmaxq_s8(v175, v175);
  v177 = vpminq_s8(v175, v175);
  v178 = vpmaxq_s8(v176, v176);
  v179 = vpminq_s8(v177, v177);
  v180 = vpmaxq_s8(v178, v178);
  v181 = vpminq_s8(v179, v179);
  v182 = vzip1q_s8(v180, v181);
  v183.i64[0] = 0x808080808080808;
  v183.i64[1] = 0x808080808080808;
  v184 = vbicq_s8(vsubq_s8(v183, vclsq_s8(v182)), vceqzq_s8(v182));
  v185 = vpmaxq_s8(v184, v184);
  v186 = vqtbl1q_s8(v169, xmmword_29D2F0EF0);
  v187 = vpmaxq_s8(v186, v186);
  v188 = vpminq_s8(v186, v186);
  v189 = vpmaxq_s8(v187, v187);
  v190 = vpminq_s8(v188, v188);
  v191 = vpmaxq_s8(v189, v189);
  v192 = vpminq_s8(v190, v190);
  v193 = vmaxq_s8(v180, v191);
  v194 = vminq_s8(v181, v192);
  v195 = vzip1q_s8(v191, v192);
  v196 = vbicq_s8(vsubq_s8(v183, vclsq_s8(v195)), vceqzq_s8(v195));
  v197 = vpmaxq_s8(v196, v196);
  v198 = vqtbl1q_s8(v172, xmmword_29D2F0EF0);
  v199 = vpmaxq_s8(v198, v198);
  v200 = vpminq_s8(v198, v198);
  v201 = vpmaxq_s8(v199, v199);
  v202 = vpminq_s8(v200, v200);
  v203 = vpmaxq_s8(v201, v201);
  v204 = vpminq_s8(v202, v202);
  v205 = vmaxq_s8(v193, v203);
  v206 = vminq_s8(v194, v204);
  v207 = vzip1q_s8(v203, v204);
  v208 = vbicq_s8(vsubq_s8(v183, vclsq_s8(v207)), vceqzq_s8(v207));
  v209 = vpmaxq_s8(v208, v208);
  v210 = vqtbl1q_s8(v173, xmmword_29D2F0EF0);
  v211 = vpmaxq_s8(v210, v210);
  v212 = vpminq_s8(v210, v210);
  v213 = vpmaxq_s8(v211, v211);
  v214 = vpminq_s8(v212, v212);
  v215 = vpmaxq_s8(v213, v213);
  v216 = vpminq_s8(v214, v214);
  v217 = vmaxq_s8(v205, v215);
  v218 = vminq_s8(v206, v216);
  v219 = vzip1q_s8(v215, v216);
  v220 = vbicq_s8(vsubq_s8(v183, vclsq_s8(v219)), vceqzq_s8(v219));
  v221 = vpmaxq_s8(v220, v220);
  v222 = vmaxq_s8(vmaxq_s8(v185, v197), vmaxq_s8(v209, v221));
  v223 = vclzq_s8(vsubq_s8(v217, v218));
  v224 = vsubq_s8(v183, v223);
  v225 = vcgtq_s8(v222, v224);
  v226 = vminq_s8(v224, v222);
  v224.i64[0] = 0x909090909090909;
  v224.i64[1] = 0x909090909090909;
  v227.i64[0] = 0x202020202020202;
  v227.i64[1] = 0x202020202020202;
  v228 = vorrq_s8(vandq_s8(vceqzq_s8(v226), v227), vsubq_s8(vandq_s8(v225, v224), vmvnq_s8(v225)));
  v183.i64[0] = 0x303030303030303;
  v183.i64[1] = 0x303030303030303;
  v229 = vmaxq_s8(vminq_s8(vsubq_s8(v226, v185), v183), 0);
  v230 = vmaxq_s8(vminq_s8(vsubq_s8(v226, v197), v183), 0);
  v231 = vmaxq_s8(vminq_s8(vsubq_s8(v226, v209), v183), 0);
  v232 = vmaxq_s8(vminq_s8(vsubq_s8(v226, v221), v183), 0);
  v233 = vsubq_s8(v226, v229);
  v234 = vsubq_s8(v226, v230);
  v235 = vsubq_s8(v226, v231);
  v236 = vsubq_s8(v226, v232);
  v237 = vceqq_s8(vaddq_s8(v232, v231), vnegq_s8(vaddq_s8(v229, v230)));
  v230.i64[0] = 0x404040404040404;
  v230.i64[1] = 0x404040404040404;
  v238 = vorrq_s8(v228, vbicq_s8(v230, v237));
  v239.i64[0] = 0x3000300030003;
  v239.i64[1] = 0x3000300030003;
  v240 = vmovl_s8(*v82.i8);
  v232.i64[0] = 0x8000800080008;
  v232.i64[1] = 0x8000800080008;
  v241 = vbicq_s8(vmovl_s8(*v71.i8), vceqzq_s16(vandq_s8(v240, v232)));
  v242 = vandq_s8(v240, v239);
  v239.i64[0] = 0x2000200020002;
  v239.i64[1] = 0x2000200020002;
  v243 = vdupq_lane_s16(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v241, vandq_s8(vshll_n_s8(*v82.i8, 1uLL), v232)), vandq_s8(vceqq_s16(v242, v239), v232)), *v153.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v155.i8, *v154.i8), *v156.i8), 3uLL)), vaddw_s8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v235.i8, *v234.i8), *v236.i8), 3uLL), *v233.i8, 0x707070707070707), vand_s8(vadd_s8(*v238.i8, *v238.i8), 0x808080808080808)), vbic_s8(*v226.i8, vcgt_u8(0x808080808080808, *v238.i8))))), 0);
  if (vaddlvq_s8(v243))
  {
    v244.i64[0] = 0x707070707070707;
    v244.i64[1] = 0x707070707070707;
    v245.i64[0] = -1;
    v245.i64[1] = -1;
    v246 = vandq_s8(vsubq_s8(vshlq_s8(v245, vsubq_s8(v244, v223)), v218), v225);
    v16.i16[0] = vbslq_s8(v243, vextq_s8(v10, v10, 0xEuLL), v16).u16[0];
    v161 = vbslq_s8(v243, v174, v161);
    v162 = vbslq_s8(v243, v169, v165);
    v94 = vbslq_s8(v243, v172, v166);
    v128 = vbslq_s8(v243, v173, v410);
    v153 = vbslq_s8(v243, v233, v153);
    v154 = vbslq_s8(v243, v234, v154);
    v155 = vbslq_s8(v243, v235, v155);
    v156 = vbslq_s8(v243, v236, v156);
    v163 = vbslq_s8(v243, v246, v163);
    v71 = vbslq_s8(v243, v226, v71);
    v82 = vbslq_s8(v243, v238, v82);
  }

  else
  {
    v94 = v166;
    v162 = v165;
    v128 = v410;
  }

LABEL_16:
  v247 = vmovl_s8(*v82.i8);
  v248.i64[0] = 0x8000800080008;
  v248.i64[1] = 0x8000800080008;
  v249 = vbicq_s8(vmovl_s8(*v71.i8), vceqzq_s16(vandq_s8(v247, v248)));
  v250.i64[0] = 0x3000300030003;
  v250.i64[1] = 0x3000300030003;
  v251 = vandq_s8(v247, v250);
  v250.i64[0] = 0x2000200020002;
  v250.i64[1] = 0x2000200020002;
  v252 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v155.i8, *v154.i8), *v156.i8), 3uLL), *v153.i8, 0x707070707070707), vandq_s8(vshll_n_s8(*v82.i8, 1uLL), v248)), v249), vandq_s8(vceqq_s16(v251, v250), v248));
  if ((vpaddq_s16(v252, v252).i16[0] - 227) <= 0xFFFFFFFFFFFFFEF7)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
    return 32;
  }

  else
  {
    v253 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v254 = 8 * (a1 & 7);
    if (v254)
    {
      v255 = *v253 & ~(-1 << v254);
    }

    else
    {
      v255 = 0;
    }

    v256 = ((v71.i8[0] - 1) & 7) << 10;
    if (!v71.i8[0])
    {
      v256 = 0;
    }

    if (v71.i8[1])
    {
      v257 = ((v71.u8[1] << 13) - 0x2000) & 0xE000;
    }

    else
    {
      v257 = 0;
    }

    *a2 = v82.i8[0] << 6;
    v258 = ((v256 | v257) & 0xFFFFFFFFFFFFFC1FLL | v82.i8[0] & 0x1C | (32 * (v82.i8[1] & 0x1F))) >> 2;
    v259 = v255 | (v258 << v254);
    if (v254 >= 0x32)
    {
      *v253 = v259;
      v259 = v258 >> (-8 * (a1 & 7u));
    }

    v260 = (v254 + 14) & 0x3E;
    v261 = v259 | (v16.u16[0] << v260);
    if (v260 >= 0x30)
    {
      *(v253 + (((v254 + 14) >> 3) & 8)) = v261;
      v261 = v16.u16[0] >> -v260;
    }

    v262 = v254 + 30;
    v263 = vsubq_s8(v71, v153);
    v264 = vsubq_s8(v71, v154);
    v265 = vsubq_s8(v71, v155);
    v266 = vsubq_s8(v71, v156);
    v263.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v263, v264), vzip1q_s8(v265, v266)), vzip1q_s16(vtrn2q_s8(v263, v264), vtrn2q_s8(v265, v266))).u64[0];
    v265.i64[0] = 0x202020202020202;
    v265.i64[1] = 0x202020202020202;
    v267 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*&vmovl_u8(*v82.i8), 0x4000400040004)))), v265);
    v265.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v265.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v266.i64[0] = -1;
    v266.i64[1] = -1;
    v268 = vandq_s8(vshlq_u8(v266, vorrq_s8(v267, v265)), v263.u64[0]);
    v269 = vmovl_u8(*v267.i8);
    v270 = vpaddq_s16(vshlq_u16(vmovl_u8(*v268.i8), vtrn1q_s16(0, v269)), vmovl_high_u8(v268));
    v271 = vpaddq_s16(v269, vmovl_high_u8(v267));
    v272 = vmovl_u16(*v271.i8);
    v273 = vmovl_high_u16(v271);
    v274 = vpaddq_s32(vshlq_u32(vmovl_u16(*v270.i8), vtrn1q_s32(0, v272)), vshlq_u32(vmovl_high_u16(v270), vtrn1q_s32(0, v273)));
    v275 = vpaddq_s32(v272, v273);
    v276.i64[0] = v274.u32[0];
    v276.i64[1] = v274.u32[1];
    v277 = v276;
    v276.i64[0] = v274.u32[2];
    v276.i64[1] = v274.u32[3];
    v278 = v276;
    v276.i64[0] = v275.u32[0];
    v276.i64[1] = v275.u32[1];
    v279 = v276;
    v276.i64[0] = v275.u32[2];
    v276.i64[1] = v275.u32[3];
    v280 = vpaddq_s64(vshlq_u64(v277, vzip1q_s64(0, v279)), vshlq_u64(v278, vzip1q_s64(0, v276)));
    v281 = vpaddq_s64(v279, v276);
    v282 = (v254 + 30) & 0x3E;
    v283 = (v280.i64[0] << v282) | v261;
    if ((v281.i64[0] + v282) >= 0x40)
    {
      *(v253 + ((v262 >> 3) & 8)) = v283;
      v283 = v280.i64[0] >> -v282;
    }

    v284 = vceqq_s8(v71, v153);
    v285 = v281.i64[0] + v262;
    v286 = v283 | (v280.i64[1] << v285);
    if ((v285 & 0x3F) + v281.i64[1] >= 0x40)
    {
      *(v253 + ((v285 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v286;
      v286 = v280.i64[1] >> -(v285 & 0x3F);
      if ((v285 & 0x3F) == 0)
      {
        v286 = 0;
      }
    }

    v287 = vandq_s8(v163, v284);
    v288 = v285 + v281.i64[1];
    v289.i64[0] = 0x808080808080808;
    v289.i64[1] = 0x808080808080808;
    v290.i64[0] = -1;
    v290.i64[1] = -1;
    v291 = vandq_s8(vextq_s8(vtstq_s8(v82, v289), 0, 0xEuLL), v71);
    v292.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v292.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v293 = vandq_s8(vshlq_u8(v290, vaddq_s8(v291, v292)), v163);
    v294 = vmovl_u8(*v291.i8);
    v295 = vpaddq_s16(vshlq_u16(vmovl_u8(*v293.i8), vtrn1q_s16(0, v294)), vmovl_high_u8(v293));
    v296 = vpaddq_s16(v294, vmovl_high_u8(v291));
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
    v307 = (v305.i64[0] << v288) | v286;
    if (v306.i64[0] + (v288 & 0x3F) >= 0x40)
    {
      *(v253 + ((v288 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v307;
      v307 = v305.i64[0] >> -(v288 & 0x3F);
      if ((v288 & 0x3F) == 0)
      {
        v307 = 0;
      }
    }

    v308 = vceqq_s8(v71, v154);
    v309 = vaddq_s8(v287, v161);
    v310 = v306.i64[0] + v288;
    v311 = v307 | (v305.i64[1] << v310);
    if ((v310 & 0x3F) + v306.i64[1] >= 0x40)
    {
      *(v253 + ((v310 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v311;
      v311 = v305.i64[1] >> -(v310 & 0x3F);
      if ((v310 & 0x3F) == 0)
      {
        v311 = 0;
      }
    }

    v312 = vandq_s8(v163, v308);
    v313 = v310 + v306.i64[1];
    v314 = vextq_s8(0, v153, 0xEuLL);
    v315.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v315.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v316.i64[0] = -1;
    v316.i64[1] = -1;
    v317 = vandq_s8(vshlq_u8(v316, vaddq_s8(v314, v315)), v309);
    v318 = vmovl_u8(*v314.i8);
    v319 = vmovl_high_u8(v314);
    v320 = vpaddq_s16(vshlq_u16(vmovl_u8(*v317.i8), vtrn1q_s16(0, v318)), vshlq_u16(vmovl_high_u8(v317), vtrn1q_s16(0, v319)));
    v321 = vpaddq_s16(v318, v319);
    v322 = vmovl_u16(*v321.i8);
    v323 = vmovl_high_u16(v321);
    v324 = vpaddq_s32(vshlq_u32(vmovl_u16(*v320.i8), vtrn1q_s32(0, v322)), vshlq_u32(vmovl_high_u16(v320), vtrn1q_s32(0, v323)));
    v325 = vpaddq_s32(v322, v323);
    v326.i64[0] = v324.u32[0];
    v326.i64[1] = v324.u32[1];
    v327 = v326;
    v326.i64[0] = v324.u32[2];
    v326.i64[1] = v324.u32[3];
    v328 = v326;
    v326.i64[0] = v325.u32[0];
    v326.i64[1] = v325.u32[1];
    v329 = v326;
    v326.i64[0] = v325.u32[2];
    v326.i64[1] = v325.u32[3];
    v330 = vpaddq_s64(vshlq_u64(v327, vzip1q_s64(0, v329)), vshlq_u64(v328, vzip1q_s64(0, v326)));
    v331 = vpaddq_s64(v329, v326);
    v332 = (v330.i64[0] << v313) | v311;
    if (v331.i64[0] + (v313 & 0x3F) >= 0x40)
    {
      *(v253 + ((v313 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v332;
      v332 = v330.i64[0] >> -(v313 & 0x3F);
      if ((v313 & 0x3F) == 0)
      {
        v332 = 0;
      }
    }

    v333 = vceqq_s8(v71, v155);
    v334 = vaddq_s8(v162, v312);
    v335 = v331.i64[0] + v313;
    v336 = v332 | (v330.i64[1] << v335);
    if ((v335 & 0x3F) + v331.i64[1] >= 0x40)
    {
      *(v253 + ((v335 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v336;
      v336 = v330.i64[1] >> -(v335 & 0x3F);
      if ((v335 & 0x3F) == 0)
      {
        v336 = 0;
      }
    }

    v337 = vandq_s8(v163, v333);
    v338 = v335 + v331.i64[1];
    v339.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v339.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v340.i64[0] = -1;
    v340.i64[1] = -1;
    v341 = vandq_s8(vshlq_u8(v340, vaddq_s8(v154, v339)), v334);
    v342 = vmovl_u8(*v154.i8);
    v343 = vmovl_high_u8(v154);
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
    v356 = (v354.i64[0] << v338) | v336;
    if (v355.i64[0] + (v338 & 0x3F) >= 0x40)
    {
      *(v253 + ((v338 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v356;
      v356 = v354.i64[0] >> -(v338 & 0x3F);
      if ((v338 & 0x3F) == 0)
      {
        v356 = 0;
      }
    }

    v357 = vceqq_s8(v71, v156);
    v358 = vaddq_s8(v94, v337);
    v359 = v355.i64[0] + v338;
    v360 = v356 | (v354.i64[1] << v359);
    if ((v359 & 0x3F) + v355.i64[1] >= 0x40)
    {
      *(v253 + ((v359 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v360;
      v360 = v354.i64[1] >> -(v359 & 0x3F);
      if ((v359 & 0x3F) == 0)
      {
        v360 = 0;
      }
    }

    v361 = vandq_s8(v163, v357);
    v362 = v359 + v355.i64[1];
    v363.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v363.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v364.i64[0] = -1;
    v364.i64[1] = -1;
    v365 = vandq_s8(vshlq_u8(v364, vaddq_s8(v155, v363)), v358);
    v366 = vmovl_u8(*v155.i8);
    v367 = vmovl_high_u8(v155);
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
      *(v253 + ((v362 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v380;
      v380 = v378.i64[0] >> -(v362 & 0x3F);
      if ((v362 & 0x3F) == 0)
      {
        v380 = 0;
      }
    }

    v381 = vaddq_s8(v128, v361);
    v382 = v379.i64[0] + v362;
    v383 = v380 | (v378.i64[1] << v382);
    if ((v382 & 0x3F) + v379.i64[1] >= 0x40)
    {
      *(v253 + ((v382 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v383;
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
    v387 = vandq_s8(vshlq_u8(v386, vaddq_s8(v156, v385)), v381);
    v388 = vmovl_u8(*v156.i8);
    v389 = vmovl_high_u8(v156);
    v390 = vpaddq_s16(vshlq_u16(vmovl_u8(*v387.i8), vtrn1q_s16(0, v388)), vshlq_u16(vmovl_high_u8(v387), vtrn1q_s16(0, v389)));
    v391 = vpaddq_s16(v388, v389);
    v392 = vmovl_u16(*v391.i8);
    v393 = vmovl_high_u16(v391);
    v394 = vpaddq_s32(vshlq_u32(vmovl_u16(*v390.i8), vtrn1q_s32(0, v392)), vshlq_u32(vmovl_high_u16(v390), vtrn1q_s32(0, v393)));
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
    v402 = (v400.i64[0] << v384) | v383;
    if (v401.i64[0] + (v384 & 0x3F) > 0x3F)
    {
      *(v253 + ((v384 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v402;
      if ((v384 & 0x3F) != 0)
      {
        v402 = v400.i64[0] >> -(v384 & 0x3F);
      }

      else
      {
        v402 = 0;
      }
    }

    v403 = v401.i64[0] + v384;
    v404 = v402 | (v400.i64[1] << v403);
    if ((v403 & 0x3F) + v401.i64[1] >= 0x40)
    {
      *(v253 + ((v403 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v404;
      v404 = v400.i64[1] >> -(v403 & 0x3F);
      if ((v403 & 0x3F) == 0)
      {
        v404 = 0;
      }
    }

    v405 = v403 + v401.i64[1];
    if ((v405 & 0x3F) != 0)
    {
      *(v253 + ((v405 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v404;
    }

    result = (v405 - v254 + 7) >> 3;
    *a2 |= result - 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v76 = *MEMORY[0x29EDCA608];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  if (a6 && a5)
  {
    if (a5 > 1)
    {
      v20 = a5 & 0x7E;
      if (a5 == v20)
      {
        v21 = 0;
        v22 = &v72 + 8;
        v23 = (a3 + 2);
        do
        {
          v24 = v23;
          v25 = v22;
          v26 = a5;
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
          ++v21;
          v22 += 2;
          v23 = (v23 + a4);
        }

        while (v21 != a6);
      }

      else
      {
        v29 = 0;
        v30 = &v72 + 8;
        v31 = (a3 + 2);
        v32 = &v72 + ((a5 >> 1) & 0x3F);
        do
        {
          v33 = v31;
          v34 = v30;
          v35 = a5 & 0x7E;
          do
          {
            v36 = *(v33 - 1);
            v37 = *v33;
            v33 += 2;
            *(v34 - 4) = v36;
            *v34 = v37;
            v34 += 8;
            v35 -= 2;
          }

          while (v35);
          v38 = (a3 + v29 * a4 + 2 * v20);
          v39 = v32;
          v40 = a5 - v20;
          do
          {
            v41 = *v38++;
            *v39 = v41;
            v39 = (v39 + 8);
            --v40;
          }

          while (v40);
          ++v29;
          v30 += 2;
          v31 = (v31 + a4);
          v32 = (v32 + 2);
        }

        while (v29 != a6);
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
      v13 = &v72 + 1;
      v14 = v11;
      do
      {
        v15 = *(v12 - 1);
        v16 = *v12++;
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
        v18 = &v72 + v11;
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

  v56 = v72;
  v57 = BYTE1(v72);
  v58 = BYTE8(v72);
  v59 = BYTE9(v72);
  v60 = BYTE2(v72);
  v61 = BYTE3(v72);
  v62 = BYTE10(v72);
  v63 = BYTE11(v72);
  v64 = v73;
  v65 = BYTE1(v73);
  v66 = BYTE8(v73);
  v67 = BYTE9(v73);
  v68 = BYTE2(v73);
  v69 = BYTE3(v73);
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

  v70 = BYTE10(v73);
  v71 = BYTE11(v73);
  if (a6 >= 2)
  {
    v44 = 2;
  }

  else
  {
    v44 = a6;
  }

  if (a6 >= 2)
  {
    v45 = a6 - 2;
  }

  else
  {
    v45 = 0;
  }

  v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v56, a7, v42, v44);
  v56 = BYTE4(v72);
  v57 = BYTE5(v72);
  v58 = BYTE12(v72);
  v59 = BYTE13(v72);
  v60 = BYTE6(v72);
  v61 = BYTE7(v72);
  v62 = BYTE14(v72);
  v63 = HIBYTE(v72);
  v64 = BYTE4(v73);
  v65 = BYTE5(v73);
  v66 = BYTE12(v73);
  v67 = BYTE13(v73);
  v68 = BYTE6(v73);
  v69 = BYTE7(v73);
  v70 = BYTE14(v73);
  v71 = HIBYTE(v73);
  if (a6 >= 4)
  {
    v47 = 2;
  }

  else
  {
    v47 = v45;
  }

  v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 8, &v56, a7, v42, v47);
  v56 = v74;
  v57 = BYTE1(v74);
  v58 = BYTE8(v74);
  v59 = BYTE9(v74);
  v60 = BYTE2(v74);
  v61 = BYTE3(v74);
  v62 = BYTE10(v74);
  v63 = BYTE11(v74);
  v64 = v75;
  v65 = BYTE1(v75);
  v66 = BYTE8(v75);
  v67 = BYTE9(v75);
  v68 = BYTE2(v75);
  v69 = BYTE3(v75);
  if (a5 >= 8)
  {
    v49 = 4;
  }

  else
  {
    v49 = v43;
  }

  v70 = BYTE10(v75);
  v71 = BYTE11(v75);
  v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 16, &v56, a7, v49, v44);
  v56 = BYTE4(v74);
  v57 = BYTE5(v74);
  v58 = BYTE12(v74);
  v59 = BYTE13(v74);
  v60 = BYTE6(v74);
  v61 = BYTE7(v74);
  v62 = BYTE14(v74);
  v63 = HIBYTE(v74);
  v64 = BYTE4(v75);
  v65 = BYTE5(v75);
  v66 = BYTE12(v75);
  v67 = BYTE13(v75);
  v68 = BYTE6(v75);
  v69 = BYTE7(v75);
  v70 = BYTE14(v75);
  v71 = HIBYTE(v75);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 24, &v56, a7, v49, v47);
  if (v50)
  {
    v52 = 4;
  }

  else
  {
    v52 = 0;
  }

  if (v48)
  {
    v53 = 2;
  }

  else
  {
    v53 = 0;
  }

  if (result)
  {
    v54 = -8;
  }

  else
  {
    v54 = -16;
  }

  *a2 = v54 | v52 | v46 | v53;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(unint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v5 = 0;
  v346 = *MEMORY[0x29EDCA608];
  v6 = a5 == 0;
  if (a4)
  {
    v7 = a5 < 2;
  }

  else
  {
    v7 = 1;
  }

  v295 = v7;
  v8 = a4 < 2 || a5 == 0;
  v294 = v8;
  v9 = a4 < 2 || a5 < 2;
  v293 = v9;
  v10 = a4 < 3 || a5 == 0;
  v292 = v10;
  v11 = a4 < 3 || a5 < 2;
  v291 = v11;
  if (a4 < 4)
  {
    v6 = 1;
  }

  v290 = v6;
  v12 = a4 < 4 || a5 < 2;
  v289 = v12;
  v13 = &v328;
  v14 = &v330;
  v15 = &v334;
  v16 = &v338;
  v17 = &v342;
  v18 = &v344;
  v19 = &v313;
  v20 = &v311;
  v21 = &v309;
  v22 = &v307;
  v23 = &v305;
  v24 = v303;
  v25 = 1;
  v26 = &v332;
  v27 = &v336;
  v28 = &v340;
  v288 = a3;
  v29 = a2;
  do
  {
    v30 = 0;
    v31 = v25;
    v32 = AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)4,(AGXTextureFootprint)3>::compBits[v5];
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
    if (v294)
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
    if (v295)
    {
      if (v293)
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
      if (v293)
      {
LABEL_69:
        if (v292)
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
    if (v292)
    {
LABEL_70:
      if (v290)
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
    if (!v290)
    {
      goto LABEL_90;
    }

LABEL_96:
    a3 = v288;
    if (!v291)
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

    if (!v289)
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
    if ((v288 | 2) == 3)
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
    v19 = &v312;
    v20 = &v310;
    v21 = &v308;
    v22 = &v306;
    v23 = &v304;
    v24 = v302;
    v14 = &v331;
    v13 = &v329;
    v15 = &v335;
    v26 = &v333;
    v16 = &v339;
    v27 = &v337;
    v17 = &v343;
    v28 = &v341;
    v18 = &v345;
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
  v282 = v71;
  v72 = v305;
  v73 = v344;
  v74 = v345;
  v76 = v345 >= v344;
  v77 = v304;
  v78 = kDQuadParamTable[160 * v304 + 6 + 10 * v345];
  v316 = kDQuadParamTable[160 * v305 + 6 + 10 * v344];
  v75 = v316;
  v317 = v78;
  v318[0] = v316;
  v318[1] = v78;
  if (*(&v344 + (v345 >= v344)) == *(&v344 + (v345 < v344)))
  {
    v79 = v316;
  }

  else
  {
    v80 = v318[v345 < v344];
    v79 = v316;
    if (v80 >= 1)
    {
      *(&v316 + (v345 < v344)) = 0;
      *(&v316 + v76) += v80;
      v79 = v316;
    }
  }

  v81 = &kDQuadParamTable[160 * v72 + 10 * v73];
  v82 = *(v81 + 1);
  v84 = v81[4];
  v83 = v81[5];
  v301 = v84;
  v299 = v83;
  v85 = v79 - v75;
  if (v85 < 0)
  {
    v87 = &kDQuadParamTable[160 * v72 + 10 * v73];
    if (v87[7] < -v85)
    {
      v299 = --v83;
      if (!v87[8])
      {
        v86 = -1;
LABEL_177:
        v301 = v86 + v84;
      }
    }
  }

  else if (v85)
  {
    v83 += v85;
    v299 = v83;
    v86 = v85;
    goto LABEL_177;
  }

  v89 = v72 == 5 && v73 == 1 && v85 < 2;
  v90 = v89;
  if (v288 == 4)
  {
    v91 = 1 << (v313 - 1);
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

    if (v282)
    {
      if (v294)
      {
        goto LABEL_198;
      }

LABEL_352:
      if ((v330 | v93) == 0xFFFFFFFF || v330 == v91)
      {
        v90 = 1;
      }

      if (!v295)
      {
        goto LABEL_359;
      }

LABEL_199:
      if (v293)
      {
        goto LABEL_200;
      }

LABEL_366:
      if ((v334 | v93) == 0xFFFFFFFF || v334 == v91)
      {
        v90 = 1;
      }

      if (!v292)
      {
        goto LABEL_373;
      }

LABEL_201:
      if (v290)
      {
        goto LABEL_202;
      }

LABEL_380:
      if ((v338 | v93) == 0xFFFFFFFF || v338 == v91)
      {
        v90 = 1;
      }

      if (!v291)
      {
        goto LABEL_387;
      }

LABEL_203:
      if (!v289)
      {
        goto LABEL_204;
      }
    }

    else
    {
      if ((v328 | v93) == 0xFFFFFFFF || v328 == v91)
      {
        v90 = 1;
      }

      if (!v294)
      {
        goto LABEL_352;
      }

LABEL_198:
      if (v295)
      {
        goto LABEL_199;
      }

LABEL_359:
      if ((v332 | v93) == 0xFFFFFFFF || v332 == v91)
      {
        v90 = 1;
      }

      if (!v293)
      {
        goto LABEL_366;
      }

LABEL_200:
      if (v292)
      {
        goto LABEL_201;
      }

LABEL_373:
      if ((v336 | v93) == 0xFFFFFFFF || v336 == v91)
      {
        v90 = 1;
      }

      if (!v290)
      {
        goto LABEL_380;
      }

LABEL_202:
      if (v291)
      {
        goto LABEL_203;
      }

LABEL_387:
      if ((v340 | v93) == 0xFFFFFFFF || v340 == v91)
      {
        v90 = 1;
      }

      if (!v289)
      {
LABEL_204:
        if ((v342 | v93) == 0xFFFFFFFF || v342 == v91)
        {
          v90 = 1;
        }
      }
    }
  }

  v89 = v82 >> v83 > 0x10;
  v95 = v282;
  if (v89)
  {
    v95 = 1;
  }

  v96 = v95 | v90;
  v97 = &kDQuadParamTable[160 * v77 + 10 * v74];
  v98 = *(v97 + 1);
  v99 = v97[4];
  v100 = v97[5];
  v300 = v99;
  v298 = v100;
  v101 = v317 - v78;
  if (v101 < 0)
  {
    v103 = &kDQuadParamTable[160 * v77 + 10 * v74];
    if (v103[7] < -v101)
    {
      v298 = --v100;
      if (!v103[8])
      {
        v102 = -1;
LABEL_216:
        v300 = v102 + v99;
      }
    }
  }

  else if (v101)
  {
    v100 += v101;
    v298 = v100;
    v102 = v101;
    goto LABEL_216;
  }

  if (v77 == 5 && v74 == 1)
  {
    v96 |= v101 < 2;
  }

  v278 = v73;
  if (v288 == 4)
  {
    v104 = 1 << (v312 - 1);
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

    if (v282)
    {
      if (v294)
      {
        goto LABEL_231;
      }

LABEL_402:
      v202 = (v331 | v106) == 0xFFFFFFFF || v331 == v104;
      v96 |= v202;
      if (!v295)
      {
        goto LABEL_409;
      }

LABEL_232:
      if (v293)
      {
        goto LABEL_233;
      }

LABEL_416:
      v206 = (v335 | v106) == 0xFFFFFFFF || v335 == v104;
      v96 |= v206;
      if (!v292)
      {
        goto LABEL_423;
      }

LABEL_234:
      if (v290)
      {
        goto LABEL_235;
      }

LABEL_430:
      v210 = (v339 | v106) == 0xFFFFFFFF || v339 == v104;
      v96 |= v210;
      if (v291)
      {
        goto LABEL_243;
      }

LABEL_236:
      v108 = (v341 | v106) == 0xFFFFFFFF || v341 == v104;
      v96 |= v108;
      goto LABEL_243;
    }

    v200 = (v329 | v106) == 0xFFFFFFFF || v329 == v104;
    v96 |= v200;
    if (!v294)
    {
      goto LABEL_402;
    }

LABEL_231:
    if (v295)
    {
      goto LABEL_232;
    }

LABEL_409:
    v204 = (v333 | v106) == 0xFFFFFFFF || v333 == v104;
    v96 |= v204;
    if (!v293)
    {
      goto LABEL_416;
    }

LABEL_233:
    if (v292)
    {
      goto LABEL_234;
    }

LABEL_423:
    v208 = (v337 | v106) == 0xFFFFFFFF || v337 == v104;
    v96 |= v208;
    if (!v290)
    {
      goto LABEL_430;
    }

LABEL_235:
    if (!v291)
    {
      goto LABEL_236;
    }

LABEL_243:
    v109 = &v332;
    v110 = v320;
    if (!v289)
    {
      v112 = (v343 | v106) == 0xFFFFFFFF || v343 == v104;
      v96 |= v112;
    }

    v280 = v96;
  }

  else
  {
    v280 = v96;
    v109 = &v332;
    v110 = v320;
  }

  v113 = 0;
  v114 = v282;
  if (v98 >> v100 > 0x10)
  {
    v114 = 1;
  }

  v279 = v114;
  v297 = 0;
  v296 = 0;
  v115 = &v313;
  v116 = &v311;
  v315 = 0;
  v287 = &v307;
  v117 = &v344;
  v118 = &v305;
  v285 = v303;
  v119 = &v301;
  v120 = &v299;
  memset(v314, 0, sizeof(v314));
  v121 = &v297;
  v122 = 1;
  v123 = v319;
  v124 = &v328;
  v125 = &v323 + 4;
  v126 = &v322 + 4;
  v127 = &v323;
  v129 = &v321 + 4;
  v128 = &v322;
  v130 = &v334;
  v131 = &v321;
  v132 = &v330;
  v134 = &v338;
  v133 = &v336;
  v136 = &v342;
  v135 = &v340;
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

    v286 = v122;
    *v120 = v143;
    v144 = -1 << v139;
    v145 = *(v141 + 1);
    v146 = *v116 & (-1 << (v139 - v140));
    *v121 = v146;
    v147 = v145 >> v143;
    v148 = *v124 - v146;
    if (v282)
    {
      v148 = 0;
    }

    *v123 = v148;
    v149 = *v132 - v146;
    if (v294)
    {
      v149 = 0;
    }

    *v110 = v149;
    v150 = *v109 - v146;
    if (v295)
    {
      v150 = 0;
    }

    *v131 = v150;
    v151 = *v130 - v146;
    if (v293)
    {
      v151 = 0;
    }

    *v129 = v151;
    v152 = *v133 - v146;
    if (v292)
    {
      v152 = 0;
    }

    *v128 = v152;
    v153 = *v134 - v146;
    if (v290)
    {
      v153 = 0;
    }

    *v126 = v153;
    v154 = *v135 - v146;
    if (v291)
    {
      v154 = 0;
    }

    *v127 = v154;
    v155 = *v136 - v146;
    if (v289)
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

    v157 = &v319[32 * v113];
    v158 = 4 * v113;
    v159 = 4 * *v287;
    v160 = v314 + 28 * v113;
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
                if ((v288 | 2) != 3 || (v165 = *(&v328 + v158), v166 = *v285, v165 != v166) && ((v288 | 2) != 3 || v156 + v166 != v165))
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

        if (v162 >> v143 || (*(&v328 + v158) ^ v144) == 0xFFFFFFFF)
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
    v115 = &v312;
    v116 = &v310;
    v287 = &v306;
    v118 = &v304;
    v285 = v302;
    v119 = &v300;
    v120 = &v298;
    v121 = &v296;
    v110 = &v324 + 4;
    v123 = &v324;
    v129 = &v325 + 4;
    v131 = &v325;
    v126 = &v326 + 4;
    v128 = &v326;
    v125 = &v327 + 4;
    v127 = &v327;
    v132 = &v331;
    v124 = &v329;
    v130 = &v335;
    v109 = &v333;
    v134 = &v339;
    v133 = &v337;
    v136 = &v343;
    v135 = &v341;
    v117 = &v345;
    v113 = 1;
  }

  while ((v286 & 1) != 0);
  v167 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v168 = 8 * (a1 & 7);
  *a1 = 0;
  if ((v279 | v280))
  {
    v169 = 0;
    v170 = 0;
    v171 = v313;
    v172 = v313 - 4;
    v173 = v312;
    v174 = v312 - 4;
    v175 = 8 * (a1 & 7);
    while (1)
    {
      v176 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v169;
      v177 = v176[1] < a5 && a4 > *v176;
      v178 = !v177;
      if (v177)
      {
        v179 = *(&v328 + 2 * v169) >> 4;
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

      if (v171 != 4 && v175 - v168 + (v170 << 6) + v172 <= 0x40)
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
        v184 = *(&v328 + 2 * v169 + 1) >> 4;
        if (v174 <= 0x100)
        {
LABEL_335:
          if (v173 != 4 && v175 - v168 + (v170 << 6) + v174 <= 0x40)
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
        return (v279 | v280) & 1;
      }
    }
  }

  if (v311 | v278)
  {
    if (v278 <= 2)
    {
      v189 = 0;
      v190 = 0;
      v191 = v278 + 1;
      goto LABEL_439;
    }

    v212 = 0;
    v191 = 0;
    v211 = 0;
    v189 = (v278 + 6) & 7;
    v190 = 1;
  }

  else
  {
    v189 = 0;
    v190 = 0;
    v191 = 0;
LABEL_439:
    v211 = 1;
    v212 = 2;
  }

  v213 = (v189 << v168) | *v167;
  *v167 = v213;
  v214 = v168 | 3;
  v215 = v345;
  if (v310 | v345)
  {
    if (v345 < 3)
    {
      v216 = 0;
      v217 = 0;
      v218 = v345 + 1;
      goto LABEL_445;
    }

    v220 = 0;
    v218 = 0;
    v219 = 0;
    v216 = (v345 + 6) & 7;
    v217 = 1;
  }

  else
  {
    v216 = 0;
    v217 = 0;
    v218 = 0;
LABEL_445:
    v219 = 1;
    v220 = 2;
  }

  if ((v214 - v168) <= 0x3D)
  {
    *v167 = (v216 << v214) | v213;
    v214 = v168 | 6;
  }

  if (!v211)
  {
    v222 = 0;
    v223 = 6;
    if (v219)
    {
      goto LABEL_462;
    }

LABEL_455:
    v224 = v313;
    if (!v278)
    {
      goto LABEL_470;
    }

    goto LABEL_474;
  }

  v221 = v212;
  if (v214 - v168 + v212 > 0x40)
  {
    v190 = 1;
  }

  if (v190)
  {
    v222 = 0;
  }

  else
  {
    v222 = 0;
    v225 = 0;
    do
    {
      v226 = 64 - v214;
      if (64 - v214 >= v221)
      {
        v226 = v221;
      }

      v167[v222] |= ((v191 >> v225) & ~(-1 << v226)) << v214;
      v225 += v226;
      v227 = v226 + v214;
      v222 += v227 >> 6;
      v214 = v227 & 0x3F;
      v221 -= v226;
    }

    while (v221);
  }

  v223 = v212 + 6;
  if (!v219)
  {
    goto LABEL_455;
  }

LABEL_462:
  v228 = v220;
  if (v214 - v168 + (v222 << 6) + v220 > 0x40)
  {
    v217 = 1;
  }

  if ((v217 & 1) == 0)
  {
    v229 = 0;
    do
    {
      v230 = 64 - v214;
      if (64 - v214 >= v228)
      {
        v230 = v228;
      }

      v167[v222] |= ((v218 >> v229) & ~(-1 << v230)) << v214;
      v229 += v230;
      v231 = v230 + v214;
      v222 += v231 >> 6;
      v214 = v231 & 0x3F;
      v228 -= v230;
    }

    while (v228);
  }

  v223 += v220;
  v224 = v313;
  if (!v278)
  {
LABEL_470:
    if (v224 != 2 && v224 < 0x10)
    {
      v232 = v312;
      if (!v215)
      {
        goto LABEL_535;
      }

LABEL_482:
      v239 = v300;
      if (v300 <= 0x100 && v300 && v214 - v168 + (v222 << 6) + v300 <= 0x40)
      {
        v240 = 0;
        v241 = v296 >> (v232 - v300);
        v242 = v300;
        do
        {
          v243 = 64 - v214;
          if (64 - v214 >= v242)
          {
            v243 = v242;
          }

          v167[v222] |= ((v241 >> v240) & ~(-1 << v243)) << v214;
          v240 += v243;
          v244 = v243 + v214;
          v222 += v244 >> 6;
          v214 = v244 & 0x3F;
          v242 -= v243;
        }

        while (v242);
      }

      v223 += v239;
      goto LABEL_490;
    }
  }

LABEL_474:
  v233 = v301;
  if (v301 <= 0x100 && v301 && v214 - v168 + (v222 << 6) + v301 <= 0x40)
  {
    v234 = 0;
    v235 = v297 >> (v224 - v301);
    v236 = v301;
    do
    {
      v237 = 64 - v214;
      if (64 - v214 >= v236)
      {
        v237 = v236;
      }

      v167[v222] |= ((v235 >> v234) & ~(-1 << v237)) << v214;
      v234 += v237;
      v238 = v237 + v214;
      v222 += v238 >> 6;
      v214 = v238 & 0x3F;
      v236 -= v237;
    }

    while (v236);
  }

  v223 += v233;
  v232 = v312;
  if (v215)
  {
    goto LABEL_482;
  }

LABEL_535:
  if (v232 == 2 || v232 >= 0x10)
  {
    goto LABEL_482;
  }

LABEL_490:
  v245 = v299;
  if (v299)
  {
    if ((v214 - v168 + (v222 << 6) + 3) <= 0x40)
    {
      v246 = 0;
      v247 = v307;
      v248 = 3;
      do
      {
        v249 = 64 - v214;
        if (64 - v214 >= v248)
        {
          v249 = v248;
        }

        v167[v222] |= ((v247 >> v246) & ~(-1 << v249)) << v214;
        v246 += v249;
        v250 = v249 + v214;
        v222 += v250 >> 6;
        v214 = v250 & 0x3F;
        v248 -= v249;
      }

      while (v248);
    }

    v223 += 3;
  }

  v251 = v298;
  if (v298)
  {
    if ((v214 - v168 + (v222 << 6) + 3) <= 0x40)
    {
      v252 = 0;
      v253 = v306;
      v254 = 3;
      do
      {
        v255 = 64 - v214;
        if (64 - v214 >= v254)
        {
          v255 = v254;
        }

        v167[v222] |= ((v253 >> v252) & ~(-1 << v255)) << v214;
        v252 += v255;
        v256 = v255 + v214;
        v222 += v256 >> 6;
        v214 = v256 & 0x3F;
        v254 -= v255;
      }

      while (v254);
    }

    v223 += 3;
  }

  v257 = 64 - v223;
  v258 = (64 - v223) / 7u;
  v259 = v257 % 7;
  if ((v259 - 257) >= 0xFFFFFF00 && v214 - v168 + (v222 << 6) + v259 <= 0x40)
  {
    do
    {
      v260 = 64 - v214;
      if (64 - v214 >= v259)
      {
        v260 = v259;
      }

      v261 = v260 + v214;
      v222 += v261 >> 6;
      v214 = v261 & 0x3F;
      v259 -= v260;
    }

    while (v259);
  }

  v262 = 0;
  v263 = v251 + v245;
  while (2)
  {
    if (v245 && v245 <= 0x100 && v214 - v168 + (v222 << 6) + v245 <= 0x40)
    {
      v264 = 0;
      v265 = *(v314 + v262);
      v266 = v245;
      do
      {
        v267 = 64 - v214;
        if (64 - v214 >= v266)
        {
          v267 = v266;
        }

        v167[v222] |= ((v265 >> v264) & ~(-1 << v267)) << v214;
        v264 += v267;
        v268 = v267 + v214;
        v222 += v268 >> 6;
        v214 = v268 & 0x3F;
        v266 -= v267;
      }

      while (v266);
    }

    if (v251)
    {
      if (v251 <= 0x100 && v214 - v168 + (v222 << 6) + v251 <= 0x40)
      {
        v269 = 0;
        v270 = *(&v314[1] + v262 + 3);
        v271 = v251;
        do
        {
          v272 = 64 - v214;
          if (64 - v214 >= v271)
          {
            v272 = v271;
          }

          v167[v222] |= ((v270 >> v269) & ~(-1 << v272)) << v214;
          v269 += v272;
          v273 = v272 + v214;
          v222 += v273 >> 6;
          v214 = v273 & 0x3F;
          v271 -= v272;
        }

        while (v271);
      }

      v274 = v258 - v263;
      if (v258 != v263)
      {
LABEL_528:
        if (v274 <= 0x100 && v214 - v168 + (v222 << 6) + v274 <= 0x40)
        {
          do
          {
            v275 = 64 - v214;
            if (64 - v214 >= v274)
            {
              v275 = v274;
            }

            v276 = v275 + v214;
            v222 += v276 >> 6;
            v214 = v276 & 0x3F;
            v274 -= v275;
          }

          while (v274);
        }
      }
    }

    else
    {
      v274 = v258 - v245;
      if (v258 != v245)
      {
        goto LABEL_528;
      }
    }

    if (++v262 != 7)
    {
      continue;
    }

    return (v279 | v280) & 1;
  }
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(int32x4_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int8x8_t a5, int8x8_t a6)
{
  v12 = 8 * (a3 & 7);
  v13 = a3 & 0xFFFFFFFFFFFFFFF8;
  v14 = v12 + 14;
  v15 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v12;
  if (v12 >= 0x33)
  {
    v15 |= *(v13 + 8) << (-8 * (a3 & 7u));
  }

  a6.i32[0] = 4 * v15;
  a5.i32[0] = a4 >> 6;
  v16.i32[0] = vorr_s8(a6, a5).u32[0];
  v16.i32[1] = vshr_n_u32(vdup_n_s32(4 * v15), 5uLL).i32[1];
  v17 = v12 + 30;
  v18 = v14 & 0x3E;
  v19 = (v13 + ((v14 >> 3) & 8));
  v20 = *v19 >> v18;
  if (v18 >= 0x31)
  {
    v20 |= v19[1] << -v18;
  }

  v21 = (8 * (a3 & 7)) | 0x100;
  v22 = vand_s8(v16, 0x1F0000001FLL);
  v231.val[1] = vdupq_lane_s8(v22, 4);
  v231.val[0] = vdupq_lane_s8(v22, 0);
  v23 = vqtbl2q_s8(v231, xmmword_29D2F0E30);
  v24 = vshlq_u32(vdupq_lane_s32(a6, 0), xmmword_29D2F0E40);
  v25 = vuzp1q_s16(v24, v24);
  v231.val[0].i64[0] = 0x707070707070707;
  v231.val[0].i64[1] = 0x707070707070707;
  v26 = vandq_s8(vuzp1q_s8(v25, v25), v231.val[0]);
  v231.val[0].i64[0] = 0x101010101010101;
  v231.val[0].i64[1] = 0x101010101010101;
  v231.val[0] = vaddq_s8(v26, v231.val[0]);
  v231.val[1].i64[0] = 0x303030303030303;
  v231.val[1].i64[1] = 0x303030303030303;
  v27 = vandq_s8(v23, v231.val[1]);
  v28 = vbicq_s8(v231.val[0], vceqq_s8(v27, v231.val[1]));
  v231.val[1].i64[0] = 0x202020202020202;
  v231.val[1].i64[1] = 0x202020202020202;
  v29 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16((*&vuzp1_s16(v22, v22) & 0xFFE4FFE4FFE4FFE4)))), v231.val[1]);
  if (vmaxvq_s8(v29) < 1)
  {
    v38 = 0;
    v62.i64[0] = -1;
    v62.i64[1] = -1;
    v56 = v28;
    v57 = v28;
    v58 = v28;
    v61.i64[0] = -1;
    v61.i64[1] = -1;
    v55 = v28;
    v60.i64[0] = -1;
    v60.i64[1] = -1;
    v59.i64[0] = -1;
    v59.i64[1] = -1;
  }

  else
  {
    v30 = vmovl_u8(*&vpaddq_s8(v29, v29));
    v31 = vmovl_u16(*&vpaddq_s16(v30, v30));
    v32 = vpaddq_s32(v31, v31).u64[0];
    v33.i64[0] = v32;
    v33.i64[1] = HIDWORD(v32);
    v34 = v33;
    v35 = vaddvq_s64(v33);
    v36 = v35 + v17;
    v37 = v35 <= 0x80 && v21 >= v36;
    v38 = !v37;
    v39 = 0uLL;
    if (v37)
    {
      v40 = v17 & 0x3E;
      v41 = vaddq_s64(vzip1q_s64(0, v34), vdupq_n_s64(v40));
      v42 = (v13 + ((v17 >> 3) & 8));
      v39 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v42, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v41)), vshlq_u64(vdupq_lane_s64(v42->i64[0], 0), vnegq_s64(v41)));
      if (v35 + v40 >= 0x81)
      {
        v39 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v42[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v41)), vshlq_u64(vdupq_laneq_s64(v42[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v41))), v39);
      }

      v17 = v36;
    }

    v43 = vzip1_s32(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
    v44.i64[0] = v43.u32[0];
    v44.i64[1] = v43.u32[1];
    v45 = vshlq_u64(v39, vnegq_s64(v44));
    v46 = vuzp1q_s32(vzip1q_s64(v39, v45), vzip2q_s64(v39, v45));
    v47 = vshlq_u32(v46, vnegq_s32((*&v30 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v48 = vuzp1q_s16(vzip1q_s32(v46, v47), vzip2q_s32(v46, v47));
    v49 = vzip1q_s16(v48, vshlq_u16(v48, vnegq_s16(vmovl_u8(vuzp1_s8(*v29.i8, *v23.i8)))));
    *v49.i8 = vmovn_s16(v49);
    v46.i64[0] = 0x101010101010101;
    v46.i64[1] = 0x101010101010101;
    v50 = vshlq_s8(v46, v29);
    v46.i64[0] = -1;
    v46.i64[1] = -1;
    v50.i64[0] = vqtbl1q_s8(vandq_s8(vaddq_s8(v50, v46), v49), xmmword_29D2F0E50).u64[0];
    v51 = vdupq_lane_s16(*v50.i8, 0);
    v52 = vdupq_lane_s16(*v50.i8, 1);
    v53 = vdupq_lane_s16(*v50.i8, 2);
    v54 = vdupq_lane_s16(*v50.i8, 3);
    v55 = vsubq_s8(v28, v51);
    v56 = vsubq_s8(v28, v52);
    v57 = vsubq_s8(v28, v53);
    v58 = vsubq_s8(v28, v54);
    v59 = vceqzq_s8(v51);
    v60 = vceqzq_s8(v52);
    v61 = vceqzq_s8(v53);
    v62 = vceqzq_s8(v54);
  }

  v63.i64[0] = 0x808080808080808;
  v63.i64[1] = 0x808080808080808;
  v64 = 0uLL;
  v65 = vandq_s8(vextq_s8(vtstq_s8(v23, v63), 0, 0xEuLL), v28);
  v66 = vmovl_u8(*&vpaddq_s8(v65, v65));
  v67 = vmovl_u16(*&vpaddq_s16(v66, v66));
  v68 = vpaddq_s32(v67, v67).u64[0];
  v69.i64[0] = v68;
  v69.i64[1] = HIDWORD(v68);
  v70 = v69;
  v71 = vaddvq_s64(v69);
  v72 = v71 + v17;
  if (v71 <= 0x80 && v21 >= v72)
  {
    v74 = v17 & 0x3F;
    v75 = vaddq_s64(vzip1q_s64(0, v70), vdupq_n_s64(v74));
    v76 = (v13 + 8 * (v17 >> 6));
    v64 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v76, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v75)), vshlq_u64(vdupq_lane_s64(v76->i64[0], 0), vnegq_s64(v75)));
    if (v71 + v74 >= 0x81)
    {
      v64 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v76[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v75)), vshlq_u64(vdupq_laneq_s64(v76[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v75))), v64);
    }

    v17 = v72;
  }

  else
  {
    v38 = 1;
  }

  v77 = v22.i8[0] & 3;
  if (v77 == 2)
  {
    if (v21 < v17 + 4)
    {
      v38 = 1;
    }

    else
    {
      v17 += 4;
    }

    v78 = v21 < v17 + 4;
    if (v21 >= v17 + 4)
    {
      v17 += 4;
    }

    v38 |= v78;
  }

  v79 = 0uLL;
  v80 = vextq_s8(0, v55, 0xEuLL);
  v81 = vmovl_u8(*&vpaddq_s8(v80, v80));
  v82 = vmovl_u16(*&vpaddq_s16(v81, v81));
  v83 = vpaddq_s32(v82, v82).u64[0];
  v84.i64[0] = v83;
  v84.i64[1] = HIDWORD(v83);
  v85 = v84;
  v86 = vaddvq_s64(v84);
  v87 = v86 + v17;
  if (v86 <= 0x80 && v21 >= v87)
  {
    v90 = v17 & 0x3F;
    v91 = vaddq_s64(vzip1q_s64(0, v85), vdupq_n_s64(v90));
    v92 = (v13 + 8 * (v17 >> 6));
    v89 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v92, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v91)), vshlq_u64(vdupq_lane_s64(v92->i64[0], 0), vnegq_s64(v91)));
    if (v86 + v90 >= 0x81)
    {
      v89 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v92[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v91)), vshlq_u64(vdupq_laneq_s64(v92[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v91))), v89);
    }

    v17 = v87;
  }

  else
  {
    v38 = 1;
    v89 = 0uLL;
  }

  v225 = v11;
  v226 = v10;
  v227 = v9;
  v228 = v8;
  v229 = v7;
  v230 = v6;
  v93 = vmovl_u8(*&vpaddq_s8(v56, v56));
  v94 = vmovl_u16(*&vpaddq_s16(v93, v93));
  v95 = vpaddq_s32(v94, v94).u64[0];
  v96.i64[0] = v95;
  v96.i64[1] = HIDWORD(v95);
  v97 = v96;
  v98 = vaddvq_s64(v96);
  if (v98 >= 0x81)
  {
    v38 = 1;
  }

  else
  {
    v99 = vzip1_s32(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
    v100.i64[0] = v99.u32[0];
    v100.i64[1] = v99.u32[1];
    v101 = v100;
    v102 = *&v93 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v103 = v98 + v17;
    if (v21 >= v98 + v17)
    {
      v105 = v17 & 0x3F;
      v106 = vaddq_s64(vzip1q_s64(0, v97), vdupq_n_s64(v105));
      v107 = (v13 + 8 * (v17 >> 6));
      v104 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v107, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v106)), vshlq_u64(vdupq_lane_s64(v107->i64[0], 0), vnegq_s64(v106)));
      if (v98 + v105 >= 0x81)
      {
        v104 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v107[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v106)), vshlq_u64(vdupq_laneq_s64(v107[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v106))), v104);
      }

      v17 = v103;
    }

    else
    {
      v104 = 0uLL;
      v38 = 1;
    }

    v108 = vshlq_u64(v104, vnegq_s64(v101));
    v109 = vuzp1q_s32(vzip1q_s64(v104, v108), vzip2q_s64(v104, v108));
    v110 = vshlq_u32(v109, vnegq_s32(v102));
    v111 = vuzp1q_s16(vzip1q_s32(v109, v110), vzip2q_s32(v109, v110));
    v112 = vshlq_u16(v111, vnegq_s16((*&v56 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v79 = vuzp1q_s8(vzip1q_s16(v111, v112), vzip2q_s16(v111, v112));
  }

  v113 = vmovl_u8(*&vpaddq_s8(v57, v57));
  v114 = vmovl_u16(*&vpaddq_s16(v113, v113));
  v115 = vpaddq_s32(v114, v114).u64[0];
  v116.i64[0] = v115;
  v116.i64[1] = HIDWORD(v115);
  v117 = v116;
  v118 = vaddvq_s64(v116);
  v119 = v118 + v17;
  if (v118 <= 0x80 && v21 >= v119)
  {
    v122 = v17 & 0x3F;
    v123 = vaddq_s64(vzip1q_s64(0, v117), vdupq_n_s64(v122));
    v124 = (v13 + 8 * (v17 >> 6));
    v121 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v124, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v123)), vshlq_u64(vdupq_lane_s64(v124->i64[0], 0), vnegq_s64(v123)));
    if (v118 + v122 >= 0x81)
    {
      v121 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v124[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v123)), vshlq_u64(vdupq_laneq_s64(v124[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v123))), v121);
    }

    v17 = v119;
  }

  else
  {
    v38 = 1;
    v121 = 0uLL;
  }

  v125 = vmovl_u8(*&vpaddq_s8(v58, v58));
  v126 = vmovl_u16(*&vpaddq_s16(v125, v125));
  v127 = vpaddq_s32(v126, v126).u64[0];
  v128.i64[0] = v127;
  v128.i64[1] = HIDWORD(v127);
  v129 = v128;
  v130 = vaddvq_s64(v128);
  if (v130 > 0x80 || v21 < v130 + v17)
  {
    goto LABEL_66;
  }

  v131 = vaddq_s64(vzip1q_s64(0, v129), vdupq_n_s64(v17 & 0x3F));
  v132 = (v13 + 8 * (v17 >> 6));
  v133 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v132, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v131)), vshlq_u64(vdupq_lane_s64(v132->i64[0], 0), vnegq_s64(v131)));
  if (v130 + (v17 & 0x3F) >= 0x81)
  {
    v133 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v132[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v131)), vshlq_u64(vdupq_laneq_s64(v132[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v131))), v133);
  }

  if ((v38 & 1) != 0 || (v134 = (a4 & 0x3F) + 1, 8 * ((a3 & 7) + v134) - (v130 + v17) >= 9))
  {
LABEL_66:
    v134 = 0;
    v135 = &v223;
LABEL_67:
    *(v135 & 0xFFFFFFFFFFFFFFF8) |= 255 << (8 * (v135 & 7u));
    a1->i64[0] = 0;
    a1->i64[1] = 0;
    v136 = (a1->i64 + a2);
    v137 = (a1->i64 + 2 * a2);
    *v136 = 0;
    v136[1] = 0;
    v138 = (a1->i64 + 2 * a2 + a2);
    *v137 = 0;
    v137[1] = 0;
    *v138 = 0;
    v138[1] = 0;
    return v134;
  }

  if (v77 == 2)
  {
    v134 = 0;
    v135 = &v224;
    goto LABEL_67;
  }

  v140 = vzip1_s32(*v67.i8, *&vextq_s8(v67, v67, 8uLL));
  v141 = vzip1_s32(*v82.i8, *&vextq_s8(v82, v82, 8uLL));
  v142 = vzip1_s32(*v114.i8, *&vextq_s8(v114, v114, 8uLL));
  v143.i64[0] = v140.u32[0];
  v143.i64[1] = v140.u32[1];
  v144 = v143;
  v143.i64[0] = v141.u32[0];
  v143.i64[1] = v141.u32[1];
  v145 = v143;
  v143.i64[0] = v142.u32[0];
  v143.i64[1] = v142.u32[1];
  v146 = vshlq_u64(v64, vnegq_s64(v144));
  v147 = vshlq_u64(v89, vnegq_s64(v145));
  v148 = vshlq_u64(v121, vnegq_s64(v143));
  v149 = vuzp1q_s32(vzip1q_s64(v64, v146), vzip2q_s64(v64, v146));
  v150 = vuzp1q_s32(vzip1q_s64(v89, v147), vzip2q_s64(v89, v147));
  v151 = vuzp1q_s32(vzip1q_s64(v121, v148), vzip2q_s64(v121, v148));
  v152 = vshlq_u32(v149, vnegq_s32((*&v66 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v153 = vshlq_u32(v150, vnegq_s32((*&v81 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v154 = vshlq_u32(v151, vnegq_s32((*&v113 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v155 = vzip2q_s32(v150, v153);
  v156 = vuzp1q_s16(vzip1q_s32(v149, v152), vzip2q_s32(v149, v152));
  v157 = vuzp1q_s16(vzip1q_s32(v150, v153), v155);
  v158 = vuzp1q_s16(vzip1q_s32(v151, v154), vzip2q_s32(v151, v154));
  v159 = vshlq_u16(v156, vnegq_s16((*&v65 & __PAIR128__(0xF0FFF0FFF0FFF0FFLL, 0xF0FFF0FFF0FFF0FFLL))));
  v160 = vshlq_u16(v157, vnegq_s16((*&v80 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v161 = vshlq_u16(v158, vnegq_s16((*&v57 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v155.i32[0] = v20;
  v162 = vzip2q_s16(v156, v159);
  v163 = vzip1q_s16(v156, v159);
  v164 = vzip2q_s16(v157, v160);
  v165 = vzip1q_s16(v157, v160);
  v160.i64[0] = 0x808080808080808;
  v160.i64[1] = 0x808080808080808;
  v166 = vzip2q_s16(v158, v161);
  v167 = vzip1q_s16(v158, v161);
  v168 = vuzp1q_s8(v163, v162);
  v161.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v161.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v169 = vsubq_s8(v63, v65);
  v170 = vuzp1q_s8(v165, v164);
  v165.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v165.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v171 = vsubq_s8(v160, v80);
  v172 = vsubq_s8(v160, v56);
  v173 = vsubq_s8(v160, v57);
  v174 = vuzp1q_s8(v167, v166);
  v175 = vzip1_s32(*v126.i8, *&vextq_s8(v126, v126, 8uLL));
  v176.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v176.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v166.i64[0] = 0x808080808080808;
  v166.i64[1] = 0x808080808080808;
  v155.i8[1] = BYTE1(v20);
  v177 = vaddq_s8(v65, v161);
  v178 = vshlq_s8(v168, v169);
  v179 = vaddq_s8(v80, v165);
  v180 = vaddq_s8(v56, v165);
  v181 = vshlq_s8(v79, v172);
  v182 = vaddq_s8(v57, v165);
  v183 = vshlq_s8(v174, v173);
  v143.i64[0] = v175.u32[0];
  v143.i64[1] = v175.u32[1];
  v184 = *&v58 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
  v185 = vaddq_s8(v58, v176);
  v186 = vsubq_s8(v166, v58);
  v187 = vdupq_lane_s16(*v155.i8, 0);
  v188 = vshlq_s8(v178, v177);
  v189 = vshlq_s8(vshlq_s8(v170, v171), v179);
  v190 = vshlq_u64(v133, vnegq_s64(v143));
  v191 = vuzp1q_s32(vzip1q_s64(v133, v190), vzip2q_s64(v133, v190));
  v192 = vshlq_u32(v191, vnegq_s32((*&v125 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v193 = vuzp1q_s16(vzip1q_s32(v191, v192), vzip2q_s32(v191, v192));
  v194 = vshlq_u16(v193, vnegq_s16(v184));
  v195 = vaddq_s8(vandq_s8(v188, v59), v189);
  v196 = vdupq_lane_s16(*v188.i8, 0);
  v197 = vsubq_s8(v195, vandq_s8(v59, v196));
  v198 = vsubq_s8(vshlq_s8(v181, v180), vandq_s8(v60, v196));
  v199 = vsubq_s8(vshlq_s8(v183, v182), vandq_s8(v61, v196));
  v200 = vandq_s8(v62, v196);
  v201.i64[0] = 0x101010101010101;
  v201.i64[1] = 0x101010101010101;
  v202 = vaddlvq_s8(vceqq_s8(v27, v201));
  v203 = vsubq_s8(vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v193, v194), vzip2q_s16(v193, v194)), v186), v185), v200);
  if (v202)
  {
    v204 = vandq_s8(v23, v201);
    v205 = vnegq_s8(v204);
    v206 = v197;
    v206.i16[0] = v197.i16[7];
    v206.i16[7] = v197.i16[0];
    v207 = vorrq_s8(vandq_s8(v206, v205), vandq_s8(v197, vceqzq_s8(v204)));
    v208 = vaddq_s8(v207, vandq_s8(vqtbl1q_s8(v207, xmmword_29D2F0E60), v205));
    v197 = vaddq_s8(v208, vandq_s8(vqtbl1q_s8(v208, xmmword_29D2F0E70), v205));
    v209 = vaddq_s8(vandq_s8(vqtbl1q_s8(v198, xmmword_29D2F0E80), v205), v198);
    v198 = vaddq_s8(vandq_s8(vqtbl1q_s8(v209, xmmword_29D2F0E90), v205), v209);
    v210 = vaddq_s8(vandq_s8(vqtbl1q_s8(v199, xmmword_29D2F0EA0), v205), v199);
    v199 = vaddq_s8(vandq_s8(vqtbl1q_s8(v210, xmmword_29D2F0EB0), v205), v210);
    v211 = vaddq_s8(vandq_s8(vqtbl1q_s8(v203, xmmword_29D2F0EC0), v205), v203);
    v203 = vaddq_s8(vandq_s8(vqtbl1q_s8(v211, xmmword_29D2F0ED0), v205), v211);
  }

  v212 = vaddq_s8(v197, v187);
  v213 = vaddq_s8(v198, v187);
  v214 = vaddq_s8(v199, v187);
  v215 = vaddq_s8(v203, v187);
  v216.i64[0] = 0x1010101010101010;
  v216.i64[1] = 0x1010101010101010;
  v217 = vcgtq_u8(v216, v23);
  v218 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v212, xmmword_29D2F0EE0), v217), v212);
  v219 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v213, xmmword_29D2F0EE0), v217), v213);
  v220 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v214, xmmword_29D2F0EE0), v217), v214);
  v221 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v215, xmmword_29D2F0EE0), v217), v215);
  *a1 = vuzp1q_s32(v218, v220);
  *(a1 + a2) = vuzp2q_s32(v218, v220);
  v222 = (a1 + 2 * a2);
  *v222 = vuzp1q_s32(v219, v221);
  *(v222 + a2) = vuzp2q_s32(v219, v221);
  return v134;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(_WORD *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v100 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v84, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v84, a5);
  }

  v64 = v87;
  v65 = v84;
  v75 = v89;
  v80 = v90;
  v77 = v91;
  v78 = v88;
  v66 = v92;
  v61 = v85;
  v62 = v93;
  v69 = v86;
  v70 = v94;
  v63 = v95;
  v79 = v96;
  v76 = v98;
  v56 = v99;
  v57 = v97;
  v9 = a3 + 8;
  if ((a4 & 2) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v9, &v84, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v9, &v84, a5);
  }

  v71 = v86;
  v72 = v84;
  v52 = v87;
  v53 = v85;
  v73 = v90;
  v74 = v88;
  v50 = v91;
  v51 = v89;
  v67 = v94;
  v68 = v92;
  v48 = v95;
  v49 = v93;
  v83 = v96;
  v47 = v97;
  v82 = v98;
  v46 = v99;
  v58 = a5;
  v54 = a3;
  v10 = a3 + 16;
  if ((a4 & 4) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v10, &v84, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v10, &v84, a5);
  }

  v11 = v84;
  v55 = v86;
  v44 = v87;
  v45 = v85;
  v59 = v90;
  v60 = v88;
  v42 = v91;
  v43 = v89;
  v12 = v92;
  v41 = v93;
  v13 = v94;
  v14 = v95;
  v16 = v96;
  v15 = v97;
  v17 = v98;
  v18 = v99;
  if ((a4 & 8) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v54 + 24, &v84, v58);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v54 + 24, &v84, v58);
  }

  a1[4] = v11 | (v45 << 8);
  v19 = v84;
  *a1 = v65 | (v61 << 8);
  v20 = v85;
  v21 = v86;
  a1[1] = v69 | (v64 << 8);
  v22 = v87;
  v23 = v88;
  a1[2] = v66 | (v62 << 8);
  v24 = v89;
  v25 = v90;
  a1[3] = v70 | (v63 << 8);
  v26 = v91;
  a1[5] = v55 | (v44 << 8);
  v27 = v92;
  a1[6] = v12 | (v41 << 8);
  v28 = v93;
  a1[7] = v13 | (v14 << 8);
  result = v94;
  v30 = v95;
  v31 = (a1 + a2);
  *v31 = v78 | (v75 << 8);
  v32 = v96;
  v33 = v97;
  v31[1] = v80 | (v77 << 8);
  v34 = v98;
  v35 = v19 | (v20 << 8);
  v36 = v99;
  v31[2] = v79 | (v57 << 8);
  v31[3] = v76 | (v56 << 8);
  v37 = v21 | (v22 << 8);
  v31[4] = v60 | (v43 << 8);
  v31[5] = v59 | (v42 << 8);
  v38 = v23 | (v24 << 8);
  v31[6] = v16 | (v15 << 8);
  v31[7] = v17 | (v18 << 8);
  v39 = (a1 + a2 + a2);
  *v39 = v72 | (v53 << 8);
  v39[1] = v71 | (v52 << 8);
  v39[2] = v68 | (v49 << 8);
  v39[3] = v67 | (v48 << 8);
  v39[4] = v35;
  v39[5] = v37;
  v39[6] = v27 | (v28 << 8);
  v39[7] = result | (v30 << 8);
  v40 = (v39 + a2);
  *v40 = v74 | (v51 << 8);
  v40[1] = v73 | (v50 << 8);
  v40[2] = v83 | (v47 << 8);
  v40[3] = v82 | (v46 << 8);
  v40[4] = v38;
  v40[5] = v25 | (v26 << 8);
  v40[6] = v32 | (v33 << 8);
  v40[7] = v34 | (v36 << 8);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 0;
  v4 = 0;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = 8 * (a1 & 7);
  v7 = a3 & 0xFFFFFFFD;
  v8 = ((a3 & 0xFFFFFFFD) == 1) << 7;
  v9 = v6;
  do
  {
    if ((v9 - v6 + (v4 << 6) - 61) >= 0xFFFFFFFFFFFFFFBFLL)
    {
      v13 = 0;
      v14 = 0;
      v15 = 4;
      do
      {
        v16 = 64 - v9;
        if (64 - v9 >= v15)
        {
          v16 = v15;
        }

        v13 |= ((*(v5 + 8 * v4) >> v9) & ~(-1 << v16)) << v14;
        v14 += v16;
        v17 = v16 + v9;
        v4 += v17 >> 6;
        v9 = v17 & 0x3F;
        v15 -= v16;
      }

      while (v15);
      v12 = 16 * (v13 & 0xF);
    }

    else
    {
      v12 = 0;
    }

    v18 = ((v12 << 27 >> 31) + 8) | v12;
    if (v12 == 240)
    {
      v18 = 255;
    }

    if (!v12)
    {
      v18 = 0;
    }

    if (v12 == 128 && v7 == 1)
    {
      v18 = v12;
    }

    if (a3 != 4)
    {
      v12 = v18;
    }

    *(a2 + 8 * v3) = v12 ^ v8;
    if ((v9 - v6 + (v4 << 6) - 61) < 0xFFFFFFFFFFFFFFBFLL)
    {
      v10 = 0;
      if (a3 == 4)
      {
        goto LABEL_3;
      }

LABEL_30:
      v25 = v10 == 128 && v7 == 1;
      if (!v25 && v10)
      {
        if (v10 == 240)
        {
          v10 = 255;
        }

        else
        {
          v10 |= (v10 << 27 >> 31) + 8;
        }
      }

      goto LABEL_3;
    }

    v20 = 0;
    v21 = 0;
    v22 = 4;
    do
    {
      v23 = 64 - v9;
      if (64 - v9 >= v22)
      {
        v23 = v22;
      }

      v20 |= ((*(v5 + 8 * v4) >> v9) & ~(-1 << v23)) << v21;
      v21 += v23;
      v24 = v23 + v9;
      v4 += v24 >> 6;
      v9 = v24 & 0x3F;
      v22 -= v23;
    }

    while (v22);
    v10 = 16 * (v20 & 0xF);
    if (a3 != 4)
    {
      goto LABEL_30;
    }

LABEL_3:
    result = v10 ^ v8;
    *(a2 + 8 * v3++ + 4) = result;
  }

  while (v3 != 8);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3)
{
  v172 = *MEMORY[0x29EDCA608];
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = *(a1 & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 >> v4;
  v7 = (v5 >> (v4 | 3u)) & 7;
  if ((v4 | 3uLL) - v4 <= 0x3D)
  {
    v8 = (8 * (a1 & 7)) | 6;
  }

  else
  {
    v8 = (8 * (a1 & 7)) | 3;
  }

  if ((v4 | 3uLL) - v4 <= 0x3D)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  if ((v6 & 7) == 0)
  {
    if ((v8 - v4 - 63) < 0xFFFFFFFFFFFFFFBFLL)
    {
      v10 = 0;
LABEL_12:
      v11 = 0;
      v12 = 0;
      goto LABEL_13;
    }

    v10 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 2;
    do
    {
      v33 = 64 - v8;
      if (64 - v8 >= v32)
      {
        v33 = v32;
      }

      v30 |= ((*(v3 + 8 * v10) >> v8) & ~(-1 << v33)) << v31;
      v31 += v33;
      v10 += (v33 + v8) >> 6;
      v8 = (v33 + v8) & 0x3F;
      v32 -= v33;
    }

    while (v32);
    v34 = v30 & 3;
    if (v34 > 1)
    {
      v11 = 0;
      if (v34 == 2)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }
    }

    else
    {
      if (!v34)
      {
        goto LABEL_12;
      }

      v12 = 0;
      v11 = 255;
    }

LABEL_13:
    v13 = 8;
    v170 = v12;
    if (v9)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v10 = 0;
  v11 = 0;
  v12 = (v6 & 7) + 2;
  v13 = 6;
  v170 = v12;
  if (v9)
  {
LABEL_9:
    v162 = 0;
    v14 = v9 + 2;
    goto LABEL_17;
  }

LABEL_14:
  if ((v8 - v4 + (v10 << 6) - 63) < 0xFFFFFFFFFFFFFFBFLL)
  {
    v13 += 2;
LABEL_16:
    v162 = 0;
    v14 = 0;
    goto LABEL_17;
  }

  v35 = 0;
  v36 = 0;
  v37 = 2;
  do
  {
    v38 = 64 - v8;
    if (64 - v8 >= v37)
    {
      v38 = v37;
    }

    v35 |= ((*(v3 + 8 * v10) >> v8) & ~(-1 << v38)) << v36;
    v36 += v38;
    v39 = v38 + v8;
    v10 += v39 >> 6;
    v8 = v39 & 0x3F;
    v37 -= v38;
  }

  while (v37);
  v13 += 2;
  v40 = v35 & 3;
  if (v40 > 1)
  {
    v162 = 0;
    if (v40 == 2)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }
  }

  else
  {
    if (!v40)
    {
      goto LABEL_16;
    }

    v14 = 0;
    v162 = 255;
  }

LABEL_17:
  v171 = v14;
  v15 = kDQuadParamTable;
  v17 = v14 >= v12;
  v18 = v14 < v12;
  v19 = v14;
  v20 = kDQuadParamTable[10 * v14 + 6];
  v167 = kDQuadParamTable[10 * v12 + 6];
  v16 = v167;
  v168 = v20;
  v169[0] = v167;
  v169[1] = v20;
  if (*(&v170 + (v14 >= v12)) == *(&v170 + (v14 < v12)))
  {
    v21 = v167;
  }

  else
  {
    v22 = v169[v14 < v12];
    v21 = v167;
    if (v22 >= 1)
    {
      *(&v167 + v18) = 0;
      *(&v167 + v17) += v22;
      v21 = v167;
    }
  }

  v23 = &kDQuadParamTable[10 * v12];
  v25 = v23[4];
  v24 = v23[5];
  v26 = v21 - v16;
  if (v26 >= 0)
  {
    v27 = v24;
    if (!v26)
    {
      goto LABEL_43;
    }

    v27 = v26 + v24;
    goto LABEL_24;
  }

  v28 = -v26;
  v29 = &kDQuadParamTable[10 * v12];
  if (v29[7] >= v28)
  {
    v27 = v24;
  }

  else
  {
    v27 = v24 - 1;
    if (!v29[8])
    {
      v26 = -1;
LABEL_24:
      v25 += v26;
    }
  }

LABEL_43:
  if (v25 >= 8)
  {
    v41 = 8;
  }

  else
  {
    v41 = v25;
  }

  v42 = 8 * (v24 != 0);
  if (v42 >= v27)
  {
    v43 = v27;
  }

  else
  {
    v43 = v42;
  }

  v44 = &kDQuadParamTable[10 * v19];
  v46 = v44[4];
  v45 = v44[5];
  v47 = v168 - v20;
  if (v47 < 0)
  {
    v49 = -v47;
    v50 = &kDQuadParamTable[10 * v19];
    if (v50[7] >= v49)
    {
      LODWORD(v48) = v45;
      goto LABEL_57;
    }

    LODWORD(v48) = v45 - 1;
    if (!v50[8])
    {
      v47 = -1;
      goto LABEL_52;
    }
  }

  else
  {
    LODWORD(v48) = v45;
    if (v47)
    {
      LODWORD(v48) = v47 + v45;
LABEL_52:
      v46 += v47;
    }
  }

LABEL_57:
  if (v46 >= 8)
  {
    v51 = 8;
  }

  else
  {
    v51 = v46;
  }

  v52 = 8 * (v45 != 0);
  if (v52 >= v48)
  {
    v48 = v48;
  }

  else
  {
    v48 = v52;
  }

  if (v12)
  {
    v53 = 0;
    if (v25 && (v8 - v4 + (v10 << 6) + v41) <= 0x40)
    {
      v53 = 0;
      v54 = 0;
      v55 = v41;
      do
      {
        v56 = 64 - v8;
        if (64 - v8 >= v55)
        {
          v56 = v55;
        }

        v53 |= ((*(v3 + 8 * v10) >> v8) & ~(-1 << v56)) << v54;
        v54 += v56;
        v57 = v56 + v8;
        v10 += v57 >> 6;
        v8 = v57 & 0x3F;
        v55 -= v56;
      }

      while (v55);
    }

    v11 = v53 << (8 - v41);
    v13 += v41;
  }

  if (v19)
  {
    v58 = 0;
    if (v46 && (v8 - v4 + (v10 << 6) + v51) <= 0x40)
    {
      v58 = 0;
      v59 = 0;
      v60 = v51;
      do
      {
        v61 = 64 - v8;
        if (64 - v8 >= v60)
        {
          v61 = v60;
        }

        v58 |= ((*(v3 + 8 * v10) >> v8) & ~(-1 << v61)) << v59;
        v59 += v61;
        v62 = v61 + v8;
        v10 += v62 >> 6;
        v8 = v62 & 0x3F;
        v60 -= v61;
      }

      while (v60);
    }

    v162 = v58 << (8 - v51);
    v13 += v51;
  }

  v163 = 0;
  v164 = 0;
  if (v43)
  {
    if ((v8 - v4 + (v10 << 6) + 3) <= 0x40)
    {
      v63 = 0;
      v64 = 0;
      v65 = 3;
      do
      {
        v66 = 64 - v8;
        if (64 - v8 >= v65)
        {
          v66 = v65;
        }

        v63 |= ((*(v3 + 8 * v10) >> v8) & ~(-1 << v66)) << v64;
        v64 += v66;
        v67 = v66 + v8;
        v10 += v67 >> 6;
        v8 = v67 & 0x3F;
        v65 -= v66;
      }

      while (v65);
    }

    else
    {
      v63 = 0;
    }

    v164 = v63;
    v13 += 3;
  }

  if (v48)
  {
    if ((v8 - v4 + (v10 << 6) + 3) <= 0x40)
    {
      v68 = 0;
      v69 = 0;
      v70 = 3;
      do
      {
        v71 = 64 - v8;
        if (64 - v8 >= v70)
        {
          v71 = v70;
        }

        v68 |= ((*(v3 + 8 * v10) >> v8) & ~(-1 << v71)) << v69;
        v69 += v71;
        v72 = v71 + v8;
        v10 += v72 >> 6;
        v8 = v72 & 0x3F;
        v70 -= v71;
      }

      while (v70);
    }

    else
    {
      v68 = 0;
    }

    v163 = v68;
    v13 += 3;
  }

  v73 = 0;
  v74 = a3 & 0xFFFFFFFD;
  v75 = 64 - v13;
  v76 = (64 - v13) / 7u;
  v166 = 0;
  v77 = (v8 | (v10 << 6)) + v75 % 7;
  memset(v165, 0, sizeof(v165));
  do
  {
    v79 = v77 >> 6;
    v80 = v77 & 0x3F;
    if (v43)
    {
      if (v80 - v4 + (v77 & 0xFFFFFFFFFFFFFFC0) + v43 <= 0x40)
      {
        v81 = 0;
        v82 = 0;
        v83 = v43;
        do
        {
          v84 = 64 - v80;
          if (64 - v80 >= v83)
          {
            v84 = v83;
          }

          v81 |= ((*(v3 + 8 * v79) >> v80) & ~(-1 << v84)) << v82;
          v82 += v84;
          v85 = v84 + v80;
          v79 += v85 >> 6;
          v80 = v85 & 0x3F;
          v83 -= v84;
        }

        while (v83);
      }

      else
      {
        v81 = 0;
      }

      *(v165 + v73) = v81;
    }

    if (v48)
    {
      if (v80 - v4 + (v79 << 6) + v48 <= 0x40)
      {
        v86 = 0;
        v87 = 0;
        v88 = v48;
        do
        {
          v89 = 64 - v80;
          if (64 - v80 >= v88)
          {
            v89 = v88;
          }

          v86 |= ((*(v3 + 8 * v79) >> v80) & ~(-1 << v89)) << v87;
          v87 += v89;
          v90 = v89 + v80;
          v79 += v90 >> 6;
          v80 = v90 & 0x3F;
          v88 -= v89;
        }

        while (v88);
      }

      else
      {
        v86 = 0;
      }

      *(&v165[1] + v73 + 3) = v86;
      v78 = v48 + v43;
    }

    else
    {
      v78 = v43;
    }

    v77 = (v80 | (v79 << 6)) + v76 - v78;
    ++v73;
  }

  while (v73 != 7);
  v91 = 0;
  v92 = &v170;
  v93 = &v164;
  result = 0x1000000FFLL;
  v95 = 1;
  v96 = v165;
  v97 = v43;
  do
  {
    v100 = v95;
    v101 = *&v15[10 * *v92 + 2];
    if (v101 >> v97 <= 1)
    {
      v102 = 1;
    }

    else
    {
      v102 = v101 >> v97;
    }

    v103 = v102 >> 1;
    v104 = (1 << (8 - v41)) >> 1;
    if (v102 >> 1 < v104)
    {
      v104 = v102 >> 1;
    }

    v105 = v11;
    v106 = 128 - v11;
    if (v11)
    {
      v107 = v104;
    }

    else
    {
      v107 = 0;
    }

    v108 = v11 == 128;
    v109 = (a2 + 4 * v91);
    if (v97)
    {
      v110 = v15;
      v111 = v101 + v105;
      v112 = -1 << v97;
      v113 = *v93;
      v114 = v106 / v102;
      if (!*v93)
      {
        v118 = 0;
        v117 = v107;
        v116 = v108;
        goto LABEL_155;
      }

      v115 = *v96;
      v116 = v114 == v115;
      if (v105 | v115)
      {
        if (v111 >= 0x100 && (v112 ^ v115) == -1)
        {
          v118 = 1;
          v117 = 255;
LABEL_155:
          v121 = v117 + v105;
          if (a3 != 4 || (v122 = 255, (v121 | 0x80000000) >> 22 != 1022))
          {
            if (v121 >= 0x100)
            {
              v122 = 255;
            }

            else
            {
              v122 = v121;
            }
          }

          v123 = v122 ^ 0x80;
          if (v116)
          {
            v123 = 0;
          }

          if (v74 != 1)
          {
            v123 = v122;
          }

          *(a2 + 4 * v91) = v123;
          if (v113 == 1)
          {
            v124 = v107;
            v125 = v108;
          }

          else
          {
            v126 = *(v165 + 7 * v91 + v118);
            v125 = v114 == v126;
            if (v105 | v126)
            {
              if (v111 >= 0x100 && (v112 ^ v126) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v124 = 255;
              }

              else
              {
                v124 = v103 + v102 * v126;
              }
            }

            else
            {
              v124 = 0;
            }

            ++v118;
          }

          v127 = v124 + v105;
          if (a3 != 4 || (v128 = 255, (v127 | 0x80000000) >> 22 != 1022))
          {
            if (v127 >= 0x100)
            {
              v128 = 255;
            }

            else
            {
              v128 = v127;
            }
          }

          v129 = v128 ^ 0x80;
          if (v125)
          {
            v129 = 0;
          }

          if (v74 != 1)
          {
            v129 = v128;
          }

          v109[2] = v129;
          if (v113 == 2)
          {
            v130 = v107;
            v131 = v108;
          }

          else
          {
            v132 = *(v165 + 7 * v91 + v118);
            v131 = v114 == v132;
            if (v105 | v132)
            {
              if (v111 >= 0x100 && (v112 ^ v132) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v130 = 255;
              }

              else
              {
                v130 = v103 + v102 * v132;
              }
            }

            else
            {
              v130 = 0;
            }

            ++v118;
          }

          v133 = v130 + v105;
          if (a3 != 4 || (v134 = 255, (v133 | 0x80000000) >> 22 != 1022))
          {
            if (v133 >= 0x100)
            {
              v134 = 255;
            }

            else
            {
              v134 = v133;
            }
          }

          v135 = v134 ^ 0x80;
          if (v131)
          {
            v135 = 0;
          }

          if (v74 != 1)
          {
            v135 = v134;
          }

          v109[4] = v135;
          if (v113 == 3)
          {
            v136 = v107;
            v137 = v108;
          }

          else
          {
            v138 = *(v165 + 7 * v91 + v118);
            v137 = v114 == v138;
            if (v105 | v138)
            {
              if (v111 >= 0x100 && (v112 ^ v138) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v136 = 255;
              }

              else
              {
                v136 = v103 + v102 * v138;
              }
            }

            else
            {
              v136 = 0;
            }

            ++v118;
          }

          v139 = v136 + v105;
          if (a3 != 4 || (v140 = 255, (v139 | 0x80000000) >> 22 != 1022))
          {
            if (v139 >= 0x100)
            {
              v140 = 255;
            }

            else
            {
              v140 = v139;
            }
          }

          v141 = v140 ^ 0x80;
          if (v137)
          {
            v141 = 0;
          }

          if (v74 != 1)
          {
            v141 = v140;
          }

          v109[6] = v141;
          if (v113 == 4)
          {
            v142 = v107;
            v143 = v108;
          }

          else
          {
            v144 = *(v165 + 7 * v91 + v118);
            v143 = v114 == v144;
            if (v105 | v144)
            {
              if (v111 >= 0x100 && (v112 ^ v144) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v142 = 255;
              }

              else
              {
                v142 = v103 + v102 * v144;
              }
            }

            else
            {
              v142 = 0;
            }

            ++v118;
          }

          v145 = v142 + v105;
          if (a3 != 4 || (v146 = 255, (v145 | 0x80000000) >> 22 != 1022))
          {
            if (v145 >= 0x100)
            {
              v146 = 255;
            }

            else
            {
              v146 = v145;
            }
          }

          v147 = v146 ^ 0x80;
          if (v143)
          {
            v147 = 0;
          }

          if (v74 != 1)
          {
            v147 = v146;
          }

          v109[8] = v147;
          if (v113 == 5)
          {
            v148 = v107;
            v149 = v108;
          }

          else
          {
            v150 = *(v165 + 7 * v91 + v118);
            v149 = v114 == v150;
            if (v105 | v150)
            {
              if (v111 >= 0x100 && (v112 ^ v150) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v148 = 255;
              }

              else
              {
                v148 = v103 + v102 * v150;
              }
            }

            else
            {
              v148 = 0;
            }

            ++v118;
          }

          v151 = v148 + v105;
          if (a3 != 4 || (v152 = 255, (v151 | 0x80000000) >> 22 != 1022))
          {
            if (v151 >= 0x100)
            {
              v152 = 255;
            }

            else
            {
              v152 = v151;
            }
          }

          v153 = v152 ^ 0x80;
          if (v149)
          {
            v153 = 0;
          }

          if (v74 != 1)
          {
            v153 = v152;
          }

          v109[10] = v153;
          if (v113 == 6)
          {
            v154 = v107;
            v155 = v108;
          }

          else
          {
            v156 = *(v165 + 7 * v91 + v118);
            v155 = v114 == v156;
            if (v105 | v156)
            {
              if (v111 >= 0x100 && (v112 ^ v156) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v154 = 255;
              }

              else
              {
                v154 = v103 + v102 * v156;
              }
            }

            else
            {
              v154 = 0;
            }

            ++v118;
          }

          v157 = v154 + v105;
          if (a3 != 4 || (v158 = 255, (v157 | 0x80000000) >> 22 != 1022))
          {
            if (v157 >= 0x100)
            {
              v158 = 255;
            }

            else
            {
              v158 = v157;
            }
          }

          v159 = v158 ^ 0x80;
          if (v155)
          {
            v159 = 0;
          }

          if (v74 != 1)
          {
            v159 = v158;
          }

          v109[12] = v159;
          if (v113 != 7)
          {
            v160 = *(v165 + 7 * v91 + v118);
            v108 = v114 == v160;
            if (v105 | v160)
            {
              if (v111 >= 0x100 && (v112 ^ v160) == 0xFFFFFFFFFFFFFFFFLL)
              {
                v107 = 255;
              }

              else
              {
                v107 = v103 + v102 * v160;
              }
            }

            else
            {
              v107 = 0;
            }
          }

          v161 = v107 + v105;
          if (a3 != 4 || (LODWORD(v98) = 255, (v161 | 0x80000000) >> 22 != 1022))
          {
            if (v161 >= 0x100)
            {
              LODWORD(v98) = 255;
            }

            else
            {
              LODWORD(v98) = v107 + v105;
            }
          }

          v99 = v98 ^ 0x80;
          if (v108)
          {
            v99 = 0;
          }

          if (v74 == 1)
          {
            LODWORD(v98) = v99;
          }

          v15 = v110;
          goto LABEL_123;
        }

        v117 = v103 + v102 * v115;
      }

      else
      {
        v117 = 0;
      }

      v118 = 1;
      goto LABEL_155;
    }

    if (a3 == 4)
    {
      if ((v105 & 0xFFC00000) == 0x7F800000)
      {
        LODWORD(v98) = 255;
      }

      else
      {
        v98 = 4286578687;
        if ((v105 & 0xFFC00000) != 0xFF800000)
        {
          v98 = v105;
        }

        if (v98 >= 0x100)
        {
          LODWORD(v98) = 255;
        }
      }
    }

    else
    {
      if (v105 >= 0xFF)
      {
        LODWORD(v98) = 255;
      }

      else
      {
        LODWORD(v98) = v105;
      }

      v120 = v98 ^ 0x80;
      if (v102 > v106)
      {
        v120 = 0;
      }

      if (v74 == 1)
      {
        LODWORD(v98) = v120;
      }
    }

    *v109 = v98;
    v109[2] = v98;
    v109[4] = v98;
    v109[6] = v98;
    v109[8] = v98;
    v109[10] = v98;
    v109[12] = v98;
LABEL_123:
    v95 = 0;
    v109[14] = v98;
    v93 = &v163;
    v96 = &v165[1] + 3;
    v11 = v162;
    v97 = v48;
    LOBYTE(v41) = v51;
    v92 = &v171;
    v91 = 1;
  }

  while ((v100 & 1) != 0);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, (v13 + v14), a2, v17, v16, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + 1, a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, (v13 + v14 + 16), a2, v22, v21, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, (v13 + 8 * a2), a2, v25, v24, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, (v13 + 12 * a2), a2, v28, v27, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, (v13 + 8 * a2 + 16), a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, (v13 + 12 * a2 + 16), a2, v32, v31, a7);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, int64x2_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v8 = a5 < 2 || a6 < 2;
  v9 = *(a3 + a4);
  v10 = vzip1q_s64(*a3, v9);
  v11 = vzip2q_s64(*a3, v9);
  v12 = (a3 + 2 * a4);
  v13 = *(v12 + a4);
  v14 = vzip1q_s64(*v12, v13);
  v15 = vzip2q_s64(*v12, v13);
  v16 = vdupq_lane_s16(*v10.i8, 0);
  v17 = vsubq_s8(v10, v16);
  v18 = vsubq_s8(v11, v16);
  v19 = vsubq_s8(v14, v16);
  v20 = vsubq_s8(v15, v16);
  v21 = vqtbl1q_s8(v17, xmmword_29D2F0EF0);
  v22 = vpmaxq_s8(v21, v21);
  v23 = vpminq_s8(v21, v21);
  v24 = vpmaxq_s8(v22, v22);
  v25 = vpminq_s8(v23, v23);
  v26 = vpmaxq_s8(v24, v24);
  v27 = vpminq_s8(v25, v25);
  v28 = vzip1q_s8(v26, v27);
  v29.i64[0] = 0x808080808080808;
  v29.i64[1] = 0x808080808080808;
  v30 = vbicq_s8(vsubq_s8(v29, vclsq_s8(v28)), vceqzq_s8(v28));
  v31 = vpmaxq_s8(v30, v30);
  v32 = vqtbl1q_s8(v18, xmmword_29D2F0EF0);
  v33 = vpmaxq_s8(v32, v32);
  v34 = vpminq_s8(v32, v32);
  v35 = vpmaxq_s8(v33, v33);
  v36 = vpminq_s8(v34, v34);
  v37 = vpmaxq_s8(v35, v35);
  v38 = vpminq_s8(v36, v36);
  v39 = vmaxq_s8(v26, v37);
  v40 = vminq_s8(v27, v38);
  v41 = vzip1q_s8(v37, v38);
  v42 = vbicq_s8(vsubq_s8(v29, vclsq_s8(v41)), vceqzq_s8(v41));
  v43 = vpmaxq_s8(v42, v42);
  v44 = vqtbl1q_s8(v19, xmmword_29D2F0EF0);
  v45 = vpmaxq_s8(v44, v44);
  v46 = vpminq_s8(v44, v44);
  v47 = vpmaxq_s8(v45, v45);
  v48 = vpminq_s8(v46, v46);
  v49 = vpmaxq_s8(v47, v47);
  v50 = vpminq_s8(v48, v48);
  v51 = vmaxq_s8(v39, v49);
  v52 = vminq_s8(v40, v50);
  v53 = vzip1q_s8(v49, v50);
  v54 = vbicq_s8(vsubq_s8(v29, vclsq_s8(v53)), vceqzq_s8(v53));
  v55 = vpmaxq_s8(v54, v54);
  v56 = vqtbl1q_s8(v20, xmmword_29D2F0EF0);
  v57 = vpmaxq_s8(v56, v56);
  v58 = vpminq_s8(v56, v56);
  v59 = vpmaxq_s8(v57, v57);
  v60 = vpminq_s8(v58, v58);
  v61 = vpmaxq_s8(v59, v59);
  v62 = vpminq_s8(v60, v60);
  v63 = vmaxq_s8(v51, v61);
  v64 = vminq_s8(v52, v62);
  v65 = vzip1q_s8(v61, v62);
  v66 = vbicq_s8(vsubq_s8(v29, vclsq_s8(v65)), vceqzq_s8(v65));
  v67 = vpmaxq_s8(v66, v66);
  v68 = vmaxq_s8(vmaxq_s8(v31, v43), vmaxq_s8(v55, v67));
  v69 = vclzq_s8(vsubq_s8(v63, v64));
  v70 = vsubq_s8(v29, v69);
  v71 = vminq_s8(v70, v68);
  if (!vmaxvq_s8(v71))
  {
    *a1 = a3->i16[0];
    *a2 = 1;
    return 2;
  }

  v406 = v11;
  v407 = v14;
  v72.i64[0] = -1;
  v72.i64[1] = -1;
  v73.i64[0] = 0x707070707070707;
  v73.i64[1] = 0x707070707070707;
  v74 = vcgtq_s8(v68, v70);
  v409 = vandq_s8(vsubq_s8(vshlq_s8(v72, vsubq_s8(v73, v69)), v64), v74);
  v75.i64[0] = 0x303030303030303;
  v75.i64[1] = 0x303030303030303;
  v76 = vorrq_s8(vandq_s8(vceqzq_s8(v71), v75), vandq_s8(v74, v29));
  v77 = vmaxq_s8(vminq_s8(vsubq_s8(v71, v31), v75), 0);
  v78 = vmaxq_s8(vminq_s8(vsubq_s8(v71, v43), v75), 0);
  v79 = vmaxq_s8(vminq_s8(vsubq_s8(v71, v55), v75), 0);
  v80 = vmaxq_s8(vminq_s8(vsubq_s8(v71, v67), v75), 0);
  v81.i64[0] = 0x404040404040404;
  v81.i64[1] = 0x404040404040404;
  v82 = vorrq_s8(vbicq_s8(v81, vceqq_s8(vaddq_s8(v80, v79), vnegq_s8(vaddq_s8(v77, v78)))), v76);
  v83 = vsubq_s8(v18, vqtbl1q_s8(v18, xmmword_29D2F0EE0));
  v84 = vsubq_s8(v19, vqtbl1q_s8(v19, xmmword_29D2F0EE0));
  v85 = vsubq_s8(v20, vqtbl1q_s8(v20, xmmword_29D2F0EE0));
  v408 = vsubq_s8(v17, vqtbl1q_s8(v17, xmmword_29D2F0EE0));
  v86 = vqtbl1q_s8(v408, xmmword_29D2F0EF0);
  v87 = vpmaxq_s8(v86, v86);
  v88 = vpminq_s8(v86, v86);
  v89 = vpmaxq_s8(v87, v87);
  v90 = vpminq_s8(v88, v88);
  v91 = vpmaxq_s8(v89, v89);
  v92 = vpminq_s8(v90, v90);
  v93 = vzip1q_s8(v91, v92);
  v94 = v19;
  v95 = vbicq_s8(vsubq_s8(v29, vclsq_s8(v93)), vceqzq_s8(v93));
  v96 = vpmaxq_s8(v95, v95);
  v97 = vqtbl1q_s8(v83, xmmword_29D2F0EF0);
  v98 = vpmaxq_s8(v97, v97);
  v99 = vpminq_s8(v97, v97);
  v100 = vpmaxq_s8(v98, v98);
  v101 = vpminq_s8(v99, v99);
  v102 = vpmaxq_s8(v100, v100);
  v103 = vpminq_s8(v101, v101);
  v104 = vmaxq_s8(v91, v102);
  v105 = vminq_s8(v92, v103);
  v106 = vzip1q_s8(v102, v103);
  v107 = vbicq_s8(vsubq_s8(v29, vclsq_s8(v106)), vceqzq_s8(v106));
  v108 = vpmaxq_s8(v107, v107);
  v109 = vqtbl1q_s8(v84, xmmword_29D2F0EF0);
  v110 = vpmaxq_s8(v109, v109);
  v111 = vpminq_s8(v109, v109);
  v112 = vpmaxq_s8(v110, v110);
  v113 = vpminq_s8(v111, v111);
  v114 = vpmaxq_s8(v112, v112);
  v115 = vpminq_s8(v113, v113);
  v116 = vmaxq_s8(v104, v114);
  v117 = vminq_s8(v105, v115);
  v118 = vzip1q_s8(v114, v115);
  v119 = vbicq_s8(vsubq_s8(v29, vclsq_s8(v118)), vceqzq_s8(v118));
  v120 = vpmaxq_s8(v119, v119);
  v121 = vqtbl1q_s8(v85, xmmword_29D2F0EF0);
  v122 = vpmaxq_s8(v121, v121);
  v123 = vpminq_s8(v121, v121);
  v124 = vpmaxq_s8(v122, v122);
  v125 = vpminq_s8(v123, v123);
  v126 = vpmaxq_s8(v124, v124);
  v127 = vpminq_s8(v125, v125);
  v128 = v20;
  v129 = vmaxq_s8(v116, v126);
  v130 = vminq_s8(v117, v127);
  v131 = vzip1q_s8(v126, v127);
  v132 = vbicq_s8(vsubq_s8(v29, vclsq_s8(v131)), vceqzq_s8(v131));
  v133 = vpmaxq_s8(v132, v132);
  v134 = vmaxq_s8(vmaxq_s8(v96, v108), vmaxq_s8(v120, v133));
  v135 = vclzq_s8(vsubq_s8(v129, v130));
  v136 = vsubq_s8(v29, v135);
  v137 = vcgtq_s8(v134, v136);
  v138 = vminq_s8(v136, v134);
  v136.i64[0] = 0x1010101010101010;
  v136.i64[1] = 0x1010101010101010;
  v139.i64[0] = 0x1818181818181818;
  v139.i64[1] = 0x1818181818181818;
  v140 = vorrq_s8(vandq_s8(vceqzq_s8(v138), v75), vbslq_s8(v137, v139, v136));
  v141 = vmaxq_s8(vminq_s8(vsubq_s8(v138, v96), v75), 0);
  v142 = vmaxq_s8(vminq_s8(vsubq_s8(v138, v108), v75), 0);
  v143 = vmaxq_s8(vminq_s8(vsubq_s8(v138, v120), v75), 0);
  v144 = vmaxq_s8(vminq_s8(vsubq_s8(v138, v133), v75), 0);
  v145 = vsubq_s8(v138, v141);
  v146 = vsubq_s8(v138, v142);
  v147 = vsubq_s8(v138, v143);
  v148 = vsubq_s8(v138, v144);
  v149 = vorrq_s8(v140, vbicq_s8(v81, vceqq_s8(vaddq_s8(v144, v143), vnegq_s8(vaddq_s8(v141, v142)))));
  v150 = vmovl_u8(*v149.i8);
  v142.i64[0] = 0x8000800080008;
  v142.i64[1] = 0x8000800080008;
  v141.i64[0] = 0x2000200020002;
  v141.i64[1] = 0x2000200020002;
  v151 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v147.i8, *v146.i8), *v148.i8), 3uLL), *v145.i8, 0x707070707070707), vandq_s8(vshll_n_u8(*v149.i8, 1uLL), v142)), vbicq_s8(vmovl_s8(*v138.i8), vceqzq_s16((*&v150 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8))))), vandq_s8(vceqq_s16((*&v150 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v141), v142));
  v152 = vceqq_s16((*&vmovl_u8(*v82.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v141);
  v153 = vsubq_s8(v71, v77);
  v154 = vsubq_s8(v71, v78);
  v155 = vsubq_s8(v71, v79);
  v156 = vsubq_s8(v71, v80);
  v157 = vdupq_lane_s16(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddw_s8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v155.i8, *v154.i8), *v156.i8), 3uLL), *v153.i8, 0x707070707070707), vbic_s8(*v71.i8, vcgt_u8(0x808080808080808, *v82.i8))), (*&vshll_n_u8(*v82.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9))), vandq_s8(v152, v142)), v151)), 0);
  if (vaddlvq_s8(v157))
  {
    v158.i64[0] = 0x707070707070707;
    v158.i64[1] = 0x707070707070707;
    v159.i64[0] = -1;
    v159.i64[1] = -1;
    v160 = vandq_s8(vsubq_s8(vshlq_s8(v159, vsubq_s8(v158, v135)), v130), v137);
    v16 = vbslq_s8(v157, vsubq_s8(v16, vqtbl1q_s8(v16, xmmword_29D2F0EE0)), v16);
    v161 = vbslq_s8(v157, v408, v17);
    v162 = vbslq_s8(v157, v83, v18);
    v94 = vbslq_s8(v157, v84, v94);
    v128 = vbslq_s8(v157, v85, v128);
    v153 = vbslq_s8(v157, v145, v153);
    v154 = vbslq_s8(v157, v146, v154);
    v155 = vbslq_s8(v157, v147, v155);
    v156 = vbslq_s8(v157, v148, v156);
    v163 = vbslq_s8(v157, v160, v409);
    v71 = vbslq_s8(v157, v138, v71);
    v82 = vbslq_s8(v157, v149, v82);
    if (v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v163 = v409;
    v162 = v18;
    v161 = v17;
    if (v8)
    {
      goto LABEL_16;
    }
  }

  v410 = v128;
  v165 = v162;
  v166 = v94;
  v167 = vsubq_s8(v10, vqtbl1q_s8(v10, xmmword_29D2F0F00));
  v168 = v406;
  v168.i16[7] = v10.i16[7];
  v169 = vsubq_s8(v406, vqtbl1q_s8(v168, xmmword_29D2F0F10));
  v170 = v407;
  v170.i16[7] = v10.i16[7];
  v171 = v15;
  v171.i16[7] = v10.i16[7];
  v172 = vsubq_s8(v407, vqtbl1q_s8(v170, xmmword_29D2F0F20));
  v173 = vsubq_s8(v15, vqtbl1q_s8(v171, xmmword_29D2F0F30));
  v174 = v167;
  v174.i16[0] = v167.i16[7];
  v174.i16[7] = v167.i16[0];
  v175 = vqtbl1q_s8(v174, xmmword_29D2F0EF0);
  v176 = vpmaxq_s8(v175, v175);
  v177 = vpminq_s8(v175, v175);
  v178 = vpmaxq_s8(v176, v176);
  v179 = vpminq_s8(v177, v177);
  v180 = vpmaxq_s8(v178, v178);
  v181 = vpminq_s8(v179, v179);
  v182 = vzip1q_s8(v180, v181);
  v183.i64[0] = 0x808080808080808;
  v183.i64[1] = 0x808080808080808;
  v184 = vbicq_s8(vsubq_s8(v183, vclsq_s8(v182)), vceqzq_s8(v182));
  v185 = vpmaxq_s8(v184, v184);
  v186 = vqtbl1q_s8(v169, xmmword_29D2F0EF0);
  v187 = vpmaxq_s8(v186, v186);
  v188 = vpminq_s8(v186, v186);
  v189 = vpmaxq_s8(v187, v187);
  v190 = vpminq_s8(v188, v188);
  v191 = vpmaxq_s8(v189, v189);
  v192 = vpminq_s8(v190, v190);
  v193 = vmaxq_s8(v180, v191);
  v194 = vminq_s8(v181, v192);
  v195 = vzip1q_s8(v191, v192);
  v196 = vbicq_s8(vsubq_s8(v183, vclsq_s8(v195)), vceqzq_s8(v195));
  v197 = vpmaxq_s8(v196, v196);
  v198 = vqtbl1q_s8(v172, xmmword_29D2F0EF0);
  v199 = vpmaxq_s8(v198, v198);
  v200 = vpminq_s8(v198, v198);
  v201 = vpmaxq_s8(v199, v199);
  v202 = vpminq_s8(v200, v200);
  v203 = vpmaxq_s8(v201, v201);
  v204 = vpminq_s8(v202, v202);
  v205 = vmaxq_s8(v193, v203);
  v206 = vminq_s8(v194, v204);
  v207 = vzip1q_s8(v203, v204);
  v208 = vbicq_s8(vsubq_s8(v183, vclsq_s8(v207)), vceqzq_s8(v207));
  v209 = vpmaxq_s8(v208, v208);
  v210 = vqtbl1q_s8(v173, xmmword_29D2F0EF0);
  v211 = vpmaxq_s8(v210, v210);
  v212 = vpminq_s8(v210, v210);
  v213 = vpmaxq_s8(v211, v211);
  v214 = vpminq_s8(v212, v212);
  v215 = vpmaxq_s8(v213, v213);
  v216 = vpminq_s8(v214, v214);
  v217 = vmaxq_s8(v205, v215);
  v218 = vminq_s8(v206, v216);
  v219 = vzip1q_s8(v215, v216);
  v220 = vbicq_s8(vsubq_s8(v183, vclsq_s8(v219)), vceqzq_s8(v219));
  v221 = vpmaxq_s8(v220, v220);
  v222 = vmaxq_s8(vmaxq_s8(v185, v197), vmaxq_s8(v209, v221));
  v223 = vclzq_s8(vsubq_s8(v217, v218));
  v224 = vsubq_s8(v183, v223);
  v225 = vcgtq_s8(v222, v224);
  v226 = vminq_s8(v224, v222);
  v224.i64[0] = 0x909090909090909;
  v224.i64[1] = 0x909090909090909;
  v227.i64[0] = 0x202020202020202;
  v227.i64[1] = 0x202020202020202;
  v228 = vorrq_s8(vandq_s8(vceqzq_s8(v226), v227), vsubq_s8(vandq_s8(v225, v224), vmvnq_s8(v225)));
  v183.i64[0] = 0x303030303030303;
  v183.i64[1] = 0x303030303030303;
  v229 = vmaxq_s8(vminq_s8(vsubq_s8(v226, v185), v183), 0);
  v230 = vmaxq_s8(vminq_s8(vsubq_s8(v226, v197), v183), 0);
  v231 = vmaxq_s8(vminq_s8(vsubq_s8(v226, v209), v183), 0);
  v232 = vmaxq_s8(vminq_s8(vsubq_s8(v226, v221), v183), 0);
  v233 = vsubq_s8(v226, v229);
  v234 = vsubq_s8(v226, v230);
  v235 = vsubq_s8(v226, v231);
  v236 = vsubq_s8(v226, v232);
  v237 = vceqq_s8(vaddq_s8(v232, v231), vnegq_s8(vaddq_s8(v229, v230)));
  v230.i64[0] = 0x404040404040404;
  v230.i64[1] = 0x404040404040404;
  v238 = vorrq_s8(v228, vbicq_s8(v230, v237));
  v239.i64[0] = 0x3000300030003;
  v239.i64[1] = 0x3000300030003;
  v240 = vmovl_s8(*v82.i8);
  v232.i64[0] = 0x8000800080008;
  v232.i64[1] = 0x8000800080008;
  v241 = vbicq_s8(vmovl_s8(*v71.i8), vceqzq_s16(vandq_s8(v240, v232)));
  v242 = vandq_s8(v240, v239);
  v239.i64[0] = 0x2000200020002;
  v239.i64[1] = 0x2000200020002;
  v243 = vdupq_lane_s16(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v241, vandq_s8(vshll_n_s8(*v82.i8, 1uLL), v232)), vandq_s8(vceqq_s16(v242, v239), v232)), *v153.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v155.i8, *v154.i8), *v156.i8), 3uLL)), vaddw_s8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v235.i8, *v234.i8), *v236.i8), 3uLL), *v233.i8, 0x707070707070707), vand_s8(vadd_s8(*v238.i8, *v238.i8), 0x808080808080808)), vbic_s8(*v226.i8, vcgt_u8(0x808080808080808, *v238.i8))))), 0);
  if (vaddlvq_s8(v243))
  {
    v244.i64[0] = 0x707070707070707;
    v244.i64[1] = 0x707070707070707;
    v245.i64[0] = -1;
    v245.i64[1] = -1;
    v246 = vandq_s8(vsubq_s8(vshlq_s8(v245, vsubq_s8(v244, v223)), v218), v225);
    v16.i16[0] = vbslq_s8(v243, vextq_s8(v10, v10, 0xEuLL), v16).u16[0];
    v161 = vbslq_s8(v243, v174, v161);
    v162 = vbslq_s8(v243, v169, v165);
    v94 = vbslq_s8(v243, v172, v166);
    v128 = vbslq_s8(v243, v173, v410);
    v153 = vbslq_s8(v243, v233, v153);
    v154 = vbslq_s8(v243, v234, v154);
    v155 = vbslq_s8(v243, v235, v155);
    v156 = vbslq_s8(v243, v236, v156);
    v163 = vbslq_s8(v243, v246, v163);
    v71 = vbslq_s8(v243, v226, v71);
    v82 = vbslq_s8(v243, v238, v82);
  }

  else
  {
    v94 = v166;
    v162 = v165;
    v128 = v410;
  }

LABEL_16:
  v247 = vmovl_s8(*v82.i8);
  v248.i64[0] = 0x8000800080008;
  v248.i64[1] = 0x8000800080008;
  v249 = vbicq_s8(vmovl_s8(*v71.i8), vceqzq_s16(vandq_s8(v247, v248)));
  v250.i64[0] = 0x3000300030003;
  v250.i64[1] = 0x3000300030003;
  v251 = vandq_s8(v247, v250);
  v250.i64[0] = 0x2000200020002;
  v250.i64[1] = 0x2000200020002;
  v252 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v155.i8, *v154.i8), *v156.i8), 3uLL), *v153.i8, 0x707070707070707), vandq_s8(vshll_n_s8(*v82.i8, 1uLL), v248)), v249), vandq_s8(vceqq_s16(v251, v250), v248));
  if ((vpaddq_s16(v252, v252).i16[0] - 227) <= 0xFFFFFFFFFFFFFEF7)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
    return 32;
  }

  else
  {
    v253 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v254 = 8 * (a1 & 7);
    if (v254)
    {
      v255 = *v253 & ~(-1 << v254);
    }

    else
    {
      v255 = 0;
    }

    v256 = ((v71.i8[0] - 1) & 7) << 10;
    if (!v71.i8[0])
    {
      v256 = 0;
    }

    if (v71.i8[1])
    {
      v257 = ((v71.u8[1] << 13) - 0x2000) & 0xE000;
    }

    else
    {
      v257 = 0;
    }

    *a2 = v82.i8[0] << 6;
    v258 = ((v256 | v257) & 0xFFFFFFFFFFFFFC1FLL | v82.i8[0] & 0x1C | (32 * (v82.i8[1] & 0x1F))) >> 2;
    v259 = v255 | (v258 << v254);
    if (v254 >= 0x32)
    {
      *v253 = v259;
      v259 = v258 >> (-8 * (a1 & 7u));
    }

    v260 = (v254 + 14) & 0x3E;
    v261 = v259 | (v16.u16[0] << v260);
    if (v260 >= 0x30)
    {
      *(v253 + (((v254 + 14) >> 3) & 8)) = v261;
      v261 = v16.u16[0] >> -v260;
    }

    v262 = v254 + 30;
    v263 = vsubq_s8(v71, v153);
    v264 = vsubq_s8(v71, v154);
    v265 = vsubq_s8(v71, v155);
    v266 = vsubq_s8(v71, v156);
    v263.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v263, v264), vzip1q_s8(v265, v266)), vzip1q_s16(vtrn2q_s8(v263, v264), vtrn2q_s8(v265, v266))).u64[0];
    v265.i64[0] = 0x202020202020202;
    v265.i64[1] = 0x202020202020202;
    v267 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*&vmovl_u8(*v82.i8), 0x4000400040004)))), v265);
    v265.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v265.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v266.i64[0] = -1;
    v266.i64[1] = -1;
    v268 = vandq_s8(vshlq_u8(v266, vorrq_s8(v267, v265)), v263.u64[0]);
    v269 = vmovl_u8(*v267.i8);
    v270 = vpaddq_s16(vshlq_u16(vmovl_u8(*v268.i8), vtrn1q_s16(0, v269)), vmovl_high_u8(v268));
    v271 = vpaddq_s16(v269, vmovl_high_u8(v267));
    v272 = vmovl_u16(*v271.i8);
    v273 = vmovl_high_u16(v271);
    v274 = vpaddq_s32(vshlq_u32(vmovl_u16(*v270.i8), vtrn1q_s32(0, v272)), vshlq_u32(vmovl_high_u16(v270), vtrn1q_s32(0, v273)));
    v275 = vpaddq_s32(v272, v273);
    v276.i64[0] = v274.u32[0];
    v276.i64[1] = v274.u32[1];
    v277 = v276;
    v276.i64[0] = v274.u32[2];
    v276.i64[1] = v274.u32[3];
    v278 = v276;
    v276.i64[0] = v275.u32[0];
    v276.i64[1] = v275.u32[1];
    v279 = v276;
    v276.i64[0] = v275.u32[2];
    v276.i64[1] = v275.u32[3];
    v280 = vpaddq_s64(vshlq_u64(v277, vzip1q_s64(0, v279)), vshlq_u64(v278, vzip1q_s64(0, v276)));
    v281 = vpaddq_s64(v279, v276);
    v282 = (v254 + 30) & 0x3E;
    v283 = (v280.i64[0] << v282) | v261;
    if ((v281.i64[0] + v282) >= 0x40)
    {
      *(v253 + ((v262 >> 3) & 8)) = v283;
      v283 = v280.i64[0] >> -v282;
    }

    v284 = vceqq_s8(v71, v153);
    v285 = v281.i64[0] + v262;
    v286 = v283 | (v280.i64[1] << v285);
    if ((v285 & 0x3F) + v281.i64[1] >= 0x40)
    {
      *(v253 + ((v285 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v286;
      v286 = v280.i64[1] >> -(v285 & 0x3F);
      if ((v285 & 0x3F) == 0)
      {
        v286 = 0;
      }
    }

    v287 = vandq_s8(v163, v284);
    v288 = v285 + v281.i64[1];
    v289.i64[0] = 0x808080808080808;
    v289.i64[1] = 0x808080808080808;
    v290.i64[0] = -1;
    v290.i64[1] = -1;
    v291 = vandq_s8(vextq_s8(vtstq_s8(v82, v289), 0, 0xEuLL), v71);
    v292.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v292.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v293 = vandq_s8(vshlq_u8(v290, vaddq_s8(v291, v292)), v163);
    v294 = vmovl_u8(*v291.i8);
    v295 = vpaddq_s16(vshlq_u16(vmovl_u8(*v293.i8), vtrn1q_s16(0, v294)), vmovl_high_u8(v293));
    v296 = vpaddq_s16(v294, vmovl_high_u8(v291));
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
    v307 = (v305.i64[0] << v288) | v286;
    if (v306.i64[0] + (v288 & 0x3F) >= 0x40)
    {
      *(v253 + ((v288 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v307;
      v307 = v305.i64[0] >> -(v288 & 0x3F);
      if ((v288 & 0x3F) == 0)
      {
        v307 = 0;
      }
    }

    v308 = vceqq_s8(v71, v154);
    v309 = vaddq_s8(v287, v161);
    v310 = v306.i64[0] + v288;
    v311 = v307 | (v305.i64[1] << v310);
    if ((v310 & 0x3F) + v306.i64[1] >= 0x40)
    {
      *(v253 + ((v310 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v311;
      v311 = v305.i64[1] >> -(v310 & 0x3F);
      if ((v310 & 0x3F) == 0)
      {
        v311 = 0;
      }
    }

    v312 = vandq_s8(v163, v308);
    v313 = v310 + v306.i64[1];
    v314 = vextq_s8(0, v153, 0xEuLL);
    v315.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v315.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v316.i64[0] = -1;
    v316.i64[1] = -1;
    v317 = vandq_s8(vshlq_u8(v316, vaddq_s8(v314, v315)), v309);
    v318 = vmovl_u8(*v314.i8);
    v319 = vmovl_high_u8(v314);
    v320 = vpaddq_s16(vshlq_u16(vmovl_u8(*v317.i8), vtrn1q_s16(0, v318)), vshlq_u16(vmovl_high_u8(v317), vtrn1q_s16(0, v319)));
    v321 = vpaddq_s16(v318, v319);
    v322 = vmovl_u16(*v321.i8);
    v323 = vmovl_high_u16(v321);
    v324 = vpaddq_s32(vshlq_u32(vmovl_u16(*v320.i8), vtrn1q_s32(0, v322)), vshlq_u32(vmovl_high_u16(v320), vtrn1q_s32(0, v323)));
    v325 = vpaddq_s32(v322, v323);
    v326.i64[0] = v324.u32[0];
    v326.i64[1] = v324.u32[1];
    v327 = v326;
    v326.i64[0] = v324.u32[2];
    v326.i64[1] = v324.u32[3];
    v328 = v326;
    v326.i64[0] = v325.u32[0];
    v326.i64[1] = v325.u32[1];
    v329 = v326;
    v326.i64[0] = v325.u32[2];
    v326.i64[1] = v325.u32[3];
    v330 = vpaddq_s64(vshlq_u64(v327, vzip1q_s64(0, v329)), vshlq_u64(v328, vzip1q_s64(0, v326)));
    v331 = vpaddq_s64(v329, v326);
    v332 = (v330.i64[0] << v313) | v311;
    if (v331.i64[0] + (v313 & 0x3F) >= 0x40)
    {
      *(v253 + ((v313 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v332;
      v332 = v330.i64[0] >> -(v313 & 0x3F);
      if ((v313 & 0x3F) == 0)
      {
        v332 = 0;
      }
    }

    v333 = vceqq_s8(v71, v155);
    v334 = vaddq_s8(v162, v312);
    v335 = v331.i64[0] + v313;
    v336 = v332 | (v330.i64[1] << v335);
    if ((v335 & 0x3F) + v331.i64[1] >= 0x40)
    {
      *(v253 + ((v335 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v336;
      v336 = v330.i64[1] >> -(v335 & 0x3F);
      if ((v335 & 0x3F) == 0)
      {
        v336 = 0;
      }
    }

    v337 = vandq_s8(v163, v333);
    v338 = v335 + v331.i64[1];
    v339.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v339.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v340.i64[0] = -1;
    v340.i64[1] = -1;
    v341 = vandq_s8(vshlq_u8(v340, vaddq_s8(v154, v339)), v334);
    v342 = vmovl_u8(*v154.i8);
    v343 = vmovl_high_u8(v154);
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
    v356 = (v354.i64[0] << v338) | v336;
    if (v355.i64[0] + (v338 & 0x3F) >= 0x40)
    {
      *(v253 + ((v338 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v356;
      v356 = v354.i64[0] >> -(v338 & 0x3F);
      if ((v338 & 0x3F) == 0)
      {
        v356 = 0;
      }
    }

    v357 = vceqq_s8(v71, v156);
    v358 = vaddq_s8(v94, v337);
    v359 = v355.i64[0] + v338;
    v360 = v356 | (v354.i64[1] << v359);
    if ((v359 & 0x3F) + v355.i64[1] >= 0x40)
    {
      *(v253 + ((v359 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v360;
      v360 = v354.i64[1] >> -(v359 & 0x3F);
      if ((v359 & 0x3F) == 0)
      {
        v360 = 0;
      }
    }

    v361 = vandq_s8(v163, v357);
    v362 = v359 + v355.i64[1];
    v363.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v363.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v364.i64[0] = -1;
    v364.i64[1] = -1;
    v365 = vandq_s8(vshlq_u8(v364, vaddq_s8(v155, v363)), v358);
    v366 = vmovl_u8(*v155.i8);
    v367 = vmovl_high_u8(v155);
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
      *(v253 + ((v362 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v380;
      v380 = v378.i64[0] >> -(v362 & 0x3F);
      if ((v362 & 0x3F) == 0)
      {
        v380 = 0;
      }
    }

    v381 = vaddq_s8(v128, v361);
    v382 = v379.i64[0] + v362;
    v383 = v380 | (v378.i64[1] << v382);
    if ((v382 & 0x3F) + v379.i64[1] >= 0x40)
    {
      *(v253 + ((v382 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v383;
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
    v387 = vandq_s8(vshlq_u8(v386, vaddq_s8(v156, v385)), v381);
    v388 = vmovl_u8(*v156.i8);
    v389 = vmovl_high_u8(v156);
    v390 = vpaddq_s16(vshlq_u16(vmovl_u8(*v387.i8), vtrn1q_s16(0, v388)), vshlq_u16(vmovl_high_u8(v387), vtrn1q_s16(0, v389)));
    v391 = vpaddq_s16(v388, v389);
    v392 = vmovl_u16(*v391.i8);
    v393 = vmovl_high_u16(v391);
    v394 = vpaddq_s32(vshlq_u32(vmovl_u16(*v390.i8), vtrn1q_s32(0, v392)), vshlq_u32(vmovl_high_u16(v390), vtrn1q_s32(0, v393)));
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
    v402 = (v400.i64[0] << v384) | v383;
    if (v401.i64[0] + (v384 & 0x3F) > 0x3F)
    {
      *(v253 + ((v384 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v402;
      if ((v384 & 0x3F) != 0)
      {
        v402 = v400.i64[0] >> -(v384 & 0x3F);
      }

      else
      {
        v402 = 0;
      }
    }

    v403 = v401.i64[0] + v384;
    v404 = v402 | (v400.i64[1] << v403);
    if ((v403 & 0x3F) + v401.i64[1] >= 0x40)
    {
      *(v253 + ((v403 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v404;
      v404 = v400.i64[1] >> -(v403 & 0x3F);
      if ((v403 & 0x3F) == 0)
      {
        v404 = 0;
      }
    }

    v405 = v403 + v401.i64[1];
    if ((v405 & 0x3F) != 0)
    {
      *(v253 + ((v405 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v404;
    }

    result = (v405 - v254 + 7) >> 3;
    *a2 |= result - 1;
  }

  return result;
}