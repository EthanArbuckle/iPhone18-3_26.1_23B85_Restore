uint64_t specialized AttributedString.Runs.AttributesSlice4.index(before:)@<X0>(__int128 *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v276 - v8;
  v10 = *a1;
  v310 = a1[1];
  v304 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice4Vy__AA15AttributeScopesO0aE0V014InflectionRuleG0OAK017AgreementArgumentG0OAK0k7ConceptG0OAK08ReferentmG0OGMd);
  v309 = *(v3 + *(v11 + 84));
  v305 = *(v309 + 2);
  if (!v305)
  {
LABEL_243:
    __break(1u);
    goto LABEL_244;
  }

  v293 = a2;
  v303 = *(v3 + *(v11 + 88));
  v12 = v3[23];
  v13 = v3[26];
  v14 = v304;
  v15 = *(type metadata accessor for AttributedString.Runs() + 24);
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v312 = v15;
  RangeSet.ranges.getter();
  v16 = v9;
  v17 = RangeSet.Ranges.count.getter();
  v19 = *(v7 + 8);
  v18 = (v7 + 8);
  v313 = v19;
  (v19)(v9, v6);
  if (v13 == 2 || (v12 ^ v14) >= 0x400)
  {
    v308 = v14;
    if (v17 >= 1)
    {
      v18 = v3;
      v22 = 0;
      v23 = v308 >> 10;
      while (!__OFADD__(v22, v17))
      {
        v13 = (v22 + v17) / 2;
        RangeSet.ranges.getter();
        v16 = v9;
        RangeSet.Ranges.subscript.getter();
        (v313)(v9, v6);
        v20 = v325;
        if (v23 < v325 >> 10)
        {
          v17 = (v22 + v17) / 2;
          if (v22 >= v13)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v21 = v310;
          if (v23 < v328 >> 10)
          {
            goto LABEL_13;
          }

          v22 = v13 + 1;
          if (v13 + 1 >= v17)
          {
            goto LABEL_12;
          }
        }
      }

LABEL_234:
      __break(1u);
      goto LABEL_235;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    v3 = v18;
    if ((v20 ^ v308) > 0x3FF)
    {
      v297 = v20;
      v291 = v326;
      v24 = v327;
      goto LABEL_17;
    }
  }

  else
  {
    v13 = v17;
  }

  if (v13 < 1)
  {
LABEL_244:
    __break(1u);
LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:
    __break(1u);
    goto LABEL_248;
  }

  type metadata accessor for AttributedString.Runs();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  RangeSet.ranges.getter();
  RangeSet.Ranges.subscript.getter();
  (v313)(v9, v6);
  v291 = v326;
  v297 = v325;
  v24 = v327;
  v21 = v329;
  v304 = v328;
LABEL_17:
  v310 = v21;
  v25 = v303;
  if (*(v303 + 16) == 1)
  {
    result = specialized Set.contains(_:)(0, 1, v303);
    if ((result & 1) == 0)
    {
      v56 = *v3;
      v57 = *(*v3 + 24);
      v58 = *(*v3 + 56);
      v359 = *(*v3 + 40);
      v360 = v58;
      v358 = v57;
      v59 = v304 >> 10;
      v60 = v297;
      if (v304 >> 10 < v297 >> 10)
      {
LABEL_254:
        __break(1u);
        goto LABEL_255;
      }

      v61 = v56[3];
      v62 = v56[4];
      v63 = v56[5];
      v64 = v56[6];
      v65 = v56[7];
      v66 = v56[8];
      *&v335[1] = v291;
      v335[0] = v297;
      v335[3] = v24;
      v67 = v291;
      v336 = v304;
      v337 = v310;
      v68 = *(&v291 + 1);
      if (v297 >> 10 == v59)
      {
        goto LABEL_224;
      }

      v309 = v66;
      v311 = v65;
      v312 = v64;
      v313 = v63;
      v69 = *(v56 + 5);
      v348 = *(v56 + 3);
      v349 = v69;
      v302 = v56;
      v350 = v56[7];
      outlined init with copy of Rope<BigString._Chunk>._Node?(&v348, &v325);
      if ((specialized Set.contains(_:)(0, 0, v25) & 1) != 0 && v59 > BigString.startIndex.getter() >> 10)
      {
        v307 = v62;
        v308 = v61;
        *&v355 = v61;
        *(&v355 + 1) = v62;
        *&v356 = v313;
        *(&v356 + 1) = v312;
        *&v357 = v311;
        *(&v357 + 1) = v309;
        v70 = BigString.UTF8View.index(before:)();
        v72 = v71;
        v74 = v73;
        v76 = v75;
        result = BigString.UTF8View.subscript.getter();
        if (v59 < v70 >> 10)
        {
LABEL_260:
          __break(1u);
          goto LABEL_261;
        }

        v319 = v70;
        v320 = v72;
        v321 = v74;
        v322 = v76;
        v323 = v304;
        v324 = v310;
        specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v319, &v325);
        result = outlined destroy of BigSubstring.UTF8View(&v339);
        v77 = v297;
        v25 = v303;
        v78 = v310;
        v62 = v307;
        v61 = v308;
        if (v327 != 2)
        {
          v77 = v325;
          if (v59 < v325 >> 10)
          {
            goto LABEL_264;
          }

          v68 = *(&v326 + 1);
          v67 = v326;
          v24 = v327;
        }
      }

      else
      {
        v77 = v297;
        v78 = v310;
      }

      v297 = v77;
      *&v314 = v77;
      *(&v314 + 1) = v67;
      *&v315 = v68;
      *(&v315 + 1) = v24;
      v316 = v304;
      v317 = v78;
      if (specialized Collection<>._containsScalarConstraint.getter(v25))
      {
        v307 = v62;
        v308 = v61;
        v79 = v25;
        v82 = *(v25 + 56);
        v81 = v25 + 56;
        v80 = v82;
        v83 = 1 << *(v79 + 32);
        v84 = -1;
        if (v83 < 64)
        {
          v84 = ~(-1 << v83);
        }

        v85 = v84 & v80;
        v86 = (v83 + 63) >> 6;

        v87 = 0;
        v88 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v85)
          {
            goto LABEL_62;
          }

          do
          {
            v89 = v87 + 1;
            if (__OFADD__(v87, 1))
            {
              goto LABEL_242;
            }

            if (v89 >= v86)
            {

              *&v352 = v308;
              *(&v352 + 1) = v307;
              *&v353 = v313;
              *(&v353 + 1) = v312;
              *&v354 = v311;
              *(&v354 + 1) = v309;
              BigString.UnicodeScalarView.subscript.getter();
              v60 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(v88);
              v266 = v273;
              v268 = v274;
              v270 = v275;
              outlined destroy of BigString(&v358);

              result = outlined destroy of BigSubstring.UnicodeScalarView(&v325);
              if (v270 != 2)
              {
                v56 = v302;
                if (v59 >= v60 >> 10)
                {
LABEL_227:
                  v67 = v266;
                  v68 = v268;
                  v24 = v270;
                  goto LABEL_224;
                }

LABEL_261:
                __break(1u);
                goto LABEL_262;
              }

LABEL_223:
              v56 = v302;
              v60 = v297;
LABEL_224:
              v271 = v56[2];
              v272 = v293;
              *v293 = v60;
              v272[1] = v67;
              v272[2] = v68;
              v272[3] = v24;
              v272[4] = v271;
              return result;
            }

            v85 = *(v81 + 8 * v89);
            ++v87;
          }

          while (!v85);
          v87 = v89;
LABEL_62:
          v90 = __clz(__rbit64(v85));
          v85 &= v85 - 1;
          v91 = (*(v303 + 48) + ((v87 << 10) | (16 * v90)));
          v92 = v91[1];
          if (v92 >= 2)
          {
            v93 = specialized Collection.first.getter(*v91, v92);
            if ((v93 & 0x100000000) == 0)
            {
              *&v310 = v93;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v88 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v88 + 2) + 1, 1, v88);
              }

              v95 = *(v88 + 2);
              v94 = *(v88 + 3);
              v96 = (v95 + 1);
              v97 = v310;
              if (v95 >= v94 >> 1)
              {
                v306 = (v95 + 1);
                v98 = v88;
                v99 = v95;
                v100 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1, v98);
                v96 = v306;
                v95 = v99;
                v88 = v100;
                v97 = v310;
              }

              *(v88 + 2) = v96;
              *&v88[4 * v95 + 32] = v97;
            }
          }
        }
      }

LABEL_221:
      v259 = &v358;
      goto LABEL_222;
    }
  }

  v292 = v24;
  v27 = *v3;
  v28 = *(*v3 + 24);
  v289 = (*v3 + 24);
  v29 = *(v27 + 40);
  v358 = v28;
  v359 = v29;
  v360 = *(v27 + 56);
  swift_unknownObjectRetain();
  v279 = *(&v304 + 1);
  v290 = v304;
  v280 = v310;
  v30 = BigString.UTF8View.index(before:)();
  v32 = v31;
  v34 = v33;
  v286 = v35;
  swift_unknownObjectRelease();
  v36 = *(v27 + 72);
  v37 = *(v27 + 88);
  if (v36)
  {
    v38 = *(v27 + 88);
  }

  else
  {
    v38 = 0;
  }

  v294 = v30 >> 11;
  if (v38 < (v30 >> 11))
  {
    goto LABEL_245;
  }

  v283 = v34;
  v284 = v32;
  v39 = *(v27 + 80);
  v301 = *(v27 + 96);
  v302 = v27;
  v285 = v30;
  if (v36)
  {
    if (v294 < v37)
    {
      v16 = (v36 + 16);
      LODWORD(v40) = *(v36 + 16);
      if (*(v36 + 16))
      {
        v313 = v3;
        v41 = *(v36 + 18);
        swift_unknownObjectRetain_n();
        if (!v41)
        {
          v43 = 0;
          v42 = v294;
          v47 = v36;
          v3 = v313;
          goto LABEL_70;
        }

        v312 = v39;
        v42 = v294;
        v43 = v41;
        v44 = v36;
        while (1)
        {
          v45 = *v16;
          if (*v16)
          {
            break;
          }

          v51 = v42;
LABEL_38:
          if (v51)
          {
            goto LABEL_241;
          }

          v42 = 0;
LABEL_29:
          v43 = (v45 << ((4 * v41 + 8) & 0x3C)) | ((-15 << ((4 * v41 + 8) & 0x3C)) - 1) & v43;
          v46 = *(v44 + 24 + 24 * v45);
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          v47 = v46;
          v16 = (v46 + 16);
          LOBYTE(v41) = *(v47 + 18);
          v44 = v47;
          if (!v41)
          {
            LODWORD(v40) = *v16;
            if (*v16)
            {
              v39 = v312;
              v3 = v313;
LABEL_70:
              v101 = 0;
              v102 = 24;
              v55 = v42;
              v40 = v40;
              while (1)
              {
                v103 = *(v47 + v102);
                v104 = v55 - v103;
                if (__OFSUB__(v55, v103))
                {
                  goto LABEL_239;
                }

                if (__OFADD__(v104, 1))
                {
                  goto LABEL_240;
                }

                if (v104 + 1 < 1)
                {
                  break;
                }

                ++v101;
                v102 += 24;
                v55 -= v103;
                if (v40 == v101)
                {
                  if (!v104)
                  {
                    goto LABEL_76;
                  }

LABEL_231:
                  __break(1u);
LABEL_232:
                  __break(1u);
                  goto LABEL_233;
                }
              }

              v40 = v101;
            }

            else
            {
              v40 = 0;
              v39 = v312;
              v3 = v313;
              if (v42)
              {
                goto LABEL_231;
              }

LABEL_76:
              v55 = 0;
            }

            v105 = v47;
            swift_unknownObjectRelease();
            v54 = v105;
            v53 = v43 & 0xFFFFFFFFFFFFF0FFLL | (v40 << 8);
            v296 = v105;
LABEL_41:
            v295 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v301, v53, v54, v36, v39);
            swift_unknownObjectRelease();
            goto LABEL_80;
          }
        }

        v48 = 0;
        v49 = (v44 + 40);
        while (1)
        {
          v50 = *v49;
          v49 += 3;
          v51 = v42 - v50;
          if (__OFSUB__(v42, v50))
          {
            goto LABEL_232;
          }

          if (__OFADD__(v51, 1))
          {
            break;
          }

          if (v51 + 1 < 1)
          {
            v45 = v48;
            goto LABEL_29;
          }

          ++v48;
          v42 = v51;
          if (v45 == v48)
          {
            goto LABEL_38;
          }
        }

LABEL_233:
        __break(1u);
        goto LABEL_234;
      }
    }
  }

  v52 = swift_unknownObjectRetain();
  v53 = specialized Rope._endPath.getter(v52);
  v54 = 0;
  v55 = 0;
  v296 = 0;
  if (v36)
  {
    goto LABEL_41;
  }

  v295 = 0;
LABEL_80:
  v106 = (v294 - v55);
  if (__OFSUB__(v294, v55))
  {
    goto LABEL_246;
  }

  v107 = v302[9];
  v108 = v302[10];
  v109 = v302[11];
  v110 = v302[12];
  swift_unknownObjectRetain();
  specialized Rope.subscript.getter(v301, v53, v296, v107, v108, v109, v110);
  v111 = v3;
  v113 = v112;
  v115 = v114;
  result = swift_unknownObjectRelease();
  v116 = v111[1];
  if (v116 >= v295)
  {

    goto LABEL_161;
  }

  v281 = (v309 + 40);
  v298 = v113;
  v299 = v115;
  v277 = v116;
  while (2)
  {
    v118 = v302[9];
    v117 = v302[10];
    v119 = v302[12];
    v325 = v301;
    *&v326 = v53;
    v120 = v296;
    *(&v326 + 1) = v296;
    if (v301 != v119)
    {
      goto LABEL_247;
    }

    v313 = v117;
    v121 = v53;
    if (v118)
    {
      v122 = *(v118 + 18);
      result = swift_unknownObjectRetain();
      v120 = v296;
      if (v122 >= v121)
      {
        goto LABEL_248;
      }
    }

    else if (!v53)
    {
LABEL_248:
      __break(1u);
      goto LABEL_249;
    }

    v288 = v106;
    if (v120)
    {
      v123 = (4 * *(v120 + 18) + 8) & 0x3C;
      if (((v121 >> v123) & 0xF) != 0)
      {
        v124 = ((((v121 >> v123) & 0xF) - 1) << v123) | ((-15 << v123) - 1) & v121;
LABEL_116:
        v144 = (4 * *(v120 + 18) + 8) & 0x3C;
        v287 = v124;
        v296 = v120;
        v138 = *(v120 + 24 * ((v124 >> v144) & 0xF) + 24);

        swift_unknownObjectRelease();
        v139 = 0;
        goto LABEL_117;
      }
    }

    v125 = (4 * *(v118 + 18) + 8) & 0x3C;
    v126 = (v121 >> v125) & 0xF;
    if (*(v118 + 18))
    {
      if (v126 >= *(v118 + 16))
      {
        swift_unknownObjectRetain();
        if (!v126)
        {
          goto LABEL_255;
        }

LABEL_113:
        *&v326 = v326 & ((-15 << v125) - 1) | ((v126 - 1) << v125);
        v142 = *(v118 + 24 * v126);
        swift_unknownObjectRetain();
        v143 = specialized Rope._Node.descendToLastItem(under:)(&v326, v142);
        swift_unknownObjectRelease();
        v120 = v143;
        *(&v326 + 1) = v143;
        v106 = v288;
        goto LABEL_114;
      }

      v120 = *(v118 + 24 * ((v121 >> v125) & 0xF) + 24);
      v127 = (4 * *(v120 + 18) + 8) & 0x3C;
      v128 = (v121 >> v127) & 0xF;
      if (!*(v120 + 18))
      {
        if (v128)
        {
          *&v326 = ((v128 - 1) << v127) | v121 & 0xFFFFFFFFFFFFF0FFLL;
          *(&v326 + 1) = v120;
          swift_unknownObjectRetain();
          v106 = v288;
          goto LABEL_114;
        }

        swift_unknownObjectRetain();
LABEL_112:
        if (!v126)
        {
LABEL_255:
          result = swift_unknownObjectRelease();
          __break(1u);
          goto LABEL_256;
        }

        goto LABEL_113;
      }

      if (v128 >= *(v120 + 16))
      {
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
      }

      else
      {
        v312 = *(v118 + 24 * ((v121 >> v125) & 0xF) + 24);
        v129 = *(v120 + 24 * ((v121 >> v127) & 0xF) + 24);
        v130 = (4 * *(v129 + 18) + 8) & 0x3C;
        v131 = (v121 >> v130) & 0xF;
        if (*(v129 + 18))
        {
          v132 = *(v129 + 16);
          v311 = v129;
          if (v131 < v132)
          {
            v133 = *(v129 + 24 * ((v121 >> v130) & 0xF) + 24);
            v134 = *(v133 + 18);
            v135 = (4 * v134 + 8) & 0x3C;
            v136 = (v121 >> v135) & 0xF;
            *&v339 = v136;
            if (v134)
            {
              v296 = v133;
              LODWORD(v308) = v134;
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              v137 = v296;
              swift_unknownObjectRetain();
              LODWORD(v308) = specialized closure #1 in Rope._Node.formPredecessor(of:)((v137 + 16), v137 + 24, &v339, &v325, v308);
              swift_unknownObjectRelease();
              if (v308)
              {
                v120 = *(&v326 + 1);
LABEL_153:
                swift_unknownObjectRelease();
                v106 = v288;
                v113 = v298;
                goto LABEL_154;
              }

              goto LABEL_147;
            }

            if (v136)
            {
              *&v326 = ((v136 - 1) << v135) | v121 & 0xFFFFFFFFFFFFF0FFLL;
              *(&v326 + 1) = v133;
              v120 = v133;
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              goto LABEL_153;
            }
          }

          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
LABEL_147:
          if (v131)
          {
            *&v326 = v326 & ((-15 << v130) - 1) | ((v131 - 1) << v130);
            v174 = v311[3 * v131];
            swift_unknownObjectRetain();
            v175 = specialized Rope._Node.descendToLastItem(under:)(&v326, v174);
            swift_unknownObjectRelease();
            v120 = v175;
            *(&v326 + 1) = v175;
            swift_unknownObjectRelease();
            v106 = v288;
            v113 = v298;
LABEL_154:
            swift_unknownObjectRelease();
LABEL_114:
            swift_unknownObjectRelease();
            if (v325 != v301)
            {
LABEL_249:
              __break(1u);
              goto LABEL_250;
            }

            v124 = v326;
            if (v120)
            {
              goto LABEL_116;
            }

            goto LABEL_102;
          }

          swift_unknownObjectRelease();
          v113 = v298;
          v120 = v312;
          goto LABEL_108;
        }

        if (v131)
        {
          *&v326 = ((v131 - 1) << v130) | v121 & 0xFFFFFFFFFFFFF0FFLL;
          *(&v326 + 1) = v129;
          v120 = v129;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v106 = v288;
          v113 = v298;
          swift_unknownObjectRelease();
          goto LABEL_114;
        }

        swift_unknownObjectRetain();
        v120 = v312;
        swift_unknownObjectRetain();
        v113 = v298;
      }

LABEL_108:
      if (v128)
      {
        *&v326 = v326 & ((-15 << v127) - 1) | ((v128 - 1) << v127);
        v140 = *(v120 + 24 * v128);
        swift_unknownObjectRetain();
        v141 = specialized Rope._Node.descendToLastItem(under:)(&v326, v140);
        swift_unknownObjectRelease();
        v120 = v141;
        *(&v326 + 1) = v141;
        swift_unknownObjectRelease();
        v106 = v288;
        goto LABEL_114;
      }

      swift_unknownObjectRelease();
      goto LABEL_112;
    }

    if (!v126)
    {
LABEL_256:
      __break(1u);
      goto LABEL_257;
    }

    v124 = ((v126 - 1) << v125) | v121 & 0xFFFFFFFFFFFFF0FFLL;
    *&v326 = v124;
    *(&v326 + 1) = v118;
    v120 = v118;
    if (v118)
    {
      goto LABEL_116;
    }

LABEL_102:
    v287 = v124;
    v138 = specialized Rope._Node.subscript.getter(v124, v118);
    swift_unknownObjectRelease();

    v106 = v288;

    v296 = 0;
    v139 = 1;
LABEL_117:
    if (__OFSUB__(v106, v138))
    {
LABEL_250:
      __break(1u);
      goto LABEL_251;
    }

    if (v301 != v302[12])
    {
LABEL_251:
      __break(1u);
      goto LABEL_252;
    }

    v278 = (v106 - v138);
    if (v139)
    {
      v145 = v302[9];
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v287, v145);
      v147 = v146;
      v282 = v148;
      swift_unknownObjectRelease();
    }

    else
    {
      v149 = v296 + 24 * ((v287 >> ((4 * *(v296 + 18) + 8) & 0x3C)) & 0xF);
      v147 = *(v149 + 32);
      v150 = *(v149 + 40);

      v282 = v150;
    }

    v151 = 0;
    --v295;
    v152 = v281;
    v300 = v147;
    do
    {
      if (v151 >= *(v309 + 2))
      {
        __break(1u);
        goto LABEL_237;
      }

      v312 = v152;
      v313 = v151;
      v154 = *(v152 - 1);
      v153 = *v152;
      if (*(v113 + 16))
      {

        v155 = specialized __RawDictionaryStorage.find<A>(_:)(v154, v153);
        if (v156)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v113 + 56) + 72 * v155, &v339);
          if (!*(v147 + 16))
          {
            goto LABEL_133;
          }
        }

        else
        {
          v343 = 0;
          v341 = 0u;
          v342 = 0u;
          v339 = 0u;
          v340 = 0u;
          if (!*(v147 + 16))
          {
LABEL_133:

            goto LABEL_134;
          }
        }
      }

      else
      {
        v343 = 0;
        v341 = 0u;
        v342 = 0u;
        v339 = 0u;
        v340 = 0u;

        if (!*(v147 + 16))
        {
          goto LABEL_133;
        }
      }

      v157 = specialized __RawDictionaryStorage.find<A>(_:)(v154, v153);
      v159 = v158;

      if (v159)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v147 + 56) + 72 * v157, v335);
        goto LABEL_135;
      }

LABEL_134:
      v338 = 0;
      v336 = 0u;
      v337 = 0u;
      memset(v335, 0, sizeof(v335));
LABEL_135:
      outlined init with copy of FloatingPointRoundingRule?(&v339, &v325, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined init with copy of FloatingPointRoundingRule?(v335, &v330, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (v327)
      {
        outlined init with copy of FloatingPointRoundingRule?(&v325, &v319, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (!*(&v331 + 1))
        {
          outlined destroy of TermOfAddress?(v335, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v339, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of AttributedString._AttributeValue(&v319);
LABEL_158:
          outlined destroy of TermOfAddress?(&v325, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_160:

          v106 = v288;
          goto LABEL_161;
        }

        v316 = v332;
        v317 = v333;
        v318 = v334;
        v314 = v330;
        v315 = v331;
        v160 = v322;
        v307 = v323;
        v306 = __swift_project_boxed_opaque_existential_1(&v319, v322);
        v161 = __swift_project_boxed_opaque_existential_1(&v314, *(&v315 + 1));
        v311 = &v276;
        v162 = *(v160 - 8);
        MEMORY[0x1EEE9AC00](v161);
        v164 = &v276 - ((v163 + 15) & 0xFFFFFFFFFFFFFFF0);
        v308 = &v276;
        v166 = MEMORY[0x1EEE9AC00](v165);
        (*(v168 + 16))(&v276 - ((v167 + 15) & 0xFFFFFFFFFFFFFFF0), v166);
        v169 = type metadata accessor for Optional();
        v170 = *(v169 - 8);
        MEMORY[0x1EEE9AC00](v169);
        v172 = &v276 - v171;
        if ((swift_dynamicCast() & 1) == 0)
        {
          outlined destroy of TermOfAddress?(v335, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v339, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          (*(v162 + 56))(v172, 1, 1, v160);
          (*(v170 + 8))(v172, v169);
          outlined destroy of AttributedString._AttributeValue(&v314);
          outlined destroy of AttributedString._AttributeValue(&v319);
          outlined destroy of TermOfAddress?(&v325, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          goto LABEL_160;
        }

        (*(v162 + 56))(v172, 0, 1, v160);
        (*(v162 + 32))(v164, v172, v160);
        v173 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v162 + 8))(v164, v160);
        outlined destroy of TermOfAddress?(v335, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v339, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v314);
        outlined destroy of AttributedString._AttributeValue(&v319);
        outlined destroy of TermOfAddress?(&v325, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v113 = v298;
        v147 = v300;
        if ((v173 & 1) == 0)
        {
          goto LABEL_160;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(v335, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v339, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (*(&v331 + 1))
        {
          goto LABEL_158;
        }

        outlined destroy of TermOfAddress?(&v325, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      v151 = v313 + 1;
      v152 = (v312 + 16);
    }

    while (v305 != v313 + 1);

    v16 = v278;
    v106 = v278;
    v53 = v287;
    if (v277 < v295)
    {
      continue;
    }

    break;
  }

LABEL_235:

  v106 = v16;
LABEL_161:
  v60 = v297;
  v56 = v302;
  if (v106 >= (v297 >> 11))
  {
    v186 = *(v302 + 5);
    v355 = *(v302 + 3);
    v356 = v186;
    v357 = *(v302 + 7);
    v187 = v302;
    swift_unknownObjectRetain();
    v60 = BigString.UTF8View.index(_:offsetBy:)();
    v67 = v188;
    v68 = v189;
    v24 = v190;
    result = swift_unknownObjectRelease();
    v191 = *v289;
    v192 = v289[2];
    v353 = v289[1];
    v354 = v192;
    v352 = v191;
    v193 = v290 >> 10;
    if (v290 >> 10 < v60 >> 10)
    {
LABEL_253:
      __break(1u);
      goto LABEL_254;
    }

    v195 = v187[3];
    v194 = v187[4];
    v196 = v187[5];
    v197 = v187[6];
    v198 = v187[7];
    v199 = v187[8];
    v335[0] = v60;
    v335[1] = v67;
    v335[2] = v68;
    v335[3] = v24;
    v336 = v304;
    v337 = v310;
    if (v60 >> 10 == v193)
    {
      v56 = v187;
      goto LABEL_224;
    }

    v308 = v199;
    v309 = v198;
    v311 = v197;
    v312 = v196;
    v313 = v194;
    v210 = v24;
    v211 = v60;
    v212 = v289[1];
    v361[0] = *v289;
    v361[1] = v212;
    v362 = *(v289 + 4);
    outlined init with copy of Rope<BigString._Chunk>._Node?(v361, &v325);
    v213 = v303;
    if ((specialized Set.contains(_:)(0, 0, v303) & 1) != 0 && v193 > BigString.startIndex.getter() >> 10)
    {
      v307 = v195;
      *&v348 = v195;
      *(&v348 + 1) = v313;
      *&v349 = v312;
      *(&v349 + 1) = v311;
      v350 = v309;
      v351 = v308;
      v214 = BigString.UTF8View.index(before:)();
      v216 = v215;
      v306 = v217;
      v219 = v218;
      result = BigString.UTF8View.subscript.getter();
      if (v193 < v214 >> 10)
      {
        goto LABEL_258;
      }

      v319 = v214;
      v320 = v216;
      v321 = v306;
      v322 = v219;
      v323 = v304;
      v324 = v310;
      specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v319, &v325);
      result = outlined destroy of BigSubstring.UTF8View(&v339);
      v220 = v310;
      v213 = v303;
      v195 = v307;
      if (v327 != 2)
      {
        v211 = v325;
        if (v193 < v325 >> 10)
        {
          goto LABEL_263;
        }

        v68 = *(&v326 + 1);
        v67 = v326;
        v210 = v327;
      }
    }

    else
    {
      v220 = v310;
    }

    v297 = v211;
    *&v314 = v211;
    *(&v314 + 1) = v67;
    *&v315 = v68;
    *(&v315 + 1) = v210;
    v24 = v210;
    v316 = v304;
    v317 = v220;
    if (specialized Collection<>._containsScalarConstraint.getter(v213))
    {
      v307 = v195;
      v240 = v213 + 56;
      v241 = 1 << *(v213 + 32);
      v242 = -1;
      if (v241 < 64)
      {
        v242 = ~(-1 << v241);
      }

      v243 = v242 & *(v213 + 56);
      v244 = (v241 + 63) >> 6;

      v245 = 0;
      v246 = MEMORY[0x1E69E7CC0];
      while (v243)
      {
LABEL_207:
        v248 = __clz(__rbit64(v243));
        v243 &= v243 - 1;
        v249 = (*(v303 + 48) + ((v245 << 10) | (16 * v248)));
        v250 = v249[1];
        if (v250 >= 2)
        {
          v251 = specialized Collection.first.getter(*v249, v250);
          if ((v251 & 0x100000000) == 0)
          {
            *&v310 = v251;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v246 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v246 + 2) + 1, 1, v246);
            }

            v253 = *(v246 + 2);
            v252 = *(v246 + 3);
            v254 = (v253 + 1);
            v255 = v310;
            if (v253 >= v252 >> 1)
            {
              v306 = (v253 + 1);
              v256 = v246;
              v257 = v253;
              v258 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v252 > 1), v253 + 1, 1, v256);
              v254 = v306;
              v253 = v257;
              v246 = v258;
              v255 = v310;
            }

            *(v246 + 2) = v254;
            *&v246[4 * v253 + 32] = v255;
          }
        }
      }

      while (1)
      {
        v247 = v245 + 1;
        if (__OFADD__(v245, 1))
        {
          goto LABEL_238;
        }

        if (v247 >= v244)
        {

          *&v344 = v307;
          *(&v344 + 1) = v313;
          *&v345 = v312;
          *(&v345 + 1) = v311;
          v346 = v309;
          v347 = v308;
          BigString.UnicodeScalarView.subscript.getter();
          v60 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(v246);
          v266 = v265;
          v268 = v267;
          v270 = v269;
          outlined destroy of BigString(&v352);

          result = outlined destroy of BigSubstring.UnicodeScalarView(&v325);
          if (v270 == 2)
          {
            goto LABEL_223;
          }

          v56 = v302;
          if (v193 < v60 >> 10)
          {
            __break(1u);
            goto LABEL_221;
          }

          goto LABEL_227;
        }

        v243 = *(v240 + 8 * v247);
        ++v245;
        if (v243)
        {
          v245 = v247;
          goto LABEL_207;
        }
      }
    }

    v259 = &v352;
LABEL_222:
    result = outlined destroy of BigString(v259);
    goto LABEL_223;
  }

  v176 = *v289;
  v177 = v289[2];
  v356 = v289[1];
  v357 = v177;
  v355 = v176;
  v178 = v290 >> 10;
  v179 = v303;
  if (v290 >> 10 < v297 >> 10)
  {
LABEL_252:
    __break(1u);
    goto LABEL_253;
  }

  v180 = v302[3];
  v181 = v302[4];
  v182 = v302[5];
  v183 = v302[6];
  v184 = v302[7];
  v185 = v302[8];
  *&v335[1] = v291;
  v335[0] = v297;
  v335[3] = v292;
  v67 = v291;
  v336 = v304;
  v337 = v310;
  v68 = *(&v291 + 1);
  if (v297 >> 10 == v178)
  {
    v24 = v292;
    goto LABEL_224;
  }

  v312 = v185;
  v313 = v184;
  v200 = v289[1];
  v344 = *v289;
  v345 = v200;
  v346 = *(v289 + 4);
  outlined init with copy of Rope<BigString._Chunk>._Node?(&v344, &v325);
  if ((specialized Set.contains(_:)(0, 0, v179) & 1) == 0 || v178 <= BigString.startIndex.getter() >> 10)
  {
    v209 = v297;
    v208 = v310;
LABEL_181:
    v297 = v209;
    *&v314 = v209;
    *(&v314 + 1) = v67;
    *&v315 = v68;
    *(&v315 + 1) = v292;
    v316 = v304;
    v317 = v208;
    if (specialized Collection<>._containsScalarConstraint.getter(v179))
    {
      v308 = v183;
      v309 = v182;
      v311 = v181;
      v221 = v179 + 56;
      v222 = 1 << *(v179 + 32);
      v223 = -1;
      if (v222 < 64)
      {
        v223 = ~(-1 << v222);
      }

      v224 = v223 & *(v179 + 56);
      v225 = (v222 + 63) >> 6;

      v226 = 0;
      v227 = MEMORY[0x1E69E7CC0];
      while (v224)
      {
LABEL_190:
        v229 = __clz(__rbit64(v224));
        v224 &= v224 - 1;
        v230 = (*(v303 + 48) + ((v226 << 10) | (16 * v229)));
        v231 = v230[1];
        if (v231 >= 2)
        {
          v232 = specialized Collection.first.getter(*v230, v231);
          if ((v232 & 0x100000000) == 0)
          {
            *&v310 = v232;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v227 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v227 + 2) + 1, 1, v227);
            }

            v234 = *(v227 + 2);
            v233 = *(v227 + 3);
            v235 = v234 + 1;
            v236 = v310;
            if (v234 >= v233 >> 1)
            {
              v307 = v234 + 1;
              v237 = v227;
              v238 = v234;
              v239 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v233 > 1), v234 + 1, 1, v237);
              v235 = v307;
              v234 = v238;
              v227 = v239;
              v236 = v310;
            }

            *(v227 + 2) = v235;
            *&v227[4 * v234 + 32] = v236;
          }
        }
      }

      while (1)
      {
        v228 = v226 + 1;
        if (__OFADD__(v226, 1))
        {
          break;
        }

        if (v228 >= v225)
        {

          *&v348 = v180;
          *(&v348 + 1) = v311;
          *&v349 = v309;
          *(&v349 + 1) = v308;
          v350 = v313;
          v351 = v312;
          BigString.UnicodeScalarView.subscript.getter();
          v60 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(v227);
          v261 = v260;
          v263 = v262;
          v24 = v264;
          outlined destroy of BigString(&v355);

          result = outlined destroy of BigSubstring.UnicodeScalarView(&v325);
          if (v24 == 2)
          {
            v56 = v302;
            v60 = v297;
            v24 = v292;
            goto LABEL_224;
          }

          v56 = v302;
          if (v178 >= v60 >> 10)
          {
            v67 = v261;
            v68 = v263;
            goto LABEL_224;
          }

          goto LABEL_259;
        }

        v224 = *(v221 + 8 * v228);
        ++v226;
        if (v224)
        {
          v226 = v228;
          goto LABEL_190;
        }
      }

LABEL_237:
      __break(1u);
LABEL_238:
      __break(1u);
LABEL_239:
      __break(1u);
LABEL_240:
      __break(1u);
LABEL_241:
      __break(1u);
LABEL_242:
      __break(1u);
      goto LABEL_243;
    }

    v259 = &v355;
    v24 = v292;
    goto LABEL_222;
  }

  *&v352 = v180;
  v311 = v181;
  *(&v352 + 1) = v181;
  v308 = v183;
  v309 = v182;
  *&v353 = v182;
  *(&v353 + 1) = v183;
  *&v354 = v313;
  *(&v354 + 1) = v312;
  v201 = BigString.UTF8View.index(before:)();
  v203 = v202;
  v205 = v204;
  v207 = v206;
  result = BigString.UTF8View.subscript.getter();
  if (v178 < v201 >> 10)
  {
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
    goto LABEL_260;
  }

  v319 = v201;
  v320 = v203;
  v321 = v205;
  v322 = v207;
  v323 = v304;
  v324 = v310;
  specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v319, &v325);
  result = outlined destroy of BigSubstring.UTF8View(&v339);
  v208 = v310;
  v209 = v297;
  v179 = v303;
  v181 = v311;
  v183 = v308;
  v182 = v309;
  if (v327 == 2)
  {
    goto LABEL_181;
  }

  v209 = v325;
  if (v178 >= v325 >> 10)
  {
    v68 = *(&v326 + 1);
    v67 = v326;
    v292 = v327;
    goto LABEL_181;
  }

LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
  return result;
}

uint64_t specialized AttributedString.Runs.AttributesSlice4.subscript.getter(uint64_t a1, void *a2, void *a3, unint64_t *a4, unint64_t a5)
{
  v6 = v5;
  v386 = a3;
  v387 = a4;
  v385 = a2;
  v416 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v9 = *(v416 - 8);
  MEMORY[0x1EEE9AC00](v416);
  v11 = &v370 - v10;
  v13 = *a5;
  v12 = *(a5 + 8);
  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice4Vy__AA15AttributeScopesO0aE0V014InflectionRuleG0OAK017AgreementArgumentG0OAK0k7ConceptG0OAK08ReferentmG0OGMd);
  v415 = *(v6 + *(v16 + 84));
  v401 = *(v415 + 16);
  if (!v401)
  {
LABEL_352:
    __break(1u);
LABEL_353:
    __break(1u);
    goto LABEL_354;
  }

  v384 = a1;
  v402 = *(v6 + *(v16 + 88));
  v17 = *v6;
  v399 = v12;
  v400 = v13;
  *&v396 = v15;
  *(&v396 + 1) = v14;
  v414 = v17;
  AttributedString.Guts.findRun(at:)(v13, v14, &v437);
  v412 = v438;
  v413 = v437;
  v398 = v439;
  v390 = v440;
  v409 = v441;
  v382 = v443;
  v383 = v442;
  v380 = v445;
  v381 = v444;
  v18 = *(type metadata accessor for AttributedString.Runs() + 24);
  v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v420 = v18;
  RangeSet.ranges.getter();
  v14 = v416;
  a1 = RangeSet.Ranges.count.getter();
  v20 = *(v9 + 8);
  v19 = v9 + 8;
  v418 = v20;
  (v20)(v11, v14);
  if (a1 < 1)
  {
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v13 = v6;
  v15 = 0;
  v12 = v400 >> 10;
  v417 = v19;
  while (1)
  {
    if (__OFADD__(v15, a1))
    {
      goto LABEL_116;
    }

    v14 = (v15 + a1) / 2;
    RangeSet.ranges.getter();
    v19 = v416;
    RangeSet.Ranges.subscript.getter();
    (v418)(v11, v19);
    v6 = v437 >> 10;
    if (v12 >= v437 >> 10)
    {
      break;
    }

LABEL_4:
    a1 = v14;
    if (v15 >= v14)
    {
      goto LABEL_115;
    }
  }

  if (v12 >= v441 >> 10)
  {
    v15 = v14 + 1;
    v14 = a1;
    goto LABEL_4;
  }

  v388 = v13;
  v389 = v12;
  v395 = v437;
  v397 = v438;
  v392 = v440;
  v393 = v439;
  if (*(v402 + 16) != 1 || (specialized Set.contains(_:)(0, 1, v402) & 1) != 0)
  {
    v21 = *(v414 + 72);
    v22 = *(v414 + 80);
    v23 = *(v414 + 88);
    v24 = *(v414 + 96);
    swift_unknownObjectRetain();
    v25 = v412;
    v26 = v398;
    specialized Rope.subscript.getter(v413, v412, v398, v21, v22, v23, v24);
    v28 = v27;
    v30 = v29;
    swift_unknownObjectRelease();
    v31 = *(v13 + 8);
    if (v31 >= v390)
    {

      goto LABEL_71;
    }

    v375 = v30;
    v376 = (v415 + 40);
    v32 = v25;
    v14 = v26;
    v394 = v28;
    v373 = v31;
    while (1)
    {
      v33 = *(v414 + 72);
      v34 = *(v414 + 96);
      v437 = v413;
      v438 = v32;
      v439 = v14;
      if (v413 != v34)
      {
        goto LABEL_385;
      }

      if (v33)
      {
        v35 = *(v33 + 18);
        v36 = v32;
        swift_unknownObjectRetain();
        v32 = v36;
      }

      else
      {
        v35 = 0;
      }

      if (v35 >= v32)
      {
        goto LABEL_386;
      }

      if (v14)
      {
        v37 = (4 * *(v14 + 18) + 8) & 0x3C;
        if (((v32 >> v37) & 0xF) != 0)
        {
          break;
        }
      }

      v39 = *(v33 + 18);
      v40 = (4 * v39 + 8) & 0x3C;
      v41 = (v32 >> v40) & 0xF;
      *&v466 = v41;
      if (v39)
      {
        swift_unknownObjectRetain();
        v42 = specialized closure #1 in Rope._Node.formPredecessor(of:)((v33 + 16), v33 + 24, &v466, &v437, v39);
        swift_unknownObjectRelease();
        if ((v42 & 1) == 0)
        {
          goto LABEL_393;
        }

        if (v437 != v413)
        {
          goto LABEL_387;
        }

        v14 = v439;
        v38 = v438;
        if (v439)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (!v41)
        {
          goto LABEL_393;
        }

        v38 = ((v41 - 1) << v40) | v32 & 0xFFFFFFFFFFFFF0FFLL;
        v438 = v38;
        v439 = v33;
        v14 = v33;
        if (v33)
        {
          goto LABEL_25;
        }
      }

      v379 = v38;
      a1 = specialized Rope._Node.subscript.getter(v38, v33);
      v14 = v45;
      swift_unknownObjectRelease();

      v377 = 0;
      v44 = 1;
LABEL_29:
      v46 = v394;
      v374 = v409 - a1;
      if (__OFSUB__(v409, a1))
      {
        goto LABEL_388;
      }

      if (v413 != *(v414 + 96))
      {
        goto LABEL_389;
      }

      if (v44)
      {
        a5 = *(v414 + 72);
        a1 = *(v414 + 80);
        v14 = *(v414 + 88);
        swift_unknownObjectRetain();
        specialized Rope._Node.subscript.getter(v379, a5);
        v405 = v47;
        v378 = v48;
        swift_unknownObjectRelease();
      }

      else
      {
        v49 = v377 + 24 * ((v379 >> ((4 * *(v377 + 18) + 8) & 0x3C)) & 0xF);
        a5 = *(v49 + 40);
        v405 = *(v49 + 32);

        v378 = a5;
      }

      v50 = 0;
      --v390;
      v51 = v376;
      do
      {
        if (v50 >= *(v415 + 16))
        {
          goto LABEL_343;
        }

        v410 = v51;
        v411 = v50;
        v14 = *(v51 - 1);
        a1 = *v51;
        if (*(v46 + 16))
        {

          v52 = specialized __RawDictionaryStorage.find<A>(_:)(v14, a1);
          if (v53)
          {
            outlined init with copy of AttributedString._AttributeValue(*(v46 + 56) + 72 * v52, &v466);
          }

          else
          {
            v470 = 0;
            v469 = 0u;
            v468 = 0u;
            v467 = 0u;
            v466 = 0u;
          }
        }

        else
        {
          v470 = 0;
          v469 = 0u;
          v468 = 0u;
          v467 = 0u;
          v466 = 0u;
        }

        a5 = v405;
        if (*(v405 + 16))
        {
          v54 = v46;
          v55 = v405;
          a5 = specialized __RawDictionaryStorage.find<A>(_:)(v14, a1);
          v14 = v56;

          if (v14)
          {
            outlined init with copy of AttributedString._AttributeValue(*(v55 + 56) + 72 * a5, &v461);
          }

          else
          {
            v465 = 0;
            v463 = 0u;
            v464 = 0u;
            v461 = 0u;
            v462 = 0u;
          }

          v46 = v54;
        }

        else
        {

          v465 = 0;
          v463 = 0u;
          v464 = 0u;
          v461 = 0u;
          v462 = 0u;
        }

        outlined init with copy of FloatingPointRoundingRule?(&v466, &v437, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined init with copy of FloatingPointRoundingRule?(&v461, &v446, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (v440)
        {
          outlined init with copy of FloatingPointRoundingRule?(&v437, &v456, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          if (!*(&v447 + 1))
          {
            outlined destroy of TermOfAddress?(&v461, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            outlined destroy of TermOfAddress?(&v466, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            outlined destroy of AttributedString._AttributeValue(&v456);
LABEL_68:
            outlined destroy of TermOfAddress?(&v437, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_70:

LABEL_71:

LABEL_72:
            v90 = v414;
            v91 = (v414 + 24);
            v92 = *(v414 + 40);
            v93 = *(v414 + 56);
            v533 = *(v414 + 24);
            v534 = v92;
            v535 = v93;
            if (!__OFSUB__(v409, v383 >> 11))
            {
              swift_unknownObjectRetain();
              v94 = BigString.UTF8View.index(_:offsetBy:)();
              v96 = v95;
              v98 = v97;
              v411 = v99;
              swift_unknownObjectRelease();
              v100 = v6 >= v94 >> 10;
              v101 = v395;
              if (v6 < v94 >> 10)
              {
                v101 = v94;
              }

              v102 = v397;
              if (!v100)
              {
                v102 = v96;
              }

              a1 = v393;
              if (!v100)
              {
                a1 = v98;
              }

              v103 = v392;
              if (!v100)
              {
                v103 = v411;
              }

              v104 = *(v90 + 40);
              v530 = *(v90 + 24);
              v531 = v104;
              v532 = *(v90 + 56);
              swift_unknownObjectRetain();
              a5 = BigString.UnicodeScalarView.index(after:)();
              v409 = v105;
              v410 = v106;
              v411 = v107;
              swift_unknownObjectRelease();
              v108 = *v91;
              v109 = v91[1];
              v529 = v91[2];
              v528 = v109;
              v527 = v108;
              v14 = a5 >> 10;
              v110 = v101 >> 10;
              if (a5 >> 10 >= v101 >> 10)
              {
                v111 = v101;
                v112 = *(v90 + 24);
                v113 = *(v90 + 32);
                v114 = *(v90 + 40);
                v115 = *(v90 + 48);
                v116 = *(v90 + 56);
                v117 = *(v90 + 64);
                v519 = v101;
                v520 = v102;
                v521 = a1;
                v522 = v103;
                v523 = a5;
                v118 = v409;
                v524 = v409;
                v525 = v411;
                v526 = v410;
                if (v110 == v14)
                {
                  v119 = v90;
                  v392 = v103;
                  v393 = a1;
                  v397 = v102;
                  v395 = v111;
                  goto LABEL_110;
                }

                v407 = v112;
                v408 = a5;
                v120 = v111;
                v401 = v117;
                v403 = v116;
                v404 = v115;
                v405 = v114;
                v406 = v113;
                v121 = v91[1];
                v536[0] = *v91;
                v536[1] = v121;
                v537 = *(v91 + 4);
                outlined init with copy of Rope<BigString._Chunk>._Node?(v536, &v437);
                v122 = v402;
                if (specialized Set.contains(_:)(0, 0, v402))
                {
                  v123 = v120;
                  if (v14 > BigString.startIndex.getter() >> 10)
                  {
                    v392 = v103;
                    v393 = a1;
                    v397 = v102;
                    v505 = v407;
                    v506 = v406;
                    v507 = v405;
                    v508 = v404;
                    v509 = v403;
                    v510 = v401;
                    v124 = v408;
                    v125 = v118;
                    v127 = v410;
                    v126 = v411;
                    v128 = BigString.UTF8View.index(before:)();
                    v395 = v129;
                    v390 = v131;
                    v391 = v130;
                    BigString.UTF8View.subscript.getter();
                    v394 = a5 >> 10;
                    if (a5 >> 10 < v128 >> 10)
                    {
                      goto LABEL_396;
                    }

                    v511 = v128;
                    v512 = v395;
                    v513 = v391;
                    v514 = v390;
                    v515 = v124;
                    v516 = v125;
                    v517 = v126;
                    v518 = v127;
                    specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v511, &v437);
                    outlined destroy of BigSubstring.UTF8View(&v461);
                    v132 = v123;
                    v133 = v125;
                    v102 = v397;
                    v134 = v124;
                    v103 = v392;
                    a1 = v393;
                    v122 = v402;
                    v14 = v394;
                    if (v440 != 2)
                    {
                      v132 = v437;
                      if (v394 < v437 >> 10)
                      {
                        goto LABEL_402;
                      }

                      v102 = v438;
                      a1 = v439;
                      v103 = v440;
                    }

                    goto LABEL_93;
                  }

                  v132 = v120;
                  v122 = v402;
                  v133 = v118;
                  v126 = v411;
                }

                else
                {
                  v133 = v118;
                  v126 = v411;
                  v132 = v120;
                }

                v127 = v410;
                v134 = v408;
LABEL_93:
                v497 = v132;
                v397 = v102;
                v498 = v102;
                v392 = v103;
                v393 = a1;
                v499 = a1;
                v500 = v103;
                v501 = v134;
                v502 = v133;
                v503 = v126;
                v504 = v127;
                a5 = v132;
                v135 = specialized Collection<>._containsScalarConstraint.getter(v122);
                v395 = a5;
                if (v135)
                {
                  v394 = v14;
                  v14 = v122 + 56;
                  v136 = 1 << *(v122 + 32);
                  v137 = -1;
                  if (v136 < 64)
                  {
                    v137 = ~(-1 << v136);
                  }

                  v6 = v137 & *(v122 + 56);
                  v138 = (v136 + 63) >> 6;

                  v139 = 0;
                  a1 = MEMORY[0x1E69E7CC0];
                  v140 = v389;
                  while (1)
                  {
                    if (v6)
                    {
                      goto LABEL_102;
                    }

                    do
                    {
                      v141 = v139 + 1;
                      if (__OFADD__(v139, 1))
                      {
                        goto LABEL_340;
                      }

                      if (v141 >= v138)
                      {

                        *&v493 = v407;
                        *(&v493 + 1) = v406;
                        *&v494 = v405;
                        *(&v494 + 1) = v404;
                        v495 = v403;
                        v496 = v401;
                        BigString.UnicodeScalarView.subscript.getter();
                        a5 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(a1);
                        v14 = v151;
                        v153 = v152;
                        v155 = v154;
                        outlined destroy of BigString(&v527);

                        outlined destroy of BigSubstring.UnicodeScalarView(&v466);
                        v119 = v414;
                        v83 = v398;
                        v149 = *(&v396 + 1);
                        v6 = v416;
                        if (v155 != 2)
                        {
                          if (v394 < a5 >> 10)
                          {
                            goto LABEL_397;
                          }

                          v395 = a5;
                          v397 = v14;
                          v392 = v155;
                          v393 = v153;
                        }

                        goto LABEL_111;
                      }

                      v6 = *(v14 + 8 * v141);
                      ++v139;
                    }

                    while (!v6);
                    v139 = v141;
LABEL_102:
                    v142 = __clz(__rbit64(v6));
                    v6 &= v6 - 1;
                    v143 = (*(v122 + 48) + ((v139 << 10) | (16 * v142)));
                    v144 = v143[1];
                    if (v144 >= 2)
                    {
                      v145 = specialized Collection.first.getter(*v143, v144);
                      if ((v145 & 0x100000000) == 0)
                      {
                        v411 = v145;
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16) + 1, 1, a1);
                        }

                        v147 = *(a1 + 16);
                        v146 = *(a1 + 24);
                        a5 = v147 + 1;
                        v148 = v411;
                        if (v147 >= v146 >> 1)
                        {
                          a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v146 > 1), v147 + 1, 1, a1);
                          v148 = v411;
                        }

                        *(a1 + 16) = a5;
                        *(a1 + 4 * v147 + 32) = v148;
                        v122 = v402;
                      }
                    }
                  }
                }

                outlined destroy of BigString(&v527);
                v119 = v414;
LABEL_110:
                v83 = v398;
                v140 = v389;
                v149 = *(&v396 + 1);
                v6 = v416;
LABEL_111:
                v150 = *(v119 + 16);
                goto LABEL_167;
              }

LABEL_379:
              __break(1u);
              goto LABEL_380;
            }

LABEL_378:
            __break(1u);
            goto LABEL_379;
          }

          v453 = v448;
          v454 = v449;
          v455 = v450;
          v451 = v446;
          v452 = v447;
          a5 = *(&v457 + 1);
          v404 = v458;
          v403 = __swift_project_boxed_opaque_existential_1(&v456, *(&v457 + 1));
          v57 = __swift_project_boxed_opaque_existential_1(&v451, *(&v452 + 1));
          v408 = &v370;
          v58 = *(a5 - 8);
          MEMORY[0x1EEE9AC00](v57);
          a1 = &v370 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
          v407 = &v370;
          v61 = MEMORY[0x1EEE9AC00](v60);
          (*(v63 + 16))(&v370 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0), v61);
          v64 = type metadata accessor for Optional();
          v406 = &v370;
          v391 = *(v64 - 8);
          MEMORY[0x1EEE9AC00](v64);
          v66 = &v370 - v65;
          if ((swift_dynamicCast() & 1) == 0)
          {
            outlined destroy of TermOfAddress?(&v461, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            outlined destroy of TermOfAddress?(&v466, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            (*(v58 + 56))(v66, 1, 1, a5);
            (*(v391 + 8))(v66, v64);
            outlined destroy of AttributedString._AttributeValue(&v451);
            outlined destroy of AttributedString._AttributeValue(&v456);
            outlined destroy of TermOfAddress?(&v437, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            goto LABEL_70;
          }

          (*(v58 + 56))(v66, 0, 1, a5);
          (*(v58 + 32))(a1, v66, a5);
          v14 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*(v58 + 8))(a1, a5);
          outlined destroy of TermOfAddress?(&v461, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v466, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of AttributedString._AttributeValue(&v451);
          outlined destroy of AttributedString._AttributeValue(&v456);
          outlined destroy of TermOfAddress?(&v437, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          v46 = v394;
          if ((v14 & 1) == 0)
          {
            goto LABEL_70;
          }
        }

        else
        {
          outlined destroy of TermOfAddress?(&v461, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v466, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          if (*(&v447 + 1))
          {
            goto LABEL_68;
          }

          outlined destroy of TermOfAddress?(&v437, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        }

        v50 = (v411 + 1);
        v51 = v410 + 16;
      }

      while (v401 != (v411 + 1));

      v67 = v374;
      v409 = v374;
      v32 = v379;
      v14 = v377;
      if (v373 >= v390)
      {

        v409 = v67;
        goto LABEL_72;
      }
    }

    v38 = ((((v32 >> v37) & 0xF) - 1) << v37) | ((-15 << v37) - 1) & v32;
LABEL_25:
    v43 = (4 * *(v14 + 18) + 8) & 0x3C;
    v379 = v38;
    v377 = v14;
    a1 = *(v14 + 24 * ((v38 >> v43) & 0xF) + 24);

    swift_unknownObjectRelease();
    v44 = 0;
    goto LABEL_29;
  }

  v68 = (v414 + 24);
  v69 = *(v414 + 40);
  v70 = *(v414 + 56);
  v533 = *(v414 + 24);
  v534 = v69;
  v535 = v70;
  swift_unknownObjectRetain();
  a1 = BigString.UnicodeScalarView.index(after:)();
  v19 = v71;
  v13 = v72;
  v12 = v73;
  swift_unknownObjectRelease();
  v74 = *v68;
  v75 = v68[2];
  v531 = v68[1];
  v532 = v75;
  v530 = v74;
  v14 = a1 >> 10;
  if (a1 >> 10 < v6)
  {
    goto LABEL_395;
  }

  v76 = *v68;
  v77 = *(v68 + 1);
  v78 = *(v68 + 2);
  v79 = *(v68 + 3);
  v80 = *(v68 + 4);
  v81 = *(v68 + 5);
  a5 = v395;
  v519 = v395;
  v520 = v397;
  v521 = v393;
  v522 = v392;
  v523 = a1;
  v524 = v19;
  v525 = v13;
  v526 = v12;
  if (v6 == v14)
  {
    v82 = v414;
    v83 = v398;
    v6 = v416;
    goto LABEL_138;
  }

  v405 = v81;
  v406 = v80;
  v407 = v79;
  v408 = v78;
  v410 = v77;
  v411 = v76;
  v84 = v68[1];
  v493 = *v68;
  v494 = v84;
  v495 = *(v68 + 4);
  outlined init with copy of Rope<BigString._Chunk>._Node?(&v493, &v437);
  v15 = v402;
  v85 = specialized Set.contains(_:)(0, 0, v402);
  v6 = v416;
  if (v85)
  {
    if (v14 > BigString.startIndex.getter() >> 10)
    {
      *&v527 = v411;
      *(&v527 + 1) = v410;
      *&v528 = v408;
      *(&v528 + 1) = v407;
      *&v529 = v406;
      *(&v529 + 1) = v405;
      v86 = BigString.UTF8View.index(before:)();
      v403 = v88;
      v404 = v87;
      v401 = v89;
      BigString.UTF8View.subscript.getter();
      if (v14 < v86 >> 10)
      {
        goto LABEL_405;
      }

      v511 = v86;
      v512 = v404;
      v513 = v403;
      v514 = v401;
      v515 = a1;
      v516 = v19;
      v517 = v13;
      v518 = v12;
      specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v511, &v437);
      outlined destroy of BigSubstring.UTF8View(&v461);
      a5 = v395;
      v6 = v416;
      if (v440 != 2)
      {
        a5 = v437;
        if (v14 < v437 >> 10)
        {
          goto LABEL_407;
        }

        v397 = v438;
        v392 = v440;
        v393 = v439;
      }

      goto LABEL_118;
    }

LABEL_117:
    a5 = v395;
  }

LABEL_118:
  v497 = a5;
  v498 = v397;
  v499 = v393;
  v500 = v392;
  v501 = a1;
  v502 = v19;
  v503 = v13;
  v504 = v12;
  v156 = specialized Collection<>._containsScalarConstraint.getter(v15);
  v395 = a5;
  if (v156)
  {
    v157 = v15 + 56;
    v158 = 1 << *(v15 + 32);
    v159 = -1;
    if (v158 < 64)
    {
      v159 = ~(-1 << v158);
    }

    v6 = v159 & *(v15 + 56);
    v160 = (v158 + 63) >> 6;

    v161 = 0;
    a1 = MEMORY[0x1E69E7CC0];
    while (v6)
    {
LABEL_127:
      v163 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v164 = (*(v15 + 48) + ((v161 << 10) | (16 * v163)));
      v165 = v164[1];
      if (v165 >= 2)
      {
        v166 = specialized Collection.first.getter(*v164, v165);
        if ((v166 & 0x100000000) == 0)
        {
          v404 = v166;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16) + 1, 1, a1);
          }

          v168 = *(a1 + 16);
          v167 = *(a1 + 24);
          a5 = v168 + 1;
          v169 = v404;
          if (v168 >= v167 >> 1)
          {
            a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v167 > 1), v168 + 1, 1, a1);
            v169 = v404;
          }

          *(a1 + 16) = a5;
          *(a1 + 4 * v168 + 32) = v169;
          v15 = v402;
        }
      }
    }

    while (1)
    {
      v162 = v161 + 1;
      if (__OFADD__(v161, 1))
      {
        goto LABEL_350;
      }

      if (v162 >= v160)
      {
        break;
      }

      v6 = *(v157 + 8 * v162);
      ++v161;
      if (v6)
      {
        v161 = v162;
        goto LABEL_127;
      }
    }

    v505 = v411;
    v506 = v410;
    v507 = v408;
    v508 = v407;
    v509 = v406;
    v510 = v405;
    BigString.UnicodeScalarView.subscript.getter();
    a5 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(a1);
    v171 = v170;
    v173 = v172;
    v175 = v174;
    outlined destroy of BigString(&v530);

    outlined destroy of BigSubstring.UnicodeScalarView(&v466);
    v82 = v414;
    v83 = v398;
    v6 = v416;
    if (v175 != 2)
    {
      if (v14 < a5 >> 10)
      {
        goto LABEL_406;
      }

      v395 = a5;
      v397 = v171;
      v392 = v175;
      v393 = v173;
    }
  }

  else
  {
    outlined destroy of BigString(&v530);
    v82 = v414;
    v83 = v398;
  }

LABEL_138:
  v437 = v413;
  v438 = v412;
  v439 = v83;
  v176 = v395 >> 11;
  if ((v395 >> 11) >= v409)
  {
    goto LABEL_166;
  }

  if (v413 != v82[12])
  {
LABEL_341:
    __break(1u);
    goto LABEL_342;
  }

  while (1)
  {
    a5 = v82[9];
    a1 = v82[10];
    if (a5)
    {
      v14 = *(a5 + 18);
      v6 = v83;
      swift_unknownObjectRetain();
      v83 = v6;
    }

    else
    {
      v14 = 0;
    }

    if (v14 >= v412)
    {
      goto LABEL_344;
    }

    if (v83)
    {
      v177 = (4 * *(v83 + 18) + 8) & 0x3C;
      v178 = (v412 >> v177) & 0xF;
      if (v178)
      {
        v179 = ((v178 - 1) << v177) | ((-15 << v177) - 1) & v412;
        v438 = v179;
LABEL_152:
        v6 = v439;
        goto LABEL_155;
      }
    }

    v14 = *(a5 + 18);
    v180 = (4 * v14 + 8) & 0x3C;
    v181 = (v412 >> v180) & 0xF;
    *&v456 = v181;
    if (v14)
    {
      swift_unknownObjectRetain();
      v14 = specialized closure #1 in Rope._Node.formPredecessor(of:)((a5 + 16), a5 + 24, &v456, &v437, v14);
      swift_unknownObjectRelease();
      if ((v14 & 1) == 0)
      {
        goto LABEL_349;
      }

      v179 = v438;
      goto LABEL_152;
    }

    if (!v181)
    {
      goto LABEL_349;
    }

    v179 = ((v181 - 1) << v180) | v412 & 0xFFFFFFFFFFFFF0FFLL;
    v438 = v179;
    v439 = a5;
    v6 = a5;
LABEL_155:
    if (v437 != v413)
    {
      goto LABEL_345;
    }

    v412 = v179;
    if (!v6)
    {
      break;
    }

    v14 = v6;
    a1 = *(v6 + 24 * ((v179 >> ((4 * *(v6 + 18) + 8) & 0x3C)) & 0xF) + 24);

    swift_unknownObjectRelease();
    if (__OFSUB__(v409, a1))
    {
      goto LABEL_348;
    }

    if (v176 >= v409 - a1)
    {
      v82 = v414;
      v83 = v6;
      goto LABEL_165;
    }

    v409 -= a1;
    v82 = v414;
    v83 = v6;
LABEL_141:
    if (v413 != v82[12])
    {
      goto LABEL_341;
    }
  }

  a1 = specialized Rope._Node.subscript.getter(v179, a5);
  v14 = v182;
  swift_unknownObjectRelease();

  if (__OFSUB__(v409, a1))
  {
    goto LABEL_351;
  }

  if (v176 < v409 - a1)
  {
    v409 -= a1;
    v82 = v414;
    v83 = 0;
    goto LABEL_141;
  }

  v83 = 0;
  v82 = v414;
LABEL_165:
  v6 = v416;
LABEL_166:
  v150 = v82[2];
  v140 = v389;
  v149 = *(&v396 + 1);
LABEL_167:
  v183 = v388;
  v410 = *(v415 + 16);
  if (!v410)
  {
    goto LABEL_353;
  }

  v390 = v150;
  v398 = v83;
  AttributedString.Guts.findRun(at:)(v400, v149, &v437);
  v184 = v437;
  v406 = v439;
  v407 = v438;
  v416 = v440;
  v405 = v441;
  v381 = v443;
  v382 = v442;
  v379 = v445;
  v380 = v444;
  RangeSet.ranges.getter();
  a5 = v11;
  a1 = RangeSet.Ranges.count.getter();
  (v418)(v11, v6);
  if (a1 < 1)
  {
LABEL_336:
    __break(1u);
    goto LABEL_337;
  }

  v185 = 0;
  while (2)
  {
    if (__OFADD__(v185, a1))
    {
      __break(1u);
LABEL_339:
      __break(1u);
LABEL_340:
      __break(1u);
      goto LABEL_341;
    }

    v14 = (v185 + a1) / 2;
    RangeSet.ranges.getter();
    a5 = v11;
    RangeSet.Ranges.subscript.getter();
    (v418)(v11, v6);
    if (v140 < v437 >> 10)
    {
LABEL_170:
      a1 = v14;
      if (v185 >= v14)
      {
        goto LABEL_336;
      }

      continue;
    }

    break;
  }

  a5 = v441;
  if (v140 >= v441 >> 10)
  {
    v185 = v14 + 1;
    v14 = a1;
    goto LABEL_170;
  }

  v391 = v441 >> 10;
  v403 = v443;
  v404 = v442;
  v401 = v444;
  v186 = v402;
  v187 = *(v402 + 16);
  v394 = v441;
  if (v187 == 1 && (specialized Set.contains(_:)(0, 1, v402) & 1) == 0)
  {
    v192 = *(v414 + 24);
    v191 = *(v414 + 32);
    v193 = *(v414 + 40);
    v194 = *(v414 + 48);
    v195 = *(v414 + 64);
    v419 = *(v414 + 56);
    v420 = v193;
    v417 = v195;
    v197 = v399;
    v196 = v400;
    v426 = v400;
    v427 = v399;
    v198 = v396;
    v428 = v396;
    v429 = a5;
    v430 = v404;
    v431 = v403;
    v432 = v401;
    swift_unknownObjectRetain();
    v199 = specialized Set.contains(_:)(0, 0, v186);
    v415 = v191;
    v416 = v194;
    v418 = v192;
    if (v199)
    {
      *&v490 = v192;
      *(&v490 + 1) = v191;
      v200 = v420;
      *&v491 = v420;
      *(&v491 + 1) = v194;
      v201 = v419;
      *&v492 = v419;
      *(&v492 + 1) = v417;
      BigString.UTF8View.subscript.getter();
      *&v421 = v196;
      *(&v421 + 1) = v197;
      v422 = v198;
      *&v423 = v196;
      *(&v423 + 1) = v197;
      v424 = v198;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v421, &v437);
      a5 = v394;
      outlined destroy of BigSubstring.UTF8View(&v456);
      v202 = v201;
      if (v444 != 2)
      {
        a5 = v441;
        if (v389 > v441 >> 10)
        {
          goto LABEL_400;
        }

        v403 = v443;
        v404 = v442;
        v401 = v444;
      }
    }

    else
    {
      v202 = v419;
      v200 = v420;
    }

    v477 = v400;
    v478 = v399;
    v479 = v198;
    v480 = a5;
    v315 = v403;
    v314 = v404;
    v481 = v404;
    v482 = v403;
    v6 = v401;
    v483 = v401;
    if ((specialized Collection<>._containsScalarConstraint.getter(v186) & 1) == 0)
    {
      swift_unknownObjectRelease();
      v11 = a5;
      v419 = v315;
      v420 = v314;
      v14 = v397;
      v256 = v414;
      goto LABEL_331;
    }

    v394 = a5;
    v6 = v186 + 56;
    v316 = 1 << *(v186 + 32);
    v317 = -1;
    if (v316 < 64)
    {
      v317 = ~(-1 << v316);
    }

    v318 = v317 & *(v186 + 56);
    a5 = (v316 + 63) >> 6;

    v14 = 0;
    a1 = MEMORY[0x1E69E7CC0];
    v319 = v416;
    v11 = v418;
LABEL_311:
    if (v318)
    {
      goto LABEL_316;
    }

    while (1)
    {
      v320 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_346;
      }

      if (v320 >= a5)
      {
        break;
      }

      v318 = *(v6 + 8 * v320);
      ++v14;
      if (v318)
      {
        v14 = v320;
LABEL_316:
        v321 = __clz(__rbit64(v318));
        v318 &= v318 - 1;
        v322 = (*(v402 + 48) + ((v14 << 10) | (16 * v321)));
        v323 = v322[1];
        if (v323 >= 2)
        {
          v324 = specialized Collection.first.getter(*v322, v323);
          if ((v324 & 0x100000000) == 0)
          {
            v420 = v324;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16) + 1, 1, a1);
            }

            v326 = *(a1 + 16);
            v325 = *(a1 + 24);
            v327 = (v326 + 1);
            v328 = v420;
            if (v326 >= v325 >> 1)
            {
              v419 = (v326 + 1);
              v329 = a1;
              v330 = v326;
              v331 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v325 > 1), v326 + 1, 1, v329);
              v327 = v419;
              v328 = v420;
              v326 = v330;
              a1 = v331;
            }

            *(a1 + 16) = v327;
            *(a1 + 4 * v326 + 32) = v328;
          }
        }

        goto LABEL_311;
      }
    }

    v484 = v11;
    v485 = v415;
    v486 = v200;
    v487 = v319;
    v488 = v202;
    v489 = v417;
    BigString.UnicodeScalarView.subscript.getter();
    v332 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(a1);
    v334 = v333;
    v336 = v335;
    v338 = v337;

    swift_unknownObjectRelease();
    outlined destroy of BigSubstring.UnicodeScalarView(&v437);
    v11 = v394;
    v419 = v403;
    v420 = v404;
    v6 = v401;
    v14 = v397;
    v256 = v414;
    if (v338 != 2)
    {
      if (v389 > v332 >> 10)
      {
        goto LABEL_401;
      }

      v11 = v332;
      v419 = v336;
      v420 = v334;
      v6 = v338;
    }

    goto LABEL_331;
  }

  v188 = v183[15];
  if (v416 == v188)
  {
    v189 = v184;
    v190 = v183[22];
    if (v183[26] == 2)
    {
      if (v190 != 2)
      {
        goto LABEL_238;
      }
    }

    else if (v190 == 2 || (v183[19] ^ v183[23]) >= 1024)
    {
      goto LABEL_238;
    }
  }

  if (v416 >= v188)
  {
LABEL_390:
    __break(1u);
    goto LABEL_391;
  }

  v376 = v183[15];
  v203 = v414;
  v204 = *(v414 + 72);
  v205 = *(v414 + 80);
  a1 = *(v414 + 88);
  v14 = *(v414 + 96);
  swift_unknownObjectRetain();
  v206 = v406;
  v207 = v407;
  specialized Rope.subscript.getter(v184, v407, v406, v204, v205, a1, v14);
  v409 = v208;
  v374 = v209;
  swift_unknownObjectRelease();
  v210 = v206;
  v211 = *(v203 + 72);
  v378 = v416 + 1;
  v375 = (v415 + 40);
  v189 = *(v203 + 96);
  v437 = v184;
  v438 = v207;
  v6 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
  v439 = v206;
  while (2)
  {
    if (v184 != v189)
    {
LABEL_381:
      __break(1u);
LABEL_382:
      __break(1u);
LABEL_383:
      __break(1u);
LABEL_384:
      __break(1u);
LABEL_385:
      __break(1u);
LABEL_386:
      __break(1u);
LABEL_387:
      __break(1u);
LABEL_388:
      __break(1u);
LABEL_389:
      __break(1u);
      goto LABEL_390;
    }

    v406 = v210;
    v383 = v189;
    if (v210)
    {
      v212 = *(v210 + 24 * ((v407 >> ((4 * *(v210 + 18) + 8) & 0x3C)) & 0xF) + 24);
      v213 = v405 + v212;
      if (!__OFADD__(v405, v212))
      {
        if (v211)
        {
          swift_unknownObjectRetain();
          goto LABEL_196;
        }

        goto LABEL_380;
      }

LABEL_391:
      __break(1u);
LABEL_392:
      __break(1u);
LABEL_393:
      __break(1u);
LABEL_394:
      __break(1u);
LABEL_395:
      __break(1u);
LABEL_396:
      __break(1u);
LABEL_397:
      __break(1u);
LABEL_398:
      __break(1u);
LABEL_399:
      __break(1u);
LABEL_400:
      __break(1u);
LABEL_401:
      __break(1u);
LABEL_402:
      __break(1u);
      goto LABEL_403;
    }

    swift_unknownObjectRetain();
    a1 = specialized Rope._Node.subscript.getter(v407, v211);
    v14 = v214;

    v213 = v405 + a1;
    if (__OFADD__(v405, a1))
    {
      goto LABEL_394;
    }

    if (!v211)
    {
      goto LABEL_380;
    }

LABEL_196:
    if (v407 >= (((-15 << ((4 * *(v211 + 18) + 8) & 0x3C)) - 1) & *(v211 + 18) | (*(v211 + 16) << ((4 * *(v211 + 18) + 8) & 0x3C))))
    {
LABEL_380:
      __break(1u);
      goto LABEL_381;
    }

    if (v406)
    {
      a1 = (4 * *(v406 + 18) + 8) & 0x3C;
      v14 = ((v407 >> a1) & 0xF) + 1;
      if (v14 < *(v406 + 8))
      {
        swift_unknownObjectRelease();
        v215 = (v14 << a1) | ((-15 << a1) - 1) & v407;
        goto LABEL_202;
      }
    }

    if (specialized Rope._Node.formSuccessor(of:)(&v437, v211))
    {
      swift_unknownObjectRelease();
      v215 = v438;
LABEL_202:
      v216 = v388;
      v217 = v439;
      v218 = v437;
      v219 = v414;
    }

    else
    {
      v220 = *(v211 + 18);
      a1 = *(v211 + 16);
      swift_unknownObjectRelease();
      v217 = 0;
      v215 = ((-15 << ((4 * v220 + 8) & 0x3C)) - 1) & v220 | (a1 << ((4 * v220 + 8) & 0x3C));
      v218 = v383;
      v219 = v414;
      v216 = v388;
    }

    if (v376 < v378)
    {
LABEL_337:

      goto LABEL_243;
    }

    if (v378 == v376)
    {
      v221 = v216[22];
      if (v216[26] == 2)
      {
        if (v221 == 2)
        {
          goto LABEL_337;
        }
      }

      else if (v221 != 2 && (v216[19] ^ v216[23]) < 1024)
      {
        goto LABEL_337;
      }
    }

    if (v218 != v219[12])
    {
      goto LABEL_382;
    }

    v372 = v213;
    v373 = v218;
    v370 = v215;
    v371 = v217;
    if (v217)
    {
      v222 = v217 + 24 * ((v215 >> ((4 * *(v217 + 18) + 8) & 0x3C)) & 0xF);
      v223 = *(v222 + 32);
      a5 = *(v222 + 40);

      v377 = a5;
    }

    else
    {
      a5 = v219[9];
      a1 = v219[10];
      v14 = v219[11];
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v215, a5);
      v223 = v224;
      v377 = v225;
      swift_unknownObjectRelease();
    }

    v11 = v409;
    v226 = 0;
    v227 = v375;
    v408 = v223;
    do
    {
      if (v226 >= *(v415 + 16))
      {
        goto LABEL_339;
      }

      v14 = *(v227 - 1);
      a1 = *v227;
      v420 = v227;
      if (*(v11 + 16))
      {

        a5 = v11;
        v228 = specialized __RawDictionaryStorage.find<A>(_:)(v14, a1);
        if (v229)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v11 + 56) + 72 * v228, &v456);
          if (!v223[2])
          {
            goto LABEL_228;
          }
        }

        else
        {
          v460 = 0;
          v458 = 0u;
          v459 = 0u;
          v456 = 0u;
          v457 = 0u;
          if (!v223[2])
          {
LABEL_228:

            goto LABEL_229;
          }
        }
      }

      else
      {
        v460 = 0;
        v458 = 0u;
        v459 = 0u;
        v456 = 0u;
        v457 = 0u;

        if (!v223[2])
        {
          goto LABEL_228;
        }
      }

      a5 = specialized __RawDictionaryStorage.find<A>(_:)(v14, a1);
      v14 = v230;

      if (v14)
      {
        outlined init with copy of AttributedString._AttributeValue(v223[7] + 72 * a5, &v451);
        goto LABEL_230;
      }

LABEL_229:
      v455 = 0;
      v453 = 0u;
      v454 = 0u;
      v451 = 0u;
      v452 = 0u;
LABEL_230:
      outlined init with copy of FloatingPointRoundingRule?(&v456, &v437, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined init with copy of FloatingPointRoundingRule?(&v451, &v446, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (v440)
      {
        outlined init with copy of FloatingPointRoundingRule?(&v437, &v426, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (!*(&v447 + 1))
        {
          outlined destroy of TermOfAddress?(&v451, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v456, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of AttributedString._AttributeValue(&v426);
LABEL_240:
          outlined destroy of TermOfAddress?(&v437, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_242:

          v140 = v389;
          goto LABEL_243;
        }

        v423 = v448;
        v424 = v449;
        v425 = v450;
        v421 = v446;
        v422 = v447;
        a5 = *(&v428 + 1);
        v416 = v429;
        v417 = v226;
        v411 = __swift_project_boxed_opaque_existential_1(&v426, *(&v428 + 1));
        v231 = __swift_project_boxed_opaque_existential_1(&v421, *(&v422 + 1));
        v419 = &v370;
        v232 = *(a5 - 8);
        MEMORY[0x1EEE9AC00](v231);
        v234 = &v370 - ((v233 + 15) & 0xFFFFFFFFFFFFFFF0);
        v418 = &v370;
        v236 = MEMORY[0x1EEE9AC00](v235);
        v14 = &v370 - ((v237 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v238 + 16))(v14, v236);
        v239 = type metadata accessor for Optional();
        v240 = *(v239 - 8);
        MEMORY[0x1EEE9AC00](v239);
        v242 = &v370 - v241;
        if ((swift_dynamicCast() & 1) == 0)
        {
          outlined destroy of TermOfAddress?(&v451, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v456, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          (*(v232 + 56))(v242, 1, 1, a5);
          (*(v240 + 8))(v242, v239);
          outlined destroy of AttributedString._AttributeValue(&v421);
          outlined destroy of AttributedString._AttributeValue(&v426);
          outlined destroy of TermOfAddress?(&v437, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          goto LABEL_242;
        }

        (*(v232 + 56))(v242, 0, 1, a5);
        (*(v232 + 32))(v234, v242, a5);
        a1 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v232 + 8))(v234, a5);
        v6 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
        outlined destroy of TermOfAddress?(&v451, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v456, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v421);
        outlined destroy of AttributedString._AttributeValue(&v426);
        outlined destroy of TermOfAddress?(&v437, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v223 = v408;
        v11 = v409;
        v226 = v417;
        if ((a1 & 1) == 0)
        {
          goto LABEL_242;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(&v451, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v456, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (*(&v447 + 1))
        {
          goto LABEL_240;
        }

        outlined destroy of TermOfAddress?(&v437, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      ++v226;
      v227 = (v420 + 16);
    }

    while (v410 != v226);

    v211 = *(v414 + 72);
    v189 = *(v414 + 96);
    v184 = v373;
    v405 = v372;
    v437 = v373;
    v438 = v370;
    v210 = v371;
    v407 = v370;
    v439 = v371;
    v243 = __OFADD__(v378++, 1);
    v140 = v389;
    if (!v243)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_238:
  v383 = v189;
LABEL_243:
  v244 = v414;
  v245 = *(v414 + 72);
  v246 = *(v414 + 80);
  v247 = *(v414 + 88);
  v248 = *(v414 + 96);
  swift_unknownObjectRetain();
  v249 = specialized Rope.subscript.getter(v383, v407, v406, v245, v246, v247, v248);
  swift_unknownObjectRelease();

  if (__OFADD__(v405, v249))
  {
    goto LABEL_383;
  }

  v250 = *(v244 + 40);
  v490 = *(v244 + 24);
  v491 = v250;
  v492 = *(v244 + 56);
  if (__OFSUB__(v405 + v249, v382 >> 11))
  {
    goto LABEL_384;
  }

  swift_unknownObjectRetain();
  v11 = BigString.UTF8View.index(_:offsetBy:)();
  v252 = v251;
  v254 = v253;
  v6 = v255;
  swift_unknownObjectRelease();
  v256 = v414;
  v257 = v11 >> 10;
  v258 = *(v414 + 24);
  v415 = *(v414 + 32);
  v416 = *(v414 + 40);
  v417 = *(v414 + 48);
  v259 = *(v414 + 64);
  v418 = *(v414 + 56);
  if (v11 >> 10 >= v391)
  {
    v420 = v259;
    v261 = v399;
    v262 = v400;
    v426 = v400;
    v427 = v399;
    v263 = v396;
    v428 = v396;
    v264 = v394;
    v429 = v394;
    v265 = v403;
    v6 = v404;
    v430 = v404;
    v431 = v403;
    v266 = v401;
    v432 = v401;
    v267 = v258;
    swift_unknownObjectRetain();
    v268 = specialized Set.contains(_:)(0, 0, v402);
    v411 = v267;
    if (v268)
    {
      v484 = v267;
      v485 = v415;
      v486 = v416;
      v487 = v417;
      v488 = v418;
      v489 = v420;
      BigString.UTF8View.subscript.getter();
      *&v421 = v262;
      *(&v421 + 1) = v261;
      v422 = v263;
      *&v423 = v262;
      *(&v423 + 1) = v261;
      v424 = v263;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v421, &v437);
      outlined destroy of BigSubstring.UTF8View(&v456);
      v269 = v394;
      if (v444 != 2)
      {
        v269 = v441;
        if (v389 > v441 >> 10)
        {
          goto LABEL_398;
        }

        v6 = v442;
        v265 = v443;
        v266 = v444;
      }
    }

    else
    {
      v269 = v264;
    }

    v477 = v400;
    v478 = v399;
    v479 = v263;
    v480 = v269;
    v481 = v6;
    v482 = v265;
    v483 = v266;
    v270 = v402;
    if ((specialized Collection<>._containsScalarConstraint.getter(v402) & 1) == 0)
    {
      swift_unknownObjectRelease();
      v256 = v414;
      v286 = v391;
LABEL_294:
      v311 = v269 >> 10 == v286;
      if (v269 >> 10 == v286)
      {
        v11 = v394;
      }

      else
      {
        v11 = v269;
      }

      if (v269 >> 10 == v286)
      {
        v312 = v404;
      }

      else
      {
        v312 = v6;
      }

      v313 = v403;
      if (!v311)
      {
        v313 = v265;
      }

      v419 = v313;
      v420 = v312;
      if (v311)
      {
        v6 = v401;
      }

      else
      {
        v6 = v266;
      }

      v14 = v397;
      goto LABEL_331;
    }

    v14 = v270 + 56;
    v271 = 1 << *(v270 + 32);
    v272 = -1;
    if (v271 < 64)
    {
      v272 = ~(-1 << v271);
    }

    v273 = v272 & *(v270 + 56);
    a5 = (v271 + 63) >> 6;

    a1 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    while (v273)
    {
LABEL_263:
      v275 = __clz(__rbit64(v273));
      v273 &= v273 - 1;
      v276 = (*(v402 + 48) + ((a1 << 10) | (16 * v275)));
      v277 = v276[1];
      if (v277 >= 2)
      {
        v278 = specialized Collection.first.getter(*v276, v277);
        if ((v278 & 0x100000000) == 0)
        {
          v419 = v278;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11);
          }

          v280 = *(v11 + 16);
          v279 = *(v11 + 24);
          v281 = (v280 + 1);
          v282 = v419;
          if (v280 >= v279 >> 1)
          {
            v410 = (v280 + 1);
            v283 = v11;
            v284 = v280;
            v285 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v279 > 1), v280 + 1, 1, v283);
            v281 = v410;
            v280 = v284;
            v11 = v285;
            v282 = v419;
          }

          *(v11 + 16) = v281;
          *(v11 + 4 * v280 + 32) = v282;
        }
      }
    }

    while (1)
    {
      v274 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      if (v274 >= a5)
      {

        v471 = v411;
        v472 = v415;
        v473 = v416;
        v474 = v417;
        v475 = v418;
        v476 = v420;
        BigString.UnicodeScalarView.subscript.getter();
        v305 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v11);
        v420 = v306;
        v308 = v307;
        v310 = v309;

        swift_unknownObjectRelease();
        outlined destroy of BigSubstring.UnicodeScalarView(&v437);
        v256 = v414;
        v286 = v391;
        if (v310 == 2)
        {
          goto LABEL_294;
        }

        if (v389 <= v305 >> 10)
        {
          v269 = v305;
          v6 = v420;
          v265 = v308;
          v266 = v310;
          goto LABEL_294;
        }

        goto LABEL_399;
      }

      v273 = *(v14 + 8 * v274);
      ++a1;
      if (v273)
      {
        a1 = v274;
        goto LABEL_263;
      }
    }

LABEL_342:
    __break(1u);
LABEL_343:
    __break(1u);
LABEL_344:
    __break(1u);
LABEL_345:
    __break(1u);
LABEL_346:
    __break(1u);
    goto LABEL_347;
  }

  v14 = v397;
  v260 = v402;
  if (v257 < v140)
  {
    goto LABEL_392;
  }

  v426 = v400;
  v427 = v399;
  v428 = v396;
  v429 = v11;
  v430 = v252;
  v431 = v254;
  v432 = v6;
  if (v140 == v257)
  {
    v419 = v254;
    v420 = v252;
    goto LABEL_331;
  }

  v287 = v258;
  swift_unknownObjectRetain();
  v288 = specialized Set.contains(_:)(0, 0, v260);
  v411 = v287;
  if ((v288 & 1) == 0 || (v484 = v287, v485 = v415, v486 = v416, v487 = v417, v488 = v418, v489 = v259, BigString.UTF8View.subscript.getter(), *&v421 = v400, *(&v421 + 1) = v399, v422 = v396, *&v423 = v400, *(&v423 + 1) = v399, v424 = v396, specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v421, &v437), outlined destroy of BigSubstring.UTF8View(&v456), v444 == 2))
  {
LABEL_275:
    v477 = v400;
    v478 = v399;
    v479 = v396;
    v480 = v11;
    v419 = v254;
    v420 = v252;
    v481 = v252;
    v482 = v254;
    v483 = v6;
    if (specialized Collection<>._containsScalarConstraint.getter(v260))
    {
      a5 = v259;
      v289 = v260 + 56;
      v290 = 1 << *(v260 + 32);
      v291 = -1;
      if (v290 < 64)
      {
        v291 = ~(-1 << v290);
      }

      a1 = v291 & *(v260 + 56);
      v292 = (v290 + 63) >> 6;

      v293 = 0;
      v410 = MEMORY[0x1E69E7CC0];
      while (a1)
      {
LABEL_284:
        v295 = __clz(__rbit64(a1));
        a1 &= a1 - 1;
        v296 = (*(v260 + 48) + ((v293 << 10) | (16 * v295)));
        v297 = v296[1];
        if (v297 >= 2)
        {
          v298 = specialized Collection.first.getter(*v296, v297);
          if ((v298 & 0x100000000) == 0)
          {
            v409 = v298;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v410 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v410 + 2) + 1, 1, v410);
            }

            v299 = v409;
            v301 = *(v410 + 2);
            v300 = *(v410 + 3);
            v302 = (v301 + 1);
            if (v301 >= v300 >> 1)
            {
              v408 = (v301 + 1);
              v304 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v300 > 1), v301 + 1, 1, v410);
              v302 = v408;
              v299 = v409;
              v410 = v304;
            }

            v303 = v410;
            *(v410 + 2) = v302;
            *&v303[4 * v301 + 32] = v299;
            v260 = v402;
          }
        }
      }

      while (1)
      {
        v294 = v293 + 1;
        if (__OFADD__(v293, 1))
        {
          break;
        }

        if (v294 >= v292)
        {

          v471 = v411;
          v472 = v415;
          v473 = v416;
          v474 = v417;
          v475 = v418;
          v476 = a5;
          BigString.UnicodeScalarView.subscript.getter();
          v339 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v410);
          v341 = v340;
          v343 = v342;
          v345 = v344;

          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(&v437);
          v256 = v414;
          if (v345 == 2)
          {
            goto LABEL_331;
          }

          if (v389 <= v339 >> 10)
          {
            v11 = v339;
            v419 = v343;
            v420 = v341;
            v6 = v345;
            goto LABEL_331;
          }

          goto LABEL_404;
        }

        a1 = *(v289 + 8 * v294);
        ++v293;
        if (a1)
        {
          v293 = v294;
          goto LABEL_284;
        }
      }

LABEL_347:
      __break(1u);
LABEL_348:
      __break(1u);
LABEL_349:
      __break(1u);
LABEL_350:
      __break(1u);
LABEL_351:
      __break(1u);
      goto LABEL_352;
    }

    swift_unknownObjectRelease();
    v256 = v414;
LABEL_331:
    a1 = v256[2];
    v347 = v256[9];
    v346 = v256[10];
    v348 = v256[11];
    v349 = v256[12];
    swift_unknownObjectRetain();
    specialized Rope.subscript.getter(v413, v412, v398, v347, v346, v348, v349);
    a5 = v350;
    swift_unknownObjectRelease();
    if (one-time initialization token for name == -1)
    {
      if (!*(a5 + 16))
      {
        goto LABEL_355;
      }

      goto LABEL_333;
    }

LABEL_354:
    swift_once();
    if (!*(a5 + 16))
    {
      goto LABEL_355;
    }

LABEL_333:
    v351 = specialized __RawDictionaryStorage.find<A>(_:)(static AttributeScopes.FoundationAttributes.InflectionRuleAttribute.name, unk_1EA7B2660);
    if (v352)
    {
      outlined init with copy of AttributedString._AttributeValue(*(a5 + 56) + 72 * v351, &v451);
      outlined init with copy of Hashable & Sendable(&v451, v436);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
      if (!swift_dynamicCast())
      {
        goto LABEL_410;
      }

      outlined destroy of AttributedString._AttributeValue(&v451);
      v353 = v434;
      v354 = v435;
      v355 = v384;
      *v384 = v433;
      *(v355 + 20) = v354;
      *(v355 + 4) = v353;
LABEL_356:
      if (one-time initialization token for name == -1)
      {
        if (!*(a5 + 16))
        {
          goto LABEL_362;
        }
      }

      else
      {
        swift_once();
        if (!*(a5 + 16))
        {
          goto LABEL_362;
        }
      }

      v357 = specialized __RawDictionaryStorage.find<A>(_:)(static AttributeScopes.FoundationAttributes.AgreementArgumentAttribute.name, unk_1EA7B2610);
      if (v358)
      {
        outlined init with copy of AttributedString._AttributeValue(*(a5 + 56) + 72 * v357, &v451);
        outlined init with copy of Hashable & Sendable(&v451, v436);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
        result = swift_dynamicCast();
        if (!result)
        {
          goto LABEL_411;
        }

        outlined destroy of AttributedString._AttributeValue(&v451);
        v360 = v433;
        goto LABEL_363;
      }

LABEL_362:
      v360 = 0;
LABEL_363:
      if (one-time initialization token for name != -1)
      {
        swift_once();
      }

      specialized Dictionary.subscript.getter(static AttributeScopes.FoundationAttributes.AgreementConceptAttribute.name, *algn_1EA7B2628, a5, &v451);
      v361 = *(&v452 + 1);
      if (*(&v452 + 1))
      {
        outlined init with copy of Hashable & Sendable(&v451, v436);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_408;
        }

        v362 = v385;
        *v385 = v433;
        outlined destroy of AttributedString._AttributeValue(&v451);
        v363 = v362;
        v14 = v397;
      }

      else
      {
        outlined destroy of TermOfAddress?(&v451, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v363 = v385;
        *v385 = 0;
      }

      *(v363 + 8) = v361 == 0;
      if (one-time initialization token for name != -1)
      {
        swift_once();
      }

      specialized Dictionary.subscript.getter(static AttributeScopes.FoundationAttributes.ReferentConceptAttribute.name, unk_1EA7B2640, a5, &v451);

      v364 = *(&v452 + 1);
      if (*(&v452 + 1))
      {
        outlined init with copy of Hashable & Sendable(&v451, v436);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
        v365 = swift_dynamicCast();
        v367 = v386;
        v366 = v387;
        if ((v365 & 1) == 0)
        {
          goto LABEL_409;
        }

        *v386 = v433;
        outlined destroy of AttributedString._AttributeValue(&v451);
      }

      else
      {
        outlined destroy of TermOfAddress?(&v451, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v367 = v386;
        v366 = v387;
        *v386 = 0;
      }

      *(v367 + 8) = v364 == 0;
      if (v11 >> 10 >= v395 >> 10)
      {
        *v366 = v395;
        v366[1] = v14;
        v368 = v392;
        v366[2] = v393;
        v366[3] = v368;
        v366[4] = v390;
        v366[5] = v11;
        v369 = v419;
        v366[6] = v420;
        v366[7] = v369;
        v366[8] = v6;
        v366[9] = a1;
        return v360;
      }

      __break(1u);
      goto LABEL_378;
    }

LABEL_355:
    v356 = v384;
    *v384 = xmmword_1812187D0;
    *(v356 + 20) = 0;
    *(v356 + 4) = 0;
    goto LABEL_356;
  }

  v11 = v441;
  if (v140 <= v441 >> 10)
  {
    v252 = v442;
    v254 = v443;
    v6 = v444;
    goto LABEL_275;
  }

LABEL_403:
  __break(1u);
LABEL_404:
  __break(1u);
LABEL_405:
  __break(1u);
LABEL_406:
  __break(1u);
LABEL_407:
  __break(1u);
LABEL_408:
  __break(1u);
LABEL_409:
  __break(1u);
LABEL_410:
  v433 = xmmword_1812187D0;
  v435 = 0;
  v434 = 0;
  result = outlined consume of AttributedString.AttributeRunBoundaries?(0, 1);
  __break(1u);
LABEL_411:
  __break(1u);
  return result;
}

uint64_t _s10Foundation16AttributedStringV4RunsV3RunVy5ValueQzSgxmcAA0bC3KeyRzluigAA15AttributeScopesO0A10AttributesV024InlinePresentationIntentH0O_Tt0B5()
{
  v1 = *v0;
  if (one-time initialization token for name == -1)
  {
    if (!*(v1 + 16))
    {
      return 0;
    }
  }

  else
  {
    swift_once();
    if (!*(v1 + 16))
    {
      return 0;
    }
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(static AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute.name, unk_1EA7B26A0);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of AttributedString._AttributeValue(*(v1 + 56) + 72 * v2, v7);
  outlined init with copy of Hashable & Sendable(v7, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
  type metadata accessor for NSInlinePresentationIntent(0);
  result = swift_dynamicCast();
  if (result)
  {
    outlined destroy of AttributedString._AttributeValue(v7);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized AttributedStringProtocol.index(_:offsetByCharacters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  v5 = *(a2 + 40);
  v21 = *(a2 + 24);
  v22 = v5;
  v23 = *(a2 + 56);
  *&v16 = a2;
  *(&v16 + 1) = BigString.startIndex.getter();
  *&v17 = v6;
  *(&v17 + 1) = v7;
  *&v18 = v8;
  *(&v18 + 1) = BigString.endIndex.getter();
  *&v19 = v9;
  *(&v19 + 1) = v10;
  v20 = v11;
  v12 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v12;
  v15 = *(a1 + 32);

  AttributedString.CharacterView._index(_:offsetBy:)(v14, a3);
  v24[2] = v18;
  v24[3] = v19;
  v24[4] = v20;
  v24[0] = v16;
  v24[1] = v17;
  return outlined destroy of AttributedString.CharacterView(v24);
}

uint64_t _s10Foundation19AttributedSubstringVy5ValueQzSgxmcAA0B9StringKeyRzluigAA15AttributeScopesO0A10AttributesV09Localizede8ArgumentI0V0j7NumerickG0O_Tt0B5@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v12[0] = *(v1 + 8);
  v12[1] = v3;
  v4 = *(v1 + 56);
  v12[2] = *(v1 + 40);
  v12[3] = v4;
  _s10Foundation16AttributedStringV4GutsC15getUniformValue2in3keyAC010_AttributeG0VSgSny19CollectionsInternal03BigC0V5IndexVG_xmtAA0bC3KeyRzlFAA0J6ScopesO0A10AttributesV09Localizedc8ArgumentQ0V0r7NumericsJ0O_Tt1g5(v12, v10);
  if (v11)
  {
    outlined init with copy of Hashable & Sendable(v10, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
    result = swift_dynamicCast();
    if (result)
    {
      *a1 = v6;
      *(a1 + 16) = v7;
      *(a1 + 20) = v8;
      return outlined destroy of AttributedString._AttributeValue(v10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    result = outlined destroy of TermOfAddress?(v10, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 20) = -1;
    *(a1 + 16) = 0;
  }

  return result;
}

char *_s10Foundation19AttributedSubstringVy5ValueQzSgxmcAA0B9StringKeyRzluisAA15AttributeScopesO0A10AttributesV014InflectionRuleG0O_Tt0B5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_11;
  }

  v30 = a3;
  v8 = *v3;
  v9 = *(*v3 + 24);
  v10 = *(*v3 + 56);
  v39 = *(*v3 + 40);
  v40 = v10;
  v38 = v9;
  v11 = v8[9];
  v12 = v8[10];
  v13 = v8[11];
  v14 = v8[12];
  type metadata accessor for AttributedString.Guts();
  v15 = swift_allocObject();
  v16 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v38, &v31);
  v17 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v17);
  if (v11)
  {
    v18 = v13 == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = v18;
  if (v19 != v16)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
LABEL_15:
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v21 = v39;
  *(v15 + 24) = v38;
  *(v15 + 16) = add_explicit;
  *(v15 + 40) = v21;
  *(v15 + 56) = v40;
  *(v15 + 72) = v11;
  *(v15 + 80) = v12;
  *(v15 + 88) = v13;
  *(v15 + 96) = v14;
  *(v15 + 104) = MEMORY[0x1E69E7CC0];

  *v4 = v15;
  a3 = v30;
LABEL_11:
  v22 = *v4;
  if (a2 == 1)
  {
    v23 = *(v22 + 40);
    v31 = *(v22 + 24);
    v32 = v23;
    v33 = *(v22 + 56);
    swift_unknownObjectRetain();
    v24 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    v25 = *(v22 + 40);
    v35 = *(v22 + 24);
    v36 = v25;
    v37 = *(v22 + 56);
    swift_unknownObjectRetain();
    v26 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    return specialized AttributedString._InternalRunsSlice.updateEach(with:)(v22, v24 >> 11, v26 >> 11);
  }

  else
  {
    v28 = *(v4 + 3);
    v31 = *(v4 + 1);
    v32 = v28;
    v29 = *(v4 + 7);
    v33 = *(v4 + 5);
    v34 = v29;
    _s10Foundation16AttributedStringV4GutsC17setAttributeValue_6forKey2iny0G0Qz_xmSny19CollectionsInternal03BigC0V5IndexVGtAA0bcI0Rzs8SendableAJRQlFAA0F6ScopesO0A10AttributesV014InflectionRuleF0O_Tt0B5(a1, a2, a3 & 0xFFFFFFFFFFLL);
    return outlined consume of AttributedString.AttributeRunBoundaries?(a1, a2);
  }
}

unint64_t _sSo8_NSRangeV10FoundationE_2inABx_q_tcSXRzAC24AttributedStringProtocolR_AC0dE0V5IndexV5BoundRtzr0_lufCSnyAIG_AGTt1B5(unint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v21 = *(a2 + 24);
  v22 = v4;
  v23 = *(a2 + 56);
  BigString.startIndex.getter();
  BigString.endIndex.getter();
  v5 = *a1;
  v6 = a1[5];
  v7 = *(a2 + 40);
  v18 = *(a2 + 24);
  v19 = v7;
  v20 = *(a2 + 56);
  v13 = *(a2 + 40);
  v14 = *(a2 + 24);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  result = BigString.startIndex.getter();
  if (v5 >> 10 < result >> 10)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = BigString.endIndex.getter();
  if (result >> 10 < v6 >> 10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v24[0] = v18;
  v24[1] = v19;
  v25 = v20;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v24, v15);

  v15[0] = v14;
  v15[1] = v13;
  v16 = v8;
  v17 = v9;
  v11 = BigString.UTF16View.distance(from:to:)();
  v12 = BigString.UTF16View.distance(from:to:)();
  BigString.UTF16View.distance(from:to:)();
  outlined destroy of BigString(&v18);
  result = v12 - v11;
  if (__OFSUB__(v12, v11))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t _sSn10FoundationAA16AttributedStringV5IndexVRszrlE_2inSnyAEGSgSo8_NSRangeV_qd__tcAA0bC8ProtocolRd__lufCAC_Tt2B5@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (result == 0x7FFFFFFFFFFFFFFFLL || result < 0 || a2 < 0)
  {
    goto LABEL_7;
  }

  v5 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    v6 = *(a3 + 40);
    v79 = *(a3 + 24);
    v80 = v6;
    v81 = *(a3 + 56);
    v71 = BigString.startIndex.getter();
    v72 = v7;
    v73 = v8;
    v74 = v9;
    v75 = BigString.endIndex.getter();
    v76 = v10;
    v77 = v11;
    v78 = v12;
    v82[0] = v79;
    v82[1] = v80;
    v83 = v81;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v82, v64);
    BigString.subscript.getter();
    outlined destroy of BigString(&v79);
    v47 = v36;
    v48 = v37;
    v49 = v38;
    v13 = v39;
    v14 = v40;
    v15 = v41;
    v16 = v42;
    v45 = v43;
    v46 = v44;
    v64[0] = v36;
    v64[1] = v37;
    v64[2] = v38;
    v69 = v43;
    v70 = v44;
    v65 = v39;
    v66 = v40;
    v67 = v41;
    v68 = v42;
    outlined init with copy of BigSubstring(&v36, v57);
    v17 = BigSubstring.UTF16View.count.getter();
    outlined destroy of BigSubstring.UTF16View(v64);
    if (v17 < v5)
    {

      result = outlined destroy of BigSubstring(&v36);
LABEL_8:
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 2;
      *(a4 + 32) = 0u;
      *(a4 + 48) = 0u;
      *(a4 + 64) = 0u;
      return result;
    }

    v57[0] = v47;
    v57[1] = v48;
    v57[2] = v49;
    v62 = v45;
    v63 = v46;
    v58 = v13;
    v59 = v14;
    v60 = v15;
    v61 = v16;
    outlined init with copy of BigSubstring(&v36, v50);
    v18 = BigSubstring.UTF16View.index(_:offsetBy:)();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    outlined destroy of BigSubstring.UTF16View(v57);
    v50[0] = v47;
    v50[1] = v48;
    v50[2] = v49;
    v55 = v45;
    v56 = v46;
    v51 = v13;
    v52 = v14;
    v53 = v15;
    v54 = v16;
    outlined init with copy of BigSubstring(&v36, v35);
    v25 = BigSubstring.UTF16View.index(_:offsetBy:)();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    outlined destroy of BigSubstring(&v36);
    outlined destroy of BigSubstring.UTF16View(v50);
    v32 = *(a3 + 40);
    v35[0] = *(a3 + 24);
    v35[1] = v32;
    v35[2] = *(a3 + 56);
    if (v18 >> 10 < BigString.startIndex.getter() >> 10 || BigString.endIndex.getter() >> 10 < v25 >> 10)
    {
LABEL_7:

      goto LABEL_8;
    }

    v33 = *(a3 + 16);

    *a4 = v18;
    *(a4 + 8) = v20;
    *(a4 + 16) = v22;
    *(a4 + 24) = v24;
    *(a4 + 32) = v33;
    *(a4 + 40) = v25;
    *(a4 + 48) = v27;
    *(a4 + 56) = v29;
    *(a4 + 64) = v31;
    *(a4 + 72) = v33;
  }

  return result;
}

uint64_t AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  v8 = *(a1 + 8);
  v9 = *(a2 + 48);
  p_aBlock = &aBlock;
  v118[5] = *(a2 + 32);
  v118[6] = v9;
  v11 = *(a2 + 80);
  v118[7] = *(a2 + 64);
  v118[8] = v11;
  v12 = *(a2 + 16);
  v118[3] = *a2;
  v118[4] = v12;
  v109 = *(a2 + 96);
  v13 = *v6;
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v99 = (v14 + 16);
  v100 = v13;
  v15 = *(v13 + 40);
  v118[0] = *(v13 + 24);
  v118[1] = v15;
  v118[2] = *(v13 + 56);

  outlined init with copy of BigString(v118, &aBlock);
  MEMORY[0x1865CAF80](v118);
  v16 = objc_allocWithZone(NSMutableString);
  v17 = String._bridgeToObjectiveCImpl()();

  v98 = [v16 initWithString_];
  swift_unknownObjectRelease();
  v102 = v14;
  if (a4)
  {
    v18 = *(a4 + 16);
    v19 = MEMORY[0x1E69E7CC0];
    if (v18)
    {
      *&aBlock = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      v20 = (a4 + 48);
      do
      {
        if (*v20 == 1)
        {
          v21 = objc_allocWithZone(NSString);
          v22 = String._bridgeToObjectiveCImpl()();

          [v21 initWithString_];
          swift_unknownObjectRelease();
          outlined consume of InflectionConcept();
        }

        else
        {

          _ContiguousArrayBuffer._asCocoaArray()();
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v20 += 24;
        --v18;
      }

      while (v18);
      v19 = aBlock;
      p_aBlock = &aBlock;
    }
  }

  else
  {
    v19 = 0;
  }

  v23 = v109;
  ObjectType = swift_getObjectType();
  v25 = (*(v8 + 488))(ObjectType, v8);
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v26 = a3;
    }

    else
    {
      v26 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    if (v19)
    {
      goto LABEL_12;
    }

LABEL_18:
    v28 = 0;
    goto LABEL_19;
  }

  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for _NSAttributedStringReplacement);

  v26 = _ContiguousArrayBuffer._asCocoaArray()();
  if (!v19)
  {
    goto LABEL_18;
  }

LABEL_12:
  v27 = v19 & 0xFFFFFFFFFFFFFF8;
  if (v19 >> 62)
  {
    goto LABEL_98;
  }

  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v28 = _ContiguousArrayBuffer._asCocoaArray()();
  while (1)
  {
LABEL_19:
    v104 = v26;
    v105 = v25;
    v103 = v28;
    if (v23 > 1)
    {
      switch(v23)
      {
        case 2:
          v29 = [objc_opt_self() masculine];
          break;
        case 3:
          v29 = [objc_opt_self() currentUser];
          break;
        case 4:
          v110 = 0;
          goto LABEL_31;
        default:
          goto LABEL_43;
      }

LABEL_30:
      v110 = v29;
      goto LABEL_31;
    }

    if (!v23)
    {
      v29 = [objc_opt_self() neutral];
      goto LABEL_30;
    }

    if (v23 == 1)
    {
      v29 = [objc_opt_self() feminine];
      goto LABEL_30;
    }

LABEL_43:
    v52 = p_aBlock[12];
    *v117 = p_aBlock[11];
    *&v117[16] = v52;
    v53 = p_aBlock[14];
    p_aBlock[4] = p_aBlock[13];
    p_aBlock[5] = v53;
    v54 = p_aBlock[10];
    aBlock = p_aBlock[9];
    v116 = v54;
    Locale.Language.languageCode.getter(&v112);
    v55 = v113;
    if (v113)
    {
      v56 = v112;

      outlined consume of Locale.LanguageCode?(v56, v55);
    }

    else
    {
      v57 = p_aBlock[12];
      *v117 = p_aBlock[11];
      *&v117[16] = v57;
      v58 = p_aBlock[14];
      p_aBlock[4] = p_aBlock[13];
      p_aBlock[5] = v58;
      v59 = p_aBlock[10];
      aBlock = p_aBlock[9];
      v116 = v59;
      Locale.Language.maximalIdentifier.getter();
    }

    v60 = String._bridgeToObjectiveCImpl()();

    v61 = *(v23 + 16);
    v62 = MEMORY[0x1E69E7CC0];
    if (v61)
    {
      v97 = v60;
      v114 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray.reserveCapacity(_:)();
      if (*(v23 + 16))
      {
        v63 = 0;
        v64 = (v23 + 32);
        v108 = v61 - 1;
        do
        {
          v65 = *(v64 + 45);
          v66 = v64[2];
          v67 = *v64;
          v116 = v64[1];
          *v117 = v66;
          aBlock = v67;
          *&v117[13] = v65;
          v68 = v116;
          v69 = BYTE1(v116);
          v70 = BYTE2(v116);
          v71 = v66;
          v72 = BYTE2(v66);
          v73 = BYTE3(v66);
          v74 = BYTE4(v66);
          v111 = String._bridgeToObjectiveCImpl()();
          v75 = objc_allocWithZone(NSMorphology);
          outlined init with copy of Morphology.Pronoun(&aBlock, &v112);
          v76 = [v75 init];
          v77 = v76;
          if (v68 == 3)
          {
            if (v70 == 6)
            {
              goto LABEL_51;
            }
          }

          else
          {
            [v76 setGrammaticalGender_];
            if (v70 == 6)
            {
LABEL_51:
              if (v69 == 14)
              {
                goto LABEL_52;
              }

              goto LABEL_74;
            }
          }

          [v77 setNumber_];
          if (v69 == 14)
          {
LABEL_52:
            if (v71 == 14)
            {
              goto LABEL_53;
            }

            goto LABEL_75;
          }

LABEL_74:
          [v77 setPartOfSpeech_];
          if (v71 == 14)
          {
LABEL_53:
            if (v73 == 2)
            {
              goto LABEL_54;
            }

            goto LABEL_76;
          }

LABEL_75:
          [v77 setGrammaticalCase_];
          if (v73 == 2)
          {
LABEL_54:
            if (v72 == 3)
            {
              goto LABEL_55;
            }

            goto LABEL_77;
          }

LABEL_76:
          [v77 setDetermination_];
          if (v72 == 3)
          {
LABEL_55:
            if (v74 == 2)
            {
              goto LABEL_56;
            }

            goto LABEL_78;
          }

LABEL_77:
          [v77 setPronounType_];
          if (v74 == 2)
          {
LABEL_56:
            if (*&v117[16])
            {
              goto LABEL_57;
            }

            goto LABEL_79;
          }

LABEL_78:
          [v77 setDefiniteness_];
          if (*&v117[16])
          {
LABEL_57:
            v78 = v117[28];
            v79 = *&v117[24];
            v80 = *&v117[8];
            v81 = objc_allocWithZone(NSMorphology);

            v82 = [v81 init];
            v83 = v82;
            if (v80 != 3)
            {
              [v82 setGrammaticalGender_];
            }

            if ((*&v80 & 0xFF0000) != 0x60000)
            {
              [v83 setNumber_];
            }

            if ((v80 & 0xFF00) != 0xE00)
            {
              [v83 setPartOfSpeech_];
            }

            v84 = v79 | (v78 << 32);
            if (v79 != 14)
            {
              [v83 setGrammaticalCase_];
            }

            if (BYTE3(v79) != 2)
            {
              [v83 setDetermination_];
            }

            if (BYTE2(v79) != 3)
            {
              [v83 setPronounType_];
            }

            if (v78 != 2)
            {
              [v83 setDefiniteness_];
            }

            goto LABEL_80;
          }

LABEL_79:
          v83 = 0;
LABEL_80:
          [objc_allocWithZone(NSMorphologyPronoun) initWithPronoun:v111 morphology:v77 dependentMorphology:v83];
          outlined destroy of Morphology.Pronoun(&aBlock);

          swift_unknownObjectRelease();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          if (v108 == v63)
          {
            goto LABEL_83;
          }

          ++v63;
          v64 += 4;
        }

        while (v63 < v109[2]);
      }

      __break(1u);
LABEL_83:
      v62 = v114;
      v14 = v102;
      v60 = v97;
    }

    if (v62 >> 62)
    {
      v85 = v62 < 0 ? v62 : v62 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMorphologyPronoun);
      v85 = _ContiguousArrayBuffer._asCocoaArray()();
    }

    v110 = [objc_opt_self() localizedForLanguageIdentifier:v60 withPronouns:v85];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_31:
    *v117 = closure #3 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:)partial apply;
    *&v117[8] = v14;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v116 = thunk for @escaping @callee_guaranteed () -> (@unowned Int);
    *(&v116 + 1) = &block_descriptor_172;
    v109 = _Block_copy(&aBlock);

    v30 = swift_allocObject();
    *(v30 + 16) = closure #4 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:)partial apply;
    *(v30 + 24) = v14;
    *v117 = thunk for @callee_guaranteed (@guaranteed NSAttributedStringKey, @unowned _NSRange, @guaranteed @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()) -> ()partial apply;
    *&v117[8] = v30;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v116 = thunk for @escaping @callee_guaranteed (@guaranteed NSAttributedStringKey, @unowned _NSRange, @guaranteed @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()) -> ();
    *(&v116 + 1) = &block_descriptor_180;
    v107 = _Block_copy(&aBlock);

    v31 = swift_allocObject();
    *(v31 + 16) = closure #5 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:)partial apply;
    *(v31 + 24) = v14;
    *v117 = thunk for @callee_guaranteed (@unowned _NSRange, @guaranteed @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()) -> ()partial apply;
    *&v117[8] = v31;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v116 = thunk for @escaping @callee_guaranteed (@unowned _NSRange, @guaranteed @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()) -> ();
    *(&v116 + 1) = &block_descriptor_188;
    v96 = _Block_copy(&aBlock);

    v32 = swift_allocObject();
    *(v32 + 16) = v99;
    v33 = swift_allocObject();
    *(v33 + 16) = closure #6 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:)partial apply;
    *(v33 + 24) = v32;
    *v117 = thunk for @callee_guaranteed (@unowned _NSRange, @guaranteed @escaping @callee_guaranteed (@guaranteed NSLocalizedNumberFormatRule, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()) -> ()partial apply;
    *&v117[8] = v33;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v116 = thunk for @escaping @callee_guaranteed (@unowned _NSRange, @guaranteed @escaping @callee_guaranteed (@guaranteed NSLocalizedNumberFormatRule, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()) -> ();
    *(&v116 + 1) = &block_descriptor_199;
    v95 = _Block_copy(&aBlock);

    v34 = swift_allocObject();
    *(v34 + 16) = v99;
    v35 = swift_allocObject();
    *(v35 + 16) = closure #7 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:)partial apply;
    *(v35 + 24) = v34;
    *v117 = thunk for @callee_guaranteed (@guaranteed NSAttributedStringKey, @unowned _NSRange) -> ()partial apply;
    *&v117[8] = v35;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v116 = thunk for @escaping @callee_guaranteed (@guaranteed NSAttributedStringKey, @unowned _NSRange) -> ();
    *(&v116 + 1) = &block_descriptor_210;
    v94 = _Block_copy(&aBlock);

    v36 = swift_allocObject();
    *(v36 + 16) = v99;
    v37 = swift_allocObject();
    *(v37 + 16) = closure #8 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:)partial apply;
    *(v37 + 24) = v36;
    *v117 = thunk for @callee_guaranteed (@unowned _NSRange) -> (@unowned Bool)partial apply;
    *&v117[8] = v37;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v116 = thunk for @escaping @callee_guaranteed (@unowned _NSRange) -> (@unowned Bool);
    *(&v116 + 1) = &block_descriptor_221;
    v93 = _Block_copy(&aBlock);

    v38 = swift_allocObject();
    *(v38 + 16) = v99;
    v39 = swift_allocObject();
    *(v39 + 16) = closure #9 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:)partial apply;
    *(v39 + 24) = v38;
    *v117 = thunk for @callee_guaranteed (@guaranteed NSAttributedStringKey, @unowned _NSRange) -> (@out Any?)partial apply;
    *&v117[8] = v39;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v116 = thunk for @escaping @callee_guaranteed (@guaranteed NSAttributedStringKey, @unowned _NSRange) -> (@out Any?);
    *(&v116 + 1) = &block_descriptor_232;
    v92 = _Block_copy(&aBlock);

    v40 = swift_allocObject();
    *(v40 + 16) = v99;
    v41 = swift_allocObject();
    *(v41 + 16) = closure #10 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:)partial apply;
    *(v41 + 24) = v40;
    *v117 = thunk for @callee_guaranteed (@unowned _NSRange) -> (@owned String)partial apply;
    *&v117[8] = v41;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v116 = thunk for @escaping @callee_guaranteed (@unowned _NSRange) -> (@owned String);
    *(&v116 + 1) = &block_descriptor_243;
    v91 = _Block_copy(&aBlock);

    v42 = swift_allocObject();
    *(v42 + 16) = v98;
    v43 = swift_allocObject();
    *(v43 + 16) = closure #11 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:)partial apply;
    *(v43 + 24) = v42;
    *v117 = thunk for @callee_guaranteed (@unowned _NSRange, @guaranteed @escaping @callee_guaranteed (@guaranteed String?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()) -> ()partial apply;
    *&v117[8] = v43;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v116 = thunk for @escaping @callee_guaranteed (@unowned _NSRange, @guaranteed @escaping @callee_guaranteed (@guaranteed String?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()) -> ();
    *(&v116 + 1) = &block_descriptor_254;
    v90 = _Block_copy(&aBlock);
    v44 = v98;

    v45 = swift_allocObject();
    *(v45 + 16) = v99;
    *(v45 + 24) = v44;
    v46 = swift_allocObject();
    *(v46 + 16) = closure #12 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:)partial apply;
    *(v46 + 24) = v45;
    *v117 = thunk for @callee_guaranteed (@unowned _NSRange, @in_guaranteed Any) -> ()partial apply;
    *&v117[8] = v46;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v116 = thunk for @escaping @callee_guaranteed (@unowned _NSRange, @in_guaranteed Any) -> ();
    *(&v116 + 1) = &block_descriptor_265;
    v89 = _Block_copy(&aBlock);
    v99 = v44;
    v87 = v46;

    *v117 = _NSBundleDeallocatingImmortalBundle;
    *&v117[8] = 0;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v116 = thunk for @escaping @callee_guaranteed (@unowned _NSRange, @guaranteed NSAttributedStringKey, @in_guaranteed Any) -> ();
    *(&v116 + 1) = &block_descriptor_268;
    v88 = _Block_copy(&aBlock);

    v47 = swift_allocObject();
    *(v47 + 16) = v100;
    *(v47 + 24) = a3;
    v48 = swift_allocObject();
    *(v48 + 16) = closure #14 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:)partial apply;
    *(v48 + 24) = v47;
    *v117 = thunk for @callee_guaranteed (@in_guaranteed Any) -> (@out Any?)partial apply;
    *&v117[8] = v48;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v116 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@out Any?);
    *(&v116 + 1) = &block_descriptor_279;
    v98 = _Block_copy(&aBlock);

    v23 = v90;
    p_aBlock = v91;
    v19 = v93;
    v14 = v94;
    v27 = v95;
    v25 = v107;
    v26 = v96;
    _NSInflect(v105, v104, v103, v110, v109, a5 & 1, v107, v96, v95, v94, v93, v92, v91, v90, v89, v88, v98);

    _Block_release(v88);
    _Block_release(v89);
    _Block_release(v90);
    _Block_release(v91);
    _Block_release(v92);
    _Block_release(v93);
    _Block_release(v94);
    _Block_release(v95);
    _Block_release(v96);
    _Block_release(v107);
    _Block_release(v109);

    swift_unknownObjectRelease();
    _Block_release(v98);
    LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

    if (v46)
    {
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    if (swift_isEscapingClosureAtFileLocation())
    {
      goto LABEL_88;
    }

    v27 = v87;
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_89;
    }

    v27 = swift_isEscapingClosureAtFileLocation();

    if (v27)
    {
      goto LABEL_90;
    }

    v27 = swift_isEscapingClosureAtFileLocation();

    if (v27)
    {
      goto LABEL_91;
    }

    v27 = swift_isEscapingClosureAtFileLocation();

    if (v27)
    {
      goto LABEL_92;
    }

    v27 = swift_isEscapingClosureAtFileLocation();

    if (v27)
    {
      goto LABEL_93;
    }

    v27 = swift_isEscapingClosureAtFileLocation();

    if (v27)
    {
      goto LABEL_94;
    }

    v27 = swift_isEscapingClosureAtFileLocation();

    if (v27)
    {
      goto LABEL_95;
    }

    v27 = swift_isEscapingClosureAtFileLocation();

    if (v27)
    {
      goto LABEL_96;
    }

    v27 = swift_isEscapingClosureAtFileLocation();

    if ((v27 & 1) == 0)
    {
      break;
    }

LABEL_97:
    __break(1u);
LABEL_98:
    if (v19 >= 0)
    {
      v28 = v27;
    }

    else
    {
      v28 = v19;
    }
  }

  v50 = *(v102 + 16);

  *a6 = v50;
}

uint64_t AttributedString.inflected()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v83 = static LocaleCache.cache;
  *&v84 = qword_1ED4404B0;
  LocaleCache._currentAndCache.getter();
  v5 = v4;
  aBlock = v3;
  v6 = *(v3 + 40);
  v90[0] = *(v3 + 24);
  v90[1] = v6;
  v90[2] = *(v3 + 56);
  v7 = v90;
  v8 = BigString.startIndex.getter();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = *(v3 + 16);
  v16 = BigString.endIndex.getter();
  if (v16 >> 10 < v8 >> 10)
  {
    __break(1u);
  }

  else
  {
    *&v83 = v8;
    *(&v83 + 1) = v10;
    *&v84 = v12;
    *(&v84 + 1) = v14;
    *&v85 = v15;
    *(&v85 + 1) = v16;
    v86 = v17;
    v87 = v18;
    v88 = v19;
    v89 = v15;
    v8 = AttributedString.replacements(in:)(&v83);
    v20 = swift_allocObject();
    v21 = v3;
    v3 = v20;
    *(v20 + 16) = v21;
    v14 = v20 + 16;
    v22 = *(v21 + 40);
    v83 = *(v21 + 24);
    v84 = v22;
    v85 = *(v21 + 56);
    v71 = v21;

    outlined init with copy of BigString(&v83, &aBlock);
    MEMORY[0x1865CAF80](&v83);
    v23 = objc_allocWithZone(NSMutableString);
    v24 = String._bridgeToObjectiveCImpl()();

    v10 = [v23 initWithString_];
    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 488))(ObjectType, v5);
    if (!(v8 >> 62))
    {
      type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for _NSAttributedStringReplacement);

      v75 = _ContiguousArrayBuffer._asCocoaArray()();
      goto LABEL_6;
    }
  }

  v58 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 < 0)
  {
    v58 = v8;
  }

  v75 = v58;

LABEL_6:
  v60 = a1;
  v76 = v7;
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    v74 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
    v74 = _ContiguousArrayBuffer._asCocoaArray()();
  }

  v72 = [objc_opt_self() currentUser];
  v81 = _s10Foundation16AttributedStringV9inflected6locale17userTermOfAddress12replacements8concepts9preflightAcA6LocaleV_AA0ghI0VSgSaySo013_NSAttributedC11ReplacementCGSayAA17InflectionConceptOGSgSbtFSiycfU1_TA_0;
  v82 = v3;
  aBlock = MEMORY[0x1E69E9820];
  v78 = 1107296256;
  v79 = thunk for @escaping @callee_guaranteed () -> (@unowned Int);
  v80 = &block_descriptor_26;
  v73 = _Block_copy(&aBlock);

  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for closure #4 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:);
  *(v26 + 24) = v3;
  v81 = _sSo21NSAttributedStringKeyaSo8_NSRangeVypSgADSpy10ObjectiveC8ObjCBoolVGIegnyy_Iggyg_AbdedIIegnyy_Ieggyg_TRTA_0;
  v82 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v78 = 1107296256;
  v79 = thunk for @escaping @callee_guaranteed (@guaranteed NSAttributedStringKey, @unowned _NSRange, @guaranteed @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()) -> ();
  v80 = &block_descriptor_6_1;
  v70 = _Block_copy(&aBlock);

  v27 = swift_allocObject();
  *(v27 + 16) = partial apply for closure #5 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:);
  *(v27 + 24) = v3;
  v81 = _sSo8_NSRangeVypSgABSpy10ObjectiveC8ObjCBoolVGIegnyy_Igyg_AbcbGIegnyy_Iegyg_TRTA_0;
  v82 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v78 = 1107296256;
  v79 = thunk for @escaping @callee_guaranteed (@unowned _NSRange, @guaranteed @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()) -> ();
  v80 = &block_descriptor_12_0;
  v69 = _Block_copy(&aBlock);
  v59 = v3;

  v28 = swift_allocObject();
  *(v28 + 16) = v14;
  v29 = swift_allocObject();
  *(v29 + 16) = partial apply for closure #6 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:);
  *(v29 + 24) = v28;
  v81 = _sSo8_NSRangeVSo27NSLocalizedNumberFormatRuleCABSpy10ObjectiveC8ObjCBoolVGIeggyy_Igyg_AbdbHIeggyy_Iegyg_TRTA_0;
  v82 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v78 = 1107296256;
  v79 = thunk for @escaping @callee_guaranteed (@unowned _NSRange, @guaranteed @escaping @callee_guaranteed (@guaranteed NSLocalizedNumberFormatRule, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()) -> ();
  v80 = &block_descriptor_21;
  v68 = _Block_copy(&aBlock);

  v30 = swift_allocObject();
  *(v30 + 16) = v14;
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for closure #7 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:);
  *(v31 + 24) = v30;
  v81 = _sSo21NSAttributedStringKeyaSo8_NSRangeVIggy_AbDIeggy_TRTA_0;
  v82 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v78 = 1107296256;
  v79 = thunk for @escaping @callee_guaranteed (@guaranteed NSAttributedStringKey, @unowned _NSRange) -> ();
  v80 = &block_descriptor_30;
  v67 = _Block_copy(&aBlock);

  v32 = swift_allocObject();
  *(v32 + 16) = v14;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for closure #8 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:);
  *(v33 + 24) = v32;
  v81 = _sSo8_NSRangeVSbIgyd_ABSbIegyd_TRTA_0;
  v82 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v78 = 1107296256;
  v79 = thunk for @escaping @callee_guaranteed (@unowned _NSRange) -> (@unowned Bool);
  v80 = &block_descriptor_39;
  v66 = _Block_copy(&aBlock);

  v34 = swift_allocObject();
  *(v34 + 16) = v14;
  v35 = swift_allocObject();
  *(v35 + 16) = partial apply for closure #9 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:);
  *(v35 + 24) = v34;
  v81 = _sSo21NSAttributedStringKeyaSo8_NSRangeVypSgIggyr_AbdEIeggyr_TRTA_0;
  v82 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v78 = 1107296256;
  v79 = thunk for @escaping @callee_guaranteed (@guaranteed NSAttributedStringKey, @unowned _NSRange) -> (@out Any?);
  v80 = &block_descriptor_48_0;
  v65 = _Block_copy(&aBlock);

  v36 = swift_allocObject();
  *(v36 + 16) = v14;
  v37 = swift_allocObject();
  *(v37 + 16) = partial apply for closure #10 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:);
  *(v37 + 24) = v36;
  v81 = _sSo8_NSRangeVSSIgyo_ABSSIegyo_TRTA_0;
  v82 = v37;
  aBlock = MEMORY[0x1E69E9820];
  v78 = 1107296256;
  v79 = thunk for @escaping @callee_guaranteed (@unowned _NSRange) -> (@owned String);
  v80 = &block_descriptor_57;
  v64 = _Block_copy(&aBlock);

  v38 = swift_allocObject();
  *(v38 + 16) = v10;
  v39 = swift_allocObject();
  *(v39 + 16) = partial apply for closure #11 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:);
  *(v39 + 24) = v38;
  v81 = _sSo8_NSRangeVSSSgABSpy10ObjectiveC8ObjCBoolVGIeggyy_Igyg_AbcbGIeggyy_Iegyg_TRTA_0;
  v82 = v39;
  aBlock = MEMORY[0x1E69E9820];
  v78 = 1107296256;
  v79 = thunk for @escaping @callee_guaranteed (@unowned _NSRange, @guaranteed @escaping @callee_guaranteed (@guaranteed String?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()) -> ();
  v80 = &block_descriptor_66;
  v63 = _Block_copy(&aBlock);
  v40 = v10;

  v41 = swift_allocObject();
  *(v41 + 16) = v14;
  *(v41 + 24) = v40;
  v42 = swift_allocObject();
  *(v42 + 16) = partial apply for closure #12 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:);
  *(v42 + 24) = v41;
  v81 = _sSo8_NSRangeVypIgyn_ABypIegyn_TRTA_0;
  v82 = v42;
  aBlock = MEMORY[0x1E69E9820];
  v78 = 1107296256;
  v79 = thunk for @escaping @callee_guaranteed (@unowned _NSRange, @in_guaranteed Any) -> ();
  v80 = &block_descriptor_75;
  v43 = _Block_copy(&aBlock);
  v62 = v40;

  v81 = _NSBundleDeallocatingImmortalBundle;
  v82 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v78 = 1107296256;
  v79 = thunk for @escaping @callee_guaranteed (@unowned _NSRange, @guaranteed NSAttributedStringKey, @in_guaranteed Any) -> ();
  v80 = &block_descriptor_78;
  v44 = _Block_copy(&aBlock);

  v45 = swift_allocObject();
  *(v45 + 16) = v71;
  *(v45 + 24) = v8;
  v46 = swift_allocObject();
  *(v46 + 16) = partial apply for closure #14 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:);
  *(v46 + 24) = v45;
  v81 = _sypypSgIgnr_ypAAIegnr_TRTA_0;
  v82 = v46;
  aBlock = MEMORY[0x1E69E9820];
  v78 = 1107296256;
  v79 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@out Any?);
  v80 = &block_descriptor_87;
  v61 = _Block_copy(&aBlock);

  _NSInflect(v76, v75, v74, v72, v73, 0, v70, v69, v68, v67, v66, v65, v64, v63, v43, v44, v61);

  _Block_release(v44);
  _Block_release(v43);
  _Block_release(v63);
  _Block_release(v64);
  _Block_release(v65);
  _Block_release(v66);
  _Block_release(v67);
  _Block_release(v68);
  _Block_release(v69);
  _Block_release(v70);
  _Block_release(v73);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  _Block_release(v61);
  LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

  if (v44)
  {
    __break(1u);
    goto LABEL_26;
  }

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v49 = swift_isEscapingClosureAtFileLocation();

  if (v49)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v50 = swift_isEscapingClosureAtFileLocation();

  if (v50)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v51 = swift_isEscapingClosureAtFileLocation();

  if (v51)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v52 = swift_isEscapingClosureAtFileLocation();

  if (v52)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v53 = swift_isEscapingClosureAtFileLocation();

  if (v53)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v54 = swift_isEscapingClosureAtFileLocation();

  if (v54)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v55 = swift_isEscapingClosureAtFileLocation();

  if (v55)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v56 = swift_isEscapingClosureAtFileLocation();

  if ((v56 & 1) == 0)
  {
    v57 = *(v59 + 16);

    *v60 = v57;
    swift_unknownObjectRelease();
  }

LABEL_35:
  __break(1u);
  return result;
}

unint64_t AttributedString.inflected(locale:userTermOfAddress:inflectionConcepts:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v23 = *a1;
  v8 = *v4;
  v33 = v8;
  v9 = *(v8 + 40);
  v34 = *(v8 + 24);
  v35 = v9;
  v36 = *(v8 + 56);
  v10 = BigString.startIndex.getter();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = *(v8 + 16);
  result = BigString.endIndex.getter();
  if (result >> 10 < v10 >> 10)
  {
    __break(1u);
  }

  else
  {
    *&v24 = v10;
    *(&v24 + 1) = v12;
    v25 = v14;
    v26 = v16;
    v27 = v17;
    v28 = result;
    v29 = v19;
    v30 = v20;
    v31 = v21;
    v32 = v17;
    v22 = AttributedString.replacements(in:)(&v24);
    v33 = v8;
    v24 = v23;
    AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:)(&v24, a2, v22, a3, 0, a4);
  }

  return result;
}

unint64_t AttributedString.replacements(in:)(unint64_t a1)
{
  v289 = a1;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd);
  MEMORY[0x1EEE9AC00](v274);
  v267 = &v249 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v275 = &v249 - v4;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v279 = *(v286 - 8);
  MEMORY[0x1EEE9AC00](v286);
  v265 = &v249 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v269 = &v249 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v277 = &v249 - v9;
  *&v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd) - 8;
  MEMORY[0x1EEE9AC00](v290);
  v11 = &v249 - v10;
  *&v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v276 = *(v282 - 8);
  MEMORY[0x1EEE9AC00](v282);
  *&v281 = &v249 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v249 - v14;
  v268 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v268);
  v273 = &v249 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v280 = &v249 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v272 = &v249 - v20;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd);
  MEMORY[0x1EEE9AC00](v266);
  v278 = &v249 - v21;
  v22 = *v1;
  v323 = MEMORY[0x1E69E7CC0];
  v412 = *(v22 + 24);
  v413 = *(v22 + 40);
  v414 = *(v22 + 56);
  v23 = BigString.startIndex.getter();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = BigString.endIndex.getter();
  v417[0] = v22;
  v417[1] = v23;
  v31 = v11;
  v417[2] = v25;
  v417[3] = v27;
  v417[4] = v29;
  v417[5] = v30;
  v417[6] = v32;
  v417[7] = v33;
  v417[8] = v34;
  v417[9] = 0;
  swift_retain_n();
  outlined destroy of AttributedString.CharacterView(v417);
  v35 = *v289;
  v406 = *(v289 + 16);
  v405 = v35;
  v36 = *(v289 + 40);
  v37 = v286;
  v408 = *(v289 + 56);
  v407 = v36;
  v409 = *(v22 + 24);
  v410 = *(v22 + 40);
  v411 = *(v22 + 56);
  swift_unknownObjectRetain();

  BigString.UnicodeScalarView.subscript.getter();
  swift_unknownObjectRelease();

  outlined destroy of BigSubstring.UnicodeScalarView(&v324);
  v319 = v325;
  v320 = v326;
  v321 = v327;
  v322 = v328;
  v419 = v325;
  v420 = v326;
  v421 = v327;
  v422 = v328;
  v418 = v22;
  v423 = 0;
  v334[0] = v325;
  v334[1] = v326;
  v334[2] = v327;
  v335 = v328;
  outlined init with copy of AttributedSubstring(&v418, &v339);
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();
  RangeSet.init(_:)();
  v287 = v22;
  *v280 = v22;
  RangeSet.init()();
  v38 = v277;
  v270 = v15;
  RangeSet.ranges.getter();
  v39 = v279;
  v40 = v38;
  (*(v279 + 16))(v31, v38, v37);
  v41 = *(v290 + 44);
  v42 = lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of Collection.startIndex.getter();
  v43 = *(v39 + 8);
  v279 = v39 + 8;
  v271 = v43;
  v43(v40, v37);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v31 + v41) != v339)
  {
    v284 = v42;
    v285 = v31;
    v283 = v41;
    do
    {
      v54 = dispatch thunk of Collection.subscript.read();
      v56 = v55[4];
      v57 = v55[7];
      v289 = v55[6];
      *&v290 = v56;
      v288 = v57;
      v54(&v339, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v58 = v287;
      v402 = *(v287 + 24);
      v403 = *(v287 + 40);
      v404 = *(v287 + 56);
      swift_unknownObjectRetain();
      v59 = BigString.UnicodeScalarView.index(roundingDown:)();
      v61 = v60;
      v63 = v62;
      v65 = v64;
      swift_unknownObjectRelease();
      v399 = *(v58 + 24);
      v400 = *(v58 + 40);
      v401 = *(v58 + 56);
      swift_unknownObjectRetain();
      v66 = BigString.UnicodeScalarView.index(roundingDown:)();
      v68 = v67;
      v70 = v69;
      v72 = v71;
      v37 = v286;
      swift_unknownObjectRelease();
      v339 = v59;
      v340 = v61;
      v341 = v63;
      v342 = v65;
      v343 = v66;
      v344 = v68;
      *&v345 = v70;
      *(&v345 + 1) = v72;
      if ((v66 ^ v59) >= 0x400)
      {
        v73 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v73(v334, 0);
      }

      v31 = v285;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v31 + v283) != v339);
  }

  outlined destroy of TermOfAddress?(v31, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v44 = v268;
  v45 = *(v268 + 24);
  v46 = v280;
  (*(v276 + 16))(&v45[v280], v281, v282);
  v47 = v277;
  RangeSet.ranges.getter();
  v48 = RangeSet.Ranges.count.getter();
  v49 = v47;
  v50 = v271;
  v271(v49, v37);
  v51 = *(v44 + 28);
  LODWORD(v283) = v48 > 1;
  *(v46 + v51) = v283;
  v52 = v269;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*&v334[0] == v339)
  {
    v50(v52, v37);
    v53 = v287;
  }

  else
  {
    v74 = dispatch thunk of Collection.subscript.read();
    v76 = v75[1];
    v268 = *v75;
    v77 = v75[3];
    v263 = v75[2];
    v264 = v76;
    v262 = v77;
    v74(&v339, 0);
    v50(v52, v37);
    v269 = v45;
    v78 = v265;
    RangeSet.ranges.getter();
    v79 = dispatch thunk of Collection.isEmpty.getter();
    v80 = v37;
    v53 = v287;
    if ((v79 & 1) == 0)
    {
      v125 = v78;
      dispatch thunk of Collection.endIndex.getter();
      lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
      dispatch thunk of BidirectionalCollection.index(before:)();
      v126 = dispatch thunk of Collection.subscript.read();
      v108 = v127[4];
      v261 = v127[5];
      v128 = v127[6];
      v129 = v127[7];
      v126(&v339, 0);
      v50(v125, v37);
      AttributedString.Guts.findRun(at:)(v268, v262, &v339);
      v289 = v339;
      *&v290 = v340;
      v255 = v342;
      v256 = v341;
      v265 = v344;
      v259 = *(&v345 + 1);
      v260 = v345;
      v288 = v346;
      v396 = *(v53 + 24);
      v397 = *(v53 + 40);
      v398 = *(v53 + 56);
      v130 = BigString.endIndex.getter();
      v257 = v129;
      v258 = v128;
      if ((v130 ^ v108) > 0x3FF)
      {
        AttributedString.Guts.findRun(at:)(v108, v129, &v339);
        v284 = v339;
        v285 = v340;
        v100 = v341;
        v253 = v344;
        v254 = v342;
        v251 = *(&v345 + 1);
        v252 = v345;
        v250 = v346;
        v158 = v277;
        v159 = v282;
        RangeSet.ranges.getter();
        v112 = RangeSet.Ranges.count.getter();
        v160 = *(v276 + 8);
        v160(v270, v159);
        v161 = v158;
        v114 = v284;
        v50(v161, v80);
        v160(v281, v159);
        v92 = v253;
        v99 = v254;
        v109 = v261;
        v107 = v262;
        v95 = v250;
        v94 = v251;
        v93 = v252;
        v101 = 0;
        v113 = v275;
        v98 = v283;
        v102 = v268;
        v104 = v263;
        v103 = v264;
        v105 = v288;
        v106 = v289;
        v83 = v265;
        v87 = v259;
        v85 = v260;
        v111 = v257;
        v110 = v258;
        v115 = v290;
        v96 = v255;
        v97 = v256;
      }

      else
      {
        v131 = *(v53 + 72);
        if (v131)
        {
          v132 = *(v53 + 80);
        }

        else
        {
          v132 = 0;
        }

        v254 = v132;
        v114 = *(v53 + 96);
        v133 = swift_unknownObjectRetain();
        v285 = specialized Rope._endPath.getter(v133);
        if (v131)
        {
          swift_unknownObjectRelease();
        }

        v134 = v277;
        v135 = v282;
        RangeSet.ranges.getter();
        v112 = RangeSet.Ranges.count.getter();
        v136 = *(v276 + 8);
        v136(v270, v135);
        v271(v134, v80);
        v136(v281, v135);
        v101 = 0;
        v100 = 0;
        v92 = v108;
        v109 = v261;
        v107 = v262;
        v93 = v261;
        v111 = v257;
        v110 = v258;
        v94 = v258;
        v95 = v257;
        v113 = v275;
        v98 = v283;
        v106 = v289;
        v115 = v290;
        v102 = v268;
        v104 = v263;
        v103 = v264;
        v83 = v265;
        v87 = v259;
        v85 = v260;
        v105 = v288;
        v96 = v255;
        v97 = v256;
        v99 = v254;
      }

      goto LABEL_17;
    }

    v50(v78, v37);
  }

  v81 = *(v53 + 72);
  v82 = v282;
  if (v81)
  {
    *&v290 = *(v81 + 18);
  }

  else
  {
    *&v290 = 0;
  }

  v289 = *(v53 + 96);
  v396 = *(v53 + 24);
  v397 = *(v53 + 40);
  v398 = *(v53 + 56);
  v83 = BigString.startIndex.getter();
  v85 = v84;
  v87 = v86;
  v288 = v88;
  v89 = *(v53 + 72);
  v284 = *(v53 + 96);
  if (v89)
  {
    v285 = *(v89 + 18);
    v90 = *(v276 + 8);
    swift_unknownObjectRetain();
    v90(v270, v82);
    v90(v281, v82);
    swift_unknownObjectRelease();
  }

  else
  {
    v91 = *(v276 + 8);
    v91(v270, v82);
    v91(v281, v82);
    v285 = 0;
  }

  v393 = *(v53 + 24);
  v394 = *(v53 + 40);
  v395 = *(v53 + 56);
  v92 = BigString.startIndex.getter();
  v96 = 0;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = 0;
  v101 = -1;
  v102 = v83;
  v103 = v85;
  v104 = v87;
  v105 = v288;
  v106 = v289;
  v107 = v288;
  v108 = v92;
  v109 = v93;
  v110 = v94;
  v111 = v95;
  v112 = -1;
  v113 = v275;
  v114 = v284;
  v115 = v290;
LABEL_17:
  v116 = v280;
  *(v280 + 8) = v96;
  *(v116 + 16) = v106;
  *(v116 + 24) = v115;
  *(v116 + 32) = v97;
  *(v116 + 40) = v83;
  *(v116 + 48) = v85;
  *(v116 + 56) = v87;
  *(v116 + 64) = v105;
  *(v116 + 72) = v102;
  *(v116 + 80) = v103;
  *(v116 + 88) = v104;
  *(v116 + 96) = v107;
  *(v116 + 104) = v101;
  *(v116 + 112) = 0;
  *(v116 + 113) = v98;
  *(v116 + 120) = v99;
  *(v116 + 128) = v114;
  *(v116 + 136) = v285;
  *(v116 + 144) = v100;
  *(v116 + 152) = v92;
  *(v116 + 160) = v93;
  *(v116 + 168) = v94;
  *(v116 + 176) = v95;
  *(v116 + 184) = v108;
  *(v116 + 192) = v109;
  *(v116 + 200) = v110;
  *(v116 + 208) = v111;
  *(v116 + 216) = v112;
  *(v116 + 224) = 0;
  *(v116 + 225) = v98;
  v117 = v272;
  outlined init with take of AttributedString.Runs(v116, v272);
  outlined destroy of AttributedSubstring(&v418);
  v118 = v117;
  v119 = v273;
  outlined init with copy of AttributedString.Runs(v118, v273);
  outlined init with copy of AttributedString.Runs(v119, v113);
  *(v113 + *(v274 + 36)) = &outlined read-only object #0 of AttributedString.replacements(in:);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd);
  v120 = static _SetStorage.allocate(capacity:)();
  v121 = v120 + 56;
  v122 = qword_1EEED4658;
  v123 = unk_1EEED4660;
  Hasher.init(_seed:)();
  if (v123 == 1)
  {
    Hasher._combine(_:)(0);
    v124 = v287;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v124 = v287;
    if (v123)
    {
      MEMORY[0x1865CD060](1);
      String.hash(into:)();
    }

    else
    {
      MEMORY[0x1865CD060](0);
    }
  }

  result = Hasher._finalize()();
  v138 = -1 << *(v120 + 32);
  v139 = result & ~v138;
  v140 = v139 >> 6;
  v141 = *(v121 + 8 * (v139 >> 6));
  v142 = 1 << v139;
  if (((1 << v139) & v141) == 0)
  {
    goto LABEL_50;
  }

  v143 = ~v138;
  while (1)
  {
    v144 = (*(v120 + 48) + 16 * v139);
    v145 = *v144;
    v146 = v144[1];
    if (v146 == 1)
    {
      if (v123 == 1)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v144, 1);
        v156 = v145;
        v157 = 1;
        goto LABEL_57;
      }

      goto LABEL_35;
    }

    if (v123 != 1)
    {
      break;
    }

LABEL_35:
    outlined copy of AttributedString.AttributeRunBoundaries?(*v144, v144[1]);
    outlined copy of AttributedString.AttributeRunBoundaries?(v122, v123);
    outlined consume of AttributedString.AttributeRunBoundaries?(v145, v146);
    v147 = v122;
    v148 = v123;
LABEL_36:
    result = outlined consume of AttributedString.AttributeRunBoundaries?(v147, v148);
LABEL_37:
    v139 = (v139 + 1) & v143;
    v140 = v139 >> 6;
    v141 = *(v121 + 8 * (v139 >> 6));
    v142 = 1 << v139;
    if ((v141 & (1 << v139)) == 0)
    {
      v124 = v287;
LABEL_50:
      *(v121 + 8 * v140) = v141 | v142;
      v151 = (*(v120 + 48) + 16 * v139);
      *v151 = v122;
      v151[1] = v123;
      v152 = *(v120 + 16);
      v153 = __OFADD__(v152, 1);
      v154 = v152 + 1;
      if (!v153)
      {
        *(v120 + 16) = v154;
        v155 = v278;
        goto LABEL_58;
      }

LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
      return result;
    }
  }

  if (!v146)
  {
    outlined copy of AttributedString.AttributeRunBoundaries?(*v144, 0);
    if (!v123)
    {
      swift_bridgeObjectRelease_n();
      v156 = v145;
      v157 = 0;
      goto LABEL_57;
    }

    outlined copy of AttributedString.AttributeRunBoundaries?(v122, v123);

    v147 = v145;
    v148 = 0;
    goto LABEL_36;
  }

  if (!v123)
  {
    outlined copy of AttributedString.AttributeRunBoundaries?(*v144, v144[1]);
    outlined copy of AttributedString.AttributeRunBoundaries?(v122, 0);
    outlined copy of AttributedString.AttributeRunBoundaries?(v145, v146);

    v147 = v145;
    v148 = v146;
    goto LABEL_36;
  }

  if (v145 == v122 && v146 == v123)
  {
    outlined copy of AttributedString.AttributeRunBoundaries?(v122, v123);
    outlined copy of AttributedString.AttributeRunBoundaries?(v122, v123);

    goto LABEL_55;
  }

  v150 = _stringCompareWithSmolCheck(_:_:expecting:)();
  outlined copy of AttributedString.AttributeRunBoundaries?(v145, v146);
  outlined copy of AttributedString.AttributeRunBoundaries?(v122, v123);
  outlined copy of AttributedString.AttributeRunBoundaries?(v145, v146);

  if ((v150 & 1) == 0)
  {
    result = outlined consume of AttributedString.AttributeRunBoundaries?(v145, v146);
    goto LABEL_37;
  }

  outlined consume of AttributedString.AttributeRunBoundaries?(v122, v123);
  v122 = v145;
  v123 = v146;
LABEL_55:
  v156 = v122;
  v157 = v123;
LABEL_57:
  outlined consume of AttributedString.AttributeRunBoundaries?(v156, v157);
  v155 = v278;
  v124 = v287;
LABEL_58:
  v162 = v267;
  outlined destroy of TermOfAddress?(&qword_1EEED4658, &_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd);
  outlined destroy of AttributedString.Runs(v273);
  outlined destroy of AttributedString.Runs(v272);
  v163 = v275;
  *&v275[*(v274 + 40)] = v120;
  outlined init with copy of FloatingPointRoundingRule?(v163, v162, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd);
  result = outlined init with copy of FloatingPointRoundingRule?(v162, v155, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd);
  v164 = *(v162 + 96);
  if (v164 == 2)
  {
    goto LABEL_100;
  }

  v165 = *(v162 + 88);
  v290 = *(v162 + 72);
  outlined destroy of TermOfAddress?(v163, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd);
  v166 = *(*v162 + 16);
  outlined destroy of TermOfAddress?(v162, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V016ReplacementIndexG0OGMd);
  v167 = v155 + *(v266 + 36);
  *v167 = v290;
  *(v167 + 16) = v165;
  *(v167 + 24) = v164;
  *(v167 + 32) = v166;
  specialized AttributedString.Runs.AttributesSlice1.Iterator.next()(&v312);
  v168 = v315;
  if (v315 == 2)
  {
    v169 = MEMORY[0x1E69E7CC0];
    goto LABEL_61;
  }

  v170 = v312;
  v171 = v313;
  v289 = *(&v313 + 1);
  v172 = *(&v314 + 1);
  v284 = v314;
  v174 = *(&v316 + 1);
  v173 = v316;
  v175 = v317;
  v176 = v318;
  v169 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    if ((v171 & 1) == 0)
    {
LABEL_67:
      v285 = v176;
      v286 = v175;
      v288 = v174;
      *&v290 = v173;
      v283 = v172;
      v280 = v170;
      v390 = *(v124 + 24);
      v391 = *(v124 + 40);
      v392 = *(v124 + 56);
      v177 = BigString.startIndex.getter();
      v179 = v178;
      v181 = v180;
      v183 = v182;
      v184 = BigString.endIndex.getter();
      v310[0] = v124;
      v310[1] = v177;
      v310[2] = v179;
      v310[3] = v181;
      v310[4] = v183;
      v310[5] = v184;
      v310[6] = v185;
      v310[7] = v186;
      v310[8] = v187;
      v310[9] = 0;
      swift_retain_n();
      outlined destroy of AttributedString.CharacterView(v310);
      v188 = *(v124 + 24);
      v189 = *(v124 + 40);
      v389 = *(v124 + 56);
      v388 = v189;
      v387 = v188;
      v190 = *(v124 + 24);
      v281 = *(v124 + 40);
      v282 = v190;
      v191 = *(v124 + 56);
      v192 = *(v124 + 64);
      result = BigString.startIndex.getter();
      if (v289 >> 10 < result >> 10)
      {
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      result = BigString.endIndex.getter();
      if (result >> 10 < v290 >> 10)
      {
        goto LABEL_96;
      }

      v415[0] = v387;
      v415[1] = v388;
      v416 = v389;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v415, v311);
      v124 = v287;

      v384 = v281;
      v383 = v282;
      v385 = v191;
      v386 = v192;
      v193 = BigString.UTF16View.distance(from:to:)();
      v194 = v289;
      v195 = v284;
      v196 = BigString.UTF16View.distance(from:to:)();
      v197 = BigString.UTF16View.distance(from:to:)();
      result = outlined destroy of BigString(&v387);
      if (__OFSUB__(v196, v193))
      {
        goto LABEL_97;
      }

      *&v281 = v196 - v193;
      *&v282 = v197;
      v380 = *(v124 + 24);
      v381 = *(v124 + 40);
      v382 = *(v124 + 56);
      v198 = BigString.startIndex.getter();
      v200 = v199;
      v202 = v201;
      v204 = v203;
      v205 = BigString.endIndex.getter();
      v311[0] = v124;
      v311[1] = v198;
      v311[2] = v200;
      v311[3] = v202;
      v311[4] = v204;
      v206 = v283;
      v311[5] = v205;
      v311[6] = v207;
      v311[7] = v208;
      v311[8] = v209;
      v311[9] = 0;
      swift_retain_n();
      outlined destroy of AttributedString.CharacterView(v311);
      v369 = v194;
      v370 = v195;
      v371 = v206;
      v372 = v168;
      v373 = v290;
      v374 = v288;
      v375 = v286;
      v376 = v285;
      v377 = *(v124 + 24);
      v378 = *(v124 + 40);
      v379 = *(v124 + 56);
      swift_unknownObjectRetain();

      BigString.UnicodeScalarView.subscript.getter();
      swift_unknownObjectRelease();

      outlined destroy of BigSubstring.UnicodeScalarView(&v329);
      v306 = v332;
      v307 = v333;
      v313 = v330;
      v314 = v331;
      v315 = v332;
      v316 = v333;
      v312 = v124;
      v317 = 0;
      v368[3] = v333;
      v368[2] = v332;
      v368[1] = v331;
      v368[0] = v330;
      _s10Foundation16AttributedStringV4GutsC15getUniformValue2in3keyAC010_AttributeG0VSgSny19CollectionsInternal03BigC0V5IndexVG_xmtAA0bC3KeyRzlFAA0J6ScopesO0A10AttributesV09Localizedc8ArgumentQ0V0r7NumericsJ0O_Tt1g5(v368, v304);
      if (v305)
      {
        outlined init with copy of Hashable & Sendable(v304, &v299);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
        result = swift_dynamicCast();
        v155 = v278;
        if ((result & 1) == 0)
        {
          goto LABEL_101;
        }

        v210 = v291;
        v211 = v292;
        v212 = BYTE12(v292);
        v213 = DWORD2(v292);
        outlined destroy of AttributedString._AttributeValue(v304);
        outlined destroy of AttributedSubstring(&v312);
        if (v212 <= 0xFEuLL)
        {
          v214 = v213 & 0xFFFFFF00FFFFFFFFLL | (v212 << 32);
          if (SHIDWORD(v214) > 1)
          {
            if (HIDWORD(v214) == 2)
            {
              v232 = *&v210;
            }

            else
            {
              NSDecimal.doubleValue.getter(v210, v211, v214);
              v232 = v233;
            }

            v215 = [objc_allocWithZone(NSNumber) initWithDouble_];
          }

          else if (HIDWORD(v214))
          {
            v215 = [objc_allocWithZone(NSNumber) initWithLongLong_];
          }

          else
          {
            v215 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong_];
          }

          v234 = v215;
          *&v301 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
          v299 = v234;
          v231 = 1;
          goto LABEL_84;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(v304, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedSubstring(&v312);
        v155 = v278;
      }

      v365 = *(v124 + 24);
      v366 = *(v124 + 40);
      v367 = *(v124 + 56);
      v216 = BigString.startIndex.getter();
      v218 = v217;
      v220 = v219;
      v221 = v206;
      v223 = v222;
      v224 = BigString.endIndex.getter();
      v304[0] = v124;
      v304[1] = v216;
      v304[2] = v218;
      v305 = v220;
      *&v306 = v223;
      *(&v306 + 1) = v224;
      *&v307 = v225;
      *(&v307 + 1) = v226;
      v308 = v227;
      v309 = 0;
      swift_retain_n();
      outlined destroy of AttributedString.CharacterView(v304);
      v354 = v289;
      v355 = v284;
      v356 = v221;
      v357 = v168;
      v358 = v290;
      v359 = v288;
      v360 = v286;
      v361 = v285;
      v362 = *(v124 + 24);
      v363 = *(v124 + 40);
      v364 = *(v124 + 56);
      swift_unknownObjectRetain();

      BigString.UnicodeScalarView.subscript.getter();
      swift_unknownObjectRelease();

      outlined destroy of BigSubstring.UnicodeScalarView(v334);
      *(v293 + 8) = v337;
      *(&v293[1] + 8) = v338;
      v300 = v335;
      v301 = v336;
      v302 = v337;
      v303 = v338;
      v352 = v338;
      v351 = v337;
      v350 = v336;
      v349 = v335;
      v228 = *(v124 + 24);
      v229 = *(v124 + 40);
      v353[2] = *(v124 + 56);
      v353[1] = v229;
      v353[0] = v228;

      outlined init with copy of BigString(v353, &v291);
      BigString.subscript.getter();

      outlined destroy of BigString(v353);
      outlined destroy of BigSubstring(&v339);
      v295 = v345;
      v296 = v346;
      v297 = v347;
      v298 = v348;
      v292 = v345;
      v293[0] = v346;
      v293[1] = v347;
      v293[2] = v348;
      v291 = v124;
      v294 = 0;
      lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView();
      String.init<A>(_:)();
      v230 = String._bridgeToObjectiveCImpl()();

      v231 = 0;
      *&v301 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSString);
      v299 = v230;
LABEL_84:
      outlined init with copy of FloatingPointRoundingRule?(&v299, v304, &_sypSgMd);
      v235 = v305;
      if (v305)
      {
        v236 = __swift_project_boxed_opaque_existential_1(v304, v305);
        v237 = *(v235 - 8);
        v238 = v237[8];
        v239 = MEMORY[0x1EEE9AC00](v236);
        v240 = (v238 + 15) & 0xFFFFFFFFFFFFFFF0;
        v241 = (&v249 - v240);
        v242 = v237[2];
        v242(&v249 - v240, v239);
        result = _swift_isClassOrObjCExistentialType();
        if (result)
        {
          if (v238 != 8)
          {
            goto LABEL_98;
          }

          v243 = *v241;
          v244 = v237[1];
          swift_unknownObjectRetain();
          v244(v241, v235);
        }

        else
        {
          *&v290 = &v249;
          v248 = MEMORY[0x1EEE9AC00](result);
          (v242)(&v249 - v240, v241, v235, v248);
          v243 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
          (v237[1])(v241, v235);
        }

        __swift_destroy_boxed_opaque_existential_1(v304);
        v155 = v278;
        v124 = v287;
      }

      else
      {
        v243 = 0;
      }

      v245 = v281;
      v246 = objc_allocWithZone(_NSAttributedStringReplacement);
      [v246 initWithIndex:v280 specifierRangeInFormatString:0x7FFFFFFFFFFFFFFFLL replacementRangeInResult:0x7FFFFFFFFFFFFFFFLL replacementKind:v245 argument:{v282, v231, v243}];
      v247 = swift_unknownObjectRelease();
      MEMORY[0x1865CB4D0](v247);
      if (*((v323 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v323 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v169 = v323;
      outlined destroy of TermOfAddress?(&v299, &_sypSgMd);
      specialized AttributedString.Runs.AttributesSlice1.Iterator.next()(&v312);
      v170 = v312;
      v289 = *(&v313 + 1);
      v172 = *(&v314 + 1);
      v284 = v314;
      v168 = v315;
      v174 = *(&v316 + 1);
      v173 = v316;
      v175 = v317;
      v176 = v318;
      v171 = v313;
      if (v315 == 2)
      {
        goto LABEL_61;
      }

      continue;
    }

    break;
  }

  while (1)
  {
    specialized AttributedString.Runs.AttributesSlice1.Iterator.next()(&v312);
    v168 = v315;
    if (v315 == 2)
    {
      break;
    }

    if ((v313 & 1) == 0)
    {
      v170 = v312;
      v289 = *(&v313 + 1);
      v172 = *(&v314 + 1);
      v284 = v314;
      v174 = *(&v316 + 1);
      v173 = v316;
      v175 = v317;
      v176 = v318;
      goto LABEL_67;
    }
  }

LABEL_61:
  outlined destroy of TermOfAddress?(v155, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V016ReplacementIndexH0O_GMd);
  return v169;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id closure #4 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, unint64_t, uint64_t, char *), uint64_t a5, uint64_t a6)
{
  v520 = a4;
  v521 = a5;
  v609 = *MEMORY[0x1E69E9840];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V021InflectionAlternativeG0OGMd);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v494 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVy10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AC15AttributeScopesO0cG0V021InflectionAlternativeI0OGGMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v494 - v14);
  v518 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V014InflectionRuleG0OGMd);
  MEMORY[0x1EEE9AC00](v518);
  v515 = &v494 - v16;
  v532 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  *&v524 = *(v532 - 8);
  MEMORY[0x1EEE9AC00](v532);
  v504 = &v494 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v505 = &v494 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v508 = &v494 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v512 = &v494 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v523 = &v494 - v25;
  *(&v534 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](*(&v534 + 1));
  v530 = &v494 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v531 = &v494 - v28;
  v529 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v29 = *(v529 - 8);
  MEMORY[0x1EEE9AC00](v529);
  v528 = &v494 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v509 = &v494 - v32;
  MEMORY[0x1EEE9AC00](v33);
  *&v526 = &v494 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v519 = &v494 - v36;
  v514 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v514);
  v507 = &v494 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v510 = (&v494 - v39);
  MEMORY[0x1EEE9AC00](v40);
  v506 = &v494 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v517 = &v494 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v522 = &v494 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v516 = &v494 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVy10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AC15AttributeScopesO0cG0V014InflectionRuleI0OGGMd);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v511 = (&v494 - v49);
  v525 = a6;
  v50 = *(a6 + 16);

  result = _sSn10FoundationAA16AttributedStringV5IndexVRszrlE_2inSnyAEGSgSo8_NSRangeV_qd__tcAA0bC8ProtocolRd__lufCAC_Tt2B5(a2, a3, v50, v568);
  v52 = *(&v568[1] + 1);
  if (*(&v568[1] + 1) == 2)
  {
    return result;
  }

  v513 = v29;
  v498 = v15;
  v499 = v12;
  v53 = *(&v568[0] + 1);
  v54 = *(&v568[2] + 1);
  v501 = *&v568[0];
  v502 = *&v568[1];
  v602 = v568[0];
  v603 = v568[1];
  v604 = v568[2];
  v533 = *&v568[3];
  v605 = v568[3];
  *&v527 = *(&v568[3] + 1);
  v503 = *&v568[4];
  v606 = v568[4];
  isTaggedPointer = _objc_isTaggedPointer(@"NSInflect");
  v56 = @"NSInflect";
  v57 = v56;
  *&v534 = v54;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v56);
  switch(TaggedPointerTag)
  {
    case 0:
      LOWORD(v547) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v68 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v69)
      {
        [(__CFString *)v57 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v59 = 0;
        v62 = *(&v552 + 1);
        v60 = v552;
        goto LABEL_36;
      }

      v62 = v69;
      v60 = v68;
LABEL_20:

      v59 = 0;
      goto LABEL_36;
    case 0x16:
      result = [(__CFString *)v57 UTF8String];
      if (!result)
      {
        __break(1u);
LABEL_313:
        __break(1u);
        goto LABEL_314;
      }

      result = String.init(utf8String:)(result);
      if (!v67)
      {
LABEL_314:
        __break(1u);
        goto LABEL_315;
      }

      v60 = result;
      v62 = v67;
      goto LABEL_20;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      *(&v494 - 2) = v57;
      v59 = 0;
      v60 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v62 = v61;

      goto LABEL_36;
  }

LABEL_7:
  LOBYTE(v552) = 0;
  *&v568[0] = 0;
  LOBYTE(v547) = 0;
  v566[0] = 0;
  IsCF = __CFStringIsCF();
  if (!IsCF)
  {
    v64 = v57;
    v65 = String.init(_nativeStorage:)();
    if (v66)
    {
      v62 = v66;
      v60 = v65;

      v59 = 0;
      goto LABEL_36;
    }

    *&v568[0] = [(__CFString *)v64 length];
    if (!*&v568[0])
    {

      v60 = 0;
      v59 = 0;
      v62 = 0xE000000000000000;
      goto LABEL_36;
    }

    goto LABEL_25;
  }

  v59 = *&v568[0];
  if (!*&v568[0])
  {

    v60 = 0;
    v62 = 0xE000000000000000;
    goto LABEL_36;
  }

  if (v566[0] != 1)
  {
    if (v547)
    {
      if (v552 == 1)
      {
        MEMORY[0x1EEE9AC00](IsCF);
        *(&v494 - 4) = v57;
        *(&v494 - 3) = v568;
        *(&v494 - 4) = 1536;
        *(&v494 - 1) = v59;
      }

      else
      {
        v72 = [(__CFString *)v57 lengthOfBytesUsingEncoding:4];
        MEMORY[0x1EEE9AC00](v72);
        *(&v494 - 4) = v57;
        *(&v494 - 3) = v568;
        *(&v494 - 4) = 134217984;
        *(&v494 - 1) = v73;
      }

      v59 = 0;
      v74 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v62 = v75;
      v76 = HIBYTE(v75) & 0xF;
      if ((v75 & 0x2000000000000000) == 0)
      {
        v76 = v74 & 0xFFFFFFFFFFFFLL;
      }

      if (v76)
      {
        v60 = v74;

        goto LABEL_36;
      }

LABEL_26:
      v60 = String.init(_cocoaString:)();
      v62 = v70;
      goto LABEL_36;
    }

LABEL_25:
    v59 = 0;
    goto LABEL_26;
  }

  if (v552)
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  v60 = String.init<A>(_immortalCocoaString:count:encoding:)();
  v62 = v71;
  v59 = 0;
LABEL_36:
  v77 = _objc_isTaggedPointer(a1);
  v78 = a1;
  v79 = v78;
  v500 = v10;
  LODWORD(v497) = v77;
  if (!v77)
  {
    goto LABEL_41;
  }

  v80 = _objc_getTaggedPointerTag(v78);
  if (v80)
  {
    if (v80 != 22)
    {
      if (v80 == 2)
      {
        MEMORY[0x1EEE9AC00](v80);
        *(&v494 - 2) = v79;
        v81 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v82 = v79;
        v84 = v83;
        v85 = v82;

        goto LABEL_72;
      }

LABEL_41:
      LOBYTE(v552) = 0;
      *&v568[0] = 0;
      LOBYTE(v547) = 0;
      v566[0] = 0;
      v86 = __CFStringIsCF();
      if (v86)
      {
        v81 = *&v568[0];
        if (!*&v568[0])
        {
          v85 = v79;

          v84 = 0xE000000000000000;
          goto LABEL_72;
        }

        if (v566[0] == 1)
        {
          if (v552)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v85 = v79;
          v94 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_71;
        }

        if (v547)
        {
          if (v552 == 1)
          {
            MEMORY[0x1EEE9AC00](v86);
            *(&v494 - 4) = v79;
            *(&v494 - 3) = v568;
            *(&v494 - 4) = 1536;
            *(&v494 - 1) = v81;
          }

          else
          {
            v96 = [v79 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v96);
            *(&v494 - 4) = v79;
            *(&v494 - 3) = v568;
            *(&v494 - 4) = 134217984;
            *(&v494 - 1) = v97;
          }

          v98 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v99 = v79;
          v84 = v100;
          v101 = HIBYTE(v100) & 0xF;
          if ((v100 & 0x2000000000000000) == 0)
          {
            v101 = v98 & 0xFFFFFFFFFFFFLL;
          }

          if (v101)
          {
            v81 = v98;
            v85 = v99;

            goto LABEL_72;
          }

          v102 = v99;

          v79 = v102;
        }
      }

      else
      {
        v85 = v79;
        v87 = v79;
        v88 = String.init(_nativeStorage:)();
        if (v89)
        {
          v81 = v88;
          v84 = v89;

          goto LABEL_72;
        }

        *&v568[0] = [v87 length];
        if (!*&v568[0])
        {

          v81 = 0;
          v84 = 0xE000000000000000;
          goto LABEL_72;
        }
      }

      v85 = v79;
      v94 = String.init(_cocoaString:)();
LABEL_71:
      v81 = v94;
      v84 = v95;
      goto LABEL_72;
    }

    v85 = v79;
    result = [v79 UTF8String];
    if (result)
    {
      result = String.init(utf8String:)(result);
      if (v90)
      {
        v81 = result;
        v84 = v90;

        goto LABEL_72;
      }

LABEL_315:
      __break(1u);
      goto LABEL_316;
    }

    goto LABEL_313;
  }

  LOWORD(v547) = 0;
  _CFIndirectTaggedPointerStringGetContents();
  v91 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  v93 = v79;
  if (v92)
  {
    v81 = v91;
    v84 = v92;
    v85 = v93;
  }

  else
  {
    [v79 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    v85 = v79;

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v84 = *(&v552 + 1);
    v81 = v552;
  }

LABEL_72:
  if (v60 == v81 && v62 == v84)
  {

    goto LABEL_76;
  }

  v103 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v103 & 1) == 0)
  {
    v165 = _objc_isTaggedPointer(@"NSInflectionAlternative");
    v166 = @"NSInflectionAlternative";
    v167 = v166;
    v168 = v510;
    if (!v165)
    {
      goto LABEL_109;
    }

    v169 = _objc_getTaggedPointerTag(v166);
    if (!v169)
    {
      goto LABEL_146;
    }

    if (v169 != 22)
    {
      if (v169 == 2)
      {
        MEMORY[0x1EEE9AC00](v169);
        *(&v494 - 2) = v167;
        v170 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v172 = v171;

        goto LABEL_189;
      }

LABEL_109:
      LOBYTE(v552) = 0;
      *&v568[0] = 0;
      LOBYTE(v547) = 0;
      v566[0] = 0;
      v239 = __CFStringIsCF();
      if (v239)
      {
        v240 = *&v568[0];
        if (*&v568[0])
        {
          if (v566[0] == 1)
          {
            if (v552)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v302 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_188;
          }

          if ((v547 & 1) == 0)
          {
            goto LABEL_187;
          }

          if (v552 == 1)
          {
            MEMORY[0x1EEE9AC00](v239);
            *(&v494 - 4) = v167;
            *(&v494 - 3) = v568;
            *(&v494 - 4) = 1536;
            *(&v494 - 1) = v240;
          }

          else
          {
            v304 = [(__CFString *)v167 lengthOfBytesUsingEncoding:4];
            MEMORY[0x1EEE9AC00](v304);
            *(&v494 - 4) = v167;
            *(&v494 - 3) = v568;
            *(&v494 - 4) = 134217984;
            *(&v494 - 1) = v305;
          }

          v269 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v172 = v270;
          v306 = HIBYTE(v270) & 0xF;
          if ((v270 & 0x2000000000000000) == 0)
          {
            v306 = v269 & 0xFFFFFFFFFFFFLL;
          }

          if (!v306)
          {
            goto LABEL_186;
          }

          v170 = v269;
          goto LABEL_148;
        }
      }

      else
      {
        v264 = v167;
        v265 = String.init(_nativeStorage:)();
        if (v266)
        {
          v170 = v265;
          v172 = v266;

          goto LABEL_189;
        }

        *&v568[0] = [(__CFString *)v264 length];
        if (*&v568[0])
        {
          goto LABEL_187;
        }
      }

      v170 = 0;
      v172 = 0xE000000000000000;
      goto LABEL_189;
    }

    result = [(__CFString *)v167 UTF8String];
    if (result)
    {
      v267 = String.init(utf8String:)(result);
      if (v268)
      {
LABEL_147:
        v170 = v267;
        v172 = v268;
LABEL_148:

        goto LABEL_189;
      }

      __break(1u);
LABEL_146:
      LOWORD(v547) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v267 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v268)
      {
        [(__CFString *)v167 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v172 = *(&v552 + 1);
        v170 = v552;
        goto LABEL_189;
      }

      goto LABEL_147;
    }

LABEL_316:
    __break(1u);
    goto LABEL_317;
  }

LABEL_76:
  v497 = 0;
  v530 = v52;
  v104 = *(v525 + 16);
  v105 = *(v104 + 40);
  v599 = *(v104 + 24);
  v600 = v105;
  v601 = *(v104 + 56);
  v106 = BigString.startIndex.getter();
  v108 = v107;
  v110 = v109;
  v112 = v111;
  v113 = BigString.endIndex.getter();
  *&v559 = v104;
  *(&v559 + 1) = v106;
  *&v560 = v108;
  *(&v560 + 1) = v110;
  *&v561 = v112;
  *(&v561 + 1) = v113;
  v562 = v114;
  v563 = v115;
  v564 = v116;
  v565 = 0;
  swift_retain_n();
  outlined destroy of AttributedString.CharacterView(&v559);
  *&v585 = v501;
  *(&v585 + 1) = v53;
  *&v586 = v502;
  *(&v586 + 1) = v530;
  *&v587 = v534;
  *(&v587 + 1) = v533;
  v588 = v527;
  v589 = v503;
  v117 = *(v104 + 40);
  v596 = *(v104 + 24);
  v597 = v117;
  v598 = *(v104 + 56);
  swift_unknownObjectRetain();

  BigString.UnicodeScalarView.subscript.getter();
  swift_unknownObjectRelease();

  outlined destroy of BigSubstring.UnicodeScalarView(v568);
  *&v566[8] = v568[3];
  *&v566[24] = v568[4];
  *&v566[40] = v569;
  *&v566[56] = v570;
  *v566 = v104;
  v567 = 0;
  v547 = v568[3];
  v548 = v568[4];
  v549 = v569;
  v550 = v570;
  outlined init with copy of AttributedSubstring(v566, &v552);
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();
  RangeSet.init(_:)();
  v530 = v104;
  *v522 = v104;
  RangeSet.init()();
  v118 = v523;
  RangeSet.ranges.getter();
  v119 = v524;
  v121 = v531;
  v120 = v532;
  (*(v524 + 16))(v531, v118, v532);
  v122 = *(*(&v534 + 1) + 36);
  v123 = lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of Collection.startIndex.getter();
  v124 = *(v119 + 8);
  *&v524 = v119 + 8;
  v124(v118, v120);
  dispatch thunk of Collection.endIndex.getter();
  v125 = *(v121 + v122);
  v510 = v124;
  if (v125 != v552)
  {
    v528 = v123;
    *&v527 = v122;
    do
    {
      v136 = dispatch thunk of Collection.subscript.read();
      v138 = v137[4];
      *&v534 = v137[5];
      *(&v534 + 1) = v138;
      v533 = v137[7];
      v136(&v552, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v139 = v530;
      v140 = *(v530 + 40);
      v593 = *(v530 + 24);
      v594 = v140;
      v595 = *(v530 + 56);
      swift_unknownObjectRetain();
      v141 = BigString.UnicodeScalarView.index(roundingDown:)();
      v143 = v142;
      v145 = v144;
      v147 = v146;
      swift_unknownObjectRelease();
      v148 = *(v139 + 40);
      v590 = *(v139 + 24);
      v591 = v148;
      v592 = *(v139 + 56);
      swift_unknownObjectRetain();
      v149 = BigString.UnicodeScalarView.index(roundingDown:)();
      v151 = v150;
      v153 = v152;
      v155 = v154;
      v120 = v532;
      swift_unknownObjectRelease();
      *&v552 = v141;
      *(&v552 + 1) = v143;
      *&v553 = v145;
      *(&v553 + 1) = v147;
      *&v554 = v149;
      *(&v554 + 1) = v151;
      *&v555 = v153;
      *(&v555 + 1) = v155;
      if ((v149 ^ v141) >= 0x400)
      {
        v156 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v156(&v547, 0);
      }

      v121 = v531;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v121 + v527) != v552);
  }

  outlined destroy of TermOfAddress?(v121, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v126 = v514;
  v127 = v522;
  (*(v513 + 16))(&v522[*(v514 + 24)], v526, v529);
  v128 = v523;
  RangeSet.ranges.getter();
  v129 = RangeSet.Ranges.count.getter();
  v130 = v510;
  v510(v128, v120);
  v131 = *(v126 + 28);
  v132 = v127;
  LODWORD(v514) = v129 > 1;
  v127[v131] = v514;
  v133 = v512;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v547 == v552)
  {
    v134 = v133;
    v135 = v120;
  }

  else
  {
    v157 = dispatch thunk of Collection.subscript.read();
    v159 = v158[1];
    v509 = *v158;
    v160 = v158[3];
    v506 = v158[2];
    v507 = v159;
    v505 = v160;
    v157(&v552, 0);
    v130(v133, v120);
    v161 = v508;
    RangeSet.ranges.getter();
    if ((dispatch thunk of Collection.isEmpty.getter() & 1) == 0)
    {
      dispatch thunk of Collection.endIndex.getter();
      lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
      dispatch thunk of BidirectionalCollection.index(before:)();
      v220 = dispatch thunk of Collection.subscript.read();
      v222 = v221[4];
      v223 = v221[5];
      v224 = v221[7];
      v512 = v221[6];
      v504 = v224;
      v220(&v552, 0);
      v130(v161, v120);
      v225 = v530;
      AttributedString.Guts.findRun(at:)(v509, v505, &v552);
      v534 = v552;
      v501 = *(&v553 + 1);
      v502 = v553;
      v508 = *(&v554 + 1);
      v533 = *(&v555 + 1);
      v503 = v555;
      v531 = v556;
      v226 = *(v225 + 40);
      v582 = *(v225 + 24);
      v583 = v226;
      v584 = *(v225 + 56);
      v227 = BigString.endIndex.getter();
      v500 = v223;
      if ((v227 ^ v222) > 0x3FF)
      {
        v498 = v222;
        AttributedString.Guts.findRun(at:)(v222, v504, &v552);
        *&v527 = *(&v552 + 1);
        v528 = v552;
        v499 = *(&v553 + 1);
        v194 = v553;
        v183 = *(&v554 + 1);
        v185 = v555;
        v260 = v513;
        v187 = *(&v555 + 1);
        v189 = v556;
        v261 = v523;
        RangeSet.ranges.getter();
        v207 = RangeSet.Ranges.count.getter();
        v262 = *(v260 + 8);
        v262(v519, v529);
        v263 = v261;
        v132 = v522;
        v510(v263, v532);
        v262(v526, v529);
        v193 = v499;
        v203 = v498;
        v195 = 0;
        v192 = v514;
        v208 = *(&v534 + 1);
        v198 = v534;
        v174 = v508;
        v196 = v509;
        v200 = v506;
        v197 = v507;
        v206 = v504;
        v202 = v505;
        v191 = v502;
        v176 = v503;
        v199 = v533;
        v201 = v531;
        v204 = v500;
        v190 = v501;
        v205 = v512;
      }

      else
      {
        v183 = v222;
        v228 = v225;
        v229 = *(v225 + 9);
        v230 = *(v225 + 10);
        if (v229)
        {
          v231 = v230;
        }

        else
        {
          v231 = 0;
        }

        v499 = v231;
        v232 = *(v228 + 12);
        v233 = swift_unknownObjectRetain();
        v528 = v232;
        *&v527 = specialized Rope._endPath.getter(v233);
        if (v229)
        {
          swift_unknownObjectRelease();
        }

        v234 = v523;
        v235 = v529;
        RangeSet.ranges.getter();
        v236 = v532;
        v207 = RangeSet.Ranges.count.getter();
        v237 = *(v513 + 8);
        v237(v519, v235);
        v238 = v234;
        v132 = v522;
        v130(v238, v236);
        v237(v526, v235);
        v195 = 0;
        v194 = 0;
        v203 = v183;
        v204 = v500;
        v190 = v501;
        v185 = v500;
        v205 = v512;
        v187 = v512;
        v206 = v504;
        v202 = v505;
        v189 = v504;
        v192 = v514;
        v208 = *(&v534 + 1);
        v198 = v534;
        v174 = v508;
        v196 = v509;
        v200 = v506;
        v197 = v507;
        v191 = v502;
        v176 = v503;
        v199 = v533;
        v201 = v531;
        v193 = v499;
      }

      goto LABEL_97;
    }

    v134 = v161;
    v135 = v120;
  }

  v130(v134, v135);
  v163 = v529;
  v162 = v530;
  v164 = *(v530 + 9);
  if (v164)
  {
    *(&v534 + 1) = *(v164 + 18);
  }

  else
  {
    *(&v534 + 1) = 0;
  }

  *&v534 = *(v530 + 12);
  v173 = *(v530 + 40);
  v582 = *(v530 + 24);
  v583 = v173;
  v584 = *(v530 + 56);
  v174 = BigString.startIndex.getter();
  v176 = v175;
  v533 = v177;
  v531 = v178;
  v179 = *(v162 + 9);
  v528 = *(v162 + 12);
  if (v179)
  {
    *&v527 = *(v179 + 18);
    v180 = *(v513 + 8);
    swift_unknownObjectRetain();
    v180(v519, v163);
    v180(v526, v163);
    v162 = v530;
    swift_unknownObjectRelease();
  }

  else
  {
    v181 = *(v513 + 8);
    v181(v519, v163);
    v181(v526, v163);
    *&v527 = 0;
  }

  v182 = *(v162 + 40);
  v579 = *(v162 + 24);
  v580 = v182;
  v581 = *(v162 + 56);
  v183 = BigString.startIndex.getter();
  v185 = v184;
  v187 = v186;
  v189 = v188;
  v190 = 0;
  v191 = 0;
  v192 = 0;
  v193 = 0;
  v194 = 0;
  v195 = -1;
  v196 = v174;
  v197 = v176;
  v199 = v533;
  v198 = v534;
  v200 = v533;
  v201 = v531;
  v202 = v531;
  v203 = v183;
  v204 = v184;
  v205 = v187;
  v206 = v189;
  v207 = -1;
  v208 = *(&v534 + 1);
LABEL_97:
  *(v132 + 8) = v190;
  *(v132 + 16) = v198;
  *(v132 + 24) = v208;
  *(v132 + 32) = v191;
  *(v132 + 40) = v174;
  *(v132 + 48) = v176;
  *(v132 + 56) = v199;
  *(v132 + 64) = v201;
  *(v132 + 72) = v196;
  *(v132 + 80) = v197;
  *(v132 + 88) = v200;
  *(v132 + 96) = v202;
  *(v132 + 104) = v195;
  *(v132 + 112) = 0;
  *(v132 + 113) = v192;
  v209 = v528;
  *(v132 + 120) = v193;
  *(v132 + 128) = v209;
  *(v132 + 136) = v527;
  *(v132 + 144) = v194;
  *(v132 + 152) = v183;
  *(v132 + 160) = v185;
  *(v132 + 168) = v187;
  *(v132 + 176) = v189;
  *(v132 + 184) = v203;
  *(v132 + 192) = v204;
  *(v132 + 200) = v205;
  *(v132 + 208) = v206;
  *(v132 + 216) = v207;
  *(v132 + 224) = 0;
  *(v132 + 225) = v192;
  v210 = v516;
  outlined init with take of AttributedString.Runs(v132, v516);
  outlined destroy of AttributedSubstring(v566);
  v211 = v210;
  v212 = v517;
  outlined init with copy of AttributedString.Runs(v211, v517);
  v213 = v515;
  outlined init with copy of AttributedString.Runs(v212, v515);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v214 = swift_allocObject();
  *(v214 + 16) = xmmword_181218E20;
  if (one-time initialization token for name != -1)
  {
    goto LABEL_308;
  }

  while (2)
  {
    v215 = unk_1EA7B2660;
    *(v214 + 32) = static AttributeScopes.FoundationAttributes.InflectionRuleAttribute.name;
    *(v214 + 40) = v215;
    *(v213 + *(v518 + 36)) = v214;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd);
    v216 = static _SetStorage.allocate(capacity:)();
    v217 = v216 + 56;

    v218 = qword_1EEED4688;
    v219 = unk_1EEED4690;
    Hasher.init(_seed:)();
    if (v219 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      if (v219)
      {
        MEMORY[0x1865CD060](1);
        String.hash(into:)();
      }

      else
      {
        MEMORY[0x1865CD060](0);
      }
    }

    v241 = Hasher._finalize()();
    v242 = -1 << *(v216 + 32);
    v85 = v241 & ~v242;
    v243 = v85 >> 6;
    v244 = *(v217 + 8 * (v85 >> 6));
    v245 = 1 << v85;
    if (((1 << v85) & v244) == 0)
    {
      goto LABEL_136;
    }

    v246 = ~v242;
    while (1)
    {
      v247 = (*(v216 + 48) + 16 * v85);
      v248 = *v247;
      v249 = v247[1];
      if (v249 == 1)
      {
        if (v219 == 1)
        {
          outlined copy of AttributedString.AttributeRunBoundaries?(*v247, 1);
          v258 = v248;
          v259 = 1;
          goto LABEL_156;
        }

        goto LABEL_121;
      }

      if (v219 != 1)
      {
        break;
      }

LABEL_121:
      outlined copy of AttributedString.AttributeRunBoundaries?(*v247, v247[1]);
      outlined copy of AttributedString.AttributeRunBoundaries?(v218, v219);
      outlined consume of AttributedString.AttributeRunBoundaries?(v248, v249);
      v250 = v218;
      v251 = v219;
LABEL_122:
      v241 = outlined consume of AttributedString.AttributeRunBoundaries?(v250, v251);
LABEL_123:
      v85 = (v85 + 1) & v246;
      v243 = v85 >> 6;
      v244 = *(v217 + 8 * (v85 >> 6));
      v245 = 1 << v85;
      if ((v244 & (1 << v85)) == 0)
      {
        v213 = v515;
LABEL_136:
        *(v217 + 8 * v243) = v244 | v245;
        v254 = (*(v216 + 48) + 16 * v85);
        *v254 = v218;
        v254[1] = v219;
        v255 = *(v216 + 16);
        v256 = __OFADD__(v255, 1);
        v257 = v255 + 1;
        if (!v256)
        {
          *(v216 + 16) = v257;
          goto LABEL_157;
        }

        __break(1u);
LABEL_310:
        v493 = v241;
        swift_once();
        v241 = v493;
        goto LABEL_243;
      }
    }

    if (!v249)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(*v247, 0);
      if (!v219)
      {
        swift_bridgeObjectRelease_n();
        v258 = v248;
        v259 = 0;
        goto LABEL_156;
      }

      outlined copy of AttributedString.AttributeRunBoundaries?(v218, v219);

      v250 = v248;
      v251 = 0;
      goto LABEL_122;
    }

    if (!v219)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(*v247, v247[1]);
      outlined copy of AttributedString.AttributeRunBoundaries?(v218, 0);
      outlined copy of AttributedString.AttributeRunBoundaries?(v248, v249);

      v250 = v248;
      v251 = v249;
      goto LABEL_122;
    }

    if (v248 == v218 && v249 == v219)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(v218, v219);
      outlined copy of AttributedString.AttributeRunBoundaries?(v218, v219);

      goto LABEL_154;
    }

    v253 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of AttributedString.AttributeRunBoundaries?(v248, v249);
    outlined copy of AttributedString.AttributeRunBoundaries?(v218, v219);
    outlined copy of AttributedString.AttributeRunBoundaries?(v248, v249);

    if ((v253 & 1) == 0)
    {
      v241 = outlined consume of AttributedString.AttributeRunBoundaries?(v248, v249);
      goto LABEL_123;
    }

    outlined consume of AttributedString.AttributeRunBoundaries?(v218, v219);
    v218 = v248;
    v219 = v249;
LABEL_154:
    v258 = v218;
    v259 = v219;
LABEL_156:
    outlined consume of AttributedString.AttributeRunBoundaries?(v258, v259);
    v213 = v515;
LABEL_157:
    v271 = v511;
    outlined destroy of TermOfAddress?(&qword_1EEED4688, &_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd);
    outlined destroy of AttributedString.Runs(v517);
    outlined destroy of AttributedString.Runs(v516);
    *(v213 + *(v518 + 40)) = v216;
    outlined init with take of IntegerFormatStyle<Int>.Percent(v213, v271, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V014InflectionRuleG0OGMd);
    specialized _copyCollectionToContiguousArray<A>(_:)(v271);
    v273 = v272;
    outlined destroy of TermOfAddress?(v271, &_ss18ReversedCollectionVy10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AC15AttributeScopesO0cG0V014InflectionRuleI0OGGMd);
    v274 = *(v273 + 16);
    if (!v274)
    {
      goto LABEL_172;
    }

    v275 = 0;
    v276 = 0;
    v277 = v274 - 1;
    v168 = 32;
    v59 = &v540;
    v518 = v274 - 1;
    v519 = v273;
LABEL_160:
    v279 = *(v273 + v168 + 16);
    v278 = *(v273 + v168 + 32);
    v552 = *(v273 + v168);
    v553 = v279;
    v554 = v278;
    v280 = *(v273 + v168 + 48);
    v281 = *(v273 + v168 + 64);
    v282 = *(v273 + v168 + 80);
    v558 = *(v273 + v168 + 96);
    v556 = v281;
    v557 = v282;
    v555 = v280;
    if (v275)
    {
      if (v277 == v276)
      {
        goto LABEL_172;
      }

      v275 = 1;
      goto LABEL_159;
    }

    if (*(&v552 + 1) == 1)
    {
      if (v277 == v276)
      {
        outlined init with copy of FloatingPointRoundingRule?(&v552, &v547, &_s10Foundation14InflectionRuleOSg_SnyAA16AttributedStringV5IndexVGtMd);
        goto LABEL_172;
      }

      outlined init with copy of FloatingPointRoundingRule?(&v552, &v547, &_s10Foundation14InflectionRuleOSg_SnyAA16AttributedStringV5IndexVGtMd);
      v275 = 0;
      goto LABEL_159;
    }

    v535[0] = 0;
    v539 = &type metadata for InflectionRule;
    v536 = v552;
    v538 = BYTE4(v553);
    v537 = v553;
    v283 = *(v525 + 16);
    v284 = *(v283 + 40);
    v578[0] = *(v283 + 24);
    v578[1] = v284;
    v578[2] = *(v283 + 56);
    v285 = BigString.startIndex.getter();
    v287 = v286;
    v289 = v288;
    v213 = v290;
    v291 = BigString.endIndex.getter();
    *&v540 = v283;
    *(&v540 + 1) = v285;
    *&v541 = v287;
    *(&v541 + 1) = v289;
    *&v542 = v213;
    *(&v542 + 1) = v291;
    v543 = v292;
    v544 = v293;
    v545 = v294;
    v546 = 0;
    outlined init with copy of FloatingPointRoundingRule?(&v552, &v547, &_s10Foundation14InflectionRuleOSg_SnyAA16AttributedStringV5IndexVGtMd);
    outlined init with copy of FloatingPointRoundingRule?(&v552, &v547, &_s10Foundation14InflectionRuleOSg_SnyAA16AttributedStringV5IndexVGtMd);

    outlined init with copy of FloatingPointRoundingRule?(&v552, &v547, &_s10Foundation14InflectionRuleOSg_SnyAA16AttributedStringV5IndexVGtMd);

    outlined destroy of AttributedString.CharacterView(&v540);
    v295 = *(&v553 + 1);
    v532 = *(&v554 + 1);
    v533 = v554;
    v531 = v555;
    *(&v534 + 1) = v556;
    v528 = v557;
    v529 = *(&v556 + 1);
    *&v527 = *(&v557 + 1);
    v296 = *(v283 + 24);
    v297 = *(v283 + 56);
    v576 = *(v283 + 40);
    v577 = v297;
    v575 = v296;
    v524 = *(v283 + 40);
    v526 = *(v283 + 24);
    v298 = *(v283 + 56);
    v522 = *(v283 + 64);
    v523 = v298;
    v214 = BigString.startIndex.getter();
    *&v534 = v295;
    if (v295 >> 10 < v214 >> 10)
    {
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      v492 = v214;
      swift_once();
      v214 = v492;
      continue;
    }

    break;
  }

  v213 = v299;
  v214 = BigString.endIndex.getter();
  if (v214 >> 10 < *(&v534 + 1) >> 10)
  {
    goto LABEL_302;
  }

  v607[0] = v575;
  v607[1] = v576;
  v608 = v577;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v607, &v547);

  v571 = v526;
  v572 = v524;
  v573 = v523;
  v574 = v522;
  v85 = BigString.UTF16View.distance(from:to:)();
  v213 = v532;
  v300 = BigString.UTF16View.distance(from:to:)();
  v301 = BigString.UTF16View.distance(from:to:)();
  v214 = outlined destroy of BigString(&v575);
  if (__OFSUB__(v300, v85))
  {
    goto LABEL_303;
  }

  v520(&v536, v300 - v85, v301, v535);
  outlined destroy of TermOfAddress?(&v536, &_sypSgMd);
  v275 = v535[0];
  outlined destroy of TermOfAddress?(&v552, &_s10Foundation14InflectionRuleOSg_SnyAA16AttributedStringV5IndexVGtMd);
  outlined destroy of TermOfAddress?(&v552, &_s10Foundation14InflectionRuleOSg_SnyAA16AttributedStringV5IndexVGtMd);
  v277 = v518;
  if (v518 == v276)
  {
    goto LABEL_172;
  }

  v59 = &v540;
  v273 = v519;
LABEL_159:
  ++v276;
  v168 += 104;
  if (v276 < *(v273 + 16))
  {
    goto LABEL_160;
  }

  __break(1u);
LABEL_186:

LABEL_187:
  v302 = String.init(_cocoaString:)();
LABEL_188:
  v170 = v302;
  v172 = v303;
LABEL_189:
  v307 = v85;
  v308 = v307;
  if (!v497)
  {
LABEL_194:
    LOBYTE(v552) = 0;
    *&v568[0] = 0;
    LOBYTE(v547) = 0;
    v566[0] = 0;
    v313 = __CFStringIsCF();
    if (v313)
    {
      v314 = *&v568[0];
      if (*&v568[0])
      {
        if (v566[0] == 1)
        {
          if (v552)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v320 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_223;
        }

        if (v547)
        {
          if (v552 == 1)
          {
            MEMORY[0x1EEE9AC00](v313);
            *(&v494 - 4) = v308;
            *(&v494 - 3) = v568;
            *(&v494 - 4) = 1536;
            *(&v494 - 1) = v314;
          }

          else
          {
            v322 = [v308 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v322);
            *(&v494 - 4) = v308;
            *(&v494 - 3) = v568;
            *(&v494 - 4) = 134217984;
            *(&v494 - 1) = v323;
          }

          v324 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v312 = v325;
          v326 = HIBYTE(v325) & 0xF;
          if ((v325 & 0x2000000000000000) == 0)
          {
            v326 = v324 & 0xFFFFFFFFFFFFLL;
          }

          if (v326)
          {
            v310 = v324;

            goto LABEL_224;
          }
        }

LABEL_222:
        v320 = String.init(_cocoaString:)();
LABEL_223:
        v310 = v320;
        v312 = v321;
        goto LABEL_224;
      }
    }

    else
    {
      v315 = v308;
      v316 = String.init(_nativeStorage:)();
      if (v317)
      {
        v310 = v316;
        v312 = v317;

        goto LABEL_224;
      }

      *&v568[0] = [v315 length];
      if (*&v568[0])
      {
        goto LABEL_222;
      }
    }

    v310 = 0;
    v312 = 0xE000000000000000;
    goto LABEL_224;
  }

  v309 = _objc_getTaggedPointerTag(v307);
  if (!v309)
  {
    goto LABEL_206;
  }

  if (v309 == 22)
  {
    result = [v308 UTF8String];
    if (result)
    {
      v318 = String.init(utf8String:)(result);
      if (v319)
      {
LABEL_207:
        v310 = v318;
        v312 = v319;

        goto LABEL_224;
      }

      __break(1u);
LABEL_206:
      LOWORD(v547) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v318 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v319)
      {
        [v308 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v312 = *(&v552 + 1);
        v310 = v552;
        goto LABEL_224;
      }

      goto LABEL_207;
    }

LABEL_317:
    __break(1u);
    return result;
  }

  if (v309 != 2)
  {
    goto LABEL_194;
  }

  MEMORY[0x1EEE9AC00](v309);
  *(&v494 - 2) = v308;
  v310 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v312 = v311;

LABEL_224:
  if (v170 == v310 && v172 == v312)
  {
  }

  else
  {
    v327 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v327 & 1) == 0)
    {
      return result;
    }
  }

  v497 = v59;
  v328 = *(v525 + 16);

  v518 = v328;
  specialized AttributedString.subscript.getter(v328, v568);
  v547 = v568[0];
  v548 = v568[1];
  v549 = v568[2];
  v550 = v568[3];
  v551 = v568[4];
  v329 = *&v568[0];
  *v566 = *(v568 + 8);
  *&v566[16] = *(&v568[1] + 8);
  *&v566[32] = *(&v568[2] + 8);
  *&v566[48] = *(&v568[3] + 8);
  outlined init with copy of AttributedSubstring(&v547, &v552);
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();
  RangeSet.init(_:)();
  v531 = v329;
  *v168 = v329;
  RangeSet.init()();
  v330 = v523;
  RangeSet.ranges.getter();
  v331 = v524;
  v332 = v530;
  v333 = v532;
  (*(v524 + 16))(v530, v330, v532);
  v334 = *(*(&v534 + 1) + 36);
  v335 = lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of Collection.startIndex.getter();
  v336 = *(v331 + 8);
  *&v524 = v331 + 8;
  v336(v330, v333);
  dispatch thunk of Collection.endIndex.getter();
  v337 = *(v332 + v334);
  v522 = v336;
  if (v337 != v552)
  {
    *&v527 = v335;
    *&v526 = v334;
    do
    {
      v351 = dispatch thunk of Collection.subscript.read();
      v353 = v352[4];
      *&v534 = v352[5];
      *(&v534 + 1) = v353;
      v533 = v352[6];
      v351(&v552, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v354 = v531;
      v355 = *(v531 + 40);
      v559 = *(v531 + 24);
      v560 = v355;
      v561 = *(v531 + 56);
      swift_unknownObjectRetain();
      v356 = BigString.UnicodeScalarView.index(roundingDown:)();
      v358 = v357;
      v360 = v359;
      v362 = v361;
      swift_unknownObjectRelease();
      v540 = *(v354 + 24);
      v363 = *(v354 + 56);
      v541 = *(v354 + 40);
      v542 = v363;
      swift_unknownObjectRetain();
      v364 = BigString.UnicodeScalarView.index(roundingDown:)();
      v366 = v365;
      v368 = v367;
      v370 = v369;
      v333 = v532;
      swift_unknownObjectRelease();
      *&v552 = v356;
      *(&v552 + 1) = v358;
      *&v553 = v360;
      *(&v553 + 1) = v362;
      *&v554 = v364;
      *(&v554 + 1) = v366;
      *&v555 = v368;
      *(&v555 + 1) = v370;
      if ((v364 ^ v356) >= 0x400)
      {
        v371 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v371(v566, 0);
      }

      v332 = v530;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v332 + v526) != v552);
  }

  outlined destroy of TermOfAddress?(v332, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v338 = v514;
  v339 = v510;
  (*(v513 + 16))(v510 + *(v514 + 24), v528, v529);
  v340 = v523;
  RangeSet.ranges.getter();
  v341 = RangeSet.Ranges.count.getter();
  (v522)(v340, v333);
  v342 = *(v338 + 28);
  LODWORD(v526) = v341 > 1;
  *(v339 + v342) = v526;
  v343 = v505;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*v566 == v552 || (v344 = dispatch thunk of Collection.subscript.read(), v346 = v345[1], v519 = *v345, v347 = v345[3], v516 = v345[2], v517 = v346, v515 = v347, v344(&v552, 0), (v522)(v343, v333), v343 = v504, RangeSet.ranges.getter(), (dispatch thunk of Collection.isEmpty.getter() & 1) != 0))
  {
    (v522)(v343, v333);
    v348 = v531;
    v349 = *(v531 + 9);
    v350 = v529;
    if (v349)
    {
      *(&v534 + 1) = *(v349 + 18);
    }

    else
    {
      *(&v534 + 1) = 0;
    }

    *&v534 = *(v531 + 12);
    v372 = *(v531 + 40);
    v585 = *(v531 + 24);
    v586 = v372;
    v587 = *(v531 + 56);
    v373 = BigString.startIndex.getter();
    v375 = v374;
    v377 = v376;
    v533 = v378;
    v379 = *(v348 + 9);
    v530 = *(v348 + 12);
    if (v379)
    {
      *&v527 = *(v379 + 18);
      v380 = *(v513 + 8);
      swift_unknownObjectRetain();
      v380(v509, v350);
      v380(v528, v350);
      swift_unknownObjectRelease();
    }

    else
    {
      v381 = *(v513 + 8);
      v381(v509, v350);
      v381(v528, v350);
      *&v527 = 0;
    }

    v382 = *(v348 + 40);
    v599 = *(v348 + 24);
    v600 = v382;
    v601 = *(v348 + 56);
    v383 = BigString.startIndex.getter();
    v387 = 0;
    v388 = 0;
    v389 = 0;
    v390 = 0;
    v391 = 0;
    v392 = -1;
    v393 = v373;
    v394 = v375;
    v395 = v377;
    v396 = v533;
    v397 = v534;
    v398 = v533;
    v399 = v383;
    v400 = v384;
    v401 = v385;
    v402 = v386;
    v403 = -1;
    v404 = *(&v534 + 1);
  }

  else
  {
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
    dispatch thunk of BidirectionalCollection.index(before:)();
    v415 = dispatch thunk of Collection.subscript.read();
    v416 = v333;
    v399 = v417[4];
    v501 = v417[5];
    v419 = v417[6];
    v418 = v417[7];
    v415(&v552, 0);
    (v522)(v343, v416);
    v420 = v531;
    AttributedString.Guts.findRun(at:)(v519, v515, &v552);
    v534 = v552;
    v503 = *(&v553 + 1);
    v504 = v553;
    v514 = v555;
    v511 = *(&v554 + 1);
    v512 = *(&v555 + 1);
    v533 = v556;
    v421 = *(v420 + 40);
    v585 = *(v420 + 24);
    v586 = v421;
    v587 = *(v420 + 56);
    v422 = BigString.endIndex.getter();
    v508 = v419;
    v505 = v418;
    if ((v422 ^ v399) > 0x3FF)
    {
      v454 = v501;
      AttributedString.Guts.findRun(at:)(v399, v418, &v552);
      *&v527 = *(&v552 + 1);
      v502 = *(&v553 + 1);
      v391 = v553;
      v530 = v552;
      v531 = *(&v554 + 1);
      v495 = *(&v555 + 1);
      v496 = v555;
      v494 = v556;
      v455 = v523;
      v456 = v529;
      RangeSet.ranges.getter();
      v457 = v532;
      v403 = RangeSet.Ranges.count.getter();
      v458 = *(v513 + 8);
      v458(v509, v456);
      v459 = v455;
      v339 = v510;
      (v522)(v459, v457);
      v458(v528, v456);
      v390 = v502;
      v400 = v454;
      v386 = v494;
      v385 = v495;
      v384 = v496;
      v383 = v531;
      v392 = 0;
      v389 = v526;
      v404 = *(&v534 + 1);
      v397 = v534;
      v393 = v519;
      v395 = v516;
      v394 = v517;
      v375 = v514;
      v398 = v515;
      v373 = v511;
      v377 = v512;
      v396 = v533;
      v401 = v508;
      v388 = v504;
      v402 = v505;
      v387 = v503;
    }

    else
    {
      v423 = v501;
      v424 = v522;
      v425 = *(v420 + 9);
      if (v425)
      {
        v426 = *(v420 + 10);
      }

      else
      {
        v426 = 0;
      }

      v502 = v426;
      v427 = *(v420 + 12);
      v428 = swift_unknownObjectRetain();
      v530 = v427;
      *&v527 = specialized Rope._endPath.getter(v428);
      if (v425)
      {
        swift_unknownObjectRelease();
      }

      v429 = v523;
      v430 = v529;
      RangeSet.ranges.getter();
      v431 = v532;
      v403 = RangeSet.Ranges.count.getter();
      v432 = *(v513 + 8);
      v432(v509, v430);
      v433 = v429;
      v339 = v510;
      (v424)(v433, v431);
      v432(v528, v430);
      v392 = 0;
      v391 = 0;
      v383 = v399;
      v400 = v423;
      v384 = v423;
      v401 = v508;
      v385 = v508;
      v388 = v504;
      v402 = v505;
      v386 = v505;
      v389 = v526;
      v404 = *(&v534 + 1);
      v397 = v534;
      v393 = v519;
      v395 = v516;
      v394 = v517;
      v375 = v514;
      v398 = v515;
      v373 = v511;
      v377 = v512;
      v396 = v533;
      v390 = v502;
      v387 = v503;
    }
  }

  *(v339 + 8) = v387;
  *(v339 + 16) = v397;
  *(v339 + 24) = v404;
  *(v339 + 32) = v388;
  *(v339 + 40) = v373;
  *(v339 + 48) = v375;
  *(v339 + 56) = v377;
  *(v339 + 64) = v396;
  *(v339 + 72) = v393;
  *(v339 + 80) = v394;
  *(v339 + 88) = v395;
  *(v339 + 96) = v398;
  *(v339 + 104) = v392;
  *(v339 + 112) = 0;
  *(v339 + 113) = v389;
  v405 = v530;
  *(v339 + 120) = v390;
  *(v339 + 128) = v405;
  *(v339 + 136) = v527;
  *(v339 + 144) = v391;
  *(v339 + 152) = v383;
  *(v339 + 160) = v384;
  *(v339 + 168) = v385;
  *(v339 + 176) = v386;
  *(v339 + 184) = v399;
  *(v339 + 192) = v400;
  *(v339 + 200) = v401;
  *(v339 + 208) = v402;
  *(v339 + 216) = v403;
  *(v339 + 224) = 0;
  *(v339 + 225) = v389;
  v406 = v506;
  outlined init with take of AttributedString.Runs(v339, v506);
  outlined destroy of AttributedSubstring(&v547);
  v407 = v406;
  v408 = v507;
  outlined init with copy of AttributedString.Runs(v407, v507);
  v213 = v499;
  outlined init with copy of AttributedString.Runs(v408, v499);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v241 = swift_allocObject();
  *(v241 + 16) = xmmword_181218E20;
  if (one-time initialization token for name != -1)
  {
    goto LABEL_310;
  }

LABEL_243:
  v409 = unk_1EA7B25D8;
  *(v241 + 32) = static AttributeScopes.FoundationAttributes.InflectionAlternativeAttribute.name;
  *(v241 + 40) = v409;
  *(v213 + *(v500 + 36)) = v241;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd);
  v410 = static _SetStorage.allocate(capacity:)();
  v411 = v410 + 56;

  v412 = qword_1EEED46B8;
  v413 = unk_1EEED46C0;
  Hasher.init(_seed:)();
  v414 = v498;
  if (v413 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if (v413)
    {
      MEMORY[0x1865CD060](1);
      String.hash(into:)();
    }

    else
    {
      MEMORY[0x1865CD060](0);
    }
  }

  v434 = Hasher._finalize()();
  v435 = -1 << *(v410 + 32);
  v436 = v434 & ~v435;
  v437 = v436 >> 6;
  v438 = *(v411 + 8 * (v436 >> 6));
  v439 = 1 << v436;
  if (((1 << v436) & v438) == 0)
  {
LABEL_276:
    *(v411 + 8 * v437) = v438 | v439;
    v448 = (*(v410 + 48) + 16 * v436);
    *v448 = v412;
    v448[1] = v413;
    v449 = *(v410 + 16);
    v256 = __OFADD__(v449, 1);
    v450 = v449 + 1;
    if (v256)
    {
      __break(1u);
    }

    *(v410 + 16) = v450;
    v451 = v500;
    goto LABEL_284;
  }

  v440 = ~v435;
  while (2)
  {
    v441 = (*(v410 + 48) + 16 * v436);
    v442 = *v441;
    v443 = v441[1];
    if (v443 == 1)
    {
      if (v413 == 1)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v441, 1);
        v452 = v442;
        v453 = 1;
        goto LABEL_283;
      }

LABEL_261:
      outlined copy of AttributedString.AttributeRunBoundaries?(*v441, v441[1]);
      outlined copy of AttributedString.AttributeRunBoundaries?(v412, v413);
      outlined consume of AttributedString.AttributeRunBoundaries?(v442, v443);
      v444 = v412;
      v445 = v413;
LABEL_262:
      outlined consume of AttributedString.AttributeRunBoundaries?(v444, v445);
      goto LABEL_263;
    }

    if (v413 == 1)
    {
      goto LABEL_261;
    }

    if (v443)
    {
      if (!v413)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v441, v441[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v412, 0);
        outlined copy of AttributedString.AttributeRunBoundaries?(v442, v443);

        v444 = v442;
        v445 = v443;
        goto LABEL_262;
      }

      if (v442 == v412 && v443 == v413)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(v412, v413);
        outlined copy of AttributedString.AttributeRunBoundaries?(v412, v413);

LABEL_281:
        v452 = v412;
        v453 = v413;
        goto LABEL_283;
      }

      v447 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of AttributedString.AttributeRunBoundaries?(v442, v443);
      outlined copy of AttributedString.AttributeRunBoundaries?(v412, v413);
      outlined copy of AttributedString.AttributeRunBoundaries?(v442, v443);

      if (v447)
      {
        outlined consume of AttributedString.AttributeRunBoundaries?(v412, v413);
        v412 = v442;
        v413 = v443;
        goto LABEL_281;
      }

      outlined consume of AttributedString.AttributeRunBoundaries?(v442, v443);
LABEL_263:
      v436 = (v436 + 1) & v440;
      v437 = v436 >> 6;
      v438 = *(v411 + 8 * (v436 >> 6));
      v439 = 1 << v436;
      if ((v438 & (1 << v436)) == 0)
      {
        v213 = v499;
        v414 = v498;
        goto LABEL_276;
      }

      continue;
    }

    break;
  }

  outlined copy of AttributedString.AttributeRunBoundaries?(*v441, 0);
  if (v413)
  {
    outlined copy of AttributedString.AttributeRunBoundaries?(v412, v413);

    v444 = v442;
    v445 = 0;
    goto LABEL_262;
  }

  swift_bridgeObjectRelease_n();
  v452 = v442;
  v453 = 0;
LABEL_283:
  outlined consume of AttributedString.AttributeRunBoundaries?(v452, v453);
  v213 = v499;
  v451 = v500;
  v414 = v498;
LABEL_284:
  outlined destroy of TermOfAddress?(&qword_1EEED46B8, &_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd);
  outlined destroy of AttributedString.Runs(v507);
  outlined destroy of AttributedString.Runs(v506);
  *(v213 + *(v451 + 40)) = v410;
  outlined init with take of IntegerFormatStyle<Int>.Percent(v213, v414, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V021InflectionAlternativeG0OGMd);
  specialized _copyCollectionToContiguousArray<A>(_:)(v414);
  v461 = v460;
  v214 = outlined destroy of TermOfAddress?(v414, &_ss18ReversedCollectionVy10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AC15AttributeScopesO0cG0V021InflectionAlternativeI0OGGMd);
  v462 = *(v461 + 16);
  if (!v462)
  {
    goto LABEL_172;
  }

  v463 = 0;
  v464 = 0;
  v465 = (v462 - 1);
  v466 = 32;
  v519 = v461;
  v522 = (v462 - 1);
  while (2)
  {
    v467 = *(v461 + v466 + 16);
    v568[0] = *(v461 + v466);
    v568[1] = v467;
    v468 = *(v461 + v466 + 32);
    v469 = *(v461 + v466 + 48);
    v470 = *(v461 + v466 + 64);
    *&v569 = *(v461 + v466 + 80);
    v568[3] = v469;
    v568[4] = v470;
    v568[2] = v468;
    if (v463)
    {
      if (v465 == v464)
      {
        goto LABEL_172;
      }

      v463 = 1;
LABEL_288:
      ++v464;
      v466 += 88;
      if (v464 >= *(v461 + 16))
      {
        goto LABEL_304;
      }

      continue;
    }

    break;
  }

  if (*&v568[0])
  {
    LOBYTE(v578[0]) = 0;
    *(&v580 + 1) = &type metadata for AttributedString;
    *&v579 = *&v568[0];
    v471 = *(v525 + 16);
    v472 = *(v471 + 40);
    v596 = *(v471 + 24);
    v597 = v472;
    v598 = *(v471 + 56);
    v473 = BigString.startIndex.getter();
    v475 = v474;
    v477 = v476;
    v213 = v478;
    v479 = BigString.endIndex.getter();
    *v566 = v471;
    *&v566[8] = v473;
    *&v566[16] = v475;
    *&v566[24] = v477;
    *&v566[32] = v213;
    *&v566[40] = v479;
    *&v566[48] = v480;
    *&v566[56] = v481;
    *&v566[64] = v482;
    v567 = 0;
    outlined init with copy of FloatingPointRoundingRule?(v568, &v552, &_s10Foundation16AttributedStringVSg_SnyAC5IndexVGtMd);
    outlined init with copy of FloatingPointRoundingRule?(v568, &v552, &_s10Foundation16AttributedStringVSg_SnyAC5IndexVGtMd);

    outlined init with copy of FloatingPointRoundingRule?(v568, &v552, &_s10Foundation16AttributedStringVSg_SnyAC5IndexVGtMd);

    outlined destroy of AttributedString.CharacterView(v566);
    v483 = *(&v568[0] + 1);
    v532 = *(&v568[1] + 1);
    v533 = *&v568[1];
    v530 = *(&v568[3] + 1);
    *(&v534 + 1) = *&v568[3];
    v531 = *&v568[2];
    v528 = *(&v568[4] + 1);
    v529 = *&v568[4];
    v484 = *(v471 + 24);
    v485 = *(v471 + 56);
    v594 = *(v471 + 40);
    v595 = v485;
    v593 = v484;
    v486 = *(v471 + 24);
    v526 = *(v471 + 40);
    v527 = v486;
    v487 = *(v471 + 56);
    v523 = *(v471 + 64);
    *&v524 = v487;
    v214 = BigString.startIndex.getter();
    *&v534 = v483;
    if (v483 >> 10 < v214 >> 10)
    {
      goto LABEL_305;
    }

    v213 = v488;
    v214 = BigString.endIndex.getter();
    if (v214 >> 10 < *(&v534 + 1) >> 10)
    {
      goto LABEL_306;
    }

    v582 = v593;
    v583 = v594;
    *&v584 = v595;
    outlined init with copy of Rope<BigString._Chunk>._Node?(&v582, &v552);

    v590 = v527;
    v591 = v526;
    *&v592 = v524;
    *(&v592 + 1) = v523;
    v489 = BigString.UTF16View.distance(from:to:)();
    v213 = v532;
    v490 = BigString.UTF16View.distance(from:to:)();
    v491 = BigString.UTF16View.distance(from:to:)();
    v214 = outlined destroy of BigString(&v593);
    if (__OFSUB__(v490, v489))
    {
      goto LABEL_307;
    }

    v520(&v579, v490 - v489, v491, v578);
    outlined destroy of TermOfAddress?(&v579, &_sypSgMd);
    v463 = v578[0];
    outlined destroy of TermOfAddress?(v568, &_s10Foundation16AttributedStringVSg_SnyAC5IndexVGtMd);
    v214 = outlined destroy of TermOfAddress?(v568, &_s10Foundation16AttributedStringVSg_SnyAC5IndexVGtMd);
    v465 = v522;
    if (v522 == v464)
    {
      goto LABEL_172;
    }

    v461 = v519;
    goto LABEL_288;
  }

  if (v465 != v464)
  {
    v214 = outlined init with copy of FloatingPointRoundingRule?(v568, &v552, &_s10Foundation16AttributedStringVSg_SnyAC5IndexVGtMd);
    v463 = 0;
    goto LABEL_288;
  }

  outlined init with copy of FloatingPointRoundingRule?(v568, &v552, &_s10Foundation16AttributedStringVSg_SnyAC5IndexVGtMd);
LABEL_172:
}

void thunk for @escaping @callee_guaranteed (@guaranteed NSAttributedStringKey, @unowned _NSRange, @guaranteed @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()) -> ()(uint64_t a1, void *a2, int a3, int a4, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v7;
  v8 = a2;
  v6();
}

uint64_t thunk for @escaping @callee_unowned @convention(block) (@unowned Swift.AnyObject?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of FloatingPointRoundingRule?(a1, v17, &_sypSgMd);
  v9 = v18;
  if (v18)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v11 = *(v9 - 8);
    v12 = MEMORY[0x1EEE9AC00](v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v15 = 0;
  }

  (*(a5 + 16))(a5, v15, a2, a3, a4);
  return swift_unknownObjectRelease();
}

uint64_t closure #5 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:)(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, __int128 *, char *), uint64_t a4, uint64_t a5)
{
  v256 = a3;
  v257 = a4;
  v334 = *MEMORY[0x1E69E9840];
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice4Vy__AA15AttributeScopesO0aE0V014InflectionRuleG0OAK017AgreementArgumentG0OAK0k7ConceptG0OAK08ReferentmG0OGMd);
  MEMORY[0x1EEE9AC00](v254);
  v9 = &v228 - v8;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v259 = *(v266 - 8);
  MEMORY[0x1EEE9AC00](v266);
  v247 = &v228 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v250 = &v228 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v258 = &v228 - v14;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](v269);
  v264 = &v228 - v15;
  *&v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v16 = *(v261 - 8);
  MEMORY[0x1EEE9AC00](v261);
  *&v260 = &v228 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v228 - v19;
  v249 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v249);
  v253 = &v228 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v228 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v252 = &v228 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVy10Foundation16AttributedStringV4RunsV16AttributesSlice4Vy__AC15AttributeScopesO0cG0V014InflectionRuleI0OAM017AgreementArgumentI0OAM0m7ConceptI0OAM08ReferentoI0OGGMd);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v228 - v28;
  v30 = *(a5 + 16);

  result = _sSn10FoundationAA16AttributedStringV5IndexVRszrlE_2inSnyAEGSgSo8_NSRangeV_qd__tcAA0bC8ProtocolRd__lufCAC_Tt2B5(a1, a2, v30, &v289);
  v32 = v291;
  if (v291 == 2)
  {
    return result;
  }

  v251 = v16;
  v243 = v29;
  v248 = v9;
  v268 = v290;
  v267 = v289;
  v255 = a5;
  v33 = *(a5 + 16);
  v34 = *(v33 + 40);
  v329 = *(v33 + 24);
  v330 = v34;
  v331 = *(v33 + 56);
  v35 = BigString.startIndex.getter();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = BigString.endIndex.getter();
  v282[0] = v33;
  v282[1] = v35;
  v282[2] = v37;
  v282[3] = v39;
  v282[4] = v41;
  v282[5] = v42;
  v282[6] = v43;
  v282[7] = v44;
  v282[8] = v45;
  v282[9] = 0;
  swift_retain_n();
  outlined destroy of AttributedString.CharacterView(v282);
  v321 = v267;
  v322 = v268;
  v323 = v32;
  v325 = v293;
  v324 = v292;
  v46 = *(v33 + 40);
  v326 = *(v33 + 24);
  v327 = v46;
  v328 = *(v33 + 56);
  swift_unknownObjectRetain();

  BigString.UnicodeScalarView.subscript.getter();
  swift_unknownObjectRelease();

  outlined destroy of BigSubstring.UnicodeScalarView(&v294);
  v284 = v295;
  v285 = v296;
  v286 = v297;
  v287 = v298;
  v283 = v33;
  v288 = 0;
  v271[0] = v295;
  v271[1] = v296;
  v271[2] = v297;
  v271[3] = v298;
  outlined init with copy of AttributedSubstring(&v283, &v276);
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();
  RangeSet.init(_:)();
  v265 = v33;
  v246 = v24;
  *v24 = v33;
  RangeSet.init()();
  v47 = v258;
  v244 = v20;
  RangeSet.ranges.getter();
  v48 = v259;
  v49 = v264;
  v50 = v266;
  (*(v259 + 16))(v264, v47, v266);
  v51 = *(v269 + 36);
  v52 = lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of Collection.startIndex.getter();
  v53 = *(v48 + 8);
  v259 = v48 + 8;
  v245 = v53;
  v53(v47, v50);
  v54 = v49;
  dispatch thunk of Collection.endIndex.getter();
  if (*&v49[v51] != v276)
  {
    v262 = v51;
    v263 = v52;
    do
    {
      v64 = dispatch thunk of Collection.subscript.read();
      v66 = v65[4];
      v268 = v65[5];
      v269 = v66;
      *&v267 = v65[6];
      v64(&v276, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v67 = v265;
      v68 = *(v265 + 40);
      v318 = *(v265 + 24);
      v319 = v68;
      v320 = *(v265 + 56);
      swift_unknownObjectRetain();
      v69 = BigString.UnicodeScalarView.index(roundingDown:)();
      v71 = v70;
      v73 = v72;
      v75 = v74;
      swift_unknownObjectRelease();
      v76 = *(v67 + 40);
      v315 = *(v67 + 24);
      v316 = v76;
      v317 = *(v67 + 56);
      swift_unknownObjectRetain();
      v77 = BigString.UnicodeScalarView.index(roundingDown:)();
      v79 = v78;
      v81 = v80;
      v83 = v82;
      swift_unknownObjectRelease();
      *&v276 = v69;
      *(&v276 + 1) = v71;
      *&v277 = v73;
      *(&v277 + 1) = v75;
      *&v278 = v77;
      *(&v278 + 1) = v79;
      v50 = v266;
      *&v279 = v81;
      *(&v279 + 1) = v83;
      if ((v77 ^ v69) >= 0x400)
      {
        v84 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v84(v271, 0);
      }

      v54 = v264;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v54 + v262) != v276);
  }

  outlined destroy of TermOfAddress?(v54, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v55 = v249;
  v56 = *(v249 + 24);
  v57 = v246;
  (*(v251 + 16))(&v246[v56], v260, v261);
  v58 = v258;
  RangeSet.ranges.getter();
  v59 = RangeSet.Ranges.count.getter();
  v60 = v245;
  v245(v58, v50);
  v61 = *(v55 + 28);
  LODWORD(v249) = v59 > 1;
  *(v57 + v61) = v249;
  v62 = v250;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*&v271[0] == v276)
  {
    v63 = v62;
LABEL_11:
    v60(v63, v266);
    v91 = v265;
    v92 = *(v265 + 72);
    v93 = v261;
    v94 = v260;
    v95 = v244;
    if (v92)
    {
      v262 = *(v92 + 18);
    }

    else
    {
      v262 = 0;
    }

    v269 = *(v265 + 96);
    v96 = *(v265 + 40);
    v312 = *(v265 + 24);
    v313 = v96;
    v314 = *(v265 + 56);
    v97 = BigString.startIndex.getter();
    v99 = v98;
    v268 = v100;
    *&v267 = v101;
    v102 = *(v91 + 72);
    v264 = *(v91 + 96);
    if (v102)
    {
      v263 = *(v102 + 18);
      v103 = *(v251 + 8);
      swift_unknownObjectRetain();
      v103(v95, v93);
      v103(v94, v93);
      v91 = v265;
      swift_unknownObjectRelease();
    }

    else
    {
      v104 = *(v251 + 8);
      v104(v95, v93);
      v104(v94, v93);
      v263 = 0;
    }

    v105 = *(v91 + 40);
    v309 = *(v91 + 24);
    v310 = v105;
    v311 = *(v91 + 56);
    v106 = BigString.startIndex.getter();
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v113 = 0;
    v114 = 0;
    v115 = -1;
    v116 = v97;
    v117 = v97;
    v118 = v99;
    v120 = v268;
    v119 = v269;
    v121 = v268;
    v122 = v267;
    v123 = v267;
    v124 = v106;
    v125 = v107;
    v126 = v108;
    v127 = v109;
    v128 = -1;
    v129 = v262;
    v130 = v264;
    goto LABEL_18;
  }

  v85 = v266;
  v86 = dispatch thunk of Collection.subscript.read();
  v88 = *v87;
  v89 = v87[1];
  v239 = v87[2];
  v240 = v88;
  v241 = v87[3];
  v242 = v89;
  v86(&v276, 0);
  v60(v62, v85);
  v90 = v247;
  RangeSet.ranges.getter();
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    v63 = v90;
    goto LABEL_11;
  }

  v232 = v56;
  v199 = v266;
  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v200 = dispatch thunk of Collection.subscript.read();
  v202 = v201[4];
  v203 = v201[5];
  v204 = v201[6];
  v205 = v201[7];
  v200(&v276, 0);
  v60(v90, v199);
  v121 = v239;
  v117 = v240;
  v206 = v265;
  AttributedString.Guts.findRun(at:)(v240, v241, &v276);
  v207 = *(&v276 + 1);
  v233 = *(&v277 + 1);
  v234 = v277;
  v250 = *(&v278 + 1);
  v268 = *(&v279 + 1);
  v247 = v279;
  v269 = v276;
  *&v267 = v280;
  v208 = *(v206 + 40);
  v312 = *(v206 + 24);
  v313 = v208;
  v314 = *(v206 + 56);
  v209 = BigString.endIndex.getter();
  v237 = v203;
  v238 = v202;
  v235 = v205;
  v236 = v204;
  if ((v209 ^ v202) > 0x3FF)
  {
    AttributedString.Guts.findRun(at:)(v202, v205, &v276);
    v263 = *(&v276 + 1);
    v264 = v276;
    v114 = v277;
    v262 = *(&v278 + 1);
    v230 = v279;
    v231 = *(&v277 + 1);
    v228 = v280;
    v229 = *(&v279 + 1);
    v220 = v258;
    v221 = v261;
    RangeSet.ranges.getter();
    v222 = v121;
    v223 = v266;
    v128 = RangeSet.Ranges.count.getter();
    v224 = v207;
    v225 = *(v251 + 8);
    v225(v244, v221);
    v226 = v220;
    v124 = v238;
    v227 = v223;
    v121 = v222;
    v245(v226, v227);
    v225(v260, v221);
    v130 = v264;
    v107 = v230;
    v113 = v231;
    v129 = v224;
    v117 = v240;
    v123 = v241;
    v109 = v228;
    v108 = v229;
    v57 = v246;
    v99 = v247;
    v106 = v262;
    v115 = 0;
    v112 = v249;
    v120 = v268;
    v119 = v269;
    v118 = v242;
    v116 = v250;
    v122 = v267;
    v126 = v236;
    v125 = v237;
    v111 = v234;
    v127 = v235;
    v110 = v233;
  }

  else
  {
    v262 = v207;
    v210 = v266;
    v211 = v206;
    v212 = *(v206 + 72);
    v213 = *(v206 + 80);
    if (v212)
    {
      v214 = v213;
    }

    else
    {
      v214 = 0;
    }

    v231 = v214;
    v215 = *(v211 + 96);
    v216 = swift_unknownObjectRetain();
    v264 = v215;
    v263 = specialized Rope._endPath.getter(v216);
    v217 = v258;
    if (v212)
    {
      swift_unknownObjectRelease();
    }

    v57 = v246;
    v218 = v261;
    RangeSet.ranges.getter();
    v128 = RangeSet.Ranges.count.getter();
    v219 = *(v251 + 8);
    v219(v244, v218);
    v245(v217, v210);
    v219(v260, v218);
    v115 = 0;
    v114 = 0;
    v125 = v237;
    v124 = v238;
    v106 = v238;
    v107 = v237;
    v127 = v235;
    v126 = v236;
    v108 = v236;
    v109 = v235;
    v112 = v249;
    v129 = v262;
    v120 = v268;
    v119 = v269;
    v123 = v241;
    v118 = v242;
    v116 = v250;
    v99 = v247;
    v122 = v267;
    v130 = v264;
    v110 = v233;
    v111 = v234;
    v113 = v231;
  }

LABEL_18:
  *(v57 + 8) = v110;
  *(v57 + 16) = v119;
  *(v57 + 24) = v129;
  *(v57 + 32) = v111;
  *(v57 + 40) = v116;
  *(v57 + 48) = v99;
  *(v57 + 56) = v120;
  *(v57 + 64) = v122;
  *(v57 + 72) = v117;
  *(v57 + 80) = v118;
  *(v57 + 88) = v121;
  *(v57 + 96) = v123;
  *(v57 + 104) = v115;
  *(v57 + 112) = 0;
  *(v57 + 113) = v112;
  *(v57 + 120) = v113;
  *(v57 + 128) = v130;
  *(v57 + 136) = v263;
  *(v57 + 144) = v114;
  *(v57 + 152) = v106;
  *(v57 + 160) = v107;
  *(v57 + 168) = v108;
  *(v57 + 176) = v109;
  *(v57 + 184) = v124;
  *(v57 + 192) = v125;
  *(v57 + 200) = v126;
  *(v57 + 208) = v127;
  *(v57 + 216) = v128;
  *(v57 + 224) = 0;
  *(v57 + 225) = v112;
  v131 = v252;
  outlined init with take of AttributedString.Runs(v57, v252);
  outlined destroy of AttributedSubstring(&v283);
  v132 = v131;
  v133 = v253;
  outlined init with copy of AttributedString.Runs(v132, v253);
  v134 = v248;
  outlined init with copy of AttributedString.Runs(v133, v248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v135 = swift_allocObject();
  v135[1] = xmmword_18121D6C0;
  if (one-time initialization token for name != -1)
  {
LABEL_84:
    swift_once();
  }

  v136 = unk_1EA7B2660;
  *(v135 + 4) = static AttributeScopes.FoundationAttributes.InflectionRuleAttribute.name;
  *(v135 + 5) = v136;
  v137 = one-time initialization token for name;

  if (v137 != -1)
  {
    swift_once();
  }

  v138 = unk_1EA7B2610;
  *(v135 + 6) = static AttributeScopes.FoundationAttributes.AgreementArgumentAttribute.name;
  *(v135 + 7) = v138;
  v139 = one-time initialization token for name;

  if (v139 != -1)
  {
    swift_once();
  }

  v140 = *algn_1EA7B2628;
  *(v135 + 8) = static AttributeScopes.FoundationAttributes.AgreementConceptAttribute.name;
  *(v135 + 9) = v140;
  v141 = one-time initialization token for name;

  if (v141 != -1)
  {
    swift_once();
  }

  v142 = unk_1EA7B2640;
  *(v135 + 10) = static AttributeScopes.FoundationAttributes.ReferentConceptAttribute.name;
  *(v135 + 11) = v142;
  *(v134 + *(v254 + 84)) = v135;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd);
  v143 = static _SetStorage.allocate(capacity:)();
  v144 = v143 + 56;

  v145 = 0;
  while (2)
  {
    v148 = &outlined read-only object #0 of closure #5 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:) + 16 * v145;
    v149 = *(v148 + 4);
    v134 = *(v148 + 5);
    Hasher.init(_seed:)();
    v269 = v145;
    if (v134 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      if (v134)
      {
        MEMORY[0x1865CD060](1);
        String.hash(into:)();
      }

      else
      {
        MEMORY[0x1865CD060](0);
      }
    }

    v135 = &v276;
    v150 = Hasher._finalize()();
    v151 = ~(-1 << *(v143 + 32));
    v152 = v150 & v151;
    v153 = (v150 & v151) >> 6;
    v154 = *(v144 + 8 * v153);
    v155 = 1 << (v150 & v151);
    if ((v155 & v154) == 0)
    {
LABEL_53:
      *(v144 + 8 * v153) = v154 | v155;
      v162 = (*(v143 + 48) + 16 * v152);
      *v162 = v149;
      v162[1] = v134;
      v163 = *(v143 + 16);
      v164 = __OFADD__(v163, 1);
      v165 = v163 + 1;
      if (!v164)
      {
        *(v143 + 16) = v165;
        goto LABEL_27;
      }

      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    while (1)
    {
      v156 = (*(v143 + 48) + 16 * v152);
      v135 = *v156;
      v157 = v156[1];
      if (v157 == 1)
      {
        if (v134 == 1)
        {
          outlined copy of AttributedString.AttributeRunBoundaries?(*v156, 1);
          v146 = v135;
          v147 = 1;
          goto LABEL_26;
        }

LABEL_38:
        outlined copy of AttributedString.AttributeRunBoundaries?(*v156, v156[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v149, v134);
        outlined consume of AttributedString.AttributeRunBoundaries?(v135, v157);
        v158 = v149;
        v159 = v134;
LABEL_39:
        outlined consume of AttributedString.AttributeRunBoundaries?(v158, v159);
        goto LABEL_40;
      }

      if (v134 == 1)
      {
        goto LABEL_38;
      }

      if (!v157)
      {
        break;
      }

      if (!v134)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v156, v156[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v149, 0);
        outlined copy of AttributedString.AttributeRunBoundaries?(v135, v157);

        v158 = v135;
        v159 = v157;
        goto LABEL_39;
      }

      if (v135 == v149 && v157 == v134)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(v149, v134);
        outlined copy of AttributedString.AttributeRunBoundaries?(v149, v134);

LABEL_57:
        v146 = v149;
        v147 = v134;
        goto LABEL_26;
      }

      v161 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of AttributedString.AttributeRunBoundaries?(v135, v157);
      outlined copy of AttributedString.AttributeRunBoundaries?(v149, v134);
      outlined copy of AttributedString.AttributeRunBoundaries?(v135, v157);

      if (v161)
      {
        outlined consume of AttributedString.AttributeRunBoundaries?(v149, v134);
        v149 = v135;
        v134 = v157;
        goto LABEL_57;
      }

      outlined consume of AttributedString.AttributeRunBoundaries?(v135, v157);
LABEL_40:
      v152 = (v152 + 1) & v151;
      v153 = v152 >> 6;
      v154 = *(v144 + 8 * (v152 >> 6));
      v155 = 1 << v152;
      if ((v154 & (1 << v152)) == 0)
      {
        goto LABEL_53;
      }
    }

    outlined copy of AttributedString.AttributeRunBoundaries?(*v156, 0);
    if (v134)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(v149, v134);

      v158 = v135;
      v159 = 0;
      goto LABEL_39;
    }

    swift_bridgeObjectRelease_n();
    v146 = v135;
    v147 = 0;
LABEL_26:
    outlined consume of AttributedString.AttributeRunBoundaries?(v146, v147);
LABEL_27:
    v145 = v269 + 1;
    if (v269 != 3)
    {
      continue;
    }

    break;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd);
  swift_arrayDestroy();
  outlined destroy of AttributedString.Runs(v253);
  outlined destroy of AttributedString.Runs(v252);
  v166 = v248;
  *&v248[*(v254 + 88)] = v143;
  v167 = v243;
  outlined init with take of IntegerFormatStyle<Int>.Percent(v166, v243, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice4Vy__AA15AttributeScopesO0aE0V014InflectionRuleG0OAK017AgreementArgumentG0OAK0k7ConceptG0OAK08ReferentmG0OGMd);
  v168 = specialized Sequence.compactMap<A>(_:)(v167);
  outlined destroy of TermOfAddress?(v167, &_ss18ReversedCollectionVy10Foundation16AttributedStringV4RunsV16AttributesSlice4Vy__AC15AttributeScopesO0cG0V014InflectionRuleI0OAM017AgreementArgumentI0OAM0m7ConceptI0OAM08ReferentoI0OGGMd);
  v169 = *(v168 + 16);
  if (v169)
  {
    v170 = 0;
    v171 = v169 - 1;
    v172 = 32;
    v173 = v255;
    v254 = v168;
    while (1)
    {
      v174 = *(v168 + v172 + 16);
      v276 = *(v168 + v172);
      v277 = v174;
      v175 = *(v168 + v172 + 80);
      v177 = *(v168 + v172 + 48);
      v176 = *(v168 + v172 + 64);
      v278 = *(v168 + v172 + 32);
      v279 = v177;
      v280 = v176;
      v281 = v175;
      if (v170)
      {
        if (!v171)
        {
          break;
        }

        v170 = 1;
      }

      else
      {
        v258 = v172;
        v259 = v171;
        v134 = v276;
        v266 = *(&v277 + 1);
        *&v267 = v277;
        v268 = *(&v276 + 1);
        v269 = *(&v278 + 1);
        v263 = *(&v279 + 1);
        v264 = v279;
        v262 = v280;
        v178 = v281;
        v274[3] = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSInflectionRule);
        v274[0] = v178;
        v273[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
        v273[0] = swift_allocObject();
        outlined init with copy of FloatingPointRoundingRule?(v274, v273[0] + 16, &_sypSgMd);
        v270[0] = 0;
        outlined init with copy of Any(v273, v272);
        v179 = *(v173 + 16);
        v180 = *(v179 + 40);
        v306 = *(v179 + 24);
        v307 = v180;
        v308 = *(v179 + 56);
        v181 = BigString.startIndex.getter();
        v183 = v182;
        v185 = v184;
        v187 = v186;
        v188 = BigString.endIndex.getter();
        v275[0] = v179;
        v275[1] = v181;
        v275[2] = v183;
        v275[3] = v185;
        v275[4] = v187;
        v275[5] = v188;
        v275[6] = v189;
        v275[7] = v190;
        v275[8] = v191;
        v275[9] = 0;
        outlined init with copy of FloatingPointRoundingRule?(&v276, v271, &_sSny10Foundation16AttributedStringV5IndexVG_So16NSInflectionRuleCtMd);

        outlined init with copy of FloatingPointRoundingRule?(&v276, v271, &_sSny10Foundation16AttributedStringV5IndexVG_So16NSInflectionRuleCtMd);

        outlined destroy of AttributedString.CharacterView(v275);
        v192 = *(v179 + 24);
        v193 = *(v179 + 40);
        v305 = *(v179 + 56);
        v304 = v193;
        v303 = v192;
        v194 = *(v179 + 24);
        v260 = *(v179 + 40);
        v261 = v194;
        v196 = *(v179 + 56);
        v195 = *(v179 + 64);
        v135 = &v303;
        if (v134 >> 10 < BigString.startIndex.getter() >> 10)
        {
          goto LABEL_81;
        }

        v135 = &v303;
        if (BigString.endIndex.getter() >> 10 < v269 >> 10)
        {
          goto LABEL_82;
        }

        v332[0] = v303;
        v332[1] = v304;
        v333 = v305;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v332, v271);

        v300 = v260;
        v299 = v261;
        v301 = v196;
        v302 = v195;
        v197 = BigString.UTF16View.distance(from:to:)();
        v198 = BigString.UTF16View.distance(from:to:)();
        v135 = BigString.UTF16View.distance(from:to:)();
        outlined destroy of BigString(&v303);
        if (__OFSUB__(v198, v197))
        {
          goto LABEL_83;
        }

        v256(v272, v198 - v197, v135, v270);
        outlined destroy of TermOfAddress?(&v276, &_sSny10Foundation16AttributedStringV5IndexVG_So16NSInflectionRuleCtMd);
        outlined destroy of TermOfAddress?(v272, &_sypSgMd);
        v170 = v270[0];
        __swift_destroy_boxed_opaque_existential_1(v273);
        outlined destroy of TermOfAddress?(v274, &_sypSgMd);
        v171 = v259;
        if (!v259)
        {
          break;
        }

        v168 = v254;
        v173 = v255;
        v172 = v258;
      }

      --v171;
      v172 += 88;
    }
  }
}

uint64_t closure #6 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, unint64_t, uint64_t, char *), uint64_t a4, uint64_t *a5)
{
  v10 = *a5;

  result = _sSn10FoundationAA16AttributedStringV5IndexVRszrlE_2inSnyAEGSgSo8_NSRangeV_qd__tcAA0bC8ProtocolRd__lufCAC_Tt2B5(a1, a2, v10, &v13);
  v22 = v13;
  v23 = v14;
  v19 = v16;
  v20 = v17;
  v21 = v18;
  if (v15 != 2)
  {
    v12 = *a5;
    v13 = v22;
    v14 = v23;
    v16 = v19;
    v17 = v20;
    v18 = v21;

    specialized AttributedString.enumerateFormattableRanges(in:editor:)(&v13, &v12, a3, a4, a5);
  }

  return result;
}

uint64_t closure #7 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:)(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v374 = *MEMORY[0x1E69E9840];
  v8 = *a4;

  result = _sSn10FoundationAA16AttributedStringV5IndexVRszrlE_2inSnyAEGSgSo8_NSRangeV_qd__tcAA0bC8ProtocolRd__lufCAC_Tt2B5(a2, a3, v8, &v346);
  if (v348 == 2)
  {
    return result;
  }

  v311 = v348;
  v308 = v346;
  v309 = v347;
  v310 = *v349;
  v312 = *&v349[16];
  isTaggedPointer = _objc_isTaggedPointer(@"NSInflect");
  v11 = @"NSInflect";
  v12 = v11;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v11);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_18;
    case 0x16:
      v20 = [(__CFString *)v12 UTF8String];
      if (!v20)
      {
LABEL_292:
        __break(1u);
        goto LABEL_293;
      }

      v21 = String.init(utf8String:)(v20);
      if (v22)
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_18:
      LOWORD(v331[0]) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v21 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v22)
      {
        [(__CFString *)v12 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v14 = v336;
        v16 = v337;
        goto LABEL_26;
      }

LABEL_19:
      v14 = v21;
      v16 = v22;

      goto LABEL_26;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v14 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v16 = v15;

      goto LABEL_26;
  }

LABEL_7:
  LOBYTE(v336) = 0;
  *&v346 = 0;
  LOBYTE(v331[0]) = 0;
  LOBYTE(v314) = 0;
  if (!__CFStringIsCF())
  {
    v17 = v12;
    v18 = String.init(_nativeStorage:)();
    if (v19)
    {
      v14 = v18;
      v16 = v19;

      goto LABEL_26;
    }

    *&v346 = [(__CFString *)v17 length];
    if (v346)
    {
      goto LABEL_24;
    }

LABEL_14:
    v14 = 0;
    v16 = 0xE000000000000000;
    goto LABEL_26;
  }

  if (!v346)
  {

    goto LABEL_14;
  }

  if (v314 != 1)
  {
LABEL_24:
    v23 = String.init(_cocoaString:)();
    goto LABEL_25;
  }

  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  v23 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_25:
  v14 = v23;
  v16 = v24;
LABEL_26:
  v25 = _objc_isTaggedPointer(a1);
  v26 = a1;
  v27 = v26;
  v313 = a4;
  if (!v25)
  {
    goto LABEL_31;
  }

  v28 = _objc_getTaggedPointerTag(v26);
  if (!v28)
  {
    goto LABEL_42;
  }

  if (v28 == 22)
  {
    v35 = [(os_unfair_lock_s *)v27 UTF8String];
    if (!v35)
    {
LABEL_293:
      __break(1u);
      goto LABEL_294;
    }

    v36 = String.init(utf8String:)(v35);
    if (v37)
    {
LABEL_43:
      v29 = v36;
      v31 = v37;

      goto LABEL_50;
    }

    __break(1u);
LABEL_42:
    LOWORD(v331[0]) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v36 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v37)
    {
      [(os_unfair_lock_s *)v27 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v29 = v336;
      v31 = v337;
      goto LABEL_50;
    }

    goto LABEL_43;
  }

  if (v28 != 2)
  {
LABEL_31:
    LOBYTE(v336) = 0;
    *&v346 = 0;
    LOBYTE(v331[0]) = 0;
    LOBYTE(v314) = 0;
    if (__CFStringIsCF())
    {
      if (v346)
      {
        if (v314 == 1)
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          v38 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_49:
          v29 = v38;
          v31 = v39;
          goto LABEL_50;
        }

LABEL_48:
        v38 = String.init(_cocoaString:)();
        goto LABEL_49;
      }
    }

    else
    {
      v32 = v27;
      v33 = String.init(_nativeStorage:)();
      if (v34)
      {
        v29 = v33;
        v31 = v34;

        goto LABEL_50;
      }

      *&v346 = [(os_unfair_lock_s *)v32 length];
      if (v346)
      {
        goto LABEL_48;
      }
    }

    v29 = 0;
    v31 = 0xE000000000000000;
    goto LABEL_50;
  }

  MEMORY[0x1EEE9AC00](v28);
  v29 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v31 = v30;

LABEL_50:
  if (v14 == v29 && v16 == v31)
  {

LABEL_54:
    v41 = v313;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = *v313;
      v43 = *(*v313 + 24);
      v44 = *(*v313 + 56);
      v356 = *(*v313 + 40);
      v357 = v44;
      v355 = v43;
      v45 = v42[9];
      v46 = v42[10];
      v47 = v42[11];
      v48 = v42[12];
      type metadata accessor for AttributedString.Guts();
      swift_allocObject();
      outlined init with copy of BigString(&v355, &v346);
      swift_unknownObjectRetain();
      *v313 = AttributedString.Guts.init(string:runs:)(&v355, v45, v46, v47, v48);
    }

    v49 = *v313;
    if (one-time initialization token for _nextVersion != -1)
    {
      swift_once();
    }

    *(v49 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v50 = *v313;
    v51 = *(*v313 + 40);
    v371 = *(*v313 + 24);
    v372 = v51;
    v373 = *(v50 + 56);
    v52 = BigString.startIndex.getter();
    v54 = v53;
    v336 = v50;
    v337 = v52;
    v338 = v53;
    v339 = v55;
    v340 = v56;
    v341 = BigString.endIndex.getter();
    v342 = v57;
    v343 = v58;
    v344 = v59;
    v345 = 0;

    outlined destroy of AttributedString.CharacterView(&v336);
    v60 = *v313;
    v358 = v308;
    *&v359 = v309;
    *(&v359 + 1) = v311;
    v360 = v310;
    v361 = v312;
    *&v331[0] = v60;
    v61 = *(v60 + 40);
    v368 = *(v60 + 24);
    v369 = v61;
    v370 = *(v60 + 56);
    swift_unknownObjectRetain();

    BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    outlined destroy of BigSubstring.UnicodeScalarView(&v346);
    v319 = *&v349[8];
    v320 = *&v349[24];
    v321 = v350;
    v322 = v351;
    *(v331 + 8) = *&v349[8];
    *(&v331[1] + 8) = *&v349[24];
    *(&v331[2] + 8) = v350;
    *(&v331[3] + 8) = v351;
    if (one-time initialization token for currentIdentity != -1)
    {
      swift_once();
    }

    a1 = static AttributedString.currentIdentity;
    os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
    v62 = *&a1[4]._os_unfair_lock_opaque;
    v63 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      __break(1u);
    }

    else
    {
      *&a1[4]._os_unfair_lock_opaque = v63;
      os_unfair_lock_unlock(a1 + 6);
      *(&v331[4] + 1) = v63;
      BigString.init()();
      *&v314 = 0;
      MEMORY[0x1865D26B0](&v314, 8);
      v54 = v314;
      type metadata accessor for AttributedString.Guts();
      v64 = swift_allocObject();
      a1 = &v365;
      if (BigString.isEmpty.getter())
      {
        add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v66 = v366;
        *(v64 + 24) = v365;
        *(v64 + 16) = add_explicit;
        *(v64 + 40) = v66;
        *(v64 + 56) = v367;
        *(v64 + 72) = 0;
        *(v64 + 80) = 0;
        *(v64 + 88) = 0;
        *(v64 + 96) = v54;
        *(v64 + 104) = MEMORY[0x1E69E7CC0];
        *v313 = v64;

        _s10Foundation19AttributedSubstringVy5ValueQzSgxmcAA0B9StringKeyRzluisAA15AttributeScopesO0A10AttributesV014InflectionRuleG0O_Tt0B5(0, 1, 0);
        if (*(&v331[4] + 1) == v63)
        {
          *v313 = *&v331[0];

          v316 = v331[2];
          v317 = v331[3];
          v318 = v331[4];
          v314 = v331[0];
          v315 = v331[1];
          v67 = &v314;
          return outlined destroy of AttributedSubstring(v67);
        }

LABEL_300:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }
    }

    __break(1u);

    goto LABEL_217;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v40)
  {
    goto LABEL_54;
  }

  v68 = _objc_isTaggedPointer(@"NSInflectionAgreementConcept");
  v69 = @"NSInflectionAgreementConcept";
  v70 = v69;
  if (!v68)
  {
    goto LABEL_69;
  }

  v71 = _objc_getTaggedPointerTag(v69);
  switch(v71)
  {
    case 0:
      goto LABEL_80;
    case 0x16:
      v78 = [(__CFString *)v70 UTF8String];
      if (!v78)
      {
LABEL_294:
        __break(1u);
        goto LABEL_295;
      }

      v79 = String.init(utf8String:)(v78);
      if (v80)
      {
        goto LABEL_81;
      }

      __break(1u);
LABEL_80:
      LOWORD(v331[0]) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v79 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v80)
      {
        [(__CFString *)v70 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v72 = v336;
        v74 = v337;
        goto LABEL_88;
      }

LABEL_81:
      v72 = v79;
      v74 = v80;

      goto LABEL_88;
    case 2:
      MEMORY[0x1EEE9AC00](v71);
      v72 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v74 = v73;

      goto LABEL_88;
  }

LABEL_69:
  LOBYTE(v336) = 0;
  *&v346 = 0;
  LOBYTE(v331[0]) = 0;
  LOBYTE(v314) = 0;
  if (!__CFStringIsCF())
  {
    v75 = v70;
    v76 = String.init(_nativeStorage:)();
    if (v77)
    {
      v72 = v76;
      v74 = v77;

      goto LABEL_88;
    }

    *&v346 = [(__CFString *)v75 length];
    if (v346)
    {
      goto LABEL_86;
    }

LABEL_76:
    v72 = 0;
    v74 = 0xE000000000000000;
    goto LABEL_88;
  }

  if (!v346)
  {

    goto LABEL_76;
  }

  if (v314 != 1)
  {
LABEL_86:
    v81 = String.init(_cocoaString:)();
    goto LABEL_87;
  }

  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  v81 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_87:
  v72 = v81;
  v74 = v82;
LABEL_88:
  v83 = v27;
  v84 = v83;
  if (!v25)
  {
    goto LABEL_93;
  }

  v85 = _objc_getTaggedPointerTag(v83);
  if (!v85)
  {
    goto LABEL_104;
  }

  if (v85 == 22)
  {
    v92 = [(os_unfair_lock_s *)v84 UTF8String];
    if (!v92)
    {
LABEL_295:
      __break(1u);
      goto LABEL_296;
    }

    v93 = String.init(utf8String:)(v92);
    if (v94)
    {
LABEL_105:
      v86 = v93;
      v88 = v94;

      goto LABEL_112;
    }

    __break(1u);
LABEL_104:
    LOWORD(v331[0]) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v93 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v94)
    {
      [(os_unfair_lock_s *)v84 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v86 = v336;
      v88 = v337;
      goto LABEL_112;
    }

    goto LABEL_105;
  }

  if (v85 != 2)
  {
LABEL_93:
    LOBYTE(v336) = 0;
    *&v346 = 0;
    LOBYTE(v331[0]) = 0;
    LOBYTE(v314) = 0;
    if (__CFStringIsCF())
    {
      if (v346)
      {
        if (v314 == 1)
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          v95 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_111:
          v86 = v95;
          v88 = v96;
          goto LABEL_112;
        }

LABEL_110:
        v95 = String.init(_cocoaString:)();
        goto LABEL_111;
      }
    }

    else
    {
      v89 = v84;
      v90 = String.init(_nativeStorage:)();
      if (v91)
      {
        v86 = v90;
        v88 = v91;

        goto LABEL_112;
      }

      *&v346 = [(os_unfair_lock_s *)v89 length];
      if (v346)
      {
        goto LABEL_110;
      }
    }

    v86 = 0;
    v88 = 0xE000000000000000;
    goto LABEL_112;
  }

  MEMORY[0x1EEE9AC00](v85);
  v86 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v88 = v87;

LABEL_112:
  if (v72 == v86 && v74 == v88)
  {

LABEL_116:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v98 = *v313;
      v99 = *(*v313 + 24);
      v100 = *(*v313 + 56);
      v359 = *(*v313 + 40);
      v360 = v100;
      v358 = v99;
      v101 = v98[9];
      v102 = v98[10];
      v103 = v98[11];
      v104 = v98[12];
      type metadata accessor for AttributedString.Guts();
      swift_allocObject();
      outlined init with copy of BigString(&v358, &v346);
      swift_unknownObjectRetain();
      *v313 = AttributedString.Guts.init(string:runs:)(&v358, v101, v102, v103, v104);
    }

    v105 = *v313;
    if (one-time initialization token for _nextVersion != -1)
    {
      swift_once();
    }

    *(v105 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v106 = *v313;
    v107 = *(*v313 + 40);
    v355 = *(*v313 + 24);
    v356 = v107;
    v357 = *(v106 + 56);
    v336 = v106;
    v337 = BigString.startIndex.getter();
    v338 = v108;
    v339 = v109;
    v340 = v110;
    v341 = BigString.endIndex.getter();
    v342 = v111;
    v343 = v112;
    v344 = v113;
    v345 = 0;

    outlined destroy of AttributedString.CharacterView(&v336);
    v114 = *v313;
    v314 = v308;
    *&v315 = v309;
    *(&v315 + 1) = v311;
    v316 = v310;
    v317 = v312;
    v115 = *(v114 + 40);
    v371 = *(v114 + 24);
    v372 = v115;
    v373 = *(v114 + 56);
    swift_unknownObjectRetain();

    BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    outlined destroy of BigSubstring.UnicodeScalarView(&v346);
    v116 = *&v349[16];
    v117 = *&v349[8];
    *&v312 = *&v349[32];
    *(&v312 + 1) = *&v349[24];
    *(&v310 + 1) = *(&v350 + 1);
    v311 = v350;
    v309 = *(&v351 + 1);
    *&v310 = v351;
    if (one-time initialization token for currentIdentity != -1)
    {
      swift_once();
    }

    v118 = static AttributedString.currentIdentity;
    os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
    v119 = *(v118 + 2);
    v120 = __OFADD__(v119, 1);
    v121 = v119 + 1;
    if (v120)
    {
      __break(1u);
    }

    else
    {
      *(&v308 + 1) = v121;
      *(v118 + 2) = v121;
      os_unfair_lock_unlock(v118 + 6);
      BigString.init()();
      *&v331[0] = 0;
      MEMORY[0x1865D26B0](v331, 8);
      v122 = *&v331[0];
      type metadata accessor for AttributedString.Guts();
      v123 = swift_allocObject();
      v118 = &v352;
      if (BigString.isEmpty.getter())
      {
        v124 = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v125 = v353;
        *(v123 + 24) = v352;
        *(v123 + 16) = v124;
        *(v123 + 40) = v125;
        *(v123 + 56) = v354;
        *(v123 + 72) = 0;
        *(v123 + 80) = 0;
        *(v123 + 88) = 0;
        *(v123 + 96) = v122;
        *(v123 + 104) = MEMORY[0x1E69E7CC0];
        *v313 = v123;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v126 = *(v114 + 40);
          v368 = *(v114 + 24);
          v369 = v126;
          v370 = *(v114 + 56);
          v127 = *(v114 + 72);
          v128 = *(v114 + 80);
          v129 = *(v114 + 88);
          v130 = *(v114 + 96);
          swift_allocObject();
          outlined init with copy of BigString(&v368, v331);
          swift_unknownObjectRetain();
          v131 = AttributedString.Guts.init(string:runs:)(&v368, v127, v128, v129, v130);

          v114 = v131;
        }

        v132 = *(v114 + 40);
        v365 = *(v114 + 24);
        v366 = v132;
        v367 = *(v114 + 56);
        swift_unknownObjectRetain();
        v307 = BigString.UnicodeScalarView.index(roundingDown:)();
        swift_unknownObjectRelease();
        v133 = *(v114 + 40);
        v362 = *(v114 + 24);
        v363 = v133;
        v364 = *(v114 + 56);
        swift_unknownObjectRetain();
        v134 = BigString.UnicodeScalarView.index(roundingDown:)();
        swift_unknownObjectRelease();
        specialized AttributedString._InternalRunsSlice.updateEach(with:)(v114, v307 >> 11, v134 >> 11);
        *v313 = v114;

        *&v331[0] = v114;
        *(&v331[0] + 1) = v117;
        *&v331[1] = v116;
        *(&v331[1] + 1) = *(&v312 + 1);
        *&v331[2] = v312;
        *(&v331[2] + 1) = v311;
        *&v331[3] = *(&v310 + 1);
        *(&v331[3] + 1) = v310;
        *&v331[4] = v309;
        *(&v331[4] + 1) = *(&v308 + 1);
        goto LABEL_190;
      }
    }

    __break(1u);
LABEL_284:
    swift_once();
LABEL_182:
    *(v118 + 2) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v171 = *v116;
    v172 = *(*v116 + 40);
    v368 = *(*v116 + 24);
    v369 = v172;
    v370 = *(v171 + 56);
    v173 = BigString.startIndex.getter();
    v175 = v174;
    v177 = v176;
    v179 = v178;
    v180 = BigString.endIndex.getter();
    v336 = v171;
    v337 = v173;
    v338 = v175;
    v339 = v177;
    v340 = v179;
    v341 = v180;
    v342 = v181;
    v343 = v182;
    v344 = v183;
    v345 = 0;

    outlined destroy of AttributedString.CharacterView(&v336);
    v184 = *v116;
    v314 = v308;
    *&v315 = v309;
    *(&v315 + 1) = v311;
    v316 = v310;
    v317 = v312;
    v185 = *(v184 + 40);
    v365 = *(v184 + 24);
    v366 = v185;
    v367 = *(v184 + 56);
    swift_unknownObjectRetain();

    BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    outlined destroy of BigSubstring.UnicodeScalarView(&v346);
    v323 = *&v349[8];
    v324 = *&v349[24];
    v325 = v350;
    v326 = v351;
    if (one-time initialization token for currentIdentity != -1)
    {
      swift_once();
    }

    v186 = static AttributedString.currentIdentity;
    os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
    v187 = *(v186 + 2);
    v188 = (v187 + 1);
    if (__OFADD__(v187, 1))
    {
      __break(1u);
    }

    else
    {
      *(v186 + 2) = v188;
      os_unfair_lock_unlock(v186 + 6);
      BigString.init()();
      *&v331[0] = 0;
      MEMORY[0x1865D26B0](v331, 8);
      v189 = *&v331[0];
      type metadata accessor for AttributedString.Guts();
      v190 = swift_allocObject();
      v186 = &v352;
      if (BigString.isEmpty.getter())
      {
        v191 = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v192 = v353;
        *(v190 + 24) = v352;
        *(v190 + 16) = v191;
        *(v190 + 40) = v192;
        *(v190 + 56) = v354;
        *(v190 + 72) = 0;
        *(v190 + 80) = 0;
        *(v190 + 88) = 0;
        *(v190 + 96) = v189;
        *(v190 + 104) = MEMORY[0x1E69E7CC0];
        *v313 = v190;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v193 = *(v184 + 40);
          v362 = *(v184 + 24);
          v363 = v193;
          v364 = *(v184 + 56);
          v194 = *(v184 + 72);
          v195 = *(v184 + 80);
          v196 = *(v184 + 88);
          v197 = *(v184 + 96);
          swift_allocObject();
          outlined init with copy of BigString(&v362, v331);
          swift_unknownObjectRetain();
          v198 = AttributedString.Guts.init(string:runs:)(&v362, v194, v195, v196, v197);

          v184 = v198;
        }

        v358 = v323;
        v359 = v324;
        v360 = v325;
        v361 = v326;
        AttributedString.Guts.unicodeScalarRange(roundingDown:)(&v355);
        specialized AttributedString._InternalRunsSlice.updateEach(with:)(v184, v355 >> 11, v357 >> 11);
        *v313 = v184;

        *(v331 + 8) = v323;
        *(&v331[1] + 8) = v324;
        v199 = v325;
        v200 = v326;
        goto LABEL_189;
      }
    }

    __break(1u);
    goto LABEL_287;
  }

  v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v97)
  {
    goto LABEL_116;
  }

  v135 = _objc_isTaggedPointer(@"NSInflectionAgreementArgument");
  v136 = @"NSInflectionAgreementArgument";
  v137 = v136;
  if (!v135)
  {
    goto LABEL_132;
  }

  v138 = _objc_getTaggedPointerTag(v136);
  switch(v138)
  {
    case 0:
      goto LABEL_143;
    case 0x16:
      v145 = [(__CFString *)v137 UTF8String];
      if (!v145)
      {
LABEL_296:
        __break(1u);
        goto LABEL_297;
      }

      v146 = String.init(utf8String:)(v145);
      if (v147)
      {
        goto LABEL_144;
      }

      __break(1u);
LABEL_143:
      LOWORD(v331[0]) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v146 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v147)
      {
        [(__CFString *)v137 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v139 = v336;
        v141 = v337;
        goto LABEL_151;
      }

LABEL_144:
      v139 = v146;
      v141 = v147;

      goto LABEL_151;
    case 2:
      MEMORY[0x1EEE9AC00](v138);
      v139 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v141 = v140;

      goto LABEL_151;
  }

LABEL_132:
  LOBYTE(v336) = 0;
  *&v346 = 0;
  LOBYTE(v331[0]) = 0;
  LOBYTE(v314) = 0;
  if (!__CFStringIsCF())
  {
    v142 = v137;
    v143 = String.init(_nativeStorage:)();
    if (v144)
    {
      v139 = v143;
      v141 = v144;

      goto LABEL_151;
    }

    *&v346 = [(__CFString *)v142 length];
    if (v346)
    {
      goto LABEL_149;
    }

LABEL_139:
    v139 = 0;
    v141 = 0xE000000000000000;
    goto LABEL_151;
  }

  if (!v346)
  {

    goto LABEL_139;
  }

  if (v314 != 1)
  {
LABEL_149:
    v148 = String.init(_cocoaString:)();
    goto LABEL_150;
  }

  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  v148 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_150:
  v139 = v148;
  v141 = v149;
LABEL_151:
  v150 = v84;
  v54 = v150;
  if (!v25)
  {
    goto LABEL_156;
  }

  v151 = _objc_getTaggedPointerTag(v150);
  if (!v151)
  {
    goto LABEL_167;
  }

  if (v151 == 22)
  {
    v158 = [(os_unfair_lock_s *)v54 UTF8String];
    if (!v158)
    {
LABEL_297:
      __break(1u);
      goto LABEL_298;
    }

    v159 = String.init(utf8String:)(v158);
    if (v160)
    {
LABEL_168:
      v152 = v159;
      v154 = v160;

      goto LABEL_175;
    }

    __break(1u);
LABEL_167:
    LOWORD(v331[0]) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v159 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v160)
    {
      [(os_unfair_lock_s *)v54 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v152 = v336;
      v154 = v337;
      goto LABEL_175;
    }

    goto LABEL_168;
  }

  if (v151 != 2)
  {
LABEL_156:
    LOBYTE(v336) = 0;
    *&v346 = 0;
    LOBYTE(v331[0]) = 0;
    LOBYTE(v314) = 0;
    if (__CFStringIsCF())
    {
      if (v346)
      {
        if (v314 == 1)
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          v161 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_174:
          v152 = v161;
          v154 = v162;
          goto LABEL_175;
        }

LABEL_173:
        v161 = String.init(_cocoaString:)();
        goto LABEL_174;
      }
    }

    else
    {
      v155 = v54;
      v156 = String.init(_nativeStorage:)();
      if (v157)
      {
        v152 = v156;
        v154 = v157;

        goto LABEL_175;
      }

      *&v346 = [(os_unfair_lock_s *)v155 length];
      if (v346)
      {
        goto LABEL_173;
      }
    }

    v152 = 0;
    v154 = 0xE000000000000000;
    goto LABEL_175;
  }

  MEMORY[0x1EEE9AC00](v151);
  v152 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v154 = v153;

LABEL_175:
  if (v139 == v152 && v141 == v154)
  {

    goto LABEL_179;
  }

  v163 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v163)
  {
LABEL_179:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v164 = *v313;
      v165 = *(*v313 + 24);
      v166 = *(*v313 + 56);
      v372 = *(*v313 + 40);
      v373 = v166;
      v371 = v165;
      v167 = v164[9];
      v168 = v164[10];
      v169 = v164[11];
      v170 = v164[12];
      type metadata accessor for AttributedString.Guts();
      swift_allocObject();
      outlined init with copy of BigString(&v371, &v346);
      swift_unknownObjectRetain();
      *v313 = AttributedString.Guts.init(string:runs:)(&v371, v167, v168, v169, v170);
    }

    v118 = *v313;
    v116 = v313;
    if (one-time initialization token for _nextVersion == -1)
    {
      goto LABEL_182;
    }

    goto LABEL_284;
  }

  v201 = _objc_isTaggedPointer(@"NSInflectionReferentConcept");
  v202 = @"NSInflectionReferentConcept";
  v203 = v202;
  v41 = v313;
  if (v201)
  {
    v204 = _objc_getTaggedPointerTag(v202);
    if (v204)
    {
      if (v204 != 22)
      {
        if (v204 == 2)
        {
          MEMORY[0x1EEE9AC00](v204);
          v205 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v207 = v206;

          goto LABEL_219;
        }

        goto LABEL_198;
      }

      v211 = [(__CFString *)v203 UTF8String];
      if (!v211)
      {
LABEL_298:
        __break(1u);
        goto LABEL_299;
      }

      v212 = String.init(utf8String:)(v211);
      if (v213)
      {
LABEL_210:
        v205 = v212;
        v207 = v213;

        goto LABEL_219;
      }

      __break(1u);
    }

    LOWORD(v331[0]) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v212 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v213)
    {
      [(__CFString *)v203 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v205 = v336;
      v207 = v337;
      goto LABEL_219;
    }

    goto LABEL_210;
  }

LABEL_198:
  LOBYTE(v336) = 0;
  *&v346 = 0;
  LOBYTE(v331[0]) = 0;
  LOBYTE(v314) = 0;
  if (!__CFStringIsCF())
  {
    v208 = v203;
    v209 = String.init(_nativeStorage:)();
    if (v210)
    {
      v205 = v209;
      v207 = v210;

      goto LABEL_219;
    }

    *&v346 = [(__CFString *)v208 length];
    if (v346)
    {
      goto LABEL_217;
    }

LABEL_205:
    v205 = 0;
    v207 = 0xE000000000000000;
    goto LABEL_219;
  }

  if (!v346)
  {

    goto LABEL_205;
  }

  if (v314 != 1)
  {
LABEL_217:
    v214 = String.init(_cocoaString:)();
    goto LABEL_218;
  }

  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  v214 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_218:
  v205 = v214;
  v207 = v215;
LABEL_219:
  v216 = v54;
  v217 = v216;
  if (!v25)
  {
    goto LABEL_224;
  }

  v218 = _objc_getTaggedPointerTag(v216);
  switch(v218)
  {
    case 0:
      goto LABEL_235;
    case 0x16:
      v226 = [v217 UTF8String];
      if (!v226)
      {
LABEL_299:
        __break(1u);
        goto LABEL_300;
      }

      v227 = String.init(utf8String:)(v226);
      if (v228)
      {
        goto LABEL_236;
      }

      __break(1u);
LABEL_235:
      LOWORD(v331[0]) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v227 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v228)
      {
        [v217 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v219 = v336;
        v221 = v337;
        goto LABEL_253;
      }

LABEL_236:
      v219 = v227;
      v221 = v228;

      goto LABEL_253;
    case 2:
      MEMORY[0x1EEE9AC00](v218);
      v219 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v221 = v220;

      goto LABEL_253;
  }

LABEL_224:
  LOBYTE(v336) = 0;
  *&v346 = 0;
  LOBYTE(v331[0]) = 0;
  LOBYTE(v314) = 0;
  IsCF = __CFStringIsCF();
  if (IsCF)
  {
    v219 = v346;
    if (!v346)
    {

      v221 = 0xE000000000000000;
      goto LABEL_253;
    }

    if (v314 == 1)
    {
      if (v336)
      {
        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
      }

      else
      {
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
      }

      v229 = String.init<A>(_immortalCocoaString:count:encoding:)();
      goto LABEL_252;
    }

    if (v331[0])
    {
      if (v336 != 1)
      {
        IsCF = [v217 lengthOfBytesUsingEncoding_];
      }

      MEMORY[0x1EEE9AC00](IsCF);
      v231 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v221 = v232;
      v233 = HIBYTE(v232) & 0xF;
      if ((v232 & 0x2000000000000000) == 0)
      {
        v233 = v231 & 0xFFFFFFFFFFFFLL;
      }

      if (v233)
      {
        v219 = v231;

        goto LABEL_253;
      }
    }
  }

  else
  {
    v223 = v217;
    v224 = String.init(_nativeStorage:)();
    if (v225)
    {
      v219 = v224;
      v221 = v225;

      goto LABEL_253;
    }

    *&v346 = [v223 length];
    if (!v346)
    {

      v219 = 0;
      v221 = 0xE000000000000000;
      goto LABEL_253;
    }
  }

  v229 = String.init(_cocoaString:)();
LABEL_252:
  v219 = v229;
  v221 = v230;
LABEL_253:
  if (v205 == v219 && v207 == v221)
  {

    goto LABEL_257;
  }

  v234 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v234)
  {
LABEL_257:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v235 = *v41;
      v236 = *(*v41 + 24);
      v237 = *(*v41 + 56);
      v372 = *(*v41 + 40);
      v373 = v237;
      v371 = v236;
      v238 = v235[9];
      v239 = v235[10];
      v240 = v235[11];
      v241 = v235[12];
      type metadata accessor for AttributedString.Guts();
      swift_allocObject();
      outlined init with copy of BigString(&v371, &v346);
      swift_unknownObjectRetain();
      *v41 = AttributedString.Guts.init(string:runs:)(&v371, v238, v239, v240, v241);
    }

    v186 = *v41;
    v188 = v41;
    if (one-time initialization token for _nextVersion == -1)
    {
LABEL_260:
      *(v186 + 2) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
      v242 = *v188;
      v243 = *(*v188 + 40);
      v368 = *(*v188 + 24);
      v369 = v243;
      v370 = *(v242 + 56);
      v244 = BigString.startIndex.getter();
      v246 = v245;
      v248 = v247;
      v250 = v249;
      v251 = BigString.endIndex.getter();
      v336 = v242;
      v337 = v244;
      v338 = v246;
      v339 = v248;
      v340 = v250;
      v341 = v251;
      v342 = v252;
      v343 = v253;
      v344 = v254;
      v345 = 0;

      outlined destroy of AttributedString.CharacterView(&v336);
      v184 = *v188;
      v314 = v308;
      *&v315 = v309;
      *(&v315 + 1) = v311;
      v316 = v310;
      v317 = v312;
      v255 = *(v184 + 40);
      v365 = *(v184 + 24);
      v366 = v255;
      v367 = *(v184 + 56);
      swift_unknownObjectRetain();

      BigString.UnicodeScalarView.subscript.getter();
      swift_unknownObjectRelease();
      outlined destroy of BigSubstring.UnicodeScalarView(&v346);
      v327 = *&v349[8];
      v328 = *&v349[24];
      v329 = v350;
      v330 = v351;
      if (one-time initialization token for currentIdentity != -1)
      {
        swift_once();
      }

      v256 = static AttributedString.currentIdentity;
      os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
      v257 = *(v256 + 16);
      v188 = (v257 + 1);
      if (__OFADD__(v257, 1))
      {
        __break(1u);
      }

      else
      {
        *(v256 + 16) = v188;
        os_unfair_lock_unlock((v256 + 24));
        BigString.init()();
        *&v331[0] = 0;
        MEMORY[0x1865D26B0](v331, 8);
        v258 = *&v331[0];
        type metadata accessor for AttributedString.Guts();
        v259 = swift_allocObject();
        if (BigString.isEmpty.getter())
        {
          v260 = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
          v261 = v353;
          *(v259 + 24) = v352;
          *(v259 + 16) = v260;
          *(v259 + 40) = v261;
          *(v259 + 56) = v354;
          *(v259 + 72) = 0;
          *(v259 + 80) = 0;
          *(v259 + 88) = 0;
          *(v259 + 96) = v258;
          *(v259 + 104) = MEMORY[0x1E69E7CC0];
          *v313 = v259;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v262 = *(v184 + 40);
            v362 = *(v184 + 24);
            v363 = v262;
            v364 = *(v184 + 56);
            v263 = *(v184 + 72);
            v264 = *(v184 + 80);
            v265 = *(v184 + 88);
            v266 = *(v184 + 96);
            swift_allocObject();
            outlined init with copy of BigString(&v362, v331);
            swift_unknownObjectRetain();
            v267 = AttributedString.Guts.init(string:runs:)(&v362, v263, v264, v265, v266);

            v184 = v267;
          }

          v358 = v327;
          v359 = v328;
          v360 = v329;
          v361 = v330;
          AttributedString.Guts.unicodeScalarRange(roundingDown:)(&v355);
          specialized AttributedString._InternalRunsSlice.updateEach(with:)(v184, v355 >> 11, v357 >> 11);
          *v313 = v184;

          *(v331 + 8) = v327;
          *(&v331[1] + 8) = v328;
          v199 = v329;
          v200 = v330;
LABEL_189:
          *(&v331[2] + 8) = v199;
          *(&v331[3] + 8) = v200;
          *&v331[0] = v184;
          *(&v331[4] + 1) = v188;
LABEL_190:
          v67 = v331;
          return outlined destroy of AttributedSubstring(v67);
        }
      }

      __break(1u);
    }

LABEL_287:
    swift_once();
    goto LABEL_260;
  }

  v268 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSLocalizedNumberFormat");
  v270 = v269;
  if (v268 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v270 == v271)
  {

LABEL_271:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v273 = *v41;
      v274 = *(*v41 + 24);
      v275 = *(*v41 + 56);
      v372 = *(*v41 + 40);
      v373 = v275;
      v371 = v274;
      v276 = v273[9];
      v277 = v273[10];
      v278 = v273[11];
      v279 = v273[12];
      type metadata accessor for AttributedString.Guts();
      swift_allocObject();
      outlined init with copy of BigString(&v371, &v346);
      swift_unknownObjectRetain();
      *v41 = AttributedString.Guts.init(string:runs:)(&v371, v276, v277, v278, v279);
    }

    v280 = *v41;
    if (one-time initialization token for _nextVersion != -1)
    {
      swift_once();
    }

    *(v280 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v281 = *v41;
    v282 = *(*v41 + 40);
    v368 = *(*v41 + 24);
    v369 = v282;
    v370 = *(v281 + 56);
    v283 = BigString.startIndex.getter();
    v285 = v284;
    v287 = v286;
    v289 = v288;
    v290 = BigString.endIndex.getter();
    v336 = v281;
    v337 = v283;
    v338 = v285;
    v339 = v287;
    v340 = v289;
    v341 = v290;
    v342 = v291;
    v343 = v292;
    v344 = v293;
    v345 = 0;

    outlined destroy of AttributedString.CharacterView(&v336);
    v184 = *v41;
    v314 = v308;
    *&v315 = v309;
    *(&v315 + 1) = v311;
    v316 = v310;
    v317 = v312;
    v294 = *(v184 + 40);
    v365 = *(v184 + 24);
    v366 = v294;
    v367 = *(v184 + 56);
    swift_unknownObjectRetain();

    BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    outlined destroy of BigSubstring.UnicodeScalarView(&v346);
    v332 = *&v349[8];
    v333 = *&v349[24];
    v334 = v350;
    v335 = v351;
    if (one-time initialization token for currentIdentity != -1)
    {
      swift_once();
    }

    v295 = static AttributedString.currentIdentity;
    os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
    v296 = *(v295 + 16);
    v188 = (v296 + 1);
    if (__OFADD__(v296, 1))
    {
      __break(1u);
    }

    else
    {
      *(v295 + 16) = v188;
      os_unfair_lock_unlock((v295 + 24));
      BigString.init()();
      *&v331[0] = 0;
      MEMORY[0x1865D26B0](v331, 8);
      v297 = *&v331[0];
      type metadata accessor for AttributedString.Guts();
      v298 = swift_allocObject();
      if (BigString.isEmpty.getter())
      {
        v299 = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v300 = v353;
        *(v298 + 24) = v352;
        *(v298 + 16) = v299;
        *(v298 + 40) = v300;
        *(v298 + 56) = v354;
        *(v298 + 72) = 0;
        *(v298 + 80) = 0;
        *(v298 + 88) = 0;
        *(v298 + 96) = v297;
        *(v298 + 104) = MEMORY[0x1E69E7CC0];
        *v313 = v298;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v301 = *(v184 + 40);
          v362 = *(v184 + 24);
          v363 = v301;
          v364 = *(v184 + 56);
          v302 = *(v184 + 72);
          v303 = *(v184 + 80);
          v304 = *(v184 + 88);
          v305 = *(v184 + 96);
          swift_allocObject();
          outlined init with copy of BigString(&v362, v331);
          swift_unknownObjectRetain();
          v306 = AttributedString.Guts.init(string:runs:)(&v362, v302, v303, v304, v305);

          v184 = v306;
        }

        v358 = v332;
        v359 = v333;
        v360 = v334;
        v361 = v335;
        AttributedString.Guts.unicodeScalarRange(roundingDown:)(&v355);
        specialized AttributedString._InternalRunsSlice.updateEach(with:)(v184, v355 >> 11, v357 >> 11);
        *v313 = v184;

        *(v331 + 8) = v332;
        *(&v331[1] + 8) = v333;
        v199 = v334;
        v200 = v335;
        goto LABEL_189;
      }
    }

    __break(1u);
    goto LABEL_292;
  }

  v272 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v272)
  {
    goto LABEL_271;
  }

  return result;
}