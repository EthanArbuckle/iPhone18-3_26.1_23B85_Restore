uint64_t sub_100071014@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 8);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = result;
    v7 = v4 + 32;
    while (1)
    {
      sub_10001EAFC(v7, &v10);
      v8 = v11;
      v9 = v12;
      sub_10001EAB8(&v10, v11);
      if ((*(v9 + 16))(v8, v9) == v6)
      {
        return sub_10000D0A0(&v10, a2);
      }

      result = sub_10000CE78(&v10);
      v7 += 40;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1000710DC(uint64_t a1)
{
  sub_100071014(a1, v22);
  if (v23)
  {
    sub_100001AB4(&qword_100175488, &unk_100122160);
    if (swift_dynamicCast())
    {
LABEL_3:
      v14 = v18;
      v15 = v19;
      v16 = v20;
      v17 = v21;
      sub_1000383FC(&v14);
      return *(&v14 + 1);
    }
  }

  else
  {
    sub_10000D040(v22, &qword_100176880, &qword_100122158);
  }

  sub_100071014(a1, &v14);
  if (!*(&v15 + 1))
  {
    v12 = &v14;
LABEL_16:
    sub_10000D040(v12, &qword_100176880, &qword_100122158);
    return 0;
  }

  sub_100001AB4(&qword_100175488, &unk_100122160);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = *(&v20 + 1);
    v5 = *(v1 + 8);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = v5 + 32;
      while (1)
      {
        sub_10001EAFC(v8, &v14);
        sub_10000D0A0(&v14, v22);
        result = swift_dynamicCast();
        if (result)
        {

          v9 = 1;
        }

        else
        {
          v9 = 0;
        }

        v10 = __OFADD__(v7, v9);
        v7 += v9;
        if (v10)
        {
          break;
        }

        v8 += 40;
        if (!--v6)
        {
          v11 = v7 > 1;
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_28;
    }

    v11 = 0;
LABEL_18:
    v13 = *(v4 + 16);
    if (v13 != 1 && !v11)
    {

      return 0;
    }

    if (!v13)
    {
LABEL_28:
      __break(1u);
      return result;
    }

    sub_100071014(*(v4 + 32), v22);

    if (v23)
    {
      if (swift_dynamicCast())
      {
        goto LABEL_3;
      }

      return 0;
    }

    v12 = v22;
    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_10007135C(uint64_t a1, void *a2, uint64_t a3)
{
  v223 = a3;
  v224 = type metadata accessor for LogID(0);
  v6 = *(*(v224 - 8) + 64);
  __chkstk_darwin(v224);
  v227 = &v208 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001EAFC(a1, &v266);
  v338 = a2;
  v265 = _swiftEmptyArrayStorage;
  v226 = v3;
  if (*(v3 + 4))
  {

    v9 = sub_10009B718(v8);
  }

  else
  {

    v9 = &_swiftEmptySetSingleton;
  }

  v264 = v9;
  sub_10000D0B8(&v266, &v236, &qword_100176888, &qword_100122170);
  if (!*(&v237 + 1))
  {
LABEL_167:
    sub_10000D040(&v236, &qword_100176888, &qword_100122170);

    v200 = *(v9 + 2);
    if (v200)
    {
      v201 = sub_1001193F0(*(v9 + 2), 0);
      v202 = sub_10011B610(&v236, v201 + 32, v200, v9);
      result = sub_100022644();
      if (v202 != v200)
      {
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
        goto LABEL_200;
      }

      v203 = v226;
      v204 = *(v226 + 4);

      *(v203 + 4) = v201;
    }

    else
    {
    }

    v205 = v265;
    sub_10000D040(&v266, &qword_100176888, &qword_100122170);
    return v205;
  }

  v209 = "h different Clock Sources";
  v210 = "kipping input source ";
  v215 = "with a circular reference";
  v217 = "pping input source ";
  v212 = "same Clock Source";
  v213 = "ng input source ";
  v211 = "AUASDCore/ADC4Descriptors.swift";
  v216 = xmmword_10011DE90;
  v10 = v227;
LABEL_9:
  sub_10000D040(&v236, &qword_100176888, &qword_100122170);
  sub_10000D0B8(&v266, &v228, &qword_100176888, &qword_100122170);
  if (*(&v229 + 1))
  {
    sub_100001AB4(&qword_1001754D8, &qword_100120F68);
    if (swift_dynamicCast())
    {
      v278 = v238;
      v279 = v239;
      v280 = v240;
      v281 = v241;
      v277[0] = v236;
      v277[1] = v237;
      result = sub_1000702B8(v277, v223, sub_10006A3FC);
      if ((result & 1) == 0)
      {
        if (qword_100173CB8 != -1)
        {
          swift_once();
        }

        v12 = sub_10000A1BC(v224, qword_1001794F0);
        sub_10000A2A4(v12, v10);
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v13, qword_100179508);
        sub_100039F58(1, v10, 0xD000000000000017, (v212 | 0x8000000000000000));
        result = sub_10000C9D0(v10);
      }

      v14 = v226[5];
      v273 = v226[4];
      v274 = v14;
      v275 = v226[6];
      v276 = *(v226 + 14);
      v15 = v226[1];
      v269 = *v226;
      v270 = v15;
      v16 = v226[3];
      v271 = v226[2];
      v272 = v16;
      if ((v279 & 1) == 0)
      {
        sub_100071014(*(&v278 + 1), &v228);
        sub_100076AD0(v277);
        if (*(&v229 + 1))
        {
          sub_100001AB4(&qword_100175488, &unk_100122160);
          if ((swift_dynamicCast() & 1) == 0)
          {
            *&v238 = 0;
            v236 = 0u;
            v237 = 0u;
          }
        }

        else
        {
          sub_10000D040(&v228, &qword_100176880, &qword_100122158);
          v236 = 0u;
          v237 = 0u;
          *&v238 = 0;
        }

LABEL_7:
        sub_100076870(&v236, &v266, &qword_100176888, &qword_100122170);
        goto LABEL_8;
      }

      goto LABEL_199;
    }
  }

  else
  {
    sub_10000D040(&v228, &qword_100176888, &qword_100122170);
  }

  sub_10000D0B8(&v266, v262, &qword_100176888, &qword_100122170);
  if (v263)
  {
    sub_100001AB4(&qword_1001754D8, &qword_100120F68);
    if (swift_dynamicCast())
    {
      v259 = v249;
      v17 = v251;
      *&v260 = v250;
      v246 = v254;
      v247 = v255;
      v248 = v256;
      v244 = v252;
      v245 = v253;
      v18 = *(v223 + 24);
      if (v251 != v18)
      {
        v19 = v226[5];
        v294 = v226[4];
        v295 = v19;
        v296 = v226[6];
        v297 = *(v226 + 14);
        v20 = v226[1];
        v290 = *v226;
        v291 = v20;
        v21 = v226[3];
        v292 = v226[2];
        v293 = v21;
        v22 = sub_1000710DC(v251);
        if ((v23 & 1) == 0)
        {
          v24 = v22;
          v25 = v226[5];
          v286 = v226[4];
          v287 = v25;
          v288 = v226[6];
          v289 = *(v226 + 14);
          v26 = v226[1];
          v282 = *v226;
          v283 = v26;
          v27 = v226[3];
          v284 = v226[2];
          v285 = v27;
          v28 = sub_1000710DC(v18);
          if ((v29 & 1) == 0)
          {
            if (v24 == v28)
            {
              if (qword_100173CB8 != -1)
              {
                swift_once();
              }

              v30 = sub_10000A1BC(v224, qword_1001794F0);
              sub_10000A2A4(v30, v10);
              if (qword_100173CC0 != -1)
              {
                swift_once();
              }

              v31 = type metadata accessor for AUALog(0);
              sub_10000A1BC(v31, qword_100179508);
              sub_100039AA0(1, v10, 0xD000000000000051, (v209 | 0x8000000000000000));
              sub_10000C9D0(v10);
              v32 = 67;
            }

            else
            {
              if (qword_100173CB8 != -1)
              {
                swift_once();
              }

              v179 = sub_10000A1BC(v224, qword_1001794F0);
              sub_10000A2A4(v179, v10);
              if (qword_100173CC0 != -1)
              {
                swift_once();
              }

              v180 = type metadata accessor for AUALog(0);
              sub_10000A1BC(v180, qword_100179508);
              sub_100039F58(1, v10, 0xD000000000000029, (v210 | 0x8000000000000000));
              sub_10000C9D0(v10);
              v32 = 68;
            }

            sub_10009B498(&v236, v32);
          }
        }
      }

      sub_100001AB4(&qword_1001754C8, &unk_100123910);
      v181 = swift_allocObject();
      v182 = v338;
      v183 = v223;
      v184 = *(v223 + 16);
      v228 = *v223;
      v229 = v184;
      v185 = *(v223 + 48);
      v230 = *(v223 + 32);
      v231 = v185;
      v186 = *(v223 + 80);
      v232 = *(v223 + 64);
      v233 = v186;
      v235 = v260;
      v234 = v259;
      v238 = v230;
      v239 = v231;
      v236 = v228;
      v237 = v229;
      v187 = v260;
      v243 = v260;
      v241 = v186;
      v242 = v259;
      v240 = v232;
      v188 = v232;
      v189 = v259;
      *(v181 + 112) = v186;
      *(v181 + 128) = v189;
      v190 = v236;
      v191 = v237;
      *(v181 + 16) = v216;
      *(v181 + 32) = v190;
      v192 = v238;
      v193 = v239;
      *(v181 + 48) = v191;
      *(v181 + 64) = v192;
      *(v181 + 80) = v193;
      *(v181 + 96) = v188;
      *(v181 + 144) = v187;
      *(v181 + 152) = v17;
      v194 = v248;
      v195 = v247;
      *(v181 + 192) = v246;
      *(v181 + 208) = v195;
      v196 = v245;
      *(v181 + 160) = v244;
      *(v181 + 176) = v196;
      *(v181 + 224) = v194;
      *(v181 + 232) = v182;
      v197 = v265;
      v198 = *(v265 + 2);

      sub_1000766B0(v183, &v228);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v199 = *(v197 + 3) >> 1, v199 <= v198))
      {
        result = sub_100024A10(result, v198 + 1, 1, v197);
        v197 = result;
        v199 = *(result + 24) >> 1;
      }

      v10 = v227;
      if (v199 > *(v197 + 2))
      {
        swift_arrayInitWithCopy();

        ++*(v197 + 2);
        v265 = v197;
        sub_10000D040(&v266, &qword_100176888, &qword_100122170);
        v266 = 0u;
        v267 = 0u;
        v268 = 0;
        goto LABEL_8;
      }

      goto LABEL_195;
    }
  }

  else
  {
    sub_10000D040(v262, &qword_100176888, &qword_100122170);
  }

  sub_10000D0B8(&v266, v262, &qword_100176888, &qword_100122170);
  if (v263)
  {
    v218 = sub_100001AB4(&qword_1001754D8, &qword_100120F68);
    if (swift_dynamicCast())
    {
      v230 = v238;
      v231 = v239;
      v232 = v240;
      *&v233 = v241;
      v228 = v236;
      v229 = v237;
      v33 = v338;
      sub_100001AB4(&qword_1001754D0, &qword_100122190);
      v34 = swift_allocObject();
      *(v34 + 16) = v216;
      *(v34 + 56) = &type metadata for MixerUnit;
      *(v34 + 64) = sub_100023394();
      v35 = swift_allocObject();
      *(v34 + 32) = v35;
      v36 = v239;
      *(v35 + 48) = v238;
      *(v35 + 64) = v36;
      *(v35 + 80) = v240;
      *(v35 + 96) = v241;
      v37 = v237;
      *(v35 + 16) = v236;
      *(v35 + 32) = v37;
      v38 = v33[2];

      sub_10002317C(&v228, &v249);
      result = swift_isUniquelyReferenced_nonNull_native();
      v39 = v38;
      if (!result || (v40 = v33[3] >> 1, v41 = v33, v40 <= v39))
      {
        result = sub_1000249EC(result, v39 + 1, 1, v33);
        v41 = result;
        v40 = *(result + 24) >> 1;
      }

      v214 = v33;
      if (v40 <= v41[2])
      {
        goto LABEL_196;
      }

      v222 = (v41 + 4);
      swift_arrayInitWithCopy();

      ++v41[2];
      v42 = *(&v231 + 1);

      result = sub_100076A7C(&v228);
      v219 = *(v42 + 16);
      if (v219)
      {
        v43 = 0;
        v44 = v41[2];
        v220 = v42;
        v221 = v42 + 32;
        v45 = -v44;
        while (1)
        {
          if (v43 >= *(v42 + 16))
          {
            goto LABEL_192;
          }

          v47 = v222;
          v48 = *(v221 + 8 * v43++);
          v49 = -1;
          while (v45 + v49 != -1)
          {
            if (++v49 >= v41[2])
            {
              __break(1u);
              goto LABEL_185;
            }

            v50 = v47 + 40;
            sub_10001EAFC(v47, &v249);
            v51 = v251;
            v52 = v252;
            sub_10001EAB8(&v249, v251);
            v53 = (*(*(v52 + 8) + 16))(v51);
            sub_10000CE78(&v249);
            v47 = v50;
            if (v53 == v48)
            {
              *&v249 = 0;
              *(&v249 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(66);
              v54._countAndFlagsBits = 0xD000000000000040;
              v54._object = (v215 | 0x8000000000000000);
              String.append(_:)(v54);
              *&v259 = v48;
              v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v55);

              v56 = v249;
              if (qword_100173CB8 != -1)
              {
                swift_once();
              }

              v57 = sub_10000A1BC(v224, qword_1001794F0);
              v10 = v227;
              sub_10000A2A4(v57, v227);
              if (qword_100173CC0 != -1)
              {
                swift_once();
              }

              v46 = type metadata accessor for AUALog(0);
              sub_10000A1BC(v46, qword_100179508);
              sub_100039F58(1, v10, v56, *(&v56 + 1));

              sub_10000C9D0(v10);
              result = sub_10009B498(&v249, 104);
              goto LABEL_43;
            }
          }

          v58 = v226[5];
          v302 = v226[4];
          v303 = v58;
          v304 = v226[6];
          v305 = *(v226 + 14);
          v59 = v226[1];
          v298 = *v226;
          v299 = v59;
          v60 = v226[3];
          v300 = v226[2];
          v301 = v60;
          sub_100071014(v48, v257);
          if (!v258)
          {
            break;
          }

          sub_100001AB4(&qword_100175488, &unk_100122160);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v261 = 0;
            v259 = 0u;
            v260 = 0u;
LABEL_174:

LABEL_175:
            v205 = v264;
            goto LABEL_182;
          }

          if (!*(&v260 + 1))
          {
            goto LABEL_174;
          }

          sub_10000D0A0(&v259, &v249);
          v61 = v225;
          v62 = sub_10007135C(&v249, v41, v223);
          v225 = v61;
          if (v61)
          {
            goto LABEL_185;
          }

          sub_10007E37C(v62);
          result = sub_10000CE78(&v249);
          v10 = v227;
LABEL_43:
          v42 = v220;
          if (v43 == v219)
          {
            goto LABEL_148;
          }
        }

        sub_10000D040(v257, &qword_100176880, &qword_100122158);
        v259 = 0u;
        v260 = 0u;
        v261 = 0;
        goto LABEL_175;
      }

      goto LABEL_150;
    }
  }

  else
  {
    sub_10000D040(v262, &qword_100176888, &qword_100122170);
  }

  sub_10000D0B8(&v266, v262, &qword_100176888, &qword_100122170);
  if (v263)
  {
    v218 = sub_100001AB4(&qword_1001754D8, &qword_100120F68);
    if (swift_dynamicCast())
    {
      v230 = v238;
      v231 = v239;
      v232 = v240;
      v233 = v241;
      v228 = v236;
      v229 = v237;
      v63 = v338;
      sub_100001AB4(&qword_1001754D0, &qword_100122190);
      v64 = swift_allocObject();
      *(v64 + 16) = v216;
      *(v64 + 56) = &type metadata for ExtensionUnit;
      *(v64 + 64) = sub_1000769D4();
      v65 = swift_allocObject();
      *(v64 + 32) = v65;
      v66 = v239;
      v65[3] = v238;
      v65[4] = v66;
      v67 = v241;
      v65[5] = v240;
      v65[6] = v67;
      v68 = v237;
      v65[1] = v236;
      v65[2] = v68;
      v69 = v63[2];

      sub_10007651C(&v228, &v249);
      result = swift_isUniquelyReferenced_nonNull_native();
      v70 = v69;
      if (!result || (v71 = v63[3] >> 1, v72 = v63, v71 <= v70))
      {
        result = sub_1000249EC(result, v70 + 1, 1, v63);
        v72 = result;
        v71 = *(result + 24) >> 1;
      }

      v214 = v63;
      if (v71 <= v72[2])
      {
        goto LABEL_197;
      }

      v222 = (v72 + 4);
      swift_arrayInitWithCopy();

      ++v72[2];
      v73 = v231;

      result = sub_100076A28(&v228);
      v221 = *(v73 + 16);
      if (!v221)
      {
LABEL_150:

        v10 = v227;
LABEL_151:
        sub_10000D040(&v266, &qword_100176888, &qword_100122170);
        v266 = 0u;
        v267 = 0u;
        v268 = 0;
        goto LABEL_8;
      }

      v74 = 0;
      v75 = v72[2];
      v219 = v73;
      v220 = v73 + 32;
      v76 = -v75;
      while (2)
      {
        if (v74 < *(v73 + 16))
        {
          v77 = *(v220 + 8 * v74++);
          v78 = -1;
          v79 = v222;
          while (v76 + v78 != -1)
          {
            if (++v78 >= v72[2])
            {
              __break(1u);
              goto LABEL_179;
            }

            v80 = v79 + 40;
            sub_10001EAFC(v79, &v249);
            v81 = v251;
            v82 = v252;
            sub_10001EAB8(&v249, v251);
            v83 = (*(*(v82 + 8) + 16))(v81);
            sub_10000CE78(&v249);
            v79 = v80;
            if (v83 == v77)
            {
              *&v249 = 0;
              *(&v249 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(71);
              v84._countAndFlagsBits = 0xD000000000000045;
              v84._object = (v217 | 0x8000000000000000);
              String.append(_:)(v84);
              *&v259 = v77;
              v85._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v85);

              v86 = v249;
              if (qword_100173CB8 != -1)
              {
                swift_once();
              }

              v87 = sub_10000A1BC(v224, qword_1001794F0);
              v10 = v227;
              sub_10000A2A4(v87, v227);
              if (qword_100173CC0 != -1)
              {
                swift_once();
              }

              v88 = type metadata accessor for AUALog(0);
              sub_10000A1BC(v88, qword_100179508);
              sub_100039F58(1, v10, v86, *(&v86 + 1));

              sub_10000C9D0(v10);
              result = sub_10009B498(&v249, 104);
              goto LABEL_69;
            }
          }

          v89 = v226[5];
          v310 = v226[4];
          v311 = v89;
          v312 = v226[6];
          v313 = *(v226 + 14);
          v90 = v226[1];
          v306 = *v226;
          v307 = v90;
          v91 = v226[3];
          v308 = v226[2];
          v309 = v91;
          sub_100071014(v77, v257);
          if (v258)
          {
            sub_100001AB4(&qword_100175488, &unk_100122160);
            v92 = swift_dynamicCast();
            v10 = v227;
            if (v92)
            {
              if (*(&v260 + 1))
              {
                sub_10000D0A0(&v259, &v249);
                v93 = v225;
                v94 = sub_10007135C(&v249, v72, v223);
                v225 = v93;
                if (v93)
                {
                  goto LABEL_185;
                }

                sub_10007E37C(v94);
                result = sub_10000CE78(&v249);
LABEL_69:
                v73 = v219;
                if (v74 != v221)
                {
                  continue;
                }

LABEL_148:

                goto LABEL_151;
              }
            }

            else
            {
              v261 = 0;
              v259 = 0u;
              v260 = 0u;
            }
          }

          else
          {
            sub_10000D040(v257, &qword_100176880, &qword_100122158);
            v259 = 0u;
            v260 = 0u;
            v261 = 0;
            v10 = v227;
          }

          result = sub_10000D040(&v259, &qword_100176888, &qword_100122170);
          goto LABEL_69;
        }

        break;
      }

LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
      goto LABEL_193;
    }
  }

  else
  {
    sub_10000D040(v262, &qword_100176888, &qword_100122170);
  }

  sub_10000D0B8(&v266, v262, &qword_100176888, &qword_100122170);
  if (v263)
  {
    v218 = sub_100001AB4(&qword_1001754D8, &qword_100120F68);
    if (swift_dynamicCast())
    {
      v230 = v238;
      v231 = v239;
      *&v232 = v240;
      v228 = v236;
      v229 = v237;
      v95 = v338;
      sub_100001AB4(&qword_1001754D0, &qword_100122190);
      v96 = swift_allocObject();
      *(v96 + 16) = v216;
      *(v96 + 56) = &type metadata for SelectorUnit;
      *(v96 + 64) = sub_100026998();
      v97 = swift_allocObject();
      *(v96 + 32) = v97;
      v98 = v239;
      *(v97 + 48) = v238;
      *(v97 + 64) = v98;
      *(v97 + 80) = v240;
      v99 = v237;
      *(v97 + 16) = v236;
      *(v97 + 32) = v99;
      *&v259 = v95;
      v214 = v95;

      sub_1000267DC(&v228, &v249);
      sub_10007E274(v96);
      v100 = v259;
      v101 = v231;

      result = sub_100076980(&v228);
      v219 = *(v101 + 16);
      if (v219)
      {
        v102 = 0;
        v103 = *(v100 + 16);
        v221 = v100 + 32;
        v222 = v101 + 32;
        v104 = -v103;
        v220 = v101;
LABEL_93:
        if (v102 >= *(v101 + 16))
        {
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
          goto LABEL_198;
        }

        result = v221;
        v106 = *(v222 + 8 * v102++);
        v107 = -1;
        while (v104 + v107 != -1)
        {
          if (++v107 >= *(v100 + 16))
          {
            __break(1u);
            goto LABEL_189;
          }

          v108 = result + 40;
          sub_10001EAFC(result, &v249);
          v109 = v251;
          v110 = v252;
          sub_10001EAB8(&v249, v251);
          v111 = (*(*(v110 + 8) + 16))(v109);
          sub_10000CE78(&v249);
          result = v108;
          if (v111 == v106)
          {
            *&v249 = 0;
            *(&v249 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(69);
            v112._countAndFlagsBits = 0xD000000000000043;
            v112._object = (v213 | 0x8000000000000000);
            String.append(_:)(v112);
            *&v259 = v106;
            v113._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v113);

            v114 = v249;
            if (qword_100173CB8 != -1)
            {
              swift_once();
            }

            v115 = sub_10000A1BC(v224, qword_1001794F0);
            v10 = v227;
            sub_10000A2A4(v115, v227);
            if (qword_100173CC0 != -1)
            {
              swift_once();
            }

            v105 = type metadata accessor for AUALog(0);
            sub_10000A1BC(v105, qword_100179508);
            sub_100039F58(1, v10, v114, *(&v114 + 1));

            sub_10000C9D0(v10);
            result = sub_10009B498(&v249, 104);
LABEL_92:
            v101 = v220;
            if (v102 == v219)
            {
              goto LABEL_154;
            }

            goto LABEL_93;
          }
        }

        v116 = v226[5];
        v318 = v226[4];
        v319 = v116;
        v320 = v226[6];
        v321 = *(v226 + 14);
        v117 = v226[1];
        v314 = *v226;
        v315 = v117;
        v118 = v226[3];
        v316 = v226[2];
        v317 = v118;
        sub_100071014(v106, v257);
        if (!v258)
        {
          goto LABEL_177;
        }

        sub_100001AB4(&qword_100175488, &unk_100122160);
        if (swift_dynamicCast())
        {
          if (!*(&v260 + 1))
          {
            goto LABEL_180;
          }

          sub_10000D0A0(&v259, &v249);
          v119 = v225;
          v120 = sub_10007135C(&v249, v100, v223);
          v225 = v119;
          if (!v119)
          {
            sub_10007E37C(v120);
            result = sub_10000CE78(&v249);
            v10 = v227;
            goto LABEL_92;
          }

LABEL_185:

          sub_10000CE78(&v249);

          v205 = v264;

          goto LABEL_186;
        }

LABEL_179:
        v261 = 0;
        v259 = 0u;
        v260 = 0u;
LABEL_180:

LABEL_181:
        v205 = v264;
LABEL_182:

        sub_10000D040(&v259, &qword_100176888, &qword_100122170);
        sub_10000CA2C();
        v206 = swift_allocError();
        *v207 = 50;
        *(v207 + 8) = 0;
        *(v207 + 16) = 0xE000000000000000;
        v225 = v206;
        swift_willThrow();
LABEL_186:
        sub_10000D040(&v266, &qword_100176888, &qword_100122170);
        return v205;
      }

      goto LABEL_154;
    }
  }

  else
  {
    sub_10000D040(v262, &qword_100176888, &qword_100122170);
  }

  sub_10000D0B8(&v266, v262, &qword_100176888, &qword_100122170);
  if (v263)
  {
    v218 = sub_100001AB4(&qword_1001754D8, &qword_100120F68);
    result = swift_dynamicCast();
    if (result)
    {
      v230 = v238;
      v231 = v239;
      v232 = v240;
      v228 = v236;
      v229 = v237;
      v121 = v338;
      sub_100001AB4(&qword_1001754D0, &qword_100122190);
      v122 = swift_allocObject();
      *(v122 + 16) = v216;
      *(v122 + 56) = &type metadata for ProcessingUnit;
      *(v122 + 64) = sub_1000768D8();
      v123 = swift_allocObject();
      *(v122 + 32) = v123;
      v124 = v239;
      v123[3] = v238;
      v123[4] = v124;
      v123[5] = v240;
      v125 = v237;
      v123[1] = v236;
      v123[2] = v125;
      *&v259 = v121;
      v214 = v121;

      sub_100076430(&v228, &v249);
      sub_10007E274(v122);
      v126 = v259;
      v127 = *(&v231 + 1);

      result = sub_10007692C(&v228);
      v219 = *(v127 + 16);
      if (v219)
      {
        v128 = 0;
        v129 = *(v126 + 16);
        v221 = v126 + 32;
        v222 = v127 + 32;
        v130 = -v129;
        v220 = v127;
LABEL_114:
        if (v128 >= *(v127 + 16))
        {
          goto LABEL_194;
        }

        result = v221;
        v132 = *(v222 + 8 * v128++);
        v133 = -1;
        while (v130 + v133 != -1)
        {
          if (++v133 >= *(v126 + 16))
          {
LABEL_189:
            __break(1u);
            goto LABEL_190;
          }

          v134 = result + 40;
          sub_10001EAFC(result, &v249);
          v135 = v251;
          v136 = v252;
          sub_10001EAB8(&v249, v251);
          v137 = (*(*(v136 + 8) + 16))(v135);
          sub_10000CE78(&v249);
          result = v134;
          if (v137 == v132)
          {
            *&v249 = 0;
            *(&v249 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(66);
            v138._countAndFlagsBits = 0xD000000000000040;
            v138._object = (v215 | 0x8000000000000000);
            String.append(_:)(v138);
            *&v259 = v132;
            v139._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v139);

            v140 = v249;
            if (qword_100173CB8 != -1)
            {
              swift_once();
            }

            v141 = sub_10000A1BC(v224, qword_1001794F0);
            v10 = v227;
            sub_10000A2A4(v141, v227);
            if (qword_100173CC0 != -1)
            {
              swift_once();
            }

            v131 = type metadata accessor for AUALog(0);
            sub_10000A1BC(v131, qword_100179508);
            sub_100039F58(1, v10, v140, *(&v140 + 1));

            sub_10000C9D0(v10);
            result = sub_10009B498(&v249, 104);
LABEL_113:
            v127 = v220;
            if (v128 == v219)
            {
              goto LABEL_154;
            }

            goto LABEL_114;
          }
        }

        v142 = v226[5];
        v326 = v226[4];
        v327 = v142;
        v328 = v226[6];
        v329 = *(v226 + 14);
        v143 = v226[1];
        v322 = *v226;
        v323 = v143;
        v144 = v226[3];
        v324 = v226[2];
        v325 = v144;
        sub_100071014(v132, v257);
        if (!v258)
        {
LABEL_177:

          sub_10000D040(v257, &qword_100176880, &qword_100122158);
          v259 = 0u;
          v260 = 0u;
          v261 = 0;
          goto LABEL_181;
        }

        sub_100001AB4(&qword_100175488, &unk_100122160);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_179;
        }

        if (*(&v260 + 1))
        {
          sub_10000D0A0(&v259, &v249);
          v145 = v225;
          v146 = sub_10007135C(&v249, v126, v223);
          v225 = v145;
          if (!v145)
          {
            sub_10007E37C(v146);
            result = sub_10000CE78(&v249);
            v10 = v227;
            goto LABEL_113;
          }

          goto LABEL_185;
        }

        goto LABEL_180;
      }

LABEL_154:

      sub_10000D040(&v266, &qword_100176888, &qword_100122170);
      v266 = 0u;
      v267 = 0u;
      v268 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    result = sub_10000D040(v262, &qword_100176888, &qword_100122170);
  }

  v147 = v338;
  v222 = v338[2];
  if (v222)
  {
    v148 = 0;
    v149 = (v338 + 4);
    v221 = v338;
    do
    {
      if (v148 >= v147[2])
      {
        goto LABEL_191;
      }

      sub_10001EAFC(v149, &v236);
      v151 = *(&v237 + 1);
      v150 = v238;
      sub_10001EAB8(&v236, *(&v237 + 1));
      v152 = (*(*(v150 + 8) + 16))(v151);
      v153 = *(&v267 + 1);
      if (*(&v267 + 1))
      {
        v154 = v152;
        v155 = v268;
        v156 = sub_10001EAB8(&v266, *(&v267 + 1));
        v157 = *(v153 - 8);
        v158 = *(v157 + 64);
        __chkstk_darwin(v156);
        v160 = &v208 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v157 + 16))(v160);
        v161 = (*(*(v155 + 8) + 16))(v153);
        (*(v157 + 8))(v160, v153);
        result = sub_10000CE78(&v236);
        if (v154 == v161)
        {
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v162 = sub_10000A1BC(v224, qword_1001794F0);
          v10 = v227;
          sub_10000A2A4(v162, v227);
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v163 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v163, qword_100179508);
          sub_100039F58(1, v10, 0xD000000000000029, (v211 | 0x8000000000000000));
          sub_10000C9D0(v10);
          sub_10009B498(&v236, 104);
LABEL_8:
          sub_10000D0B8(&v266, &v236, &qword_100176888, &qword_100122170);
          if (!*(&v237 + 1))
          {
            v9 = v264;
            goto LABEL_167;
          }

          goto LABEL_9;
        }
      }

      else
      {
        result = sub_10000CE78(&v236);
      }

      ++v148;
      v149 += 40;
      v147 = v221;
    }

    while (v222 != v148);
  }

  sub_100001AB4(&qword_1001754D0, &qword_100122190);
  v164 = swift_allocObject();
  *(v164 + 16) = v216;
  result = sub_10000D0B8(&v266, &v236, &qword_100176888, &qword_100122170);
  if (!*(&v237 + 1))
  {
LABEL_200:
    __break(1u);
    goto LABEL_201;
  }

  sub_10000D0A0(&v236, v164 + 32);
  result = sub_10007E274(v164);
  v165 = v226[5];
  v334 = v226[4];
  v335 = v165;
  v336 = v226[6];
  v337 = *(v226 + 14);
  v166 = v226[1];
  v330 = *v226;
  v331 = v166;
  v167 = v226[3];
  v332 = v226[2];
  v333 = v167;
  v168 = *(&v267 + 1);
  if (!*(&v267 + 1))
  {
LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  v169 = v268;
  v170 = sub_10001EAB8(&v266, *(&v267 + 1));
  v171 = *(v168 - 8);
  v172 = *(v171 + 64);
  __chkstk_darwin(v170);
  v174 = &v208 - ((v173 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v171 + 16))(v174);
  v175 = (*(v169 + 16))(v168, v169);
  v177 = v176;
  result = (*(v171 + 8))(v174, v168);
  if ((v177 & 1) == 0)
  {
    sub_100071014(v175, &v228);
    if (*(&v229 + 1))
    {
      sub_100001AB4(&qword_100175488, &unk_100122160);
      sub_100001AB4(&qword_1001754D8, &qword_100120F68);
      v178 = swift_dynamicCast();
      v10 = v227;
      if ((v178 & 1) == 0)
      {
        *&v238 = 0;
        v236 = 0u;
        v237 = 0u;
      }
    }

    else
    {
      sub_10000D040(&v228, &qword_100176880, &qword_100122158);
      v236 = 0u;
      v237 = 0u;
      *&v238 = 0;
      v10 = v227;
    }

    goto LABEL_7;
  }

LABEL_202:
  __break(1u);
  return result;
}

uint64_t sub_100073638@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 8);
  v5 = *(v4 + 16);
  if (v5)
  {
    v7 = _swiftEmptyArrayStorage;
    v8 = v4 + 32;
    do
    {
      sub_10001EAFC(v8, v49);
      sub_10000D0A0(v49, v48);
      sub_100001AB4(&qword_100175488, &unk_100122160);
      if (swift_dynamicCast())
      {
        v38 = v45;
        v39 = v46;
        v40 = v47;
        v34 = v41;
        v35 = v42;
        v36 = v43;
        v37 = v44;
        if (((v41 != 257) ^ a1))
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_100024B38(0, *(v7 + 2) + 1, 1, v7);
          }

          v10 = *(v7 + 2);
          v9 = *(v7 + 3);
          if (v10 >= v9 >> 1)
          {
            v7 = sub_100024B38((v9 > 1), v10 + 1, 1, v7);
          }

          *(v7 + 2) = v10 + 1;
          v11 = &v7[104 * v10];
          v12 = v34;
          v13 = v36;
          *(v11 + 3) = v35;
          *(v11 + 4) = v13;
          *(v11 + 2) = v12;
          v14 = v37;
          v15 = v38;
          v16 = v39;
          *(v11 + 16) = v40;
          *(v11 + 6) = v15;
          *(v11 + 7) = v16;
          *(v11 + 5) = v14;
        }

        else
        {
          sub_10007681C(&v34);
        }
      }

      v8 += 40;
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  if (*(v7 + 2) == 1)
  {
    v17 = *(v7 + 3);
    v41 = *(v7 + 2);
    v42 = v17;
    v18 = *(v7 + 5);
    v43 = *(v7 + 4);
    v44 = v18;
    v19 = *(v7 + 7);
    v45 = *(v7 + 6);
    v46 = v19;
    v20 = *(v7 + 16);
    v47 = v20;
    v32 = v41;
    v33 = v42;
    v30 = v43;
    v31 = v44;
    v28 = v45;
    v29 = v19;
    sub_1000767C0(&v41, &v34);

    v23 = v28;
    v22 = v29;
    v25 = v30;
    v24 = v31;
    v26 = v32;
    v27 = v33;
  }

  else
  {

    v20 = 0;
    v26 = 0uLL;
    v27 = 0uLL;
    v25 = 0uLL;
    v24 = 0uLL;
    v23 = 0uLL;
    v22 = 0uLL;
  }

  *a2 = v26;
  *(a2 + 16) = v27;
  *(a2 + 32) = v25;
  *(a2 + 48) = v24;
  *(a2 + 64) = v23;
  *(a2 + 80) = v22;
  *(a2 + 96) = v20;
  return result;
}

Swift::Int ControlInterface.hashValue.getter()
{
  Hasher.init(_seed:)();
  v0 = sub_100069B44();
  v1 = *(v0 + 2);
  if (v1)
  {
    v2 = (v0 + 32);
    do
    {
      sub_10001EDEC(v2, v4);
      AnyHashable.hash(into:)();
      sub_10001E070(v4);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  return Hasher._finalize()();
}

Swift::Int sub_100073900()
{
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = *(v0 + 14);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return ControlInterface.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ControlInterface()
{
  v1 = v0[5];
  v13 = v0[4];
  v14 = v1;
  v15 = v0[6];
  v16 = *(v0 + 14);
  v2 = v0[1];
  v9 = *v0;
  v10 = v2;
  v3 = v0[3];
  v11 = v0[2];
  v12 = v3;
  v4 = sub_100069B44();
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  else
  {
  }
}

Swift::Int sub_100073A28()
{
  v1 = *(v0 + 80);
  v8[11] = *(v0 + 64);
  v8[12] = v1;
  v8[13] = *(v0 + 96);
  v9 = *(v0 + 112);
  v2 = *(v0 + 16);
  v8[7] = *v0;
  v8[8] = v2;
  v3 = *(v0 + 48);
  v8[9] = *(v0 + 32);
  v8[10] = v3;
  Hasher.init(_seed:)();
  v4 = sub_100069B44();
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      sub_10001EDEC(v6, v8);
      AnyHashable.hash(into:)();
      sub_10001E070(v8);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ControlInterface(__int128 *a1, __int128 *a2)
{
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = *(a1 + 14);
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v13 = a2[2];
  v14 = a2[3];
  v11 = *a2;
  v12 = a2[1];
  v18 = *(a2 + 14);
  v16 = a2[5];
  v17 = a2[6];
  v15 = a2[4];
  return sub_10006FD28() & 1;
}

unint64_t sub_100073B64(uint64_t a1)
{
  result = sub_100073B8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100073B8C()
{
  result = qword_100176830;
  if (!qword_100176830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176830);
  }

  return result;
}

unint64_t sub_100073BE4()
{
  result = qword_100176838;
  if (!qword_100176838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176838);
  }

  return result;
}

uint64_t sub_100073C38(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_100073C5C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100073C88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_100073CD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100073D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for Mirror();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_100001AB4(&qword_100176858, &unk_100122128);
  v22 = a1;
  v23 = a2;
  Mirror.init(reflecting:)();
  Mirror.children.getter();
  v20 = a3;
  v21 = a4;
  v17 = sub_10007403C;
  v18 = &v19;
  v14 = dispatch thunk of _AnySequenceBox._map<A>(_:)();
  if (v4)
  {
    v22 = v4;
    sub_100001AB4(&qword_100177270, &qword_100120A40);
    swift_willThrowTypedImpl();
  }

  (*(v10 + 8))(v13, v9);
  return v14;
}

uint64_t sub_100073EDC@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  result = sub_100076178(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_100073F0C@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr, uint64_t, uint64_t *)@<X1>, _BYTE *a3@<X8>)
{
  result = a2(&v8, a1, &v7);
  if (v3)
  {
    sub_100001AB4(&qword_100177270, &qword_100120A40);
    result = swift_allocError();
    *v6 = v7;
  }

  else
  {
    *a3 = v8;
  }

  return result;
}

unint64_t sub_100073FB0()
{
  result = qword_100176850;
  if (!qword_100176850)
  {
    sub_10001E8F0(&qword_100175CA8, &unk_100124860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176850);
  }

  return result;
}

void *sub_10007403C@<X0>(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  result = v7(&v10, *a1, a1[1], a1 + 2);
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    *a3 = v10;
  }

  return result;
}

uint64_t sub_1000740B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for LogID(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v9 = &v231 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (!v10)
  {
    goto LABEL_258;
  }

  v13 = *(a1 + 32);
  v11 = a1 + 32;
  v12 = v13;
  v14 = *(v11 + 9);
  if (v14 > 0xF || ((1 << v14) & 0xF3FC) == 0)
  {
    goto LABEL_229;
  }

  if (v12[1] != 4)
  {
    sub_10000CA2C();
    swift_allocError();
    v200 = 63;
LABEL_230:
    *v199 = v200;
    *(v199 + 8) = 0;
    *(v199 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }

  if (v12[5] != 1)
  {
    sub_10000CA2C();
    swift_allocError();
    v200 = 64;
    goto LABEL_230;
  }

  if (v12[6] != 1)
  {
    sub_10000CA2C();
    swift_allocError();
    v200 = 65;
    goto LABEL_230;
  }

  v249 = v2;
  v243 = 0;
  v244 = v7;
  v236 = a2;
  v245 = 0;
  v246 = 0;
  v242 = 0;
  v16 = 0;
  v17 = 0;
  v18 = *(v11 + 8);
  v235 = v12[7];
  v253 = &_swiftEmptySetSingleton;
  v254 = &_swiftEmptySetSingleton;
  LODWORD(v251) = v18 | (v14 << 8);
  v241 = "Invalid bRefresh of ";
  v237 = "lid for Data EPs";
  v238 = "ontrol Interface";
  v234 = "Invalid Output Terminal";
  *&v247 = v12;
  *(&v247 + 1) = _swiftEmptyArrayStorage;
  v248 = v9;
  v250 = v10;
  while (1)
  {
    if (v17 == v10)
    {
      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      __break(1u);
LABEL_263:
      __break(1u);
LABEL_264:
      __break(1u);
LABEL_265:
      __break(1u);
LABEL_266:
      __break(1u);
LABEL_267:
      __break(1u);
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
    }

    v19 = v16;
    v20 = v11 + 16 * v17;
    v21 = *v20;
    v22 = *(v20 + 9);
    v23 = *(v20 + 8) | (v22 << 8);
    if (_s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(*v20, v23, v12, v251))
    {
      goto LABEL_12;
    }

    if (v22 > 23)
    {
      break;
    }

    if (v22 > 18)
    {
      if (v22 == 19)
      {
        v242 = v21;
      }

      else
      {
        if (v22 != 20)
        {
          goto LABEL_66;
        }

        v243 = v21;
      }
    }

    else if (v22 == 17)
    {
      if (IOUSBGetEndpointType(v21) == 3)
      {
        if (*v21 != 7 && v235 != 0)
        {
          sub_10009B498(&v269, 33);
        }

        v245 = v21;
      }

      else
      {
        sub_10009B498(&v269, 62);
      }
    }

    else
    {
      if (v22 != 18)
      {
        goto LABEL_66;
      }

      if (IOUSBGetEndpointType(v21) != 3)
      {

        sub_10000CA2C();
        swift_allocError();
        v200 = 62;
        goto LABEL_230;
      }

      if (*(v21 + 7))
      {
        *&v269 = 0;
        *(&v269 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(70);
        v24._countAndFlagsBits = 0xD000000000000014;
        v24._object = (v238 | 0x8000000000000000);
        String.append(_:)(v24);
        LOBYTE(v261) = *(v21 + 7);
        v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v25);

        v26._object = (v241 | 0x8000000000000000);
        v26._countAndFlagsBits = 0xD000000000000030;
        String.append(_:)(v26);
        v27 = v269;
        if (qword_100173CB8 != -1)
        {
          swift_once();
        }

        v28 = sub_10000A1BC(v244, qword_1001794F0);
        v9 = v248;
        sub_10000A2A4(v28, v248);
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v29, qword_100179508);
        sub_100039F58(1, v9, v27, *(&v27 + 1));

        sub_10000C9D0(v9);
        sub_10009B498(&v269, 35);
      }

      if (*(v21 + 8))
      {
        *&v269 = 0;
        *(&v269 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(74);
        v30._countAndFlagsBits = 0xD000000000000018;
        v30._object = (v237 | 0x8000000000000000);
        String.append(_:)(v30);
        LOBYTE(v261) = *(v21 + 8);
        v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v31);

        v32._object = (v241 | 0x8000000000000000);
        v32._countAndFlagsBits = 0xD000000000000030;
        String.append(_:)(v32);
        v33 = v269;
        if (qword_100173CB8 != -1)
        {
          swift_once();
        }

        v34 = sub_10000A1BC(v244, qword_1001794F0);
        v9 = v248;
        sub_10000A2A4(v34, v248);
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v35, qword_100179508);
        sub_100039F58(1, v9, v33, *(&v33 + 1));

        sub_10000C9D0(v9);
        sub_10009B498(&v269, 34);
      }

      v245 = v21;
      v12 = v247;
    }

LABEL_12:
    v10 = v250;
LABEL_13:
    v16 = v19;
LABEL_14:
    if (++v17 == v10)
    {
      v201 = v254;
      v202 = v245;
      if (v245)
      {
        v203 = v16;
        v204 = v254[2];
        if (v204)
        {
          v205 = sub_1001193F0(v254[2], 0);
          v206 = sub_10011B610(&v269, v205 + 32, v204, v201);
          sub_100022644();
          if (v206 != v204)
          {
            __break(1u);
LABEL_229:
            sub_10000CA2C();
            swift_allocError();
            v200 = 49;
            goto LABEL_230;
          }
        }

        else
        {

          v205 = _swiftEmptyArrayStorage;
        }

        v212 = v242;
        v211 = v243;
        if (!v205[2])
        {

          v205 = 0;
        }

        v252 = 1;
        v256[0] = 1;
        *&v261 = v202;
        *(&v261 + 1) = v212;
        *&v262 = v211;
        WORD4(v262) = 256;
        LOBYTE(v263) = 0;
        *(&v263 + 1) = 0;
        LOWORD(v264) = 256;
        *(&v264 + 1) = 0;
        *&v265 = 0;
        *(&v265 + 1) = v205;
        *&v269 = v202;
        *(&v269 + 1) = v212;
        v270 = v211;
        LOWORD(v271) = 256;
        LOBYTE(v272) = 0;
        v273 = 0;
        LOWORD(v274) = 256;
        v275 = 0;
        v276 = 0;
        v277 = v205;
        sub_100022594(&v261, v255);
        sub_1000225F0(&v269);
        v250 = *(&v261 + 1);
        v251 = v261;
        v248 = v262;
        v244 = v263;
        v245 = *(&v262 + 1);
        v243 = *(&v263 + 1);
        v210 = *(&v264 + 1);
        v202 = v264;
        v209 = *(&v265 + 1);
        v208 = v265;
      }

      else
      {
        v203 = v16;

        v250 = 0;
        v251 = 0;
        v248 = 0;
        v244 = 0;
        v245 = 0;
        v243 = 0;
        v208 = 0;
        v209 = 0;
        v210 = 1;
      }

      v213 = v253;
      v214 = v253[2];
      if (v214)
      {
        v215 = sub_1001193F0(v253[2], 0);
        v216 = sub_10011B610(&v269, v215 + 32, v214, v213);
        sub_100022644();
        if (v216 == v214)
        {
LABEL_240:
          v217 = v246 & 1;
          if (!v215[2])
          {

            v215 = 0;
          }

          memset(v256, 0, sizeof(v256));
          v257 = 0;
          v258 = 1;
          v259 = 0;
          v260 = 0;
          sub_10000D040(v256, &qword_100176828, &qword_100121FF0);
          v261 = v247;
          LOBYTE(v262) = BYTE4(v246);
          BYTE1(v262) = v217;
          *(&v262 + 1) = v203;
          *&v263 = v215;
          *(&v263 + 1) = v251;
          *&v264 = v250;
          *(&v264 + 1) = v248;
          *&v265 = v245;
          *(&v265 + 1) = v244;
          *&v266 = v243;
          *(&v266 + 1) = v202;
          *&v267 = v210;
          *(&v267 + 1) = v208;
          v268 = v209;
          v269 = v247;
          LOBYTE(v270) = BYTE4(v246);
          BYTE1(v270) = v217;
          v271 = v203;
          v272 = v215;
          v273 = v251;
          v274 = v250;
          v275 = v248;
          v276 = v245;
          v277 = v244;
          v278 = v243;
          v279 = v202;
          v280 = v210;
          v281 = v208;
          v282 = v209;
          sub_100057294(&v261, v255);
          result = sub_1000572F0(&v269);
          v218 = v266;
          v219 = v236;
          *(v236 + 64) = v265;
          *(v219 + 80) = v218;
          *(v219 + 96) = v267;
          *(v219 + 112) = v268;
          v220 = v262;
          *v219 = v261;
          *(v219 + 16) = v220;
          v221 = v264;
          *(v219 + 32) = v263;
          *(v219 + 48) = v221;
          return result;
        }

        __break(1u);
      }

      v215 = _swiftEmptyArrayStorage;
      goto LABEL_240;
    }
  }

  if (v22 <= 44)
  {
    if (v22 == 24)
    {
      if (*(v21 + 3) != 256)
      {
LABEL_243:

        sub_10000CA2C();
        swift_allocError();
        v200 = 66;
        goto LABEL_230;
      }

      goto LABEL_12;
    }

    if (v22 != 32)
    {
      goto LABEL_66;
    }

    if (*(v21 + 3) != 512)
    {
      goto LABEL_243;
    }

    LODWORD(v246) = *(v21 + 8) | v246;
    v36 = *(v21 + 5);
    goto LABEL_65;
  }

  if (v22 == 45)
  {
    v36 = *(v21 + 3);
LABEL_65:
    HIDWORD(v246) = v36;
    goto LABEL_12;
  }

  if (v22 != 75)
  {
LABEL_66:
    v53 = v249;
    sub_1000A2FA8(v21, v23, &v261);
    v249 = v53;
    if (v53)
    {

LABEL_248:
    }

    if (*(&v262 + 1))
    {
      sub_10000D0A0(&v261, &v269);
      sub_10001EAFC(&v269, &v261);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = v250;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        *(&v247 + 1) = sub_1000249C8(0, *(*(&v247 + 1) + 16) + 1, 1, *(&v247 + 1));
      }

      v56 = *(*(&v247 + 1) + 16);
      v55 = *(*(&v247 + 1) + 24);
      if (v56 >= v55 >> 1)
      {
        *(&v247 + 1) = sub_1000249C8((v55 > 1), v56 + 1, 1, *(&v247 + 1));
      }

      sub_10000CE78(&v269);
      v57 = *(&v247 + 1);
      *(*(&v247 + 1) + 16) = v56 + 1;
      sub_10000D0A0(&v261, v57 + 40 * v56 + 32);
      v9 = v248;
    }

    else
    {
      sub_10000D040(&v261, &qword_100176880, &qword_100122158);
      v10 = v250;
      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v58 = sub_10000A1BC(v244, qword_1001794F0);
      sub_10000A2A4(v58, v9);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v59, qword_100179508);
      sub_100039F58(1, v9, 0xD000000000000030, (v234 | 0x8000000000000000));
      sub_10000C9D0(v9);
      sub_10009B498(&v269, 37);
    }

    goto LABEL_13;
  }

  v37 = sub_1000A60F8(v21, v23);
  if (v38 >> 60 == 15)
  {
    __break(1u);
LABEL_285:
    __DataStorage._length.getter();
LABEL_286:
    __break(1u);
LABEL_287:
    __DataStorage._length.getter();
LABEL_288:
    __break(1u);
LABEL_289:
    __DataStorage._length.getter();
LABEL_290:
    __break(1u);
LABEL_291:
    __DataStorage._length.getter();
LABEL_292:
    __break(1u);
LABEL_293:
    __DataStorage._length.getter();
LABEL_294:
    __break(1u);
LABEL_295:
    __DataStorage._length.getter();
LABEL_296:
    __break(1u);
LABEL_297:
    __DataStorage._length.getter();
LABEL_298:
    __break(1u);
LABEL_299:
    __DataStorage._length.getter();
LABEL_300:
    __break(1u);
LABEL_301:
    __break(1u);
LABEL_302:
    __DataStorage._length.getter();
    __break(1u);
LABEL_303:
    __DataStorage._length.getter();
LABEL_304:
    __break(1u);
LABEL_305:
    __break(1u);
LABEL_306:
    __DataStorage._length.getter();
    __break(1u);
LABEL_307:
    __break(1u);
LABEL_308:
    result = __DataStorage._length.getter();
    __break(1u);
    return result;
  }

  v39 = v37;
  v40 = v38;
  v41 = v38 >> 62;
  v239 = v38;
  v240 = v37;
  if ((v38 >> 62) > 1)
  {
    if (v41 != 2)
    {
      sub_10000CA2C();
      swift_allocError();
      *v224 = 56;
      *(v224 + 8) = 0;
      *(v224 + 16) = 0xE000000000000000;
      swift_willThrow();
      v223 = v39;
      goto LABEL_255;
    }

    v60 = *(v37 + 16);
    v61 = *(v37 + 24);
    v62 = __DataStorage._bytes.getter();
    if (v62)
    {
      v63 = v62;
      v64 = __DataStorage._offset.getter();
      if (__OFSUB__(v60, v64))
      {
        goto LABEL_264;
      }

      v65 = (v60 - v64 + v63);
    }

    else
    {
      v65 = 0;
    }

    v76 = __OFSUB__(v61, v60);
    v77 = v61 - v60;
    if (v76)
    {
      goto LABEL_260;
    }

    v78 = __DataStorage._length.getter();
    if (v78 >= v77)
    {
      v79 = v77;
    }

    else
    {
      v79 = v78;
    }

    if (!v65)
    {

      sub_10000CA2C();
      swift_allocError();
      *v228 = 57;
      *(v228 + 8) = 0;
      *(v228 + 16) = 0xE000000000000000;
      swift_willThrow();
      v226 = v240;
      v227 = v40;
LABEL_252:
      sub_100076B24(v226, v227);
    }

    if (v79 < 4)
    {
LABEL_246:
      sub_10000CA2C();
      swift_allocError();
      *v222 = 56;
      *(v222 + 8) = 0;
      *(v222 + 16) = 0xE000000000000000;
      swift_willThrow();
      v223 = v240;
      goto LABEL_255;
    }

    v80 = sub_1001128D0(v65, 4);
    v82 = v81;
    v83 = v81 >> 62;
    v233 = v80;
    if ((v81 >> 62) > 1)
    {
      if (v83 != 2)
      {
        *&v269 = _swiftEmptyArrayStorage;
        sub_1000470C0(0, 1, 0);
        v84 = v269;
        v171 = *(v269 + 16);
        v170 = *(v269 + 24);
        if (v171 >= v170 >> 1)
        {
          sub_1000470C0((v170 > 1), v171 + 1, 1);
          v84 = v269;
        }

        *(v84 + 16) = v171 + 1;
        *(v84 + 4 * v171 + 32) = 0;
        v87 = v233;
        goto LABEL_185;
      }

      v89 = *(v80 + 16);
      v90 = __DataStorage._bytes.getter();
      if (!v90)
      {
        goto LABEL_293;
      }

      v91 = v90;
      v92 = __DataStorage._offset.getter();
      if (__OFSUB__(v89, v92))
      {
        goto LABEL_269;
      }

      v93 = (v89 - v92 + v91);
      __DataStorage._length.getter();
      if (!v93)
      {
        goto LABEL_294;
      }
    }

    else
    {
      if (!v83)
      {
        *&v269 = _swiftEmptyArrayStorage;
        sub_1000470C0(0, 1, 0);
        v84 = v269;
        v86 = *(v269 + 16);
        v85 = *(v269 + 24);
        if (v86 >= v85 >> 1)
        {
          sub_1000470C0((v85 > 1), v86 + 1, 1);
          v84 = v269;
        }

        v87 = v233;
        *(v84 + 16) = v86 + 1;
        v88 = v84 + 4 * v86;
        *(v88 + 32) = v87;
        *(v88 + 34) = BYTE2(v87);
        *(v88 + 35) = BYTE3(v87);
LABEL_185:
        sub_10007676C(v87, v82);
        if (!*(v84 + 16))
        {
          goto LABEL_263;
        }

        v147 = *(v84 + 35);

        v172 = v249;
        sub_1000D5D10((v65 + 4), &v65[v79], 2 * v147);
        v249 = v172;
        if (v172)
        {
LABEL_247:
          sub_100076B24(v240, v239);
          goto LABEL_248;
        }

        v173 = sub_1001128D0(v65 + 4, 2 * v147);
        v150 = v173;
        v152 = v174;
        v175 = v174 >> 62;
        if ((v174 >> 62) <= 1)
        {
          if (v175)
          {
            if (v173 > v173 >> 32)
            {
              goto LABEL_279;
            }

            v195 = __DataStorage._bytes.getter();
            if (!v195)
            {
              goto LABEL_308;
            }

            v196 = v195;
            v197 = __DataStorage._offset.getter();
            if (__OFSUB__(v150, v197))
            {
              goto LABEL_282;
            }

            v157 = (v150 - v197 + v196);
            __DataStorage._length.getter();
            v9 = v248;
            if (!v157)
            {
              goto LABEL_307;
            }

            goto LABEL_217;
          }

LABEL_189:
          *&v269 = v150;
          WORD4(v269) = v152;
          BYTE10(v269) = BYTE2(v152);
          BYTE11(v269) = BYTE3(v152);
          BYTE12(v269) = BYTE4(v152);
          BYTE13(v269) = BYTE5(v152);
LABEL_196:
          v180 = v249;
          v16 = sub_10010A954(&v269, v147);
          v249 = v180;
          sub_10007676C(v150, v152);
          sub_100076B24(v240, v239);
          v12 = v247;
          v9 = v248;
          v10 = v250;
          goto LABEL_14;
        }

        if (v175 == 2)
        {
          v176 = *(v173 + 16);
          v177 = __DataStorage._bytes.getter();
          if (!v177)
          {
            goto LABEL_306;
          }

          v178 = v177;
          v179 = __DataStorage._offset.getter();
          if (__OFSUB__(v176, v179))
          {
            goto LABEL_278;
          }

          v157 = (v176 - v179 + v178);
          __DataStorage._length.getter();
          v9 = v248;
          if (!v157)
          {
            goto LABEL_305;
          }

          goto LABEL_217;
        }

LABEL_195:
        *(&v269 + 6) = 0;
        *&v269 = 0;
        goto LABEL_196;
      }

      v162 = v80;
      if (v80 > v80 >> 32)
      {
        goto LABEL_272;
      }

      v163 = __DataStorage._bytes.getter();
      if (!v163)
      {
        goto LABEL_295;
      }

      v164 = v163;
      v165 = __DataStorage._offset.getter();
      if (__OFSUB__(v162, v165))
      {
        goto LABEL_276;
      }

      v93 = (v162 - v165 + v164);
      __DataStorage._length.getter();
      if (!v93)
      {
        goto LABEL_296;
      }
    }

    *&v269 = _swiftEmptyArrayStorage;
    sub_1000470C0(0, 1, 0);
    v84 = v269;
    v166.i32[0] = *v93;
    v168 = *(v269 + 16);
    v167 = *(v269 + 24);
    if (v168 >= v167 >> 1)
    {
      v232 = v166;
      sub_1000470C0((v167 > 1), v168 + 1, 1);
      v166 = v232;
      v84 = v269;
    }

    v87 = v233;
    v169 = vmovl_u8(v166).u64[0];
    *(v84 + 16) = v168 + 1;
    *(v84 + 4 * v168 + 32) = vuzp1_s8(v169, v169).u32[0];
    goto LABEL_185;
  }

  if (v41)
  {
    v66 = (v37 >> 32) - v37;
    if (v37 >> 32 < v37)
    {
      goto LABEL_259;
    }

    v67 = __DataStorage._bytes.getter();
    if (v67)
    {
      v68 = v67;
      v69 = __DataStorage._offset.getter();
      if (__OFSUB__(v39, v69))
      {
        goto LABEL_265;
      }

      v70 = (v39 - v69 + v68);
    }

    else
    {
      v70 = 0;
    }

    v94 = __DataStorage._length.getter();
    if (v94 >= v66)
    {
      v95 = v66;
    }

    else
    {
      v95 = v94;
    }

    if (!v70)
    {

      sub_10000CA2C();
      swift_allocError();
      *v225 = 57;
      *(v225 + 8) = 0;
      *(v225 + 16) = 0xE000000000000000;
      swift_willThrow();
      v227 = v239;
      v226 = v240;
      goto LABEL_252;
    }

    if (v95 < 4)
    {
      sub_10000CA2C();
      swift_allocError();
      *v229 = 56;
      *(v229 + 8) = 0;
      *(v229 + 16) = 0xE000000000000000;
      swift_willThrow();
      v230 = v239;
      v223 = v240;
      goto LABEL_256;
    }

    v96 = sub_1001128D0(v70, 4);
    v98 = v97;
    v99 = v97 >> 62;
    v233 = v96;
    if ((v97 >> 62) > 1)
    {
      if (v99 != 2)
      {
        *&v269 = _swiftEmptyArrayStorage;
        sub_1000470C0(0, 1, 0);
        v100 = v269;
        v146 = *(v269 + 16);
        v145 = *(v269 + 24);
        if (v146 >= v145 >> 1)
        {
          sub_1000470C0((v145 > 1), v146 + 1, 1);
          v100 = v269;
        }

        *(v100 + 16) = v146 + 1;
        *(v100 + 4 * v146 + 32) = 0;
        v103 = v233;
        goto LABEL_161;
      }

      v105 = *(v96 + 16);
      v106 = __DataStorage._bytes.getter();
      if (!v106)
      {
        goto LABEL_289;
      }

      v107 = v106;
      v108 = __DataStorage._offset.getter();
      if (__OFSUB__(v105, v108))
      {
        goto LABEL_270;
      }

      v109 = (v105 - v108 + v107);
      __DataStorage._length.getter();
      if (!v109)
      {
        goto LABEL_290;
      }
    }

    else
    {
      if (!v99)
      {
        *&v269 = _swiftEmptyArrayStorage;
        sub_1000470C0(0, 1, 0);
        v100 = v269;
        v102 = *(v269 + 16);
        v101 = *(v269 + 24);
        if (v102 >= v101 >> 1)
        {
          sub_1000470C0((v101 > 1), v102 + 1, 1);
          v100 = v269;
        }

        v103 = v233;
        *(v100 + 16) = v102 + 1;
        v104 = v100 + 4 * v102;
        *(v104 + 32) = v103;
        *(v104 + 34) = BYTE2(v103);
        *(v104 + 35) = BYTE3(v103);
LABEL_161:
        sub_10007676C(v103, v98);
        if (!*(v100 + 16))
        {
          goto LABEL_262;
        }

        v147 = *(v100 + 35);

        v148 = v249;
        sub_1000D5D10((v70 + 4), &v70[v95], 2 * v147);
        v249 = v148;
        if (v148)
        {
          goto LABEL_247;
        }

        v149 = sub_1001128D0(v70 + 4, 2 * v147);
        v150 = v149;
        v152 = v151;
        v153 = v151 >> 62;
        if ((v151 >> 62) <= 1)
        {
          if (v153)
          {
            if (v149 > v149 >> 32)
            {
              goto LABEL_280;
            }

            v154 = __DataStorage._bytes.getter();
            if (!v154)
            {
              goto LABEL_303;
            }

            v155 = v154;
            v156 = __DataStorage._offset.getter();
            if (__OFSUB__(v150, v156))
            {
              goto LABEL_283;
            }

            v157 = (v150 - v156 + v155);
            __DataStorage._length.getter();
            v9 = v248;
            if (!v157)
            {
              goto LABEL_304;
            }

            goto LABEL_217;
          }

          goto LABEL_189;
        }

        if (v153 == 2)
        {
          v158 = *(v149 + 16);
          v159 = __DataStorage._bytes.getter();
          if (!v159)
          {
            goto LABEL_302;
          }

          v160 = v159;
          v161 = __DataStorage._offset.getter();
          if (__OFSUB__(v158, v161))
          {
            goto LABEL_281;
          }

          v157 = (v158 - v161 + v160);
          __DataStorage._length.getter();
          v9 = v248;
          if (!v157)
          {
            goto LABEL_301;
          }

LABEL_217:
          v198 = v249;
          v16 = sub_10010A954(v157, v147);
          v249 = v198;
          sub_10007676C(v150, v152);
          sub_100076B24(v240, v239);
          v12 = v247;
          v10 = v250;
          goto LABEL_14;
        }

        goto LABEL_195;
      }

      v137 = v96;
      if (v96 > v96 >> 32)
      {
        goto LABEL_271;
      }

      v138 = __DataStorage._bytes.getter();
      if (!v138)
      {
        goto LABEL_291;
      }

      v139 = v138;
      v140 = __DataStorage._offset.getter();
      if (__OFSUB__(v137, v140))
      {
        goto LABEL_275;
      }

      v109 = (v137 - v140 + v139);
      __DataStorage._length.getter();
      if (!v109)
      {
        goto LABEL_292;
      }
    }

    *&v269 = _swiftEmptyArrayStorage;
    sub_1000470C0(0, 1, 0);
    v100 = v269;
    v141.i32[0] = *v109;
    v143 = *(v269 + 16);
    v142 = *(v269 + 24);
    if (v143 >= v142 >> 1)
    {
      v232 = v141;
      sub_1000470C0((v142 > 1), v143 + 1, 1);
      v141 = v232;
      v100 = v269;
    }

    v103 = v233;
    v144 = vmovl_u8(v141).u64[0];
    *(v100 + 16) = v143 + 1;
    *(v100 + 4 * v143 + 32) = vuzp1_s8(v144, v144).u32[0];
    goto LABEL_161;
  }

  *&v269 = v37;
  WORD4(v269) = v38;
  BYTE10(v269) = BYTE2(v38);
  BYTE11(v269) = BYTE3(v38);
  BYTE12(v269) = BYTE4(v38);
  v42 = BYTE6(v38);
  BYTE13(v269) = BYTE5(v38);
  if (BYTE6(v38) < 4uLL)
  {
    goto LABEL_246;
  }

  v43 = sub_1001128D0(&v269, 4);
  v44 = v43;
  v46 = v45;
  v47 = v45 >> 62;
  if ((v45 >> 62) > 1)
  {
    if (v47 == 2)
    {
      v71 = *(v43 + 16);
      v72 = __DataStorage._bytes.getter();
      if (!v72)
      {
        goto LABEL_285;
      }

      v73 = v72;
      v74 = __DataStorage._offset.getter();
      if (__OFSUB__(v71, v74))
      {
        goto LABEL_266;
      }

      v75 = (v71 - v74 + v73);
      __DataStorage._length.getter();
      if (!v75)
      {
        goto LABEL_286;
      }

      goto LABEL_129;
    }

    *&v261 = _swiftEmptyArrayStorage;
    sub_1000470C0(0, 1, 0);
    v48 = v261;
    v119 = *(v261 + 16);
    v118 = *(v261 + 24);
    if (v119 >= v118 >> 1)
    {
      sub_1000470C0((v118 > 1), v119 + 1, 1);
      v48 = v261;
    }

    *(v48 + 16) = v119 + 1;
    *(v48 + 4 * v119 + 32) = 0;
LABEL_135:
    v9 = v248;
  }

  else
  {
    if (!v47)
    {
      *&v261 = _swiftEmptyArrayStorage;
      sub_1000470C0(0, 1, 0);
      v48 = v261;
      v50 = *(v261 + 16);
      v49 = *(v261 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1000470C0((v49 > 1), v50 + 1, 1);
        v48 = v261;
      }

      *(v48 + 16) = v50 + 1;
      v51 = v48 + 4 * v50;
      *(v51 + 32) = v44;
      *(v51 + 34) = BYTE2(v44);
      *(v51 + 35) = BYTE3(v44);
      goto LABEL_135;
    }

    if (v43 > v43 >> 32)
    {
      goto LABEL_267;
    }

    v110 = __DataStorage._bytes.getter();
    if (!v110)
    {
      goto LABEL_287;
    }

    v111 = v110;
    v112 = __DataStorage._offset.getter();
    if (__OFSUB__(v44, v112))
    {
      goto LABEL_268;
    }

    v75 = (v44 - v112 + v111);
    __DataStorage._length.getter();
    if (!v75)
    {
      goto LABEL_288;
    }

LABEL_129:
    *&v261 = _swiftEmptyArrayStorage;
    sub_1000470C0(0, 1, 0);
    v48 = v261;
    v113.i32[0] = *v75;
    v115 = *(v261 + 16);
    v114 = *(v261 + 24);
    v116 = v115 + 1;
    if (v115 >= v114 >> 1)
    {
      v233 = v113;
      sub_1000470C0((v114 > 1), v115 + 1, 1);
      v116 = v115 + 1;
      v113 = v233;
      v48 = v261;
    }

    v9 = v248;
    v117 = vmovl_u8(v113).u64[0];
    *(v48 + 16) = v116;
    *(v48 + 4 * v115 + 32) = vuzp1_s8(v117, v117).u32[0];
  }

  sub_10007676C(v44, v46);
  if (!*(v48 + 16))
  {
    goto LABEL_261;
  }

  v120 = *(v48 + 35);

  v121 = v249;
  sub_1000D5D10(&v269 + 4, &v269 + v42, 2 * v120);
  v249 = v121;
  if (!v121)
  {
    v122 = sub_1001128D0(&v269 + 4, 2 * v120);
    v124 = v123;
    v125 = v123 >> 62;
    if ((v123 >> 62) > 1)
    {
      v12 = v247;
      if (v125 != 2)
      {
        *(&v261 + 6) = 0;
        *&v261 = 0;
        if (!v120)
        {
          goto LABEL_218;
        }

        v232 = v123;
        v233 = v122;
        v255[0] = _swiftEmptyArrayStorage;
        sub_1000470A0(0, v120, 0);
        v16 = v255[0];
        v190 = *(v255[0] + 16);
        v191 = &v261;
        do
        {
          v193 = *v191;
          v191 = (v191 + 2);
          v192 = v193;
          v255[0] = v16;
          v194 = *(v16 + 3);
          if (v190 >= v194 >> 1)
          {
            sub_1000470A0((v194 > 1), v190 + 1, 1);
            v16 = v255[0];
          }

          *(v16 + 2) = v190 + 1;
          v16[v190++ + 16] = v192;
          --v120;
        }

        while (v120);
        goto LABEL_212;
      }

      v233 = v122;
      v131 = *(v122 + 16);
      v132 = __DataStorage._bytes.getter();
      if (!v132)
      {
        goto LABEL_297;
      }

      v133 = v132;
      v134 = __DataStorage._offset.getter();
      if (__OFSUB__(v131, v134))
      {
        goto LABEL_274;
      }

      v135 = (v131 - v134 + v133);
      __DataStorage._length.getter();
      v9 = v248;
      if (!v135)
      {
        goto LABEL_298;
      }

      v136 = v249;
      v16 = sub_10010A954(v135, v120);
      v249 = v136;
    }

    else
    {
      v12 = v247;
      if (!v125)
      {
        *&v261 = v122;
        WORD4(v261) = v123;
        BYTE10(v261) = BYTE2(v123);
        BYTE11(v261) = BYTE3(v123);
        BYTE12(v261) = BYTE4(v123);
        BYTE13(v261) = BYTE5(v123);
        if (v120)
        {
          v232 = v123;
          v233 = v122;
          v255[0] = _swiftEmptyArrayStorage;
          sub_1000470A0(0, v120, 0);
          v16 = v255[0];
          v126 = *(v255[0] + 16);
          v127 = &v261;
          do
          {
            v129 = *v127;
            v127 = (v127 + 2);
            v128 = v129;
            v255[0] = v16;
            v130 = *(v16 + 3);
            if (v126 >= v130 >> 1)
            {
              sub_1000470A0((v130 > 1), v126 + 1, 1);
              v16 = v255[0];
            }

            *(v16 + 2) = v126 + 1;
            v16[v126++ + 16] = v128;
            --v120;
          }

          while (v120);
          goto LABEL_212;
        }

LABEL_218:
        v16 = _swiftEmptyArrayStorage;
LABEL_221:
        sub_10007676C(v122, v124);
        sub_100076B24(v240, v239);
        v10 = v250;
        goto LABEL_14;
      }

      v181 = v122;
      v233 = v122;
      if (v122 > v122 >> 32)
      {
        goto LABEL_273;
      }

      v182 = __DataStorage._bytes.getter();
      if (!v182)
      {
        goto LABEL_299;
      }

      v183 = v182;
      v184 = __DataStorage._offset.getter();
      if (__OFSUB__(v181, v184))
      {
        goto LABEL_277;
      }

      v185 = (v181 - v184 + v183);
      __DataStorage._length.getter();
      v9 = v248;
      if (!v185)
      {
        goto LABEL_300;
      }

      if (v120)
      {
        v232 = v124;
        *&v261 = _swiftEmptyArrayStorage;
        sub_1000470A0(0, v120, 0);
        v16 = v261;
        v186 = *(v261 + 16);
        do
        {
          v188 = *v185++;
          v187 = v188;
          *&v261 = v16;
          v189 = *(v16 + 3);
          if (v186 >= v189 >> 1)
          {
            sub_1000470A0((v189 > 1), v186 + 1, 1);
            v16 = v261;
          }

          *(v16 + 2) = v186 + 1;
          v16[v186++ + 16] = v187;
          --v120;
        }

        while (v120);
LABEL_212:
        v12 = v247;
        v9 = v248;
        v124 = v232;
        v122 = v233;
        goto LABEL_221;
      }

      v16 = _swiftEmptyArrayStorage;
    }

    v122 = v233;
    goto LABEL_221;
  }

  v40 = v239;
  v223 = v240;
LABEL_255:
  v230 = v40;
LABEL_256:
  sub_100076B24(v223, v230);
}

uint64_t sub_100075CCC(char *a1, char a2)
{
  v4 = v2;
  v6 = a1;
  if (*(v2 + 24))
  {
    result = sub_100070C8C(a1);
    if (v3)
    {
      return result;
    }

    v8 = result;
  }

  else
  {
    v8 = *(v2 + 8);
  }

  v9 = *&v6[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
  if (v9 && (result = sub_1000AA808(0x16u, v9), (result & 1) != 0))
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v2 + 17);
  }

  v39 = *(v8 + 16);
  if (v39)
  {
    v26 = v6;
    v24 = a2;
    v10 = 0;
    v11 = v8 + 32;
    v12 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v10 >= *(v8 + 16))
      {
        __break(1u);
        return result;
      }

      sub_10001EAFC(v11, v27);
      sub_10001EAFC(v27, v31);
      sub_100001AB4(&qword_100175488, &unk_100122160);
      sub_100001AB4(&qword_1001754D8, &qword_100120F68);
      if (swift_dynamicCast())
      {
        sub_10000D0A0(&v28, v32);
        v13 = v33;
        v14 = v34;
        sub_10001EAB8(v32, v33);
        (*(v14 + 24))(&v35, v26, v2, v25, v13, v14);
        if (v3)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v30 = 0;
        v29 = 0u;
        v28 = 0u;
        sub_10000D040(&v28, &qword_100176888, &qword_100122170);
        sub_10001EAFC(v27, v31);
        sub_100001AB4(&qword_100176890, &qword_100122178);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v30 = 0;
          v29 = 0u;
          v28 = 0u;
          sub_10000CE78(v27);
          sub_10000D040(&v28, &qword_100176898, &unk_100122180);
          v35 = 0u;
          v36 = 0u;
          v37 = 0;
          goto LABEL_12;
        }

        sub_10000D0A0(&v28, v32);
        v15 = v33;
        v16 = v34;
        sub_10001EAB8(v32, v33);
        (*(v16 + 16))(&v35, v26, v2, v15, v16);
        if (v3)
        {
LABEL_36:

          sub_10000CE78(v27);
          sub_10000CE78(v32);
        }
      }

      sub_10000CE78(v27);
      sub_10000CE78(v32);
      if (*(&v36 + 1))
      {
        sub_10000D0A0(&v35, v38);
        sub_10000D0A0(v38, &v35);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_100024C60(0, v12[2] + 1, 1, v12);
        }

        v18 = v12[2];
        v17 = v12[3];
        if (v18 >= v17 >> 1)
        {
          v12 = sub_100024C60((v17 > 1), v18 + 1, 1, v12);
        }

        v12[2] = v18 + 1;
        result = sub_10000D0A0(&v35, &v12[5 * v18 + 4]);
        goto LABEL_13;
      }

LABEL_12:
      result = sub_10000D040(&v35, &qword_100174FB0, &unk_100120FC0);
LABEL_13:
      ++v10;
      v11 += 40;
      if (v39 == v10)
      {

        v6 = v26;
        v4 = v2;
        a2 = v24;
        goto LABEL_28;
      }
    }
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_28:
  if (!*(*v4 + 8))
  {
LABEL_33:
    v19 = 0;
    goto LABEL_34;
  }

  v19 = *&v6[OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject];
  if (!v19)
  {
LABEL_34:
    v23 = 0;
    goto LABEL_35;
  }

  v20 = sub_1000F8280(*(*v4 + 8));
  if (!v3)
  {
    if (v21)
    {
      v27[0] = v20;
      v27[1] = v21;
      *&v38[0] = 0;
      *(&v38[0] + 1) = 0xE100000000000000;
      *&v35 = 0;
      *(&v35 + 1) = 0xE000000000000000;
      sub_10001EA64();
      v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v23 = v22;

LABEL_35:
      type metadata accessor for ActiveControlInterface();
      swift_allocObject();
      sub_100057294(v4, v27);
      return sub_1000AAB8C(v4, v6, a2 & 1, v12, v19, v23);
    }

    goto LABEL_33;
  }
}

uint64_t sub_100076178(uint64_t a1)
{
  sub_10001E0C4(a1, v3);
  if (swift_dynamicCast())
  {
    return v3[46];
  }

  sub_10000CA2C();
  swift_allocError();
  *v2 = 4;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

uint64_t sub_100076214()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 68, 7);
}

uint64_t sub_1000762A8()
{
  v1 = v0[6];

  v2 = v0[7];

  v3 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100076300(uint64_t a1)
{
  v3 = *(v1 + 48);

  v4 = *(v1 + 56);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10007634C()
{
  v1 = *(v0 + 64);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000763E0()
{
  v1 = v0[8];

  v2 = v0[9];

  v3 = v0[10];

  v4 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10007648C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000764CC()
{
  v1 = v0[8];

  v2 = v0[10];

  v3 = v0[12];

  v4 = v0[13];

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10007657C()
{
  v1 = v0[9];

  v2 = v0[10];

  v3 = v0[11];

  v4 = v0[12];

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1000765CC()
{
  v1 = v0[8];

  v2 = v0[9];

  v3 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100076670()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 104);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10007670C()
{
  v1 = v0[10];

  v2 = v0[12];
  if (v2 >> 60 != 15)
  {
    sub_10007676C(v0[11], v2);
  }

  v3 = v0[13];

  v4 = v0[14];

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_10007676C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100076870(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001AB4(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_1000768D8()
{
  result = qword_1001768A0;
  if (!qword_1001768A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001768A0);
  }

  return result;
}

unint64_t sub_1000769D4()
{
  result = qword_1001768A8;
  if (!qword_1001768A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001768A8);
  }

  return result;
}

uint64_t sub_100076B24(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10007676C(a1, a2);
  }

  return a1;
}

uint64_t sub_100076B38()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  if (v0[14] != 1)
  {

    v4 = v0[15];

    v5 = v0[16];
  }

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t ActiveEntity.entityID.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(v6);
  v2 = v7;
  v3 = v8;
  sub_10001EAB8(v6, v7);
  v4 = (*(v3 + 16))(v2, v3);
  sub_10000CE78(v6);
  return v4;
}

uint64_t ActiveEntity.name.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogID(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  (*(a2 + 8))(v18, a1, a2);
  v6 = v19;
  v7 = v20;
  sub_10001EAB8(v18, v19);
  v8 = (*(v7 + 32))(v6, v7);
  if (BYTE2(v8) == 255)
  {
    sub_10000CE78(v18);
    return 0;
  }

  v10 = v8;
  sub_10000CE78(v18);
  result = (*(a2 + 16))(a1, a2);
  if (result)
  {
    v12 = v11;
    ObjectType = swift_getObjectType();
    v14 = (*(v12 + 16))(ObjectType, v12);
    swift_unknownObjectRelease();
    if (v14)
    {
      if (*&v14[OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject])
      {
        v15 = sub_1000F8280((v10 & 0x1FFFF));
        if (v16)
        {
          v18[0] = v15;
          v18[1] = v16;
          sub_10001EA64();
          v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

          return v17;
        }
      }
    }

    return 0;
  }

  return result;
}

double ClockMultiplier.activate(onDevice:controlInterface:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_100076FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *i@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for LogID(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 8);
  v13 = *(*(v12 + 8) + 16);
  v87 = *(v12 + 8);
  result = v13(a1);
  if (!result)
  {
    goto LABEL_40;
  }

  v16 = result;
  v17 = v15;
  v84 = v8;
  ObjectType = swift_getObjectType();
  active = ActiveFunction.deviceName.getter(ObjectType, v17);
  v85 = v19;
  v95 = a1;
  v96 = v12;
  v20 = sub_10007D2E8(&v94);
  (*(*(a1 - 8) + 16))(v20, v3, a1);
  v21 = sub_10004F2E8(&v94, ObjectType, v17);
  v89 = 0;
  v22 = v21;
  sub_10000CE78(&v94);
  if (!v22)
  {
    sub_10000CA2C();
    v89 = swift_allocError();
    *v29 = 102;
    *(v29 + 8) = 0;
    *(v29 + 16) = 0xE000000000000000;
    swift_willThrow();
    goto LABEL_35;
  }

  v23 = a1;
  v24 = *(a2 + 16);
  v81 = v23;
  v25 = *(v24() + 16);

  if (v25 != 1)
  {
LABEL_11:
    v79 = v11;
    v80 = i;
    v30 = v4;
    v78[1] = a2 + 16;
    v31 = (v24)(v81, a2);
    v11 = *(v31 + 16);
    v86 = v4;
    v88 = v16;
    if (v11)
    {
      for (i = 0; v11 != i; i = (i + 1))
      {
        if (i >= *(v31 + 16))
        {
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v32 = *(v31 + 8 * i + 32);
        v30 = v16;
        sub_100052184(v32, ObjectType, v17, &v94);
        if (v95)
        {
          v30 = sub_100001AB4(&qword_100174F60, &qword_100121090);
          v82 = type metadata accessor for ActiveInputTerminal();
          if (swift_dynamicCast())
          {
            v16 = v91;
            if (*(v91 + 136) == 257)
            {

              *&v94 = 0;
              *(&v94 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(64);
              v52._countAndFlagsBits = active;
              v52._object = v85;
              String.append(_:)(v52);

              v53._countAndFlagsBits = 32;
              v53._object = 0xE100000000000000;
              String.append(_:)(v53);
              v54 = v81;
              swift_getDynamicType();
              v55._countAndFlagsBits = _typeName(_:qualified:)();
              String.append(_:)(v55);

              v56._countAndFlagsBits = 2113568;
              v56._object = 0xE300000000000000;
              String.append(_:)(v56);
              *&v91 = (*(v87 + 48))(v54);
              v57._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v57);

              v58._countAndFlagsBits = 0xD000000000000034;
              v58._object = 0x800000010012DE00;
              String.append(_:)(v58);
              *&v91 = v32;
              v59._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v59);

              ObjectType = *(&v94 + 1);
              v27 = v94;
              if (qword_100173CB8 != -1)
              {
                goto LABEL_55;
              }

              goto LABEL_42;
            }

            v16 = v88;
          }
        }

        else
        {
          sub_10000D040(&v94, &qword_100174FB0, &unk_100120FC0);
        }

        v4 = v86;
      }
    }

    v30 = v4;
    v33 = v81;
    v34 = (v24)(v81, a2);
    a1 = v33;
    v35 = v34;
    v36 = *(v34 + 16);
    if (v36)
    {
      v11 = 0;
      i = &qword_100174FB0;
      v37 = &unk_100120FC0;
      while (1)
      {
        if (v11 >= *(v35 + 16))
        {
          goto LABEL_52;
        }

        v38 = *(v35 + 8 * v11 + 32);
        v30 = v88;
        sub_100052184(v38, ObjectType, v17, v90);
        if (!v90[3])
        {
          break;
        }

        v30 = sub_100001AB4(&qword_100174F60, &qword_100121090);
        sub_100001AB4(&qword_100174F68, &unk_100120B90);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v93 = 0;
          v91 = 0u;
          v92 = 0u;
          goto LABEL_23;
        }

        if (!*(&v92 + 1))
        {
          goto LABEL_23;
        }

        v82 = v38;
        v39 = v36;
        v40 = i;
        v41 = v37;
        sub_10000D0A0(&v91, &v94);
        v30 = v88;
        v42 = v89;
        v43 = sub_10004F2E8(&v94, ObjectType, v17);
        v89 = v42;
        if (v42)
        {

          sub_10000CE78(&v94);
          goto LABEL_34;
        }

        if (v43)
        {

          *&v91 = 0;
          *(&v91 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(54);
          v64._countAndFlagsBits = active;
          v64._object = v85;
          String.append(_:)(v64);

          v65._countAndFlagsBits = 32;
          v65._object = 0xE100000000000000;
          String.append(_:)(v65);
          swift_getDynamicType();
          v66._countAndFlagsBits = _typeName(_:qualified:)();
          String.append(_:)(v66);

          v67._countAndFlagsBits = 2113568;
          v67._object = 0xE300000000000000;
          String.append(_:)(v67);
          v90[0] = (*(v87 + 48))(a1);
          v68._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v68);

          v69._object = 0x800000010012DDD0;
          v69._countAndFlagsBits = 0xD000000000000025;
          String.append(_:)(v69);
          sub_10001EAB8(&v94, v95);
          swift_getDynamicType();
          v70._countAndFlagsBits = _typeName(_:qualified:)();
          String.append(_:)(v70);

          v71._countAndFlagsBits = 2113568;
          v71._object = 0xE300000000000000;
          String.append(_:)(v71);
          v90[0] = v82;
          v72._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v72);

          v73 = v91;
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v74 = sub_10000A1BC(v84, qword_1001794F0);
          v75 = v79;
          sub_10000A2A4(v74, v79);
          v76 = v80;
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v77 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v77, qword_100179508);
          sub_100039AA0(1, v75, v73, *(&v73 + 1));
          swift_unknownObjectRelease();

          sub_10000C9D0(v75);
          return sub_10000D0A0(&v94, v76);
        }

        sub_10000CE78(&v94);
        v37 = v41;
        i = v40;
        v36 = v39;
LABEL_24:
        if (v36 == ++v11)
        {
          goto LABEL_33;
        }
      }

      sub_10000D040(v90, i, v37);
      v91 = 0u;
      v92 = 0u;
      v93 = 0;
LABEL_23:
      sub_10000D040(&v91, &qword_100174F70, &qword_100120FD0);
      goto LABEL_24;
    }

LABEL_33:

    sub_10000CA2C();
    v89 = swift_allocError();
    *v44 = 1;
    *(v44 + 8) = 0;
    *(v44 + 16) = 0xE000000000000000;
    swift_willThrow();
LABEL_34:
    i = v80;
    v11 = v79;
LABEL_35:
    *&v94 = 0;
    *(&v94 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v45._countAndFlagsBits = active;
    v45._object = v85;
    String.append(_:)(v45);

    v46._countAndFlagsBits = 0xD00000000000002CLL;
    v46._object = 0x800000010012DDA0;
    String.append(_:)(v46);
    swift_getDynamicType();
    v47._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v47);

    v48._countAndFlagsBits = 8250;
    v48._object = 0xE200000000000000;
    String.append(_:)(v48);
    *&v91 = (*(v87 + 48))(a1);
    v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v49);

    ObjectType = *(&v94 + 1);
    v30 = v94;
    if (qword_100173CB8 != -1)
    {
LABEL_53:
      swift_once();
    }

    v50 = sub_10000A1BC(v84, qword_1001794F0);
    sub_10000A2A4(v50, v11);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v51, qword_100179508);
    sub_100039F58(1, v11, v30, ObjectType);

    swift_unknownObjectRelease();
    result = sub_10000C9D0(v11);
    *i = 0u;
    *(i + 1) = 0u;
    i[4] = 0;
    return result;
  }

  v26 = (v24)(v81, a2);
  if (!*(v26 + 16))
  {

    goto LABEL_11;
  }

  v27 = v26;

  if (*(v27 + 16))
  {
    v28 = *(v27 + 32);

    sub_100052184(v28, ObjectType, v17, &v94);
    swift_unknownObjectRelease();
    if (v95)
    {
      sub_100001AB4(&qword_100174F60, &qword_100121090);
      sub_100001AB4(&qword_100174F68, &unk_100120B90);
      result = swift_dynamicCast();
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = sub_10000D040(&v94, &qword_100174FB0, &unk_100120FC0);
    }

LABEL_40:
    i[4] = 0;
    *i = 0u;
    *(i + 1) = 0u;
    return result;
  }

  __break(1u);
LABEL_55:
  swift_once();
LABEL_42:
  v60 = sub_10000A1BC(v84, qword_1001794F0);
  v61 = v79;
  sub_10000A2A4(v60, v79);
  v62 = v80;
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v63, qword_100179508);
  sub_100039AA0(1, v61, v27, ObjectType);

  sub_10000C9D0(v61);
  v62[3] = v82;
  v62[4] = &protocol witness table for ActiveInputTerminal;
  *v62 = v16;
  return swift_unknownObjectRelease();
}

uint64_t sub_100077BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for LogID(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 8);
  v13 = *(*(v12 + 8) + 16);
  v85 = *(v12 + 8);
  result = v13(a1);
  if (!result)
  {
    goto LABEL_41;
  }

  v16 = result;
  v17 = v15;
  v83 = v8;
  ObjectType = swift_getObjectType();
  active = ActiveFunction.deviceName.getter(ObjectType, v17);
  v84 = v19;
  v92 = a1;
  v93 = v12;
  v20 = sub_10007D2E8(&v91);
  (*(*(a1 - 8) + 16))(v20, v3, a1);
  v21 = sub_100056CB0(&v91, ObjectType, v17);
  v86 = 0;
  v22 = v21;
  sub_10000CE78(&v91);
  if (!v22)
  {
    sub_10000CA2C();
    v86 = swift_allocError();
    *v29 = 102;
    *(v29 + 8) = 0;
    *(v29 + 16) = 0xE000000000000000;
    swift_willThrow();
    goto LABEL_36;
  }

  v23 = ObjectType;
  v78 = v11;
  v24 = *(a2 + 16);
  v25 = *(v24(a1, a2) + 16);

  if (v25 != 1)
  {
LABEL_11:
    v81 = v16;
    v77 = a3;
    v30 = v4;
    v76 = a2;
    a3 = v24(a1, a2);
    v11 = *(a3 + 16);
    v80 = a1;
    v79 = v4;
    if (v11)
    {
      for (i = 0; v11 != i; ++i)
      {
        if (i >= *(a3 + 16))
        {
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v32 = *(a3 + 8 * i + 32);
        v30 = v81;
        sub_100052184(v32, v23, v17, &v91);
        if (v92)
        {
          v30 = sub_100001AB4(&qword_100174F60, &qword_100121090);
          a1 = type metadata accessor for ActiveInputTerminal();
          if (swift_dynamicCast())
          {

            v17 = v88;
            *&v91 = 0;
            *(&v91 + 1) = 0xE000000000000000;
            _StringGuts.grow(_:)(51);
            v33._countAndFlagsBits = active;
            v33._object = v84;
            String.append(_:)(v33);

            v34._countAndFlagsBits = 32;
            v34._object = 0xE100000000000000;
            String.append(_:)(v34);
            v35 = v80;
            swift_getDynamicType();
            v36._countAndFlagsBits = _typeName(_:qualified:)();
            String.append(_:)(v36);

            v37._countAndFlagsBits = 2113568;
            v37._object = 0xE300000000000000;
            String.append(_:)(v37);
            *&v88 = (*(v85 + 48))(v35);
            v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v38);

            v39._countAndFlagsBits = 0xD000000000000027;
            v39._object = 0x800000010012DD70;
            String.append(_:)(v39);
            *&v88 = v32;
            v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v40);

            v24 = *(&v91 + 1);
            v27 = v91;
            if (qword_100173CB8 != -1)
            {
              goto LABEL_52;
            }

            goto LABEL_19;
          }
        }

        else
        {
          sub_10000D040(&v91, &qword_100174FB0, &unk_100120FC0);
        }

        a1 = v80;
        v4 = v79;
      }
    }

    v30 = v4;
    v45 = v24(a1, v76);
    a3 = *(v45 + 16);
    v46 = v81;
    v11 = v78;
    if (a3)
    {
      v24 = v23;
      v47 = 0;
      v48 = &qword_100174FB0;
      while (1)
      {
        if (v47 >= *(v45 + 16))
        {
          goto LABEL_49;
        }

        v49 = *(v45 + 8 * v47 + 32);
        v30 = v46;
        sub_100052184(v49, v24, v17, v87);
        if (!v87[3])
        {
          break;
        }

        v30 = sub_100001AB4(&qword_100174F60, &qword_100121090);
        sub_100001AB4(&qword_100174F68, &unk_100120B90);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v90 = 0;
          v88 = 0u;
          v89 = 0u;
          goto LABEL_25;
        }

        if (!*(&v89 + 1))
        {
          goto LABEL_25;
        }

        v50 = v48;
        sub_10000D0A0(&v88, &v91);
        v30 = v46;
        v51 = v86;
        v52 = sub_100056CB0(&v91, v24, v17);
        v86 = v51;
        if (v51)
        {

          sub_10000CE78(&v91);
          a3 = v77;
          a1 = v80;
          v11 = v78;
          goto LABEL_36;
        }

        if (v52)
        {

          *&v88 = 0;
          *(&v88 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(52);
          v61._countAndFlagsBits = active;
          v61._object = v84;
          String.append(_:)(v61);

          v62._countAndFlagsBits = 32;
          v62._object = 0xE100000000000000;
          String.append(_:)(v62);
          v63 = v80;
          swift_getDynamicType();
          v64._countAndFlagsBits = _typeName(_:qualified:)();
          String.append(_:)(v64);

          v65._countAndFlagsBits = 2113568;
          v65._object = 0xE300000000000000;
          String.append(_:)(v65);
          v87[0] = (*(v85 + 48))(v63);
          v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v66);

          v67._object = 0x800000010012DD40;
          v67._countAndFlagsBits = 0xD000000000000023;
          String.append(_:)(v67);
          sub_10001EAB8(&v91, v92);
          swift_getDynamicType();
          v68._countAndFlagsBits = _typeName(_:qualified:)();
          String.append(_:)(v68);

          v69._countAndFlagsBits = 2113568;
          v69._object = 0xE300000000000000;
          String.append(_:)(v69);
          v87[0] = v49;
          v70._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v70);

          v71 = v88;
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v72 = sub_10000A1BC(v83, qword_1001794F0);
          v73 = v78;
          sub_10000A2A4(v72, v78);
          v74 = v77;
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v75 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v75, qword_100179508);
          sub_100039AA0(1, v73, v71, *(&v71 + 1));
          swift_unknownObjectRelease();

          sub_10000C9D0(v73);
          return sub_10000D0A0(&v91, v74);
        }

        sub_10000CE78(&v91);
        v48 = v50;
        v11 = v78;
LABEL_26:
        if (a3 == ++v47)
        {
          goto LABEL_35;
        }
      }

      sub_10000D040(v87, v48, &unk_100120FC0);
      v88 = 0u;
      v89 = 0u;
      v90 = 0;
LABEL_25:
      sub_10000D040(&v88, &qword_100174F70, &qword_100120FD0);
      goto LABEL_26;
    }

LABEL_35:

    sub_10000CA2C();
    v86 = swift_allocError();
    *v53 = 1;
    *(v53 + 8) = 0;
    *(v53 + 16) = 0xE000000000000000;
    swift_willThrow();
    a3 = v77;
    a1 = v80;
LABEL_36:
    *&v91 = 0;
    *(&v91 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v54._countAndFlagsBits = active;
    v54._object = v84;
    String.append(_:)(v54);

    v55._countAndFlagsBits = 0xD00000000000002BLL;
    v55._object = 0x800000010012DD10;
    String.append(_:)(v55);
    swift_getDynamicType();
    v56._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v56);

    v57._countAndFlagsBits = 8250;
    v57._object = 0xE200000000000000;
    String.append(_:)(v57);
    *&v88 = (*(v85 + 48))(a1);
    v58._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v58);

    v24 = *(&v91 + 1);
    v30 = v91;
    if (qword_100173CB8 != -1)
    {
LABEL_50:
      swift_once();
    }

    v59 = sub_10000A1BC(v83, qword_1001794F0);
    sub_10000A2A4(v59, v11);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v60, qword_100179508);
    sub_100039F58(1, v11, v30, v24);

    swift_unknownObjectRelease();
    result = sub_10000C9D0(v11);
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0;
    return result;
  }

  v26 = v24(a1, a2);
  if (!*(v26 + 16))
  {

    goto LABEL_11;
  }

  v27 = v26;

  if (*(v27 + 16))
  {
    v28 = *(v27 + 32);

    sub_100052184(v28, v23, v17, &v91);
    swift_unknownObjectRelease();
    if (v92)
    {
      sub_100001AB4(&qword_100174F60, &qword_100121090);
      sub_100001AB4(&qword_100174F68, &unk_100120B90);
      result = swift_dynamicCast();
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = sub_10000D040(&v91, &qword_100174FB0, &unk_100120FC0);
    }

LABEL_41:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  __break(1u);
LABEL_52:
  swift_once();
LABEL_19:
  v41 = sub_10000A1BC(v83, qword_1001794F0);
  v42 = v78;
  sub_10000A2A4(v41, v78);
  v43 = v77;
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v44, qword_100179508);
  sub_100039AA0(1, v42, v27, v24);

  sub_10000C9D0(v42);
  v43[3] = a1;
  v43[4] = &protocol witness table for ActiveInputTerminal;
  *v43 = v17;
  return swift_unknownObjectRelease();
}

uint64_t ActiveDataEntity.nameStringIndex.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v5);
  v2 = v6;
  v3 = v7;
  sub_10001EAB8(v5, v6);
  LODWORD(v2) = (*(*(v3 + 8) + 32))(v2);
  sub_10000CE78(v5);
  return v2 & 0xFFFFFF;
}

uint64_t ActiveDataEntity.sourceID.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v6);
  v2 = v7;
  v3 = v8;
  sub_10001EAB8(v6, v7);
  v4 = (*(v3 + 16))(v2, v3);
  sub_10000CE78(v6);
  return v4;
}

uint64_t ActiveDataEntity.entityID.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v6);
  v2 = v7;
  v3 = v8;
  sub_10001EAB8(v6, v7);
  v4 = (*(*(v3 + 8) + 16))(v2);
  sub_10000CE78(v6);
  return v4;
}

uint64_t ActiveEntity.deviceName.getter(uint64_t a1, uint64_t a2)
{
  if (!(*(a2 + 16))())
  {
    return 0x6E776F6E6B6E55;
  }

  v3 = v2;
  ObjectType = swift_getObjectType();
  active = ActiveFunction.deviceName.getter(ObjectType, v3);
  swift_unknownObjectRelease();
  return active;
}

uint64_t ActiveEntity.start(on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = swift_unknownObjectRetain();
  return v7(v8, a2, a3, a4);
}

void sub_100078A84(AUASDCore::AUAInterruptAttribute_optional a1, Swift::UInt_optional a2, Swift::UInt_optional a3)
{
  a2.is_nil &= 1u;
  a3.is_nil &= 1u;
  ActiveEntity.processInterrupt(attribute:controlSelector:channelNumber:)(a1, a2, a3);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActiveEntity.processInterrupt(attribute:controlSelector:channelNumber:)(AUASDCore::AUAInterruptAttribute_optional attribute, Swift::UInt_optional controlSelector, Swift::UInt_optional channelNumber)
{
  if (attribute.value == AUASDCore_AUAInterruptAttribute_unknownDefault || controlSelector.is_nil || channelNumber.is_nil || !controlSelector.value)
  {
    (*(v3 + 104))();
  }

  else
  {
    (*(v3 + 96))();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActiveEntity.processTargetedInterrupt(attribute:controlSelector:channelNumber:)(AUASDCore::AUAInterruptAttribute attribute, Swift::UInt controlSelector, Swift::UInt channelNumber)
{
  v5 = v4;
  v6 = v3;
  v33 = controlSelector;
  v34 = channelNumber;
  v32 = attribute;
  v7 = 0xEE00656369766564;
  v8 = 0x206E776F6E6B6E55;
  v9 = type metadata accessor for LogID(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = 0;
  v36 = 0xE000000000000000;
  _StringGuts.grow(_:)(97);
  v13._countAndFlagsBits = 0xD00000000000001CLL;
  v13._object = 0x800000010012D860;
  String.append(_:)(v13);
  if ((*(v5 + 16))(v6, v5))
  {
    v15 = v14;
    ObjectType = swift_getObjectType();
    v17 = (*(v15 + 16))(ObjectType, v15);
    swift_unknownObjectRelease();
    if (v17)
    {
      v18 = [v17 boxName];

      if (v18)
      {
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = v19;
      }
    }
  }

  v20._countAndFlagsBits = v8;
  v20._object = v7;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 0xD00000000000001BLL;
  v21._object = 0x800000010012D880;
  String.append(_:)(v21);
  LOBYTE(v37) = v32;
  _print_unlocked<A, B>(_:_:)();
  v22._countAndFlagsBits = 0xD000000000000012;
  v22._object = 0x800000010012D8A0;
  String.append(_:)(v22);
  v37 = v33;
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  v24._object = 0x800000010012D8C0;
  v24._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v24);
  v37 = v34;
  v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v25);

  v26 = v35;
  v27 = v36;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v28 = sub_10000A1BC(v9, qword_1001794F0);
  sub_10000A2A4(v28, v12);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v29, qword_100179508);
  sub_100039F58(2, v12, v26, v27);

  sub_10000C9D0(v12);
  sub_10000CA2C();
  swift_allocError();
  *v30 = 2;
  *(v30 + 8) = 0;
  *(v30 + 16) = 0xE000000000000000;
  swift_willThrow();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ActiveEntity.processAmbiguousInterrupt()()
{
  v4 = v3;
  v5 = v1;
  v6 = v0;
  v7 = 0xEE00656369766564;
  v8 = 0x206E776F6E6B6E55;
  v43 = type metadata accessor for LogID(0);
  v9 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v45 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  v48 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  v11 = *(v5 + 16);
  v12 = v2;
  v46 = v6;
  v44 = v11;
  if (v11(v6, v5))
  {
    v14 = v13;
    ObjectType = swift_getObjectType();
    v16 = (*(v14 + 16))(ObjectType, v14);
    swift_unknownObjectRelease();
    if (v16)
    {
      v17 = [v16 boxName];

      if (v17)
      {
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = v18;
      }
    }
  }

  v19._countAndFlagsBits = v8;
  v19._object = v7;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0xD00000000000001FLL;
  v20._object = 0x800000010012D8E0;
  String.append(_:)(v20);
  v21 = v12;
  v22 = v46;
  v49 = (*(v5 + 48))(v46, v5);
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  v24 = v47;
  v25 = v48;
  if (qword_100173CB8 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v43 = sub_10000A1BC(v43, qword_1001794F0);
    v26 = v45;
    sub_10000A2A4(v43, v45);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for AUALog(0);
    v42 = sub_10000A1BC(v27, qword_100179508);
    sub_100039AA0(2, v26, v24, v25);

    sub_10000C9D0(v26);
    if (!v44(v22, v5))
    {
      break;
    }

    v29 = v28;
    v30 = swift_getObjectType();
    v31 = (*(v29 + 16))(v30, v29);
    swift_unknownObjectRelease();
    if (!v31)
    {
      break;
    }

    v32 = [v31 audioDevices];

    if (!v32)
    {
      break;
    }

    sub_10001EBA8(0, &qword_100174F30, ASDAudioDevice_ptr);
    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = &v41;
    __chkstk_darwin(v33);
    *(&v41 - 4) = v22;
    *(&v41 - 3) = v5;
    *(&v41 - 2) = v21;
    v34 = sub_100079504(sub_10007D258, (&v41 - 6), v25);

    v35 = v34;
    v46 = v34[2];
    if (!v46)
    {
LABEL_18:

      return;
    }

    v21 = 0;
    v41 = " - ambiguous interrupt entity: ";
    v36 = v34 + 5;
    v44 = v35;
    while (v21 < *(v35 + 2))
    {
      v38 = *(v36 - 1);
      v39 = *v36;
      v25 = swift_getObjectType();
      v5 = v39 + 24;
      v22 = *(v39 + 24);
      v40 = v38;
      v24 = v40;
      (v22)(v25, v39);
      if (v4)
      {
        v37 = v45;
        sub_10000A2A4(v43, v45);
        v24 = v42;
        sub_100039F58(2, v37, 0xD00000000000001ALL, (v41 | 0x8000000000000000));

        sub_10000C9D0(v37);
        v4 = 0;
      }

      else
      {
      }

      ++v21;
      v36 += 2;
      v35 = v44;
      if (v46 == v21)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t ActiveDataEntity.pathName.getter(uint64_t a1, uint64_t a2)
{
  result = (*(*(a2 + 8) + 56))();
  if (!v5)
  {
    v6 = *(a2 + 24);
    v6(&v10, a1, a2);
    if (v11)
    {
      sub_10000D0A0(&v10, v12);
      v7 = v13;
      v8 = v14;
      sub_10001EAB8(v12, v13);
      v9 = (*(v8 + 72))(v7, v8);
      sub_10000CE78(v12);
      return v9;
    }

    else
    {
      sub_10000D040(&v10, &qword_100174F70, &qword_100120FD0);
      v6(v12, a1, a2);
      sub_10000D040(v12, &qword_100174F70, &qword_100120FD0);
      return 0xD000000000000022;
    }
  }

  return result;
}

void *sub_100079504(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if (a3 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    v21 = v5 & 0xFFFFFFFFFFFFFF8;
    v22 = v5 & 0xC000000000000001;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v22)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v21 + 16))
        {
          goto LABEL_27;
        }

        v10 = *(v5 + 8 * v7 + 32);
      }

      v11 = v10;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v25 = v10;
      a1(&v24, &v25);
      if (v4)
      {

        return v8;
      }

      v4 = v5;

      v12 = v24;
      v13 = *(v24 + 16);
      v14 = v8[2];
      v5 = v14 + v13;
      if (__OFADD__(v14, v13))
      {
        goto LABEL_28;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v5 <= v8[3] >> 1)
      {
        if (*(v12 + 16))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v14 <= v5)
        {
          v16 = v14 + v13;
        }

        else
        {
          v16 = v14;
        }

        v8 = sub_100024788(isUniquelyReferenced_nonNull_native, v16, 1, v8);
        if (*(v12 + 16))
        {
LABEL_20:
          if ((v8[3] >> 1) - v8[2] < v13)
          {
            goto LABEL_30;
          }

          sub_100001AB4(&qword_100175408, &qword_100122410);
          swift_arrayInitWithCopy();

          v5 = v4;
          v4 = 0;
          v9 = v7 + 1;
          if (v13)
          {
            v17 = v8[2];
            v18 = __OFADD__(v17, v13);
            v19 = v17 + v13;
            if (v18)
            {
              goto LABEL_31;
            }

            v8[2] = v19;
          }

          goto LABEL_5;
        }
      }

      v5 = v4;
      v4 = 0;
      v9 = v7 + 1;
      if (v13)
      {
        goto LABEL_29;
      }

LABEL_5:
      ++v7;
      if (v9 == i)
      {
        return v8;
      }
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
    ;
  }

  return _swiftEmptyArrayStorage;
}

BOOL sub_10007973C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(*(a4 + 16))(a3, a4))
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_10000D040(v18, &qword_100175790, &unk_100121070);
    goto LABEL_6;
  }

  v11 = v10;
  ObjectType = swift_getObjectType();
  v17[3] = a3;
  v17[4] = a4;
  v13 = sub_10007D2E8(v17);
  (*(*(a3 - 8) + 16))(v13, v4, a3);
  ActiveFunction.getRawCur(forControl:onEntity:onChannel:)(a1 & 0xFFFFFF, v17, a2, ObjectType, v11, v18);
  swift_unknownObjectRelease();
  sub_10000CE78(v17);
  if (!v5)
  {
    sub_100001AB4(&qword_1001755F0, &qword_100121AF0);
    if (swift_dynamicCast())
    {
      return LOBYTE(v17[0]) != 0;
    }

LABEL_6:
    sub_10000CA2C();
    swift_allocError();
    *v15 = 1;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0xE000000000000000;
    swift_willThrow();
  }

  return v14;
}

uint64_t sub_1000798E4(int a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*(a5 + 16))(a4, a5);
  if (result)
  {
    v13 = v12;
    ObjectType = swift_getObjectType();
    v15[3] = a4;
    v15[4] = a5;
    v14 = sub_10007D2E8(v15);
    (*(*(a4 - 8) + 16))(v14, v5, a4);
    sub_100053170(a1 & 0xFFFFFF, a2, 0, v15, a3, ObjectType, v13);
    swift_unknownObjectRelease();
    return sub_10000CE78(v15);
  }

  return result;
}

id sub_1000799EC@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = [*a1 controls];
  if (result)
  {
    v10 = result;
    sub_10001EBA8(0, &qword_100174F58, ASDControl_ptr);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    __chkstk_darwin(v12);
    v14[2] = a3;
    v14[3] = a4;
    v14[4] = a2;
    v13 = sub_100026584(sub_10007D7C8, v14, v11);

    *a5 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100079AE8(void **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = *a1;
  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (v8)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    v10 = v8;
    ObjectType = swift_getObjectType();
    v15 = a2;
    v12 = *(v10 + 8);
    v13 = v7;
    v14 = v12(ObjectType, v10);
    if (v14 != (*(a3 + 48))(v15, a3))
    {

      v13 = 0;
      v10 = 0;
    }

    *a4 = v13;
    a4[1] = v10;
  }
}

uint64_t sub_100079BFC(uint64_t a1, uint64_t a2)
{
  v6 = (*(a2 + 40))();
  v7 = (*(a2 + 16))(a1, a2);
  if (!v7)
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    sub_10000D040(v51, &qword_100175790, &unk_100121070);
    sub_10000CA2C();
    swift_allocError();
    *v41 = 1;
    *(v41 + 8) = 0;
    *(v41 + 16) = 0xE000000000000000;
    swift_willThrow();
    return v2;
  }

  v9 = v7;
  v10 = v8;
  v11 = (v6 << 8) | 0xD20000;
  ObjectType = swift_getObjectType();
  v50[3] = a1;
  v50[4] = a2;
  v13 = sub_10007D2E8(v50);
  (*(*(a1 - 8) + 16))(v13, v2, a1);
  v2 = v9;
  ActiveFunction.getRawCur(forControl:onEntity:onChannel:)(v11, v50, 0, ObjectType, v10, v51);
  swift_unknownObjectRelease();
  sub_10000CE78(v50);
  if (v3)
  {
    return v2;
  }

  sub_10000D0A0(v51, v53);
  v15 = v54;
  v14 = v55;
  v16 = sub_10001EAB8(v53, v54);
  v17 = v46;
  v18 = *(v15 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  v56 = v20;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = v46 - v21;
  (*(v18 + 16))(v46 - v21);
  v23 = *(v14 + 8);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    goto LABEL_5;
  }

  v24 = *(*(v23 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = v46;
  v47 = v46;
  v26 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(AssociatedTypeWitness);
  v48 = v18;
  swift_getAssociatedConformanceWitness();
  v27 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v46[1] = v46;
  __chkstk_darwin(v27);
  v18 = v48;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v28 = *(*(v23 + 32) + 8);
  v29 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v17 = v49;
  result = (*(v18 + 8))(v46 - v21, v15);
  if (v29)
  {
LABEL_5:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 32)
    {
      LODWORD(v51[0]) = -1;
      v31 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v32 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v31)
      {
        if (v32 <= 32)
        {
          v33 = *(*(v23 + 24) + 16);
          v34 = swift_getAssociatedTypeWitness();
          v49 = v17;
          v47 = v46;
          v35 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          __chkstk_darwin(v34);
          v48 = v18;
          swift_getAssociatedConformanceWitness();
          v36 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          __chkstk_darwin(v36);
          v38 = v46 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
          v18 = v48;
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v39 = *(*(v23 + 32) + 8);
          v40 = dispatch thunk of static Comparable.> infix(_:_:)();
          (*(v18 + 8))(v38, v15);
          if ((v40 & 1) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }
      }

      else if (v32 < 33)
      {
LABEL_15:
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_16;
      }

      __chkstk_darwin(v32);
      v43 = v46 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_10001E938();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v44 = *(*(v23 + 32) + 8);
      v45 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v18 + 8))(v43, v15);
      if (v45)
      {
        __break(1u);
        goto LABEL_15;
      }
    }

LABEL_16:
    v2 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v18 + 8))(v22, v15);
    sub_10000CE78(v53);
    return v2;
  }

  __break(1u);
  return result;
}

double ActiveDataEntity.source.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(*(a2 + 8) + 16))())
  {
    v7 = v6;
    (*(a2 + 16))(&v17, a1, a2);
    v8 = *(&v18 + 1);
    v9 = v19;
    sub_10001EAB8(&v17, *(&v18 + 1));
    v10 = (*(v9 + 16))(v8, v9);
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v10;
    }

    ObjectType = swift_getObjectType();
    sub_10000CE78(&v17);
    sub_100052184(v12, ObjectType, v7, &v17);
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
  }

  v15[0] = v17;
  v15[1] = v18;
  v16 = v19;
  if (!*(&v18 + 1))
  {
    sub_10000D040(v15, &qword_100174FB0, &unk_100120FC0);
    goto LABEL_11;
  }

  sub_100001AB4(&qword_100174F60, &qword_100121090);
  sub_100001AB4(&qword_100174F68, &unk_100120B90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t ActiveDataEntity.cluster.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(v11);
  sub_10007D278(v11, &v6);
  if (v7)
  {
    sub_10000D0A0(&v6, v8);
    v2 = v9;
    v3 = v10;
    sub_10001EAB8(v8, v9);
    v4 = (*(v3 + 48))(v2, v3);
    sub_10000D040(v11, &qword_100174F70, &qword_100120FD0);
    sub_10000CE78(v8);
  }

  else
  {
    sub_10000D040(v11, &qword_100174F70, &qword_100120FD0);
    sub_10000D040(&v6, &qword_100174F70, &qword_100120FD0);
    return 0;
  }

  return v4;
}

uint64_t ActiveDataEntity.staticEntity.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  (*(a1 + 16))(v8);
  v3 = v9;
  v4 = v10;
  v5 = sub_10001EAB8(v8, v9);
  a2[3] = v3;
  a2[4] = *(v4 + 8);
  v6 = sub_10007D2E8(a2);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  return sub_10000CE78(v8);
}

id sub_10007BB00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUAEntityBooleanControl();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10007BB44()
{
  v1 = *(v0 + OBJC_IVAR____TtC9AUASDCore23AUAEntityBooleanControl_entity + 24);
  v2 = *(v0 + OBJC_IVAR____TtC9AUASDCore23AUAEntityBooleanControl_entity + 32);
  sub_10001EAB8((v0 + OBJC_IVAR____TtC9AUASDCore23AUAEntityBooleanControl_entity), v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t (*ActiveExtensionUnit.function.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_10002316C;
}

uint64_t sub_10007BCA0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v4 = v2[5];
  v13[2] = v2[4];
  v13[3] = v4;
  v5 = v2[7];
  v13[4] = v2[6];
  v13[5] = v5;
  v6 = v2[3];
  v13[0] = v2[2];
  v13[1] = v6;
  a2[3] = &type metadata for ExtensionUnit;
  a2[4] = a1();
  v7 = swift_allocObject();
  *a2 = v7;
  v8 = v2[5];
  v7[3] = v2[4];
  v7[4] = v8;
  v9 = v2[7];
  v7[5] = v2[6];
  v7[6] = v9;
  v10 = v2[3];
  v7[1] = v2[2];
  v7[2] = v10;
  return sub_10007651C(v13, &v12);
}

double ActiveExtensionUnit.source.getter@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_8;
  }

  v3 = *(v1 + 80);
  if (*(v3 + 16) != 1)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    swift_unknownObjectRelease();
    return result;
  }

  v4 = *(v1 + 24);
  v5 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  sub_100052184(v5, ObjectType, v4, v8);
  swift_unknownObjectRelease();
  if (!v8[3])
  {
    sub_10000D040(v8, &qword_100174FB0, &unk_100120FC0);
    goto LABEL_8;
  }

  sub_100001AB4(&qword_100174F60, &qword_100121090);
  sub_100001AB4(&qword_100174F68, &unk_100120B90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void *ActiveExtensionUnit.deinit()
{
  sub_100024174((v0 + 2));
  v1 = v0[10];
  v2 = v0[12];
  v3 = v0[14];
  v4 = v0[15];

  return v0;
}

uint64_t ActiveExtensionUnit.__deallocating_deinit()
{
  sub_100024174((v0 + 2));
  v1 = v0[10];
  v2 = v0[12];
  v3 = v0[14];
  v4 = v0[15];

  return swift_deallocClassInstance();
}

uint64_t sub_10007BF94@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v6 = v4[4];
  v5 = v4[5];
  v7 = v4[7];
  v12[4] = v4[6];
  v12[5] = v7;
  v12[2] = v6;
  v12[3] = v5;
  v8 = v4[3];
  v12[0] = v4[2];
  v12[1] = v8;
  a2[3] = &type metadata for ExtensionUnit;
  a2[4] = a1();
  v9 = swift_allocObject();
  *a2 = v9;
  memmove((v9 + 16), v4 + 2, 0x60uLL);
  return sub_10007651C(v12, &v11);
}

uint64_t (*sub_10007C02C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_100026374;
}

uint64_t (*ActiveProcessingUnit.function.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_100026374;
}

uint64_t sub_10007C1A0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v4 = v2[5];
  v11[2] = v2[4];
  v11[3] = v4;
  v11[4] = v2[6];
  v5 = v2[3];
  v11[0] = v2[2];
  v11[1] = v5;
  a2[3] = &type metadata for ProcessingUnit;
  a2[4] = a1();
  v6 = swift_allocObject();
  *a2 = v6;
  v7 = v2[5];
  v6[3] = v2[4];
  v6[4] = v7;
  v6[5] = v2[6];
  v8 = v2[3];
  v6[1] = v2[2];
  v6[2] = v8;
  return sub_100076430(v11, &v10);
}

uint64_t ActiveProcessingUnit.exceptionList.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t ActiveProcessingUnit.exceptionList.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t ActiveProcessingUnit.latencyControlSelector.getter()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v1 + 40))(ObjectType, v1);
    swift_unknownObjectRelease();
  }

  return 0;
}

void *ActiveProcessingUnit.deinit()
{
  sub_100024174((v0 + 2));
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[12];
  v3 = v0[13];

  v5 = v0[14];

  return v0;
}

uint64_t ActiveProcessingUnit.__deallocating_deinit()
{
  sub_100024174((v0 + 2));
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[12];
  v3 = v0[13];

  v5 = v0[14];

  return swift_deallocClassInstance();
}

uint64_t sub_10007C490@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v6 = v4[3];
  v5 = v4[4];
  v7 = v4[6];
  v11[3] = v4[5];
  v11[4] = v7;
  v11[1] = v6;
  v11[2] = v5;
  v11[0] = v4[2];
  a2[3] = &type metadata for ProcessingUnit;
  a2[4] = a1();
  v8 = swift_allocObject();
  *a2 = v8;
  memmove((v8 + 16), v4 + 2, 0x50uLL);
  return sub_100076430(v11, &v10);
}

uint64_t (*sub_10007C520(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_100026374;
}

uint64_t sub_10007C5B8()
{
  v1 = *v0;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 40))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t sub_10007C63C()
{
  v1 = *(v0 + 64);

  sub_100024174(v0 + 88);

  return swift_deallocClassInstance();
}

uint64_t sub_10007C6AC@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(v4 + 32);
  v6 = *(v4 + 64);
  v10[2] = *(v4 + 48);
  v10[3] = v6;
  v11 = *(v4 + 80);
  v10[1] = v5;
  v10[0] = *(v4 + 16);
  a2[3] = &type metadata for SampleRateConverter;
  a2[4] = a1();
  v7 = swift_allocObject();
  *a2 = v7;
  memmove((v7 + 16), (v4 + 16), 0x48uLL);
  return sub_100076384(v10, v9);
}

uint64_t sub_10007C744()
{
  v1 = *v0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 96);
  return result;
}

uint64_t sub_10007C78C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 96) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10007C7F0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 96);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_10007C888;
}

void sub_10007C888(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 96) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_10007C90C()
{
  v1 = *v0;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 96);
    ObjectType = swift_getObjectType();
    (*(v2 + 40))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t sub_10007C990()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  sub_100024174(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_10007CA14@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(v4 + 72);
  a2[3] = &type metadata for EffectUnit;
  a2[4] = a1();
  v7 = swift_allocObject();
  *a2 = v7;
  v9 = *(v4 + 32);
  v8 = *(v4 + 48);
  *(v7 + 16) = *(v4 + 16);
  *(v7 + 32) = v9;
  *(v7 + 48) = v8;
  *(v7 + 64) = v5;
  *(v7 + 72) = v6;
}

uint64_t sub_10007CAA4()
{
  v1 = *v0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 88);
  return result;
}

uint64_t sub_10007CAEC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 88) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10007CB50(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 88);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_10007CBE8;
}

void sub_10007CBE8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 88) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_10007CC6C()
{
  v1 = *v0;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 88);
    ObjectType = swift_getObjectType();
    (*(v2 + 40))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t ActivePowerDomain.staticPowerDomain.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 26);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  *a1 = *(v1 + 16);
  *(a1 + 10) = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
}

uint64_t ActivePowerDomain.function.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 72);
  return result;
}

uint64_t ActivePowerDomain.function.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*ActivePowerDomain.function.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 72);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_10007CE84;
}

uint64_t ActivePowerDomain.staticEntity.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 26);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  a1[3] = &type metadata for PowerDomain;
  a1[4] = sub_10007D494();
  v10 = swift_allocObject();
  *a1 = v10;
  *(v10 + 16) = v3;
  *(v10 + 26) = v5;
  *(v10 + 24) = v4;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  *(v10 + 48) = v9;
  *(v10 + 56) = v8;
}

uint64_t ActivePowerDomain.deinit()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  sub_100024174(v0 + 64);
  return v0;
}

uint64_t ActivePowerDomain.__deallocating_deinit()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  sub_100024174(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_10007CFC0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 26);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 40);
  v9 = *(*v1 + 48);
  v10 = *(v3 + 56);
  a1[3] = &type metadata for PowerDomain;
  a1[4] = sub_10007D494();
  v11 = swift_allocObject();
  *a1 = v11;
  *(v11 + 16) = v4;
  *(v11 + 26) = v6;
  *(v11 + 24) = v5;
  *(v11 + 32) = v7;
  *(v11 + 40) = v8;
  *(v11 + 48) = v9;
  *(v11 + 56) = v10;
}

uint64_t sub_10007D074()
{
  v1 = *v0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 72);
  return result;
}

uint64_t sub_10007D0BC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 72) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_10007D120(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 72);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_10007D860;
}

void sub_10007D1B8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 72) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_10007D278(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001AB4(&qword_100174F70, &qword_100120FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_10007D2E8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_10007D34C()
{
  result = qword_1001768B0;
  if (!qword_1001768B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001768B0);
  }

  return result;
}

uint64_t sub_10007D3A0()
{
  v1 = v0[8];

  v2 = v0[10];

  v3 = v0[12];

  v4 = v0[13];

  return _swift_deallocObject(v0, 112, 7);
}

unint64_t sub_10007D3F0()
{
  result = qword_1001768B8;
  if (!qword_1001768B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001768B8);
  }

  return result;
}

uint64_t sub_10007D444()
{
  v1 = v0[8];

  v2 = v0[9];

  v3 = v0[10];

  v4 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

unint64_t sub_10007D494()
{
  result = qword_1001768C0;
  if (!qword_1001768C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001768C0);
  }

  return result;
}

uint64_t sub_10007D4E8()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_10007D600()
{
  result = qword_100176D78;
  if (!qword_100176D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176D78);
  }

  return result;
}

uint64_t sub_10007D654()
{
  v1 = *(v0 + 64);

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_10007D68C()
{
  result = qword_100176D80;
  if (!qword_100176D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176D80);
  }

  return result;
}

unint64_t sub_10007D6E0()
{
  result = qword_100176D88;
  if (!qword_100176D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176D88);
  }

  return result;
}

uint64_t sub_10007D734()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_10007D774()
{
  result = qword_100176D90;
  if (!qword_100176D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176D90);
  }

  return result;
}

uint64_t ClockRateRange.asdSampleRateRanges.getter(unint64_t a1, unint64_t a2, unint64_t a3)
{
  result = _swiftEmptyArrayStorage;
  if (!(a1 | a2) || a2 < a1)
  {
    return result;
  }

  if (a2 == a1 || a3 == 1)
  {
LABEL_41:
    sub_100001AB4(&qword_100174FA0, &unk_100120BB0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100120A20;
    v21 = [objc_allocWithZone(ASDSampleRateRange) initWithMinimum:a1 maximum:a2];
    result = v20;
    *(v20 + 32) = v21;
    return result;
  }

  v25 = _swiftEmptyArrayStorage;
  if (!a3)
  {
    if (a1)
    {
      sub_100001AB4(&qword_100174FA0, &unk_100120BB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100120A20;
      *(inited + 32) = [objc_allocWithZone(ASDSampleRateRange) initWithMinimum:a1 maximum:a1];
      sub_10007E668(inited, sub_10007EB9C);
    }

    if (a2)
    {
      sub_100001AB4(&qword_100174FA0, &unk_100120BB0);
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_100120A20;
      *(v23 + 32) = [objc_allocWithZone(ASDSampleRateRange) initWithMinimum:a2 maximum:a2];
      sub_10007E668(v23, sub_10007EB9C);
    }

    return v25;
  }

  if ((a2 - a1) % a3)
  {
    return result;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_49;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  v10 = a1 == a2;
  if (a1 >= a2)
  {
    goto LABEL_18;
  }

LABEL_9:
  v8 = !__CFADD__(a1, a3);
  if (__CFADD__(a1, a3))
  {
    v7 = 0x8000000000000000;
  }

  else
  {
    v7 = 0;
  }

  if (__CFADD__(a1, a3))
  {
    v11 = -1;
  }

  else
  {
    v11 = a1 + a3;
  }

  while (1)
  {
    sub_100001AB4(&qword_100174FA0, &unk_100120BB0);
    v13 = swift_initStackObject();
    *(v13 + 32) = [objc_allocWithZone(ASDSampleRateRange) initWithMinimum:a1 maximum:a1];
    a1 = v9 >> 62;
    if (v9 >> 62)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
      v15 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }

    else
    {
      v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_40;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (a1)
      {
        goto LABEL_33;
      }

      v16 = v9 & 0xFFFFFFFFFFFFFF8;
      if (v15 <= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (a1)
      {
LABEL_33:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_34;
      }

      v16 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v17 = *(v16 + 16);
LABEL_34:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v9 = result;
    v16 = result & 0xFFFFFFFFFFFFFF8;
LABEL_35:
    if (*(v16 + 16) >= *(v16 + 24) >> 1)
    {
      break;
    }

    sub_10001EBA8(0, &qword_100174F38, ASDSampleRateRange_ptr);
    swift_arrayInitWithCopy();
    swift_setDeallocating();
    v18 = *(v13 + 32);
    swift_unknownObjectRelease();
    ++*(v16 + 16);
    v25 = v9;
    a1 = v11;
    v10 = v11 == a2;
    if (v11 < a2)
    {
      goto LABEL_9;
    }

LABEL_18:
    v12 = !v10;
    if (((v12 | v6) & 1) != 0 || !v8 && v7 == 0x8000000000000000)
    {
      return v25;
    }

    v6 = 1;
    v11 = a1;
  }

  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_10007DC6C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1000242E0(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 56 * v8 + 32), (v6 + 32), 56 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10007DD90(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100024788(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100001AB4(&qword_100175408, &qword_100122410);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_10007DE94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v14 = *(v7 + 24) >> 1;
  if (v14 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v15 = v8 + v6;
      }

      else
      {
        v15 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_10002400C(isUniquelyReferenced_nonNull_native, v15, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v14 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = *(v7 + 16);
  if (v14 - v16 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 8 * v16 + 32), (a2 + 8 * a3), 8 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v17 = *(v7 + 16);
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    *(v7 + 16) = v19;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_10007DFA8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10002400C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10007E094(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1000247AC(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 10 * v8 + 32), (v6 + 32), 10 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10007E188(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1000248C8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v8 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10007E274(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000249EC(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100001AB4(&qword_1001754D8, &qword_100120F68);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10007E37C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100024A10(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10007E474(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100024518(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 3 * v8 + 32), (v6 + 32), 3 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10007E564(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100025008(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10007E668(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_10007EAFC(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_10007E760(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100025A4C(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100001AB4(&qword_100175440, &unk_100125510);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

BOOL Clock.isEndpointClock.getter()
{
  type metadata accessor for EndpointClock();
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  type metadata accessor for MultiClock();
  return swift_dynamicCastClass() != 0;
}

uint64_t ClockRateRange.samplingRate.getter(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    return 0;
  }

  return result;
}

void ClockRateRange.hash(into:)(int a1, Swift::UInt a2, Swift::UInt a3, Swift::UInt a4)
{
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(a4);
}

Swift::Int ClockRateRange.hashValue.getter(Swift::UInt a1, Swift::UInt a2, Swift::UInt a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  return Hasher._finalize()();
}

Swift::Int sub_10007E9AC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_10007EA18()
{
  v1 = v0[1];
  v2 = v0[2];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int sub_10007EA60()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_10007EAFC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_10007EB9C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10007F724(&qword_100174F48, &qword_100174F40, &qword_100120B88);
          for (i = 0; i != v6; ++i)
          {
            sub_100001AB4(&qword_100174F40, &qword_100120B88);
            v9 = sub_10001D8F4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10001EBA8(0, &qword_100174F38, ASDSampleRateRange_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10007ED40()
{
  result = qword_100176D98;
  if (!qword_100176D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176D98);
  }

  return result;
}

uint64_t sub_10007EDA4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10007F724(&qword_100176DD8, &qword_100176DD0, &unk_1001224D0);
          for (i = 0; i != v6; ++i)
          {
            sub_100001AB4(&qword_100176DD0, &unk_1001224D0);
            v9 = sub_10001D8F4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AUAStream(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10007EF34(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10007F724(&qword_100176DC8, &qword_100176DC0, &qword_1001224C8);
          for (i = 0; i != v6; ++i)
          {
            sub_100001AB4(&qword_100176DC0, &qword_1001224C8);
            v9 = sub_10001D974(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AUAStreamFormat();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10007F0C4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10007F724(&qword_100174F98, &qword_100174F90, &unk_100124B00);
          for (i = 0; i != v6; ++i)
          {
            sub_100001AB4(&qword_100174F90, &unk_100124B00);
            v9 = sub_10001D8F4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10001EBA8(0, &qword_100174F58, ASDControl_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10007F264(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10007F724(&qword_100174F88, &qword_100174F80, &unk_100120BA0);
          for (i = 0; i != v6; ++i)
          {
            sub_100001AB4(&qword_100174F80, &unk_100120BA0);
            v9 = sub_10001D8F4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10001EBA8(0, &qword_100174F78, ASDCustomProperty_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10007F404(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10007F724(&qword_100176DA8, &qword_100176DA0, &qword_1001224B8);
          for (i = 0; i != v6; ++i)
          {
            sub_100001AB4(&qword_100176DA0, &qword_1001224B8);
            v9 = sub_10001D86C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for ActiveStreamingInterface();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10007F594(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10007F724(&qword_100176DB8, &qword_100176DB0, &qword_1001224C0);
          for (i = 0; i != v6; ++i)
          {
            sub_100001AB4(&qword_100176DB0, &qword_1001224C0);
            v9 = sub_10001D8F4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for USBDevice();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10007F724(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001E8F0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10007F780(unsigned int a1)
{
  v1 = (a1 >> 8);
  if (v1 > 0x428)
  {
    if (v1 == 1065)
    {
      return 0xD00000000000001CLL;
    }

    if (v1 != 1112)
    {
      if (v1 == 1113)
      {
        return 0xD000000000000012;
      }

      return 0x6E776F6E6B6E55;
    }

    return 0xD000000000000012;
  }

  else
  {
    if (!(a1 >> 8))
    {
      return 0x5F444D435F503242;
    }

    if (v1 != 1)
    {
      if (v1 == 1064)
      {
        return 0xD00000000000001CLL;
      }

      return 0x6E776F6E6B6E55;
    }

    return 0x5F5053525F503242;
  }
}

AUASDCore::B2PInterface::MemOffset_optional __swiftcall B2PInterface.MemOffset.init(rawValue:)(Swift::UInt16 rawValue)
{
  if (rawValue == 53832)
  {
    v1.value = AUASDCore_B2PInterface_MemOffset_d2h;
  }

  else
  {
    v1.value = AUASDCore_B2PInterface_MemOffset_unknownDefault;
  }

  if (rawValue == 45648)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

Class sub_10007F884()
{
  sub_10000AC68(_swiftEmptyArrayStorage);
  sub_100001AB4(&qword_100176FF8, &unk_100122630);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1001215B0;
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  *(v1 + 56) = &type metadata for UInt8;
  *(v1 + 32) = v2;
  *(v1 + 88) = &type metadata for UInt8;
  *(v1 + 64) = v3;
  *(v1 + 120) = &type metadata for UInt8;
  *(v1 + 96) = v4;
  *(v1 + 152) = &type metadata for UInt8;
  *(v1 + 128) = v5;
  *(v1 + 184) = &type metadata for UInt8;
  *(v1 + 160) = v6;
  *(v1 + 216) = &type metadata for UInt8;
  *(v1 + 192) = v7;
  v8 = objc_allocWithZone(NSArray);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v8 initWithArray:isa];

  v11 = sub_10001EBA8(0, &qword_100177000, NSArray_ptr);
  v39 = v11;
  *&v38 = v10;
  sub_10000CE28(&v38, v37);
  v36 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100083C68(v37, 0x726464615F7462, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v13 = [objc_allocWithZone(NSNumber) initWithUnsignedChar:v0[6]];
  v14 = sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
  v39 = v14;
  *&v38 = v13;
  sub_10000CE28(&v38, v37);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_100083C68(v37, 0x656372756F73, 0xE600000000000000, v15);
  v16 = [objc_allocWithZone(NSNumber) initWithUnsignedChar:v0[7]];
  v39 = v14;
  *&v38 = v16;
  sub_10000CE28(&v38, v37);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_100083C68(v37, 0x6574617473, 0xE500000000000000, v17);
  v18 = [objc_allocWithZone(NSNumber) initWithUnsignedShort:*(v0 + 4)];
  v39 = v14;
  *&v38 = v18;
  sub_10000CE28(&v38, v37);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100083C68(v37, 0x6469705F7462, 0xE600000000000000, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100120A30;
  v21 = *(v0 + 10);
  v22 = *(v0 + 14);
  v23 = *(v0 + 18);
  v24 = *(v0 + 22);
  *(v20 + 56) = &type metadata for UInt32;
  *(v20 + 32) = v21;
  *(v20 + 88) = &type metadata for UInt32;
  *(v20 + 64) = v22;
  *(v20 + 120) = &type metadata for UInt32;
  *(v20 + 96) = v23;
  *(v20 + 152) = &type metadata for UInt32;
  *(v20 + 128) = v24;
  v25 = objc_allocWithZone(NSArray);
  v26 = Array._bridgeToObjectiveC()().super.isa;

  v27 = [v25 initWithArray:v26];

  v39 = v11;
  *&v38 = v27;
  sub_10000CE28(&v38, v37);
  v28 = v27;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_100083C68(v37, 0x737265765F7766, 0xE700000000000000, v29);
  v30 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(v0 + 26)];
  v39 = v14;
  *&v38 = v30;
  sub_10000CE28(&v38, v37);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  sub_100083C68(v37, 0x5F65727574616566, 0xEF6B73616D746962, v31);
  v32 = [objc_allocWithZone(NSNumber) initWithUnsignedChar:v0[30]];
  v39 = v14;
  *&v38 = v32;
  sub_10000CE28(&v38, v37);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  sub_100083C68(v37, 0x726F6C6F63, 0xE500000000000000, v33);
  v34 = Dictionary._bridgeToObjectiveC()().super.isa;

  return v34;
}

uint64_t B2PInterface.MemOffset.rawValue.getter(char a1)
{
  if (a1)
  {
    return 4294955592;
  }

  else
  {
    return 4294947408;
  }
}

Swift::Int sub_10007FD60()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = -11704;
  }

  else
  {
    v2 = -19888;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10007FDB4()
{
  if (*v0)
  {
    v1 = -11704;
  }

  else
  {
    v1 = -19888;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_10007FDF0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = -11704;
  }

  else
  {
    v2 = -19888;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unsigned __int16 *sub_10007FE40@<X0>(unsigned __int16 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 53832)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2 == 45648)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4;
  return result;
}

void sub_10007FE68(__int16 *a1@<X8>)
{
  if (*v1)
  {
    v2 = -11704;
  }

  else
  {
    v2 = -19888;
  }

  *a1 = v2;
}

void sub_10007FE84()
{
  v1 = type metadata accessor for AUACustomBooleanProperty();
  v2 = objc_allocWithZone(v1);
  v2[OBJC_IVAR____TtC9AUASDCore24AUACustomBooleanProperty_isSet] = 1;
  v3 = [objc_allocWithZone(ASDPropertyAddress) initWithSelector:1967272528 scope:1735159650 element:0];
  v34.receiver = v2;
  v34.super_class = v1;
  v4 = objc_msgSendSuper2(&v34, "initWithAddress:propertyDataType:qualifierDataType:", v3, 1886155636, 0);

  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  [v4 setSettable:0];
  v5 = v0[4];
  v0[4] = v4;

  v6 = [objc_allocWithZone(NSDictionary) init];
  v7 = v0[8];
  v8 = type metadata accessor for B2PCustomDictionaryProperty();
  v9 = objc_allocWithZone(v8);
  swift_weakInit();
  *&v9[OBJC_IVAR____TtC9AUASDCore27B2PCustomDictionaryProperty_dictionary] = v6;
  swift_weakAssign();
  *&v9[OBJC_IVAR____TtC9AUASDCore27B2PCustomDictionaryProperty_queue] = v7;
  v10 = objc_allocWithZone(ASDPropertyAddress);
  v11 = v7;
  v12 = v6;
  v13 = [v10 initWithSelector:1967669844 scope:1735159650 element:0];
  v33.receiver = v9;
  v33.super_class = v8;
  v14 = objc_msgSendSuper2(&v33, "initWithAddress:propertyDataType:qualifierDataType:", v13, 1886155636, 0);

  if (!v14)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v15 = v14;
  [v15 setSettable:1];

  v16 = v0[6];
  v0[6] = v14;

  v17 = [objc_allocWithZone(NSDictionary) init];
  v18 = objc_allocWithZone(v8);
  swift_weakInit();
  *&v18[OBJC_IVAR____TtC9AUASDCore27B2PCustomDictionaryProperty_dictionary] = v17;
  swift_weakAssign();
  *&v18[OBJC_IVAR____TtC9AUASDCore27B2PCustomDictionaryProperty_queue] = v7;
  v19 = objc_allocWithZone(ASDPropertyAddress);
  v20 = v11;
  v21 = v17;
  v22 = [v19 initWithSelector:1967407700 scope:1735159650 element:0];
  v32.receiver = v18;
  v32.super_class = v8;
  v23 = objc_msgSendSuper2(&v32, "initWithAddress:propertyDataType:qualifierDataType:", v22, 1886155636, 0);

  if (!v23)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v24 = v23;
  [v24 setSettable:0];

  v25 = v0[5];
  v0[5] = v23;

  v26 = objc_allocWithZone(type metadata accessor for B2PSetPairingProperty());
  swift_weakInit();
  swift_weakAssign();
  v26[OBJC_IVAR____TtC9AUASDCore24AUACustomBooleanProperty_isSet] = 0;
  v27 = objc_allocWithZone(ASDPropertyAddress);

  v28 = [v27 initWithSelector:1967281251 scope:1735159650 element:0];
  v31.receiver = v26;
  v31.super_class = v1;
  v29 = objc_msgSendSuper2(&v31, "initWithAddress:propertyDataType:qualifierDataType:", v28, 1886155636, 0);

  if (v29)
  {
    [v29 setSettable:1];

    v30 = v0[7];
    v0[7] = v29;

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_10008028C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v76 = a2;
  v5 = 0xD00000000000001DLL;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v74 = *(v6 - 8);
  v75 = v6;
  v7 = *(v74 + 64);
  __chkstk_darwin(v6);
  v72 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for DispatchQoS();
  v71 = *(v73 - 8);
  v9 = *(v71 + 64);
  __chkstk_darwin(v73);
  v70 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LogID(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v77[0]) = 1;
  *(v77 + 1) = 1064;
  *(v77 + 3) = 0;
  *(v77 + 7) = 256;
  aBlock = 0;
  v79 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  v15._countAndFlagsBits = 0xD00000000000002ELL;
  v15._object = 0x800000010012E020;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD00000000000001CLL;
  v16._object = 0x800000010012E0F0;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 544175136;
  v17._object = 0xE400000000000000;
  String.append(_:)(v17);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    active = ActiveFunction.deviceName.getter(ObjectType, v18);
    v22 = v21;
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0x800000010012E000;
    active = 0xD00000000000001DLL;
  }

  v23._countAndFlagsBits = active;
  v23._object = v22;
  String.append(_:)(v23);

  v24 = aBlock;
  v25 = v79;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v26 = sub_10000A1BC(v11, qword_1001794F0);
  sub_10000A2A4(v26, v14);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v27, qword_100179508);
  sub_100039AA0(5, v14, v24, v25);

  sub_10000C9D0(v14);
  v28 = [objc_allocWithZone(NSMutableData) initWithBytes:v77 length:9];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_12;
  }

  v29 = *(a1 + 24);
  v30 = swift_getObjectType();
  sub_100052AFC(0xB250, v28, v30, v29);
  if (!v2)
  {
    swift_unknownObjectRelease();
LABEL_12:

    type metadata accessor for B2POverMEM_SetPairing_Rsp(0);
    v32 = v31;
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_16;
    }

    v33 = *(a1 + 24);
    v34 = swift_getObjectType();
    sub_1000522EC(0xB250, v34, v32, v33, &aBlock);
    if (v2)
    {
      swift_unknownObjectRelease();
      goto LABEL_18;
    }

    swift_unknownObjectRelease();
    if ((v79 & 0x100) == 0)
    {
      LODWORD(v68) = v79;
      v56 = aBlock;
      aBlock = 0;
      v79 = 0xE000000000000000;
      _StringGuts.grow(_:)(57);
      v57._countAndFlagsBits = 0xD00000000000002FLL;
      v57._object = 0x800000010012E080;
      String.append(_:)(v57);
      v69 = v56;
      v58._countAndFlagsBits = sub_10007F780(v56);
      String.append(_:)(v58);

      v59._countAndFlagsBits = 0x206D6F726620;
      v59._object = 0xE600000000000000;
      String.append(_:)(v59);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v60 = *(a1 + 24);
        v61 = swift_getObjectType();
        v62 = ActiveFunction.deviceName.getter(v61, v60);
        v64 = v63;
        swift_unknownObjectRelease();
      }

      else
      {
        v64 = 0x800000010012E000;
        v62 = 0xD00000000000001DLL;
      }

      v65._countAndFlagsBits = v62;
      v65._object = v64;
      String.append(_:)(v65);

      v66 = aBlock;
      v67 = v79;
      sub_10000A2A4(v26, v14);
      sub_100039AA0(5, v14, v66, v67);

      result = sub_10000C9D0(v14);
      if (v69 == 1)
      {
        if ((v69 & 0xFFFF00) == 0x42900)
        {
          if ((v69 & 0xFF00000000) != 0)
          {
            sub_10000CA2C();
            v3 = swift_allocError();
            v36 = 116;
          }

          else
          {
            v55 = v68;
            if (v68 == 1)
            {
              goto LABEL_26;
            }

            sub_10000CA2C();
            v3 = swift_allocError();
            v36 = 117;
          }
        }

        else
        {
          sub_10000CA2C();
          v3 = swift_allocError();
          v36 = 115;
        }
      }

      else
      {
        sub_10000CA2C();
        v3 = swift_allocError();
        v36 = 114;
      }
    }

    else
    {
LABEL_16:
      sub_10000CA2C();
      v3 = swift_allocError();
      v36 = 113;
    }

    *v35 = v36;
    *(v35 + 8) = 0;
    *(v35 + 16) = 0xE000000000000000;
    swift_willThrow();
    goto LABEL_18;
  }

  swift_unknownObjectRelease();
LABEL_18:
  aBlock = 0;
  v79 = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  v37._countAndFlagsBits = 0xD000000000000024;
  v37._object = 0x800000010012E050;
  String.append(_:)(v37);
  v77[0] = v3;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v38._countAndFlagsBits = 0x69766564206E6F20;
  v38._object = 0xEB00000000206563;
  String.append(_:)(v38);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v39 = *(a1 + 24);
    v40 = swift_getObjectType();
    v5 = ActiveFunction.deviceName.getter(v40, v39);
    v42 = v41;
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0x800000010012E000;
  }

  v43._countAndFlagsBits = v5;
  v43._object = v42;
  String.append(_:)(v43);

  v44 = aBlock;
  v45 = v79;
  sub_10000A2A4(v26, v14);
  sub_100039AA0(5, v14, v44, v45);

  sub_10000C9D0(v14);
  if (swift_unknownObjectWeakLoadStrong() && (v46 = *(a1 + 24), v47 = swift_getObjectType(), v48 = (*(v46 + 16))(v47, v46), swift_unknownObjectRelease(), v48))
  {
    v69 = *(a1 + 64);
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    v82 = sub_100083C44;
    v83 = v49;
    aBlock = _NSConcreteStackBlock;
    v79 = 1107296256;
    v80 = sub_1000172D4;
    v81 = &unk_100162D90;
    v50 = _Block_copy(&aBlock);
    v68 = v48;
    v51 = v70;
    static DispatchQoS.unspecified.getter();
    v77[0] = _swiftEmptyArrayStorage;
    sub_100085218(&qword_100176DE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100001AB4(&unk_1001772A0, &qword_1001224E0);
    sub_100085260(&qword_100176DE8, &unk_1001772A0, &qword_1001224E0);
    v52 = v72;
    v53 = v75;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v50);

    (*(v74 + 8))(v52, v53);
    (*(v71 + 8))(v51, v73);
  }

  else
  {
  }

  v55 = 0;
LABEL_26:
  *v76 = v55;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> B2PInterface.processInterrupt(wValue:)(Swift::UInt16 wValue)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v3 - 8);
  v4 = *(v15 + 64);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v7 = *(v14 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v14);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 64);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = wValue;
  aBlock[4] = sub_1000818E0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000172D4;
  aBlock[3] = &unk_100162CB0;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100085218(&qword_100176DE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100001AB4(&unk_1001772A0, &qword_1001224E0);
  sub_100085260(&qword_100176DE8, &unk_1001772A0, &qword_1001224E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v15 + 8))(v6, v3);
  (*(v7 + 8))(v10, v14);
}

uint64_t sub_1000818A8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 26, 7);
}

uint64_t sub_1000818EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100081904(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for LogID(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v37[0] = *a1;
  v37[1] = v9;
  v10 = *(a1 + 48);
  v37[2] = *(a1 + 32);
  v37[3] = v10;
  sub_100081C18(v37 + 8, v3, &v36);
  if (!v2)
  {
    active = 0xD00000000000001DLL;
    v12 = *(a1 + 3);
    v31 = 1;
    v32 = 1;
    v33 = v12;
    v34 = 0;
    v35 = 514;
    v29 = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(60);
    v13._countAndFlagsBits = 0xD000000000000034;
    v13._object = 0x800000010012E330;
    String.append(_:)(v13);
    v14._countAndFlagsBits = sub_10007F780((v12 << 24) | 0x101u);
    String.append(_:)(v14);

    v15._countAndFlagsBits = 544175136;
    v15._object = 0xE400000000000000;
    String.append(_:)(v15);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      active = ActiveFunction.deviceName.getter(ObjectType, v16);
      v19 = v18;
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = 0x800000010012E000;
    }

    v20._countAndFlagsBits = active;
    v20._object = v19;
    String.append(_:)(v20);

    v21 = v29;
    v22 = v30;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v23 = sub_10000A1BC(v5, qword_1001794F0);
    sub_10000A2A4(v23, v8);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v24, qword_100179508);
    sub_100039AA0(5, v8, v21, v22);

    sub_10000C9D0(v8);
    v25 = [objc_allocWithZone(NSMutableData) initWithBytes:&v31 length:10];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v26 = *(v3 + 24);
      v27 = swift_getObjectType();
      sub_100052AFC(0xD248, v25, v27, v26);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100081C18(unsigned __int8 *a1, uint64_t a2, uint64_t *a3)
{
  active = 0xD00000000000001DLL;
  v7 = type metadata accessor for LogID(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v25 = 0xD000000000000026;
  v26 = 0x800000010012E370;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    active = ActiveFunction.deviceName.getter(ObjectType, v13);
    v16 = v15;
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0x800000010012E000;
  }

  v17._countAndFlagsBits = active;
  v17._object = v16;
  String.append(_:)(v17);

  v18 = v25;
  v19 = v26;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A1BC(v7, qword_1001794F0);
  sub_10000A2A4(v20, v10);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v21, qword_100179508);
  sub_100039AA0(5, v10, v18, v19);

  result = sub_10000C9D0(v10);
  if (v11 || v12 != 2)
  {
    sub_10000CA2C();
    v23 = swift_allocError();
    *v24 = 119;
    *(v24 + 8) = 0;
    *(v24 + 16) = 0xE000000000000000;
    result = swift_willThrow();
    *a3 = v23;
  }

  return result;
}

void sub_100081E64(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = 0xD00000000000001DLL;
  v7 = type metadata accessor for LogID(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 40);
  v12 = &off_100173000;
  if (v11)
  {
    v46 = v2;
    v13 = *(a1 + 24);
    v51 = *(a1 + 8);
    v52 = v13;
    v53 = *(a1 + 40);
    v14 = v11;
    v45 = sub_10007F884();
    *&v47 = 0;
    *(&v47 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(78);
    v50 = v47;
    v15._countAndFlagsBits = 0xD00000000000002CLL;
    v15._object = 0x800000010012E2E0;
    String.append(_:)(v15);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      active = ActiveFunction.deviceName.getter(ObjectType, v16);
      v20 = v19;
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0x800000010012E000;
      active = 0xD00000000000001DLL;
    }

    v21._countAndFlagsBits = active;
    v21._object = v20;
    String.append(_:)(v21);

    v22._countAndFlagsBits = 0x676E697474757020;
    v22._object = 0xE900000000000020;
    String.append(_:)(v22);
    v47 = v51;
    v48 = v52;
    v49 = v53;
    type metadata accessor for B2P_CMD_BT_ADDRESS_s(0);
    _print_unlocked<A, B>(_:_:)();
    v23._countAndFlagsBits = 0xD000000000000015;
    v23._object = 0x800000010012E310;
    String.append(_:)(v23);
    v24 = v50;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v25 = sub_10000A1BC(v7, qword_1001794F0);
    sub_10000A2A4(v25, v10);
    v12 = &off_100173000;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v26, qword_100179508);
    sub_100039AA0(5, v10, v24, *(&v24 + 1));

    sub_10000C9D0(v10);
    v27 = *&v14[OBJC_IVAR____TtC9AUASDCore27B2PCustomDictionaryProperty_dictionary];
    v28 = v45;
    *&v14[OBJC_IVAR____TtC9AUASDCore27B2PCustomDictionaryProperty_dictionary] = v45;
    v29 = v28;

    [v14 sendPropertyChangeNotification];
    v3 = v46;
  }

  v30 = *(a1 + 3);
  LOBYTE(v50) = 1;
  *(&v50 + 1) = 1113;
  BYTE3(v50) = v30;
  DWORD1(v50) = 0;
  *&v47 = 0;
  *(&v47 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(67);
  v31._countAndFlagsBits = 0xD00000000000003BLL;
  v31._object = 0x800000010012E2A0;
  String.append(_:)(v31);
  v32._countAndFlagsBits = sub_10007F780((v30 << 24) | 0x45901u);
  String.append(_:)(v32);

  v33._countAndFlagsBits = 544175136;
  v33._object = 0xE400000000000000;
  String.append(_:)(v33);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v34 = *(v4 + 24);
    v35 = swift_getObjectType();
    v6 = ActiveFunction.deviceName.getter(v35, v34);
    v37 = v36;
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0x800000010012E000;
  }

  v38._countAndFlagsBits = v6;
  v38._object = v37;
  String.append(_:)(v38);

  v39 = v47;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v40 = sub_10000A1BC(v7, qword_1001794F0);
  sub_10000A2A4(v40, v10);
  if (v12[408] != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v41, qword_100179508);
  sub_100039AA0(5, v10, v39, *(&v39 + 1));

  sub_10000C9D0(v10);
  v42 = [objc_allocWithZone(NSMutableData) initWithBytes:&v50 length:8];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v43 = *(v4 + 24);
    v44 = swift_getObjectType();
    sub_100052AFC(0xD248, v42, v44, v43);
    if (v3)
    {

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10008237C(__int128 *a1)
{
  v2 = v1;
  v4 = 0xD00000000000001DLL;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v74 = *(v5 - 8);
  v75 = v5;
  v6 = *(v74 + 64);
  __chkstk_darwin(v5);
  v72 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for DispatchQoS();
  v71 = *(v73 - 8);
  v8 = *(v71 + 64);
  __chkstk_darwin(v73);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LogID(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[1];
  v79 = *a1;
  v80 = v15;
  aBlock = 284673;
  LOWORD(v81) = *(a1 + 16);
  v76 = 0;
  v77 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v16._countAndFlagsBits = 0xD00000000000002DLL;
  v16._object = 0x800000010012E200;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0xD000000000000012;
  v17._object = 0x800000010012E130;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 544175136;
  v18._object = 0xE400000000000000;
  String.append(_:)(v18);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v19 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    active = ActiveFunction.deviceName.getter(ObjectType, v19);
    v23 = v22;
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0x800000010012E000;
    active = 0xD00000000000001DLL;
  }

  v24._countAndFlagsBits = active;
  v24._object = v23;
  String.append(_:)(v24);

  v25 = v76;
  v26 = v77;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v27 = sub_10000A1BC(v11, qword_1001794F0);
  sub_10000A2A4(v27, v14);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v28, qword_100179508);
  sub_100039AA0(5, v14, v25, v26);

  sub_10000C9D0(v14);
  v29 = [objc_allocWithZone(NSMutableData) initWithBytes:&aBlock length:42];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v30 = *(v2 + 24);
    v31 = swift_getObjectType();
    sub_100052AFC(0xB250, v29, v31, v30);
    swift_unknownObjectRelease();
  }

  type metadata accessor for B2POverMEMHeader(0);
  v33 = v32;
  if (swift_unknownObjectWeakLoadStrong() && (v34 = *(v2 + 24), v35 = swift_getObjectType(), sub_1000522EC(0xB250, v35, v33, v34, &aBlock), swift_unknownObjectRelease(), (v79 & 1) == 0))
  {
    v58 = aBlock;
    aBlock = 0;
    *&v79 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v59._countAndFlagsBits = 0xD000000000000033;
    v59._object = 0x800000010012E260;
    String.append(_:)(v59);
    v60._countAndFlagsBits = sub_10007F780(v58);
    String.append(_:)(v60);

    v61._countAndFlagsBits = 0x206D6F726620;
    v61._object = 0xE600000000000000;
    String.append(_:)(v61);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v62 = *(v2 + 24);
      v63 = swift_getObjectType();
      v64 = ActiveFunction.deviceName.getter(v63, v62);
      v66 = v65;
      swift_unknownObjectRelease();
    }

    else
    {
      v66 = 0x800000010012E000;
      v64 = 0xD00000000000001DLL;
    }

    v67._countAndFlagsBits = v64;
    v67._object = v66;
    String.append(_:)(v67);

    v68 = aBlock;
    v69 = v79;
    sub_10000A2A4(v27, v14);
    sub_100039AA0(5, v14, v68, v69);

    sub_10000C9D0(v14);
    if (v58 == 1)
    {
      if ((v58 & 0xFFFF00) == 0x45900)
      {
        if ((v58 & 0xFF00000000) == 0)
        {
          return 1;
        }

        sub_10000CA2C();
        v37 = swift_allocError();
        v38 = 116;
      }

      else
      {
        sub_10000CA2C();
        v37 = swift_allocError();
        v38 = 115;
      }
    }

    else
    {
      sub_10000CA2C();
      v37 = swift_allocError();
      v38 = 114;
    }
  }

  else
  {
    sub_10000CA2C();
    v37 = swift_allocError();
    v38 = 113;
  }

  *v36 = v38;
  *(v36 + 8) = 0;
  *(v36 + 16) = 0xE000000000000000;
  swift_willThrow();
  aBlock = 0;
  *&v79 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v39._countAndFlagsBits = 0xD000000000000026;
  v39._object = 0x800000010012E230;
  String.append(_:)(v39);
  v76 = v37;
  sub_100001AB4(&qword_100177270, &qword_100120A40);
  _print_unlocked<A, B>(_:_:)();
  v40._countAndFlagsBits = 0x69766564206E6F20;
  v40._object = 0xEB00000000206563;
  String.append(_:)(v40);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v41 = *(v2 + 24);
    v42 = swift_getObjectType();
    v4 = ActiveFunction.deviceName.getter(v42, v41);
    v44 = v43;
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0x800000010012E000;
  }

  v45._countAndFlagsBits = v4;
  v45._object = v44;
  String.append(_:)(v45);

  v46 = aBlock;
  v47 = v79;
  sub_10000A2A4(v27, v14);
  sub_100039AA0(5, v14, v46, v47);

  sub_10000C9D0(v14);
  if (swift_unknownObjectWeakLoadStrong() && (v48 = *(v2 + 24), v49 = swift_getObjectType(), v50 = (*(v48 + 16))(v49, v48), swift_unknownObjectRelease(), v50))
  {
    v51 = *(v2 + 64);
    v52 = swift_allocObject();
    *(v52 + 16) = v50;
    *(&v80 + 1) = sub_1000851F4;
    v81 = v52;
    aBlock = _NSConcreteStackBlock;
    *&v79 = 1107296256;
    *(&v79 + 1) = sub_1000172D4;
    *&v80 = &unk_100162E30;
    v53 = _Block_copy(&aBlock);
    v54 = v50;
    static DispatchQoS.unspecified.getter();
    v76 = _swiftEmptyArrayStorage;
    sub_100085218(&qword_100176DE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100001AB4(&unk_1001772A0, &qword_1001224E0);
    sub_100085260(&qword_100176DE8, &unk_1001772A0, &qword_1001224E0);
    v55 = v72;
    v56 = v75;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v53);

    (*(v74 + 8))(v55, v56);
    (*(v71 + 8))(v10, v73);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_100082CB4()
{
  sub_100001AB4(&unk_100177280, &unk_100120B70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10011DE90;
  *(inited + 32) = 0x726F727265;
  *(inited + 40) = 0xE500000000000000;
  v1 = objc_allocWithZone(NSString);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithString:v2];

  *(inited + 48) = v3;
  v4 = sub_10000AB64(inited);
  swift_setDeallocating();
  sub_10000D040(inited + 32, &qword_100174A38, &qword_100120180);
  sub_1000FC32C(0xD00000000000001DLL, 0x800000010012E0B0, v4);
}

void sub_100082DCC()
{
  v1 = *(v0 + 64);
}

id *B2PInterface.deinit()
{
  sub_100024174((v0 + 2));

  return v0;
}

uint64_t B2PInterface.__deallocating_deinit()
{
  sub_100024174(v0 + 16);
  v1 = *(v0 + 32);

  v2 = *(v0 + 64);

  return swift_deallocClassInstance();
}

unint64_t sub_100082ED8()
{
  result = qword_100176DF0;
  if (!qword_100176DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176DF0);
  }

  return result;
}

uint64_t sub_100082FA4@<X0>(void **a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v34 = *(v11 - 8);
  v12 = *(v34 + 64);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_5;
  }

  v33 = v10;
  v17 = *&a2[OBJC_IVAR____TtC9AUASDCore27B2PCustomDictionaryProperty_queue];
  if (!v17)
  {

LABEL_5:
    v26 = 0;
    goto LABEL_6;
  }

  v18 = result;
  v19 = v15;
  v32 = v19;
  v31 = v17;
  sub_100084904(v19, v36);
  v20 = swift_allocObject();
  v21 = v36[1];
  *(v20 + 24) = v36[0];
  v30 = v18;
  *(v20 + 16) = v18;
  *(v20 + 40) = v21;
  *(v20 + 56) = v37;
  *(v20 + 64) = a2;
  aBlock[4] = sub_1000851E4;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000172D4;
  aBlock[3] = &unk_100162DE0;
  v28 = _Block_copy(aBlock);

  v22 = a2;
  static DispatchQoS.unspecified.getter();
  v38 = _swiftEmptyArrayStorage;
  sub_100085218(&qword_100176DE0, &type metadata accessor for DispatchWorkItemFlags);
  v29 = v11;
  sub_100001AB4(&unk_1001772A0, &qword_1001224E0);
  sub_100085260(&qword_100176DE8, &unk_1001772A0, &qword_1001224E0);
  v23 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v28;
  v25 = v31;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v7 + 8))(v23, v6);
  (*(v34 + 8))(v14, v29);

  v26 = 1;
LABEL_6:
  *a3 = v26;
  return result;
}

uint64_t sub_100083318(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = type metadata accessor for LogID(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10008237C(a2);
  if (result)
  {
    *&v17[0] = 0;
    *(&v17[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v19 = v17[0];
    v10._object = 0x800000010012E1C0;
    v10._countAndFlagsBits = 0xD000000000000032;
    String.append(_:)(v10);
    v11 = *(a2 + 16);
    v17[0] = *a2;
    v17[1] = v11;
    v18 = *(a2 + 32);
    type metadata accessor for B2P_CMD_BT_ADDRESS_s(0);
    _print_unlocked<A, B>(_:_:)();
    v12 = v19;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v13 = sub_10000A1BC(v5, qword_1001794F0);
    sub_10000A2A4(v13, v8);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v14, qword_100179508);
    sub_100039AA0(5, v8, v12, *(&v12 + 1));

    sub_10000C9D0(v8);
    v15 = sub_10007F884();
    v16 = *&a3[OBJC_IVAR____TtC9AUASDCore27B2PCustomDictionaryProperty_dictionary];
    *&a3[OBJC_IVAR____TtC9AUASDCore27B2PCustomDictionaryProperty_dictionary] = v15;

    return [a3 sendPropertyChangeNotification];
  }

  return result;
}

uint64_t sub_100083624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v6 = v5;
  v12 = type metadata accessor for LogID(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v48 = a4;
    v49 = a5;
    v51 = 0;
    v52 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v51 = 0xD00000000000002FLL;
    v52 = 0x800000010012DF80;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v17 + 24);
      ObjectType = swift_getObjectType();
      active = ActiveFunction.deviceName.getter(ObjectType, v18);
      v22 = v21;
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0x800000010012E000;
      active = 0xD00000000000001DLL;
    }

    v23._countAndFlagsBits = active;
    v23._object = v22;
    String.append(_:)(v23);

    v24 = v51;
    v25 = v52;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v26 = sub_10000A1BC(v12, qword_1001794F0);
    sub_10000A2A4(v26, v15);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v27, qword_100179508);
    sub_100039AA0(5, v15, v24, v25);

    sub_10000C9D0(v15);
    v28 = type metadata accessor for B2PSetPairingProperty();
    v50.receiver = v6;
    v50.super_class = v28;
    if (objc_msgSendSuper2(&v50, "setPropertyWithQualifierSize:qualifierData:dataSize:andData:forClient:", a1, a2, a3, v48, v49))
    {
      v29 = 0xD00000000000001DLL;
      if (*(v6 + OBJC_IVAR____TtC9AUASDCore24AUACustomBooleanProperty_isSet) == 1)
      {
        v30 = *(v17 + 64);
        OS_dispatch_queue.sync<A>(execute:)();
        if (v51 == 1)
        {
          v51 = 0;
          v52 = 0xE000000000000000;
          _StringGuts.grow(_:)(48);

          v51 = 0xD000000000000023;
          v52 = 0x800000010012DFD0;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v31 = *(v17 + 24);
            v32 = swift_getObjectType();
            v29 = ActiveFunction.deviceName.getter(v32, v31);
            v34 = v33;
            swift_unknownObjectRelease();
          }

          else
          {
            v34 = 0x800000010012E000;
          }

          v39._countAndFlagsBits = v29;
          v39._object = v34;
          String.append(_:)(v39);

          v40._countAndFlagsBits = 0x7373656363757320;
          v40._object = 0xEB000000006C7566;
          String.append(_:)(v40);
          v41 = v51;
          v42 = v52;
          sub_10000A2A4(v26, v15);
          sub_100039AA0(5, v15, v41, v42);
        }

        else
        {
          v51 = 0;
          v52 = 0xE000000000000000;
          _StringGuts.grow(_:)(44);

          v51 = 0xD000000000000023;
          v52 = 0x800000010012DFD0;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v35 = *(v17 + 24);
            v36 = swift_getObjectType();
            v29 = ActiveFunction.deviceName.getter(v36, v35);
            v38 = v37;
            swift_unknownObjectRelease();
          }

          else
          {
            v38 = 0x800000010012E000;
          }

          v43._countAndFlagsBits = v29;
          v43._object = v38;
          String.append(_:)(v43);

          v44._countAndFlagsBits = 0x64656C69616620;
          v44._object = 0xE700000000000000;
          String.append(_:)(v44);
          v45 = v51;
          v46 = v52;
          sub_10000A2A4(v26, v15);
          sub_100039F58(5, v15, v45, v46);
        }

        sub_10000C9D0(v15);
      }

      else
      {
      }

      return 1;
    }

    else
    {
      sub_10000A2A4(v26, v15);
      sub_100039F58(5, v15, 0xD00000000000001FLL, 0x800000010012DFB0);

      sub_10000C9D0(v15);
      return 0;
    }
  }

  return result;
}

id sub_100083B84(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100083C0C()
{

  return _swift_deallocObject(v0, 24, 7);
}

_OWORD *sub_100083C68(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001D11C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1000CC92C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1000CBDA0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10001D11C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_10000CE78(v23);

    return sub_10000CE28(a1, v23);
  }

  else
  {
    sub_10004BBAC(v11, a2, a3, a1, v22);
  }
}