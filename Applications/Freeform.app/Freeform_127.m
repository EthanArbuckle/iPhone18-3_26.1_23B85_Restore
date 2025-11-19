uint64_t sub_100F6A550(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v196 = a1;
  v217 = type metadata accessor for Calendar.Component();
  v8 = *(v217 - 8);
  __chkstk_darwin(v217);
  v216 = &v193 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = type metadata accessor for Date();
  v10 = *(v215 - 8);
  v11 = __chkstk_darwin(v215);
  v214 = &v193 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v213 = &v193 - v13;
  v212 = type metadata accessor for Calendar();
  result = __chkstk_darwin(v212);
  v226 = &v193 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3[1];
  v219 = a3;
  if (v17 < 1)
  {
    v19 = _swiftEmptyArrayStorage;
LABEL_201:
    v235 = *v196;
    if (v235)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_236;
      }

      goto LABEL_203;
    }

LABEL_242:
    __break(1u);
    return result;
  }

  v195 = a4;
  v18 = 0;
  v211 = enum case for Calendar.Component.day(_:);
  v210 = (v8 + 104);
  v209 = (v8 + 8);
  v208 = (v10 + 8);
  v207 = (v15 + 8);
  v19 = _swiftEmptyArrayStorage;
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v199 = v19;
    v198 = v18;
    if (v18 + 1 >= v17)
    {
      goto LABEL_78;
    }

    v22 = *v219;
    v23 = *v219 + 56 * v21;
    v25 = *(v23 + 16);
    v24 = *(v23 + 32);
    v26 = *v23;
    v232 = *(v23 + 48);
    v231[1] = v25;
    v231[2] = v24;
    v231[0] = v26;
    v27 = (v22 + 56 * v18);
    v29 = v27[1];
    v28 = v27[2];
    v30 = v27[3].i8[0];
    v233[0] = *v27;
    v234 = v30;
    v233[1] = v29;
    v233[2] = v28;
    v235 = v17;
    sub_1000693DC(v231, v230);
    sub_1000693DC(v233, v230);
    LODWORD(v229) = sub_100D27DE4(v231, v233);
    sub_1000698D0(v233);
    result = sub_1000698D0(v231);
    v31 = v235;
    v21 = v20 + 2;
    if (v20 + 2 < v235)
    {
      break;
    }

    if (v229)
    {
LABEL_8:
      if (v21 < v20)
      {
        goto LABEL_235;
      }

      goto LABEL_9;
    }

LABEL_78:
    v82 = v219[1];
    if (v21 >= v82)
    {
      goto LABEL_148;
    }

    if (__OFSUB__(v21, v20))
    {
      goto LABEL_232;
    }

    if (v21 - v20 >= v195)
    {
      goto LABEL_148;
    }

    v83 = (v20 + v195);
    if (__OFADD__(v20, v195))
    {
      goto LABEL_233;
    }

    if (v83 >= v82)
    {
      v83 = v219[1];
    }

    if (v83 < v20)
    {
LABEL_234:
      __break(1u);
      goto LABEL_235;
    }

    if (v21 == v83)
    {
      goto LABEL_148;
    }

    v194 = v5;
    v84 = *v219;
    v85 = *v219 + 56 * v21 - 56;
    v86 = v20 - v21;
    v220 = *v219;
    v197 = v83;
    while (2)
    {
      v221 = v21;
      v205 = v86;
      v206 = v85;
      while (1)
      {
        v89 = v85 + 56;
        v88 = *(v85 + 56);
        v91 = *(v85 + 64);
        v90 = *(v85 + 72);
        v93 = *(v85 + 80);
        v92 = *(v85 + 88);
        v94 = *(v85 + 96);
        v95 = *(v85 + 104);
        v96 = *v85;
        v97 = *(v85 + 8);
        v98 = *(v85 + 16);
        v99 = *(v85 + 24);
        v101 = *(v85 + 32);
        v100 = *(v85 + 40);
        v102 = v95 >> 6;
        v103 = *(v85 + 48);
        if (v95 >> 6 <= 1)
        {
          if (!v102)
          {
            goto LABEL_141;
          }

          if ((v103 & 0xC0) == 0x40)
          {
            v104 = *(v85 + 56);
            v235 = *(v85 + 64);
            v227 = v98;
            v228 = v93;
            v229 = v92;
            v224 = v94;
            v225 = v100;
            v223 = v90;
            v222 = v88;
            sub_100076F8C(v104, v235, v90, v93, v92, v94, v95);
            sub_100076F8C(v96, v97, v227, v99, v101, v225, v103);
            static Calendar.current.getter();
            v105 = v213;
            Date.init(timeIntervalSinceReferenceDate:)();
            v106 = v214;
            Date.init(timeIntervalSinceReferenceDate:)();
            v107 = v216;
            v108 = v217;
            (*v210)(v216, v211, v217);
            v227 = Calendar.compare(_:to:toGranularity:)();
            (*v209)(v107, v108);
            v109 = *v208;
            v110 = v215;
            (*v208)(v106, v215);
            v109(v105, v110);
            (*v207)(v226, v212);
            result = sub_1000771BC(v222, v235, v223, v228, v229, v224, v95);
            v84 = v220;
            if (v227 != -1)
            {
              goto LABEL_90;
            }

            goto LABEL_141;
          }

          goto LABEL_121;
        }

        if (v102 != 2)
        {
          break;
        }

        if ((v103 & 0xC0) == 0x80)
        {
          if ((v95 & 1) == 0)
          {
            if (v103)
            {
              goto LABEL_90;
            }

            v227 = *(v85 + 16);
            v203 = v99;
            v204 = v101;
            v225 = v100;
            if (v91)
            {
              v111 = v88;
            }

            else
            {
              v111 = 0;
            }

            v112 = 0xE000000000000000;
            if (v91)
            {
              v113 = v91;
            }

            else
            {
              v113 = 0xE000000000000000;
            }

            v218 = v96;
            if (v97)
            {
              v114 = v96;
            }

            else
            {
              v114 = 0;
            }

            if (v97)
            {
              v112 = v97;
            }

            v229 = v92;
            v228 = v93;
            v224 = v94;
            v223 = v90;
            v222 = v88;
            v202 = v113;
            v201 = v112;
            if (v111 == v114 && v113 == v112)
            {
              v131 = v91;
              sub_100076F8C(v88, v91, v90, v93, v92, v94, v95);
              v132 = v218;
              v133 = v227;
              v134 = v203;
              v135 = v204;
              v136 = v225;
              sub_100076F8C(v218, v97, v227, v203, v204, v225, v103);

              sub_1000771BC(v132, v97, v133, v134, v135, v136, v103);
              result = sub_1000771BC(v222, v131, v223, v228, v229, v224, v95);
              goto LABEL_89;
            }

            v235 = v91;
            v115 = v94;
            v116 = v90;
            v117 = v88;
            v200 = _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_100076F8C(v117, v235, v116, v228, v229, v115, v95);
            v118 = v203;
            v119 = v204;
            v120 = v225;
            sub_100076F8C(v218, v97, v227, v203, v204, v225, v103);

            sub_1000771BC(v218, v97, v227, v118, v119, v120, v103);
            result = sub_1000771BC(v222, v235, v223, v228, v229, v224, v95);
            v84 = v220;
            if ((v200 & 1) == 0)
            {
              goto LABEL_90;
            }
          }

          goto LABEL_141;
        }

LABEL_121:
        if (v103 < 0x40)
        {
          goto LABEL_90;
        }

        v121 = 0;
        if (v103 >= 0xC0)
        {
          goto LABEL_123;
        }

LABEL_125:
        if (!v121 || v95 != 192 || v88 != 1 || v90 | v91 | v93 | v92 | v94)
        {
          if (v103 < 0xC0)
          {
            goto LABEL_140;
          }

          v122 = v98 | v97 | v99 | v101 | v100;
          if (v103 == 192 && v96 == 1 && !v122)
          {
            v87 = 1;
            goto LABEL_88;
          }

          if (v103 == 192 && v96 == 2 && !v122)
          {
            result = sub_100076F8C(2, 0, v98, *(v85 + 24), *(v85 + 32), v100, 0xC0u);
            v84 = v220;
          }

          else
          {
LABEL_140:
            if (v121 && v95 == 192 && v88 == 2 && !(v90 | v91 | v93 | v92 | v94))
            {
              goto LABEL_90;
            }
          }
        }

LABEL_141:
        if (!v84)
        {
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
          goto LABEL_241;
        }

        v123 = *(v85 + 104);
        v124 = *(v85 + 72);
        v125 = *(v85 + 88);
        v126 = *v85;
        v127 = *(v85 + 16);
        *v85 = *(v85 + 56);
        *(v85 + 16) = v124;
        v128 = *(v85 + 32);
        v129 = *(v85 + 48);
        *(v85 + 32) = v125;
        *(v85 + 48) = v123;
        v85 -= 56;
        *v89 = v126;
        *(v89 + 16) = v127;
        *(v89 + 32) = v128;
        *(v89 + 48) = v129;
        if (__CFADD__(v86++, 1))
        {
          goto LABEL_90;
        }
      }

      if (v103 < 0x40)
      {
        goto LABEL_90;
      }

      v121 = 1;
      if (!(v90 | v91 | v88 | v93 | v92 | v94) && v95 == 192)
      {
        goto LABEL_141;
      }

      if (v103 < 0xC0)
      {
        goto LABEL_125;
      }

LABEL_123:
      if (v98 | v97 | v96 | v99 | v101 | v100 || v103 != 192)
      {
        goto LABEL_125;
      }

      v87 = 0;
LABEL_88:
      result = sub_100076F8C(v87, 0, v98, *(v85 + 24), *(v85 + 32), v100, 0xC0u);
LABEL_89:
      v84 = v220;
LABEL_90:
      v21 = v221 + 1;
      v85 = v206 + 56;
      v86 = v205 - 1;
      if ((v221 + 1) != v197)
      {
        continue;
      }

      break;
    }

    v21 = v197;
    v5 = v194;
    v19 = v199;
    v20 = v198;
LABEL_148:
    if (v21 < v20)
    {
      goto LABEL_231;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100B355CC(0, *(v19 + 16) + 1, 1, v19);
      v19 = result;
    }

    v138 = *(v19 + 16);
    v137 = *(v19 + 24);
    v139 = v138 + 1;
    if (v138 >= v137 >> 1)
    {
      result = sub_100B355CC((v137 > 1), v138 + 1, 1, v19);
      v19 = result;
    }

    *(v19 + 16) = v139;
    v140 = v19 + 32;
    v141 = (v19 + 32 + 16 * v138);
    *v141 = v20;
    v141[1] = v21;
    v142 = *v196;
    if (!*v196)
    {
LABEL_241:
      __break(1u);
      goto LABEL_242;
    }

    v221 = v21;
    if (v138)
    {
      while (2)
      {
        v143 = v139 - 1;
        if (v139 >= 4)
        {
          v148 = v140 + 16 * v139;
          v149 = *(v148 - 64);
          v150 = *(v148 - 56);
          v154 = __OFSUB__(v150, v149);
          v151 = v150 - v149;
          if (v154)
          {
            goto LABEL_216;
          }

          v153 = *(v148 - 48);
          v152 = *(v148 - 40);
          v154 = __OFSUB__(v152, v153);
          v146 = v152 - v153;
          v147 = v154;
          if (v154)
          {
            goto LABEL_217;
          }

          v155 = (v19 + 16 * v139);
          v157 = *v155;
          v156 = v155[1];
          v154 = __OFSUB__(v156, v157);
          v158 = v156 - v157;
          if (v154)
          {
            goto LABEL_219;
          }

          v154 = __OFADD__(v146, v158);
          v159 = v146 + v158;
          if (v154)
          {
            goto LABEL_221;
          }

          if (v159 >= v151)
          {
            v177 = (v140 + 16 * v143);
            v179 = *v177;
            v178 = v177[1];
            v154 = __OFSUB__(v178, v179);
            v180 = v178 - v179;
            if (v154)
            {
              goto LABEL_227;
            }

            if (v146 < v180)
            {
              v143 = v139 - 2;
            }
          }

          else
          {
LABEL_168:
            if (v147)
            {
              goto LABEL_218;
            }

            v160 = (v19 + 16 * v139);
            v162 = *v160;
            v161 = v160[1];
            v163 = __OFSUB__(v161, v162);
            v164 = v161 - v162;
            v165 = v163;
            if (v163)
            {
              goto LABEL_220;
            }

            v166 = (v140 + 16 * v143);
            v168 = *v166;
            v167 = v166[1];
            v154 = __OFSUB__(v167, v168);
            v169 = v167 - v168;
            if (v154)
            {
              goto LABEL_223;
            }

            if (__OFADD__(v164, v169))
            {
              goto LABEL_225;
            }

            if (v164 + v169 < v146)
            {
              goto LABEL_183;
            }

            if (v146 < v169)
            {
              v143 = v139 - 2;
            }
          }
        }

        else
        {
          if (v139 == 3)
          {
            v144 = *(v19 + 32);
            v145 = *(v19 + 40);
            v154 = __OFSUB__(v145, v144);
            v146 = v145 - v144;
            v147 = v154;
            goto LABEL_168;
          }

          if (v139 < 2)
          {
            goto LABEL_226;
          }

          v170 = (v19 + 16 * v139);
          v172 = *v170;
          v171 = v170[1];
          v154 = __OFSUB__(v171, v172);
          v164 = v171 - v172;
          v165 = v154;
LABEL_183:
          if (v165)
          {
            goto LABEL_222;
          }

          v173 = (v140 + 16 * v143);
          v175 = *v173;
          v174 = v173[1];
          v154 = __OFSUB__(v174, v175);
          v176 = v174 - v175;
          if (v154)
          {
            goto LABEL_224;
          }

          if (v176 < v164)
          {
            break;
          }
        }

        if (v143 - 1 >= v139)
        {
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
LABEL_220:
          __break(1u);
LABEL_221:
          __break(1u);
LABEL_222:
          __break(1u);
LABEL_223:
          __break(1u);
LABEL_224:
          __break(1u);
LABEL_225:
          __break(1u);
LABEL_226:
          __break(1u);
LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
          goto LABEL_234;
        }

        if (!*v219)
        {
          goto LABEL_238;
        }

        v181 = v19;
        v182 = (v140 + 16 * (v143 - 1));
        v183 = *v182;
        v184 = (v140 + 16 * v143);
        v19 = v184[1];
        sub_100F6D354((*v219 + 56 * *v182), (*v219 + 56 * *v184), *v219 + 56 * v19, v142);
        if (v5)
        {
        }

        if (v19 < v183)
        {
          goto LABEL_213;
        }

        if (v143 > *(v181 + 16))
        {
          goto LABEL_214;
        }

        *v182 = v183;
        v182[1] = v19;
        v185 = *(v181 + 16);
        if (v143 >= v185)
        {
          goto LABEL_215;
        }

        v19 = v181;
        v139 = v185 - 1;
        result = memmove((v140 + 16 * v143), v184 + 2, 16 * (v185 - 1 - v143));
        *(v181 + 16) = v185 - 1;
        if (v185 <= 2)
        {
          break;
        }

        continue;
      }
    }

    v17 = v219[1];
    v18 = v221;
    if (v221 >= v17)
    {
      goto LABEL_201;
    }
  }

  v194 = v5;
  v32 = (v22 + 56 * v20 + 80);
  v33 = v229;
  while (1)
  {
    v221 = v21;
    v48 = v32;
    v50 = v32[4];
    v49 = v32[5];
    v51 = v32[6];
    v53 = v32[7];
    v32 += 7;
    v52 = v53;
    v55 = v48[8];
    v54 = v48[9];
    v56 = *(v48 + 80);
    v57 = *(v48 - 3);
    v58 = *(v48 - 2);
    v60 = *(v48 - 1);
    v59 = *v48;
    v62 = v48[1];
    v61 = v48[2];
    v63 = *(v48 + 24);
    v64 = v56 >> 6;
    if (v56 >> 6 > 1)
    {
      if (v64 != 2)
      {
        if (v63 < 0x40)
        {
          goto LABEL_62;
        }

        v78 = 1;
        if (!(v51 | v49 | v50 | v52 | v55 | v54) && v56 == 192)
        {
          goto LABEL_16;
        }

        if (v63 >= 0xC0)
        {
          goto LABEL_49;
        }

        goto LABEL_52;
      }

      if ((v63 & 0xC0) == 0x80)
      {
        if (v56)
        {
          goto LABEL_16;
        }

        if ((v63 & 1) == 0)
        {
          if (v49)
          {
            v74 = v50;
          }

          else
          {
            v74 = 0;
          }

          v75 = 0xE000000000000000;
          if (v49)
          {
            v76 = v49;
          }

          else
          {
            v76 = 0xE000000000000000;
          }

          if (v58)
          {
            v77 = v57;
          }

          else
          {
            v77 = 0;
          }

          if (v58)
          {
            v75 = v58;
          }

          v227 = v54;
          v225 = v51;
          v224 = v52;
          v223 = v55;
          v228 = v49;
          v222 = v50;
          v218 = v76;
          v206 = v75;
          if (v74 == v77 && v76 == v75)
          {
            LODWORD(v220) = 0;
          }

          else
          {
            v81 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v50 = v222;
            v49 = v228;
            v55 = v223;
            v52 = v224;
            v51 = v225;
            v54 = v227;
            LODWORD(v220) = v81;
          }

          sub_100076F8C(v50, v49, v51, v52, v55, v54, v56);
          sub_100076F8C(v57, v58, v60, v59, v62, v61, v63);

          sub_1000771BC(v57, v58, v60, v59, v62, v61, v63);
          result = sub_1000771BC(v222, v228, v225, v224, v223, v227, v56);
          v73 = v220;
LABEL_22:
          v33 = v229;
          v19 = v199;
          v21 = v221;
          v20 = v198;
          v31 = v235;
          if ((v229 ^ v73))
          {
            goto LABEL_75;
          }

          goto LABEL_17;
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (!v64)
      {
        goto LABEL_16;
      }

      if ((v63 & 0xC0) == 0x40)
      {
        v228 = v49;
        v224 = v52;
        v223 = v55;
        v227 = v54;
        v225 = v51;
        v222 = v50;
        sub_100076F8C(v50, v49, v51, v52, v55, v54, v56);
        sub_100076F8C(v57, v58, v60, v59, v62, v61, v63);
        v65 = v226;
        static Calendar.current.getter();
        v66 = v213;
        Date.init(timeIntervalSinceReferenceDate:)();
        v67 = v214;
        Date.init(timeIntervalSinceReferenceDate:)();
        v68 = v216;
        v69 = v217;
        (*v210)(v216, v211, v217);
        v70 = Calendar.compare(_:to:toGranularity:)();
        (*v209)(v68, v69);
        v71 = *v208;
        v72 = v215;
        (*v208)(v67, v215);
        v71(v66, v72);
        (*v207)(v65, v212);
        result = sub_1000771BC(v222, v228, v225, v224, v223, v227, v56);
        v73 = v70 == -1;
        goto LABEL_22;
      }
    }

    if (v63 < 0x40)
    {
      goto LABEL_62;
    }

    v78 = 0;
    if (v63 >= 0xC0)
    {
LABEL_49:
      if (!(v60 | v58 | v57 | v59 | v62 | v61) && v63 == 192)
      {
        v79 = 0;
LABEL_61:
        result = sub_100076F8C(v79, 0, v60, v59, v62, v61, 0xC0u);
        v31 = v235;
        v33 = v229;
        goto LABEL_62;
      }
    }

LABEL_52:
    if (v78 && v56 == 192 && v50 == 1 && !(v51 | v49 | v52 | v55 | v54))
    {
      goto LABEL_16;
    }

    if (v63 >= 0xC0)
    {
      v80 = v60 | v58 | v59 | v62 | v61;
      if (v63 == 192 && v57 == 1 && !v80)
      {
        v79 = 1;
        goto LABEL_61;
      }

      if (v63 == 192 && v57 == 2 && !v80)
      {
        result = sub_100076F8C(2, 0, v60, v59, v62, v61, 0xC0u);
        v33 = v229;
        v31 = v235;
LABEL_16:
        v19 = v199;
        v21 = v221;
        v20 = v198;
        if ((v33 & 1) == 0)
        {
          v5 = v194;
          goto LABEL_78;
        }

        goto LABEL_17;
      }
    }

    if (!v78 || v56 != 192 || v50 != 2 || v51 | v49 | v52 | v55 | v54)
    {
      goto LABEL_16;
    }

LABEL_62:
    v19 = v199;
    v21 = v221;
    v20 = v198;
    if (v33)
    {
      break;
    }

LABEL_17:
    if (v31 == ++v21)
    {
      v21 = v31;
LABEL_75:
      v5 = v194;
      if (v33)
      {
        goto LABEL_8;
      }

      goto LABEL_78;
    }
  }

  v5 = v194;
  if (v221 >= v198)
  {
LABEL_9:
    if (v20 < v21)
    {
      v34 = 56 * v21;
      v35 = v21;
      v36 = v20;
      v37 = 56 * v20;
      while (1)
      {
        if (v36 != --v35)
        {
          v38 = *v219;
          if (!*v219)
          {
            goto LABEL_239;
          }

          v39 = (v38 + v37);
          v40 = *(v38 + v37 + 48);
          v41 = v38 + v34;
          v42 = *v39;
          v43 = v39[1];
          v44 = v39[2];
          v45 = *(v41 - 40);
          v46 = *(v41 - 24);
          v47 = *(v41 - 56);
          *(v39 + 6) = *(v41 - 8);
          v39[1] = v45;
          v39[2] = v46;
          *v39 = v47;
          *(v41 - 56) = v42;
          *(v41 - 40) = v43;
          *(v41 - 24) = v44;
          *(v41 - 8) = v40;
        }

        ++v36;
        v34 -= 56;
        v37 += 56;
        if (v36 >= v35)
        {
          goto LABEL_78;
        }
      }
    }

    goto LABEL_78;
  }

LABEL_235:
  __break(1u);
LABEL_236:
  result = sub_10113DE48(v19);
  v19 = result;
LABEL_203:
  v186 = v5;
  v187 = (v19 + 16);
  v188 = *(v19 + 16);
  if (v188 >= 2)
  {
    while (*v219)
    {
      v189 = v19;
      v190 = (v19 + 16 * v188);
      v19 = *v190;
      v191 = &v187[2 * v188];
      v5 = v191[1];
      sub_100F6D354((*v219 + 56 * *v190), (*v219 + 56 * *v191), *v219 + 56 * v5, v235);
      if (v186)
      {
      }

      if (v5 < v19)
      {
        goto LABEL_228;
      }

      if (v188 - 2 >= *v187)
      {
        goto LABEL_229;
      }

      *v190 = v19;
      v190[1] = v5;
      v192 = *v187 - v188;
      if (*v187 < v188)
      {
        goto LABEL_230;
      }

      v188 = *v187 - 1;
      result = memmove(v191, v191 + 2, 16 * v192);
      *v187 = v188;
      v19 = v189;
      if (v188 <= 1)
      {
      }
    }

    goto LABEL_240;
  }
}

unint64_t sub_100F6BA5C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  v95 = a3;
  v84 = _s5BoardVMa(0);
  v9 = __chkstk_darwin(v84);
  v82 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v83 = &v78 - v12;
  v13 = __chkstk_darwin(v11);
  v86 = &v78 - v14;
  __chkstk_darwin(v13);
  v92 = &v78 - v15;
  v94 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v16 = __chkstk_darwin(v94);
  v91 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v90 = &v78 - v19;
  v20 = __chkstk_darwin(v18);
  v21 = __chkstk_darwin(v20);
  v93 = &v78 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v78 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v78 - v27;
  v29 = __chkstk_darwin(v26);
  result = __chkstk_darwin(v29);
  v34 = &v78 - v33;
  v36 = *(v35 + 72);
  if (!v36)
  {
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    return result;
  }

  result = a2;
  if (a2 - a1 == 0x8000000000000000 && v36 == -1)
  {
    goto LABEL_84;
  }

  v37 = v95 - a2;
  if (v95 - a2 == 0x8000000000000000 && v36 == -1)
  {
    goto LABEL_85;
  }

  v38 = (a2 - a1) / v36;
  v98 = a1;
  v97 = a4;
  v88 = v36;
  if (v38 < v37 / v36)
  {
    v39 = v38 * v36;
    v91 = v25;
    v93 = v31;
    if (a4 < a1 || a1 + v39 <= a4)
    {
      v40 = result;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a1)
      {
LABEL_17:
        v42 = a4 + v39;
        v96 = a4 + v39;
        if (v39 < 1 || result >= v95)
        {
          goto LABEL_82;
        }

        v44 = v86;
        if (a5)
        {
          v45 = v92;
        }

        else
        {
          v45 = v86;
        }

        v85 = v45;
        if ((a5 & 1) == 0)
        {
          v44 = v92;
        }

        v83 = v44;
        v90 = a4 + v39;
        while (1)
        {
          v46 = v34;
          v47 = result;
          sub_1000652DC(result, v34, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v48 = v93;
          sub_1000652DC(a4, v93, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v49 = v48;
          sub_1000652DC(v46, v28, type metadata accessor for CRLBoardLibraryViewModel.Item);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v51 = v28;
          if (EnumCaseMultiPayload != 2)
          {
            goto LABEL_35;
          }

          v52 = v46;
          sub_100065D50(v28, v92, _s5BoardVMa);
          v53 = v48;
          v54 = v91;
          sub_1000652DC(v53, v91, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            break;
          }

          v55 = v86;
          sub_100065D50(v54, v86, _s5BoardVMa);
          LODWORD(v89) = static Date.< infix(_:_:)();
          v56 = v55;
          v57 = v92;
          v36 = v88;
          sub_10000BBC4(v56, _s5BoardVMa);
          sub_10000BBC4(v57, _s5BoardVMa);
          sub_10000BBC4(v49, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v34 = v52;
          sub_10000BBC4(v52, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v42 = v90;
          if ((v89 & 1) == 0)
          {
            goto LABEL_36;
          }

          if (a1 < v47 || a1 >= v47 + v36)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = v47 + v36;
LABEL_42:
          a1 += v36;
          v98 = a1;
          if (a4 >= v42 || result >= v95)
          {
            goto LABEL_82;
          }
        }

        sub_10000BBC4(v92, _s5BoardVMa);
        v51 = v54;
        v42 = v90;
LABEL_35:
        sub_10000BBC4(v51, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10000BBC4(v49, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10000BBC4(v46, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v34 = v46;
LABEL_36:
        if (a1 < a4 || a1 >= a4 + v36)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v97 = a4 + v36;
        a4 += v36;
        result = v47;
        goto LABEL_42;
      }

      v40 = result;
      swift_arrayInitWithTakeBackToFront();
    }

    result = v40;
    goto LABEL_17;
  }

  v41 = v37 / v36 * v36;
  v92 = v32;
  if (a4 < a2 || a2 + v41 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else
  {
    if (a4 == a2)
    {
      goto LABEL_49;
    }

    swift_arrayInitWithTakeBackToFront();
  }

  result = a2;
LABEL_49:
  v58 = a4 + v41;
  if (v41 < 1)
  {
    goto LABEL_81;
  }

  v59 = -v88;
  v60 = v82;
  if (a5)
  {
    v61 = v83;
  }

  else
  {
    v61 = v82;
  }

  if ((a5 & 1) == 0)
  {
    v60 = v83;
  }

  v80 = v60;
  v81 = v61;
  v62 = a4 + v41;
  v86 = -v88;
  v87 = a4;
  while (2)
  {
    while (2)
    {
      v79 = v58;
      v63 = result;
      v64 = result + v59;
      v88 = result;
      v89 = result + v59;
      while (1)
      {
        v65 = v95;
        if (v63 <= a1)
        {
          v98 = v63;
          v96 = v79;
          goto LABEL_82;
        }

        v85 = v58;
        v66 = v62 + v59;
        v67 = v62 + v59;
        v68 = v64;
        v69 = v93;
        sub_1000652DC(v67, v93, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v70 = v92;
        sub_1000652DC(v68, v92, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v71 = v90;
        sub_1000652DC(v69, v90, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v72 = v83;
          sub_100065D50(v71, v83, _s5BoardVMa);
          sub_1000652DC(v70, v91, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            v73 = v82;
            sub_100065D50(v91, v82, _s5BoardVMa);
            v74 = static Date.< infix(_:_:)();
            sub_10000BBC4(v73, _s5BoardVMa);
            sub_10000BBC4(v72, _s5BoardVMa);
            goto LABEL_66;
          }

          sub_10000BBC4(v72, _s5BoardVMa);
          v75 = v91;
        }

        else
        {
          v75 = v71;
        }

        sub_10000BBC4(v75, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v74 = 0;
LABEL_66:
        v59 = v86;
        v76 = v87;
        v63 = v88;
        v95 = v65 + v86;
        sub_10000BBC4(v92, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10000BBC4(v93, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (v74)
        {
          break;
        }

        v58 = v66;
        if (v65 < v62 || v95 >= v62)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v65 != v62)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v62 = v66;
        v64 = v89;
        if (v66 <= v76)
        {
          result = v63;
          goto LABEL_81;
        }
      }

      if (v65 >= v63 && v95 < v63)
      {
        result = v89;
        v58 = v85;
        if (v65 != v63)
        {
          swift_arrayInitWithTakeBackToFront();
          result = v89;
        }

        if (v62 <= v76)
        {
          goto LABEL_81;
        }

        continue;
      }

      break;
    }

    v77 = v89;
    swift_arrayInitWithTakeFrontToBack();
    result = v77;
    v58 = v85;
    if (v62 > v76)
    {
      continue;
    }

    break;
  }

LABEL_81:
  v98 = result;
  v96 = v58;
LABEL_82:
  sub_10063F7DC(&v98, &v97, &v96);
  return 1;
}

uint64_t sub_100F6C3E8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v153 = type metadata accessor for Calendar.Component();
  v8 = *(v153 - 8);
  __chkstk_darwin(v153);
  v152 = &v132[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v151 = type metadata accessor for Date();
  v164 = *(v151 - 8);
  v10 = __chkstk_darwin(v151);
  v150 = &v132[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v149 = &v132[-v12];
  v148 = type metadata accessor for Calendar();
  v13 = *(v148 - 8);
  __chkstk_darwin(v148);
  v162 = &v132[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v163 = v14;
  v165 = a1;
  v16 = (a2 - a1) / 56;
  v17 = a3 - a2;
  v18 = v17 / 56;
  if (v16 < v17 / 56)
  {
    v19 = 7 * v16;
    if (a4 != v165 || &v165[v19] <= a4)
    {
      memmove(a4, v165, v19 * 8);
      v14 = v163;
    }

    v20 = &a4[v19];
    if (a2 - a1 < 56 || a2 >= v14)
    {
LABEL_165:
      v126 = v165;
      goto LABEL_167;
    }

    v144 = (v8 + 104);
    v147 = (v8 + 8);
    LODWORD(v146) = enum case for Calendar.Component.day(_:);
    v145 = (v164 + 8);
    v143 = (v13 + 8);
    while (1)
    {
      v22 = *a2;
      v21 = a2[1];
      v24 = a2[2];
      v23 = a2[3];
      v25 = a2[4];
      v26 = a2[5];
      v27 = *(a2 + 48);
      v29 = *a4;
      v28 = a4[1];
      v30 = a4[2];
      v31 = a4[3];
      v32 = *(a4 + 48);
      v33 = v32 >> 6;
      v34 = a4[4];
      v35 = a4[5];
      if (v32 >> 6 <= 1)
      {
        break;
      }

      if (v33 != 2)
      {
        if (v27 < 0x40)
        {
          goto LABEL_80;
        }

        if (!(v30 | v28 | v29 | v31 | v34 | v35) && v32 == 192)
        {
          v58 = 0;
LABEL_52:
          sub_100076F8C(v58, 0, v30, a4[3], v34, v35, 0xC0u);
          v14 = v163;
LABEL_53:
          v63 = a2;
          v50 = v165 == a2;
          a2 += 7;
          if (v50)
          {
            goto LABEL_55;
          }

LABEL_54:
          v64 = *v63;
          v65 = *(v63 + 1);
          v66 = *(v63 + 2);
          v67 = v165;
          v165[6] = v63[6];
          *(v67 + 1) = v65;
          *(v67 + 2) = v66;
          *v67 = v64;
          goto LABEL_55;
        }

        if (v27 > 0xBF)
        {
          v59 = 1;
          goto LABEL_43;
        }

        v61 = 0;
LABEL_48:
        v62 = v30 | v28 | v31 | v34 | v35;
        if (v32 == 192 && v29 == 1 && !v62)
        {
          v58 = 1;
          goto LABEL_52;
        }

        if (!v61)
        {
          goto LABEL_74;
        }

        LOBYTE(v61) = 0;
        v60 = v24 | v21;
LABEL_60:
        v68 = v60 | v23 | v25 | v26;
        if (v27 != 192 || v22 != 1 || v68)
        {
          if (v22 == 2 && v68 == 0 && v27 == 192)
          {
            LOBYTE(v61) = 1;
          }

          if (v61)
          {
            goto LABEL_53;
          }

          v62 = v30 | v28 | v31 | v34 | v35;
LABEL_74:
          if (v32 != 192 || v29 != 2 || v62)
          {
            goto LABEL_53;
          }

          sub_100076F8C(2, 0, v30, a4[3], v34, v35, 0xC0u);
LABEL_79:
          v14 = v163;
          goto LABEL_80;
        }

        goto LABEL_80;
      }

      if ((v27 & 0xC0) != 0x80)
      {
        goto LABEL_38;
      }

      if (v32)
      {
        goto LABEL_53;
      }

      if ((v27 & 1) == 0)
      {
        v164 = a4[4];
        v141 = v30;
        v142 = v35;
        v140 = v31;
        if (v28)
        {
          v46 = v29;
        }

        else
        {
          v46 = 0;
        }

        v47 = 0xE000000000000000;
        if (v28)
        {
          v48 = v28;
        }

        else
        {
          v48 = 0xE000000000000000;
        }

        if (v21)
        {
          v49 = v22;
        }

        else
        {
          v49 = 0;
        }

        if (v21)
        {
          v47 = v21;
        }

        v50 = v46 == v49 && v48 == v47;
        v51 = v28;
        v160 = v25;
        v161 = v23;
        v158 = v26;
        v159 = v24;
        v157 = v22;
        v139 = v48;
        v138 = v47;
        if (v50)
        {
          v71 = v22;
          v72 = v21;
          sub_100076F8C(v71, v21, v24, v23, v25, v26, v27);
          v73 = v140;
          sub_100076F8C(v29, v51, v141, v140, v164, v142, v32);

          sub_1000771BC(v29, v51, v141, v73, v164, v142, v32);
          sub_1000771BC(v157, v72, v159, v161, v160, v158, v27);
          goto LABEL_79;
        }

        v155 = v21;
        v156 = v28;
        v154 = v29;
        v52 = v25;
        v53 = v24;
        LODWORD(v137) = _stringCompareWithSmolCheck(_:_:expecting:)();
        v54 = v22;
        v55 = v155;
        sub_100076F8C(v54, v155, v53, v161, v52, v26, v27);
        v56 = v154;
        v57 = v140;
        sub_100076F8C(v154, v156, v141, v140, v164, v142, v32);

        sub_1000771BC(v56, v156, v141, v57, v164, v142, v32);
        sub_1000771BC(v157, v55, v159, v161, v160, v158, v27);
        v14 = v163;
        if (v137)
        {
          goto LABEL_53;
        }
      }

LABEL_80:
      v63 = a4;
      v50 = v165 == a4;
      a4 += 7;
      if (!v50)
      {
        goto LABEL_54;
      }

LABEL_55:
      v165 += 7;
      if (a4 >= v20 || a2 >= v14)
      {
        goto LABEL_165;
      }
    }

    if (!v33)
    {
      goto LABEL_53;
    }

    if ((v27 & 0xC0) == 0x40)
    {
      v36 = *a2;
      v156 = a4[1];
      v157 = v22;
      v154 = v29;
      v155 = v21;
      v37 = v30;
      v160 = v25;
      v161 = v23;
      v164 = v34;
      v158 = v26;
      v159 = v24;
      v38 = v35;
      sub_100076F8C(v36, v21, v24, v23, v25, v26, v27);
      sub_100076F8C(v154, v156, v37, v31, v164, v38, v32);
      v39 = v162;
      static Calendar.current.getter();
      v40 = v149;
      Date.init(timeIntervalSinceReferenceDate:)();
      v41 = v150;
      Date.init(timeIntervalSinceReferenceDate:)();
      v43 = v152;
      v42 = v153;
      (*v144)(v152, v146, v153);
      v164 = Calendar.compare(_:to:toGranularity:)();
      (*v147)(v43, v42);
      LODWORD(v156) = v27;
      v44 = *v145;
      v45 = v151;
      (*v145)(v41, v151);
      v44(v40, v45);
      (*v143)(v39, v148);
      sub_1000771BC(v157, v155, v159, v161, v160, v158, v156);
      v14 = v163;
      if (v164 == -1)
      {
        goto LABEL_53;
      }

      goto LABEL_80;
    }

LABEL_38:
    if (v27 < 0x40)
    {
      goto LABEL_80;
    }

    if (v27 < 0xC0)
    {
      goto LABEL_53;
    }

    v59 = 0;
LABEL_43:
    v60 = v24 | v21;
    if (!(v24 | v21 | v22 | v23 | v25 | v26) && v27 == 192)
    {
      goto LABEL_80;
    }

    v61 = 1;
    if (v59)
    {
      goto LABEL_48;
    }

    goto LABEL_60;
  }

  v74 = 7 * v18;
  if (a4 != a2 || &a2[v74] <= a4)
  {
    memmove(a4, a2, 56 * v18);
    v14 = v163;
  }

  v20 = &a4[v74];
  if (v17 < 56 || a2 <= v165)
  {
LABEL_166:
    v126 = a2;
    goto LABEL_167;
  }

  v141 = (v8 + 104);
  v140 = (v8 + 8);
  LODWORD(v139) = enum case for Calendar.Component.day(_:);
  v138 = (v164 + 8);
  v137 = (v13 + 8);
  v142 = a4;
  do
  {
    v75 = 0;
    v164 = v20;
    v134 = a2 - 7;
    v163 = v14;
    while (1)
    {
      v76 = v164 + v75;
      v78 = v164 + v75 - 56;
      v77 = *v78;
      v80 = *(v164 + v75 - 48);
      v79 = *(v164 + v75 - 40);
      v82 = *(v164 + v75 - 32);
      v81 = *(v164 + v75 - 24);
      v83 = *(v164 + v75 - 16);
      v84 = *(v164 + v75 - 8);
      v86 = *(a2 - 7);
      v85 = *(a2 - 6);
      v87 = *(a2 - 5);
      v88 = *(a2 - 4);
      v89 = *(a2 - 8);
      v90 = v89 >> 6;
      v91 = *(a2 - 3);
      v92 = *(a2 - 2);
      if (v89 >> 6 <= 1)
      {
        break;
      }

      if (v90 == 2)
      {
        if ((v84 & 0xC0) != 0x80)
        {
          goto LABEL_122;
        }

        if (v89)
        {
          goto LABEL_160;
        }

        if ((v84 & 1) == 0)
        {
          LODWORD(v161) = *(a2 - 8);
          v160 = v91;
          v143 = v87;
          v145 = v92;
          v144 = v88;
          if (v85)
          {
            v93 = v86;
          }

          else
          {
            v93 = 0;
          }

          v94 = 0xE000000000000000;
          if (v85)
          {
            v95 = v85;
          }

          else
          {
            v95 = 0xE000000000000000;
          }

          if (v80)
          {
            v96 = v77;
          }

          else
          {
            v96 = 0;
          }

          if (v80)
          {
            v94 = v80;
          }

          v97 = v93 == v96 && v95 == v94;
          v98 = v85;
          v157 = v83;
          v158 = v82;
          v159 = v81;
          v155 = v77;
          v156 = v79;
          v136 = v95;
          v135 = v94;
          if (v97)
          {
            sub_100076F8C(v77, v80, v79, v82, v81, v83, v84);
            sub_100076F8C(v86, v98, v143, v144, v160, v145, v161);

            sub_1000771BC(v86, v98, v143, v144, v160, v145, v161);
            sub_1000771BC(v155, v80, v156, v158, v159, v157, v84);
LABEL_154:
            v14 = v163;
            goto LABEL_155;
          }

          v146 = v86;
          v147 = v80;
          v99 = v77;
          v154 = v85;
          v100 = v83;
          v101 = v79;
          v133 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v102 = v99;
          v103 = v147;
          sub_100076F8C(v102, v147, v101, v158, v159, v100, v84);
          v104 = v146;
          sub_100076F8C(v146, v154, v143, v144, v160, v145, v161);

          sub_1000771BC(v104, v154, v143, v144, v160, v145, v161);
          sub_1000771BC(v155, v103, v156, v158, v159, v157, v84);
          v14 = v163;
          if (v133)
          {
            goto LABEL_160;
          }
        }
      }

      else if (v84 >= 0x40)
      {
        if (!(v87 | v85 | v86 | v88 | v91 | v92) && v89 == 192)
        {
          v124 = 0;
          goto LABEL_159;
        }

        if (v84 > 0xBF)
        {
          v113 = 1;
          goto LABEL_125;
        }

        v115 = 0;
        goto LABEL_130;
      }

LABEL_155:
      if (v14 + v75 != v76)
      {
        v120 = v14 + v75 - 56;
        v121 = *v78;
        v122 = *(v78 + 16);
        v123 = *(v78 + 32);
        *(v120 + 48) = *(v78 + 48);
        *(v120 + 16) = v122;
        *(v120 + 32) = v123;
        *v120 = v121;
      }

      v75 -= 56;
      v20 = v164 + v75;
      if (v164 + v75 <= a4)
      {
        goto LABEL_166;
      }
    }

    if (v90 != 1)
    {
      goto LABEL_160;
    }

    if ((v84 & 0xC0) == 0x40)
    {
      v146 = *(a2 - 7);
      v147 = v80;
      v154 = v85;
      v155 = v77;
      v105 = v87;
      v158 = v82;
      v159 = v81;
      v160 = v91;
      v156 = v79;
      v157 = v83;
      LODWORD(v161) = v89;
      sub_100076F8C(v77, v80, v79, v82, v81, v83, v84);
      sub_100076F8C(v146, v154, v105, v88, v160, v92, v161);
      static Calendar.current.getter();
      LODWORD(v161) = v84;
      v106 = v149;
      Date.init(timeIntervalSinceReferenceDate:)();
      v107 = v150;
      Date.init(timeIntervalSinceReferenceDate:)();
      v108 = v152;
      v109 = v153;
      (*v141)(v152, v139, v153);
      v160 = Calendar.compare(_:to:toGranularity:)();
      (*v140)(v108, v109);
      v110 = *v138;
      v111 = v107;
      a4 = v142;
      v112 = v151;
      (*v138)(v111, v151);
      v110(v106, v112);
      (*v137)(v162, v148);
      sub_1000771BC(v155, v147, v156, v158, v159, v157, v161);
      v14 = v163;
      if (v160 == -1)
      {
        goto LABEL_160;
      }

      goto LABEL_155;
    }

LABEL_122:
    if (v84 < 0x40)
    {
      goto LABEL_155;
    }

    if (v84 < 0xC0)
    {
      goto LABEL_160;
    }

    v113 = 0;
LABEL_125:
    v114 = v79 | v80;
    if (!(v79 | v80 | v77 | v82 | v81 | v83) && v84 == 192)
    {
      goto LABEL_155;
    }

    v115 = 1;
    if (!v113)
    {
LABEL_135:
      v117 = v114 | v82 | v81 | v83;
      if (v84 == 192 && v77 == 1 && !v117)
      {
        goto LABEL_155;
      }

      if (v77 == 2 && v117 == 0 && v84 == 192)
      {
        LOBYTE(v115) = 1;
      }

      if (v115)
      {
        goto LABEL_160;
      }

      v116 = v87 | v85 | v88 | v91 | v92;
      goto LABEL_149;
    }

LABEL_130:
    v116 = v87 | v85 | v88 | v91 | v92;
    if (v89 != 192 || v86 != 1 || v116)
    {
      if (v115)
      {
        LOBYTE(v115) = 0;
        v114 = v79 | v80;
        goto LABEL_135;
      }

LABEL_149:
      if (v89 != 192 || v86 != 2 || v116)
      {
        goto LABEL_160;
      }

      sub_100076F8C(2, 0, v87, *(a2 - 4), v91, *(a2 - 2), 0xC0u);
      goto LABEL_154;
    }

    v124 = 1;
LABEL_159:
    sub_100076F8C(v124, 0, v87, *(a2 - 4), v91, *(a2 - 2), 0xC0u);
    v14 = v163;
LABEL_160:
    v125 = (v14 + v75);
    v14 = v14 + v75 - 56;
    v126 = v134;
    if (v125 != a2)
    {
      v127 = *v134;
      v128 = *(v134 + 1);
      v129 = *(v134 + 2);
      *(v14 + 48) = v134[6];
      *(v14 + 16) = v128;
      *(v14 + 32) = v129;
      *v14 = v127;
    }

    v20 = v164 + v75;
    if (v164 + v75 <= a4)
    {
      break;
    }

    a2 = v126;
  }

  while (v126 > v165);
  v20 = v164 + v75;
LABEL_167:
  v130 = 7 * ((v20 - a4) / 56);
  if (v126 != a4 || v126 >= &a4[v130])
  {
    memmove(v126, a4, v130 * 8);
  }

  return 1;
}

uint64_t sub_100F6D354(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v142 = type metadata accessor for Calendar.Component();
  v7 = *(v142 - 8);
  __chkstk_darwin(v142);
  v141 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for Date();
  v9 = *(v140 - 8);
  v10 = __chkstk_darwin(v140);
  v139 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v138 = &v124 - v12;
  v137 = type metadata accessor for Calendar();
  v13 = *(v137 - 8);
  __chkstk_darwin(v137);
  v153 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = v14;
  v156 = a1;
  v16 = (a2 - a1) / 56;
  v17 = v14 - a2;
  v18 = (v14 - a2) / 56;
  if (v16 < v18)
  {
    v19 = 7 * v16;
    if (a4 != v156 || &v156[v19] <= a4)
    {
      memmove(a4, v156, v19 * 8);
      v14 = v154;
    }

    v20 = &a4[v19];
    if (a2 - a1 < 56 || a2 >= v14)
    {
LABEL_145:
      v118 = v156;
      goto LABEL_147;
    }

    v144 = (v7 + 104);
    LODWORD(v143) = enum case for Calendar.Component.day(_:);
    v136 = (v7 + 8);
    v134 = (v9 + 8);
    v133 = (v13 + 8);
    while (1)
    {
      v22 = *a2;
      v21 = a2[1];
      v24 = a2[2];
      v23 = a2[3];
      v25 = a2[4];
      v26 = a2[5];
      v27 = *(a2 + 48);
      v29 = *a4;
      v28 = a4[1];
      v31 = a4[2];
      v30 = a4[3];
      v33 = a4[4];
      v32 = a4[5];
      v34 = v27 >> 6;
      v35 = *(a4 + 48);
      if (v27 >> 6 > 1)
      {
        if (v34 != 2)
        {
          if (v35 < 0x40)
          {
            goto LABEL_60;
          }

          v63 = 1;
          if (!(v24 | v21 | v22 | v23 | v25 | v26) && v27 == 192)
          {
            goto LABEL_10;
          }

          if (v35 >= 0xC0)
          {
            goto LABEL_46;
          }

          goto LABEL_49;
        }

        if ((v35 & 0xC0) == 0x80)
        {
          if (v27)
          {
            goto LABEL_10;
          }

          if ((v35 & 1) == 0)
          {
            v131 = a4[2];
            v132 = v30;
            v135 = v33;
            v150 = v25;
            v151 = v32;
            if (v21)
            {
              v41 = v22;
            }

            else
            {
              v41 = 0;
            }

            v42 = 0xE000000000000000;
            if (v21)
            {
              v43 = v21;
            }

            else
            {
              v43 = 0xE000000000000000;
            }

            if (v28)
            {
              v44 = v29;
            }

            else
            {
              v44 = 0;
            }

            if (v28)
            {
              v42 = v28;
            }

            v45 = v41 == v44 && v43 == v42;
            v155 = v23;
            LODWORD(v152) = v27;
            v147 = v22;
            v148 = v24;
            v146 = v26;
            v130 = v43;
            v129 = v42;
            v128 = v29;
            if (v45)
            {
              v66 = v21;
              sub_100076F8C(v22, v21, v24, v23, v25, v26, v27);
              v67 = v29;
              v68 = v131;
              v69 = v132;
              v70 = v151;
              sub_100076F8C(v67, v28, v131, v132, v135, v151, v35);

              sub_1000771BC(v128, v28, v68, v69, v135, v70, v35);
              sub_1000771BC(v147, v66, v148, v155, v150, v146, v152);
              goto LABEL_59;
            }

            v149 = v21;
            v145 = v28;
            v46 = v25;
            v47 = v24;
            v48 = v22;
            LODWORD(v127) = _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_100076F8C(v48, v149, v47, v155, v46, v26, v152);
            v49 = v29;
            v50 = v145;
            v51 = v131;
            v52 = v132;
            v53 = v135;
            v54 = v151;
            sub_100076F8C(v49, v145, v131, v132, v135, v151, v35);

            sub_1000771BC(v128, v50, v51, v52, v53, v54, v35);
            sub_1000771BC(v147, v149, v148, v155, v150, v146, v152);
            v14 = v154;
            if (v127)
            {
              goto LABEL_10;
            }
          }

          goto LABEL_60;
        }
      }

      else
      {
        if (!v34)
        {
          goto LABEL_10;
        }

        if ((v35 & 0xC0) == 0x40)
        {
          v55 = *a2;
          v149 = a2[1];
          v150 = v25;
          v145 = v28;
          v146 = v26;
          v155 = v23;
          v151 = v32;
          LODWORD(v152) = v27;
          v147 = v22;
          v148 = v24;
          sub_100076F8C(v55, v149, v24, v23, v25, v26, v27);
          sub_100076F8C(v29, v145, v31, v30, v33, v151, v35);
          v56 = v153;
          static Calendar.current.getter();
          v57 = v138;
          Date.init(timeIntervalSinceReferenceDate:)();
          v58 = v139;
          Date.init(timeIntervalSinceReferenceDate:)();
          v60 = v141;
          v59 = v142;
          (*v144)(v141, v143, v142);
          v151 = Calendar.compare(_:to:toGranularity:)();
          (*v136)(v60, v59);
          v61 = *v134;
          v62 = v140;
          (*v134)(v58, v140);
          v61(v57, v62);
          (*v133)(v56, v137);
          sub_1000771BC(v147, v149, v148, v155, v150, v146, v152);
          v14 = v154;
          if (v151 == -1)
          {
            goto LABEL_10;
          }

          goto LABEL_60;
        }
      }

      if (v35 < 0x40)
      {
        goto LABEL_60;
      }

      v63 = 0;
      if (v35 >= 0xC0)
      {
LABEL_46:
        if (!(v31 | v28 | v29 | v30 | v33 | v32) && v35 == 192)
        {
          v64 = 0;
LABEL_58:
          sub_100076F8C(v64, 0, a4[2], a4[3], a4[4], v32, 0xC0u);
LABEL_59:
          v14 = v154;
          goto LABEL_60;
        }
      }

LABEL_49:
      if (v63 && v27 == 192 && v22 == 1 && !(v24 | v21 | v23 | v25 | v26))
      {
        goto LABEL_10;
      }

      if (v35 >= 0xC0)
      {
        v65 = v31 | v28 | v30 | v33 | v32;
        if (v35 == 192 && v29 == 1 && !v65)
        {
          v64 = 1;
          goto LABEL_58;
        }

        if (v35 == 192 && v29 == 2 && !v65)
        {
          sub_100076F8C(2, 0, a4[2], a4[3], a4[4], v32, 0xC0u);
          v14 = v154;
LABEL_10:
          v36 = a2;
          v45 = v156 == a2;
          a2 += 7;
          if (v45)
          {
            goto LABEL_12;
          }

LABEL_11:
          v37 = *v36;
          v38 = *(v36 + 1);
          v39 = *(v36 + 2);
          v40 = v156;
          v156[6] = v36[6];
          *(v40 + 1) = v38;
          *(v40 + 2) = v39;
          *v40 = v37;
          goto LABEL_12;
        }
      }

      if (!v63 || v27 != 192 || v22 != 2 || v24 | v21 | v23 | v25 | v26)
      {
        goto LABEL_10;
      }

LABEL_60:
      v36 = a4;
      v45 = v156 == a4;
      a4 += 7;
      if (!v45)
      {
        goto LABEL_11;
      }

LABEL_12:
      v156 += 7;
      if (a4 >= v20 || a2 >= v14)
      {
        goto LABEL_145;
      }
    }
  }

  v71 = 7 * v18;
  if (a4 != a2 || &a2[v71] <= a4)
  {
    memmove(a4, a2, 56 * v18);
    v14 = v154;
  }

  v20 = &a4[v71];
  if (v17 < 56 || a2 <= v156)
  {
LABEL_146:
    v118 = a2;
    goto LABEL_147;
  }

  v134 = (v7 + 104);
  LODWORD(v133) = enum case for Calendar.Component.day(_:);
  v132 = (v7 + 8);
  v131 = (v9 + 8);
  v130 = (v13 + 8);
  v135 = a4;
  do
  {
    v72 = 0;
    v155 = v20;
    v126 = a2 - 7;
    v154 = v14;
    while (1)
    {
      v73 = v155 + v72;
      v75 = v155 + v72 - 56;
      v74 = *v75;
      v77 = *(v155 + v72 - 48);
      v76 = *(v155 + v72 - 40);
      v79 = *(v155 + v72 - 32);
      v78 = *(v155 + v72 - 24);
      v80 = *(v155 + v72 - 16);
      v81 = *(v155 + v72 - 8);
      v82 = *(a2 - 7);
      v83 = *(a2 - 6);
      v84 = *(a2 - 5);
      v85 = *(a2 - 4);
      v87 = *(a2 - 3);
      v86 = *(a2 - 2);
      v88 = *(a2 - 8);
      v89 = v81 >> 6;
      if (v81 >> 6 <= 1)
      {
        break;
      }

      if (v89 != 2)
      {
        if (v88 < 0x40)
        {
          goto LABEL_137;
        }

        v108 = 1;
        if (!(v76 | v77 | v74 | v79 | v78 | v80) && v81 == 192)
        {
          goto LABEL_140;
        }

        if (v88 < 0xC0)
        {
          goto LABEL_117;
        }

LABEL_114:
        if (!(v84 | v83 | v82 | v85 | v87 | v86) && v88 == 192)
        {
          v109 = 0;
LABEL_126:
          sub_100076F8C(v109, 0, v84, v85, *(a2 - 3), v86, 0xC0u);
LABEL_136:
          v14 = v154;
          goto LABEL_137;
        }

        goto LABEL_117;
      }

      if ((v88 & 0xC0) != 0x80)
      {
        goto LABEL_112;
      }

      if (v81)
      {
        goto LABEL_140;
      }

      if ((v88 & 1) == 0)
      {
        v151 = *(a2 - 5);
        v152 = v85;
        v129 = v87;
        v150 = v86;
        if (v77)
        {
          v90 = v74;
        }

        else
        {
          v90 = 0;
        }

        v91 = 0xE000000000000000;
        if (v77)
        {
          v92 = v77;
        }

        else
        {
          v92 = 0xE000000000000000;
        }

        if (v83)
        {
          v93 = v82;
        }

        else
        {
          v93 = 0;
        }

        if (v83)
        {
          v91 = v83;
        }

        v94 = v90 == v93 && v92 == v91;
        v136 = v82;
        v95 = v83;
        v146 = v80;
        v148 = v79;
        v149 = v78;
        LODWORD(v147) = v81;
        v143 = v74;
        v144 = v76;
        v128 = v92;
        v127 = v91;
        if (v94)
        {
          v111 = v77;
          sub_100076F8C(v74, v77, v76, v79, v78, v80, v81);
          v112 = v129;
          sub_100076F8C(v136, v95, v151, v152, v129, v150, v88);

          sub_1000771BC(v136, v95, v151, v152, v112, v150, v88);
          sub_1000771BC(v143, v111, v144, v148, v149, v146, v147);
          goto LABEL_136;
        }

        v145 = v77;
        v124 = v83;
        v96 = v80;
        v97 = v76;
        v125 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_100076F8C(v74, v145, v97, v148, v149, v96, v147);
        v98 = v124;
        v99 = v129;
        v100 = v150;
        sub_100076F8C(v136, v124, v151, v152, v129, v150, v88);

        sub_1000771BC(v136, v98, v151, v152, v99, v100, v88);
        sub_1000771BC(v143, v145, v144, v148, v149, v146, v147);
        v14 = v154;
        if (v125)
        {
          goto LABEL_140;
        }
      }

LABEL_137:
      if (v14 + v72 != v73)
      {
        v113 = v14 + v72 - 56;
        v114 = *v75;
        v115 = *(v75 + 16);
        v116 = *(v75 + 32);
        *(v113 + 48) = *(v75 + 48);
        *(v113 + 16) = v115;
        *(v113 + 32) = v116;
        *v113 = v114;
      }

      v72 -= 56;
      v20 = v155 + v72;
      if (v155 + v72 <= a4)
      {
        goto LABEL_146;
      }
    }

    if (v89 != 1)
    {
      goto LABEL_140;
    }

    if ((v88 & 0xC0) == 0x40)
    {
      v145 = *(v155 + v72 - 48);
      v146 = v80;
      v151 = v84;
      v152 = v85;
      v148 = v79;
      v149 = v78;
      v150 = v86;
      LODWORD(v147) = v81;
      v143 = v74;
      v144 = v76;
      sub_100076F8C(v74, v77, v76, v79, v78, v80, v81);
      sub_100076F8C(v82, v83, v151, v152, v87, v150, v88);
      static Calendar.current.getter();
      v101 = v138;
      Date.init(timeIntervalSinceReferenceDate:)();
      v102 = v139;
      Date.init(timeIntervalSinceReferenceDate:)();
      v103 = v141;
      v104 = v142;
      (*v134)(v141, v133, v142);
      v152 = Calendar.compare(_:to:toGranularity:)();
      (*v132)(v103, v104);
      v105 = *v131;
      v106 = v140;
      (*v131)(v102, v140);
      v107 = v101;
      a4 = v135;
      v105(v107, v106);
      (*v130)(v153, v137);
      sub_1000771BC(v143, v145, v144, v148, v149, v146, v147);
      v14 = v154;
      if (v152 == -1)
      {
        goto LABEL_140;
      }

      goto LABEL_137;
    }

LABEL_112:
    if (v88 < 0x40)
    {
      goto LABEL_137;
    }

    v108 = 0;
    if (v88 >= 0xC0)
    {
      goto LABEL_114;
    }

LABEL_117:
    if (v108 && v81 == 192 && v74 == 1 && !(v76 | v77 | v79 | v78 | v80))
    {
      goto LABEL_140;
    }

    if (v88 < 0xC0)
    {
      goto LABEL_153;
    }

    v110 = v84 | v83 | v85 | v87 | v86;
    if (v88 == 192 && v82 == 1 && !v110)
    {
      v109 = 1;
      goto LABEL_126;
    }

    if (v88 != 192 || v82 != 2 || v110)
    {
LABEL_153:
      if (!v108 || v81 != 192 || v74 != 2 || v76 | v77 | v79 | v78 | v80)
      {
        goto LABEL_140;
      }

      goto LABEL_137;
    }

    sub_100076F8C(2, 0, v84, v85, *(a2 - 3), v86, 0xC0u);
    v14 = v154;
LABEL_140:
    v117 = (v14 + v72);
    v14 = v14 + v72 - 56;
    v118 = v126;
    if (v117 != a2)
    {
      v119 = *v126;
      v120 = *(v126 + 1);
      v121 = *(v126 + 2);
      *(v14 + 48) = v126[6];
      *(v14 + 16) = v120;
      *(v14 + 32) = v121;
      *v14 = v119;
    }

    v20 = v155 + v72;
    if (v155 + v72 <= a4)
    {
      break;
    }

    a2 = v118;
  }

  while (v118 > v156);
  v20 = v155 + v72;
LABEL_147:
  v122 = 7 * ((v20 - a4) / 56);
  if (v118 != a4 || v118 >= &a4[v122])
  {
    memmove(v118, a4, v122 * 8);
  }

  return 1;
}

void sub_100F6E298(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v349 = a7;
  v318 = a6;
  v333 = a5;
  v345 = a4;
  v331 = a2;
  v9 = sub_1005B981C(&qword_1019F33D0);
  __chkstk_darwin(v9 - 8);
  v338 = &v311 - v10;
  v11 = type metadata accessor for CRLBoardIdentifier(0);
  v312 = *(v11 - 8);
  v12 = __chkstk_darwin(v11 - 8);
  v313 = v13;
  v314 = &v311 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v332 = &v311 - v14;
  v15 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v15 - 8);
  v339 = &v311 - v16;
  v317 = _s5BoardVMa(0);
  __chkstk_darwin(v317);
  v343 = &v311 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UUID();
  v322 = *(v18 - 8);
  v323 = v18;
  __chkstk_darwin(v18);
  v321 = &v311 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1005B981C(&unk_1019FB770);
  __chkstk_darwin(v20 - 8);
  v325 = &v311 - v21;
  v324 = _s4NodeVMa(0);
  v326 = *(v324 - 8);
  v22 = __chkstk_darwin(v324);
  v315 = &v311 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v320 = &v311 - v24;
  v25 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v26 = __chkstk_darwin(v25 - 8);
  v311 = &v311 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v316 = &v311 - v29;
  __chkstk_darwin(v28);
  v335 = &v311 - v30;
  v31 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v353 = *(v31 - 8);
  v32 = __chkstk_darwin(v31);
  v327 = &v311 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v351 = &v311 - v35;
  v36 = __chkstk_darwin(v34);
  v348 = &v311 - v37;
  v38 = __chkstk_darwin(v36);
  v350 = &v311 - v39;
  v40 = __chkstk_darwin(v38);
  v344 = &v311 - v41;
  v341 = v42;
  __chkstk_darwin(v40);
  v340 = &v311 - v43;
  v44 = sub_1005B981C(&qword_101A23CF0);
  __chkstk_darwin(v44 - 8);
  v328 = &v311 - v45;
  v46 = type metadata accessor for UIBackgroundConfiguration();
  v329 = *(v46 - 8);
  v330 = v46;
  __chkstk_darwin(v46);
  v342 = &v311 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for AppEntityVisualState();
  v336 = *(v48 - 1);
  v337 = v48;
  __chkstk_darwin(v48);
  v50 = &v311 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1005B981C(&unk_101A15B20);
  __chkstk_darwin(v51 - 8);
  v53 = &v311 - v52;
  v54 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_item;
  swift_beginAccess();
  sub_10000BE14(&a1[v54], v53, &unk_101A15B20);
  v346 = sub_100F73970(a1, v53, a3, &OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_viewController);
  sub_10000CAAC(v53, &unk_101A15B20);
  v55 = sub_100F88220();
  sub_100EE1DF0(v55, v56);
  v347 = a3;
  sub_1000652DC(a3, v53, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v57 = v353[7];
  v352 = v31;
  v57(v53, 0, 1, v31);
  swift_beginAccess();
  sub_10002C638(v53, &a1[v54], &unk_101A15B20);
  swift_endAccess();
  *&a1[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_crlaxDelegate + 8] = &off_1018A9040;
  v58 = v349;
  swift_unknownObjectWeakAssign();
  v59 = [v58 collectionView];
  if (!v59)
  {
    __break(1u);
    goto LABEL_145;
  }

  v60 = v59;
  v61 = [v59 isEditing];

  v62 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_viewController;
  v63 = *&a1[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_viewController];
  if (!v63)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  v64 = *((swift_isaMask & *v63) + 0x168);
  v65 = v63;
  v64(v61);

  [a1 isSelected];
  [a1 isHighlighted];
  v334 = v62;
  v66 = *&a1[v62];
  if (!v66)
  {
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  (*((swift_isaMask & *v66) + 0x160))();
  AppEntityVisualState.init(isSelected:isHighlighted:isFocused:isDisabled:isEditing:isPrimary:)();
  v67 = a1;
  UIView.updateAppEntityAnnotation(with:)();
  (*(v336 + 8))(v50, v337);
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v68 = a1;
  }

  else
  {
    v68 = 0;
  }

  v70 = v342;
  v69 = v343;
  v71 = v338;
  if (v68)
  {
    v72 = v67;
    v73 = v67;
    v74 = [v349 collectionView];
    if (!v74)
    {
      goto LABEL_152;
    }

    v75 = v74;
    v76 = [v74 indexPathsForSelectedItems];

    if (v76)
    {
      type metadata accessor for IndexPath();
      v77 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v78 = v73;
      [v68 setSelected:{sub_1012CD684(v331, v77)}];

      v79 = v78;
      UICollectionViewCell.defaultBackgroundConfiguration()();

      UIBackgroundConfiguration.cornerRadius.setter();
      v80 = [v349 collectionView];
      if (!v80)
      {
        goto LABEL_153;
      }

      v81 = v80;

      v82 = [v81 backgroundColor];

      UIBackgroundConfiguration.backgroundColor.setter();
      v83 = v328;
      v84 = v329;
      v85 = v330;
      (*(v329 + 16))(v328, v70, v330);
      (*(v84 + 56))(v83, 0, 1, v85);
      v86 = v79;
      UICollectionViewCell.backgroundConfiguration.setter();

      (*(v84 + 8))(v70, v85);
    }

    else
    {
    }

    v67 = v72;
  }

  v87 = swift_allocObject();
  *(v87 + 24) = &off_1018A7C78;
  swift_unknownObjectWeakInit();
  v88 = v347;
  v89 = v340;
  sub_1000652DC(v347, v340, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v90 = (*(v353 + 80) + 24) & ~*(v353 + 80);
  v336 = *(v353 + 80);
  v91 = swift_allocObject();
  *(v91 + 16) = v87;
  v342 = v91;
  sub_100065D50(v89, v91 + v90, type metadata accessor for CRLBoardLibraryViewModel.Item);
  [objc_opt_self() crl_screenScale];
  v93 = v92;
  v94 = v344;
  sub_1000652DC(v88, v344, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v337 = v68;
  if (!EnumCaseMultiPayload)
  {
    v319 = v67;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v106 = sub_100F8903C();
    v108 = v107;
    *(inited + 56) = &type metadata for String;
    v109 = sub_1000053B0();
    *(inited + 32) = v106;
    v352 = v109;
    v353 = (inited + 32);
    *(inited + 64) = v109;
    *(inited + 40) = v108;
    v350 = objc_opt_self();
    LODWORD(v67) = [v350 _atomicIncrementAssertCount];
    v354[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, v354);
    StaticString.description.getter();
    v351 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v110 = String._bridgeToObjectiveC()();

    v111 = [v110 lastPathComponent];

    v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v114 = v113;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_143;
    }

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_45:
    sub_100065D50(v94, v69, _s5BoardVMa);
    type metadata accessor for CRLBoardLibrary();
    v140 = swift_dynamicCastClass();
    if (!v140)
    {
      v353 = objc_opt_self();
      v164 = [v353 _atomicIncrementAssertCount];
      v354[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v354);
      StaticString.description.getter();
      v165 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v166 = String._bridgeToObjectiveC()();

      v167 = [v166 lastPathComponent];

      v168 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v170 = v169;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v171 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v172 = swift_initStackObject();
      *(v172 + 16) = xmmword_10146CA70;
      *(v172 + 56) = &type metadata for Int32;
      *(v172 + 64) = &protocol witness table for Int32;
      *(v172 + 32) = v164;
      v173 = sub_100006370(0, &qword_1019F4D30);
      *(v172 + 96) = v173;
      v174 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(v172 + 104) = v174;
      *(v172 + 72) = v165;
      *(v172 + 136) = &type metadata for String;
      v175 = sub_1000053B0();
      *(v172 + 112) = v168;
      *(v172 + 120) = v170;
      *(v172 + 176) = &type metadata for UInt;
      *(v172 + 184) = &protocol witness table for UInt;
      *(v172 + 144) = v175;
      *(v172 + 152) = 297;
      v176 = v354[0];
      *(v172 + 216) = v173;
      *(v172 + 224) = v174;
      *(v172 + 192) = v176;
      v177 = v165;
      v178 = v176;
      v179 = static os_log_type_t.error.getter();
      sub_100005404(v171, &_mh_execute_header, v179, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v172);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v180 = static os_log_type_t.error.getter();
      sub_100005404(v171, &_mh_execute_header, v180, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v181 = swift_allocObject();
      v181[2] = 8;
      v181[3] = 0;
      v181[4] = 0;
      v181[5] = 0;
      v182 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v183 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v184 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v185 = String._bridgeToObjectiveC()();

      [v353 handleFailureInFunction:v183 file:v184 lineNumber:297 isFatal:0 format:v185 args:v182];

      sub_10000BBC4(v343, _s5BoardVMa);

LABEL_135:
      return;
    }

    v141 = v140;
    v112 = v332;
    sub_1000652DC(v69, v332, type metadata accessor for CRLBoardIdentifier);
    v142 = v317;
    swift_unknownObjectRetain();
    v347 = sub_101303CCC();
    v344 = v143;
    v340 = v145;
    v341 = v144;
    sub_10000BE14(v69 + v142[20], v71, &qword_1019F33D0);
    v146 = _s5BoardV13ShareMetadataVMa(0);
    if ((*(*(v146 - 8) + 48))(v71, 1, v146) == 1)
    {
      v147 = sub_10000CAAC(v71, &qword_1019F33D0);
      v335 = 0;
      v336 = 0;
    }

    else
    {
      v243 = (v71 + *(v146 + 24));
      v244 = *v243;
      v335 = v243[1];
      v336 = v244;

      v147 = sub_10000BBC4(v71, _s5BoardV13ShareMetadataVMa);
    }

    v245 = v142[15];
    LODWORD(v348) = *(v69 + v142[14]);
    if (*(v69 + v245) != 1)
    {
      v248 = v311;
      sub_1000652DC(v349 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter, v311, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v249 = sub_1005B981C(&qword_1019F3480);
      v250 = (*(*(v249 - 8) + 48))(v248, 5, v249);
      sub_10000BBC4(v248, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v319 = v67;
      LODWORD(v350) = v250 != 5;
      if (v250 == 5)
      {
        LODWORD(v352) = 0;
      }

      else
      {
        if (*(v69 + v142[10]))
        {
          v251 = 2;
        }

        else
        {
          v251 = 0;
        }

        LODWORD(v352) = v251;
      }

      v268 = type metadata accessor for TaskPriority();
      (*(*(v268 - 8) + 56))(v339, 1, 1, v268);
      v269 = v314;
      sub_1000652DC(v332, v314, type metadata accessor for CRLBoardIdentifier);
      type metadata accessor for MainActor();
      v270 = v346;
      v271 = v318;
      v272 = v342;

      v273 = static MainActor.shared.getter();
      v274 = (*(v312 + 80) + 32) & ~*(v312 + 80);
      v275 = (v313 + v274 + 7) & 0xFFFFFFFFFFFFFFF8;
      v276 = (v275 + 15) & 0xFFFFFFFFFFFFFFF8;
      v277 = swift_allocObject();
      *(v277 + 16) = v273;
      *(v277 + 24) = &protocol witness table for MainActor;
      sub_100065D50(v269, v277 + v274, type metadata accessor for CRLBoardIdentifier);
      *(v277 + v275) = v271;
      *(v277 + v276) = v93;
      v278 = (v277 + ((v276 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v278 = sub_100F795B0;
      v278[1] = v272;
      sub_10064191C(0, 0, v339, &unk_1014B9908, v277);
      swift_unknownObjectRelease();

      sub_10000BBC4(v343, _s5BoardVMa);
      sub_10000BBC4(v332, type metadata accessor for CRLBoardIdentifier);
      v156 = 0;
      v353 = 0;
      v157 = 0;
      v351 = 0;
      v154 = v346;
      v161 = v347;
      v163 = v344;
      v67 = v319;
      goto LABEL_119;
    }

    v246 = *(*(v141 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedHighlightController) + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights);
    __chkstk_darwin(v147);
    v355._object = v112;

    v210 = sub_101107CA8(sub_100F794EC, (&v311 - 4), v246);

    if (!v210)
    {
      goto LABEL_118;
    }

    v247 = *&v210[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_previewImage];
    v102 = v334;
    if (v247)
    {
      v349 = [v247 UIImage];
      goto LABEL_122;
    }

LABEL_121:
    v349 = 0;
LABEL_122:
    v279 = *(v67 + v102);
    if (v279)
    {
      v280 = *(v279 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_attributionView);
      if (v280)
      {
        v351 = v280;
        v281 = v280;
        v282 = v349;
      }

      else
      {
        v283 = objc_allocWithZone(SWAttributionView);
        v284 = v349;
        v281 = [v283 init];
        [v281 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v281 setHorizontalAlignment:2];
        [v281 setBackgroundStyle:2];
        v351 = v281;
      }

      [v281 setHighlight:*&v210[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_swHighlight]];
      swift_unknownObjectRelease();
      sub_10000BBC4(v69, _s5BoardVMa);
      sub_10000BBC4(v112, type metadata accessor for CRLBoardIdentifier);

      LODWORD(v350) = 0;
      v353 = 0;
      v157 = 0;
      v156 = 1;
      LODWORD(v352) = 1;
      v161 = v347;
      v163 = v344;
      v162 = v340;
      v160 = v341;
      v159 = v335;
      v158 = v336;
      v154 = v349;
      goto LABEL_127;
    }

    goto LABEL_154;
  }

  v319 = v67;
  sub_100065D50(v94, v335, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v96 = *(v345 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
  v97 = *(v345 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot + 8);
  v98 = *(v345 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot + 24);
  inited = *(v345 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot + 32);

  v100 = v321;
  sub_10003E264(v321);
  if (*(v98 + 16))
  {
    v343 = v97;
    v344 = v96;
    v101 = sub_10003E994(v100);
    v102 = v326;
    v69 = v327;
    v103 = v324;
    if (v104)
    {
      v67 = v325;
      sub_1000652DC(*(v98 + 56) + *(v326 + 72) * v101, v325, _s4NodeVMa);
      (*(v322 + 8))(v100, v323);

      v105 = 0;
    }

    else
    {

      (*(v322 + 8))(v100, v323);
      v105 = 1;
      v67 = v325;
    }
  }

  else
  {

    (*(v322 + 8))(v100, v323);
    v105 = 1;
    v102 = v326;
    v69 = v327;
    v103 = v324;
    v67 = v325;
  }

  (*(v102 + 56))(v67, v105, 1, v103);
  if ((*(v102 + 48))(v67, 1, v103) != 1)
  {
    goto LABEL_82;
  }

  sub_10000CAAC(v67, &unk_1019FB770);
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v186 = v316;
  sub_1000652DC(v335, v316, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v187 = sub_10006A888();
  v189 = v188;
  sub_10000BBC4(v186, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  *(inited + 56) = &type metadata for String;
  v190 = sub_1000053B0();
  *(inited + 32) = v187;
  v352 = v190;
  v353 = (inited + 32);
  *(inited + 64) = v190;
  *(inited + 40) = v189;
  v350 = objc_opt_self();
  v191 = [v350 _atomicIncrementAssertCount];
  v354[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, v354);
  StaticString.description.getter();
  v351 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v192 = String._bridgeToObjectiveC()();

  v193 = [v192 lastPathComponent];

  v194 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v196 = v195;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v197 = static OS_os_log.crlAssert;
  v198 = swift_initStackObject();
  *(v198 + 16) = xmmword_10146CA70;
  *(v198 + 56) = &type metadata for Int32;
  *(v198 + 64) = &protocol witness table for Int32;
  *(v198 + 32) = v191;
  v199 = sub_100006370(0, &qword_1019F4D30);
  *(v198 + 96) = v199;
  v200 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  v201 = v351;
  *(v198 + 72) = v351;
  v202 = v352;
  *(v198 + 136) = &type metadata for String;
  *(v198 + 144) = v202;
  *(v198 + 104) = v200;
  *(v198 + 112) = v194;
  *(v198 + 120) = v196;
  *(v198 + 176) = &type metadata for UInt;
  *(v198 + 184) = &protocol witness table for UInt;
  *(v198 + 152) = 254;
  v203 = v354[0];
  *(v198 + 216) = v199;
  *(v198 + 224) = v200;
  *(v198 + 192) = v203;
  v204 = v201;
  v205 = v203;
  v206 = static os_log_type_t.error.getter();
  sub_100005404(v197, &_mh_execute_header, v206, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v198);
  swift_setDeallocating();
  v352 = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v207 = static os_log_type_t.error.getter();
  sub_100005404(v197, &_mh_execute_header, v207, "Filter does not exist: %@", 25, 2, inited);

  type metadata accessor for __VaListBuilder();
  v69 = swift_allocObject();
  v69[2] = 8;
  v69[3] = 0;
  v112 = (v69 + 3);
  v69[4] = 0;
  v69[5] = 0;
  v114 = *(inited + 16);
  if (!v114)
  {
LABEL_88:
    v232 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v233 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v234 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v235 = String._bridgeToObjectiveC()();

    [v350 handleFailureInFunction:v233 file:v234 lineNumber:254 isFatal:0 format:v235 args:v232];

    swift_setDeallocating();
    swift_arrayDestroy();

    sub_10000BBC4(v335, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    return;
  }

  v208 = 0;
  v102 = 40;
  while (1)
  {
    v209 = &v353[5 * v208];
    v210 = v209[4];
    LODWORD(v67) = sub_100020E58(v209, v209[3]);
    v211 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v103 = *v112;
    v212 = *(v211 + 16);
    v128 = __OFADD__(*v112, v212);
    v213 = *v112 + v212;
    if (v128)
    {
      goto LABEL_138;
    }

    v67 = v69[4];
    if (v67 >= v213)
    {
      goto LABEL_74;
    }

    if (v67 + 0x4000000000000000 < 0)
    {
      goto LABEL_141;
    }

    v210 = v69[5];
    if (2 * v67 > v213)
    {
      v213 = 2 * v67;
    }

    v69[4] = v213;
    if ((v213 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_142;
    }

    v214 = inited;
    v215 = v211;
    v216 = swift_slowAlloc();
    v217 = v216;
    v69[5] = v216;
    if (!v210)
    {
      break;
    }

    if (v216 != v210 || v216 >= &v210[8 * v103])
    {
      memmove(v216, v210, 8 * v103);
    }

    v67 = v69;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v211 = v215;
    inited = v214;
    v102 = 40;
LABEL_74:
    v217 = v69[5];
    if (!v217)
    {
      goto LABEL_81;
    }

LABEL_75:
    v219 = *(v211 + 16);
    if (v219)
    {
      v220 = (v211 + 32);
      v221 = *v112;
      while (1)
      {
        v222 = *v220++;
        *&v217[8 * v221] = v222;
        v221 = *v112 + 1;
        if (__OFADD__(*v112, 1))
        {
          break;
        }

        *v112 = v221;
        if (!--v219)
        {
          goto LABEL_59;
        }
      }

      __break(1u);
      goto LABEL_121;
    }

LABEL_59:

    if (++v208 == v114)
    {
      goto LABEL_88;
    }
  }

  v211 = v215;
  inited = v214;
  v102 = 40;
  if (v217)
  {
    goto LABEL_75;
  }

LABEL_81:
  __break(1u);
LABEL_82:
  v114 = v336;
  v112 = ~v336;
  v223 = v67;
  v224 = v320;
  sub_100065D50(v223, v320, _s4NodeVMa);
  v225 = *(v224 + *(v103 + 20));
  v226 = *(v225 + 16);
  v227 = _swiftEmptyArrayStorage;
  v343 = ~v114;
  if (v226)
  {
    v354[0] = _swiftEmptyArrayStorage;
    sub_100776764(0, v226, 0);
    v227 = v354[0];
    inited = v225 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
    v228 = *(v102 + 72);
    v112 &= v114 + 32;
    v229 = v315;
    do
    {
      sub_1000652DC(inited, v229, _s4NodeVMa);
      sub_1000652DC(v229, v69, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000BBC4(v229, _s4NodeVMa);
      v354[0] = v227;
      v231 = v227[2];
      v230 = v227[3];
      if (v231 >= v230 >> 1)
      {
        sub_100776764(v230 > 1, v231 + 1, 1);
        v229 = v315;
        v227 = v354[0];
      }

      v227[2] = v231 + 1;
      sub_100065D50(v69, v227 + v112 + v353[9] * v231, type metadata accessor for CRLBoardLibraryViewModel.Item);
      inited += v228;
      --v226;
    }

    while (v226);
    v114 = v336;
  }

  v236 = v227[2];
  v237 = v348;
  if (!v236)
  {
    v67 = _swiftEmptyArrayStorage;
LABEL_111:
    v252 = *(v67 + 16);

    if (v252)
    {
      v253 = [objc_opt_self() mainBundle];
      v355._object = 0x80000001015B3C50;
      v254._countAndFlagsBits = 0x72616F6220756C25;
      v254._object = 0xEC00000029732864;
      v355._countAndFlagsBits = 0xD00000000000001ALL;
      v255._countAndFlagsBits = 0;
      v255._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v254, 0, v253, v255, v355);

      sub_1005B981C(&qword_1019F54E0);
      v256 = swift_allocObject();
      *(v256 + 16) = xmmword_10146C6B0;
      *(v256 + 56) = &type metadata for Int;
      *(v256 + 64) = &protocol witness table for Int;
      *(v256 + 32) = v252;
      v353 = static String.localizedStringWithFormat(_:_:)();
      v344 = v257;
    }

    else
    {
      v353 = 0;
      v344 = 0;
    }

    v258 = type metadata accessor for TaskPriority();
    v259 = v339;
    (*(*(v258 - 8) + 56))(v339, 1, 1, v258);
    v260 = v340;
    sub_1000652DC(v347, v340, type metadata accessor for CRLBoardLibraryViewModel.Item);
    type metadata accessor for MainActor();
    v261 = v346;
    v262 = v349;
    v263 = v318;
    v264 = v342;

    v265 = static MainActor.shared.getter();
    v266 = (v336 + 80) & v343;
    v267 = swift_allocObject();
    v267[2] = v265;
    v267[3] = &protocol witness table for MainActor;
    v267[4] = v227;
    v267[5] = v263;
    v267[6] = v262;
    v267[7] = v93;
    v267[8] = sub_100F795B0;
    v267[9] = v264;
    sub_100065D50(v260, v267 + v266, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10064191C(0, 0, v259, &unk_1014B9910, v267);

    sub_10000BBC4(v335, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_10000BBC4(v320, _s4NodeVMa);
    v156 = 0;
    LODWORD(v348) = 0;
    LODWORD(v350) = 0;
    LODWORD(v352) = 0;
    v158 = 0;
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v351 = 0;
    v162 = 0xE000000000000000;
    v154 = v346;
    v163 = 0xE000000000000000;
    v67 = v319;
    v102 = v334;
    v157 = v344;
    goto LABEL_127;
  }

  v238 = 0;
  v344 = (v114 + 32) & v343;
  v239 = v227 + v344;
  v67 = _swiftEmptyArrayStorage;
  while (v238 < v227[2])
  {
    v112 = v353[9];
    v114 = v350;
    sub_1000652DC(&v239[v112 * v238], v350, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_1000652DC(v114, v237, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_10000BBC4(v237, _s5BoardVMa);
      sub_100065D50(v114, v351, type metadata accessor for CRLBoardLibraryViewModel.Item);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v354[0] = v67;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100776764(0, *(v67 + 16) + 1, 1);
        v67 = v354[0];
      }

      v242 = *(v67 + 16);
      v241 = *(v67 + 24);
      inited = v242 + 1;
      if (v242 >= v241 >> 1)
      {
        sub_100776764(v241 > 1, v242 + 1, 1);
        v67 = v354[0];
      }

      *(v67 + 16) = inited;
      sub_100065D50(v351, v67 + v344 + v242 * v112, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v237 = v348;
    }

    else
    {
      inited = type metadata accessor for CRLBoardLibraryViewModel.Item;
      sub_10000BBC4(v114, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000BBC4(v237, type metadata accessor for CRLBoardLibraryViewModel.Item);
    }

    if (v236 == ++v238)
    {
      goto LABEL_111;
    }
  }

  while (2)
  {
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    swift_once();
LABEL_20:
    v115 = static OS_os_log.crlAssert;
    v116 = swift_initStackObject();
    *(v116 + 16) = xmmword_10146CA70;
    *(v116 + 56) = &type metadata for Int32;
    *(v116 + 64) = &protocol witness table for Int32;
    *(v116 + 32) = v67;
    v117 = sub_100006370(0, &qword_1019F4D30);
    *(v116 + 96) = v117;
    v118 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    v119 = v351;
    *(v116 + 72) = v351;
    v120 = v352;
    *(v116 + 136) = &type metadata for String;
    *(v116 + 144) = v120;
    *(v116 + 104) = v118;
    *(v116 + 112) = v112;
    *(v116 + 120) = v114;
    *(v116 + 176) = &type metadata for UInt;
    *(v116 + 184) = &protocol witness table for UInt;
    *(v116 + 152) = 361;
    v121 = v354[0];
    *(v116 + 216) = v117;
    *(v116 + 224) = v118;
    *(v116 + 192) = v121;
    v122 = v119;
    v123 = v121;
    v124 = static os_log_type_t.error.getter();
    sub_100005404(v115, &_mh_execute_header, v124, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v116);
    swift_setDeallocating();
    v352 = sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v125 = static os_log_type_t.error.getter();
    sub_100005404(v115, &_mh_execute_header, v125, "Unhandled item: %@", 18, 2, inited);

    type metadata accessor for __VaListBuilder();
    v69 = swift_allocObject();
    v69[2] = 8;
    v69[3] = 0;
    v112 = (v69 + 3);
    v69[4] = 0;
    v69[5] = 0;
    v114 = *(inited + 16);
    if (!v114)
    {
LABEL_48:
      v148 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v149 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v150 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v151 = String._bridgeToObjectiveC()();

      [v350 handleFailureInFunction:v149 file:v150 lineNumber:361 isFatal:0 format:v151 args:v148];

      swift_setDeallocating();
      swift_arrayDestroy();
      v152 = objc_opt_self();
      v153 = String._bridgeToObjectiveC()();
      v154 = [v152 systemImageNamed:v153];

      v155 = v154;
      sub_10000BBC4(v344, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v156 = 0;
      LODWORD(v348) = 0;
      LODWORD(v350) = 0;
      LODWORD(v352) = 0;
      v353 = 0;
      v157 = 0;
      v158 = 0;
      v159 = 0;
      v160 = 0;
      v161 = 0;
      v351 = 0;
      v162 = 0xE000000000000000;
      v163 = 0xE000000000000000;
      v67 = v319;
      v102 = v334;
      goto LABEL_127;
    }

    v71 = 0;
LABEL_23:
    LODWORD(v67) = sub_100020E58(&v353[5 * v71], v353[5 * v71 + 3]);
    v126 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v94 = *v112;
    v127 = *(v126 + 16);
    v128 = __OFADD__(*v112, v127);
    v129 = *v112 + v127;
    if (v128)
    {
      __break(1u);
      continue;
    }

    break;
  }

  v67 = v69[4];
  if (v67 >= v129)
  {
LABEL_37:
    v134 = v69[5];
    if (!v134)
    {
      goto LABEL_44;
    }
  }

  else
  {
    if (v67 + 0x4000000000000000 < 0)
    {
      goto LABEL_139;
    }

    v130 = v69[5];
    if (2 * v67 > v129)
    {
      v129 = 2 * v67;
    }

    v69[4] = v129;
    if ((v129 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_140;
    }

    v131 = inited;
    v132 = v126;
    v133 = swift_slowAlloc();
    v134 = v133;
    v69[5] = v133;
    if (v130)
    {
      if (v133 != v130 || v133 >= &v130[8 * v94])
      {
        memmove(v133, v130, 8 * v94);
      }

      v67 = v69;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v126 = v132;
      inited = v131;
      goto LABEL_37;
    }

    v126 = v132;
    inited = v131;
    if (!v134)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }
  }

  v136 = *(v126 + 16);
  if (!v136)
  {
LABEL_22:

    if (++v71 == v114)
    {
      goto LABEL_48;
    }

    goto LABEL_23;
  }

  v137 = (v126 + 32);
  v138 = *v112;
  while (1)
  {
    v139 = *v137++;
    *&v134[8 * v138] = v139;
    v138 = *v112 + 1;
    if (__OFADD__(*v112, 1))
    {
      break;
    }

    *v112 = v138;
    if (!--v136)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_118:
  sub_10000BBC4(v69, _s5BoardVMa);
  swift_unknownObjectRelease();
  sub_10000BBC4(v112, type metadata accessor for CRLBoardIdentifier);
  LODWORD(v350) = 0;
  v154 = 0;
  v353 = 0;
  v157 = 0;
  v351 = 0;
  v156 = 1;
  LODWORD(v352) = 1;
  v161 = v347;
  v163 = v344;
LABEL_119:
  v102 = v334;
  v159 = v335;
  v162 = v340;
  v160 = v341;
  v158 = v336;
LABEL_127:
  sub_100EE1E90(v161, v163);
  v285 = (v67 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_crlaxLastEditedTimestampText);
  *v285 = v160;
  v285[1] = v162;

  v286 = (v67 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_collaboratorName);
  v287 = *(v67 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_collaboratorName);
  v288 = *(v67 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_collaboratorName + 8);
  *v286 = v158;
  v286[1] = v159;
  sub_100EE2C24(v287, v288);

  v289 = (v67 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_folderName);
  *v289 = v353;
  v289[1] = v157;

  v290 = *(v67 + v102);
  if (!v290)
  {
    goto LABEL_147;
  }

  [*(v290 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailImageView) setImage:v154];
  v291 = v154;

  v292 = *(v67 + v102);
  if (!v292)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  v293 = v67;
  v294 = *&v292[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_attributionView];
  v295 = v294;
  v296 = v292;
  v297 = v351;
  v298 = v351;
  sub_100EE10AC(v297);

  sub_10068DD4C(v294);
  v293[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_boardAccessState] = v352;
  v299 = *&v293[v102];
  if (!v299)
  {
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  v300 = v299;
  sub_100EE1210();

  v301 = v350;
  v293[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_canShowFavoriteButton] = v350;
  v302 = *&v293[v102];
  if (!v302)
  {
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  [*(v302 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_favoriteButton) setHidden:v301 ^ 1u];
  v293[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_isFavorite] = v348;
  sub_100EE2D94();
  v293[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController4Item_dimsThumbnail] = v156;
  v303 = *&v293[v102];
  if (v303)
  {
    *(v303 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_dimsThumbnail) = v156;
    v304 = 1.0;
    if (v156)
    {
      v304 = 0.5;
    }

    [*(v303 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailImageView) setAlpha:v304];
    v305 = type metadata accessor for TaskPriority();
    v306 = v339;
    (*(*(v305 - 8) + 56))(v339, 1, 1, v305);
    type metadata accessor for MainActor();
    v307 = v293;
    v308 = v345;
    swift_unknownObjectRetain();
    v309 = static MainActor.shared.getter();
    v310 = swift_allocObject();
    v310[2] = v309;
    v310[3] = &protocol witness table for MainActor;
    v310[4] = v307;
    v310[5] = &off_1018A7C78;
    v310[6] = v308;
    v310[7] = v333;
    sub_10064191C(0, 0, v306, &unk_1014B9900, v310);

    goto LABEL_135;
  }

LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
}

void sub_100F70EEC(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v344 = a7;
  v317 = a6;
  v331 = a5;
  v341 = a4;
  v333 = a2;
  v9 = sub_1005B981C(&qword_1019F33D0);
  __chkstk_darwin(v9 - 8);
  v315 = &v308 - v10;
  v11 = type metadata accessor for CRLBoardIdentifier(0);
  v310 = *(v11 - 8);
  v12 = __chkstk_darwin(v11 - 8);
  v311 = v13;
  v312 = &v308 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v318 = (&v308 - v14);
  v15 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v15 - 8);
  v335 = &v308 - v16;
  v316 = _s5BoardVMa(0);
  __chkstk_darwin(v316);
  v329 = &v308 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UUID();
  v323 = *(v18 - 8);
  v324 = v18;
  __chkstk_darwin(v18);
  v320 = &v308 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1005B981C(&unk_1019FB770);
  __chkstk_darwin(v20 - 8);
  v325 = &v308 - v21;
  v22 = _s4NodeVMa(0);
  v23 = *(v22 - 8);
  v321 = v22;
  v322 = v23;
  v24 = __chkstk_darwin(v22);
  v313 = &v308 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v319 = &v308 - v26;
  v27 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v28 = __chkstk_darwin(v27 - 8);
  v309 = &v308 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v314 = &v308 - v31;
  __chkstk_darwin(v30);
  v332 = &v308 - v32;
  v33 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin(v33);
  v334 = &v308 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v346 = &v308 - v38;
  v39 = __chkstk_darwin(v37);
  v343 = &v308 - v40;
  v41 = __chkstk_darwin(v39);
  v345 = &v308 - v42;
  v43 = __chkstk_darwin(v41);
  v339 = &v308 - v44;
  v337 = v45;
  __chkstk_darwin(v43);
  v336 = &v308 - v46;
  v47 = sub_1005B981C(&qword_101A23CF0);
  __chkstk_darwin(v47 - 8);
  v326 = &v308 - v48;
  v49 = type metadata accessor for UIBackgroundConfiguration();
  v327 = *(v49 - 8);
  v328 = v49;
  __chkstk_darwin(v49);
  v338 = &v308 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1005B981C(&unk_101A15B20);
  __chkstk_darwin(v51 - 8);
  v53 = &v308 - v52;
  v54 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_item;
  swift_beginAccess();
  sub_10000BE14(&a1[v54], v53, &unk_101A15B20);
  v340 = sub_100F73970(a1, v53, a3, &OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_viewController);
  sub_10000CAAC(v53, &unk_101A15B20);
  v55 = sub_100F88220();
  sub_1008F36C4(v55, v56);
  v342 = a3;
  sub_1000652DC(a3, v53, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v348 = v34;
  (*(v34 + 7))(v53, 0, 1, v33);
  swift_beginAccess();
  v57 = v53;
  v58 = a1;
  sub_10002C638(v57, &a1[v54], &unk_101A15B20);
  swift_endAccess();
  *&a1[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_crlaxDelegate + 8] = &off_1018A9040;
  v59 = v344;
  swift_unknownObjectWeakAssign();
  v60 = [v59 collectionView];
  if (!v60)
  {
    __break(1u);
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  v61 = v60;
  v347 = v33;
  v62 = [v60 isEditing];

  sub_1008F31A8(v62);
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v63 = a1;
  }

  else
  {
    v63 = 0;
  }

  v64 = v334;
  if (v63)
  {
    v65 = a1;
    v66 = [v344 collectionView];
    if (!v66)
    {
      goto LABEL_147;
    }

    v67 = v66;
    v68 = [v66 indexPathsForSelectedItems];

    v69 = v338;
    if (v68)
    {
      type metadata accessor for IndexPath();
      v70 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v71 = v65;
      [v63 setSelected:{sub_1012CD684(v333, v70)}];

      v72 = v71;
      UICollectionViewCell.defaultBackgroundConfiguration()();

      UIBackgroundConfiguration.cornerRadius.setter();
      v73 = [v344 collectionView];
      if (!v73)
      {
        goto LABEL_148;
      }

      v74 = v73;

      v75 = [v74 backgroundColor];

      UIBackgroundConfiguration.backgroundColor.setter();
      v76 = v326;
      v77 = v327;
      v78 = v328;
      (*(v327 + 16))(v326, v69, v328);
      (*(v77 + 56))(v76, 0, 1, v78);
      v79 = v72;
      UICollectionViewCell.backgroundConfiguration.setter();

      (*(v77 + 8))(v69, v78);
    }

    else
    {
    }

    v58 = a1;
  }

  v333 = v63;
  v80 = swift_allocObject();
  *(v80 + 24) = &off_10188CE10;
  swift_unknownObjectWeakInit();
  v81 = v342;
  v82 = v336;
  sub_1000652DC(v342, v336, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v83 = v348[80];
  v84 = swift_allocObject();
  *(v84 + 16) = v80;
  v338 = v84;
  sub_100065D50(v82, v84 + ((v83 + 24) & ~v83), type metadata accessor for CRLBoardLibraryViewModel.Item);
  [objc_opt_self() crl_screenScale];
  v86 = v85;
  v87 = v339;
  sub_1000652DC(v81, v339, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
LABEL_43:
      v119 = v329;
      sub_100065D50(v87, v329, _s5BoardVMa);
      type metadata accessor for CRLBoardLibrary();
      v135 = swift_dynamicCastClass();
      if (!v135)
      {
        v348 = objc_opt_self();
        v162 = [v348 _atomicIncrementAssertCount];
        v349[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v349);
        StaticString.description.getter();
        v163 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v164 = String._bridgeToObjectiveC()();

        v165 = [v164 lastPathComponent];

        v166 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v168 = v167;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v169 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v162;
        v171 = sub_100006370(0, &qword_1019F4D30);
        *(inited + 96) = v171;
        v172 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
        *(inited + 104) = v172;
        *(inited + 72) = v163;
        *(inited + 136) = &type metadata for String;
        v173 = sub_1000053B0();
        *(inited + 112) = v166;
        *(inited + 120) = v168;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v173;
        *(inited + 152) = 297;
        v174 = v349[0];
        *(inited + 216) = v171;
        *(inited + 224) = v172;
        *(inited + 192) = v174;
        v175 = v163;
        v176 = v174;
        v177 = static os_log_type_t.error.getter();
        sub_100005404(v169, &_mh_execute_header, v177, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v178 = static os_log_type_t.error.getter();
        sub_100005404(v169, &_mh_execute_header, v178, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v179 = swift_allocObject();
        v179[2] = 8;
        v179[3] = 0;
        v179[4] = 0;
        v179[5] = 0;
        v180 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v181 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v182 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v183 = String._bridgeToObjectiveC()();

        [v348 handleFailureInFunction:v181 file:v182 lineNumber:297 isFatal:0 format:v183 args:v180];

        sub_10000BBC4(v329, _s5BoardVMa);

LABEL_133:
        return;
      }

      v136 = v135;
      v64 = v318;
      sub_1000652DC(v119, v318, type metadata accessor for CRLBoardIdentifier);
      v137 = v316;
      swift_unknownObjectRetain();
      v138 = sub_101303CCC();
      v342 = v139;
      v343 = v138;
      v339 = v140;
      v337 = v141;
      v142 = v315;
      sub_10000BE14(v119 + v137[20], v315, &qword_1019F33D0);
      v143 = _s5BoardV13ShareMetadataVMa(0);
      if ((*(*(v143 - 8) + 48))(v142, 1, v143) == 1)
      {
        v144 = sub_10000CAAC(v142, &qword_1019F33D0);
        v336 = 0;
        v118 = 0;
      }

      else
      {
        v242 = (v142 + *(v143 + 24));
        v118 = v242[1];
        v336 = *v242;

        v144 = sub_10000BBC4(v142, _s5BoardV13ShareMetadataVMa);
      }

      v243 = v137[15];
      LODWORD(v345) = *(v119 + v137[14]);
      v244 = *(v119 + v243);
      v330 = v58;
      if (v244 == 1)
      {
        v245 = *(*(v136 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedHighlightController) + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights);
        __chkstk_darwin(v144);
        v350._object = v64;

        v87 = sub_101107CA8(sub_100F794EC, (&v308 - 4), v245);

        if (!v87)
        {
          goto LABEL_117;
        }

        v246 = *(v87 + OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_previewImage);
        if (v246)
        {
          v247 = [v246 UIImage];
        }

        else
        {
LABEL_119:
          v247 = 0;
        }

        v280 = *&v330[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_viewController];
        if (!v280)
        {
          goto LABEL_149;
        }

        v159 = *(v280 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_attributionView);
        v334 = v118;
        v347 = v247;
        if (v159)
        {
          v281 = v159;
          v282 = v247;
        }

        else
        {
          v283 = objc_allocWithZone(SWAttributionView);
          v284 = v247;
          v281 = [v283 init];
          [v281 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v281 setHorizontalAlignment:2];
          [v281 setBackgroundStyle:2];
          v159 = v281;
        }

        [v281 setHighlight:*(v87 + OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_swHighlight)];
        swift_unknownObjectRelease();
        sub_10000BBC4(v119, _s5BoardVMa);
        sub_10000BBC4(v64, type metadata accessor for CRLBoardIdentifier);

        LODWORD(v346) = 0;
        v154 = 0;
        v155 = 0;
        v153 = 1;
        LODWORD(v348) = 1;
      }

      else
      {
        v334 = v118;
        v248 = v309;
        sub_1000652DC(v344 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter, v309, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        v249 = sub_1005B981C(&qword_1019F3480);
        v250 = (*(*(v249 - 8) + 48))(v248, 5, v249);
        sub_10000BBC4(v248, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        LODWORD(v346) = v250 != 5;
        if (v250 == 5)
        {
          LODWORD(v348) = 0;
        }

        else
        {
          if (*(v119 + v137[10]))
          {
            v251 = 2;
          }

          else
          {
            v251 = 0;
          }

          LODWORD(v348) = v251;
        }

        v269 = type metadata accessor for TaskPriority();
        (*(*(v269 - 8) + 56))(v335, 1, 1, v269);
        v270 = v312;
        sub_1000652DC(v64, v312, type metadata accessor for CRLBoardIdentifier);
        type metadata accessor for MainActor();
        v271 = v340;
        v272 = v340;
        v347 = v317;
        v273 = v338;

        v274 = static MainActor.shared.getter();
        v275 = (*(v310 + 80) + 32) & ~*(v310 + 80);
        v276 = (v311 + v275 + 7) & 0xFFFFFFFFFFFFFFF8;
        v277 = (v276 + 15) & 0xFFFFFFFFFFFFFFF8;
        v278 = swift_allocObject();
        *(v278 + 16) = v274;
        *(v278 + 24) = &protocol witness table for MainActor;
        sub_100065D50(v270, v278 + v275, type metadata accessor for CRLBoardIdentifier);
        *(v278 + v276) = v347;
        *(v278 + v277) = v86;
        v279 = (v278 + ((v277 + 15) & 0xFFFFFFFFFFFFFFF8));
        *v279 = sub_100F77560;
        v279[1] = v273;
        sub_10064191C(0, 0, v335, &unk_1014B98E8, v278);
        swift_unknownObjectRelease();

        sub_10000BBC4(v329, _s5BoardVMa);
        sub_10000BBC4(v318, type metadata accessor for CRLBoardIdentifier);
        v153 = 0;
        v154 = 0;
        v155 = 0;
        v159 = 0;
        v347 = v271;
      }

      v161 = v342;
      v158 = v343;
      v157 = v339;
      v156 = v336;
      v160 = v337;
      v118 = v334;
      goto LABEL_126;
    }

    v329 = v83;
    v330 = v58;
    sub_100065D50(v87, v332, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v89 = *(v341 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
    v90 = *(v341 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot + 8);
    v91 = *(v341 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot + 24);

    v92 = v320;
    sub_10003E264(v320);
    if (*(v91 + 16))
    {
      v328 = v90;
      v339 = v89;
      v93 = sub_10003E994(v92);
      v94 = v321;
      v95 = v322;
      if (v96)
      {
        v87 = v325;
        sub_1000652DC(*(v91 + 56) + *(v322 + 72) * v93, v325, _s4NodeVMa);
        (*(v323 + 8))(v92, v324);

        v97 = 0;
LABEL_53:
        (*(v95 + 56))(v87, v97, 1, v94);
        v184 = (*(v95 + 48))(v87, 1, v94);
        v104 = v329;
        if (v184 == 1)
        {
          sub_10000CAAC(v87, &unk_1019FB770);
          sub_1005B981C(&qword_1019F54E0);
          v95 = swift_initStackObject();
          *(v95 + 16) = xmmword_10146C6B0;
          v185 = v314;
          sub_1000652DC(v332, v314, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          v186 = sub_10006A888();
          v188 = v187;
          sub_10000BBC4(v185, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          *(v95 + 56) = &type metadata for String;
          v189 = sub_1000053B0();
          *(v95 + 32) = v186;
          v347 = v189;
          v348 = (v95 + 32);
          *(v95 + 64) = v189;
          *(v95 + 40) = v188;
          v345 = objc_opt_self();
          v190 = [v345 _atomicIncrementAssertCount];
          v349[0] = [objc_allocWithZone(NSString) init];
          sub_100604538(v95, v349);
          StaticString.description.getter();
          v346 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v191 = String._bridgeToObjectiveC()();

          v192 = [v191 lastPathComponent];

          v193 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v195 = v194;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v196 = static OS_os_log.crlAssert;
          v197 = swift_initStackObject();
          *(v197 + 16) = xmmword_10146CA70;
          *(v197 + 56) = &type metadata for Int32;
          *(v197 + 64) = &protocol witness table for Int32;
          *(v197 + 32) = v190;
          v198 = sub_100006370(0, &qword_1019F4D30);
          *(v197 + 96) = v198;
          v199 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
          v200 = v346;
          *(v197 + 72) = v346;
          v201 = v347;
          *(v197 + 136) = &type metadata for String;
          *(v197 + 144) = v201;
          *(v197 + 104) = v199;
          *(v197 + 112) = v193;
          *(v197 + 120) = v195;
          *(v197 + 176) = &type metadata for UInt;
          *(v197 + 184) = &protocol witness table for UInt;
          *(v197 + 152) = 254;
          v202 = v349[0];
          *(v197 + 216) = v198;
          *(v197 + 224) = v199;
          *(v197 + 192) = v202;
          v203 = v200;
          v204 = v202;
          v205 = static os_log_type_t.error.getter();
          sub_100005404(v196, &_mh_execute_header, v205, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v197);
          swift_setDeallocating();
          v347 = sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v206 = static os_log_type_t.error.getter();
          sub_100005404(v196, &_mh_execute_header, v206, "Filter does not exist: %@", 25, 2, v95);

          type metadata accessor for __VaListBuilder();
          v64 = swift_allocObject();
          v64[2] = 8;
          v64[3] = 0;
          v207 = v64 + 3;
          v64[4] = 0;
          v64[5] = 0;
          v58 = *(v95 + 16);
          if (!v58)
          {
LABEL_87:
            v231 = __VaListBuilder.va_list()();
            StaticString.description.getter();
            v232 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v233 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v234 = String._bridgeToObjectiveC()();

            [v345 handleFailureInFunction:v232 file:v233 lineNumber:254 isFatal:0 format:v234 args:v231];

            swift_setDeallocating();
            swift_arrayDestroy();

            sub_10000BBC4(v332, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            return;
          }

          v118 = 0;
          v119 = 40;
          while (1)
          {
            v208 = &v348[40 * v118];
            v104 = *(v208 + 4);
            LODWORD(v87) = sub_100020E58(v208, *(v208 + 3));
            v209 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
            v94 = *v207;
            v210 = *(v209 + 16);
            v124 = __OFADD__(*v207, v210);
            v211 = *v207 + v210;
            if (v124)
            {
              goto LABEL_136;
            }

            v87 = v64[4];
            if (v87 >= v211)
            {
              goto LABEL_73;
            }

            if (v87 + 0x4000000000000000 < 0)
            {
              goto LABEL_139;
            }

            v104 = v64[5];
            if (2 * v87 > v211)
            {
              v211 = 2 * v87;
            }

            v64[4] = v211;
            if ((v211 - 0x1000000000000000) >> 61 != 7)
            {
              goto LABEL_140;
            }

            v212 = v95;
            v213 = v209;
            v214 = swift_slowAlloc();
            v215 = v214;
            v64[5] = v214;
            if (v104)
            {
              break;
            }

            v209 = v213;
            v95 = v212;
            v119 = 40;
            if (!v215)
            {
LABEL_80:
              __break(1u);
              goto LABEL_81;
            }

LABEL_74:
            v217 = *(v209 + 16);
            if (v217)
            {
              v218 = (v209 + 32);
              v219 = *v207;
              while (1)
              {
                v220 = *v218++;
                v215[v219] = v220;
                v219 = *v207 + 1;
                if (__OFADD__(*v207, 1))
                {
                  break;
                }

                *v207 = v219;
                if (!--v217)
                {
                  goto LABEL_58;
                }
              }

              __break(1u);
              goto LABEL_119;
            }

LABEL_58:

            if (++v118 == v58)
            {
              goto LABEL_87;
            }
          }

          if (v214 != v104 || v214 >= v104 + 8 * v94)
          {
            memmove(v214, v104, 8 * v94);
          }

          v87 = v64;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v209 = v213;
          v95 = v212;
          v119 = 40;
LABEL_73:
          v215 = v64[5];
          if (!v215)
          {
            goto LABEL_80;
          }

          goto LABEL_74;
        }

LABEL_81:
        v221 = v87;
        v222 = v319;
        sub_100065D50(v221, v319, _s4NodeVMa);
        v223 = *(v222 + *(v94 + 20));
        v224 = *(v223 + 16);
        v225 = _swiftEmptyArrayStorage;
        v328 = ~v104;
        if (v224)
        {
          v349[0] = _swiftEmptyArrayStorage;
          sub_100776764(0, v224, 0);
          v225 = v349[0];
          v226 = v223 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
          v95 = *(v95 + 72);
          v227 = (v104 + 32) & ~v104;
          v228 = v313;
          do
          {
            sub_1000652DC(v226, v228, _s4NodeVMa);
            sub_1000652DC(v228, v64, type metadata accessor for CRLBoardLibraryViewModel.Item);
            sub_10000BBC4(v228, _s4NodeVMa);
            v349[0] = v225;
            v230 = v225[2];
            v229 = v225[3];
            if (v230 >= v229 >> 1)
            {
              sub_100776764(v229 > 1, v230 + 1, 1);
              v228 = v313;
              v225 = v349[0];
            }

            v225[2] = v230 + 1;
            sub_100065D50(v64, v225 + v227 + *(v348 + 9) * v230, type metadata accessor for CRLBoardLibraryViewModel.Item);
            v226 += v95;
            --v224;
          }

          while (v224);
          v104 = v329;
        }

        v235 = v225[2];
        v236 = v343;
        if (!v235)
        {
          v87 = _swiftEmptyArrayStorage;
LABEL_110:
          v252 = *(v87 + 16);

          if (v252)
          {
            v253 = [objc_opt_self() mainBundle];
            v350._object = 0x80000001015B3C50;
            v254._countAndFlagsBits = 0x72616F6220756C25;
            v254._object = 0xEC00000029732864;
            v350._countAndFlagsBits = 0xD00000000000001ALL;
            v255._countAndFlagsBits = 0;
            v255._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v254, 0, v253, v255, v350);

            sub_1005B981C(&qword_1019F54E0);
            v256 = swift_allocObject();
            *(v256 + 16) = xmmword_10146C6B0;
            *(v256 + 56) = &type metadata for Int;
            *(v256 + 64) = &protocol witness table for Int;
            *(v256 + 32) = v252;
            v343 = static String.localizedStringWithFormat(_:_:)();
            v339 = v257;
          }

          else
          {
            v343 = 0;
            v339 = 0;
          }

          v258 = v317;
          v259 = type metadata accessor for TaskPriority();
          v260 = v335;
          (*(*(v259 - 8) + 56))(v335, 1, 1, v259);
          v261 = v336;
          sub_1000652DC(v342, v336, type metadata accessor for CRLBoardLibraryViewModel.Item);
          type metadata accessor for MainActor();
          v262 = v340;
          v263 = v344;
          v264 = v258;
          v265 = v338;

          v266 = static MainActor.shared.getter();
          v267 = (v329 + 80) & v328;
          v268 = swift_allocObject();
          v268[2] = v266;
          v268[3] = &protocol witness table for MainActor;
          v268[4] = v225;
          v268[5] = v264;
          v268[6] = v263;
          v268[7] = v86;
          v268[8] = sub_100F77560;
          v268[9] = v265;
          sub_100065D50(v261, v268 + v267, type metadata accessor for CRLBoardLibraryViewModel.Item);
          sub_10064191C(0, 0, v260, &unk_1014B98F0, v268);

          sub_10000BBC4(v332, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          sub_10000BBC4(v319, _s4NodeVMa);
          v153 = 0;
          LODWORD(v345) = 0;
          LODWORD(v346) = 0;
          LODWORD(v348) = 0;
          v156 = 0;
          v118 = 0;
          v157 = 0;
          v158 = 0;
          v159 = 0;
          v160 = 0xE000000000000000;
          v155 = v339;
          v347 = v340;
          v161 = 0xE000000000000000;
          v154 = v343;
          goto LABEL_126;
        }

        v58 = 0;
        v339 = (v104 + 32) & v328;
        v237 = v225 + v339;
        v87 = _swiftEmptyArrayStorage;
        while (v58 < v225[2])
        {
          v238 = *(v348 + 9);
          v104 = v345;
          sub_1000652DC(&v237[v238 * v58], v345, type metadata accessor for CRLBoardLibraryViewModel.Item);
          sub_1000652DC(v104, v236, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            sub_10000BBC4(v236, _s5BoardVMa);
            sub_100065D50(v104, v346, type metadata accessor for CRLBoardLibraryViewModel.Item);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v349[0] = v87;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_100776764(0, *(v87 + 16) + 1, 1);
              v87 = v349[0];
            }

            v241 = *(v87 + 16);
            v240 = *(v87 + 24);
            v95 = v241 + 1;
            if (v241 >= v240 >> 1)
            {
              sub_100776764(v240 > 1, v241 + 1, 1);
              v87 = v349[0];
            }

            *(v87 + 16) = v95;
            sub_100065D50(v346, v87 + v339 + v241 * v238, type metadata accessor for CRLBoardLibraryViewModel.Item);
            v236 = v343;
          }

          else
          {
            v95 = type metadata accessor for CRLBoardLibraryViewModel.Item;
            sub_10000BBC4(v104, type metadata accessor for CRLBoardLibraryViewModel.Item);
            sub_10000BBC4(v236, type metadata accessor for CRLBoardLibraryViewModel.Item);
          }

          if (v235 == ++v58)
          {
            goto LABEL_110;
          }
        }

LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      (*(v323 + 8))(v92, v324);
      v97 = 1;
    }

    else
    {

      (*(v323 + 8))(v92, v324);
      v97 = 1;
      v94 = v321;
      v95 = v322;
    }

    v87 = v325;
    goto LABEL_53;
  }

  v330 = v58;
  sub_1005B981C(&qword_1019F54E0);
  v95 = swift_initStackObject();
  *(v95 + 16) = xmmword_10146C6B0;
  v98 = sub_100F8903C();
  v100 = v99;
  *(v95 + 56) = &type metadata for String;
  v101 = sub_1000053B0();
  *(v95 + 32) = v98;
  v347 = v101;
  v348 = (v95 + 32);
  *(v95 + 64) = v101;
  *(v95 + 40) = v100;
  v345 = objc_opt_self();
  LODWORD(v87) = [v345 _atomicIncrementAssertCount];
  v349[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(v95, v349);
  StaticString.description.getter();
  v346 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v102 = String._bridgeToObjectiveC()();

  v103 = [v102 lastPathComponent];

  v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v105;

  if (qword_1019F20A0 != -1)
  {
LABEL_141:
    swift_once();
  }

  v106 = static OS_os_log.crlAssert;
  v107 = swift_initStackObject();
  *(v107 + 16) = xmmword_10146CA70;
  *(v107 + 56) = &type metadata for Int32;
  *(v107 + 64) = &protocol witness table for Int32;
  *(v107 + 32) = v87;
  v108 = sub_100006370(0, &qword_1019F4D30);
  *(v107 + 96) = v108;
  v109 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  v110 = v346;
  *(v107 + 72) = v346;
  v111 = v347;
  *(v107 + 136) = &type metadata for String;
  *(v107 + 144) = v111;
  *(v107 + 104) = v109;
  *(v107 + 112) = v104;
  *(v107 + 120) = v58;
  *(v107 + 176) = &type metadata for UInt;
  *(v107 + 184) = &protocol witness table for UInt;
  *(v107 + 152) = 361;
  v112 = v349[0];
  *(v107 + 216) = v108;
  *(v107 + 224) = v109;
  *(v107 + 192) = v112;
  v113 = v110;
  v114 = v112;
  v115 = static os_log_type_t.error.getter();
  sub_100005404(v106, &_mh_execute_header, v115, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v107);
  swift_setDeallocating();
  v347 = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v116 = static os_log_type_t.error.getter();
  sub_100005404(v106, &_mh_execute_header, v116, "Unhandled item: %@", 18, 2, v95);

  type metadata accessor for __VaListBuilder();
  v64 = swift_allocObject();
  v64[2] = 8;
  v64[3] = 0;
  v117 = v64 + 3;
  v64[4] = 0;
  v64[5] = 0;
  v58 = *(v95 + 16);
  if (!v58)
  {
LABEL_46:
    v145 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v146 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v147 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v148 = String._bridgeToObjectiveC()();

    [v345 handleFailureInFunction:v146 file:v147 lineNumber:361 isFatal:0 format:v148 args:v145];

    swift_setDeallocating();
    swift_arrayDestroy();
    v149 = objc_opt_self();
    v150 = String._bridgeToObjectiveC()();
    v151 = [v149 systemImageNamed:v150];

    v347 = v151;
    v152 = v151;
    sub_10000BBC4(v339, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v153 = 0;
    LODWORD(v345) = 0;
    LODWORD(v346) = 0;
    LODWORD(v348) = 0;
    v154 = 0;
    v155 = 0;
    v156 = 0;
    v118 = 0;
    v157 = 0;
    v158 = 0;
    v159 = 0;
    v160 = 0xE000000000000000;
    v161 = 0xE000000000000000;
    goto LABEL_126;
  }

  v118 = 0;
  v119 = 40;
  while (1)
  {
    v120 = &v348[40 * v118];
    v104 = *(v120 + 4);
    LODWORD(v87) = sub_100020E58(v120, *(v120 + 3));
    v121 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v122 = *v117;
    v123 = *(v121 + 16);
    v124 = __OFADD__(*v117, v123);
    v125 = *v117 + v123;
    if (v124)
    {
      __break(1u);
      goto LABEL_135;
    }

    v87 = v64[4];
    if (v87 >= v125)
    {
      goto LABEL_35;
    }

    if (v87 + 0x4000000000000000 < 0)
    {
      goto LABEL_137;
    }

    v104 = v64[5];
    if (2 * v87 > v125)
    {
      v125 = 2 * v87;
    }

    v64[4] = v125;
    if ((v125 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_138;
    }

    v126 = v95;
    v127 = v121;
    v128 = swift_slowAlloc();
    v129 = v128;
    v64[5] = v128;
    if (v104)
    {
      if (v128 != v104 || v128 >= v104 + 8 * v122)
      {
        memmove(v128, v104, 8 * v122);
      }

      v87 = v64;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v121 = v127;
      v95 = v126;
      v119 = 40;
LABEL_35:
      v129 = v64[5];
      if (!v129)
      {
        goto LABEL_42;
      }

      goto LABEL_36;
    }

    v121 = v127;
    v95 = v126;
    v119 = 40;
    if (!v129)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

LABEL_36:
    v131 = *(v121 + 16);
    if (v131)
    {
      break;
    }

LABEL_20:

    if (++v118 == v58)
    {
      goto LABEL_46;
    }
  }

  v132 = (v121 + 32);
  v133 = *v117;
  while (1)
  {
    v134 = *v132++;
    v129[v133] = v134;
    v133 = *v117 + 1;
    if (__OFADD__(*v117, 1))
    {
      break;
    }

    *v117 = v133;
    if (!--v131)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_117:
  sub_10000BBC4(v119, _s5BoardVMa);
  swift_unknownObjectRelease();
  sub_10000BBC4(v64, type metadata accessor for CRLBoardIdentifier);
  LODWORD(v346) = 0;
  v347 = 0;
  v154 = 0;
  v155 = 0;
  v159 = 0;
  v153 = 1;
  LODWORD(v348) = 1;
  v161 = v342;
  v158 = v343;
  v157 = v339;
  v156 = v336;
  v160 = v337;
LABEL_126:
  v285 = v330;
  sub_1008F36E4(v158, v161);
  v286 = &v285[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_crlaxLastEditedTimestampText];
  *v286 = v157;
  v286[1] = v160;

  v287 = &v285[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_collaboratorName];
  v288 = *&v285[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_collaboratorName];
  v289 = *&v285[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_collaboratorName + 8];
  *v287 = v156;
  v287[1] = v118;
  sub_1008F37B4(v288, v289);

  v290 = &v285[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_folderName];
  *v290 = v154;
  v290[1] = v155;

  v291 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_viewController;
  v292 = *&v285[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_viewController];
  if (!v292)
  {
    goto LABEL_143;
  }

  v293 = v347;
  [*(v292 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailImageView) setImage:v347];

  v294 = v159;
  sub_1008F39E4(v159);
  v285[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_boardAccessState] = v348;
  v295 = *&v285[v291];
  if (!v295)
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v296 = v285;
  v297 = v295;
  sub_100EE1210();

  v298 = v346;
  v296[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_canShowFavoriteButton] = v346;
  v299 = *&v296[v291];
  if (!v299)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  [*(v299 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_favoriteButton) setHidden:v298 ^ 1u];
  v296[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_isFavorite] = v345;
  sub_1008F38F0();
  v296[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_dimsThumbnail] = v153;
  v300 = *&v296[v291];
  if (v300)
  {
    *(v300 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_dimsThumbnail) = v153;
    v301 = 1.0;
    if (v153)
    {
      v301 = 0.5;
    }

    [*(v300 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailImageView) setAlpha:v301];
    v302 = type metadata accessor for TaskPriority();
    v303 = v335;
    (*(*(v302 - 8) + 56))(v335, 1, 1, v302);
    type metadata accessor for MainActor();
    v304 = v296;
    v305 = v341;
    swift_unknownObjectRetain();
    v306 = static MainActor.shared.getter();
    v307 = swift_allocObject();
    v307[2] = v306;
    v307[3] = &protocol witness table for MainActor;
    v307[4] = v304;
    v307[5] = &off_10188CE10;
    v307[6] = v305;
    v307[7] = v331;
    sub_10064191C(0, 0, v303, &unk_1014B98E0, v307);

    goto LABEL_133;
  }

LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
}

id sub_100F73970(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v51 = a1;
  v52 = a4;
  v6 = type metadata accessor for UUID();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = __chkstk_darwin(v6);
  v55 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v54 = &v50 - v9;
  v10 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v50 - v14;
  v16 = _s5BoardVMa(0);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v53 = &v50 - v20;
  v21 = sub_1005B981C(&unk_101A15B20);
  __chkstk_darwin(v21 - 8);
  v23 = &v50 - v22;
  v24 = sub_1005B981C(&qword_101A23CF8);
  v25 = __chkstk_darwin(v24 - 8);
  v27 = &v50 - v26;
  v28 = *(v25 + 56);
  sub_10000BE14(a2, &v50 - v26, &unk_101A15B20);
  sub_1000652DC(a3, &v27[v28], type metadata accessor for CRLBoardLibraryViewModel.Item);
  v29 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  if ((*(*(v29 - 8) + 48))(v27, 1, v29) == 1)
  {
    goto LABEL_16;
  }

  sub_10000BE14(v27, v23, &unk_101A15B20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v31 = type metadata accessor for CRLBoardLibraryViewModel.Item;
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v32 = swift_getEnumCaseMultiPayload();
    v31 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
    if (v32 == 1)
    {
      sub_100065D50(v23, v15, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_100065D50(&v27[v28], v13, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v33 = v54;
      sub_10003E264(v54);
      v34 = v55;
      sub_10003E264(v55);
      v35 = static UUID.== infix(_:_:)();
      v36 = *(v56 + 8);
      v37 = v34;
      v38 = v57;
      v36(v37, v57);
      v36(v33, v38);
      sub_10000BBC4(v13, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v39 = v15;
      v40 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v42 = swift_getEnumCaseMultiPayload();
  v31 = _s5BoardVMa;
  if (v42 != 2)
  {
LABEL_15:
    sub_10000BBC4(v23, v31);
LABEL_16:
    v49 = &qword_101A23CF8;
LABEL_17:
    sub_10000CAAC(v27, v49);
    return 0;
  }

  v43 = v53;
  sub_100065D50(v23, v53, _s5BoardVMa);
  sub_100065D50(&v27[v28], v19, _s5BoardVMa);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    sub_10000BBC4(v19, _s5BoardVMa);
    sub_10000BBC4(v43, _s5BoardVMa);
    v49 = &unk_101A15B20;
    goto LABEL_17;
  }

  v44 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
  v45 = *(v43 + v44);
  v46 = *(v43 + v44 + 8);
  v47 = &v19[v44];
  if (v45 == *v47 && v46 == *(v47 + 1))
  {
    sub_10000BBC4(v19, _s5BoardVMa);
    sub_10000BBC4(v43, _s5BoardVMa);
    result = sub_10000CAAC(v27, &unk_101A15B20);
    goto LABEL_13;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
  sub_10000BBC4(v19, _s5BoardVMa);
  v39 = v43;
  v40 = _s5BoardVMa;
LABEL_6:
  sub_10000BBC4(v39, v40);
  result = sub_10000CAAC(v27, &unk_101A15B20);
  if ((v35 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v48 = *(v51 + *v52);
  if (v48)
  {
    return [*(v48 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailImageView) image];
  }

  __break(1u);
  return result;
}

uint64_t sub_100F73F4C(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          if (a4 != 3 || a3 != 1)
          {
            return 0;
          }
        }

        else if (a4 != 3 || a3 != 2)
        {
          return 0;
        }
      }

      else if (a4 != 3 || a3)
      {
        return 0;
      }

      return 1;
    }

    if (a4 == 2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!a2)
    {
      if (!a4)
      {
        goto LABEL_9;
      }

      return 0;
    }

    if (a4 == 1)
    {
LABEL_9:
      sub_100006370(0, &qword_1019F54D0);
      return static NSObject.== infix(_:_:)() & 1;
    }
  }

  return 0;
}

void sub_100F74038(uint64_t a1, void *a2)
{
  v47 = _convertErrorToNSError(_:)();
  if ([v47 code] == 3072)
  {
  }

  else
  {
    sub_100006370(0, &qword_1019F6EE0);
    v3 = static OS_os_log.default.getter();
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v46 = a2;
    v7 = v6;
    *(inited + 56) = &type metadata for String;
    v8 = sub_1000053B0();
    *(inited + 64) = v8;
    *(inited + 32) = v5;
    *(inited + 40) = v7;
    v9 = static os_log_type_t.default.getter();
    sub_100005404(v3, &_mh_execute_header, v9, "Sharing failed with error: %@", 29, 2, inited);

    swift_setDeallocating();
    sub_100005070(inited + 32);
    v45 = objc_opt_self();
    v10 = [v45 mainBundle];
    v11 = String._bridgeToObjectiveC()();
    v12 = String._bridgeToObjectiveC()();
    v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = [v45 mainBundle];
    v17 = String._bridgeToObjectiveC()();
    v18 = String._bridgeToObjectiveC()();
    v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = static OS_os_log.default.getter();
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_10146C4D0;
    *(v24 + 32) = v44;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = v8;
    *(v24 + 40) = v15;
    *(v24 + 96) = &type metadata for String;
    *(v24 + 104) = v8;
    *(v24 + 72) = v20;
    *(v24 + 80) = v22;
    swift_getErrorValue();

    v25 = Error.localizedDescription.getter();
    *(v24 + 136) = &type metadata for String;
    *(v24 + 144) = v8;
    *(v24 + 112) = v25;
    *(v24 + 120) = v26;
    v27 = static os_log_type_t.default.getter();
    sub_100005404(v23, &_mh_execute_header, v27, "Alert: %@ %@ With error: %@", 27, 2, v24);

    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v28 = String._bridgeToObjectiveC()();

    v29 = String._bridgeToObjectiveC()();

    v30 = [objc_opt_self() alertControllerWithTitle:v28 message:v29 preferredStyle:1];

    v31 = [v45 mainBundle];
    v32 = String._bridgeToObjectiveC()();
    v33 = String._bridgeToObjectiveC()();
    v34 = [v31 localizedStringForKey:v32 value:v33 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = String._bridgeToObjectiveC()();

    v36 = [objc_opt_self() actionWithTitle:v35 style:0 handler:0];

    [v30 addAction:v36];
    v37 = [v46 presentedViewController];
    if (v37 && (v38 = v37, objc_opt_self(), v39 = swift_dynamicCastObjCClass(), v38, v39))
    {
      v40 = swift_allocObject();
      *(v40 + 16) = v46;
      *(v40 + 24) = v30;
      aBlock[4] = sub_100AB9F58;
      aBlock[5] = v40;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100007638;
      aBlock[3] = &unk_1018A90A0;
      v41 = _Block_copy(aBlock);
      v42 = v46;
      v43 = v30;

      [v42 dismissViewControllerAnimated:1 completion:v41];

      _Block_release(v41);
    }

    else
    {
      [v46 presentViewController:v30 animated:1 completion:0];
    }
  }
}

uint64_t sub_100F74690(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_100F5EED4(a1, v7, v4, v5, v6);
}

uint64_t sub_100F7475C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  v6 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v7 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v8 = *(v6 + 72);
  while ((sub_1012CD6CC(v7, a2) & 1) == 0)
  {
    ++v5;
    v7 += v8;
    if (v2 == v5)
    {
      return 0;
    }
  }

  return v5;
}

void sub_100F74844()
{
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_thumbnailProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___diffableDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_pendingBoardIdentifiersToRefresh) = _swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_imageCacheObserver) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_storeMetadataObserver) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_renameDeleteObserver) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchString);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchComplete) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_gridLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_listLayout) = 0;
  v2 = (v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_iCloudStatusObserver);
  *v2 = 0u;
  v2[1] = 0u;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___libraryProviderRefreshLimiter) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_syncDidEndObserver) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_syncDidBeginObserver) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isPresentingBoardNavigationController) = 0;
  v3 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__currentSnapshotWithExpandedSections;
  v4 = sub_1005B981C(&unk_101A23860);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_collapsedSections) = _swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_shouldSaveViewState) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___layoutBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___toolbarItemToAddBoard) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___toolbarItemToSelectAllOrNone) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___editModeToolbarButtonToDuplicateSelectedItems) = 0;
  v5 = (v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_defaultTitleForToolbarItemToSelectAllOrNone);
  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *v5 = v11;
  v5[1] = v13;
  v14 = (v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_alternateTitleForToolbarItemToSelectAllOrNone);
  v15 = [v6 mainBundle];
  v16 = String._bridgeToObjectiveC()();
  v17 = String._bridgeToObjectiveC()();
  v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *v14 = v19;
  v14[1] = v21;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_cachedSearchController) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___emptyFolderViewController) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_emptyFolderBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_keyboardHeight) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_showsEmptyFolderView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100F74BF0()
{
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_thumbnailProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___diffableDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_pendingBoardIdentifiersToRefresh) = _swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_imageCacheObserver) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_storeMetadataObserver) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_renameDeleteObserver) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchString);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchComplete) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_gridLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_listLayout) = 0;
  v2 = (v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_iCloudStatusObserver);
  *v2 = 0u;
  v2[1] = 0u;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___libraryProviderRefreshLimiter) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_syncDidEndObserver) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_syncDidBeginObserver) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isPresentingBoardNavigationController) = 0;
  v3 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__currentSnapshotWithExpandedSections;
  v4 = sub_1005B981C(&unk_101A23860);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_collapsedSections) = _swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_shouldSaveViewState) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___layoutBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___toolbarItemToAddBoard) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___toolbarItemToSelectAllOrNone) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___editModeToolbarButtonToDuplicateSelectedItems) = 0;
  v5 = (v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_defaultTitleForToolbarItemToSelectAllOrNone);
  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *v5 = v11;
  v5[1] = v13;
  v14 = (v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_alternateTitleForToolbarItemToSelectAllOrNone);
  v15 = [v6 mainBundle];
  v16 = String._bridgeToObjectiveC()();
  v17 = String._bridgeToObjectiveC()();
  v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *v14 = v19;
  v14[1] = v21;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_cachedSearchController) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___emptyFolderViewController) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_emptyFolderBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_keyboardHeight) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_showsEmptyFolderView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

BOOL sub_100F74F9C()
{
  v0 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v0 - 8);
  v2 = &v52 - v1;
  v3 = sub_10005AFE0();
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v4 = type metadata accessor for UUID();
  v5 = (*(*(v4 - 8) + 48))(v2, 1, v4);
  sub_10000CAAC(v2, &qword_1019F6990);
  if (v5 == 1)
  {
    v54 = 1;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    type metadata accessor for IndexPath();
    sub_10006852C(&qword_101A23D10, &type metadata accessor for IndexPath);
    v7 = inited;
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v9;
    *(inited + 56) = &type metadata for String;
    v11 = sub_1000053B0();
    *(inited + 32) = v8;
    v56 = v11;
    v57 = inited + 32;
    *(inited + 64) = v11;
    *(inited + 40) = v10;
    v53 = objc_opt_self();
    LODWORD(v12) = [v53 _atomicIncrementAssertCount];
    v58 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v58);
    StaticString.description.getter();
    v55 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    v14 = [v13 lastPathComponent];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_34;
    }

    while (1)
    {
      v18 = static OS_os_log.crlAssert;
      v19 = swift_initStackObject();
      *(v19 + 16) = xmmword_10146CA70;
      *(v19 + 56) = &type metadata for Int32;
      *(v19 + 64) = &protocol witness table for Int32;
      *(v19 + 32) = v12;
      v20 = sub_100006370(0, &qword_1019F4D30);
      *(v19 + 96) = v20;
      v21 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      v22 = v55;
      *(v19 + 72) = v55;
      v23 = v56;
      *(v19 + 136) = &type metadata for String;
      *(v19 + 144) = v23;
      *(v19 + 104) = v21;
      *(v19 + 112) = v15;
      *(v19 + 120) = v17;
      *(v19 + 176) = &type metadata for UInt;
      *(v19 + 184) = &protocol witness table for UInt;
      *(v19 + 152) = 1610;
      v24 = v58;
      *(v19 + 216) = v20;
      *(v19 + 224) = v21;
      *(v19 + 192) = v24;
      v25 = v22;
      v26 = v24;
      v27 = static os_log_type_t.error.getter();
      sub_100005404(v18, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v19);
      swift_setDeallocating();
      v56 = sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v28 = static os_log_type_t.error.getter();
      sub_100005404(v18, &_mh_execute_header, v28, "No item for index path: %@", 26, 2, v7);

      type metadata accessor for __VaListBuilder();
      v29 = swift_allocObject();
      v29[2] = 8;
      v29[3] = 0;
      v30 = v29 + 3;
      v29[4] = 0;
      v29[5] = 0;
      v17 = *(v7 + 16);
      if (!v17)
      {
LABEL_28:
        v47 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v48 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v49 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v50 = String._bridgeToObjectiveC()();

        [v53 handleFailureInFunction:v48 file:v49 lineNumber:1610 isFatal:0 format:v50 args:v47];

        swift_setDeallocating();
        swift_arrayDestroy();
        v5 = v54;
        return v5 != 1;
      }

      v31 = 0;
      while (1)
      {
        v32 = (v57 + 40 * v31);
        v15 = v32[3];
        LODWORD(v12) = sub_100020E58(v32, v15);
        v33 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v34 = *v30;
        v35 = *(v33 + 16);
        v36 = __OFADD__(*v30, v35);
        v37 = *v30 + v35;
        if (v36)
        {
          break;
        }

        v12 = v29[4];
        if (v12 >= v37)
        {
          goto LABEL_20;
        }

        if (v12 + 0x4000000000000000 < 0)
        {
          goto LABEL_32;
        }

        v15 = v29[5];
        if (2 * v12 > v37)
        {
          v37 = 2 * v12;
        }

        v29[4] = v37;
        if ((v37 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_33;
        }

        v38 = v7;
        v39 = v33;
        v40 = swift_slowAlloc();
        v41 = v40;
        v29[5] = v40;
        if (v15)
        {
          if (v40 != v15 || v40 >= &v15[8 * v34])
          {
            memmove(v40, v15, 8 * v34);
          }

          LODWORD(v12) = v29;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v33 = v39;
          v7 = v38;
LABEL_20:
          v41 = v29[5];
          if (!v41)
          {
            goto LABEL_27;
          }

          goto LABEL_21;
        }

        v33 = v39;
        v7 = v38;
        if (!v41)
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_21:
        v43 = *(v33 + 16);
        if (v43)
        {
          v44 = (v33 + 32);
          v45 = *v30;
          while (1)
          {
            v46 = *v44++;
            *&v41[8 * v45] = v46;
            v45 = *v30 + 1;
            if (__OFADD__(*v30, 1))
            {
              break;
            }

            *v30 = v45;
            if (!--v43)
            {
              goto LABEL_5;
            }
          }

          __break(1u);
          break;
        }

LABEL_5:

        if (++v31 == v17)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      swift_once();
    }
  }

  return v5 != 1;
}

id sub_100F75648(void *a1, uint64_t a2)
{
  v98 = a1;
  v102 = type metadata accessor for IndexPath();
  v97 = *(v102 - 8);
  __chkstk_darwin(v102);
  v95 = v4;
  v96 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s5BoardVMa(0);
  v103 = *(v5 - 8);
  __chkstk_darwin(v5);
  v99 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_1019FA3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v91 - v8;
  v10 = sub_1005B981C(&unk_1019FB770);
  __chkstk_darwin(v10 - 8);
  v12 = &v91 - v11;
  v101 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v94 = *(v101 - 1);
  __chkstk_darwin(v101);
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v91 - v16);
  __chkstk_darwin(v18);
  v20 = &v91 - v19;
  v104 = v2;
  v21 = sub_10005AFE0();
  v22 = a2;
  sub_10079330C(a2, v12);

  v23 = _s4NodeVMa(0);
  if ((*(*(v23 - 8) + 48))(v12, 1, v23) != 1)
  {
LABEL_28:
    v93 = v22;
    v59 = v102;
    sub_1000652DC(v12, v17, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10000BBC4(v12, _s4NodeVMa);
    sub_100065D50(v17, v20, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v60 = v103[7];
    v100 = v9;
    v92 = v5;
    v60();
    type metadata accessor for CRLBoardLibrary();
    v61 = swift_dynamicCastClass();
    if (v61)
    {
      v62 = v61;
      sub_1000652DC(v20, v14, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v63 = v99;
        v64 = sub_100065D50(v14, v99, _s5BoardVMa);
        v91 = &v91;
        v65 = *(*(v62 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedHighlightController) + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights);
        __chkstk_darwin(v64);
        *(&v91 - 2) = v63;
        swift_unknownObjectRetain();

        v66 = sub_101107CA8(sub_100F794EC, (&v91 - 4), v65);
        swift_unknownObjectRelease();

        v67 = v100;
        sub_10000CAAC(v100, &unk_1019FA3E0);
        sub_100065D50(v63, v67, _s5BoardVMa);
        v68 = v92;
        (v60)(v67, 0, 1, v92);
        v69 = v104;
LABEL_34:
        v9 = v100;
        if ((v103[6])(v100, 1, v68) || v9[*(v68 + 60)] != 1)
        {
          v90 = sub_100F44F1C(v20, v93, v66);
        }

        else
        {
          if (!v66)
          {
            goto LABEL_42;
          }

          v76 = v96;
          v75 = v97;
          (*(v97 + 16))(v96, v93, v59);
          v77 = (*(v75 + 80) + 24) & ~*(v75 + 80);
          v78 = swift_allocObject();
          v79 = v98;
          *(v78 + 16) = v98;
          v80 = v78;
          (*(v75 + 32))(v78 + v77, v76, v59);
          sub_1005B981C(&qword_101A23C10);
          v81 = (*(v94 + 80) + 32) & ~*(v94 + 80);
          v82 = swift_allocObject();
          v104 = v20;
          v83 = v82;
          *(v82 + 16) = xmmword_10146C6B0;
          sub_1000652DC(v104, v82 + v81, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v66 = v66;
          v84 = v79;
          sub_100E93FF4(v83);
          swift_setDeallocating();
          sub_10000BBC4(v83 + v81, type metadata accessor for CRLBoardLibraryViewModel.Item);
          swift_deallocClassInstance();
          sub_10006852C(&qword_1019F66A0, type metadata accessor for CRLBoardLibraryViewModel.Item);
          isa = Set._bridgeToObjectiveC()().super.isa;

          v86 = swift_allocObject();
          *(v86 + 16) = v69;
          *(v86 + 24) = v66;
          v103 = objc_opt_self();
          v109 = sub_100F77F9C;
          v110 = v80;
          v105 = _NSConcreteStackBlock;
          v106 = *"";
          v107 = sub_1006499AC;
          v108 = &unk_1018A9A00;
          v87 = _Block_copy(&v105);
          v88 = v69;

          v109 = sub_100F77FB4;
          v110 = v86;
          v9 = v100;
          v105 = _NSConcreteStackBlock;
          v106 = *"";
          v107 = sub_1006465C4;
          v108 = &unk_1018A9A28;
          v89 = _Block_copy(&v105);

          v90 = [v103 configurationWithIdentifier:isa previewProvider:v87 actionProvider:v89];

          v20 = v104;

          _Block_release(v89);
          _Block_release(v87);
        }

LABEL_40:
        sub_10000BBC4(v20, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10000CAAC(v9, &unk_1019FA3E0);
        return v90;
      }

      sub_10000BBC4(v14, type metadata accessor for CRLBoardLibraryViewModel.Item);
    }

    v66 = 0;
    v69 = v104;
    v68 = v92;
    goto LABEL_34;
  }

  sub_10000CAAC(v12, &unk_1019FB770);
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  sub_10006852C(&qword_101A23D10, &type metadata accessor for IndexPath);
  v25 = dispatch thunk of CustomStringConvertible.description.getter();
  v27 = v26;
  *(inited + 56) = &type metadata for String;
  v28 = sub_1000053B0();
  *(inited + 32) = v25;
  v9 = (inited + 32);
  v103 = v28;
  *(inited + 64) = v28;
  *(inited + 40) = v27;
  v101 = objc_opt_self();
  LODWORD(v29) = [v101 _atomicIncrementAssertCount];
  v105 = [objc_allocWithZone(NSString) init];
  v104 = inited;
  sub_100604538(inited, &v105);
  StaticString.description.getter();
  v102 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v30 = String._bridgeToObjectiveC()();

  v31 = [v30 lastPathComponent];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v32;

  if (qword_1019F20A0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v33 = static OS_os_log.crlAssert;
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_10146CA70;
  *(v34 + 56) = &type metadata for Int32;
  *(v34 + 64) = &protocol witness table for Int32;
  *(v34 + 32) = v29;
  v35 = sub_100006370(0, &qword_1019F4D30);
  *(v34 + 96) = v35;
  v36 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  v37 = v102;
  *(v34 + 72) = v102;
  v38 = v103;
  *(v34 + 136) = &type metadata for String;
  *(v34 + 144) = v38;
  *(v34 + 104) = v36;
  *(v34 + 112) = v20;
  *(v34 + 120) = v5;
  *(v34 + 176) = &type metadata for UInt;
  *(v34 + 184) = &protocol witness table for UInt;
  *(v34 + 152) = 1627;
  v39 = v105;
  *(v34 + 216) = v35;
  *(v34 + 224) = v36;
  *(v34 + 192) = v39;
  v40 = v37;
  v41 = v39;
  v42 = static os_log_type_t.error.getter();
  sub_100005404(v33, &_mh_execute_header, v42, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v34);
  swift_setDeallocating();
  v103 = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v43 = static os_log_type_t.error.getter();
  v44 = v104;
  sub_100005404(v33, &_mh_execute_header, v43, "No item for index path: %@", 26, 2, v104);

  type metadata accessor for __VaListBuilder();
  v22 = swift_allocObject();
  v22[2] = 8;
  v22[3] = 0;
  v17 = v22 + 3;
  v22[4] = 0;
  v22[5] = 0;
  v5 = *(v44 + 16);
  if (v5)
  {
    v12 = 0;
    while (1)
    {
      v45 = &v9[40 * v12];
      v20 = *(v45 + 4);
      LODWORD(v29) = sub_100020E58(v45, *(v45 + 3));
      v46 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v14 = *v17;
      v47 = *(v46 + 16);
      v48 = __OFADD__(*v17, v47);
      v49 = *v17 + v47;
      if (v48)
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v29 = v22[4];
      if (v29 >= v49)
      {
        goto LABEL_20;
      }

      if (v29 + 0x4000000000000000 < 0)
      {
        goto LABEL_44;
      }

      v20 = v22[5];
      if (2 * v29 > v49)
      {
        v49 = 2 * v29;
      }

      v22[4] = v49;
      if ((v49 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_45;
      }

      v50 = v9;
      v51 = v46;
      v52 = swift_slowAlloc();
      v53 = v52;
      v22[5] = v52;
      if (v20)
      {
        break;
      }

      v46 = v51;
      v9 = v50;
      if (!v53)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_21:
      v55 = *(v46 + 16);
      if (v55)
      {
        v56 = (v46 + 32);
        v57 = *v17;
        while (1)
        {
          v58 = *v56++;
          *&v53[8 * v57] = v58;
          v57 = *v17 + 1;
          if (__OFADD__(*v17, 1))
          {
            break;
          }

          *v17 = v57;
          if (!--v55)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_42:
        v90 = 0;
        goto LABEL_40;
      }

LABEL_5:

      if (++v12 == v5)
      {
        goto LABEL_31;
      }
    }

    if (v52 != v20 || v52 >= &v20[8 * v14])
    {
      memmove(v52, v20, 8 * v14);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v46 = v51;
    v9 = v50;
LABEL_20:
    v53 = v22[5];
    if (!v53)
    {
      goto LABEL_27;
    }

    goto LABEL_21;
  }

LABEL_31:
  v70 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v71 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v72 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v73 = String._bridgeToObjectiveC()();

  [v101 handleFailureInFunction:v71 file:v72 lineNumber:1627 isFatal:0 format:v73 args:v70];

  swift_setDeallocating();
  swift_arrayDestroy();
  return 0;
}

uint64_t sub_100F7649C(void *a1)
{
  v3 = *(sub_100070F30() + 48);

  if (*(v3 + 16) && (Hasher.init(_seed:)(), Hasher._combine(_:)(2uLL), NSObject.hash(into:)(), v4 = Hasher._finalize()(), v5 = -1 << *(v3 + 32), v6 = v4 & ~v5, ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v24 = v1;
    v7 = ~v5;
    while (1)
    {
      v8 = *(v3 + 48) + 16 * v6;
      if (*(v8 + 8) == 2)
      {
        v9 = *v8;
        sub_100006370(0, &qword_1019F54D0);
        v10 = v9;
        v11 = static NSObject.== infix(_:_:)();
        sub_1007A98C8(v9, 2u);
        if (v11)
        {
          break;
        }
      }

      v6 = (v6 + 1) & v7;
      if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v12 = *(v24 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___libraryProviderRefreshLimiter);

    sub_100F5FB78(a1, 2u, 0);
    v13 = *(v12 + 48);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(2uLL);

    NSObject.hash(into:)();
    v14 = Hasher._finalize()();
    v15 = -1 << *(v13 + 32);
    v16 = v14 & ~v15;
    if ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
    {
      v17 = ~v15;
      while (1)
      {
        v18 = *(v13 + 48) + 16 * v16;
        if (*(v18 + 8) == 2)
        {
          v19 = *v18;
          v20 = *v18;
          v21 = static NSObject.== infix(_:_:)();
          sub_1007A98C8(v19, 2u);
          if (v21)
          {
            break;
          }
        }

        v16 = (v16 + 1) & v17;
        if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_100E85E84();
      }

      sub_1007A98C8(*(*(v13 + 48) + 16 * v16), *(*(v13 + 48) + 16 * v16 + 8));
      sub_100F65BD4(v16);
    }

LABEL_15:
    v22 = *(v12 + 48);

    sub_100F5DE4C(v13);
    *(v12 + 48) = v13;

    sub_100F5E170(v22);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_100F767A0(void *a1, int a2)
{
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v7 = &v37[-v6];
  v8 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v37[-v9];
  v11 = type metadata accessor for CRLBoardIdentifier(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v37[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v15);
  v18 = &v37[-v17];
  if (!a1)
  {
    (*(v12 + 56))(v10, 1, 1, v11, v16);
    return sub_10000CAAC(v10, &unk_1019F52D0);
  }

  v39 = v7;
  v40 = v2;
  v19 = [a1 recordID];
  v20 = [v19 zoneID];

  sub_100EE9190(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_10000CAAC(v10, &unk_1019F52D0);
  }

  v38 = a2;
  sub_100065D50(v10, v18, type metadata accessor for CRLBoardIdentifier);
  if (qword_1019F22C8 != -1)
  {
    swift_once();
  }

  v21 = static OS_os_log.shareState;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v23 = UUID.uuidString.getter();
  v25 = v24;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v23;
  *(inited + 40) = v25;
  v26 = static os_log_type_t.default.getter();
  sub_100005404(v21, &_mh_execute_header, v26, "Stopped sharing board: %@", 25, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  sub_100F39EE8(v18);
  type metadata accessor for CRLBoardLibrary();
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v28 = v27;
    v29 = type metadata accessor for TaskPriority();
    v30 = v39;
    (*(*(v29 - 8) + 56))(v39, 1, 1, v29);
    sub_1000652DC(v18, v14, type metadata accessor for CRLBoardIdentifier);
    type metadata accessor for MainActor();
    swift_unknownObjectRetain_n();
    v31 = a1;
    v32 = static MainActor.shared.getter();
    v33 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v34 = swift_allocObject();
    v34[2] = v32;
    v34[3] = &protocol witness table for MainActor;
    v34[4] = v28;
    sub_100065D50(v14, v34 + v33, type metadata accessor for CRLBoardIdentifier);
    v35 = v34 + ((v13 + v33 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v35 = a1;
    v35[8] = v38 & 1;
    sub_100796D54(0, 0, v30, &unk_1014B97E0, v34);
    swift_unknownObjectRelease();
  }

  return sub_10000BBC4(v18, type metadata accessor for CRLBoardIdentifier);
}

uint64_t sub_100F76C64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_100F591CC(a1, v4, v5, v7, v6);
}

uint64_t sub_100F76D94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_100F59738(a1, v4, v5, v7, v6);
}

uint64_t sub_100F76E54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002D4C8;

  return sub_100F55E4C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100F76F60()
{
  v1 = *(sub_1005B981C(&unk_101A23860) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = v0 + ((*(v1 + 80) + 33) & ~*(v1 + 80));

  return sub_100F584D4(v2, v3, v4, v5);
}

uint64_t sub_100F76FD4(uint64_t a1)
{
  v4 = *(sub_1005B981C(&unk_101A23860) - 8);
  v5 = (*(v4 + 80) + 49) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002D4C8;

  return sub_100F58724(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_100F770EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100F59EF0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100F7724C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100F772DC(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v9 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  sub_100F622A4(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_100F77378(uint64_t a1)
{
  v3 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v4 = *(v1 + 16);
  v5 = sub_1012CD6CC(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), a1);
  return v4(v5 & 1);
}

uint64_t sub_100F77458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1005B981C(&qword_101A23CA0);
  sub_1005B981C(&qword_101A23C98);

  return sub_100F62E04(a1, a2, a3);
}

uint64_t sub_100F77578(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_1012C9ED8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100F7764C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v7);
  v11 = *(v1 + v8);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v9);
  v15 = *(v1 + v9 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10002D4C8;

  return sub_1012C989C(v11, a1, v12, v13, v1 + v6, v10, v14, v15);
}

uint64_t sub_100F777A8(uint64_t a1)
{
  type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = v1[7];
  v10 = *(v1 + 8);
  v11 = *(v1 + 9);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10002D4C8;

  return sub_1012C8E50(v9, a1, v4, v5, v6, v7, v8, v10, v11);
}

uint64_t sub_100F778D8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100F77920()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_100F77A48()
{
  v1 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v17 = type metadata accessor for UUID();
    v18 = *(*(v17 - 8) + 8);
    v18(v0 + v3, v17);
    type metadata accessor for CRLBoardIdentifierStorage(0);

    v19 = _s5BoardVMa(0);
    v20 = v5 + v19[5];
    v21 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
    {
      v18(v20, v17);
      type metadata accessor for CRLFolderIdentifierStorage(0);
    }

    v22 = v19[7];
    v23 = type metadata accessor for Date();
    v24 = *(*(v23 - 8) + 8);
    v24(v5 + v22, v23);
    v24(v5 + v19[8], v23);
    v16 = v19[20];
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_14;
    }

    v7 = sub_1005B981C(&qword_1019F3480);
    if ((*(*(v7 - 8) + 48))(v0 + v3, 5, v7))
    {
      goto LABEL_14;
    }

    v8 = type metadata accessor for UUID();
    v9 = (*(v8 - 8) + 8);
    v31 = *v9;
    (*v9)(v0 + v3, v8);
    type metadata accessor for CRLFolderIdentifierStorage(0);

    v10 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
    v11 = v5 + v10[5];
    v12 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      v31(v11, v8);
    }

    v13 = v10[8];
    v14 = type metadata accessor for Date();
    v15 = *(*(v14 - 8) + 8);
    v15(v5 + v13, v14);
    v15(v5 + v10[9], v14);
    v16 = v10[14];
  }

  v25 = v5 + v16;
  v26 = _s5BoardV13ShareMetadataVMa(0);
  if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    v27 = *(v26 + 20);
    v28 = type metadata accessor for URL();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v25 + v27, 1, v28))
    {
      (*(v29 + 8))(v25 + v27, v28);
    }
  }

LABEL_14:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_100F77F38()
{
  type metadata accessor for IndexPath();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_100F467D8(v1, v2);
}

void sub_100F77FBC()
{
  v1 = [*(v0 + 16) actionBlock];
  v1[2]();

  _Block_release(v1);
}

uint64_t sub_100F78038(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for IndexPath() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

UIMenu sub_100F780B0(uint64_t a1)
{
  v3 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100F50D20(a1, v5, v1 + v4, v6);
}

uint64_t sub_100F78150(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_100F5409C(a1, a2, v6, v7, v8);
}

id sub_100F782D8(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_100F5B1F0(a1, a2, v6, v7);
}

uint64_t sub_100F7835C(uint64_t a1)
{
  v3 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100F5C50C(a1, v1 + v4, v6, v7);
}

uint64_t sub_100F78404(uint64_t a1)
{
  v3 = *(_s5BoardVMa(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v14 = *(v1 + 24);
  v15 = *(v1 + 16);
  v8 = *(v1 + v5 + 8);
  v13 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002D4C8;

  return sub_100F5C7FC(a1, v15, v14, v1 + v4, v13, v8, v9, v10);
}

uint64_t sub_100F786AC(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100F4F368(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100F787A4(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100F548EC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100F788A4(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100F4AA40(a1, v6, v7, v8, v1 + v5);
}

void sub_100F789A4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  sub_100F4F03C(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_100F78A40(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D3D4;

  return sub_100F4F2AC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100F78B50(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_100F78C04(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  swift_unknownObjectRelease();
  a1(*(v3 + 32));
  a2(*(v3 + 40));

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_100F78C70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100F59B64(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100F78DB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_100F38F3C(a1, v4, v5, v6);
}

uint64_t sub_100F78E64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_100F38D54(a1, v4, v5, v6);
}

uint64_t sub_100F78F30(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_100F78F90()
{
  v1 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v17 = type metadata accessor for UUID();
    v18 = *(*(v17 - 8) + 8);
    v18(v0 + v3, v17);
    type metadata accessor for CRLBoardIdentifierStorage(0);

    v19 = _s5BoardVMa(0);
    v20 = v5 + v19[5];
    v21 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
    {
      v18(v20, v17);
      type metadata accessor for CRLFolderIdentifierStorage(0);
    }

    v22 = v19[7];
    v23 = type metadata accessor for Date();
    v24 = *(*(v23 - 8) + 8);
    v24(v5 + v22, v23);
    v24(v5 + v19[8], v23);
    v16 = v19[20];
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_14;
    }

    v7 = sub_1005B981C(&qword_1019F3480);
    if ((*(*(v7 - 8) + 48))(v0 + v3, 5, v7))
    {
      goto LABEL_14;
    }

    v8 = type metadata accessor for UUID();
    v9 = (*(v8 - 8) + 8);
    v31 = *v9;
    (*v9)(v0 + v3, v8);
    type metadata accessor for CRLFolderIdentifierStorage(0);

    v10 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
    v11 = v5 + v10[5];
    v12 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      v31(v11, v8);
    }

    v13 = v10[8];
    v14 = type metadata accessor for Date();
    v15 = *(*(v14 - 8) + 8);
    v15(v5 + v13, v14);
    v15(v5 + v10[9], v14);
    v16 = v10[14];
  }

  v25 = v5 + v16;
  v26 = _s5BoardV13ShareMetadataVMa(0);
  if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    v27 = *(v26 + 20);
    v28 = type metadata accessor for URL();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v25 + v27, 1, v28))
    {
      (*(v29 + 8))(v25 + v27, v28);
    }
  }

LABEL_14:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

id sub_100F795BC(void *a1)
{
  v2 = [a1 accessibilityContrast];
  v3 = [a1 userInterfaceStyle];
  v4 = objc_opt_self();
  v5 = v3 == 2 && v2 == 1;
  v6 = &selRef_blackColor;
  if (!v5)
  {
    v6 = &selRef_whiteColor;
  }

  v7 = [v4 *v6];

  return v7;
}

double sub_100F796E0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  return *v3;
}

double sub_100F79734(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_100F79788(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7)
{
  v11 = (a1 + *a7);
  result = swift_beginAccess();
  *v11 = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  return result;
}

uint64_t sub_100F797FC(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = (v5 + *a1);
  result = swift_beginAccess();
  *v10 = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  return result;
}

id CRLiOSPageTitleButton.init(title:insets:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v40[1] = a1;
  v40[2] = a2;
  v11 = sub_1005B981C(&unk_1019F4CD0);
  __chkstk_darwin(v11 - 8);
  v13 = v40 - v12;
  v14 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for UIButton.Configuration();
  v18 = *(v41 - 8);
  __chkstk_darwin(v41);
  v20 = v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC8Freeform21CRLiOSPageTitleButton_selectedTitleColor;
  v22 = objc_allocWithZone(UIColor);
  aBlock[4] = sub_100F795BC;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_1005B9BD8;
  aBlock[3] = &unk_1018AA270;
  v23 = _Block_copy(aBlock);
  v24 = [v22 initWithDynamicProvider:v23];
  _Block_release(v23);

  *&v6[v21] = v24;
  v25 = &v6[OBJC_IVAR____TtC8Freeform21CRLiOSPageTitleButton_hitTestingInsets];
  v26 = *&UIEdgeInsetsZero.bottom;
  *v25 = *&UIEdgeInsetsZero.top;
  *(v25 + 1) = v26;
  v27 = &v6[OBJC_IVAR____TtC8Freeform21CRLiOSPageTitleButton_insets];
  *v27 = a3;
  v27[1] = a4;
  v27[2] = a5;
  v27[3] = a6;
  v28 = type metadata accessor for CRLiOSPageTitleButton();
  v42.receiver = v6;
  v42.super_class = v28;
  v29 = objc_msgSendSuper2(&v42, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  static UIButton.Configuration.plain()();
  UIButton.Configuration.title.setter();
  v30 = *(v15 + 104);
  v30(v17, enum case for UIButton.Configuration.CornerStyle.large(_:), v14);
  UIButton.Configuration.cornerStyle.setter();
  if (_UISolariumEnabled())
  {
    v30(v17, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v14);
    UIButton.Configuration.cornerStyle.setter();
  }

  v31 = v41;
  (*(v18 + 16))(v13, v20, v41);
  (*(v18 + 56))(v13, 0, 1, v31);
  v32 = v29;
  UIButton.configuration.setter();

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v33 = [v32 layer];
    [v33 setCornerRadius:7.5];
  }

  [v32 setPointerInteractionEnabled:1];
  *(swift_allocObject() + 16) = v32;
  v34 = v32;
  UIButton.pointerStyleProvider.setter();
  v35 = v34;
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v35 setShowsLargeContentViewer:1];
  v36 = [objc_opt_self() sharedHelper];
  sub_1005B981C(&unk_1019F4D60);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_101465920;
  *(v37 + 32) = v35;
  sub_100006370(0, &qword_1019F6D00);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v36 startHandlingTouchUpDownAnimationsForControl:v35 withViews:isa];

  (*(v18 + 8))(v20, v31);
  return v35;
}

id CRLiOSPageTitleButton.__deallocating_deinit()
{
  v1 = [objc_opt_self() sharedHelper];
  [v1 stopHandlingTouchUpDownAnimationsForControl:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for CRLiOSPageTitleButton();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id CRLiOSAutoSizingHostingController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

Swift::Void __swiftcall CRLiOSPageTitleButton.setAttributedTitle(_:for:)(NSAttributedString_optional _, UIControlState a2)
{
  v3 = *&_.is_nil;
  if (_.value.super.isa)
  {
    v4 = [(objc_class *)_.value.super.isa string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  [v2 setTitle:v5 forState:v3];
}

Swift::Void __swiftcall CRLiOSPageTitleButton.updateConfiguration()()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_1019F4CE0);
  __chkstk_darwin(v2 - 8);
  v36 = &v36 - v3;
  v4 = type metadata accessor for UIButton.Configuration.CornerStyle();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1005B981C(&unk_1019F4CD0);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for UIButton.Configuration();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = &v36 - v17;
  if ([v0 isSelected])
  {
    static UIButton.Configuration.filled()();
  }

  else if ([v0 isHighlighted])
  {
    static UIButton.Configuration.tinted()();
  }

  else
  {
    static UIButton.Configuration.plain()();
  }

  UIButton.configuration.getter();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100F7AFD8(v10);
    if (!_UISolariumEnabled())
    {
LABEL_8:
      v19 = &selRef_tintColor;
      v20 = v0;
      goto LABEL_11;
    }
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    UIButton.Configuration.title.getter();
    UIButton.Configuration.title.setter();
    UIButton.Configuration.cornerStyle.getter();
    UIButton.Configuration.cornerStyle.setter();
    sub_1004A48FC();
    swift_beginAccess();
    UIButton.Configuration.contentInsets.setter();
    (*(v12 + 8))(v14, v11);
    if (!_UISolariumEnabled())
    {
      goto LABEL_8;
    }
  }

  v20 = objc_opt_self();
  v19 = &selRef_labelColor;
LABEL_11:
  v21 = [v20 *v19];
  v22 = [v0 isSelected];
  v23 = v21;
  if (v22)
  {
    v23 = *&v0[OBJC_IVAR____TtC8Freeform21CRLiOSPageTitleButton_selectedTitleColor];
  }

  v24 = v23;
  v25 = _UISolariumEnabled();
  v26 = objc_opt_self();
  v27 = &UIFontWeightMedium;
  if (!v25)
  {
    v27 = &UIFontWeightRegular;
  }

  v28 = [v26 systemFontOfSize:14.0 weight:*v27];
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = v24;
  v30 = v28;
  v31 = v24;
  v32 = v36;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v33 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  (*(v12 + 16))(v7, v18, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  UIButton.configuration.setter();
  UIButton.Configuration.title.getter();
  if (v34)
  {
    v35 = String._bridgeToObjectiveC()();
  }

  else
  {
    v35 = 0;
  }

  [v1 setAccessibilityLabel:v35];

  (*(v12 + 8))(v18, v11);
}

uint64_t sub_100F7A6A8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AttributeContainer();
  (*(*(v8 - 8) + 16))(a4, a1, v8);
  sub_1005D9028();
  v9 = a2;
  AttributeContainer.subscript.setter();
  sub_100F7B048();
  v10 = a3;
  return AttributeContainer.subscript.setter();
}

id CRLiOSPageTitleButton.point(inside:with:)(uint64_t a1, CGFloat a2, CGFloat a3)
{
  if ([v3 isEnabled] && (objc_msgSend(v3, "isHidden") & 1) == 0)
  {
    [v3 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = &v3[OBJC_IVAR____TtC8Freeform21CRLiOSPageTitleButton_hitTestingInsets];
    swift_beginAccess();
    v19.origin.x = sub_100BDDE50(v9, v11, v13, v15, *v16, v16[1]);
    v18.x = a2;
    v18.y = a3;
    return CGRectContainsPoint(v19, v18);
  }

  else
  {
    v17.receiver = v3;
    v17.super_class = type metadata accessor for CRLiOSPageTitleButton();
    return objc_msgSendSuper2(&v17, "pointInside:withEvent:", a1, a2, a3);
  }
}

id CRLiOSPageTitleButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

uint64_t sub_100F7AAF0()
{
  v0 = sub_1005B981C(&qword_101A23DE8);
  __chkstk_darwin(v0 - 8);
  v39 = &v36 - v1;
  v38 = type metadata accessor for UIPointerShape();
  v2 = *(v38 - 8);
  __chkstk_darwin(v38);
  v4 = (&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for UIPointerEffect();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v11 = UIPointerEffect.preview.getter();
  v12 = sub_1005B981C(&qword_101A23DF0);
  v13 = v12[12];
  v14 = v12[16];
  v15 = v12[20];
  *v10 = v11;
  v16 = enum case for UIPointerEffect.TintMode.underlay(_:);
  v17 = type metadata accessor for UIPointerEffect.TintMode();
  (*(*(v17 - 8) + 104))(&v10[v13], v16, v17);
  v10[v14] = 0;
  v10[v15] = 0;
  v18 = v5;
  (*(v6 + 104))(v10, enum case for UIPointerEffect.hover(_:), v5);
  v19 = v11;
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v21 = &selRef_frame;
  if (!IsReduceMotionEnabled)
  {
    v21 = &selRef_bounds;
  }

  [v36 *v21];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = _UISolariumEnabled();
  v31 = v29;
  if ((v30 & 1) == 0)
  {
    static UIPointerShape.defaultCornerRadius.getter();
  }

  *v4 = v23;
  v4[1] = v25;
  v4[2] = v27;
  v4[3] = v29;
  v4[4] = v31;
  v32 = v38;
  (*(v2 + 104))(v4, enum case for UIPointerShape.roundedRect(_:), v38);
  sub_100006370(0, &qword_101A23DF8);
  (*(v6 + 16))(v37, v10, v18);
  v33 = v39;
  (*(v2 + 16))(v39, v4, v32);
  (*(v2 + 56))(v33, 0, 1, v32);
  v34 = UIPointerStyle.init(effect:shape:)();

  (*(v2 + 8))(v4, v32);
  (*(v6 + 8))(v10, v18);
  return v34;
}

void _s8Freeform21CRLiOSPageTitleButtonC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR____TtC8Freeform21CRLiOSPageTitleButton_selectedTitleColor;
  v2 = objc_allocWithZone(UIColor);
  aBlock[4] = sub_100F795BC;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_1005B9BD8;
  aBlock[3] = &unk_1018AA2E8;
  v3 = _Block_copy(aBlock);
  v4 = [v2 initWithDynamicProvider:v3];
  _Block_release(v3);

  *(v0 + v1) = v4;
  v5 = (v0 + OBJC_IVAR____TtC8Freeform21CRLiOSPageTitleButton_hitTestingInsets);
  v6 = *&UIEdgeInsetsZero.bottom;
  *v5 = *&UIEdgeInsetsZero.top;
  v5[1] = v6;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100F7AFD8(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_1019F4CD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100F7B048()
{
  result = qword_101A23DE0;
  if (!qword_101A23DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A23DE0);
  }

  return result;
}

id sub_100F7B108()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLSharingStringsProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100F7B160()
{
  v7 = &type metadata for CRLAppleAccountFeatureFlags;
  v8 = sub_1008B57B8();
  isFeatureEnabled(_:)();
  sub_100005070(v6);
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_100F7B278(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && (v2 = v1, [v2 copy], _bridgeAnyObjectToAny(_:)(), v2, swift_unknownObjectRelease(), sub_100F7B8DC(), (swift_dynamicCast() & 1) != 0) && (v3 = objc_msgSend(v18, "owner"), v18, v4 = sub_100CE7CBC(0), v6 = v5, v3, v6))
  {
    v7 = [objc_opt_self() mainBundle];
    v8 = String._bridgeToObjectiveC()();
    v9 = String._bridgeToObjectiveC()();
    v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005B981C(&qword_1019F54E0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10146C6B0;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_1000053B0();
    *(v11 + 32) = v4;
    *(v11 + 40) = v6;
    v12 = String.init(format:_:)();
  }

  else
  {
    v13 = [objc_opt_self() mainBundle];
    v14 = String._bridgeToObjectiveC()();
    v15 = String._bridgeToObjectiveC()();
    v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v12;
}

uint64_t sub_100F7B574(unint64_t a1)
{
  if (a1 >= 2)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v2 = String._bridgeToObjectiveC()();
    v3 = String._bridgeToObjectiveC()();
    v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v5;
  }

  return result;
}

uint64_t sub_100F7B674(unint64_t a1)
{
  if (a1 > 1)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v2 = String._bridgeToObjectiveC()();
    v3 = String._bridgeToObjectiveC()();
    v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v5;
  }

  return result;
}

uint64_t sub_100F7B790(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() mainBundle];
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1005B981C(&qword_1019F54E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10146C6B0;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_1000053B0();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = String.init(format:_:)();

  return v9;
}

unint64_t sub_100F7B8DC()
{
  result = qword_1019F52C0;
  if (!qword_1019F52C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019F52C0);
  }

  return result;
}

uint64_t sub_100F7B928@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 64;
    do
    {
      v5 = *(v4 - 32);
      v4 += 40;
      swift_bridgeObjectRetain_n();

      sub_1006370B0(v5);

      sub_100636CB4(v6);

      sub_100636CB4(v7);

      sub_10063718C(v8);

      sub_10063718C(v9);

      --v3;
    }

    while (v3);
  }

  *a2 = &_swiftEmptySetSingleton;
  a2[1] = &_swiftEmptySetSingleton;
  a2[2] = &_swiftEmptySetSingleton;
  a2[3] = &_swiftEmptySetSingleton;
  a2[4] = &_swiftEmptySetSingleton;
  return result;
}

uint64_t sub_100F7BA78(unsigned __int8 a1)
{
  if (a1 - 2 >= 3)
  {
    if (a1)
    {
      return sub_100F7BB70(1u);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v2 = String._bridgeToObjectiveC()();
    v3 = String._bridgeToObjectiveC()();
    v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v5;
  }
}

uint64_t sub_100F7BB70(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (!a1)
    {
      return a1;
    }

LABEL_5:
    v2 = [objc_opt_self() mainBundle];
    v3 = String._bridgeToObjectiveC()();
    v4 = String._bridgeToObjectiveC()();
    v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v1;
  }

  if (a1 - 2 < 2)
  {
    goto LABEL_5;
  }

  v7 = objc_opt_self();
  v8 = [v7 _atomicIncrementAssertCount];
  v32 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v32);
  StaticString.description.getter();
  v9 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v10 = String._bridgeToObjectiveC()();

  v11 = [v10 lastPathComponent];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v15 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v8;
  v17 = sub_1005CF000();
  *(inited + 96) = v17;
  v18 = sub_100F7D104(&qword_1019F52E0, sub_1005CF000);
  *(inited + 104) = v18;
  *(inited + 72) = v9;
  *(inited + 136) = &type metadata for String;
  v19 = sub_1000053B0();
  *(inited + 112) = v12;
  *(inited + 120) = v14;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v19;
  *(inited + 152) = 403;
  v20 = v32;
  *(inited + 216) = v17;
  *(inited + 224) = v18;
  *(inited + 192) = v20;
  v21 = v9;
  v22 = v20;
  v23 = static os_log_type_t.error.getter();
  sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v24 = static os_log_type_t.error.getter();
  sub_100005404(v15, &_mh_execute_header, v24, "we should never have mixed share state on a single deletion. please file a bug.", 79, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "we should never have mixed share state on a single deletion. please file a bug.");
  type metadata accessor for __VaListBuilder();
  v25 = swift_allocObject();
  v25[2] = 8;
  v25[3] = 0;
  v25[4] = 0;
  v25[5] = 0;
  v26 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v27 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v28 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v29 = String._bridgeToObjectiveC()();

  [v7 handleFailureInFunction:v27 file:v28 lineNumber:403 isFatal:1 format:v29 args:v26];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v30, v31);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100F7C028(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      return sub_100F7C224(1u);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v2 = String._bridgeToObjectiveC()();
    v3 = String._bridgeToObjectiveC()();
    v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v5;
  }
}

uint64_t sub_100F7C224(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (!a1)
    {
      return a1;
    }

LABEL_8:
    v2 = [objc_opt_self() mainBundle];
    v3 = String._bridgeToObjectiveC()();
    v4 = String._bridgeToObjectiveC()();
    v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v1;
  }

  if (a1 == 2 || a1 == 3)
  {
    goto LABEL_8;
  }

  v7 = objc_opt_self();
  v8 = [v7 _atomicIncrementAssertCount];
  v32 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v32);
  StaticString.description.getter();
  v9 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v10 = String._bridgeToObjectiveC()();

  v11 = [v10 lastPathComponent];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v15 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v8;
  v17 = sub_1005CF000();
  *(inited + 96) = v17;
  v18 = sub_100F7D104(&qword_1019F52E0, sub_1005CF000);
  *(inited + 104) = v18;
  *(inited + 72) = v9;
  *(inited + 136) = &type metadata for String;
  v19 = sub_1000053B0();
  *(inited + 112) = v12;
  *(inited + 120) = v14;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v19;
  *(inited + 152) = 439;
  v20 = v32;
  *(inited + 216) = v17;
  *(inited + 224) = v18;
  *(inited + 192) = v20;
  v21 = v9;
  v22 = v20;
  v23 = static os_log_type_t.error.getter();
  sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v24 = static os_log_type_t.error.getter();
  sub_100005404(v15, &_mh_execute_header, v24, "we should never have mixed share state on a single deletion. please file a bug.", 79, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "we should never have mixed share state on a single deletion. please file a bug.");
  type metadata accessor for __VaListBuilder();
  v25 = swift_allocObject();
  v25[2] = 8;
  v25[3] = 0;
  v25[4] = 0;
  v25[5] = 0;
  v26 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v27 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v28 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v29 = String._bridgeToObjectiveC()();

  [v7 handleFailureInFunction:v27 file:v28 lineNumber:439 isFatal:1 format:v29 args:v26];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v30, v31);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100F7C6F8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_100F7C7E0(char a1)
{
  if (a1 == 1)
  {
    return 0;
  }

  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v6;
}

uint64_t sub_100F7C9D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100F7CA18(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_100F7CA60()
{
  sub_1005B981C(&qword_101A12AA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 32) = 0xD000000000000027;
  *(inited + 40) = 0x80000001015B47C0;
  v15 = *v0;
  v2 = sub_1005B981C(&unk_1019FB880);
  *(inited + 48) = v15;
  *(inited + 72) = v2;
  *(inited + 80) = 0xD00000000000002ELL;
  *(inited + 88) = 0x80000001015B47F0;
  v14 = v0[1];
  v3 = sub_1005B981C(&unk_101A22E80);
  *(inited + 96) = v14;
  *(inited + 120) = v3;
  *(inited + 128) = 0xD00000000000002ELL;
  v4 = v0[2];
  v12 = v0[3];
  v5 = v12;
  v13 = v4;
  *(inited + 136) = 0x80000001015B4820;
  *(inited + 144) = v4;
  *(inited + 168) = v3;
  *(inited + 176) = 0xD00000000000002FLL;
  *(inited + 184) = 0x80000001015B4850;
  v6 = sub_1005B981C(&qword_1019FB890);
  *(inited + 192) = v5;
  *(inited + 216) = v6;
  *(inited + 224) = 0xD00000000000002FLL;
  v11 = v0[4];
  v7 = v11;
  *(inited + 264) = v6;
  *(inited + 232) = 0x80000001015B4880;
  *(inited + 240) = v7;
  sub_10000BE14(&v15, v10, &unk_1019FB880);
  sub_10000BE14(&v14, v10, &unk_101A22E80);
  sub_10000BE14(&v13, v10, &unk_101A22E80);
  sub_10000BE14(&v12, v10, &qword_1019FB890);
  sub_10000BE14(&v11, v10, &qword_1019FB890);
  v8 = sub_10000BCE4(inited);
  swift_setDeallocating();
  sub_1005B981C(&qword_101A2F5D0);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_100F7CC80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = Notification.userInfo.getter();
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = sub_10007C02C(v4);

  if (!v5)
  {
    goto LABEL_20;
  }

  if (!*(v5 + 16) || (v6 = sub_10000BE7C(0xD000000000000027, 0x80000001015B47C0), (v7 & 1) == 0))
  {
LABEL_19:

LABEL_20:
    v23 = type metadata accessor for Notification();
    result = (*(*(v23 - 8) + 8))(a1, v23);
LABEL_21:
    v8 = 0;
    v11 = 0;
    v14 = 0;
    v17 = 0;
    v22 = 0;
    goto LABEL_22;
  }

  sub_100064288(*(v5 + 56) + 32 * v6, v29);
  sub_1005B981C(&unk_1019FB880);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = type metadata accessor for Notification();
    (*(*(v24 - 8) + 8))(a1, v24);
LABEL_24:

    goto LABEL_21;
  }

  v8 = v28;
  if (!*(v5 + 16))
  {
    goto LABEL_25;
  }

  v9 = sub_10000BE7C(0xD00000000000002ELL, 0x80000001015B47F0);
  if ((v10 & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_100064288(*(v5 + 56) + 32 * v9, v29);
  sub_1005B981C(&unk_101A22E80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v25 = type metadata accessor for Notification();
    (*(*(v25 - 8) + 8))(a1, v25);
LABEL_27:

    goto LABEL_24;
  }

  v11 = v28;
  if (!*(v5 + 16))
  {
    goto LABEL_28;
  }

  v12 = sub_10000BE7C(0xD00000000000002ELL, 0x80000001015B4820);
  if ((v13 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_100064288(*(v5 + 56) + 32 * v12, v29);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v26 = type metadata accessor for Notification();
    (*(*(v26 - 8) + 8))(a1, v26);
LABEL_30:

    goto LABEL_27;
  }

  v14 = v28;
  if (!*(v5 + 16))
  {
    goto LABEL_31;
  }

  v15 = sub_10000BE7C(0xD00000000000002FLL, 0x80000001015B4850);
  if ((v16 & 1) == 0)
  {
    goto LABEL_31;
  }

  sub_100064288(*(v5 + 56) + 32 * v15, v29);
  sub_1005B981C(&qword_1019FB890);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v27 = type metadata accessor for Notification();
    (*(*(v27 - 8) + 8))(a1, v27);

    goto LABEL_30;
  }

  v17 = v28;
  if (!*(v5 + 16) || (v18 = sub_10000BE7C(0xD00000000000002FLL, 0x80000001015B4880), (v19 & 1) == 0))
  {

LABEL_31:

LABEL_28:

LABEL_25:

    goto LABEL_19;
  }

  sub_100064288(*(v5 + 56) + 32 * v18, v29);
  v20 = type metadata accessor for Notification();
  (*(*(v20 - 8) + 8))(a1, v20);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {

    goto LABEL_24;
  }

  v22 = v28;
LABEL_22:
  *a2 = v8;
  a2[1] = v11;
  a2[2] = v14;
  a2[3] = v17;
  a2[4] = v22;
  return result;
}

uint64_t sub_100F7D104(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100F7D180()
{
  result = qword_101A23EE8;
  if (!qword_101A23EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A23EE8);
  }

  return result;
}

unint64_t sub_100F7D1D8()
{
  result = qword_101A23EF0;
  if (!qword_101A23EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A23EF0);
  }

  return result;
}

unint64_t sub_100F7D230()
{
  result = qword_101A23EF8;
  if (!qword_101A23EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A23EF8);
  }

  return result;
}

void sub_100F7D3C4()
{
  v1 = v0;
  v2 = [v0 excludedActivityTypes];
  if (v2)
  {

    v3 = [v0 excludedActivityTypes];
    if (v3)
    {
      v4 = v3;
      type metadata accessor for ActivityType(0);
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10079AC54(v6);
      if (v5)
      {
        v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v7.super.isa = 0;
      }

      [v1 setExcludedActivityTypes:v7.super.isa];
    }

    else
    {
      [v0 setExcludedActivityTypes:0];
    }
  }

  else
  {
    type metadata accessor for ActivityType(0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v0 setExcludedActivityTypes:isa];
  }
}

id sub_100F7D5F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLSelectionAwareActivityViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

NSString sub_100F7D648()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD8950 = result;
  return result;
}

void *sub_100F7D680(void *a1)
{
  sub_1005B981C(&unk_101A0A150);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10146D2A0;
  if (qword_1019F2750 != -1)
  {
    swift_once();
  }

  v3 = qword_101AD8950;
  *(v2 + 32) = qword_101AD8950;
  *(v2 + 40) = UIActivityTypeCopyToPasteboard;
  *(v2 + 48) = UIActivityTypeAddToReadingList;
  *(v2 + 56) = UIActivityTypeAssignToContact;
  type metadata accessor for ActivityType(0);
  v4 = v3;
  v5 = UIActivityTypeCopyToPasteboard;
  v6 = UIActivityTypeAddToReadingList;
  v7 = UIActivityTypeAssignToContact;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setExcludedActivityTypes:isa];

  return a1;
}

unint64_t sub_100F7D79C()
{
  result = qword_1019FC268;
  if (!qword_1019FC268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019FC268);
  }

  return result;
}

Freeform::BoardCollectionData __swiftcall BoardCollectionData.init(totalBoardCount:totalSharedBoardCount:totalFavoriteBoardCount:totalRecentAccessedBoardCount:totalRecentDeletedBoardCount:)(Swift::Int32 totalBoardCount, Swift::Int32 totalSharedBoardCount, Swift::Int32 totalFavoriteBoardCount, Swift::Int32 totalRecentAccessedBoardCount, Swift::Int32 totalRecentDeletedBoardCount)
{
  v5 = totalBoardCount | (*&totalSharedBoardCount << 32);
  v6 = totalFavoriteBoardCount | (*&totalRecentAccessedBoardCount << 32);
  result.totalFavoriteBoardCount = v6;
  result.totalRecentAccessedBoardCount = HIDWORD(v6);
  result.totalBoardCount = v5;
  result.totalSharedBoardCount = HIDWORD(v5);
  result.totalRecentDeletedBoardCount = totalRecentDeletedBoardCount;
  return result;
}

unint64_t sub_100F7D840()
{
  v1 = *v0;
  v2 = 0x616F426C61746F74;
  v3 = 0xD00000000000001CLL;
  if (v1 == 3)
  {
    v3 = 0xD00000000000001DLL;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000017;
  }

  if (*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100F7D8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100F7DC68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100F7D91C(uint64_t a1)
{
  v2 = sub_100F7DB90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F7D958(uint64_t a1)
{
  v2 = sub_100F7DB90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BoardCollectionData.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v11[3] = a4;
  v6 = sub_1005B981C(&qword_101A23F30);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_100020E58(a1, a1[3]);
  sub_100F7DB90();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v4)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v15 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v13 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v12 = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_100F7DB90()
{
  result = qword_101A23F38;
  if (!qword_101A23F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A23F38);
  }

  return result;
}

uint64_t BoardCollectionData.init(from:)(void *a1)
{
  result = sub_100F7DE24(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_100F7DC0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100F7DE24(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_100F7DC68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616F426C61746F74 && a2 == 0xEF746E756F436472;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001015B4E20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001015B4E40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001015B4E60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001015B4E80 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100F7DE24(void *a1)
{
  v3 = sub_1005B981C(&qword_101A23F68);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - v5;
  sub_100020E58(a1, a1[3]);
  sub_100F7DB90();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100005070(a1);
  }

  v16 = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = 2;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = 3;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100005070(a1);
  return v7 | (v8 << 32);
}

unint64_t sub_100F7E048()
{
  result = qword_101A23F40;
  if (!qword_101A23F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A23F40);
  }

  return result;
}

unint64_t sub_100F7E0A0()
{
  result = qword_101A23F48;
  if (!qword_101A23F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A23F48);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for BoardCollectionData(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BoardCollectionData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BoardCollectionData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 20) = v3;
  return result;
}

unint64_t sub_100F7E178()
{
  result = qword_101A23F50;
  if (!qword_101A23F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A23F50);
  }

  return result;
}

unint64_t sub_100F7E1D0()
{
  result = qword_101A23F58;
  if (!qword_101A23F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A23F58);
  }

  return result;
}

unint64_t sub_100F7E228()
{
  result = qword_101A23F60;
  if (!qword_101A23F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A23F60);
  }

  return result;
}

uint64_t sub_100F7E3B8()
{
  v0 = type metadata accessor for TimeDurationGranularity();
  sub_10061655C(v0, static BoardInitialAppStateEvent.timeDurationGranularity);
  sub_1005EB3DC(v0, static BoardInitialAppStateEvent.timeDurationGranularity);
  return static TimeDurationGranularity.milliseconds.getter();
}

uint64_t BoardInitialAppStateEvent.boardCollectionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BoardInitialAppStateEvent(0) + 20);
  v4 = sub_1005B981C(&qword_1019F2D78);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BoardInitialAppStateEvent.boardCollectionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for BoardInitialAppStateEvent(0) + 20);
  v4 = sub_1005B981C(&qword_1019F2D78);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t BoardInitialAppStateEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_1005B981C(&qword_1019F2D40);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *(type metadata accessor for BoardInitialAppStateEvent(0) + 20);
  v5 = sub_1005B981C(&qword_1019F2D78);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1 + v4, v2, v5);
}

uint64_t BoardInitialAppStateEvent.Model.init(eventData:boardCollectionData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = a3;
  v7 = a2;
  v10 = HIDWORD(a2);
  v11 = HIDWORD(a3);
  v12 = type metadata accessor for EventData();
  (*(*(v12 - 8) + 32))(a5, a1, v12);
  result = type metadata accessor for BoardInitialAppStateEvent.Model(0);
  v14 = (a5 + *(result + 20));
  *v14 = v7;
  v14[1] = v10;
  v14[2] = v6;
  v14[3] = v11;
  v14[4] = a4;
  return result;
}

uint64_t sub_100F7E7BC()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_100F7E800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001015B4EA0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100F7E8EC(uint64_t a1)
{
  v2 = sub_100F7EB2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100F7E928(uint64_t a1)
{
  v2 = sub_100F7EB2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t BoardInitialAppStateEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A23F70);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-v7];
  sub_100020E58(a1, a1[3]);
  sub_100F7EB2C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  type metadata accessor for EventData();
  sub_1006F6604(&qword_1019FB930);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for BoardInitialAppStateEvent.Model(0) + 20));
    v10 = *(v9 + 4);
    v13 = *v9;
    v14 = v10;
    v12[15] = 1;
    sub_100F7E0A0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100F7EB2C()
{
  result = qword_101A23F78;
  if (!qword_101A23F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A23F78);
  }

  return result;
}

uint64_t BoardInitialAppStateEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v29 = type metadata accessor for EventData();
  v26 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A23F80);
  v7 = *(v6 - 8);
  v27 = v6;
  v28 = v7;
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for BoardInitialAppStateEvent.Model(0);
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_100F7EB2C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v24 = v10;
  v13 = v12;
  v14 = v26;
  LOBYTE(v30) = 0;
  sub_1006F6604(&qword_1019FB948);
  v15 = v29;
  v16 = v27;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = *(v14 + 32);
  v23 = v13;
  v17(v13, v5, v15);
  v32 = 1;
  sub_100F7E048();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v28 + 8))(v9, v16);
  v18 = v31;
  v19 = v23;
  v20 = v23 + *(v24 + 20);
  *v20 = v30;
  *(v20 + 16) = v18;
  sub_100F7EED8(v19, v25);
  sub_100005070(a1);
  return sub_100F7EF3C(v19);
}

uint64_t sub_100F7EED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BoardInitialAppStateEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100F7EF3C(uint64_t a1)
{
  v2 = type metadata accessor for BoardInitialAppStateEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100F7F070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_1005B981C(&qword_1019F2D40);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  v7 = sub_1005B981C(&qword_1019F2D78);
  v8 = *(*(v7 - 8) + 104);

  return v8(a2 + v6, v4, v7);
}

void sub_100F7F170()
{
  sub_1006F1928();
  if (v0 <= 0x3F)
  {
    sub_100F7F1F4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100F7F1F4()
{
  if (!qword_101A23FF0)
  {
    sub_100F7E048();
    sub_100F7E0A0();
    v0 = type metadata accessor for EventProperty();
    if (!v1)
    {
      atomic_store(v0, &qword_101A23FF0);
    }
  }
}

uint64_t sub_100F7F284()
{
  result = type metadata accessor for EventData();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100F7F30C()
{
  result = qword_101A240B0;
  if (!qword_101A240B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A240B0);
  }

  return result;
}

unint64_t sub_100F7F364()
{
  result = qword_101A240B8;
  if (!qword_101A240B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A240B8);
  }

  return result;
}

unint64_t sub_100F7F3BC()
{
  result = qword_101A240C0;
  if (!qword_101A240C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A240C0);
  }

  return result;
}

uint64_t sub_100F7F410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100F7F434, 0, 0);
}

uint64_t sub_100F7F434()
{
  if (URL.isFileURL.getter())
  {
    v1 = v0[4];
    if (v1)
    {
      v2 = v0[4];
    }

    else
    {
      v6 = v0[3];
      swift_getObjectType();
      v2 = sub_1009F7C78(v6, 0, 0);
      v1 = 0;
    }

    v0[6] = v2;
    v7 = v1;
    v8 = swift_task_alloc();
    v0[7] = v8;
    *v8 = v0;
    v8[1] = sub_100F7F58C;
    v9 = v0[2];

    return sub_100CF18DC(v9);
  }

  else
  {
    sub_1009DB968();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100F7F58C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100F7F704;
  }

  else
  {
    v2 = sub_100F7F6A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F7F6A0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F7F704()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F7F768(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 136) = a3;
  *(v4 + 16) = a1;
  v5 = type metadata accessor for CRLAssetData();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_100F7F830, 0, 0);
}

uint64_t sub_100F7F830()
{
  static Task<>.checkCancellation()();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_100F7F914;

  return sub_100FC6E1C();
}

uint64_t sub_100F7F914(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_100F7FE2C;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_100F7FA3C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100F7FA3C()
{
  v2 = v0[9];
  v1 = v0[10];
  v0[11] = v1;
  static Task<>.checkCancellation()();
  if (v2)
  {

    v9 = v0[1];

    return v9();
  }

  else
  {
    static Task<>.checkCancellation()();
    v3 = sub_1009DCA30();
    v0[12] = v3;
    v0[13] = v4;
    v6 = aLinkMetadata[0];
    v5 = aLinkMetadata[1];
    v7 = v3;
    v8 = v4;

    swift_getObjectType();
    v0[14] = sub_1009F7A0C(v7, v8, v6, v5);

    static Task<>.checkCancellation()();
    v11 = swift_task_alloc();
    v0[15] = v11;
    *v11 = v0;
    v11[1] = sub_100F7FBCC;
    v12 = v0[7];

    return sub_100CF18DC(v12);
  }
}

uint64_t sub_100F7FBCC()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_100F7FDB0;
  }

  else
  {
    v2 = sub_100F7FCE0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F7FCE0()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);

  sub_10002640C(v2, v1);
  sub_1006008F0(v4, v7);
  (*(v5 + 56))(v7, 0, 1, v6);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100F7FDB0()
{
  sub_10002640C(*(v0 + 96), *(v0 + 104));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F7FE2C()
{
  if (*(v0 + 136))
  {
    v1 = sub_100F17268();

    *(v0 + 88) = v1;
    static Task<>.checkCancellation()();
    static Task<>.checkCancellation()();
    v2 = sub_1009DCA30();
    *(v0 + 96) = v2;
    *(v0 + 104) = v3;
    v5 = aLinkMetadata[0];
    v4 = aLinkMetadata[1];
    v6 = v2;
    v7 = v3;

    swift_getObjectType();
    *(v0 + 112) = sub_1009F7A0C(v6, v7, v5, v4);

    static Task<>.checkCancellation()();
    v10 = swift_task_alloc();
    *(v0 + 120) = v10;
    *v10 = v0;
    v10[1] = sub_100F7FBCC;
    v11 = *(v0 + 56);

    return sub_100CF18DC(v11);
  }

  else
  {
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100F80000(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100F80024, 0, 0);
}

uint64_t sub_100F80024()
{
  static Task<>.checkCancellation()();
  v1 = sub_100F17268();
  v2 = sub_1009DCA30();
  v4 = v3;
  v0[5] = v2;
  v0[6] = v3;

  v5 = aLinkMetadata[0];
  v6 = aLinkMetadata[1];

  swift_getObjectType();
  v0[7] = sub_1009F7A0C(v2, v4, v5, v6);

  static Task<>.checkCancellation()();
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_100F801AC;
  v8 = v0[2];

  return sub_100CF18DC(v8);
}

uint64_t sub_100F801AC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100F80334;
  }

  else
  {
    v2 = sub_100F802C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100F802C0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);

  sub_10002640C(v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100F80334()
{
  sub_10002640C(*(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100F8040C()
{
  result = qword_101A24190;
  if (!qword_101A24190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24190);
  }

  return result;
}

uint64_t sub_100F80460()
{
  v1 = [v0 userInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v2 + 16) && (v3 = sub_10000BE7C(0xD000000000000026, 0x800000010158BA90), (v4 & 1) != 0))
  {
    sub_100064288(*(v2 + 56) + 32 * v3, v7);

    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_100F80544(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v2[21] = *(type metadata accessor for CRLBoardEntity() - 8);
  v2[22] = swift_task_alloc();
  v2[23] = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_100F80658, 0, 0);
}

uint64_t sub_100F80658()
{
  v1 = *(v0 + 152);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 184);
    v4 = *(v0 + 168);
    sub_10004B394(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      v7 = *(v0 + 192);
      v8 = *(v0 + 176);
      sub_100616494(v5, v8, type metadata accessor for CRLBoardEntity);
      sub_100616494(v8, v7, type metadata accessor for CRLBoardIdentifier);
      sub_100689004(v8);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_10004B394(v9 > 1, v10 + 1, 1);
      }

      *(v0 + 256) = _swiftEmptyArrayStorage;
      v11 = *(v0 + 192);
      _swiftEmptyArrayStorage[2] = v10 + 1;
      sub_1005EB270(v11, _swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10);
      v5 += v6;
      --v2;
    }

    while (v2);
    *(v0 + 200) = *sub_100020E58(*(v0 + 160), *(*(v0 + 160) + 24));
    type metadata accessor for MainActor();
    *(v0 + 208) = static MainActor.shared.getter();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 216) = v12;
    *(v0 + 224) = v13;

    return _swift_task_switch(sub_100F808B4, v12, v13);
  }

  else
  {
    type metadata accessor for _PrebuiltAppIntentError();
    sub_1007D2540();
    swift_allocError();
    static _UnrecoverableError.unknownError.getter();
    swift_willThrow();

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_100F808B4()
{
  v1 = sub_10004B3DC(v0[32]);
  v0[29] = v1;

  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_100F80964;

  return sub_1010B719C(v1);
}

uint64_t sub_100F80964()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 216);
    v4 = *(v2 + 224);
    v5 = sub_100F80AFC;
  }

  else
  {

    v3 = *(v2 + 216);
    v4 = *(v2 + 224);
    v5 = sub_100F80A80;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100F80A80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F80AFC()
{

  return _swift_task_switch(sub_100F80B70, 0, 0);
}

uint64_t sub_100F80B70()
{
  v0[17] = v0[31];
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  if (swift_dynamicCast())
  {

    type metadata accessor for _PrebuiltAppIntentError();
    sub_1007D2540();
    swift_allocError();
    static _UnrecoverableError.entityNotFound.getter();
  }

  else
  {
    if (qword_1019F2238 != -1)
    {
      swift_once();
    }

    v1 = static OS_os_log.appIntents;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    swift_getErrorValue();
    v3 = Error.publicDescription.getter(v0[15], v0[16]);
    v5 = v4;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v3;
    *(inited + 40) = v5;
    v6 = static os_log_type_t.error.getter();
    sub_100005404(v1, &_mh_execute_header, v6, "Error deleting boards: %@", 25, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    type metadata accessor for _PrebuiltAppIntentError();
    sub_1007D2540();
    swift_allocError();
    static _UnrecoverableError.unknownError.getter();
  }

  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t *sub_100F80DC0(char a1)
{
  v2 = v1;
  v29 = *v2;
  v4 = v29;
  v28 = type metadata accessor for CRLFileItemCRDTData(0);
  __chkstk_darwin(v28);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v26 - v14;
  __chkstk_darwin(v16);
  v18 = &v26 - v17;
  v19 = *(v4 + 736);
  swift_beginAccess();
  if (a1)
  {
    v27 = v9;
    sub_10000BE14(v2 + v19, v15, &unk_101A226A0);
    sub_10001A2F8(&qword_101A09E00, &unk_101A226A0);
    CRType.copy(renamingReferences:)();
    v9 = v27;
    sub_10000CAAC(v15, &unk_101A226A0);
    v20 = qword_101AD89B8;
    swift_beginAccess();
    sub_100F85AD0(v2 + v20, v6, type metadata accessor for CRLFileItemCRDTData);
    sub_100F85328(&qword_101A15000, type metadata accessor for CRLFileItemCRDTData);
    CRType.copy(renamingReferences:)();
    sub_100F85B38(v6, type metadata accessor for CRLFileItemCRDTData);
  }

  else
  {
    sub_10000BE14(v2 + v19, v18, &unk_101A226A0);
    v21 = qword_101AD89B8;
    swift_beginAccess();
    sub_100F85AD0(v2 + v21, v9, type metadata accessor for CRLFileItemCRDTData);
  }

  sub_10000BE14(v18, v15, &unk_101A226A0);
  sub_100F85AD0(v9, v6, type metadata accessor for CRLFileItemCRDTData);
  v22 = *(v2 + 5);
  v30[0] = *(v2 + 3);
  v30[1] = v22;
  v31 = *(v2 + 56);
  v28 = v2[2];
  v23 = v9;
  v24 = swift_allocObject();
  sub_100F85AD0(v6, v24 + qword_101AD89B8, type metadata accessor for CRLFileItemCRDTData);
  sub_10000BE14(v15, v12, &unk_101A226A0);
  sub_10000BE14(v12, v24 + *(*v24 + 736), &unk_101A226A0);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v12, &unk_101A226A0);
  sub_100F85B38(v6, type metadata accessor for CRLFileItemCRDTData);
  sub_10000CAAC(v15, &unk_101A226A0);
  sub_100F85B38(v23, type metadata accessor for CRLFileItemCRDTData);
  sub_10000CAAC(v18, &unk_101A226A0);
  return sub_100747AF0(v30, v28);
}

uint64_t sub_100F81264(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v48 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v9 - 8);
  v47 = v44 - v10;
  v11 = type metadata accessor for CRLFileItemAtomicDataStruct(0);
  __chkstk_darwin(v11);
  v49 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v44 - v14;
  __chkstk_darwin(v16);
  v18 = v44 - v17;
  v19 = OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_assetUUIDMap;
  swift_beginAccess();
  v50 = a1;
  if (*(*(a1 + v19) + 16))
  {
    v44[1] = qword_101AD89B8;
    swift_beginAccess();
    v44[2] = sub_1005B981C(&qword_101A0B528);
    CRRegister.wrappedValue.getter();
    swift_endAccess();
    sub_100C038F0(v15, v18);
    v20 = type metadata accessor for CRLAssetData();
    v45 = v2;
    v46 = v6;
    v21 = v20;
    v22 = *(v20 + 20);
    v23 = *(v20 + 24);
    v25 = *&v15[v22];
    v24 = *&v15[v22 + 8];
    v26 = *&v15[v23];
    v27 = &v18[v22];
    *v27 = v25;
    *(v27 + 1) = v24;
    *&v18[*(v21 + 24)] = v26;
    v28 = *(v11 + 20);
    v29 = &v15[v28];
    v30 = v7;
    v31 = &v18[v28];

    sub_100C038F0(v29, v31);
    v32 = *(v21 + 20);
    v34 = *(v29 + v32);
    v33 = *(v29 + v32 + 8);
    v35 = *(v29 + *(v21 + 24));
    v36 = (v31 + v32);
    *v36 = v34;
    v36[1] = v33;
    v37 = *(v21 + 24);
    v6 = v46;
    *(v31 + v37) = v35;
    v7 = v30;
    v38 = *&v15[*(v11 + 24)];

    sub_100F85B38(v15, type metadata accessor for CRLFileItemAtomicDataStruct);
    *&v18[*(v11 + 24)] = v38;
    sub_100F85AD0(v18, v15, type metadata accessor for CRLFileItemAtomicDataStruct);
    swift_beginAccess();
    sub_100F85AD0(v15, v49, type metadata accessor for CRLFileItemAtomicDataStruct);
    CRRegister.wrappedValue.setter();
    sub_100F85B38(v15, type metadata accessor for CRLFileItemAtomicDataStruct);
    swift_endAccess();
    v3 = v45;
    sub_100F85B38(v18, type metadata accessor for CRLFileItemAtomicDataStruct);
  }

  v39 = *(*v4 + 736);
  swift_beginAccess();
  sub_10124DE14(v50);
  result = swift_endAccess();
  if (!v3)
  {
    v41 = v47;
    sub_10000BE14(v4 + v39, v47, &unk_101A226A0);
    sub_1005B981C(&unk_1019F5250);
    v42 = v48;
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v41, &unk_101A226A0);
    v43 = *(*v4 + 744);
    swift_beginAccess();
    (*(v7 + 40))(v4 + v43, v42, v6);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_100F816D4()
{
  qword_101AD89A0 = 97;
  *algn_101AD89A8 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD89B0 = result;
  return result;
}

uint64_t sub_100F81714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRLFileItemAtomicDataStruct(0);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  sub_100F85AD0(a1, &v19 - v11, type metadata accessor for CRLAssetData);
  if (qword_1019F2878 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for UUID();
  v14 = sub_1005EB3DC(v13, qword_101AD8F08);
  v15 = &v12[*(v4 + 20)];
  (*(*(v13 - 8) + 16))(v15, v14, v13);
  v16 = type metadata accessor for CRLAssetData();
  v17 = &v15[*(v16 + 20)];
  *v17 = 0;
  *(v17 + 1) = 0xE000000000000000;
  *&v15[*(v16 + 24)] = _swiftEmptyDictionarySingleton;
  *&v12[*(v4 + 24)] = _swiftEmptyDictionarySingleton;
  sub_100F85AD0(v12, v9, type metadata accessor for CRLFileItemAtomicDataStruct);
  *(a2 + *(type metadata accessor for CRLFileItemCRDTData(0) + 20)) = _swiftEmptyDictionarySingleton;
  sub_100F85AD0(v9, v6, type metadata accessor for CRLFileItemAtomicDataStruct);
  sub_100F85328(&qword_101A14FE0, type metadata accessor for CRLFileItemAtomicDataStruct);
  CRRegister.init(_:)();
  sub_100F85B38(a1, type metadata accessor for CRLAssetData);
  sub_100F85B38(v9, type metadata accessor for CRLFileItemAtomicDataStruct);
  return sub_100F85B38(v12, type metadata accessor for CRLFileItemAtomicDataStruct);
}

uint64_t sub_100F81990()
{
  v0 = type metadata accessor for CRLFileItemAtomicDataStruct(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v8 - v4;
  sub_1005B981C(&qword_101A0B528);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  v6 = sub_100F859AC(v5, v2);
  sub_100F85B38(v2, type metadata accessor for CRLFileItemAtomicDataStruct);
  sub_100F85B38(v5, type metadata accessor for CRLFileItemAtomicDataStruct);
  return v6 & 1;
}

uint64_t sub_100F81A9C()
{
  if (qword_1019F2770 != -1)
  {
    swift_once();
  }

  v0 = qword_101AD89A0;

  return v0;
}

uint64_t sub_100F81B1C(uint64_t a1)
{
  v2 = sub_100F85328(&qword_101A14FF8, type metadata accessor for CRLFileItemCRDTData);

  return static CRStruct_1.fieldKeys.getter(a1, v2);
}

uint64_t sub_100F81B88@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F2878 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for UUID();
  v6 = sub_1005EB3DC(v5, qword_101AD8F08);
  (*(*(v5 - 8) + 16))(v4, v6, v5);
  v7 = &v4[*(v2 + 20)];
  *v7 = 0;
  *(v7 + 1) = 0xE000000000000000;
  *&v4[*(v2 + 24)] = _swiftEmptyDictionarySingleton;
  return sub_100F81714(v4, a1);
}

uint64_t sub_100F81CA8(uint64_t a1)
{
  v2 = sub_100F85328(&qword_101A15000, type metadata accessor for CRLFileItemCRDTData);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_100F81D14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100F85328(&qword_101A14FF8, type metadata accessor for CRLFileItemCRDTData);

  return CRStruct_1.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_100F81D90()
{
  sub_100F85328(&qword_101A14FF8, type metadata accessor for CRLFileItemCRDTData);

  return CRStruct_1.actionUndoingDifference(from:)();
}

uint64_t sub_100F81E14()
{
  sub_100F85328(&qword_101A14FF8, type metadata accessor for CRLFileItemCRDTData);

  return CRStruct_1.apply(_:)();
}

uint64_t sub_100F81E90()
{
  sub_100F85328(&qword_101A14FF8, type metadata accessor for CRLFileItemCRDTData);

  return CRStruct_1.hasDelta(from:)();
}

uint64_t sub_100F81F0C()
{
  sub_100F85328(&qword_101A14FF8, type metadata accessor for CRLFileItemCRDTData);

  return CRStruct_1.delta(_:from:)();
}