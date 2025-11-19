uint64_t sub_1AAF1E194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v239 = a8;
  v249 = a7;
  v246 = a5;
  v247 = a6;
  v243 = sub_1AAF8E134();
  v241 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v240 = v235 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AAF8E204();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v238 = v235 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  v251 = 0;
  v252 = 0;
  v16 = 0;
  if (*(a3 + 16) >= 2uLL)
  {
    result = sub_1AAF70A10();
    v251 = v17;
    v252 = v18;
    v16 = v19 & 1;
  }

  v244 = a4;
  v253 = v16;
  v248 = result;
  v20 = *(a2 + 16);
  if (!v20)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v21 = 0;
  v245 = a9;
  v22 = a2 + 32;
  v254 = MEMORY[0x1E69E7CC0];
  v255 = v20;
  v250 = a2 + 32;
  while (2)
  {
    v23 = v22 + 152 * v21;
    v24 = v21;
    while (1)
    {
      if (v24 >= v20)
      {
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v25 = *(v23 + 112);
      v304 = *(v23 + 96);
      v305 = v25;
      v306 = *(v23 + 128);
      v307 = *(v23 + 144);
      v26 = *(v23 + 48);
      v300 = *(v23 + 32);
      v301 = v26;
      v27 = *(v23 + 80);
      v302 = *(v23 + 64);
      v303 = v27;
      v28 = *(v23 + 16);
      v298 = *v23;
      v299 = v28;
      v21 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_98;
      }

      v29 = *(v23 + 112);
      v314 = *(v23 + 96);
      v315 = v29;
      v316 = *(v23 + 128);
      v317 = *(v23 + 144);
      v30 = *(v23 + 48);
      v310 = *(v23 + 32);
      v311 = v30;
      v31 = *(v23 + 80);
      v312 = *(v23 + 64);
      v313 = v31;
      v32 = *(v23 + 16);
      v308 = *v23;
      v309 = v32;
      v33 = sub_1AAF14CF0(&v308);
      if (v33 > 1)
      {
        break;
      }

      if (v33)
      {
        sub_1AACBC764(&v308);
        v284 = v304;
        v285 = v305;
        v286 = v306;
        v287 = v307;
        v280 = v300;
        v281 = v301;
        v282 = v302;
        v283 = v303;
        v278 = v298;
        v279 = v299;
        v34 = sub_1AACBC764(&v278);
        v35 = *(v34 + 16);
        v256 = *(v34 + 24);
        v257 = v35;
        v36 = *(v34 + 32);
        v37 = *(v34 + 48);
        v38 = *(v34 + 56);
        v39 = *(v34 + 64);
        v40 = *(v34 + 72);
        v290 = v300;
        v291 = v301;
        v294 = v304;
        v295 = v305;
        v296 = v306;
        v297 = v307;
        v292 = v302;
        v293 = v303;
        v288 = v298;
        v289 = v299;
        v41 = sub_1AACBC764(&v288);
        result = sub_1AAF20668(v41, &v268, sub_1AAF14CFC);
        goto LABEL_18;
      }

LABEL_13:
      result = sub_1AACBC764(&v308);
      if (*(result + 56) < 0)
      {
        goto LABEL_103;
      }

      if (*(result + 56))
      {
        goto LABEL_102;
      }

      v37 = *(result + 40);
      if ((~v37 & 0x7FF0000000000000) != 0)
      {
        goto LABEL_21;
      }

LABEL_6:
      ++v24;
      v23 += 152;
      if (v21 == v20)
      {
        v22 = v250;
        goto LABEL_28;
      }
    }

    if (v33 == 2)
    {
      goto LABEL_13;
    }

    sub_1AACBC764(&v308);
    v294 = v304;
    v295 = v305;
    v296 = v306;
    v297 = v307;
    v290 = v300;
    v291 = v301;
    v292 = v302;
    v293 = v303;
    v288 = v298;
    v289 = v299;
    v42 = sub_1AACBC764(&v288);
    v43 = *(v42 + 16);
    v36 = *(v42 + 32);
    v37 = *(v42 + 48);
    v38 = *(v42 + 56);
    v39 = *(v42 + 64);
    v40 = *(v42 + 72);
    v256 = *(v42 + 24);
    v257 = v43;
    sub_1AACD7304(v43, v256, v36);

    result = sub_1AADB308C(v37, v38, v39, v40);
LABEL_18:
    if ((v40 & 0x80) != 0)
    {
      goto LABEL_101;
    }

    sub_1AAD04750(v257, v256, v36);

    result = sub_1AADB3124(v37, v38, v39, v40);
    if (v40)
    {
      goto LABEL_99;
    }

    v20 = v255;
    if ((~v37 & 0x7FF0000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_21:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AAD67B50(0, *(v254 + 2) + 1, 1, v254);
      v254 = result;
    }

    v22 = v250;
    v45 = *(v254 + 2);
    v44 = *(v254 + 3);
    if (v45 >= v44 >> 1)
    {
      result = sub_1AAD67B50((v44 > 1), v45 + 1, 1, v254);
      v254 = result;
    }

    v46 = v254;
    *(v254 + 2) = v45 + 1;
    *&v46[v45 + 4] = v37;
    if (v21 != v20)
    {
      continue;
    }

    break;
  }

LABEL_28:
  v47 = *(v22 + 112);
  v266[6] = *(v22 + 96);
  v266[7] = v47;
  v266[8] = *(v22 + 128);
  v267 = *(v22 + 144);
  v48 = *(v22 + 48);
  v266[2] = *(v22 + 32);
  v266[3] = v48;
  v49 = *(v22 + 80);
  v266[4] = *(v22 + 64);
  v266[5] = v49;
  v50 = *(v22 + 16);
  v266[0] = *v22;
  v266[1] = v50;
  sub_1AAF14CF0(v266);
  v51 = sub_1AACBC764(v266);
  v52 = v244;
  if (*(v244 + 16) && (v53 = sub_1AACE1760(*v51), (v54 & 1) != 0) && (sub_1AACE0A98(*(v52 + 56) + 48 * v53, &v308), v55 = BYTE8(v310), BYTE8(v310) != 255))
  {
    v262 = v308;
    v263 = v309;
    v264 = v310;
  }

  else
  {
    v264 = 0;
    v262 = 0u;
    v263 = 0u;
    v55 = 3;
  }

  v56 = v253;
  v265 = v55;
  v57 = *(v247 + 32);
  v58 = v245;
  if (v246 <= 1)
  {
    v74 = sub_1AAF739C0(v57, v52);
    v256 = v76;
    v257 = v74;
    v244 = v77;
    v78 = v248;
  }

  else
  {
    if (*(v57 + 16) == 1)
    {
      v59 = *(v57 + 144);
      v294 = *(v57 + 128);
      v295 = v59;
      v296 = *(v57 + 160);
      v297 = *(v57 + 176);
      v60 = *(v57 + 80);
      v290 = *(v57 + 64);
      v291 = v60;
      v61 = *(v57 + 112);
      v292 = *(v57 + 96);
      v293 = v61;
      v62 = *(v57 + 48);
      v288 = *(v57 + 32);
      v289 = v62;
      sub_1AAD81BF4(&v288, &v308);
      v63 = sub_1AAF70BEC();
      v65 = v64;
      v67 = v66;
      sub_1AAD81C50(&v288);
      v68 = v240;
      sub_1AAF8E124();
      sub_1AAF8E974();
      sub_1AAD04750(v63, v65, v67 & 1);

      (*(v241 + 8))(v68, v243);
      v69 = sub_1AAF88134();
      v256 = v70;
      v257 = v69;
      v72 = v71;
      v244 = v73;
      v56 = v253;
    }

    else
    {
      sub_1AAF8E1F4();
      sub_1AAF8E1E4();
      *&v308 = v246;
      sub_1AAF8E1B4();
      sub_1AAF8E1E4();
      sub_1AAF8E224();
      type metadata accessor for FindClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v80 = [objc_opt_self() bundleForClass_];
      v81 = sub_1AAF8EA44();
      v256 = v82;
      v257 = v81;
      v72 = v83;
      v244 = v84;
    }

    v78 = v248;
    v75 = v72 & 1;
    v58 = v245;
  }

  v242 = v75;
  if (v249 < 2)
  {
    v95 = 0;
    v97 = 0;
    v100 = 0;
    v255 = 0;
  }

  else
  {
    v85 = *(v239 + 112);
    v274 = *(v239 + 96);
    v275 = v85;
    v276 = *(v239 + 128);
    v277 = *(v239 + 144);
    v86 = *(v239 + 48);
    v270 = *(v239 + 32);
    v271 = v86;
    v87 = *(v239 + 80);
    v272 = *(v239 + 64);
    v273 = v87;
    v88 = *(v239 + 16);
    v268 = *v239;
    v269 = v88;
    result = sub_1AAED0054(&v268);
    if (result == 1)
    {
      goto LABEL_106;
    }

    v284 = v274;
    v285 = v275;
    v286 = v276;
    v287 = v277;
    v280 = v270;
    v281 = v271;
    v282 = v272;
    v283 = v273;
    v278 = v268;
    v279 = v269;
    v89 = sub_1AAF70BEC();
    v91 = v90;
    v93 = v92;
    v94 = v240;
    sub_1AAF8E124();
    sub_1AAF8E974();
    sub_1AAD04750(v89, v91, v93 & 1);

    (*(v241 + 8))(v94, v243);
    v95 = sub_1AAF88134();
    v97 = v96;
    LOBYTE(v89) = v98;
    v255 = v99;

    v100 = v89 & 1;
    v56 = v253;
    v58 = v245;
  }

  v307 = *(v247 + 344);
  v101 = *(v247 + 248);
  v300 = *(v247 + 232);
  v301 = v101;
  v102 = *(v247 + 216);
  v298 = *(v247 + 200);
  v299 = v102;
  v103 = *(v247 + 312);
  v304 = *(v247 + 296);
  v305 = v103;
  v306 = *(v247 + 328);
  v104 = *(v247 + 280);
  v302 = *(v247 + 264);
  v303 = v104;
  result = sub_1AAED0054(&v298);
  if (result != 1)
  {
    v314 = v304;
    v315 = v305;
    v316 = v306;
    v317 = v307;
    v310 = v300;
    v311 = v301;
    v312 = v302;
    v313 = v303;
    v308 = v298;
    v309 = v299;
    v105 = sub_1AAF14CF0(&v308);
    result = sub_1AACBC764(&v308);
    v243 = v95;
    v241 = v97;
    v245 = v100;
    if (v105 <= 1)
    {
      v106 = *(v250 + 112);
      v260[6] = *(v250 + 96);
      v260[7] = v106;
      v260[8] = *(v250 + 128);
      v261 = *(v250 + 144);
      v107 = *(v250 + 48);
      v260[2] = *(v250 + 32);
      v260[3] = v107;
      v108 = *(v250 + 80);
      v260[4] = *(v250 + 64);
      v260[5] = v108;
      v109 = *(v250 + 16);
      v260[0] = *v250;
      v260[1] = v109;
      v110 = sub_1AAF14CF0(v260);
      v111 = sub_1AACBC764(v260);
      if ((v110 - 2) >= 2 && (v110 ? (v112 = 73) : (v112 = 80), *(v111 + v112) == 3))
      {
        v134 = 0;
        v135 = *(v254 + 2);
      }

      else
      {
        v134 = 1;
        v135 = v249;
      }

      v136 = *(v254 + 2);
      if (v136)
      {
        if (v136 <= 3)
        {
          v137 = 0;
          v138 = 0.0;
          goto LABEL_64;
        }

        v137 = v136 & 0x7FFFFFFFFFFFFFFCLL;
        v139 = v254 + 6;
        v138 = 0.0;
        v140 = v136 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v138 = v138 + *(v139 - 2) + *(v139 - 1) + *v139 + v139[1];
          v139 += 4;
          v140 -= 4;
        }

        while (v140);
        if (v136 != v137)
        {
LABEL_64:
          v141 = v136 - v137;
          v142 = &v254[v137 + 4];
          do
          {
            v143 = *v142++;
            v138 = v138 + v143;
            --v141;
          }

          while (v141);
        }
      }

      else
      {
        v138 = 0.0;
      }

      v258 = sub_1AAF75A98(COERCE__INT64(v138 / v135), 0, 0);
      v259 = v144;
      sub_1AADA6144();
      v250 = sub_1AAF8EA64();
      v247 = v145;
      LODWORD(v246) = v146;
      v254 = v147;
      if (v249 == 1)
      {
        v148 = v134;
      }

      else
      {
        v148 = 0;
      }

      LODWORD(v237) = v148;
      v149 = v252;
      if (v252)
      {
        v150 = v78;
        v151 = v251;
        v152 = v251;
        v153 = v253;
        v154 = v253;
        v155 = v252;
      }

      else
      {
        sub_1AAF8E214();
        v150 = sub_1AAF8EA44();
        v152 = v156;
        v154 = v157;
        v155 = v158;
        v151 = v251;
        v149 = v252;
        v153 = v253;
      }

      sub_1AADA61DC(v78, v151, v153, v149);
      sub_1AAF8E214();
      v159 = sub_1AAF8EA44();
      v161 = v160;
      v163 = v162;
      v164 = v155;
      v165 = sub_1AAF8EA14();
      sub_1AAD04750(v159, v161, v163 & 1);

      v249 = v164;
      v239 = v152;
      v240 = v150;
      LODWORD(v238) = v154;
      if (v165)
      {
        sub_1AAF714F8();
      }

      else
      {
        sub_1AAF715F8();
      }

      v166 = v244;
      sub_1AAD45E78();
      v167 = swift_allocObject();
      *(v167 + 16) = xmmword_1AAF99670;
      type metadata accessor for FindClass();
      v168 = swift_getObjCClassFromMetadata();
      v169 = [objc_opt_self() bundleForClass_];
      *(v167 + 32) = sub_1AAF8EA44();
      *(v167 + 40) = v171;
      *(v167 + 48) = v170 & 1;
      v173 = v256;
      v172 = v257;
      *(v167 + 56) = v174;
      *(v167 + 64) = v172;
      v176 = v242;
      v175 = v243;
      *(v167 + 72) = v173;
      *(v167 + 80) = v176;
      *(v167 + 88) = v166;
      *(v167 + 96) = v175;
      v177 = v241;
      v178 = v245;
      *(v167 + 104) = v241;
      *(v167 + 112) = v178;
      v179 = v255;
      *(v167 + 120) = v255;
      v180 = *(v167 + 16);
      v256 = v173;
      v257 = v172;
      v255 = v179;
      v244 = v166;
      if (v180)
      {
        v181 = 0;
        v182 = (v167 + 56);
        while (1)
        {
          v183 = *v182;
          if (*v182)
          {
            break;
          }

          ++v181;
          v182 += 4;
          if (v180 == v181)
          {
            goto LABEL_79;
          }
        }

        v186 = *(v182 - 1);
        v236 = *(v182 - 2);
        v237 = v186;
        v187 = v166;
        v188 = *(v182 - 3);
        sub_1AADA61DC(v172, v173, v176, v187);
        v189 = v179;
        v185 = v177;
        sub_1AADA61DC(v175, v177, v245, v189);

        v190 = v236;
        v191 = v237;
        sub_1AADA61DC(v188, v236, v237, v183);
        sub_1AAD04750(v188, v190, v191 & 1);

        v184 = sub_1AAF1161C(8236, 0xE200000000000000, 0, MEMORY[0x1E69E7CC0], v167, v181);

        sub_1AAD04750(v240, v239, v238 & 1);
      }

      else
      {
LABEL_79:
        sub_1AADA61DC(v172, v173, v176, v166);
        sub_1AADA61DC(v175, v177, v245, v179);
        sub_1AAD04750(v240, v239, v238 & 1);
        v184 = 0;
        v185 = v177;
      }

      sub_1AAD04750(v250, v247, v246 & 1);

      swift_setDeallocating();
      sub_1AAF20A28(0, &qword_1ED9B2B78, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1AADA6198(v257, v256, v176, v244);
      sub_1AADA6198(v248, v251, v253, v252);
      sub_1AADA6198(v243, v185, v245, v255);
LABEL_95:
      sub_1AAD57C94(&v262);
      return v184;
    }

    if (v246 != 1)
    {
      sub_1AAF73C2C(v254, 0);
      v250 = v127;
      v129 = v128;
      v131 = v130;
      v120 = v132;

      v133 = v255;
      sub_1AADA61DC(v95, v97, v100, v255);
      v254 = v95;
      v246 = v97;
      v239 = v100;
      v240 = v133;
      v118 = v131;
      goto LABEL_84;
    }

    if (*(v58 + 16))
    {
      v113 = v254;
      sub_1AAF73C2C(v254, *(v58 + 536));
      v115 = v114;
      v249 = v116;
      v118 = v117;
      v120 = v119;
      v121 = *(v113 + 2);

      v250 = v115;
      if (v121 <= 1)
      {
        v254 = 0;
        v246 = 0;
        v239 = 0;
        v240 = 0;
      }

      else
      {
        sub_1AAF8E1F4();
        sub_1AAF8E1E4();
        *&v260[0] = v121;
        sub_1AAF8E1B4();
        sub_1AAF8E1E4();
        v254 = sub_1AAF8E224();
        v247 = v118;
        type metadata accessor for FindClass();
        v122 = swift_getObjCClassFromMetadata();
        v123 = [objc_opt_self() bundleForClass_];
        v118 = v247;
        v254 = sub_1AAF8EA44();
        v246 = v124;
        v239 = v125 & 1;
        v240 = v126;
      }

      v129 = v249;
LABEL_84:
      sub_1AAD45E78();
      v192 = swift_allocObject();
      *(v192 + 16) = xmmword_1AAF99670;
      v193 = swift_allocObject();
      v194 = 0;
      *(v193 + 16) = xmmword_1AAF9E2B0;
      *(v193 + 32) = v78;
      v195 = v251;
      v196 = v252;
      *(v193 + 40) = v251;
      *(v193 + 48) = v56;
      *(v193 + 56) = v196;
      *(v193 + 64) = v250;
      *(v193 + 72) = v129;
      *(v193 + 80) = v118 & 1;
      *(v193 + 88) = v120;
      v197 = v78;
      v237 = v193 + 32;
      v238 = v120;
      v198 = v193 + 32;
      v199 = v78;
      v200 = v196;
      v249 = v129;
      v247 = v118;
      if (v196)
      {
LABEL_87:
        v236 = v194;
        v201 = v56;
        v202 = *(v198 + 8);
        v203 = *(v198 + 16);
        sub_1AADA61DC(v199, v195, v201, v196);
        sub_1AACD7304(v250, v129, v118 & 1);

        sub_1AADA61DC(v197, v202, v203, v200);
        sub_1AAD04750(v197, v202, v203 & 1);

        v204 = sub_1AAF1161C(32, 0xE100000000000000, 0, MEMORY[0x1E69E7CC0], v193, v236);
        v206 = v205;
        LOBYTE(v202) = v207;
        v209 = v208;

        v120 = (v202 & 1);
      }

      else
      {
        v197 = v250;
        if (v120)
        {
          v194 = 1;
          v198 = v193 + 64;
          v200 = v120;
          v199 = v248;
          v129 = v249;
          v195 = v251;
          v196 = v252;
          LOBYTE(v118) = v247;
          goto LABEL_87;
        }

        sub_1AADA61DC(v248, v251, v56, 0);
        sub_1AACD7304(v197, v249, v247 & 1);

        v204 = 0;
        v206 = 0;
        v209 = 0;
      }

      swift_setDeallocating();
      sub_1AAF20A28(0, &qword_1ED9B2B78, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
      v235[1] = v210;
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v192 + 32) = v204;
      *(v192 + 40) = v206;
      *(v192 + 48) = v120;
      *(v192 + 56) = v209;
      v212 = v256;
      v211 = v257;
      *(v192 + 64) = v257;
      *(v192 + 72) = v212;
      v213 = v242;
      v214 = v244;
      *(v192 + 80) = v242;
      *(v192 + 88) = v214;
      v215 = v246;
      *(v192 + 96) = v254;
      *(v192 + 104) = v215;
      v216 = v239;
      v217 = v240;
      *(v192 + 112) = v239;
      *(v192 + 120) = v217;
      v218 = *(v192 + 16);
      v256 = v212;
      v257 = v211;
      if (v218)
      {
        v219 = 0;
        v220 = (v192 + 56);
        while (1)
        {
          v221 = *v220;
          if (*v220)
          {
            break;
          }

          ++v219;
          v220 += 4;
          if (v218 == v219)
          {
            goto LABEL_92;
          }
        }

        v246 = v215;
        v240 = v217;
        v224 = v216;
        v225 = *(v220 - 1);
        v236 = *(v220 - 2);
        v237 = v225;
        v226 = *(v220 - 3);
        sub_1AADA61DC(v211, v212, v213, v214);
        sub_1AADA61DC(v254, v215, v224, v217);

        v227 = v226;
        v228 = v226;
        v216 = v224;
        v230 = v236;
        v229 = v237;
        sub_1AADA61DC(v227, v236, v237, v221);
        v231 = v229 & 1;
        v217 = v240;
        v232 = v228;
        v215 = v246;
        sub_1AAD04750(v232, v230, v231);

        v233 = sub_1AAF1161C(8236, 0xE200000000000000, 0, MEMORY[0x1E69E7CC0], v192, v219);
        v236 = v234;
        v237 = v233;

        v223 = v214;
        v222 = v254;
      }

      else
      {
LABEL_92:
        sub_1AADA61DC(v211, v212, v213, v214);
        v222 = v254;
        sub_1AADA61DC(v254, v215, v216, v217);
        v236 = 0;
        v237 = 0;
        v223 = v214;
      }

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1AADA6198(v222, v215, v216, v217);
      sub_1AADA6198(v257, v256, v213, v223);
      sub_1AAD04750(v250, v249, v247 & 1);

      sub_1AADA6198(v248, v251, v253, v252);
      sub_1AADA6198(v243, v241, v245, v255);
      v184 = v237;
      goto LABEL_95;
    }

    goto LABEL_100;
  }

LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
  return result;
}

uint64_t sub_1AAF1F678(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v88 = a3;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v86 = *v85;
    if (!*v85)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = sub_1AADAA0A4(v7);
      v7 = result;
    }

    v76 = (v7 + 16);
    v77 = *(v7 + 16);
    if (v77 >= 2)
    {
      while (*v88)
      {
        v78 = (v7 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_1AAF1FC60((*v88 + 304 * *v78), (*v88 + 304 * *v80), (*v88 + 304 * v81), v86);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_116;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_117;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_118;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_128;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*v88 + 304 * v6);
      v10 = 304 * v8;
      v11 = (*v88 + 304 * v8);
      v12 = *v11;
      v13 = v8 + 2;
      v14 = v11 + 76;
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v17 = (v9 < v12) ^ (*v14 >= v15);
        ++v13;
        v14 += 38;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_121;
      }

      if (v8 < v6)
      {
        v18 = 304 * v6 - 304;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v21 = *v88;
            if (!*v88)
            {
              goto LABEL_127;
            }

            memcpy(__dst, (v21 + v10), sizeof(__dst));
            memmove((v21 + v10), (v21 + v18), 0x130uLL);
            result = memcpy((v21 + v18), __dst, 0x130uLL);
          }

          ++v20;
          v18 -= 304;
          v10 += 304;
        }

        while (v20 < v19);
        v5 = v88[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_120;
      }

      if (v6 - v8 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v6 < v8)
    {
      goto LABEL_119;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1AAD68568(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v29 = *(v7 + 16);
    v28 = *(v7 + 24);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = sub_1AAD68568((v28 > 1), v29 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v30;
    v31 = v7 + 32;
    v32 = (v7 + 32 + 16 * v29);
    *v32 = v8;
    v32[1] = v6;
    v86 = *v85;
    if (!*v85)
    {
      goto LABEL_129;
    }

    if (v29)
    {
      while (1)
      {
        v33 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v34 = *(v7 + 32);
          v35 = *(v7 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_59:
          if (v37)
          {
            goto LABEL_106;
          }

          v50 = (v7 + 16 * v30);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_108;
          }

          v56 = (v31 + 16 * v33);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_113;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v33 = v30 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v30 < 2)
        {
          goto LABEL_114;
        }

        v60 = (v7 + 16 * v30);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_74:
        if (v55)
        {
          goto LABEL_110;
        }

        v63 = (v31 + 16 * v33);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_112;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_81:
        if (v33 - 1 >= v30)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*v88)
        {
          goto LABEL_126;
        }

        v71 = (v31 + 16 * (v33 - 1));
        v72 = *v71;
        v73 = (v31 + 16 * v33);
        v74 = v73[1];
        sub_1AAF1FC60((*v88 + 304 * *v71), (*v88 + 304 * *v73), (*v88 + 304 * v74), v86);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_101;
        }

        if (v33 > *(v7 + 16))
        {
          goto LABEL_102;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v7 + 16);
        if (v33 >= v75)
        {
          goto LABEL_103;
        }

        v30 = v75 - 1;
        result = memmove((v31 + 16 * v33), v73 + 2, 16 * (v75 - 1 - v33));
        *(v7 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v31 + 16 * v30;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_104;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_105;
      }

      v45 = (v7 + 16 * v30);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_107;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_109;
      }

      if (v49 >= v41)
      {
        v67 = (v31 + 16 * v33);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_115;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_3:
    v5 = v88[1];
    if (v6 >= v5)
    {
      goto LABEL_90;
    }
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_122;
  }

  v86 = v7;
  if (v8 + a4 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v8 + a4;
  }

  if (v7 < v8)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v6 == v7)
  {
LABEL_38:
    v7 = v86;
    goto LABEL_39;
  }

  v22 = *v88;
  v23 = *v88 + 304 * v6;
  v83 = v8;
  v24 = v8 - v6;
LABEL_31:
  v25 = v24;
  v26 = v23;
  while (1)
  {
    if (*v26 >= *(v26 - 38))
    {
LABEL_30:
      ++v6;
      v23 += 304;
      --v24;
      if (v6 != v7)
      {
        goto LABEL_31;
      }

      v6 = v7;
      v8 = v83;
      goto LABEL_38;
    }

    if (!v22)
    {
      break;
    }

    memcpy(__dst, v26, sizeof(__dst));
    memcpy(v26, v26 - 38, 0x130uLL);
    result = memcpy(v26 - 38, __dst, 0x130uLL);
    v26 -= 38;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
  return result;
}

uint64_t sub_1AAF1FC60(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 304;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 304;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[304 * v11] <= a4)
    {
      memmove(a4, __src, 304 * v11);
    }

    v12 = &v4[304 * v11];
    if (v10 >= 304 && v6 > v7)
    {
LABEL_21:
      v15 = v6 - 304;
      v5 -= 304;
      do
      {
        v16 = v5 + 304;
        v17 = (v12 - 304);
        if (*(v12 - 38) < *v15)
        {
          if (v16 != v6)
          {
            memmove(v5, v6 - 304, 0x130uLL);
          }

          if (v12 <= v4 || (v6 -= 304, v15 <= v7))
          {
            v6 = v15;
            goto LABEL_33;
          }

          goto LABEL_21;
        }

        if (v16 != v12)
        {
          memmove(v5, v12 - 304, 0x130uLL);
        }

        v5 -= 304;
        v12 -= 304;
      }

      while (v17 > v4);
      v12 = v17;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[304 * v9] <= a4)
    {
      memmove(a4, __dst, 304 * v9);
    }

    v12 = &v4[304 * v9];
    if (v8 < 304)
    {
      v6 = v7;
    }

    else
    {
      if (v6 < v5)
      {
        while (*v6 < *v4)
        {
          v13 = v6;
          v14 = v7 == v6;
          v6 += 304;
          if (!v14)
          {
            goto LABEL_12;
          }

LABEL_13:
          v7 += 304;
          if (v4 >= v12 || v6 >= v5)
          {
            goto LABEL_15;
          }
        }

        v13 = v4;
        v14 = v7 == v4;
        v4 += 304;
        if (v14)
        {
          goto LABEL_13;
        }

LABEL_12:
        memmove(v7, v13, 0x130uLL);
        goto LABEL_13;
      }

LABEL_15:
      v6 = v7;
    }
  }

LABEL_33:
  v18 = (v12 - v4) / 304;
  if (v6 != v4 || v6 >= &v4[304 * v18])
  {
    memmove(v6, v4, 304 * v18);
  }

  return 1;
}

uint64_t sub_1AAF1FEE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v9[2] = a2;
  v9[5] = sub_1AADE5FA4(sub_1AAF20870, v9, v4);
  sub_1AAF20A28(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AADD9348();
  v5 = sub_1AAF8F544();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
  return result;
}

uint64_t sub_1AAF1FFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v4;
  v13[8] = *(a1 + 128);
  v14 = *(a1 + 144);
  v5 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v5;
  v6 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v6;
  v7 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v7;
  v8 = *(a2 + 304);

  v9 = sub_1AAF749A0(v13, v8);
  v11 = v10;

  *a3 = v9;
  a3[1] = v11;
  return result;
}

uint64_t sub_1AAF20050@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v9[2] = a2;
  v9[5] = sub_1AADE5FA4(sub_1AAF20AB8, v9, v4);
  sub_1AAF20A28(0, &qword_1ED9B0C88, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AADD9348();
  v5 = sub_1AAF8F544();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
  return result;
}

uint64_t sub_1AAF2011C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v4;
  v13[8] = *(a1 + 128);
  v14 = *(a1 + 144);
  v5 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v5;
  v6 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v6;
  v7 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v7;
  v8 = *(a2 + 312);

  v9 = sub_1AAF749A0(v13, v8);
  v11 = v10;

  *a3 = v9;
  a3[1] = v11;
  return result;
}

uint64_t sub_1AAF201B8(uint64_t a1)
{
  v1 = *(a1 + 272);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1AAF201D0()
{
  result = qword_1ED9B1FD0;
  if (!qword_1ED9B1FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B1FD0);
  }

  return result;
}

uint64_t sub_1AAF20224(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AAF20A28(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AAF202A4(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v3 = result + 32;
  v4 = MEMORY[0x1E69E7CC0];
  v50 = *(result + 16);
  v44 = result + 32;
  do
  {
    v45 = v4;
    for (i = v3 + 152 * v2; ; i += 152)
    {
      if (v2 >= v1)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        return result;
      }

      v6 = *(i + 112);
      v60 = *(i + 96);
      v61 = v6;
      v62 = *(i + 128);
      v63 = *(i + 144);
      v7 = *(i + 48);
      v56 = *(i + 32);
      v57 = v7;
      v8 = *(i + 80);
      v58 = *(i + 64);
      v59 = v8;
      v9 = *(i + 16);
      v54 = *i;
      v55 = v9;
      v10 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_25;
      }

      v11 = *(i + 112);
      v64[6] = *(i + 96);
      v64[7] = v11;
      v64[8] = *(i + 128);
      v65 = *(i + 144);
      v12 = *(i + 48);
      v64[2] = *(i + 32);
      v64[3] = v12;
      v13 = *(i + 80);
      v64[4] = *(i + 64);
      v64[5] = v13;
      v14 = *(i + 16);
      v64[0] = *i;
      v64[1] = v14;
      v15 = sub_1AAF14CF0(v64);
      v68 = v2 + 1;
      if (v15 > 1)
      {
        if (v15 == 2)
        {
          v24 = sub_1AACBC764(v64);
          v25 = *(v24 + 8);
          v18 = *(v24 + 16);
          v19 = *(v24 + 24);
          v20 = *(v24 + 32);
          v26 = *(v24 + 80);
          v10 = *(v24 + 88);
          v27 = *(v24 + 96);
          v51[0] = v19;
          LOBYTE(v52[0]) = v27;
          v47 = v25;
          sub_1AACD7304(v25, v18, v19);

          sub_1AACD7304(v26, v10, v27);
          v21 = v27 & 1 | 0x8000000000000000;

          v23 = v26;
          v17 = v47;
        }

        else
        {
          v29 = sub_1AACBC764(v64);
          v17 = *(v29 + 16);
          v30 = *(v29 + 24);
          v19 = *(v29 + 32);
          v20 = *(v29 + 40);
          v31 = *(v29 + 88);
          v10 = *(v29 + 96);
          v32 = *(v29 + 104);
          v51[0] = v19;
          LOBYTE(v52[0]) = v32;
          v46 = v30;
          sub_1AACD7304(v17, v30, v19);

          sub_1AACD7304(v31, v10, v32);
          v21 = v32 & 1 | 0x8000000000000000;

          v23 = v31;
          v18 = v46;
        }
      }

      else if (v15)
      {
        v28 = sub_1AACBC764(v64);
        v17 = *(v28 + 16);
        v18 = *(v28 + 24);
        v20 = *(v28 + 40);
        v51[0] = *(v28 + 32);
        v19 = v51[0];
        v21 = v49 & 1;
        sub_1AACD7304(v17, v18, v51[0]);

        v49 &= 1u;
      }

      else
      {
        v16 = sub_1AACBC764(v64);
        v17 = *(v16 + 8);
        v18 = *(v16 + 16);
        v20 = *(v16 + 32);
        v51[0] = *(v16 + 24);
        v19 = v51[0];
        v21 = v48 & 1;
        sub_1AACD7304(v17, v18, v51[0]);

        v48 &= 1u;
      }

      v67[0] = v17;
      v67[1] = v18;
      v67[2] = v19;
      v67[3] = v20;
      v67[4] = v23;
      v67[5] = v10;
      v67[6] = v21;
      v67[7] = v22;
      sub_1AAD81BF4(&v54, v51);
      v33 = sub_1AAD7B764(v53, v67);
      v52[0] = v53[0];
      v52[1] = v53[1];
      v52[2] = v53[2];
      v52[3] = v53[3];
      sub_1AAD81A30(v52);
      if (v33)
      {
        break;
      }

      result = sub_1AAD81C50(&v54);
      ++v2;
      v1 = v50;
      if (v68 == v50)
      {
        return v45;
      }
    }

    v4 = v45;
    result = swift_isUniquelyReferenced_nonNull_native();
    v66 = v45;
    if ((result & 1) == 0)
    {
      result = sub_1AAD41500(0, *(v45 + 16) + 1, 1);
      v4 = v66;
    }

    v3 = v44;
    v35 = *(v4 + 16);
    v34 = *(v4 + 24);
    if (v35 >= v34 >> 1)
    {
      result = sub_1AAD41500((v34 > 1), v35 + 1, 1);
      v4 = v66;
    }

    *(v4 + 16) = v35 + 1;
    v36 = v4 + 152 * v35;
    v37 = v55;
    *(v36 + 32) = v54;
    *(v36 + 48) = v37;
    v38 = v56;
    v39 = v57;
    v40 = v59;
    *(v36 + 96) = v58;
    *(v36 + 112) = v40;
    *(v36 + 64) = v38;
    *(v36 + 80) = v39;
    v41 = v60;
    v42 = v61;
    v43 = v62;
    *(v36 + 176) = v63;
    *(v36 + 144) = v42;
    *(v36 + 160) = v43;
    *(v36 + 128) = v41;
    v1 = v50;
    v2 = v68;
  }

  while (v68 != v50);
  return v4;
}

uint64_t sub_1AAF20668(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AAF206D0(uint64_t a1, uint64_t a2)
{
  sub_1AACFDAA8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAF20734(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AAF20A28(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1AAF207A4()
{
  if (!qword_1ED9B0F20)
  {
    sub_1AAF20A28(255, &qword_1ED9B0CA0, &type metadata for AccessibilityDataField, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9B0F20);
    }
  }
}

uint64_t sub_1AAF20850(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AAF20890(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1AAF208F0(_OWORD *a1)
{
  result = 0.0;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_1AAF2091C(_OWORD *a1)
{
  result = 0.0;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1AAF2094C(uint64_t a1)
{
  v1 = *(a1 + 280);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1AAF20964()
{
  if (!qword_1ED9B0C70)
  {
    sub_1AAD45FFC();
    v0 = sub_1AAF8FE74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B0C70);
    }
  }
}

uint64_t sub_1AAF209BC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1AAF20A28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AAF20A98(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1AAF20B70()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      sub_1AAF8FD64();
    }

    else
    {
      sub_1AAF20C0C(*(v0 + 48), *(v0 + 56));
    }
  }

  v3 = *(v0 + 24);
  if (v3 == 1 || !v3 && *(v1 + 16) == 1)
  {
    CGPathCloseSubpath(*v1);
  }

  if (__OFSUB__(0, v3))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = -v3;
  }
}

__n128 sub_1AAF20C0C(double a1, double a2)
{
  v5 = *(v2 + 16);
  if (v5 == 1)
  {
    *(v2 + 16) = 2;
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else if (v5)
  {
    *(v2 + 16) = 3;
    sub_1AAF20AE8();
  }

  else
  {
    *(v2 + 16) = 1;
    if (*(v2 + 24) == 1)
    {
      sub_1AAF8FD64();
    }

    else
    {
      sub_1AAF8FD54();
    }
  }

  result = *(v2 + 48);
  v7 = *(v2 + 64);
  *(v2 + 32) = result;
  *(v2 + 48) = v7;
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

int64x2_t sub_1AAF20CE8()
{
  v0[1].i64[0] = 0;
  result = vdupq_n_s64(0x7FF8000000000000uLL);
  v0[2] = result;
  v0[3] = result;
  v0[4] = result;
  return result;
}

uint64_t sub_1AAF20D34(double a1, double a2)
{
  v5 = v2[6];
  v6 = v2[7];
  v7 = v2[1] * 0.5;
  pow((v2[4] - v5) * (v2[4] - v5) + (v2[5] - v6) * (v2[5] - v6), v7);
  v8 = v2[8];
  v9 = v2[9];
  pow((v5 - v8) * (v5 - v8) + (v6 - v9) * (v6 - v9), v7);
  pow((v8 - a1) * (v8 - a1) + (v9 - a2) * (v9 - a2), v7);
  return sub_1AAF8FD74();
}

void sub_1AAF20F48()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      sub_1AAF8FD64();
    }

    else
    {
      sub_1AAF20FE4(*(v0 + 48), *(v0 + 56));
    }
  }

  v3 = *(v0 + 24);
  if (v3 == 1 || !v3 && *(v1 + 16) == 1)
  {
    CGPathCloseSubpath(*v1);
  }

  if (__OFSUB__(0, v3))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = -v3;
  }
}

__n128 sub_1AAF20FE4(double a1, double a2)
{
  v5 = *(v2 + 16);
  if (v5 == 1)
  {
    *(v2 + 16) = 2;
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else if (v5)
  {
    *(v2 + 16) = 3;
    sub_1AAF20D34(a1, a2);
  }

  else
  {
    *(v2 + 16) = 1;
    if (*(v2 + 24) == 1)
    {
      sub_1AAF8FD64();
    }

    else
    {
      sub_1AAF8FD54();
    }
  }

  result = *(v2 + 48);
  v7 = *(v2 + 64);
  *(v2 + 32) = result;
  *(v2 + 48) = v7;
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_1AAF210C8@<X0>(double a1@<X0>, unsigned __int8 a2@<W1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      Mutable = CGPathCreateMutable();
      a4[3] = &_s4StepVN;
      a4[4] = &off_1F1FE4C40;
      result = swift_allocObject();
      *a4 = result;
      *(result + 16) = Mutable;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 40) = a1;
      *(result + 48) = vdupq_n_s64(0x7FF8000000000000uLL);
    }

    else
    {
      result = CGPathCreateMutable();
      v12 = result;
      if (a1 == 0.0)
      {
        a4[3] = &_s6LinearVN;
        a4[4] = &off_1F1FE4AB0;
        *a4 = 0;
        a4[1] = 0;
        a4[2] = result;
      }

      else
      {
        if (a3)
        {
          a4[3] = &_s9MonotoneXVN;
          a4[4] = &off_1F1FE4B78;
        }

        else
        {
          sub_1AAF21438();
          a4[3] = v14;
          a4[4] = &off_1F1FE49F0;
        }

        result = swift_allocObject();
        *a4 = result;
        *(result + 24) = 0;
        *(result + 32) = 0;
        *(result + 16) = v12;
        v15 = vdupq_n_s64(0x7FF8000000000000uLL);
        *(result + 40) = v15;
        *(result + 56) = v15;
        *(result + 72) = 0x7FF8000000000000;
      }
    }
  }

  else
  {
    if (a2)
    {
      v10 = CGPathCreateMutable();
      if ((*&a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        a4[3] = &_s10CatmullRomVN;
        a4[4] = &off_1F1FE4790;
        result = swift_allocObject();
        *a4 = result;
        *(result + 16) = v10;
        *(result + 24) = a1;
      }

      else
      {
        a4[3] = &_s8CardinalVN;
        a4[4] = &off_1F1FE46C0;
        result = swift_allocObject();
        *a4 = result;
        *(result + 16) = v10;
        *(result + 24) = 0x3FC5555555555555;
      }
    }

    else
    {
      v7 = CGPathCreateMutable();
      a4[3] = &_s8CardinalVN;
      a4[4] = &off_1F1FE46C0;
      result = swift_allocObject();
      *a4 = result;
      *(result + 16) = v7;
      *(result + 24) = (1.0 - a1) / 6.0;
    }

    *(result + 32) = 0;
    *(result + 40) = 0;
    v13 = vdupq_n_s64(0x7FF8000000000000uLL);
    *(result + 48) = v13;
    *(result + 64) = v13;
    *(result + 80) = v13;
  }

  return result;
}

uint64_t sub_1AAF212E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0;
  v7 = 0;
  v8 = *(result + 16);
  v9 = (result + 48);
  do
  {
    if (v6 >= v8)
    {
      if (v7)
      {
LABEL_2:
        result = (*(a3 + 16))(a2, a3);
        if (v8 == v6)
        {
          goto LABEL_14;
        }
      }

      else if (v8 == v6)
      {
LABEL_14:
        (*(a3 + 48))(a2, a3);
        result = sub_1AAF8E954();
        *a4 = v12;
        *(a4 + 16) = v13;
        *(a4 + 32) = v14;
        return result;
      }

      v7 = 0;
      goto LABEL_4;
    }

    if ((v7 & 1) == *v9)
    {
      if (!*v9)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (!*v9)
      {
        goto LABEL_2;
      }

      (*(a3 + 8))(a2, a3);
      v7 = 1;
    }

    result = (*(a3 + 40))(a2, a3, *(v9 - 2), *(v9 - 1));
LABEL_4:
    v9 += 3;
  }

  while (!__OFADD__(v6++, 1));
  __break(1u);
  return result;
}

void sub_1AAF21438()
{
  if (!qword_1EB4270A0[0])
  {
    v0 = type metadata accessor for CurveFamilies.FlippedCurveFamily();
    if (!v1)
    {
      atomic_store(v0, qword_1EB4270A0);
    }
  }
}

uint64_t sub_1AAF214A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = 0;
  v6 = 0;
  v7 = 0;
  v8 = *(result + 16);
  v9 = result + 32;
  v10 = (a3 + 40);
  while (1)
  {
    if (v7 >= v8)
    {
      if (v6)
      {
        goto LABEL_10;
      }

      if (v7 == v8)
      {
LABEL_24:
        (*(a3 + 48))(a2, a3);
        result = sub_1AAF8E954();
        *a4 = v21;
        *(a4 + 16) = v22;
        *(a4 + 32) = v23;
        return result;
      }

LABEL_3:
      v6 = 0;
      goto LABEL_4;
    }

    v12 = v9 + 40 * v7;
    if ((v6 & 1) != *(v12 + 32))
    {
      break;
    }

    if (*(v12 + 32))
    {
      goto LABEL_20;
    }

LABEL_4:
    v11 = __OFADD__(v7++, 1);
    if (v11)
    {
      goto LABEL_27;
    }
  }

  if (*(v12 + 32))
  {
    (*(a3 + 24))(a2, a3);
    (*(a3 + 8))(a2, a3);
    v20 = 0;
    v6 = 1;
LABEL_20:
    result = (*(a3 + 40))(a2, a3, *(v12 + 16), *(v12 + 24));
    v11 = __OFADD__(v20++, 1);
    if (v11)
    {
      goto LABEL_31;
    }

    goto LABEL_4;
  }

LABEL_10:
  v13 = *(a3 + 16);
  v13(a2, a3);
  result = (*(a3 + 8))(a2, a3);
  if (v20 < 1)
  {
    goto LABEL_28;
  }

  if (v7 < 1)
  {
    goto LABEL_29;
  }

  if (v7 > v8)
  {
    goto LABEL_30;
  }

  v19 = v13;
  v14 = *v10;
  result = (*v10)(a2, a3, *(v9 + 40 * v7 - 40), *(v9 + 40 * v7 - 32));
  v15 = v20 - 1;
  if (v20 == 1)
  {
LABEL_2:
    v19(a2, a3);
    result = (*(a3 + 32))(a2, a3);
    if (v7 == v8)
    {
      goto LABEL_24;
    }

    goto LABEL_3;
  }

  v16 = 2;
  while (1)
  {
    v17 = v7 - v16;
    if (__OFSUB__(v7, v16))
    {
      break;
    }

    if (v17 >= v8)
    {
      goto LABEL_26;
    }

    result = v14(a2, a3, *(v9 + 40 * v17), *(v9 + 40 * v17 + 8));
    ++v16;
    if (!--v15)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1AAF21740(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AAF21794(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CurvePointLine(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CurvePointLine(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

CGMutablePathRef sub_1AAF21918(uint64_t a1)
{
  v1 = (*(*(a1 + 24) + 48))(*(a1 + 16));
  Mutable = CGPathCreateMutable();
  sub_1AAF8FD34();

  return Mutable;
}

void sub_1AAF219BC()
{
  v1 = *(v0 + 8);
  if (v1)
  {
    if (v1 != 1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*v0 == 1)
  {
LABEL_3:
    CGPathCloseSubpath(*(v0 + 16));
  }

LABEL_4:
  if (__OFSUB__(0, v1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 8) = -v1;
  }
}

uint64_t sub_1AAF21A24()
{
  if (*v0)
  {
    *v0 = 2;
  }

  else
  {
    *v0 = 1;
    if (v0[1] != 1)
    {
      return sub_1AAF8FD54();
    }
  }

  return sub_1AAF8FD64();
}

double sub_1AAF21AC0(double a1, double a2)
{
  v3 = v2[5];
  v4 = v2[6];
  v5 = v3 - v2[3];
  if (v5 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3 - v2[3];
  }

  v7 = a1 - v3;
  v8 = (v4 - v2[4]) / v6;
  if (v7 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v7;
  }

  v10 = (a2 - v4) / v9;
  v11 = 1.0;
  if (v8 >= 0.0)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = -1.0;
  }

  if (v10 < 0.0)
  {
    v11 = -1.0;
  }

  v13 = (v5 * v10 + v7 * v8) / (v7 + v5);
  v14 = fabs(v8);
  v15 = fabs(v10);
  if (v15 >= v14)
  {
    v15 = v14;
  }

  v16 = fabs(v13) * 0.5;
  if (v16 >= v15)
  {
    v16 = v15;
  }

  return v16 * (v11 + v12);
}

void sub_1AAF21B50()
{
  v1 = v0;
  v2 = *(v0 + 8);
  if (v2 == 3)
  {
    sub_1AAF8FD74();
  }

  else if (v2 == 2)
  {
    sub_1AAF8FD64();
  }

  v3 = *(v0 + 16);
  if (v3 == 1 || !v3 && v2 == 1)
  {
    CGPathCloseSubpath(*v1);
  }

  if (__OFSUB__(0, v3))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 16) = -v3;
  }
}

__n128 sub_1AAF21C5C(double a1, double a2)
{
  v5 = *(v2 + 8);
  switch(v5)
  {
    case 2:
      *(v2 + 8) = 3;
      v6 = sub_1AAF21AC0(a1, a2);
      break;
    case 1:
      *(v2 + 8) = 2;
LABEL_11:
      v6 = NAN;
      goto LABEL_12;
    case 0:
      *(v2 + 8) = 1;
      if (*(v2 + 16) == 1)
      {
        sub_1AAF8FD64();
      }

      else
      {
        sub_1AAF8FD54();
      }

      goto LABEL_11;
    default:
      v6 = sub_1AAF21AC0(a1, a2);
      break;
  }

  sub_1AAF8FD74();
LABEL_12:
  result = *(v2 + 40);
  *(v2 + 24) = result;
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  *(v2 + 56) = v6;
  return result;
}

int64x2_t sub_1AAF21E28()
{
  *(v0 + 8) = 0;
  result = vdupq_n_s64(0x7FF8000000000000uLL);
  *(v0 + 24) = result;
  *(v0 + 40) = result;
  *(v0 + 56) = 0x7FF8000000000000;
  return result;
}

void sub_1AAF21E70()
{
  v1 = *(v0 + 24);
  v2 = v1 > 0.0 && v1 < 1.0;
  if (v2 && *(v0 + 8) == 2)
  {
    sub_1AAF8FD64();
  }

  v3 = *(v0 + 16);
  if (v3 == 1)
  {
    CGPathCloseSubpath(*v0);
LABEL_15:
    if (__OFSUB__(0, v3))
    {
      __break(1u);
    }

    else
    {
      *(v0 + 16) = -v3;
      *(v0 + 24) = 1.0 - v1;
    }

    return;
  }

  if (v3)
  {
    goto LABEL_15;
  }

  if (*(v0 + 8) == 1)
  {
    v4 = *v0;

    CGPathCloseSubpath(v4);
  }
}

uint64_t sub_1AAF21F50(double a1, double a2)
{
  if (*(v2 + 8))
  {
    *(v2 + 8) = 2;
    sub_1AAF8FD64();
  }

  else
  {
    *(v2 + 8) = 1;
    if (*(v2 + 16) != 1)
    {
      result = sub_1AAF8FD54();
      goto LABEL_5;
    }
  }

  result = sub_1AAF8FD64();
LABEL_5:
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

int64x2_t sub_1AAF22078()
{
  v0->i64[1] = 0;
  result = vdupq_n_s64(0x7FF8000000000000uLL);
  v0[2] = result;
  return result;
}

uint64_t sub_1AAF22094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v492 = a3;
  v5 = type metadata accessor for ChartDisplayList.RectangleItem(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v475 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v482 = type metadata accessor for ChartDisplayList.BarItem(0);
  MEMORY[0x1EEE9AC00](v482);
  v484 = &v475 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v483 = &v475 - v10;
  sub_1AAF26348(0, &qword_1ED9B5558, 255, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v475 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v486 = &v475 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v481 = &v475 - v17;
  *&v490 = sub_1AAF8E244();
  *&v489 = *(v490 - 8);
  MEMORY[0x1EEE9AC00](v490);
  v19 = &v475 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v487 = &v475 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v485 = &v475 - v23;
  v480 = type metadata accessor for ChartDisplayList.ClipRect(0);
  MEMORY[0x1EEE9AC00](v480);
  v488 = (&v475 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AAF2C8E8(a1 + 336, &v502, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
  v25 = *(a1 + 402);
  sub_1AAF2C8E8(&v502, &v493, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
  v26 = BYTE1(v497);
  if (v26 > 0xFE)
  {
    if (qword_1ED9B6620 != -1)
    {
      swift_once();
    }

    v27 = qword_1ED9C3950;

    v28 = sub_1AAF2C968(&v502, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
    *&v517 = v27;
    goto LABEL_17;
  }

  if (!v26)
  {
    v28 = sub_1AAF2C968(&v502, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
    *&v517 = v493;
LABEL_17:
    BYTE8(v518[1]) = 0;
    goto LABEL_18;
  }

  if (v26 != 1)
  {
    v566[2] = v495;
    v566[3] = v496;
    v567 = v497;
    v566[0] = v493;
    v566[1] = v494;
    v29 = *(a2 + 400);
    if (v29 == 255)
    {
      memset(v564, 0, 40);
      BYTE8(v564[2]) = -1;
    }

    else
    {
      sub_1AAEC9C10(v566, *(a2 + 384), v29, v564);
      if (BYTE8(v564[2]) != 255)
      {
        sub_1AAF2C968(&v502, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
        v28 = sub_1AAE63F58(v566);
        v517 = v564[0];
        v518[0] = v564[1];
        *(v518 + 9) = *(&v564[1] + 9);
        goto LABEL_18;
      }
    }

    sub_1AAF2C968(v564, &qword_1EB426B58, &type metadata for ChartDisplayList.Style);
    v30 = sub_1AAF8ECE4();
    sub_1AAE63F58(v566);
    v28 = sub_1AAF2C968(&v502, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
    *&v517 = v30;
    goto LABEL_17;
  }

  sub_1AACBB198(&v493, v564);
  if (v25)
  {
    sub_1AACBB42C(v564, *(&v564[1] + 1));
    *(&v518[0] + 1) = sub_1AAF8E354();
    *&v518[1] = swift_getWitnessTable();
    sub_1AACB2508(&v517);
    sub_1AAF8D864();
    sub_1AAF2C968(&v502, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
  }

  else
  {
    sub_1AAF2C968(&v502, qword_1ED9B1FD8, &type metadata for ResolvedForegroundStyle);
    sub_1AACAEF68(v564, &v517);
  }

  BYTE8(v518[1]) = 1;
  v28 = sub_1AACB634C(v564);
LABEL_18:
  v31 = *(a1 + 8);
  if (v31 <= 2)
  {
    if (*(a1 + 8))
    {
      if (v31 == 1)
      {
        *&v499 = *(a2 + 272);
        v32 = *(a2 + 256);
        v497 = *(a2 + 240);
        v498 = v32;
        v33 = *(a2 + 192);
        v493 = *(a2 + 176);
        v494 = v33;
        v34 = *(a2 + 224);
        v495 = *(a2 + 208);
        v496 = v34;
        MEMORY[0x1EEE9AC00](v28);
        v35 = v491;
        *(&v475 - 2) = v491;
        *(&v475 - 1) = a1;
        *&v490 = sub_1AAF521C4(sub_1AAF2CAF8);
        *&v489 = v36;
        v38 = v37;
        *&v564[6] = *(a2 + 376);
        v39 = *(a2 + 360);
        v564[4] = *(a2 + 344);
        v564[5] = v39;
        v40 = *(a2 + 296);
        v564[0] = *(a2 + 280);
        v564[1] = v40;
        v41 = *(a2 + 328);
        v564[2] = *(a2 + 312);
        v564[3] = v41;
        MEMORY[0x1EEE9AC00](v490);
        *(&v475 - 2) = v35;
        *(&v475 - 1) = a1;
        v42 = sub_1AAF521C4(sub_1AAF2CB18);
        v44 = v43;
        v46 = v45;
        v47 = *(a1 + 632);
        if ((~v47 & 0x7C) == 0)
        {
          goto LABEL_22;
        }

        v49 = *(a1 + 576);
        v194 = *(a1 + 584);
        v52 = *(a1 + 592);
        v195 = *(a1 + 600);
        v196 = *(a1 + 608);
        v197 = *(a1 + 616);
        v198 = *(a1 + 624);
        if ((v47 & 0x40) == 0)
        {
          v50 = HIDWORD(v49);
          v48 = *(a1 + 568);
          v51 = *(a1 + 584);
          *&v502 = v48;
          *(&v502 + 1) = v49;
          v53 = v195;
          *&v503 = v194;
          *(&v503 + 1) = v52;
          *&v504 = v195;
          *(&v504 + 1) = v196;
          *&v505 = v197;
          *(&v505 + 1) = v198;
          LOBYTE(v506) = v47;
          sub_1AAEDA1FC(&v502, v562);
          if ((v38 & 1) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }

        *&v562[0] = *(a1 + 568);
        *(&v562[0] + 1) = v49;
        *&v562[1] = v194;
        *(&v562[1] + 1) = v52;
        *&v562[2] = v195;
        *(&v562[2] + 1) = v196;
        *&v562[3] = v197;
        *(&v562[3] + 1) = v198;
        LOBYTE(v562[4]) = v47 & 0xBF;
        v199 = *(a2 + 472);
        if (v199 != 1 && (sub_1AAECA354(v562, *(a2 + 448), *(a2 + 456), *(a2 + 464) & 1, v199, v547), (v52 = *(&v547[1] + 1)) != 0))
        {
          v53 = *&v547[2];
          v51 = *&v547[1];
          LODWORD(v50) = HIDWORD(v547[0]);
          LODWORD(v49) = DWORD2(v547[0]);
          v48 = *&v547[0];
          if ((v38 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
LABEL_22:
          if (qword_1ED9B2798 != -1)
          {
            swift_once();
          }

          v48 = xmmword_1ED9C34C0;
          LODWORD(v49) = DWORD2(xmmword_1ED9C34C0);
          LODWORD(v50) = HIDWORD(xmmword_1ED9C34C0);
          v51 = qword_1ED9C34D0;
          v52 = qword_1ED9C34D8;
          v53 = qword_1ED9C34E0;

          if ((v38 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

LABEL_25:
        *&v490 = 0;
        *&v489 = *(a2 + 48);
LABEL_26:
        if (v46)
        {
          v42 = 0;
          v44 = *(a2 + 56);
        }

        v54 = *a1;
        sub_1AAEEBB28(&v517, &v506);
        v55 = *(a1 + 640);
        v56 = *(a1 + 408);
        v57 = *(a1 + 416);
        *&v502 = v54;
        DWORD2(v502) = 0;
        v503 = 0uLL;
        *&v504 = v490;
        *(&v504 + 1) = v42;
        *&v505 = v489;
        *(&v505 + 1) = v44;
        *&v509[0] = v48;
        *(&v509[0] + 1) = __PAIR64__(v50, v49);
        *&v509[1] = v51;
        *(&v509[1] + 1) = v52;
        v510 = v53;
        v511 = v55;
        v512 = v56;
        v513 = v57;
        sub_1AAF2CBA0(0, &qword_1ED9AD738, &type metadata for ChartDisplayList.Item, MEMORY[0x1E69E6F90]);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_1AAF92AB0;
        v59 = swift_allocObject();
        sub_1AAEE2ED8(&v502, v59 + 16);
        *(v58 + 32) = v59 | 0x2000000000000000;

        sub_1AAEE2F10(&v502);
        goto LABEL_96;
      }

      v138 = *(a2 + 256);
      v542 = *(a2 + 240);
      v543 = v138;
      v544 = *(a2 + 272);
      v139 = *(a2 + 192);
      v538 = *(a2 + 176);
      v539 = v139;
      v140 = *(a2 + 224);
      v540 = *(a2 + 208);
      v541 = v140;
      if (v538)
      {
        *&v561[40] = *(a2 + 216);
        *&v561[56] = *(a2 + 232);
        *&v561[72] = *(a2 + 248);
        *&v561[8] = *(a2 + 184);
        *&v561[24] = *(a2 + 200);
        *&v561[88] = *(a2 + 264);
        *v561 = v538;
        v141 = *(a2 + 296);
        v531 = *(a2 + 280);
        v532 = v141;
        v142 = *(a2 + 312);
        v143 = *(a2 + 328);
        v144 = *(a2 + 344);
        v145 = *(a2 + 360);
        v537 = *(a2 + 376);
        v535 = v144;
        v536 = v145;
        v533 = v142;
        v534 = v143;
        if (v531)
        {
          v146 = (a1 + 504);
          v147 = *(a2 + 336);
          *&v560[40] = *(a2 + 320);
          *&v560[56] = v147;
          v148 = *(a2 + 368);
          *&v560[72] = *(a2 + 352);
          *&v560[88] = v148;
          v149 = *(a2 + 304);
          *&v560[8] = *(a2 + 288);
          *&v560[24] = v149;
          *v560 = v531;
          v150 = *(a1 + 16);
          v151 = *(a1 + 32);
          v152 = *(a1 + 64);
          v564[2] = *(a1 + 48);
          v564[3] = v152;
          v564[0] = v150;
          v564[1] = v151;
          v153 = *(a1 + 80);
          v154 = *(a1 + 96);
          *(v565 + 9) = *(a1 + 137);
          v155 = *(a1 + 128);
          v564[6] = *(a1 + 112);
          v565[0] = v155;
          v564[4] = v153;
          v564[5] = v154;
          sub_1AAF2CB38(&v538, &v502, sub_1AACFAA34);
          sub_1AAF2CB38(&v531, &v502, sub_1AACFAA34);
          *&v490 = sub_1AAF27C94(v564, v561);
          v157 = v156;
          v158 = *(a1 + 272);
          v562[6] = *(a1 + 256);
          v563[0] = v158;
          *(v563 + 9) = *(a1 + 281);
          v159 = *(a1 + 208);
          v562[2] = *(a1 + 192);
          v562[3] = v159;
          v160 = *(a1 + 240);
          v562[4] = *(a1 + 224);
          v562[5] = v160;
          v161 = *(a1 + 176);
          v562[0] = *(a1 + 160);
          v562[1] = v161;
          *&v162 = COERCE_DOUBLE(sub_1AAF27C94(v562, v560));
          if (v157 & 1) != 0 || (v163)
          {
            sub_1AAEE23A8(MEMORY[0x1E69E7CC0], &v502);
            v83 = v502;
            v58 = *(&v502 + 1);
            v136 = v503;
            v137 = v504;
            goto LABEL_51;
          }

          v230 = *(a1 + 632);
          v484 = v162;
          if ((~v230 & 0x7C) == 0)
          {
            goto LABEL_82;
          }

          v277 = *(a1 + 568);
          v278 = *(a1 + 576);
          v279 = *(a1 + 584);
          v280 = *(a1 + 592);
          v281 = *(a1 + 600);
          v282 = *(a1 + 608);
          v283 = *(a1 + 616);
          v284 = *(a1 + 624);
          if ((v230 & 0x40) == 0)
          {
            v231 = v491;
            v480 = HIDWORD(v278);
            v481 = v278;
            v232 = v277;
            v233 = v279;
            *&v502 = v277;
            *(&v502 + 1) = v278;
            v234 = v281;
            *&v503 = v279;
            *(&v503 + 1) = v280;
            v483 = v280;
            *&v504 = v281;
            *(&v504 + 1) = v282;
            *&v505 = v283;
            *(&v505 + 1) = v284;
            LOBYTE(v506) = v230;
            sub_1AAEDA1FC(&v502, &v493);
            goto LABEL_140;
          }

          v551 = *(a1 + 568);
          v552 = v278;
          v553 = v279;
          v554 = v280;
          v555 = v281;
          v556 = v282;
          v557 = v283;
          v558 = v284;
          v559 = v230 & 0xBF;
          v338 = *(a2 + 472);
          if (v338 != 1 && (sub_1AAECA354(&v551, *(a2 + 448), *(a2 + 456), *(a2 + 464) & 1, v338, &v519), v523))
          {
            v483 = v523;
            v231 = v491;
            v234 = v524;
            v233 = v522;
            v480 = v521;
            v481 = v520;
            v232 = v519;
          }

          else
          {
LABEL_82:
            v231 = v491;
            if (qword_1ED9B2798 != -1)
            {
              swift_once();
            }

            v232 = *&xmmword_1ED9C34C0;
            v481 = DWORD2(xmmword_1ED9C34C0);
            v480 = HIDWORD(xmmword_1ED9C34C0);
            v233 = qword_1ED9C34D0;
            v234 = qword_1ED9C34E0;
            v483 = qword_1ED9C34D8;
          }

LABEL_140:
          v479 = (a1 + 160);
          sub_1AAF04354(v530);
          sub_1AAF2C8E8(a1 + 424, &v502, qword_1ED9B2508, &type metadata for ResolvedSymbol);
          if (BYTE1(v506) == 255)
          {
            v339 = qword_1ED9B2508;
            v340 = &type metadata for ResolvedSymbol;
            v341 = &v502;
LABEL_142:
            sub_1AAF2C968(v341, v339, v340);
LABEL_143:
            v342 = 0;
            v488 = 0;
            *&v489 = 0;
            v343 = 0;
            v344 = 0;
            v345 = 0;
            v346 = -1;
LABEL_214:
            v486 = v345;
            v487 = v344;
            v419 = v343;
            swift_beginAccess();
            v420 = *(v231 + 16);
            v421 = *(v420 + 16);
            v485 = v342;
            v482 = v419;
            if (v421)
            {
              v422 = v342;
              v423 = v488;
              v424 = v419;
              v426 = v486;
              v425 = v487;
              sub_1AAEE2BCC(v422, v488, v419, v489, v487, v486, v346);
              v427 = sub_1AADB0E38(v530);
              if (v428)
              {
                v429 = *(*(v420 + 56) + 8 * v427);
                swift_endAccess();

                sub_1AAF2CA40(v530);

                swift_beginAccess();
                v430 = *(v429 + 16);
                v431 = v423;
                v432 = v346;
                sub_1AAEE2BCC(v485, v431, v424, v489, v425, v426, v346);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *(v429 + 16) = v430;
                v434 = v425;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v430 = sub_1AAD6B5E0(0, *(v430 + 2) + 1, 1, v430);
                  *(v429 + 16) = v430;
                }

                v435 = v484;
                v437 = *(v430 + 2);
                v436 = *(v430 + 3);
                if (v437 >= v436 >> 1)
                {
                  v430 = sub_1AAD6B5E0((v436 > 1), v437 + 1, 1, v430);
                }

                *(v430 + 2) = v437 + 1;
                v438 = &v430[72 * v437];
                *(v438 + 4) = v490;
                *(v438 + 5) = v435;
                v439 = v485;
                v440 = v488;
                *(v438 + 6) = v485;
                *(v438 + 7) = v440;
                *(v438 + 8) = v424;
                v441 = v489;
                *(v438 + 9) = v489;
                *(v438 + 10) = v434;
                *(v438 + 11) = v426;
                v438[96] = v432;
                *(v429 + 16) = v430;
                swift_endAccess();

                sub_1AAEE23A8(MEMORY[0x1E69E7CC0], &v502);
                v442 = v434;
                v443 = v426;
                v83 = v502;
                v58 = *(&v502 + 1);
                v490 = v503;
                v491 = v504;
                sub_1AAF2C63C(&v538, sub_1AACFAA34);
                sub_1AAF2C63C(&v531, sub_1AACFAA34);
                v444 = v482;
                sub_1AAF2CA94(v439, v440, v482, v441, v442, v443, v432);
                sub_1AAF2CA94(v439, v440, v444, v441, v442, v443, v432);
                goto LABEL_59;
              }

              v445 = v485;
              sub_1AAF2CA94(v485, v423, v419, v489, v425, v426, v346);
              v231 = v491;
              v342 = v445;
            }

            swift_endAccess();
            v476 = *a1;
            v478 = MEMORY[0x1E69E6F90];
            sub_1AAF2CBA0(0, &qword_1EB4230A8, &type metadata for ChartDisplayList.LineItem.Point, MEMORY[0x1E69E6F90]);
            v446 = swift_allocObject();
            v477 = xmmword_1AAF92AB0;
            *(v446 + 16) = xmmword_1AAF92AB0;
            v447 = v484;
            *(v446 + 32) = v490;
            *(v446 + 40) = v447;
            v448 = v231;
            v449 = v342;
            v451 = v488;
            v450 = v489;
            *(v446 + 48) = v342;
            *(v446 + 56) = v451;
            *(v446 + 64) = v419;
            *(v446 + 72) = v450;
            v452 = v486;
            v453 = v487;
            *(v446 + 80) = v487;
            *(v446 + 88) = v452;
            *(v446 + 96) = v346;
            type metadata accessor for ChartDisplayList.LineItem.Points();
            *&v490 = swift_allocObject();
            *(v490 + 16) = v446;
            v454 = *(a1 + 112);
            v455 = *(a1 + 128);
            v456 = *(a1 + 80);
            v545[5] = *(a1 + 96);
            v545[6] = v454;
            v546[0] = v455;
            *(v546 + 9) = *(a1 + 137);
            v457 = *(a1 + 64);
            v545[2] = *(a1 + 48);
            v545[3] = v457;
            v545[4] = v456;
            v458 = *(a1 + 32);
            v545[0] = *(a1 + 16);
            v545[1] = v458;
            v459 = v479[6];
            v460 = v479[7];
            v461 = v479[4];
            v547[5] = v479[5];
            v547[6] = v459;
            v548[0] = v460;
            *(v548 + 9) = *(v479 + 121);
            v462 = v479[3];
            v547[2] = v479[2];
            v547[3] = v462;
            v547[4] = v461;
            v463 = v479[1];
            v547[0] = *v479;
            v547[1] = v463;
            v464 = v488;
            sub_1AAEE2BCC(v449, v488, v419, v489, v453, v452, v346);
            v465 = v476;

            LOBYTE(v446) = sub_1AAE63A88(v545, v547);
            sub_1AAEEBB28(&v517, &v505);
            v466 = *(a1 + 640);
            v467 = a1 + *(type metadata accessor for CollectedChartContent.Primitive(0) + 76);
            v468 = *v467;
            LOBYTE(v467) = *(v467 + 8);
            v469 = v346;
            v470 = *(a1 + 408);
            v471 = *(a1 + 416);
            *&v502 = v465;
            DWORD2(v502) = 0;
            v503 = 0uLL;
            v472 = v490;
            *&v504 = v490;
            BYTE8(v504) = v446 & 1;
            *&v508 = v232;
            *(&v508 + 1) = __PAIR64__(v480, v481);
            *&v509[0] = v233;
            *(&v509[0] + 1) = v483;
            *&v509[1] = v234;
            *(&v509[1] + 1) = v466;
            v510 = v468;
            LOBYTE(v511) = v467;
            v512 = v470;
            v513 = v471;
            swift_beginAccess();

            v473 = swift_isUniquelyReferenced_nonNull_native();
            v501 = *(v448 + 16);
            *(v448 + 16) = 0x8000000000000000;
            sub_1AADD4134(v472, v530, v473);
            sub_1AAF2CA40(v530);
            *(v448 + 16) = v501;
            swift_endAccess();
            sub_1AAEE2B64(&v502, &v493);
            v83 = DWORD2(v493);
            sub_1AAF2CBA0(0, &qword_1ED9AD738, &type metadata for ChartDisplayList.Item, v478);
            v58 = swift_allocObject();
            *(v58 + 16) = v477;
            v474 = swift_allocObject();
            sub_1AAEE2B64(&v493, v474 + 16);
            *(v58 + 32) = v474 | 0x3000000000000000;
            sub_1AAF2C63C(&v538, sub_1AACFAA34);
            sub_1AAF2C63C(&v531, sub_1AACFAA34);
            sub_1AAF2CA94(v485, v464, v482, v489, v487, v486, v469);
            sub_1AAEE2B9C(&v493);
            sub_1AAEE2B9C(&v502);
LABEL_223:
            result = sub_1AAEEBC30(&v517);
            goto LABEL_97;
          }

          v514[2] = v504;
          v515 = v505;
          v516 = v506;
          v514[0] = v502;
          v514[1] = v503;
          v347 = *&v490 + 40.0;
          v348 = *&v484 + 40.0;
          sub_1AAEDA2B4(v514, &v502);
          if (!BYTE1(v506))
          {
            v493 = v502;
            v494 = v503;
            *&v495 = v504;
            sub_1AAE3CDD0(v545, v232);
            if (*(&v545[1] + 1))
            {
              v547[0] = v545[0];
              v547[1] = v545[1];
              *&v547[2] = *&v545[2];
            }

            else
            {
              sub_1AAD9B194(&v493, v547);
            }

            v392 = *(a1 + 560);
            if (*(a1 + 520) >> 1 == 0xFFFFFFFFLL && (v392 & 0x7C) == 0 || ((v392 >> 5) & 3) != 1)
            {
              v393 = *(&v547[1] + 1);
              v394 = *&v547[2];
              sub_1AACBB42C(v547, *(&v547[1] + 1));
              (*(v394 + 16))(v393, v394);
            }

            sub_1AACBB42C(v547, *(&v547[1] + 1));
            sub_1AAF8EDA4();
            v342 = v549[0];
            v343 = v549[2];
            v488 = v549[1];
            *&v489 = v549[3];
            v344 = LOBYTE(v549[4]);
            sub_1AAE45A14(&v493);
            sub_1AAEDA1A8(v514);
            v395 = v547;
            goto LABEL_213;
          }

          if (BYTE1(v506) == 1)
          {
            v488 = v502;
            v342 = *a1;

            sub_1AAEDA1A8(v514);
            v343 = *&v347;
            *&v489 = v348;
            v346 = 1;
            v344 = 0x4028000000000000;
            v345 = 0x4028000000000000;
            goto LABEL_214;
          }

          sub_1AAEDA1A8(&v502);
          if (!*(a2 + 408))
          {
            sub_1AAEDA1A8(v514);
            goto LABEL_143;
          }

          v349 = *(a2 + 416);
          sub_1AAEDA2B4(v514, &v493);
          if (BYTE1(v497))
          {
            if (BYTE1(v497) == 1)
            {
              sub_1AAEDA1A8(&v493);
              if (qword_1ED9B59F0 != -1)
              {
                swift_once();
              }

              memset(v549, 0, 40);
            }

            else
            {
              LOBYTE(v547[4]) = v497;
              v547[2] = v495;
              v547[3] = v496;
              v547[0] = v493;
              v547[1] = v494;
              if (*(v349 + 16) && (v396 = sub_1AADB0548(*(&v547[2] + 1)), (v397 & 1) != 0))
              {
                sub_1AAD9B194(*(v349 + 56) + 40 * v396, v549);
                sub_1AAE63F58(v547);
              }

              else
              {
                sub_1AAE63F58(v547);
                memset(v549, 0, 40);
              }
            }
          }

          else
          {
            *v549 = v493;
            *&v549[2] = v494;
            v549[4] = v495;
          }

          if (!v549[3])
          {
            sub_1AAEDA1A8(v514);
            v339 = &qword_1ED9AE4C0;
            v340 = &type metadata for AnyChartSymbolShape;
            v341 = v549;
            goto LABEL_142;
          }

          v545[0] = *v549;
          v545[1] = *&v549[2];
          *&v545[2] = v549[4];
          sub_1AAE3CDD0(v547, v232);
          if (*(&v547[1] + 1))
          {
            v493 = v547[0];
            v494 = v547[1];
            *&v495 = *&v547[2];
          }

          else
          {
            sub_1AAD9B194(v545, &v493);
          }

          v398 = *(a1 + 496);
          v399 = *(a1 + 520);
          v400 = *(a1 + 536);
          v401 = *(a1 + 552);
          v402 = *(a1 + 560);
          v403 = *(a2 + 424);
          v404 = *(a2 + 432);
          v405 = *(a2 + 440);
          if (*(a1 + 520) >> 1 == 0xFFFFFFFFLL && (v402 & 0x7C) == 0)
          {
            goto LABEL_203;
          }

          v410 = (v402 >> 5) & 3;
          if (v410)
          {
            if (v410 == 1)
            {
              v489 = *v146;
              goto LABEL_212;
            }

            *&v549[1] = *v146;
            *&v549[3] = v399;
            *&v549[5] = v400;
            v549[0] = v398;
            v549[7] = v401;
            v550 = v402 & 0x9F;
            if (v405 == 255 || (sub_1AAECB7F4(v549, v403, v404, v405 & 1), (v413 & 1) != 0))
            {
LABEL_203:
              v407 = *(&v494 + 1);
              v406 = v495;
              sub_1AACBB42C(&v493, *(&v494 + 1));
              (*(v406 + 16))(v407, v406);
              *&v409 = v408 * 7.0898154;
              v489 = v409;
LABEL_212:
              sub_1AACBB42C(&v493, *(&v494 + 1));
              sub_1AAF8EDA4();
              v342 = v525;
              v343 = v527;
              v488 = v526;
              *&v489 = v528;
              v344 = v529;
              sub_1AAE45A14(v545);
              sub_1AAEDA1A8(v514);
              v395 = &v493;
LABEL_213:
              sub_1AAE45A14(v395);
              v345 = 0;
              v346 = 0;
              goto LABEL_214;
            }

            v411 = v412;
          }

          else
          {
            v411 = *(a1 + 496);
          }

          v415 = *(&v494 + 1);
          v414 = v495;
          v416 = sqrt(v411);
          sub_1AACBB42C(&v493, *(&v494 + 1));
          (*(v414 + 16))(v415, v414);
          *&v418 = v416 * v417;
          v489 = v418;
          goto LABEL_212;
        }
      }

LABEL_58:
      sub_1AAEE23A8(MEMORY[0x1E69E7CC0], &v502);
      v83 = v502;
      v58 = *(&v502 + 1);
      v491 = v504;
      v490 = v503;
      goto LABEL_59;
    }

    v85 = *(a2 + 256);
    v545[4] = *(a2 + 240);
    v545[5] = v85;
    *&v545[6] = *(a2 + 272);
    v86 = *(a2 + 192);
    v545[0] = *(a2 + 176);
    v545[1] = v86;
    v87 = *(a2 + 224);
    v545[2] = *(a2 + 208);
    v545[3] = v87;
    if (!*&v545[0])
    {
      goto LABEL_58;
    }

    *(&v562[2] + 8) = *(a2 + 216);
    *(&v562[3] + 8) = *(a2 + 232);
    *(&v562[4] + 8) = *(a2 + 248);
    *(v562 + 8) = *(a2 + 184);
    *(&v562[1] + 8) = *(a2 + 200);
    *(&v562[5] + 8) = *(a2 + 264);
    *&v562[0] = *&v545[0];
    v88 = *(a2 + 296);
    *v561 = *(a2 + 280);
    *&v561[16] = v88;
    v89 = *(a2 + 312);
    v90 = *(a2 + 328);
    v91 = *(a2 + 344);
    v92 = *(a2 + 360);
    *&v561[96] = *(a2 + 376);
    *&v561[64] = v91;
    *&v561[80] = v92;
    *&v561[32] = v89;
    *&v561[48] = v90;
    if (!*v561)
    {
      goto LABEL_58;
    }

    v93 = *(a2 + 336);
    *(&v547[2] + 8) = *(a2 + 320);
    *(&v547[3] + 8) = v93;
    v94 = *(a2 + 368);
    *(&v547[4] + 8) = *(a2 + 352);
    *(&v547[5] + 8) = v94;
    v95 = *(a2 + 304);
    *(v547 + 8) = *(a2 + 288);
    *(&v547[1] + 8) = v95;
    *&v547[0] = *v561;
    v96 = *(a1 + 16);
    v97 = *(a1 + 32);
    v98 = *(a1 + 64);
    v495 = *(a1 + 48);
    v496 = v98;
    v493 = v96;
    v494 = v97;
    v99 = *(a1 + 80);
    v100 = *(a1 + 96);
    *(v500 + 9) = *(a1 + 137);
    v101 = *(a1 + 112);
    v500[0] = *(a1 + 128);
    v498 = v100;
    v499 = v101;
    v497 = v99;
    sub_1AAF2CB38(v545, &v502, sub_1AACFAA34);
    sub_1AAF2CB38(v561, &v502, sub_1AACFAA34);
    v102 = COERCE_DOUBLE(sub_1AAF27C94(&v493, v562));
    v104 = v103;
    v105 = *(a1 + 256);
    v106 = *(a1 + 272);
    v107 = *(a1 + 224);
    v564[5] = *(a1 + 240);
    v564[6] = v105;
    v565[0] = v106;
    *(v565 + 9) = *(a1 + 281);
    v108 = *(a1 + 208);
    v564[2] = *(a1 + 192);
    v564[3] = v108;
    v564[4] = v107;
    v109 = *(a1 + 176);
    v564[0] = *(a1 + 160);
    v564[1] = v109;
    v110 = sub_1AAF27C94(v564, v547);
    if (v104 & 1) != 0 || (v111)
    {
      sub_1AAEE23A8(MEMORY[0x1E69E7CC0], &v502);
      v83 = v502;
      v58 = *(&v502 + 1);
      v490 = v503;
      v491 = v504;
      sub_1AAF2C63C(v545, sub_1AACFAA34);
      v84 = v561;
      goto LABEL_52;
    }

    v200 = v110;
    sub_1AAF2C8E8(a1 + 424, &v502, qword_1ED9B2508, &type metadata for ResolvedSymbol);
    if (BYTE1(v506) < 0xFFu)
    {
      if ((v506 & 0xFF00) == 0x100)
      {
        v269 = v502;
        v270 = *a1;
        sub_1AAF2CBA0(0, &qword_1ED9AD738, &type metadata for ChartDisplayList.Item, MEMORY[0x1E69E6F90]);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_1AAF92AB0;
        v271 = swift_allocObject();
        *(v271 + 16) = v270;
        *(v271 + 24) = 0;
        *(v271 + 32) = 0;
        *(v271 + 40) = 0;
        *(v271 + 48) = 0;
        *(v271 + 56) = 0;
        *(v271 + 64) = v102;
        *(v271 + 72) = *&v200;
        __asm { FMOV            V0.2D, #12.0 }

        *(v271 + 80) = _Q0;
        *(v271 + 96) = v269;
        *(v271 + 104) = 0x3FF0000000000000;
        *(v58 + 32) = v271 | 0x9000000000000000;

        sub_1AAF2C63C(v545, sub_1AACFAA34);
        sub_1AAF2C63C(v561, sub_1AACFAA34);

LABEL_96:
        result = sub_1AAEEBC30(&v517);
        v83 = 0;
LABEL_97:
        v192 = 0uLL;
        v193 = 0uLL;
        goto LABEL_98;
      }

      sub_1AAEDA1A8(&v502);
    }

    else
    {
      sub_1AAF2C968(&v502, qword_1ED9B2508, &type metadata for ResolvedSymbol);
    }

    sub_1AAF2C8E8(a1 + 424, v560, qword_1ED9B2508, &type metadata for ResolvedSymbol);
    if (v560[65] == 255)
    {
      v334 = qword_1ED9B2508;
      v335 = &type metadata for ResolvedSymbol;
      v336 = v560;
LABEL_131:
      sub_1AAF2C968(v336, v334, v335);
LABEL_158:
      if (qword_1ED9B0450 != -1)
      {
        swift_once();
      }

      sub_1AAD9B194(&unk_1ED9C33F0, &v538);
      v350 = *&v200;
      v351 = (a1 + 504);
LABEL_161:
      v352 = v350;
      v353 = *(a1 + 496);
      v355 = *v351;
      v354 = v351[1];
      v356 = v351[2];
      v357 = *(a1 + 552);
      v358 = *(a1 + 560);
      v359 = *(a2 + 424);
      v360 = *(a2 + 432);
      v361 = *(a2 + 440);
      v211 = v492;
      if (v354 >> 1 == 0xFFFFFFFF && (v358 & 0x7C) == 0)
      {
LABEL_163:
        v362 = *(&v539 + 1);
        v363 = v540;
        sub_1AACBB42C(&v538, *(&v539 + 1));
        v364 = (*(v363 + 16))(v362, v363);
        v366 = v365 * 7.0898154;
        *&v368 = v367 * 7.0898154;
        v491 = v368;
        v369 = (v364 + -0.5) * 7.0898154 + v102;
        v371 = (v370 + -0.5) * 7.0898154;
LABEL_172:
        v373 = v371 + v352;
        goto LABEL_173;
      }

      v372 = (v358 >> 5) & 3;
      if (v372)
      {
        if (v372 == 1)
        {
          v366 = *(a1 + 496);
          v369 = v102 - v353 * 0.5;
          v373 = v352 - 0.5 * *&v355;
          v491 = v355;
LABEL_173:
          v385 = *a1;
          sub_1AAD9B194(&v538, &v506);
          sub_1AAEEBB28(&v517, &v508 + 8);
          v386 = *(a1 + 640);
          v387 = *(a1 + 408);
          v388 = *(a1 + 416);
          *&v502 = v385;
          DWORD2(v502) = 0;
          v503 = 0uLL;
          *&v504 = v369;
          *(&v504 + 1) = v373;
          *&v505 = v366;
          *(&v505 + 1) = v491;
          v511 = v386;
          v512 = v387;
          v513 = v388;
          sub_1AAF2CBA0(0, &qword_1ED9AD738, &type metadata for ChartDisplayList.Item, MEMORY[0x1E69E6F90]);
          v58 = swift_allocObject();
          *(v58 + 16) = xmmword_1AAF92AB0;
          v389 = swift_allocObject();
          sub_1AAEE2F40(&v502, v389 + 16);
          *(v58 + 32) = v389 | 0x1000000000000000;

          sub_1AAF2C63C(v545, sub_1AACFAA34);
          sub_1AAF2C63C(v561, sub_1AACFAA34);
          sub_1AAEE2F78(&v502);
          sub_1AAE45A14(&v538);
          result = sub_1AAEEBC30(&v517);
          v83 = 0;
LABEL_174:
          v192 = 0uLL;
          v193 = 0uLL;
          goto LABEL_99;
        }

        *&v560[8] = v355;
        *&v560[24] = v354;
        *&v560[40] = v356;
        *v560 = v353;
        *&v560[56] = v357;
        v560[64] = v358 & 0x9F;
        if (v361 == 255)
        {
          goto LABEL_163;
        }

        sub_1AAECB7F4(v560, v359, v360, v361 & 1);
        if (v376)
        {
          goto LABEL_163;
        }

        v374 = v375;
      }

      else
      {
        v374 = *(a1 + 496);
      }

      v377 = *(&v539 + 1);
      v378 = v540;
      v379 = sqrt(v374);
      sub_1AACBB42C(&v538, *(&v539 + 1));
      v380 = (*(v378 + 16))(v377, v378);
      v366 = v379 * v381;
      *&v383 = v379 * v382;
      v491 = v383;
      v369 = v379 * (v380 + -0.5) + v102;
      v371 = v379 * (v384 + -0.5);
      goto LABEL_172;
    }

    v504 = *&v560[32];
    v505 = *&v560[48];
    LOWORD(v506) = *&v560[64];
    v502 = *v560;
    v503 = *&v560[16];
    v337 = *(a2 + 408);
    if (!v337)
    {
      sub_1AAEDA1A8(&v502);
      goto LABEL_158;
    }

    sub_1AAEDA2B4(&v502, v560);
    if (v560[65])
    {
      if (v560[65] == 1)
      {
        sub_1AAEDA1A8(v560);
        if (qword_1ED9B59F0 != -1)
        {
          swift_once();
        }

        goto LABEL_187;
      }

      LOBYTE(v542) = v560[64];
      v540 = *&v560[32];
      v541 = *&v560[48];
      v538 = *v560;
      v539 = *&v560[16];
      if (!*(v337 + 16) || (v390 = sub_1AADB0548(*(&v540 + 1)), (v391 & 1) == 0))
      {
        sub_1AAE63F58(&v538);
LABEL_187:
        sub_1AAEDA1A8(&v502);
        v531 = 0u;
        v532 = 0u;
        *&v533 = 0;
        goto LABEL_188;
      }

      sub_1AAD9B194(*(v337 + 56) + 40 * v390, &v531);
      sub_1AAE63F58(&v538);
      sub_1AAEDA1A8(&v502);
    }

    else
    {
      sub_1AAEDA1A8(&v502);
      v531 = *v560;
      v532 = *&v560[16];
      *&v533 = *&v560[32];
    }

LABEL_188:
    if (*(&v532 + 1))
    {
      v350 = *&v200;
      v351 = (a1 + 504);
      v538 = v531;
      v539 = v532;
      *&v540 = v533;
      goto LABEL_161;
    }

    v334 = &qword_1ED9AE4C0;
    v335 = &type metadata for AnyChartSymbolShape;
    v336 = &v531;
    goto LABEL_131;
  }

  if (v31 != 3)
  {
    if (v31 != 4)
    {
      v164 = *(a2 + 256);
      v547[4] = *(a2 + 240);
      v547[5] = v164;
      *&v547[6] = *(a2 + 272);
      v165 = *(a2 + 192);
      v547[0] = *(a2 + 176);
      v547[1] = v165;
      v166 = *(a2 + 224);
      v547[2] = *(a2 + 208);
      v547[3] = v166;
      if (*&v547[0])
      {
        *(&v564[2] + 8) = *(a2 + 216);
        *(&v564[3] + 8) = *(a2 + 232);
        *(&v564[4] + 8) = *(a2 + 248);
        *(v564 + 8) = *(a2 + 184);
        *(&v564[1] + 8) = *(a2 + 200);
        *(&v564[5] + 8) = *(a2 + 264);
        *&v564[0] = *&v547[0];
        v167 = *(a2 + 296);
        v545[0] = *(a2 + 280);
        v545[1] = v167;
        v168 = *(a2 + 312);
        v169 = *(a2 + 328);
        v170 = *(a2 + 344);
        v171 = *(a2 + 360);
        *&v545[6] = *(a2 + 376);
        v545[4] = v170;
        v545[5] = v171;
        v545[2] = v168;
        v545[3] = v169;
        if (*&v545[0])
        {
          v488 = (a1 + 504);
          v172 = *(a2 + 336);
          *(&v562[2] + 8) = *(a2 + 320);
          *(&v562[3] + 8) = v172;
          v173 = *(a2 + 368);
          *(&v562[4] + 8) = *(a2 + 352);
          *(&v562[5] + 8) = v173;
          v174 = *(a2 + 304);
          *(v562 + 8) = *(a2 + 288);
          *(&v562[1] + 8) = v174;
          *&v562[0] = *&v545[0];
          v175 = *(a1 + 16);
          v176 = *(a1 + 32);
          v177 = *(a1 + 64);
          v504 = *(a1 + 48);
          v505 = v177;
          v502 = v175;
          v503 = v176;
          v178 = *(a1 + 80);
          v179 = *(a1 + 96);
          *(v509 + 9) = *(a1 + 137);
          v180 = *(a1 + 128);
          v508 = *(a1 + 112);
          v509[0] = v180;
          v506 = v178;
          v507 = v179;
          v181 = v491;
          swift_beginAccess();
          sub_1AAF2CB38(v547, &v493, sub_1AACFAA34);
          sub_1AAF2CB38(v545, &v493, sub_1AACFAA34);
          sub_1AAF27F58(&v502, v564, 0, (v181 + 32), v560);
          v182 = *v560;
          v183 = *&v560[8];
          v184 = *(a1 + 256);
          v500[0] = *(a1 + 272);
          *(v500 + 9) = *(a1 + 281);
          v185 = *(a1 + 208);
          v495 = *(a1 + 192);
          v496 = v185;
          v186 = *(a1 + 224);
          v498 = *(a1 + 240);
          v499 = v184;
          v497 = v186;
          v187 = *(a1 + 176);
          v493 = *(a1 + 160);
          v494 = v187;
          sub_1AAF27F58(&v493, v562, 0, (v181 + 32), v561);
          v188 = *v561;
          v189 = *&v561[8];
          swift_endAccess();
          if (v560[48])
          {
            v190 = v488;
            if (v561[48])
            {
              sub_1AAEE23A8(MEMORY[0x1E69E7CC0], &v538);
              v83 = v538;
              v58 = *(&v538 + 1);
              v490 = v539;
              v491 = v540;
              sub_1AAF2C63C(v547, sub_1AACFAA34);
              v84 = v545;
              goto LABEL_52;
            }

            v183 = *(a2 + 48);
            v182 = 0;
          }

          else
          {
            v190 = v488;
            if (v561[48])
            {
              v189 = *(a2 + 56);
              v188 = 0;
            }
          }

          v235 = *a1;
          v236 = *(v190 + 192);
          *&v491 = v182;
          v488 = v235;
          if (v236)
          {

            sub_1AAF8E444();
            v238 = v237;
            v240 = v239;
            v242 = v241;
            v244 = v243;
          }

          else
          {
            v244 = *(a1 + 688);
            v242 = *(a1 + 680);
            v240 = *(a1 + 672);
            v238 = *(a1 + 664);
          }

          v245 = v490;
          v246 = type metadata accessor for CollectedChartContent.Primitive(0);
          sub_1AAF2C7E0(a1 + *(v246 + 72), v13, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
          v247 = v489;
          v248 = *(v489 + 48);
          if (v248(v13, 1, v245) == 1)
          {
            if (qword_1ED9B1D88 != -1)
            {
              swift_once();
            }

            v249 = sub_1AAD0F5D8(v245, qword_1ED9C3498);
            v247 = v489;
            (*(v489 + 16))(v19, v249, v245);
            if (v248(v13, 1, v245) != 1)
            {
              sub_1AAF2C9D8(v13, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
            }
          }

          else
          {
            (*(v247 + 32))(v19, v13, v245);
          }

          sub_1AAEEBB28(&v517, &v7[v5[13]]);
          v250 = *(a1 + 640);
          v251 = *(a1 + 408);
          v252 = *(a1 + 416);
          *v7 = v488;
          *(v7 + 2) = 0;
          *(v7 + 2) = 0;
          *(v7 + 3) = 0;
          *(v7 + 4) = v491;
          *(v7 + 5) = v183;
          *(v7 + 6) = v188;
          *(v7 + 7) = v189;
          *(v7 + 8) = v238;
          *(v7 + 9) = v240;
          *(v7 + 10) = v242;
          *(v7 + 11) = v244;
          (*(v247 + 32))(&v7[v5[12]], v19, v245);
          *&v7[v5[14]] = v250;
          v253 = &v7[v5[15]];
          *v253 = v251;
          *(v253 + 4) = v252;
          sub_1AAF2CBA0(0, &qword_1ED9AD738, &type metadata for ChartDisplayList.Item, MEMORY[0x1E69E6F90]);
          v58 = swift_allocObject();
          *(v58 + 16) = xmmword_1AAF92AB0;
          v254 = swift_allocBox();
          sub_1AAF2CB38(v7, v255, type metadata accessor for ChartDisplayList.RectangleItem);
          *(v58 + 32) = v254 | 0x6000000000000000;

          sub_1AAF2C63C(v547, sub_1AACFAA34);
          sub_1AAF2C63C(v545, sub_1AACFAA34);
          sub_1AAF2C63C(v7, type metadata accessor for ChartDisplayList.RectangleItem);
          goto LABEL_96;
        }
      }

      goto LABEL_58;
    }

    v60 = *(a2 + 256);
    *&v561[64] = *(a2 + 240);
    *&v561[80] = v60;
    *&v561[96] = *(a2 + 272);
    v61 = *(a2 + 192);
    *v561 = *(a2 + 176);
    *&v561[16] = v61;
    v62 = *(a2 + 224);
    *&v561[32] = *(a2 + 208);
    *&v561[48] = v62;
    if (!*v561)
    {
      goto LABEL_58;
    }

    *(&v547[2] + 8) = *(a2 + 216);
    *(&v547[3] + 8) = *(a2 + 232);
    *(&v547[4] + 8) = *(a2 + 248);
    *(v547 + 8) = *(a2 + 184);
    *(&v547[1] + 8) = *(a2 + 200);
    *(&v547[5] + 8) = *(a2 + 264);
    *&v547[0] = *v561;
    v63 = *(a2 + 296);
    *v560 = *(a2 + 280);
    *&v560[16] = v63;
    v64 = *(a2 + 312);
    v65 = *(a2 + 328);
    v66 = *(a2 + 344);
    v67 = *(a2 + 360);
    *&v560[96] = *(a2 + 376);
    *&v560[64] = v66;
    *&v560[80] = v67;
    *&v560[32] = v64;
    *&v560[48] = v65;
    if (!*v560)
    {
      goto LABEL_58;
    }

    v68 = *(a2 + 336);
    *(&v545[2] + 8) = *(a2 + 320);
    *(&v545[3] + 8) = v68;
    v69 = *(a2 + 368);
    *(&v545[4] + 8) = *(a2 + 352);
    *(&v545[5] + 8) = v69;
    v70 = *(a2 + 304);
    *(v545 + 8) = *(a2 + 288);
    *(&v545[1] + 8) = v70;
    *&v545[0] = *v560;
    v71 = *(a1 + 16);
    v72 = *(a1 + 32);
    v73 = *(a1 + 64);
    v504 = *(a1 + 48);
    v505 = v73;
    v502 = v71;
    v503 = v72;
    v74 = *(a1 + 80);
    v75 = *(a1 + 96);
    *(v509 + 9) = *(a1 + 137);
    v76 = *(a1 + 128);
    v508 = *(a1 + 112);
    v509[0] = v76;
    v506 = v74;
    v507 = v75;
    v77 = *(a2 + 480);
    v78 = v491;
    swift_beginAccess();
    sub_1AAF2CB38(v561, &v493, sub_1AACFAA34);
    sub_1AAF2CB38(v560, &v493, sub_1AACFAA34);
    sub_1AAF27F58(&v502, v547, v77, (v78 + 32), &v531);
    v79 = *(a1 + 256);
    v500[0] = *(a1 + 272);
    *(v500 + 9) = *(a1 + 281);
    v80 = *(a1 + 208);
    v495 = *(a1 + 192);
    v496 = v80;
    v81 = *(a1 + 224);
    v498 = *(a1 + 240);
    v499 = v79;
    v497 = v81;
    v82 = *(a1 + 176);
    v493 = *(a1 + 160);
    v494 = v82;
    sub_1AAF27F58(&v493, v545, v77, (v78 + 32), &v538);
    swift_endAccess();
    if (v534 & 1) != 0 || (v541)
    {
      sub_1AAEE23A8(MEMORY[0x1E69E7CC0], v564);
      v83 = v564[0];
      v58 = *(&v564[0] + 1);
      v490 = v564[1];
      v491 = v564[2];
      sub_1AAF2C63C(v561, sub_1AACFAA34);
      v84 = v560;
LABEL_52:
      sub_1AAF2C63C(v84, sub_1AACFAA34);
LABEL_59:
      result = sub_1AAEEBC30(&v517);
      v192 = v490;
      v193 = v491;
LABEL_98:
      v211 = v492;
      goto LABEL_99;
    }

    v478 = *(&v531 + 1);
    v479 = v531;
    v216 = *(&v532 + 1);
    v215 = *&v532;
    v476 = *(&v538 + 1);
    *&v477 = v538;
    v217 = *(&v539 + 1);
    v218 = *&v539;
    if (v77)
    {
      v219 = *(a1 + 128);
      v564[6] = *(a1 + 112);
      v565[0] = v219;
      *(v565 + 9) = *(a1 + 137);
      v220 = *(a1 + 64);
      v564[2] = *(a1 + 48);
      v564[3] = v220;
      v221 = *(a1 + 96);
      v564[4] = *(a1 + 80);
      v564[5] = v221;
      v222 = *(a1 + 32);
      v564[0] = *(a1 + 16);
      v564[1] = v222;
      sub_1AAF28530(v564, v77);
      v223 = *(a1 + 272);
      v562[6] = *(a1 + 256);
      v563[0] = v223;
      *(v563 + 9) = *(a1 + 281);
      v224 = *(a1 + 208);
      v562[2] = *(a1 + 192);
      v562[3] = v224;
      v225 = *(a1 + 240);
      v562[4] = *(a1 + 224);
      v562[5] = v225;
      v226 = *(a1 + 176);
      v562[0] = *(a1 + 160);
      v562[1] = v226;
      sub_1AAF28530(v562, v77);
      v227 = v489;
      v228 = v481;
      if (v216 >= v215)
      {
        v229 = v216;
        goto LABEL_108;
      }
    }

    else
    {
      v227 = v489;
      v228 = v481;
      if (*(&v532 + 1) >= *&v532)
      {
        v229 = *(&v532 + 1);
        if (*(&v539 + 1) >= *&v539)
        {
          v285 = *(&v539 + 1);
          v217 = *&v539;
          goto LABEL_112;
        }

        goto LABEL_109;
      }
    }

    v229 = v215;
    v215 = v216;
LABEL_108:
    if (v217 >= v218)
    {
      v285 = v217;
      v217 = v218;
      goto LABEL_111;
    }

LABEL_109:
    v285 = v218;
LABEL_111:
    v216 = v229;
LABEL_112:
    v568.origin.x = v215;
    v568.origin.y = v217;
    v568.size.width = v216 - v215;
    v568.size.height = v285 - v217;
    CGRectGetWidth(v568);
    v569.origin.x = v215;
    v569.origin.y = v217;
    v569.size.width = v216 - v215;
    v569.size.height = v285 - v217;
    CGRectGetHeight(v569);
    sub_1AAF8E444();
    v287 = v286;
    v289 = v288;
    v291 = v290;
    v293 = v292;
    v294 = *(type metadata accessor for CollectedChartContent.Primitive(0) + 72);
    sub_1AAF2C7E0(a1 + v294, v228, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
    v295 = *(v227 + 48);
    v296 = v490;
    if (v295(v228, 1, v490) == 1)
    {
      if (qword_1ED9B1D88 != -1)
      {
        swift_once();
      }

      v296 = v490;
      v297 = sub_1AAD0F5D8(v490, qword_1ED9C3498);
      v298 = v485;
      (*(v227 + 16))(v485, v297, v296);
      if (v295(v228, 1, v296) != 1)
      {
        sub_1AAF2C9D8(v228, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
      }
    }

    else
    {
      v298 = v485;
      (*(v227 + 32))(v485, v228, v296);
    }

    v299 = v488;
    *v488 = 0;
    *(v299 + 1) = 0;
    *(v299 + 2) = 0;
    *(v299 + 3) = v215;
    *(v299 + 4) = v216;
    *(v299 + 5) = v217;
    *(v299 + 6) = v285;
    *(v299 + 7) = v287;
    *(v299 + 8) = v289;
    *(v299 + 9) = v291;
    *(v299 + 10) = v293;
    v300 = v299 + *(v480 + 44);
    *&v491 = *(v227 + 32);
    (v491)(v300, v298, v296);
    v301 = *(a1 + 696);
    *&v489 = *a1;
    if (v301)
    {

      sub_1AAF8E444();
      v303 = v302;
      v305 = v304;
      v307 = v306;
      v309 = v308;
    }

    else
    {
      v309 = *(a1 + 688);
      v307 = *(a1 + 680);
      v305 = *(a1 + 672);
      v303 = *(a1 + 664);
    }

    v310 = v486;
    sub_1AAF2C7E0(a1 + v294, v486, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
    v311 = v490;
    if (v295(v310, 1, v490) == 1)
    {
      v312 = v487;
      (*(v227 + 104))(v487, *MEMORY[0x1E697F468], v311);
      _ZF = v295(v310, 1, v311) == 1;
      v211 = v492;
      v313 = v310;
      v314 = v312;
      if (!_ZF)
      {
        sub_1AAF2C9D8(v313, &qword_1ED9B5558, MEMORY[0x1E697F488], MEMORY[0x1E69E6720]);
      }
    }

    else
    {
      v315 = v487;
      (v491)(v487, v310, v311);
      v211 = v492;
      v314 = v315;
    }

    v316 = v482;
    v317 = v483;
    sub_1AAEEBB28(&v517, &v483[v482[13]]);
    v318 = *(a1 + 640);
    sub_1AAF2CB38(v488, v317 + v316[15], type metadata accessor for ChartDisplayList.ClipRect);
    v319 = *(a1 + 408);
    v320 = *(a1 + 416);
    *v317 = v489;
    *(v317 + 8) = 0;
    *(v317 + 16) = 0;
    *(v317 + 24) = 0;
    v321 = v478;
    *(v317 + 32) = v479;
    *(v317 + 40) = v321;
    v322 = v476;
    *(v317 + 48) = v477;
    *(v317 + 56) = v322;
    *(v317 + 64) = v303;
    *(v317 + 72) = v305;
    *(v317 + 80) = v307;
    *(v317 + 88) = v309;
    (v491)(v317 + v316[12], v314, v311);
    *(v317 + v316[14]) = v318;
    v323 = v317 + v316[16];
    *v323 = v319;
    *(v323 + 8) = v320;
    v324 = v484;
    sub_1AAF2CB38(v317, v484, type metadata accessor for ChartDisplayList.BarItem);
    v83 = *(v324 + 8);
    sub_1AAF2CBA0(0, &qword_1ED9AD738, &type metadata for ChartDisplayList.Item, MEMORY[0x1E69E6F90]);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1AAF92AB0;
    v325 = swift_allocBox();
    sub_1AAF2CB38(v324, v326, type metadata accessor for ChartDisplayList.BarItem);
    *(v58 + 32) = v325 | 0x5000000000000000;

    sub_1AAF2C63C(v561, sub_1AACFAA34);
    sub_1AAF2C63C(v560, sub_1AACFAA34);
    sub_1AAF2C63C(v324, type metadata accessor for ChartDisplayList.BarItem);
    sub_1AAF2C63C(v317, type metadata accessor for ChartDisplayList.BarItem);
    sub_1AAF2C63C(v488, type metadata accessor for ChartDisplayList.ClipRect);
    result = sub_1AAEEBC30(&v517);
    goto LABEL_174;
  }

  v112 = *(a2 + 256);
  v542 = *(a2 + 240);
  v543 = v112;
  v544 = *(a2 + 272);
  v113 = *(a2 + 192);
  v538 = *(a2 + 176);
  v539 = v113;
  v114 = *(a2 + 224);
  v540 = *(a2 + 208);
  v541 = v114;
  if (!v538)
  {
    goto LABEL_58;
  }

  *&v561[40] = *(a2 + 216);
  *&v561[56] = *(a2 + 232);
  *&v561[72] = *(a2 + 248);
  *&v561[8] = *(a2 + 184);
  *&v561[24] = *(a2 + 200);
  *&v561[88] = *(a2 + 264);
  *v561 = v538;
  v115 = *(a2 + 296);
  v531 = *(a2 + 280);
  v532 = v115;
  v116 = *(a2 + 312);
  v117 = *(a2 + 328);
  v118 = *(a2 + 344);
  v119 = *(a2 + 360);
  v537 = *(a2 + 376);
  v535 = v118;
  v536 = v119;
  v533 = v116;
  v534 = v117;
  if (!v531)
  {
    goto LABEL_58;
  }

  v120 = *(a2 + 336);
  *&v560[40] = *(a2 + 320);
  *&v560[56] = v120;
  v121 = *(a2 + 368);
  *&v560[72] = *(a2 + 352);
  *&v560[88] = v121;
  v122 = *(a2 + 304);
  *&v560[8] = *(a2 + 288);
  *&v560[24] = v122;
  *v560 = v531;
  v123 = *(a1 + 16);
  v124 = *(a1 + 32);
  v126 = *(a1 + 80);
  v125 = *(a1 + 96);
  v127 = *(a1 + 48);
  v505 = *(a1 + 64);
  v506 = v126;
  v503 = v124;
  v504 = v127;
  v502 = v123;
  v128 = *(a1 + 112);
  v129 = *(a1 + 128);
  *(v509 + 9) = *(a1 + 137);
  v508 = v128;
  v509[0] = v129;
  v507 = v125;
  v130 = *(a2 + 480);
  v131 = v491;
  swift_beginAccess();
  sub_1AAF2CB38(&v538, &v493, sub_1AACFAA34);
  sub_1AAF2CB38(&v531, &v493, sub_1AACFAA34);
  sub_1AAF27F58(&v502, v561, v130, (v131 + 32), &v551);
  v132 = *(a1 + 256);
  v500[0] = *(a1 + 272);
  *(v500 + 9) = *(a1 + 281);
  v133 = *(a1 + 208);
  v495 = *(a1 + 192);
  v496 = v133;
  v134 = *(a1 + 224);
  v498 = *(a1 + 240);
  v499 = v132;
  v497 = v134;
  v135 = *(a1 + 176);
  v493 = *(a1 + 160);
  v494 = v135;
  sub_1AAF27F58(&v493, v560, v130, (v131 + 32), v514);
  swift_endAccess();
  if (v557 & 1) != 0 || (v515)
  {
    sub_1AAEE23A8(MEMORY[0x1E69E7CC0], v564);
    v83 = v564[0];
    v58 = *(&v564[0] + 1);
    v136 = v564[1];
    v137 = v564[2];
LABEL_51:
    v491 = v137;
    v490 = v136;
    sub_1AAF2C63C(&v538, sub_1AACFAA34);
    v84 = &v531;
    goto LABEL_52;
  }

  v201 = v551;
  v202 = v552;
  v203 = v514[0];
  sub_1AAF04354(v530);
  v204 = v131;
  swift_beginAccess();
  v205 = *(v131 + 24);
  if (!*(v205 + 16) || (v206 = sub_1AADB0E38(v530), v204 = v131, (v207 & 1) == 0))
  {
    swift_endAccess();
    v256 = *a1;
    sub_1AAF2CBA0(0, &qword_1EB4230B8, &type metadata for ChartDisplayList.AreaItem.Point, MEMORY[0x1E69E6F90]);
    v257 = swift_allocObject();
    v490 = xmmword_1AAF92AB0;
    *(v257 + 16) = xmmword_1AAF92AB0;
    *(v257 + 32) = v201;
    *(v257 + 40) = v202;
    *(v257 + 48) = v203;
    type metadata accessor for ChartDisplayList.AreaItem.Points();
    v258 = swift_allocObject();
    *(v258 + 16) = v257;
    v259 = type metadata accessor for CollectedChartContent.Primitive(0);
    v260 = *(a1 + *(v259 + 80));
    if (v260 == 2)
    {
      v261 = *(a1 + 128);
      v562[6] = *(a1 + 112);
      v563[0] = v261;
      *(v563 + 9) = *(a1 + 137);
      v262 = *(a1 + 64);
      v562[2] = *(a1 + 48);
      v562[3] = v262;
      v263 = *(a1 + 96);
      v562[4] = *(a1 + 80);
      v562[5] = v263;
      v264 = *(a1 + 32);
      v562[0] = *(a1 + 16);
      v562[1] = v264;
      v265 = *(a1 + 272);
      v564[6] = *(a1 + 256);
      v565[0] = v265;
      *(v565 + 9) = *(a1 + 281);
      v266 = *(a1 + 208);
      v564[2] = *(a1 + 192);
      v564[3] = v266;
      v267 = *(a1 + 240);
      v564[4] = *(a1 + 224);
      v564[5] = v267;
      v268 = *(a1 + 176);
      v564[0] = *(a1 + 160);
      v564[1] = v268;

      LOBYTE(v260) = sub_1AAE63A88(v562, v564);
    }

    else
    {
    }

    sub_1AAEEBB28(&v517, &v547[3]);
    v327 = *(a1 + 640);
    v328 = (a1 + *(v259 + 76));
    v329 = *v328;
    LOBYTE(v328) = *(v328 + 8);
    v330 = *(a1 + 408);
    v331 = *(a1 + 416);
    *&v547[0] = v256;
    DWORD2(v547[0]) = 0;
    v547[1] = 0uLL;
    *&v547[2] = v258;
    BYTE8(v547[2]) = v260 & 1;
    *&v547[6] = v327;
    *(&v547[6] + 1) = v329;
    LOBYTE(v548[0]) = v328;
    *(&v548[0] + 1) = v330;
    LOWORD(v548[1]) = v331;
    swift_beginAccess();

    v332 = swift_isUniquelyReferenced_nonNull_native();
    v549[0] = *(v204 + 24);
    *(v204 + 24) = 0x8000000000000000;
    sub_1AADD4108(v258, v530, v332);
    sub_1AAF2CA40(v530);
    *(v204 + 24) = v549[0];
    swift_endAccess();
    sub_1AAEE2E10(v547, v545);
    v83 = DWORD2(v545[0]);
    sub_1AAF2CBA0(0, &qword_1ED9AD738, &type metadata for ChartDisplayList.Item, MEMORY[0x1E69E6F90]);
    v58 = swift_allocObject();
    *(v58 + 16) = v490;
    v333 = swift_allocObject();
    sub_1AAEE2E10(v545, v333 + 16);
    *(v58 + 32) = v333 | 0x4000000000000000;
    sub_1AAF2C63C(&v538, sub_1AACFAA34);
    sub_1AAF2C63C(&v531, sub_1AACFAA34);
    sub_1AAEE2E48(v545);
    sub_1AAEE2E48(v547);
    goto LABEL_223;
  }

  v208 = *(*(v205 + 56) + 8 * v206);
  swift_endAccess();

  sub_1AAF2CA40(v530);
  v209 = *(v208 + 16);
  v210 = swift_isUniquelyReferenced_nonNull_native();
  *(v208 + 16) = v209;
  if ((v210 & 1) == 0)
  {
    v209 = sub_1AAD6B4C4(0, *(v209 + 2) + 1, 1, v209);
    *(v208 + 16) = v209;
  }

  v211 = v492;
  v213 = *(v209 + 2);
  v212 = *(v209 + 3);
  if (v213 >= v212 >> 1)
  {
    v209 = sub_1AAD6B4C4((v212 > 1), v213 + 1, 1, v209);
  }

  *(v209 + 2) = v213 + 1;
  v214 = &v209[32 * v213];
  *(v214 + 4) = v201;
  *(v214 + 5) = v202;
  *(v214 + 3) = v203;
  *(v208 + 16) = v209;
  sub_1AAEE23A8(MEMORY[0x1E69E7CC0], v564);
  v83 = v564[0];
  v58 = *(&v564[0] + 1);
  v490 = v564[1];
  v491 = v564[2];
  sub_1AAF2C63C(&v538, sub_1AACFAA34);
  sub_1AAF2C63C(&v531, sub_1AACFAA34);

  result = sub_1AAEEBC30(&v517);
  v192 = v490;
  v193 = v491;
LABEL_99:
  *v211 = v83;
  *(v211 + 8) = v58;
  *(v211 + 16) = v192;
  *(v211 + 32) = v193;
  return result;
}

uint64_t sub_1AAF2543C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 80);
  v23[4] = *(a1 + 64);
  v23[5] = v6;
  v24 = *(a1 + 96);
  v7 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v7;
  v8 = *(a1 + 48);
  v23[2] = *(a1 + 32);
  v23[3] = v8;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[4];
  v21[2] = a3[3];
  v21[3] = v11;
  v21[0] = v9;
  v21[1] = v10;
  v12 = a3[5];
  v13 = a3[6];
  *&v22[9] = *(a3 + 137);
  v14 = a3[8];
  v21[6] = a3[7];
  *v22 = v14;
  v21[4] = v12;
  v21[5] = v13;
  swift_beginAccess();
  sub_1AAF27F58(v21, v23, 0, (a2 + 32), v19);
  result = swift_endAccess();
  v17 = v19[0];
  v16 = v19[1];
  v18 = v20 & 1;
  if (v20)
  {
    v17 = 0;
    v16 = 0;
  }

  *a4 = v17;
  *(a4 + 8) = v16;
  *(a4 + 16) = v18;
  return result;
}

uint64_t sub_1AAF25510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 80);
  v23[4] = *(a1 + 64);
  v23[5] = v6;
  v24 = *(a1 + 96);
  v7 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v7;
  v8 = *(a1 + 48);
  v23[2] = *(a1 + 32);
  v23[3] = v8;
  v9 = a3[10];
  v10 = a3[11];
  v11 = a3[13];
  v21[2] = a3[12];
  v21[3] = v11;
  v21[0] = v9;
  v21[1] = v10;
  v12 = a3[14];
  v13 = a3[15];
  *&v22[9] = *(a3 + 281);
  v14 = a3[17];
  v21[6] = a3[16];
  *v22 = v14;
  v21[4] = v12;
  v21[5] = v13;
  swift_beginAccess();
  sub_1AAF27F58(v21, v23, 0, (a2 + 32), v19);
  result = swift_endAccess();
  v17 = v19[0];
  v16 = v19[1];
  v18 = v20 & 1;
  if (v20)
  {
    v17 = 0;
    v16 = 0;
  }

  *a4 = v17;
  *(a4 + 8) = v16;
  *(a4 + 16) = v18;
  return result;
}

char *sub_1AAF255E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X8>)
{
  v77 = a3;
  *&v78 = a2;
  v4 = type metadata accessor for CollectedChartContent.Primitive(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CollectedChartContent(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v74 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v74 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v74 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v74 - v21);
  sub_1AAF2CB38(a1, &v74 - v21, type metadata accessor for CollectedChartContent);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      v26 = *v22;
      sub_1AAED9F30();
      v28 = v27;
      v76 = v26;
      v29 = swift_projectBox();
      v30 = *v29;
      v31 = *(v28 + 64);
      sub_1AAF2CB38(v29 + *(v28 + 48), v19, type metadata accessor for CollectedChartContent);
      sub_1AAF2CB38(v29 + v31, v16, type metadata accessor for CollectedChartContent);

      v32 = v78;
      sub_1AAF255E8(&v80, v19, v78);
      v33 = v80;
      v34 = *(&v80 + 1);
      v74 = v82;
      v75 = v81;
      sub_1AAF255E8(&v83, v16, v32);
      v35 = v83;
      v36 = v84;
      v78 = v86;
      v79 = v85;
      if (v33 == -1)
      {
        v24 = -1;
      }

      else
      {
        v24 = v33;
        if (v83)
        {
          v24 = v83;
          if (v33)
          {
            v24 = v83;
            if (v83 != -1)
            {
              v24 = sub_1AAF0A868(v33, v83);
            }
          }
        }
      }

      sub_1AAF2CBA0(0, &qword_1ED9AD738, &type metadata for ChartDisplayList.Item, MEMORY[0x1E69E6F90]);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1AAF92AB0;
      v68 = swift_allocObject();
      *(v68 + 16) = v30;
      *(v68 + 24) = v24;
      *(v68 + 32) = v33;
      *(v68 + 40) = v34;
      v69 = v74;
      *(v68 + 48) = v75;
      *(v68 + 64) = v69;
      *(v68 + 80) = v35;
      *(v68 + 88) = v36;
      v70 = v78;
      *(v68 + 96) = v79;
      *(v68 + 112) = v70;
      *(v25 + 32) = v68 | 0x7000000000000000;
      sub_1AAF2C63C(v16, type metadata accessor for CollectedChartContent);
      sub_1AAF2C63C(v19, type metadata accessor for CollectedChartContent);
    }

    else
    {
      sub_1AAE0FA44();
      v49 = v48;
      v50 = swift_projectBox();
      v51 = *(v49 + 48);
      sub_1AAF2CB38(v50, v13, type metadata accessor for CollectedChartContent);
      sub_1AAED9E28(v50 + v51, v96);
      sub_1AAED9E28(v96, &v91);
      if (v95 == 1)
      {
        sub_1AAED9E84(&v91);
        sub_1AAF255E8(&v83, v13, v78);
        v24 = v83;
        v25 = v84;
        v78 = v85;
        v79 = v86;
        sub_1AAED9E84(v96);
        sub_1AAF2C63C(v13, type metadata accessor for CollectedChartContent);
LABEL_42:

        goto LABEL_43;
      }

      v89[0] = v92;
      v89[1] = v93;
      v64 = v91;
      v90 = v94;
      sub_1AAF255E8(v97, v13, v78);
      v65 = v97[0];
      v66 = MEMORY[0x1E69E6720];
      sub_1AAF2C7E0(v89, &v88, &qword_1ED9B2EE8, sub_1AAE131C4, MEMORY[0x1E69E6720]);
      v83 = v64;
      LODWORD(v84) = v65;
      v85 = v97[0];
      v86 = v97[1];
      v87 = v97[2];
      sub_1AAEE2D40(&v83, &v80);
      v24 = DWORD2(v80);
      sub_1AAF2CBA0(0, &qword_1ED9AD738, &type metadata for ChartDisplayList.Item, MEMORY[0x1E69E6F90]);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1AAF92AB0;
      v67 = swift_allocObject();
      sub_1AAEE2D40(&v80, v67 + 16);
      *(v25 + 32) = v67 | 0x8000000000000000;
      sub_1AAEE2D78(&v80);
      sub_1AAEE2D78(&v83);
      sub_1AAF2C9D8(v89, &qword_1ED9B2EE8, sub_1AAE131C4, v66);
      sub_1AAED9E84(v96);
      sub_1AAF2C63C(v13, type metadata accessor for CollectedChartContent);
    }

    v71 = 0uLL;
    v72 = 0uLL;
LABEL_44:
    v73 = v77;
    *v77 = v24;
    *(v73 + 1) = v25;
    *(v73 + 1) = v71;
    *(v73 + 2) = v72;
    return result;
  }

  if (!result)
  {
    sub_1AAF2C884(v22, v6);
    sub_1AAF22094(v6, v78, &v83);
    v24 = v83;
    v25 = v84;
    v78 = v85;
    v79 = v86;
    result = sub_1AAF2C63C(v6, type metadata accessor for CollectedChartContent.Primitive);
LABEL_43:
    v71 = v78;
    v72 = v79;
    goto LABEL_44;
  }

  v76 = *v22;
  v37 = *(v76 + 16);
  v38 = *(v37 + 16);
  v39 = MEMORY[0x1E69E7CC0];
  if (v38)
  {
    v83 = MEMORY[0x1E69E7CC0];

    sub_1AAD41644(0, v38, 0);
    v39 = v83;
    v40 = *(v8 + 80);
    *&v75 = v37;
    v41 = v37 + ((v40 + 32) & ~v40);
    v42 = *(v8 + 72);
    do
    {
      sub_1AAF2CB38(v41, v10, type metadata accessor for CollectedChartContent);
      sub_1AAF255E8(&v80, v10, v78);
      sub_1AAF2C63C(v10, type metadata accessor for CollectedChartContent);
      v83 = v39;
      v44 = *(v39 + 16);
      v43 = *(v39 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_1AAD41644((v43 > 1), v44 + 1, 1);
        v39 = v83;
      }

      *(v39 + 16) = v44 + 1;
      v45 = (v39 + 48 * v44);
      v46 = v80;
      v47 = v82;
      v45[3] = v81;
      v45[4] = v47;
      v45[2] = v46;
      v41 += v42;
      --v38;
    }

    while (v38);
  }

  v52 = *(v39 + 16);
  if (!v52)
  {
    v55 = MEMORY[0x1E69E7CC0];
LABEL_41:

    sub_1AAEE23A8(v55, &v83);
    v24 = v83;
    v25 = v84;
    v78 = v85;
    v79 = v86;
    goto LABEL_42;
  }

  v53 = 0;
  v54 = (v39 + 40);
  v55 = MEMORY[0x1E69E7CC0];
  while (v53 < *(v39 + 16))
  {
    v56 = *v54;
    v57 = *(*v54 + 16);
    v58 = *(v55 + 16);
    v59 = v58 + v57;
    if (__OFADD__(v58, v57))
    {
      goto LABEL_46;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v59 <= *(v55 + 24) >> 1)
    {
      if (*(v56 + 16))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v58 <= v59)
      {
        v60 = v58 + v57;
      }

      else
      {
        v60 = v58;
      }

      result = sub_1AAD6B22C(result, v60, 1, v55);
      v55 = result;
      if (*(v56 + 16))
      {
LABEL_32:
        if ((*(v55 + 24) >> 1) - *(v55 + 16) < v57)
        {
          goto LABEL_48;
        }

        swift_arrayInitWithCopy();

        if (v57)
        {
          v61 = *(v55 + 16);
          v62 = __OFADD__(v61, v57);
          v63 = v61 + v57;
          if (v62)
          {
            goto LABEL_49;
          }

          *(v55 + 16) = v63;
        }

        goto LABEL_21;
      }
    }

    if (v57)
    {
      goto LABEL_47;
    }

LABEL_21:
    ++v53;
    v54 += 6;
    if (v52 == v53)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

double sub_1AAF25E64@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  swift_beginAccess();
  v5 = MEMORY[0x1E69E7CC8];
  v2[2] = MEMORY[0x1E69E7CC8];

  swift_beginAccess();
  v2[3] = v5;

  swift_beginAccess();
  v2[4] = v5;

  v6 = type metadata accessor for AGChartRendererContent(0);
  v7 = (a1 + v6[5]);
  v8 = *(v7 + 27);
  v9 = v7[1];
  v23 = *v7;
  v24[0] = v9;
  *(v24 + 11) = v8;
  v10 = (a1 + v6[6]);
  v11 = *(v10 + 27);
  v12 = v10[1];
  v25 = *v10;
  v26[0] = v12;
  *(v26 + 11) = v11;
  v13 = v6[7];
  memcpy(__dst, (a1 + v13), sizeof(__dst));
  sub_1AAF28674(&v23, &v25, __dst, &v17);
  v14 = *(&v17 + 1);
  memcpy(v22, (a1 + v13), sizeof(v22));
  sub_1AAF255E8(a1, v22, &v18);
  *&v20[0] = v14;
  sub_1AADC93C8(v19);
  sub_1AAEE23A8(*&v20[0], v20);
  v15 = v20[1];
  *a2 = v20[0];
  a2[1] = v15;
  result = *&v21;
  a2[2] = v21;
  return result;
}

uint64_t sub_1AAF25FC8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AAF2603C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 488))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AAF26084(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 456) = 0u;
    *(result + 472) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 488) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 488) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AAF26198()
{
  result = type metadata accessor for CollectedChartContent(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1AAF26260()
{
  sub_1AAF26348(319, qword_1ED9B26A8, 255, type metadata accessor for AGChartRendererContent, type metadata accessor for WeightedSum);
  if (v1 <= 0x3F)
  {
    sub_1AAF26348(319, &qword_1ED9B1E50, v0, type metadata accessor for ChartDisplayListBuilder, MEMORY[0x1E6981E98]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1AAF26348(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1AAF263B0()
{
  result = qword_1ED9AED70;
  if (!qword_1ED9AED70)
  {
    sub_1AAF26348(255, qword_1ED9B26A8, 255, type metadata accessor for AGChartRendererContent, type metadata accessor for WeightedSum);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AED70);
  }

  return result;
}

uint64_t sub_1AAF2643C(char **a1, uint64_t a2, void *a3)
{
  v96 = a3;
  sub_1AAF26348(0, &qword_1ED9B2E80, 255, MEMORY[0x1E697E798], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v99 = &v86 - v6;
  v7 = sub_1AAF8DD44();
  v92 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v97 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1AAF8DE34();
  v93 = *(v106 - 1);
  MEMORY[0x1EEE9AC00](v106);
  v104 = (&v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v102 = &v86 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v101 = &v86 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v91 = &v86 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v90 = &v86 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v103 = &v86 - v19;
  v100 = a1;
  sub_1AAF8DE54();
  v105 = a2;
  v20 = *(a2 + 32);
  swift_beginAccess();
  v95 = v20;
  v21 = *(v20 + 16);
  v22 = *(v21 + 16);

  v94 = v7;
  if (v22)
  {
    v24 = 0;
    v25 = v21 + 96;
    v88 = v22 - 1;
    v98 = MEMORY[0x1E69E7CC0];
    v89 = v21 + 96;
    while (1)
    {
      v26 = (v25 + 72 * v24);
      v27 = v24;
      while (1)
      {
        if (v27 >= *(v21 + 16))
        {
          __break(1u);
          return result;
        }

        v28 = *v26;
        if (v28 != 255)
        {
          break;
        }

LABEL_4:
        ++v27;
        v26 += 72;
        if (v22 == v27)
        {
          v7 = v94;
          goto LABEL_18;
        }
      }

      v29 = *(v26 - 6);
      v30 = *(v26 - 5);
      v31 = *(v26 - 4);
      v32 = *(v26 - 3);
      v34 = *(v26 - 2);
      v33 = *(v26 - 1);
      if (v28)
      {
        break;
      }

      sub_1AAEE2BCC(v29, v30, *(v26 - 4), *(v26 - 3), *(v26 - 2), v33, v28);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1AAD6B71C(0, *(v98 + 2) + 1, 1, v98);
        v98 = result;
      }

      v36 = *(v98 + 2);
      v35 = *(v98 + 3);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        v87 = v36 + 1;
        result = sub_1AAD6B71C((v35 > 1), v36 + 1, 1, v98);
        v37 = v87;
        v98 = result;
      }

      v24 = v27 + 1;
      v38 = v98;
      *(v98 + 2) = v37;
      v39 = &v38[40 * v36];
      *(v39 + 4) = v29;
      *(v39 + 5) = v30;
      *(v39 + 6) = v31;
      *(v39 + 7) = v32;
      v39[64] = v34;
      v25 = v89;
      v40 = v88 == v27;
      v7 = v94;
      if (v40)
      {
        goto LABEL_18;
      }
    }

    sub_1AAEE2BCC(v29, v30, *(v26 - 4), *(v26 - 3), *(v26 - 2), v33, v28);

    goto LABEL_4;
  }

  v98 = MEMORY[0x1E69E7CC0];
LABEL_18:

  if (*(v98 + 2))
  {
    v114 = *v100;
    MEMORY[0x1EEE9AC00](v114);
    *(&v86 - 2) = v41;
    v103 = v42;

    sub_1AAF8DCF4();
    v43 = v114;
    v44 = v105;
    v45 = sub_1AAF210C8(*(v105 + 144), *(v105 + 152), *(v105 + 40), &v110);
    v46 = *(v95 + 16);
    MEMORY[0x1EEE9AC00](v45);
    *(&v86 - 2) = v44;

    v47 = sub_1AADE631C(sub_1AAF2C724, (&v86 - 4), v46);

    v48 = v111;
    v49 = v112;
    sub_1AACB8B34(&v110, v111);
    sub_1AAF212E4(v47, v48, v49, v115);

    v50 = *(v44 + 112);
    v120 = *(v44 + 96);
    v121 = v50;
    v122 = *(v44 + 128);
    sub_1AAF8E854();
    sub_1AAD12C10(v115);
    sub_1AACB634C(&v110);
    sub_1AAEEBB28(v44 + 48, &v110);
    if (v113)
    {
      sub_1AACBB198(&v110, v108);
      sub_1AACBB42C(v108, v109);
      v51 = v101;
      sub_1AAF8DE24();
      sub_1AACB634C(v108);
    }

    else
    {
      v51 = v101;
      sub_1AAF8DE14();
    }

    v60 = v93;
    v61 = v91;
    v62 = v106;
    v101 = *(v93 + 32);
    (v101)(v91, v51, v106);
    v90 = v43;
    sub_1AAF8DDA4();
    sub_1AAD12C10(&v116);
    v63 = *(v60 + 8);
    v63(v61, v62);
    v64 = *(v98 + 2);
    v65 = v104;
    if (v64)
    {
      v66 = v98 + 32;
      do
      {
        v69 = *v66;
        v70 = *(v66 + 1);
        v119 = v66[32];
        v117 = v69;
        v118 = v70;
        sub_1AAEEBB28(v105 + 48, &v110);
        if (v113)
        {
          sub_1AACBB198(&v110, v108);
          sub_1AACBB42C(v108, v109);
          v125[0] = v117;
          v125[1] = v118;
          v126 = v119;
          sub_1AAE63550(v125, &v107);
          v65 = v104;
          sub_1AAF8DE24();
          sub_1AACB634C(v108);
        }

        else
        {
          v123[0] = v117;
          v123[1] = v118;
          v124 = v119;
          sub_1AAE63550(v123, v108);
          sub_1AAF8DE14();
        }

        v67 = v102;
        v68 = v106;
        (v101)(v102, v65, v106);
        sub_1AAF8DDA4();
        sub_1AAD12C10(&v117);
        v63(v67, v68);
        v66 += 40;
        --v64;
      }

      while (v64);
    }

    v7 = v94;
  }

  else
  {

    v52 = v105;
    v53 = sub_1AAF210C8(*(v105 + 144), *(v105 + 152), *(v105 + 40), &v110);
    v54 = *(v95 + 16);
    MEMORY[0x1EEE9AC00](v53);
    *(&v86 - 2) = v52;

    v55 = sub_1AADE631C(sub_1AAF2D008, (&v86 - 4), v54);

    v56 = v111;
    v57 = v112;
    sub_1AACB8B34(&v110, v111);
    sub_1AAF212E4(v55, v56, v57, v123);

    v58 = *(v52 + 112);
    v120 = *(v52 + 96);
    v121 = v58;
    v122 = *(v52 + 128);
    sub_1AAF8E854();
    sub_1AAD12C10(v123);
    sub_1AACB634C(&v110);
    sub_1AAEEBB28(v52 + 48, &v110);
    if (v113)
    {
      sub_1AACBB198(&v110, v108);
      sub_1AACBB42C(v108, v109);
      v59 = v90;
      sub_1AAF8DE24();
      sub_1AACB634C(v108);
    }

    else
    {
      v59 = v90;
      sub_1AAF8DE14();
    }

    v71 = v103;
    v72 = v93;
    v73 = v106;
    (*(v93 + 32))(v103, v59, v106);
    sub_1AAF8DDA4();
    sub_1AAD12C10(v125);
    (*(v72 + 8))(v71, v73);
  }

  sub_1AAF8DE44();
  *v96 = v74;
  sub_1AAF8DE54();
  v75 = *(*(v95 + 16) + 16);
  if (v75)
  {
    v105 = v92 + 32;
    v106 = (v92 + 48);
    v104 = (v92 + 8);

    v76 = (v103 + 96);
    do
    {
      v77 = *v76;
      if (v77 != 255 && (v77 & 1) != 0)
      {
        v78 = *(v76 - 5);
        v79 = v7;
        v80 = *(v76 - 4);
        v81 = *(v76 - 3);
        v82 = *(v76 - 2);
        v83 = *(v76 - 1);
        *&v110 = *(v76 - 6);
        sub_1AAEE2BCC(v110, v78, v80, v81, v82, v83, v77);
        sub_1AAD80D58();

        v84 = v99;
        sub_1AAF8DD34();

        if ((*v106)(v84, 1, v79) == 1)
        {

          sub_1AAF2C9D8(v84, &qword_1ED9B2E80, MEMORY[0x1E697E798], MEMORY[0x1E69E6720]);
        }

        else
        {
          v85 = v97;
          (*v105)(v97, v84, v79);
          sub_1AAF8F264();
          sub_1AAF8DD74();

          (*v104)(v85, v79);
        }

        v7 = v79;
      }

      v76 += 72;
      --v75;
    }

    while (v75);
  }

  return sub_1AAF8DE54();
}

void sub_1AAF26F90(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AAF8DE34();
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = a2 + 32;
    v9 = (v4 + 8);
    do
    {
      v10 = *(v8 + 16);
      v13[0] = *v8;
      v13[1] = v10;
      v14 = *(v8 + 32);
      v15[0] = v13[0];
      v15[1] = v10;
      v16 = v14;
      sub_1AAE63550(v15, v11);
      sub_1AAE3C43C(v12);
      sub_1AAF8ECD4();
      sub_1AAF8DE14();

      sub_1AAF8DDA4();
      sub_1AAD12C10(v12);
      sub_1AAD12C10(v13);
      (*v9)(v6, v3);
      v8 += 40;
      --v7;
    }

    while (v7);
  }
}

double sub_1AAF270F8@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = a2 + 488;
  v5 = *(type metadata accessor for AGChartRendererContent(0) + 28);
  memcpy(__dst, (a1 + v5), sizeof(__dst));
  memcpy(a2, (a1 + v5), 0x1E8uLL);
  type metadata accessor for AGChartDisplay(0);
  sub_1AAF2C84C(__dst, v9);
  sub_1AAF26348(0, &qword_1ED9B1E50, v6, type metadata accessor for ChartDisplayListBuilder, MEMORY[0x1E6981E98]);
  sub_1AAF8F1D4();
  sub_1AAF25E64(a1, v9);

  v7 = v9[1];
  *v4 = v9[0];
  v4[1] = v7;
  result = v10[0];
  v4[2] = *v10;
  return result;
}

uint64_t sub_1AAF271EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1AAF8E1A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1AAF2C278();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24[-v14];
  sub_1AAF2C574(a1, &v28);
  v16 = swift_allocObject();
  v17 = v31;
  v16[3] = v30;
  v16[4] = v17;
  v18 = v33;
  v16[5] = v32;
  v16[6] = v18;
  v19 = v29;
  v16[1] = v28;
  v16[2] = v19;
  v25 = a1;
  (*(v5 + 104))(v7, *MEMORY[0x1E697F3A0], v4);
  sub_1AAF2C2DC();
  sub_1AAF2C484();
  sub_1AAF8EE94();
  sub_1AAF2C7E0(a1 + 56, &v26, &qword_1ED9B2EE8, sub_1AAE131C4, MEMORY[0x1E69E6720]);
  if (v27)
  {
    sub_1AACBB198(&v26, &v28);
    v20 = *(&v29 + 1);
    v21 = sub_1AACBB42C(&v28, *(&v29 + 1));
    v22 = sub_1AAF27798(v21, v15, v20);
    (*(v10 + 8))(v15, v9);
    result = sub_1AACB634C(&v28);
  }

  else
  {
    sub_1AAF2C9D8(&v26, &qword_1ED9B2EE8, sub_1AAE131C4, MEMORY[0x1E69E6720]);
    (*(v10 + 16))(v12, v15, v9);
    sub_1AAF2CBF0(&qword_1ED9ADA08, sub_1AAF2C278);
    v22 = sub_1AAF8EF44();
    result = (*(v10 + 8))(v15, v9);
  }

  *a2 = v22;
  return result;
}

uint64_t sub_1AAF2756C()
{
  sub_1AAEE2718();
  sub_1AAF2CBA0(0, &qword_1ED9AD958, &type metadata for ChartDisplayList.ViewItem, MEMORY[0x1E69E62F8]);
  sub_1AAF2C3B8();
  sub_1AAF2C1C0(&unk_1ED9AEFB0, &qword_1ED9AD958, &type metadata for ChartDisplayList.ViewItem);
  sub_1AAED9FD0(255, &qword_1ED9B1720, MEMORY[0x1E6981910], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
  sub_1AAD267CC();
  sub_1AAD80D58();
  swift_getOpaqueTypeConformance2();
  sub_1AAF2C5E4();
  return sub_1AAF8EFD4();
}

uint64_t sub_1AAF276E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[10];

  sub_1AAF8F124();
  sub_1AAF8DA24();
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 56) = v3;
  *(a2 + 64) = 1;
}

uint64_t sub_1AAF27798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AAF2C278();
  v6 = v5;
  v7 = sub_1AAF8DF74();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1AAF2CBF0(&qword_1ED9ADA08, sub_1AAF2C278);
  MEMORY[0x1AC597820](a1, v6, a3, v8);
  swift_getWitnessTable();
  return sub_1AAF8EF44();
}

double sub_1AAF278C8(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

void (*sub_1AAF27908(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1AAF8D804();
  return sub_1AAE34258;
}

uint64_t sub_1AAF27990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AAF2CBF0(&qword_1ED9B0318, type metadata accessor for AGChartDisplay);

  return MEMORY[0x1EEDE3690](a1, a2, a3, v8, a4);
}

uint64_t sub_1AAF27A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AAF2CBF0(&qword_1ED9B0318, type metadata accessor for AGChartDisplay);

  return MEMORY[0x1EEDE3698](a1, a2, a3, v8, a4);
}

uint64_t sub_1AAF27AC8()
{
  v1 = sub_1AAF2BF04(*v0, sub_1AAF28528, v4);
  sub_1AAEEB648(v1, v6);

  v2 = sub_1AAEE18B0();
  sub_1AAEE3018(v6);
  v5 = v2;
  sub_1AAF2CBA0(0, &qword_1ED9AD950, &type metadata for ChartDisplayLayer, MEMORY[0x1E69E62F8]);
  sub_1AAF2C1C0(&qword_1ED9AEFA8, &qword_1ED9AD950, &type metadata for ChartDisplayLayer);
  sub_1AAF2C224();
  return sub_1AAF8EFD4();
}

double sub_1AAF27C04(unsigned __int8 a1, uint64_t a2, double a3)
{
  if (a1 > 1u)
  {
    v6 = a3;
    (*a2)(&v7, &v6);
    v5 = *(a2 + 16) * 0.5;
    if (*(a2 + 24))
    {
      v5 = 0.0;
    }

    return v7 + v5;
  }

  else
  {
    v6 = a3;
    (*a2)(&v7, &v6);
    return v7;
  }
}

uint64_t sub_1AAF27C94(_OWORD *a1, uint64_t a2)
{
  v3 = a1[7];
  v14[6] = a1[6];
  v15[0] = v3;
  *(v15 + 9) = *(a1 + 121);
  v4 = a1[3];
  v14[2] = a1[2];
  v14[3] = v4;
  v5 = a1[5];
  v14[4] = a1[4];
  v14[5] = v5;
  v6 = a1[1];
  v14[0] = *a1;
  v14[1] = v6;
  v7 = sub_1AAE63EF0(v14);
  if (v7)
  {
    if (v7 == 1)
    {
      return *sub_1AAD357A8(v14);
    }

    else
    {
      if (qword_1ED9B59F0 != -1)
      {
        swift_once();
      }

      return 0;
    }
  }

  else
  {
    v9 = sub_1AAD357A8(v14);
    if (*(v9 + 64) < 0)
    {
      v11 = *(v9 + 48);
      v12 = *(v9 + 56);
      v13 = sub_1AAF27C04(v12, a2, *(v9 + 40));
      v10 = (v13 + sub_1AAF27C04(v12, a2, v11)) * 0.5;
    }

    else
    {
      v10 = sub_1AAF27C04(*(v9 + 64), a2, *(v9 + 40));
    }

    return *&v10;
  }
}

void sub_1AAF27DBC(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v5 = *(a1 + 3);
  v6 = *(a1 + 64);
  if (a1[3] >> 1 == 0xFFFFFFFF && (v6 & 0x7C) == 0)
  {
    goto LABEL_11;
  }

  v8 = (v6 >> 5) & 3;
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = *(a1 + 1);
  if (v8 != 1)
  {
    v10 = *(a1 + 5);
    v11 = a1[7];
    v15 = *a1;
    v16 = v9;
    v17 = v5;
    v18 = v10;
    v19 = v11;
    v20 = v6 & 0x9F;
    if (a4 != -1)
    {
      v12 = a5;
      sub_1AAECB7F4(&v15, a2, a3, a4 & 1);
      a5 = v12;
    }

LABEL_11:
    v13 = a5[3];
    v14 = a5[4];
    sub_1AACBB42C(a5, v13);
    (*(v14 + 16))(v13, v14);
  }
}

void sub_1AAF27F58(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1[7];
  v72[6] = a1[6];
  v73[0] = v9;
  *(v73 + 9) = *(a1 + 121);
  v10 = a1[3];
  v72[2] = a1[2];
  v72[3] = v10;
  v11 = a1[5];
  v72[4] = a1[4];
  v72[5] = v11;
  v12 = a1[1];
  v72[0] = *a1;
  v72[1] = v12;
  v13 = sub_1AAE63EF0(v72);
  v14 = sub_1AAD357A8(v72);
  if (v13 <= 2)
  {
    if (!v13)
    {
      if (*(v14 + 64) < 0)
      {
        v46 = *(v14 + 48);
        v47 = *(v14 + 56);
        v48 = sub_1AAF27C04(v47, a2, *(v14 + 40));
        v16 = (v48 + sub_1AAF27C04(v47, a2, v46)) * 0.5;
      }

      else
      {
        v16 = sub_1AAF27C04(*(v14 + 64), a2, *(v14 + 40));
      }

      v15 = 0;
      goto LABEL_36;
    }

    if (v13 == 1)
    {
      if (*(v14 + 8))
      {
        v15 = 1;
LABEL_44:
        v16 = 0.0;
        goto LABEL_45;
      }

      v15 = 0;
      v16 = *v14;
LABEL_36:
      v22 = v16;
      v49 = v16;
      v50 = v16;
LABEL_77:
      *a5 = v16;
      *(a5 + 8) = v22;
      *(a5 + 16) = v16;
      *(a5 + 24) = v22;
      *(a5 + 32) = v49;
      *(a5 + 40) = v50;
      *(a5 + 48) = v15;
      return;
    }

    v23 = *(v14 + 72);
    v24 = *(v14 + 80);
    if (*(a2 + 24))
    {
      v25 = 0.0;
    }

    else
    {
      v25 = *(a2 + 16);
    }

    if (*(v14 + 64) < 0)
    {
      v55 = *(v14 + 48);
      v71 = *(v14 + 40);
      v56 = *a2;
      (*a2)(v74, &v71);
      v57 = v25 * 0.5;
      v27 = *v74 - v57;
      v71 = v55;
      v56(v74, &v71);
      v28 = v57 + *v74;
      if (v24 <= 1)
      {
LABEL_21:
        v29 = (v28 + v27) * 0.5;
        v30 = (v28 - v27) * v23 * 0.5;
        v31 = v29 - v30;
        v22 = v29 + v30;
        if (v24)
        {
          v16 = v31;
        }

        else
        {
          v22 = v23 * 0.5 + v29;
          v16 = v29 - v23 * 0.5;
        }

        goto LABEL_67;
      }
    }

    else
    {
      v26 = sub_1AAF27C04(*(v14 + 64), a2, *(v14 + 40));
      v27 = v26 - v25 * 0.5;
      v28 = v25 * 0.5 + v26;
      if (v24 <= 1)
      {
        goto LABEL_21;
      }
    }

    if (v24 == 2)
    {
      v16 = v27 + v23;
      v22 = v28 - v23;
    }

    else if (v27 == v28)
    {
      v16 = v27 + -4.0;
      sub_1AAF885A0(0);
      v22 = v27 + 4.0;
    }

    else
    {
      v67 = (v28 - v27) * 0.7 * 0.5;
      v68 = (v28 + v27) * 0.5;
      v16 = v68 - v67;
      v22 = v68 + v67;
    }

LABEL_67:
    v15 = 0;
    if (v27 == v28)
    {
      v49 = v16;
    }

    else
    {
      v49 = v27;
    }

    if (v27 == v28)
    {
      v50 = v22;
    }

    else
    {
      v50 = v28;
    }

    goto LABEL_77;
  }

  if (v13 == 3)
  {
    v18 = *(v14 + 112);
    v17 = *(v14 + 120);
    v19 = *(v14 + 128);
    v20 = *(v14 + 136);
    if (*(v14 + 64) < 0)
    {
      v51 = *(v14 + 48);
      v52 = *(v14 + 56);
      v53 = sub_1AAF27C04(v52, a2, *(v14 + 40));
      v16 = (v53 + sub_1AAF27C04(v52, a2, v51)) * 0.5;
      v21 = v18;
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v16 = sub_1AAF27C04(*(v14 + 64), a2, *(v14 + 40));
      v21 = v18;
      if ((v20 & 0x80000000) == 0)
      {
LABEL_15:
        v22 = sub_1AAF27C04(v20, a2, v21);
LABEL_39:
        v15 = 0;
        goto LABEL_76;
      }
    }

    v54 = sub_1AAF27C04(v19, a2, v21);
    v22 = (v54 + sub_1AAF27C04(v19, a2, v17)) * 0.5;
    goto LABEL_39;
  }

  if (v13 == 4)
  {
    v16 = 0.0;
    if (*(v14 + 8) & 1) != 0 || (*(v14 + 24))
    {
      v15 = 1;
LABEL_45:
      v22 = 0.0;
      v49 = 0.0;
      v50 = 0.0;
      goto LABEL_77;
    }

    v15 = 0;
    v16 = *v14;
    v22 = *(v14 + 16);
LABEL_76:
    v49 = v16;
    v50 = v22;
    goto LABEL_77;
  }

  v32 = *(v14 + 40);
  v33 = *(v14 + 64);
  v34 = *(v14 + 72);
  v74[0] = *(v14 + 72);
  *&v74[1] = *(v14 + 73);
  v75 = *(v14 + 89);
  v76 = *(v14 + 105);
  v77 = *(v14 + 121);
  if (!a3)
  {
    v15 = 0;
    goto LABEL_44;
  }

  if ((v33 & 0x80000000) == 0)
  {
    if (!v33)
    {
      v35 = 0.0;
      v36 = 0.0;
      v37 = 0.0;
      if (*(a3 + 16))
      {
        v38 = sub_1AADB0454(v74);
        if (v39)
        {
          v40 = (*(a3 + 56) + 16 * v38);
          v37 = *v40;
          v36 = v40[1];
        }
      }

      v41 = *a4;
      if (*(*a4 + 16))
      {
        v42 = sub_1AADB0454(v74);
        v43 = 0.0;
        if (v44)
        {
          v45 = (*(v41 + 56) + 16 * v42);
          v43 = *v45;
          v35 = v45[1];
        }
      }

      else
      {
        v43 = 0.0;
      }

      v58 = v32 + v43;
      v59 = fmin(v32, 0.0);
      if (v32 >= 0.0)
      {
        v60 = v32 + v43;
      }

      else
      {
        v60 = v43 + 0.0;
      }

      v61 = v59 + v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = *a4;
      sub_1AADD33B0(v74, isUniquelyReferenced_nonNull_native, v60, v61);
      *a4 = v71;
      if (v34 > 1)
      {
        if (v34 == 2)
        {
          v63 = (v37 - v36) * 0.5;
          if (v32 >= 0.0)
          {
            v64 = v43 - v36;
            v65 = v32 + v43 - v36;
          }

          else
          {
            v64 = -v35;
            v65 = -v35 - v32;
          }

          v43 = v64 - v63;
          v58 = v65 - v63;
        }

        else
        {
          v58 = v32;
          v43 = 0.0;
        }
      }

      else if (v34)
      {
        v66 = -v36;
        if (v37 > -v36)
        {
          v66 = v37;
        }

        if (v32 >= 0.0)
        {
          v58 = v58 / v66 * 100.0;
          v43 = fmin(v43 / v66 * 100.0, 100.0);
          if (v58 >= 100.0)
          {
            v58 = 100.0;
          }
        }

        else
        {
          v58 = (v32 + v35) / v66 * 100.0;
          v43 = fmax(v35 / v66 * 100.0, -100.0);
          if (v58 < -100.0)
          {
            v58 = -100.0;
          }
        }
      }

      else if (v32 < 0.0)
      {
        v58 = v32 + v35;
        v43 = v35;
      }

      v70 = v43;
      v69 = *a2;
      (*a2)(&v71, &v70);
      v16 = v71;
      v70 = v58;
      v69(&v71, &v70);
      v15 = 0;
      v22 = v71;
      goto LABEL_76;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1AAF28530(_OWORD *a1, uint64_t a2)
{
  v3 = a1[7];
  v16[6] = a1[6];
  v17[0] = v3;
  *(v17 + 9) = *(a1 + 121);
  v4 = a1[3];
  v16[2] = a1[2];
  v16[3] = v4;
  v5 = a1[5];
  v16[4] = a1[4];
  v16[5] = v5;
  v6 = a1[1];
  v16[0] = *a1;
  v16[1] = v6;
  if (sub_1AAE63EF0(v16) == 5)
  {
    v7 = sub_1AAD357A8(v16);
    v18 = *(v7 + 72);
    v8 = v18;
    v19 = *(v7 + 73);
    v20 = *(v7 + 89);
    v21 = *(v7 + 105);
    v22 = *(v7 + 121);
    if (v18 == 3)
    {
      v9 = 0;
      v10 = 1;
    }

    else
    {
      v11 = 0uLL;
      if (*(a2 + 16))
      {
        v12 = sub_1AADB0454(&v18);
        v11 = 0uLL;
        if (v13)
        {
          v11 = *(*(a2 + 56) + 16 * v12);
        }
      }

      if (v8)
      {
        if (v8 == 1)
        {
          v14 = -v11.f64[1];
          if (v11.f64[0] > -v11.f64[1])
          {
            v14 = v11.f64[0];
          }

          v11 = vmulq_f64(vdivq_f64(v11, vdupq_lane_s64(*&v14, 0)), vdupq_n_s64(0x4059000000000000uLL));
        }

        else
        {
          v11 = vmulq_n_f64(xmmword_1AAFA2D60, vsubq_f64(v11, vdupq_laneq_s64(v11, 1)).f64[0]);
        }
      }

      v10 = v11.f64[1] == 0.0;
      v9 = (v11.f64[0] == 0.0) << 8;
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  return v9 | v10;
}

void sub_1AAF28674(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v233 = a1;
  v234 = a2;
  v229 = a4;
  v225 = sub_1AAF8E3E4();
  v228 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225);
  v224 = &v224 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RenderableAxisLabel();
  v244 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v240 = &v224 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  *&v235 = &v224 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v237 = &v224 - v11;
  v12 = *(a3 + 56);
  v232 = *(a3 + 48);
  v239 = v12;
  v13 = *(a3 + 112);
  v14 = *(a3 + 120);
  v15 = *(v13 + 16);
  v242 = v14;
  v243 = a3;
  v245 = v16;
  if (v15)
  {
    v17 = 0;
    v18 = v13 + 160;
    v230 = MEMORY[0x1E69E7CC0];
    v238 = v15;
    v227 = v13 + 160;
    do
    {
      v19 = v233;
      LODWORD(v231) = *(v233 + 41);
      v20 = (v18 + 136 * v17);
      v21 = v17;
      while (1)
      {
        if (v21 >= v15)
        {
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
          return;
        }

        if (__OFADD__(v21, 1))
        {
          goto LABEL_193;
        }

        v22 = *(v20 - 16);
        v23 = *(v20 - 15);
        v24 = *(v20 - 9);
        v25 = *(v20 - 8);
        v26 = *(v20 - 7);
        v27 = a3;
        v28 = *(v20 - 6);
        v29 = *(v20 - 5);
        v30 = *(v20 - 32);
        v31 = *(v20 - 2);
        v32 = *(v20 - 1);
        v33 = *v20;
        v34 = *(v27 + 256);
        v314 = *(v27 + 240);
        v315 = v34;
        v316 = *(v27 + 272);
        v35 = *(v27 + 192);
        v312[0] = *(v27 + 176);
        v312[1] = v35;
        v36 = *(v27 + 224);
        v312[2] = *(v27 + 208);
        v313 = v36;
        v37 = *&v312[0];
        if (!*&v312[0])
        {
          v14 = v242;
          a3 = v243;
          goto LABEL_45;
        }

        v38 = 0.0;
        v241 = (v21 + 1);
        if (v314 == 255 || (v314 & 1) != 0)
        {
          v39 = 0.0;
        }

        else
        {
          v40 = *(*(&v313 + 1) + 16);
          v39 = 0.0;
          if (v40)
          {
            v39 = *(*(&v313 + 1) + 32);
            v38 = *(*(&v313 + 1) + 8 * v40 + 24);
          }
        }

        v236 = v38;
        *&v246 = v23;

        sub_1AAF2CB38(v312, &v264, sub_1AACFAA34);
        v37(&v264, &v246);
        v41 = *&v264;
        if (v28)
        {
          v42 = HIDWORD(v25);
        }

        else
        {
          v43 = [objc_opt_self() currentDevice];
          v44 = [v43 userInterfaceIdiom];

          if (v44)
          {
            sub_1AAF8D914();
            if (v44 == 1)
            {
              v24 = v283;
              LODWORD(v25) = v284;
              LODWORD(v42) = v285;
              v26 = v286;
              v28 = v287;
              v29 = v288;
            }

            else
            {
              v24 = v295;
              LODWORD(v25) = v296;
              LODWORD(v42) = v297;
              v26 = v298;
              v28 = v299;
              v29 = v300;
            }
          }

          else
          {
            sub_1AAF8D914();
            v24 = v289;
            LODWORD(v25) = v290;
            LODWORD(v42) = v291;
            v26 = v292;
            v28 = v293;
            v29 = v294;
          }
        }

        v6 = v245;
        if (v30)
        {
          break;
        }

        if ((*(v19 + 42) & 1) == 0 && (LOBYTE(v231) & 1) == 0)
        {
          v231 = v239;
          v29 = v239;
          goto LABEL_25;
        }

        sub_1AAF2C63C(v312, sub_1AACFAA34);

        ++v21;
        v20 += 17;
        v15 = v238;
        a3 = v243;
        if (v241 == v238)
        {
          v14 = v242;
          goto LABEL_45;
        }
      }

      v231 = 0.0;
LABEL_25:
      v45 = v239 + v33;
      if (v30)
      {
        v45 = v239;
      }

      v226 = v45;
      v46 = swift_allocObject();
      v47 = qword_1ED9B09B8;

      v48 = v47 == -1;
      v14 = v242;
      if (!v48)
      {
        swift_once();
      }

      v49 = v31 + v41;
      v50 = qword_1ED9C3448;
      v51 = v231 + v32;
      v52 = v32 + v226;
      LOBYTE(v264) = 0;
      *(v46 + 16) = v22;
      *(v46 + 24) = 0;
      *(v46 + 32) = 0;
      *(v46 + 40) = 0;
      *(v46 + 48) = v49;
      *(v46 + 56) = v51;
      *(v46 + 64) = v49;
      *(v46 + 72) = v52;
      *(v46 + 80) = v50;
      *(v46 + 120) = 0;
      *(v46 + 128) = v24;
      *(v46 + 136) = v25;
      *(v46 + 140) = v42;
      *(v46 + 144) = v26;
      *(v46 + 152) = v28;
      *(v46 + 160) = v29;
      *(v46 + 168) = 0x3FF0000000000000;
      *(v46 + 176) = 0;
      *(v46 + 184) = 0;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v230 = sub_1AAD6B22C(0, *(v230 + 2) + 1, 1, v230);
      }

      v54 = *(v230 + 2);
      v53 = *(v230 + 3);
      v55 = v54 + 1;
      if (v54 >= v53 >> 1)
      {
        v230 = sub_1AAD6B22C((v53 > 1), v54 + 1, 1, v230);
      }

      v56 = v230;
      *(v230 + 2) = v55;
      *&v56[8 * v54 + 32] = v46 | 0x2000000000000000;
      if (v49 == v39)
      {
        v6 = v245;
        if (*(v233 + 9) == 2)
        {
          v57 = swift_allocObject();
          *(v57 + 80) = v50;
          *(v57 + 120) = 0;
          *(v57 + 16) = v22;
          *(v57 + 24) = 0;
          *(v57 + 32) = 0;
          *(v57 + 40) = 0;
          v58 = v236;
          *(v57 + 48) = v236;
          *(v57 + 56) = v51;
          *(v57 + 64) = v58;
          *(v57 + 72) = v52;
          *(v57 + 128) = v24;
          *(v57 + 136) = v25;
          *(v57 + 140) = v42;
          *(v57 + 144) = v26;
          *(v57 + 152) = v28;
          *(v57 + 160) = v29;
          *(v57 + 168) = 0x3FF0000000000000;
          *(v57 + 176) = 0;
          *(v57 + 184) = 0;
          v59 = *(v230 + 3);

          if ((v54 + 2) > (v59 >> 1))
          {
            v230 = sub_1AAD6B22C((v59 > 1), v54 + 2, 1, v230);
          }

          a3 = v243;
          v18 = v227;
          sub_1AAF2C63C(v312, sub_1AACFAA34);
          v60 = v230;
          *(v230 + 2) = v54 + 2;
          *&v60[8 * v55 + 32] = v57 | 0x2000000000000000;
          v6 = v245;
        }

        else
        {
          v18 = v227;

          sub_1AAF2C63C(v312, sub_1AACFAA34);

          a3 = v243;
        }
      }

      else
      {

        sub_1AAF2C63C(v312, sub_1AACFAA34);

        a3 = v243;
        v6 = v245;
        v18 = v227;
      }

      v15 = v238;
      v17 = v241;
    }

    while (v241 != v238);
  }

  else
  {
    v230 = MEMORY[0x1E69E7CC0];
  }

LABEL_45:
  v61 = *(a3 + 160);
  v238 = *(a3 + 168);
  v62 = *(v61 + 16);
  if (v62 == 0.0)
  {
    goto LABEL_79;
  }

  v63 = 0;
  v64 = a3 + 280;
  *&v65 = v61 + 152;
  v236 = v62;
  v231 = v65;
  do
  {
    v66 = (*&v65 + 136 * v63);
    while (1)
    {
      if (v63 >= *&v62)
      {
        goto LABEL_194;
      }

      if (__OFADD__(v63, 1))
      {
        goto LABEL_195;
      }

      v73 = *(v66 - 15);
      v74 = *(v66 - 14);
      v70 = *(v66 - 8);
      v69 = *(v66 - 7);
      v67 = *(v66 - 6);
      v71 = *(v66 - 5);
      v72 = *(v66 - 4);
      v75 = *(v66 - 24);
      v77 = *(v66 - 1);
      v76 = *v66;
      v78 = *(v64 + 80);
      v309 = *(v64 + 64);
      v310 = v78;
      v311 = *(v64 + 96);
      v79 = *(v64 + 16);
      v307[0] = *v64;
      v307[1] = v79;
      v80 = *(v64 + 32);
      v308 = *(v64 + 48);
      v307[2] = v80;
      v81 = *&v307[0];
      if (!*&v307[0])
      {
        v14 = v242;
        a3 = v243;
        goto LABEL_79;
      }

      v82 = 0;
      v241 = (v63 + 1);
      if (v309 == 255 || (v309 & 1) != 0)
      {
        v83 = 0.0;
      }

      else
      {
        v84 = *(*(&v308 + 1) + 16);
        v83 = 0.0;
        if (v84)
        {
          v83 = *(*(&v308 + 1) + 32);
          v82 = *(*(&v308 + 1) + 8 * v84 + 24);
        }
      }

      *&v246 = v74;

      sub_1AAF2CB38(v307, &v264, sub_1AACFAA34);
      v81(&v264, &v246);
      v85 = *&v264;
      if (!v71)
      {
        sub_1AAF8D914();
        v67 = v304;
        LODWORD(v68) = v303;
        LODWORD(v69) = v302;
        v70 = v301;
        v71 = v305;
        v72 = v306;
        v6 = v245;
        if (v75)
        {
          break;
        }

        goto LABEL_49;
      }

      v68 = HIDWORD(v69);
      v6 = v245;
      if (v75)
      {
        break;
      }

LABEL_49:

      sub_1AAF2C63C(v307, sub_1AACFAA34);

      ++v63;
      v66 += 17;
      v62 = v236;
      v14 = v242;
      a3 = v243;
      if (v241 == *&v236)
      {
        goto LABEL_79;
      }
    }

    v86 = v76 + v85;
    v87 = v77 + 0.0;
    v88 = v77 + v232;
    if (v86 == v83 && v234[9] == 2)
    {
      v89 = v68;
      v90 = swift_allocObject();
      v91 = *(v243 + 40);
      v92 = qword_1ED9B09B8;

      if (v92 != -1)
      {
        swift_once();
      }

      v93 = qword_1ED9C3448;
      LOBYTE(v264) = 0;
      *(v90 + 16) = v73;
      *(v90 + 24) = 0;
      *(v90 + 32) = 0;
      *(v90 + 40) = v91;
      *(v90 + 48) = v87;
      *(v90 + 56) = v82;
      *(v90 + 64) = v88;
      *(v90 + 72) = v82;
      *(v90 + 80) = v93;
      *(v90 + 120) = 0;
      *(v90 + 128) = v70;
      *(v90 + 136) = v69;
      *(v90 + 140) = v89;
      *(v90 + 144) = v67;
      *(v90 + 152) = v71;
      *(v90 + 160) = v72;
      *(v90 + 168) = 0x3FF0000000000000;
      *(v90 + 176) = 0;
      *(v90 + 184) = 0;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v230 = sub_1AAD6B22C(0, *(v230 + 2) + 1, 1, v230);
      }

      v68 = *(v230 + 2);
      v94 = *(v230 + 3);
      if (v68 >= v94 >> 1)
      {
        v230 = sub_1AAD6B22C((v94 > 1), v68 + 1, 1, v230);
      }

      v95 = v230;
      *(v230 + 2) = v68 + 1;
      *&v95[8 * v68 + 32] = v90 | 0x2000000000000000;
      LODWORD(v68) = v89;
    }

    else
    {
      v72 = v232;
    }

    v96 = swift_allocObject();
    if (qword_1ED9B09B8 != -1)
    {
      swift_once();
    }

    v97 = qword_1ED9C3448;
    LOBYTE(v264) = 0;
    *(v96 + 16) = v73;
    *(v96 + 24) = 0;
    *(v96 + 32) = 0;
    *(v96 + 40) = 0;
    *(v96 + 48) = v87;
    *(v96 + 56) = v86;
    *(v96 + 64) = v88;
    *(v96 + 72) = v86;
    *(v96 + 80) = v97;
    *(v96 + 120) = 0;
    *(v96 + 128) = v70;
    *(v96 + 136) = v69;
    *(v96 + 140) = v68;
    *(v96 + 144) = v67;
    *(v96 + 152) = v71;
    *(v96 + 160) = v72;
    *(v96 + 168) = 0x3FF0000000000000;
    *(v96 + 176) = 0;
    *(v96 + 184) = 0;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v230 = sub_1AAD6B22C(0, *(v230 + 2) + 1, 1, v230);
    }

    v14 = v242;
    a3 = v243;
    v99 = *(v230 + 2);
    v98 = *(v230 + 3);
    if (v99 >= v98 >> 1)
    {
      v230 = sub_1AAD6B22C((v98 > 1), v99 + 1, 1, v230);
    }

    sub_1AAF2C63C(v307, sub_1AACFAA34);
    v100 = v230;
    *(v230 + 2) = v99 + 1;
    *&v100[8 * v99 + 32] = v96 | 0x2000000000000000;
    v62 = v236;
    v63 = v241;
    v6 = v245;
    v65 = v231;
  }

  while (v241 != *&v236);
LABEL_79:
  v101 = v14[2];

  if (v101)
  {
    v102 = 0;
    v241 = v101;
    while (1)
    {
      if (v102 >= v101)
      {
        goto LABEL_197;
      }

      if (__OFADD__(v102, 1))
      {
        goto LABEL_198;
      }

      if (v102 >= v14[2])
      {
        goto LABEL_199;
      }

      v242 = (v102 + 1);
      v103 = v6;
      v104 = (*(v244 + 80) + 32) & ~*(v244 + 80);
      v105 = v14;
      v106 = *(v244 + 72);
      v107 = v237;
      sub_1AAF2CB38(v14 + v104 + v106 * v102, v237, type metadata accessor for RenderableAxisLabel);
      v108 = *(a3 + 256);
      v268 = *(a3 + 240);
      v269 = v108;
      v270 = *(a3 + 272);
      v109 = *(a3 + 192);
      v264 = *(a3 + 176);
      v265 = v109;
      v110 = *(a3 + 224);
      v266 = *(a3 + 208);
      v267 = v110;
      v111 = v264;
      if (!v264)
      {
        break;
      }

      v112 = v107 + *(v103 + 24);
      if (*(v112 + 16))
      {
        sub_1AAF2C63C(v107, type metadata accessor for RenderableAxisLabel);
        ++v102;
        v101 = v241;
        v14 = v105;
        v6 = v103;
        if (v242 == v241)
        {
          goto LABEL_98;
        }
      }

      else
      {
        *&v253 = *(v112 + 8);
        v113 = *(a3 + 256);
        v250 = *(a3 + 240);
        v251 = v113;
        v252 = *(a3 + 272);
        v114 = *(a3 + 192);
        v246 = *(a3 + 176);
        v247 = v114;
        v115 = *(a3 + 224);
        v248 = *(a3 + 208);
        v249 = v115;
        sub_1AAEDA330(&v246, &v276);
        v111(&v276, &v253);
        v116 = v276;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_1AADB8284(v105);
        }

        v117 = v237;
        v118 = v105[2];
        v119 = v245;
        if (v102 >= v118)
        {
          goto LABEL_202;
        }

        v120 = v105 + v104;
        v121 = v105 + v104 + v106 * v102;
        *&v121[v245[8]] = v116;
        v121[v119[10]] = v118 - 1 == v102;
        v122 = v119;
        v123 = v102 - 1;
        if (v102 - 1 >= v118)
        {
          sub_1AAF2C63C(&v264, sub_1AACFAA34);
          sub_1AAF2C63C(v117, type metadata accessor for RenderableAxisLabel);
          v6 = v122;
          v14 = v105;
        }

        else
        {
          v124 = v119[8];
          v125 = *&v121[v124];
          v126 = &v120[v106 * v123];
          v127 = *&v126[v124];
          sub_1AAF2C63C(&v264, sub_1AACFAA34);
          sub_1AAF2C63C(v117, type metadata accessor for RenderableAxisLabel);
          if (v123 >= v105[2])
          {
            goto LABEL_203;
          }

          v14 = v105;
          *&v126[*(v122 + 36)] = v125 - v127;
          v6 = v122;
        }

        v101 = v241;
        v102 = v242;
        if (v242 == v241)
        {
          goto LABEL_98;
        }
      }
    }

    sub_1AAF2C63C(v107, type metadata accessor for RenderableAxisLabel);
    v14 = v105;
    v6 = v103;
  }

LABEL_98:
  v242 = v14;
  v128 = v14[2];
  if (!v128)
  {
    goto LABEL_146;
  }

  v129 = 0;
  v227 = v128 - 1;
  v130 = 0.5;
  v131 = 4.0;
  v132 = qword_1ED9AE520;
  v133 = &type metadata for PrimitiveAxisLabel;
  v241 = v128;
  while (2)
  {
    v134 = v129;
    v135 = v242;
    v136 = v235;
    while (2)
    {
      if (v134 >= v135[2])
      {
        goto LABEL_196;
      }

      sub_1AAF2CB38(v135 + ((*(v244 + 80) + 32) & ~*(v244 + 80)) + *(v244 + 72) * v134, *&v136, type metadata accessor for RenderableAxisLabel);
      v137 = *(a3 + 192);
      v276 = *(a3 + 176);
      v277 = v137;
      v138 = *(a3 + 256);
      v280 = *(a3 + 240);
      v281 = v138;
      v282 = *(a3 + 272);
      v139 = *(a3 + 224);
      v278 = *(a3 + 208);
      v279 = v139;
      v140 = v276;
      if (!v276)
      {
        sub_1AAF2C63C(*&v136, type metadata accessor for RenderableAxisLabel);
        goto LABEL_146;
      }

      v141 = (*&v136 + *(v6 + 24));
      if (v141[16])
      {
        sub_1AAF2C63C(*&v136, type metadata accessor for RenderableAxisLabel);
        goto LABEL_102;
      }

      v142 = v133;
      v143 = v132;
      v144 = *&v277;
      v145 = BYTE8(v277);
      *&v246 = *(v141 + 1);
      v146 = *(a3 + 256);
      v257 = *(a3 + 240);
      v258 = v146;
      v259 = *(a3 + 272);
      v147 = *(a3 + 192);
      v253 = *(a3 + 176);
      v254 = v147;
      v148 = *(a3 + 224);
      v255 = *(a3 + 208);
      v256 = v148;
      sub_1AAEDA330(&v253, &v264);
      v140(&v264, &v246);
      v149 = *&v264;
      v150 = (*&v136 + v245[7]);
      v151 = *v150;
      v152 = *v150 * v130;
      v153 = v152 + v131;
      v154 = v233;
      v155 = *(v233 + 9);
      LODWORD(v237) = v145;
      v236 = v144;
      if (v155 == 2)
      {
        v156 = v144 * v130;
        if (v145)
        {
          v156 = 0.0;
        }

        v157 = *&v264 + v156 - v152 + v131;
      }

      else if (*(v233 + 41))
      {
        v157 = *&v264;
      }

      else
      {
        v157 = *&v264 + v153;
      }

      v158 = v150[1];
      v159 = *(v233 + 42);
      v136 = v235;
      v132 = v143;
      v133 = v142;
      sub_1AAF2C8E8(*&v235 + 8, &v264, v143, v142);
      if (!v264)
      {
        sub_1AAF2C63C(*&v136, type metadata accessor for RenderableAxisLabel);
        sub_1AAF2C63C(&v276, sub_1AACFAA34);
        sub_1AAF2C968(&v264, v143, v142);
        v6 = v245;
        v128 = v241;
        v135 = v242;
        goto LABEL_102;
      }

      v160 = v158 * v130 + v131;
      v161 = v239;
      v162 = v239 - v160;
      v261 = v273;
      v262 = v274;
      v263 = v275;
      v260[0] = v271;
      v260[1] = v272;
      sub_1AAEC8C04(v260, &v246);
      sub_1AAD57D44(&v264);
      if (v159)
      {
        goto LABEL_118;
      }

      v163 = v161 + v160;
      if (*(v154 + 41) & 1) != 0 || (*(v154 + 40))
      {
        v162 = v163;
LABEL_118:
        v136 = v235;
      }

      else
      {
        v231 = *(&v263 + 1);
        v165 = *&v263;
        sub_1AAF8F214();
        v226 = v165;
        v166 = sub_1AAF8F234();
        v136 = v235;
        if ((v166 & 1) == 0)
        {
          sub_1AAF8F224();
          if (sub_1AAF8F234())
          {
            v167 = v236;
            if (v237)
            {
              v167 = 0.0;
            }

            v157 = v149 + v167 - v153;
          }

          else
          {
            sub_1AAF8F204();
            v168 = sub_1AAF8F234();
            v169 = v236;
            if (v237)
            {
              v169 = 0.0;
            }

            v170 = v149 + v169 - v153;
            if (v168)
            {
              v157 = v170;
            }

            v162 = v163;
          }
        }
      }

      v132 = v143;
      v133 = v142;
      sub_1AAF2C8E8(*&v136 + 8, &v246, v143, v142);
      v128 = v241;
      v135 = v242;
      v130 = 0.5;
      if (!v246)
      {
        sub_1AAF2C968(&v246, v132, v133);
LABEL_126:
        v6 = v245;
        goto LABEL_127;
      }

      v164 = BYTE1(v247);
      sub_1AAD57D44(&v246);
      if (v164 == 2 || (v164 & 1) == 0)
      {
        goto LABEL_126;
      }

      v6 = v245;
      if ((*(*&v136 + v245[10]) & 1) == 0)
      {
        v157 = v149 + *(*&v136 + v245[9]) * 0.5 - v153;
      }

LABEL_127:
      if (v157 > v232)
      {
        sub_1AAF2C63C(*&v136, type metadata accessor for RenderableAxisLabel);
        sub_1AAF2C63C(&v276, sub_1AACFAA34);
        sub_1AAECDC58(v260);
        v131 = 4.0;
LABEL_102:
        if (v128 == ++v134)
        {
          goto LABEL_146;
        }

        continue;
      }

      break;
    }

    v171 = v157 + *&v262;
    v172 = v162 + *(&v262 + 1);
    v173 = swift_allocObject();
    v174 = **&v136;
    *&v246 = *(&v261 + 1);

    v175 = sub_1AAF8EF44();
    *(v173 + 16) = v174;
    *(v173 + 24) = 0;
    *(v173 + 32) = 0;
    *(v173 + 40) = 0;
    *(v173 + 48) = 0;
    *(v173 + 56) = 0;
    *(v173 + 64) = v171;
    *(v173 + 72) = v172;
    *(v173 + 80) = v151;
    *(v173 + 88) = v158;
    *(v173 + 96) = v175;
    *(v173 + 104) = 0x3FF0000000000000;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v230 = sub_1AAD6B22C(0, *(v230 + 2) + 1, 1, v230);
    }

    v177 = *(v230 + 2);
    v176 = *(v230 + 3);
    v131 = 4.0;
    if (v177 >= v176 >> 1)
    {
      v230 = sub_1AAD6B22C((v176 > 1), v177 + 1, 1, v230);
    }

    v129 = v134 + 1;
    sub_1AAECDC58(v260);
    sub_1AAF2C63C(&v276, sub_1AACFAA34);
    sub_1AAF2C63C(*&v235, type metadata accessor for RenderableAxisLabel);
    v178 = v230;
    *(v230 + 2) = v177 + 1;
    *&v178[8 * v177 + 32] = v173 | 0x9000000000000000;
    a3 = v243;
    v6 = v245;
    if (v227 != v134)
    {
      continue;
    }

    break;
  }

LABEL_146:
  v179 = v238[2];
  if (v179)
  {
    v180 = 0;
    v181 = (a3 + 280);
    v233 = v228 + 16;
    while (2)
    {
      v182 = v180;
LABEL_151:
      if (v182 >= v179)
      {
        goto LABEL_200;
      }

      v180 = v182 + 1;
      if (__OFADD__(v182, 1))
      {
        goto LABEL_201;
      }

      v183 = v240;
      sub_1AAF2CB38(v238 + ((*(v244 + 80) + 32) & ~*(v244 + 80)) + *(v244 + 72) * v182, v240, type metadata accessor for RenderableAxisLabel);
      v184 = v181[5];
      v250 = v181[4];
      v251 = v184;
      v252 = *(v181 + 12);
      v185 = v181[1];
      v246 = *v181;
      v247 = v185;
      v186 = v181[3];
      v248 = v181[2];
      v249 = v186;
      v187 = v246;
      if (!v246)
      {
        sub_1AAF2C63C(v183, type metadata accessor for RenderableAxisLabel);
        goto LABEL_191;
      }

      v188 = v183 + *(v6 + 24);
      if (*(v188 + 32))
      {
        sub_1AAF2C63C(v183, type metadata accessor for RenderableAxisLabel);
      }

      else
      {
        *&v253 = *(v188 + 24);
        v189 = v181[5];
        v280 = v181[4];
        v281 = v189;
        v282 = *(v181 + 12);
        v190 = v181[1];
        v276 = *v181;
        v277 = v190;
        v191 = v181[3];
        v278 = v181[2];
        v279 = v191;
        sub_1AAEDA330(&v276, &v264);
        v187(&v264, &v253);
        v192 = v240;
        v6 = v245;
        v193 = *&v264;
        v194 = (v240 + v245[7]);
        v196 = *v194;
        v195 = v194[1];
        v197 = v195 * 0.5 + 4.0;
        v198 = *v194 * 0.5 + 4.0;
        v199 = *&v264 + v197;
        if (v234[9] == 2)
        {
          v200 = *&v264 + v197;
          v201 = *v194 * 0.5 + 4.0;
        }

        else
        {
          v202 = -v198;
          if ((v234[42] & 1) == 0)
          {
            v202 = *v194 * 0.5 + 4.0;
          }

          v201 = v232 + v202;
          if (v234[40])
          {
            v200 = *&v264 + v197;
          }

          else
          {
            v200 = *&v264;
          }
        }

        v241 = *(v243 + 16);
        v237 = *(v243 + 40);
        sub_1AAF2C8E8(v240 + 8, &v264, qword_1ED9AE520, &type metadata for PrimitiveAxisLabel);
        if (v264)
        {
          v255 = v273;
          v256 = v274;
          v257 = v275;
          v253 = v271;
          v254 = v272;
          sub_1AAEC8C04(&v253, v260);
          sub_1AAD57D44(&v264);
          if (v234[42])
          {
            v199 = v200;
            goto LABEL_165;
          }

          v203 = v240;
          v204 = v239;
          if (v234[41] & 1) != 0 || (v234[40])
          {
            v199 = v200;
          }

          else
          {
            v235 = v201;
            v236 = *(&v257 + 1);
            v206 = *&v257;
            sub_1AAF8F214();
            v231 = v206;
            if (sub_1AAF8F234())
            {
              v199 = v193 - v197;
              v203 = v240;
              v204 = v239;
              v201 = v235;
            }

            else
            {
              sub_1AAF8F1F4();
              v207 = sub_1AAF8F234();
              v201 = v235;
              if ((v207 & 1) == 0)
              {
                sub_1AAF8F224();
                v208 = sub_1AAF8F234();
                v209 = v232 - v198;
                if (v208)
                {
                  v199 = v193 - v197;
                  v201 = v209;
                }

                else
                {
                  sub_1AAF8F204();
                  if (sub_1AAF8F234())
                  {
                    v201 = v209;
                  }

                  else
                  {
                    v199 = v200;
                  }
                }
              }

LABEL_165:
              v203 = v240;
              v204 = v239;
            }
          }

          if (v199 >= 0.0 && v199 <= v204)
          {
            v210 = v201 + *&v256;
            v211 = v199 + *(&v256 + 1);
            v212 = v203;
            v213 = swift_allocObject();
            v214 = *v212;
            v215 = type metadata accessor for DisplayListProxyViewContainer(0);
            (*v233)(v224, v188 + *(v215 + 24), v225);

            v216 = sub_1AAF8EF44();
            *(v213 + 16) = v214;
            *(v213 + 24) = 0;
            *(v213 + 32) = 0;
            *(v213 + 40) = 0;
            *(v213 + 42) = v260[0];
            *(v213 + 46) = WORD2(v260[0]);
            v217 = v237;
            *(v213 + 48) = v241;
            *(v213 + 56) = v217;
            *(v213 + 64) = v210;
            *(v213 + 72) = v211;
            *(v213 + 80) = v196;
            *(v213 + 88) = v195;
            *(v213 + 96) = v216;
            *(v213 + 104) = 0x3FF0000000000000;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v230 = sub_1AAD6B22C(0, *(v230 + 2) + 1, 1, v230);
            }

            v220 = *(v230 + 2);
            v219 = *(v230 + 3);
            if (v220 >= v219 >> 1)
            {
              v230 = sub_1AAD6B22C((v219 > 1), v220 + 1, 1, v230);
            }

            sub_1AAF2C63C(&v246, sub_1AACFAA34);
            sub_1AAECDC58(&v253);
            sub_1AAF2C63C(v240, type metadata accessor for RenderableAxisLabel);
            v221 = v230;
            *(v230 + 2) = v220 + 1;
            *&v221[8 * v220 + 32] = v213 | 0x9000000000000000;
            v6 = v245;
            if (v180 != v179)
            {
              continue;
            }

            goto LABEL_191;
          }

          sub_1AAF2C63C(v203, type metadata accessor for RenderableAxisLabel);
          sub_1AAF2C63C(&v246, sub_1AACFAA34);
          sub_1AAECDC58(&v253);
        }

        else
        {
          sub_1AAF2C63C(v192, type metadata accessor for RenderableAxisLabel);
          sub_1AAF2C63C(&v246, sub_1AACFAA34);
          sub_1AAF2C968(&v264, qword_1ED9AE520, &type metadata for PrimitiveAxisLabel);
        }
      }

      break;
    }

    ++v182;
    if (v180 == v179)
    {
      goto LABEL_191;
    }

    goto LABEL_151;
  }

LABEL_191:
  sub_1AAEE23A8(v230, &v264);

  v222 = v265;
  v223 = v229;
  *v229 = v264;
  v223[1] = v222;
  v223[2] = v266;
}

void sub_1AAF29F9C(uint64_t a1, char **a2)
{
  v218 = type metadata accessor for ChartDisplayList.RectangleItem(0);
  MEMORY[0x1EEE9AC00](v218);
  v220 = (&v192 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v217 = type metadata accessor for ChartDisplayList.BarItem(0);
  MEMORY[0x1EEE9AC00](v217);
  v219 = &v192 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAF26348(0, &qword_1ED9B2E80, 255, MEMORY[0x1E697E798], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v216 = &v192 - v7;
  v8 = sub_1AAF8DD44();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v205 = &v192 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_1AAF8DE34();
  MEMORY[0x1EEE9AC00](v225);
  MEMORY[0x1EEE9AC00](v11);
  v212 = &v192 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v192 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v201 = &v192 - v17;
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v211 = &v192 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v192 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v200 = &v192 - v25;
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](&v192 - v27);
  v199 = &v192 - v28;
  MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v30);
  v210 = &v192 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v209 = &v192 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v208 = &v192 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v215 = &v192 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v198 = &v192 - v39;
  MEMORY[0x1EEE9AC00](v40);
  MEMORY[0x1EEE9AC00](v41);
  v197 = &v192 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v207 = &v192 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v206 = &v192 - v52;
  v53 = *(a1 + 16);
  if (v53)
  {
    v221 = 0;
    v222 = v8;
    v54 = (a1 + 32);
    v214 = (v9 + 48);
    v195 = (v9 + 8);
    v196 = (v9 + 32);
    v223 = (v49 + 8);
    v224 = (v49 + 32);
    v203 = v51;
    v204 = v50;
    v226 = v23;
    v227 = v15;
    v193 = v48;
    v194 = v46;
    v202 = v47;
    v228 = a2;
    do
    {
      v60 = v54 + 1;
      v61 = *v54;
      v62 = *a2;
      v230 = v60;
      v231 = (v61 & 0xFFFFFFFFFFFFFFFLL);

      sub_1AAF8DE44();
      v250[0] = v63;
      sub_1AAF8DED4();
      v64 = sub_1AAF8DEA4();
      v65 = v64;
      v66 = v61 >> 60;
      if ((v61 >> 60) > 4)
      {
        if (v66 > 6)
        {
          v67 = v15;
          v68 = v23;
          if (v66 == 7)
          {
            v55 = v231[5];
            v274 = v231[4];
            v275 = v55;
            v56 = v231[7];
            v276 = v231[6];
            v277 = v56;
            v57 = v231[2];
            v271 = v231[1];
            v272 = v57;
            v273 = v231[3];
            *&v245 = v62;
            MEMORY[0x1EEE9AC00](v64);
            *(&v192 - 2) = &v271;
            sub_1AAEEBACC(&v271, &v232);

            v58 = v221;
            sub_1AAF8DCF4();
            v221 = v58;
            v54 = v230;
            v59 = v227;
            v8 = v222;
            sub_1AAF29F9C(*(&v272 + 1), &v245);
            sub_1AAEEBE84(&v271);

            v23 = v68;
            v15 = v59;
          }

          else if (v66 == 8)
          {
            sub_1AAEE2D40((v231 + 1), &v232);
            sub_1AAF29F9C(*&v234, a2);
            sub_1AAEE2D78(&v232);
            v54 = v230;
            v15 = v67;
          }

          else
          {
            v229 = v64;
            *&v232 = *(v231 + 2);
            sub_1AAD80D58();
            swift_bridgeObjectRetain_n();

            v112 = v216;
            sub_1AAF8DD34();

            if ((*v214)(v112, 1, v8) == 1)
            {

              sub_1AAF2C9D8(v112, &qword_1ED9B2E80, MEMORY[0x1E697E798], MEMORY[0x1E69E6720]);
              v23 = v226;
              a2 = v228;
              v54 = v230;
              v15 = v67;
            }

            else
            {
              v137 = v205;
              (*v196)(v205, v112, v8);
              v138 = v228;
              sub_1AAF8DE54();
              v213 = v53;
              sub_1AAF8F264();
              v53 = v213;
              sub_1AAF8DD74();

              a2 = v138;

              v139 = v137;
              v15 = v67;
              (*v195)(v139, v8);
              v23 = v226;
              v54 = v230;
            }
          }

          goto LABEL_4;
        }

        if (v66 == 5)
        {
          v70 = swift_projectBox();
          v71 = v219;
          sub_1AAF2CB38(v70, v219, type metadata accessor for ChartDisplayList.BarItem);
          v72 = v71;
          v73 = v217;
          if (*(v72 + *(v217 + 64)))
          {
            v229 = v65;
            v243[0] = v62;
            v74 = v72[4];
            v75 = v72[5];
            if (v75 >= v74)
            {
              v76 = v72[4];
            }

            else
            {
              v76 = v72[5];
            }

            v77 = v72[6];
            v78 = v72[7];
            if (v78 >= v77)
            {
              v79 = v72[6];
            }

            else
            {
              v79 = v72[7];
            }

            v80 = vabdd_f64(v75, v74);
            v81 = vabdd_f64(v78, v77);
            v82 = v72;

            v284.origin.x = v76;
            v284.origin.y = v79;
            v284.size.width = v80;
            v284.size.height = v81;
            v285 = CGRectOffset(v284, 40.0, 40.0);
            CGRectOffset(v285, v82[2], v82[3]);
            sub_1AAF8F014();
            sub_1AAF8DD54();
            sub_1AAD12C10(&v265);
            v249 = v243[0];
            v83 = *(v73 + 60);
            v84 = (v82 + v83);
            v85 = *(v82 + v83 + 24);
            v86 = *(v82 + v83 + 32);
            if (v86 >= v85)
            {
              v87 = *(v82 + v83 + 24);
            }

            else
            {
              v87 = *(v82 + v83 + 32);
            }

            v88 = v84[5];
            v89 = v84[6];
            if (v89 >= v88)
            {
              v90 = v84[5];
            }

            else
            {
              v90 = v84[6];
            }

            v91 = vabdd_f64(v86, v85);
            v92 = vabdd_f64(v89, v88);
            v213 = v243[0];

            v286.origin.x = v87;
            v286.origin.y = v90;
            v286.size.width = v91;
            v286.size.height = v92;
            v287 = CGRectOffset(v286, 40.0, 40.0);
            CGRectOffset(v287, v84[1], v84[2]);
            *(&v192 - 6) = MEMORY[0x1EEE9AC00](v93);
            *(&v192 - 5) = v94;
            *(&v192 - 4) = v95;
            *(&v192 - 3) = v96;
            *(&v192 - 2) = v84;
            sub_1AAF8E964();
            sub_1AAF8DD54();
            sub_1AAD12C10(&v266);
            sub_1AAF8DE54();
            sub_1AAEE15E8(v267);
            sub_1AAEEBB28(v82 + *(v73 + 52), &v232);
            if (LOBYTE(v235.origin.y))
            {
              sub_1AACBB198(&v232, &v245);
              sub_1AACBB42C(&v245, v246);
              v97 = v203;
              sub_1AAF8DE24();
              sub_1AACB634C(&v245);
            }

            else
            {
              v97 = v203;
              sub_1AAF8DE14();
            }

            v173 = v222;
            v174 = v227;
            v175 = v230;
            v176 = v225;
            v177 = v211;
            (*v224)(v211, v97, v225);
            sub_1AAF8DDA4();
            sub_1AAD12C10(v267);

            (*v223)(v177, v176);
          }

          else
          {
            v243[0] = v62;
            v149 = *(v217 + 60);
            v150 = (v72 + v149);
            v151 = *(v72 + v149 + 24);
            v152 = *(v72 + v149 + 32);
            if (v152 >= v151)
            {
              v153 = *(v72 + v149 + 24);
            }

            else
            {
              v153 = *(v72 + v149 + 32);
            }

            v154 = v150[5];
            v155 = v150[6];
            if (v155 >= v154)
            {
              v156 = v150[5];
            }

            else
            {
              v156 = v150[6];
            }

            v157 = vabdd_f64(v152, v151);
            v158 = vabdd_f64(v155, v154);
            v159 = v72;

            v296.origin.x = v153;
            v296.origin.y = v156;
            v296.size.width = v157;
            v296.size.height = v158;
            v297 = CGRectOffset(v296, 40.0, 40.0);
            CGRectOffset(v297, v150[1], v150[2]);
            *(&v192 - 6) = MEMORY[0x1EEE9AC00](v160);
            *(&v192 - 5) = v161;
            *(&v192 - 4) = v162;
            *(&v192 - 3) = v163;
            *(&v192 - 2) = v150;
            sub_1AAF8E964();
            sub_1AAF8DD54();
            sub_1AAD12C10(&v263);
            sub_1AAF8DE54();
            sub_1AAEE15E8(v264);
            sub_1AAEEBB28(v159 + *(v73 + 52), &v232);
            if (LOBYTE(v235.origin.y))
            {
              sub_1AACBB198(&v232, &v245);
              sub_1AACBB42C(&v245, v246);
              v164 = v226;
              sub_1AAF8DE24();
              sub_1AACB634C(&v245);
            }

            else
            {
              v164 = v226;
              sub_1AAF8DE14();
            }

            v173 = v222;
            v174 = v227;
            v175 = v230;
            v186 = v225;
            v187 = v200;
            (*v224)(v200, v164, v225);
            sub_1AAF8DDA4();
            sub_1AAD12C10(v264);
            (*v223)(v187, v186);
          }

          sub_1AAF2C63C(v219, type metadata accessor for ChartDisplayList.BarItem);
          v8 = v173;
          a2 = v228;
          v54 = v175;
          v23 = v226;
          v15 = v174;
          goto LABEL_4;
        }

        v122 = v15;
        v123 = v8;
        v124 = swift_projectBox();
        v125 = v220;
        sub_1AAF2CB38(v124, v220, type metadata accessor for ChartDisplayList.RectangleItem);
        v126 = v218;
        if (*(v125 + *(v218 + 60)))
        {
          v229 = v65;
          v243[0] = v62;
          v127 = v125[4];
          v128 = v125[5];
          if (v128 >= v127)
          {
            v129 = v125[4];
          }

          else
          {
            v129 = v125[5];
          }

          v130 = v125[6];
          v131 = v125[7];
          if (v131 >= v130)
          {
            v132 = v125[6];
          }

          else
          {
            v132 = v125[7];
          }

          v133 = vabdd_f64(v128, v127);
          v134 = vabdd_f64(v131, v130);

          v294.origin.x = v129;
          v294.origin.y = v132;
          v294.size.width = v133;
          v294.size.height = v134;
          v295 = CGRectOffset(v294, 40.0, 40.0);
          CGRectOffset(v295, v125[2], v125[3]);
          sub_1AAF8F014();
          sub_1AAF8DD54();
          sub_1AAD12C10(&v269);
          sub_1AAF8DE54();
          sub_1AAEE1600(v270);
          sub_1AAEEBB28(v125 + *(v126 + 52), &v232);
          v135 = v230;
          if (LOBYTE(v235.origin.y))
          {
            sub_1AACBB198(&v232, &v245);
            sub_1AACBB42C(&v245, v246);
            v136 = v204;
            sub_1AAF8DE24();
            sub_1AACB634C(&v245);
          }

          else
          {
            v136 = v204;
            sub_1AAF8DE14();
          }

          v180 = v225;
          v181 = v212;
          (*v224)(v212, v136, v225);
          sub_1AAF8DDA4();
          sub_1AAD12C10(v270);

          (*v223)(v181, v180);
          sub_1AAF2C63C(v220, type metadata accessor for ChartDisplayList.RectangleItem);

          v23 = v226;
          v15 = v227;
          v54 = v135;
          a2 = v228;
          goto LABEL_4;
        }

        sub_1AAF8DE54();
        sub_1AAEE1600(v268);
        sub_1AAEEBB28(v125 + *(v126 + 52), &v232);
        if (LOBYTE(v235.origin.y))
        {
          sub_1AACBB198(&v232, &v245);
          sub_1AACBB42C(&v245, v246);
          v15 = v122;
          sub_1AAF8DE24();
          sub_1AACB634C(&v245);
        }

        else
        {
          v15 = v122;
          sub_1AAF8DE14();
        }

        v190 = v225;
        v23 = v226;
        v191 = v201;
        (*v224)(v201, v15, v225);
        sub_1AAF8DDA4();
        sub_1AAD12C10(v268);
        (*v223)(v191, v190);
        sub_1AAF2C63C(v220, type metadata accessor for ChartDisplayList.RectangleItem);
        v8 = v123;
      }

      else
      {
        if (v66 <= 1)
        {
          if (v66)
          {
            v113 = v8;
            v229 = v64;
            sub_1AAEE2F40((v231 + 1), &v232);
            if (v242)
            {
              v249 = v62;
              x = v235.origin.x;
              y = v235.origin.y;
              width = v235.size.width;
              height = v235.size.height;

              v290.origin.x = x;
              v290.origin.y = y;
              v290.size.width = width;
              v290.size.height = height;
              v291 = CGRectOffset(v290, 40.0, 40.0);
              v118 = v233;
              v119 = v234;
              CGRectOffset(v291, v233, v234);
              sub_1AAF8F014();
              sub_1AAF8DD54();
              sub_1AAD12C10(&v251);
              sub_1AAF8DE54();
              v292.origin.x = x;
              v292.origin.y = y;
              v292.size.width = width;
              v292.size.height = height;
              v293 = CGRectOffset(v292, 40.0, 40.0);
              CGRectOffset(v293, v118, v119);
              sub_1AACBB42C(v236, v237);
              sub_1AAF8EDA4();
              sub_1AAEEBB28(&v238, &v245);
              v120 = v230;
              if (v248)
              {
                sub_1AACBB198(&v245, v243);
                sub_1AACBB42C(v243, v244);
                v121 = v207;
                sub_1AAF8DE24();
                sub_1AACB634C(v243);
              }

              else
              {
                v121 = v207;
                sub_1AAF8DE14();
              }

              v178 = v225;
              v165 = v226;
              v179 = v206;
              (*v224)(v206, v121, v225);
              sub_1AAF8DDA4();
              sub_1AAD12C10(&v252);

              (*v223)(v179, v178);
            }

            else
            {
              sub_1AAF8DE54();
              v298 = CGRectOffset(v235, 40.0, 40.0);
              CGRectOffset(v298, v233, v234);
              sub_1AACBB42C(v236, v237);
              sub_1AAF8EDA4();
              sub_1AAEEBB28(&v238, &v245);
              v165 = v23;
              v120 = v230;
              if (v248)
              {
                sub_1AACBB198(&v245, v243);
                sub_1AACBB42C(v243, v244);
                v166 = v193;
                sub_1AAF8DE24();
                sub_1AACB634C(v243);
              }

              else
              {
                v166 = v193;
                sub_1AAF8DE14();
              }

              v188 = v225;
              v189 = v197;
              (*v224)(v197, v166, v225);
              sub_1AAF8DDA4();
              sub_1AAD12C10(&v253);
              (*v223)(v189, v188);
            }

            sub_1AAEE2F78(&v232);
            v54 = v120;
            v8 = v113;
            a2 = v228;
            v23 = v165;
            v15 = v227;
          }

          else
          {

            sub_1AAF29F9C(v69, a2);

            v54 = v230;
          }

          goto LABEL_4;
        }

        if (v66 != 2)
        {
          if (v66 == 3)
          {
            sub_1AAEE2B64((v231 + 1), &v232);
            if (v242)
            {
              *&v245 = v62;

              sub_1AAEE0BC8();
              sub_1AAF8F014();
              a2 = v228;
              sub_1AAF8DD54();
              sub_1AAD12C10(&v259);
              sub_1AAF2643C(&v245, &v232, v250);
            }

            else
            {
              sub_1AAF2643C(a2, &v232, v250);
            }

            sub_1AAEE2B9C(&v232);
            v54 = v230;
          }

          else
          {
            v229 = v64;
            sub_1AAEE2E10((v231 + 1), &v232);
            if (*(&v239 + 1))
            {
              v249 = v62;

              sub_1AAEE12F4();
              sub_1AAF8F014();
              sub_1AAF8DD54();
              sub_1AAD12C10(&v260);
              sub_1AAF8DE54();
              v105 = sub_1AAF210C8(v238, v239, SLOBYTE(v235.origin.y), &v245);
              v106 = *(*&v235.origin.x + 16);
              MEMORY[0x1EEE9AC00](v105);
              *(&v192 - 2) = &v232;

              v107 = v221;
              v108 = sub_1AADE64C0(sub_1AAF2CFF0, (&v192 - 4), v106);
              v221 = v107;

              v109 = v246;
              v110 = v247;
              sub_1AACB8B34(&v245, v246);
              sub_1AAF214A8(v108, v109, v110, v261);

              sub_1AACB634C(&v245);
              sub_1AAEEBB28(&v235.size, &v245);
              if (v248)
              {
                sub_1AACBB198(&v245, v243);
                sub_1AACBB42C(v243, v244);
                v111 = v202;
                sub_1AAF8DE24();
                sub_1AACB634C(v243);
              }

              else
              {
                v111 = v202;
                sub_1AAF8DE14();
              }

              v169 = v222;
              v170 = v227;
              v171 = v225;
              v172 = v210;
              (*v224)(v210, v111, v225);
              sub_1AAF8DDA4();
              sub_1AAD12C10(v261);

              (*v223)(v172, v171);
            }

            else
            {
              sub_1AAF8DE54();
              v142 = sub_1AAF210C8(v238, v239, SLOBYTE(v235.origin.y), &v245);
              v143 = *(*&v235.origin.x + 16);
              MEMORY[0x1EEE9AC00](v142);
              *(&v192 - 2) = &v232;

              v144 = v221;
              v145 = sub_1AADE64C0(sub_1AAF2C6AC, (&v192 - 4), v143);
              v221 = v144;

              v146 = v246;
              v147 = v247;
              sub_1AACB8B34(&v245, v246);
              sub_1AAF214A8(v145, v146, v147, v262);

              sub_1AACB634C(&v245);
              sub_1AAEEBB28(&v235.size, &v245);
              if (v248)
              {
                sub_1AACBB198(&v245, v243);
                sub_1AACBB42C(v243, v244);
                v148 = v194;
                sub_1AAF8DE24();
                sub_1AACB634C(v243);
              }

              else
              {
                v148 = v194;
                sub_1AAF8DE14();
              }

              v169 = v222;
              v170 = v227;
              v184 = v225;
              v185 = v199;
              (*v224)(v199, v148, v225);
              sub_1AAF8DDA4();
              sub_1AAD12C10(v262);
              (*v223)(v185, v184);
            }

            sub_1AAEE2E48(&v232);
            v8 = v169;
            a2 = v228;
            v15 = v170;
            v54 = v230;
            v23 = v226;
          }

          goto LABEL_4;
        }

        sub_1AAEE2ED8((v231 + 1), &v232);
        v98 = v215;
        if (v242)
        {
          v249 = v62;
          if (v235.size.width >= v235.origin.x)
          {
            v99 = v235.origin.x;
          }

          else
          {
            v99 = v235.size.width;
          }

          if (v235.size.height >= v235.origin.y)
          {
            v100 = v235.origin.y;
          }

          else
          {
            v100 = v235.size.height;
          }

          v101 = vabdd_f64(v235.size.width, v235.origin.x);
          v102 = vabdd_f64(v235.size.height, v235.origin.y);

          v288.origin.x = v99;
          v288.origin.y = v100;
          v288.size.width = v101;
          v288.size.height = v102;
          v289 = CGRectOffset(v288, 40.0, 40.0);
          CGRectOffset(v289, v233, v234);
          sub_1AAF8F014();
          sub_1AAF8DD54();
          sub_1AAD12C10(&v256);
          v103 = sub_1AAF8DE54();
          MEMORY[0x1EEE9AC00](v103);
          *(&v192 - 2) = &v232;
          sub_1AAF8E964();
          v278 = v239;
          v279 = v240;
          v280 = v241;
          sub_1AAF8E854();
          sub_1AAD12C10(&v257);
          sub_1AAEEBB28(v236, &v245);
          if (v248)
          {
            sub_1AACBB198(&v245, v243);
            sub_1AACBB42C(v243, v244);
            v104 = v209;
            v23 = v226;
            sub_1AAF8DE24();
            sub_1AACB634C(v243);
          }

          else
          {
            v104 = v209;
            sub_1AAF8DE14();
          }

          v167 = v225;
          v168 = v208;
          (*v224)(v208, v104, v225);
          sub_1AAF8DDA4();
          sub_1AAD12C10(&v258);

          (*v223)(v168, v167);

          v15 = v227;
        }

        else
        {
          v140 = v227;
          v141 = sub_1AAF8DE54();
          MEMORY[0x1EEE9AC00](v141);
          *(&v192 - 2) = &v232;
          sub_1AAF8E964();
          v281 = v239;
          v282 = v240;
          v283 = v241;
          sub_1AAF8E854();
          sub_1AAD12C10(&v254);
          sub_1AAEEBB28(v236, &v245);
          if (v248)
          {
            sub_1AACBB198(&v245, v243);
            sub_1AACBB42C(v243, v244);
            sub_1AAF8DE24();
            sub_1AACB634C(v243);
          }

          else
          {
            sub_1AAF8DE14();
          }

          v182 = v225;
          v183 = v198;
          (*v224)(v198, v98, v225);
          sub_1AAF8DDA4();
          sub_1AAD12C10(&v255);
          (*v223)(v183, v182);
          v15 = v140;
        }

        sub_1AAEE2F10(&v232);
        v8 = v222;
      }

      a2 = v228;
      v54 = v230;
LABEL_4:
      sub_1AAF8DE54();
      sub_1AAF8DEE4();
      sub_1AAF8DEB4();

      --v53;
    }

    while (v53);
  }
}

uint64_t sub_1AAF2BC28(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v27 = a1;
  v28 = a3;
  v26 = sub_1AAF8DB24();
  v8 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1AAD129C8();
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1AAF8DC34();
  (*(*(v15 - 8) + 16))(v14, a5, v15);
  v16 = *(v12 + 44);
  sub_1AAF2CBF0(&qword_1ED9B5580, MEMORY[0x1E697E3C0]);
  sub_1AAF8FB24();
  sub_1AAF8FBA4();
  if (*&v14[v16] != v30[0])
  {
    v17 = a2;
    v18 = (v8 + 16);
    v19 = (v8 + 8);
    v20 = v17 & 1;
    v25 = a4 & 1;
    do
    {
      v21 = sub_1AAF8FC84();
      v22 = v26;
      (*v18)(v10);
      v21(v30, 0);
      sub_1AAF8FBB4();
      sub_1AAF8F1F4();
      LOBYTE(v30[0]) = v20;
      v29 = v25;
      sub_1AAF8DB04();
      (*v19)(v10, v22);
      sub_1AAF8FBA4();
    }

    while (*&v14[v16] != v30[0]);
  }

  return sub_1AAF2C63C(v14, sub_1AAD129C8);
}

uint64_t sub_1AAF2BF04(uint64_t a1, void (*a2)(void *__return_ptr, char *), uint64_t a3)
{
  v35 = a2;
  v36 = a3;
  sub_1AAF26348(0, &qword_1ED9AED78, 255, type metadata accessor for AGChartRendererContent, type metadata accessor for WeightedSum.Element);
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v31 = (&v27 - v5);
  sub_1AAF2C744();
  result = sub_1AAF90384();
  v7 = result;
  v8 = 0;
  v34 = a1;
  v11 = *(a1 + 64);
  v10 = a1 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v28 = v10;
  v29 = result + 64;
  v30 = result;
  if (v14)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v37 = (v14 - 1) & v14;
LABEL_10:
      v19 = v16 | (v8 << 6);
      v20 = *(v34 + 56);
      v38 = *(*(v34 + 48) + 8 * v19);
      v21 = v31;
      sub_1AAF2C7E0(v20 + *(v32 + 72) * v19, v31, &qword_1ED9AED78, type metadata accessor for AGChartRendererContent, type metadata accessor for WeightedSum.Element);
      v22 = *v21;
      v35(v39, v21 + *(v33 + 28));
      sub_1AAF2C9D8(v21, &qword_1ED9AED78, type metadata accessor for AGChartRendererContent, type metadata accessor for WeightedSum.Element);
      v7 = v30;
      *(v29 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(v7[6] + 8 * v19) = v38;
      v23 = (v7[7] + 544 * v19);
      *v23 = v22;
      result = memcpy(v23 + 1, v39, 0x218uLL);
      v24 = v7[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v7[2] = v26;
      v14 = v37;
      if (!v37)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        return v7;
      }

      v18 = *(v28 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AAF2C1C0(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AAF2CBA0(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AAF2C224()
{
  result = qword_1ED9AFFA0[0];
  if (!qword_1ED9AFFA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9AFFA0);
  }

  return result;
}

void sub_1AAF2C278()
{
  if (!qword_1ED9ADA00)
  {
    sub_1AAF2C2DC();
    sub_1AAF2C484();
    v0 = sub_1AAF8EEB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9ADA00);
    }
  }
}

void sub_1AAF2C2DC()
{
  if (!qword_1ED9AD9D0)
  {
    sub_1AAF2CBA0(255, &qword_1ED9AD958, &type metadata for ChartDisplayList.ViewItem, MEMORY[0x1E69E62F8]);
    sub_1AAF2C3B8();
    sub_1AAF2C1C0(&unk_1ED9AEFB0, &qword_1ED9AD958, &type metadata for ChartDisplayList.ViewItem);
    sub_1AAD80D58();
    v0 = sub_1AAF8EFE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AD9D0);
    }
  }
}

void sub_1AAF2C3B8()
{
  if (!qword_1ED9ADA10)
  {
    sub_1AAED9FD0(255, &qword_1ED9B1720, MEMORY[0x1E6981910], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    sub_1AAD267CC();
    sub_1AAD80D58();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1ED9ADA10);
    }
  }
}

unint64_t sub_1AAF2C484()
{
  result = qword_1ED9AD9D8;
  if (!qword_1ED9AD9D8)
  {
    sub_1AAF2C2DC();
    sub_1AAED9FD0(255, &qword_1ED9B1720, MEMORY[0x1E6981910], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    sub_1AAD267CC();
    sub_1AAD80D58();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AD9D8);
  }

  return result;
}

unint64_t sub_1AAF2C5E4()
{
  result = qword_1ED9B0028[0];
  if (!qword_1ED9B0028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9B0028);
  }

  return result;
}

uint64_t sub_1AAF2C63C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AAF2C744()
{
  if (!qword_1ED9AD778)
  {
    sub_1AAF26348(255, &qword_1ED9AED80, 255, sub_1AADAC01C, type metadata accessor for WeightedSum.Element);
    v0 = sub_1AAF903B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AD778);
    }
  }
}

uint64_t sub_1AAF2C7E0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1AAF26348(0, a3, 255, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AAF2C884(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectedChartContent.Primitive(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAF2C8E8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AAF2CBA0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AAF2C968(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AAF2CBA0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AAF2C9D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1AAF26348(0, a2, 255, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AAF2CA94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_1AAF2CAAC(result, a2, a3, a4, a5, a6, a7 & 1);
  }

  return result;
}

uint64_t sub_1AAF2CAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {

    return sub_1AAD0E508(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_1AAF2CB38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1AAF2CBA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AAF2CBF0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AAF2CC48()
{
  result = qword_1ED9AF530;
  if (!qword_1ED9AF530)
  {
    sub_1AAF2CCF8();
    sub_1AAF2CBF0(&qword_1ED9AF538, sub_1AAF2CDA4);
    sub_1AAF2CF24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AF530);
  }

  return result;
}

void sub_1AAF2CCF8()
{
  if (!qword_1ED9ADB28)
  {
    sub_1AAF2CDA4();
    sub_1AAF2CE54();
    sub_1AAF2CBF0(&qword_1ED9ADB58, sub_1AAF2CDA4);
    v0 = sub_1AAF8DBA4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9ADB28);
    }
  }
}

void sub_1AAF2CDA4()
{
  if (!qword_1ED9ADB50)
  {
    sub_1AAF2CE00();
    v0 = sub_1AAF8D964();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9ADB50);
    }
  }
}

unint64_t sub_1AAF2CE00()
{
  result = qword_1ED9AEC10;
  if (!qword_1ED9AEC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9AEC10);
  }

  return result;
}

void sub_1AAF2CE54()
{
  if (!qword_1ED9AD9C8)
  {
    sub_1AAF2CBA0(255, &qword_1ED9AD950, &type metadata for ChartDisplayLayer, MEMORY[0x1E69E62F8]);
    sub_1AAF2C1C0(&qword_1ED9AEFA8, &qword_1ED9AD950, &type metadata for ChartDisplayLayer);
    v0 = sub_1AAF8EFE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9AD9C8);
    }
  }
}

unint64_t sub_1AAF2CF24()
{
  result = qword_1ED9AEFD0[0];
  if (!qword_1ED9AEFD0[0])
  {
    sub_1AAF2CE54();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9AEFD0);
  }

  return result;
}

unint64_t sub_1AAF2CF98()
{
  result = qword_1ED9B0320[0];
  if (!qword_1ED9B0320[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9B0320);
  }

  return result;
}

uint64_t sub_1AAF2D088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v15 - v11;
  v10();
  sub_1AACE0800(v9, a3, a4);
  v13 = *(v6 + 8);
  v13(v9, a3);
  sub_1AACE0800(v12, a3, a4);
  return (v13)(v12, a3);
}

uint64_t sub_1AAF2D1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE2370](a1, a2, a3, WitnessTable);
}

uint64_t sub_1AAF2D248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE2378](a1, a2, a3, WitnessTable);
}

uint64_t sub_1AAF2D2F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 24);
  sub_1AACE0800(v1, v2, v7);
  sub_1AACE0800(v6, v2, v7);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1AAF2D3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE1CE8](a1, a2, a3, WitnessTable);
}

uint64_t sub_1AAF2D454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE1CF0](a1, a2, a3, WitnessTable);
}

uint64_t sub_1AAF2D640(double *a1)
{
  sub_1AAF2E420(0, &qword_1ED9B2D50, sub_1AAF2E1D4, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - v4;
  v7 = a1[1];
  v6 = a1[2];
  v9 = a1[3];
  v8 = a1[4];
  v23.origin.x = v7;
  v23.origin.y = v6;
  v23.size.width = v9;
  v23.size.height = v8;
  if (CGRectGetWidth(v23) <= 0.0)
  {
    v24.origin.x = v7;
    v24.origin.y = v6;
    v24.size.width = v9;
    v24.size.height = v8;
    v7 = CGRectGetMidX(v24) + -0.5;
    v9 = 1.0;
  }

  v25.origin.x = v7;
  v25.origin.y = v6;
  v25.size.width = v9;
  v25.size.height = v8;
  if (CGRectGetHeight(v25) <= 0.0)
  {
    v26.origin.x = v7;
    v26.origin.y = v6;
    v26.size.width = v9;
    v26.size.height = v8;
    CGRectGetMidY(v26);
  }

  sub_1AAF8E944();
  v10 = v22;
  sub_1AACFDAA8();
  v12 = *(v11 + 36);
  v13 = *(v3 + 36);
  v14 = sub_1AAF8E734();
  v15 = *(*(v14 - 8) + 16);
  v18 = v21;
  v19 = v20;
  v15(&v5[v13], a1 + v12, v14);
  v16 = v18;
  *v5 = v19;
  *(v5 + 1) = v16;
  v5[32] = v10;
  v5[33] = 1;
  sub_1AAF8DF64();
  return sub_1AAF2E334(v5);
}

uint64_t sub_1AAF2D844@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AAF2E420(0, &qword_1ED9B2CF0, sub_1AAD595C0, sub_1AAD597A8, MEMORY[0x1E697F948]);
  v50 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v43 - v7;
  v8 = sub_1AAF8E644();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD597A8();
  v52 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AAD596F4();
  v49 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AAD595C0();
  v51 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v47 = v22;
    v48 = v20;
    v44 = a2;
    *v14 = sub_1AAF8F124();
    v14[1] = v23;
    sub_1AAED9C3C();
    v55 = a1;
    swift_getKeyPath();
    v43 = v8;
    sub_1AACFE60C(0);
    v45 = v16;
    sub_1AAF2E420(0, &qword_1ED9B2D50, sub_1AAF2E1D4, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1AAF2E22C(&qword_1ED9B2A38, 255, sub_1AACFE60C);
    v46 = a3;
    sub_1AAD59ABC();

    sub_1AAF8EFC4();
    sub_1AAF8E634();
    v24 = sub_1AAF2E22C(&qword_1ED9B2B38, 255, sub_1AAD597A8);
    v25 = v52;
    sub_1AAF8EB94();
    (*(v9 + 8))(v11, v43);
    sub_1AAF2E2D8(v14);
    v26 = type metadata accessor for ChartAXAudiograph();
    v27 = swift_allocObject();
    v28 = v44;
    *(v27 + 16) = v44;
    v54 = v27;
    v44 = v28;
    v55 = v25;
    v56 = v24;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v31 = sub_1AAF2E22C(qword_1ED9B6110, v30, type metadata accessor for ChartAXAudiograph);
    v32 = v47;
    v33 = v49;
    sub_1AAF8EBD4();

    (*(v45 + 8))(v18, v33);
    v34 = v48;
    v35 = v51;
    (*(v48 + 16))(v53, v32, v51);
    swift_storeEnumTagMultiPayload();
    v55 = v33;
    v56 = v26;
    v57 = OpaqueTypeConformance2;
    v58 = v31;
    swift_getOpaqueTypeConformance2();
    sub_1AAF8E374();

    return (*(v34 + 8))(v32, v35);
  }

  else
  {
    *v14 = sub_1AAF8F124();
    v14[1] = v37;
    sub_1AAED9C3C();
    v55 = a1;
    swift_getKeyPath();
    sub_1AACFE60C(0);
    sub_1AAF2E420(0, &qword_1ED9B2D50, sub_1AAF2E1D4, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
    sub_1AAF2E22C(&qword_1ED9B2A38, 255, sub_1AACFE60C);
    sub_1AAD59ABC();

    sub_1AAF8EFC4();
    sub_1AAF2E274(v14, v53);
    swift_storeEnumTagMultiPayload();
    v38 = type metadata accessor for ChartAXAudiograph();
    v39 = sub_1AAF2E22C(&qword_1ED9B2B38, 255, sub_1AAD597A8);
    v55 = v52;
    v56 = v39;
    v40 = swift_getOpaqueTypeConformance2();
    v42 = sub_1AAF2E22C(qword_1ED9B6110, v41, type metadata accessor for ChartAXAudiograph);
    v55 = v49;
    v56 = v38;
    v57 = v40;
    v58 = v42;
    swift_getOpaqueTypeConformance2();
    sub_1AAF8E374();
    return sub_1AAF2E2D8(v14);
  }
}

void sub_1AAF2E03C(void *a1)
{
  v3 = *(v1 + 16);
  sub_1AAF8FD94();
  sub_1AAF8FDA4();
  v4 = [v3 yAxis];
  [a1 setYAxis_];

  v5 = [v3 series];
  if (!v5)
  {
    sub_1AAF2E3D4();
    sub_1AAF8F834();
    v6 = sub_1AAF8F824();

    v5 = v6;
  }

  v7 = v5;
  [a1 setSeries_];
}

uint64_t sub_1AAF2E12C()
{

  return swift_deallocClassInstance();
}

void sub_1AAF2E1D4()
{
  if (!qword_1ED9B2DA8)
  {
    v0 = sub_1AAF8DF74();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2DA8);
    }
  }
}

uint64_t sub_1AAF2E22C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AAF2E274(uint64_t a1, uint64_t a2)
{
  sub_1AAD597A8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AAF2E2D8(uint64_t a1)
{
  sub_1AAD597A8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AAF2E334(uint64_t a1)
{
  sub_1AAF2E420(0, &qword_1ED9B2D50, sub_1AAF2E1D4, MEMORY[0x1E697CBE8], MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1AAF2E3D4()
{
  result = qword_1ED9B0688;
  if (!qword_1ED9B0688)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED9B0688);
  }

  return result;
}

void sub_1AAF2E420(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1AAF2E4A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1AAF8DE34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACAD248(a1, v19);
  if (v20)
  {
    sub_1AACBB198(v19, v17);
    sub_1AACAEF68(v17, v16);
    sub_1AAD45E1C(0, &qword_1ED9B2778);
    if (swift_dynamicCast())
    {
      sub_1AAF8DE14();
    }

    else if (*(a1 + 41) == 1 || (*(a2 + 32) & 1) == 0)
    {
      sub_1AACBB42C(v17, v18);
      v11 = sub_1AAF8E354();
      v15[1] = v15;
      v12 = *(v11 - 8);
      MEMORY[0x1EEE9AC00](v11);
      v14 = v15 - v13;
      sub_1AAF8D864();
      swift_getWitnessTable();
      sub_1AAF8DE24();
      (*(v12 + 8))(v14, v11);
    }

    else
    {
      sub_1AACBB42C(v17, v18);
      sub_1AAF8DE24();
    }

    (*(v7 + 32))(a3, v9, v6);
    return sub_1AACB634C(v17);
  }

  else
  {
    sub_1AAF8DE14();
  }
}

unint64_t sub_1AAF2E844()
{
  v1 = v0;
  v2 = sub_1AAF8F154();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x1E6981DF0])
  {
    v7 = 0;
    v8 = 0;
  }

  else if (v6 == *MEMORY[0x1E6981E10])
  {
    v8 = 0;
    v7 = 1;
  }

  else if (v6 == *MEMORY[0x1E6981DF8])
  {
    v8 = 0;
    v7 = 2;
  }

  else if (v6 == *MEMORY[0x1E6981E08])
  {
    v8 = 0;
    v7 = 3;
  }

  else if (v6 == *MEMORY[0x1E6981DE8])
  {
    v8 = 0;
    v7 = 4;
  }

  else if (v6 == *MEMORY[0x1E6981E00])
  {
    v8 = 0;
    v7 = 5;
  }

  else if (v6 == *MEMORY[0x1E6981D88])
  {
    v8 = 0;
    v7 = 6;
  }

  else if (v6 == *MEMORY[0x1E6981E18])
  {
    v8 = 0;
    v7 = 7;
  }

  else if (v6 == *MEMORY[0x1E6981E30])
  {
    v8 = 0;
    v7 = 8;
  }

  else if (v6 == *MEMORY[0x1E6981E28])
  {
    v8 = 0;
    v7 = 9;
  }

  else if (v6 == *MEMORY[0x1E6981D90])
  {
    v8 = 0;
    v7 = 10;
  }

  else if (v6 == *MEMORY[0x1E6981E20])
  {
    v8 = 0;
    v7 = 11;
  }

  else if (v6 == *MEMORY[0x1E6981DD8])
  {
    v8 = 0;
    v7 = 12;
  }

  else if (v6 == *MEMORY[0x1E6981DA8])
  {
    v8 = 0;
    v7 = 13;
  }

  else if (v6 == *MEMORY[0x1E6981DE0])
  {
    v8 = 0;
    v7 = 14;
  }

  else if (v6 == *MEMORY[0x1E6981D98])
  {
    v8 = 0;
    v7 = 15;
  }

  else if (v6 == *MEMORY[0x1E6981DB0])
  {
    v8 = 0;
    v7 = 20;
  }

  else if (v6 == *MEMORY[0x1E6981DD0])
  {
    v8 = 0;
    v7 = 21;
  }

  else if (v6 == *MEMORY[0x1E6981DC0])
  {
    v8 = 0;
    v7 = 23;
  }

  else if (v6 == *MEMORY[0x1E6981DA0])
  {
    v8 = 0;
    v7 = 26;
  }

  else if (v6 == *MEMORY[0x1E6981DB8])
  {
    v8 = 0;
    v7 = 27;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    if (qword_1ED9B59F0 != -1)
    {
      swift_once();
    }

    v9 = qword_1ED9C36C8;
    sub_1AAF8FD04();
    sub_1AAD0D380(0, &qword_1ED9AEE70, &qword_1ED9AEE60, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1AAF92AB0;
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1AAF900D4();
    MEMORY[0x1AC5982F0](0xD000000000000013, 0x80000001AAFD00D0);
    sub_1AAF90284();
    v11 = v14;
    v12 = v15;
    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 64) = sub_1AAD6E644();
    *(v10 + 32) = v11;
    *(v10 + 40) = v12;
    sub_1AAF8D7B4();

    v7 = 0;
    v8 = 1;
  }

  return v7 | (v8 << 32);
}

uint64_t sub_1AAF2ED3C(uint64_t *a1, uint64_t a2, char **a3)
{
  v6 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_beginAccess();
  v10 = *a1;
  if (*(*a1 + 16))
  {
    sub_1AAD115C0(a2, v8, type metadata accessor for SgGroup);

    *(v8 + 1) = v10;
    v11 = swift_allocBox();
    sub_1AAD115C0(v8, v12, type metadata accessor for SgGroup);
    swift_beginAccess();
    v13 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1AACE3508(0, *(v13 + 2) + 1, 1, v13);
      *a3 = v13;
    }

    v16 = *(v13 + 2);
    v15 = *(v13 + 3);
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1AACE3508((v15 > 1), v16 + 1, 1, v13);
      *a3 = v13;
    }

    *(v13 + 2) = v16 + 1;
    *&v13[8 * v16 + 32] = v11;
    swift_endAccess();
    swift_beginAccess();
    *a1 = MEMORY[0x1E69E7CC0];

    return sub_1AAD0BF4C(v8, type metadata accessor for SgGroup);
  }

  return result;
}

uint64_t sub_1AAF2EF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AAD0C9E4();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AAF8DF74();
  MEMORY[0x1EEE9AC00](v13);
  swift_beginAccess();
  (*(v10 + 16))(v12, a2, v9);
  v14 = sub_1AAD0ACD8(&qword_1ED9B5510, sub_1AAD0C9E4);
  MEMORY[0x1AC597820](a1, v9, a3, v14);
  (*(v10 + 8))(v12, v9);
  v16[1] = v14;
  v16[2] = a4;
  swift_getWitnessTable();
  return sub_1AAF8EF44();
}

uint64_t sub_1AAF2F10C(CGRect *a1, CGRect *a2)
{
  if (!CGRectEqualToRect(*a1, *a2))
  {
    return 0;
  }

  if (a1[1].origin.x != a2[1].origin.x || a1[1].origin.y != a2[1].origin.y)
  {
    return 0;
  }

  return sub_1AAF8DF04();
}

void (*sub_1AAF2F198(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1AAF8D804();
  return sub_1AAE34258;
}

uint64_t sub_1AAF2F220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1AAD0ACD8(&qword_1ED9B6188, type metadata accessor for SgCanvasRenderer);

  return MEMORY[0x1EEDE3690](a1, a2, a3, v8, a4);
}

uint64_t (*sub_1AAF2F2BC(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_1AAF2F30C;
}

uint64_t sub_1AAF2F30C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    *v2 = v3;
  }

  else
  {

    *v2 = v3;
  }

  return result;
}