uint64_t *sub_1006CA44C@<X0>(unsigned int (*a1)(char *, uint64_t, uint64_t)@<X0>, char *a2@<X8>)
{
  v263 = a1;
  v3 = sub_1000F24EC(&qword_100AED998);
  v4 = __chkstk_darwin(v3 - 8);
  v237 = &v227 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v238 = &v227 - v6;
  v249 = type metadata accessor for UUID();
  v251 = *(v249 - 8);
  __chkstk_darwin(v249);
  v234 = &v227 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AD8478);
  v9 = __chkstk_darwin(v8 - 8);
  v241 = &v227 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v259 = (&v227 - v11);
  v12 = sub_1000F24EC(&qword_100AD57F0);
  v13 = __chkstk_darwin(v12 - 8);
  v239 = &v227 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v243 = &v227 - v15;
  v16 = sub_1000F24EC(&qword_100AD1420);
  v17 = __chkstk_darwin(v16 - 8);
  v248 = &v227 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v256 = (&v227 - v20);
  v21 = __chkstk_darwin(v19);
  v242 = &v227 - v22;
  v23 = __chkstk_darwin(v21);
  v245 = (&v227 - v24);
  __chkstk_darwin(v23);
  v255 = &v227 - v25;
  v26 = type metadata accessor for URLQueryItem();
  v27 = *(v26 - 8);
  v260 = v26;
  v261 = v27;
  v28 = __chkstk_darwin(v26);
  v236 = &v227 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v254 = &v227 - v31;
  v32 = __chkstk_darwin(v30);
  v253 = &v227 - v33;
  v34 = __chkstk_darwin(v32);
  v235 = &v227 - v35;
  v36 = __chkstk_darwin(v34);
  v250 = (&v227 - v37);
  v38 = __chkstk_darwin(v36);
  v258 = &v227 - v39;
  v40 = __chkstk_darwin(v38);
  v246 = &v227 - v41;
  v42 = __chkstk_darwin(v40);
  v44 = &v227 - v43;
  __chkstk_darwin(v42);
  v257 = &v227 - v45;
  v46 = sub_1000F24EC(&qword_100AED9A0);
  __chkstk_darwin(v46 - 8);
  v48 = &v227 - v47;
  v49 = type metadata accessor for URLComponents();
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v262 = &v227 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1000F24EC(&unk_100AD6DD0);
  v53 = __chkstk_darwin(v52 - 8);
  v244 = &v227 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __chkstk_darwin(v53);
  v247 = (&v227 - v56);
  v57 = __chkstk_darwin(v55);
  v252 = (&v227 - v58);
  __chkstk_darwin(v57);
  v60 = &v227 - v59;
  v61 = type metadata accessor for URL();
  v62 = __chkstk_darwin(v61);
  v240 = (&v227 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v62);
  v65 = &v227 - v64;
  v67 = v66;
  sub_1000082B4(v263, v60, &unk_100AD6DD0);
  v263 = *(v67 + 48);
  if (v263(v60, 1, v61) == 1)
  {
    sub_100004F84(v60, &unk_100AD6DD0);
LABEL_15:
    v77 = type metadata accessor for AppLaunchAction();
    v78 = *(*(v77 - 8) + 56);
    v79 = a2;
LABEL_16:
    v80 = 1;
    return v78(v79, v80, 1, v77);
  }

  v233 = a2;
  v232 = *(v67 + 32);
  v232(v65, v60, v61);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v68 = v61;
  if (v50[6](v48, 1, v49) == 1)
  {
    (*(v67 + 8))(v65, v61);
    sub_100004F84(v48, &qword_100AED9A0);
LABEL_14:
    a2 = v233;
    goto LABEL_15;
  }

  v231 = v65;
  v50[4](v262, v48, v49);
  v69 = URLComponents.scheme.getter();
  v71 = v50;
  v72 = v49;
  v73 = v259;
  if (!v70)
  {
    goto LABEL_13;
  }

  v230 = v67;
  if (v69 != 0x73746E656D6F6DLL || v70 != 0xE700000000000000)
  {
    v74 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v67 = v230;

    if (v74)
    {
      goto LABEL_10;
    }

LABEL_13:
    v71[1](v262, v72);
    (*(v67 + 8))(v231, v68);
    goto LABEL_14;
  }

LABEL_10:
  v75._countAndFlagsBits = URLComponents.host.getter();
  if (!v75._object || (v76 = sub_1006CF268(v75), v76 == 8))
  {
    v71[1](v262, v72);
    (*(v230 + 8))(v231, v68);
    goto LABEL_14;
  }

  result = URLComponents.queryItems.getter();
  if (!result)
  {
    result = &_swiftEmptyArrayStorage;
  }

  v228 = v68;
  v229 = result;
  if (v76 > 3)
  {
    v105 = v260;
    if (v76 <= 5)
    {
      v254 = v72;
      if (v76 != 4)
      {
        v174 = *(v251 + 56);
        v175 = v256;
        v251 += 56;
        v258 = v174;
        v174(v256, 1, 1, v249);
        result = v229;
        v176 = v250;
        v263 = v229[2];
        if (v263)
        {
          v177 = 0;
          v259 = (v229 + ((*(v261 + 80) + 32) & ~*(v261 + 80)));
          v178 = (v261 + 8);
          v179 = &qword_100AD1420;
          while (v177 < result[2])
          {
            v180 = v179;
            (*(v261 + 16))(v176, v259 + *(v261 + 72) * v177, v105);
            v181 = v105;
            v182 = URLQueryItem.name.getter();
            v184 = v183;
            v185._countAndFlagsBits = v182;
            v185._object = v184;
            v186 = v176;
            v187 = _findStringSwitchCase(cases:string:)(&off_100A59928, v185);

            if (v187 == 5)
            {
              URLQueryItem.value.getter();
              v188 = v248;
              if (v189)
              {
                UUID.init(uuidString:)();

                v105 = v260;
                (*v178)(v186, v260);
                v175 = v256;
                v179 = v180;
                sub_100004F84(v256, v180);
              }

              else
              {
                v105 = v260;
                (*v178)(v186, v260);
                v175 = v256;
                v179 = v180;
                sub_100004F84(v256, v180);
                (v258)(v188, 1, 1, v249);
              }

              sub_100021CEC(v188, v175, v179);
              v176 = v250;
            }

            else
            {
              (*v178)(v186, v181);
              v105 = v181;
              v175 = v256;
              v176 = v186;
              v179 = v180;
            }

            ++v177;
            result = v229;
            if (v263 == v177)
            {
              goto LABEL_128;
            }
          }

          goto LABEL_157;
        }

LABEL_128:

        v71[1](v262, v254);
        (*(v230 + 8))(v231, v228);
        v200 = v175;
        goto LABEL_129;
      }

      v250 = v71;
      v106 = type metadata accessor for CanvasContentInputType();
      v107 = *(v106 - 8);
      v245 = *(v107 + 56);
      v246 = v106;
      v244 = (v107 + 56);
      v245(v243, 1, 1);
      v108 = type metadata accessor for WidgetFamily();
      v109 = *(v108 - 8);
      v252 = *(v109 + 56);
      v253 = v108;
      v248 = (v109 + 56);
      (v252)(v73, 1, 1);
      result = v229;
      v110 = v229[2];
      if (!v110)
      {
        v256 = 0;
        v257 = 0;
LABEL_135:

        v250[1](v262, v254);
        (*(v230 + 8))(v231, v228);
        v202 = sub_1000F24EC(&qword_100AD62A0);
        v203 = *(v202 + 48);
        v204 = *(v202 + 64);
        v191 = v233;
        v205 = v257;
        *v233 = v256;
        *(v191 + 1) = v205;
        sub_100021CEC(v243, &v191[v203], &qword_100AD57F0);
        sub_100021CEC(v259, &v191[v204], &qword_100AD8478);
        v190 = type metadata accessor for AppLaunchAction();
        goto LABEL_138;
      }

      v256 = 0;
      v257 = 0;
      v111 = 0;
      v112 = v229 + ((*(v261 + 80) + 32) & ~*(v261 + 80));
      v263 = (v261 + 16);
      v113 = (v261 + 8);
      v240 = (v251 + 56);
      v247 = (v251 + 48);
      v114 = v242;
      v255 = v110;
      while (1)
      {
        if (v111 >= result[2])
        {
          goto LABEL_158;
        }

        (*(v261 + 16))(v258, &v112[*(v261 + 72) * v111], v105);
        v117 = URLQueryItem.name.getter();
        v119 = v118;
        v120._countAndFlagsBits = v117;
        v120._object = v119;
        v121 = _findStringSwitchCase(cases:string:)(&off_100A59860, v120);

        if (v121 > 2)
        {
          break;
        }

        if (v121)
        {
          if (v121 == 2)
          {

            v122 = v258;
            v256 = URLQueryItem.value.getter();
            v257 = v123;
            v115 = *v113;
            v116 = v122;
            goto LABEL_43;
          }

LABEL_42:
          v115 = *v113;
          v116 = v258;
          goto LABEL_43;
        }

        v131 = v258;
        URLQueryItem.value.getter();
        if (!v132)
        {
          goto LABEL_61;
        }

        UUID.init(uuidString:)();

        v105 = v260;
        (*v113)(v131, v260);
        if ((*v247)(v114, 1, v249) != 1)
        {

          sub_100004F84(v259, &qword_100AD8478);
          sub_100004F84(v243, &qword_100AD57F0);
          v250[1](v262, v254);
          (*(v230 + 8))(v231, v228);
          v223 = *(v251 + 32);
          v224 = v114;
          v225 = v234;
          v226 = v249;
          v223(v234, v224, v249);
          v191 = v233;
          v223(v233, v225, v226);
          v190 = type metadata accessor for AppLaunchAction();
          goto LABEL_138;
        }

        sub_100004F84(v114, &qword_100AD1420);
LABEL_44:
        ++v111;
        result = v229;
        if (v110 == v111)
        {
          goto LABEL_135;
        }
      }

      if (v121 != 3)
      {
        if (v121 == 4)
        {
          v124 = v258;
          v125 = URLQueryItem.value.getter();
          if (v126 && (sub_1006CA14C(v125, v126), (v127 & 1) == 0))
          {
            v130 = v241;
            WidgetFamily.init(rawValue:)();
            v135 = v124;
            v105 = v260;
            (*v113)(v135, v260);
            v129 = v259;
            sub_100004F84(v259, &qword_100AD8478);
          }

          else
          {
            v128 = v124;
            v105 = v260;
            (*v113)(v128, v260);
            v129 = v259;
            sub_100004F84(v259, &qword_100AD8478);
            v130 = v241;
            (v252)(v241, 1, 1, v253);
          }

          sub_100021CEC(v130, v129, &qword_100AD8478);
          v114 = v242;
          v110 = v255;
          goto LABEL_44;
        }

        goto LABEL_42;
      }

      v131 = v258;
      v133._countAndFlagsBits = URLQueryItem.value.getter();
      if (v133._object)
      {
        v134 = sub_1006CF2B4(v133);
        (*v113)(v131, v260);
        if (v134 == 12)
        {
          v105 = v260;
        }

        else
        {
          sub_100004F84(v243, &qword_100AD57F0);
          if (v134 > 5)
          {
            v136 = v239;
            if (v134 <= 8 && v134 != 6)
            {
              *v239 = v134 != 7;
            }
          }

          else
          {
            v136 = v239;
            if (v134 > 2)
            {
              if (v134 == 4)
              {
                (*v240)(v239, 1, 1, v249);
                v136 = v239;
              }
            }

            else if (v134)
            {
              *v239 = v134 != 1;
            }
          }

          v105 = v260;
          v137 = v246;
          swift_storeEnumTagMultiPayload();
          (v245)(v136, 0, 1, v137);
          sub_100021CEC(v136, v243, &qword_100AD57F0);
        }

        goto LABEL_44;
      }

LABEL_61:
      v115 = *v113;
      v116 = v131;
LABEL_43:
      v105 = v260;
      v115(v116, v260);
      goto LABEL_44;
    }

    v154 = v71;
    if (v76 == 6)
    {
      v155 = result[2];
      if (!v155)
      {
LABEL_101:

        v160 = v233;
        v161 = v231;
LABEL_146:
        v154[1](v262, v72);
        (*(v230 + 8))(v161, v228);
        v77 = type metadata accessor for AppLaunchAction();
        v78 = *(*(v77 - 8) + 56);
        v79 = v160;
        goto LABEL_16;
      }

      v156 = 0;
      v157 = (v261 + 8);
      while (v156 < result[2])
      {
        (*(v261 + 16))(v253, result + ((*(v261 + 80) + 32) & ~*(v261 + 80)) + *(v261 + 72) * v156, v105);
        if (URLQueryItem.name.getter() == 0x697373696D726570 && v158 == 0xEE00657079546E6FLL)
        {

LABEL_142:

          v206 = v260;
          v207 = v261 + 32;
          v208 = v235;
          (*(v261 + 32))(v235, v253, v260);
          v209 = URLQueryItem.value.getter();
          v211 = v210;
          (*(v207 - 24))(v208, v206);
          v160 = v233;
          v161 = v231;
          if (!v211)
          {
            goto LABEL_146;
          }

          v212._countAndFlagsBits = v209;
          v212._object = v211;
          v213 = _findStringSwitchCase(cases:string:)(&off_100A59538, v212);

          if (v213)
          {
            if (v213 != 1)
            {
              goto LABEL_146;
            }

            v214 = 1;
          }

          else
          {
            v214 = 0;
          }

          goto LABEL_153;
        }

        v159 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v159)
        {
          goto LABEL_142;
        }

        ++v156;
        v105 = v260;
        (*v157)(v253, v260);
        result = v229;
        if (v155 == v156)
        {
          goto LABEL_101;
        }
      }

      goto LABEL_159;
    }

    v192 = result[2];
    v193 = v261;
    if (v192)
    {
      v194 = 0;
      v195 = (v261 + 8);
      while (v194 < result[2])
      {
        (*(v193 + 16))(v254, result + ((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v193 + 72) * v194, v105);
        if (URLQueryItem.name.getter() == 25705 && v196 == 0xE200000000000000)
        {

LABEL_147:

          v105 = v260;
          v193 = v261;
          v199 = v238;
          (*(v261 + 32))(v238, v254, v260);
          v198 = 0;
          v160 = v233;
          v161 = v231;
          goto LABEL_148;
        }

        v197 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v197)
        {
          goto LABEL_147;
        }

        ++v194;
        v105 = v260;
        (*v195)(v254, v260);
        v193 = v261;
        result = v229;
        if (v192 == v194)
        {
          goto LABEL_126;
        }
      }

      goto LABEL_160;
    }

LABEL_126:

    v198 = 1;
    v160 = v233;
    v161 = v231;
    v199 = v238;
LABEL_148:
    v215 = v237;
    (*(v193 + 56))(v199, v198, 1, v105);
    sub_1000082B4(v199, v215, &qword_100AED998);
    if ((*(v193 + 48))(v215, 1, v105) == 1)
    {
      sub_100004F84(v199, &qword_100AED998);
    }

    else
    {
      v216 = v236;
      (*(v193 + 32))(v236, v215, v105);
      v217 = v105;
      v218 = URLQueryItem.value.getter();
      v219 = v193;
      v220 = v218;
      v222 = v221;
      (*(v219 + 8))(v216, v217);
      sub_100004F84(v199, &qword_100AED998);
      if (v222)
      {
        v264._countAndFlagsBits = v220;
        v264._object = v222;
        v214 = sub_1006CF300(v264);
LABEL_153:
        v154[1](v262, v72);
        (*(v230 + 8))(v161, v228);
        *v160 = v214;
        v190 = type metadata accessor for AppLaunchAction();
        swift_storeEnumTagMultiPayload();
        v78 = *(*(v190 - 8) + 56);
        v79 = v160;
        goto LABEL_139;
      }
    }

    v214 = 4;
    goto LABEL_153;
  }

  v82 = v260;
  if (v76 <= 1)
  {
    v254 = v72;
    if (v76)
    {
      v162 = result[2];
      if (v162)
      {
        v250 = v71;
        v259 = 0;
        v163 = 0;
        v263 = *(v261 + 16);
        v164 = result + ((*(v261 + 80) + 32) & ~*(v261 + 80));
        v165 = *(v261 + 72);
        v166 = (v261 + 8);
        v263(v44, v164, v260);
        while (1)
        {
          v168 = URLQueryItem.name.getter();
          v170 = v169;
          v171._countAndFlagsBits = v168;
          v171._object = v170;
          v172 = _findStringSwitchCase(cases:string:)(&off_100A596D0, v171);

          if (v172 == 1)
          {

            v259 = URLQueryItem.value.getter();
            v163 = v173;
          }

          v167 = v260;
          (*v166)(v44, v260);
          v164 += v165;
          if (!--v162)
          {
            break;
          }

          v263(v44, v164, v167);
        }

        v68 = v228;
        v71 = v250;
        v201 = v259;
      }

      else
      {

        v201 = 0;
        v163 = 0;
      }

      v71[1](v262, v254);
      (*(v230 + 8))(v231, v68);
      v191 = v233;
      *v233 = v201;
      *(v191 + 1) = v163;
      v190 = type metadata accessor for AppLaunchAction();
    }

    else
    {
      v250 = v71;
      v83 = v230;
      v84 = *(v230 + 56);
      v255 = v230 + 56;
      v253 = v84;
      (v84)(v252, 1, 1, v68);
      v85 = v229[2];
      if (v85)
      {
        v86 = *(v261 + 16);
        v87 = v229 + ((*(v261 + 80) + 32) & ~*(v261 + 80));
        v258 = *(v261 + 72);
        v259 = v86;
        v261 += 16;
        v256 = (v261 - 8);
        v251 = v83 + 8;
        while (1)
        {
          v88 = v257;
          (v259)(v257, v87, v82);
          v89 = v82;
          v90 = URLQueryItem.name.getter();
          v92 = v91;
          v93._countAndFlagsBits = v90;
          v93._object = v92;
          v94 = _findStringSwitchCase(cases:string:)(&off_100A59608, v93);

          if (!v94)
          {
            break;
          }

          (*v256)(v88, v89);
          v83 = v230;
          v82 = v89;
LABEL_26:
          v87 += v258;
          if (!--v85)
          {

            v68 = v228;
            goto LABEL_133;
          }
        }

        URLQueryItem.value.getter();
        if (v95)
        {
          v96 = v244;
          URL.init(string:)();

          v97 = v228;
          if (v263(v96, 1, v228) != 1)
          {
            v101 = v240;
            v232(v240, v96, v97);
            URL.scheme.getter();
            v103 = v102;
            v82 = v260;
            (*v256)(v257, v260);
            sub_100004F84(v252, &unk_100AD6DD0);
            if (v103)
            {

              v232(v247, v101, v97);
              v100 = 0;
            }

            else
            {
              (*v251)(v101, v97);
              v100 = 1;
            }

            v98 = v252;
            goto LABEL_37;
          }

          v82 = v260;
          (*v256)(v257, v260);
          v98 = v252;
          sub_100004F84(v252, &unk_100AD6DD0);
          v99 = v96;
        }

        else
        {
          v82 = v260;
          (*v256)(v88, v260);
          v98 = v252;
          v99 = v252;
        }

        sub_100004F84(v99, &unk_100AD6DD0);
        v100 = 1;
LABEL_37:
        v104 = v247;
        (v253)(v247, v100, 1, v228);
        sub_100021CEC(v104, v98, &unk_100AD6DD0);
        v83 = v230;
        goto LABEL_26;
      }

LABEL_133:
      v250[1](v262, v254);
      (*(v83 + 8))(v231, v68);
      v191 = v233;
      sub_100021CEC(v252, v233, &unk_100AD6DD0);
      v190 = type metadata accessor for AppLaunchAction();
    }

    goto LABEL_138;
  }

  if (v76 != 2)
  {

    v71[1](v262, v72);
    (*(v230 + 8))(v231, v68);
    v190 = type metadata accessor for AppLaunchAction();
    v191 = v233;
LABEL_138:
    swift_storeEnumTagMultiPayload();
    v78 = *(*(v190 - 8) + 56);
    v79 = v191;
LABEL_139:
    v80 = 0;
    v77 = v190;
    return v78(v79, v80, 1, v77);
  }

  v254 = v72;
  v138 = *(v251 + 56);
  v139 = v255;
  v251 += 56;
  v257 = v138;
  (v138)(v255, 1, 1, v249);
  result = v229;
  v140 = v246;
  v263 = v229[2];
  if (!v263)
  {
LABEL_127:

    v71[1](v262, v254);
    (*(v230 + 8))(v231, v228);
    v200 = v139;
LABEL_129:
    v191 = v233;
    sub_100021CEC(v200, v233, &qword_100AD1420);
    v190 = type metadata accessor for AppLaunchAction();
    goto LABEL_138;
  }

  v141 = 0;
  v259 = (v229 + ((*(v261 + 80) + 32) & ~*(v261 + 80)));
  v258 = v261 + 16;
  v142 = (v261 + 8);
  v143 = &qword_100AD1420;
  while (v141 < result[2])
  {
    v144 = v143;
    v145 = v71;
    (*(v261 + 16))(v140, v259 + *(v261 + 72) * v141, v82);
    v146 = URLQueryItem.name.getter();
    v148 = v147;
    v149._countAndFlagsBits = v146;
    v149._object = v148;
    v150 = _findStringSwitchCase(cases:string:)(&off_100A59798, v149);

    if (v150)
    {
      (*v142)(v140, v82);
      v71 = v145;
      v139 = v255;
      v143 = v144;
    }

    else
    {
      URLQueryItem.value.getter();
      if (v151)
      {
        v152 = v140;
        v153 = v245;
        UUID.init(uuidString:)();

        v82 = v260;
        (*v142)(v152, v260);
        v139 = v255;
        v143 = v144;
        sub_100004F84(v255, v144);
      }

      else
      {
        v82 = v260;
        (*v142)(v140, v260);
        v139 = v255;
        v143 = v144;
        sub_100004F84(v255, v144);
        v153 = v245;
        (v257)(v245, 1, 1, v249);
      }

      v71 = v145;
      sub_100021CEC(v153, v139, v143);
      v140 = v246;
    }

    ++v141;
    result = v229;
    if (v263 == v141)
    {
      goto LABEL_127;
    }
  }

  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
  return result;
}

uint64_t sub_1006CC4F4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v17 - v5);
  v7 = sub_1006C9CD0(a1);
  v8 = sub_10089177C(v7);

  if (*(v8 + 16))
  {
    *a2 = v8;
    v9 = type metadata accessor for AppLaunchAction();
    swift_storeEnumTagMultiPayload();
    v10 = *(*(v9 - 8) + 56);

    return v10(a2, 0, 1, v9);
  }

  else
  {

    v12 = sub_100603F8C(a1);
    if (v12)
    {
      v13 = v12;
      v14 = [v12 URL];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
    }

    else
    {
      v16 = type metadata accessor for URL();
      (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    }

    sub_1006CA44C(v6, a2);
    return sub_100004F84(v6, &unk_100AD6DD0);
  }
}

uint64_t sub_1006CC6F8@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v53 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v21 = type metadata accessor for AppLaunchAction();
    v22 = *(*(v21 - 8) + 56);

    return v22(a2, 1, 1, v21);
  }

  v12 = v9;
  v13 = a1;
  v14 = [v13 activityType];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v24 = [v13 userInfo];
  if (!v24)
  {
    goto LABEL_20;
  }

  v25 = v24;
  v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v27;
  AnyHashable.init<A>(_:)();
  if (!*(v26 + 16) || (v28 = sub_100361EDC(v56), (v29 & 1) == 0))
  {

    sub_100177B94(v56);
LABEL_20:
    v57 = 0u;
    v58 = 0u;
    goto LABEL_21;
  }

  sub_10000BA20(*(v26 + 56) + 32 * v28, &v57);
  sub_100177B94(v56);

  if (!*(&v58 + 1))
  {
LABEL_21:
    v30 = &qword_100AD13D0;
    v31 = &v57;
LABEL_22:
    sub_100004F84(v31, v30);
    goto LABEL_23;
  }

  if (swift_dynamicCast())
  {
    sub_1006CD938(v6);

    if ((*(v8 + 48))(v6, 1, v12) != 1)
    {

      v52 = *(v8 + 32);
      v52(v11, v6, v12);
      v52(a2, v11, v12);
      (*(v8 + 56))(a2, 0, 1, v12);
      v45 = type metadata accessor for AppLaunchAction();
      goto LABEL_41;
    }

    v30 = &unk_100AD6DD0;
    v31 = v6;
    goto LABEL_22;
  }

LABEL_23:
  v32 = [v13 activityType];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  if (v33 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v35 == v36)
  {
  }

  else
  {
    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v37 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  v38 = [v13 userInfo];
  if (v38)
  {
    v39 = v38;
    v40 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v41;
    AnyHashable.init<A>(_:)();
    if (*(v40 + 16))
    {
      v42 = sub_100361EDC(v56);
      if (v43)
      {
        sub_10000BA20(*(v40 + 56) + 32 * v42, &v57);
        sub_100177B94(v56);

        if (*(&v58 + 1))
        {
          if (swift_dynamicCast())
          {

            v44 = v56[1];
            *a2 = v56[0];
            *(a2 + 1) = v44;
            v45 = type metadata accessor for AppLaunchAction();
LABEL_41:
            swift_storeEnumTagMultiPayload();
            return (*(*(v45 - 8) + 56))(a2, 0, 1, v45);
          }

          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    sub_100177B94(v56);
  }

  v57 = 0u;
  v58 = 0u;
LABEL_35:
  sub_100004F84(&v57, &qword_100AD13D0);
LABEL_36:
  v46 = [v13 activityType];
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  if (v47 == 0xD00000000000001ALL && 0x80000001008F4610 == v49)
  {

LABEL_40:
    *a2 = 4;
    v45 = type metadata accessor for AppLaunchAction();
    goto LABEL_41;
  }

  v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v50)
  {
    goto LABEL_40;
  }

  v51 = type metadata accessor for AppLaunchAction();
  return (*(*(v51 - 8) + 56))(a2, 1, 1, v51);
}

uint64_t sub_1006CCDC0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x68746C616568;
  }

  else
  {
    v3 = 0x6163696669746F6ELL;
  }

  if (v2)
  {
    v4 = 0xED0000736E6F6974;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x68746C616568;
  }

  else
  {
    v5 = 0x6163696669746F6ELL;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xED0000736E6F6974;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1006CCE70()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1006CCEFC()
{
  String.hash(into:)();
}

Swift::Int sub_1006CCF74()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1006CCFFC@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100A59538, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1006CD05C(uint64_t *a1@<X8>)
{
  v2 = 0x6163696669746F6ELL;
  if (*v1)
  {
    v2 = 0x68746C616568;
  }

  v3 = 0xED0000736E6F6974;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_1006CD0B0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1006CD188()
{
  String.hash(into:)();
}

Swift::Int sub_1006CD24C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1006CD320@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1006CF300(*a1);
  *a2 = result;
  return result;
}

void sub_1006CD350(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6C6172656E6567;
  v4 = 0xE700000000000000;
  v5 = 0x79636176697270;
  if (*v1 != 2)
  {
    v5 = 0x796C616E41707061;
    v4 = 0xEC00000073636974;
  }

  if (*v1)
  {
    v3 = 0x6163696669746F6ELL;
    v2 = 0xED0000736E6F6974;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1006CD3E4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for URLResourceValues();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100AD7C40);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - v9;
  v40 = type metadata accessor for UTType();
  v39 = *(v40 - 8);
  v11 = __chkstk_darwin(v40);
  v35 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v33 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [*a1 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  if ((URL.isFileURL.getter() & 1) == 0)
  {
    goto LABEL_11;
  }

  v38 = v2;
  v34 = a2;
  v20 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v21 = String._bridgeToObjectiveC()();

  v22 = [v20 fileExistsAtPath:v21];

  if (v22)
  {
    sub_1000F24EC(&qword_100ADFA90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100940080;
    *(inited + 32) = NSURLContentTypeKey;
    v24 = NSURLContentTypeKey;
    sub_10049567C(inited);
    swift_setDeallocating();
    sub_1006CF41C(inited + 32, type metadata accessor for URLResourceKey);
    v25 = v38;
    URL.resourceValues(forKeys:)();
    if (v25)
    {

      (*(v16 + 8))(v18, v15);
      (*(v39 + 56))(v10, 1, 1, v40);
      a2 = v34;
LABEL_8:
      sub_100004F84(v10, &unk_100AD7C40);
LABEL_12:
      v26 = 1;
      return (*(v16 + 56))(a2, v26, 1, v15);
    }

    v38 = 0;

    URLResourceValues.contentType.getter();
    (*(v36 + 8))(v7, v37);
    v27 = v39;
    v28 = v40;
    v29 = (*(v39 + 48))(v10, 1, v40);
    a2 = v34;
    if (v29 == 1)
    {
      (*(v16 + 8))(v18, v15);
      goto LABEL_8;
    }

    (*(v27 + 32))(v14, v10, v28);
    v30 = v35;
    static AppInfo.exportContentType.getter();
    LODWORD(v37) = static UTType.== infix(_:_:)();
    v31 = *(v27 + 8);
    v31(v30, v28);
    v31(v14, v28);
    if (v37)
    {
      (*(v16 + 32))(a2, v18, v15);
      v26 = 0;
      return (*(v16 + 56))(a2, v26, 1, v15);
    }

LABEL_11:
    (*(v16 + 8))(v18, v15);
    goto LABEL_12;
  }

  (*(v16 + 8))(v18, v15);
  v26 = 1;
  a2 = v34;
  return (*(v16 + 56))(a2, v26, 1, v15);
}

uint64_t sub_1006CD938@<X0>(char *a1@<X8>)
{
  v2 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100004F84(v4, &unk_100AD6DD0);
LABEL_6:
    v11 = 1;
    return (*(v6 + 56))(a1, v11, 1, v5);
  }

  v9 = *(v6 + 32);
  v9(v8, v4, v5);
  URL.scheme.getter();
  if (!v10)
  {
    (*(v6 + 8))(v8, v5);
    goto LABEL_6;
  }

  v9(a1, v8, v5);
  v11 = 0;
  return (*(v6 + 56))(a1, v11, 1, v5);
}

uint64_t sub_1006CDB24(uint64_t a1, uint64_t a2)
{
  v187 = a1;
  v188 = a2;
  v160 = type metadata accessor for WidgetFamily();
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v172 = &v157 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_1000F24EC(&qword_100AEDAA0);
  __chkstk_darwin(v169);
  v164 = &v157 - v3;
  v168 = type metadata accessor for CanvasContentInputType();
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v158 = &v157 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_1000F24EC(&unk_100AEBE10);
  __chkstk_darwin(v171);
  v166 = &v157 - v5;
  v6 = sub_1000F24EC(&qword_100AD8478);
  __chkstk_darwin(v6 - 8);
  v157 = &v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v175 = &v157 - v9;
  __chkstk_darwin(v10);
  v178 = &v157 - v11;
  v12 = sub_1000F24EC(&qword_100AD57F0);
  __chkstk_darwin(v12 - 8);
  v162 = &v157 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v174 = &v157 - v15;
  __chkstk_darwin(v16);
  v179 = &v157 - v17;
  v18 = type metadata accessor for UUID();
  v180 = *(v18 - 8);
  v181 = v18;
  __chkstk_darwin(v18);
  v173 = &v157 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v163 = &v157 - v21;
  v22 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v22 - 8);
  v170 = &v157 - v23;
  v186 = sub_1000F24EC(&unk_100AEEE20);
  __chkstk_darwin(v186);
  v185 = &v157 - v24;
  v25 = type metadata accessor for URL();
  v183 = *(v25 - 8);
  v184 = v25;
  __chkstk_darwin(v25);
  v161 = &v157 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v27 - 8);
  v165 = &v157 - v28;
  v182 = sub_1000F24EC(&qword_100ADE5A8);
  __chkstk_darwin(v182);
  v30 = &v157 - v29;
  v31 = type metadata accessor for AppLaunchAction();
  __chkstk_darwin(v31);
  v176 = (&v157 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v33);
  v35 = &v157 - v34;
  __chkstk_darwin(v36);
  v38 = &v157 - v37;
  __chkstk_darwin(v39);
  v177 = &v157 - v40;
  __chkstk_darwin(v41);
  v43 = &v157 - v42;
  __chkstk_darwin(v44);
  v46 = &v157 - v45;
  __chkstk_darwin(v47);
  v49 = (&v157 - v48);
  __chkstk_darwin(v50);
  v52 = &v157 - v51;
  v53 = sub_1000F24EC(&qword_100AEDAA8);
  __chkstk_darwin(v53 - 8);
  v55 = &v157 - v54;
  v57 = &v157 + *(v56 + 56) - v54;
  sub_10054BEF0(v187, &v157 - v54);
  v58 = v188;
  v188 = v57;
  sub_10054BEF0(v58, v57);
  v189 = v55;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v66 = v43;
    v67 = v182;
    v68 = v183;
    v70 = v185;
    v69 = v186;
    v71 = v184;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v60 = v189;
        sub_10054BEF0(v189, v52);
        v72 = v188;
        if (swift_getEnumCaseMultiPayload())
        {
          sub_100004F84(v52, &unk_100AD6DD0);
          goto LABEL_61;
        }

        v118 = *(v67 + 48);
        v119 = v30;
        sub_100021CEC(v52, v30, &unk_100AD6DD0);
        sub_100021CEC(v72, &v30[v118], &unk_100AD6DD0);
        v120 = *(v68 + 48);
        if (v120(v30, 1, v71) == 1)
        {
          if (v120(&v30[v118], 1, v71) == 1)
          {
            sub_100004F84(v30, &unk_100AD6DD0);
            goto LABEL_87;
          }
        }

        else
        {
          v123 = v165;
          sub_1000082B4(v30, v165, &unk_100AD6DD0);
          if (v120(&v30[v118], 1, v71) != 1)
          {
            v140 = &v30[v118];
            v141 = v161;
            (*(v68 + 32))(v161, v140, v71);
            sub_10000A5F4(&unk_100ADE5B0, &type metadata accessor for URL);
            v142 = dispatch thunk of static Equatable.== infix(_:_:)();
            v143 = *(v68 + 8);
            v143(v141, v71);
            v143(v123, v71);
            sub_100004F84(v119, &unk_100AD6DD0);
            if (v142)
            {
              goto LABEL_87;
            }

            goto LABEL_99;
          }

          (*(v68 + 8))(v123, v71);
        }

        sub_100004F84(v30, &qword_100ADE5A8);
        goto LABEL_99;
      }

      v60 = v189;
      sub_10054BEF0(v189, v49);
      v90 = *v49;
      v89 = v49[1];
      v91 = v188;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_59;
      }

      v92 = v91[1];
      if (v89)
      {
        if (v92)
        {
          if (v90 == *v91 && v89 == v92)
          {
LABEL_30:

            goto LABEL_87;
          }

LABEL_86:
          v129 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v129)
          {
            goto LABEL_87;
          }

          goto LABEL_99;
        }
      }

      else if (!v92)
      {
        goto LABEL_87;
      }

      goto LABEL_99;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_10054BEF0(v189, v46);
      v73 = v188;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_100004F84(v46, &qword_100AD1420);
        v60 = v189;
        goto LABEL_61;
      }

      v74 = *(v69 + 48);
      sub_100021CEC(v46, v70, &qword_100AD1420);
      sub_100021CEC(v73, v70 + v74, &qword_100AD1420);
      v76 = v180;
      v75 = v181;
      v77 = *(v180 + 48);
      if (v77(v70, 1, v181) == 1)
      {
        v78 = v77(v70 + v74, 1, v75);
        v79 = v189;
        if (v78 == 1)
        {
          sub_100004F84(v70, &qword_100AD1420);
LABEL_82:
          v128 = v79;
LABEL_88:
          sub_1006CF41C(v128, type metadata accessor for AppLaunchAction);
          v65 = 1;
          return v65 & 1;
        }
      }

      else
      {
        v121 = v170;
        sub_1000082B4(v70, v170, &qword_100AD1420);
        v122 = v77(v70 + v74, 1, v75);
        v79 = v189;
        if (v122 != 1)
        {
          v124 = v70 + v74;
          v125 = v163;
          (*(v76 + 32))(v163, v124, v75);
          sub_10000A5F4(&qword_100AD9220, &type metadata accessor for UUID);
          v126 = dispatch thunk of static Equatable.== infix(_:_:)();
          v127 = *(v76 + 8);
          v127(v125, v75);
          v127(v121, v75);
          sub_100004F84(v70, &qword_100AD1420);
          if (v126)
          {
            goto LABEL_82;
          }

LABEL_72:
          sub_1006CF41C(v79, type metadata accessor for AppLaunchAction);
          goto LABEL_62;
        }

        (*(v76 + 8))(v121, v75);
      }

      sub_100004F84(v70, &unk_100AEEE20);
      goto LABEL_72;
    }

    v60 = v189;
    v93 = v66;
    sub_10054BEF0(v189, v66);
    v94 = *v93;
    v95 = v93[1];
    v96 = sub_1000F24EC(&qword_100AD62A0);
    v97 = *(v96 + 48);
    v98 = *(v96 + 64);
    v99 = v188;
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      sub_100004F84(v93 + v98, &qword_100AD8478);
      sub_100004F84(v93 + v97, &qword_100AD57F0);
      goto LABEL_61;
    }

    v101 = *v99;
    v100 = v99[1];
    sub_100021CEC(v93 + v97, v179, &qword_100AD57F0);
    sub_100021CEC(v93 + v98, v178, &qword_100AD8478);
    v102 = v99 + v97;
    v103 = v174;
    sub_100021CEC(v102, v174, &qword_100AD57F0);
    v104 = v175;
    sub_100021CEC(v99 + v98, v175, &qword_100AD8478);
    if (v95)
    {
      if (v100)
      {
        v105 = v94 == v101;
        v106 = v189;
        v107 = v178;
        v108 = v179;
        if (v105 && v95 == v100)
        {

          v109 = v171;
          v110 = v172;
          goto LABEL_91;
        }

        v131 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v109 = v171;
        v110 = v172;
        if (v131)
        {
LABEL_91:
          v132 = *(v109 + 48);
          v133 = v166;
          sub_1000082B4(v108, v166, &qword_100AD57F0);
          sub_1000082B4(v103, v133 + v132, &qword_100AD57F0);
          v134 = *(v167 + 48);
          v135 = v168;
          if (v134(v133, 1, v168) == 1)
          {
            v136 = v134(v133 + v132, 1, v135);
            v137 = v169;
            if (v136 == 1)
            {
              sub_100004F84(v133, &qword_100AD57F0);
              goto LABEL_101;
            }
          }

          else
          {
            v138 = v162;
            sub_1000082B4(v133, v162, &qword_100AD57F0);
            v139 = v134(v133 + v132, 1, v135);
            v137 = v169;
            if (v139 != 1)
            {
              v144 = v133 + v132;
              v145 = v158;
              sub_1001EDE4C(v144, v158);
              v146 = sub_1001ED0B4(v138, v145);
              sub_1006CF41C(v145, type metadata accessor for CanvasContentInputType);
              sub_1006CF41C(v138, type metadata accessor for CanvasContentInputType);
              sub_100004F84(v133, &qword_100AD57F0);
              if (v146)
              {
LABEL_101:
                v147 = *(v137 + 48);
                v148 = v164;
                sub_1000082B4(v107, v164, &qword_100AD8478);
                v149 = v175;
                sub_1000082B4(v175, v148 + v147, &qword_100AD8478);
                v150 = v159;
                v151 = *(v159 + 48);
                v152 = v160;
                if (v151(v148, 1, v160) == 1)
                {
                  sub_100004F84(v149, &qword_100AD8478);
                  sub_100004F84(v174, &qword_100AD57F0);
                  sub_100004F84(v107, &qword_100AD8478);
                  v153 = v164;
                  sub_100004F84(v108, &qword_100AD57F0);
                  if (v151(v153 + v147, 1, v152) == 1)
                  {
                    sub_100004F84(v153, &qword_100AD8478);
                    v128 = v189;
                    goto LABEL_88;
                  }
                }

                else
                {
                  v154 = v157;
                  sub_1000082B4(v148, v157, &qword_100AD8478);
                  if (v151(v148 + v147, 1, v152) != 1)
                  {
                    (*(v150 + 32))(v110, v148 + v147, v152);
                    sub_10000A5F4(&qword_100AEDAB0, &type metadata accessor for WidgetFamily);
                    LODWORD(v188) = dispatch thunk of static Equatable.== infix(_:_:)();
                    v156 = *(v150 + 8);
                    v156(v110, v152);
                    sub_100004F84(v175, &qword_100AD8478);
                    sub_100004F84(v174, &qword_100AD57F0);
                    sub_100004F84(v107, &qword_100AD8478);
                    sub_100004F84(v108, &qword_100AD57F0);
                    v156(v154, v152);
                    sub_100004F84(v164, &qword_100AD8478);
                    v128 = v189;
                    if (v188)
                    {
                      goto LABEL_88;
                    }

LABEL_107:
                    sub_1006CF41C(v128, type metadata accessor for AppLaunchAction);
                    goto LABEL_62;
                  }

                  v155 = v150;
                  sub_100004F84(v175, &qword_100AD8478);
                  sub_100004F84(v174, &qword_100AD57F0);
                  sub_100004F84(v107, &qword_100AD8478);
                  v153 = v164;
                  sub_100004F84(v108, &qword_100AD57F0);
                  (*(v155 + 8))(v154, v152);
                }

                sub_100004F84(v153, &qword_100AEDAA0);
                v128 = v189;
                goto LABEL_107;
              }

LABEL_97:
              sub_100004F84(v175, &qword_100AD8478);
              sub_100004F84(v103, &qword_100AD57F0);
              sub_100004F84(v107, &qword_100AD8478);
              sub_100004F84(v108, &qword_100AD57F0);
              sub_1006CF41C(v189, type metadata accessor for AppLaunchAction);
              goto LABEL_62;
            }

            sub_1006CF41C(v138, type metadata accessor for CanvasContentInputType);
          }

          sub_100004F84(v133, &unk_100AEBE10);
          goto LABEL_97;
        }

LABEL_85:
        sub_100004F84(v104, &qword_100AD8478);
        sub_100004F84(v103, &qword_100AD57F0);
        sub_100004F84(v107, &qword_100AD8478);
        sub_100004F84(v108, &qword_100AD57F0);
        sub_1006CF41C(v106, type metadata accessor for AppLaunchAction);
        goto LABEL_62;
      }

      v106 = v189;
      v107 = v178;
      v108 = v179;
    }

    else
    {
      v106 = v189;
      v107 = v178;
      v108 = v179;
      v109 = v171;
      v110 = v172;
      if (!v100)
      {
        goto LABEL_91;
      }
    }

    goto LABEL_85;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v60 = v189;
    if (EnumCaseMultiPayload == 4)
    {
      v80 = v177;
      sub_10054BEF0(v189, v177);
      v81 = v188;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v83 = v180;
        v82 = v181;
        v84 = v173;
        (*(v180 + 32))(v173, v81, v181);
        v65 = static UUID.== infix(_:_:)();
        v85 = *(v83 + 8);
        v85(v84, v82);
        v85(v80, v82);
        goto LABEL_20;
      }

      (*(v180 + 8))(v80, v181);
      goto LABEL_61;
    }

    sub_10054BEF0(v189, v38);
    v111 = v188;
    v112 = swift_getEnumCaseMultiPayload();
    if (v112 != 5)
    {
      goto LABEL_61;
    }

    v113 = *v111;
    if (*v38)
    {
      v114 = 0x68746C616568;
    }

    else
    {
      v114 = 0x6163696669746F6ELL;
    }

    if (*v38)
    {
      v115 = 0xE600000000000000;
    }

    else
    {
      v115 = 0xED0000736E6F6974;
    }

    if (v113)
    {
      v116 = 0x68746C616568;
    }

    else
    {
      v116 = 0x6163696669746F6ELL;
    }

    if (v113)
    {
      v117 = 0xE600000000000000;
    }

    else
    {
      v117 = 0xED0000736E6F6974;
    }

    if (v114 == v116 && v115 == v117)
    {
      goto LABEL_30;
    }

    goto LABEL_86;
  }

  v60 = v189;
  if (EnumCaseMultiPayload == 6)
  {
    sub_10054BEF0(v189, v35);
    v86 = *v35;
    v87 = v188;
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      goto LABEL_61;
    }

    v88 = *v87;
    if (v86 == 4)
    {
      if (v88 != 4)
      {
        goto LABEL_99;
      }

LABEL_87:
      v128 = v60;
      goto LABEL_88;
    }

    if (v88 != 4 && (sub_10081A378(v86, v88) & 1) != 0)
    {
      goto LABEL_87;
    }

LABEL_99:
    sub_1006CF41C(v60, type metadata accessor for AppLaunchAction);
    goto LABEL_62;
  }

  if (EnumCaseMultiPayload != 7)
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      goto LABEL_87;
    }

LABEL_61:
    sub_100004F84(v60, &qword_100AEDAA8);
LABEL_62:
    v65 = 0;
    return v65 & 1;
  }

  v61 = v176;
  sub_10054BEF0(v189, v176);
  v62 = *v61;
  v63 = v188;
  if (swift_getEnumCaseMultiPayload() != 7)
  {
LABEL_59:

    goto LABEL_61;
  }

  sub_1006514B8(v62, *v63);
  v65 = v64;

LABEL_20:
  sub_1006CF41C(v60, type metadata accessor for AppLaunchAction);
  return v65 & 1;
}

unint64_t sub_1006CF268(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100A59318, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1006CF2B4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100A593F8, v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1006CF300(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100A59588, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1006CF370()
{
  result = qword_100AEDA90;
  if (!qword_100AEDA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDA90);
  }

  return result;
}

unint64_t sub_1006CF3C8()
{
  result = qword_100AEDA98;
  if (!qword_100AEDA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDA98);
  }

  return result;
}

uint64_t sub_1006CF41C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1006CF47C(uint64_t a1)
{
  if (a1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  *(v1 + 16) = v2;
  *(v1 + 24) = v4;

  return _swift_task_switch(sub_1006CF508, v2, v4);
}

uint64_t sub_1006CF508()
{
  *(v0 + 32) = type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006CF5A0, v2, v1);
}

uint64_t sub_1006CF5A0()
{

  *(v0 + 96) = sub_1000A6E70() & 1;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return _swift_task_switch(sub_1006CF610, v1, v2);
}

uint64_t sub_1006CF610()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 8);

    return v1(2);
  }

  else
  {
    *(v0 + 48) = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1006CF6D8, v4, v3);
  }
}

uint64_t sub_1006CF6D8()
{

  *(v0 + 97) = sub_100579398() & 1;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return _swift_task_switch(sub_1006CF748, v1, v2);
}

uint64_t sub_1006CF748()
{
  if (*(v0 + 97))
  {
    v1 = *(v0 + 8);

    return v1(3);
  }

  else
  {
    *(v0 + 56) = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1006CF810, v4, v3);
  }
}

uint64_t sub_1006CF810()
{

  if (qword_100ACFA38 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return _swift_task_switch(sub_1006CF8A4, v1, v2);
}

uint64_t sub_1006CF8A4()
{
  *(v0 + 64) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006CF930, v2, v1);
}

uint64_t sub_1006CF930()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return _swift_task_switch(sub_1006CF994, v1, v2);
}

uint64_t sub_1006CF994()
{
  *(v0 + 72) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006CFA20, v2, v1);
}

uint64_t sub_1006CFA20()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return _swift_task_switch(sub_1006CFA84, v1, v2);
}

uint64_t sub_1006CFA84()
{
  *(v0 + 80) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006CFB10, v2, v1);
}

uint64_t sub_1006CFB10()
{

  *(v0 + 98) = sub_10009EB04();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return _swift_task_switch(sub_1006CFB80, v1, v2);
}

uint64_t sub_1006CFB80()
{
  if (*(v0 + 98))
  {
    v1 = *(v0 + 8);

    return v1(4);
  }

  else
  {
    *(v0 + 88) = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1006CFC48, v4, v3);
  }
}

uint64_t sub_1006CFC48()
{

  v1 = *(v0 + 8);

  return v1(6);
}

uint64_t sub_1006CFCAC(void *a1, int a2)
{
  v30 = a2;
  v3 = sub_1000F24EC(&qword_100AEDB48);
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v27 = &v20 - v4;
  v26 = sub_1000F24EC(&qword_100AEDB50);
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v22 = &v20 - v5;
  v25 = sub_1000F24EC(&qword_100AEDB58);
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = &v20 - v6;
  v8 = sub_1000F24EC(&qword_100AEDB60);
  v21 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  v11 = sub_1000F24EC(&qword_100AEDB68);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - v13;
  sub_10000CA14(a1, a1[3]);
  sub_1006D1F7C();
  v15 = v30;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v15)
  {
    case 5:
      v35 = 3;
      sub_1006D1FD0();
      v17 = v27;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v28 + 8))(v17, v29);
      return (*(v12 + 8))(v14, v11);
    case 4:
      v34 = 2;
      sub_1006D2024();
      v16 = v22;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v24 + 8))(v16, v26);
      return (*(v12 + 8))(v14, v11);
    case 3:
      v31 = 0;
      sub_1006D2120();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v21 + 8))(v10, v8);
      return (*(v12 + 8))(v14, v11);
  }

  v33 = 1;
  sub_1006D2078();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v32 = v15;
  sub_1006D2174();
  v19 = v25;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v23 + 8))(v7, v19);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1006D0164(void *a1, int a2)
{
  v17 = a2;
  v19 = a2;
  v18 = sub_1000F24EC(&qword_100AEDC08);
  v16 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v14 - v3;
  v15 = sub_1000F24EC(&qword_100AEDC10);
  v5 = *(v15 - 8);
  __chkstk_darwin(v15);
  v7 = &v14 - v6;
  v8 = sub_1000F24EC(&qword_100AEDC18);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - v10;
  sub_10000CA14(a1, a1[3]);
  sub_1006D2C78();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v19 == 2)
  {
    v20 = 0;
    sub_1006D2D20();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v5 + 8))(v7, v15);
  }

  else
  {
    v21 = 1;
    sub_1006D2CCC();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v13 = v18;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v16 + 8))(v4, v13);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1006D0468(uint64_t a1)
{
  v2 = sub_1006D1FD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006D04A4(uint64_t a1)
{
  v2 = sub_1006D1FD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1006D04E0()
{
  v1 = 0x616C696176616E75;
  v2 = 0x64656C6261736964;
  if (*v0 != 2)
  {
    v2 = 0x6C62616C69617661;
  }

  if (*v0)
  {
    v1 = 0xD000000000000014;
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

uint64_t sub_1006D056C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1006D1714(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1006D0594(uint64_t a1)
{
  v2 = sub_1006D1F7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006D05D0(uint64_t a1)
{
  v2 = sub_1006D1F7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006D060C(uint64_t a1)
{
  v2 = sub_1006D2024();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006D0648(uint64_t a1)
{
  v2 = sub_1006D2024();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006D0698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1006D071C(uint64_t a1)
{
  v2 = sub_1006D2078();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006D0758(uint64_t a1)
{
  v2 = sub_1006D2078();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006D0794(uint64_t a1)
{
  v2 = sub_1006D2120();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006D07D0(uint64_t a1)
{
  v2 = sub_1006D2120();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006D080C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1006D188C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1006D0854(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 5:
      return v3 == 5;
    case 4:
      return v3 == 4;
    case 3:
      return v3 == 3;
  }

  if ((v3 - 3) < 3)
  {
    return 0;
  }

  if (v2 == 2)
  {
    if (v3 == 2)
    {
      return 1;
    }
  }

  else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1006D08DC()
{
  if (*v0)
  {
    return 0x657373696D736964;
  }

  else
  {
    return 0x7472617453746F6ELL;
  }
}

uint64_t sub_1006D0920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472617453746F6ELL && a2 == 0xEA00000000006465;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657373696D736964 && a2 == 0xE900000000000064)
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

uint64_t sub_1006D0A0C(uint64_t a1)
{
  v2 = sub_1006D2C78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006D0A48(uint64_t a1)
{
  v2 = sub_1006D2C78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006D0AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465746165706572 && a2 == 0xEA0000000000796CLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1006D0B30(uint64_t a1)
{
  v2 = sub_1006D2CCC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006D0B6C(uint64_t a1)
{
  v2 = sub_1006D2CCC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006D0BA8(uint64_t a1)
{
  v2 = sub_1006D2D20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006D0BE4(uint64_t a1)
{
  v2 = sub_1006D2D20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006D0C20@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1006D27AC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

BOOL sub_1006D0C68(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t sub_1006D0CAC()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AEDAB8);
  sub_10000617C(v0, qword_100AEDAB8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1006D0D3C(uint64_t a1, uint64_t a2)
{
  v3 = *sub_10000CA14((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return _swift_continuation_resume(v3);
}

uint64_t sub_1006D0D98(uint64_t a1)
{
  if (a1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  *(v1 + 152) = v2;
  *(v1 + 160) = v4;

  return _swift_task_switch(sub_1006D0E24, v2, v4);
}

uint64_t sub_1006D0E24()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[21] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1006D0F64;
  v2 = swift_continuation_init();
  v0[17] = sub_1000F24EC(&qword_100AEDAD0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1006D0D3C;
  v0[13] = &unk_100A78AC8;
  v0[14] = v2;
  [v1 getExtendedOnboardingFlowRefreshCompletionStatus:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1006D0F64()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);

  return _swift_task_switch(sub_1006D106C, v2, v1);
}

uint64_t sub_1006D106C()
{
  v1 = *(v0 + 144);

  if (v1 >= 6)
  {
    if (qword_100AD0128 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000617C(v3, qword_100AEDAB8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v1;
      _os_log_impl(&_mh_execute_header, v4, v5, "Encountered unrecognized completion status: %lu", v6, 0xCu);
    }

    v2 = 3;
  }

  else
  {
    v2 = 0x10205050002uLL >> (8 * v1);
  }

  v7 = *(v0 + 8);

  return v7(v2);
}

uint64_t sub_1006D11BC()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 onboardingFlowCompletionStatus];

  if (v1 >= 6)
  {
    return 5;
  }

  else
  {
    return (0x20504030100uLL >> (8 * v1));
  }
}

uint64_t sub_1006D1230()
{
  v0 = objc_opt_self();
  for (i = 0; i != 8; ++i)
  {
    v4 = *(&off_100A58E50 + i + 32);
    v5 = [v0 sharedInstance];
    v6 = [v5 getStateForSetting:qword_100963CD8[v4]];

    if (v6)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10019A0E4(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v3 = _swiftEmptyArrayStorage[2];
      v2 = _swiftEmptyArrayStorage[3];
      if (v3 >= v2 >> 1)
      {
        sub_10019A0E4((v2 > 1), v3 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v3 + 1;
      *(&_swiftEmptyArrayStorage[4] + v3) = v4;
    }
  }

  v7 = sub_100891180(_swiftEmptyArrayStorage);

  return v7;
}

uint64_t sub_1006D1378()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  v2 = sub_1006D11BC();
  v3 = sub_1006D1230();
  if (v1)
  {

    return 3;
  }

  else if (v2 - 1 < 2)
  {

    return v2 == 2;
  }

  else if (v2 && v2 != 5)
  {
    v6 = v3;
    if ((v2 - 3) > 1u || sub_10044AC04(0) == 8)
    {

      return 4;
    }

    else
    {
      v5 = *(v6 + 16);

      if (v5)
      {
        return 5;
      }

      else
      {
        return 4;
      }
    }
  }

  else
  {

    return 2;
  }
}

uint64_t getEnumTagSinglePayload for SuggestionFeaturesAvailabilityState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = ((v7 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v8 = -2;
  }

  if (v8 < 0)
  {
    v8 = -1;
  }

  v9 = v8 + 1;
  v10 = v8 - 2;
  if (v9 >= 4)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SuggestionFeaturesAvailabilityState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1006D15EC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    v2 = ((v1 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v2 = -2;
  }

  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

_BYTE *sub_1006D161C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

unint64_t sub_1006D1658()
{
  result = qword_100AEDAD8;
  if (!qword_100AEDAD8)
  {
    sub_1000F2A18(&qword_100AEDAE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDAD8);
  }

  return result;
}

unint64_t sub_1006D16C0()
{
  result = qword_100AEDAE8;
  if (!qword_100AEDAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDAE8);
  }

  return result;
}

uint64_t sub_1006D1714(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001009015A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656C6261736964 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1006D188C(void *a1)
{
  v33 = sub_1000F24EC(&qword_100AEDAF0);
  v30 = *(v33 - 8);
  __chkstk_darwin(v33);
  v38 = &v29 - v2;
  v32 = sub_1000F24EC(&qword_100AEDAF8);
  v36 = *(v32 - 8);
  __chkstk_darwin(v32);
  v37 = &v29 - v3;
  v4 = sub_1000F24EC(&qword_100AEDB00);
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v6 = &v29 - v5;
  v7 = sub_1000F24EC(&qword_100AEDB08);
  v31 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  v10 = sub_1000F24EC(&qword_100AEDB10);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - v12;
  v14 = a1[3];
  v40 = a1;
  sub_10000CA14(a1, v14);
  sub_1006D1F7C();
  v15 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v16 = v9;
    v29 = v7;
    v17 = v6;
    v18 = v37;
    v19 = v38;
    v39 = v11;
    v20 = KeyedDecodingContainer.allKeys.getter();
    v21 = (2 * *(v20 + 16)) | 1;
    v41 = v20;
    v42 = v20 + 32;
    v43 = 0;
    v44 = v21;
    v22 = sub_1007F77D4();
    if (v22 == 4 || v43 != v44 >> 1)
    {
      v11 = type metadata accessor for DecodingError();
      swift_allocError();
      v23 = v13;
      v25 = v24;
      sub_1000F24EC(&qword_100AD8100);
      *v25 = &type metadata for SuggestionFeaturesAvailabilityState;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v11 - 8) + 104))(v25, enum case for DecodingError.typeMismatch(_:), v11);
      swift_willThrow();
      (*(v39 + 8))(v23, v10);
      swift_unknownObjectRelease();
    }

    else if (v22 > 1u)
    {
      v27 = v39;
      if (v22 == 2)
      {
        v45 = 2;
        sub_1006D2024();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v36 + 8))(v18, v32);
        (*(v27 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v11 = 4;
      }

      else
      {
        v45 = 3;
        sub_1006D1FD0();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v30 + 8))(v19, v33);
        (*(v27 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v11 = 5;
      }
    }

    else if (v22)
    {
      v45 = 1;
      sub_1006D2078();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_1006D20CC();
      v28 = v35;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v34 + 8))(v17, v28);
      (*(v39 + 8))(v13, v10);
      swift_unknownObjectRelease();
      v11 = v45;
    }

    else
    {
      v45 = 0;
      sub_1006D2120();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v31 + 8))(v16, v29);
      (*(v39 + 8))(v13, v10);
      swift_unknownObjectRelease();
      v11 = 3;
    }
  }

  sub_10000BA7C(v40);
  return v11;
}

unint64_t sub_1006D1F7C()
{
  result = qword_100AEDB18;
  if (!qword_100AEDB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDB18);
  }

  return result;
}

unint64_t sub_1006D1FD0()
{
  result = qword_100AEDB20;
  if (!qword_100AEDB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDB20);
  }

  return result;
}

unint64_t sub_1006D2024()
{
  result = qword_100AEDB28;
  if (!qword_100AEDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDB28);
  }

  return result;
}

unint64_t sub_1006D2078()
{
  result = qword_100AEDB30;
  if (!qword_100AEDB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDB30);
  }

  return result;
}

unint64_t sub_1006D20CC()
{
  result = qword_100AEDB38;
  if (!qword_100AEDB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDB38);
  }

  return result;
}

unint64_t sub_1006D2120()
{
  result = qword_100AEDB40;
  if (!qword_100AEDB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDB40);
  }

  return result;
}

unint64_t sub_1006D2174()
{
  result = qword_100AEDB70;
  if (!qword_100AEDB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDB70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SuggestionIncompleteOnboardingReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SuggestionIncompleteOnboardingReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1006D2390()
{
  result = qword_100AEDB78;
  if (!qword_100AEDB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDB78);
  }

  return result;
}

unint64_t sub_1006D23E8()
{
  result = qword_100AEDB80;
  if (!qword_100AEDB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDB80);
  }

  return result;
}

unint64_t sub_1006D2440()
{
  result = qword_100AEDB88;
  if (!qword_100AEDB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDB88);
  }

  return result;
}

unint64_t sub_1006D2498()
{
  result = qword_100AEDB90;
  if (!qword_100AEDB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDB90);
  }

  return result;
}

unint64_t sub_1006D24F0()
{
  result = qword_100AEDB98;
  if (!qword_100AEDB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDB98);
  }

  return result;
}

unint64_t sub_1006D2548()
{
  result = qword_100AEDBA0;
  if (!qword_100AEDBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDBA0);
  }

  return result;
}

unint64_t sub_1006D25A0()
{
  result = qword_100AEDBA8;
  if (!qword_100AEDBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDBA8);
  }

  return result;
}

unint64_t sub_1006D25F8()
{
  result = qword_100AEDBB0;
  if (!qword_100AEDBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDBB0);
  }

  return result;
}

unint64_t sub_1006D2650()
{
  result = qword_100AEDBB8;
  if (!qword_100AEDBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDBB8);
  }

  return result;
}

unint64_t sub_1006D26A8()
{
  result = qword_100AEDBC0;
  if (!qword_100AEDBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDBC0);
  }

  return result;
}

unint64_t sub_1006D2700()
{
  result = qword_100AEDBC8;
  if (!qword_100AEDBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDBC8);
  }

  return result;
}

unint64_t sub_1006D2758()
{
  result = qword_100AEDBD0;
  if (!qword_100AEDBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDBD0);
  }

  return result;
}

uint64_t sub_1006D27AC(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AEDBD8);
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - v3;
  v5 = sub_1000F24EC(&qword_100AEDBE0);
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = sub_1000F24EC(&qword_100AEDBE8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  v12 = a1[3];
  v33 = a1;
  v13 = sub_10000CA14(a1, v12);
  sub_1006D2C78();
  v14 = v32;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v14)
  {
    v28 = v5;
    v15 = v31;
    v32 = v9;
    v16 = KeyedDecodingContainer.allKeys.getter();
    v17 = (2 * *(v16 + 16)) | 1;
    v34 = v16;
    v35 = v16 + 32;
    v36 = 0;
    v37 = v17;
    v18 = sub_1007FDC80();
    v19 = v8;
    if (v18 == 2 || v36 != v37 >> 1)
    {
      v13 = v11;
      v22 = type metadata accessor for DecodingError();
      swift_allocError();
      v24 = v23;
      sub_1000F24EC(&qword_100AD8100);
      *v24 = &type metadata for SuggestionIncompleteOnboardingReason;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v22 - 8) + 104))(v24, enum case for DecodingError.typeMismatch(_:), v22);
      swift_willThrow();
      (*(v32 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else if (v18)
    {
      v38 = 1;
      sub_1006D2CCC();
      v20 = v11;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v21 = v32;
      v27 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v30 + 8))(v4, v15);
      (*(v21 + 8))(v20, v19);
      swift_unknownObjectRelease();
      v13 = v27 & 1;
    }

    else
    {
      v38 = 0;
      sub_1006D2D20();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v26 = v32;
      (*(v29 + 8))(v7, v28);
      (*(v26 + 8))(v11, v8);
      swift_unknownObjectRelease();
      v13 = 2;
    }
  }

  sub_10000BA7C(v33);
  return v13;
}

unint64_t sub_1006D2C78()
{
  result = qword_100AEDBF0;
  if (!qword_100AEDBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDBF0);
  }

  return result;
}

unint64_t sub_1006D2CCC()
{
  result = qword_100AEDBF8;
  if (!qword_100AEDBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDBF8);
  }

  return result;
}

unint64_t sub_1006D2D20()
{
  result = qword_100AEDC00;
  if (!qword_100AEDC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDC00);
  }

  return result;
}

unint64_t sub_1006D2DA8()
{
  result = qword_100AEDC20;
  if (!qword_100AEDC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDC20);
  }

  return result;
}

unint64_t sub_1006D2E00()
{
  result = qword_100AEDC28;
  if (!qword_100AEDC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDC28);
  }

  return result;
}

unint64_t sub_1006D2E58()
{
  result = qword_100AEDC30;
  if (!qword_100AEDC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDC30);
  }

  return result;
}

unint64_t sub_1006D2EB0()
{
  result = qword_100AEDC38;
  if (!qword_100AEDC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDC38);
  }

  return result;
}

unint64_t sub_1006D2F08()
{
  result = qword_100AEDC40;
  if (!qword_100AEDC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDC40);
  }

  return result;
}

unint64_t sub_1006D2F60()
{
  result = qword_100AEDC48;
  if (!qword_100AEDC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDC48);
  }

  return result;
}

unint64_t sub_1006D2FB8()
{
  result = qword_100AEDC50;
  if (!qword_100AEDC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDC50);
  }

  return result;
}

unint64_t sub_1006D3010()
{
  result = qword_100AEDC58;
  if (!qword_100AEDC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDC58);
  }

  return result;
}

void sub_1006D3064(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  Hasher._combine(_:)(*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  Hasher._combine(_:)(*&v3);
}

Swift::Int sub_1006D30B4()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_1006D3064(v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_1006D3110()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_1006D3064(v1, v2);
  return Hasher._finalize()();
}

unint64_t sub_1006D3190()
{
  result = qword_100AEDC60;
  if (!qword_100AEDC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDC60);
  }

  return result;
}

void sub_1006D31E4()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for PaperKitTestVC();
  objc_msgSendSuper2(&v11, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = *&v0[OBJC_IVAR____TtC7Journal14PaperKitTestVC_paperKitView];
    [v1 addSubview:v3];

    v4 = objc_opt_self();
    v5 = [v4 greenColor];
    [v3 setBackgroundColor:v5];

    v6 = *&v0[OBJC_IVAR____TtC7Journal14PaperKitTestVC_showToolbarButton];
    v7 = String._bridgeToObjectiveC()();
    [v6 setTitle:v7 forState:0];

    [v6 addTarget:v0 action:"buttonTapped" forControlEvents:64];
    v8 = [v4 darkGrayColor];
    [v6 setBackgroundColor:v8];

    v9 = [v0 view];
    if (v9)
    {
      v10 = v9;
      [v9 addSubview:v6];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1006D33D0()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for PaperKitTestVC();
  objc_msgSendSuper2(&v9, "viewDidLayoutSubviews");
  [*&v0[OBJC_IVAR____TtC7Journal14PaperKitTestVC_showToolbarButton] setFrame:{20.0, 20.0, 200.0, 100.0}];
  v1 = *&v0[OBJC_IVAR____TtC7Journal14PaperKitTestVC_paperKitView];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result frame];
    v5 = v4;

    result = [v0 view];
    if (result)
    {
      v6 = result;
      [result frame];
      v8 = v7;

      return [v1 setFrame:{0.0, 120.0, v5, v8 + -120.0}];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1006D35C4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC7Journal14PaperKitTestVC_paperKitView;
  type metadata accessor for PaperKitDrawingCanvasView();
  *&v3[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = OBJC_IVAR____TtC7Journal14PaperKitTestVC_toolPicker;
  *&v3[v7] = [objc_allocWithZone(PKToolPicker) init];
  v8 = OBJC_IVAR____TtC7Journal14PaperKitTestVC_showToolbarButton;
  *&v3[v8] = [objc_allocWithZone(UIButton) init];
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for PaperKitTestVC();
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

id sub_1006D3720(void *a1)
{
  v3 = OBJC_IVAR____TtC7Journal14PaperKitTestVC_paperKitView;
  type metadata accessor for PaperKitDrawingCanvasView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC7Journal14PaperKitTestVC_toolPicker;
  *&v1[v4] = [objc_allocWithZone(PKToolPicker) init];
  v5 = OBJC_IVAR____TtC7Journal14PaperKitTestVC_showToolbarButton;
  *&v1[v5] = [objc_allocWithZone(UIButton) init];
  v8.receiver = v1;
  v8.super_class = type metadata accessor for PaperKitTestVC();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_1006D3818()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaperKitTestVC();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1006D38E0()
{
  type metadata accessor for PaperKitTestVC();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v0];

  return v1;
}

uint64_t sub_1006D3940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1006D3A30();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1006D39A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1006D3A30();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1006D3A08()
{
  sub_1006D3A30();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1006D3A30()
{
  result = qword_100AEDCA8;
  if (!qword_100AEDCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDCA8);
  }

  return result;
}

uint64_t sub_1006D3A84(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100AE92B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - v4;
  type metadata accessor for JournalEntryCollectionViewController.Item(0);
  sub_10006DED4();
  sub_1006D65D8();
  result = NSDiffableDataSourceSnapshot.init()();
  v20 = *(a1 + 16);
  if (v20)
  {
    v7 = 0;
    v9 = *(v3 + 16);
    v8 = v3 + 16;
    v17 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v18 = v9;
    v19 = v8;
    v15 = *(v8 + 56);
    v16 = (v8 - 8);
    v9(v5, v17, v2);
    while (1)
    {
      v10 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
      NSDiffableDataSourceSnapshot.appendSections(_:)(v10);

      v21 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
      v11 = *(v21 + 16);
      if (v11)
      {
        v12 = (v21 + 32);
        do
        {
          v13 = *v12++;
          v22 = v13;
          v24 = v13;
          sub_100071864(v13, *(&v13 + 1));
          NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
          v23 = v22;
          NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

          sub_100071878(v13, *(&v13 + 1));
          --v11;
        }

        while (v11);
      }

      ++v7;
      (*v16)(v5, v2);

      if (v7 == v20)
      {
        break;
      }

      v18(v5, v17 + v15 * v7, v2);
    }
  }

  return result;
}

void sub_1006D3CC8()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v2 - 8);
  v96 = &v85 - v3;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v94 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v85 - v8;
  v105 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  v103 = *(v105 - 8);
  __chkstk_darwin(v105);
  v95 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v85 - v12;
  v14 = type metadata accessor for UUID();
  v101 = *(v14 - 8);
  v102 = v14;
  __chkstk_darwin(v14);
  v104 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1000F24EC(&unk_100AE92B0);
  v16 = *(v107 - 8);
  *&v17 = __chkstk_darwin(v107).n128_u64[0];
  v106 = &v85 - v18;
  v19 = [v0 traitCollection];
  v20 = [v19 userInterfaceIdiom];

  if (v20)
  {
    return;
  }

  v21 = &v1[OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_searchResultsDelegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v92 = Strong;
  v91 = v16;
  v88 = v5;
  v89 = v4;
  v23 = *(v21 + 1);
  sub_10006DED4();
  sub_1006D65D8();
  NSDiffableDataSourceSnapshot.init()();
  sub_1001E4950();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100A59EC8);
  v24 = v1;
  if (v1[OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_isIndexing] == 1)
  {
    sub_1000F24EC(&qword_100AD7CD0);
    *(swift_allocObject() + 16) = xmmword_100940080;
    swift_storeEnumTagMultiPayload();
    v110 = xmmword_1009510C0;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
  }

  v25 = *&v1[OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_recentSearches];
  v86 = v9;
  v87 = v13;
  *&v93 = v23;
  if (!v25 || (v26 = *(v25 + 16)) == 0)
  {
    NSDiffableDataSourceSnapshot.deleteSections(_:)(&off_100A59F28);
    goto LABEL_12;
  }

  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100A59EF8);
  v27 = *(v25 + 16);
  if (v27 > 2)
  {
    v27 = 3;
  }

  else if (!v27)
  {
LABEL_10:

LABEL_12:
    v28 = v24;
    v29 = *&v24[OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_suggestions];
    v30 = v91;
    if (!v29 || (v31 = *(v29 + 16)) == 0)
    {
      NSDiffableDataSourceSnapshot.deleteSections(_:)(&off_100A59F88);
      goto LABEL_43;
    }

    NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100A59F58);
    ObjectType = swift_getObjectType();
    v33 = (*(v93 + 24))(ObjectType);
    if (*(v29 + 16) >= v33)
    {
      v34 = v33;
    }

    else
    {
      v34 = *(v29 + 16);
    }

    if (v34 > 0)
    {
      v35 = 0;
      v36 = OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_searchSuggestionItemMap;
      v100 = v29 + 32;
      v90 = v101 + 16;
      v99 = (v101 + 8);
      v97 = xmmword_100940080;
      v93 = xmmword_10095D920;
      *&v98 = v34;
      while (1)
      {
        if (v35 >= v31)
        {
          goto LABEL_21;
        }

        if (v35 >= *(v29 + 16))
        {
          goto LABEL_57;
        }

        sub_100086C04(v100 + 40 * v35, &v110);
        v40 = v111;
        v41 = v112;
        sub_10000CA14(&v110, v111);
        v42 = v104;
        (*(v41 + 8))(v40, v41);
        swift_beginAccess();
        sub_100086C04(&v110, v109);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v108 = *&v28[v36];
        v44 = v108;
        *&v28[v36] = 0x8000000000000000;
        v45 = sub_100361E08(v42);
        v47 = v44[2];
        v48 = (v46 & 1) == 0;
        v49 = __OFADD__(v47, v48);
        v50 = v47 + v48;
        if (v49)
        {
          goto LABEL_58;
        }

        v51 = v46;
        if (v44[3] < v50)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_29;
        }

        v60 = v45;
        sub_100822738();
        v45 = v60;
        v53 = v108;
        if ((v51 & 1) == 0)
        {
LABEL_30:
          v53[(v45 >> 6) + 8] |= 1 << v45;
          v55 = v101;
          v54 = v102;
          v56 = v45;
          v57 = v104;
          (*(v101 + 16))(v53[6] + *(v101 + 72) * v45, v104, v102);
          sub_100364784(v109, v53[7] + 40 * v56);
          (*(v55 + 8))(v57, v54);
          v58 = v53[2];
          v49 = __OFADD__(v58, 1);
          v59 = v58 + 1;
          if (v49)
          {
            goto LABEL_59;
          }

          v53[2] = v59;
          goto LABEL_20;
        }

LABEL_19:
        v37 = v53[7] + 40 * v45;
        sub_10000BA7C(v37);
        sub_100364784(v109, v37);
        (*v99)(v104, v102);
LABEL_20:
        *&v28[v36] = v53;

        swift_endAccess();
        sub_1000F24EC(&qword_100AD7CD0);
        *(swift_allocObject() + 16) = v97;
        v38 = v111;
        v39 = v112;
        sub_10000CA14(&v110, v111);
        (*(v39 + 8))(v38, v39);
        swift_storeEnumTagMultiPayload();
        v109[0] = v93;
        NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

        ++v35;
        sub_10000BA7C(&v110);
        v34 = v98;
LABEL_21:
        if (v35 >= v34)
        {

          v30 = v91;
          goto LABEL_43;
        }
      }

      sub_10081E0E8(v50, isUniquelyReferenced_nonNull_native);
      v45 = sub_100361E08(v104);
      if ((v51 & 1) != (v52 & 1))
      {
        goto LABEL_60;
      }

LABEL_29:
      v53 = v108;
      if ((v51 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

LABEL_43:
    v72 = *&v28[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
    if (!v72)
    {
      (*(v30 + 8))(v106, v107);
      swift_unknownObjectRelease();
      return;
    }

    v73 = v72;
    if ([v73 dataSource])
    {
      sub_1000F24EC(&unk_100AD7CC0);
      if (!swift_dynamicCastClass())
      {
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
LABEL_55:
        (*(v30 + 8))(v106, v107);
        return;
      }

      dispatch thunk of UICollectionViewDiffableDataSource.applySnapshotUsingReloadData(_:completion:)();
      v74 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
      if (*(v74 + 16))
      {
        v75 = v95;
        sub_100165F48(v74 + ((*(v103 + 80) + 32) & ~*(v103 + 80)), v95);

        v76 = v87;
        sub_10006F4B8(v75, v87);
        v77 = v96;
        dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
        v78 = v88;
        v79 = v89;
        if ((*(v88 + 48))(v77, 1, v89) == 1)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          sub_100165FAC(v76);
          (*(v30 + 8))(v106, v107);
          sub_100004F84(v77, &unk_100ADFB90);
          return;
        }

        v80 = v86;
        (*(v78 + 32))(v86, v77, v79);
        sub_1000F24EC(&unk_100AD8A90);
        v81 = swift_allocObject();
        *(v81 + 16) = xmmword_100940080;
        *(v81 + 32) = IndexPath.section.getter();
        v82 = v94;
        IndexPath.init(arrayLiteral:)();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v84 = *(v78 + 8);
        v84(v82, v79);
        [v73 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:0];
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        v84(v80, v79);
        sub_100165FAC(v76);
        goto LABEL_55;
      }

      (*(v30 + 8))(v106, v107);

      swift_unknownObjectRelease();
    }

    else
    {
      (*(v30 + 8))(v106, v107);
    }

    swift_unknownObjectRelease();

    return;
  }

  v61 = 0;
  v99 = (v25 + 32);
  v98 = xmmword_100940080;
  v97 = xmmword_100963EA0;
  v100 = v27;
  while (v61 >= v26)
  {
LABEL_38:
    if (v61 >= v27)
    {
      goto LABEL_10;
    }
  }

  if (v61 < *(v25 + 16))
  {
    v62 = &v99[3 * v61];
    v64 = *v62;
    v63 = v62[1];
    v65 = v26;
    v66 = v25;
    v67 = v24;
    v68 = v62[2];
    sub_1000F24EC(&qword_100AD7CD0);
    v69 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v70 = swift_allocObject();
    *(v70 + 16) = v98;
    v71 = (v70 + v69);
    *v71 = v64;
    v71[1] = v63;
    v24 = v67;
    v25 = v66;
    v26 = v65;
    v71[2] = v68;
    swift_storeEnumTagMultiPayload();
    v110 = v97;

    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    v27 = v100;
    ++v61;
    goto LABEL_38;
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1006D49B8()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&unk_100AE92B0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v37 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v37 - v14;
  __chkstk_darwin(v13);
  v17 = &v37 - v16;
  v18 = *(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (v18)
  {
    v46 = v18;
    v19 = [v46 dataSource];
    if (v19)
    {
      v45 = v6;
      v20 = v17;
      v21 = v2;
      v22 = v19;
      sub_1000F24EC(&unk_100AD7CC0);
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        v43 = v22;
        v38 = v4;
        v39 = v21;
        v40 = v1;
        v41 = v23;
        sub_1006D52F0();
        sub_1006D5560();
        sub_1000F24EC(&qword_100AEDCB0);
        v44 = v15;
        v24 = v45;
        v25 = *(v45 + 72);
        v26 = (*(v45 + 80) + 32) & ~*(v45 + 80);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_100940050;
        v28 = v27 + v26;
        v29 = *(v24 + 16);
        v42 = v20;
        v29(v28, v20, v5);
        v30 = v28 + v25;
        v31 = v44;
        v29(v30, v44, v5);
        sub_1006D3A84(v27);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        dispatch thunk of UICollectionViewDiffableDataSource.applySnapshotUsingReloadData(_:completion:)();
        dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
        v32 = NSDiffableDataSourceSnapshot.numberOfItems.getter();
        v33 = *(v24 + 8);
        v33(v9, v5);
        if (v32 < 1)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          v34 = v38;
          IndexPath.init(arrayLiteral:)();
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          (*(v39 + 8))(v34, v40);
          [v46 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:0];
          swift_unknownObjectRelease();
        }

        v33(v12, v5);
        v33(v31, v5);
        v33(v42, v5);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v36 = v46;
    }
  }
}

uint64_t sub_1006D4E10(char a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&unk_100AD7CB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_1000F24EC(&unk_100AE92A0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - v9;
  v11 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  sub_1006D65D8();
  NSDiffableDataSourceSectionSnapshot.init()();
  if (a1)
  {
    sub_1000F24EC(&qword_100AD7CD0);
    v12 = *(v11 - 8);
    *(swift_allocObject() + 16) = xmmword_100940080;
    swift_storeEnumTagMultiPayload();
    (*(v12 + 56))(v6, 1, 1, v11);
    NSDiffableDataSourceSectionSnapshot.append(_:to:)();

    sub_100004F84(v6, &unk_100AD7CB0);
  }

  v13 = *(v2 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource);
  if (v13)
  {
    v16 = xmmword_1009510C0;
    v14 = v13;
    UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();
  }

  return (*(v8 + 8))(v10, v7);
}

void sub_1006D508C(uint64_t a1, uint64_t a2)
{
  if (sub_1007ECD60(*&v2[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_currentFilterOptions], &off_100A5AC40) & 1) == 0 || *&v2[OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_currentSearchText + 8] || *&v2[OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_currentTokenCount] > 0 || (v5 = &v2[OBJC_IVAR____TtC7Journal34JournalSearchResultsViewController_searchResultsDelegate], swift_unknownObjectWeakLoadStrong()) && (v6 = *(v5 + 1), ObjectType = swift_getObjectType(), LOBYTE(v6) = (*(v6 + 32))(ObjectType, v6), swift_unknownObjectRelease(), (v6))
  {
    v12.receiver = v2;
    v12.super_class = type metadata accessor for JournalSearchResultsViewController();
    objc_msgSendSuper2(&v12, "controller:didChangeContentWithSnapshot:", a1, a2);
  }

  else
  {
    if (qword_100ACFBF8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000617C(v8, qword_100B2F718);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "CoreData update received while not actively searching. Likely an iCloud update received while Search is in an empty state. Ignoring update.", v10, 2u);
    }
  }
}

uint64_t sub_1006D52F0()
{
  v0 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  sub_10006DED4();
  sub_1006D65D8();
  NSDiffableDataSourceSnapshot.init()();
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 stringArrayForKey:v2];

  if (v3)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = v4[2];
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
    v5 = _swiftEmptyArrayStorage[2];
    if (v5)
    {
LABEL_3:
      sub_1000F24EC(&unk_100AE92B0);
      NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100A57268);
      v6 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
      v7 = v4 + 5;
      do
      {
        v8 = v0;
        v9 = *(v7 - 1);
        v10 = *v7;
        sub_1000F24EC(&qword_100AD7CD0);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_100940080;
        v12 = (v11 + v6);
        *v12 = v9;
        v12[1] = v10;
        v0 = v8;
        swift_storeEnumTagMultiPayload();

        NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

        v7 += 2;
        --v5;
      }

      while (v5);
    }
  }
}

uint64_t sub_1006D5560()
{
  v0 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  sub_10006DED4();
  sub_1006D65D8();
  NSDiffableDataSourceSnapshot.init()();
  v1 = sub_1006D573C();
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_1000F24EC(&unk_100AE92B0);
    NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100A57298);
    v3 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
    v4 = 32;
    do
    {
      v5 = *(v1 + v4);
      sub_1000F24EC(&qword_100AD7CD0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100940080;
      *(v6 + v3) = v5;
      swift_storeEnumTagMultiPayload();
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

      ++v4;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1006D573C()
{
  v0 = type metadata accessor for AssetType();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v69 - v5;
  if (qword_100ACF9C8 != -1)
  {
LABEL_125:
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = v99;
  v9 = v99 + 64;
  v8 = *(v99 + 8);
  v10 = 1 << v99[32];
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v98 = enum case for AssetType.photo(_:);
  v12 = v11 & v8;
  v13 = (v10 + 63) >> 6;
  v97 = enum case for AssetType.livePhoto(_:);
  v96 = v1 + 16;
  v94 = v1 + 88;
  v95 = v1 + 32;
  v93 = enum case for AssetType.video(_:);
  v92 = enum case for AssetType.music(_:);
  v91 = enum case for AssetType.podcast(_:);
  v90 = enum case for AssetType.book(_:);
  v89 = enum case for AssetType.audio(_:);
  v88 = enum case for AssetType.visit(_:);
  v87 = enum case for AssetType.multiPinMap(_:);
  v86 = enum case for AssetType.genericMap(_:);
  v85 = enum case for AssetType.link(_:);
  v84 = enum case for AssetType.contact(_:);
  v83 = enum case for AssetType.workoutIcon(_:);
  v82 = enum case for AssetType.workoutRoute(_:);
  v81 = enum case for AssetType.reflection(_:);
  v80 = enum case for AssetType.stateOfMind(_:);
  v79 = enum case for AssetType.motionActivity(_:);
  v78 = enum case for AssetType.thirdPartyMedia(_:);
  v77 = enum case for AssetType.placeholder(_:);
  v76 = enum case for AssetType.streakEvent(_:);
  v72 = enum case for AssetType.drawing(_:);
  v71 = enum case for AssetType.confetti(_:);
  v70 = enum case for AssetType.unknown(_:);

  v14 = 0;
  v74 = 0;
  v15 = _swiftEmptyArrayStorage;
  v73 = v7;
  while (1)
  {
    while (1)
    {
      if (!v12)
      {
        while (1)
        {
          v16 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
            goto LABEL_125;
          }

          if (v16 >= v13)
          {
            break;
          }

          v12 = *&v9[8 * v16];
          ++v14;
          if (v12)
          {
            v14 = v16;
            goto LABEL_10;
          }
        }

        v47 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_viewModel;
        v48 = v75;
        v49 = *(v75 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_viewModel);
        if (v49)
        {
          type metadata accessor for JournalEntryMO();

          v50 = static JournalEntryMO.fetchRequest()();
          v51 = sub_100486D70();
          [v50 setPredicate:v51];

          __chkstk_darwin(v52);
          *(&v69 - 2) = v49;
          *(&v69 - 1) = v50;
          v53 = v74;
          NSManagedObjectContext.performAndWait<A>(_:)();

          if (v99 == 1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = sub_1003E4DB8(0, *(v15 + 2) + 1, 1, v15);
            }

            v55 = *(v15 + 2);
            v54 = *(v15 + 3);
            if (v55 >= v54 >> 1)
            {
              v15 = sub_1003E4DB8((v54 > 1), v55 + 1, 1, v15);
            }

            *(v15 + 2) = v55 + 1;
            v15[v55 + 32] = 5;
          }
        }

        else
        {
          v53 = v74;
        }

        v57 = sub_100890AEC(v56);

        v58 = *(v57 + 16);
        if (v58)
        {
          v59 = sub_1003E7574(*(v57 + 16), 0);
          v60 = sub_1001C183C(&v99, v59 + 32, v58, v57);
          sub_100014FF8();
          if (v60 == v58)
          {
LABEL_108:
            v99 = v59;

            sub_1006D64A0(&v99);
            if (v53)
            {
              goto LABEL_126;
            }

            v61 = v99;
            if (!*(v48 + v47))
            {
              goto LABEL_122;
            }

            v62 = sub_1001185F8();

            if (v62)
            {
              v63 = *(v61 + 2);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v99 = v61;
              if (!isUniquelyReferenced_nonNull_native || v63 >= *(v61 + 3) >> 1)
              {
                v61 = sub_1003E4DB8(isUniquelyReferenced_nonNull_native, v63 + 1, 1, v61);
                v99 = v61;
              }

              sub_10019B758(0, 0, 1, 1);
            }

            if (*(v48 + v47) && (, v65 = sub_100118788(), , (v65 & 1) != 0))
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v61 = sub_1003E4DB8(0, *(v61 + 2) + 1, 1, v61);
              }

              v67 = *(v61 + 2);
              v66 = *(v61 + 3);
              if (v67 >= v66 >> 1)
              {
                v61 = sub_1003E4DB8((v66 > 1), v67 + 1, 1, v61);
              }

              *(v61 + 2) = v67 + 1;
              v61[v67 + 32] = 11;
            }

            else
            {
LABEL_122:
            }

            return v61;
          }

          __break(1u);
        }

        v59 = _swiftEmptyArrayStorage;
        goto LABEL_108;
      }

LABEL_10:
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v1 + 16))(v6, *(v7 + 6) + *(v1 + 72) * (v17 | (v14 << 6)), v0);
      (*(v1 + 32))(v4, v6, v0);
      v18 = (*(v1 + 88))(v4, v0);
      if (v18 != v98 && v18 != v97)
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1003E4DB8(0, *(v15 + 2) + 1, 1, v15);
      }

      v23 = *(v15 + 2);
      v26 = *(v15 + 3);
      v24 = v23 + 1;
      if (v23 >= v26 >> 1)
      {
        v69 = v23 + 1;
        v37 = sub_1003E4DB8((v26 > 1), v23 + 1, 1, v15);
        v24 = v69;
        v15 = v37;
      }

      v25 = 2;
LABEL_95:
      *(v15 + 2) = v24;
      v15[v23 + 32] = v25;
      v7 = v73;
    }

    if (v18 == v93)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1003E4DB8(0, *(v15 + 2) + 1, 1, v15);
      }

      v23 = *(v15 + 2);
      v27 = *(v15 + 3);
      v24 = v23 + 1;
      if (v23 >= v27 >> 1)
      {
        v69 = v23 + 1;
        v38 = sub_1003E4DB8((v27 > 1), v23 + 1, 1, v15);
        v24 = v69;
        v15 = v38;
      }

      v25 = 3;
      goto LABEL_95;
    }

    if (v18 == v92 || v18 == v91 || v18 == v90)
    {
LABEL_40:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1003E4DB8(0, *(v15 + 2) + 1, 1, v15);
      }

      v23 = *(v15 + 2);
      v22 = *(v15 + 3);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v69 = v23 + 1;
        v36 = sub_1003E4DB8((v22 > 1), v23 + 1, 1, v15);
        v24 = v69;
        v15 = v36;
      }

      v25 = 5;
      goto LABEL_95;
    }

    if (v18 == v89)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1003E4DB8(0, *(v15 + 2) + 1, 1, v15);
      }

      v23 = *(v15 + 2);
      v28 = *(v15 + 3);
      v24 = v23 + 1;
      if (v23 >= v28 >> 1)
      {
        v69 = v23 + 1;
        v39 = sub_1003E4DB8((v28 > 1), v23 + 1, 1, v15);
        v24 = v69;
        v15 = v39;
      }

      v25 = 4;
      goto LABEL_95;
    }

    if (v18 == v88 || v18 == v87 || v18 == v86)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1003E4DB8(0, *(v15 + 2) + 1, 1, v15);
      }

      v23 = *(v15 + 2);
      v29 = *(v15 + 3);
      v24 = v23 + 1;
      if (v23 >= v29 >> 1)
      {
        v69 = v23 + 1;
        v40 = sub_1003E4DB8((v29 > 1), v23 + 1, 1, v15);
        v24 = v69;
        v15 = v40;
      }

      v25 = 9;
      goto LABEL_95;
    }

    if (v18 != v85)
    {
      if (v18 == v84)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1003E4DB8(0, *(v15 + 2) + 1, 1, v15);
        }

        v23 = *(v15 + 2);
        v31 = *(v15 + 3);
        v24 = v23 + 1;
        if (v23 >= v31 >> 1)
        {
          v69 = v23 + 1;
          v42 = sub_1003E4DB8((v31 > 1), v23 + 1, 1, v15);
          v24 = v69;
          v15 = v42;
        }

        v25 = 8;
        goto LABEL_95;
      }

      if (v18 == v83 || v18 == v82)
      {
LABEL_65:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1003E4DB8(0, *(v15 + 2) + 1, 1, v15);
        }

        v23 = *(v15 + 2);
        v30 = *(v15 + 3);
        v24 = v23 + 1;
        if (v23 >= v30 >> 1)
        {
          v69 = v23 + 1;
          v41 = sub_1003E4DB8((v30 > 1), v23 + 1, 1, v15);
          v24 = v69;
          v15 = v41;
        }

        v25 = 6;
        goto LABEL_95;
      }

      if (v18 == v81)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1003E4DB8(0, *(v15 + 2) + 1, 1, v15);
        }

        v23 = *(v15 + 2);
        v32 = *(v15 + 3);
        v24 = v23 + 1;
        if (v23 >= v32 >> 1)
        {
          v69 = v23 + 1;
          v43 = sub_1003E4DB8((v32 > 1), v23 + 1, 1, v15);
          v24 = v69;
          v15 = v43;
        }

        v25 = 7;
        goto LABEL_95;
      }

      if (v18 == v80)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1003E4DB8(0, *(v15 + 2) + 1, 1, v15);
        }

        v23 = *(v15 + 2);
        v33 = *(v15 + 3);
        v24 = v23 + 1;
        if (v23 >= v33 >> 1)
        {
          v69 = v23 + 1;
          v44 = sub_1003E4DB8((v33 > 1), v23 + 1, 1, v15);
          v24 = v69;
          v15 = v44;
        }

        v25 = 10;
        goto LABEL_95;
      }

      if (v18 == v79)
      {
        goto LABEL_65;
      }

      if (v18 == v78)
      {
        goto LABEL_40;
      }

      if (v18 != v77 && v18 != v76)
      {
        if (v18 == v72)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_1003E4DB8(0, *(v15 + 2) + 1, 1, v15);
          }

          v23 = *(v15 + 2);
          v34 = *(v15 + 3);
          v24 = v23 + 1;
          if (v23 >= v34 >> 1)
          {
            v69 = v23 + 1;
            v45 = sub_1003E4DB8((v34 > 1), v23 + 1, 1, v15);
            v24 = v69;
            v15 = v45;
          }

          v25 = 12;
          goto LABEL_95;
        }

        if (v18 == v71)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_1003E4DB8(0, *(v15 + 2) + 1, 1, v15);
          }

          v23 = *(v15 + 2);
          v35 = *(v15 + 3);
          v24 = v23 + 1;
          if (v23 >= v35 >> 1)
          {
            v69 = v23 + 1;
            v46 = sub_1003E4DB8((v35 > 1), v23 + 1, 1, v15);
            v24 = v69;
            v15 = v46;
          }

          v25 = 13;
          goto LABEL_95;
        }

        if (v18 != v70)
        {
          break;
        }
      }
    }
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_126:

  __break(1u);
  return result;
}

Swift::Int sub_1006D64A0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100205020(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_1006D6630(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

unint64_t sub_1006D65D8()
{
  result = qword_100ADE6B0;
  if (!qword_100ADE6B0)
  {
    type metadata accessor for JournalEntryCollectionViewController.Item(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE6B0);
  }

  return result;
}

uint64_t sub_1006D6630(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_88:
    v85 = *v85;
    if (!v85)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_100204C44(v9);
      v9 = result;
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_1006D6B6C((*a3 + *v79), (*a3 + *v81), *a3 + v82, v85);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        result = memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1003E4B80(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_1003E4B80((v30 > 1), v31 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *v85;
    if (!*v85)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_1006D6B6C((*a3 + v74), (*a3 + *&v9[16 * v35 + 32]), *a3 + v75, v34);
        if (v4)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100204C44(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        result = sub_100204BB8(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= v28)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t sub_1006D6B6C(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v18 < v19)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (v11 >= *v4)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

void *sub_1006D6D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a3;
  v5 = type metadata accessor for DateComponents();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == a2)
  {
    return _swiftEmptyArrayStorage;
  }

  else
  {
    if (a2 >= a1)
    {
      v14[1] = v6 + 32;
      v10 = _swiftEmptyArrayStorage;
      while (a2 != a1)
      {
        v11 = v15;
        DateComponents.day.setter();
        (*(v6 + 16))(v9, v11, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1003E5380(0, v10[2] + 1, 1, v10);
        }

        v13 = v10[2];
        v12 = v10[3];
        if (v13 >= v12 >> 1)
        {
          v10 = sub_1003E5380(v12 > 1, v13 + 1, 1, v10);
        }

        ++a1;
        v10[2] = v13 + 1;
        result = (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v9, v5);
        if (a2 == a1)
        {
          return v10;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void *sub_1006D6F58()
{
  v1 = v0;
  v44 = type metadata accessor for Calendar.Component();
  v2 = *(v44 - 8);
  v3 = __chkstk_darwin(v44);
  v42 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v36 - v5;
  v43 = type metadata accessor for Calendar();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v9 - 8);
  v11 = &v36 - v10;
  v12 = type metadata accessor for DateComponents();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v38 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v36 - v16;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v45 = v1;
  v46 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [v1 visibleDateComponents];
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

  DateComponents.date.getter();
  v22 = *(v13 + 8);
  v39 = v13 + 8;
  v40 = v12;
  v22(v17, v12);
  if ((*(v19 + 48))(v11, 1, v18) == 1)
  {
    sub_10012C9CC(v11);
    return _swiftEmptyArrayStorage;
  }

  v36 = v22;
  (*(v19 + 32))(v46, v11, v18);
  v23 = [v45 calendar];
  static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = *(v2 + 104);
  v25 = v44;
  v24(v6, enum case for Calendar.Component.day(_:), v44);
  v26 = v42;
  v24(v42, enum case for Calendar.Component.month(_:), v25);
  v37 = Calendar.range(of:in:for:)();
  v28 = v27;
  v30 = v29;
  v31 = *(v2 + 8);
  v31(v26, v25);
  v31(v6, v25);
  (*(v41 + 8))(v8, v43);
  if (v30)
  {
    (*(v19 + 8))(v46, v18);
    return _swiftEmptyArrayStorage;
  }

  v33 = [v45 visibleDateComponents];
  v34 = v38;
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = sub_1006D6D74(v37, v28, v34);
  (*(v19 + 8))(v46, v18);
  v36(v34, v40);
  return v35;
}

uint64_t sub_1006D7448()
{
  v0 = sub_1000F24EC(&qword_100ADF618);
  sub_100006118(v0, qword_100B2FE50);
  sub_10000617C(v0, qword_100B2FE50);
  sub_1000F24EC(&qword_100ADA090);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_100940080;
  static Tips.ParameterOption.transient.getter();
  sub_1003459A0();
  sub_1003459F4();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_1006D7598()
{
  v0 = sub_1000F24EC(&unk_100AD57F8);
  sub_100006118(v0, qword_100B2FE68);
  sub_10000617C(v0, qword_100B2FE68);
  return Tips.Event.init<>(id:)();
}

uint64_t sub_1006D7608()
{
  v0 = sub_1000F24EC(&unk_100AD57F8);
  sub_100006118(v0, qword_100B2FE80);
  sub_10000617C(v0, qword_100B2FE80);
  return Tips.Event.init<>(id:)();
}

uint64_t sub_1006D7690@<X0>(uint64_t *a1@<X8>)
{
  v47 = a1;
  v1 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v45 = *(v1 - 8);
  v46 = v1;
  __chkstk_darwin(v1);
  v44 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F24EC(&qword_100ADA098);
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  __chkstk_darwin(v3);
  v43 = &v35 - v5;
  v6 = type metadata accessor for Tips.DonationTimeRange();
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&qword_100AEDCD8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  v13 = sub_1000F24EC(&qword_100AEDCE0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v17 = sub_1000F24EC(&qword_100AEDCE8);
  v18 = *(v17 - 8);
  v37 = v17;
  v38 = v18;
  __chkstk_darwin(v17);
  v20 = &v35 - v19;
  v21 = sub_1000F24EC(&qword_100AEDCF0);
  v22 = *(v21 - 8);
  v41 = v21;
  v42 = v22;
  __chkstk_darwin(v21);
  v36 = &v35 - v23;
  sub_10000B58C(&qword_100AEDCF8, &qword_100AEDCD8);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v10 + 8))(v12, v9);
  static Tips.DonationTimeRange.weeks(_:)();
  type metadata accessor for Tips.EmptyDonation();
  sub_1006D9594(&qword_100AEDCC8);
  sub_1006D9594(&qword_100AEDCD0);
  sub_1006D95D8();
  static PredicateExpressions.build_donatedWithin<A, B>(_:_:)();
  (*(v39 + 8))(v8, v40);
  (*(v14 + 8))(v16, v13);
  swift_getKeyPath();
  sub_10000B58C(&qword_100AEDD10, &qword_100AEDCE8);
  v25 = v36;
  v24 = v37;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v38 + 8))(v20, v24);
  v50 = 5;
  v26 = v43;
  static PredicateExpressions.build_Arg<A>(_:)();
  v28 = v44;
  v27 = v45;
  v29 = v46;
  (*(v45 + 104))(v44, enum case for PredicateExpressions.ComparisonOperator.lessThan(_:), v46);
  v30 = sub_1000F24EC(&qword_100AEDD78);
  v31 = v47;
  v47[3] = v30;
  v31[4] = sub_1006D9874(&qword_100AEDD80, &qword_100AEDD78);
  sub_10001A770(v31);
  sub_10000B58C(&qword_100AEDD40, &qword_100AEDCF0);
  sub_10000B58C(&qword_100ADA0D0, &qword_100ADA098);
  v32 = v41;
  v33 = v48;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v27 + 8))(v28, v29);
  (*(v49 + 8))(v26, v33);
  return (*(v42 + 8))(v25, v32);
}

uint64_t sub_1006D7DA4@<X0>(uint64_t *a1@<X8>)
{
  v32 = a1;
  v1 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v30 = *(v1 - 8);
  v31 = v1;
  __chkstk_darwin(v1);
  v29 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F24EC(&qword_100ADA098);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  __chkstk_darwin(v3);
  v28 = &v26 - v5;
  v6 = sub_1000F24EC(&qword_100AEDCD8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - v8;
  v10 = sub_1000F24EC(&qword_100AEDCE0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v27 = sub_1000F24EC(&qword_100AEDD48);
  v14 = *(v27 - 8);
  __chkstk_darwin(v27);
  v16 = &v26 - v15;
  sub_10000B58C(&qword_100AEDCF8, &qword_100AEDCD8);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v7 + 8))(v9, v6);
  swift_getKeyPath();
  sub_10000B58C(&qword_100AEDD50, &qword_100AEDCE0);
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v11 + 8))(v13, v10);
  v35 = 5;
  v17 = v28;
  static PredicateExpressions.build_Arg<A>(_:)();
  v19 = v29;
  v18 = v30;
  v20 = v31;
  (*(v30 + 104))(v29, enum case for PredicateExpressions.ComparisonOperator.greaterThanOrEqual(_:), v31);
  v21 = sub_1000F24EC(&qword_100AEDD58);
  v22 = v32;
  v32[3] = v21;
  v22[4] = sub_1006D9738();
  sub_10001A770(v22);
  sub_10000B58C(&qword_100AEDD70, &qword_100AEDD48);
  sub_10000B58C(&qword_100ADA0D0, &qword_100ADA098);
  v23 = v27;
  v24 = v33;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v18 + 8))(v19, v20);
  (*(v34 + 8))(v17, v24);
  return (*(v14 + 8))(v16, v23);
}

uint64_t sub_1006D82CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000F24EC(&qword_100ADF630);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-v4];
  v6 = sub_1000F24EC(&qword_100ADF638);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11[-v8];
  sub_10000B58C(&qword_100ADF650, &qword_100ADF638);
  static PredicateExpressions.build_Arg<A>(_:)();
  v11[15] = 5;
  static PredicateExpressions.build_Arg<A>(_:)();
  a1[3] = sub_1000F24EC(&qword_100ADF640);
  a1[4] = sub_100345BAC();
  sub_10001A770(a1);
  sub_10000B58C(&qword_100ADF658, &qword_100ADF630);
  sub_100345A48();
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1006D8534@<X0>(uint64_t *a1@<X8>)
{
  v38 = a1;
  v1 = sub_1000F24EC(&qword_100ADA098);
  v2 = *(v1 - 8);
  v39 = v1;
  v40 = v2;
  __chkstk_darwin(v1);
  v37 = &v30 - v3;
  v4 = type metadata accessor for Tips.DonationTimeRange();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AEDCD8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - v9;
  v11 = sub_1000F24EC(&qword_100AEDCE0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - v13;
  v15 = sub_1000F24EC(&qword_100AEDCE8);
  v16 = *(v15 - 8);
  v31 = v15;
  v32 = v16;
  __chkstk_darwin(v15);
  v18 = &v30 - v17;
  v19 = sub_1000F24EC(&qword_100AEDCF0);
  v20 = *(v19 - 8);
  v35 = v19;
  v36 = v20;
  __chkstk_darwin(v19);
  v30 = &v30 - v21;
  sub_10000B58C(&qword_100AEDCF8, &qword_100AEDCD8);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v8 + 8))(v10, v7);
  static Tips.DonationTimeRange.weeks(_:)();
  type metadata accessor for Tips.EmptyDonation();
  sub_1006D9594(&qword_100AEDCC8);
  sub_1006D9594(&qword_100AEDCD0);
  sub_1006D95D8();
  static PredicateExpressions.build_donatedWithin<A, B>(_:_:)();
  (*(v33 + 8))(v6, v34);
  (*(v12 + 8))(v14, v11);
  swift_getKeyPath();
  sub_10000B58C(&qword_100AEDD10, &qword_100AEDCE8);
  v23 = v30;
  v22 = v31;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v32 + 8))(v18, v22);
  v41 = 0;
  v24 = v37;
  static PredicateExpressions.build_Arg<A>(_:)();
  v25 = sub_1000F24EC(&qword_100AEDD18);
  v26 = v38;
  v38[3] = v25;
  v26[4] = sub_1006D9874(&qword_100AEDD20, &qword_100AEDD18);
  sub_10001A770(v26);
  sub_10000B58C(&qword_100AEDD40, &qword_100AEDCF0);
  sub_10000B58C(&qword_100ADA0D0, &qword_100ADA098);
  v27 = v35;
  v28 = v39;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v40 + 8))(v24, v28);
  return (*(v36 + 8))(v23, v27);
}

uint64_t sub_1006D8C50()
{
  v0 = sub_1000F24EC(&qword_100ADC228);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - v2;
  v4 = type metadata accessor for Tips.MaxDisplayCount();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100ADC238);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v5 + 8))(v7, v4);
  v15 = v4;
  v16 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v15 = v8;
  v16 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v13 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v13;
}

uint64_t sub_1006D8EF4@<X0>(uint64_t *a1@<X8>)
{
  sub_10051C808();
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1006D8F38()
{
  result = qword_100AEDCB8;
  if (!qword_100AEDCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDCB8);
  }

  return result;
}

uint64_t sub_1006D8F8C()
{
  v0 = sub_1000F24EC(&qword_100ADF618);
  v35 = *(v0 - 8);
  v36 = v0;
  __chkstk_darwin(v0);
  v37 = v29 - v1;
  v2 = sub_1000F24EC(&unk_100AD57F8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v29 - v4;
  v6 = type metadata accessor for Tips.Rule.CompoundOperation();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for Tips.Rule();
  v10 = *(v39 - 8);
  v11 = __chkstk_darwin(v39);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v7 + 104);
  v32 = v9;
  v14(v9, enum case for Tips.Rule.CompoundOperation.conjunction(_:), v6, v11);
  sub_1000F24EC(&qword_100AEDCC0);
  v15 = *(v10 + 72);
  v30 = v10;
  v33 = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100940050;
  v29[1] = v16;
  if (qword_100AD0140 != -1)
  {
    swift_once();
  }

  v17 = sub_10000617C(v2, qword_100B2FE80);
  v18 = *(v3 + 16);
  v18(v5, v17, v2);
  type metadata accessor for Tips.EmptyDonation();
  v19 = sub_1006D9594(&qword_100AEDCC8);
  v20 = sub_1006D9594(&qword_100AEDCD0);
  Tips.Rule.init<A>(_:_:)();
  v38 = v2;
  v34 = v18;
  v18(v5, v17, v2);
  v33 = v19;
  v31 = v20;
  Tips.Rule.init<A>(_:_:)();
  Tips.Rule.init(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v21 = *(v30 + 8);
  v21(v13, v39);
  if (qword_100AD0130 != -1)
  {
    swift_once();
  }

  v22 = v36;
  v23 = sub_10000617C(v36, qword_100B2FE50);
  (*(v35 + 16))(v37, v23, v22);
  sub_1003459A0();
  sub_1003459F4();
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v24 = v39;
  v21(v13, v39);
  if (qword_100AD0138 != -1)
  {
    swift_once();
  }

  v25 = v38;
  v26 = sub_10000617C(v38, qword_100B2FE68);
  v34(v5, v26, v25);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v21(v13, v24);
  static Tips.RuleBuilder.buildPartialBlock(first:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  v27 = static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  return v27;
}

uint64_t sub_1006D9594(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Tips.EmptyDonation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1006D95D8()
{
  result = qword_100AEDD00;
  if (!qword_100AEDD00)
  {
    sub_1000F2A18(&qword_100AEDCE0);
    sub_10000B58C(&qword_100AEDD08, &qword_100AEDCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDD00);
  }

  return result;
}

unint64_t sub_1006D9688()
{
  result = qword_100AEDD28;
  if (!qword_100AEDD28)
  {
    sub_1000F2A18(&qword_100AEDCF0);
    sub_10000B58C(&qword_100AEDD30, &qword_100AEDCE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDD28);
  }

  return result;
}

unint64_t sub_1006D9738()
{
  result = qword_100AEDD60;
  if (!qword_100AEDD60)
  {
    sub_1000F2A18(&qword_100AEDD58);
    sub_1006D97F0();
    sub_10000B58C(&qword_100AEDD38, &qword_100ADA098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDD60);
  }

  return result;
}

unint64_t sub_1006D97F0()
{
  result = qword_100AEDD68;
  if (!qword_100AEDD68)
  {
    sub_1000F2A18(&qword_100AEDD48);
    sub_1006D95D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEDD68);
  }

  return result;
}

uint64_t sub_1006D9874(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000F2A18(a2);
    sub_1006D9688();
    sub_10000B58C(&qword_100AEDD38, &qword_100ADA098);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1006D9910(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v8 - 8);
  v10 = &v19[-v9];
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = objc_allocWithZone(type metadata accessor for StreakEventAsset());
  v13 = sub_100894920(v10, v7);
  v14 = *(v2 + 16);
  v15 = [v14 viewContext];

  v16 = [v14 viewContext];
  v20 = 0;
  LODWORD(v15) = [v16 save:&v20];

  if (v15)
  {
    v17 = v20;
  }

  else
  {
    v18 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

BOOL sub_1006D9B54()
{
  v1 = v0;
  v2 = type metadata accessor for StreakSummary();
  __chkstk_darwin(v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000A51A0())
  {
    return 1;
  }

  swift_getKeyPath();
  v10[1] = v0;
  sub_1000A5708();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = v0 + OBJC_IVAR____TtC7Journal19InsightsDataManager__streaks;
  swift_beginAccess();
  v6 = type metadata accessor for InsightsDataManager.Streaks(0);
  sub_100041C54(v5 + *(v6 + 24), v4);
  v7 = *&v4[*(v2 + 28)];
  sub_100041CB8(v4);
  if (v7 > 1)
  {
    return 1;
  }

  swift_getKeyPath();
  v10[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100041C54(v5 + *(v6 + 28), v4);
  v8 = *&v4[*(v2 + 28)];
  sub_100041CB8(v4);
  return v8 > 1;
}

uint64_t sub_1006D9CE4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v31 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC7Journal25FullScreenStateOfMindView_stateOfMindView;
  v12 = *(v1 + OBJC_IVAR____TtC7Journal25FullScreenStateOfMindView_stateOfMindView);
  v13 = v12[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v12[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = 7;
  v14 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  LODWORD(v9) = v12[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated];
  v29 = v15;
  v30 = v4;
  if (v9 != 1)
  {
    v16 = v5;
    v17 = v12;
LABEL_11:
    sub_10047A7F4();
    v12[v14] = 1;

    goto LABEL_12;
  }

  if (v13 > 3)
  {
    if (v13 > 5)
    {
      if (v13 != 6)
      {

        goto LABEL_13;
      }

      v28 = a1;
      v16 = v5;
    }

    else
    {
      v28 = a1;
      v16 = v5;
    }
  }

  else
  {
    v28 = a1;
    v16 = v5;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v19 = v12;

  a1 = v28;
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  v5 = v16;
  v8 = v29;
  v4 = v30;
LABEL_13:
  v20 = *(v2 + v11);
  v21 = *&v20[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_stateOfMindAsset];
  *&v20[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_stateOfMindAsset] = a1;
  v22 = v20;
  v23 = a1;

  sub_1000F6624();
  sub_1000065A8(0, &qword_100AD6210);
  v24 = static OS_dispatch_queue.main.getter();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1006DA9F8;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A790D8;
  v26 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000826D8();
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v5 + 8))(v7, v4);
  return (*(v31 + 8))(v10, v8);
}

void sub_1006DA148()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC7Journal25FullScreenStateOfMindView_scrollView;
    v3 = *&Strong[OBJC_IVAR____TtC7Journal25FullScreenStateOfMindView_scrollView];
    v4 = Strong;
    [v4 addSubview:v3];
    v5 = OBJC_IVAR____TtC7Journal25FullScreenStateOfMindView_stateOfMindView;
    [*&v1[v2] addSubview:*&v4[OBJC_IVAR____TtC7Journal25FullScreenStateOfMindView_stateOfMindView]];
    [*&v1[v2] setTranslatesAutoresizingMaskIntoConstraints:0];
    [*&v4[v5] setTranslatesAutoresizingMaskIntoConstraints:0];
    [*&v1[v2] setContentInsetAdjustmentBehavior:2];
    [*&v1[v2] setShowsVerticalScrollIndicator:0];
    v6 = [*&v4[v5] layer];
    if (qword_100AD0A18 != -1)
    {
      swift_once();
    }

    v44[0] = xmmword_100B30F28;
    v44[1] = *&qword_100B30F38;
    v44[2] = xmmword_100B30F48;
    v44[3] = *&qword_100B30F58;
    [v6 setCornerRadii:v44];

    v43 = objc_opt_self();
    sub_1000F24EC(&unk_100AD4780);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1009640E0;
    v8 = [*&v1[v2] leadingAnchor];
    v9 = [v4 leadingAnchor];

    v10 = [v8 constraintEqualToAnchor:v9];
    *(v7 + 32) = v10;
    v11 = [*&v1[v2] topAnchor];
    v12 = [v4 topAnchor];

    v13 = [v11 constraintEqualToAnchor:v12];
    *(v7 + 40) = v13;
    v14 = [*&v1[v2] trailingAnchor];
    v15 = [v4 trailingAnchor];

    v16 = [v14 constraintEqualToAnchor:v15];
    *(v7 + 48) = v16;
    v17 = [*&v1[v2] bottomAnchor];
    v18 = [v4 bottomAnchor];

    v19 = [v17 constraintEqualToAnchor:v18];
    *(v7 + 56) = v19;
    v20 = [*&v4[v5] topAnchor];
    v21 = [*&v1[v2] contentLayoutGuide];
    v22 = [v21 topAnchor];

    v23 = [v20 constraintEqualToAnchor:v22 constant:0.0];
    *(v7 + 64) = v23;
    v24 = [*&v4[v5] leadingAnchor];
    v25 = [*&v1[v2] contentLayoutGuide];
    v26 = [v25 leadingAnchor];

    v27 = [v24 constraintEqualToAnchor:v26 constant:0.0];
    *(v7 + 72) = v27;
    v28 = [*&v4[v5] trailingAnchor];
    v29 = [*&v1[v2] contentLayoutGuide];
    v30 = [v29 trailingAnchor];

    v31 = [v28 constraintEqualToAnchor:v30 constant:0.0];
    *(v7 + 80) = v31;
    v32 = [*&v4[v5] bottomAnchor];
    v33 = [*&v1[v2] contentLayoutGuide];
    v34 = [v33 bottomAnchor];

    v35 = [v32 constraintEqualToAnchor:v34 constant:0.0];
    *(v7 + 88) = v35;
    v36 = [*&v4[v5] widthAnchor];
    v37 = [*&v1[v2] widthAnchor];
    v38 = [v36 constraintEqualToAnchor:v37 constant:0.0];

    *(v7 + 96) = v38;
    v39 = [*&v4[v5] heightAnchor];
    v40 = [v4 heightAnchor];

    v41 = [v39 constraintGreaterThanOrEqualToAnchor:v40];
    *(v7 + 104) = v41;
    sub_1000065A8(0, &qword_100AD8000);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v43 activateConstraints:isa];
  }
}

id sub_1006DA860(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Journal25FullScreenStateOfMindView_stateOfMindAsset] = 0;
  v3 = OBJC_IVAR____TtC7Journal25FullScreenStateOfMindView_stateOfMindView;
  type metadata accessor for StateOfMindAssetGridView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC7Journal25FullScreenStateOfMindView_scrollView;
  *&v1[v4] = [objc_allocWithZone(UIScrollView) init];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for FullScreenStateOfMindView();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_1006DA944()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenStateOfMindView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006DAA00()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AEDDE0);
  v1 = sub_10000617C(v0, qword_100AEDDE0);
  if (qword_100AD0200 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B300A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1006DAAC8()
{
  v0 = type metadata accessor for UUID();
  sub_100006118(v0, qword_100AEDDF8);
  sub_10000617C(v0, qword_100AEDDF8);
  return UUID.init()();
}

void sub_1006DAB14()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = *v0;
  if (*v0)
  {
    Hasher._combine(_:)(1u);
    v12 = v11;
    NSObject.hash(into:)();

    v13 = *(v1 + 8);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_6:
    Hasher._combine(_:)(0);
    v15 = *(v1 + 16);
    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  Hasher._combine(_:)(0);
  v13 = *(v0 + 8);
  if (!v13)
  {
    goto LABEL_6;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  v14 = v13;
  NSObject.hash(into:)();

  v15 = *(v1 + 16);
  if (v15)
  {
LABEL_4:
    Hasher._combine(_:)(1u);
    v16 = v15;
    NSObject.hash(into:)();

    goto LABEL_8;
  }

LABEL_7:
  Hasher._combine(_:)(0);
LABEL_8:
  v17 = type metadata accessor for Loc(0);
  sub_1000082B4(v1 + v17[7], v10, &unk_100AD4790);
  v18 = *(v3 + 48);
  if (v18(v10, 1, v2) == 1)
  {
    v19 = v3;
    Hasher._combine(_:)(0);
  }

  else
  {
    v20 = *(v3 + 32);
    v26 = v7;
    v21 = v27;
    v20(v27, v10, v2);
    Hasher._combine(_:)(1u);
    sub_1006E9C54(&unk_100AEE080, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    v19 = v3;
    v22 = v21;
    v7 = v26;
    (*(v3 + 8))(v22, v2);
  }

  sub_1000082B4(v1 + v17[8], v7, &unk_100AD4790);
  if (v18(v7, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v23 = v27;
    (*(v19 + 32))(v27, v7, v2);
    Hasher._combine(_:)(1u);
    sub_1006E9C54(&unk_100AEE080, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v19 + 8))(v23, v2);
  }

  if (*(v1 + v17[9] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v1 + v17[10] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v24 = *(v1 + v17[11]);
  if (v24)
  {
    Hasher._combine(_:)(1u);
    v25 = v24;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v1 + v17[12]));
}

Swift::Int sub_1006DAFAC()
{
  Hasher.init(_seed:)();
  sub_1006DAB14();
  return Hasher._finalize()();
}

Swift::Int sub_1006DAFF0()
{
  Hasher.init(_seed:)();
  sub_1006DAB14();
  return Hasher._finalize()();
}

uint64_t sub_1006DB030()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  return v1;
}

void sub_1006DB0A4()
{
  v1 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocation;
  v5 = *(v0 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocation);
  v6 = v5;
  sub_10010CCC4(v5);
  v7 = *(v0 + v4);
  if (v7)
  {
    v17 = v7;
    [v17 coordinate];
    v20 = MKCoordinateRegionMakeWithDistance(v19, 16093.0, 16093.0);
    v8 = v0 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_searchRegionNearMe;
    *v8 = v20;
    *(v8 + 32) = 0;
    sub_1006E234C(1);
    v9 = *(v0 + v4);
    if (v9)
    {
      v10 = type metadata accessor for TaskPriority();
      (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();
      v12 = v9;

      v13 = static MainActor.shared.getter();
      v14 = swift_allocObject();
      v14[2] = v13;
      v14[3] = &protocol witness table for MainActor;
      v14[4] = v11;
      v14[5] = v12;

      sub_1004EC158(0, 0, v3, &unk_100964340, v14);
    }

    else
    {
      v15 = v17;
    }
  }
}

id sub_1006DB2C8()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD6598);
  __chkstk_darwin(v2 - 8);
  v4 = &v54 - v3;
  v5 = type metadata accessor for Loc(0);
  v65 = *(v5 - 1);
  v6 = __chkstk_darwin(v5);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v54 - v10;
  __chkstk_darwin(v9);
  v13 = &v54 - v12;
  v14 = sub_1000F24EC(&unk_100AEE090);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v54 - v18;
  v20 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearCurrentPlaces;
  result = swift_beginAccess();
  v22 = *(v1 + v20);
  if (v22)
  {
    v23 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocation;
    if (*(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocation))
    {
      v59 = v4;
      v24 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLoc;
      swift_beginAccess();
      v61 = v24;
      sub_1000082B4(v1 + v24, v19, &unk_100AEE090);
      v25 = v65 + 48;
      v60 = *(v65 + 48);
      if (v60(v19, 1, v5) == 1)
      {
        return sub_100004F84(v19, &unk_100AEE090);
      }

      sub_100004F84(v19, &unk_100AEE090);
      v56 = v23;
      v58 = v17;
      if (v22 >> 62)
      {
        v26 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v26 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v27 = _swiftEmptyArrayStorage;
      v64 = v22;
      v55 = v13;
      v57 = v25;
      if (v26)
      {
        v67 = _swiftEmptyArrayStorage;
        sub_1001999E0(0, v26 & ~(v26 >> 63), 0);
        if (v26 < 0)
        {
          __break(1u);
          goto LABEL_31;
        }

        v54 = v1;
        v27 = v67;
        if ((v22 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v26; ++i)
          {
            v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            *v11 = 0;
            *(v11 + 2) = 0;
            v30 = v5[7];
            v31 = type metadata accessor for Date();
            v32 = *(*(v31 - 8) + 56);
            v32(&v11[v30], 1, 1, v31);
            v32(&v11[v5[8]], 1, 1, v31);
            v33 = &v11[v5[9]];
            *v33 = 0;
            *(v33 + 1) = 0;
            v34 = &v11[v5[10]];
            *v34 = 0;
            *(v34 + 1) = 0;
            *&v11[v5[11]] = 0;
            v11[v5[12]] = 0;
            *(v11 + 1) = v29;
            v67 = v27;
            v36 = v27[2];
            v35 = v27[3];
            if (v36 >= v35 >> 1)
            {
              sub_1001999E0(v35 > 1, v36 + 1, 1);
              v27 = v67;
            }

            v27[2] = v36 + 1;
            sub_1006EB5D0(v11, v27 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v36, type metadata accessor for Loc);
          }
        }

        else
        {
          v37 = (v22 + 32);
          v63 = type metadata accessor for Date();
          v62 = *(*(v63 - 8) + 56);
          do
          {
            v38 = *v37;
            *v8 = 0;
            *(v8 + 2) = 0;
            v40 = v62;
            v39 = v63;
            v62(&v8[v5[7]], 1, 1, v63);
            v40(&v8[v5[8]], 1, 1, v39);
            v41 = &v8[v5[9]];
            *v41 = 0;
            *(v41 + 1) = 0;
            v42 = &v8[v5[10]];
            *v42 = 0;
            *(v42 + 1) = 0;
            *&v8[v5[11]] = 0;
            v8[v5[12]] = 0;
            *(v8 + 1) = v38;
            v67 = v27;
            v44 = v27[2];
            v43 = v27[3];
            v45 = v38;
            if (v44 >= v43 >> 1)
            {
              sub_1001999E0(v43 > 1, v44 + 1, 1);
              v27 = v67;
            }

            v27[2] = v44 + 1;
            sub_1006EB5D0(v8, v27 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v44, type metadata accessor for Loc);
            ++v37;
            --v26;
          }

          while (v26);
        }

        v1 = v54;
      }

      v13 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearCurrentLocs;
      swift_beginAccess();
      *&v13[v1] = v27;

      v46 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView;
      [*(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView) setHidden:1];
      v47 = v58;
      sub_1000082B4(v1 + v61, v58, &unk_100AEE090);
      if (v60(v47, 1, v5) == 1)
      {
        sub_100004F84(v47, &unk_100AEE090);
      }

      else
      {
        v48 = v55;
        sub_1006EB5D0(v47, v55, type metadata accessor for Loc);
        swift_beginAccess();
        v49 = v59;
        sub_1006EB41C(v48, v59, type metadata accessor for Loc);
        sub_100203870(0, 0, v49);
        swift_endAccess();
        [*(v1 + v46) setHidden:1];
        sub_1006EB484(v48, type metadata accessor for Loc);
      }

      v50 = *(v1 + v56);
      if (!v50)
      {

        return [*(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_collectionView) reloadData];
      }

      v51 = qword_100ACFD60;
      v26 = v50;
      if (v51 == -1)
      {
LABEL_25:
        v52 = *&v13[v1];
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = qword_100B2F8D8;
        qword_100B2F8D8 = 0x8000000000000000;
        sub_100202000(v64, v52, v26, isUniquelyReferenced_nonNull_native);

        qword_100B2F8D8 = v66;
        swift_endAccess();
        return [*(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_collectionView) reloadData];
      }

LABEL_31:
      swift_once();
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t (*sub_1006DBA70(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1006DBAD4;
}

id sub_1006DBAEC()
{
  v1 = v0;
  v2 = type metadata accessor for Loc(0);
  v39 = *(v2 - 1);
  v3 = __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v35 - v6;
  v8 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearPhotoPlaces;
  result = swift_beginAccess();
  v10 = *(v0 + v8);
  if (v10)
  {
    if (v10 >> 62)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
      v38 = v10;
      if (v11)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v38 = v10;
      if (v11)
      {
LABEL_4:
        v41 = _swiftEmptyArrayStorage;

        sub_1001999E0(0, v11 & ~(v11 >> 63), 0);
        if (v11 < 0)
        {
          __break(1u);
          goto LABEL_25;
        }

        v35 = v0;
        v12 = v41;
        if ((v10 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v11; ++i)
          {
            v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            *v7 = 0;
            *(v7 + 2) = 0;
            v15 = v2[7];
            v16 = type metadata accessor for Date();
            v17 = *(*(v16 - 8) + 56);
            v17(&v7[v15], 1, 1, v16);
            v17(&v7[v2[8]], 1, 1, v16);
            v18 = &v7[v2[9]];
            *v18 = 0;
            *(v18 + 1) = 0;
            v19 = &v7[v2[10]];
            *v19 = 0;
            *(v19 + 1) = 0;
            *&v7[v2[11]] = 0;
            v7[v2[12]] = 0;
            *(v7 + 1) = v14;
            v41 = v12;
            v21 = v12[2];
            v20 = v12[3];
            if (v21 >= v20 >> 1)
            {
              sub_1001999E0(v20 > 1, v21 + 1, 1);
              v12 = v41;
            }

            v12[2] = v21 + 1;
            sub_1006EB5D0(v7, v12 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v21, type metadata accessor for Loc);
          }
        }

        else
        {
          v22 = (v10 + 32);
          v37 = type metadata accessor for Date();
          v36 = *(*(v37 - 8) + 56);
          do
          {
            v23 = *v22;
            *v5 = 0;
            *(v5 + 2) = 0;
            v25 = v36;
            v24 = v37;
            v36(&v5[v2[7]], 1, 1, v37);
            v25(&v5[v2[8]], 1, 1, v24);
            v26 = &v5[v2[9]];
            *v26 = 0;
            *(v26 + 1) = 0;
            v27 = &v5[v2[10]];
            *v27 = 0;
            *(v27 + 1) = 0;
            *&v5[v2[11]] = 0;
            v5[v2[12]] = 0;
            *(v5 + 1) = v23;
            v41 = v12;
            v29 = v12[2];
            v28 = v12[3];
            v30 = v23;
            if (v29 >= v28 >> 1)
            {
              sub_1001999E0(v28 > 1, v29 + 1, 1);
              v12 = v41;
            }

            v12[2] = v29 + 1;
            sub_1006EB5D0(v5, v12 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v29, type metadata accessor for Loc);
            ++v22;
            --v11;
          }

          while (v11);
        }

        v1 = v35;
LABEL_18:
        v10 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearPhotoLocs;
        *(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearPhotoLocs) = v12;

        [*(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView) setHidden:1];
        v31 = *(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_photoLocation);
        if (!v31)
        {

          return [*(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_collectionView) reloadData];
        }

        v32 = qword_100ACFD60;
        v2 = v31;
        if (v32 == -1)
        {
LABEL_20:
          v33 = *(v1 + v10);
          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v40 = qword_100B2F8D8;
          qword_100B2F8D8 = 0x8000000000000000;
          sub_100202000(v38, v33, v2, isUniquelyReferenced_nonNull_native);

          qword_100B2F8D8 = v40;
          swift_endAccess();
          return [*(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_collectionView) reloadData];
        }

LABEL_25:
        swift_once();
        goto LABEL_20;
      }
    }

    v12 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  return result;
}

uint64_t (*sub_1006DBFE4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1006DC048;
}

uint64_t sub_1006DC060(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_1006DC0A4()
{
  v1 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController____lazy_storage___pathMonitor;
  if (*(v0 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController____lazy_storage___pathMonitor))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController____lazy_storage___pathMonitor);
  }

  else
  {
    v3 = v0;
    type metadata accessor for NWPathMonitor();
    swift_allocObject();
    v2 = NWPathMonitor.init()();
    *(v3 + v1) = v2;
  }

  return v2;
}

void sub_1006DC168()
{
  v1 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_locationToChange);
  if (v4)
  {
    [swift_unknownObjectRetain() coordinate];
    v6 = v5;
    [v4 coordinate];
    v8 = [objc_allocWithZone(CLLocation) initWithLatitude:v6 longitude:v7];
    v9 = *(v0 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocation);
    *(v0 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocation) = v8;
    v18 = v8;

    sub_1006DB0A4();
    swift_unknownObjectRelease();
    v10 = v18;
  }

  else
  {
    v11 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_locationUpdatesTask;
    if (!*(v0 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_locationUpdatesTask))
    {
      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();

      v14 = v0;
      v15 = static MainActor.shared.getter();
      v16 = swift_allocObject();
      v16[2] = v15;
      v16[3] = &protocol witness table for MainActor;
      v16[4] = v13;

      *(v14 + v11) = sub_1003E9628(0, 0, v3, &unk_100964358, v16);
    }
  }
}

void sub_1006DC3A0()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v4 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v7 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocationPickerCollectionViewController(0);
  v111.receiver = v0;
  v111.super_class = v8;
  objc_msgSendSuper2(&v111, "viewDidLoad");
  v9 = [v0 sheetPresentationController];
  if (v9)
  {
    v10 = v9;
    [v9 _setShouldAdjustDetentsToAvoidKeyboard:0];
  }

  *(*&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_searchManager] + OBJC_IVAR____TtC7Journal27LocationPickerSearchManager_delegate + 8) = &off_100A79118;
  swift_unknownObjectWeakAssign();
  v11 = [v1 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_36;
  }

  v12 = v11;
  v13 = [objc_opt_self() clearColor];
  [v12 setBackgroundColor:v13];

  v14 = [v1 view];
  if (!v14)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = v14;
  v16 = [objc_opt_self() mainBundle];
  v112._object = 0x8000000100901AC0;
  v17._countAndFlagsBits = 0xD000000000000011;
  v17._object = 0x8000000100901AA0;
  v112._countAndFlagsBits = 0xD000000000000037;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v112);

  v19 = String._bridgeToObjectiveC()();

  [v15 setAccessibilityLabel:v19];

  v20 = [v1 view];
  if (!v20)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v21 = v20;
  [v20 setAccessibilityContainerType:4];

  v22 = sub_1006E08FC();
  sub_1006E1A74(v22);
  v23 = [objc_allocWithZone(UILayoutGuide) init];
  v24 = [v1 view];
  if (!v24)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v25 = v24;
  v106 = v7;
  v107 = v4;
  [v24 addLayoutGuide:v23];

  v26 = [v23 topAnchor];
  v109 = v22;
  v27 = [v22 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  LODWORD(v29) = 1132068864;
  [v28 setPriority:v29];
  v104 = sub_1000F24EC(&unk_100AD4780);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100941830;
  v31 = [v23 leadingAnchor];
  v32 = [v1 view];
  if (!v32)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v33 = v32;
  v34 = v23;
  v35 = [v32 leadingAnchor];

  v36 = [v31 constraintEqualToAnchor:v35];
  *(v30 + 32) = v36;
  *(v30 + 40) = v28;
  v37 = v28;
  v38 = [v34 trailingAnchor];
  v39 = [v1 view];
  if (!v39)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v40 = v39;
  v105 = v37;
  v41 = [v39 trailingAnchor];

  v42 = [v38 constraintEqualToAnchor:v41];
  *(v30 + 48) = v42;
  v108 = v34;
  v43 = [v34 bottomAnchor];
  v44 = [v1 view];
  if (!v44)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v45 = v44;
  v46 = objc_opt_self();
  v47 = [v45 keyboardLayoutGuide];

  v48 = [v47 topAnchor];
  v49 = [v43 constraintEqualToAnchor:v48];

  *(v30 + 56) = v49;
  sub_1000065A8(0, &qword_100AD8000);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v46 activateConstraints:isa];

  v51 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_emptyJournaledLocationView;
  [*&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_emptyJournaledLocationView] setHidden:1];
  [*&v1[v51] setTranslatesAutoresizingMaskIntoConstraints:0];
  v52 = [v1 view];
  if (!v52)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v53 = v52;
  [v52 addSubview:*&v1[v51]];

  v54 = *&v1[v51];
  v55 = v108;
  sub_1006EA864(v54, v108);

  v56 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_emptySearchResultsView;
  [*&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_emptySearchResultsView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v1[v56] setHidden:1];
  v57 = [v1 view];
  if (!v57)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v58 = v57;
  [v57 addSubview:*&v1[v56]];

  v59 = *&v1[v56];
  sub_1006EA864(v59, v55);

  sub_1006DDE34();
  v60 = [v1 view];
  if (!v60)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    return;
  }

  v61 = v60;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v62 = v110;
  [v61 addSubview:v110];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v63 = v110;
  v64 = [v110 superview];
  if (v64)
  {
    v65 = v64;
    [v63 setTranslatesAutoresizingMaskIntoConstraints:0];
    v66 = [v63 leadingAnchor];
    v67 = [v65 leadingAnchor];
    v68 = [v66 constraintEqualToAnchor:v67];

    [v68 setConstant:0.0];
    if (v68)
    {
      [v68 setActive:1];
    }
  }

  else
  {
    v68 = 0;
    v65 = v63;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v69 = v110;
  v70 = [v110 superview];
  if (v70)
  {
    v71 = v70;
    [v69 setTranslatesAutoresizingMaskIntoConstraints:0];
    v72 = [v69 trailingAnchor];
    v73 = [v71 trailingAnchor];
    v74 = [v72 constraintEqualToAnchor:v73];

    [v74 setConstant:0.0];
    v75 = v109;
    if (v74)
    {
      [v74 setActive:1];
    }
  }

  else
  {
    v74 = 0;
    v71 = v69;
    v75 = v109;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v76 = v110;
  if (((v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_shouldShowPhotoLocation] & 1) != 0 || (v77 = sub_1006E46DC(), [*&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView] setHidden:1], v78 = v77[2], , v78)) && !*&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_locationToChange])
  {
    v79 = 42.0;
  }

  else if (v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_isPOISearchAvailable])
  {
    v79 = 0.0;
  }

  else
  {
    v79 = 42.0;
  }

  [v76 setTranslatesAutoresizingMaskIntoConstraints:0];
  v80 = [v76 topAnchor];
  v81 = [v75 bottomAnchor];
  v82 = [v80 constraintEqualToAnchor:v81];

  v83 = v82;
  [v83 setConstant:v79];
  [v83 setActive:1];

  v84 = *&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_permissionDeniedHeightConstraint];
  *&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_permissionDeniedHeightConstraint] = v83;

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v85 = v110;
  v86 = sub_100028DA0(0, 1, 0.0);

  v87 = [v1 view];
  if (!v87)
  {
    goto LABEL_45;
  }

  v88 = v87;
  v89 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView;
  [v87 addSubview:*&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView]];

  [*&v1[v89] setTranslatesAutoresizingMaskIntoConstraints:0];
  v90 = *&v1[v89];
  v91 = v108;
  sub_1006EA864(v90, v108);

  [*&v1[v89] setHidden:0];
  [*&v1[v89] startAnimating];
  sub_1006DC0A4();
  sub_1000065A8(0, &qword_100AD6210);
  v92 = static OS_dispatch_queue.main.getter();
  NWPathMonitor.start(queue:)();

  v93 = objc_opt_self();
  v94 = [v93 keyCommandWithInput:UIKeyInputEscape modifierFlags:0 action:"onCancelButtonTapped"];
  [v1 addKeyCommand:v94];

  v95 = String._bridgeToObjectiveC()();
  v96 = [v93 keyCommandWithInput:v95 modifierFlags:0 action:"onCancelButtonTapped"];

  [v1 addKeyCommand:v96];
  v97 = [v1 navigationItem];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v98 = String._bridgeToObjectiveC()();

  [v97 setTitle:v98];

  v99 = [v1 traitCollection];
  v100 = [v99 userInterfaceIdiom];

  if (v100 == 5)
  {
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_100941D60;
    *(v101 + 32) = [objc_opt_self() flexibleSpaceItem];
    *(v101 + 40) = sub_10036032C(v1, "onCancelButtonTapped");
    sub_1000065A8(0, &qword_100AD43B0);
    v102.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 setToolbarItems:v102.super.isa];
  }

  else
  {
    v103 = [v1 navigationItem];
    v102.super.isa = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v1 action:"onCancelButtonTapped"];
    [v103 setLeftBarButtonItem:v102.super.isa];
  }
}

void sub_1006DD318(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for LocationPickerCollectionViewController(0);
  objc_msgSendSuper2(&v10, "viewIsAppearing:", a1 & 1);
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 5)
  {
    v5 = [v1 navigationController];
    if (v5)
    {
      v6 = v5;
      [v5 setNavigationBarHidden:1 animated:a1 & 1];
    }

    v7 = [v1 navigationController];
    if (v7)
    {
      v8 = a1 & 1;
      v9 = v7;
      [v7 setToolbarHidden:0 animated:v8];
    }
  }
}

void sub_1006DD480()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_journalEntry);
    if (v2)
    {
      v3 = *(v2 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
      if (v3 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_5;
        }
      }

      else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_5;
      }

      v4 = *&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_photoLocation];
      *&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_photoLocation] = 0;

      *&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearPhotoLocs] = _swiftEmptyArrayStorage;

      [*&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView] setHidden:1];
      v5 = &v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearImageryTabTitle];
      if (*&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearImageryTabTitle + 8])
      {
        *v5 = 0;
        v5[1] = 0;
      }

      v6 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_shouldShowPhotoLocation;
      v7 = v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_shouldShowPhotoLocation];
      v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_shouldShowPhotoLocation] = 0;
      if (v7 == 1)
      {
        v8 = [v1 view];
        if (!v8)
        {
          __break(1u);
          return;
        }

        v9 = v8;
        [v8 setNeedsUpdateConstraints];

        if (v1[v6] == 1)
        {
          v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocOption] = 0;
          sub_1006E2F2C(0);
        }
      }

      sub_1006E61C0();
      goto LABEL_14;
    }

LABEL_5:
    sub_1006E4EB4();
LABEL_14:
  }
}

id sub_1006DD600()
{
  v1 = *&v0[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_localSearch];
  if (v1)
  {
    [v1 cancel];
  }

  v2 = *&v0[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_localSearchWithCompletion];
  if (v2)
  {
    [v2 cancel];
  }

  if (*&v0[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_locationUpdatesTask])
  {

    Task.cancel()();
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for LocationPickerCollectionViewController(0);
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_1006DD8F0()
{
  v1 = sub_1000F24EC(&unk_100AEE090);
  __chkstk_darwin(v1 - 8);
  v3 = v16 - v2 + 16;
  v4 = type metadata accessor for Loc(0);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLoc;
  swift_beginAccess();
  sub_100014318(v3, v0 + v5, &unk_100AEE090);
  swift_endAccess();
  v6 = *(v0 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocation);
  *(v0 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocation) = 0;

  sub_1006DB0A4();
  v7 = *(v0 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_photoLocation);
  *(v0 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_photoLocation) = 0;

  v9 = sub_1006DBA70(v16);
  if (*v8)
  {
    *v8 = _swiftEmptyArrayStorage;
  }

  v9(v16, 0);
  v10 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearCurrentLocs;
  swift_beginAccess();
  *(v0 + v10) = _swiftEmptyArrayStorage;

  v11 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView;
  [*(v0 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView) setHidden:1];
  v13 = sub_1006DBFE4(v16);
  if (*v12)
  {
    *v12 = _swiftEmptyArrayStorage;
  }

  v13(v16, 0);
  *(v0 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearPhotoLocs) = _swiftEmptyArrayStorage;

  [*(v0 + v11) setHidden:1];
  return [*(v0 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_collectionView) reloadData];
}

void sub_1006DDB0C(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LocationPickerCollectionViewController(0);
  objc_msgSendSuper2(&v5, "viewDidAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_emptySearchResultsView];
  sub_1006EAD60(v3, 0x746C757365526F6ELL, 0xED0000596E694D73, 0, 1);

  v4 = *&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView];
  sub_1006EAD60(v4, 0xD000000000000010, 0x8000000100901A20, 0, 1);

  sub_1006E2F2C(v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocOption]);
}

uint64_t sub_1006DDC40(char a1)
{
  v3 = [objc_opt_self() defaultCenter];
  [v3 removeObserver:v1 name:UIApplicationWillEnterForegroundNotification object:0];

  v8.receiver = v1;
  v8.super_class = type metadata accessor for LocationPickerCollectionViewController(0);
  objc_msgSendSuper2(&v8, "viewDidDisappear:", a1 & 1);
  v4 = &v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_pickerDelegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(v1, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1006DDE34()
{
  v0 = type metadata accessor for OpenSensitiveURLAction.Destination();
  v23 = *(v0 - 8);
  v1 = *(v23 + 64);
  __chkstk_darwin(v0);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v22 - v4;
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for UIContentUnavailableConfiguration();
  v24 = *(v8 - 8);
  v25 = v8;
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006A4DA8();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v11 = UIContentUnavailableConfiguration.button.modify();
  UIButton.Configuration.title.setter();
  v11(v27, 0);
  sub_1000065A8(0, &qword_100AD4420);
  swift_storeEnumTagMultiPayload();
  sub_1006EB41C(v5, v2, type metadata accessor for OpenSensitiveURLAction.Destination);
  v12 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v13 = swift_allocObject();
  sub_1006EB5D0(v2, v13 + v12, type metadata accessor for OpenSensitiveURLAction.Destination);
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_1006EB484(v5, type metadata accessor for OpenSensitiveURLAction.Destination);
  v14 = UIContentUnavailableConfiguration.buttonProperties.modify();
  UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
  v14(v27, 0);
  if (qword_100AD06B0 != -1)
  {
    swift_once();
  }

  UIContentUnavailableConfiguration.text.setter();
  if (qword_100AD06B8 != -1)
  {
    swift_once();
  }

  UIContentUnavailableConfiguration.secondaryText.setter();
  v15 = v26;
  v16 = [v26 traitCollection];
  [v16 userInterfaceIdiom];

  v17 = UIContentUnavailableConfiguration.buttonProperties.modify();
  UIContentUnavailableConfiguration.ButtonProperties.role.setter();
  v17(v27, 0);
  v18 = UIContentUnavailableConfiguration.makeContentView()();
  swift_getKeyPath();
  swift_getKeyPath();
  v27[0] = v18;
  v19 = v15;
  static UIViewController.ViewLoading.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v20 = v27[0];
  [v27[0] setHidden:1];

  return (*(v24 + 8))(v10, v25);
}

uint64_t sub_1006DE3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a4;
  v5 = type metadata accessor for CLLocationUpdate();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  sub_1000F24EC(&unk_100AEE0C0);
  v4[26] = swift_task_alloc();
  v6 = type metadata accessor for CLLocationUpdate.LiveConfiguration();
  v4[27] = v6;
  v4[28] = *(v6 - 8);
  v4[29] = swift_task_alloc();
  v7 = type metadata accessor for CLLocationUpdate.Updates();
  v4[30] = v7;
  v4[31] = *(v7 - 8);
  v4[32] = swift_task_alloc();
  v8 = type metadata accessor for CLLocationUpdate.Updates.Iterator();
  v4[33] = v8;
  v4[34] = *(v8 - 8);
  v4[35] = swift_task_alloc();
  v9 = type metadata accessor for CLServiceSession.Diagnostic();
  v4[36] = v9;
  v4[37] = *(v9 - 8);
  v4[38] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6100);
  v4[39] = swift_task_alloc();
  v10 = type metadata accessor for CLServiceSession.Diagnostics.Iterator();
  v4[40] = v10;
  v4[41] = *(v10 - 8);
  v4[42] = swift_task_alloc();
  v11 = type metadata accessor for CLServiceSession.AuthorizationRequirement();
  v4[43] = v11;
  v4[44] = *(v11 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = type metadata accessor for MainActor();
  v4[47] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[48] = v13;
  v4[49] = v12;

  return _swift_task_switch(sub_1006DE738, v13, v12);
}

uint64_t sub_1006DE738()
{
  (*(*(v0 + 352) + 104))(*(v0 + 360), enum case for CLServiceSession.AuthorizationRequirement.whenInUse(_:), *(v0 + 344));
  type metadata accessor for CLServiceSession();
  swift_allocObject();
  *(v0 + 400) = CLServiceSession.init(authorization:fullAccuracyPurposeKey:)();
  CLServiceSession.diagnostics.getter();
  CLServiceSession.Diagnostics.makeAsyncIterator()();

  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  *(v0 + 456) = enum case for CLLocationUpdate.LiveConfiguration.default(_:);
  *(v0 + 408) = static MainActor.shared.getter();
  v1 = sub_1006E9C54(&qword_100AEE0D0, &type metadata accessor for CLServiceSession.Diagnostics.Iterator);
  v2 = swift_task_alloc();
  *(v0 + 416) = v2;
  *v2 = v0;
  v2[1] = sub_1006DE900;
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);

  return dispatch thunk of AsyncIteratorProtocol.next()(v3, v4, v1);
}

uint64_t sub_1006DE900()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  v3 = *(v2 + 408);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1006DF03C;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1006DEA98;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1006DEA98()
{

  v1 = *(v0 + 384);
  v2 = *(v0 + 392);

  return _swift_task_switch(sub_1006DEAFC, v1, v2);
}

uint64_t sub_1006DEAFC()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));

    CLServiceSession.invalidate()();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    (*(v3 + 32))(*(v0 + 304), v1, v2);
    if (CLServiceSession.Diagnostic.authorizationDenied.getter() & 1) != 0 || (CLServiceSession.Diagnostic.authorizationDeniedGlobally.getter() & 1) != 0 || (CLServiceSession.Diagnostic.authorizationRequestInProgress.getter() & 1) != 0 || (CLServiceSession.Diagnostic.authorizationRestricted.getter() & 1) != 0 || (CLServiceSession.Diagnostic.serviceSessionRequired.getter())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        *(Strong + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_permissionDenied) = 1;
        sub_1006DFE7C();
        sub_1006E17A0();
        v8 = *&v7[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocation];
        *&v7[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocation] = 0;

        sub_1006DB0A4();
        sub_1006E2F2C(v7[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocOption]);
      }

      if (qword_100ACFB30 != -1)
      {
        swift_once();
      }

      v10 = *(v0 + 296);
      v9 = *(v0 + 304);
      v11 = *(v0 + 288);
      v12 = sub_1000F24EC(&qword_100AEE0E0);
      sub_10000617C(v12, qword_100B2F5B8);
      *(v0 + 461) = 0;
      swift_beginAccess();
      Tips.Parameter.wrappedValue.setter();
      swift_endAccess();
      (*(v10 + 8))(v9, v11);
      *(v0 + 408) = static MainActor.shared.getter();
      v13 = sub_1006E9C54(&qword_100AEE0D0, &type metadata accessor for CLServiceSession.Diagnostics.Iterator);
      v14 = swift_task_alloc();
      *(v0 + 416) = v14;
      *v14 = v0;
      v14[1] = sub_1006DE900;
      v15 = *(v0 + 312);
      v16 = *(v0 + 320);
    }

    else
    {
      v17 = swift_unknownObjectWeakLoadStrong();
      if (v17)
      {
        v18 = v17;
        sub_1006DFB58(0);
      }

      if (qword_100ACFB30 != -1)
      {
        swift_once();
      }

      v19 = *(v0 + 456);
      v21 = *(v0 + 248);
      v20 = *(v0 + 256);
      v22 = *(v0 + 232);
      v24 = *(v0 + 216);
      v23 = *(v0 + 224);
      v27 = *(v0 + 240);
      v25 = sub_1000F24EC(&qword_100AEE0E0);
      sub_10000617C(v25, qword_100B2F5B8);
      *(v0 + 460) = 1;
      swift_beginAccess();
      Tips.Parameter.wrappedValue.setter();
      swift_endAccess();
      (*(v23 + 104))(v22, v19, v24);
      static CLLocationUpdate.liveUpdates(_:)();
      (*(v23 + 8))(v22, v24);
      CLLocationUpdate.Updates.makeAsyncIterator()();
      (*(v21 + 8))(v20, v27);
      swift_beginAccess();
      *(v0 + 432) = static MainActor.shared.getter();
      v13 = sub_1006E9C54(&unk_100AEBE40, &type metadata accessor for CLLocationUpdate.Updates.Iterator);
      v26 = swift_task_alloc();
      *(v0 + 440) = v26;
      *v26 = v0;
      v26[1] = sub_1006DF310;
      v16 = *(v0 + 264);
      v15 = *(v0 + 208);
    }

    return dispatch thunk of AsyncIteratorProtocol.next()(v15, v16, v13);
  }
}

uint64_t sub_1006DF03C()
{
  v0[20] = v0[53];
  sub_1000F24EC(&qword_100AD5BC0);
  swift_willThrowTypedImpl();

  v1 = v0[48];
  v2 = v0[49];

  return _swift_task_switch(sub_1006DF0D8, v1, v2);
}

uint64_t sub_1006DF0D8()
{

  (*(v0[41] + 8))(v0[42], v0[40]);
  CLServiceSession.invalidate()();

  if (qword_100AD0148 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AEDDE0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "error occurred while trying to stream current location: %@", v4, 0xCu);
    sub_100004F84(v5, &unk_100AD4BB0);
  }

  else
  {
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1006DF310()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  v3 = *(v2 + 432);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1006DF848;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1006DF4A8;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1006DF4A8()
{

  v1 = *(v0 + 384);
  v2 = *(v0 + 392);

  return _swift_task_switch(sub_1006DF50C, v1, v2);
}

uint64_t sub_1006DF50C()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    (*(v3 + 32))(v0[25], v1, v2);
    v7 = CLLocationUpdate.location.getter();
    if (v7)
    {
      v8 = v7;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong || (v10 = *(Strong + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocation), v11 = Strong, v12 = v10, v11, !v10))
      {
        v17 = swift_unknownObjectWeakLoadStrong();
        if (v17)
        {
          v18 = v17;
          *(v17 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocOption) = 1;
          v19 = *(v17 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocation);
          *(v17 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocation) = v8;
          v20 = v8;

          sub_1006DB0A4();
          sub_1006E2F2C(1);

          v8 = v18;
        }

        v21 = v0[37];
        v31 = v0[38];
        v23 = v0[35];
        v22 = v0[36];
        v24 = v0[33];
        v25 = v0[34];
        v26 = v0[24];
        v27 = v0[25];
        v28 = v0[23];

        (*(v26 + 8))(v27, v28);
        (*(v25 + 8))(v23, v24);
        (*(v21 + 8))(v31, v22);
        goto LABEL_11;
      }
    }

    (*(v0[24] + 8))(v0[25], v0[23]);
    v0[54] = static MainActor.shared.getter();
    v13 = sub_1006E9C54(&unk_100AEBE40, &type metadata accessor for CLLocationUpdate.Updates.Iterator);
    v14 = swift_task_alloc();
    v0[55] = v14;
    *v14 = v0;
    v14[1] = sub_1006DF310;
    v15 = v0[33];
    v16 = v0[26];
    goto LABEL_12;
  }

  v5 = v0[37];
  v4 = v0[38];
  v6 = v0[36];
  (*(v0[34] + 8))(v0[35], v0[33]);
  (*(v5 + 8))(v4, v6);
LABEL_11:
  v0[51] = static MainActor.shared.getter();
  v13 = sub_1006E9C54(&qword_100AEE0D0, &type metadata accessor for CLServiceSession.Diagnostics.Iterator);
  v29 = swift_task_alloc();
  v0[52] = v29;
  *v29 = v0;
  v29[1] = sub_1006DE900;
  v16 = v0[39];
  v15 = v0[40];
LABEL_12:

  return dispatch thunk of AsyncIteratorProtocol.next()(v16, v15, v13);
}

uint64_t sub_1006DF848()
{
  v0[21] = v0[56];
  sub_1000F24EC(&qword_100AD5BC0);
  swift_willThrowTypedImpl();

  v1 = v0[48];
  v2 = v0[49];

  return _swift_task_switch(sub_1006DF8E4, v1, v2);
}

uint64_t sub_1006DF8E4()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[33];
  v6 = v0[34];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  (*(v0[41] + 8))(v0[42], v0[40]);
  CLServiceSession.invalidate()();

  if (qword_100AD0148 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000617C(v7, qword_100AEDDE0);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "error occurred while trying to stream current location: %@", v10, 0xCu);
    sub_100004F84(v11, &unk_100AD4BB0);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

void sub_1006DFB58(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for NWPath.Status();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for NWPath();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    *(v2 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_permissionDenied) = 1;
    sub_1006DFE7C();
    sub_1006E17A0();
    v15 = *(v2 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocation);
    *(v2 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocation) = 0;

    sub_1006DB0A4();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_permissionDenied) = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v16 = v20;
    [v20 setHidden:1];

    v17 = *(v2 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_searchBar);
    sub_1006DC0A4();
    NWPathMonitor.currentPath.getter();

    NWPath.status.getter();
    (*(v12 + 8))(v14, v11);
    (*(v5 + 104))(v7, enum case for NWPath.Status.unsatisfied(_:), v4);
    sub_1006E9C54(&unk_100AE5DE0, &type metadata accessor for NWPath.Status);
    LOBYTE(v16) = dispatch thunk of static Equatable.== infix(_:_:)();
    v18 = *(v5 + 8);
    v18(v7, v4);
    v18(v10, v4);
    [v17 setEnabled:(v16 & 1) == 0];
  }

  sub_1006E2F2C(*(v2 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocOption));
}

id sub_1006DFE7C()
{
  sub_1006DD8F0();
  v1 = *(v0 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocation);
  *(v0 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocation) = 0;

  sub_1006DB0A4();
  if (*(v0 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocOption) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    [v6 setHidden:0];

    v2 = *(v0 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView);
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v2;
    static UIViewController.ViewLoading.subscript.getter();

    v4 = [v6 isHidden];

    [v3 setHidden:v4 ^ 1];
  }

  return [*(v0 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView) setHidden:1];
}

id sub_1006DFFE4()
{
  v1 = *&v0[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_permissionDeniedHeightConstraint];
  if (v1)
  {
    v2 = v0[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_shouldShowPhotoLocation];
    v3 = v1;
    if (((v2 & 1) != 0 || (v4 = sub_1006E46DC(), [*&v0[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView] setHidden:1], v5 = v4[2], , v5)) && !*&v0[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_locationToChange])
    {
      v6 = 42.0;
    }

    else
    {
      v6 = 42.0;
      if (v0[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_isPOISearchAvailable])
      {
        v6 = 0.0;
      }
    }

    [v3 setConstant:v6];
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for LocationPickerCollectionViewController(0);
  return objc_msgSendSuper2(&v8, "updateViewConstraints");
}

uint64_t sub_1006E0120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  sub_1000F24EC(&unk_100AEE090);
  v5[27] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[28] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[29] = v7;
  v5[30] = v6;

  return _swift_task_switch(sub_1006E01F0, v7, v6);
}

uint64_t sub_1006E01F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[31] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = [objc_allocWithZone(MKReverseGeocodingRequest) initWithLocation:v0[26]];
    v0[32] = v3;
    if (v3)
    {
      v4 = v3;
      v0[33] = [objc_allocWithZone(MKMapItem) initWithLocation:v0[26] address:0];
      v0[2] = v0;
      v0[7] = v0 + 24;
      v0[3] = sub_1006E03E8;
      v5 = swift_continuation_init();
      v0[17] = sub_1000F24EC(&unk_100AEBE50);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_10064D40C;
      v0[13] = &unk_100A79238;
      v0[14] = v5;
      [v4 getMapItemsWithCompletionHandler:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }
  }

  else
  {
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1006E03E8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  v3 = *(v1 + 240);
  v4 = *(v1 + 232);
  if (v2)
  {
    v5 = sub_1006E0868;
  }

  else
  {
    v5 = sub_1006E0518;
  }

  return _swift_task_switch(v5, v4, v3);
}

unint64_t sub_1006E0518()
{

  result = v0[24];
  if (result >> 62)
  {
    v4 = v0[24];
    v5 = _CocoaArrayWrapper.endIndex.getter();
    result = v4;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_8:
    v6 = v0[33];

    v7 = v6;
    v3 = v0[33];
    goto LABEL_9;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v2 = *(result + 32);
  }

  v3 = v2;

LABEL_9:
  v8 = [v3 _firstLocalizedCategoryName];
  if (v8 || (v8 = [v3 pointOfInterestCategory]) != 0)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v11;
    v36 = v10;
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  v12 = [v3 addressRepresentations];
  if (v12 && (v13 = v12, v14 = [v12 cityName], v13, v14))
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v16;
    v32 = v15;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v33 = v0[33];
  v34 = v0[32];
  v17 = v0[31];
  v18 = v0[27];
  v19 = [v3 _styleAttributes];
  *(v18 + 2) = 0;
  v20 = type metadata accessor for Loc(0);
  v21 = v20[7];
  v22 = type metadata accessor for Date();
  v23 = *(*(v22 - 8) + 56);
  v23(&v18[v21], 1, 1, v22);
  v23(&v18[v20[8]], 1, 1, v22);
  v24 = &v18[v20[9]];
  v25 = &v18[v20[10]];
  v26 = v20[11];
  v27 = v20[12];
  *v18 = 0;
  *(v18 + 1) = v3;
  *v24 = v32;
  v24[1] = v31;
  *v25 = v36;
  v25[1] = v35;
  *&v18[v26] = v19;
  v18[v27] = 1;
  (*(*(v20 - 1) + 56))(v18, 0, 1, v20);
  v28 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLoc;
  swift_beginAccess();
  v29 = v3;
  sub_100014318(v18, &v17[v28], &unk_100AEE090);
  swift_endAccess();
  sub_1006E2F2C(v17[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocOption]);

  v30 = v0[1];

  return v30();
}

uint64_t sub_1006E0868()
{
  v1 = v0[33];
  v3 = v0[31];
  v2 = v0[32];

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

id sub_1006E08FC()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AE4250);
  __chkstk_darwin(v2 - 8);
  v4 = &v103 - v3;
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 1);
  __chkstk_darwin(v5);
  v107 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(UIView) init];
  v9 = objc_opt_self();
  v10 = [v9 clearColor];
  [v8 setBackgroundColor:v10];

  [v8 setLayoutMargins:{14.0, 14.0, 0.0, 14.0}];
  v11 = &selRef_setSuggestedName_;
  result = [v1 view];
  if (!result)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v13 = result;
  [result addSubview:v8];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [v8 layoutMarginsGuide];
  v15 = *&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_locationToChange];
  v108 = v14;
  v106 = v8;
  if (v15)
  {
    v104 = v6;
    v105 = v5;
    v16 = [objc_allocWithZone(UILabel) init];
    v17 = objc_opt_self();
    v18 = [v17 preferredFontForTextStyle:UIFontTextStyleTitle2];
    v19 = [v18 fontDescriptor];
    v20 = [v18 fontDescriptor];
    v21 = [v20 symbolicTraits];

    v22 = [v19 fontDescriptorWithSymbolicTraits:v21 | 2];
    if (v22)
    {
      v23 = [v17 fontWithDescriptor:v22 size:0.0];

      v18 = v23;
    }

    [v16 setFont:v18];

    if (qword_100AD0608 != -1)
    {
      swift_once();
    }

    v24 = String._bridgeToObjectiveC()();
    [v16 setText:v24];

    v25 = v16;
    [v25 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraLarge];
    [v25 setNumberOfLines:2];
    v26 = UIAccessibilityTraitHeader;
    v27 = v25;
    v28 = [v27 accessibilityTraits];
    if ((v26 & ~v28) != 0)
    {
      v29 = v26;
    }

    else
    {
      v29 = 0;
    }

    [v27 setAccessibilityTraits:v29 | v28];

    [v8 addSubview:v27];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = [objc_allocWithZone(UIButton) init];
    v31 = v107;
    static UIButton.Configuration.bordered()();
    v32 = [v9 labelColor];
    UIButton.Configuration.baseForegroundColor.setter();
    sub_100885664(0);
    if (qword_100AD09A8 != -1)
    {
      swift_once();
    }

    v33 = qword_100B30E80;
    UIButton.Configuration.image.setter();
    v34 = [v9 secondaryLabelColor];
    UIButton.Configuration.baseForegroundColor.setter();
    v35 = v104;
    v36 = v105;
    (*(v104 + 16))(v4, v31, v105);
    (*(v35 + 56))(v4, 0, 1, v36);
    UIButton.configuration.setter();
    v37 = qword_100AD0818;
    v38 = v30;
    if (v37 != -1)
    {
      swift_once();
    }

    v39 = String._bridgeToObjectiveC()();
    [v38 setAccessibilityLabel:v39];

    v40 = v38;
    [v40 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
    [v40 addTarget:v1 action:"onCancelButtonTapped" forControlEvents:64];
    v41 = [v1 traitCollection];
    v42 = [v41 userInterfaceIdiom];

    [v40 setHidden:v42 == 5];
    [v8 addSubview:v40];
    [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
    v103 = objc_opt_self();
    sub_1000F24EC(&unk_100AD4780);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_100956650;
    v44 = [v27 leadingAnchor];
    v45 = v108;
    v46 = [v108 leadingAnchor];
    v47 = [v44 constraintEqualToAnchor:v46];

    *(v43 + 32) = v47;
    v48 = [v27 topAnchor];
    v49 = [v45 topAnchor];
    v50 = [v48 constraintEqualToAnchor:v49];

    *(v43 + 40) = v50;
    v51 = [v27 trailingAnchor];
    v52 = [v40 leadingAnchor];
    v53 = [v51 constraintEqualToAnchor:v52 constant:8.0];

    *(v43 + 48) = v53;
    v54 = [v40 topAnchor];
    v55 = [v45 topAnchor];
    v56 = [v54 constraintEqualToAnchor:v55];

    *(v43 + 56) = v56;
    v57 = [v40 trailingAnchor];
    v58 = [v45 trailingAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];

    *(v43 + 64) = v59;
    v60 = [v40 widthAnchor];
    v61 = [v60 constraintEqualToConstant:30.0];

    *(v43 + 72) = v61;
    v62 = [v40 heightAnchor];

    v63 = [v62 constraintEqualToConstant:30.0];
    *(v43 + 80) = v63;
    sub_1000065A8(0, &qword_100AD8000);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v103 activateConstraints:isa];

    v65 = [v27 bottomAnchor];
    (*(v104 + 8))(v107, v105);
    v66 = 14.0;
    v11 = &selRef_setSuggestedName_;
  }

  else
  {
    v65 = [v14 topAnchor];
    v66 = 0.0;
  }

  v67 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_searchBar;
  v68 = *&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_searchBar];
  v69 = *(*&v1[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_searchManager] + OBJC_IVAR____TtC7Journal27LocationPickerSearchManager_delegateRelay);
  v107 = v65;
  [v68 setDelegate:v69];
  [*&v1[v67] setSearchBarStyle:0];
  v70 = qword_100AD0638;
  v71 = *&v1[v67];
  if (v70 != -1)
  {
    swift_once();
  }

  v72 = String._bridgeToObjectiveC()();
  [v71 setPlaceholder:v72];

  [*&v1[v67] _setSeparatorImage:0];
  [*&v1[v67] setBackgroundImage:0];
  [*&v1[v67] setDrawsBackground:0];
  v73 = *&v1[v67];
  [v73 directionalLayoutMargins];
  [v73 setDirectionalLayoutMargins:?];

  v74 = *&v1[v67];
  [v74 directionalLayoutMargins];
  [v74 setDirectionalLayoutMargins:?];

  [*&v1[v67] _setAutoDisableCancelButton:0];
  v75 = *&v1[v67];
  v76 = v106;
  [v106 addSubview:v75];
  [v75 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_1000F24EC(&unk_100AD4780);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_100956650;
  v78 = [v76 leadingAnchor];
  result = [v1 v11[299]];
  if (!result)
  {
    goto LABEL_23;
  }

  v79 = result;
  v80 = [result leadingAnchor];

  v81 = [v78 constraintEqualToAnchor:v80];
  *(v77 + 32) = v81;
  v82 = [v76 topAnchor];
  result = [v1 v11[299]];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v83 = result;
  v84 = [result topAnchor];

  v85 = [v82 constraintEqualToAnchor:v84];
  *(v77 + 40) = v85;
  v86 = [v76 trailingAnchor];
  result = [v1 v11[299]];
  if (result)
  {
    v87 = result;
    v105 = objc_opt_self();
    v88 = [v87 trailingAnchor];

    v89 = [v86 constraintEqualToAnchor:v88];
    *(v77 + 48) = v89;
    v90 = [v76 bottomAnchor];
    v91 = [*&v1[v67] bottomAnchor];
    v92 = [v90 constraintEqualToAnchor:v91];

    *(v77 + 56) = v92;
    v93 = [*&v1[v67] leadingAnchor];
    v94 = [v76 leadingAnchor];
    v95 = [v93 constraintEqualToAnchor:v94];

    *(v77 + 64) = v95;
    v96 = [*&v1[v67] topAnchor];
    v97 = v107;
    v98 = [v96 constraintEqualToAnchor:v107 constant:v66];

    *(v77 + 72) = v98;
    v99 = [*&v1[v67] trailingAnchor];
    v100 = [v76 trailingAnchor];
    v101 = [v99 constraintEqualToAnchor:v100];

    *(v77 + 80) = v101;
    sub_1000065A8(0, &qword_100AD8000);
    v102 = Array._bridgeToObjectiveC()().super.isa;

    [v105 activateConstraints:v102];

    return v76;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1006E17A0()
{
  v1 = type metadata accessor for NWPath.Status();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = type metadata accessor for NWPath();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_searchBar;
  v14 = [*(v0 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_searchBar) delegate];
  if (v14)
  {
    v15 = v14;
    if ([v14 respondsToSelector:"searchBarCancelButtonClicked:"])
    {
      v16 = *(v0 + v13);
      v22 = v8;
      v17 = v16;
      [v15 searchBarCancelButtonClicked:v16];

      v8 = v22;
    }

    swift_unknownObjectRelease();
  }

  sub_1006DD8F0();
  v18 = *(v0 + v13);
  sub_1006DC0A4();
  NWPathMonitor.currentPath.getter();

  NWPath.status.getter();
  (*(v9 + 8))(v12, v8);
  (*(v2 + 104))(v4, enum case for NWPath.Status.unsatisfied(_:), v1);
  sub_1006E9C54(&unk_100AE5DE0, &type metadata accessor for NWPath.Status);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v2 + 8);
  v20(v4, v1);
  v20(v7, v1);
  [v18 setEnabled:(v19 & 1) == 0];
}

void sub_1006E1A74(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UICollectionLayoutListConfiguration();
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v8, v13);
  UICollectionLayoutListConfiguration.init(appearance:)();
  (*(v5 + 104))(v7, enum case for UICollectionLayoutListConfiguration.HeaderMode.none(_:), v4);
  UICollectionLayoutListConfiguration.headerMode.setter();
  v16 = objc_opt_self();
  v17 = [v16 clearColor];
  UICollectionLayoutListConfiguration.backgroundColor.setter();
  UICollectionLayoutListConfiguration.showsSeparators.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UICollectionLayoutListConfiguration.itemSeparatorHandler.setter();
  sub_1000065A8(0, &unk_100AE7E80);
  v18 = static UICollectionViewCompositionalLayout.list(using:)();
  v19 = objc_allocWithZone(UICollectionView);
  v52 = v18;
  v20 = [v19 initWithFrame:v18 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  [v20 setDelegate:v2];
  [v20 setDataSource:v2];
  [v20 setKeyboardDismissMode:1];
  type metadata accessor for LocationPickerTitleCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = String._bridgeToObjectiveC()();
  [v20 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v22];

  type metadata accessor for LocationCollectionViewCell();
  v23 = swift_getObjCClassFromMetadata();
  v24 = String._bridgeToObjectiveC()();
  [v20 registerClass:v23 forCellWithReuseIdentifier:v24];

  v25 = v20;
  v26 = [v16 clearColor];
  [v25 setBackgroundColor:v26];

  v27 = [v2 view];
  if (!v27)
  {
    __break(1u);
    goto LABEL_7;
  }

  v28 = v27;
  [v27 insertSubview:v25 atIndex:0];

  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_1000F24EC(&unk_100AD4780);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100941830;
  v30 = [v25 leadingAnchor];
  v31 = [v2 view];
  if (!v31)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v32 = v31;
  v33 = [v31 leadingAnchor];

  v34 = [v30 constraintEqualToAnchor:v33];
  *(v29 + 32) = v34;
  v35 = [v25 topAnchor];
  v36 = [a1 bottomAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v29 + 40) = v37;
  v38 = [v25 trailingAnchor];
  v39 = [v2 view];
  if (!v39)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v40 = v39;
  v41 = [v39 trailingAnchor];

  v42 = [v38 constraintEqualToAnchor:v41];
  *(v29 + 48) = v42;
  v43 = [v25 bottomAnchor];

  v44 = [v2 view];
  if (v44)
  {
    v45 = v44;
    v46 = objc_opt_self();
    v47 = [v45 bottomAnchor];

    v48 = [v43 constraintEqualToAnchor:v47];
    *(v29 + 56) = v48;
    sub_1000065A8(0, &qword_100AD8000);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v46 activateConstraints:isa];

    (*(v53 + 8))(v15, v54);
    v50 = *&v2[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_collectionView];
    *&v2[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_collectionView] = v25;

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1006E2148@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for UIListSeparatorConfiguration();
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  if (!IndexPath.section.getter())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_isPOISearchAvailable];

      if (v13 == 1)
      {
        swift_beginAccess();
        v14 = swift_unknownObjectWeakLoadStrong();
        if (v14)
        {
          v15 = v14[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_hideFirstSeparator];

          if (v15 == 1)
          {
            v16 = enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
            v17 = *(v5 + 104);
            v17(v7, enum case for UIListSeparatorConfiguration.Visibility.hidden(_:), v4);
            UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();
            v17(v7, v16, v4);
            UIListSeparatorConfiguration.topSeparatorVisibility.setter();
          }
        }
      }
    }
  }

  v9 = UIListSeparatorConfiguration.bottomSeparatorInsets.modify();
  *(v10 + 24) = 0x4034000000000000;
  return v9(v19, 0);
}

void sub_1006E234C(char a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      return;
    }

    v3 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_searchRegionNearMe;
  }

  else
  {
    v3 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_searchRegionNearPhoto;
  }

  v4 = v1 + v3;
  if ((*(v4 + 32) & 1) == 0)
  {
    v11 = [objc_allocWithZone(MKLocalPointsOfInterestRequest) initWithCoordinateRegion:{*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24)}];
    if (v11)
    {
      v5 = [objc_allocWithZone(MKLocalSearch) initWithPointsOfInterestRequest:v11];
      sub_1006EA468();
      v6 = *(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_localSearch);
      *(v1 + OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_localSearch) = v5;
      v7 = v5;

      if (v7)
      {
        v8 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v9 = swift_allocObject();
        *(v9 + 16) = v8;
        *(v9 + 24) = a1;
        aBlock[4] = sub_1006EB4E4;
        aBlock[5] = v9;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100825A38;
        aBlock[3] = &unk_100A791E8;
        v10 = _Block_copy(aBlock);

        [v7 startWithCompletionHandler:v10];

        _Block_release(v10);
      }

      else
      {
      }
    }
  }
}

void sub_1006E253C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v39 = a1;
  v6 = type metadata accessor for NWPath.Status();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for NWPath();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v38 = a2;
    if (a2)
    {
      sub_1006DC0A4();
      NWPathMonitor.currentPath.getter();

      NWPath.status.getter();
      (*(v14 + 8))(v16, v13);
      (*(v7 + 104))(v10, enum case for NWPath.Status.unsatisfied(_:), v6);
      sub_1006E9C54(&unk_100AE5DE0, &type metadata accessor for NWPath.Status);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v7 + 8);
      v20(v10, v6);
      v20(v12, v6);
      if ((v19 & 1) == 0)
      {
        if (qword_100AD0148 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_10000617C(v21, qword_100AEDDE0);
        swift_errorRetain();
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v40[0] = v26;
          *v24 = 136315394;
          if (qword_100AD0150 != -1)
          {
            swift_once();
          }

          v27 = type metadata accessor for UUID();
          sub_10000617C(v27, qword_100AEDDF8);
          sub_1006E9C54(&qword_100AE19B0, &type metadata accessor for UUID);
          v28 = dispatch thunk of CustomStringConvertible.description.getter();
          v30 = sub_100008458(v28, v29, v40);

          *(v24 + 4) = v30;
          *(v24 + 12) = 2112;
          swift_errorRetain();
          v31 = _swift_stdlib_bridgeErrorToNSError();
          *(v24 + 14) = v31;
          *v25 = v31;
          _os_log_impl(&_mh_execute_header, v22, v23, "%s location picker cannot perform POI search even with internet due to error: %@. Location picker will avoid using segmented control, and instead, use the In My Journal title label.", v24, 0x16u);
          sub_100004F84(v25, &unk_100AD4BB0);

          sub_10000BA7C(v26);
        }

        sub_1006E2AE4();
      }
    }

    else if (a4)
    {
      if (a4 == 1)
      {
        if (v39)
        {
          v32 = [v39 mapItems];
          sub_1000065A8(0, &qword_100AD5A90);
          v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v33 = 0;
        }

        v36 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearCurrentPlaces;
        swift_beginAccess();
        *&v18[v36] = v33;

        sub_1006DB2C8();
      }
    }

    else
    {
      if (v39)
      {
        v34 = [v39 mapItems];
        sub_1000065A8(0, &qword_100AD5A90);
        v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v35 = 0;
      }

      v37 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_nearPhotoPlaces;
      swift_beginAccess();
      *&v18[v37] = v35;

      sub_1006DBAEC();
    }
  }
}

id sub_1006E2AE4()
{
  v1 = OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_isPOISearchAvailable;
  v2 = v0[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_isPOISearchAvailable];
  v0[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_isPOISearchAvailable] = 0;
  if (v2 == 1)
  {
    result = [v0 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = result;
    [result setNeedsUpdateConstraints];
  }

  v0[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_currentLocOption] = 2;
  v5 = *&v0[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_emptyJournaledLocationView];
  v6 = sub_1006E46DC();
  v7 = 1;
  [*&v0[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_progressView] setHidden:1];
  v8 = v6[2];

  if (!v8)
  {
    v7 = v0[v1];
  }

  [v5 setHidden:v7];

  v9 = *&v0[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_collectionView];

  return [v9 reloadData];
}