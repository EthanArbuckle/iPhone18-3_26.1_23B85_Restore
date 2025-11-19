uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v317 = a3;
  v333 = a2;
  v301 = a1;
  v415 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v360 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v301 - v6;
  v328 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v328);
  v9 = (&v301 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v340 = type metadata accessor for AttributedString.Runs.NSAttributesSlice(0);
  MEMORY[0x1EEE9AC00](v340);
  v11 = (&v301 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v361 = type metadata accessor for AttributedString.Runs.NSAttributesSlice.Iterator(0);
  MEMORY[0x1EEE9AC00](v361);
  v344 = &v301 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v335 = (&v301 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v310 = &v301 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v311 = &v301 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v301 - v20;
  v362 = v4;
  _s10Foundation16AttributedStringV4RunsV17NSAttributesSliceVWOcTm_0(v4, v11, type metadata accessor for AttributedString.Runs.NSAttributesSlice);
  _s10Foundation16AttributedStringV4RunsV17NSAttributesSliceVWOcTm_0(v11, v21, type metadata accessor for AttributedString.Runs.NSAttributesSlice);
  v22 = v11[12];
  if (v22 == 2)
  {
    goto LABEL_274;
  }

  v23 = v11[10];
  v349 = v11[9];
  v24 = v11[11];
  outlined destroy of AttributedString.Runs.NSAttributesSlice(v362, type metadata accessor for AttributedString.Runs.NSAttributesSlice);
  v362 = *(*v11 + 16);
  v25 = v349;
  outlined destroy of AttributedString.Runs.NSAttributesSlice(v11, type metadata accessor for AttributedString.Runs.NSAttributesSlice);
  v26 = v362;
  v27 = &v21[*(v361 + 20)];
  *v27 = v25;
  v27[1] = v23;
  v28 = v23;
  v342 = v24;
  v343 = v22;
  v27[2] = v24;
  v27[3] = v22;
  v27[4] = v26;
  v29 = v333;
  v30 = v21;
  if (!v333)
  {
    v31 = 0;
    goto LABEL_240;
  }

  v31 = v317;
  if (!v317)
  {
LABEL_240:
    outlined init with take of AttributedString.Runs.NSAttributesSlice.Iterator(v30, v301);
    return v31;
  }

  if (v317 < 0)
  {
LABEL_266:
    __break(1u);
    goto LABEL_267;
  }

  v302 = v27;
  v31 = 0;
  v350 = 0;
  v362 = v360 + 8;
  v32 = 1;
  v33 = v28;
  v334 = v5;
  v330 = v7;
  v337 = v9;
  v338 = v21;
  while (1)
  {
    v333 = v29;
    v323 = v32;
    v34 = v311;
    _s10Foundation16AttributedStringV4RunsV17NSAttributesSliceVWOcTm_0(v30, v311, type metadata accessor for AttributedString.Runs.NSAttributesSlice.Iterator);
    if (*(v34 + 208) == 2)
    {
      goto LABEL_273;
    }

    v35 = v34;
    v36 = *(v34 + 184);
    outlined destroy of AttributedString.Runs.NSAttributesSlice(v35, type metadata accessor for AttributedString.Runs.NSAttributesSlice);
    *&v359 = v25 >> 10;
    v30 = v338;
    if (v25 >> 10 == v36 >> 10)
    {
      goto LABEL_240;
    }

    v348 = v33;
    v349 = v25;
    v37 = v310;
    _s10Foundation16AttributedStringV4RunsV17NSAttributesSliceVWOcTm_0(v338, v310, type metadata accessor for AttributedString.Runs.NSAttributesSlice.Iterator);
    _s10Foundation16AttributedStringV4RunsV17NSAttributesSliceVWOcTm_0(v37, v9, type metadata accessor for AttributedString.Runs);
    outlined destroy of AttributedString.Runs.NSAttributesSlice(v37, type metadata accessor for AttributedString.Runs.NSAttributesSlice);
    v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
    RangeSet.ranges.getter();
    v31 = RangeSet.Ranges.count.getter();
    v360 = *v362;
    (v360)(v7, v5);
    if (v31 < 1)
    {
LABEL_241:
      __break(1u);
LABEL_242:
      __break(1u);
LABEL_243:
      __break(1u);
LABEL_244:
      __break(1u);
LABEL_245:
      v30 = v338;
      goto LABEL_240;
    }

    v38 = 0;
    while (1)
    {
      if (__OFADD__(v38, v31))
      {
        goto LABEL_243;
      }

      v39 = (v38 + v31) / 2;
      RangeSet.ranges.getter();
      RangeSet.Ranges.subscript.getter();
      (v360)(v7, v5);
      if (v359 >= v371 >> 10)
      {
        break;
      }

LABEL_10:
      v31 = v39;
      if (v38 >= v39)
      {
        goto LABEL_241;
      }
    }

    v40 = v373;
    if (v359 >= v373 >> 10)
    {
      v38 = v39 + 1;
      v39 = v31;
      goto LABEL_10;
    }

    v41 = *v9;
    v42 = v349;
    AttributedString.Guts.findRun(at:)(v349, v343, &v371);
    *&v357 = *(&v371 + 1);
    v43 = v371;
    v44 = v372;
    v358 = *(&v373 + 1);
    v46 = *(v41 + 72);
    v45 = *(v41 + 80);
    v47 = *(v41 + 88);
    v48 = *(v41 + 96);
    swift_unknownObjectRetain();
    v49 = specialized Rope.subscript.getter(v43, v357, v44, v46, v45, v47, v48);
    v347 = v50;
    v52 = v51;
    swift_unknownObjectRelease();
    v53 = v49 + (v358 >> 11);
    if (__OFADD__(v49, v358 >> 11))
    {
      goto LABEL_252;
    }

    if ((v40 >> 11) < v53)
    {
      v53 = v40 >> 11;
    }

    v412 = *(v41 + 24);
    v413 = *(v41 + 40);
    v414 = *(v41 + 56);
    v5 = v334;
    v54 = v330;
    if (__OFSUB__(v53, v42 >> 11))
    {
      goto LABEL_253;
    }

    v318 = v52;
    v329 = v41;
    swift_unknownObjectRetain();
    v55 = v343;
    BigString.UTF8View.index(_:offsetBy:)();
    swift_unknownObjectRelease();

    outlined destroy of AttributedString.Runs.NSAttributesSlice(v337, type metadata accessor for AttributedString.Runs);
    v56 = v42;
    v57 = v335;
    _s10Foundation16AttributedStringV4RunsV17NSAttributesSliceVWOcTm_0(v338, v335, type metadata accessor for AttributedString.Runs.NSAttributesSlice.Iterator);
    v352 = *(v57 + *(v340 + 20));
    v351 = *(v352 + 16);
    if (!v351)
    {
      goto LABEL_254;
    }

    v336 = *v57;
    AttributedString.Guts.findRun(at:)(v56, v55, &v371);
    v341 = *(&v371 + 1);
    v358 = *(&v372 + 1);
    v339 = v372;
    v331 = v371;
    v332 = v373;
    v321 = v374;
    v322 = *(&v373 + 1);
    v319 = v375;
    v320 = *(&v374 + 1);
    v58 = *(v328 + 24);
    RangeSet.ranges.getter();
    v31 = RangeSet.Ranges.count.getter();
    (v360)(v54, v5);
    v59 = v359;
    if (v31 < 1)
    {
      goto LABEL_242;
    }

    v60 = 0;
    while (2)
    {
      if (__OFADD__(v60, v31))
      {
        goto LABEL_244;
      }

      RangeSet.ranges.getter();
      RangeSet.Ranges.subscript.getter();
      (v360)(v54, v5);
      v61 = (v60 + v31) / 2;
      if (v59 < v371 >> 10)
      {
        goto LABEL_23;
      }

      v62 = v373 >> 10;
      if (v59 >= v373 >> 10)
      {
        v60 = v61 + 1;
        v61 = v31;
LABEL_23:
        v31 = v61;
        if (v60 >= v61)
        {
          goto LABEL_242;
        }

        continue;
      }

      break;
    }

    v315 = v373;
    v313 = v374;
    v314 = *(&v373 + 1);
    v312 = *(&v374 + 1);
    v63 = v57[15];
    v64 = v336;
    v306 = v58;
    v303 = v61;
    v325 = v373 >> 10;
    if (v358 == v63)
    {
      v65 = v57[22];
      if (v57[26] == 2)
      {
        if (v65 != 2)
        {
LABEL_88:
          v327 = v331;
          goto LABEL_94;
        }
      }

      else if (v65 == 2 || (v57[19] ^ v57[23]) >= 1024)
      {
        goto LABEL_88;
      }
    }

    if (v358 >= v63)
    {
      goto LABEL_263;
    }

    v309 = v63;
    v66 = v336[9];
    v67 = v336[10];
    v68 = v336[11];
    v69 = v336[12];
    swift_unknownObjectRetain();
    v70 = v331;
    v71 = v341;
    v72 = v339;
    specialized Rope.subscript.getter(v331, v341, v339, v66, v67, v68, v69);
    v74 = v73;
    v307 = v75;
    swift_unknownObjectRelease();
    v76 = v72;
    v77 = v64[9];
    v78 = v64[10];
    v79 = v64[12];
    *&v371 = v70;
    *(&v371 + 1) = v71;
    v80 = (v358 + 1);
    v308 = (v352 + 40);
    *&v372 = v72;
    v345 = v74;
    while (2)
    {
      if (v70 != v79)
      {
        goto LABEL_255;
      }

      v326 = v80;
      v327 = v79;
      v339 = v76;
      v358 = v78;
      if (v76)
      {
        v81 = *(v76 + 24 * ((v341 >> ((4 * *(v76 + 18) + 8) & 0x3C)) & 0xF) + 24);
        swift_unknownObjectRetain();
      }

      else
      {
        swift_unknownObjectRetain();
        v81 = specialized Rope._Node.subscript.getter(v341, v77);
      }

      if (__OFADD__(v332, v81))
      {
        goto LABEL_256;
      }

      if (v77)
      {
        v82 = ((-15 << ((4 * *(v77 + 18) + 8) & 0x3C)) - 1) & *(v77 + 18) | (*(v77 + 16) << ((4 * *(v77 + 18) + 8) & 0x3C));
      }

      else
      {
        v82 = 0;
      }

      v83 = v335;
      if (v341 >= v82)
      {
        goto LABEL_257;
      }

      v305 = v332 + v81;
      if (v339)
      {
        v84 = (4 * *(v339 + 18) + 8) & 0x3C;
        v85 = ((v341 >> v84) & 0xF) + 1;
        if (v85 < *(v339 + 16))
        {
          v324 = (v85 << v84) | ((-15 << v84) - 1) & v341;
          swift_unknownObjectRelease();
          goto LABEL_49;
        }
      }

      if (specialized Rope._Node.formSuccessor(of:)(&v371, v77))
      {
        swift_unknownObjectRelease();
        v324 = *(&v371 + 1);
LABEL_49:
        v86 = v372;
        v87 = v371;
      }

      else
      {
        if (v77)
        {
          v88 = *(v77 + 18);
          v89 = *(v77 + 16);
          swift_unknownObjectRelease();
          v86 = 0;
          v90 = (4 * v88 + 8) & 0x3C;
          v91 = ((-15 << v90) - 1) & v88;
          v92 = v89 << v90;
          v64 = v336;
          v324 = v91 | v92;
        }

        else
        {
          v324 = 0;
          v86 = 0;
        }

        v87 = v327;
      }

      if (v309 < v326)
      {
        goto LABEL_221;
      }

      if (v326 == v309)
      {
        v93 = v83[22];
        if (v83[26] == 2)
        {
          if (v93 == 2)
          {
            goto LABEL_221;
          }
        }

        else if (v93 != 2 && (v83[19] ^ v83[23]) < 1024)
        {
LABEL_221:

          goto LABEL_93;
        }
      }

      if (v87 != v64[12])
      {
        goto LABEL_258;
      }

      v331 = v87;
      v304 = v86;
      if (v86)
      {
        v94 = v86 + 24 * ((v324 >> ((4 * *(v86 + 18) + 8) & 0x3C)) & 0xF);
        v96 = *(v94 + 32);
        v95 = *(v94 + 40);

        v316 = v95;
      }

      else
      {
        v97 = v64[9];
        swift_unknownObjectRetain();
        specialized Rope._Node.subscript.getter(v324, v97);
        v96 = v98;
        v316 = v99;
        swift_unknownObjectRelease();
      }

      v100 = 0;
      v101 = v308;
      v346 = v96;
LABEL_69:
      if (v100 >= *(v352 + 16))
      {
        goto LABEL_247;
      }

      v103 = *(v101 - 1);
      v102 = *v101;
      if (*(v74 + 16))
      {

        v104 = specialized __RawDictionaryStorage.find<A>(_:)(v103, v102);
        if (v105)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v74 + 56) + 72 * v104, &v382);
          if (!*(v96 + 16))
          {
LABEL_78:

LABEL_79:
            memset(v381, 0, 72);
            goto LABEL_80;
          }
        }

        else
        {
          v386 = 0;
          v384 = 0u;
          v385 = 0u;
          v382 = 0u;
          v383 = 0u;
          if (!*(v96 + 16))
          {
            goto LABEL_78;
          }
        }
      }

      else
      {
        v386 = 0;
        v384 = 0u;
        v385 = 0u;
        v382 = 0u;
        v383 = 0u;

        if (!*(v96 + 16))
        {
          goto LABEL_78;
        }
      }

      v106 = specialized __RawDictionaryStorage.find<A>(_:)(v103, v102);
      v108 = v107;

      if ((v108 & 1) == 0)
      {
        goto LABEL_79;
      }

      outlined init with copy of AttributedString._AttributeValue(*(v96 + 56) + 72 * v106, v381);
LABEL_80:
      outlined init with copy of AttributedString._AttributeValue?(&v382, &v371);
      outlined init with copy of AttributedString._AttributeValue?(v381, &v376);
      if (!*(&v372 + 1))
      {
        outlined destroy of TermOfAddress?(v381, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v382, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (*(&v377 + 1))
        {
          goto LABEL_90;
        }

        outlined destroy of TermOfAddress?(&v371, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        goto LABEL_68;
      }

      outlined init with copy of AttributedString._AttributeValue?(&v371, v368);
      if (*(&v377 + 1))
      {
        v355 = v101;
        v356 = v100;
        v365 = v378;
        v366 = v379;
        v367 = v380;
        v363 = v376;
        v364 = v377;
        v109 = v369;
        v354 = v370;
        v353 = __swift_project_boxed_opaque_existential_1(v368, v369);
        v110 = __swift_project_boxed_opaque_existential_1(&v363, *(&v364 + 1));
        v358 = &v301;
        v111 = *(v109 - 8);
        MEMORY[0x1EEE9AC00](v110);
        v113 = &v301 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
        *&v357 = &v301;
        v115 = MEMORY[0x1EEE9AC00](v114);
        (*(v117 + 16))(&v301 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0), v115);
        v118 = type metadata accessor for Optional();
        v119 = *(v118 - 8);
        MEMORY[0x1EEE9AC00](v118);
        v121 = &v301 - v120;
        v122 = swift_dynamicCast();
        v123 = *(v111 + 56);
        if (!v122)
        {
          v123(v121, 1, 1, v109);
          outlined destroy of TermOfAddress?(v381, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v382, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          (*(v119 + 8))(v121, v118);
          outlined destroy of AttributedString._AttributeValue(&v363);
          outlined destroy of AttributedString._AttributeValue(v368);
          outlined destroy of TermOfAddress?(&v371, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          goto LABEL_92;
        }

        v123(v121, 0, 1, v109);
        (*(v111 + 32))(v113, v121, v109);
        v124 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v111 + 8))(v113, v109);
        outlined destroy of TermOfAddress?(v381, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v382, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v363);
        outlined destroy of AttributedString._AttributeValue(v368);
        outlined destroy of TermOfAddress?(&v371, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v74 = v345;
        v96 = v346;
        v101 = v355;
        v100 = v356;
        if ((v124 & 1) == 0)
        {
          goto LABEL_92;
        }

LABEL_68:
        v100 = (v100 + 1);
        v101 += 2;
        if (v351 == v100)
        {

          v64 = v336;
          v77 = v336[9];
          v78 = v336[10];
          v79 = v336[12];
          v332 = v305;
          v70 = v331;
          *&v371 = v331;
          *(&v371 + 1) = v324;
          v76 = v304;
          v341 = v324;
          *&v372 = v304;
          v80 = v326 + 1;
          v5 = v334;
          if (__OFADD__(v326, 1))
          {
            goto LABEL_265;
          }

          continue;
        }

        goto LABEL_69;
      }

      break;
    }

    outlined destroy of TermOfAddress?(v381, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of TermOfAddress?(&v382, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of AttributedString._AttributeValue(v368);
LABEL_90:
    outlined destroy of TermOfAddress?(&v371, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_92:

    v5 = v334;
    v64 = v336;
LABEL_93:
    v62 = v325;
LABEL_94:
    v125 = v64[9];
    v126 = v64[10];
    v127 = v64[11];
    v128 = v64[12];
    swift_unknownObjectRetain();
    v129 = specialized Rope.subscript.getter(v327, v341, v339, v125, v126, v127, v128);
    swift_unknownObjectRelease();

    if (__OFADD__(v332, v129))
    {
      goto LABEL_259;
    }

    v409 = *(v64 + 3);
    v410 = *(v64 + 5);
    v411 = *(v64 + 7);
    if (__OFSUB__(v332 + v129, v322 >> 11))
    {
      goto LABEL_260;
    }

    swift_unknownObjectRetain();
    v130 = BigString.UTF8View.index(_:offsetBy:)();
    v358 = v131;
    v356 = v133;
    *&v357 = v132;
    swift_unknownObjectRelease();
    v134 = v130 >> 10;
    v135 = v64[3];
    v136 = v64[5];
    v137 = v64[6];
    v353 = v64[4];
    v354 = v136;
    v138 = v64[7];
    v139 = v64[8];
    if (v130 >> 10 >= v62)
    {
      v358 = v137;
      v352 = v138;
      v142 = v348;
      v408[8] = v349;
      v408[9] = v348;
      v144 = v342;
      v143 = v343;
      v408[10] = v342;
      v408[11] = v343;
      v145 = v314;
      v25 = v315;
      v408[12] = v315;
      v408[13] = v314;
      v146 = v139;
      v147 = v313;
      v408[14] = v313;
      v355 = v135;
      v148 = v312;
      v408[15] = v312;
      swift_unknownObjectRetain();
      v149 = specialized Set.contains(_:)(0, 0, MEMORY[0x1E69E7CD0]);
      v150 = v147;
      v151 = v146;
      v152 = v148;
      v153 = v355;
      if ((v149 & 1) == 0)
      {
        goto LABEL_104;
      }

      v408[16] = v355;
      v408[17] = v353;
      v408[18] = v354;
      v408[19] = v358;
      v408[20] = v352;
      v408[21] = v151;
      BigString.UTF8View.subscript.getter();
      v408[0] = v349;
      v408[1] = v142;
      v408[2] = v144;
      v408[3] = v143;
      v408[4] = v349;
      v408[5] = v142;
      v408[6] = v144;
      v408[7] = v143;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, v408, &v371);
      outlined destroy of BigSubstring.UTF8View(&v390);
      v145 = v314;
      v25 = v315;
      v152 = v312;
      v150 = v313;
      if (*(&v374 + 1) == 2)
      {
        goto LABEL_104;
      }

      v25 = v373;
      if (v359 <= v373 >> 10)
      {
        v145 = *(&v373 + 1);
        v152 = *(&v374 + 1);
        v150 = v374;
        v144 = v342;
        v143 = v343;
LABEL_104:
        v407[22] = v349;
        v407[23] = v142;
        v407[24] = v144;
        v407[25] = v143;
        v407[26] = v25;
        v407[27] = v145;
        *&v357 = v150;
        v407[28] = v150;
        v407[29] = v152;
        v154 = MEMORY[0x1E69E7CD0];
        v155 = specialized Collection<>._containsScalarConstraint.getter(MEMORY[0x1E69E7CD0]);
        v356 = v152;
        if (v155)
        {
          v351 = v145;
          v156 = 0;
          v157 = 1 << *(v154 + 32);
          if (v157 < 64)
          {
            v158 = ~(-1 << v157);
          }

          else
          {
            v158 = -1;
          }

          v159 = v158 & *(v154 + 56);
          v160 = (v157 + 63) >> 6;
          v161 = MEMORY[0x1E69E7CC0];
          v162 = v154;
          v163 = v325;
LABEL_109:
          v164 = v336;
          while (v159)
          {
LABEL_115:
            v166 = __clz(__rbit64(v159));
            v159 &= v159 - 1;
            v167 = (*(v162 + 48) + ((v156 << 10) | (16 * v166)));
            v168 = v167[1];
            if (v168 >= 2)
            {
              v169 = specialized Collection.first.getter(*v167, v168);
              v162 = MEMORY[0x1E69E7CD0];
              if ((v169 & 0x100000000) == 0)
              {
                v349 = v169;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v161 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v161 + 2) + 1, 1, v161);
                }

                v171 = *(v161 + 2);
                v170 = *(v161 + 3);
                v172 = v171 + 1;
                v173 = v349;
                v162 = MEMORY[0x1E69E7CD0];
                if (v171 >= v170 >> 1)
                {
                  v348 = v171 + 1;
                  v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v170 > 1), v171 + 1, 1, v161);
                  v172 = v348;
                  v173 = v349;
                  v162 = MEMORY[0x1E69E7CD0];
                  v161 = v174;
                }

                *(v161 + 2) = v172;
                *&v161[4 * v171 + 32] = v173;
                goto LABEL_109;
              }
            }
          }

          while (1)
          {
            v165 = v156 + 1;
            if (__OFADD__(v156, 1))
            {
              goto LABEL_249;
            }

            if (v165 >= v160)
            {
              break;
            }

            v159 = *(v162 + 8 * v165 + 56);
            ++v156;
            if (v159)
            {
              v156 = v165;
              goto LABEL_115;
            }
          }

          v407[30] = v153;
          v407[31] = v353;
          v407[32] = v354;
          v407[33] = v358;
          v407[34] = v352;
          v407[35] = v151;
          BigString.UnicodeScalarView.subscript.getter();
          v177 = v392 >> 10;
          if (v392 >> 10 <= v391[6] >> 10)
          {
            v7 = v330;
          }

          else
          {
            v178 = BigSubstring.UnicodeScalarView.subscript.getter();
            if (specialized Sequence<>.contains(_:)(v178, v161))
            {

              v179 = BigSubstring.UnicodeScalarView.index(after:)();
              v145 = v180;
              v182 = v181;
              v184 = v183;
              v7 = v330;
              v163 = v325;
              goto LABEL_231;
            }

            v218 = BigSubstring.UnicodeScalarView.index(after:)();
            if (v177 <= v218 >> 10)
            {
              v7 = v330;
              v163 = v325;
            }

            else
            {
              v179 = v218;
              v184 = v221;
              v7 = v330;
              v163 = v325;
              while (2)
              {
                v358 = v219;
                v354 = v220;
                v222 = BigSubstring.UnicodeScalarView.subscript.getter();
                v223 = *(v161 + 2);
                v224 = 32;
                while (v223)
                {
                  v225 = *&v161[v224];
                  v224 += 4;
                  --v223;
                  if (v225 == v222)
                  {

                    v145 = v358;
                    v182 = v354;
LABEL_231:
                    outlined destroy of BigSubstring.UnicodeScalarView(v391);
                    swift_unknownObjectRelease();
                    v25 = v179;
                    v203 = v182;
                    v356 = v184;
                    v5 = v334;
                    if (v359 > v179 >> 10)
                    {
LABEL_270:
                      __break(1u);
                      goto LABEL_271;
                    }

                    goto LABEL_152;
                  }
                }

                v179 = BigSubstring.UnicodeScalarView.index(after:)();
                v184 = v226;
                if (v177 > v179 >> 10)
                {
                  continue;
                }

                break;
              }
            }
          }

          outlined destroy of BigSubstring.UnicodeScalarView(v391);
          v5 = v334;
          v145 = v351;
        }

        else
        {
          v7 = v330;
          v164 = v336;
          v163 = v325;
        }

        swift_unknownObjectRelease();
        v203 = v357;
LABEL_152:
        if (v163 != v25 >> 10)
        {
          v205 = v164[2];
          v348 = v145;
          v207 = v203;
          goto LABEL_175;
        }

        RangeSet.ranges.getter();
        v204 = RangeSet.Ranges.count.getter();
        (v360)(v7, v5);
        if (!__OFSUB__(v204, 1))
        {
          if (v303 == v204 - 1)
          {
            v205 = v164[2];
            v25 = v315;
            v348 = v314;
            v206 = v312;
            v207 = v313;
          }

          else
          {
            RangeSet.ranges.getter();
            RangeSet.Ranges.subscript.getter();
            (v360)(v7, v5);
            v348 = *(&v371 + 1);
            v25 = v371;
            v206 = *(&v372 + 1);
            v207 = v372;
            v205 = v164[2];
          }

          goto LABEL_176;
        }

LABEL_267:
        __break(1u);
LABEL_268:
        __break(1u);
      }

      __break(1u);
      goto LABEL_270;
    }

    v141 = v348;
    v140 = v349;
    if (v134 < v359)
    {
      goto LABEL_264;
    }

    v407[8] = v349;
    v407[9] = v348;
    v407[10] = v342;
    v407[11] = v343;
    v407[12] = v130;
    v407[13] = v358;
    v407[14] = v357;
    v407[15] = v356;
    if (v359 != v134)
    {
      swift_unknownObjectRetain();
      if (specialized Set.contains(_:)(0, 0, MEMORY[0x1E69E7CD0]))
      {
        v407[16] = v135;
        v407[17] = v353;
        v407[18] = v354;
        v175 = v137;
        v407[19] = v137;
        v407[20] = v138;
        v407[21] = v139;
        BigString.UTF8View.subscript.getter();
        v407[0] = v140;
        v407[1] = v141;
        v407[2] = v342;
        v407[3] = v343;
        v407[4] = v140;
        v407[5] = v141;
        v407[6] = v342;
        v407[7] = v343;
        specialized BidirectionalCollection<>._getBlock(for:in:)(2, v407, &v371);
        outlined destroy of BigSubstring.UTF8View(&v387);
        v176 = MEMORY[0x1E69E7CD0];
        if (*(&v374 + 1) != 2)
        {
          v130 = v373;
          if (v359 > v373 >> 10)
          {
LABEL_271:
            __break(1u);
            goto LABEL_272;
          }

          v358 = *(&v373 + 1);
          v356 = *(&v374 + 1);
          *&v357 = v374;
        }
      }

      else
      {
        v175 = v137;
        v176 = MEMORY[0x1E69E7CD0];
      }

      v393 = v140;
      v394 = v141;
      v395 = v342;
      v396 = v343;
      v397 = v130;
      v398 = v358;
      v399 = v357;
      v400 = v356;
      v185 = v176;
      if (specialized Collection<>._containsScalarConstraint.getter(v176))
      {
        v352 = v138;
        v186 = 0;
        v187 = 1 << *(v185 + 32);
        if (v187 < 64)
        {
          v188 = ~(-1 << v187);
        }

        else
        {
          v188 = -1;
        }

        v189 = v188 & *(v185 + 56);
        v190 = (v187 + 63) >> 6;
        v191 = MEMORY[0x1E69E7CC0];
        v192 = v185;
        while (v189)
        {
LABEL_141:
          v194 = __clz(__rbit64(v189));
          v189 &= v189 - 1;
          v195 = (*(v192 + 48) + ((v186 << 10) | (16 * v194)));
          v196 = v195[1];
          if (v196 >= 2)
          {
            v197 = specialized Collection.first.getter(*v195, v196);
            v192 = MEMORY[0x1E69E7CD0];
            if ((v197 & 0x100000000) == 0)
            {
              v361 = v197;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v191 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v191 + 2) + 1, 1, v191);
              }

              v199 = *(v191 + 2);
              v198 = *(v191 + 3);
              v200 = (v199 + 1);
              v201 = v361;
              v192 = MEMORY[0x1E69E7CD0];
              if (v199 >= v198 >> 1)
              {
                v360 = (v199 + 1);
                v202 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v198 > 1), v199 + 1, 1, v191);
                v200 = v360;
                v201 = v361;
                v192 = MEMORY[0x1E69E7CD0];
                v191 = v202;
              }

              *(v191 + 2) = v200;
              *&v191[4 * v199 + 32] = v201;
            }
          }
        }

        while (1)
        {
          v193 = v186 + 1;
          if (__OFADD__(v186, 1))
          {
            goto LABEL_251;
          }

          if (v193 >= v190)
          {
            break;
          }

          v189 = *(v192 + 8 * v193 + 56);
          ++v186;
          if (v189)
          {
            v186 = v193;
            goto LABEL_141;
          }
        }

        v355 = v135;
        v401 = v135;
        v402 = v353;
        v403 = v354;
        v404 = v175;
        v405 = v352;
        v406 = v139;
        BigString.UnicodeScalarView.subscript.getter();
        v208 = v389 >> 10;
        if (v389 >> 10 <= v388[6] >> 10)
        {
          v5 = v334;
        }

        else
        {
          v209 = BigSubstring.UnicodeScalarView.subscript.getter();
          v210 = specialized Sequence<>.contains(_:)(v209, v191);
          v5 = v334;
          if (v210)
          {

            v211 = BigSubstring.UnicodeScalarView.index(after:)();
            v213 = v212;
            v215 = v214;
            v217 = v216;
            v7 = v330;
            goto LABEL_233;
          }

          v287 = BigSubstring.UnicodeScalarView.index(after:)();
          if (v208 > v287 >> 10)
          {
            v211 = v287;
            v215 = v289;
            v217 = v290;
            v7 = v330;
            while (2)
            {
              v361 = v288;
              v291 = BigSubstring.UnicodeScalarView.subscript.getter();
              v292 = *(v191 + 2);
              v293 = 32;
              while (v292)
              {
                v294 = *&v191[v293];
                v293 += 4;
                --v292;
                if (v294 == v291)
                {

                  v213 = v361;
LABEL_233:
                  outlined destroy of BigSubstring.UnicodeScalarView(v388);
                  swift_unknownObjectRelease();
                  v130 = v211;
                  v358 = v213;
                  v356 = v217;
                  *&v357 = v215;
                  v227 = v336;
                  if (v359 > v211 >> 10)
                  {
LABEL_272:
                    __break(1u);
LABEL_273:
                    __break(1u);
LABEL_274:
                    __break(1u);
                  }

                  goto LABEL_174;
                }
              }

              v211 = BigSubstring.UnicodeScalarView.index(after:)();
              v215 = v295;
              v217 = v296;
              if (v208 > v211 >> 10)
              {
                continue;
              }

              break;
            }

LABEL_171:

            outlined destroy of BigSubstring.UnicodeScalarView(v388);
LABEL_172:
            swift_unknownObjectRelease();
            goto LABEL_173;
          }
        }

        v7 = v330;
        goto LABEL_171;
      }

      v7 = v330;
      goto LABEL_172;
    }

    v7 = v330;
LABEL_173:
    v227 = v336;
LABEL_174:
    v205 = v227[2];
    v25 = v130;
    v348 = v358;
    v207 = v357;
LABEL_175:
    v206 = v356;
LABEL_176:
    outlined destroy of AttributedString.Runs.NSAttributesSlice(v335, type metadata accessor for AttributedString.Runs.NSAttributesSlice);
    v228 = v302;
    if (v25 >> 10 < *v302 >> 10)
    {
      goto LABEL_261;
    }

    v359 = *v302;
    v357 = *(v302 + 1);
    v358 = v302[4];
    v229 = v348;
    *v302 = v25;
    v228[1] = v229;
    v342 = v207;
    v343 = v206;
    v228[2] = v207;
    v228[3] = v206;
    v360 = v205;
    v228[4] = v205;
    v230 = v344;
    v231 = _s10Foundation16AttributedStringV4RunsV17NSAttributesSliceVWOcTm_0(v338, v344, type metadata accessor for AttributedString.Runs.NSAttributesSlice.Iterator);
    v356 = &v301;
    MEMORY[0x1EEE9AC00](v231);
    *(&v301 - 2) = v230;
    MEMORY[0x1EEE9AC00](v232);
    *(&v301 - 2) = partial apply for closure #1 in AttributedString.Runs.NSAttributesSlice.buildContainer(from:);
    *(&v301 - 1) = v234;
    v235 = v347;
    v236 = *(v347 + 32);
    v353 = ((1 << v236) + 63) >> 6;
    if ((v236 & 0x3Fu) > 0xD)
    {
      break;
    }

LABEL_178:
    v349 = v25;
    v355 = &v301;
    MEMORY[0x1EEE9AC00](v233);
    v354 = (&v301 - ((v237 + 15) & 0x3FFFFFFFFFFFFFF0));
    bzero(v354, v237);
    v361 = 0;
    v238 = 0;
    v241 = *(v235 + 64);
    v240 = v235 + 64;
    v239 = v241;
    v242 = 1 << *(v240 - 32);
    if (v242 < 64)
    {
      v243 = ~(-1 << v242);
    }

    else
    {
      v243 = -1;
    }

    v244 = v243 & v239;
    v245 = (v242 + 63) >> 6;
    while (v244)
    {
      v246 = __clz(__rbit64(v244));
      v244 &= v244 - 1;
      v247 = v246 | (v238 << 6);
      v248 = v347;
LABEL_189:
      v251 = (*(v248 + 48) + 16 * v247);
      v253 = *v251;
      v252 = v251[1];
      outlined init with copy of AttributedString._AttributeValue(*(v248 + 56) + 72 * v247, &v382);
      *&v371 = v253;
      *(&v371 + 1) = v252;
      v254 = outlined init with copy of AttributedString._AttributeValue(&v382, &v372);
      v255 = *(v344 + *(v340 + 20));
      v381[0] = v253;
      v381[1] = v252;
      MEMORY[0x1EEE9AC00](v254);
      *(&v301 - 2) = v381;
      swift_bridgeObjectRetain_n();
      v256 = v255;
      v257 = v350;
      LOBYTE(v253) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), (&v301 - 4), v256);
      v350 = v257;
      outlined destroy of TermOfAddress?(&v371, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
      outlined destroy of AttributedString._AttributeValue(&v382);

      if (v253)
      {
        *(v354 + ((v247 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v247;
        if (__OFADD__(v361++, 1))
        {
          goto LABEL_268;
        }
      }
    }

    v249 = v238;
    v9 = v337;
    v248 = v347;
    v25 = v349;
    while (2)
    {
      v238 = v249 + 1;
      if (__OFADD__(v249, 1))
      {
        __break(1u);
LABEL_247:
        __break(1u);
LABEL_248:
        __break(1u);
LABEL_249:
        __break(1u);
LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
LABEL_253:
        __break(1u);
LABEL_254:
        __break(1u);
LABEL_255:
        __break(1u);
LABEL_256:
        __break(1u);
LABEL_257:
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
        goto LABEL_266;
      }

      if (v238 < v245)
      {
        v250 = *(v240 + 8 * v238);
        ++v249;
        if (v250)
        {
          v244 = (v250 - 1) & v250;
          v247 = __clz(__rbit64(v250)) | (v238 << 6);
          goto LABEL_189;
        }

        continue;
      }

      break;
    }

    if (v361)
    {
      if (v361 == *(v347 + 16))
      {

        v259 = v248;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        v259 = static _DictionaryStorage.allocate(capacity:)();
        v266 = 0;
        v267 = *v354;
        v268 = v259 + 64;
        do
        {
          if (v267)
          {
            v272 = __clz(__rbit64(v267));
            v267 &= v267 - 1;
          }

          else
          {
            v273 = v266;
            do
            {
              v266 = v273 + 1;
              if (__OFADD__(v273, 1))
              {
                goto LABEL_248;
              }

              if (v266 >= v353)
              {
                goto LABEL_197;
              }

              v274 = v354[v266];
              ++v273;
            }

            while (!v274);
            v272 = __clz(__rbit64(v274));
            v267 = (v274 - 1) & v274;
          }

          v275 = v272 | (v266 << 6);
          v276 = (*(v248 + 48) + 16 * v275);
          v277 = *v276;
          v278 = v276[1];
          outlined init with copy of AttributedString._AttributeValue(*(v248 + 56) + 72 * v275, &v371);
          v384 = v373;
          v385 = v374;
          v386 = v375;
          v382 = v371;
          v383 = v372;
          Hasher.init(_seed:)();

          String.hash(into:)();
          v279 = Hasher._finalize()();
          v280 = -1 << *(v259 + 32);
          v281 = v279 & ~v280;
          v282 = v281 >> 6;
          if (((-1 << v281) & ~*(v268 + 8 * (v281 >> 6))) != 0)
          {
            v269 = __clz(__rbit64((-1 << v281) & ~*(v268 + 8 * (v281 >> 6)))) | v281 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v283 = 0;
            v284 = (63 - v280) >> 6;
            do
            {
              if (++v282 == v284 && (v283 & 1) != 0)
              {
                goto LABEL_250;
              }

              v285 = v282 == v284;
              if (v282 == v284)
              {
                v282 = 0;
              }

              v283 |= v285;
              v286 = *(v268 + 8 * v282);
            }

            while (v286 == -1);
            v269 = __clz(__rbit64(~v286)) + (v282 << 6);
          }

          *(v268 + ((v269 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v269;
          v270 = (*(v259 + 48) + 16 * v269);
          *v270 = v277;
          v270[1] = v278;
          v271 = *(v259 + 56) + 72 * v269;
          *(v271 + 16) = v383;
          *(v271 + 32) = v384;
          *(v271 + 48) = v385;
          *(v271 + 64) = v386;
          *v271 = v382;
          ++*(v259 + 16);
          --v361;
          v9 = v337;
        }

        while (v361);
      }
    }

    else
    {
      v259 = MEMORY[0x1E69E7CC8];
    }

LABEL_197:
    v5 = v334;
    v7 = v330;
LABEL_198:

    outlined destroy of AttributedString.Runs.NSAttributesSlice(v344, type metadata accessor for AttributedString.Runs.NSAttributesSlice);
    v260 = v333;
    v31 = v317;
    v261 = v318;
    *v333 = v259;
    v260[1] = v261;
    v262 = v357;
    *(v260 + 1) = v359;
    *(v260 + 2) = v262;
    v260[6] = v358;
    v260[7] = v25;
    v33 = v348;
    v263 = v342;
    v264 = v343;
    v260[8] = v348;
    v260[9] = v263;
    v265 = v360;
    v260[10] = v264;
    v260[11] = v265;
    if (v323 == v31)
    {
      goto LABEL_245;
    }

    v29 = v260 + 12;
    v31 = v323;
    v32 = v323 + 1;
    v30 = v338;
    if (__OFADD__(v323, 1))
    {
      goto LABEL_262;
    }
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_178;
  }

  v297 = swift_slowAlloc();

  v298 = v350;
  _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16AttributedStringV15_AttributeValueVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk4V15_lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v297, v353, v235, partial apply for thunk for @callee_guaranteed (@guaranteed String, @in_guaranteed AttributedString._AttributeValue) -> (@unowned Bool, @error @owned Error));
  v350 = v298;
  if (!v298)
  {
    v259 = v299;

    MEMORY[0x1865D2690](v297, -1, -1);
    v9 = v337;
    goto LABEL_198;
  }

  result = MEMORY[0x1865D2690](v297, -1, -1);
  __break(1u);
  return result;
}

{
  v23 = *(v3 + 32);
  result = BigString.Index.init(_utf8Offset:)();
  v8 = result;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
LABEL_14:
    v20 = *(v3 + 16);
    *a1 = *v3;
    *(a1 + 16) = v20;
    *(a1 + 32) = *(v3 + 32);
    *(a1 + 40) = v8;
    *(a1 + 48) = v10;
    *(a1 + 56) = v12;
    *(a1 + 64) = v14;
    *(a1 + 72) = v23;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v21 = v3;
    v22 = a1;
    v3 = BigString.Index.init(_utf8Offset:)();
    a1 = 1;
    while (1)
    {
      if ((v8 ^ v3) < 0x400)
      {
        a3 = a1 - 1;
        goto LABEL_13;
      }

      Substring.index(after:)();
      v15 = BigString.Index.init(_utf8Offset:)();
      *a2 = v8;
      a2[1] = v10;
      a2[2] = v12;
      a2[3] = v14;
      a2[4] = v23;
      if (a3 == a1)
      {
        break;
      }

      a2 += 5;
      v10 = v16;
      v12 = v17;
      v14 = v18;
      v8 = v15;
      if (__OFADD__(a1++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v8 = v15;
    v10 = v16;
    v12 = v17;
    v14 = v18;
LABEL_13:
    v3 = v21;
    a1 = v22;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6 = a4[9];
  if (v6)
  {
    v7 = a4[11];
  }

  else
  {
    v7 = 0;
  }

  if ((a5 & 0x8000000000000000) == 0)
  {
    v8 = a5;
    if (v7 >= a5)
    {
      v9 = a6;
      v11 = a4[10];
      v113 = a4[12];
      v107 = result;
      if (!v6 || ((v12 = (v6 + 16), v13 = *(v6 + 16), a4[11] > a5) ? (v14 = v13 == 0) : (v14 = 1), v14))
      {
        swift_unknownObjectRetain();

        v15 = v113;
        v126 = specialized Rope._endPath.getter(v6);
        v16 = 0;
        v17 = 0;
        if (!v6)
        {
          v124 = 0;
LABEL_41:
          v33 = a4;
          v32 = a2;

          v34 = v8 - v17;
          if (__OFSUB__(v8, v17))
          {
            goto LABEL_208;
          }

          if (a2)
          {
            if (a3)
            {
              if (a3 < 0)
              {
                goto LABEL_212;
              }

              v35 = 0;
              v36 = 1;
              v111 = a3;
              while (1)
              {
                v123 = v32;
                v37 = v33[9];
                v120 = v36;
                if (v8 == v9)
                {
                  if (v37)
                  {
                    v38 = v33[11];
                    if (v38 < v8)
                    {
                      goto LABEL_206;
                    }

                    v114 = v15;
                    v108 = v33[12];
                    v109 = v33[10];
                    v39 = (v37 + 16);
                    v40 = *(v37 + 16);
                    v41 = *(v37 + 18);
                    if (*(v37 + 16))
                    {
                      v42 = v38 <= v8;
                    }

                    else
                    {
                      v42 = 1;
                    }

                    v117 = v35;
                    if (!v42)
                    {
                      result = swift_unknownObjectRetain_n();
                      v48 = v8;
                      if (!v41)
                      {
                        v49 = 0;
                        v45 = v37;
LABEL_79:
                        v56 = 0;
                        v57 = 24;
                        v44 = v48;
                        v58 = v40;
                        v15 = v114;
                        while (1)
                        {
                          v59 = *(v45 + v57);
                          v48 = v44 - v59;
                          if (__OFSUB__(v44, v59))
                          {
                            goto LABEL_185;
                          }

                          if (__OFADD__(v48, 1))
                          {
                            goto LABEL_186;
                          }

                          if (v48 + 1 < 1)
                          {
                            goto LABEL_87;
                          }

                          ++v56;
                          v57 += 24;
                          v44 -= v59;
                          if (v58 == v56)
                          {
                            v56 = v58;
                            goto LABEL_85;
                          }
                        }
                      }

                      v49 = v41;
                      v50 = v37;
                      do
                      {
                        v51 = *v39;
                        if (*v39)
                        {
                          v52 = 0;
                          v53 = (v50 + 40);
                          while (1)
                          {
                            v54 = *v53;
                            v53 += 3;
                            v55 = v48 - v54;
                            if (__OFSUB__(v48, v54))
                            {
                              goto LABEL_179;
                            }

                            if (__OFADD__(v55, 1))
                            {
                              goto LABEL_180;
                            }

                            if (v55 + 1 < 1)
                            {
                              v51 = v52;
                              goto LABEL_65;
                            }

                            ++v52;
                            v48 = v55;
                            if (v51 == v52)
                            {
                              goto LABEL_74;
                            }
                          }
                        }

                        v55 = v48;
LABEL_74:
                        if (v55)
                        {
                          goto LABEL_187;
                        }

                        v48 = 0;
LABEL_65:
                        v49 = (v51 << ((4 * v41 + 8) & 0x3C)) | ((-15 << ((4 * v41 + 8) & 0x3C)) - 1) & v49;
                        v45 = *(v50 + 24 + 24 * v51);
                        swift_unknownObjectRetain();
                        result = swift_unknownObjectRelease();
                        v39 = (v45 + 16);
                        LOBYTE(v41) = *(v45 + 18);
                        v50 = v45;
                      }

                      while (v41);
                      LODWORD(v40) = *v39;
                      if (*v39)
                      {
                        goto LABEL_79;
                      }

                      v56 = 0;
                      v15 = v114;
LABEL_85:
                      if (!v48)
                      {
                        v44 = 0;
LABEL_87:
                        swift_unknownObjectRelease();
                        v43 = v49 & 0xFFFFFFFFFFFFF0FFLL | (v56 << 8);
                        v8 = a5;
                        v33 = a4;
                        goto LABEL_88;
                      }

                      goto LABEL_214;
                    }

                    v43 = ((-15 << ((4 * v41 + 8) & 0x3C)) - 1) & v41 | (v40 << ((4 * v41 + 8) & 0x3C));
                    swift_unknownObjectRetain();
                    v44 = 0;
                    v45 = 0;
                    v15 = v114;
LABEL_88:
                    specialized Rope._Node.distanceFromStart<A>(to:in:)(v108, v43, v45, v37, v109);
                    result = swift_unknownObjectRelease();
                    v35 = v117;
                  }

                  else
                  {
                    if (v8 > 0)
                    {
                      goto LABEL_210;
                    }

                    v44 = 0;
                  }

                  v60 = v8 - v44;
                  v47 = v126;
                  if (__OFSUB__(v8, v44))
                  {
                    goto LABEL_202;
                  }

                  v9 = a6;
                  if (v34 == v60)
                  {
LABEL_175:
                    a3 = v35;
                    break;
                  }
                }

                else
                {
                  if (v37)
                  {
                    v46 = v33[11];
                  }

                  else
                  {
                    v46 = 0;
                  }

                  v47 = v126;
                  if (v34 == v46)
                  {
                    goto LABEL_175;
                  }
                }

                if (v15 != v33[12])
                {
                  goto LABEL_188;
                }

                if (v16)
                {
                  v61 = (v16 + 24 * ((v47 >> ((4 * *(v16 + 18) + 8) & 0x3C)) & 0xF));
                  v62 = v61[4];
                  v63 = v61[5];
                  v64 = v61[3];
                  v65 = v34 + v64;
                  v66 = __OFADD__(v34, v64);
                  v116 = v62;

                  v118 = v63;

                  if (v66)
                  {
                    goto LABEL_200;
                  }

                  v67 = v8;
                  if (v34 >= v8)
                  {
                    goto LABEL_98;
                  }
                }

                else
                {
                  v74 = v33[9];
                  swift_unknownObjectRetain();
                  specialized Rope._Node.subscript.getter(v47, v74);
                  v76 = v75;
                  v78 = v77;
                  result = swift_unknownObjectRelease();
                  if (v15 != v33[12])
                  {
                    goto LABEL_203;
                  }

                  v116 = v76;
                  v118 = v78;
                  v79 = v33[9];
                  swift_unknownObjectRetain();
                  v80 = specialized Rope._Node.subscript.getter(v47, v79);
                  swift_unknownObjectRelease();

                  v65 = v34 + v80;
                  if (__OFADD__(v34, v80))
                  {
                    goto LABEL_204;
                  }

                  v8 = a5;
                  v67 = a5;
                  v9 = a6;
                  if (v34 >= a5)
                  {
LABEL_98:
                    if (v34 >= v9)
                    {
                      v67 = v9;
                    }

                    else
                    {
                      v67 = v34;
                    }
                  }
                }

                if (v65 <= v8)
                {
                  v68 = v8;
                }

                else
                {
                  v68 = v65;
                }

                if (v65 > v9)
                {
                  v68 = v9;
                }

                if (v67 == v68)
                {
                  goto LABEL_189;
                }

                v69 = v68 - v67;
                if (__OFSUB__(v68, v67))
                {
                  goto LABEL_190;
                }

                v70 = v33[9];
                v71 = v33[12];
                v127 = v15;
                v128 = v47;
                v129 = v16;
                if (__OFADD__(v124, 1))
                {
                  goto LABEL_192;
                }

                if (v15 != v71)
                {
                  goto LABEL_193;
                }

                ++v124;
                if (v16)
                {
                  v72 = *(v16 + 24 * ((v47 >> ((4 * *(v16 + 18) + 8) & 0x3C)) & 0xF) + 24);
                  v73 = __OFADD__(v34, v72);
                  v34 += v72;
                  if (v73)
                  {
                    goto LABEL_201;
                  }

                  if (!v70)
                  {
                    goto LABEL_191;
                  }

                  result = swift_unknownObjectRetain();
                }

                else
                {
                  swift_unknownObjectRetain();
                  v81 = specialized Rope._Node.subscript.getter(v47, v70);

                  v73 = __OFADD__(v34, v81);
                  v34 += v81;
                  if (v73)
                  {
                    goto LABEL_205;
                  }

                  v9 = a6;
                  if (!v70)
                  {
                    goto LABEL_191;
                  }
                }

                if (v47 >= (((-15 << ((4 * *(v70 + 18) + 8) & 0x3C)) - 1) & *(v70 + 18) | (*(v70 + 16) << ((4 * *(v70 + 18) + 8) & 0x3C))))
                {
                  goto LABEL_191;
                }

                if (v16 && (v82 = (4 * *(v16 + 18) + 8) & 0x3C, v83 = ((v126 >> v82) & 0xF) + 1, v83 < *(v16 + 16)))
                {
                  result = swift_unknownObjectRelease();
                  v84 = ((-15 << v82) - 1) & v126;
                  v85 = v83 << v82;
                }

                else
                {
                  if (specialized Rope._Node.formSuccessor(of:)(&v127, v70))
                  {
                    result = swift_unknownObjectRelease();
                    v15 = v127;
                    v126 = v128;
                    v16 = v129;
                    goto LABEL_128;
                  }

                  v86 = *(v70 + 18);
                  v87 = *(v70 + 16);
                  result = swift_unknownObjectRelease();
                  v16 = 0;
                  v88 = (4 * v86 + 8) & 0x3C;
                  v85 = ((-15 << v88) - 1) & v86;
                  v84 = v87 << v88;
                }

                v126 = v85 | v84;
LABEL_128:
                v33 = a4;
                a3 = v111;
                v8 = a5;
                if (v34 >= v9)
                {
                  v89 = a4[9];
                  if (a5 == v9)
                  {
                    v115 = a4[12];
                    if (v89)
                    {
                      v90 = a4[11];
                      if (v90 < a5)
                      {
                        goto LABEL_211;
                      }

                      v110 = a4[10];
                      v91 = (v89 + 16);
                      v92 = *(v89 + 16);
                      v93 = *(v89 + 18);
                      if (*(v89 + 16) && v90 > a5)
                      {
                        result = swift_unknownObjectRetain_n();
                        v94 = a5;
                        if (!v93)
                        {
                          v95 = 0;
                          v16 = v89;
LABEL_158:
                          v104 = 0;
                          v105 = 24;
                          v102 = v94;
                          while (1)
                          {
                            v106 = *(v16 + v105);
                            v94 = v102 - v106;
                            if (__OFSUB__(v102, v106))
                            {
                              goto LABEL_197;
                            }

                            if (__OFADD__(v94, 1))
                            {
                              goto LABEL_198;
                            }

                            if (v94 + 1 < 1)
                            {
                              goto LABEL_166;
                            }

                            ++v104;
                            v105 += 24;
                            v102 -= v106;
                            if (v92 == v104)
                            {
                              v104 = v92;
                              goto LABEL_164;
                            }
                          }
                        }

                        v95 = v93;
                        v96 = v89;
                        do
                        {
                          v97 = *v91;
                          if (*v91)
                          {
                            v98 = 0;
                            v99 = (v96 + 40);
                            while (1)
                            {
                              v100 = *v99;
                              v99 += 3;
                              v101 = v94 - v100;
                              if (__OFSUB__(v94, v100))
                              {
                                goto LABEL_183;
                              }

                              if (__OFADD__(v101, 1))
                              {
                                goto LABEL_184;
                              }

                              if (v101 + 1 < 1)
                              {
                                v97 = v98;
                                goto LABEL_137;
                              }

                              ++v98;
                              v94 = v101;
                              if (v97 == v98)
                              {
                                goto LABEL_146;
                              }
                            }
                          }

                          v101 = v94;
LABEL_146:
                          if (v101)
                          {
                            goto LABEL_199;
                          }

                          v94 = 0;
LABEL_137:
                          v95 = (v97 << ((4 * v93 + 8) & 0x3C)) | ((-15 << ((4 * v93 + 8) & 0x3C)) - 1) & v95;
                          v16 = *(v96 + 24 + 24 * v97);
                          swift_unknownObjectRetain();
                          result = swift_unknownObjectRelease();
                          v91 = (v16 + 16);
                          LOBYTE(v93) = *(v16 + 18);
                          v96 = v16;
                        }

                        while (v93);
                        LODWORD(v92) = *v91;
                        if (*v91)
                        {
                          goto LABEL_158;
                        }

                        v104 = 0;
LABEL_164:
                        if (!v94)
                        {
                          v102 = 0;
LABEL_166:
                          swift_unknownObjectRelease();
                          v103 = v95 & 0xFFFFFFFFFFFFF0FFLL | (v104 << 8);
                          v8 = a5;
                          v33 = a4;
                          goto LABEL_167;
                        }

                        goto LABEL_215;
                      }

                      v103 = ((-15 << ((4 * v93 + 8) & 0x3C)) - 1) & v93 | (v92 << ((4 * v93 + 8) & 0x3C));
                      swift_unknownObjectRetain();
                      v102 = 0;
                      v16 = 0;
LABEL_167:
                      v126 = v103;
                      v124 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v115, v103, v16, v89, v110);
                      result = swift_unknownObjectRelease();
                      v9 = a6;
                    }

                    else
                    {
                      if (a5 > 0)
                      {
                        goto LABEL_213;
                      }

                      v102 = 0;
                      v16 = 0;
                      v124 = 0;
                      v126 = 0;
                    }

                    v34 = v8 - v102;
                    if (__OFSUB__(v8, v102))
                    {
                      goto LABEL_209;
                    }

                    v15 = v115;
                  }

                  else
                  {
                    if (v89)
                    {
                      v16 = 0;
                      v34 = a4[11];
                      v124 = a4[10];
                      v126 = ((-15 << ((4 * *(v89 + 18) + 8) & 0x3C)) - 1) & *(v89 + 18) | (*(v89 + 16) << ((4 * *(v89 + 18) + 8) & 0x3C));
                    }

                    else
                    {
                      v124 = 0;
                      v126 = 0;
                      v16 = 0;
                      v34 = 0;
                    }

                    v15 = a4[12];
                  }
                }

                *v123 = v69;
                v123[1] = v116;
                v123[2] = v118;
                if (v120 == v111)
                {
                  break;
                }

                v32 = v123 + 3;
                v35 = v120;
                v36 = v120 + 1;
                if (__OFADD__(v120, 1))
                {
                  __break(1u);
                  goto LABEL_174;
                }
              }
            }
          }

          else
          {
LABEL_174:
            a3 = 0;
          }

          *v107 = v33;
          v107[1] = v8;
          v107[2] = v9;
          v107[3] = v15;
          v107[4] = v126;
          v107[5] = v16;
          v107[6] = v124;
          v107[7] = v34;
          return a3;
        }
      }

      else
      {
        v125 = a4[10];
        v18 = *(v6 + 18);
        swift_unknownObjectRetain_n();

        if (v18)
        {
          v19 = a5;
          v20 = v18;
          v21 = v6;
          while (1)
          {
            v22 = *v12;
            if (*v12)
            {
              break;
            }

            v26 = v19;
LABEL_26:
            if (v26)
            {
              goto LABEL_196;
            }

            v19 = 0;
LABEL_17:
            v20 = (v22 << ((4 * v18 + 8) & 0x3C)) | ((-15 << ((4 * v18 + 8) & 0x3C)) - 1) & v20;
            v16 = *(v21 + 24 + 24 * v22);
            swift_unknownObjectRetain();
            result = swift_unknownObjectRelease();
            v12 = (v16 + 16);
            LOBYTE(v18) = *(v16 + 18);
            v21 = v16;
            if (!v18)
            {
              v13 = *v12;
              if (*v12)
              {
                goto LABEL_31;
              }

              v29 = 0;
              v15 = v113;
              if (v19)
              {
                goto LABEL_178;
              }

LABEL_37:
              v17 = 0;
              goto LABEL_39;
            }
          }

          v23 = 0;
          v24 = (v21 + 40);
          while (1)
          {
            v25 = *v24;
            v24 += 3;
            v26 = v19 - v25;
            if (__OFSUB__(v19, v25))
            {
              goto LABEL_181;
            }

            if (__OFADD__(v26, 1))
            {
              break;
            }

            if (v26 + 1 < 1)
            {
              v22 = v23;
              goto LABEL_17;
            }

            ++v23;
            v19 = v26;
            if (v22 == v23)
            {
              goto LABEL_26;
            }
          }

LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
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
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
          goto LABEL_207;
        }

        v20 = 0;
        v19 = a5;
        v16 = v6;
LABEL_31:
        v27 = 0;
        v28 = 24;
        v17 = v19;
        v29 = v13;
        v15 = v113;
        while (1)
        {
          v30 = *(v16 + v28);
          v31 = v17 - v30;
          if (__OFSUB__(v17, v30))
          {
            goto LABEL_194;
          }

          if (__OFADD__(v31, 1))
          {
            goto LABEL_195;
          }

          if (v31 + 1 < 1)
          {
            break;
          }

          ++v27;
          v28 += 24;
          v17 -= v30;
          if (v29 == v27)
          {
            if (!v31)
            {
              goto LABEL_37;
            }

LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
            goto LABEL_182;
          }
        }

        v29 = v27;
LABEL_39:
        swift_unknownObjectRelease();
        v126 = v20 & 0xFFFFFFFFFFFFF0FFLL | (v29 << 8);
        v9 = a6;
        v8 = a5;
        v11 = v125;
      }

      v124 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v15, v126, v16, v6, v11);
      swift_unknownObjectRelease();
      goto LABEL_41;
    }
  }

LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v9 = a2;
  *&v35 = a4;
  *(&v35 + 1) = a5;
  *&v36 = a6;
  *(&v36 + 1) = a7;
  if (a4)
  {
    v10 = *(a4 + 18);
  }

  else
  {
    v10 = 0;
  }

  *&v37 = a7;
  *(&v37 + 1) = v10;
  v39 = 0;
  v38 = 0uLL;
  v29 = result;
  if (!a2)
  {
LABEL_29:
    result = 0;
LABEL_31:
    v28 = v38;
    *(v29 + 32) = v37;
    *(v29 + 48) = v28;
    *(v29 + 64) = v39;
    *v29 = v35;
    *(v29 + 16) = v36;
    return result;
  }

  if (!a3)
  {
    result = 0;
    goto LABEL_31;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    result = 0;
    v11 = 0;
    v12 = 1;
    while (1)
    {
      v13 = v12;
      if (a4)
      {
        if (v11 == a6)
        {
          result = v12 - 1;
          goto LABEL_31;
        }
      }

      else if (!v11)
      {
        goto LABEL_31;
      }

      if (v37 != v7)
      {
        break;
      }

      v15 = *(&v37 + 1);
      v14 = v38;
      v34 = v12;
      if (v38)
      {
        v16 = (v38 + 24 * ((*(&v37 + 1) >> ((4 * *(v38 + 18) + 8) & 0x3C)) & 0xFLL));
        v17 = v16[3];
        v18 = v16[4];
        v19 = v16[5];
        *(&v38 + 1) = v13;
        v20 = __OFADD__(v11, v17);
        v11 += v17;
        if (v20)
        {
          goto LABEL_33;
        }

        v39 = v11;

        if (!a4)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v31 = *(&v37 + 1);
        v21 = v12;
        v17 = specialized Rope._Node.subscript.getter(*(&v37 + 1), a4);
        v18 = v22;
        v19 = v23;
        *(&v38 + 1) = v21;
        v15 = v31;
        v24 = specialized Rope._Node.subscript.getter(v31, a4);

        v20 = __OFADD__(v11, v24);
        v11 += v24;
        if (v20)
        {
          goto LABEL_34;
        }

        v39 = v11;
        v7 = a7;
        if (!a4)
        {
          goto LABEL_36;
        }
      }

      if (v15 >= (((-15 << ((4 * *(a4 + 18) + 8) & 0x3C)) - 1) & *(a4 + 18) | (*(a4 + 16) << ((4 * *(a4 + 18) + 8) & 0x3C))))
      {
        goto LABEL_36;
      }

      if (v14 && (v25 = (4 * *(v14 + 18) + 8) & 0x3C, v26 = ((v15 >> v25) & 0xF) + 1, v26 < *(v14 + 16)))
      {
        *(&v37 + 1) = (v26 << v25) | ((-15 << v25) - 1) & v15;
      }

      else if ((specialized Rope._Node.formSuccessor(of:)(&v37, a4) & 1) == 0)
      {
        v27 = ((-15 << ((4 * *(a4 + 18) + 8) & 0x3C)) - 1) & *(a4 + 18) | (*(a4 + 16) << ((4 * *(a4 + 18) + 8) & 0x3C));
        *&v37 = v7;
        *(&v37 + 1) = v27;
        *&v38 = 0;
      }

      *v9 = v17;
      v9[1] = v18;
      v9[2] = v19;
      result = a3;
      if (a3 == v34)
      {
        goto LABEL_31;
      }

      v9 += 3;
      v12 = v34 + 1;
      result = v34;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v4 = *(v3 + 2);
  v5 = *(v3 + 3);
  v6 = *(v3 + 4);
  v7 = *v3;
  v8 = *(v3 + 1);
  v9 = *(*v3 + 16);
  if (!a2)
  {
LABEL_13:
    a3 = 0;
    goto LABEL_16;
  }

  if (!a3)
  {
LABEL_16:
    v29 = v3[3];
    *(result + 32) = v3[2];
    *(result + 48) = v29;
    *(result + 64) = v3[4];
    v30 = v3[1];
    *result = *v3;
    *(result + 16) = v30;
    *(result + 80) = v8;
    *(result + 88) = v4;
    *(result + 96) = v5;
    *(result + 104) = v6;
    *(result + 112) = v9;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = a2;
    v36 = *(v3 + 4);
    v32 = result;
    v11 = *(v3 + 5) >> 10;
    v34 = v11;
    v35 = v8 >> 10;
    v12 = 1;
    v33 = a3;
    while (1)
    {
      v13 = v8 >> 10;
      if (v8 >> 10 == v11)
      {
        a3 = v12 - 1;
LABEL_15:
        v3 = v31;
        result = v32;
        v6 = v36;
        goto LABEL_16;
      }

      if (v13 < v35 || v13 >= v11)
      {
        break;
      }

      v14 = *(v7 + 24);
      v15 = *(v7 + 56);
      v39[1] = *(v7 + 40);
      v39[2] = v15;
      v39[0] = v14;
      v16 = *(v7 + 24);
      v17 = *(v7 + 40);
      v41 = *(v7 + 56);
      v40[0] = v16;
      v40[1] = v17;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v40, v37);
      v18 = BigString.subscript.getter();
      v20 = v19;
      outlined destroy of BigString(v39);
      v21 = *(v7 + 24);
      v22 = *(v7 + 56);
      v38[1] = *(v7 + 40);
      v38[2] = v22;
      v38[0] = v21;
      v23 = *(v7 + 24);
      v43 = *(v7 + 56);
      v24 = *(v7 + 40);
      v42[0] = v23;
      v42[1] = v24;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v42, v37);
      v3 = v38;
      v8 = BigString.index(after:)();
      v4 = v25;
      v5 = v26;
      v36 = v27;
      result = outlined destroy of BigString(v38);
      v11 = v34;
      if (v34 < v8 >> 10)
      {
        goto LABEL_18;
      }

      v9 = *(v7 + 16);
      *v10 = v18;
      v10[1] = v20;
      a3 = v33;
      if (v33 == v12)
      {
        goto LABEL_15;
      }

      v10 += 2;
      if (__OFADD__(v12++, 1))
      {
        __break(1u);
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t *a2, uint64_t a3)
{
  v5 = result;
  v6 = *(v3 + 48);
  v7 = (v6 >> 11 << 16) | 4;
  if (!a2)
  {
LABEL_5:
    a3 = 0;
    goto LABEL_6;
  }

  if (!a3)
  {
LABEL_6:
    v8 = *(v3 + 80);
    *(v5 + 64) = *(v3 + 64);
    *(v5 + 80) = v8;
    *(v5 + 96) = *(v3 + 96);
    v9 = *(v3 + 16);
    *v5 = *v3;
    *(v5 + 16) = v9;
    v10 = *(v3 + 48);
    *(v5 + 32) = *(v3 + 32);
    *(v5 + 48) = v10;
    *(v5 + 112) = v7;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v16 = (*(v3 + 80) >> 9) & 0x3FFFFFFFFFFFCLL;
    if (v16 != ((32 * v6) & 0xFFFFFFFFFFFF0000) >> 14)
    {
      v11 = a2;
      v15 = a3;
      v12 = BigString.Index.init(_utf8Offset:utf16TrailingSurrogate:)();
      if (BigString.endIndex.getter() >> 10 < v12 >> 10)
      {
LABEL_13:
        __break(1u);
LABEL_14:
        a3 = v4;
      }

      else
      {
        v4 = 1;
        while (1)
        {
          v13 = v7;
          result = BigString.index(after:)();
          v7 = (result >> 11 << 16) | 4;
          *v11 = v13;
          a3 = v15;
          if (v15 == v4)
          {
            break;
          }

          if (__OFADD__(v4, 1))
          {
            __break(1u);
            goto LABEL_16;
          }

          if (v16 == ((32 * result) & 0xFFFFFFFFFFFF0000) >> 14)
          {
            goto LABEL_14;
          }

          ++v11;
          v14 = BigString.Index.init(_utf8Offset:utf16TrailingSurrogate:)();
          ++v4;
          if (BigString.endIndex.getter() >> 10 < v14 >> 10)
          {
            goto LABEL_13;
          }
        }
      }

      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t *a1, uint64_t a2, uint64_t a3, const char *a4, int a5)
{
  v25[2] = *MEMORY[0x1E69E9840];
  type metadata accessor for _FTSSequence.Iterator();
  v10 = swift_allocObject();
  *(v10 + 56) = 0;
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 64) = MEMORY[0x1E69E7CC0];
  *(v10 + 72) = v11;
  *(v10 + 80) = 0;
  *(v10 + 48) = a4;
  memset(&v24, 0, sizeof(v24));
  if (lstat(a4, &v24) || (v25[0] = a4, v25[1] = 0, (v17 = fts_open(v25, a5, 0)) == 0))
  {
    v12 = MEMORY[0x1865CA7A0]();
    v13 = String.init(cString:)();
    v15 = 1;
    v16 = v12;
  }

  else
  {
    v16 = v17;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  v18 = 0;
  *(v10 + 16) = v16;
  *(v10 + 24) = v13;
  *(v10 + 32) = v14;
  *(v10 + 40) = v15;
  if (a2 && a3)
  {
    if (a3 < 0)
    {
      __break(1u);
    }

    v19 = _FTSSequence.Iterator.next()();
    if (v22 == -1)
    {
      v18 = 0;
    }

    else
    {
      v18 = 0;
      while (1)
      {
        *a2 = v19;
        *(a2 + 8) = v20;
        *(a2 + 16) = v21;
        *(a2 + 24) = v22 & 1;
        if (a3 - 1 == v18)
        {
          break;
        }

        v19 = _FTSSequence.Iterator.next()();
        ++v18;
        a2 += 32;
        if (v22 == -1)
        {
          goto LABEL_15;
        }
      }

      v18 = a3;
    }
  }

LABEL_15:
  *a1 = v10;
  return v18;
}

unint64_t String.UnicodeScalarView.distance(from:to:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = _StringGuts.validateInclusiveScalarIndex(_:)(a1, a3, a4);
  v8 = _StringGuts.validateInclusiveScalarIndex(_:)(a2, a3, a4);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 >= v8 >> 14)
  {
    if (v11 >= v10)
    {
      return 0;
    }

    v13 = 0;
    while (1)
    {
      while (1)
      {
        if (__OFSUB__(v13--, 1))
        {
          goto LABEL_37;
        }

        if ((a4 & 0x1000000000000000) == 0)
        {
          break;
        }

        result = String.UnicodeScalarView._foreignIndex(before:)();
        if (v11 >= result >> 14)
        {
          return v13;
        }
      }

      v20 = result >> 16;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v29 = a3;
        v30 = a4 & 0xFFFFFFFFFFFFFFLL;
        if ((*(&v28 + v20 + 7) & 0xC0) == 0x80)
        {
          v26 = -2;
          do
          {
            v27 = *(&v29 + v20 + v26--) & 0xC0;
          }

          while (v27 == 128);
          v25 = v26 + 1;
          goto LABEL_32;
        }
      }

      else
      {
        v21 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v28 = result;
          v21 = _StringObject.sharedUTF8.getter();
          result = v28;
        }

        v22 = v21 + v20;
        if ((*(v22 - 1) & 0xC0) == 0x80)
        {
          v23 = -2;
          do
          {
            v24 = *(v22 + v23--) & 0xC0;
          }

          while (v24 == 128);
          v25 = v23 + 1;
          goto LABEL_32;
        }
      }

      v25 = -1;
LABEL_32:
      result = (result + (v25 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      if (v11 >= result >> 14)
      {
        return v13;
      }
    }
  }

  for (i = 0; ; ++i)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      result = String.UnicodeScalarView._foreignIndex(after:)();
    }

    else
    {
      v14 = result >> 16;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v29 = a3;
        v30 = a4 & 0xFFFFFFFFFFFFFFLL;
        v16 = *(&v29 + v14);
      }

      else
      {
        v15 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v15 = _StringObject.sharedUTF8.getter();
        }

        v16 = *(v15 + v14);
      }

      v17 = v16;
      v18 = __clz(v16 ^ 0xFF) - 24;
      if (v17 >= 0)
      {
        LOBYTE(v18) = 1;
      }

      result = ((v14 + v18) << 16) | 5;
    }

    if (v11 <= result >> 14)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, _BYTE *a2, uint64_t a3, unsigned int a4)
{
  if (!a2)
  {
    v6 = 0;
    v7 = 0;
LABEL_24:
    *result = a4;
    *(result + 8) = v6;
    return v7;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_23:
    v7 = a3;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (a4 < 0x80)
    {
      v4 = a4 + 1;
    }

    else
    {
      v4 = (a4 >> 6) + ((a4 & 0x3F) << 8) + 33217;
    }

    if (a4 >= 0x10000)
    {
      v5 = ((((((a4 >> 6) & 0x3F | ((a4 & 0x3F) << 8)) << 8) | (a4 >> 12) & 0x3F) << 8) | (a4 >> 18)) - 2122219023;
    }

    else
    {
      v5 = (((a4 >> 6) & 0x3F | ((a4 & 0x3F) << 8)) << 8) + (a4 >> 12) + 8487393;
    }

    if (a4 >= 0x800)
    {
      v4 = v5;
    }

    *a2 = (v4 - 1) & ~(-1 << (32 - (__clz(v4) & 0x18)));
    v6 = 1;
    v7 = 1;
    if (a3 == 1 || a4 < 0x80)
    {
      goto LABEL_24;
    }

    v8 = a4 >= 0x800 ? v5 : (a4 >> 6) + ((a4 & 0x3F) << 8) + 33217;
    a2[1] = ((v8 - 257) & ~(-1 << (32 - (__clz(v8) & 0x18)))) >> 8;
    v6 = 2;
    v7 = 2;
    if (a3 == 2 || a4 < 0x800)
    {
      goto LABEL_24;
    }

    v9 = ~(-1 << (32 - (__clz(v5) & 0x18)));
    a2[2] = ((v5 + 16711423) & v9) >> 16;
    if (a3 != 3)
    {
      if (a4 >= 0x10000)
      {
        a2[3] = ((v5 - 16843009) & v9) >> 24;
        v6 = 4;
        v7 = 4;
      }

      else
      {
        v6 = 3;
        v7 = 3;
      }

      goto LABEL_24;
    }

    v6 = 3;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t specialized UInt16.init(nextStep:)(uint64_t result)
{
  v2 = *MEMORY[0x1E69E9840];
  if ((result & 0x80) == 0)
  {
    return result;
  }

  v1[0] = _stringshims_nextstep_mapping;
  v1[1] = unk_18142EB00;
  v1[2] = xmmword_18142EB10;
  v1[3] = unk_18142EB20;
  v1[4] = xmmword_18142EB30;
  v1[5] = unk_18142EB40;
  v1[6] = xmmword_18142EB50;
  v1[7] = unk_18142EB60;
  v1[8] = xmmword_18142EB70;
  v1[9] = unk_18142EB80;
  v1[10] = xmmword_18142EB90;
  v1[11] = unk_18142EBA0;
  v1[12] = xmmword_18142EBB0;
  v1[13] = unk_18142EBC0;
  v1[14] = xmmword_18142EBD0;
  v1[15] = unk_18142EBE0;
  return *(v1 + (result & 0x7F));
}

uint64_t outlined init with take of AttributedString.Runs.NSAttributesSlice.Iterator(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString.Runs.NSAttributesSlice.Iterator(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s10Foundation16AttributedStringV4RunsV17NSAttributesSliceVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AttributedString.Runs.NSAttributesSlice(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of IndexingIterator<AttributedString.Runs>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Unicode.Scalar._stripDiacritics()(uint64_t a1)
{
  v1 = a1;
  v2 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(a1), 2u);
  if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v1, v2, 0x700030002) && CFUniCharDecomposeCharacter() >= 1)
  {
    if (v4 >= 0x510)
    {
      return v1;
    }

    else
    {
      return v4;
    }
  }

  return v1;
}

void static TimeZone.default.getter(void *a1@<X8>)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v2 = static TimeZoneCache.cache;
  os_unfair_lock_lock((static TimeZoneCache.cache + 120));
  if (*(v2 + 32))
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 32);
  }

  else
  {
    v4 = *(v2 + 16);
    if (v4)
    {
      v3 = *(v2 + 24);
      swift_unknownObjectRetain();
    }

    else
    {
      TimeZoneCache.State.findCurrentTimeZone()(v5);
      v4 = v5[0];
      v3 = v5[1];
      *(v2 + 16) = v5[0];
      *(v2 + 24) = v3;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v2 + 120));
  *a1 = v4;
  a1[1] = v3;
}

uint64_t static TimeZone.abbreviationDictionary.getter()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v0 = static TimeZoneCache.cache;
  os_unfair_lock_lock((static TimeZoneCache.cache + 120));
  v1 = *(v0 + 72);
  if (!v1)
  {
    v1 = *(v0 + 112);
    *(v0 + 72) = v1;
  }

  os_unfair_lock_unlock((v0 + 120));
  return v1;
}

uint64_t static TimeZone.default.setter(uint64_t a1)
{
  if (one-time initialization token for cache != -1)
  {
    a1 = swift_once();
  }

  v1 = static TimeZoneCache.cache;
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v1 + 30);
  partial apply for closure #1 in TimeZoneCache.setDefault(_:)(&v1[4]);
  os_unfair_lock_unlock(v1 + 30);
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleNotifications.reset()();
  return swift_unknownObjectRelease();
}

Swift::String_optional __swiftcall TimeZone.abbreviation(for:)(Foundation::Date a1)
{
  v3 = *v1;
  v4 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  v9 = v3;
  v6 = (*(v4 + 64))(&v9, ObjectType, v4);
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::Bool __swiftcall TimeZone.isDaylightSavingTime(for:)(Foundation::Date a1)
{
  v3 = *v1;
  v4 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  v7 = v3;
  return (*(v4 + 72))(&v7, ObjectType, v4) & 1;
}

Swift::Double __swiftcall TimeZone.daylightSavingTimeOffset(for:)(Foundation::Date a1)
{
  v3 = *v1;
  v4 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  v7 = v3;
  (*(v4 + 80))(&v7, ObjectType, v4);
  return result;
}

Foundation::Date_optional __swiftcall TimeZone.nextDaylightSavingTimeTransition(after:)(Foundation::Date after)
{
  v3 = *v1;
  v4 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  v8 = v3;
  v6 = (*(v4 + 88))(&v8, ObjectType, v4);
  result.value = *&v7;
  result.is_nil = v6;
  return result;
}

uint64_t TimeZone.nextDaylightSavingTimeTransition.getter()
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  *&__tp.tv_sec = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
  return (*(v1 + 88))(&__tp, ObjectType, v1);
}

uint64_t TimeZone.localizedName(for:locale:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  v9[0] = v4;
  v9[1] = v5;
  return (*(v6 + 96))(a1, v9, ObjectType, v6);
}

void key path setter for static TimeZone.default : TimeZone.Type(uint64_t a1)
{
  if (one-time initialization token for cache != -1)
  {
    a1 = swift_once();
  }

  v1 = static TimeZoneCache.cache;
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v1 + 30);
  closure #1 in TimeZoneCache.setDefault(_:)partial apply(&v1[4]);
  os_unfair_lock_unlock(v1 + 30);
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleNotifications.reset()();
}

uint64_t (*static TimeZone.default.modify(void *a1))(uint64_t a1, char a2)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v2 = static TimeZoneCache.cache;
  a1[2] = static TimeZoneCache.cache;
  os_unfair_lock_lock((v2 + 120));
  if (*(v2 + 32))
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 32);
  }

  else
  {
    v4 = *(v2 + 16);
    if (v4)
    {
      v3 = *(v2 + 24);
      swift_unknownObjectRetain();
    }

    else
    {
      TimeZoneCache.State.findCurrentTimeZone()(v6);
      v4 = v6[0];
      v3 = v6[1];
      *(v2 + 16) = v6[0];
      *(v2 + 24) = v3;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v2 + 120));
  *a1 = v4;
  a1[1] = v3;
  return static TimeZone.default.modify;
}

uint64_t static TimeZone.default.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (a2)
  {
    swift_unknownObjectRetain();
    os_unfair_lock_lock(v2 + 30);
    closure #1 in TimeZoneCache.setDefault(_:)partial apply(&v2[4]);
    os_unfair_lock_unlock(v2 + 30);
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    LocaleNotifications.reset()();
    swift_unknownObjectRelease();
  }

  else
  {
    os_unfair_lock_lock(v2 + 30);
    closure #1 in TimeZoneCache.setDefault(_:)partial apply(&v2[4]);
    os_unfair_lock_unlock(v2 + 30);
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    LocaleNotifications.reset()();
  }

  return swift_unknownObjectRelease();
}

void key path getter for static TimeZone.abbreviationDictionary : TimeZone.Type(void *a1@<X8>)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v2 = static TimeZoneCache.cache;
  os_unfair_lock_lock((static TimeZoneCache.cache + 120));
  v3 = *(v2 + 72);
  if (!v3)
  {
    v3 = *(v2 + 112);
    *(v2 + 72) = v3;
  }

  os_unfair_lock_unlock((v2 + 120));
  *a1 = v3;
}

uint64_t key path setter for static TimeZone.abbreviationDictionary : TimeZone.Type()
{
  v0 = one-time initialization token for cache;

  if (v0 != -1)
  {
    v1 = swift_once();
  }

  v2 = static TimeZoneCache.cache;
  MEMORY[0x1EEE9AC00](v1);
  os_unfair_lock_lock(v2 + 30);
  closure #1 in TimeZoneCache.setTimeZoneAbbreviations(_:)partial apply(&v2[4]);
  os_unfair_lock_unlock(v2 + 30);
}

uint64_t static TimeZone.abbreviationDictionary.setter(uint64_t a1)
{
  if (one-time initialization token for cache != -1)
  {
    a1 = swift_once();
  }

  v1 = static TimeZoneCache.cache;
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v1 + 30);
  partial apply for closure #1 in TimeZoneCache.setTimeZoneAbbreviations(_:)(&v1[4]);
  os_unfair_lock_unlock(v1 + 30);
}

uint64_t (*static TimeZone.abbreviationDictionary.modify(void *a1))(uint64_t a1, char a2)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v2 = static TimeZoneCache.cache;
  a1[1] = static TimeZoneCache.cache;
  os_unfair_lock_lock((v2 + 120));
  v3 = *(v2 + 72);
  if (!v3)
  {
    v3 = *(v2 + 112);
    *(v2 + 72) = v3;
  }

  os_unfair_lock_unlock((v2 + 120));
  *a1 = v3;
  return static TimeZone.abbreviationDictionary.modify;
}

uint64_t static TimeZone.abbreviationDictionary.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {

    os_unfair_lock_lock(v2 + 30);
    closure #1 in TimeZoneCache.setTimeZoneAbbreviations(_:)partial apply(&v2[4]);
    os_unfair_lock_unlock(v2 + 30);
  }

  else
  {
    os_unfair_lock_lock(v2 + 30);
    closure #1 in TimeZoneCache.setTimeZoneAbbreviations(_:)partial apply(&v2[4]);
    os_unfair_lock_unlock(v2 + 30);
  }
}

uint64_t TimeZone.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 120))(a1, ObjectType, v3);
}

Swift::Int TimeZone.hashValue.getter()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  ObjectType = swift_getObjectType();
  (*(v1 + 120))(v4, ObjectType, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TimeZone()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  ObjectType = swift_getObjectType();
  (*(v1 + 120))(v4, ObjectType, v1);
  return Hasher._finalize()();
}

uint64_t TimeZone.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26[1] = a1;
  v28 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for Mirror.AncestorRepresentation();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v26 - v8;
  v10 = *v1;
  v11 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSg5label_yp5valuetGMd);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1812354D0;
  *(v12 + 32) = xmmword_181231A50;
  ObjectType = swift_getObjectType();
  v14 = (*(v11 + 32))(ObjectType, v11);
  *(v12 + 72) = MEMORY[0x1E69E6158];
  *(v12 + 48) = v14;
  *(v12 + 56) = v15;
  *(v12 + 80) = xmmword_1812DAC50;
  *(v12 + 120) = ObjectType;
  *(v12 + 96) = v10;
  *(v12 + 128) = xmmword_1812DAC60;
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  swift_unknownObjectRetain();
  clock_gettime(_CLOCK_REALTIME, &__tp);
  *&__tp.tv_sec = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
  v16 = (*(v11 + 64))(&__tp, ObjectType, v11);
  v18 = v17;
  *(v12 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  *(v12 + 144) = v16;
  *(v12 + 152) = v18;
  *(v12 + 176) = xmmword_1812DAC70;
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  *&__tp.tv_sec = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
  v19 = (*(v11 + 40))(&__tp, ObjectType, v11);
  v20 = MEMORY[0x1E69E6530];
  *(v12 + 192) = v19;
  *(v12 + 216) = v20;
  *(v12 + 224) = 0xD000000000000014;
  *(v12 + 232) = 0x8000000181486820;
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  *&__tp.tv_sec = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
  v21 = (*(v11 + 72))(&__tp, ObjectType, v11);
  *(v12 + 264) = MEMORY[0x1E69E6370];
  *(v12 + 240) = v21 & 1;
  __tp.tv_sec = v10;
  __tp.tv_nsec = v11;
  v26[2] = v12;
  v22 = *MEMORY[0x1E69E75B8];
  v23 = type metadata accessor for Mirror.DisplayStyle();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v9, v22, v23);
  (*(v24 + 56))(v9, 0, 1, v23);
  (*(v4 + 104))(v6, *MEMORY[0x1E69E75D8], v3);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSg5label_yp5valuetGMd);
  lazy protocol witness table accessor for type [(label: String?, value: Any)] and conformance [A]();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TimeZone.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x616470756F747561 && a2 == 0xEC000000676E6974)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimeZone.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TimeZone.CodingKeys and conformance TimeZone.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TimeZone.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TimeZone.CodingKeys and conformance TimeZone.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id static TimeZone._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{
  swift_unknownObjectRelease();
  type metadata accessor for _NSSwiftTimeZone();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____NSSwiftTimeZone_timeZone);
    v6 = *(v4 + OBJC_IVAR____NSSwiftTimeZone_timeZone + 8);
    result = swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for _TimeZoneBridged();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v6 = _s10Foundation16_TimeZoneBridgedCAcA01_bC8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type _TimeZoneBridged and conformance _TimeZoneBridged, type metadata accessor for _TimeZoneBridged);
    result = a1;
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t static TimeZone._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{
  swift_unknownObjectRelease();
  type metadata accessor for _NSSwiftTimeZone();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____NSSwiftTimeZone_timeZone);
    v6 = *(v4 + OBJC_IVAR____NSSwiftTimeZone_timeZone + 8);
    swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for _TimeZoneBridged();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v6 = _s10Foundation16_TimeZoneBridgedCAcA01_bC8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type _TimeZoneBridged and conformance _TimeZoneBridged, type metadata accessor for _TimeZoneBridged);
    v7 = a1;
  }

  *a2 = v5;
  a2[1] = v6;
  return 1;
}

uint64_t protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance TimeZone()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 128))(ObjectType, v1);
}

id protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance TimeZone(void *a1, uint64_t *a2)
{
  swift_unknownObjectRelease();
  type metadata accessor for _NSSwiftTimeZone();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____NSSwiftTimeZone_timeZone);
    v6 = *(v4 + OBJC_IVAR____NSSwiftTimeZone_timeZone + 8);
    result = swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for _TimeZoneBridged();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v6 = _s10Foundation16_TimeZoneBridgedCAcA01_bC8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type _TimeZoneBridged and conformance _TimeZoneBridged, type metadata accessor for _TimeZoneBridged);
    result = a1;
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance TimeZone(void *a1, uint64_t *a2)
{
  swift_unknownObjectRelease();
  type metadata accessor for _NSSwiftTimeZone();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____NSSwiftTimeZone_timeZone);
    v6 = *(v4 + OBJC_IVAR____NSSwiftTimeZone_timeZone + 8);
    swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for _TimeZoneBridged();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v6 = _s10Foundation16_TimeZoneBridgedCAcA01_bC8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type _TimeZoneBridged and conformance _TimeZoneBridged, type metadata accessor for _TimeZoneBridged);
    v7 = a1;
  }

  *a2 = v5;
  a2[1] = v6;
  return 1;
}

id protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance TimeZone@<X0>(id result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {
    v2 = result;
    type metadata accessor for _NSSwiftTimeZone();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____NSSwiftTimeZone_timeZone);
      v6 = *(v4 + OBJC_IVAR____NSSwiftTimeZone_timeZone + 8);
      result = swift_unknownObjectRetain();
    }

    else
    {
      type metadata accessor for _TimeZoneBridged();
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      v6 = _s10Foundation16_TimeZoneBridgedCAcA01_bC8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type _TimeZoneBridged and conformance _TimeZoneBridged, type metadata accessor for _TimeZoneBridged);
      result = v2;
    }

    *a2 = v5;
    a2[1] = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NSTimeZone._toCustomAnyHashable()()
{
  type metadata accessor for _NSSwiftTimeZone();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for _TimeZoneBridged();
    *(swift_allocObject() + 16) = v0;
    _s10Foundation16_TimeZoneBridgedCAcA01_bC8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type _TimeZoneBridged and conformance _TimeZoneBridged, type metadata accessor for _TimeZoneBridged);
    v1 = v0;
  }

  lazy protocol witness table accessor for type TimeZone and conformance TimeZone();
  return AnyHashable.init<A>(_:)();
}

void protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSTimeZone()
{
  v1 = *v0;
  type metadata accessor for _NSSwiftTimeZone();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
  }

  else
  {
    type metadata accessor for _TimeZoneBridged();
    *(swift_allocObject() + 16) = v1;
    _s10Foundation16_TimeZoneBridgedCAcA01_bC8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type _TimeZoneBridged and conformance _TimeZoneBridged, type metadata accessor for _TimeZoneBridged);
    v2 = v1;
  }

  lazy protocol witness table accessor for type TimeZone and conformance TimeZone();
  AnyHashable.init<A>(_:)();
}

Swift::Int TimeZone.DaylightSavingTimePolicy.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

uint64_t specialized static TimeZone.identifierForAbbreviation(_:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v4 = static TimeZoneCache.cache;
  os_unfair_lock_lock((static TimeZoneCache.cache + 120));
  v5 = *(v4 + 72);
  if (!v5)
  {
    v5 = *(v4 + 112);
    *(v4 + 72) = v5;
  }

  os_unfair_lock_unlock((v4 + 120));
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 16 * v6);

    return v8;
  }

  else
  {

    v10 = specialized static TimeZone.tryParseGMTName(_:)();
    if (v11)
    {
      return 0;
    }

    result = specialized static TimeZone.nameForSecondsFromGMT(_:)(v10);
    if (!v12)
    {
      return 0;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for TimeZone(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type TimeZone and conformance TimeZone();
  a1[2] = lazy protocol witness table accessor for type TimeZone and conformance TimeZone();
  a1[3] = lazy protocol witness table accessor for type TimeZone and conformance TimeZone();
  result = lazy protocol witness table accessor for type TimeZone and conformance TimeZone();
  a1[4] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type TimeZone.DaylightSavingTimePolicy and conformance TimeZone.DaylightSavingTimePolicy()
{
  result = lazy protocol witness table cache variable for type TimeZone.DaylightSavingTimePolicy and conformance TimeZone.DaylightSavingTimePolicy;
  if (!lazy protocol witness table cache variable for type TimeZone.DaylightSavingTimePolicy and conformance TimeZone.DaylightSavingTimePolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeZone.DaylightSavingTimePolicy and conformance TimeZone.DaylightSavingTimePolicy);
  }

  return result;
}

uint64_t specialized _TimeZoneAutoupdating.debugDescription.getter()
{
  strcpy(v8, "autoupdating ");
  HIWORD(v8[1]) = -4864;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v0 = static TimeZoneCache.cache;
  os_unfair_lock_lock((static TimeZoneCache.cache + 120));
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    TimeZoneCache.State.findCurrentTimeZone()(v7);
    v1 = v7[1];
    *(v0 + 16) = v7[0];
    *(v0 + 24) = v1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v0 + 120));
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 32))(ObjectType, v1);
  v5 = v4;
  swift_unknownObjectRelease();
  MEMORY[0x1865CB0E0](v3, v5);

  return v8[0];
}

double specialized _TimeZoneAutoupdating.daylightSavingTimeOffset(for:)(uint64_t *a1)
{
  v1 = *a1;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v2 = static TimeZoneCache.cache;
  os_unfair_lock_lock((static TimeZoneCache.cache + 120));
  if (*(v2 + 16))
  {
    v3 = *(v2 + 24);
  }

  else
  {
    TimeZoneCache.State.findCurrentTimeZone()(v7);
    v3 = v7[1];
    *(v2 + 16) = v7[0];
    *(v2 + 24) = v3;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v2 + 120));
  ObjectType = swift_getObjectType();
  v7[0] = v1;
  v5 = (*(v3 + 80))(v7, ObjectType, v3);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t specialized _TimeZoneAutoupdating.localizedName(for:locale:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v5 = static TimeZoneCache.cache;
  os_unfair_lock_lock((static TimeZoneCache.cache + 120));
  if (*(v5 + 16))
  {
    v6 = *(v5 + 24);
  }

  else
  {
    TimeZoneCache.State.findCurrentTimeZone()(&v10);
    v6 = v11;
    *(v5 + 16) = v10;
    *(v5 + 24) = v6;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v5 + 120));
  ObjectType = swift_getObjectType();
  v10 = v3;
  v11 = v4;
  v8 = (*(v6 + 96))(a1, &v10, ObjectType, v6);
  swift_unknownObjectRelease();
  return v8;
}

char *TimeZoneCache.offsetFixed(_:)(uint64_t a1)
{
  v6 = *v1;
  os_unfair_lock_lock(*v1 + 30);
  v8 = *&v6[14]._os_unfair_lock_opaque;
  if (*(v8 + 16))
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v9)
    {
      v2 = *(*(v8 + 56) + 16 * v7);
      swift_unknownObjectRetain();
LABEL_36:
      os_unfair_lock_unlock(v6 + 30);
      return v2;
    }
  }

  v10 = a1;
  if (a1 < 0)
  {
    v10 = -a1;
    if (__OFSUB__(0, a1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }
  }

  type metadata accessor for _TimeZoneGMTICU();
  swift_allocObject();
  v2 = _TimeZoneGMTICU.init(secondsFromGMT:)(a1);
  if (!v2)
  {
    goto LABEL_36;
  }

  v3 = lazy protocol witness table accessor for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating(&lazy protocol witness table cache variable for type _TimeZoneGMTICU and conformance _TimeZoneGMTICU, type metadata accessor for _TimeZoneGMTICU);
  if (__ROR8__(0xFEDCBA987654321 * v10 + 0x91A2B3C4D5E6F8, 3) > 0x2468ACF13579BEuLL)
  {
    goto LABEL_36;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *&v6[14]._os_unfair_lock_opaque;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v13 = *(v4 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    goto LABEL_18;
  }

  LOBYTE(v10) = v12;
  if (*(v4 + 24) < v16)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, isUniquelyReferenced_nonNull_native);
    v17 = v4;
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if ((v10 & 1) != (v18 & 1))
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_36;
    }

LABEL_15:
    if (v10)
    {
LABEL_16:
      v19 = (*(v17 + 56) + 16 * v7);
      *v19 = v2;
      v19[1] = v3;
      swift_unknownObjectRelease();
LABEL_35:
      *&v6[14]._os_unfair_lock_opaque = v17;
      goto LABEL_36;
    }

LABEL_34:
    specialized _NativeDictionary._insert(at:key:value:)(v7, a1, v2, v17);
    goto LABEL_35;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    v17 = v4;
    goto LABEL_15;
  }

LABEL_19:
  v33 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10Foundation17_TimeZoneProtocol_pGMd);
  v20 = static _DictionaryStorage.copy(original:)();
  v17 = v20;
  if (!*(v4 + 16))
  {
LABEL_33:

    v7 = v33;
    if (v10)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

  result = (v20 + 64);
  __src = (v4 + 64);
  v22 = ((1 << *(v17 + 32)) + 63) >> 6;
  if (v17 != v4 || result >= &__src[8 * v22])
  {
    result = memmove(result, __src, 8 * v22);
  }

  v35 = 0;
  *(v17 + 16) = *(v4 + 16);
  v23 = 1 << *(v4 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v4 + 64);
  v32 = (v23 + 63) >> 6;
  for (i = 0; v25; i = v35)
  {
    v27 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v28 = v27 | (i << 6);
LABEL_31:
    v31 = *(*(v4 + 56) + 16 * v28);
    *(*(v17 + 48) + 8 * v28) = *(*(v4 + 48) + 8 * v28);
    *(*(v17 + 56) + 16 * v28) = v31;
    result = swift_unknownObjectRetain();
  }

  while (1)
  {
    v29 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v29 >= v32)
    {
      goto LABEL_33;
    }

    v30 = *&__src[8 * v29];
    ++i;
    if (v30)
    {
      v25 = (v30 - 1) & v30;
      v35 = v29;
      v28 = __clz(__rbit64(v30)) | (v29 << 6);
      goto LABEL_31;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in TimeZoneCache.setTimeZoneAbbreviations(_:)(uint64_t a1, uint64_t a2)
{

  *(a1 + 56) = a2;
  return result;
}

uint64_t destroy for TimeZoneCache()
{

  return swift_unknownObjectRelease();
}

uint64_t assignWithTake for TimeZoneCache(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 16);
  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 16) = v4;
  return a1;
}

uint64_t getEnumTagSinglePayload for TimeZoneCache.State(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TimeZoneCache.State(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *_TimeZoneGMT.__allocating_init(secondsFromGMT:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = specialized static TimeZone.nameForSecondsFromGMT(_:)(a1);
  if (v4)
  {
    v2[3] = v3;
    v2[4] = v4;
    v2[2] = a1;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

void *_TimeZoneGMT.init(secondsFromGMT:)(uint64_t a1)
{
  v3 = specialized static TimeZone.nameForSecondsFromGMT(_:)(a1);
  if (v4)
  {
    v1[3] = v3;
    v1[4] = v4;
    v1[2] = a1;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

Swift::tuple_rawOffset_Int_daylightSavingOffset_Double __swiftcall _TimeZoneGMT.rawAndDaylightSavingTimeOffset(for:repeatedTimePolicy:skippedTimePolicy:)(Foundation::Date a1, Foundation::TimeZone::DaylightSavingTimePolicy repeatedTimePolicy, Foundation::TimeZone::DaylightSavingTimePolicy skippedTimePolicy)
{
  v4 = *(v3 + 16);
  v5 = 0.0;
  result.daylightSavingOffset = v5;
  result.rawOffset = v4;
  return result;
}

uint64_t _TimeZoneGMT.debugDescription.getter()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v0);

  return 0x7366666F20746D67;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _TimeZoneGMT()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v0);

  return 0x7366666F20746D67;
}

uint64_t specialized static TimeZone.tryParseGMTName(_:)()
{
  v0 = String.count.getter();
  if ((v0 - 10) < 0xFFFFFFFFFFFFFFF9)
  {
    return 0;
  }

  v1 = v0;
  v2 = specialized Sequence<>.starts<A>(with:)();
  v3 = specialized Sequence<>.starts<A>(with:)();
  if ((v2 & 1) == 0 && (v3 & 1) == 0)
  {
    return 0;
  }

  if (v1 == 3)
  {
    return 0;
  }

  if (v1 < 5)
  {
    return 0;
  }

  String.index(_:offsetBy:)();
  v5 = String.subscript.getter();
  v7 = v6;
  if (v5 == 43 && v6 == 0xE100000000000000)
  {
    v8 = 1;
  }

  else
  {
    v11 = v5;
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (v11 == 45 && v7 == 0xE100000000000000)
    {

      v10 = 1;
      goto LABEL_18;
    }
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v10 = v8 ^ 1 | v9;
  if ((v8 & 1) == 0 && (v9 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  String.index(after:)();
  String.subscript.getter();
  v12 = Character.asciiValue.getter();

  result = 0;
  if ((v12 & 0x100) != 0 || (v12 - 58) < 0xF6u)
  {
    return result;
  }

  v13 = (v12 - 48);
  if (v1 == 5)
  {
    if (v10)
    {
      return -3600 * v13;
    }

    return 3600 * v13;
  }

  String.index(after:)();
  String.subscript.getter();
  v14 = Character.asciiValue.getter();

  if ((v14 & 0x100) != 0)
  {
    return 0;
  }

  if (v14 >= 0x30u)
  {
    if (v14 != 58)
    {
      if (v14 > 0x39u)
      {
        return 0;
      }

      v13 = 10 * v13 + (v14 - 48);
      if (v13 > 0x12)
      {
        return 0;
      }

      if (v1 == 6)
      {
        if (v10)
        {
          return -3600 * v13;
        }

        return 3600 * v13;
      }
    }
  }

  else if (v14 != 46)
  {
    return 0;
  }

  if (v1 < 8)
  {
    return 0;
  }

  String.index(after:)();
  String.subscript.getter();
  v15 = Character.asciiValue.getter();

  if ((v15 & 0x100) != 0)
  {
    return 0;
  }

  if (v15 < 0x30u)
  {
    result = 0;
    if (v1 != 9 || v15 != 46)
    {
      return result;
    }

    goto LABEL_41;
  }

  if (v15 == 58)
  {
    if (v1 == 9)
    {
LABEL_41:
      String.index(after:)();
      goto LABEL_44;
    }

    return 0;
  }

  result = 0;
  if (v1 != 8 || v15 >= 0x36u)
  {
    return result;
  }

LABEL_44:
  String.subscript.getter();
  v16 = Character.asciiValue.getter();

  String.index(after:)();
  String.subscript.getter();
  v17 = Character.asciiValue.getter();

  result = 0;
  if ((v17 & 0x100) != 0 || (v17 - 58) < 0xF6u)
  {
    return result;
  }

  if ((v16 & 0x100) != 0)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  v19 = v18 - 48;
  if ((v19 & 0xFFFFFF00) != 0)
  {
    __break(1u);
    goto LABEL_59;
  }

  v20 = 10 * v19;
  if ((v20 & 0xF00) != 0)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v21 = v20 + (v17 - 48);
  if ((v21 >> 8))
  {
LABEL_60:
    __break(1u);
    return result;
  }

  if (v13 == 18 && v21)
  {
    return 0;
  }

  if (v10)
  {
    return -3600 * v13 - 60 * v21;
  }

  return 3600 * v13 + 60 * v21;
}

uint64_t specialized static _TimeZoneGMT.abbreviation(for:)(uint64_t a1)
{
  if ((a1 - 64801) < 0xFFFFFFFFFFFE05BFLL)
  {
    return 0;
  }

  result = 5524807;
  if (a1 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = -a1;
  }

  if (v3 > 0xDF1 || (v3 + 30) % 0xE10u >= 0x3C)
  {
    if (a1 >= 0)
    {
      v4 = 43;
    }

    else
    {
      v4 = 45;
    }

    MEMORY[0x1865CB0E0](v4, 0xE100000000000000);
    if (v3 >= 0x8C82)
    {
      String.UnicodeScalarView.append(_:)();
    }

    String.UnicodeScalarView.append(_:)();
    result = 5524807;
    if ((v3 + 30) % 0xE10u >= 0x3C)
    {
      String.UnicodeScalarView.append(_:)();
      String.UnicodeScalarView.append(_:)();
      String.UnicodeScalarView.append(_:)();
      return 5524807;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _TimeZoneGMT(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _TimeZoneGMT and conformance _TimeZoneGMT();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _TimeZoneGMT and conformance _TimeZoneGMT()
{
  result = lazy protocol witness table cache variable for type _TimeZoneGMT and conformance _TimeZoneGMT;
  if (!lazy protocol witness table cache variable for type _TimeZoneGMT and conformance _TimeZoneGMT)
  {
    type metadata accessor for _TimeZoneGMT();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TimeZoneGMT and conformance _TimeZoneGMT);
  }

  return result;
}

uint64_t _TimeZoneProtocol.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 32))(a2, a3);
  String.hash(into:)();
}

NSTimeZone __swiftcall _TimeZoneProtocol.bridgeToNSTimeZone()()
{
  v2 = v0;
  v3 = type metadata accessor for _NSSwiftTimeZone();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____NSSwiftTimeZone_timeZone];
  *v5 = v1;
  *(v5 + 1) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA16_NSSwiftTimeZoneC0C0V_GMd);
  v6 = swift_allocObject();
  *(v6 + 32) = 0;
  *(v6 + 16) = xmmword_18122E880;
  *&v4[OBJC_IVAR____NSSwiftTimeZone_lock] = v6;
  v8.receiver = v4;
  v8.super_class = v3;
  swift_unknownObjectRetain();
  return objc_msgSendSuper2(&v8, sel_init);
}

id protocol witness for _TimeZoneProtocol.bridgeToNSTimeZone() in conformance _TimeZoneGMTICU(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _NSSwiftTimeZone();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____NSSwiftTimeZone_timeZone];
  *v6 = v2;
  *(v6 + 1) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA16_NSSwiftTimeZoneC0C0V_GMd);
  v7 = swift_allocObject();
  *(v7 + 32) = 0;
  *(v7 + 16) = xmmword_18122E880;
  *&v5[OBJC_IVAR____NSSwiftTimeZone_lock] = v7;
  v9.receiver = v5;
  v9.super_class = v4;

  return objc_msgSendSuper2(&v9, sel_init);
}

void *specialized Sequence._copyContents(initializing:)(void *result, uint64_t a2, unint64_t a3)
{
  if (!a2)
  {
LABEL_12:
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
LABEL_15:
    *result = v3;
    result[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a3;
    v12 = result;
    v5 = 0;
    v6 = (a3 - 1);
    while (1)
    {
      if (v5 == [v3 length])
      {
        a3 = v5;
        result = v12;
        goto LABEL_15;
      }

      v15 = 0;
      v14 = v5;
      v7 = swift_allocObject();
      v7[2] = &v14;
      v7[3] = v5;
      v7[4] = &v15;
      v8 = swift_allocObject();
      *(v8 + 16) = partial apply for closure #1 in NSData.subscript.getter;
      *(v8 + 24) = v7;
      aBlock[4] = partial apply for thunk for @callee_guaranteed (@unowned UnsafeRawPointer, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
      aBlock[5] = v8;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeRawPointer, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
      aBlock[3] = &block_descriptor_4;
      v9 = _Block_copy(aBlock);

      [v3 enumerateByteRangesUsingBlock_];
      _Block_release(v9);
      LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

      if (v9)
      {
        break;
      }

      v10 = v15;

      result = [v3 length];
      if (v5 >= result)
      {
        goto LABEL_17;
      }

      v5[a2] = v10;
      if (v6 == v5)
      {
        a3 = v11;
        result = v12;
        goto LABEL_15;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized Sequence._copyContents(initializing:)(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  NSFastEnumerationIterator.init(_:)(v3, &v26);
  if (!a2)
  {
    v10 = *(v38 + 9);
    v11 = v37;
    a1[10] = v36;
    a1[11] = v11;
    a1[12] = v38[0];
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_10:
    v9 = v37;
    a1[10] = v36;
    a1[11] = v9;
    a1[12] = v38[0];
    v10 = *(v38 + 9);
LABEL_12:
    *(a1 + 201) = v10;
    v12 = v33;
    a1[6] = v32;
    a1[7] = v12;
    v13 = v35;
    a1[8] = v34;
    a1[9] = v13;
    v14 = v29;
    a1[2] = v28;
    a1[3] = v14;
    v15 = v31;
    a1[4] = v30;
    a1[5] = v15;
    v16 = v26;
    v17 = v27;
LABEL_13:
    *a1 = v16;
    a1[1] = v17;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = 1;
    while (1)
    {
      NSFastEnumerationIterator.next()(&v23);
      if (!v24)
      {
        break;
      }

      outlined init with take of Any(&v23, v25);
      outlined init with take of Any(v25, a2);
      if (a3 == v7)
      {
        goto LABEL_10;
      }

      a2 += 2;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    outlined destroy of Any?(&v23);
    v18 = v37;
    a1[10] = v36;
    a1[11] = v18;
    a1[12] = v38[0];
    *(a1 + 201) = *(v38 + 9);
    v19 = v33;
    a1[6] = v32;
    a1[7] = v19;
    v20 = v35;
    a1[8] = v34;
    a1[9] = v20;
    v21 = v29;
    a1[2] = v28;
    a1[3] = v21;
    v22 = v31;
    a1[4] = v30;
    a1[5] = v22;
    v16 = v26;
    v17 = v27;
    goto LABEL_13;
  }

  __break(1u);
}

_BYTE *specialized Sequence._copyContents(initializing:)(_BYTE *result, void *a2, uint64_t a3)
{
  v4 = v3;
  v5 = result;
  if (!a2)
  {
    v10 = 0;
    v6 = 0;
    *result = v4;
    v7 = 1;
    result[8] = 1;
LABEL_15:
    *(v5 + 2) = v10;
    v5[24] = v7;
    return v6;
  }

  v6 = a3;
  v7 = a3 == 0;
  if (!a3)
  {
    v10 = 0;
LABEL_14:
    *v5 = v4;
    v5[8] = v6 == 0;
    goto LABEL_15;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    result = [v4 firstIndex];
    if (result == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
LABEL_6:
      v10 = 0;
      *v5 = v4;
      v5[8] = 0;
      v7 = 1;
      v6 = v9;
      goto LABEL_15;
    }

    v10 = result;
    *a2 = result;
    if (v6 != 1)
    {
      v9 = 1;
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        result = [v4 indexGreaterThanIndex_];
        if (result == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_6;
        }

        v10 = result;
        a2[v9++] = result;
        if (v11 == v6)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_17;
    }

    goto LABEL_14;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *specialized Sequence._copyContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a4 + a5;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *result = a4;
    result[1] = v5;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    while (1)
    {
      if (a4 + v6 >= v5)
      {
        a4 += v6;
        a3 = v6;
        goto LABEL_13;
      }

      *(a2 + v6) = *(a4 + v6);
      if (a3 - 1 == v6)
      {
        break;
      }

      if (__OFADD__(++v6, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a4 += v6 + 1;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void URLResourceValues.init()(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CD0];
  *a1 = MEMORY[0x1E69E7CC8];
  a1[1] = v1;
}

uint64_t specialized URLResourceValues._get<A>(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(a2 + 56) + 32 * v5, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

void URLResourceValues._set(_:newValue:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  specialized Set._Variant.insert(_:)(v7, v4);

  if (a3)
  {
    v5 = String._bridgeToObjectiveCImpl()();
    v6 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSString);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  v7[0] = v5;
  v7[3] = v6;
  specialized Dictionary.subscript.setter(v7, v4);
}

void URLResourceValues._set(_:newValue:)(void *a1, uint64_t a2, char a3)
{
  v5 = a1;
  specialized Set._Variant.insert(_:)(&v10, v5);

  if (a3)
  {
    v10 = 0u;
    v11 = 0u;
    v6 = v5;
  }

  else
  {
    v7 = objc_allocWithZone(NSNumber);
    v8 = v5;
    v9 = [v7 initWithInteger_];
    *(&v11 + 1) = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
    *&v10 = v9;
    v6 = v8;
  }

  specialized Dictionary.subscript.setter(&v10, v6);
}

uint64_t (*URLResourceValues.name.modify(uint64_t *a1))()
{
  v3 = *v1;
  v4 = *MEMORY[0x1E695DC30];
  a1[2] = v1;
  a1[3] = v4;
  *a1 = specialized URLResourceValues._get<A>(_:)(v4, v3);
  a1[1] = v5;
  return URLResourceValues.name.modify;
}

void (*URLResourceValues.isPackage.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = URLResourceValues.isPackage.getter();
  return URLResourceValues.isPackage.modify;
}

void (*URLResourceValues.isUserImmutable.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = URLResourceValues.isUserImmutable.getter();
  return URLResourceValues.isUserImmutable.modify;
}

void (*URLResourceValues.isHidden.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = URLResourceValues.isHidden.getter();
  return URLResourceValues.isHidden.modify;
}

void (*URLResourceValues.hasHiddenExtension.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = URLResourceValues.hasHiddenExtension.getter();
  return URLResourceValues.hasHiddenExtension.modify;
}

uint64_t (*URLResourceValues.creationDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *v1;
  v6 = *MEMORY[0x1E695DAA8];
  *(v4 + 56) = *MEMORY[0x1E695DAA8];
  if (*(v5 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v8 & 1) != 0))
  {
    outlined init with copy of Any(*(v5 + 56) + 32 * v7, v4);
  }

  else
  {
    *v4 = 0u;
    *(v4 + 16) = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  v9 = swift_dynamicCast();
  if ((v9 & 1) == 0)
  {
    *(v4 + 32) = 0;
  }

  *(v4 + 40) = v9 ^ 1;
  return URLResourceValues.creationDate.modify;
}

void URLResourceValues.creationDate.setter(uint64_t a1, id *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  specialized Set._Variant.insert(_:)(v7, v4);

  if (v3)
  {
    v5 = 0;
    v6 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
    v6 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSDate);
  }

  v7[0] = v5;
  v7[3] = v6;
  specialized Dictionary.subscript.setter(v7, v4);
}

uint64_t (*URLResourceValues.contentAccessDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *v1;
  v6 = *MEMORY[0x1E695DA90];
  *(v4 + 56) = *MEMORY[0x1E695DA90];
  if (*(v5 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v8 & 1) != 0))
  {
    outlined init with copy of Any(*(v5 + 56) + 32 * v7, v4);
  }

  else
  {
    *v4 = 0u;
    *(v4 + 16) = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  v9 = swift_dynamicCast();
  if ((v9 & 1) == 0)
  {
    *(v4 + 32) = 0;
  }

  *(v4 + 40) = v9 ^ 1;
  return URLResourceValues.contentAccessDate.modify;
}

void URLResourceValues.creationDate.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  specialized Set._Variant.insert(_:)(v7, *(*a1 + 56));

  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
    v5 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSDate);
  }

  v6 = v1[7];
  v7[0] = v4;
  v7[3] = v5;
  specialized Dictionary.subscript.setter(v7, v6);

  free(v1);
}

uint64_t (*URLResourceValues.contentModificationDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *v1;
  v6 = *MEMORY[0x1E695DA98];
  *(v4 + 56) = *MEMORY[0x1E695DA98];
  if (*(v5 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v8 & 1) != 0))
  {
    outlined init with copy of Any(*(v5 + 56) + 32 * v7, v4);
  }

  else
  {
    *v4 = 0u;
    *(v4 + 16) = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  v9 = swift_dynamicCast();
  if ((v9 & 1) == 0)
  {
    *(v4 + 32) = 0;
  }

  *(v4 + 40) = v9 ^ 1;
  return URLResourceValues.contentAccessDate.modify;
}

void (*URLResourceValues.labelNumber.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = URLResourceValues.labelNumber.getter();
  *(a1 + 8) = v3 & 1;
  return URLResourceValues.labelNumber.modify;
}

void URLResourceValues.fileSecurity.setter(void *a1)
{
  specialized URLResourceValues.fileSecurity.setter(a1);
}

void (*URLResourceValues.fileSecurity.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = specialized URLResourceValues._get<A>(_:)(*MEMORY[0x1E695DB48], *v1);
  return URLResourceValues.fileSecurity.modify;
}

void URLResourceValues.fileSecurity.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4;
    specialized URLResourceValues.fileSecurity.setter(v4);

    v3 = v2;
  }

  else
  {
    specialized URLResourceValues.fileSecurity.setter(*a1);
    v3 = v4;
  }
}

void (*URLResourceValues.isExcludedFromBackup.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = URLResourceValues.isExcludedFromBackup.getter();
  return URLResourceValues.isExcludedFromBackup.modify;
}

uint64_t URLResourceValues.fileResourceIdentifier.getter(void **a1)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(*a1), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSCopying_So14NSSecureCodingSo8NSObjectpMd);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t URLResourceValues.fileProtection.getter(void **a1, void (*a2)(void))
{
  v4 = *v2;
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(*a1), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(v4 + 56) + 32 * v5, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  a2(0);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t URLResourceValues.fileIdentifier.getter(void **a1)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(*a1), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  v5 = swift_dynamicCast();
  v6 = v9;
  if (!v5)
  {
    return 0;
  }

  return v6;
}

uint64_t URLResourceValues.name.setter(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = *a3;
  specialized Set._Variant.insert(_:)(v8, v4);

  if (a2)
  {
    v5 = String._bridgeToObjectiveCImpl()();
    v6 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSString);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  v8[0] = v5;
  v8[3] = v6;
  specialized Dictionary.subscript.setter(v8, v4);
}

uint64_t (*URLResourceValues.volumeName.modify(uint64_t *a1))()
{
  v3 = *v1;
  v4 = *MEMORY[0x1E695DDE8];
  a1[2] = v1;
  a1[3] = v4;
  *a1 = specialized URLResourceValues._get<A>(_:)(v4, v3);
  a1[1] = v5;
  return URLResourceValues.volumeName.modify;
}

uint64_t URLResourceValues.name.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  if (a2)
  {

    v4 = v3;
    specialized Set._Variant.insert(_:)(&v11, v4);

    if (v2)
    {
      v5 = String._bridgeToObjectiveCImpl()();
      v6 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSString);
    }

    else
    {
      v5 = 0;
      v6 = 0;
      v12 = 0;
      v13 = 0;
    }

    v11 = v5;
    v14 = v6;
    specialized Dictionary.subscript.setter(&v11, v4);
  }

  else
  {
    v7 = v3;
    specialized Set._Variant.insert(_:)(&v11, v7);

    if (v2)
    {
      v8 = String._bridgeToObjectiveCImpl()();
      v9 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSString);
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v12 = 0;
      v13 = 0;
    }

    v11 = v8;
    v14 = v9;
    specialized Dictionary.subscript.setter(&v11, v7);
  }
}

uint64_t URLResourceValues.fileSecurity.getter(void **a1, unint64_t *a2)
{
  v4 = *v2;
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(*a1), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(v4 + 56) + 32 * v5, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  type metadata accessor for NSMorphologyPronoun(0, a2);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

void (*URLResourceValues.ubiquitousItemIsExcludedFromSync.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = URLResourceValues.ubiquitousItemIsExcludedFromSync.getter();
  return URLResourceValues.ubiquitousItemIsExcludedFromSync.modify;
}

uint64_t URLResourceValues.ubiquitousSharedItemOwnerNameComponents.getter@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(*a1), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(v4 + 56) + 32 * v5, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
  }

  return result;
}

uint64_t URL.init(stringOrEmpty:relativeTo:)@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for compatibility2 != -1)
  {
    swift_once();
  }

  if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v2 = type metadata accessor for _BridgedURL();
    v3 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v2 = type metadata accessor for _SwiftURL();
    v3 = &protocol witness table for _SwiftURL;
  }

  result = (v3[4])();
  if (result)
  {
    v5 = (v3[56])(v2, v3);
    v7 = v6;
    result = swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return result;
}

uint64_t URL.init(string:relativeTo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
{
  v14 = *a3;
  if (one-time initialization token for compatibility2 != -1)
  {
    swift_once();
  }

  if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v7 = type metadata accessor for _BridgedURL();
    v8 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v7 = type metadata accessor for _SwiftURL();
    v8 = &protocol witness table for _SwiftURL;
  }

  v15 = v14;
  v9 = v8[2];
  swift_unknownObjectRetain();

  result = v9(a1, a2, &v15, v7, v8);
  if (result)
  {
    v11 = (v8[56])(v7, v8);
    v13 = v12;
    result = swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  *a4 = v11;
  a4[1] = v13;
  return result;
}

uint64_t URL.init(string:encodingInvalidCharacters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  if (one-time initialization token for compatibility2 != -1)
  {
    swift_once();
  }

  if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v8 = type metadata accessor for _BridgedURL();
    v9 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v8 = type metadata accessor for _SwiftURL();
    v9 = &protocol witness table for _SwiftURL;
  }

  v10 = v9[3];

  result = v10(a1, a2, a3 & 1, v8, v9);
  if (result)
  {
    v12 = (v9[56])(v8, v9);
    v14 = v13;
    result = swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  *a4 = v12;
  a4[1] = v14;
  return result;
}

uint64_t URL.init(fileURLWithPath:isDirectory:relativeTo:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, __int128 *a4@<X3>, uint64_t *a5@<X8>)
{
  v16 = *a4;
  if (one-time initialization token for compatibility2 != -1)
  {
    swift_once();
  }

  if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v9 = type metadata accessor for _BridgedURL();
    v10 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v9 = type metadata accessor for _SwiftURL();
    v10 = &protocol witness table for _SwiftURL;
  }

  v17 = v16;
  v11 = v10[5];
  swift_unknownObjectRetain();

  v11(a1, a2, a3 & 1, &v17);
  v12 = (v10[56])(v9, v10);
  v14 = v13;
  result = swift_unknownObjectRelease();
  *a5 = v12;
  a5[1] = v14;
  return result;
}

uint64_t URL.init(fileURLWithPath:relativeTo:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
{
  v14 = *a3;
  if (one-time initialization token for compatibility2 != -1)
  {
    swift_once();
  }

  if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v7 = type metadata accessor for _BridgedURL();
    v8 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v7 = type metadata accessor for _SwiftURL();
    v8 = &protocol witness table for _SwiftURL;
  }

  v15 = v14;
  v9 = v8[6];
  swift_unknownObjectRetain();

  v9(a1, a2, &v15);
  v10 = (v8[56])(v7, v8);
  v12 = v11;
  result = swift_unknownObjectRelease();
  *a4 = v10;
  a4[1] = v12;
  return result;
}

id URL.init(dataRepresentation:relativeTo:isAbsolute:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __int128 *a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v16 = *a3;
  if (one-time initialization token for compatibility2 != -1)
  {
    swift_once();
  }

  if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v9 = type metadata accessor for _BridgedURL();
    v10 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v9 = type metadata accessor for _SwiftURL();
    v10 = &protocol witness table for _SwiftURL;
  }

  v17 = v16;
  v11 = v10[10];
  outlined copy of Data._Representation(a1, a2);
  swift_unknownObjectRetain();
  result = v11(a1, a2, &v17, a4 & 1);
  if (result)
  {
    v13 = (v10[56])(v9, v10);
    v15 = v14;
    result = swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  *a5 = v13;
  a5[1] = v15;
  return result;
}

void URL.init(resolvingBookmarkData:options:relativeTo:bookmarkDataIsStale:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, _BYTE *a5@<X4>, uint64_t *a6@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  v9 = *a4;
  v10 = a4[1];
  v47 = 0;
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2)
    {
      v19 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
      swift_unknownObjectRetain();
      v14 = [v19 init];
      if (v9)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

    v15 = *(a1 + 16);
    v16 = *(a1 + 24);
  }

  else
  {
    if (!v11)
    {
      v39 = a1;
      v40 = a2;
      v41 = BYTE2(a2);
      v42 = BYTE3(a2);
      v43 = BYTE4(a2);
      v12 = BYTE6(a2);
      v44 = BYTE5(a2);
      v13 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
      swift_unknownObjectRetain();
      v14 = [v13 initWithBytes:&v39 length:v12];
      if (!v9)
      {
        goto LABEL_11;
      }

LABEL_9:
      ObjectType = swift_getObjectType();
      v18 = (*(v10 + 432))(ObjectType, v10);
      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    v15 = a1;
    v16 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
      goto LABEL_26;
    }
  }

  swift_unknownObjectRetain();
  v14 = __DataStorage.bridgedReference(_:)(v15, v16);
  if (v9)
  {
    goto LABEL_9;
  }

LABEL_11:
  v18 = 0;
LABEL_12:
  v20 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
  v39 = 0;
  v21 = [v20 initByResolvingBookmarkData:v14 options:a3 relativeToURL:v18 bookmarkDataIsStale:&v47 error:&v39];

  v22 = v39;
  if (!v21)
  {
    if (v39)
    {
      v39;
LABEL_21:
      swift_willThrow();
      return;
    }

    if (one-time initialization token for _nilObjCError == -1)
    {
LABEL_20:
      v34 = _nilObjCError;
      goto LABEL_21;
    }

LABEL_26:
    swift_once();
    goto LABEL_20;
  }

  *a5 = v47;
  v23 = v22;
  if (!_foundation_swift_nsurl_feature_enabled())
  {
    v30 = type metadata accessor for _BridgedURL();
    v31 = objc_allocWithZone(v30);
    *&v31[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v21;
    v46.receiver = v31;
    v46.super_class = v30;
    v32 = v21;
    v33 = objc_msgSendSuper2(&v46, sel_init);
LABEL_23:
    v37 = v33;
    v27 = _BridgedURL.convertingFileReference()();
    v29 = v38;

    goto LABEL_24;
  }

  type metadata accessor for _NSSwiftURL();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    v35 = type metadata accessor for _BridgedURL();
    v36 = objc_allocWithZone(v35);
    *&v36[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v21;
    v45.receiver = v36;
    v45.super_class = v35;
    v32 = v21;
    v33 = objc_msgSendSuper2(&v45, sel_init);
    goto LABEL_23;
  }

  v25 = v24;
  type metadata accessor for _BridgedNSSwiftURL();
  *(swift_allocObject() + 16) = v25;
  v26 = v21;
  v27 = _BridgedNSSwiftURL.convertingFileReference()();
  v29 = v28;

LABEL_24:
  *a6 = v27;
  a6[1] = v29;
}

{
  v48 = *MEMORY[0x1E69E9840];
  v9 = *a4;
  v10 = a4[1];
  v47 = 0;
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2)
    {
      v19 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
      swift_unknownObjectRetain();
      v14 = [v19 init];
      if (v9)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

    v15 = *(a1 + 16);
    v16 = *(a1 + 24);
  }

  else
  {
    if (!v11)
    {
      v39 = a1;
      v40 = a2;
      v41 = BYTE2(a2);
      v42 = BYTE3(a2);
      v43 = BYTE4(a2);
      v12 = BYTE6(a2);
      v44 = BYTE5(a2);
      v13 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
      swift_unknownObjectRetain();
      v14 = [v13 initWithBytes:&v39 length:v12];
      if (!v9)
      {
        goto LABEL_11;
      }

LABEL_9:
      ObjectType = swift_getObjectType();
      v18 = (*(v10 + 432))(ObjectType, v10);
      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    v15 = a1;
    v16 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
      goto LABEL_26;
    }
  }

  swift_unknownObjectRetain();
  v14 = __DataStorage.bridgedReference(_:)(v15, v16);
  if (v9)
  {
    goto LABEL_9;
  }

LABEL_11:
  v18 = 0;
LABEL_12:
  v20 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
  v39 = 0;
  v21 = [v20 initByResolvingBookmarkData:v14 options:a3 relativeToURL:v18 bookmarkDataIsStale:&v47 error:&v39];

  v22 = v39;
  if (!v21)
  {
    if (v39)
    {
      v39;
LABEL_21:
      swift_willThrow();
      return;
    }

    if (one-time initialization token for _nilObjCError == -1)
    {
LABEL_20:
      v34 = _nilObjCError;
      goto LABEL_21;
    }

LABEL_26:
    swift_once();
    goto LABEL_20;
  }

  *a5 = v47;
  v23 = v22;
  if (!_foundation_swift_nsurl_feature_enabled())
  {
    v30 = type metadata accessor for _BridgedURL();
    v31 = objc_allocWithZone(v30);
    *&v31[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v21;
    v46.receiver = v31;
    v46.super_class = v30;
    v32 = v21;
    v33 = objc_msgSendSuper2(&v46, sel_init);
LABEL_23:
    v37 = v33;
    v27 = _BridgedURL.convertingFileReference()();
    v29 = v38;

    goto LABEL_24;
  }

  type metadata accessor for _NSSwiftURL();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    v35 = type metadata accessor for _BridgedURL();
    v36 = objc_allocWithZone(v35);
    *&v36[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v21;
    v45.receiver = v36;
    v45.super_class = v35;
    v32 = v21;
    v33 = objc_msgSendSuper2(&v45, sel_init);
    goto LABEL_23;
  }

  v25 = v24;
  type metadata accessor for _BridgedNSSwiftURL();
  *(swift_allocObject() + 16) = v25;
  v26 = v21;
  v27 = _BridgedNSSwiftURL.convertingFileReference()();
  v29 = v28;

LABEL_24:
  *a6 = v27;
  a6[1] = v29;
}

void URL.init(resolvingAliasFileAt:options:)(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSURL);
  v25 = *a1;
  swift_unknownObjectRetain();
  v7 = @nonobjc NSURL.__allocating_init(resolvingAliasFileAt:options:)(&v25, a2);
  if (!v3)
  {
    v8 = v7;
    if (_foundation_swift_nsurl_feature_enabled())
    {
      type metadata accessor for _NSSwiftURL();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = v9;
        type metadata accessor for _BridgedNSSwiftURL();
        *(swift_allocObject() + 16) = v10;
        v11 = v8;
        v12 = _BridgedNSSwiftURL.convertingFileReference()();
        v14 = v13;

LABEL_8:
        *a3 = v12;
        a3[1] = v14;
        return;
      }

      v19 = type metadata accessor for _BridgedURL();
      v20 = objc_allocWithZone(v19);
      *&v20[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v8;
      v23.receiver = v20;
      v17 = v8;
      v18 = objc_msgSendSuper2(&v23, sel_init, v23.receiver, v19, v24.receiver, v24.super_class, v25);
    }

    else
    {
      v15 = type metadata accessor for _BridgedURL();
      v16 = objc_allocWithZone(v15);
      *&v16[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v8;
      v24.receiver = v16;
      v17 = v8;
      v18 = objc_msgSendSuper2(&v24, sel_init, v23.receiver, v23.super_class, v24.receiver, v15, v25);
    }

    v21 = v18;
    v12 = _BridgedURL.convertingFileReference()();
    v14 = v22;

    goto LABEL_8;
  }
}

id @nonobjc NSURL.__allocating_init(resolvingAliasFileAt:options:)(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 432))(ObjectType, v3);
  v10[0] = 0;
  v6 = [swift_getObjCClassFromMetadata() URLByResolvingAliasFileAtURL:v5 options:a2 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    if (v10[0])
    {
      v10[0];
    }

    else
    {
      if (one-time initialization token for _nilObjCError != -1)
      {
        swift_once();
      }

      v8 = _nilObjCError;
    }

    swift_willThrow();
  }

  swift_unknownObjectRelease();
  return v6;
}

uint64_t URL.dataRepresentation.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 96))(ObjectType, v1);
}

uint64_t URL.relativeString.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 104))(ObjectType, v1);
}

uint64_t URL.baseURL.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 120))(ObjectType, v1);
}

uint64_t URL.user.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 160))(ObjectType, v1);
}

Swift::String_optional __swiftcall URL.user(percentEncoded:)(Swift::Bool percentEncoded)
{
  v2 = percentEncoded;
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 168))(v2, ObjectType, v3);
  result.value._object = v6;
  result.value._countAndFlagsBits = v5;
  return result;
}

uint64_t URL.password.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 176))(ObjectType, v1);
}

Swift::String_optional __swiftcall URL.password(percentEncoded:)(Swift::Bool percentEncoded)
{
  v2 = percentEncoded;
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 184))(v2, ObjectType, v3);
  result.value._object = v6;
  result.value._countAndFlagsBits = v5;
  return result;
}

uint64_t URL.query.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 256))(ObjectType, v1);
}

uint64_t URL.fragment.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 272))(ObjectType, v1);
}

Swift::String_optional __swiftcall URL.fragment(percentEncoded:)(Swift::Bool percentEncoded)
{
  v2 = percentEncoded;
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 280))(v2, ObjectType, v3);
  result.value._object = v6;
  result.value._countAndFlagsBits = v5;
  return result;
}

void *URL.deletingPathExtension()@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  ObjectType = swift_getObjectType();
  result = (*(v3 + 384))(v8, ObjectType, v3);
  v7 = v8[0];
  if (v8[0])
  {
    v3 = v8[1];
  }

  else
  {
    result = swift_unknownObjectRetain();
    v7 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
  return result;
}

Swift::Void __swiftcall URL.deleteLastPathComponent()()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[1];
  ObjectType = swift_getObjectType();
  (*(v3 + 368))(v6, ObjectType, v3);
  v5 = v6[0];
  if (v6[0])
  {
    v3 = v6[1];
    swift_unknownObjectRelease();
    v2 = v5;
  }

  *v1 = v2;
  v1[1] = v3;
}

Swift::Void __swiftcall URL.deletePathExtension()()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[1];
  ObjectType = swift_getObjectType();
  (*(v3 + 384))(v6, ObjectType, v3);
  v5 = v6[0];
  if (v6[0])
  {
    v3 = v6[1];
    swift_unknownObjectRelease();
    v2 = v5;
  }

  *v1 = v2;
  v1[1] = v3;
}

Swift::Void __swiftcall URL.standardize()()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[1];
  ObjectType = swift_getObjectType();
  (*(v3 + 392))(v6, ObjectType, v3);
  v5 = v6[0];
  if (v6[0])
  {
    v3 = v6[1];
    swift_unknownObjectRelease();
    v2 = v5;
  }

  *v1 = v2;
  v1[1] = v3;
}

Swift::Void __swiftcall URL.resolveSymlinksInPath()()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[1];
  ObjectType = swift_getObjectType();
  (*(v3 + 408))(v6, ObjectType, v3);
  v5 = v6[0];
  if (v6[0])
  {
    v3 = v6[1];
    swift_unknownObjectRelease();
    v2 = v5;
  }

  *v1 = v2;
  v1[1] = v3;
}

uint64_t URL.setTemporaryResourceValue(_:forKey:)(void *a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 432))(ObjectType, v5);
  v8 = a1[3];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v8);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    v12 = MEMORY[0x1EEE9AC00](result);
    (*(v14 + 16))(&v15 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v8, v12);
    v11 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    goto LABEL_4;
  }

  if (*(*(v8 - 8) + 64) == 8)
  {
    v11 = *v9;
    swift_unknownObjectRetain();
LABEL_4:
    [v7 setTemporaryResourceValue:v11 forKey:a2];

    return swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall URL.removeAllCachedResourceValues()()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 432))(ObjectType, v1);
  [v3 removeAllCachedResourceValues];
}

void *URL.bookmarkData(options:includingResourceValuesForKeys:relativeTo:)(uint64_t a1, void *a2, uint64_t *a3)
{
  v25[5] = *MEMORY[0x1E69E9840];
  v8 = *a3;
  v7 = a3[1];
  v9 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  v11 = (*(v9 + 432))(ObjectType, v9);
  v12 = v11;
  if (a2)
  {
    v13 = a2[2];
    if (v13)
    {
      v21 = v11;
      v22 = a1;
      v23 = v4;
      v14 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm(v13, 0, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd);
      v24 = specialized Sequence._copyContents(initializing:)(v25, v14 + 4, v13, a2);

      outlined consume of Set<AnyKeyPath>.Iterator._Variant();
      if (v24 != v13)
      {
        __break(1u);
        goto LABEL_18;
      }

      v12 = v21;
    }

    type metadata accessor for NSURLResourceKey(0);
    a2 = _ContiguousArrayBuffer._asCocoaArray()();
  }

  if (v8)
  {
    v15 = swift_getObjectType();
    v14 = (*(v7 + 432))(v15, v7);
  }

  else
  {
    v14 = 0;
  }

  v25[0] = 0;
  v16 = [v12 bookmarkDataWithOptions:a1 includingResourceValuesForKeys:a2 relativeToURL:v14 error:{v25, v21, v22, v23}];

  if (!v16)
  {
    if (v25[0])
    {
      v25[0];
LABEL_15:
      swift_willThrow();
      return v14;
    }

    if (one-time initialization token for _nilObjCError == -1)
    {
LABEL_14:
      v19 = _nilObjCError;
      goto LABEL_15;
    }

LABEL_18:
    swift_once();
    goto LABEL_14;
  }

  v17 = v25[0];
  v18 = v16;
  v14 = specialized Data.init(referencing:)(v18);

  return v14;
}

void static URL.resourceValues(forKeys:fromBookmarkData:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a3;
  v26 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm(v8, 0, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd);
    v10 = specialized Sequence._copyContents(initializing:)(&v20, v9 + 4, v8, a1);

    outlined consume of Set<AnyKeyPath>.Iterator._Variant();
    if (v10 != v8)
    {
      __break(1u);
      goto LABEL_17;
    }

    v4 = a3;
  }

  type metadata accessor for NSURLResourceKey(0);
  v11 = _ContiguousArrayBuffer._asCocoaArray()();
  v12 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v12)
    {
      v20 = a2;
      v21 = v4;
      v22 = BYTE2(v4);
      v23 = BYTE3(v4);
      v24 = BYTE4(v4);
      v25 = BYTE5(v4);
      v13 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v20 length:BYTE6(v4)];
      goto LABEL_12;
    }

    v14 = a2;
    v15 = a2 >> 32;
    if (a2 >> 32 >= a2)
    {
      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
  }

  if (v12 == 2)
  {
    v14 = *(a2 + 16);
    v15 = *(a2 + 24);
LABEL_10:
    v13 = __DataStorage.bridgedReference(_:)(v14, v15);
    goto LABEL_12;
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
LABEL_12:
  v16 = v13;
  v17 = [objc_opt_self() resourceValuesForKeys:v11 fromBookmarkData:v13];
  swift_unknownObjectRelease();

  if (v17)
  {
    v20 = 0;
    _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSo16NSURLResourceKeya_ypTt1g5(v17, &v20);
    v18 = v20;
    if (v20)
    {

      *a4 = v18;
      a4[1] = a1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }
}

id static URL.writeBookmarkData(_:to:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *(a3 + 8);
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v15 = a1;
      v16 = a2;
      v17 = BYTE2(a2);
      v18 = BYTE3(a2);
      v19 = BYTE4(a2);
      v20 = BYTE5(a2);
      v5 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v15 length:BYTE6(a2)];
      goto LABEL_9;
    }

    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
      goto LABEL_17;
    }

    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
LABEL_7:
    v5 = __DataStorage.bridgedReference(_:)(v6, v7);
    goto LABEL_9;
  }

  v5 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
LABEL_9:
  v8 = v5;
  v9 = objc_opt_self();
  ObjectType = swift_getObjectType();
  v11 = (*(v3 + 432))(ObjectType, v3);
  v15 = 0;
  v12 = [v9 writeBookmarkData:v8 toURL:v11 options:0 error:&v15];

  if (v12)
  {
    return v15;
  }

  if (!v15)
  {
    if (one-time initialization token for _nilObjCError == -1)
    {
LABEL_14:
      v14 = _nilObjCError;
      return swift_willThrow();
    }

LABEL_17:
    swift_once();
    goto LABEL_14;
  }

  v15;
  return swift_willThrow();
}

id static URL.bookmarkData(withContentsOf:)(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = objc_opt_self();
  ObjectType = swift_getObjectType();
  v4 = (*(v1 + 432))(ObjectType, v1);
  v10[0] = 0;
  v5 = [v2 bookmarkDataWithContentsOfURL:v4 error:v10];

  if (v5)
  {
    v6 = v10[0];
    v7 = v5;
    v5 = specialized Data.init(referencing:)(v7);
  }

  else
  {
    if (v10[0])
    {
      v10[0];
    }

    else
    {
      if (one-time initialization token for _nilObjCError != -1)
      {
        swift_once();
      }

      v8 = _nilObjCError;
    }

    swift_willThrow();
  }

  return v5;
}

Swift::Int URL.hashValue.getter()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  ObjectType = swift_getObjectType();
  (*(v1 + 104))(ObjectType, v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance URL()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  ObjectType = swift_getObjectType();
  (*(v1 + 104))(ObjectType, v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

void *URL.append<A>(component:directoryHint:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a2;
  v10 = *v4;
  v11 = v5[1];
  ObjectType = swift_getObjectType();
  v15 = v9;
  result = (*(v11 + 360))(v16, a1, &v15, a3, a4, ObjectType, v11);
  v14 = v16[0];
  if (v16[0])
  {
    v11 = v16[1];
    result = swift_unknownObjectRelease();
    v10 = v14;
  }

  *v5 = v10;
  v5[1] = v11;
  return result;
}

uint64_t URL.appending(queryItems:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 112))(ObjectType, v4);
  specialized URLComponents._URLComponents.init(string:encodingInvalidCharacters:)(v6, v7, 1, &v33);
  if (_s10Foundation13URLComponentsV01_B0VSgWOg(&v33) == 1)
  {
    *a1 = v3;
    a1[1] = v4;
    return swift_unknownObjectRetain();
  }

  else
  {
    v30 = v39;
    v31 = v40;
    v32[0] = v41[0];
    *(v32 + 10) = *(v41 + 10);
    v26 = v35;
    v27 = v36;
    v28 = v37;
    v29 = v38;
    *&v24[1] = v33;
    v25 = v34;
    v41[8] = v39;
    v41[9] = v40;
    v42[0] = v41[0];
    *(v42 + 10) = *(v41 + 10);
    v41[4] = v35;
    v41[5] = v36;
    v41[6] = v37;
    v41[7] = v38;
    v41[2] = v33;
    v41[3] = v34;
    v9 = URLComponents._URLComponents.queryItems(percentEncoded:)(0);
    v10 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      v10 = v9;
    }

    v24[0] = v10;

    specialized Array.append<A>(contentsOf:)(v11);
    v43.value._rawValue = v24[0];
    URLComponents._URLComponents.setQueryItems(_:)(v43);

    v21 = v30;
    v22 = v31;
    v23[0] = v32[0];
    *(v23 + 10) = *(v32 + 10);
    v17 = v26;
    v18 = v27;
    v19 = v28;
    v20 = v29;
    v15 = *&v24[1];
    v16 = v25;
    URLComponents.url.getter(v14);
    if (v14[0])
    {
      v4 = v14[1];
      v3 = v14[0];
    }

    else
    {
      swift_unknownObjectRetain();
    }

    *a1 = v3;
    a1[1] = v4;
    v12[6] = v30;
    v12[7] = v31;
    v13[0] = v32[0];
    *(v13 + 10) = *(v32 + 10);
    v12[2] = v26;
    v12[3] = v27;
    v12[4] = v28;
    v12[5] = v29;
    v12[0] = *&v24[1];
    v12[1] = v25;
    return outlined destroy of URLComponents(v12);
  }
}

Swift::Void __swiftcall URL.append(queryItems:)(Swift::OpaquePointer queryItems)
{
  URL.appending(queryItems:)(&v2);
  swift_unknownObjectRelease();
  *v1 = v2;
}

id static URL.currentDirectory()@<X0>(uint64_t *a1@<X8>)
{
  v26[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_self() defaultManager];
  v3 = [v2 currentDirectoryPath];

  if (!v3)
  {
    goto LABEL_18;
  }

  isTaggedPointer = _objc_isTaggedPointer(v3);
  v5 = v3;
  v6 = v5;
  if (!isTaggedPointer)
  {
LABEL_7:
    LOBYTE(v23[0]) = 0;
    v26[0] = 0;
    LOBYTE(v24) = 0;
    v25 = 0;
    if (__CFStringIsCF())
    {
      v8 = v26[0];

      v10 = 0xE000000000000000;
      goto LABEL_22;
    }

    v11 = v6;
    v12 = String.init(_nativeStorage:)();
    if (v13)
    {
      v8 = v12;
      v10 = v13;

      goto LABEL_22;
    }

    if (![v11 length])
    {

LABEL_18:
      v8 = 0;
      v10 = 0xE000000000000000;
      goto LABEL_22;
    }

    v8 = String.init(_cocoaString:)();
    v10 = v17;
LABEL_21:

    goto LABEL_22;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v5);
  if (!TaggedPointerTag)
  {
    goto LABEL_14;
  }

  if (TaggedPointerTag == 22)
  {
    result = [v6 UTF8String];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v15 = String.init(utf8String:)(result);
    if (v16)
    {
LABEL_15:
      v8 = v15;
      v10 = v16;

      goto LABEL_21;
    }

    __break(1u);
LABEL_14:
    v24 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v15 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v16)
    {
      [v6 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v8 = v23[0];
      v10 = v23[1];
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (TaggedPointerTag != 2)
  {
    goto LABEL_7;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v8 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v10 = v9;

LABEL_22:
  if (one-time initialization token for compatibility2 != -1)
  {
    swift_once();
  }

  if ((static URL.compatibility2 & 1) != 0 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v18 = type metadata accessor for _BridgedURL();
    v19 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v18 = type metadata accessor for _SwiftURL();
    v19 = &protocol witness table for _SwiftURL;
  }

  LOBYTE(v23[0]) = 0;
  v26[0] = 0;
  v26[1] = 0;
  (v19[9])(v8, v10, v23, v26);
  v20 = (v19[56])(v18, v19);
  v22 = v21;
  result = swift_unknownObjectRelease();
  *a1 = v20;
  a1[1] = v22;
  return result;
}

const char *static URL.homeDirectory.getter@<X0>(uint64_t *a1@<X8>)
{
  v26[4] = *MEMORY[0x1E69E9840];
  v2 = NSHomeDirectory();
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = v2;
  isTaggedPointer = _objc_isTaggedPointer(v2);
  v5 = v3;
  v6 = v5;
  if (!isTaggedPointer)
  {
LABEL_7:
    LOBYTE(v23[0]) = 0;
    v26[0] = 0;
    LOBYTE(v24) = 0;
    v25 = 0;
    if (__CFStringIsCF())
    {
      v8 = v26[0];

      v10 = 0xE000000000000000;
      goto LABEL_22;
    }

    v11 = v6;
    v12 = String.init(_nativeStorage:)();
    if (v13)
    {
      v8 = v12;
      v10 = v13;

      goto LABEL_22;
    }

    if (![(NSString *)v11 length])
    {

LABEL_18:
      v8 = 0;
      v10 = 0xE000000000000000;
      goto LABEL_22;
    }

    v8 = String.init(_cocoaString:)();
    v10 = v17;
LABEL_21:

    goto LABEL_22;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v5);
  if (!TaggedPointerTag)
  {
    goto LABEL_14;
  }

  if (TaggedPointerTag == 22)
  {
    result = [(NSString *)v6 UTF8String];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v15 = String.init(utf8String:)(result);
    if (v16)
    {
LABEL_15:
      v8 = v15;
      v10 = v16;

      goto LABEL_21;
    }

    __break(1u);
LABEL_14:
    v24 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v15 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v16)
    {
      [(NSString *)v6 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v8 = v23[0];
      v10 = v23[1];
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (TaggedPointerTag != 2)
  {
    goto LABEL_7;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v8 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v10 = v9;

LABEL_22:
  if (one-time initialization token for compatibility2 != -1)
  {
    swift_once();
  }

  if ((static URL.compatibility2 & 1) != 0 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v18 = type metadata accessor for _BridgedURL();
    v19 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v18 = type metadata accessor for _SwiftURL();
    v19 = &protocol witness table for _SwiftURL;
  }

  LOBYTE(v23[0]) = 0;
  v26[0] = 0;
  v26[1] = 0;
  (v19[9])(v8, v10, v23, v26);
  v20 = (v19[56])(v18, v19);
  v22 = v21;
  result = swift_unknownObjectRelease();
  *a1 = v20;
  a1[1] = v22;
  return result;
}

const char *static URL.homeDirectory(forUser:)@<X0>(uint64_t *a1@<X8>)
{
  v26[4] = *MEMORY[0x1E69E9840];
  v2 = String._bridgeToObjectiveCImpl()();
  v3 = NSHomeDirectoryForUser(v2);
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    *a1 = 0;
    a1[1] = 0;
    return result;
  }

  isTaggedPointer = _objc_isTaggedPointer(v3);
  v6 = v3;
  v7 = v6;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v6);
  if (!TaggedPointerTag)
  {
    goto LABEL_15;
  }

  if (TaggedPointerTag == 22)
  {
    result = [(NSString *)v7 UTF8String];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v15 = String.init(utf8String:)(result);
    if (v16)
    {
LABEL_16:
      v9 = v15;
      v11 = v16;

      goto LABEL_21;
    }

    __break(1u);
LABEL_15:
    v24 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v15 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v16)
    {
      [(NSString *)v7 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v9 = v23[0];
      v11 = v23[1];
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (TaggedPointerTag != 2)
  {
LABEL_7:
    LOBYTE(v23[0]) = 0;
    v26[0] = 0;
    LOBYTE(v24) = 0;
    v25 = 0;
    if (__CFStringIsCF())
    {
      v9 = v26[0];

      v11 = 0xE000000000000000;
      goto LABEL_22;
    }

    v12 = v7;
    v13 = String.init(_nativeStorage:)();
    if (v14)
    {
      v9 = v13;
      v11 = v14;

      goto LABEL_22;
    }

    if (![(NSString *)v12 length])
    {

      v9 = 0;
      v11 = 0xE000000000000000;
      goto LABEL_22;
    }

    v9 = String.init(_cocoaString:)();
    v11 = v17;
LABEL_21:

    goto LABEL_22;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v9 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v11 = v10;

LABEL_22:
  if (one-time initialization token for compatibility2 != -1)
  {
    swift_once();
  }

  if ((static URL.compatibility2 & 1) != 0 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v18 = type metadata accessor for _BridgedURL();
    v19 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v18 = type metadata accessor for _SwiftURL();
    v19 = &protocol witness table for _SwiftURL;
  }

  LOBYTE(v23[0]) = 0;
  v26[0] = 0;
  v26[1] = 0;
  (v19[9])(v9, v11, v23, v26);
  v20 = (v19[56])(v18, v19);
  v22 = v21;
  result = swift_unknownObjectRelease();
  *a1 = v20;
  a1[1] = v22;
  return result;
}

void URL.init(for:in:appropriateFor:create:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, _OWORD *a5@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = *a3;
  v10 = a3[1];
  v11 = [objc_opt_self() defaultManager];
  if (v9)
  {
    ObjectType = swift_getObjectType();
    v13 = (*(v10 + 432))(ObjectType, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
  }

  v18[0] = 0;
  v14 = [v11 URLForDirectory:a1 inDomain:a2 appropriateForURL:v13 create:a4 & 1 error:v18];

  v15 = v18[0];
  if (v14)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)(v14, v18);
    v16 = v15;

    *a5 = *v18;
  }

  else
  {
    if (v18[0])
    {
      v18[0];
    }

    else
    {
      if (one-time initialization token for _nilObjCError != -1)
      {
        swift_once();
      }

      v17 = _nilObjCError;
    }

    swift_willThrow();
  }
}

Swift::Int URL.DirectoryHint.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

void static URL._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{
  swift_unknownObjectRelease();
  if (!_foundation_swift_nsurl_feature_enabled())
  {
    v10 = type metadata accessor for _BridgedURL();
    v11 = objc_allocWithZone(v10);
    *&v11[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = a1;
    v20.receiver = v11;
    v12 = a1;
    v13 = objc_msgSendSuper2(&v20, sel_init, v19.receiver, v19.super_class, v20.receiver, v10);
LABEL_6:
    v17 = v13;
    v7 = _BridgedURL.convertingFileReference()();
    v9 = v18;

    goto LABEL_7;
  }

  type metadata accessor for _NSSwiftURL();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    v14 = type metadata accessor for _BridgedURL();
    v15 = objc_allocWithZone(v14);
    *&v15[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = a1;
    v19.receiver = v15;
    v16 = a1;
    v13 = objc_msgSendSuper2(&v19, sel_init, v19.receiver, v14, v20.receiver, v20.super_class);
    goto LABEL_6;
  }

  v5 = v4;
  type metadata accessor for _BridgedNSSwiftURL();
  *(swift_allocObject() + 16) = v5;
  v6 = a1;
  v7 = _BridgedNSSwiftURL.convertingFileReference()();
  v9 = v8;

LABEL_7:
  *a2 = v7;
  a2[1] = v9;
}

uint64_t static URL._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{
  swift_unknownObjectRelease();
  if (!_foundation_swift_nsurl_feature_enabled())
  {
    v10 = type metadata accessor for _BridgedURL();
    v11 = objc_allocWithZone(v10);
    *&v11[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = a1;
    v21.receiver = v11;
    v12 = a1;
    v13 = objc_msgSendSuper2(&v21, sel_init, v20.receiver, v20.super_class, v21.receiver, v10);
LABEL_6:
    v17 = v13;
    v7 = _BridgedURL.convertingFileReference()();
    v9 = v18;

    goto LABEL_7;
  }

  type metadata accessor for _NSSwiftURL();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    v14 = type metadata accessor for _BridgedURL();
    v15 = objc_allocWithZone(v14);
    *&v15[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = a1;
    v20.receiver = v15;
    v16 = a1;
    v13 = objc_msgSendSuper2(&v20, sel_init, v20.receiver, v14, v21.receiver, v21.super_class);
    goto LABEL_6;
  }

  v5 = v4;
  type metadata accessor for _BridgedNSSwiftURL();
  *(swift_allocObject() + 16) = v5;
  v6 = a1;
  v7 = _BridgedNSSwiftURL.convertingFileReference()();
  v9 = v8;

LABEL_7:
  *a2 = v7;
  a2[1] = v9;
  return 1;
}

uint64_t NSURL._toCustomAnyHashable()()
{
  if (!_foundation_swift_nsurl_feature_enabled())
  {
    v7 = type metadata accessor for _BridgedURL();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v0;
    v20.receiver = v8;
    v20.super_class = v7;
    v9 = v0;
    v10 = objc_msgSendSuper2(&v20, sel_init, v17.receiver, v17.super_class);
LABEL_6:
    v14 = v10;
    v4 = _BridgedURL.convertingFileReference()();
    v6 = v15;

    goto LABEL_7;
  }

  type metadata accessor for _NSSwiftURL();
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
    v11 = type metadata accessor for _BridgedURL();
    v12 = objc_allocWithZone(v11);
    *&v12[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v0;
    v17.receiver = v12;
    v13 = v0;
    v10 = objc_msgSendSuper2(&v17, sel_init, v17.receiver, v11);
    goto LABEL_6;
  }

  v2 = v1;
  type metadata accessor for _BridgedNSSwiftURL();
  *(swift_allocObject() + 16) = v2;
  v3 = v0;
  v4 = _BridgedNSSwiftURL.convertingFileReference()();
  v6 = v5;

LABEL_7:
  v18 = v4;
  v19 = v6;
  lazy protocol witness table accessor for type URL and conformance URL();
  return AnyHashable.init<A>(_:)();
}

void protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURL()
{
  v1 = *v0;
  NSURL._toCustomAnyHashable()();
}

uint64_t URL.customPlaygroundQuickLook.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  result = (*(v3 + 112))(ObjectType, v3);
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 32) = 17;
  return result;
}

uint64_t protocol witness for _CustomPlaygroundQuickLookable.customPlaygroundQuickLook.getter in conformance URL@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  result = (*(v3 + 112))(ObjectType, v3);
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 32) = 17;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance URL.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65766974616C6572 && a2 == 0xE800000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance URL.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URL.CodingKeys and conformance URL.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance URL.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URL.CodingKeys and conformance URL.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void URL.init(fileReferenceLiteralResourceName:)(_OWORD *a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 URLForResource:String._bridgeToObjectiveCImpl()() withExtension:0];

  swift_unknownObjectRelease();
  if (v3)
  {

    static URL._unconditionallyBridgeFromObjectiveC(_:)(v3, &v4);

    *a1 = v4;
  }

  else
  {
    __break(1u);
  }
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs7UnicodeO6ScalarV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7UnicodeO6ScalarVGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation6LocaleV15NumberingSystemV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation6LocaleV15NumberingSystemVGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation18AttributeContainerV_SnyAF16AttributedStringV5IndexVGt_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation18AttributeContainerV_SnyAC16AttributedStringV5IndexVGtGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation16AttributedStringV12_InternalRunV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV12_InternalRunVGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation21_BPlistEncodingFormatV9ReferenceC_Tt1g5Tm(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation16AttributedStringV4RunsV3RunV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v8 = ((v6 - 32) * 0x2E8BA2E8BA2E8BA3) >> 64;
  v5[2] = a1;
  v5[3] = 2 * ((v8 >> 4) + (v8 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation14InflectionRuleOSg_SnyAF16AttributedStringV5IndexVGt_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14InflectionRuleOSg_SnyAC16AttributedStringV5IndexVGtGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4EC4EC4EC4EC4EC5) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 8 * result);
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + 8 * a2);
      if (result != v12 || result >= v12 + 8 * v11)
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, 8 * v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = (v9 + 32 + 8 * result);
  type metadata accessor for _BPlistEncodingFormat.Reference();
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = &v10[a3];
      v15 = (v9 + 32 + 8 * a2);
      if (result != v15 || result >= v15 + 8 * v14)
      {
        result = memmove(result, v15, 8 * v14);
      }

      v17 = *(v9 + 16);
      v11 = __OFADD__(v17, v12);
      v18 = v17 + v12;
      if (!v11)
      {
        *(v9 + 16) = v18;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v10 = a4;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = *v4;
  v8 = (v7 + 32 + 8 * result);
  if (!v6)
  {
    goto LABEL_13;
  }

  v9 = *(v7 + 16);
  v10 = __OFSUB__(v9, a2);
  v11 = v9 - a2;
  if (v10)
  {
    goto LABEL_21;
  }

  result = v8 + 8 * a3;
  v12 = (v7 + 32 + 8 * a2);
  if (result != v12 || result >= v12 + 8 * v11)
  {
    v14 = a3;
    v15 = a4;
    result = memmove(result, v12, 8 * v11);
    a3 = v14;
    a4 = v15;
  }

  v16 = *(v7 + 16);
  v10 = __OFADD__(v16, v6);
  v17 = v16 + v6;
  if (v10)
  {
    goto LABEL_22;
  }

  *(v7 + 16) = v17;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v18 = 8 * a3;

  return memcpy(v8, (a4 + 32), v18);
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v7 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v8 = *v5;
  v9 = *v5 + 32;
  v10 = (v9 + result);
  v11 = (v9 + result + a3);
  if (v7)
  {
    v12 = *(v8 + 16);
    v13 = __OFSUB__(v12, a2);
    v14 = v12 - a2;
    if (v13)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return result;
    }

    v15 = (v9 + a2);
    if (v11 != v15 || v11 >= &v15[v14])
    {
      v17 = result;
      v18 = a3;
      v19 = a5;
      v20 = a4;
      memmove(v11, v15, v14);
      a4 = v20;
      a3 = v18;
      result = v17;
      a5 = v19;
    }

    v21 = *(v8 + 16);
    v13 = __OFADD__(v21, v7);
    v22 = v21 + v7;
    if (v13)
    {
      goto LABEL_32;
    }

    *(v8 + 16) = v22;
  }

  if (a3 >= 1)
  {
    v23 = a4 & ~(a4 >> 63);
    v24 = a3 + result + v8 + 32;
    if (v24 <= v8 + result + 33)
    {
      v24 = v8 + result + 33;
    }

    v25 = v24 - (v8 + result) - 33;
    if (v25 >= v23)
    {
      v25 = a4 & ~(a4 >> 63);
    }

    if (v25 > 0x1F)
    {
      v27 = v25 + 1;
      v28 = v27 & 0x1F;
      if ((v27 & 0x1F) == 0)
      {
        v28 = 32;
      }

      v26 = v27 - v28;
      v10 += v26;
      v29 = vdupq_n_s8(a5);
      v30 = (result + v8 + 48);
      v31 = v26;
      do
      {
        v30[-1] = v29;
        *v30 = v29;
        v30 += 2;
        v31 -= 32;
      }

      while (v31);
    }

    else
    {
      v26 = 0;
    }

    for (i = v23 - v26; i; --i)
    {
      *v10++ = a5;
      if (v10 >= v11)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 2 * result + 2 * a3;
  v10 = (v6 + 32 + 2 * a2);
  if (result != v10 || result >= v10 + 2 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 2 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 4 * result + 4 * a3;
  v10 = (v6 + 32 + 4 * a2);
  if (result != v10 || result >= v10 + 4 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 4 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + (result << 6) + (a3 << 6);
  v10 = (v6 + 32 + (a2 << 6));
  if (result != v10 || result >= v10 + 64 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, v9 << 6);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 48 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 48 * a3;
  v13 = (v7 + 32 + 48 * a2);
  if (result != v13 || result >= v13 + 48 * v12)
  {
    result = memmove(result, v13, 48 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t specialized URLResourceValues.fileSecurity.setter(uint64_t a1)
{
  v1 = a1;
  v2 = *MEMORY[0x1E695DB48];
  if (a1)
  {
    a1 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSFileSecurity);
    v3 = v1;
  }

  else
  {
    v3 = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  v8[0] = v3;
  v8[3] = a1;
  v4 = v1;
  v5 = v2;
  specialized Set._Variant.insert(_:)(v7, v5);

  outlined init with copy of Any?(v8, v7);
  specialized Dictionary.subscript.setter(v7, v5);
  return outlined destroy of Any?(v8);
}

unint64_t lazy protocol witness table accessor for type URL.DirectoryHint and conformance URL.DirectoryHint()
{
  result = lazy protocol witness table cache variable for type URL.DirectoryHint and conformance URL.DirectoryHint;
  if (!lazy protocol witness table cache variable for type URL.DirectoryHint and conformance URL.DirectoryHint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.DirectoryHint and conformance URL.DirectoryHint);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for URL(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type URL and conformance URL();
  a1[2] = lazy protocol witness table accessor for type URL and conformance URL();
  a1[3] = lazy protocol witness table accessor for type URL and conformance URL();
  result = lazy protocol witness table accessor for type URL and conformance URL();
  a1[4] = result;
  return result;
}

uint64_t keypath_get_27Tm@<X0>(uint64_t *a1@<X0>, void **a2@<X3>, uint64_t a3@<X8>)
{
  result = specialized URLResourceValues._get<A>(_:)(*a2, *a1, &v6);
  v5 = v7;
  *a3 = v6;
  *(a3 + 8) = v5;
  return result;
}

uint64_t keypath_set_28Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, void **a2@<X3>, uint64_t *a3@<X8>)
{
  result = specialized URLResourceValues._get<A>(_:)(*a2, *a1);
  *a3 = result;
  a3[1] = v5;
  return result;
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t _BridgedNSSwiftURL.convertingFileReference()()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *&v2[OBJC_IVAR____NSSwiftURL_url];
  if (*(v3 + 48) == 1)
  {

    goto LABEL_11;
  }

  if (*(*(v3 + 16) + 48))
  {
    if (!*(v3 + 24))
    {
LABEL_17:
      swift_unknownObjectRetain();
      return v1;
    }

    v4 = *(v3 + 32);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 136);

    v6(ObjectType, v4);
    if (!v7)
    {
LABEL_16:

      goto LABEL_17;
    }
  }

  else
  {

    v8 = String.subscript.getter();
    MEMORY[0x1865CAE80](v8);
  }

  v9 = String.lowercased()();

  if (one-time initialization token for fileSchemeUTF8 != -1)
  {
    swift_once();
  }

  v10 = specialized Sequence<>.elementsEqual<A>(_:)(static _SwiftURL.fileSchemeUTF8, v9._countAndFlagsBits, v9._object);

  if ((v10 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  v11 = *(*(v3 + 16) + 219);

  if ((v11 & 1) == 0)
  {
    goto LABEL_17;
  }

  v12 = [v2 filePathURL];
  if (v12)
  {
    v13 = v12;
    if (_foundation_swift_nsurl_feature_enabled())
    {
      type metadata accessor for _NSSwiftURL();
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        *(swift_allocObject() + 16) = v14;
        v15 = v13;
        v1 = _BridgedNSSwiftURL.convertingFileReference()();

        return v1;
      }

      v21 = type metadata accessor for _BridgedURL();
      v22 = objc_allocWithZone(v21);
      *&v22[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v13;
      v24.receiver = v22;
      v19 = v13;
      v20 = objc_msgSendSuper2(&v24, sel_init, v24.receiver, v21, v25.receiver, v25.super_class);
    }

    else
    {
      v17 = type metadata accessor for _BridgedURL();
      v18 = objc_allocWithZone(v17);
      *&v18[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v13;
      v25.receiver = v18;
      v19 = v13;
      v20 = objc_msgSendSuper2(&v25, sel_init, v24.receiver, v24.super_class, v25.receiver, v17);
    }

    v23 = v20;
    v1 = _BridgedURL.convertingFileReference()();

    return v1;
  }

  result = specialized _SwiftURL.__allocating_init(string:)(0xD00000000000002ALL, 0x8000000181486A80);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

void closure #1 in variable initialization expression of static _BridgedURL.logForwardingErrorOnce()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static URL.logger);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_18075C000, oslog, v1, "struct URL no longer stores an NSURL. Clients should not assume the memory address of a URL will contain an NSURL * or CFURLRef and should not send ObjC messages to it directly. Bridge (url as NSURL) instead.", v2, 2u);
    MEMORY[0x1865D2690](v2, -1, -1);
  }
}

id _BridgedURL.init(string:relativeTo:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = a1;
  v10 = *a3;
  v11 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = a3[1];
    v13 = String._bridgeToObjectiveCImpl()();

    if (v10)
    {
      v14 = swift_getObjectType();
      v15 = (*(v12 + 432))(v14, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0;
    }

    v16 = [objc_allocWithZone(MEMORY[0x1E695DFF8]) initWithString:v13 relativeToURL:v15];
    swift_unknownObjectRelease();

    if (v16)
    {
      *&v4[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v16;
      v18.receiver = v4;
      v18.super_class = ObjectType;
      return objc_msgSendSuper2(&v18, sel_init);
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id _BridgedURL.init(stringOrEmpty:relativeTo:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v7 = *a3;
  v8 = a3[1];
  v9 = String._bridgeToObjectiveCImpl()();

  if (v7)
  {
    v10 = swift_getObjectType();
    v11 = (*(v8 + 432))(v10, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(MEMORY[0x1E695DFF8]) initWithString:v9 relativeToURL:v11];
  swift_unknownObjectRelease();

  if (v12)
  {
    *&v4[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v12;
    v14.receiver = v4;
    v14.super_class = ObjectType;
    return objc_msgSendSuper2(&v14, sel_init);
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }
}

id _BridgedURL.init(fileURLWithPath:isDirectory:relativeTo:)(uint64_t a1, unint64_t a2, char a3, uint64_t *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = a1;
  v12 = *a4;
  v13 = a4[1];
  v14 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
  }

  v15 = String._bridgeToObjectiveCImpl()();

  if (v12)
  {
    v16 = swift_getObjectType();
    v17 = (*(v13 + 432))(v16, v13);
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0;
  }

  v18 = [objc_allocWithZone(MEMORY[0x1E695DFF8]) initFileURLWithPath:v15 isDirectory:a3 & 1 relativeToURL:v17];
  swift_unknownObjectRelease();

  *&v5[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v18;
  v20.receiver = v5;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, sel_init);
}

id _BridgedURL.init(fileURLWithPath:relativeTo:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = a1;
  v10 = *a3;
  v11 = a3[1];
  v12 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
  }

  v13 = String._bridgeToObjectiveCImpl()();

  if (v10)
  {
    v14 = swift_getObjectType();
    v15 = (*(v11 + 432))(v14, v11);
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E695DFF8]) initFileURLWithPath:v13 relativeToURL:v15];
  swift_unknownObjectRelease();

  *&v4[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v16;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

id _BridgedURL.init(fileURLWithPath:isDirectory:)(uint64_t a1, unint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
  }

  v9 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
  v10 = String._bridgeToObjectiveCImpl()();

  v11 = [v9 initFileURLWithPath:v10 isDirectory:a3 & 1];
  swift_unknownObjectRelease();
  *&v3[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v11;
  v13.receiver = v3;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

id _BridgedURL.init(fileURLWithPath:)(uint64_t a1, unint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
  }

  v7 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
  v8 = String._bridgeToObjectiveCImpl()();

  v9 = [v7 initFileURLWithPath_];
  swift_unknownObjectRelease();
  *&v2[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v9;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

id _BridgedURL.init(filePath:directoryHint:relativeTo:)(unint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = a1;
  v12 = *a3;
  v13 = *a4;
  v14 = a4[1];
  v15 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v15 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    if (v12 <= 1)
    {
      goto LABEL_5;
    }
  }

  else
  {

    a2 = 0xE200000000000000;
    v11 = 12078;
    if (v12 <= 1)
    {
LABEL_5:
      if (v12)
      {
        v21 = String._bridgeToObjectiveCImpl()();

        if (v13)
        {
          v22 = swift_getObjectType();
          v18 = (*(v14 + 432))(v22, v14);
          swift_unknownObjectRelease();
        }

        else
        {
          v18 = 0;
        }

        v26 = [objc_allocWithZone(MEMORY[0x1E695DFF8]) initFileURLWithPath:v21 isDirectory:0 relativeToURL:v18];
      }

      else
      {
        v16 = String._bridgeToObjectiveCImpl()();

        if (v13)
        {
          v17 = swift_getObjectType();
          v18 = (*(v14 + 432))(v17, v14);
          swift_unknownObjectRelease();
        }

        else
        {
          v18 = 0;
        }

        v26 = [objc_allocWithZone(MEMORY[0x1E695DFF8]) initFileURLWithPath:v16 isDirectory:1 relativeToURL:v18];
      }

      goto LABEL_24;
    }
  }

  if (v12 == 2)
  {
    v19 = String._bridgeToObjectiveCImpl()();

    if (v13)
    {
      v20 = swift_getObjectType();
      v18 = (*(v14 + 432))(v20, v14);
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 0;
    }

    v26 = [objc_allocWithZone(MEMORY[0x1E695DFF8]) initFileURLWithPath:v19 relativeToURL:v18];
  }

  else
  {
    v23 = specialized BidirectionalCollection.last.getter(v11, a2) & 0x1FF;
    v24 = String._bridgeToObjectiveCImpl()();

    if (v13)
    {
      v25 = swift_getObjectType();
      v18 = (*(v14 + 432))(v25, v14);
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 0;
    }

    v26 = [objc_allocWithZone(MEMORY[0x1E695DFF8]) initFileURLWithPath:v24 isDirectory:v23 == 47 relativeToURL:v18];
  }

LABEL_24:
  v27 = v26;
  swift_unknownObjectRelease();

  *&v5[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v27;
  v29.receiver = v5;
  v29.super_class = ObjectType;
  return objc_msgSendSuper2(&v29, sel_init);
}

id _BridgedURL.init(dataRepresentation:relativeTo:isAbsolute:)(uint64_t a1, unint64_t a2, uint64_t *a3, char a4)
{
  v5 = v4;
  v33 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v11 = *a3;
  v12 = a3[1];
  v13 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v13 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  if (v13)
  {
    goto LABEL_12;
  }

  if ((a2 & 0xFF000000000000) == 0)
  {
LABEL_13:
    swift_unknownObjectRelease();
    outlined consume of Data._Representation(a1, a2);
    swift_deallocPartialClassInstance();
    return 0;
  }

LABEL_7:
  while ((a4 & 1) != 0)
  {
    if (v13 == 2)
    {
      goto LABEL_18;
    }

    if (v13 != 1)
    {
      v26 = a1;
      v27 = a2;
      v28 = BYTE2(a2);
      v29 = BYTE3(a2);
      v30 = BYTE4(a2);
      v31 = BYTE5(a2);
      v19 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v26 length:BYTE6(a2)];
      if (!v11)
      {
        goto LABEL_25;
      }

LABEL_20:
      v20 = swift_getObjectType();
      v21 = (*(v12 + 432))(v20, v12);
      swift_unknownObjectRelease();
      goto LABEL_26;
    }

    v14 = a1;
    v15 = a1 >> 32;
    if (a1 >> 32 >= a1)
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_12:
    if (a1 == a1 >> 32)
    {
      goto LABEL_13;
    }
  }

  if (v13 == 2)
  {
    v17 = *(a1 + 16);
    v18 = *(a1 + 24);
  }

  else
  {
    if (v13 != 1)
    {
      v26 = a1;
      v27 = a2;
      v28 = BYTE2(a2);
      v29 = BYTE3(a2);
      v30 = BYTE4(a2);
      v31 = BYTE5(a2);
      v19 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v26 length:BYTE6(a2)];
      if (v11)
      {
        goto LABEL_23;
      }

      goto LABEL_28;
    }

    v17 = a1;
    v18 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
LABEL_18:
      v14 = *(a1 + 16);
      v15 = *(a1 + 24);
LABEL_19:
      outlined copy of Data._Representation(a1, a2);
      v19 = __DataStorage.bridgedReference(_:)(v14, v15);
      if (v11)
      {
        goto LABEL_20;
      }

LABEL_25:
      v21 = 0;
LABEL_26:
      v23 = [objc_allocWithZone(MEMORY[0x1E695DFF8]) initAbsoluteURLWithDataRepresentation:v19 relativeToURL:v21];
      goto LABEL_30;
    }
  }

  outlined copy of Data._Representation(a1, a2);
  v19 = __DataStorage.bridgedReference(_:)(v17, v18);
  if (v11)
  {
LABEL_23:
    v22 = swift_getObjectType();
    v21 = (*(v12 + 432))(v22, v12);
    swift_unknownObjectRelease();
    goto LABEL_29;
  }

LABEL_28:
  v21 = 0;
LABEL_29:
  v23 = [objc_allocWithZone(MEMORY[0x1E695DFF8]) initWithDataRepresentation:v19 relativeToURL:v21];
LABEL_30:
  v24 = v23;

  outlined consume of Data._Representation(a1, a2);
  *&v5[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v24;
  v32.receiver = v5;
  v32.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v32, sel_init);
  outlined consume of Data._Representation(a1, a2);
  return v25;
}

id _BridgedURL.init(fileURLWithFileSystemRepresentation:isDirectory:relativeTo:)(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  if (*a3)
  {
    v9 = a3[1];
    v10 = swift_getObjectType();
    v11 = (*(v9 + 432))(v10, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(MEMORY[0x1E695DFF8]) initFileURLWithFileSystemRepresentation:a1 isDirectory:a2 & 1 relativeToURL:v11];

  *&v4[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v12;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t _BridgedURL.hasAuthority.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC10Foundation11_BridgedURL__url);
  v2 = [v1 user];
  if (!v2)
  {
    v2 = [v1 password];
    if (!v2)
    {
      v2 = [v1 host];
      if (!v2)
      {
        result = [v1 port];
        if (!result)
        {
          return result;
        }

        v4 = result;
        [result integerValue];
        v2 = v4;
      }
    }
  }

  return 1;
}

id _BridgedURL.fileSystemPath(style:resolveAgainstBase:compatibility:)(char a1, char a2, char a3)
{
  v87[4] = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v8 = &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd;
  v9 = *(v3 + OBJC_IVAR____TtC10Foundation11_BridgedURL__url);
  if ((a2 & 1) == 0)
  {
    v18 = [v9 _cfurl];
    v19 = _CFURLCopyPath();
    if (v19)
    {
      v20 = v19;
      isTaggedPointer = _objc_isTaggedPointer(v19);
      v22 = v20;
      v23 = v22;
      if (isTaggedPointer)
      {
        TaggedPointerTag = _objc_getTaggedPointerTag(v22);
        if (!TaggedPointerTag)
        {
LABEL_31:
          v85 = 0;
          _CFIndirectTaggedPointerStringGetContents();
          result = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v42)
          {
            [v23 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v25 = v83;
            v31 = v84;
LABEL_42:

            goto LABEL_43;
          }

          goto LABEL_40;
        }

        if (TaggedPointerTag == 22)
        {
          result = [v23 UTF8String];
          if (!result)
          {
            __break(1u);
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

          result = String.init(utf8String:)(result);
          if (!v42)
          {
            __break(1u);
LABEL_36:
            v87[0] = [v8 length];
            if (!v87[0])
            {

              goto LABEL_20;
            }

            v25 = String.init(_cocoaString:)();
            v31 = v43;
            goto LABEL_42;
          }

LABEL_40:
          v25 = result;
          v31 = v42;

LABEL_43:
LABEL_44:
          if (a3)
          {
            v44 = closure #1 in static _SwiftURL.fileSystemPath(for:style:compatibility:);
          }

          else
          {
            v44 = String._droppingTrailingSlashes.getter;
          }

          if (a1)
          {
            v45 = specialized static _SwiftURL.windowsPath(for:slashDropper:)(v25, v31, v44);

            return v45;
          }

          v46 = v44(v25, v31);
          v48 = v47;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
          v49 = static _SetStorage.allocate(capacity:)();
          v50 = v49 + 56;
          v51 = *(v49 + 40);
          v52 = byte_1EEED3D20;
          v53 = MEMORY[0x1865CD020](v51, byte_1EEED3D20, 1);
          v54 = -1 << *(v49 + 32);
          v55 = v53 & ~v54;
          v56 = v55 >> 6;
          v57 = *(v49 + 56 + 8 * (v55 >> 6));
          v58 = 1 << v55;
          v59 = *(v49 + 48);
          if (((1 << v55) & v57) != 0)
          {
            v60 = ~v54;
            while (*(v59 + v55) != v52)
            {
              v55 = (v55 + 1) & v60;
              v56 = v55 >> 6;
              v57 = *(v50 + 8 * (v55 >> 6));
              v58 = 1 << v55;
              if (((1 << v55) & v57) == 0)
              {
                goto LABEL_53;
              }
            }
          }

          else
          {
LABEL_53:
            *(v50 + 8 * v56) = v58 | v57;
            *(v59 + v55) = v52;
            v61 = *(v49 + 16);
            v62 = __OFADD__(v61, 1);
            v63 = v61 + 1;
            if (v62)
            {
              goto LABEL_71;
            }

            *(v49 + 16) = v63;
          }

          v64 = byte_1EEED3D21;
          v65 = MEMORY[0x1865CD020](v51, byte_1EEED3D21, 1);
          v66 = -1 << *(v49 + 32);
          v67 = v65 & ~v66;
          v68 = v67 >> 6;
          v69 = *(v50 + 8 * (v67 >> 6));
          v70 = 1 << v67;
          v71 = *(v49 + 48);
          if (((1 << v67) & v69) != 0)
          {
            v72 = ~v66;
            while (*(v71 + v67) != v64)
            {
              v67 = (v67 + 1) & v72;
              v68 = v67 >> 6;
              v69 = *(v50 + 8 * (v67 >> 6));
              v70 = 1 << v67;
              if (((1 << v67) & v69) == 0)
              {
                goto LABEL_59;
              }
            }

            goto LABEL_61;
          }

LABEL_59:
          *(v50 + 8 * v68) = v70 | v69;
          *(v71 + v67) = v64;
          v73 = *(v49 + 16);
          v62 = __OFADD__(v73, 1);
          v74 = v73 + 1;
          if (!v62)
          {
            *(v49 + 16) = v74;
LABEL_61:
            v75 = HIBYTE(v48) & 0xF;
            if ((v48 & 0x2000000000000000) == 0)
            {
              v75 = v46 & 0xFFFFFFFFFFFFLL;
            }

            if (v75)
            {
              v87[0] = v46;
              v87[1] = v48;
              MEMORY[0x1EEE9AC00](v65);
              v79[2] = v87;
              v79[3] = v49;
              v80 = 4;

              v76 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(partial apply for specialized closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:), v79, v46, v48);
              if (v77 == 1)
              {
                v76 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v46, v48, v49, 4);
              }

              v45 = v76;
              v78 = v77;

              if (v78)
              {
                return v45;
              }
            }

            else
            {
            }

            return 0;
          }

LABEL_71:
          __break(1u);
        }

        if (TaggedPointerTag == 2)
        {
LABEL_18:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v80 = v23;
          v25 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v31 = v30;

          goto LABEL_44;
        }
      }

      LOBYTE(v83) = 0;
      v87[0] = 0;
      LOBYTE(v85) = 0;
      v86 = 0;
      if (__CFStringIsCF())
      {
        v25 = v87[0];
LABEL_27:

        goto LABEL_21;
      }

      goto LABEL_25;
    }

LABEL_19:

LABEL_20:
    v25 = 0;
LABEL_21:
    v31 = 0xE000000000000000;
    goto LABEL_44;
  }

  v10 = ObjectType;
  v11 = [*(v3 + OBJC_IVAR____TtC10Foundation11_BridgedURL__url) absoluteURL];
  if (v11)
  {
    v12 = v11;
    if (_foundation_swift_nsurl_feature_enabled())
    {
      type metadata accessor for _NSSwiftURL();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v14 = v13;
        type metadata accessor for _BridgedNSSwiftURL();
        *(swift_allocObject() + 16) = v14;
        v15 = v12;
        _BridgedNSSwiftURL.convertingFileReference()();
        v17 = v16;

LABEL_30:
        v39 = swift_getObjectType();
        v25 = (v17[28])(1, v39, v17);
        v31 = v40;
        swift_unknownObjectRelease();
        goto LABEL_44;
      }

      v37 = objc_allocWithZone(v10);
      *&v37[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v12;
      v81.receiver = v37;
      v81.super_class = v10;
      v33 = v12;
      v34 = objc_msgSendSuper2(&v81, sel_init);
    }

    else
    {
      v32 = objc_allocWithZone(v10);
      *&v32[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v12;
      v82.receiver = v32;
      v82.super_class = v10;
      v33 = v12;
      v34 = objc_msgSendSuper2(&v82, sel_init);
    }

    v38 = v34;
    _BridgedURL.convertingFileReference()();

    v17 = &protocol witness table for _BridgedURL;
    goto LABEL_30;
  }

  v18 = [v9 _cfurl];
  v26 = _CFURLCopyPath();
  if (!v26)
  {
    goto LABEL_19;
  }

  v27 = v26;
  v28 = _objc_isTaggedPointer(v26);
  v29 = v27;
  v23 = v29;
  if ((v28 & 1) == 0)
  {
    goto LABEL_23;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v29);
  if (!TaggedPointerTag)
  {
    goto LABEL_31;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      goto LABEL_18;
    }

LABEL_23:
    LOBYTE(v83) = 0;
    v87[0] = 0;
    LOBYTE(v85) = 0;
    v86 = 0;
    if (__CFStringIsCF())
    {
      v25 = v87[0];
      goto LABEL_27;
    }

LABEL_25:
    v8 = v23;
    v35 = String.init(_nativeStorage:)();
    if (v36)
    {
      v25 = v35;
      v31 = v36;

      goto LABEL_44;
    }

    goto LABEL_36;
  }

  result = [v23 UTF8String];
  if (!result)
  {
    goto LABEL_73;
  }

  result = String.init(utf8String:)(result);
  if (v42)
  {
    goto LABEL_40;
  }

LABEL_74:
  __break(1u);
  return result;
}