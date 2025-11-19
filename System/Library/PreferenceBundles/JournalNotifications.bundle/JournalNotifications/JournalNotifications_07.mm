uint64_t sub_A211C(void (*a1)(_OWORD *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a2;
  v4 = _s4YearVMa(0);
  v30 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3CB0(&qword_109158);
  result = sub_C60F4();
  v7 = result;
  v8 = 0;
  v33 = a3;
  v11 = *(a3 + 64);
  v10 = a3 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v28 = result + 64;
  if ((v13 & v9) != 0)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_10:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v33 + 48) + 8 * v19);
      v21 = v29;
      sub_9A3FC(*(v33 + 56) + *(v30 + 72) * v19, v29, _s4YearVMa);
      v22 = v35;
      v31(v34, v21);
      result = sub_A19B0(v21, _s4YearVMa);
      v35 = v22;
      if (v22)
      {
        break;
      }

      *(v28 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(v7[6] + 8 * v19) = v20;
      v23 = (v7[7] + 32 * v19);
      v24 = v34[1];
      *v23 = v34[0];
      v23[1] = v24;
      v25 = v7[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_17;
      }

      v7[2] = v27;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    return v7;
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

      v18 = *(v10 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_A2368(uint64_t a1)
{
  v227 = sub_3CB0(&qword_109080);
  v2 = __chkstk_darwin(v227);
  v226 = &v214 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v225 = &v214 - v4;
  v5 = sub_3CB0(&qword_109088);
  v6 = __chkstk_darwin(v5 - 8);
  v252 = (&v214 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v231 = &v214 - v8;
  v9 = sub_3CB0(&qword_109090);
  v10 = __chkstk_darwin(v9 - 8);
  v232 = &v214 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v214 - v12;
  v267 = sub_3CB0(&qword_109070);
  v215 = *(v267 - 8);
  v14 = __chkstk_darwin(v267 - 8);
  v222 = &v214 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v214 - v17;
  __chkstk_darwin(v16);
  v230 = &v214 - v19;
  v20 = sub_3CB0(&qword_109098);
  v21 = __chkstk_darwin(v20 - 8);
  v223 = &v214 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v256 = &v214 - v24;
  v25 = __chkstk_darwin(v23);
  v260 = &v214 - v26;
  __chkstk_darwin(v25);
  v259 = &v214 - v27;
  v28 = sub_3CB0(&qword_104800);
  v29 = __chkstk_darwin(v28 - 8);
  v251 = (&v214 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v29);
  v240 = &v214 - v31;
  v266 = sub_C3CB4();
  v257 = *(v266 - 8);
  v32 = __chkstk_darwin(v266);
  v229 = &v214 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v228 = &v214 - v35;
  __chkstk_darwin(v34);
  v262 = &v214 - v36;
  v37 = sub_3CB0(&qword_108F30);
  __chkstk_darwin(v37);
  v265 = (&v214 - v38);
  v39 = sub_3CB0(&qword_109060);
  __chkstk_darwin(v39);
  v41 = &v214 - v40;
  v264 = sub_3CB0(&qword_1090A0);
  __chkstk_darwin(v264);
  v43 = &v214 - v42;
  v44 = a1;
  v45 = sub_88018();
  v46 = v45;
  v244 = v13;
  v268 = v39;
  if (v45)
  {
    if (v45 <= 0)
    {
      v55 = _swiftEmptyArrayStorage;
    }

    else
    {
      v47 = v41;
      sub_3CB0(&qword_106620);
      v48 = v46;
      v49 = *(v257 + 72);
      v50 = (*(v257 + 80) + 32) & ~*(v257 + 80);
      v51 = v48;
      v52 = swift_allocObject();
      result = j__malloc_size(v52);
      if (!v49)
      {
        goto LABEL_116;
      }

      if (result - v50 == 0x8000000000000000 && v49 == -1)
      {
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
        return result;
      }

      v54 = 2 * ((result - v50) / v49);
      v55 = v52;
      v46 = v51;
      v52[2] = v51;
      v52[3] = v54;
      v41 = v47;
    }
  }

  else
  {
    v55 = _swiftEmptyArrayStorage;
  }

  v56 = *(v257 + 80);
  v263 = *(v55 + 3);

  sub_B954(v44, v41, &qword_109060);
  v57 = v265;
  sub_E9D4(v41, v265, &qword_108F30);
  sub_B954(v57, v43, &qword_108F30);
  v58 = &v43[*(sub_3CB0(&qword_109078) + 36)];
  v216 = v37;
  v59 = *(v37 + 32);
  v60 = v43;
  v61 = *(v57 + v59);
  v62 = sub_C5EA4();
  v63 = *(v61 + 36);
  result = sub_C060(v57, &qword_108F30);
  *v58 = v62;
  *(v58 + 1) = v63;
  v241 = v58;
  v58[16] = 0;
  v64 = &v41[*(v268 + 11)];
  v65 = *v64;
  v66 = *(v64 + 1);
  v67 = *(v264 + 44);
  v245 = v60;
  v68 = (v60 + v67);
  v243 = v65;
  *v68 = v65;
  v68[1] = v66;
  v242 = v66;
  if (v46 < 0)
  {
    goto LABEL_114;
  }

  v69 = v62;
  v224 = v56;
  v265 = v55;
  v233 = (v56 + 32) & ~v56;
  v70 = v55 + v233;
  v239 = v18;
  if (v46)
  {
    v71 = 0;
    v72 = *(v245 + *(v216 + 32));
    v250 = v72 + 64;
    v73 = v257;
    v254 = (v257 + 32);
    v218 = (v257 + 8);
    v248 = v215 + 48;
    v249 = (v215 + 56);
    v247 = v257 + 56;
    v246 = (v257 + 48);
    v238 = v46;
    v263 = (v263 >> 1) - v46;
    v217 = v72 + 72;
    v74 = v240;
    v75 = v266;
    v76 = v223;
    v255 = v72;
    while (1)
    {
      v77 = *(v72 + 36);
      if (v77 != v63)
      {
        goto LABEL_96;
      }

      v78 = 1 << *(v72 + 32);
      v268 = v70;
      v258 = v71;
      if (v69 == v78)
      {
        v79 = v69;
        v80 = 1;
        v264 = v63;
      }

      else
      {
        if ((v69 & 0x8000000000000000) != 0 || v69 >= v78)
        {
          goto LABEL_104;
        }

        if ((*(v250 + 8 * (v69 >> 6)) & (1 << v69)) == 0)
        {
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
          goto LABEL_117;
        }

        v234 = 1 << v69;
        v235 = v69 >> 6;
        v264 = v77;
        v81 = *(v72 + 56);
        v82 = *(*(v72 + 48) + 8 * v69);
        v261 = v69;
        v83 = (v81 + 32 * v69);
        v84 = v83[1];
        v237 = *v83;
        v236 = v84;
        v86 = v83[2];
        v85 = v83[3];
        v87 = v245;
        v88 = v252;
        sub_B954(v245, v252, &qword_109088);
        v89 = type metadata accessor for CalendarBinningUnit(0);
        v90 = (*(*(v89 - 8) + 48))(v88, 1, v89);
        v253 = v85;
        if (v90 == 1)
        {
          v221 = v86;

          sub_C060(v252, &qword_109088);
          v91 = sub_3CB0(&qword_108F48);
          v92 = *(v91 - 8);
          (*(v92 + 56))(v232, 1, 1, v91);
          v93 = v228;
          sub_C39A4();
          v94 = v229;
          sub_C39A4();
          sub_9A060(&qword_108F40, &type metadata accessor for Date);
          v75 = v266;
          result = sub_C5354();
          if ((result & 1) == 0)
          {
            goto LABEL_113;
          }

          v95 = *v254;
          v96 = v225;
          (*v254)(v225, v93, v75);
          v97 = v227;
          (v95)(v96 + *(v227 + 48), v94, v75);
          v98 = v226;
          sub_B954(v96, v226, &qword_109080);
          v220 = v92;
          v99 = *(v97 + 48);
          v100 = v222;
          (v95)(v222, v98, v75);
          v219 = v91;
          v101 = *v218;
          v102 = v98 + v99;
          v72 = v255;
          (*v218)(v102, v75);
          sub_E9D4(v96, v98, &qword_109080);
          v103 = *(v97 + 48);
          v76 = v223;
          v104 = v219;
          (v95)(v100 + *(v219 + 36), v98 + v103, v75);
          v73 = v257;
          v101(v98, v75);
          v18 = v239;
          v105 = v232;
          v201 = (*(v220 + 48))(v232, 1, v104) == 1;
          v74 = v240;
          v106 = v105;
          v107 = v221;
          if (!v201)
          {
            sub_C060(v106, &qword_109090);
          }
        }

        else
        {
          result = type metadata accessor for UniformDateBins(0);
          v108 = *(v87 + *(result + 20));
          v109 = __OFADD__(v108, v82);
          v110 = v108 + v82;
          if (v109)
          {
            goto LABEL_112;
          }

          v107 = v86;

          v111 = v232;
          v112 = v110;
          v113 = v252;
          sub_ABA44(v112, v232);
          sub_A19B0(v113, type metadata accessor for CalendarBinningUnit);
          v114 = sub_3CB0(&qword_108F48);
          (*(*(v114 - 8) + 56))(v111, 0, 1, v114);
          v115 = v111;
          v100 = v222;
          sub_E9D4(v115, v222, &qword_108F48);
          v75 = v266;
          v73 = v257;
          v76 = v223;
        }

        sub_E9D4(v100, v18, &qword_108F48);
        v116 = &v18[*(v267 + 48)];
        v117 = v236;
        *v116 = v237;
        *(v116 + 1) = v117;
        v118 = v253;
        *(v116 + 2) = v107;
        *(v116 + 3) = v118;
        result = sub_E9D4(v18, v256, &qword_109070);
        v119 = 1 << *(v72 + 32);
        if (v261 >= v119)
        {
          goto LABEL_106;
        }

        v120 = *(v250 + 8 * v235);
        if ((v120 & v234) == 0)
        {
          goto LABEL_107;
        }

        v121 = v264;
        if (*(v72 + 36) != v264)
        {
          goto LABEL_108;
        }

        v122 = v120 & (-2 << (v261 & 0x3F));
        if (v122)
        {
          v119 = __clz(__rbit64(v122)) | v261 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v123 = v235 << 6;
          v124 = v235 + 1;
          v125 = (v217 + 8 * v235);
          while (v124 < (v119 + 63) >> 6)
          {
            v127 = *v125++;
            v126 = v127;
            v123 += 64;
            ++v124;
            if (v127)
            {
              v119 = __clz(__rbit64(v126)) + v123;
              break;
            }
          }
        }

        v80 = 0;
        v128 = v241;
        *v241 = v119;
        v128[1] = v121;
        v79 = v119;
        *(v128 + 16) = 0;
      }

      v129 = 1;
      v130 = v256;
      v131 = v267;
      (*v249)(v256, v80, 1, v267);
      sub_E9D4(v130, v76, &qword_109098);
      v132 = (*v248)(v76, 1, v131);
      v133 = v251;
      if (v132 != 1)
      {
        sub_E9D4(v76, v18, &qword_109070);
        v243(v18);
        v75 = v266;
        sub_C060(v18, &qword_109070);
        v129 = 0;
      }

      (*v247)(v133, v129, 1, v75);
      result = (*v246)(v133, 1, v75);
      if (result == 1)
      {
        goto LABEL_118;
      }

      v134 = v258 + 1;
      v135 = v268;
      result = (*(v73 + 32))(v268, v133, v75);
      v70 = &v135[*(v73 + 72)];
      v63 = v264;
      v201 = v134 == v238;
      v69 = v79;
      v71 = v134;
      v72 = v255;
      if (v201)
      {
        v268 = v70;
        LODWORD(v63) = v264;
        goto LABEL_42;
      }
    }
  }

  v268 = v55 + v233;
  v263 >>= 1;
  v74 = v240;
  v73 = v257;
LABEL_42:
  v136 = *(v245 + *(v216 + 32));
  v137 = *(v136 + 36);
  if (v137 == v63)
  {
    v255 = v136 + 64;
    v264 = v73 + 32;
    v235 = v73 + 8;
    v253 = (v215 + 48);
    v254 = (v215 + 56);
    v251 = (v73 + 48);
    v252 = (v73 + 56);
    v234 = v136 + 72;
    v258 = v136;
    do
    {
      v138 = 1 << *(v136 + 32);
      if (v69 == v138)
      {
        v139 = v69;
      }

      else
      {
        if ((v69 & 0x8000000000000000) != 0 || v69 >= v138)
        {
          goto LABEL_97;
        }

        if ((*(v255 + 8 * (v69 >> 6)) & (1 << v69)) == 0)
        {
          goto LABEL_98;
        }

        v140 = v74;
        v141 = v18;
        v247 = 1 << v69;
        v248 = v69 >> 6;
        v246 = v137;
        v142 = *(v136 + 56);
        v143 = *(*(v136 + 48) + 8 * v69);
        v261 = v69;
        v144 = (v142 + 32 * v69);
        v145 = *v144;
        v249 = v144[1];
        v250 = v145;
        v147 = v144[2];
        v146 = v144[3];
        v148 = v245;
        v149 = v231;
        sub_B954(v245, v231, &qword_109088);
        v150 = type metadata accessor for CalendarBinningUnit(0);
        v151 = (*(*(v150 - 8) + 48))(v149, 1, v150);
        v256 = v146;
        if (v151 == 1)
        {
          v238 = v147;

          sub_C060(v149, &qword_109088);
          v152 = sub_3CB0(&qword_108F48);
          v153 = *(v152 - 8);
          (*(v153 + 56))(v244, 1, 1, v152);
          v154 = v228;
          sub_C39A4();
          v155 = v229;
          sub_C39A4();
          sub_9A060(&qword_108F40, &type metadata accessor for Date);
          v156 = v266;
          result = sub_C5354();
          if ((result & 1) == 0)
          {
            goto LABEL_110;
          }

          v157 = *v264;
          v158 = v225;
          (*v264)(v225, v154, v156);
          v159 = v227;
          v157(v158 + *(v227 + 48), v155, v156);
          v160 = v226;
          sub_B954(v158, v226, &qword_109080);
          v237 = v152;
          v236 = *(v159 + 48);
          v161 = v230;
          v157(v230, v160, v156);
          v162 = v153;
          v163 = *v235;
          (*v235)(v160 + v236, v156);
          v164 = v158;
          v165 = v161;
          v73 = v257;
          sub_E9D4(v164, v160, &qword_109080);
          v166 = *(v159 + 48);
          v167 = v237;
          v157(v165 + *(v237 + 36), (v160 + v166), v156);
          v163(v160, v156);
          v136 = v258;
          v168 = (*(v162 + 48))(v244, 1, v167);
          v18 = v239;
          v74 = v240;
          v169 = v238;
          if (v168 != 1)
          {
            sub_C060(v244, &qword_109090);
          }
        }

        else
        {
          result = type metadata accessor for UniformDateBins(0);
          v170 = *(v148 + *(result + 20));
          v109 = __OFADD__(v170, v143);
          v171 = v170 + v143;
          if (v109)
          {
            goto LABEL_109;
          }

          v169 = v147;

          v172 = v244;
          sub_ABA44(v171, v244);
          sub_A19B0(v149, type metadata accessor for CalendarBinningUnit);
          v173 = sub_3CB0(&qword_108F48);
          (*(*(v173 - 8) + 56))(v172, 0, 1, v173);
          v165 = v230;
          sub_E9D4(v172, v230, &qword_108F48);
          v18 = v141;
          v73 = v257;
          v74 = v140;
        }

        sub_E9D4(v165, v18, &qword_108F48);
        v174 = &v18[*(v267 + 48)];
        v175 = v249;
        *v174 = v250;
        *(v174 + 1) = v175;
        v176 = v256;
        *(v174 + 2) = v169;
        *(v174 + 3) = v176;
        result = sub_E9D4(v18, v259, &qword_109070);
        v139 = 1 << *(v136 + 32);
        if (v261 >= v139)
        {
          goto LABEL_99;
        }

        v177 = *(v255 + 8 * v248);
        if ((v177 & v247) == 0)
        {
          goto LABEL_100;
        }

        v63 = v246;
        if (*(v136 + 36) != v246)
        {
          goto LABEL_101;
        }

        v178 = v177 & (-2 << (v261 & 0x3F));
        if (v178)
        {
          v139 = __clz(__rbit64(v178)) | v261 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v179 = v248 << 6;
          v180 = v248 + 1;
          v181 = (v234 + 8 * v248);
          while (v180 < (v139 + 63) >> 6)
          {
            v183 = *v181++;
            v182 = v183;
            v179 += 64;
            ++v180;
            if (v183)
            {
              v139 = __clz(__rbit64(v182)) + v179;
              break;
            }
          }
        }

        v184 = v241;
        *v241 = v139;
        v184[1] = v63;
        *(v184 + 16) = 0;
      }

      v185 = 1;
      v186 = v259;
      v187 = v267;
      (*v254)(v259);
      v188 = v186;
      v189 = v260;
      sub_E9D4(v188, v260, &qword_109098);
      if ((*v253)(v189, 1, v187) != 1)
      {
        sub_E9D4(v260, v18, &qword_109070);
        v243(v18);
        sub_C060(v18, &qword_109070);
        v185 = 0;
      }

      v190 = v266;
      (*v252)(v74, v185, 1, v266);
      if ((*v251)(v74, 1, v190) == 1)
      {
        goto LABEL_91;
      }

      v191 = *v264;
      result = (*v264)(v262, v74, v190);
      if (v263)
      {
        v192 = v265;
        v193 = v263 - 1;
        if (__OFSUB__(v263, 1))
        {
          goto LABEL_95;
        }
      }

      else
      {
        v194 = v265;
        v195 = *(v265 + 3);
        if (((v195 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_102;
        }

        v196 = v195 & 0xFFFFFFFFFFFFFFFELL;
        if (v196 <= 1)
        {
          v197 = 1;
        }

        else
        {
          v197 = v196;
        }

        sub_3CB0(&qword_106620);
        v198 = *(v73 + 72);
        v199 = v233;
        v192 = swift_allocObject();
        result = j__malloc_size(v192);
        if (!v198)
        {
          goto LABEL_103;
        }

        v200 = result - v199;
        v201 = result - v199 == 0x8000000000000000 && v198 == -1;
        if (v201)
        {
          goto LABEL_111;
        }

        v202 = v199;
        v203 = v200 / v198;
        *(v192 + 2) = v197;
        *(v192 + 3) = 2 * (v200 / v198);
        v204 = v192 + v202;
        v205 = *(v194 + 16);
        v206 = v194;
        v207 = *(v194 + 24) >> 1;
        v208 = v207 * v198;
        if (v205)
        {
          if (v192 < v206 || v204 >= v206 + v233 + v208)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v192 != v265)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v265[2] = 0.0;
        }

        v268 = &v204[v208];

        v209 = (v203 & 0x7FFFFFFFFFFFFFFFLL) - v207;
        v18 = v239;
        v74 = v240;
        v190 = v266;
        v73 = v257;
        v109 = __OFSUB__(v209, 1);
        v193 = v209 - 1;
        if (v109)
        {
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
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
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }
      }

      v263 = v193;
      v210 = v268;
      result = (v191)(v268, v262, v190);
      v268 = &v210[*(v73 + 72)];
      v136 = v258;
      v137 = *(v258 + 36);
      v265 = v192;
      v69 = v139;
    }

    while (v137 == v63);
  }

  __break(1u);
LABEL_91:
  sub_C060(v245, &qword_1090A0);
  sub_C060(v74, &qword_104800);
  result = v265;
  v211 = *(v265 + 3);
  if (v211 >= 2)
  {
    v212 = v211 >> 1;
    v109 = __OFSUB__(v212, v263);
    v213 = v212 - v263;
    if (v109)
    {
      goto LABEL_115;
    }

    *(v265 + 2) = v213;
  }

  return result;
}

uint64_t sub_A3C98@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_A3CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_C5C64();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = sub_C3CB4();
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v3[13] = *(v6 + 64);
  v3[14] = swift_task_alloc();
  v7 = sub_C3EA4();
  v3[15] = v7;
  v8 = *(v7 - 8);
  v3[16] = v8;
  v3[17] = *(v8 + 64);
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_A3E38, 0, 0);
}

uint64_t sub_A3E38()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v26 = v0[14];
  v27 = v0[17];
  v4 = v0[11];
  v24 = v0[12];
  v31 = v0[10];
  v29 = v0[9];
  v30 = v0[8];
  v22 = v0[6];
  v23 = v0[7];
  v28 = v0[5];
  v25 = swift_allocObject();
  v0[19] = v25;
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = 0;
  v25[5] = _swiftEmptyArrayStorage;
  v21 = [objc_allocWithZone(NLTokenizer) initWithUnit:0];
  v0[20] = v21;
  sub_3CB0(&qword_109100);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_CE5B0;
  *(v5 + 32) = NLTagSchemeScript;
  v6 = objc_allocWithZone(NLTagger);
  type metadata accessor for NLTagScheme(0);
  v7 = NLTagSchemeScript;
  isa = sub_C5664().super.isa;

  v9 = [v6 initWithTagSchemes:isa];
  v0[21] = v9;
  v10 = v9;
  v20 = v9;

  (*(v2 + 16))(v1, v22, v3);
  (*(v24 + 16))(v26, v23, v4);
  v11 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v12 = (v27 + *(v24 + 80) + v11) & ~*(v24 + 80);
  v13 = swift_allocObject();
  v0[22] = v13;
  *(v13 + 2) = v28;
  *(v13 + 3) = v21;
  *(v13 + 4) = v10;
  *(v13 + 5) = v25;
  (*(v2 + 32))(&v13[v11], v1, v3);
  (*(v24 + 32))(&v13[v12], v26, v4);
  (*(v29 + 104))(v31, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v30);
  v14 = v28;
  v15 = v21;
  v16 = v20;

  v17 = swift_task_alloc();
  v0[23] = v17;
  *v17 = v0;
  v17[1] = sub_A4158;
  v18 = v0[10];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v17, v18, sub_A5DE4, v13, &type metadata for () + 8);
}

uint64_t sub_A4158()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[9] + 8))(v2[10], v2[8]);

    return _swift_task_switch(sub_A42B0, 0, 0);
  }
}

uint64_t sub_A42B0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);

  swift_beginAccess();
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];

  v7 = *(v0 + 8);

  return v7(v3, v4, v5, v6);
}

uint64_t sub_A438C(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_C5434();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = sub_C5C64();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_A44B4, 0, 0);
}

uint64_t sub_A44B4()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[7];
  v5 = swift_allocObject();
  v0[15] = v5;
  *(v5 + 16) = &_swiftEmptyDictionarySingleton;
  v6 = swift_allocObject();
  v0[16] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v7 = v4;

  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_A4608;
  v9 = v0[14];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v8, v9, sub_A5A24, v6, &type metadata for () + 8);
}

uint64_t sub_A4608()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  *(*v1 + 144) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_A4BB4;
  }

  else
  {
    v5 = sub_A479C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_A479C()
{
  v1 = v0[15];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v19 = v0[8];
  swift_beginAccess();
  v0[5] = *(v1 + 16);
  sub_3CB0(&qword_1090B0);
  sub_3CB0(&qword_1090B8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_CE0A0;
  swift_getKeyPath();

  sub_C36E4();
  swift_getKeyPath();
  sub_C5424();
  (*(v4 + 16))(v3, v2, v19);
  sub_C36D4();
  (*(v4 + 8))(v2, v19);
  v0[6] = v5;
  sub_3CB0(&qword_1090C0);
  sub_3CB0(&qword_1090C8);
  sub_517B0(&qword_1090D0, &qword_1090C0);
  sub_517B0(&qword_1090D8, &qword_1090C8);
  sub_517B0(&qword_1090E0, &qword_1090B8);
  v6 = sub_C55B4();

  v7 = *(v6 + 16);
  if (v7)
  {
    v20 = v0;
    result = sub_52618(0, v7, 0);
    v9 = 0;
    v10 = (v6 + 48);
    v21 = v6;
    while (v9 < *(v6 + 16))
    {
      v11 = *(v10 - 2);
      v12 = *(v10 - 1);
      v13 = *v10;
      sub_A5B84(v11);
      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      v16 = v12;

      if (*&v15 >= *&v14 >> 1)
      {
        result = sub_52618((*&v14 > 1uLL), *&v15 + 1, 1);
      }

      ++v9;
      *&_swiftEmptyArrayStorage[2] = *&v15 + 1;
      v17 = &_swiftEmptyArrayStorage[5 * *&v15];
      *(v17 + 4) = v11;
      v17[5] = 0.0;
      *(v17 + 48) = 1;
      *(v17 + 7) = v13;
      *(v17 + 8) = v16;
      v10 += 3;
      v6 = v21;
      if (v7 == v9)
      {
        v0 = v20;

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_9:

    v18 = v0[1];

    return v18(_swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_A4BB4()
{
  if (qword_1042C0 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v1 = sub_C4CD4();
    sub_B680(v1, qword_109040);
    swift_errorRetain();
    v2 = sub_C4CB4();
    v3 = sub_C5A44();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&dword_0, v2, v3, "Failed to fetch events for streaks: %@", v4, 0xCu);
      sub_C060(v5, &qword_1050F0);
    }

    else
    {
    }

    v7 = *(*&v0 + 120);
    v8 = *(*&v0 + 80);
    v9 = *(*&v0 + 88);
    v11 = *(*&v0 + 64);
    v10 = *(*&v0 + 72);
    swift_beginAccess();
    *(*&v0 + 40) = *(v7 + 16);
    sub_3CB0(&qword_1090B0);
    sub_3CB0(&qword_1090B8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_CE0A0;
    swift_getKeyPath();

    sub_C36E4();
    swift_getKeyPath();
    sub_C5424();
    (*(v10 + 16))(v8, v9, v11);
    sub_C36D4();
    (*(v10 + 8))(v9, v11);
    *(*&v0 + 48) = v12;
    sub_3CB0(&qword_1090C0);
    sub_3CB0(&qword_1090C8);
    sub_517B0(&qword_1090D0, &qword_1090C0);
    sub_517B0(&qword_1090D8, &qword_1090C8);
    sub_517B0(&qword_1090E0, &qword_1090B8);
    v13 = sub_C55B4();

    v14 = *(v13 + 16);
    if (!v14)
    {
      break;
    }

    v25 = v0;
    sub_52618(0, v14, 0);
    v15 = 0;
    v16 = (v13 + 48);
    v26 = v13;
    while (v15 < *(v13 + 16))
    {
      v17 = *(v16 - 2);
      v18 = *(v16 - 1);
      v19 = *v16;
      sub_A5B84(v17);
      v0 = _swiftEmptyArrayStorage[2];
      v20 = _swiftEmptyArrayStorage[3];
      v21 = v18;

      if (*&v0 >= *&v20 >> 1)
      {
        sub_52618((*&v20 > 1uLL), *&v0 + 1, 1);
      }

      ++v15;
      *&_swiftEmptyArrayStorage[2] = *&v0 + 1;
      v22 = &_swiftEmptyArrayStorage[5 * *&v0];
      *(v22 + 4) = v17;
      v22[5] = 0.0;
      *(v22 + 48) = 1;
      *(v22 + 7) = v19;
      *(v22 + 8) = v21;
      v16 += 3;
      v13 = v26;
      if (v14 == v15)
      {
        v0 = v25;

        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

LABEL_13:

  v23 = *(*&v0 + 8);

  return v23(_swiftEmptyArrayStorage);
}

uint64_t sub_A50F4(uint64_t a1)
{
  v1[2] = a1;
  sub_3CB0(&qword_109058);
  v1[3] = swift_task_alloc();
  v1[4] = sub_3CB0(&qword_109060);
  v1[5] = swift_task_alloc();
  v2 = type metadata accessor for InsightsDataManager.TopAssetCategory(0);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_3CB0(&qword_109068);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_3CB0(&qword_109070);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = sub_3CB0(&qword_108F30);
  v1[14] = swift_task_alloc();
  v1[15] = sub_3CB0(&qword_109078);
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_A5328, 0, 0);
}

uint64_t sub_A5328()
{
  v69 = v0;
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[7];
  v64 = v0[6];
  v55 = v0[2];
  v53 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
  v54 = *(v53 + 28);
  sub_B954(v55 + v54, v2, &qword_108F30);
  sub_B954(v2, v1, &qword_108F30);
  v5 = *(v2 + *(v3 + 32));
  v6 = sub_C5EA4();
  v7 = *(v5 + 36);
  result = sub_C060(v2, &qword_108F30);
  v9 = 0;
  v10 = *(v1 + *(v3 + 32));
  v62 = v4;
  v66 = (v4 + 48);
  v67 = (v4 + 56);
  v11 = &_swiftEmptyDictionarySingleton;
  v56 = v10;
  do
  {
    if (*(v10 + 36) != v7)
    {
      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }

    v12 = v7;
    v13 = v0[16];
    v61 = v9;
    if (v6 == 1 << *(v10 + 32))
    {
      v45 = v13 + *(v0[15] + 36);
      *v45 = v6;
      *(v45 + 8) = v7;
      *(v45 + 16) = 0;
      sub_C060(v13, &qword_109078);
      v68[0] = sub_8A9D0(v11);

      sub_9DDD8(v68);
      v47 = v0[4];
      v46 = v0[5];
      v48 = v0[3];

      v19 = v68[0];
      sub_B954(v55 + v54, v48, &qword_108F30);
      sub_E9D4(v48, v46, &qword_108F30);
      v49 = (v46 + *(v47 + 44));
      *v49 = sub_981AC;
      v49[1] = 0;
      v68[0] = sub_A2368(v46);
      sub_9DD04(v68, sub_9E7B8, sub_9E00C);
LABEL_35:
      v50 = v0[2];
      sub_C060(v0[5], &qword_109060);
      v65 = v68[0];
      v51 = sub_8ACB8(v50 + *(v53 + 24));

      v52 = v0[1];

      return v52(v19, v65, v61, v51);
    }

    v15 = v0[11];
    v14 = v0[12];
    v16 = v7;
    v17 = v10;
    v18 = sub_99B08(v68, v6, v16, 0, v10);
    sub_AB0C0(v18, v15);
    v60 = v68[1];
    v19 = v68[3];
    sub_E9D4(v15, v14, &qword_108F48);
    v20 = sub_89DBC(v6, v12, 0, v17);
    v58 = v21;
    v59 = v20;
    v57 = v22;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68[0] = v11;
    v24 = v19[2];
    v63 = v19;

    v25 = 0;
    while (1)
    {
      if (v25 == v24)
      {
        v30 = 1;
        v25 = v24;
      }

      else
      {
        if (v25 >= v63[2])
        {
          goto LABEL_32;
        }

        sub_9A3FC(v63 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v25, v0[10], type metadata accessor for InsightsDataManager.TopAssetCategory);
        v30 = 0;
        ++v25;
      }

      v32 = v0[9];
      v31 = v0[10];
      v33 = v0[6];
      (*v67)(v31, v30, 1, v33);
      sub_E9D4(v31, v32, &qword_109068);
      if ((*v66)(v32, 1, v33) == 1)
      {
        break;
      }

      v34 = v0[8];
      sub_A65E4(v0[9], v34, type metadata accessor for InsightsDataManager.TopAssetCategory);
      v35 = *(v34 + *(v64 + 20));
      v36 = *(v34 + *(v64 + 24));
      sub_A19B0(v34, type metadata accessor for InsightsDataManager.TopAssetCategory);
      v19 = v11;
      v38 = sub_24268(v35);
      v39 = v11[2];
      v40 = (v37 & 1) == 0;
      v41 = v39 + v40;
      if (__OFADD__(v39, v40))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v42 = v37;
      if (v11[3] >= v41)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v37 & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v19 = v68;
          sub_9D480();
          v11 = v68[0];
          if ((v42 & 1) == 0)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_9BAF0(v41, isUniquelyReferenced_nonNull_native & 1);
        v11 = v68[0];
        v19 = v68[0];
        v43 = sub_24268(v35);
        if ((v42 & 1) != (v44 & 1))
        {
          goto LABEL_27;
        }

        v38 = v43;
        if ((v42 & 1) == 0)
        {
LABEL_5:
          v11[(v38 >> 6) + 8] |= 1 << v38;
          *(v11[6] + v38) = v35;
          *(v11[7] + 8 * v38) = v36;
          v26 = v11 + 2;
          v27 = v11[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            goto LABEL_33;
          }

          goto LABEL_6;
        }
      }

      v26 = (v11[7] + 8 * v38);
      v29 = *v26 + v36;
      if (__OFADD__(*v26, v36))
      {
        goto LABEL_34;
      }

LABEL_6:
      *v26 = v29;
      isUniquelyReferenced_nonNull_native = 1;
    }

    swift_bridgeObjectRelease_n();

    v9 = v60 + v61;
    if (__OFADD__(v61, v60))
    {
      goto LABEL_39;
    }

    result = sub_C060(v0[12], &qword_108F48);
    v7 = v58;
    v6 = v59;
    v10 = v56;
  }

  while ((v57 & 1) == 0);
  __break(1u);
LABEL_27:

  return sub_C6294();
}

uint64_t sub_A59AC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_A59E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_A5A84(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_BE28(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_A5AC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if ((*a1 & 0xC000000000000001) != 0)
  {
    result = sub_C5EF4();
  }

  else
  {
    result = *(*a1 + 16);
  }

  *a2 = result;
  return result;
}

id sub_A5B1C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 poiCategory];
  *a2 = result;
  return result;
}

uint64_t sub_A5B58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_C5484();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_A5B84(id result)
{
  if (result >= 4)
  {
    return result;
  }

  return result;
}

uint64_t sub_A5B9C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_A5C04(id a1)
{
  if (a1 >= 4)
  {
  }
}

uint64_t sub_A5C14@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_A5C44()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_A5C7C()
{
  v1 = sub_C3EA4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_C3CB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

void sub_A5DE4()
{
  sub_C3EA4();
  sub_C3CB4();
  sub_93430();
}

uint64_t sub_A5ECC()
{
  v19 = sub_C3CB4();
  v1 = *(v19 - 8);
  v2 = *(v1 + 80);
  v17 = (v2 + 16) & ~v2;
  v15 = (*(v1 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = sub_C3EA4();
  v3 = *(v18 - 8);
  v4 = *(v3 + 80);
  v16 = (v15 + v4 + 8) & ~v4;
  v5 = (*(v3 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_C36C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v2 | v4 | v8;
  v12 = (v10 + v8 + v9) & ~v8;
  (*(v1 + 8))(v0 + v17, v19);

  (*(v3 + 8))(v0 + v16, v18);

  v13 = *(v7 + 8);
  v13(v0 + v9, v6);
  v13(v0 + v12, v6);

  return _swift_deallocObject(v0, v12 + v10, v11 | 7);
}

void sub_A60F8()
{
  v1 = *(sub_C3CB4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_C3EA4() - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_C36C4() - 8);
  v8 = *(v7 + 80);
  sub_93C24((v0 + v2), *(v0 + v3), v0 + v5, *(v0 + v6), v0 + ((v6 + v8 + 8) & ~v8), v0 + ((*(v7 + 64) + v8 + ((v6 + v8 + 8) & ~v8)) & ~v8));
}

uint64_t sub_A6320()
{
  v1 = sub_C3CB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_C3EA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

void sub_A6470(uint64_t a1@<X8>)
{
  v3 = *(sub_C3CB4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_C3EA4() - 8);
  sub_9078C(*(v1 + 16), (v1 + v4), v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)), a1);
}

uint64_t sub_A65E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_A6660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_C3EE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_A6734(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_C3EE4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_A67F0()
{
  sub_C3EE4();
  if (v0 <= 0x3F)
  {
    sub_A689C();
    if (v1 <= 0x3F)
    {
      sub_A68F8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_A689C()
{
  if (!qword_109220)
  {
    v0 = sub_C52D4();
    if (!v1)
    {
      atomic_store(v0, &qword_109220);
    }
  }
}

void sub_A68F8()
{
  if (!qword_109228)
  {
    sub_A695C();
    v0 = sub_C52D4();
    if (!v1)
    {
      atomic_store(v0, &qword_109228);
    }
  }
}

unint64_t sub_A695C()
{
  result = qword_109230;
  if (!qword_109230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109230);
  }

  return result;
}

uint64_t sub_A69C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_C3EE4();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_A6A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_C3EE4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_A6ACC()
{
  result = sub_C3EE4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_A6BD4()
{
  v0 = sub_C44D4();
  sub_C0CC(v0, qword_115648);
  sub_B680(v0, qword_115648);
  return sub_C44C4();
}

NSString sub_A6C20()
{
  result = sub_C5444();
  qword_115660 = result;
  return result;
}

id sub_A6CB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v7 = sub_C5444();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for CustomizeNotificationsCell();
  v8 = objc_msgSendSuper2(&v10, "initWithStyle:reuseIdentifier:specifier:", a1, v7, a4);

  if (v8)
  {
  }

  return v8;
}

id sub_A6ED0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomizeNotificationsCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_A6F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_3CB0(&qword_109350);
  v4 = __chkstk_darwin(v3 - 8);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v42 - v6;
  v8 = sub_C5074();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_3CB0(&qword_109358);
  __chkstk_darwin(v45);
  v13 = &v42 - v12;
  v42 = sub_3CB0(&qword_109360);
  __chkstk_darwin(v42);
  v43 = &v42 - v14;
  v44 = sub_3CB0(&qword_109368);
  v15 = *(v44 - 8);
  __chkstk_darwin(v44);
  v17 = &v42 - v16;
  v18 = sub_3CB0(&qword_109370);
  v19 = __chkstk_darwin(v18 - 8);
  v47 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v46 = &v42 - v21;
  v48 = a1;
  if (*(a1 + 64) == 1)
  {
    v22 = objc_allocWithZone(ISIcon);
    v23 = sub_C5444();
    [v22 initWithBundleIdentifier:v23];

    sub_3CB0(&qword_109418);
    sub_A8F60();
    sub_C4B14();
    v24 = v44;
    (*(v15 + 16))(v43, v17, v44);
    swift_storeEnumTagMultiPayload();
    sub_517B0(&qword_109390, &qword_109368);
    sub_A8B9C();
    v25 = v46;
    sub_C4F24();
    (*(v15 + 8))(v17, v24);
  }

  else
  {

    sub_C5084();
    (*(v9 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v8);
    v26 = sub_C50A4();

    (*(v9 + 8))(v11, v8);
    sub_C50D4();
    sub_C4E84();
    v52 = 1;
    *&v51[6] = v53;
    *&v51[22] = v54;
    *&v51[38] = v55;
    v27 = sub_C4F34();
    v28 = &v13[*(sub_3CB0(&qword_109378) + 36)];
    v29 = *(sub_3CB0(&qword_109380) + 28);
    v30 = enum case for Image.Scale.medium(_:);
    v31 = sub_C5094();
    (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
    *v28 = swift_getKeyPath();
    *v13 = v26;
    *(v13 + 1) = 0;
    *(v13 + 8) = 1;
    v32 = *&v51[16];
    *(v13 + 18) = *v51;
    *(v13 + 34) = v32;
    *(v13 + 50) = *&v51[32];
    *(v13 + 8) = *&v51[46];
    *(v13 + 18) = v27;
    v33 = sub_C4FB4();
    KeyPath = swift_getKeyPath();
    v35 = &v13[*(sub_3CB0(&qword_109388) + 36)];
    *v35 = KeyPath;
    v35[1] = v33;
    *&v13[*(v45 + 36)] = xmmword_D2CB0;
    sub_B954(v13, v43, &qword_109358);
    swift_storeEnumTagMultiPayload();
    sub_517B0(&qword_109390, &qword_109368);
    sub_A8B9C();
    v25 = v46;
    sub_C4F24();
    sub_C060(v13, &qword_109358);
  }

  *v7 = sub_C4F14();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v36 = sub_3CB0(&qword_109408);
  sub_A7870(v48, &v7[*(v36 + 44)]);
  v37 = v47;
  sub_B954(v25, v47, &qword_109370);
  v38 = v50;
  sub_B954(v7, v50, &qword_109350);
  v39 = v49;
  sub_B954(v37, v49, &qword_109370);
  v40 = sub_3CB0(&qword_109410);
  sub_B954(v38, v39 + *(v40 + 48), &qword_109350);
  sub_C060(v7, &qword_109350);
  sub_C060(v25, &qword_109370);
  sub_C060(v38, &qword_109350);
  return sub_C060(v37, &qword_109370);
}

uint64_t sub_A76D8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_C5074();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_C4B04();
  if (result)
  {
    (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
    v7 = sub_C50A4();

    (*(v3 + 8))(v5, v2);
    sub_C50D4();
    result = sub_C4E84();
    v13[8] = 1;
    v8 = v14;
    v9 = v15;
    v10 = v16;
    v11 = 1;
    v12 = 0xC010000000000000;
  }

  else
  {
    v7 = 0;
    v12 = 0;
    v11 = 0;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  *(a1 + 24) = v8;
  *(a1 + 40) = v9;
  *(a1 + 56) = v10;
  *(a1 + 72) = 0;
  *(a1 + 80) = v12;
  return result;
}

uint64_t sub_A7870@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v66 = a2;
  v76 = sub_C4EB4();
  v3 = *(v76 - 8);
  v4 = __chkstk_darwin(v76);
  v70 = &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &KeyPath - v6;
  v72 = sub_C50C4();
  v8 = *(v72 - 8);
  v9 = __chkstk_darwin(v72);
  v75 = &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &KeyPath - v11;
  v13 = sub_3CB0(&qword_109438);
  v73 = *(v13 - 8);
  v74 = v13;
  v14 = __chkstk_darwin(v13);
  v71 = &KeyPath - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &KeyPath - v16;
  v77 = a1;
  sub_3CB0(&qword_109440);
  sub_517B0(&qword_109448, &qword_109440);
  v18 = v17;
  sub_C4E74();
  v19 = v12;
  sub_C50B4();
  v20 = *(a1 + 56);
  LODWORD(v12) = *(a1 + 64);
  v85 = *(a1 + 48);
  v86 = v20;
  sub_19DFC();

  v21 = sub_C5024();
  v63 = v22;
  v64 = v21;
  v24 = v23;
  v65 = v25;
  sub_C4EA4();
  v26 = [objc_opt_self() systemIndigoColor];
  v27 = sub_C5064();
  if (v12 == 1)
  {
    v28 = v76;
    (*(v3 + 16))(v70, v7, v76);
    v70 = sub_C4E94();

    (*(v3 + 8))(v7, v28);
  }

  else
  {
    v85 = v27;
    v70 = sub_C4E94();
    (*(v3 + 8))(v7, v76);
  }

  v69 = sub_C4FD4();
  KeyPath = swift_getKeyPath();
  v68 = sub_C4F84();
  sub_C4E64();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v67 = v24 & 1;
  v103 = v24 & 1;
  v100 = 0;
  v37 = v74;
  v38 = *(v73 + 16);
  v39 = v71;
  v62 = v18;
  v38(v71, v18, v74);
  v76 = v8;
  v40 = *(v8 + 16);
  v41 = v75;
  v61 = v19;
  v42 = v72;
  v40(v75, v19, v72);
  v43 = v66;
  v38(v66, v39, v37);
  v44 = sub_3CB0(&qword_109450);
  v40(&v43[*(v44 + 48)], v41, v42);
  v45 = &v43[*(v44 + 64)];
  v46 = v63;
  v47 = v64;
  *&v78 = v64;
  *(&v78 + 1) = v63;
  LOBYTE(v79) = v67;
  v48 = v42;
  *(&v79 + 1) = *v102;
  DWORD1(v79) = *&v102[3];
  v49 = v65;
  *(&v79 + 1) = v65;
  *&v80 = v70;
  v50 = KeyPath;
  *(&v80 + 1) = KeyPath;
  *&v81 = v69;
  BYTE8(v81) = v68;
  *(&v81 + 9) = *v101;
  HIDWORD(v81) = *&v101[3];
  *&v82 = v30;
  *(&v82 + 1) = v32;
  *&v83 = v34;
  *(&v83 + 1) = v36;
  v84 = 0;
  v51 = v82;
  v52 = v83;
  v45[96] = 0;
  *(v45 + 4) = v51;
  *(v45 + 5) = v52;
  v53 = v78;
  v54 = v79;
  v55 = v81;
  *(v45 + 2) = v80;
  *(v45 + 3) = v55;
  *v45 = v53;
  *(v45 + 1) = v54;
  sub_B954(&v78, &v85, &qword_109458);
  v56 = *(v76 + 8);
  v76 += 8;
  v56(v61, v48);
  v57 = v74;
  v58 = *(v73 + 8);
  v58(v62, v74);
  v85 = v47;
  v86 = v46;
  v87 = v67;
  *v88 = *v102;
  *&v88[3] = *&v102[3];
  v89 = v49;
  v90 = v70;
  v91 = v50;
  v92 = v69;
  v93 = v68;
  *v94 = *v101;
  *&v94[3] = *&v101[3];
  v95 = v30;
  v96 = v32;
  v97 = v34;
  v98 = v36;
  v99 = 0;
  sub_C060(&v85, &qword_109458);
  v56(v75, v72);
  return (v58)(v71, v57);
}

uint64_t sub_A7E98@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v76 = a2;
  v3 = sub_C4FF4();
  v70 = *(v3 - 8);
  v71 = v3;
  __chkstk_darwin(v3);
  v69 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[5];
  v67 = a1[4];
  *&v113 = v5;
  *(&v113 + 1) = v6;
  v8 = sub_19DFC();

  v68 = v8;
  v9 = sub_C5024();
  v11 = v10;
  LOBYTE(v6) = v12;
  sub_C4FD4();
  sub_C4FE4();

  v13 = sub_C5014();
  v73 = v14;
  v74 = v13;
  v16 = v15;
  v75 = v17;

  sub_A9078(v9, v11, v6 & 1);

  v72 = sub_C4F94();

  sub_C4E64();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v77 = v16 & 1;
  v123 = v16 & 1;
  v120 = 0;
  if (v7)
  {
    *&v113 = v67;
    *(&v113 + 1) = v7;
    v26 = sub_C5024();
    v67 = v28;
    v68 = v27;
    v30 = v29;
    sub_C4FC4();
    v31 = v69;
    v32 = v70;
    v33 = v71;
    (*(v70 + 104))(v69, enum case for Font.Leading.standard(_:), v71);
    sub_C5004();

    (*(v32 + 8))(v31, v33);
    v34 = v68;
    v35 = sub_C5014();
    v70 = v37;
    v71 = v36;
    LOBYTE(v33) = v38;

    sub_A9078(v26, v34, v30 & 1);

    LOBYTE(v31) = sub_C4F84();
    sub_C4E64();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    LOBYTE(v33) = v33 & 1;
    LOBYTE(v106) = v33;
    LOBYTE(v104[0]) = 0;
    v47 = sub_C4F94();
    sub_C4E64();
    LOBYTE(v113) = 0;
    *&v106 = v35;
    *(&v106 + 1) = v71;
    LOBYTE(v107) = v33;
    *(&v107 + 1) = v70;
    LOBYTE(v108) = v31;
    *(&v108 + 1) = v40;
    *&v109 = v42;
    *(&v109 + 1) = v44;
    *&v110 = v46;
    BYTE8(v110) = 0;
    LOBYTE(v111) = v47;
    *(&v111 + 1) = v48;
    *v112 = v49;
    *(v112 + 1) = v50;
    *&v112[1] = v51;
    BYTE8(v112[1]) = 0;
    nullsub_1(v48, v49, v50, v51);
    v117 = v110;
    v118 = v111;
    v119[0] = v112[0];
    *(v119 + 9) = *(v112 + 9);
    v113 = v106;
    v114 = v107;
    v115 = v108;
    v116 = v109;
  }

  else
  {
    sub_A9088(&v113);
  }

  v110 = v117;
  v111 = v118;
  v112[0] = v119[0];
  *(v112 + 9) = *(v119 + 9);
  v106 = v113;
  v107 = v114;
  v108 = v115;
  v109 = v116;
  v53 = v73;
  v52 = v74;
  *&v100 = v74;
  *(&v100 + 1) = v73;
  LOBYTE(v101) = v77;
  DWORD1(v101) = *&v122[3];
  *(&v101 + 1) = *v122;
  v54 = v75;
  *(&v101 + 1) = v75;
  v55 = v72;
  LOBYTE(v102) = v72;
  *(&v102 + 1) = *v121;
  DWORD1(v102) = *&v121[3];
  *(&v102 + 1) = v19;
  *&v103[0] = v21;
  *(&v103[0] + 1) = v23;
  *&v103[1] = v25;
  BYTE8(v103[1]) = 0;
  *(v92 + 9) = *(v103 + 9);
  v91 = v102;
  v92[0] = v103[0];
  v89 = v100;
  v90 = v101;
  v104[2] = v115;
  v104[3] = v116;
  v104[0] = v113;
  v104[1] = v114;
  *(v105 + 9) = *(v119 + 9);
  v105[0] = v119[0];
  v104[4] = v117;
  v104[5] = v118;
  v95 = v115;
  v96 = v116;
  v93 = v113;
  v94 = v114;
  *(v99 + 9) = *(v119 + 9);
  v98 = v118;
  v99[0] = v119[0];
  v97 = v117;
  v56 = v100;
  v57 = v101;
  v58 = v103[0];
  v59 = v76;
  v76[2] = v102;
  v59[3] = v58;
  *v59 = v56;
  v59[1] = v57;
  v60 = v92[1];
  v61 = v93;
  v62 = v95;
  v59[6] = v94;
  v59[7] = v62;
  v59[4] = v60;
  v59[5] = v61;
  v63 = v96;
  v64 = v97;
  *(v59 + 185) = *(v99 + 9);
  v65 = v99[0];
  v59[10] = v98;
  v59[11] = v65;
  v59[8] = v63;
  v59[9] = v64;
  sub_B954(&v100, v78, &qword_109460);
  sub_B954(v104, v78, &qword_109468);
  sub_C060(&v106, &qword_109468);
  v78[0] = v52;
  v78[1] = v53;
  v79 = v77;
  *v80 = *v122;
  *&v80[3] = *&v122[3];
  v81 = v54;
  v82 = v55;
  *v83 = *v121;
  *&v83[3] = *&v121[3];
  v84 = v19;
  v85 = v21;
  v86 = v23;
  v87 = v25;
  v88 = 0;
  return sub_C060(v78, &qword_109460);
}

uint64_t sub_A8404@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v27[2] = *(v1 + 32);
  v27[3] = v3;
  v28 = *(v1 + 64);
  v4 = *(v1 + 16);
  v27[0] = *v1;
  v27[1] = v4;
  *a1 = sub_C4F04();
  *(a1 + 8) = 0x402E000000000000;
  *(a1 + 16) = 0;
  v5 = sub_3CB0(&qword_109338);
  sub_A6F28(v27, a1 + *(v5 + 44));
  v6 = sub_C4FA4();
  sub_C4E64();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a1 + *(sub_3CB0(&qword_109340) + 36);
  *v15 = v6;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  v16 = sub_C4F64();
  sub_C4E64();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  result = sub_3CB0(&qword_109348);
  v26 = a1 + *(result + 36);
  *v26 = v16;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20;
  *(v26 + 24) = v22;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
  return result;
}

uint64_t sub_A8520(uint64_t a1)
{
  v2 = sub_C5094();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_C4ED4();
}

uint64_t sub_A85E8()
{
  v1 = v0;
  v2 = sub_3CB0(&qword_109320);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - v4;
  v6 = [v1 specifier];
  v7 = type metadata accessor for CustomizeNotificationsCell();
  v21.receiver = v1;
  v21.super_class = v7;
  objc_msgSendSuper2(&v21, "refreshCellContentsWithSpecifier:", v6);

  [v1 setUserInteractionEnabled:1];
  result = [v1 specifier];
  if (result)
  {
    v9 = result;
    v10 = sub_C5444();
    v11 = [v9 propertyForKey:v10];

    if (v11)
    {
      sub_C5E44();
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
    }

    v20[0] = v18;
    v20[1] = v19;
    if (*(&v19 + 1))
    {
      result = swift_dynamicCast();
      if (result)
      {
        v22[2] = v15;
        v22[3] = v16;
        v23 = v17;
        v22[0] = v13;
        v22[1] = v14;
        __chkstk_darwin(result);
        v12[-2] = v22;
        sub_A892C();
        sub_C4F54();
        sub_A8980(v22);
        sub_C4F74();
        v12[3] = v2;
        v12[4] = sub_517B0(&qword_109330, &qword_109320);
        sub_BF70(v12);
        sub_C4F44();
        (*(v3 + 8))(v5, v2);
        return sub_C5A84();
      }
    }

    else
    {
      return sub_C060(v20, &qword_104818);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_A88EC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 48);
  *(a1 + 32) = *(v2 + 32);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v2 + 64);
  v4 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v4;
  return sub_A89D4(v2, v6);
}

unint64_t sub_A892C()
{
  result = qword_109328;
  if (!qword_109328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109328);
  }

  return result;
}

__n128 sub_A8A30(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_A8A54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_A8A9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_A8B44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_C4EE4();
  *a1 = result;
  return result;
}

unint64_t sub_A8B9C()
{
  result = qword_109398;
  if (!qword_109398)
  {
    sub_28D98(&qword_109358);
    sub_A8C28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109398);
  }

  return result;
}

unint64_t sub_A8C28()
{
  result = qword_1093A0;
  if (!qword_1093A0)
  {
    sub_28D98(&qword_109388);
    sub_A8CE0();
    sub_517B0(&qword_1093F8, &qword_109400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1093A0);
  }

  return result;
}

unint64_t sub_A8CE0()
{
  result = qword_1093A8;
  if (!qword_1093A8)
  {
    sub_28D98(&qword_109378);
    sub_A8D98();
    sub_517B0(&qword_1093F0, &qword_109380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1093A8);
  }

  return result;
}

unint64_t sub_A8D98()
{
  result = qword_1093B0;
  if (!qword_1093B0)
  {
    sub_28D98(&qword_1093B8);
    sub_A8E50();
    sub_517B0(&qword_1093E0, &qword_1093E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1093B0);
  }

  return result;
}

unint64_t sub_A8E50()
{
  result = qword_1093C0;
  if (!qword_1093C0)
  {
    sub_28D98(&qword_1093C8);
    sub_A8EDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1093C0);
  }

  return result;
}

unint64_t sub_A8EDC()
{
  result = qword_1093D0;
  if (!qword_1093D0)
  {
    sub_28D98(&qword_1093D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1093D0);
  }

  return result;
}

unint64_t sub_A8F60()
{
  result = qword_109420;
  if (!qword_109420)
  {
    sub_28D98(&qword_109418);
    sub_A8FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109420);
  }

  return result;
}

unint64_t sub_A8FE4()
{
  result = qword_109428;
  if (!qword_109428)
  {
    sub_28D98(&qword_109430);
    sub_A8E50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109428);
  }

  return result;
}

uint64_t sub_A9078(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_A9088(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_A90A8()
{
  result = qword_109470;
  if (!qword_109470)
  {
    sub_28D98(&qword_109348);
    sub_A9134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109470);
  }

  return result;
}

unint64_t sub_A9134()
{
  result = qword_109478;
  if (!qword_109478)
  {
    sub_28D98(&qword_109340);
    sub_517B0(&qword_109480, &qword_109488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109478);
  }

  return result;
}

uint64_t sub_A9310(uint64_t a1, uint64_t *a2)
{
  v3 = sub_C4CD4();
  sub_C0CC(v3, a2);
  sub_B680(v3, a2);
  return sub_C4CC4();
}

uint64_t sub_A9388()
{
  v0 = sub_C4CD4();
  sub_C0CC(v0, qword_115728);
  sub_B680(v0, qword_115728);
  return sub_C4CC4();
}

uint64_t sub_A9408(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = sub_C3934();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 == 2)
  {

    return URL.init(fileURLWithPath:)(0x6C756E2F7665642FLL, 0xE90000000000006CLL);
  }

  else
  {
    if (a2)
    {
      v8 = 0x2D73746E656D6F6DLL;
    }

    else
    {
      v8 = 0x73746E656D6F6DLL;
    }

    if (a2)
    {
      v9 = 0xEF676E6967617473;
    }

    else
    {
      v9 = 0xE700000000000000;
    }

    if (qword_1042C8 != -1)
    {
      swift_once();
    }

    v10 = sub_C44D4();
    sub_B680(v10, qword_115648);
    sub_C44B4();
    v12[0] = v8;
    v12[1] = v9;
    v14._countAndFlagsBits = 0x6574696C71732ELL;
    v14._object = 0xE700000000000000;
    sub_C5524(v14);
    sub_C38E4();

    return (*(v5 + 8))(v7, v4);
  }
}

id sub_A95FC(uint64_t a1, unsigned __int8 a2)
{
  sub_BE28(0, &qword_109490);
  v4 = sub_C5BB4();
  v5 = objc_allocWithZone(NSPersistentContainer);
  v6 = sub_C5444();
  v7 = [v5 initWithName:v6 managedObjectModel:v4];

  v8 = sub_A9920(a1, a2);
  sub_3CB0(&qword_106E78);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_CFAF0;
  *(v9 + 32) = v8;
  sub_BE28(0, &qword_109498);
  v10 = v8;
  isa = sub_C5664().super.isa;

  [v7 setPersistentStoreDescriptions:isa];

  if (qword_1042E8 != -1)
  {
    swift_once();
  }

  v12 = sub_C4CD4();
  sub_B680(v12, qword_115698);
  v13 = v7;
  v14 = sub_C4CB4();
  v15 = sub_C5A64();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v16 = 136315394;
    v17 = [v13 name];
    v18 = sub_C5484();
    v20 = v19;

    v21 = sub_BA920(v18, v20, &v28);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = [v13 persistentStoreDescriptions];
    sub_C5674();

    v23 = sub_C5684();
    v25 = v24;

    v26 = sub_BA920(v23, v25, &v28);

    *(v16 + 14) = v26;
    _os_log_impl(&dword_0, v14, v15, "CoreDataStack init for container %s\nSQLite PATH: %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  return v13;
}

id sub_A9920(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_C3934();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A9408(v6, a2);
  v9 = objc_allocWithZone(NSPersistentStoreDescription);
  sub_C38D4(v10);
  v12 = v11;
  v13 = [v9 initWithURL:v11];

  [v13 setShouldInferMappingModelAutomatically:1];
  [v13 setShouldMigrateStoreAutomatically:1];
  [v13 setOption:a1 forKey:NSPersistentStoreFileProtectionKey];
  sub_BE28(0, &qword_1094A0);
  isa = sub_C5D24(1).super.super.isa;
  [v13 setOption:isa forKey:NSPersistentHistoryTrackingKey];

  v15 = sub_C5D24(1).super.super.isa;
  [v13 setOption:v15 forKey:NSPersistentStoreRemoteChangeNotificationPostOptionKey];

  (*(v5 + 8))(v8, v4);
  return v13;
}

uint64_t sub_A9AF4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_A9B08(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_A9B50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_A9BB4()
{
  result = qword_1094A8;
  if (!qword_1094A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1094A8);
  }

  return result;
}

uint64_t AssetSource.rawValue.getter(char a1)
{
  result = 0x6974736567677573;
  switch(a1)
  {
    case 1:
      v3 = 0x50616964656DLL;
      goto LABEL_8;
    case 2:
      v3 = 0x506567616D69;
      goto LABEL_8;
    case 3:
      return 0x69506172656D6163;
    case 4:
      v3 = 0x506F69647561;
LABEL_8:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6369000000000000;
      break;
    case 5:
      result = 0x6E6F697461636F6CLL;
      break;
    case 6:
      result = 0x6568536572616873;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x6C616E7265747865;
      break;
    case 10:
      result = 0x6E776F6E6B6E75;
      break;
    case 11:
      result = 0x43676E6977617264;
      break;
    case 12:
      result = 0x6974616D6F747561;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_A9DD4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = AssetSource.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == AssetSource.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_C6244();
  }

  return v8 & 1;
}

Swift::Int sub_A9E5C()
{
  v1 = *v0;
  sub_C62F4();
  AssetSource.rawValue.getter(v1);
  sub_C5514();

  return sub_C6344();
}

uint64_t sub_A9EC0()
{
  AssetSource.rawValue.getter(*v0);
  sub_C5514();
}

Swift::Int sub_A9F14()
{
  v1 = *v0;
  sub_C62F4();
  AssetSource.rawValue.getter(v1);
  sub_C5514();

  return sub_C6344();
}

uint64_t sub_A9F74@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s20JournalNotifications11AssetSourceO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_A9FA4@<X0>(uint64_t *a1@<X8>)
{
  result = AssetSource.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t _s20JournalNotifications11AssetSourceO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_F0618;
  v6._object = a2;
  v4 = sub_C6134(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_AA0D0()
{
  result = qword_1094B0;
  if (!qword_1094B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1094B0);
  }

  return result;
}

unint64_t sub_AA134()
{
  result = qword_1094B8;
  if (!qword_1094B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1094B8);
  }

  return result;
}

uint64_t sub_AA188()
{
  v0 = sub_C49D4();
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DataStackConfiguration();
  sub_C0CC(v3, qword_115740);
  v4 = sub_B680(v3, qword_115740);
  sub_C49C4();
  return sub_AA294(v2, NSFileProtectionCompleteUnlessOpen, v4);
}

uint64_t type metadata accessor for DataStackConfiguration()
{
  result = qword_109518;
  if (!qword_109518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_AA294@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v26 = a3;
  v5 = sub_C49D4();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v25 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v25 - v13;
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = *(v6 + 16);
  v17(&v25 - v15, a1, v5);
  v17(v14, v16, v5);
  v17(v11, v14, v5);
  v18 = (*(v6 + 88))(v11, v5);
  if (v18 == enum case for Runtime.Environment.production(_:))
  {
    v19 = 0;
LABEL_7:
    v20 = *(v6 + 8);
    v21 = a2;
    v20(v14, v5);
    v20(v16, v5);
    v22 = v26;
    *v26 = v21;
    *(v22 + 8) = v19;
    v17(v25, a1, v5);
    type metadata accessor for DataStackConfiguration();
    sub_C47E4();
    return (v20)(a1, v5);
  }

  if (v18 == enum case for Runtime.Environment.staging(_:))
  {
    v19 = 1;
    goto LABEL_7;
  }

  if (v18 == enum case for Runtime.Environment.testing(_:))
  {
    v19 = 2;
    goto LABEL_7;
  }

  v24 = a2;
  result = sub_C6234();
  __break(1u);
  return result;
}

uint64_t sub_AA530(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_C47F4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_AA5F0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_C47F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_AA694()
{
  result = sub_C47F4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_AA750()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedDeviceInfoProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_AA7BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB0(&qword_109088);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_AA848(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB0(&qword_109088);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_AA8E4()
{
  sub_AA960();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_AA960()
{
  if (!qword_1095E0)
  {
    type metadata accessor for CalendarBinningUnit(255);
    v0 = sub_C5DA4();
    if (!v1)
    {
      atomic_store(v0, &qword_1095E0);
    }
  }
}

uint64_t sub_AA9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_C3E84();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_C3CB4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_C3EA4();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_AAB40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_C3E84();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_C3CB4();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_C3EA4();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_AAC8C()
{
  result = sub_C3E84();
  if (v1 <= 0x3F)
  {
    result = sub_C3CB4();
    if (v2 <= 0x3F)
    {
      result = sub_C3EA4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_AAD28(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  v3 = sub_C36C4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3CB0(&qword_109088);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for CalendarBinningUnit(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B954(v2, v9, &qword_109088);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_C060(v9, &qword_109088);
    return 0;
  }

  v23 = v2;
  sub_ADA48(v9, v13, type metadata accessor for CalendarBinningUnit);
  v24 = *(v10 + 24);
  sub_3CB0(&qword_107708);
  v15 = sub_C3E84();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_CE5B0;
  (*(v16 + 16))(v18 + v17, v13, v15);
  sub_5A02C(v18);
  swift_setDeallocating();
  (*(v16 + 8))(v18 + v17, v15);
  swift_deallocClassInstance();
  sub_C3DA4();

  v19 = sub_C3684();
  LOBYTE(v16) = v20;
  result = (*(v4 + 8))(v6, v3);
  if (v16)
  {
    goto LABEL_7;
  }

  sub_AD410(v13, type metadata accessor for CalendarBinningUnit);
  v21 = *(v23 + *(type metadata accessor for UniformDateBins(0) + 20));
  result = v19 - v21;
  if (__OFSUB__(v19, v21))
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t sub_AB0C0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a1;
  v40 = a2;
  v4 = sub_3CB0(&qword_109080);
  v5 = __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v37 = &v35 - v8;
  v9 = sub_C3CB4();
  v38 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v35 - v13;
  v15 = sub_3CB0(&qword_109088);
  __chkstk_darwin(v15 - 8);
  v17 = &v35 - v16;
  v18 = sub_3CB0(&qword_109090);
  __chkstk_darwin(v18 - 8);
  v20 = &v35 - v19;
  sub_B954(v3, v17, &qword_109088);
  v21 = type metadata accessor for CalendarBinningUnit(0);
  if ((*(*(v21 - 8) + 48))(v17, 1, v21) != 1)
  {
    v33 = *(v3 + *(type metadata accessor for UniformDateBins(0) + 20));
    result = &v39[v33];
    if (!__OFADD__(v33, v39))
    {
      sub_ABA44(result, v20);
      sub_AD410(v17, type metadata accessor for CalendarBinningUnit);
      v34 = sub_3CB0(&qword_108F48);
      (*(*(v34 - 8) + 56))(v20, 0, 1, v34);
      return sub_E9D4(v20, v40, &qword_108F48);
    }

LABEL_9:
    __break(1u);
    return result;
  }

  sub_C060(v17, &qword_109088);
  v22 = sub_3CB0(&qword_108F48);
  v23 = *(v22 - 8);
  (*(v23 + 56))(v20, 1, 1, v22);
  sub_C39A4();
  sub_C39A4();
  sub_AC698(&qword_108F40, &type metadata accessor for Date);
  result = sub_C5354();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v25 = v38;
  v39 = v20;
  v36 = v22;
  v26 = *(v38 + 32);
  v27 = v37;
  v26(v37, v14, v9);
  v26((v27 + *(v4 + 48)), v12, v9);
  sub_B954(v27, v7, &qword_109080);
  v28 = *(v4 + 48);
  v35 = v4;
  v29 = v40;
  v26(v40, v7, v9);
  v30 = *(v25 + 8);
  v30(&v7[v28], v9);
  sub_E9D4(v27, v7, &qword_109080);
  v31 = v36;
  v26((v29 + *(v36 + 36)), &v7[*(v35 + 48)], v9);
  v32 = v39;
  v30(v7, v9);
  result = (*(v23 + 48))(v32, 1, v31);
  if (result != 1)
  {
    return sub_C060(v32, &qword_109090);
  }

  return result;
}

uint64_t sub_AB5EC(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v38 = sub_3CB0(&qword_108F48);
  v3 = __chkstk_darwin(v38);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v30 = &v28 - v5;
  v40 = sub_C36C4();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CalendarBinningUnit(0);
  v39 = *(v8 + 24);
  v9 = sub_3CB0(&qword_107708);
  v10 = sub_C3E84();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v36 = *(v11 + 72);
  v37 = v9;
  v13 = swift_allocObject();
  v34 = xmmword_CE5B0;
  *(v13 + 16) = xmmword_CE5B0;
  v35 = *(v11 + 16);
  v35(v13 + v12, v2, v10);
  sub_5A02C(v13);
  swift_setDeallocating();
  v33 = *(v11 + 8);
  v33(v13 + v12, v10);
  swift_deallocClassInstance();
  v32 = *(v8 + 20);
  sub_C3DA4();

  v29 = sub_C3684();
  LOBYTE(v9) = v14;
  v15 = *(v42 + 8);
  v42 += 8;
  result = v15(v7, v40);
  if (v9)
  {
    goto LABEL_14;
  }

  v17 = *(v38 + 36);
  v18 = swift_allocObject();
  *(v18 + 16) = v34;
  v35(v18 + v12, v2, v10);
  sub_5A02C(v18);
  swift_setDeallocating();
  v33(v18 + v12, v10);
  swift_deallocClassInstance();
  v37 = v17;
  sub_C3DA4();

  v19 = sub_C3684();
  LOBYTE(v18) = v20;
  result = v15(v7, v40);
  if ((v18 & 1) == 0)
  {
    v21 = v29;
    v22 = v30;
    sub_ABA44(v29, v30);
    v23 = v31;
    result = sub_ABA44(v19, v31);
    v24 = v19 - v21;
    if (__OFSUB__(v19, v21))
    {
      __break(1u);
    }

    else
    {
      v25 = v24 + 1;
      if (!__OFADD__(v24, 1))
      {
        result = sub_C3C54();
        if ((result & 1) == 0 || (v26 = __OFSUB__(v25, 1), --v25, !v26))
        {
          v27 = sub_C3C54();
          sub_C060(v23, &qword_108F48);
          result = sub_C060(v22, &qword_108F48);
          if ((v27 & 1) == 0)
          {
            return v25;
          }

          v26 = __OFSUB__(v25--, 1);
          if (!v26)
          {
            return v25;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_ABA44@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v33 = sub_3CB0(&qword_109080);
  v3 = __chkstk_darwin(v33);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v32 = &v31 - v5;
  v6 = sub_3CB0(&qword_104800);
  v7 = __chkstk_darwin(v6 - 8);
  v39 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  v11 = sub_C3CB4();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v37 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v31 - v15;
  v38 = *(type metadata accessor for CalendarBinningUnit(0) + 24);
  v40 = a1;
  sub_C3E34();
  v17 = *(v12 + 48);
  result = v17(v10, 1, v11);
  if (result == 1)
  {
    goto LABEL_8;
  }

  v31 = v12;
  v19 = *(v12 + 32);
  v36 = v16;
  result = v19(v16, v10, v11);
  if (__OFADD__(v40, 1))
  {
    __break(1u);
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v20 = v39;
  sub_C3E34();
  result = v17(v20, 1, v11);
  if (result != 1)
  {
    v21 = v37;
    v19(v37, v20, v11);
    sub_AC698(&qword_108F40, &type metadata accessor for Date);
    v22 = v36;
    result = sub_C5354();
    if (result)
    {
      v23 = v32;
      v19(v32, v22, v11);
      v24 = v33;
      v19((v23 + *(v33 + 48)), v21, v11);
      v25 = v34;
      sub_B954(v23, v34, &qword_109080);
      v26 = *(v24 + 48);
      v27 = v35;
      v19(v35, v25, v11);
      v28 = *(v31 + 8);
      v28(v25 + v26, v11);
      sub_E9D4(v23, v25, &qword_109080);
      v29 = *(v24 + 48);
      v30 = sub_3CB0(&qword_108F48);
      v19(&v27[*(v30 + 36)], (v25 + v29), v11);
      return (v28)(v25, v11);
    }

    goto LABEL_7;
  }

LABEL_9:
  __break(1u);
  return result;
}

void (*sub_ABE74(uint64_t *a1, char **a2))(uint64_t *a1)
{
  v4 = *(*(sub_3CB0(&qword_108F48) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(v4);
  }

  *a1 = v5;
  sub_AB0C0(*a2, v5);
  return sub_ABF14;
}

void sub_ABF14(uint64_t *a1)
{
  v1 = *a1;
  sub_C060(*a1, &qword_108F48);

  free(v1);
}

uint64_t *sub_ABF60@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + *(a2 + 24));
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = *result;
  if (*result < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = result[1];
  if (v5 >= v7)
  {
    v8 = sub_3CB0(&qword_1096E0);
    result = sub_ADAB0(v3, a3 + *(v8 + 40), type metadata accessor for UniformDateBins);
    *a3 = v6;
    a3[1] = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_ABFF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_ADAB0(v2, a2, type metadata accessor for UniformDateBins);
  result = sub_3CB0(&qword_1096D0);
  *(a2 + *(result + 36)) = 0;
  *(a2 + *(result + 40)) = *(v2 + *(a1 + 24));
  return result;
}

uint64_t *sub_AC08C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    if (!a2)
    {
LABEL_5:
      *a3 = v3;
      return result;
    }

    if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
      v3 += a2;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_AC0BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_AC0F4(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_AC0F4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= (a2 - 1))
    {
      v3 = a2 - 1;
    }

    if (v3 >= (result ^ 0x7FFFFFFFFFFFFFFFuLL))
    {
      v3 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v3 + 1;
    if (v4 >= 5)
    {
      v7 = v4 & 3;
      if ((v4 & 3) == 0)
      {
        v7 = 4;
      }

      v5 = v4 - v7;
      v8 = 0uLL;
      v9 = result;
      v10 = vdupq_n_s64(1uLL);
      v11 = v5;
      do
      {
        v8 = vaddq_s64(v8, v10);
        v9 = vaddq_s64(v9, v10);
        v11 -= 4;
      }

      while (v11);
      v6 = vaddvq_s64(vpaddq_s64(v9, v8));
    }

    else
    {
      v5 = 0;
      v6 = result;
    }

    v12 = v5 + result - 0x7FFFFFFFFFFFFFFFLL;
    v13 = v5 + result - a3;
    v14 = a2 - v5;
    result = v6;
    while (1)
    {
      if (!v13)
      {
        return 0;
      }

      if (!v12)
      {
        break;
      }

      ++result;
      ++v12;
      ++v13;
      if (!--v14)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_AC1C4(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (result < 0 != v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = __OFSUB__(v2, v3);
  v6 = v2 - v3;
  if (!v6)
  {
    return 0;
  }

  if (v6 < 0 == v5)
  {
    goto LABEL_9;
  }

  if (v6 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t *sub_AC204(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_AC220(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_AC23C(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_AC258@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_AC270(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_AC288@<X0>(uint64_t a1@<X8>)
{
  sub_ADA48(v1, a1, type metadata accessor for UniformDateBins);
  result = sub_3CB0(&qword_1096B8);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_AC2E8(uint64_t a1)
{
  result = *(v1 + *(a1 + 24));
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

double *sub_AC308()
{
  v1 = v0;
  v2 = type metadata accessor for UniformDateBins(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3CB0(&qword_1096B8);
  result = __chkstk_darwin(v6 - 8);
  v9 = (&v16 - v8);
  v10 = *(v3 + 32);
  v11 = *(v1 + v10);
  if ((v11 & 0x8000000000000000) == 0)
  {
    if (v11)
    {
      v12 = sub_AC7DC(*(v1 + v10), 0);
      v13 = *(sub_3CB0(&qword_108F48) - 8);
      v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      sub_ADAB0(v1, v5, type metadata accessor for UniformDateBins);
      v15 = sub_AC8E4(v9, v12 + v14, v11);
      sub_AD410(v1, type metadata accessor for UniformDateBins);
      sub_C060(v9, &qword_1096B8);
      if (v15 == v11)
      {
        return v12;
      }

      __break(1u);
    }

    sub_AD410(v1, type metadata accessor for UniformDateBins);
    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

uint64_t sub_AC4FC()
{
  if ((sub_C3E74() & 1) == 0 || (sub_C3C54() & 1) == 0)
  {
    return 0;
  }

  return sub_C3DF4();
}

uint64_t sub_AC698(unint64_t *a1, void (*a2)(uint64_t))
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

double *sub_AC6E0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_3CB0(&qword_106680);
  v4 = *(_s30MOSuggestionAssetMapsClustererC7ClusterVMa() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double *sub_AC7DC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_3CB0(&qword_1096E8);
  v4 = *(sub_3CB0(&qword_108F48) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_AC8E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v92 = sub_3CB0(&qword_109080);
  v6 = __chkstk_darwin(v92);
  v93 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v75 - v8;
  v10 = sub_3CB0(&qword_104800);
  v11 = __chkstk_darwin(v10 - 8);
  v81 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v82 = &v75 - v13;
  v105 = sub_C3CB4();
  v14 = *(v105 - 8);
  v15 = __chkstk_darwin(v105);
  v83 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v75 - v18;
  v20 = __chkstk_darwin(v17);
  v80 = &v75 - v21;
  __chkstk_darwin(v20);
  v94 = &v75 - v22;
  v23 = sub_3CB0(&qword_109088);
  __chkstk_darwin(v23 - 8);
  v100 = &v75 - v24;
  v25 = sub_3CB0(&qword_109090);
  v26 = __chkstk_darwin(v25 - 8);
  v99 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v75 - v28;
  v30 = sub_3CB0(&qword_108F48);
  v95 = *(v30 - 8);
  __chkstk_darwin(v30);
  v91 = &v75 - v31;
  v32 = sub_3CB0(&qword_1096B8);
  v33 = v32 - 8;
  __chkstk_darwin(v32);
  v35 = &v75 - v34;
  result = sub_ADA48(v104, &v75 - v34, type metadata accessor for UniformDateBins);
  v90 = *(v33 + 44);
  *&v35[v90] = 0;
  v104 = a2;
  if (!a2)
  {
LABEL_21:
    v40 = 0;
LABEL_25:
    sub_E9D4(v35, a1, &qword_1096B8);
    return v40;
  }

  if (!a3)
  {
    v40 = 0;
    goto LABEL_25;
  }

  if (a3 < 0)
  {
    goto LABEL_30;
  }

  v79 = v19;
  v76 = a1;
  v37 = 0;
  v78 = type metadata accessor for UniformDateBins(0);
  v89 = *&v35[*(v78 + 24)];
  v98 = (v14 + 32);
  v86 = (v14 + 8);
  v87 = (v14 + 48);
  v77 = (v95 + 48);
  v75 = a3;
  v85 = a3 - 1;
  v88 = (v95 + 56);
  v84 = (v95 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v38 = v100;
  v102 = v35;
  v103 = v29;
  v39 = v30;
  v96 = v9;
  v97 = v30;
  while (1)
  {
    v40 = v89;
    if (v89 == v37)
    {
      (*v88)(v29, 1, 1, v39);
      sub_C060(v29, &qword_109090);
      a1 = v76;
      goto LABEL_25;
    }

    sub_B954(v35, v38, &qword_109088);
    v41 = type metadata accessor for CalendarBinningUnit(0);
    result = (*(*(v41 - 8) + 48))(v38, 1, v41);
    v101 = v37;
    if (result == 1)
    {
      break;
    }

    v56 = *&v35[*(v78 + 20)];
    v57 = v56 + v37;
    if (__OFADD__(v56, v37))
    {
      goto LABEL_27;
    }

    v58 = v82;
    sub_C3E34();
    v59 = v58;
    v60 = *v87;
    result = (*v87)(v58, 1, v105);
    if (result == 1)
    {
      goto LABEL_31;
    }

    v61 = *v98;
    result = (*v98)(v94, v59, v105);
    if (__OFADD__(v57, 1))
    {
      goto LABEL_28;
    }

    v62 = v81;
    sub_C3E34();
    result = v60(v62, 1, v105);
    if (result == 1)
    {
      goto LABEL_32;
    }

    v63 = v80;
    v61(v80, v62, v105);
    sub_AC698(&qword_108F40, &type metadata accessor for Date);
    v64 = v94;
    result = sub_C5354();
    if ((result & 1) == 0)
    {
      goto LABEL_29;
    }

    v65 = v105;
    v61(v9, v64, v105);
    v66 = v92;
    v61(&v9[*(v92 + 48)], v63, v65);
    v67 = v9;
    v68 = v93;
    sub_B954(v9, v93, &qword_109080);
    v69 = *(v66 + 48);
    v70 = v99;
    v61(v99, v68, v65);
    v71 = *v86;
    (*v86)(v68 + v69, v65);
    sub_E9D4(v67, v68, &qword_109080);
    v72 = v97;
    v61((v70 + *(v97 + 36)), (v68 + *(v66 + 48)), v65);
    v55 = v101;
    v54 = v72;
    v71(v68, v65);
    v38 = v100;
    sub_AD410(v100, type metadata accessor for CalendarBinningUnit);
    v42 = *v88;
    (*v88)(v70, 0, 1, v72);
    v29 = v103;
    sub_E9D4(v70, v103, &qword_108F48);
LABEL_17:
    v73 = v55 + 1;
    *&v102[v90] = v55 + 1;
    v39 = v54;
    v42(v29, 0, 1, v54);
    v74 = v91;
    sub_E9D4(v29, v91, &qword_108F48);
    sub_E9D4(v74, v104, &qword_108F48);
    if (v85 == v55)
    {
      v40 = v75;
      a1 = v76;
      v35 = v102;
      goto LABEL_25;
    }

    v9 = v96;
    v104 += *(v95 + 72);
    v37 = v55 + 1;
    v35 = v102;
    a1 = &qword_109088;
    if (__OFADD__(v73, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  sub_C060(v38, &qword_109088);
  v42 = *v88;
  (*v88)(v99, 1, 1, v39);
  v43 = v79;
  sub_C39A4();
  v44 = v83;
  sub_C39A4();
  sub_AC698(&qword_108F40, &type metadata accessor for Date);
  result = sub_C5354();
  if (result)
  {
    v45 = v105;
    v46 = *v98;
    v47 = v96;
    (*v98)(v96, v43, v105);
    v48 = v92;
    v46((v47 + *(v92 + 48)), v44, v45);
    v49 = v93;
    sub_B954(v47, v93, &qword_109080);
    v50 = *(v48 + 48);
    v46(v103, v49, v45);
    v51 = *v86;
    (*v86)(v49 + v50, v45);
    sub_E9D4(v47, v49, &qword_109080);
    v46(&v103[*(v97 + 36)], (v49 + *(v48 + 48)), v45);
    v52 = v97;
    v51(v49, v45);
    v53 = v99;
    v54 = v52;
    if ((*v77)(v99, 1, v52) != 1)
    {
      sub_C060(v53, &qword_109090);
    }

    v38 = v100;
    v55 = v101;
    v29 = v103;
    goto LABEL_17;
  }

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
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_AD410(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_AD470(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa();
  v33 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v31 = &v28 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v17 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    result = 0;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_ADAB0(*(a4 + 48) + a1 * (v22 | (v17 << 6)), v32, _s30MOSuggestionAssetMapsClustererC7ClusterVMa);
      v24 = v23;
      v25 = v31;
      sub_ADA48(v24, v31, _s30MOSuggestionAssetMapsClustererC7ClusterVMa);
      sub_ADA48(v25, a2, _s30MOSuggestionAssetMapsClustererC7ClusterVMa);
      if (v19 == v30)
      {
        a1 = v29;
        a3 = v30;
        goto LABEL_23;
      }

      a2 += a1;
      result = v19;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a3 = result;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

BOOL sub_AD6D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarBinningUnit(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3CB0(&qword_109088);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_3CB0(&qword_1096F0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_B954(a1, &v21 - v13, &qword_109088);
  sub_B954(a2, &v14[v15], &qword_109088);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_B954(v14, v10, &qword_109088);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_ADA48(&v14[v15], v7, type metadata accessor for CalendarBinningUnit);
      if (sub_C3E74() & 1) != 0 && (sub_C3C54())
      {
        v20 = sub_C3DF4();
        sub_AD410(v7, type metadata accessor for CalendarBinningUnit);
        sub_AD410(v10, type metadata accessor for CalendarBinningUnit);
        sub_C060(v14, &qword_109088);
        if ((v20 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_4;
      }

      sub_AD410(v7, type metadata accessor for CalendarBinningUnit);
      sub_AD410(v10, type metadata accessor for CalendarBinningUnit);
      v19 = &qword_109088;
LABEL_14:
      sub_C060(v14, v19);
      return 0;
    }

    sub_AD410(v10, type metadata accessor for CalendarBinningUnit);
LABEL_8:
    v19 = &qword_1096F0;
    goto LABEL_14;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_C060(v14, &qword_109088);
LABEL_4:
  v17 = type metadata accessor for UniformDateBins(0);
  if (*(a1 + *(v17 + 20)) == *(a2 + *(v17 + 20)))
  {
    return *(a1 + *(v17 + 24)) == *(a2 + *(v17 + 24));
  }

  return 0;
}

uint64_t sub_ADA48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_ADAB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_ADB20()
{
  v0 = sub_C4CD4();
  sub_C0CC(v0, qword_1096F8);
  v1 = sub_B680(v0, qword_1096F8);
  if (qword_1042E8 != -1)
  {
    swift_once();
  }

  v2 = sub_B680(v0, qword_115698);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_ADBE8(void *a1, unsigned __int8 a2)
{
  v67 = sub_C3CB4();
  v64 = *(v67 - 8);
  v5 = *(v64 + 64);
  v6 = __chkstk_darwin(v67);
  v60 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v58 - v7;
  v9 = sub_C3D14();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v59 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v62 = &v58 - v14;
  __chkstk_darwin(v13);
  v16 = &v58 - v15;
  v17 = OBJC_IVAR____TtC20JournalNotifications19CoreDataStackShared_sessionID;
  sub_C3D04();
  v2[OBJC_IVAR____TtC20JournalNotifications19CoreDataStackShared_persistentStoresLoadSuccess] = 0;
  v63 = a1;
  v18 = sub_A95FC(a1, a2);
  v19 = OBJC_IVAR____TtC20JournalNotifications19CoreDataStackShared_container;
  *&v2[OBJC_IVAR____TtC20JournalNotifications19CoreDataStackShared_container] = v18;
  v61 = v10;
  v20 = *(v10 + 16);
  v68 = v16;
  v65 = v9;
  v20(v16, &v2[v17], v9);
  v66 = v8;
  sub_C3CA4();
  v21 = [*&v2[v19] viewContext];
  *&v2[OBJC_IVAR____TtC20JournalNotifications19CoreDataStackShared_context] = v21;
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 mergeByPropertyStoreTrumpMergePolicy];
  [v23 setMergePolicy:v24];

  v25 = type metadata accessor for CoreDataStackShared();
  v70.receiver = v2;
  v70.super_class = v25;
  v26 = objc_msgSendSuper2(&v70, "init");
  if (MKBGetDeviceLockState() == 1)
  {
    v27 = v68;
    v28 = v65;
    if (qword_104328 != -1)
    {
      swift_once();
    }

    v29 = sub_C4CD4();
    sub_B680(v29, qword_1096F8);
    v30 = v62;
    v20(v62, v27, v28);
    v31 = sub_C4CB4();
    v32 = sub_C5A44();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136446210;
      sub_AEE6C();
      v35 = sub_C6214();
      v36 = v28;
      v38 = v37;
      v39 = *(v61 + 8);
      v39(v30, v36);
      v40 = sub_BA920(v35, v38, aBlock);

      *(v33 + 4) = v40;
      _os_log_impl(&dword_0, v31, v32, "%{public}s (sharedCoredataInit) SharedDeviceInfoProvider.isDeviceLocked == TRUE, unable to complete CoreDataStackShared initialization.", v33, 0xCu);
      sub_BED0(v34);

      (*(v64 + 8))(v66, v67);
      v39(v68, v65);
    }

    else
    {

      v56 = *(v61 + 8);
      v56(v30, v28);
      (*(v64 + 8))(v66, v67);
      v56(v27, v28);
    }
  }

  else
  {
    v58 = *&v26[OBJC_IVAR____TtC20JournalNotifications19CoreDataStackShared_container];
    v41 = v59;
    v42 = v65;
    v20(v59, v68, v65);
    v62 = v26;
    v43 = v64;
    v44 = v60;
    (*(v64 + 16))(v60, v66, v67);
    v45 = v61;
    v46 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v47 = (v11 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = (*(v43 + 80) + v47 + 8) & ~*(v43 + 80);
    v49 = swift_allocObject();
    v50 = v41;
    v51 = v42;
    (*(v45 + 32))(v49 + v46, v50, v42);
    *(v49 + v47) = v62;
    v52 = v67;
    (*(v43 + 32))(v49 + v48, v44, v67);
    aBlock[4] = sub_AED60;
    aBlock[5] = v49;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_AE988;
    aBlock[3] = &unk_F3B90;
    v53 = _Block_copy(aBlock);
    v54 = v58;
    v55 = v62;

    [v54 loadPersistentStoresWithCompletionHandler:v53];
    _Block_release(v53);

    (*(v43 + 8))(v66, v52);
    v26 = v62;
    (*(v45 + 8))(v68, v51);
  }

  return v26;
}

void sub_AE270(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v9 = sub_C3CB4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_C3D14();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  __chkstk_darwin(v15);
  v18 = &v61 - v17;
  if (a2)
  {
    v19 = sub_C37B4();
    if (qword_104328 != -1)
    {
      swift_once();
    }

    v20 = sub_C4CD4();
    sub_B680(v20, qword_1096F8);
    (*(v14 + 16))(v18, a3, v13);
    v21 = v19;
    v22 = sub_C4CB4();
    v23 = sub_C5A54();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v68 = v26;
      *v24 = 136446466;
      sub_AEE6C();
      v27 = sub_C6214();
      v28 = v13;
      v30 = v29;
      (*(v14 + 8))(v18, v28);
      v31 = sub_BA920(v27, v30, &v68);

      *(v24 + 4) = v31;
      *(v24 + 12) = 2112;
      *(v24 + 14) = v21;
      *v25 = v21;
      v32 = v21;
      _os_log_impl(&dword_0, v22, v23, "%{public}s (sharedCoredataInit) LoadPersistentStores Unresolved error: %@", v24, 0x16u);
      sub_60738(v25);

      sub_BED0(v26);
    }

    else
    {

      (*(v14 + 8))(v18, v13);
    }
  }

  else
  {
    v63 = a5;
    v64 = v16;
    a4[OBJC_IVAR____TtC20JournalNotifications19CoreDataStackShared_persistentStoresLoadSuccess] = 1;
    v33 = [*&a4[OBJC_IVAR____TtC20JournalNotifications19CoreDataStackShared_container] viewContext];
    v34 = [v33 persistentStoreCoordinator];

    v65 = a3;
    v62 = v12;
    if (v34)
    {
      v35 = [v34 persistentStores];

      sub_AEEC4();
      v36 = sub_C5674();

      if (v36 >> 62)
      {
        v37 = sub_C60E4();
      }

      else
      {
        v37 = *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8));
      }
    }

    else
    {
      v37 = 0;
    }

    v66 = v10;
    v38 = v13;
    if (qword_104328 != -1)
    {
      swift_once();
    }

    v39 = sub_C4CD4();
    sub_B680(v39, qword_1096F8);
    v40 = a4;
    v41 = sub_C4CB4();
    v42 = sub_C5A64();

    v43 = os_log_type_enabled(v41, v42);
    v67 = v9;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v68 = v45;
      *v44 = 136446466;
      sub_AEE6C();
      v46 = sub_C6214();
      v48 = sub_BA920(v46, v47, &v68);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2048;
      *(v44 + 14) = v37;
      _os_log_impl(&dword_0, v41, v42, "%{public}s(sharedCoredataInit) persistentStoresCount:%ld", v44, 0x16u);
      sub_BED0(v45);
      v9 = v67;
    }

    v49 = v64;
    (*(v14 + 16))(v64, v65, v38);
    v50 = v66;
    v51 = v62;
    (*(v66 + 16))(v62, v63, v9);
    v52 = sub_C4CB4();
    v53 = sub_C5A64();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v68 = v65;
      *v54 = 136446466;
      sub_AEE6C();
      v55 = sub_C6214();
      v57 = v56;
      (*(v14 + 8))(v49, v38);
      v58 = sub_BA920(v55, v57, &v68);

      *(v54 + 4) = v58;
      *(v54 + 12) = 2048;
      sub_C3C44();
      v60 = v59;
      (*(v50 + 8))(v51, v67);
      *(v54 + 14) = -v60;
      _os_log_impl(&dword_0, v52, v53, "%{public}s (sharedCoredataInit) container.loadPersistentStores completed in %f seconds.", v54, 0x16u);
      sub_BED0(v65);
    }

    else
    {

      (*(v50 + 8))(v51, v9);
      (*(v14 + 8))(v49, v38);
    }
  }
}

void sub_AE988(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

id sub_AEA44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreDataStackShared();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CoreDataStackShared()
{
  result = qword_109740;
  if (!qword_109740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_AEB5C()
{
  result = sub_C3D14();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_AEC04()
{
  v1 = sub_C3D14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_C3CB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

void sub_AED60(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_C3D14() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_C3CB4() - 8);
  v9 = *(v2 + v7);
  v10 = v2 + ((v7 + *(v8 + 80) + 8) & ~*(v8 + 80));

  sub_AE270(a1, a2, v2 + v6, v9, v10);
}

uint64_t sub_AEE54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_AEE6C()
{
  result = qword_104A58;
  if (!qword_104A58)
  {
    sub_C3D14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_104A58);
  }

  return result;
}

unint64_t sub_AEEC4()
{
  result = qword_109750;
  if (!qword_109750)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_109750);
  }

  return result;
}

Swift::Int sub_AEF10(uint64_t a1)
{
  sub_C62F4();
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = 2;
      goto LABEL_11;
    }

    if (a1 == 3)
    {
      v2 = 3;
      goto LABEL_11;
    }
  }

  else
  {
    if (!a1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (a1 == 1)
    {
      v2 = 1;
LABEL_11:
      sub_C6304(v2);
      return sub_C6344();
    }
  }

  sub_C6304(4uLL);
  sub_C5484();
  sub_C5514();

  return sub_C6344();
}

void sub_AEFE0()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 == 2)
    {
      v2 = 2;
      goto LABEL_13;
    }

    if (v1 == 3)
    {
      v2 = 3;
      goto LABEL_13;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_13;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_13:
      sub_C6304(v2);
      return;
    }
  }

  sub_C6304(4uLL);
  sub_C5484();
  sub_C5514();
}

Swift::Int sub_AF0A4()
{
  v1 = *v0;
  sub_C62F4();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 2;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 3;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_11:
      sub_C6304(v2);
      return sub_C6344();
    }
  }

  sub_C6304(4uLL);
  sub_C5484();
  sub_C5514();

  return sub_C6344();
}

uint64_t sub_AF174()
{
  sub_3CB0(&qword_109760);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_D3350;
  v1 = MKPointOfInterestCategoryAnimalService;
  *(inited + 32) = MKPointOfInterestCategoryAnimalService;
  *(inited + 40) = MKPointOfInterestCategoryAirport;
  *(inited + 48) = MKPointOfInterestCategoryAmusementPark;
  *(inited + 56) = MKPointOfInterestCategoryAquarium;
  *(inited + 64) = MKPointOfInterestCategoryATM;
  v2 = MKPointOfInterestCategoryAutomotiveRepair;
  *(inited + 72) = MKPointOfInterestCategoryAutomotiveRepair;
  *(inited + 80) = MKPointOfInterestCategoryBakery;
  v3 = MKPointOfInterestCategoryBaseball;
  v91 = MKPointOfInterestCategoryBaseball;
  *(inited + 88) = MKPointOfInterestCategoryBank;
  *(inited + 96) = v3;
  v4 = MKPointOfInterestCategoryBasketball;
  *(inited + 104) = MKPointOfInterestCategoryBasketball;
  *(inited + 112) = MKPointOfInterestCategoryBeach;
  v90 = MKPointOfInterestCategoryBeauty;
  v5 = MKPointOfInterestCategoryBowling;
  v94 = MKPointOfInterestCategoryBowling;
  *(inited + 120) = MKPointOfInterestCategoryBeauty;
  *(inited + 128) = v5;
  *(inited + 136) = MKPointOfInterestCategoryBrewery;
  *(inited + 144) = MKPointOfInterestCategoryCafe;
  *(inited + 152) = MKPointOfInterestCategoryCampground;
  *(inited + 160) = MKPointOfInterestCategoryCarRental;
  v92 = MKPointOfInterestCategoryCastle;
  v6 = MKPointOfInterestCategoryConventionCenter;
  v97 = MKPointOfInterestCategoryConventionCenter;
  *(inited + 168) = MKPointOfInterestCategoryCastle;
  *(inited + 176) = v6;
  v95 = MKPointOfInterestCategoryDistillery;
  *(inited + 184) = MKPointOfInterestCategoryDistillery;
  *(inited + 192) = MKPointOfInterestCategoryEVCharger;
  v93 = MKPointOfInterestCategoryFairground;
  *(inited + 200) = MKPointOfInterestCategoryFairground;
  *(inited + 208) = MKPointOfInterestCategoryFireStation;
  v96 = MKPointOfInterestCategoryFishing;
  *(inited + 216) = MKPointOfInterestCategoryFishing;
  *(inited + 224) = MKPointOfInterestCategoryFitnessCenter;
  v7 = MKPointOfInterestCategoryFortress;
  v101 = MKPointOfInterestCategoryFortress;
  *(inited + 232) = MKPointOfInterestCategoryFoodMarket;
  *(inited + 240) = v7;
  v8 = MKPointOfInterestCategoryGolf;
  v100 = MKPointOfInterestCategoryGolf;
  *(inited + 248) = MKPointOfInterestCategoryGasStation;
  *(inited + 256) = v8;
  v98 = MKPointOfInterestCategoryGoKart;
  v9 = MKPointOfInterestCategoryHiking;
  v103 = MKPointOfInterestCategoryHiking;
  *(inited + 264) = MKPointOfInterestCategoryGoKart;
  *(inited + 272) = v9;
  *(inited + 280) = MKPointOfInterestCategoryHospital;
  *(inited + 288) = MKPointOfInterestCategoryHotel;
  v99 = MKPointOfInterestCategoryKayaking;
  v10 = MKPointOfInterestCategoryLandmark;
  v105 = MKPointOfInterestCategoryLandmark;
  *(inited + 296) = MKPointOfInterestCategoryKayaking;
  *(inited + 304) = v10;
  *(inited + 312) = MKPointOfInterestCategoryLaundry;
  *(inited + 320) = MKPointOfInterestCategoryLibrary;
  v104 = MKPointOfInterestCategoryMailbox;
  *(inited + 328) = MKPointOfInterestCategoryMailbox;
  *(inited + 336) = MKPointOfInterestCategoryMarina;
  v102 = MKPointOfInterestCategoryMiniGolf;
  *(inited + 344) = MKPointOfInterestCategoryMiniGolf;
  *(inited + 352) = MKPointOfInterestCategoryMovieTheater;
  v11 = MKPointOfInterestCategoryMusicVenue;
  v107 = MKPointOfInterestCategoryMusicVenue;
  *(inited + 360) = MKPointOfInterestCategoryMuseum;
  *(inited + 368) = v11;
  v106 = MKPointOfInterestCategoryNationalMonument;
  *(inited + 376) = MKPointOfInterestCategoryNationalMonument;
  *(inited + 384) = MKPointOfInterestCategoryNationalPark;
  *(inited + 392) = MKPointOfInterestCategoryNightlife;
  *(inited + 400) = MKPointOfInterestCategoryPark;
  *(inited + 408) = MKPointOfInterestCategoryParking;
  *(inited + 416) = MKPointOfInterestCategoryPharmacy;
  v108 = MKPointOfInterestCategoryPlanetarium;
  *(inited + 424) = MKPointOfInterestCategoryPlanetarium;
  *(inited + 432) = MKPointOfInterestCategoryPolice;
  *(inited + 440) = MKPointOfInterestCategoryPostOffice;
  *(inited + 448) = MKPointOfInterestCategoryPublicTransport;
  *(inited + 456) = MKPointOfInterestCategoryRestaurant;
  *(inited + 464) = MKPointOfInterestCategoryRestroom;
  v109 = MKPointOfInterestCategoryRockClimbing;
  v12 = MKPointOfInterestCategoryRVPark;
  v112 = MKPointOfInterestCategoryRVPark;
  *(inited + 472) = MKPointOfInterestCategoryRockClimbing;
  *(inited + 480) = v12;
  v13 = MKPointOfInterestCategorySkatePark;
  v111 = MKPointOfInterestCategorySkatePark;
  *(inited + 488) = MKPointOfInterestCategorySchool;
  *(inited + 496) = v13;
  v110 = MKPointOfInterestCategorySkating;
  v14 = MKPointOfInterestCategorySkiing;
  v113 = MKPointOfInterestCategorySkiing;
  *(inited + 504) = MKPointOfInterestCategorySkating;
  *(inited + 512) = v14;
  v114 = MKPointOfInterestCategorySoccer;
  *(inited + 520) = MKPointOfInterestCategorySoccer;
  v115 = MKPointOfInterestCategorySpa;
  *(inited + 528) = MKPointOfInterestCategorySpa;
  *(inited + 536) = MKPointOfInterestCategoryStadium;
  *(inited + 544) = MKPointOfInterestCategoryStore;
  v116 = MKPointOfInterestCategorySurfing;
  *(inited + 552) = MKPointOfInterestCategorySurfing;
  v117 = MKPointOfInterestCategorySwimming;
  *(inited + 560) = MKPointOfInterestCategorySwimming;
  v118 = MKPointOfInterestCategoryTennis;
  *(inited + 568) = MKPointOfInterestCategoryTennis;
  *(inited + 576) = MKPointOfInterestCategoryTheater;
  *(inited + 584) = MKPointOfInterestCategoryUniversity;
  v119 = MKPointOfInterestCategoryVolleyball;
  *(inited + 592) = MKPointOfInterestCategoryVolleyball;
  *(inited + 600) = MKPointOfInterestCategoryWinery;
  *(inited + 608) = MKPointOfInterestCategoryZoo;
  v15 = v1;
  v16 = MKPointOfInterestCategoryAirport;
  v17 = MKPointOfInterestCategoryAmusementPark;
  v18 = MKPointOfInterestCategoryAquarium;
  v19 = MKPointOfInterestCategoryATM;
  v20 = v2;
  v21 = MKPointOfInterestCategoryBakery;
  v22 = MKPointOfInterestCategoryBank;
  v23 = v91;
  v24 = v4;
  v25 = MKPointOfInterestCategoryBeach;
  v26 = v90;
  v27 = v94;
  v28 = MKPointOfInterestCategoryBrewery;
  v29 = MKPointOfInterestCategoryCafe;
  v30 = MKPointOfInterestCategoryCampground;
  v31 = MKPointOfInterestCategoryCarRental;
  v32 = v92;
  v33 = v97;
  v34 = v95;
  v35 = MKPointOfInterestCategoryEVCharger;
  v36 = v93;
  v37 = MKPointOfInterestCategoryFireStation;
  v38 = v96;
  v39 = MKPointOfInterestCategoryFitnessCenter;
  v40 = MKPointOfInterestCategoryFoodMarket;
  v41 = v101;
  v42 = MKPointOfInterestCategoryGasStation;
  v43 = v100;
  v44 = v98;
  v45 = v103;
  v46 = MKPointOfInterestCategoryHospital;
  v47 = MKPointOfInterestCategoryHotel;
  v48 = v99;
  v49 = v105;
  v50 = MKPointOfInterestCategoryLaundry;
  v51 = MKPointOfInterestCategoryLibrary;
  v52 = v104;
  v53 = MKPointOfInterestCategoryMarina;
  v54 = v102;
  v55 = MKPointOfInterestCategoryMovieTheater;
  v56 = MKPointOfInterestCategoryMuseum;
  v57 = v107;
  v58 = v106;
  v59 = MKPointOfInterestCategoryNationalPark;
  v60 = MKPointOfInterestCategoryNightlife;
  v61 = MKPointOfInterestCategoryPark;
  v62 = MKPointOfInterestCategoryParking;
  v63 = MKPointOfInterestCategoryPharmacy;
  v64 = v108;
  v65 = MKPointOfInterestCategoryPolice;
  v66 = MKPointOfInterestCategoryPostOffice;
  v67 = MKPointOfInterestCategoryPublicTransport;
  v68 = MKPointOfInterestCategoryRestaurant;
  v69 = MKPointOfInterestCategoryRestroom;
  v70 = v109;
  v71 = v112;
  v72 = MKPointOfInterestCategorySchool;
  v73 = v111;
  v74 = v110;
  v75 = v113;
  v76 = v114;
  v77 = v115;
  v78 = MKPointOfInterestCategoryStadium;
  v79 = MKPointOfInterestCategoryStore;
  v80 = v116;
  v81 = v117;
  v82 = v118;
  v83 = MKPointOfInterestCategoryTheater;
  v84 = MKPointOfInterestCategoryUniversity;
  v85 = v119;
  v86 = MKPointOfInterestCategoryWinery;
  v87 = MKPointOfInterestCategoryZoo;
  v88 = sub_67618(inited);
  swift_setDeallocating();
  type metadata accessor for MKPointOfInterestCategory(0);
  result = swift_arrayDestroy();
  qword_109758 = v88;
  return result;
}

BOOL sub_AF954(uint64_t a1, unint64_t a2)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (a2 != 2)
      {
        return 0;
      }
    }

    else
    {
      if (a1 != 3)
      {
        goto LABEL_10;
      }

      if (a2 != 3)
      {
        return 0;
      }
    }

    return 1;
  }

  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

LABEL_10:
  if (a2 < 4)
  {
    return 0;
  }

  v2 = sub_C5484();
  v4 = v3;
  if (v2 == sub_C5484() && v4 == v5)
  {

    return 1;
  }

  else
  {
    v7 = sub_C6244();

    return v7 & 1;
  }
}

id sub_AFA4C()
{
  v0 = sub_C4304();
  v2 = v1;
  v3 = sub_C42F4();
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = v3;
    v7 = v4;
    sub_BE28(0, &qword_104C40);
    v5 = sub_C5D14();
    sub_1D580(v6, v7);
  }

  v8 = [v5 pointOfInterestCategory];

  if (!v2)
  {
    goto LABEL_24;
  }

  if (v0 == 1701670728 && v2 == 0xE400000000000000 || (sub_C6244() & 1) != 0)
  {
    result = [objc_opt_self() homeStyleAttributes];
    if (result)
    {

      return 0;
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v0 == 1802661719 && v2 == 0xE400000000000000 || (sub_C6244() & 1) != 0)
  {
    result = [objc_opt_self() workStyleAttributes];
    if (result)
    {

      return &dword_0 + 1;
    }

    goto LABEL_34;
  }

  if ((v0 != 0x6C6F6F686353 || v2 != 0xE600000000000000) && (sub_C6244() & 1) == 0)
  {
    if (v0 == 7174471 && v2 == 0xE300000000000000 || (sub_C6244() & 1) != 0)
    {
      sub_BE28(0, &qword_108F20);
      sub_409F4(145);

      return &dword_0 + 3;
    }

LABEL_24:
    if (v8)
    {
      v10 = qword_104330;
      v11 = v8;
      if (v10 != -1)
      {
        swift_once();
      }

      if (sub_8A6FC(v11, qword_109758))
      {
        v12 = sub_87BC8();

        if (!v12)
        {

          return 0;
        }
      }

      else
      {

        return 0;
      }
    }

    else
    {
    }

    return v8;
  }

  result = [objc_opt_self() schoolStyleAttributes];
  if (result)
  {

    return &dword_0 + 2;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_AFDA0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_AFDC4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_AFE18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_AFE74(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_AFEA8()
{
  result = qword_109768[0];
  if (!qword_109768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_109768);
  }

  return result;
}

void sub_AFF04()
{
  type metadata accessor for UniformDateBins(319);
  if (v0 <= 0x3F)
  {
    sub_B0220();
    if (v1 <= 0x3F)
    {
      sub_C52D4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_AFFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UniformDateBins(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_3CB0(&qword_108F48);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_B00F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UniformDateBins(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_3CB0(&qword_108F48);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

void sub_B0220()
{
  if (!qword_1097F0)
  {
    sub_C3CB4();
    sub_B0284();
    v0 = sub_C5394();
    if (!v1)
    {
      atomic_store(v0, &qword_1097F0);
    }
  }
}

unint64_t sub_B0284()
{
  result = qword_108F40;
  if (!qword_108F40)
  {
    sub_C3CB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_108F40);
  }

  return result;
}

uint64_t sub_B0410@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void *, void, void *)@<X2>, uint64_t a3@<X8>)
{
  result = sub_B02F8(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  return result;
}

void (*sub_B0444(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  v6 = v5;
  *a1 = v5;
  sub_28D98(&qword_108F48);
  v7 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6[4] = TupleTypeMetadata2;
  v9 = *(TupleTypeMetadata2 - 8);
  v6[5] = v9;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v11 = v10;
  v6[6] = v10;
  v12 = sub_B0638(v6);
  v14 = v13;
  v6[7] = v12;
  sub_B0D30(v15, v11);
  (*(*(v7 - 8) + 16))(v11 + *(TupleTypeMetadata2 + 48), v14, v7);
  return sub_B05C0;
}

void sub_B05C0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_B0638(uint64_t *a1))(void *a1)
{
  sub_28D98(&qword_108F48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v3 = *(TupleTypeMetadata2 - 8);
  a1[1] = v3;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_B037C(v4);
  return sub_B0758;
}

void sub_B0758(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

void sub_B07B4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

uint64_t sub_B0854@<X0>(uint64_t a1@<X8>)
{
  result = sub_B033C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t sub_B0894(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = sub_B033C();
  v7 = v6;
  v9 = v8;
  result = sub_C0C0(v2, v3, v4);
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9 & 1;
  return result;
}

uint64_t sub_B0910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = a2 + *(sub_C60C4() + 36);
  v7 = sub_B02F8(a1, &Dictionary.startIndex.getter);
  v9 = v8;
  v11 = v10;
  result = (*(v5 + 8))(v2, a1);
  *v6 = v7;
  *(v6 + 8) = v9;
  *(v6 + 16) = v11 & 1;
  return result;
}

uint64_t sub_B0A2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t sub_B0A80(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = sub_B0DA0();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t sub_B0B80()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_C5354();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_C5924();
  result = sub_C5354();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_B0C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_C5354();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_B0D30(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB0(&qword_108F48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B0DBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB0(&qword_104800);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_B0E48(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB0(&qword_104800);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for StreakSummary()
{
  result = qword_109850;
  if (!qword_109850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_B0F10()
{
  sub_B0F88();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_B0F88()
{
  if (!qword_1057A8)
  {
    sub_C3CB4();
    v0 = sub_C5DA4();
    if (!v1)
    {
      atomic_store(v0, &qword_1057A8);
    }
  }
}

uint64_t sub_B0FE0(uint64_t a1)
{
  v2 = v1;
  v43 = a1;
  v41 = sub_3CB0(&qword_109080);
  v3 = __chkstk_darwin(v41);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v40 = &v35 - v6;
  v39 = sub_3CB0(&qword_1098A8);
  __chkstk_darwin(v39);
  v42 = &v35 - v7;
  v8 = sub_3CB0(&qword_104800);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v35 - v12;
  v14 = sub_C3CB4();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v44 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v35 - v18;
  sub_B954(v2, v13, &qword_104800);
  v20 = *(v15 + 48);
  if (v20(v13, 1, v14) == 1)
  {
    v21 = v13;
LABEL_5:
    sub_C060(v21, &qword_104800);
    v25 = 0;
    return v25 & 1;
  }

  v22 = v13;
  v23 = *(v15 + 32);
  v23(v19, v22, v14);
  v24 = type metadata accessor for StreakSummary();
  sub_B954(v2 + *(v24 + 24), v11, &qword_104800);
  if (v20(v11, 1, v14) == 1)
  {
    (*(v15 + 8))(v19, v14);
    v21 = v11;
    goto LABEL_5;
  }

  v26 = v44;
  v23(v44, v11, v14);
  v27 = sub_B24E0(&qword_108F40);
  result = sub_C5354();
  if (result)
  {
    v37 = v23;
    v38 = v27;
    v29 = *(v15 + 16);
    v30 = v40;
    v29(v40, v19, v14);
    v31 = v41;
    v29((v30 + *(v41 + 48)), v26, v14);
    sub_B954(v30, v5, &qword_109080);
    v36 = *(v31 + 48);
    v32 = v42;
    v33 = v37;
    v37(v42, v5, v14);
    v34 = *(v15 + 8);
    v34(&v5[v36], v14);
    sub_B2524(v30, v5);
    v33(v32 + *(v39 + 36), &v5[*(v31 + 48)], v14);
    v34(v5, v14);
    if (sub_C5354())
    {
      v25 = sub_C5334();
    }

    else
    {
      v25 = 0;
    }

    sub_C060(v32, &qword_1098A8);
    v34(v44, v14);
    v34(v19, v14);
    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_B14D8(void *a1)
{
  v3 = sub_3CB0(&qword_1098A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_13DC4(a1, a1[3]);
  sub_B23CC();
  sub_C6384();
  v12 = 0;
  sub_C3CB4();
  sub_B24E0(&qword_1065B0);
  sub_C61C4();
  if (!v1)
  {
    type metadata accessor for StreakSummary();
    v11 = 1;
    sub_C61C4();
    v10 = 2;
    sub_C61C4();
    v9 = 3;
    sub_C61E4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_B16F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_3CB0(&qword_104800);
  v4 = __chkstk_darwin(v3 - 8);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v36 = &v31 - v7;
  __chkstk_darwin(v6);
  v38 = &v31 - v8;
  v39 = sub_3CB0(&qword_109890);
  v35 = *(v39 - 8);
  __chkstk_darwin(v39);
  v10 = &v31 - v9;
  v11 = type metadata accessor for StreakSummary();
  v12 = (v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_C3CB4();
  v16 = *(*(v15 - 8) + 56);
  v16(v14, 1, 1, v15);
  v33 = v12[7];
  v16(&v14[v33], 1, 1, v15);
  v17 = v12[8];
  v16(&v14[v17], 1, 1, v15);
  v18 = v12[9];
  v40 = v14;
  *&v14[v18] = 0;
  v19 = a1[3];
  v42 = a1;
  sub_13DC4(a1, v19);
  sub_B23CC();
  v37 = v10;
  v20 = v41;
  sub_C6374();
  if (v20)
  {
    v21 = v40;
  }

  else
  {
    v41 = v17;
    v31 = v18;
    v22 = v35;
    v23 = v36;
    v46 = 0;
    sub_B24E0(&qword_106578);
    v24 = v38;
    v25 = v37;
    sub_C6164();
    v21 = v40;
    sub_2CCC4(v24, v40);
    v45 = 1;
    sub_C6164();
    sub_2CCC4(v23, v21 + v33);
    v44 = 2;
    v26 = v34;
    sub_C6164();
    sub_2CCC4(v26, v21 + v41);
    v43 = 3;
    v28 = v39;
    v29 = sub_C6184();
    (*(v22 + 8))(v25, v28);
    v30 = v32;
    *(v21 + v31) = v29;
    sub_B247C(v21, v30);
  }

  sub_BED0(v42);
  return sub_B2420(v21);
}

uint64_t sub_B1B24()
{
  v1 = 0x7473726966;
  v2 = 0x6E4F676E69646E65;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    v1 = 1953718636;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_B1B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_B26AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_B1BC8(uint64_t a1)
{
  v2 = sub_B23CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B1C04(uint64_t a1)
{
  v2 = sub_B23CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_B1C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_C3CB4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v55 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3CB0(&qword_104800);
  v8 = __chkstk_darwin(v7 - 8);
  v51 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v53 = &v51 - v11;
  __chkstk_darwin(v10);
  v13 = &v51 - v12;
  v14 = sub_3CB0(&qword_108DF8);
  v15 = __chkstk_darwin(v14);
  v52 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v51 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v51 - v21;
  v56 = v20;
  v57 = a1;
  v23 = *(v20 + 48);
  sub_B954(a1, &v51 - v21, &qword_104800);
  sub_B954(a2, &v22[v23], &qword_104800);
  v58 = v5;
  v24 = *(v5 + 48);
  if (v24(v22, 1, v4) == 1)
  {
    if (v24(&v22[v23], 1, v4) == 1)
    {
      v54 = a2;
      sub_C060(v22, &qword_104800);
      goto LABEL_8;
    }

LABEL_6:
    v25 = v22;
LABEL_20:
    sub_C060(v25, &qword_108DF8);
    return 0;
  }

  sub_B954(v22, v13, &qword_104800);
  if (v24(&v22[v23], 1, v4) == 1)
  {
    (*(v58 + 8))(v13, v4);
    goto LABEL_6;
  }

  v54 = a2;
  v26 = v58;
  v27 = v55;
  (*(v58 + 32))(v55, &v22[v23], v4);
  sub_B24E0(&qword_1047B8);
  v28 = sub_C53A4();
  v29 = *(v26 + 8);
  v29(v27, v4);
  v29(v13, v4);
  sub_C060(v22, &qword_104800);
  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v30 = type metadata accessor for StreakSummary();
  v31 = v30[5];
  v32 = *(v56 + 48);
  sub_B954(v57 + v31, v19, &qword_104800);
  v33 = v54 + v31;
  v34 = v54;
  sub_B954(v33, &v19[v32], &qword_104800);
  if (v24(v19, 1, v4) != 1)
  {
    v35 = v53;
    sub_B954(v19, v53, &qword_104800);
    if (v24(&v19[v32], 1, v4) != 1)
    {
      v54 = v34;
      v36 = v58;
      v37 = v55;
      (*(v58 + 32))(v55, &v19[v32], v4);
      sub_B24E0(&qword_1047B8);
      v38 = v35;
      v39 = sub_C53A4();
      v40 = *(v36 + 8);
      v40(v37, v4);
      v40(v38, v4);
      sub_C060(v19, &qword_104800);
      if ((v39 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_14;
    }

    (*(v58 + 8))(v35, v4);
LABEL_19:
    v25 = v19;
    goto LABEL_20;
  }

  if (v24(&v19[v32], 1, v4) != 1)
  {
    goto LABEL_19;
  }

  v54 = v34;
  sub_C060(v19, &qword_104800);
LABEL_14:
  v41 = v30[6];
  v42 = *(v56 + 48);
  v19 = v52;
  sub_B954(v57 + v41, v52, &qword_104800);
  v43 = v54 + v41;
  v44 = v54;
  sub_B954(v43, &v19[v42], &qword_104800);
  if (v24(v19, 1, v4) == 1)
  {
    if (v24(&v19[v42], 1, v4) == 1)
    {
      sub_C060(v19, &qword_104800);
      return *(v57 + v30[7]) == *(v44 + v30[7]);
    }

    goto LABEL_19;
  }

  v45 = v51;
  sub_B954(v19, v51, &qword_104800);
  if (v24(&v19[v42], 1, v4) == 1)
  {
    (*(v58 + 8))(v45, v4);
    goto LABEL_19;
  }

  v47 = v58;
  v48 = v55;
  (*(v58 + 32))(v55, &v19[v42], v4);
  sub_B24E0(&qword_1047B8);
  v49 = sub_C53A4();
  v50 = *(v47 + 8);
  v50(v48, v4);
  v50(v45, v4);
  sub_C060(v19, &qword_104800);
  if (v49)
  {
    return *(v57 + v30[7]) == *(v44 + v30[7]);
  }

  return 0;
}

unint64_t sub_B23CC()
{
  result = qword_109898;
  if (!qword_109898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109898);
  }

  return result;
}

uint64_t sub_B2420(uint64_t a1)
{
  v2 = type metadata accessor for StreakSummary();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B247C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreakSummary();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B24E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_C3CB4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_B2524(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB0(&qword_109080);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_B25A8()
{
  result = qword_1098B0;
  if (!qword_1098B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1098B0);
  }

  return result;
}

unint64_t sub_B2600()
{
  result = qword_1098B8;
  if (!qword_1098B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1098B8);
  }

  return result;
}

unint64_t sub_B2658()
{
  result = qword_1098C0;
  if (!qword_1098C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1098C0);
  }

  return result;
}

uint64_t sub_B26AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7473726966 && a2 == 0xE500000000000000;
  if (v4 || (sub_C6244() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953718636 && a2 == 0xE400000000000000 || (sub_C6244() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E4F676E69646E65 && a2 == 0xE800000000000000 || (sub_C6244() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_C6244();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_B280C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_C3CB4();
  v3 = *(*(v2 - 8) + 56);
  v3(a1, 1, 1, v2);
  v4 = type metadata accessor for StreakSummary();
  v3(a1 + v4[5], 1, 1, v2);
  v3(a1 + v4[6], 1, 1, v2);
  *(a1 + v4[7]) = 0;
  v5 = type metadata accessor for InsightsDataManager.Streaks(0);
  v6 = a1 + v5[5];
  v3(v6, 1, 1, v2);
  v3(v6 + v4[5], 1, 1, v2);
  v3(v6 + v4[6], 1, 1, v2);
  *(v6 + v4[7]) = 0;
  v7 = a1 + v5[6];
  v3(v7, 1, 1, v2);
  v3(v7 + v4[5], 1, 1, v2);
  v3(v7 + v4[6], 1, 1, v2);
  *(v7 + v4[7]) = 0;
  v8 = a1 + v5[7];
  v3(v8, 1, 1, v2);
  v3(v8 + v4[5], 1, 1, v2);
  v3(v8 + v4[6], 1, 1, v2);
  *(v8 + v4[7]) = 0;
  v9 = a1 + v5[8];
  v3(v9, 1, 1, v2);
  v3(v9 + v4[5], 1, 1, v2);
  v3(v9 + v4[6], 1, 1, v2);
  *(v9 + v4[7]) = 0;
  v10 = a1 + v5[9];
  v3(v10, 1, 1, v2);
  v3(v10 + v4[5], 1, 1, v2);
  result = (v3)(v10 + v4[6], 1, 1, v2);
  *(v10 + v4[7]) = 0;
  return result;
}

uint64_t sub_B2B04(uint64_t a1)
{
  v2 = v1;
  v4 = sub_C3EA4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__calendar;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_B69F4(&qword_109E58, &type metadata accessor for Calendar);
  v14[0] = a1;
  LOBYTE(a1) = sub_C53A4();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_B69F4(&qword_108F28, type metadata accessor for InsightsDataManager);
    sub_C3F34();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_B2DA4(uint64_t a1)
{
  v3 = type metadata accessor for InsightsDataManager.Streaks(0);
  v4 = __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v13 - v7;
  v9 = OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__streaks;
  swift_beginAccess();
  sub_B6600(v1 + v9, v8, type metadata accessor for InsightsDataManager.Streaks);
  if (!sub_B1C74(v8, a1) || !sub_B1C74(&v8[v3[5]], a1 + v3[5]) || !sub_B1C74(&v8[v3[6]], a1 + v3[6]) || !sub_B1C74(&v8[v3[7]], a1 + v3[7]) || !sub_B1C74(&v8[v3[8]], a1 + v3[8]))
  {
    sub_B6A68(v8, type metadata accessor for InsightsDataManager.Streaks);
    goto LABEL_9;
  }

  v10 = sub_B1C74(&v8[v3[9]], a1 + v3[9]);
  sub_B6A68(v8, type metadata accessor for InsightsDataManager.Streaks);
  if (!v10)
  {
LABEL_9:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v1;
    v13[-1] = a1;
    v13[1] = v1;
    sub_B69F4(&qword_108F28, type metadata accessor for InsightsDataManager);
    sub_C3F34();

    return sub_B6A68(a1, type metadata accessor for InsightsDataManager.Streaks);
  }

  sub_B6600(a1, v6, type metadata accessor for InsightsDataManager.Streaks);
  swift_beginAccess();
  sub_B6594(v6, v1 + v9);
  swift_endAccess();
  return sub_B6A68(a1, type metadata accessor for InsightsDataManager.Streaks);
}

id sub_B30B8()
{
  v1 = OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager____lazy_storage___workContext;
  v2 = *(v0 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager____lazy_storage___workContext);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager____lazy_storage___workContext);
  }

  else
  {
    v4 = sub_8FA80();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_B3118@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_B69F4(&qword_108F28, type metadata accessor for InsightsDataManager);
  sub_C3F44();

  v3 = OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__calendar;
  swift_beginAccess();
  v4 = sub_C3EA4();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_B3210(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__calendar;
  swift_beginAccess();
  v5 = sub_C3EA4();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_B32AC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_B69F4(&qword_108F28, type metadata accessor for InsightsDataManager);
  sub_C3F44();

  v3 = OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__referenceDate;
  swift_beginAccess();
  return sub_7653C(v5 + v3, a1);
}

uint64_t sub_B3374(uint64_t a1)
{
  v3 = sub_3CB0(&qword_104800);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__referenceDate;
  swift_beginAccess();
  sub_7653C(v1 + v6, v5);
  v7 = sub_B6670(v5, a1);
  sub_C060(v5, &qword_104800);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_B69F4(&qword_108F28, type metadata accessor for InsightsDataManager);
    sub_C3F34();
  }

  else
  {
    sub_7653C(a1, v5);
    swift_beginAccess();
    sub_2CCC4(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_C060(a1, &qword_104800);
}

uint64_t sub_B3564(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__referenceDate;
  swift_beginAccess();
  sub_B6984(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_B35D0()
{
  swift_getKeyPath();
  sub_B69F4(&qword_108F28, type metadata accessor for InsightsDataManager);
  sub_C3F44();

  v1 = *(v0 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__wordCount);

  return v1;
}

uint64_t sub_B3698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__wordCount);
  *v5 = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
}

uint64_t sub_B3768@<X0>(uint64_t *a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_B69F4(&qword_108F28, type metadata accessor for InsightsDataManager);
  sub_C3F44();

  v7 = *a1;
  swift_beginAccess();
  return sub_B6600(v9 + v7, a3, a2);
}

uint64_t sub_B3838(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v7 = *a3;
  swift_beginAccess();
  sub_B5D8C(a2, a1 + v7, a4);
  return swift_endAccess();
}

uint64_t sub_B38B0()
{
  swift_getKeyPath();
  sub_B69F4(&qword_108F28, type metadata accessor for InsightsDataManager);
  sub_C3F44();

  v1 = *(v0 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__allTime);

  return v1;
}

uint64_t sub_B3988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a1 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__allTime);
  *v5 = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
}

uint64_t sub_B3A10()
{
  swift_getKeyPath();
  sub_B69F4(&qword_108F28, type metadata accessor for InsightsDataManager);
  sub_C3F44();
}

uint64_t sub_B3ABC(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__places) = a2;
}

uint64_t sub_B3B00()
{
  sub_B6A68(v0 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__lastUpdated, type metadata accessor for InsightsDataManager.LastUpdate);

  v1 = OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__calendar;
  v2 = sub_C3EA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_C060(v0 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__referenceDate, &qword_104800);

  sub_B6A68(v0 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__byEntryDate, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
  sub_B6A68(v0 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__streaks, type metadata accessor for InsightsDataManager.Streaks);

  v3 = OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager___observationRegistrar;
  v4 = sub_C3F84();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_B3CB8()
{
  sub_B3B00();

  return swift_deallocClassInstance();
}

void sub_B3D38()
{
  type metadata accessor for InsightsDataManager.LastUpdate(319);
  if (v0 <= 0x3F)
  {
    sub_C3EA4();
    if (v1 <= 0x3F)
    {
      sub_B0F88();
      if (v2 <= 0x3F)
      {
        type metadata accessor for InsightsDataManager.EntrySummaryGroup(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for InsightsDataManager.Streaks(319);
          if (v4 <= 0x3F)
          {
            sub_C3F84();
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_B3FA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_B3FE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_B4038(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_B4080(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_B40F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreakSummary();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_B4174(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreakSummary();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_B41E4()
{
  result = type metadata accessor for StreakSummary();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_B4270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3CB0(&qword_108F30);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_C3CB4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 36);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_B4380(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_3CB0(&qword_108F30);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_C3CB4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 36);

    return v13(v14, a2, a2, v12);
  }
}

void sub_B4488()
{
  sub_B4574(319, &qword_109D50, &type metadata for InsightsDataManager.TimeSummary, type metadata accessor for DateBinDictionary);
  if (v0 <= 0x3F)
  {
    sub_B4574(319, &unk_109D58, &type metadata for Int, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_C3CB4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_B4574(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_B45C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_B460C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_B4670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_C3CB4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_B4740(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_C3CB4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_B47F8()
{
  sub_C3CB4();
  if (v0 <= 0x3F)
  {
    sub_B4884();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_B4884()
{
  if (!qword_109E00)
  {
    sub_B48E0();
    v0 = sub_C5834();
    if (!v1)
    {
      atomic_store(v0, &qword_109E00);
    }
  }
}

unint64_t sub_B48E0()
{
  result = qword_109E08;
  if (!qword_109E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109E08);
  }

  return result;
}

uint64_t sub_B4944(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6F746F6870;
    v7 = 0x6F69647561;
    v8 = 0x616964656DLL;
    if (a1 != 3)
    {
      v8 = 0x6563616C70;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6F65646976;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x4D664F6574617473;
    v2 = 0x676E6977617264;
    if (a1 != 9)
    {
      v2 = 0x69747465666E6F63;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x61737265766E6F63;
    v4 = 0x7974697669746361;
    if (a1 != 6)
    {
      v4 = 0x697463656C666572;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_B4A9C(void *a1)
{
  v3 = v1;
  v5 = sub_3CB0(&qword_109FD0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_13DC4(a1, a1[3]);
  sub_B7350();
  sub_C6384();
  v14 = 0;
  sub_C3D14();
  sub_B69F4(&qword_108040, &type metadata accessor for UUID);
  sub_C61F4();
  if (!v2)
  {
    v9 = type metadata accessor for InsightsDataManager.EntrySummary(0);
    v13 = 1;
    sub_C3CB4();
    sub_B69F4(&qword_1065B0, &type metadata accessor for Date);
    sub_C61F4();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    sub_3CB0(&qword_109FB8);
    sub_B73F8(&qword_109FD8, sub_B747C);
    sub_C61F4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_B4D30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v26 = sub_C3CB4();
  v23 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_C3D14();
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v28 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_3CB0(&qword_109FA8);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v8 = &v20 - v7;
  v9 = type metadata accessor for InsightsDataManager.EntrySummary(0);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13DC4(a1, a1[3]);
  sub_B7350();
  v29 = v8;
  v12 = v30;
  sub_C6374();
  if (v12)
  {
    return sub_BED0(a1);
  }

  v30 = a1;
  v13 = v25;
  v14 = v26;
  v34 = 0;
  sub_B69F4(&qword_107FB0, &type metadata accessor for UUID);
  sub_C6194();
  v15 = *(v24 + 32);
  v21 = v11;
  v16 = v28;
  v28 = v5;
  v15(v11, v16, v5);
  v33 = 1;
  sub_B69F4(&qword_106578, &type metadata accessor for Date);
  sub_C6194();
  (*(v23 + 32))(&v21[*(v9 + 20)], v4, v14);
  sub_3CB0(&qword_109FB8);
  v32 = 2;
  sub_B73F8(&qword_109FC0, sub_B73A4);
  sub_C6194();
  v17 = v21;
  v18 = v30;
  (*(v13 + 8))(v29, v27);
  *(v17 + *(v9 + 24)) = v31;
  sub_B6600(v17, v22, type metadata accessor for InsightsDataManager.EntrySummary);
  sub_BED0(v18);
  return sub_B6A68(v17, type metadata accessor for InsightsDataManager.EntrySummary);
}

uint64_t sub_B5268(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_B4944(*a1);
  v5 = v4;
  if (v3 == sub_B4944(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_C6244();
  }

  return v8 & 1;
}

Swift::Int sub_B52F0()
{
  v1 = *v0;
  sub_C62F4();
  sub_B4944(v1);
  sub_C5514();

  return sub_C6344();
}

uint64_t sub_B5354()
{
  sub_B4944(*v0);
  sub_C5514();
}

Swift::Int sub_B53A8()
{
  v1 = *v0;
  sub_C62F4();
  sub_B4944(v1);
  sub_C5514();

  return sub_C6344();
}

uint64_t sub_B5408@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_B74D0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_B5438@<X0>(uint64_t *a1@<X8>)
{
  result = sub_B4944(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_B5514()
{
  v1 = 0x7461447972746E65;
  if (*v0 != 1)
  {
    v1 = 0x7079547465737361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_B556C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_B7688(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_B55A0(uint64_t a1)
{
  v2 = sub_B7350();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_B55DC(uint64_t a1)
{
  v2 = sub_B7350();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_B5648(uint64_t a1)
{
  v3 = *v1;
  if (*v1 > 1)
  {
    if (v3 == 2)
    {
      v4 = 2;
      goto LABEL_11;
    }

    if (v3 == 3)
    {
      v4 = 3;
      goto LABEL_11;
    }

LABEL_8:
    sub_C6304(4uLL);
    sub_C5484();
    sub_C5514();

    goto LABEL_12;
  }

  if (!v3)
  {
    v4 = 0;
    goto LABEL_11;
  }

  if (v3 != 1)
  {
    goto LABEL_8;
  }

  v4 = 1;
LABEL_11:
  sub_C6304(v4);
LABEL_12:
  if (*(v1 + 16) == 1)
  {
    sub_C6314(0);
  }

  else
  {
    v5 = *(v1 + 8);
    sub_C6314(1u);
    sub_C6304(v5);
  }

  sub_B5948(a1, *(v1 + 24));
  return sub_C5D54();
}

id sub_B5744@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_A5B84(v2);
}

Swift::Int sub_B5750()
{
  sub_C62F4();
  sub_B5648(v1);
  return sub_C6344();
}

Swift::Int sub_B5794()
{
  sub_C62F4();
  sub_B5648(v1);
  return sub_C6344();
}

uint64_t sub_B57D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_B5B60(v5, v7) & 1;
}

uint64_t sub_B581C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_C3D14();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_B588C()
{
  result = qword_109E40;
  if (!qword_109E40)
  {
    sub_28D98(&qword_109E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109E40);
  }

  return result;
}

unint64_t sub_B58F4()
{
  result = qword_109E50;
  if (!qword_109E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109E50);
  }

  return result;
}

void sub_B5948(uint64_t a1, uint64_t a2)
{
  v3 = sub_C6344();
  if ((a2 & 0xC000000000000001) != 0)
  {

    sub_C5EE4();
    sub_BE28(0, &qword_1047A0);
    sub_2CBF8();
    sub_C5824();
    a2 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v4 = a2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a2 + 56);

    v6 = 0;
  }

  v11 = 0;
  v12 = (v5 + 64) >> 6;
  while (a2 < 0)
  {
    if (!sub_C5F24())
    {
LABEL_20:
      sub_B824();
      sub_C6304(v11);
      return;
    }

    sub_BE28(0, &qword_1047A0);
    swift_dynamicCast();
    v15 = v18;
LABEL_10:
    v16 = sub_C5D34(v3);

    v11 ^= v16;
  }

  if (v7)
  {
    v13 = v6;
LABEL_9:
    v14 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v18 = *(*(a2 + 48) + ((v13 << 9) | (8 * v14)));
    v15 = v18;
    goto LABEL_10;
  }

  v17 = v6;
  while (1)
  {
    v13 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v13 >= v12)
    {
      goto LABEL_20;
    }

    v7 = *(v4 + 8 * v13);
    ++v17;
    if (v7)
    {
      v6 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_B5B60(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v5 != 2)
      {
        return 0;
      }

      goto LABEL_17;
    }

    if (v4 == 3)
    {
      if (v5 != 3)
      {
        return 0;
      }

      goto LABEL_17;
    }
  }

  else
  {
    if (!v4)
    {
      if (v5)
      {
        return 0;
      }

      goto LABEL_17;
    }

    if (v4 == 1)
    {
      if (v5 != 1)
      {
        return 0;
      }

      goto LABEL_17;
    }
  }

  if (v5 < 4)
  {
    return 0;
  }

  v6 = sub_C5484();
  v8 = v7;
  if (v6 == sub_C5484() && v8 == v9)
  {
  }

  else
  {
    v13 = sub_C6244();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_17:
  v10 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  sub_79744(*(a1 + 24), *(a2 + 24));
  if (v11)
  {
    sub_BE28(0, &qword_108C38);
    return sub_C5D44() & 1;
  }

  return 0;
}

uint64_t sub_B5CCC(uint64_t a1, uint64_t a2)
{
  if (((sub_B1C70)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for InsightsDataManager.Streaks(0);
  if ((sub_B1C70(a1 + v4[5], a2 + v4[5]) & 1) == 0 || (sub_B1C70(a1 + v4[6], a2 + v4[6]) & 1) == 0 || (sub_B1C70(a1 + v4[7], a2 + v4[7]) & 1) == 0 || (sub_B1C70(a1 + v4[8], a2 + v4[8]) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[9];

  return sub_B1C70(a1 + v5, a2 + v5);
}

uint64_t sub_B5D8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_B5DF4(void *a1, uint64_t a2)
{
  v45 = a1;
  v46 = a2;
  v3 = type metadata accessor for UniformDateBins(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0) - 8;
  __chkstk_darwin(v44);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_C3EA4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Update = type metadata accessor for InsightsDataManager.LastUpdate(0);
  v13 = Update - 8;
  __chkstk_darwin(Update);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_C3B44();
  *&v15[*(v13 + 28)] = 0;
  *&v15[*(v13 + 32)] = &_swiftEmptySetSingleton;
  sub_B64DC(v15, v2 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__lastUpdated, type metadata accessor for InsightsDataManager.LastUpdate);
  *(v2 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager____lazy_storage___workContext) = 0;
  sub_C3DE4();
  v16 = *(v9 + 32);
  v42 = v2;
  v16(v2 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__calendar, v11, v8);
  v17 = OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__referenceDate;
  v18 = sub_C3CB4();
  v19 = *(*(v18 - 8) + 56);
  v19(v2 + v17, 1, 1, v18);
  v20 = (v2 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__wordCount);
  *v20 = 0;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = _swiftEmptyArrayStorage;
  v21 = type metadata accessor for CalendarBinningUnit(0);
  v22 = *(*(v21 - 8) + 56);
  v22(v6, 1, 1, v21);
  *&v6[*(v4 + 28)] = 0;
  *&v6[*(v4 + 32)] = 1;
  v23 = v43;
  sub_996B8(v6, v43);
  v24 = v44;
  v25 = v23 + *(v44 + 28);
  *v25 = 0;
  *(v25 + 8) = 1;
  v41 = v24[8];
  v22(v6, 1, 1, v21);
  *&v6[*(v4 + 28)] = 0;
  *&v6[*(v4 + 32)] = 1;
  sub_996B8(v6, v23 + v41);
  v41 = v24[9];
  v22(v6, 1, 1, v21);
  *&v6[*(v4 + 28)] = 0;
  *&v6[*(v4 + 32)] = 1;
  sub_996B8(v6, v23 + v41);
  v26 = v23 + v24[10];
  *v26 = 0;
  *(v26 + 8) = 1;
  sub_C3B54();
  v27 = v42;
  sub_B64DC(v23, v42 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__byEntryDate, type metadata accessor for InsightsDataManager.EntrySummaryGroup);
  v28 = v27 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__streaks;
  v19(v27 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__streaks, 1, 1, v18);
  v29 = type metadata accessor for StreakSummary();
  v19(v28 + v29[5], 1, 1, v18);
  v19(v28 + v29[6], 1, 1, v18);
  *(v28 + v29[7]) = 0;
  v30 = type metadata accessor for InsightsDataManager.Streaks(0);
  v31 = v28 + v30[5];
  v19(v31, 1, 1, v18);
  v19(v31 + v29[5], 1, 1, v18);
  v19(v31 + v29[6], 1, 1, v18);
  *(v31 + v29[7]) = 0;
  v32 = v28 + v30[6];
  v19(v32, 1, 1, v18);
  v19(v32 + v29[5], 1, 1, v18);
  v19(v32 + v29[6], 1, 1, v18);
  *(v32 + v29[7]) = 0;
  v33 = v28 + v30[7];
  v19(v33, 1, 1, v18);
  v19(v33 + v29[5], 1, 1, v18);
  v19(v33 + v29[6], 1, 1, v18);
  *(v33 + v29[7]) = 0;
  v34 = v28 + v30[8];
  v19(v34, 1, 1, v18);
  v19(v34 + v29[5], 1, 1, v18);
  v19(v34 + v29[6], 1, 1, v18);
  *(v34 + v29[7]) = 0;
  v35 = v28 + v30[9];
  v19(v35, 1, 1, v18);
  v19(v35 + v29[5], 1, 1, v18);
  v19(v35 + v29[6], 1, 1, v18);
  *(v35 + v29[7]) = 0;
  v36 = (v27 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__allTime);
  *v36 = _swiftEmptyArrayStorage;
  v36[1] = _swiftEmptyArrayStorage;
  v36[2] = 0;
  v36[3] = _swiftEmptyArrayStorage;
  *(v27 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__places) = _swiftEmptyArrayStorage;
  *(v27 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager__updateTask) = 0;
  sub_C3F74();
  v37 = v45;
  v38 = v46;
  *(v27 + 16) = v45;
  *(v27 + OBJC_IVAR____TtC20JournalNotifications19InsightsDataManager_options) = v38;
  v39 = v37;
  sub_88978();
  return v27;
}

uint64_t sub_B64DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_B6594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InsightsDataManager.Streaks(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_B6600(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_B6670(uint64_t a1, uint64_t a2)
{
  v4 = sub_C3CB4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3CB0(&qword_104800);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_3CB0(&qword_108DF8);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_7653C(a1, &v21 - v13);
  sub_7653C(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_7653C(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_B69F4(&qword_1047B8, &type metadata accessor for Date);
      v18 = sub_C53A4();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_C060(v14, &qword_104800);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_C060(v14, &qword_108DF8);
    v17 = 1;
    return v17 & 1;
  }

  sub_C060(v14, &qword_104800);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_B6984(uint64_t a1, uint64_t a2)
{
  v4 = sub_3CB0(&qword_104800);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_B69F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_B6A68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_B6ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_C3D14();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_C3CB4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_B6BFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_C3D14();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_C3CB4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_B6D24()
{
  sub_C3D14();
  if (v0 <= 0x3F)
  {
    sub_C3CB4();
    if (v1 <= 0x3F)
    {
      sub_A68F8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for InsightsDataManager.AssetCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InsightsDataManager.AssetCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_B6F10(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_B6F24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_B6F6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_B6FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_C3D14();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xB)
    {
      return v10 - 10;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_B70A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_C3D14();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 10;
  }

  return result;
}

uint64_t sub_B717C()
{
  result = sub_C3D14();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_B724C()
{
  result = qword_109F90;
  if (!qword_109F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109F90);
  }

  return result;
}

unint64_t sub_B72A4()
{
  result = qword_109F98;
  if (!qword_109F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109F98);
  }

  return result;
}

unint64_t sub_B72FC()
{
  result = qword_109FA0;
  if (!qword_109FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109FA0);
  }

  return result;
}

unint64_t sub_B7350()
{
  result = qword_109FB0;
  if (!qword_109FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109FB0);
  }

  return result;
}

unint64_t sub_B73A4()
{
  result = qword_109FC8;
  if (!qword_109FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109FC8);
  }

  return result;
}

uint64_t sub_B73F8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_28D98(&qword_109FB8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_B747C()
{
  result = qword_109FE0;
  if (!qword_109FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109FE0);
  }

  return result;
}

uint64_t sub_B74D0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_F0B10;
  v6._object = a2;
  v4 = sub_C6134(v3, v6);

  if (v4 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_B751C()
{
  result = qword_109FE8;
  if (!qword_109FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109FE8);
  }

  return result;
}

unint64_t sub_B7584()
{
  result = qword_109FF0;
  if (!qword_109FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109FF0);
  }

  return result;
}

unint64_t sub_B75DC()
{
  result = qword_109FF8;
  if (!qword_109FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109FF8);
  }

  return result;
}

unint64_t sub_B7634()
{
  result = qword_10A000;
  if (!qword_10A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10A000);
  }

  return result;
}

uint64_t sub_B7688(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_C6244() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461447972746E65 && a2 == 0xE900000000000065 || (sub_C6244() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7079547465737361 && a2 == 0xEA00000000007365)
  {

    return 2;
  }

  else
  {
    v6 = sub_C6244();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_B77B0()
{
  v0 = sub_C4CD4();
  sub_C0CC(v0, qword_10A010);
  v1 = sub_B680(v0, qword_10A010);
  if (qword_104300 != -1)
  {
    swift_once();
  }

  v2 = sub_B680(v0, qword_1156E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_B7878(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000001CLL;
  }

  else
  {
    v3 = 0xD00000000000001ALL;
  }

  if (v2)
  {
    v4 = "l.streakReminder";
  }

  else
  {
    v4 = "com.apple.journal.newEntry";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD00000000000001CLL;
  }

  else
  {
    v6 = 0xD00000000000001ALL;
  }

  if (*a2)
  {
    v7 = "com.apple.journal.newEntry";
  }

  else
  {
    v7 = "l.streakReminder";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_C6244();
  }

  return v9 & 1;
}

Swift::Int sub_B7924()
{
  sub_C62F4();
  sub_C5514();

  return sub_C6344();
}

uint64_t sub_B79A4()
{
  sub_C5514();
}

Swift::Int sub_B7A10()
{
  sub_C62F4();
  sub_C5514();

  return sub_C6344();
}

uint64_t sub_B7A8C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_F0C88;
  v8._object = v3;
  v5 = sub_C6134(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_B7AEC(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001CLL;
  }

  else
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v1)
  {
    v3 = "com.apple.journal.newEntry";
  }

  else
  {
    v3 = "l.streakReminder";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t *sub_B7B2C(uint64_t *result, uint64_t *a2)
{
  v2 = 1440 * *result;
  if ((*result * 1440) >> 64 != v2 >> 63)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = result[1];
  v4 = (v3 * 60) >> 64;
  v5 = 60 * v3;
  if (v4 != v5 >> 63)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = __OFADD__(v2, v5);
  v7 = v2 + v5;
  if (v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = result[2];
  v6 = __OFADD__(v7, v8);
  v9 = v7 + v8;
  if (v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = 1440 * *a2;
  if ((*a2 * 1440) >> 64 != v10 >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = a2[1];
  v12 = 60 * v11;
  if ((v11 * 60) >> 64 != (60 * v11) >> 63)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = __OFADD__(v10, v12);
  v13 = v10 + v12;
  if (v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = a2[2];
  v6 = __OFADD__(v13, v14);
  v15 = v13 + v14;
  if (!v6)
  {
    return (v9 == v15);
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_B7BE8()
{
  result = [objc_allocWithZone(type metadata accessor for JournalNotificationsManager()) init];
  qword_115778 = result;
  return result;
}

char *sub_B7C18()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_C3D54();
  __chkstk_darwin(v3 - 8);
  v73 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_C5414();
  __chkstk_darwin(v5 - 8);
  v72 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_C3934();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC20JournalNotifications27JournalNotificationsManager_defaults;
  sub_BE28(0, &qword_10A110);
  *&v0[v11] = sub_C5A74();
  v12 = &v0[OBJC_IVAR____TtC20JournalNotifications27JournalNotificationsManager_actionHandler];
  *v12 = 0;
  *(v12 + 1) = 0;
  if (sub_C49B4())
  {
    v13 = [objc_opt_self() currentNotificationCenter];
    *&v0[OBJC_IVAR____TtC20JournalNotifications27JournalNotificationsManager_notificationCenter] = v13;
    v14 = [objc_opt_self() mainBundle];
  }

  else
  {
    sub_C49A4();
    v15 = objc_allocWithZone(UNUserNotificationCenter);
    v16 = sub_C5444();

    v17 = [v15 initWithBundleIdentifier:v16];

    *&v1[OBJC_IVAR____TtC20JournalNotifications27JournalNotificationsManager_notificationCenter] = v17;
    v18 = sub_C49A4();
    v20 = v19;
    v21 = objc_allocWithZone(LSApplicationRecord);
    v22 = sub_BA308(v18, v20, 0);
    v23 = [v22 URL];

    sub_C38F4();
    v24 = objc_allocWithZone(NSBundle);
    sub_C38D4(v25);
    v27 = v26;
    v28 = [v24 initWithURL:v26];

    (*(v8 + 8))(v10, v7);
    v14 = v28;
  }

  *&v1[OBJC_IVAR____TtC20JournalNotifications27JournalNotificationsManager_bundle] = v14;
  v75.receiver = v1;
  v75.super_class = ObjectType;
  v70 = objc_msgSendSuper2(&v75, "init");
  v71 = OBJC_IVAR____TtC20JournalNotifications27JournalNotificationsManager_notificationCenter;
  v29 = *&v70[OBJC_IVAR____TtC20JournalNotifications27JournalNotificationsManager_notificationCenter];
  v30 = v70;
  sub_3CB0(&qword_106E78);
  inited = swift_initStackObject();
  v63 = xmmword_D2890;
  *(inited + 16) = xmmword_D2890;
  v32 = inited;
  v65 = inited;
  v33 = v30;
  v74 = v33;
  v69 = v29;
  v34 = sub_C5444();
  v67 = sub_BE28(0, &unk_10A120);
  isa = sub_C5664().super.isa;
  v36 = sub_C5664().super.isa;
  v66 = objc_opt_self();
  v37 = [v66 categoryWithIdentifier:v34 actions:isa intentIdentifiers:v36 options:0];

  *(v32 + 32) = v37;
  v68 = v32 + 32;
  v64 = "sd.MOUserNotifications";
  v38 = swift_allocObject();
  *(v38 + 16) = v63;
  sub_C53B4();
  v39 = OBJC_IVAR____TtC20JournalNotifications27JournalNotificationsManager_bundle;
  v40 = *&v33[OBJC_IVAR____TtC20JournalNotifications27JournalNotificationsManager_bundle];
  sub_C3D44();
  sub_C54A4();
  v41 = sub_C5444();
  v42 = objc_opt_self();
  v43 = [v42 iconWithSystemImageName:v41];

  v44 = sub_C5444();
  v45 = sub_C5444();

  v46 = objc_opt_self();
  v47 = [v46 actionWithIdentifier:v44 title:v45 options:5 icon:v43];

  *(v38 + 32) = v47;
  sub_C53B4();
  v48 = *&v74[v39];
  sub_C3D44();
  sub_C54A4();
  v49 = sub_C5444();
  v50 = [v42 iconWithSystemImageName:v49];

  v51 = sub_C5444();
  v52 = sub_C5444();

  v53 = [v46 actionWithIdentifier:v51 title:v52 options:1 icon:v50];

  *(v38 + 40) = v53;
  v54 = sub_C5444();
  v55 = sub_C5664().super.isa;

  v56 = sub_C5664().super.isa;
  v57 = [v66 categoryWithIdentifier:v54 actions:v55 intentIdentifiers:v56 options:0];

  v58 = v65;
  *(v65 + 40) = v57;
  sub_5A520(v58);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_BE28(0, &qword_107740);
  sub_BBC8C();
  v59 = sub_C57E4().super.isa;

  v60 = v69;
  [v69 setNotificationCategories:v59];

  v61 = v74;
  [*&v70[v71] setDelegate:v74];

  return v61;
}

uint64_t sub_B8454(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 472) = a4;
  *(v5 + 184) = a3;
  *(v5 + 192) = v4;
  v7 = sub_C36C4();
  *(v5 + 200) = v7;
  *(v5 + 208) = *(v7 - 8);
  *(v5 + 216) = swift_task_alloc();
  sub_C53F4();
  *(v5 + 224) = swift_task_alloc();
  sub_C3D54();
  *(v5 + 232) = swift_task_alloc();
  sub_C5414();
  *(v5 + 240) = swift_task_alloc();
  v8 = sub_C3E84();
  *(v5 + 248) = v8;
  *(v5 + 256) = *(v8 - 8);
  *(v5 + 264) = swift_task_alloc();
  v9 = sub_C3EA4();
  *(v5 + 272) = v9;
  *(v5 + 280) = *(v9 - 8);
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  sub_3CB0(&qword_104800);
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  v10 = sub_C3CB4();
  *(v5 + 328) = v10;
  *(v5 + 336) = *(v10 - 8);
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v11 = sub_C5724();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  *(v5 + 376) = v11;
  *(v5 + 384) = v13;

  return _swift_task_switch(sub_B876C, v11, v13);
}

uint64_t sub_B876C()
{
  v1 = *(v0 + 184);
  v2 = type metadata accessor for StreakSummary();
  v3 = *(v1 + *(v2 + 28));
  if (v3 < 2)
  {
LABEL_10:
    v39 = *(*(v0 + 192) + OBJC_IVAR____TtC20JournalNotifications27JournalNotificationsManager_notificationCenter);
    isa = sub_C5664().super.isa;
    [v39 removePendingNotificationRequestsWithIdentifiers:isa];

    v41 = *(v0 + 8);

    return v41();
  }

  v4 = *(v0 + 328);
  v5 = *(v0 + 336);
  v6 = *(v0 + 320);
  sub_B954(v1 + *(v2 + 24), v6, &qword_104800);
  v7 = *(v5 + 48);
  *(v0 + 392) = v7;
  *(v0 + 400) = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v7(v6, 1, v4) == 1)
  {
    sub_C060(*(v0 + 320), &qword_104800);
    goto LABEL_10;
  }

  v55 = v3;
  v8 = *(v0 + 368);
  v9 = *(v0 + 328);
  v10 = *(v0 + 336);
  v12 = *(v0 + 312);
  v11 = *(v0 + 320);
  v13 = *(v0 + 256);
  v14 = *(v0 + 264);
  v15 = *(v0 + 248);
  v16 = *(v10 + 32);
  *(v0 + 408) = v16;
  *(v0 + 416) = (v10 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v56 = v16;
  v57 = v9;
  v16(v8, v11);
  sub_C3E64();
  (*(v13 + 104))(v14, enum case for Calendar.Component.day(_:), v15);
  sub_C3E34();
  (*(v13 + 8))(v14, v15);
  if (v7(v12, 1, v57) == 1)
  {
    v17 = *(v0 + 368);
    v18 = *(v0 + 328);
    v19 = *(v0 + 336);
    v20 = *(v0 + 312);
    (*(*(v0 + 280) + 8))(*(v0 + 296), *(v0 + 272));
    (*(v19 + 8))(v17, v18);
    sub_C060(v20, &qword_104800);
    goto LABEL_10;
  }

  v21 = *(v0 + 352);
  v22 = *(v0 + 328);
  v23 = *(v0 + 336);
  v56(*(v0 + 360), *(v0 + 312), v22);
  sub_C3C74();
  v24 = sub_C3C14();
  v25 = *(v23 + 8);
  *(v0 + 424) = v25;
  *(v0 + 432) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v21, v22);
  if ((v24 & 1) == 0)
  {
    v34 = *(v0 + 368);
    v35 = *(v0 + 328);
    v36 = *(v0 + 296);
    v37 = *(v0 + 272);
    v38 = *(v0 + 280);
    v25(*(v0 + 360), v35);
    (*(v38 + 8))(v36, v37);
    v25(v34, v35);
    goto LABEL_10;
  }

  v26 = *(v0 + 192);
  v27 = *(v0 + 472);
  v28 = [objc_allocWithZone(UNMutableNotificationContent) init];
  *(v0 + 440) = v28;
  sub_C53B4();
  v29 = *(v26 + OBJC_IVAR____TtC20JournalNotifications27JournalNotificationsManager_bundle);
  sub_C3D44();
  sub_C54A4();
  v30 = sub_C5444();

  [v28 setTitle:v30];

  v31 = sub_C5444();
  [v28 setCategoryIdentifier:v31];

  sub_C53E4();
  v59._object = 0x80000000000CBAD0;
  v59._countAndFlagsBits = 0x1000000000000017;
  sub_C53D4(v59);
  if (v27)
  {
    *(v0 + 168) = v55;
    sub_C53C4();
    v32 = "You’ve journaled for ";
    v33._countAndFlagsBits = 0xD00000000000003CLL;
  }

  else
  {
    *(v0 + 176) = v55;
    sub_C53C4();
    v32 = "v16@?0@NSError8";
    v33._countAndFlagsBits = 0xD00000000000003BLL;
  }

  v33._object = (v32 | 0x8000000000000000);
  sub_C53D4(v33);
  sub_C5404();
  v43 = v29;
  sub_C3D44();
  sub_C54A4();
  v44 = sub_C5444();

  [v28 setBody:v44];

  if (qword_104258 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 192);
  sub_C3DB4();
  v46 = *(v45 + OBJC_IVAR____TtC20JournalNotifications27JournalNotificationsManager_defaults);
  [v46 streakReminderHour];
  sub_C3674();
  [v46 streakReminderMinute];
  sub_C3694();
  v47 = sub_C3654().super.isa;
  v48 = [objc_opt_self() triggerWithDateMatchingComponents:v47 repeats:0];
  *(v0 + 448) = v48;

  v49 = v28;
  v50 = v48;
  v51 = sub_C5444();
  v52 = [objc_opt_self() requestWithIdentifier:v51 content:v49 trigger:v50];
  *(v0 + 456) = v52;

  v53 = *(v45 + OBJC_IVAR____TtC20JournalNotifications27JournalNotificationsManager_notificationCenter);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_B8F8C;
  v54 = swift_continuation_init();
  *(v0 + 136) = sub_3CB0(&unk_10A0E0);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_B9818;
  *(v0 + 104) = &unk_F41B8;
  *(v0 + 112) = v54;
  [v53 addNotificationRequest:v52 withCompletionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_B8F8C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 464) = v2;
  v3 = *(v1 + 384);
  v4 = *(v1 + 376);
  if (v2)
  {
    v5 = sub_B953C;
  }

  else
  {
    v5 = sub_B90BC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_B90BC()
{
  v56 = v0;
  if (qword_104338 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  v5 = sub_C4CD4();
  sub_B680(v5, qword_10A010);
  (*(v4 + 16))(v1, v2, v3);
  v6 = sub_C4CB4();
  v7 = sub_C5A24();
  if (os_log_type_enabled(v6, v7))
  {
    v52 = v7;
    v8 = *(v0 + 392);
    v9 = *(v0 + 328);
    v10 = *(v0 + 304);
    v11 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v55 = v48;
    buf = v11;
    *v11 = 136315138;
    swift_beginAccess();
    sub_C3E14();
    v54 = v6;
    if (v8(v10, 1, v9) == 1)
    {
      v12 = *(v0 + 392);
      v13 = *(v0 + 328);
      v14 = *(v0 + 304);
      sub_C3B54();
      if (v12(v14, 1, v13) != 1)
      {
        sub_C060(*(v0 + 304), &qword_104800);
      }
    }

    else
    {
      (*(v0 + 408))(*(v0 + 344), *(v0 + 304), *(v0 + 328));
    }

    v36 = *(v0 + 456);
    v37 = *(v0 + 448);
    v23 = *(v0 + 424);
    v39 = *(v0 + 360);
    v40 = *(v0 + 440);
    v24 = *(v0 + 344);
    v25 = *(v0 + 328);
    v26 = *(v0 + 288);
    v28 = *(v0 + 272);
    v27 = *(v0 + 280);
    v45 = *(v0 + 216);
    v47 = *(v0 + 368);
    v38 = *(v0 + 208);
    v41 = *(v0 + 296);
    v43 = *(v0 + 200);
    sub_BA8C8();
    v29 = sub_C6214();
    v31 = v30;
    v23(v24, v25);
    v32 = *(v27 + 8);
    v32(v26, v28);
    v33 = sub_BA920(v29, v31, &v55);

    *(buf + 4) = v33;
    _os_log_impl(&dword_0, v54, v52, "Scheduled next streak reminder notification for %s", buf, 0xCu);
    sub_BED0(v48);

    v23(v39, v25);
    v32(v41, v28);
    v23(v47, v25);
    (*(v38 + 8))(v45, v43);
  }

  else
  {
    v15 = *(v0 + 448);
    v16 = *(v0 + 440);
    v17 = *(v0 + 424);
    v53 = *(v0 + 368);
    v18 = *(v0 + 328);
    v44 = *(v0 + 360);
    v46 = *(v0 + 296);
    v42 = *(v0 + 288);
    v20 = *(v0 + 272);
    v19 = *(v0 + 280);
    v21 = *(v0 + 208);
    v49 = *(v0 + 200);
    bufa = *(v0 + 216);

    v22 = *(v19 + 8);
    v22(v42, v20);
    v17(v44, v18);
    v22(v46, v20);
    v17(v53, v18);
    (*(v21 + 8))(bufa, v49);
  }

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_B953C()
{
  swift_willThrow();
  if (qword_104338 != -1)
  {
    swift_once();
  }

  v1 = sub_C4CD4();
  sub_B680(v1, qword_10A010);
  swift_errorRetain();
  v2 = sub_C4CB4();
  v3 = sub_C5A44();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "Failed to schedule streak reminder: %@", v4, 0xCu);
    sub_C060(v5, &qword_1050F0);
  }

  v7 = v0[57];
  v18 = v0[56];
  v8 = v2;
  v9 = v0[53];
  v10 = v0[45];
  v11 = v0[46];
  v12 = v0[41];
  v19 = v0[37];
  v20 = v0[55];
  v13 = v0[35];
  v17 = v0[34];
  v14 = v0[26];
  v21 = v0[25];
  v22 = v0[27];

  swift_willThrow();
  v9(v10, v12);
  (*(v13 + 8))(v19, v17);
  v9(v11, v12);
  (*(v14 + 8))(v22, v21);

  v15 = v0[1];

  return v15();
}

uint64_t sub_B9818(uint64_t a1, void *a2)
{
  v3 = sub_13DC4((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_3CB0(&unk_10A100);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_B9A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_C5774();
  v4[6] = sub_C5764();
  v6 = sub_C5724();

  return _swift_task_switch(sub_B9AF0, v6, v5);
}

uint64_t sub_B9AF0()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v0[7] = _Block_copy(v2);
  v5 = v4;
  v6 = v3;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_B9BD4;
  v9 = v0[3];

  return sub_BB2C4(v9);
}

uint64_t sub_B9BD4()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_B9ED4(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_B9FC0;

  return (sub_BB9B8)(0, 0, v9);
}

uint64_t sub_B9FC0(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  v3[2](v3, a1);
  _Block_release(v3);
  v7 = *(v9 + 8);

  return v7();
}

unint64_t sub_BA1E8()
{
  result = qword_10A0D0;
  if (!qword_10A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10A0D0);
  }

  return result;
}

uint64_t *sub_BA23C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result >> 5;
  if (v3 < 0x13B)
  {
    v4 = *result / 0x5A0u;
    v7 = v2 % 0x5A0u;
    v5 = v2 % 0x5A0u / 0x3C;
    v6 = v7 % 0x3Cu;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v3 > 0x13A;
  return result;
}

void sub_BA2A8(uint64_t *a1@<X8>)
{
  v2 = 1440 * *v1;
  if ((*v1 * 1440) >> 64 != v2 >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v1[1];
  v4 = (v3 * 60) >> 64;
  v5 = 60 * v3;
  if (v4 != v5 >> 63)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = __OFADD__(v2, v5);
  v7 = v2 + v5;
  if (v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v1[2];
  v6 = __OFADD__(v7, v8);
  v9 = v7 + v8;
  if (!v6)
  {
    *a1 = v9;
    return;
  }

LABEL_9:
  __break(1u);
}

id sub_BA308(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_C5444();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_C37C4();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_BA3E4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1D138;

  return v6();
}

uint64_t sub_BA4CC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1CE7C;

  return v7();
}

uint64_t sub_BA5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_3CB0(&qword_104E88);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_B954(a3, v23 - v10, &qword_104E88);
  v12 = sub_C5794();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_C060(v11, &qword_104E88);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_C5784();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_C5724();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_C54E4() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_C060(a3, &qword_104E88);

    return v21;
  }

LABEL_8:
  sub_C060(a3, &qword_104E88);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

unint64_t sub_BA8C8()
{
  result = qword_10A0F0;
  if (!qword_10A0F0)
  {
    sub_C3CB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10A0F0);
  }

  return result;
}

unint64_t sub_BA920(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_BA9EC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_B760(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_BED0(v11);
  return v7;
}

unint64_t sub_BA9EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_BAAF8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_C6044();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}