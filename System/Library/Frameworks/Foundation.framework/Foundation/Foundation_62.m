uint64_t AttributedString.Runs.AttributesSlice2.index(before:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v282 - v10;
  v313 = *(v4 + *(a2 + 52));
  v311 = *(v313 + 16);
  if (!v311)
  {
LABEL_244:
    __break(1u);
    goto LABEL_245;
  }

  v299 = a3;
  v12 = *a1;
  v314 = a1[1];
  v309 = *(v4 + *(a2 + 56));
  v13 = v4[23];
  v14 = v4[26];
  v310 = v12;
  v15 = v12;
  v16 = *(type metadata accessor for AttributedString.Runs() + 24);
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v317 = v16;
  RangeSet.ranges.getter();
  v17 = v11;
  v18 = RangeSet.Ranges.count.getter();
  v19 = v8;
  v20 = v18;
  v22 = *(v9 + 8);
  v21 = (v9 + 8);
  v318 = v19;
  v319 = v22;
  (v22)(v11);
  v25 = v21;
  if (v14 == 2 || (v13 ^ v15) >= 0x400)
  {
    v315 = v21;
    if (v20 >= 1)
    {
      v25 = v4;
      v26 = 0;
      v27 = v15 >> 10;
      while (!__OFADD__(v26, v20))
      {
        v14 = (v26 + v20) / 2;
        RangeSet.ranges.getter();
        v28 = v318;
        v17 = v11;
        RangeSet.Ranges.subscript.getter();
        (v319)(v11, v28);
        v23 = v331;
        if (v27 < v331 >> 10)
        {
          v20 = (v26 + v20) / 2;
          if (v26 >= v14)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v24 = v314;
          if (v27 < v334 >> 10)
          {
            goto LABEL_13;
          }

          v26 = v14 + 1;
          if (v14 + 1 >= v20)
          {
            goto LABEL_12;
          }
        }
      }

LABEL_235:
      __break(1u);
      goto LABEL_236;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    v4 = v25;
    if ((v23 ^ v15) > 0x3FF)
    {
      v304 = v23;
      v297 = v332;
      v30 = v333;
      goto LABEL_17;
    }
  }

  else
  {
    v14 = v20;
  }

  if (v14 < 1)
  {
LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:
    __break(1u);
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
    goto LABEL_250;
  }

  type metadata accessor for AttributedString.Runs();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  RangeSet.ranges.getter();
  v29 = v318;
  RangeSet.Ranges.subscript.getter();
  (v319)(v11, v29);
  v297 = v332;
  v304 = v331;
  v30 = v333;
  v24 = v335;
  v310 = v334;
LABEL_17:
  v314 = v24;
  v31 = v309;
  if (*(v309 + 16) == 1)
  {
    result = specialized Set.contains(_:)(0, 1, v309);
    if ((result & 1) == 0)
    {
      v62 = *v4;
      v63 = *(*v4 + 24);
      v64 = *(*v4 + 56);
      v365 = *(*v4 + 40);
      v366 = v64;
      v364 = v63;
      v65 = v310 >> 10;
      v66 = v304;
      if (v310 >> 10 < v304 >> 10)
      {
LABEL_255:
        __break(1u);
        goto LABEL_256;
      }

      v67 = v62[3];
      v68 = v62[4];
      v69 = v62[5];
      v70 = v62[6];
      v71 = v62[7];
      v72 = v62[8];
      *&v341[1] = v297;
      v341[0] = v304;
      v341[3] = v30;
      v73 = v297;
      v342 = v310;
      v343 = v314;
      v74 = *(&v297 + 1);
      if (v304 >> 10 == v65)
      {
        goto LABEL_225;
      }

      v316 = v72;
      v317 = v71;
      v318 = v70;
      v319 = v69;
      v75 = *(v62 + 5);
      v354 = *(v62 + 3);
      v355 = v75;
      v308 = v62;
      v356 = v62[7];
      outlined init with copy of Rope<BigString._Chunk>._Node?(&v354, &v331);
      if ((specialized Set.contains(_:)(0, 0, v31) & 1) != 0 && v65 > BigString.startIndex.getter() >> 10)
      {
        v315 = v67;
        *&v361 = v67;
        *(&v361 + 1) = v68;
        v313 = v68;
        *&v362 = v319;
        *(&v362 + 1) = v318;
        *&v363 = v317;
        *(&v363 + 1) = v316;
        v76 = BigString.UTF8View.index(before:)();
        v78 = v77;
        v80 = v79;
        v82 = v81;
        result = BigString.UTF8View.subscript.getter();
        if (v65 < v76 >> 10)
        {
LABEL_261:
          __break(1u);
          goto LABEL_262;
        }

        v325 = v76;
        v326 = v78;
        v327 = v80;
        v328 = v82;
        v329 = v310;
        v330 = v314;
        specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v325, &v331);
        result = outlined destroy of BigSubstring.UTF8View(&v345);
        v83 = v304;
        v31 = v309;
        v84 = v314;
        v67 = v315;
        v68 = v313;
        if (v333 != 2)
        {
          v83 = v331;
          if (v65 < v331 >> 10)
          {
            goto LABEL_265;
          }

          v74 = *(&v332 + 1);
          v73 = v332;
          v30 = v333;
        }
      }

      else
      {
        v83 = v304;
        v84 = v314;
      }

      v304 = v83;
      *&v320 = v83;
      *(&v320 + 1) = v73;
      *&v321 = v74;
      *(&v321 + 1) = v30;
      v322 = v310;
      v323 = v84;
      if (specialized Collection<>._containsScalarConstraint.getter(v31))
      {
        v313 = v68;
        v315 = v67;
        v85 = v31;
        v88 = *(v31 + 56);
        v87 = v31 + 56;
        v86 = v88;
        v89 = 1 << *(v85 + 32);
        v90 = -1;
        if (v89 < 64)
        {
          v90 = ~(-1 << v89);
        }

        v91 = v90 & v86;
        v92 = (v89 + 63) >> 6;

        v93 = 0;
        v94 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v91)
          {
            goto LABEL_62;
          }

          do
          {
            v95 = v93 + 1;
            if (__OFADD__(v93, 1))
            {
              goto LABEL_243;
            }

            if (v95 >= v92)
            {

              *&v358 = v315;
              *(&v358 + 1) = v313;
              *&v359 = v319;
              *(&v359 + 1) = v318;
              *&v360 = v317;
              *(&v360 + 1) = v316;
              BigString.UnicodeScalarView.subscript.getter();
              v66 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(v94);
              v272 = v279;
              v274 = v280;
              v276 = v281;
              outlined destroy of BigString(&v364);

              result = outlined destroy of BigSubstring.UnicodeScalarView(&v331);
              if (v276 != 2)
              {
                v62 = v308;
                if (v65 >= v66 >> 10)
                {
LABEL_228:
                  v73 = v272;
                  v74 = v274;
                  v30 = v276;
                  goto LABEL_225;
                }

LABEL_262:
                __break(1u);
                goto LABEL_263;
              }

LABEL_224:
              v62 = v308;
              v66 = v304;
LABEL_225:
              v277 = v62[2];
              v278 = v299;
              *v299 = v66;
              v278[1] = v73;
              v278[2] = v74;
              v278[3] = v30;
              v278[4] = v277;
              return result;
            }

            v91 = *(v87 + 8 * v95);
            ++v93;
          }

          while (!v91);
          v93 = v95;
LABEL_62:
          v96 = __clz(__rbit64(v91));
          v91 &= v91 - 1;
          v97 = (*(v309 + 48) + ((v93 << 10) | (16 * v96)));
          v98 = v97[1];
          if (v98 >= 2)
          {
            v99 = specialized Collection.first.getter(*v97, v98);
            if ((v99 & 0x100000000) == 0)
            {
              *&v314 = v99;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v94 + 2) + 1, 1, v94);
              }

              v101 = *(v94 + 2);
              v100 = *(v94 + 3);
              v102 = (v101 + 1);
              v103 = v314;
              if (v101 >= v100 >> 1)
              {
                v312 = (v101 + 1);
                v104 = v94;
                v105 = v101;
                v106 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1, v104);
                v102 = v312;
                v101 = v105;
                v94 = v106;
                v103 = v314;
              }

              *(v94 + 2) = v102;
              *&v94[4 * v101 + 32] = v103;
            }
          }
        }
      }

LABEL_222:
      v265 = &v364;
      goto LABEL_223;
    }
  }

  v298 = v30;
  v33 = *v4;
  v34 = *(*v4 + 24);
  v295 = (*v4 + 24);
  v35 = *(v33 + 40);
  v364 = v34;
  v365 = v35;
  v366 = *(v33 + 56);
  swift_unknownObjectRetain();
  v285 = *(&v310 + 1);
  v296 = v310;
  v286 = v314;
  v36 = BigString.UTF8View.index(before:)();
  v38 = v37;
  v40 = v39;
  v293 = v41;
  swift_unknownObjectRelease();
  v42 = *(v33 + 72);
  v43 = *(v33 + 88);
  if (v42)
  {
    v44 = *(v33 + 88);
  }

  else
  {
    v44 = 0;
  }

  v301 = v36 >> 11;
  if (v44 < (v36 >> 11))
  {
    goto LABEL_246;
  }

  v290 = v40;
  v291 = v38;
  v45 = *(v33 + 80);
  v307 = *(v33 + 96);
  v308 = v33;
  v292 = v36;
  if (v42)
  {
    if (v301 < v43)
    {
      v17 = (v42 + 16);
      LODWORD(v46) = *(v42 + 16);
      if (*(v42 + 16))
      {
        v319 = v4;
        v47 = *(v42 + 18);
        swift_unknownObjectRetain_n();
        if (!v47)
        {
          v49 = 0;
          v48 = v301;
          v53 = v42;
          v4 = v319;
          goto LABEL_70;
        }

        v318 = v45;
        v48 = v301;
        v49 = v47;
        v50 = v42;
        while (1)
        {
          v51 = *v17;
          if (*v17)
          {
            break;
          }

          v57 = v48;
LABEL_38:
          if (v57)
          {
            goto LABEL_242;
          }

          v48 = 0;
LABEL_29:
          v49 = (v51 << ((4 * v47 + 8) & 0x3C)) | ((-15 << ((4 * v47 + 8) & 0x3C)) - 1) & v49;
          v52 = *(v50 + 24 + 24 * v51);
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          v53 = v52;
          v17 = (v52 + 16);
          LOBYTE(v47) = *(v53 + 18);
          v50 = v53;
          if (!v47)
          {
            LODWORD(v46) = *v17;
            if (*v17)
            {
              v45 = v318;
              v4 = v319;
LABEL_70:
              v107 = 0;
              v108 = 24;
              v61 = v48;
              v46 = v46;
              while (1)
              {
                v109 = *(v53 + v108);
                v110 = v61 - v109;
                if (__OFSUB__(v61, v109))
                {
                  goto LABEL_240;
                }

                if (__OFADD__(v110, 1))
                {
                  goto LABEL_241;
                }

                if (v110 + 1 < 1)
                {
                  break;
                }

                ++v107;
                v108 += 24;
                v61 -= v109;
                if (v46 == v107)
                {
                  if (!v110)
                  {
                    goto LABEL_76;
                  }

LABEL_232:
                  __break(1u);
LABEL_233:
                  __break(1u);
                  goto LABEL_234;
                }
              }

              v46 = v107;
            }

            else
            {
              v46 = 0;
              v45 = v318;
              v4 = v319;
              if (v48)
              {
                goto LABEL_232;
              }

LABEL_76:
              v61 = 0;
            }

            v111 = v53;
            swift_unknownObjectRelease();
            v60 = v111;
            v59 = v49 & 0xFFFFFFFFFFFFF0FFLL | (v46 << 8);
            v303 = v111;
LABEL_41:
            v302 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v307, v59, v60, v42, v45);
            swift_unknownObjectRelease();
            goto LABEL_80;
          }
        }

        v54 = 0;
        v55 = (v50 + 40);
        while (1)
        {
          v56 = *v55;
          v55 += 3;
          v57 = v48 - v56;
          if (__OFSUB__(v48, v56))
          {
            goto LABEL_233;
          }

          if (__OFADD__(v57, 1))
          {
            break;
          }

          if (v57 + 1 < 1)
          {
            v51 = v54;
            goto LABEL_29;
          }

          ++v54;
          v48 = v57;
          if (v51 == v54)
          {
            goto LABEL_38;
          }
        }

LABEL_234:
        __break(1u);
        goto LABEL_235;
      }
    }
  }

  v58 = swift_unknownObjectRetain();
  v59 = specialized Rope._endPath.getter(v58);
  v60 = 0;
  v61 = 0;
  v303 = 0;
  if (v42)
  {
    goto LABEL_41;
  }

  v302 = 0;
LABEL_80:
  v112 = (v301 - v61);
  if (__OFSUB__(v301, v61))
  {
    goto LABEL_247;
  }

  v113 = v308[9];
  v114 = v308[10];
  v115 = v308[11];
  v116 = v308[12];
  swift_unknownObjectRetain();
  v300 = v59;
  specialized Rope.subscript.getter(v307, v59, v303, v113, v114, v115, v116);
  v117 = v4;
  v119 = v118;
  v121 = v120;
  result = swift_unknownObjectRelease();
  v122 = v117[1];
  if (v122 >= v302)
  {

    goto LABEL_162;
  }

  v287 = v121;
  v288 = (v313 + 40);
  v305 = v119;
  v283 = v122;
  while (2)
  {
    v123 = v308[9];
    v124 = v308[12];
    v331 = v307;
    *&v332 = v300;
    v125 = v303;
    *(&v332 + 1) = v303;
    if (v307 != v124)
    {
      goto LABEL_248;
    }

    if (v123)
    {
      v126 = *(v123 + 18);
      result = swift_unknownObjectRetain();
      v125 = v303;
    }

    else
    {
      v126 = 0;
    }

    if (v126 >= v300)
    {
      goto LABEL_249;
    }

    v294 = v112;
    if (v125)
    {
      v127 = (4 * *(v125 + 18) + 8) & 0x3C;
      if (((v300 >> v127) & 0xF) != 0)
      {
        v128 = ((((v300 >> v127) & 0xF) - 1) << v127) | ((-15 << v127) - 1) & v300;
        *&v332 = v128;
LABEL_116:
        v148 = (v128 >> ((4 * *(v125 + 18) + 8) & 0x3C)) & 0xF;
        v303 = v125;
        v142 = *(v125 + 24 * v148 + 24);

        swift_unknownObjectRelease();
        v143 = 0;
        goto LABEL_117;
      }
    }

    v129 = (4 * *(v123 + 18) + 8) & 0x3C;
    v130 = (v300 >> v129) & 0xF;
    if (*(v123 + 18))
    {
      if (v130 >= *(v123 + 16))
      {
        swift_unknownObjectRetain();
        if (!v130)
        {
          goto LABEL_256;
        }

LABEL_113:
        *&v332 = v332 & ((-15 << v129) - 1) | ((v130 - 1) << v129);
        v146 = *(v123 + 24 * v130);
        swift_unknownObjectRetain();
        v147 = specialized Rope._Node.descendToLastItem(under:)(&v332, v146);
        swift_unknownObjectRelease();
        v125 = v147;
        *(&v332 + 1) = v147;
        goto LABEL_114;
      }

      v125 = *(v123 + 24 * ((v300 >> v129) & 0xF) + 24);
      v131 = (4 * *(v125 + 18) + 8) & 0x3C;
      v132 = (v300 >> v131) & 0xF;
      if (!*(v125 + 18))
      {
        if (v132)
        {
          *&v332 = ((v132 - 1) << v131) | v300 & 0xFFFFFFFFFFFFF0FFLL;
          *(&v332 + 1) = v125;
          swift_unknownObjectRetain();
          goto LABEL_114;
        }

        swift_unknownObjectRetain();
LABEL_112:
        if (!v130)
        {
LABEL_256:
          result = swift_unknownObjectRelease();
          __break(1u);
          goto LABEL_257;
        }

        goto LABEL_113;
      }

      v133 = *(v125 + 16);
      v319 = *(v123 + 24 * ((v300 >> v129) & 0xF) + 24);
      if (v132 >= v133)
      {
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
LABEL_108:
        if (v132)
        {
          *&v332 = v332 & ((-15 << v131) - 1) | ((v132 - 1) << v131);
          v144 = *(v125 + 24 * v132);
          swift_unknownObjectRetain();
          v145 = specialized Rope._Node.descendToLastItem(under:)(&v332, v144);
          swift_unknownObjectRelease();
          v125 = v145;
          *(&v332 + 1) = v145;
          swift_unknownObjectRelease();
          goto LABEL_114;
        }

        swift_unknownObjectRelease();
        goto LABEL_112;
      }

      v125 = *(v125 + 24 * ((v300 >> v131) & 0xF) + 24);
      v134 = ((4 * *(v125 + 18) + 8) & 0x3C);
      v135 = (v300 >> v134) & 0xF;
      if (!*(v125 + 18))
      {
        if (v135)
        {
          *&v332 = ((v135 - 1) << v134) | v300 & 0xFFFFFFFFFFFFF0FFLL;
          *(&v332 + 1) = v125;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
LABEL_154:
          v119 = v305;
          goto LABEL_155;
        }

        swift_unknownObjectRetain();
        v125 = v319;
        swift_unknownObjectRetain();
        v119 = v305;
        goto LABEL_108;
      }

      v136 = *(v125 + 16);
      v318 = v125;
      if (v135 < v136)
      {
        v137 = *(v125 + 24 * ((v300 >> v134) & 0xF) + 24);
        v138 = *(v137 + 18);
        v139 = (4 * v138 + 8) & 0x3C;
        v140 = (v300 >> v139) & 0xF;
        *&v345 = v140;
        if (v138)
        {
          v317 = v134;
          v141 = v137;
          LODWORD(v316) = v138;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          LODWORD(v316) = specialized closure #1 in Rope._Node.formPredecessor(of:)((v141 + 16), v141 + 24, &v345, &v331, v316);
          swift_unknownObjectRelease();
          if (v316)
          {
            v125 = *(&v332 + 1);
LABEL_153:
            swift_unknownObjectRelease();
            goto LABEL_154;
          }

          goto LABEL_147;
        }

        if (v140)
        {
          *&v332 = ((v140 - 1) << v139) | v300 & 0xFFFFFFFFFFFFF0FFLL;
          *(&v332 + 1) = v137;
          v125 = v137;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          goto LABEL_153;
        }
      }

      v317 = v134;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
LABEL_147:
      if (v135)
      {
        *&v332 = v332 & ((-15 << v317) - 1) | ((v135 - 1) << v317);
        v180 = v318[3 * v135];
        swift_unknownObjectRetain();
        v181 = specialized Rope._Node.descendToLastItem(under:)(&v332, v180);
        swift_unknownObjectRelease();
        v125 = v181;
        *(&v332 + 1) = v181;
        swift_unknownObjectRelease();
        v119 = v305;
LABEL_155:
        swift_unknownObjectRelease();
LABEL_114:
        swift_unknownObjectRelease();
        if (v331 != v307)
        {
LABEL_250:
          __break(1u);
          goto LABEL_251;
        }

        v128 = v332;
        if (v125)
        {
          goto LABEL_116;
        }

        goto LABEL_102;
      }

      swift_unknownObjectRelease();
      v119 = v305;
      v125 = v319;
      goto LABEL_108;
    }

    if (!v130)
    {
LABEL_257:
      __break(1u);
      goto LABEL_258;
    }

    v128 = ((v130 - 1) << v129) | v300 & 0xFFFFFFFFFFFFF0FFLL;
    *&v332 = v128;
    *(&v332 + 1) = v123;
    v125 = v123;
    if (v123)
    {
      goto LABEL_116;
    }

LABEL_102:
    v142 = specialized Rope._Node.subscript.getter(v128, v123);
    swift_unknownObjectRelease();
    v303 = 0;
    v143 = 1;
LABEL_117:

    if (__OFSUB__(v294, v142))
    {
LABEL_251:
      __break(1u);
      goto LABEL_252;
    }

    if (v307 != v308[12])
    {
LABEL_252:
      __break(1u);
      goto LABEL_253;
    }

    v284 = (v294 - v142);
    v300 = v128;
    if (v143)
    {
      v149 = v308[9];
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v128, v149);
      v151 = v150;
      v289 = v152;
      swift_unknownObjectRelease();
    }

    else
    {
      v153 = v303 + 24 * ((v128 >> ((4 * *(v303 + 18) + 8) & 0x3C)) & 0xF);
      v151 = *(v153 + 32);
      v154 = *(v153 + 40);

      v289 = v154;
    }

    v155 = 0;
    --v302;
    v156 = v288;
    v306 = v151;
    do
    {
      if (v155 >= *(v313 + 16))
      {
        __break(1u);
        goto LABEL_238;
      }

      v158 = *(v156 - 1);
      v157 = *v156;
      v319 = v156;
      if (*(v119 + 16))
      {

        v159 = specialized __RawDictionaryStorage.find<A>(_:)(v158, v157);
        if (v160)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v119 + 56) + 72 * v159, &v345);
          if (!*(v151 + 16))
          {
            goto LABEL_133;
          }
        }

        else
        {
          v349 = 0;
          v347 = 0u;
          v348 = 0u;
          v345 = 0u;
          v346 = 0u;
          if (!*(v151 + 16))
          {
LABEL_133:

            goto LABEL_134;
          }
        }
      }

      else
      {
        v349 = 0;
        v347 = 0u;
        v348 = 0u;
        v345 = 0u;
        v346 = 0u;

        if (!*(v151 + 16))
        {
          goto LABEL_133;
        }
      }

      v161 = specialized __RawDictionaryStorage.find<A>(_:)(v158, v157);
      v163 = v162;

      if (v163)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v151 + 56) + 72 * v161, v341);
        goto LABEL_135;
      }

LABEL_134:
      v344 = 0;
      v342 = 0u;
      v343 = 0u;
      memset(v341, 0, sizeof(v341));
LABEL_135:
      outlined init with copy of AttributedString._AttributeValue?(&v345, &v331);
      outlined init with copy of AttributedString._AttributeValue?(v341, &v336);
      if (v333)
      {
        outlined init with copy of AttributedString._AttributeValue?(&v331, &v325);
        if (!*(&v337 + 1))
        {
          outlined destroy of TermOfAddress?(v341, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v345, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of AttributedString._AttributeValue(&v325);
LABEL_159:
          outlined destroy of TermOfAddress?(&v331, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_161:

          v112 = v294;
          goto LABEL_162;
        }

        v322 = v338;
        v323 = v339;
        v324 = v340;
        v320 = v336;
        v321 = v337;
        v164 = v328;
        v315 = v329;
        v316 = v155;
        v312 = __swift_project_boxed_opaque_existential_1(&v325, v328);
        v165 = __swift_project_boxed_opaque_existential_1(&v320, *(&v321 + 1));
        v318 = &v282;
        v166 = *(v164 - 8);
        MEMORY[0x1EEE9AC00](v165);
        v168 = &v282 - ((v167 + 15) & 0xFFFFFFFFFFFFFFF0);
        v317 = &v282;
        v170 = MEMORY[0x1EEE9AC00](v169);
        (*(v172 + 16))(&v282 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0), v170);
        v173 = type metadata accessor for Optional();
        v174 = *(v173 - 8);
        MEMORY[0x1EEE9AC00](v173);
        v176 = &v282 - v175;
        v177 = swift_dynamicCast();
        v178 = *(v166 + 56);
        if (!v177)
        {
          v178(v176, 1, 1, v164);
          outlined destroy of TermOfAddress?(v341, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v345, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          (*(v174 + 8))(v176, v173);
          outlined destroy of AttributedString._AttributeValue(&v320);
          outlined destroy of AttributedString._AttributeValue(&v325);
          outlined destroy of TermOfAddress?(&v331, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          goto LABEL_161;
        }

        v178(v176, 0, 1, v164);
        (*(v166 + 32))(v168, v176, v164);
        v179 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v166 + 8))(v168, v164);
        outlined destroy of TermOfAddress?(v341, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v345, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v320);
        outlined destroy of AttributedString._AttributeValue(&v325);
        outlined destroy of TermOfAddress?(&v331, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v119 = v305;
        v151 = v306;
        v155 = v316;
        if ((v179 & 1) == 0)
        {
          goto LABEL_161;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(v341, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v345, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (*(&v337 + 1))
        {
          goto LABEL_159;
        }

        outlined destroy of TermOfAddress?(&v331, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      ++v155;
      v156 = v319 + 2;
    }

    while (v311 != v155);

    v17 = v284;
    v112 = v284;
    result = v287;
    if (v283 < v302)
    {
      continue;
    }

    break;
  }

LABEL_236:

  v112 = v17;
LABEL_162:
  v66 = v304;
  v62 = v308;
  if (v112 >= (v304 >> 11))
  {
    v192 = *(v308 + 5);
    v361 = *(v308 + 3);
    v362 = v192;
    v363 = *(v308 + 7);
    v193 = v308;
    swift_unknownObjectRetain();
    v66 = BigString.UTF8View.index(_:offsetBy:)();
    v73 = v194;
    v74 = v195;
    v30 = v196;
    result = swift_unknownObjectRelease();
    v197 = *v295;
    v198 = v295[2];
    v359 = v295[1];
    v360 = v198;
    v358 = v197;
    v199 = v296 >> 10;
    if (v296 >> 10 < v66 >> 10)
    {
LABEL_254:
      __break(1u);
      goto LABEL_255;
    }

    v201 = v193[3];
    v200 = v193[4];
    v202 = v193[5];
    v203 = v193[6];
    v204 = v193[7];
    v205 = v193[8];
    v341[0] = v66;
    v341[1] = v73;
    v341[2] = v74;
    v341[3] = v30;
    v342 = v310;
    v343 = v314;
    if (v66 >> 10 == v199)
    {
      v62 = v193;
      goto LABEL_225;
    }

    v315 = v205;
    v316 = v204;
    v317 = v203;
    v318 = v202;
    v319 = v200;
    v216 = v30;
    v217 = v66;
    v218 = v295[1];
    v367[0] = *v295;
    v367[1] = v218;
    v368 = *(v295 + 4);
    outlined init with copy of Rope<BigString._Chunk>._Node?(v367, &v331);
    v219 = v309;
    if ((specialized Set.contains(_:)(0, 0, v309) & 1) != 0 && v199 > BigString.startIndex.getter() >> 10)
    {
      v313 = v201;
      *&v354 = v201;
      *(&v354 + 1) = v319;
      *&v355 = v318;
      *(&v355 + 1) = v317;
      v356 = v316;
      v357 = v315;
      v220 = BigString.UTF8View.index(before:)();
      v222 = v221;
      v312 = v223;
      v225 = v224;
      result = BigString.UTF8View.subscript.getter();
      if (v199 < v220 >> 10)
      {
        goto LABEL_259;
      }

      v325 = v220;
      v326 = v222;
      v327 = v312;
      v328 = v225;
      v329 = v310;
      v330 = v314;
      specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v325, &v331);
      result = outlined destroy of BigSubstring.UTF8View(&v345);
      v226 = v314;
      v219 = v309;
      v201 = v313;
      if (v333 != 2)
      {
        v217 = v331;
        if (v199 < v331 >> 10)
        {
          goto LABEL_264;
        }

        v74 = *(&v332 + 1);
        v73 = v332;
        v216 = v333;
      }
    }

    else
    {
      v226 = v314;
    }

    v304 = v217;
    *&v320 = v217;
    *(&v320 + 1) = v73;
    *&v321 = v74;
    *(&v321 + 1) = v216;
    v30 = v216;
    v322 = v310;
    v323 = v226;
    if (specialized Collection<>._containsScalarConstraint.getter(v219))
    {
      v313 = v201;
      v246 = v219 + 56;
      v247 = 1 << *(v219 + 32);
      v248 = -1;
      if (v247 < 64)
      {
        v248 = ~(-1 << v247);
      }

      v249 = v248 & *(v219 + 56);
      v250 = (v247 + 63) >> 6;

      v251 = 0;
      v252 = MEMORY[0x1E69E7CC0];
      while (v249)
      {
LABEL_208:
        v254 = __clz(__rbit64(v249));
        v249 &= v249 - 1;
        v255 = (*(v309 + 48) + ((v251 << 10) | (16 * v254)));
        v256 = v255[1];
        if (v256 >= 2)
        {
          v257 = specialized Collection.first.getter(*v255, v256);
          if ((v257 & 0x100000000) == 0)
          {
            *&v314 = v257;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v252 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v252 + 2) + 1, 1, v252);
            }

            v259 = *(v252 + 2);
            v258 = *(v252 + 3);
            v260 = (v259 + 1);
            v261 = v314;
            if (v259 >= v258 >> 1)
            {
              v312 = (v259 + 1);
              v262 = v252;
              v263 = v259;
              v264 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v258 > 1), v259 + 1, 1, v262);
              v260 = v312;
              v259 = v263;
              v252 = v264;
              v261 = v314;
            }

            *(v252 + 2) = v260;
            *&v252[4 * v259 + 32] = v261;
          }
        }
      }

      while (1)
      {
        v253 = v251 + 1;
        if (__OFADD__(v251, 1))
        {
          goto LABEL_239;
        }

        if (v253 >= v250)
        {

          *&v350 = v313;
          *(&v350 + 1) = v319;
          *&v351 = v318;
          *(&v351 + 1) = v317;
          v352 = v316;
          v353 = v315;
          BigString.UnicodeScalarView.subscript.getter();
          v66 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(v252);
          v272 = v271;
          v274 = v273;
          v276 = v275;
          outlined destroy of BigString(&v358);

          result = outlined destroy of BigSubstring.UnicodeScalarView(&v331);
          if (v276 == 2)
          {
            goto LABEL_224;
          }

          v62 = v308;
          if (v199 < v66 >> 10)
          {
            __break(1u);
            goto LABEL_222;
          }

          goto LABEL_228;
        }

        v249 = *(v246 + 8 * v253);
        ++v251;
        if (v249)
        {
          v251 = v253;
          goto LABEL_208;
        }
      }
    }

    v265 = &v358;
LABEL_223:
    result = outlined destroy of BigString(v265);
    goto LABEL_224;
  }

  v182 = *v295;
  v183 = v295[2];
  v362 = v295[1];
  v363 = v183;
  v361 = v182;
  v184 = v296 >> 10;
  v185 = v309;
  if (v296 >> 10 < v304 >> 10)
  {
LABEL_253:
    __break(1u);
    goto LABEL_254;
  }

  v186 = v308[3];
  v187 = v308[4];
  v188 = v308[5];
  v189 = v308[6];
  v190 = v308[7];
  v191 = v308[8];
  *&v341[1] = v297;
  v341[0] = v304;
  v341[3] = v298;
  v73 = v297;
  v342 = v310;
  v343 = v314;
  v74 = *(&v297 + 1);
  if (v304 >> 10 == v184)
  {
    v30 = v298;
    goto LABEL_225;
  }

  v318 = v191;
  v319 = v190;
  v206 = v295[1];
  v350 = *v295;
  v351 = v206;
  v352 = *(v295 + 4);
  outlined init with copy of Rope<BigString._Chunk>._Node?(&v350, &v331);
  if ((specialized Set.contains(_:)(0, 0, v185) & 1) == 0 || v184 <= BigString.startIndex.getter() >> 10)
  {
    v215 = v304;
    v214 = v314;
LABEL_182:
    v304 = v215;
    *&v320 = v215;
    *(&v320 + 1) = v73;
    *&v321 = v74;
    *(&v321 + 1) = v298;
    v322 = v310;
    v323 = v214;
    if (specialized Collection<>._containsScalarConstraint.getter(v185))
    {
      v315 = v189;
      v316 = v188;
      v317 = v187;
      v227 = v185 + 56;
      v228 = 1 << *(v185 + 32);
      v229 = -1;
      if (v228 < 64)
      {
        v229 = ~(-1 << v228);
      }

      v230 = v229 & *(v185 + 56);
      v231 = (v228 + 63) >> 6;

      v232 = 0;
      v233 = MEMORY[0x1E69E7CC0];
      while (v230)
      {
LABEL_191:
        v235 = __clz(__rbit64(v230));
        v230 &= v230 - 1;
        v236 = (*(v309 + 48) + ((v232 << 10) | (16 * v235)));
        v237 = v236[1];
        if (v237 >= 2)
        {
          v238 = specialized Collection.first.getter(*v236, v237);
          if ((v238 & 0x100000000) == 0)
          {
            *&v314 = v238;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v233 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v233 + 2) + 1, 1, v233);
            }

            v240 = *(v233 + 2);
            v239 = *(v233 + 3);
            v241 = v240 + 1;
            v242 = v314;
            if (v240 >= v239 >> 1)
            {
              v313 = v240 + 1;
              v243 = v233;
              v244 = v240;
              v245 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v239 > 1), v240 + 1, 1, v243);
              v241 = v313;
              v242 = v314;
              v240 = v244;
              v233 = v245;
            }

            *(v233 + 2) = v241;
            *&v233[4 * v240 + 32] = v242;
          }
        }
      }

      while (1)
      {
        v234 = v232 + 1;
        if (__OFADD__(v232, 1))
        {
          break;
        }

        if (v234 >= v231)
        {

          *&v354 = v186;
          *(&v354 + 1) = v317;
          *&v355 = v316;
          *(&v355 + 1) = v315;
          v356 = v319;
          v357 = v318;
          BigString.UnicodeScalarView.subscript.getter();
          v66 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(v233);
          v267 = v266;
          v269 = v268;
          v30 = v270;
          outlined destroy of BigString(&v361);

          result = outlined destroy of BigSubstring.UnicodeScalarView(&v331);
          if (v30 == 2)
          {
            v62 = v308;
            v66 = v304;
            v30 = v298;
            goto LABEL_225;
          }

          v62 = v308;
          if (v184 >= v66 >> 10)
          {
            v73 = v267;
            v74 = v269;
            goto LABEL_225;
          }

          goto LABEL_260;
        }

        v230 = *(v227 + 8 * v234);
        ++v232;
        if (v230)
        {
          v232 = v234;
          goto LABEL_191;
        }
      }

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
LABEL_243:
      __break(1u);
      goto LABEL_244;
    }

    v265 = &v361;
    v30 = v298;
    goto LABEL_223;
  }

  *&v358 = v186;
  v316 = v188;
  v317 = v187;
  *(&v358 + 1) = v187;
  *&v359 = v188;
  v315 = v189;
  *(&v359 + 1) = v189;
  *&v360 = v319;
  *(&v360 + 1) = v318;
  v207 = BigString.UTF8View.index(before:)();
  v209 = v208;
  v211 = v210;
  v213 = v212;
  result = BigString.UTF8View.subscript.getter();
  if (v184 < v207 >> 10)
  {
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
    goto LABEL_261;
  }

  v325 = v207;
  v326 = v209;
  v327 = v211;
  v328 = v213;
  v329 = v310;
  v330 = v314;
  specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v325, &v331);
  result = outlined destroy of BigSubstring.UTF8View(&v345);
  v214 = v314;
  v215 = v304;
  v185 = v309;
  v188 = v316;
  v187 = v317;
  v189 = v315;
  if (v333 == 2)
  {
    goto LABEL_182;
  }

  v215 = v331;
  if (v184 >= v331 >> 10)
  {
    v74 = *(&v332 + 1);
    v73 = v332;
    v298 = v333;
    goto LABEL_182;
  }

LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
  return result;
}

uint64_t AttributedString.Runs.AttributesSlice2.subscript.getter(uint64_t a1, unint64_t a2, unint64_t *a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v427 = a1;
  v11 = *(a5 + 40);
  v428 = *(a5 + 24);
  v429 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v412 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v415 = &v403 - v13;
  v14 = *(a5 + 32);
  v430 = *(a5 + 16);
  v431 = v14;
  v432 = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for Optional();
  v410 = *(v15 - 8);
  v411 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v416 = &v403 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v403 - v19;
  v458 = *(v6 + *(a5 + 52));
  v445 = *(v458 + 2);
  if (!v445)
  {
LABEL_380:
    __break(1u);
LABEL_381:
    swift_unknownObjectRelease();
    __break(1u);
LABEL_382:
    __break(1u);
    goto LABEL_383;
  }

  v409 = v12;
  v424 = a2;
  v425 = a3;
  v21 = *a4;
  v22 = *(a4 + 8);
  v23 = *(a4 + 16);
  v24 = *(a4 + 24);
  v452 = *(v6 + *(a5 + 56));
  a2 = *v6;
  v444 = v21;
  v441 = v22;
  *&v442 = v23;
  *(&v442 + 1) = v24;
  AttributedString.Guts.findRun(at:)(v21, v24, &v479);
  v25 = v479;
  v439 = v480;
  v440 = v481;
  v434 = v482;
  v454 = v483;
  v422 = v485;
  v423 = v484;
  v420 = v487;
  v421 = v486;
  v26 = *(type metadata accessor for AttributedString.Runs() + 24);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v460 = v6;
  v464 = v27;
  v465 = v26;
  RangeSet.ranges.getter();
  v28 = RangeSet.Ranges.count.getter();
  v29 = *(v18 + 8);
  v18 += 8;
  v463 = v29;
  (v29)(v20, v17);
  if (v28 < 1)
  {
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  v6 = v17;
  v30 = v18;
  a4 = 0;
  v18 = v444 >> 10;
  v462 = v30;
  while (1)
  {
    if (__OFADD__(a4, v28))
    {
      goto LABEL_135;
    }

    v17 = (a4 + v28) / 2;
    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    (v463)(v20, v6);
    if (v18 >= v479 >> 10)
    {
      break;
    }

LABEL_4:
    v28 = v17;
    if (a4 >= v17)
    {
      goto LABEL_134;
    }
  }

  if (v18 >= v483 >> 10)
  {
    a4 = v17 + 1;
    v17 = v28;
    goto LABEL_4;
  }

  v433 = v479 >> 10;
  v459 = v6;
  v443 = v480;
  v437 = v481;
  v438 = v479;
  v436 = v482;
  v31 = *(v452 + 16);
  v457 = a2;
  v453 = v25;
  v461 = v18;
  if (v31 == 1 && (specialized Set.contains(_:)(0, 1, v452) & 1) == 0)
  {
    v6 = a2 + 24;
    v96 = *(a2 + 40);
    v97 = *(a2 + 56);
    v573 = *(a2 + 24);
    v574 = v96;
    v575 = v97;
    swift_unknownObjectRetain();
    v28 = BigString.UnicodeScalarView.index(after:)();
    v25 = v98;
    a2 = v99;
    v18 = v100;
    swift_unknownObjectRelease();
    v101 = *v6;
    v102 = *(v6 + 32);
    v571 = *(v6 + 16);
    v572 = v102;
    v570 = v101;
    a4 = v28 >> 10;
    if (v28 >> 10 < v433)
    {
LABEL_399:
      __break(1u);
LABEL_400:
      swift_unknownObjectRelease();
      __break(1u);
LABEL_401:
      __break(1u);
      goto LABEL_402;
    }

    v104 = *v6;
    v103 = *(v6 + 8);
    v105 = *(v6 + 16);
    v106 = *(v6 + 24);
    v107 = *(v6 + 32);
    v108 = *(v6 + 40);
    v109 = v438;
    v559 = v438;
    v17 = v443;
    v560 = v443;
    v561 = v437;
    v562 = v436;
    v563 = v28;
    v564 = v25;
    v565 = a2;
    v566 = v18;
    if (v433 == a4)
    {
      goto LABEL_154;
    }

    v447 = v104;
    v448 = v108;
    v455 = v103;
    v456 = v18;
    v449 = v107;
    v450 = v106;
    v451 = v105;
    v110 = *(v6 + 16);
    v533 = *v6;
    v534 = v110;
    v535 = *(v6 + 32);
    outlined init with copy of Rope<BigString._Chunk>._Node?(&v533, &v479);
    if ((specialized Set.contains(_:)(0, 0, v452) & 1) == 0)
    {
LABEL_137:
      v537 = v109;
      v443 = v17;
      v538 = v17;
      v539 = v437;
      v540 = v436;
      v541 = v28;
      v542 = v25;
      v543 = a2;
      v544 = v456;
      v178 = v452;
      v179 = specialized Collection<>._containsScalarConstraint.getter(v452);
      v438 = v109;
      if (v179)
      {
        v180 = v178 + 56;
        v181 = 1 << *(v178 + 32);
        v182 = -1;
        if (v181 < 64)
        {
          v182 = ~(-1 << v181);
        }

        a2 = v182 & *(v178 + 56);
        v183 = (v181 + 63) >> 6;

        v6 = 0;
        v184 = MEMORY[0x1E69E7CC0];
        while (a2)
        {
LABEL_146:
          v186 = __clz(__rbit64(a2));
          a2 &= a2 - 1;
          v187 = (*(v452 + 48) + ((v6 << 10) | (16 * v186)));
          v188 = v187[1];
          if (v188 >= 2)
          {
            v189 = specialized Collection.first.getter(*v187, v188);
            if ((v189 & 0x100000000) == 0)
            {
              v456 = v189;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v184 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v184 + 2) + 1, 1, v184);
              }

              v191 = *(v184 + 2);
              v190 = *(v184 + 3);
              v18 = v191 + 1;
              v192 = v456;
              if (v191 >= v190 >> 1)
              {
                v184 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v190 > 1), v191 + 1, 1, v184);
                v192 = v456;
              }

              *(v184 + 2) = v18;
              *&v184[4 * v191 + 32] = v192;
            }
          }
        }

        while (1)
        {
          v185 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_378;
          }

          if (v185 >= v183)
          {
            break;
          }

          a2 = *(v180 + 8 * v185);
          ++v6;
          if (a2)
          {
            v6 = v185;
            goto LABEL_146;
          }
        }

        v545 = v447;
        v546 = v455;
        v547 = v451;
        v548 = v450;
        v549 = v449;
        v550 = v448;
        BigString.UnicodeScalarView.subscript.getter();
        v205 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(v184);
        v207 = v206;
        v209 = v208;
        v6 = v210;
        outlined destroy of BigString(&v570);

        outlined destroy of BigSubstring.UnicodeScalarView(&v501);
        a2 = v457;
        if (v6 != 2)
        {
          if (a4 < v205 >> 10)
          {
            goto LABEL_412;
          }

          v437 = v209;
          v438 = v205;
          v443 = v207;
          v436 = v6;
        }

        goto LABEL_155;
      }

      outlined destroy of BigString(&v570);
LABEL_154:
      a2 = v457;
LABEL_155:
      a4 = v453;
      v479 = v453;
      v162 = v439;
      v163 = v440;
      v480 = v439;
      v481 = v440;
      v455 = v438 >> 11;
      if ((v438 >> 11) >= v454)
      {
LABEL_193:
        v6 = v460;
LABEL_194:
        v172 = *(a2 + 16);
        goto LABEL_195;
      }

      if (v453 != *(a2 + 96))
      {
        goto LABEL_370;
      }

      v18 = 24;
      while (1)
      {
        v193 = *(a2 + 72);
        v456 = *(a2 + 80);
        v6 = *(a2 + 88);
        if (v193)
        {
          v194 = *(v193 + 18);
          swift_unknownObjectRetain();
          if (v194 >= v162)
          {
            goto LABEL_373;
          }
        }

        else if (!v162)
        {
          goto LABEL_373;
        }

        if (v163)
        {
          v195 = (4 * *(v163 + 18) + 8) & 0x3C;
          if (((v162 >> v195) & 0xF) != 0)
          {
            break;
          }
        }

        a2 = (4 * *(v193 + 18) + 8) & 0x3C;
        v196 = (v162 >> a2) & 0xF;
        if (*(v193 + 18))
        {
          if (v196 < *(v193 + 16))
          {
            v197 = *(v193 + 24 * ((v162 >> a2) & 0xF) + 24);
            a4 = *(v197 + 18);
            v198 = (4 * a4 + 8) & 0x3C;
            v199 = (v162 >> v198) & 0xF;
            *&v506 = v199;
            if (a4)
            {
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              a4 = specialized closure #1 in Rope._Node.formPredecessor(of:)((v197 + 16), v197 + 24, &v506, &v479, a4);
              swift_unknownObjectRelease();
              if (a4)
              {
                goto LABEL_179;
              }

              goto LABEL_177;
            }

            if (v199)
            {
              v480 = ((v199 - 1) << v198) | v162 & 0xFFFFFFFFFFFFF0FFLL;
              v481 = v197;
              swift_unknownObjectRetain();
              goto LABEL_179;
            }
          }

          swift_unknownObjectRetain();
LABEL_177:
          if (!v196)
          {
            goto LABEL_381;
          }

          v480 = v480 & ((-15 << a2) - 1) | ((v196 - 1) << a2);
          v200 = *(v193 + 24 * ((v162 >> a2) & 0xF));
          swift_unknownObjectRetain();
          v201 = specialized Rope._Node.descendToLastItem(under:)(&v480, v200);
          swift_unknownObjectRelease();
          v481 = v201;
LABEL_179:
          swift_unknownObjectRelease();
          v162 = v480;
          a2 = v457;
          a4 = v453;
LABEL_180:
          v163 = v481;
          goto LABEL_181;
        }

        if (!v196)
        {
          goto LABEL_384;
        }

        v162 = ((v196 - 1) << a2) | v162 & 0xFFFFFFFFFFFFF0FFLL;
        v480 = v162;
        v481 = v193;
        v163 = v193;
        a2 = v457;
        a4 = v453;
LABEL_181:
        if (v479 != a4)
        {
          goto LABEL_374;
        }

        if (v163)
        {
          v202 = *(v163 + 24 * ((v162 >> ((4 * *(v163 + 18) + 8) & 0x3C)) & 0xF) + 24);

          swift_unknownObjectRelease();
          v6 = v460;
          if (__OFSUB__(v454, v202))
          {
            goto LABEL_377;
          }

          if (v455 >= v454 - v202)
          {
            goto LABEL_194;
          }

          v454 -= v202;
        }

        else
        {
          v18 = v162;
          v203 = specialized Rope._Node.subscript.getter(v162, v193);
          a4 = v204;
          swift_unknownObjectRelease();

          if (__OFSUB__(v454, v203))
          {
            goto LABEL_379;
          }

          a4 = v453;
          if (v455 >= (v454 - v203))
          {
            v163 = 0;
            goto LABEL_193;
          }

          v454 -= v203;
          v18 = 24;
        }

        if (a4 != *(a2 + 96))
        {
          goto LABEL_370;
        }
      }

      v162 = ((((v162 >> v195) & 0xF) - 1) << v195) | ((-15 << v195) - 1) & v162;
      v480 = v162;
      goto LABEL_180;
    }

    if (a4 > BigString.startIndex.getter() >> 10)
    {
      *&v567 = v447;
      v18 = v456;
      *(&v567 + 1) = v455;
      *&v568 = v451;
      *(&v568 + 1) = v450;
      *&v569 = v449;
      *(&v569 + 1) = v448;
      v111 = BigString.UTF8View.index(before:)();
      v445 = v113;
      v446 = v112;
      v6 = v114;
      BigString.UTF8View.subscript.getter();
      if (a4 < v111 >> 10)
      {
        goto LABEL_411;
      }

      v551 = v111;
      v552 = v446;
      v553 = v6;
      v554 = v445;
      v555 = v28;
      v556 = v25;
      v557 = a2;
      v558 = v18;
      specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v551, &v479);
      outlined destroy of BigSubstring.UTF8View(v498);
      v109 = v438;
      v17 = v443;
      if (v482 != 2)
      {
        v109 = v479;
        if (a4 < v479 >> 10)
        {
          goto LABEL_413;
        }

        v17 = v480;
        v436 = v482;
        v437 = v481;
      }

      goto LABEL_137;
    }

LABEL_136:
    v109 = v438;
    goto LABEL_137;
  }

  v32 = *(a2 + 72);
  v33 = *(a2 + 80);
  v34 = *(a2 + 88);
  v35 = *(a2 + 96);
  swift_unknownObjectRetain();
  v18 = v439;
  v6 = v440;
  specialized Rope.subscript.getter(v25, v439, v440, v32, v33, v34, v35);
  v37 = v36;
  a4 = v38;
  swift_unknownObjectRelease();
  v39 = v460[1];
  if (v39 >= v434)
  {

    goto LABEL_89;
  }

  v417 = v458 + 40;
  v40 = v6;
  v6 = v37;
  v414 = a4;
  v435 = v37;
  v407 = v39;
  while (2)
  {
    v41 = a2;
    v42 = *(a2 + 72);
    a2 = *(a2 + 80);
    a4 = *(v41 + 88);
    v43 = *(v41 + 96);
    v479 = v25;
    v480 = v18;
    v481 = v40;
    if (v25 != v43)
    {
      goto LABEL_392;
    }

    if (v42)
    {
      v44 = *(v42 + 18);
      swift_unknownObjectRetain();
      if (v44 >= v18)
      {
        goto LABEL_393;
      }
    }

    else if (!v18)
    {
      goto LABEL_393;
    }

    if (v40)
    {
      v45 = (4 * *(v40 + 18) + 8) & 0x3C;
      if (((v18 >> v45) & 0xF) != 0)
      {
        v18 = ((((v18 >> v45) & 0xF) - 1) << v45) | ((-15 << v45) - 1) & v18;
        v480 = v18;
        goto LABEL_46;
      }
    }

    v456 = a4;
    v46 = (4 * *(v42 + 18) + 8) & 0x3C;
    a4 = (v18 >> v46) & 0xF;
    if (!*(v42 + 18))
    {
      if (!a4)
      {
        goto LABEL_401;
      }

      v18 = ((a4 - 1) << v46) | v18 & 0xFFFFFFFFFFFFF0FFLL;
      v480 = v18;
      v481 = v42;
      v40 = v42;
      v25 = v453;
      if (v42)
      {
        goto LABEL_46;
      }

      goto LABEL_30;
    }

    if (a4 >= *(v42 + 16))
    {
LABEL_33:
      swift_unknownObjectRetain();
      v18 = &v479;
      if (!a4)
      {
        goto LABEL_400;
      }

      goto LABEL_34;
    }

    v47 = *(v42 + 24 * ((v18 >> v46) & 0xF) + 24);
    v48 = (4 * *(v47 + 18) + 8) & 0x3C;
    v49 = v18;
    v18 = (v18 >> v48) & 0xF;
    if (!*(v47 + 18))
    {
      if (v18)
      {
        v480 = ((v18 - 1) << v48) | v49 & 0xFFFFFFFFFFFFF0FFLL;
        v481 = v47;
        swift_unknownObjectRetain();
        v40 = v47;
        goto LABEL_44;
      }

      goto LABEL_33;
    }

    if (v18 >= *(v47 + 16))
    {
      swift_unknownObjectRetain();
      goto LABEL_36;
    }

    v50 = *(v42 + 24 * a4 + 24);
    v51 = *(v47 + 24 * v18 + 24);
    v52 = *(v51 + 18);
    v53 = (4 * v52 + 8) & 0x3C;
    v54 = (v49 >> v53) & 0xF;
    *&v506 = v54;
    v455 = v50;
    if (!v52)
    {
      if (v54)
      {
        v480 = ((v54 - 1) << v53) | v49 & 0xFFFFFFFFFFFFF0FFLL;
        v40 = v51;
        v481 = v51;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
LABEL_43:
        swift_unknownObjectRelease();
        goto LABEL_44;
      }

      swift_unknownObjectRetain();
      v47 = v455;
LABEL_36:
      swift_unknownObjectRetain();
      goto LABEL_37;
    }

    LODWORD(v451) = v52;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    LODWORD(v451) = specialized closure #1 in Rope._Node.formPredecessor(of:)((v51 + 16), v51 + 24, &v506, &v479, v451);
    swift_unknownObjectRelease();
    v47 = v455;
    if (v451)
    {
      v40 = v481;
      goto LABEL_43;
    }

LABEL_37:
    if (v18)
    {
      v480 = v480 & ((-15 << v48) - 1) | ((v18 - 1) << v48);
      v60 = (v47 + 24 * v18);
      v61 = *v60;
      a4 = v60[1];
      swift_unknownObjectRetain();
      v40 = specialized Rope._Node.descendToLastItem(under:)(&v480, v61);
      swift_unknownObjectRelease();
      v481 = v40;
      goto LABEL_43;
    }

    swift_unknownObjectRelease();
    v18 = &v479;
    if (!a4)
    {
      goto LABEL_400;
    }

LABEL_34:
    v480 = v480 & ((-15 << v46) - 1) | ((a4 - 1) << v46);
    v58 = (v42 + 24 * a4);
    v59 = *v58;
    a4 = v58[1];
    swift_unknownObjectRetain();
    v40 = specialized Rope._Node.descendToLastItem(under:)(&v480, v59);
    swift_unknownObjectRelease();
    v481 = v40;
LABEL_44:
    v25 = v453;
    swift_unknownObjectRelease();
    if (v479 != v25)
    {
      goto LABEL_394;
    }

    v18 = v480;
    if (!v40)
    {
LABEL_30:
      v55 = specialized Rope._Node.subscript.getter(v18, v42);
      a4 = v56;
      swift_unknownObjectRelease();
      v418 = 0;
      v57 = 1;
      goto LABEL_47;
    }

LABEL_46:
    v62 = (v18 >> ((4 * *(v40 + 18) + 8) & 0x3C)) & 0xF;
    v418 = v40;
    v63 = &v40[3 * v62];
    v55 = v63[3];
    a4 = v63[4];

    swift_unknownObjectRelease();
    v57 = 0;
LABEL_47:
    a2 = v457;

    if (__OFSUB__(v454, v55))
    {
      goto LABEL_395;
    }

    if (v25 != *(a2 + 96))
    {
      goto LABEL_396;
    }

    v408 = v454 - v55;
    v413 = v18;
    if (v57)
    {
      v64 = *(a2 + 72);
      a4 = *(a2 + 88);
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v18, v64);
      v448 = v65;
      v419 = v66;
      swift_unknownObjectRelease();
    }

    else
    {
      v67 = v418 + 24 * ((v18 >> ((4 * *(v418 + 18) + 8) & 0x3C)) & 0xF);
      v68 = *(v67 + 40);
      v448 = *(v67 + 32);

      v419 = v68;
    }

    v69 = 0;
    --v434;
    v70 = v417;
LABEL_56:
    if (v69 >= *(v458 + 2))
    {
      goto LABEL_372;
    }

    v455 = v70;
    v456 = v69;
    v71 = *(v70 - 1);
    a4 = *v70;
    if (*(v6 + 16))
    {

      v72 = specialized __RawDictionaryStorage.find<A>(_:)(v71, a4);
      if (v73)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v6 + 56) + 72 * v72, &v506);
      }

      else
      {
        v510 = 0;
        v509 = 0u;
        v508 = 0u;
        v507 = 0u;
        v506 = 0u;
      }
    }

    else
    {
      v510 = 0;
      v509 = 0u;
      v508 = 0u;
      v507 = 0u;
      v506 = 0u;
    }

    if (*(v448 + 16))
    {
      v18 = v6;
      v74 = a2;
      v75 = v25;
      v76 = v448;
      v77 = specialized __RawDictionaryStorage.find<A>(_:)(v71, a4);
      v79 = v78;

      if (v79)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v76 + 56) + 72 * v77, &v501);
      }

      else
      {
        v505 = 0;
        v504 = 0u;
        v503 = 0u;
        v502 = 0u;
        v501 = 0u;
      }

      v25 = v75;
      a2 = v74;
      v6 = v18;
    }

    else
    {

      v505 = 0;
      v504 = 0u;
      v503 = 0u;
      v502 = 0u;
      v501 = 0u;
    }

    outlined init with copy of AttributedString._AttributeValue?(&v506, &v479);
    outlined init with copy of AttributedString._AttributeValue?(&v501, &v488);
    if (!v482)
    {
      outlined destroy of TermOfAddress?(&v501, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of TermOfAddress?(&v506, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (*(&v489 + 1))
      {
        goto LABEL_86;
      }

      outlined destroy of TermOfAddress?(&v479, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      goto LABEL_55;
    }

    outlined init with copy of AttributedString._AttributeValue?(&v479, v498);
    if (*(&v489 + 1))
    {
      v495 = v490;
      v496 = v491;
      v497 = v492;
      v493 = v488;
      v494 = v489;
      v80 = v499;
      v447 = v500;
      v446 = __swift_project_boxed_opaque_existential_1(v498, v499);
      v81 = __swift_project_boxed_opaque_existential_1(&v493, *(&v494 + 1));
      v451 = &v403;
      v82 = *(v80 - 8);
      MEMORY[0x1EEE9AC00](v81);
      v84 = &v403 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
      v450 = &v403;
      v86 = MEMORY[0x1EEE9AC00](v85);
      (*(v88 + 16))(&v403 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0), v86);
      v89 = type metadata accessor for Optional();
      v449 = &v403;
      v18 = *(v89 - 8);
      MEMORY[0x1EEE9AC00](v89);
      v91 = &v403 - v90;
      v92 = swift_dynamicCast();
      v93 = *(v82 + 56);
      if (!v92)
      {
        v93(v91, 1, 1, v80);
        a4 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
        outlined destroy of TermOfAddress?(&v501, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v506, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        (*(v18 + 8))(v91, v89);
        outlined destroy of AttributedString._AttributeValue(&v493);
        outlined destroy of AttributedString._AttributeValue(v498);
        outlined destroy of TermOfAddress?(&v479, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        a2 = v457;
        v6 = v435;
        goto LABEL_88;
      }

      v93(v91, 0, 1, v80);
      (*(v82 + 32))(v84, v91, v80);
      v94 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v82 + 8))(v84, v80);
      a4 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
      outlined destroy of TermOfAddress?(&v501, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of TermOfAddress?(&v506, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of AttributedString._AttributeValue(&v493);
      outlined destroy of AttributedString._AttributeValue(v498);
      outlined destroy of TermOfAddress?(&v479, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      a2 = v457;
      v25 = v453;
      v6 = v435;
      if ((v94 & 1) == 0)
      {
        goto LABEL_88;
      }

LABEL_55:
      v69 = (v456 + 1);
      v70 = (v455 + 16);
      if (v445 == (v456 + 1))
      {

        v95 = v408;
        v454 = v408;
        v40 = v418;
        v18 = v413;
        if (v407 >= v434)
        {

          v402 = v95;
          goto LABEL_90;
        }

        continue;
      }

      goto LABEL_56;
    }

    break;
  }

  outlined destroy of TermOfAddress?(&v501, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  outlined destroy of TermOfAddress?(&v506, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  outlined destroy of AttributedString._AttributeValue(v498);
LABEL_86:
  outlined destroy of TermOfAddress?(&v479, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_88:

LABEL_89:

  v402 = v454;
LABEL_90:
  v18 = a2 + 24;
  v115 = *(a2 + 40);
  v116 = *(a2 + 56);
  v573 = *(a2 + 24);
  v574 = v115;
  v575 = v116;
  if (__OFSUB__(v402, v423 >> 11))
  {
    goto LABEL_385;
  }

  swift_unknownObjectRetain();
  v117 = BigString.UTF8View.index(_:offsetBy:)();
  v119 = v118;
  v121 = v120;
  v123 = v122;
  swift_unknownObjectRelease();
  v6 = v437;
  a4 = v438;
  if (v433 < v117 >> 10)
  {
    a4 = v117;
  }

  v124 = v443;
  if (v433 < v117 >> 10)
  {
    v124 = v119;
  }

  v443 = v124;
  if (v433 < v117 >> 10)
  {
    v6 = v121;
  }

  v125 = v436;
  if (v433 < v117 >> 10)
  {
    v125 = v123;
  }

  v126 = *(a2 + 40);
  v570 = *(a2 + 24);
  v571 = v126;
  v572 = *(a2 + 56);
  swift_unknownObjectRetain();
  v127 = BigString.UnicodeScalarView.index(after:)();
  v455 = v129;
  v456 = v128;
  v131 = v130;
  swift_unknownObjectRelease();
  v132 = *v18;
  v133 = *(a2 + 40);
  v569 = *(a2 + 56);
  v568 = v133;
  v567 = v132;
  v134 = (v127 >> 10);
  v135 = a4 >> 10;
  if (v127 >> 10 < a4 >> 10)
  {
    goto LABEL_386;
  }

  v136 = v127;
  v137 = a4;
  v138 = *(a2 + 24);
  v139 = *(a2 + 32);
  v140 = *(a2 + 40);
  v141 = *(a2 + 48);
  v142 = *(a2 + 56);
  v143 = *(a2 + 64);
  v559 = a4;
  v144 = v443;
  v560 = v443;
  v561 = v6;
  v562 = v125;
  v563 = v127;
  a4 = v455;
  v145 = v456;
  v564 = v456;
  v565 = v455;
  v566 = v131;
  a2 = v6;
  if (v135 == v134)
  {
    v436 = v125;
    v437 = v6;
    v438 = v137;
LABEL_129:
    a2 = v457;
    v162 = v439;
    v163 = v440;
    goto LABEL_130;
  }

  v450 = v134;
  v451 = v136;
  v146 = v137;
  v454 = v131;
  v435 = v143;
  v445 = v142;
  v446 = v141;
  v447 = v140;
  v448 = v139;
  v449 = v138;
  v147 = *(v18 + 16);
  v576[0] = *v18;
  v576[1] = v147;
  v577 = *(v18 + 32);
  outlined init with copy of Rope<BigString._Chunk>._Node?(v576, &v479);
  if (specialized Set.contains(_:)(0, 0, v452))
  {
    v438 = v146;
    v148 = BigString.startIndex.getter();
    v18 = v450;
    if (v450 > v148 >> 10)
    {
      v436 = v125;
      v437 = a2;
      v545 = v449;
      v546 = v448;
      v547 = v447;
      v548 = v446;
      v549 = v445;
      v550 = v435;
      a2 = v451;
      v6 = a4;
      a4 = v454;
      v149 = BigString.UTF8View.index(before:)();
      v433 = v151;
      v434 = v150;
      v153 = v152;
      BigString.UTF8View.subscript.getter();
      if (v18 >= v149 >> 10)
      {
        v551 = v149;
        v552 = v434;
        v553 = v153;
        v554 = v433;
        v555 = a2;
        v556 = v145;
        v557 = v6;
        v558 = a4;
        specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v551, &v479);
        outlined destroy of BigSubstring.UTF8View(v498);
        v144 = v443;
        v154 = a2;
        a2 = v437;
        v155 = v438;
        v125 = v436;
        v156 = v6;
        if (v482 == 2)
        {
          goto LABEL_111;
        }

        v155 = v479;
        if (v450 >= v479 >> 10)
        {
          v144 = v480;
          a2 = v481;
          v125 = v482;
          goto LABEL_111;
        }

LABEL_408:
        __break(1u);
        goto LABEL_409;
      }

LABEL_402:
      __break(1u);
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
      goto LABEL_408;
    }

    v155 = v438;
    v156 = a4;
    a4 = v454;
  }

  else
  {
    v156 = a4;
    a4 = v454;
    v155 = v146;
  }

  v154 = v451;
LABEL_111:
  v537 = v155;
  v443 = v144;
  v538 = v144;
  v436 = v125;
  v437 = a2;
  v539 = a2;
  v540 = v125;
  v541 = v154;
  v542 = v145;
  v543 = v156;
  v544 = a4;
  a4 = v452;
  v157 = v155;
  v158 = specialized Collection<>._containsScalarConstraint.getter(v452);
  v438 = v157;
  if ((v158 & 1) == 0)
  {
    outlined destroy of BigString(&v567);
    goto LABEL_129;
  }

  v159 = a4 + 56;
  v160 = 1 << *(a4 + 32);
  v161 = -1;
  if (v160 < 64)
  {
    v161 = ~(-1 << v160);
  }

  a2 = v161 & *(a4 + 56);
  a4 = (v160 + 63) >> 6;

  v6 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  v162 = v439;
LABEL_115:
  v163 = v440;
  while (a2)
  {
LABEL_121:
    v165 = __clz(__rbit64(a2));
    a2 &= a2 - 1;
    v166 = (*(v452 + 48) + ((v6 << 10) | (16 * v165)));
    v167 = v166[1];
    if (v167 >= 2)
    {
      v168 = specialized Collection.first.getter(*v166, v167);
      if ((v168 & 0x100000000) == 0)
      {
        v456 = v168;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1, v18);
        }

        v170 = *(v18 + 16);
        v169 = *(v18 + 24);
        v171 = v456;
        if (v170 >= v169 >> 1)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v169 > 1), v170 + 1, 1, v18);
          v171 = v456;
        }

        *(v18 + 16) = v170 + 1;
        *(v18 + 4 * v170 + 32) = v171;
        goto LABEL_115;
      }
    }
  }

  while (2)
  {
    v164 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
LABEL_369:
      __break(1u);
LABEL_370:
      __break(1u);
      goto LABEL_371;
    }

    if (v164 < a4)
    {
      a2 = *(v159 + 8 * v164);
      ++v6;
      if (a2)
      {
        v6 = v164;
        goto LABEL_121;
      }

      continue;
    }

    break;
  }

  *&v533 = v449;
  *(&v533 + 1) = v448;
  *&v534 = v447;
  *(&v534 + 1) = v446;
  v535 = v445;
  v536 = v435;
  BigString.UnicodeScalarView.subscript.getter();
  v173 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(v18);
  v175 = v174;
  a4 = v176;
  v6 = v177;
  outlined destroy of BigString(&v567);

  outlined destroy of BigSubstring.UnicodeScalarView(&v501);
  a2 = v457;
  if (v6 == 2)
  {
    goto LABEL_130;
  }

  if (v450 < v173 >> 10)
  {
    goto LABEL_403;
  }

  v437 = a4;
  v438 = v173;
  v443 = v175;
  v436 = v6;
LABEL_130:
  v172 = *(a2 + 16);
  v6 = v460;
LABEL_195:
  v455 = *(v458 + 2);
  if (!v455)
  {
    goto LABEL_382;
  }

  v423 = v172;
  v439 = v162;
  v440 = v163;
  AttributedString.Guts.findRun(at:)(v444, *(&v442 + 1), &v479);
  v211 = v479;
  v445 = v481;
  v446 = v480;
  v456 = v482;
  v435 = v483;
  v421 = v485;
  v422 = v484;
  v419 = v487;
  v420 = v486;
  RangeSet.ranges.getter();
  v212 = v459;
  a4 = RangeSet.Ranges.count.getter();
  (v463)(v20, v212);
  if (a4 < 1)
  {
LABEL_365:
    __break(1u);
LABEL_366:
    __break(1u);
LABEL_261:

    goto LABEL_262;
  }

  v18 = 0;
  v213 = v459;
  while (2)
  {
    if (__OFADD__(v18, a4))
    {
      goto LABEL_366;
    }

    v214 = (v18 + a4) / 2;
    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    (v463)(v20, v213);
    if (v461 < v479 >> 10)
    {
LABEL_198:
      a4 = v214;
      if (v18 >= v214)
      {
        goto LABEL_365;
      }

      continue;
    }

    break;
  }

  v215 = v483;
  if (v461 >= v483 >> 10)
  {
    v18 = v214 + 1;
    v214 = a4;
    goto LABEL_198;
  }

  v433 = v483 >> 10;
  v448 = v485;
  v449 = v484;
  v450 = v486;
  v216 = v452;
  v217 = *(v452 + 16);
  v447 = v483;
  if (v217 == 1 && (specialized Set.contains(_:)(0, 1, v452) & 1) == 0)
  {
    v221 = *(a2 + 24);
    v222 = *(a2 + 32);
    v223 = *(a2 + 40);
    v464 = *(a2 + 48);
    v465 = v223;
    a4 = *(a2 + 64);
    v462 = *(a2 + 56);
    v224 = v444;
    v471 = v444;
    v18 = v441;
    v225 = v442;
    v472 = v441;
    v473 = v442;
    v474 = v215;
    v475 = v449;
    v476 = v448;
    v477 = v450;
    swift_unknownObjectRetain();
    v226 = specialized Set.contains(_:)(0, 0, v216);
    v459 = a4;
    v460 = v222;
    v463 = v221;
    if (v226)
    {
      *&v530 = v221;
      *(&v530 + 1) = v222;
      v6 = v464;
      *&v531 = v465;
      *(&v531 + 1) = v464;
      *&v532 = v462;
      *(&v532 + 1) = a4;
      BigString.UTF8View.subscript.getter();
      *&v466 = v224;
      *(&v466 + 1) = v18;
      *&v467 = v225;
      *(&v467 + 1) = *(&v442 + 1);
      *&v468 = v224;
      *(&v468 + 1) = v18;
      *&v469 = v225;
      *(&v469 + 1) = *(&v442 + 1);
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v466, &v479);
      v215 = v447;
      outlined destroy of BigSubstring.UTF8View(&v506);
      v227 = v448;
      v228 = v450;
      v229 = v465;
      if (v486 != 2)
      {
        v215 = v483;
        if (v461 > v483 >> 10)
        {
          goto LABEL_406;
        }

        v449 = v484;
        v227 = v485;
        v228 = v486;
      }
    }

    else
    {
      v227 = v448;
      v228 = v450;
      v6 = v464;
      v229 = v465;
    }

    v517 = v444;
    v518 = v441;
    v519 = v442;
    v447 = v215;
    v448 = v227;
    v520 = v215;
    v521 = v449;
    v522 = v227;
    v450 = v228;
    v523 = v228;
    if ((specialized Collection<>._containsScalarConstraint.getter(v216) & 1) == 0)
    {
      swift_unknownObjectRelease();
      goto LABEL_347;
    }

    a2 = v216 + 56;
    v330 = 1 << *(v216 + 32);
    v331 = -1;
    if (v330 < 64)
    {
      v331 = ~(-1 << v330);
    }

    v332 = v331 & *(v216 + 56);
    v333 = (v330 + 63) >> 6;

    a4 = 0;
    v334 = MEMORY[0x1E69E7CC0];
    v18 = v460;
    v335 = v463;
LABEL_312:
    if (v332)
    {
      goto LABEL_317;
    }

    while (1)
    {
      v336 = a4 + 1;
      if (__OFADD__(a4, 1))
      {
        goto LABEL_375;
      }

      if (v336 >= v333)
      {
        break;
      }

      v332 = *(a2 + 8 * v336);
      ++a4;
      if (v332)
      {
        a4 = v336;
LABEL_317:
        v337 = __clz(__rbit64(v332));
        v332 &= v332 - 1;
        v338 = (*(v452 + 48) + ((a4 << 10) | (16 * v337)));
        v339 = v338[1];
        if (v339 >= 2)
        {
          v340 = specialized Collection.first.getter(*v338, v339);
          if ((v340 & 0x100000000) == 0)
          {
            v465 = v340;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v334 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v334 + 2) + 1, 1, v334);
            }

            v342 = *(v334 + 2);
            v341 = *(v334 + 3);
            v343 = v342 + 1;
            v344 = v465;
            if (v342 >= v341 >> 1)
            {
              v464 = v342 + 1;
              v345 = v334;
              v346 = v342;
              v347 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v341 > 1), v342 + 1, 1, v345);
              v343 = v464;
              v344 = v465;
              v342 = v346;
              v334 = v347;
            }

            *(v334 + 2) = v343;
            *&v334[4 * v342 + 32] = v344;
          }
        }

        goto LABEL_312;
      }
    }

    v524 = v335;
    v525 = v18;
    v526 = v229;
    v527 = v6;
    v528 = v462;
    v529 = v459;
    BigString.UnicodeScalarView.subscript.getter();
    v348 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v334);
    a4 = v349;
    v351 = v350;
    v18 = v352;

    swift_unknownObjectRelease();
    outlined destroy of BigSubstring.UnicodeScalarView(&v479);
    a2 = v457;
    if (v18 != 2)
    {
      if (v461 > v348 >> 10)
      {
        goto LABEL_407;
      }

      v447 = v348;
      v448 = v351;
      v449 = a4;
      v450 = v18;
    }

LABEL_347:
    v368 = *(a2 + 16);
    v369 = *(a2 + 72);
    v370 = *(a2 + 80);
    v371 = *(a2 + 88);
    v372 = *(a2 + 96);
    swift_unknownObjectRetain();
    specialized Rope.subscript.getter(v453, v439, v440, v369, v370, v371, v372);
    v374 = v373;
    swift_unknownObjectRelease();
    v375 = (*(v431 + 24))();
    if (*(v374 + 16))
    {
      a4 = v376;
      v377 = specialized __RawDictionaryStorage.find<A>(_:)(v375, v376);
      v18 = v378;

      v379 = v425;
      v6 = v449;
      if (v18)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v374 + 56) + 72 * v377, &v493);
        outlined init with copy of Hashable & Sendable(&v493, v478);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
        v6 = v416;
        a2 = v432;
        if (!swift_dynamicCast())
        {
          goto LABEL_414;
        }

        outlined destroy of AttributedString._AttributeValue(&v493);
        v380 = *(a2 - 8);
        v381 = v380;
        v382 = *(v380 + 56);
        v18 = v380 + 56;
        v382(v6, 0, 1, a2);
        v383 = v6;
        v384 = v427;
        (*(v381 + 32))(v427, v383, a2);
        v382(v384, 0, 1, a2);
        v6 = v449;
LABEL_353:
        v385 = (*(v429 + 24))();
        a4 = v386;
        if (*(v374 + 16))
        {
          v387 = specialized __RawDictionaryStorage.find<A>(_:)(v385, v386);
          v18 = v388;

          if (v18)
          {
            outlined init with copy of AttributedString._AttributeValue(*(v374 + 56) + 72 * v387, &v493);

            outlined init with copy of Hashable & Sendable(&v493, v478);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
            v18 = v415;
            a4 = AssociatedTypeWitness;
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_415;
            }

            outlined destroy of AttributedString._AttributeValue(&v493);
            v389 = *(a4 - 8);
            v390 = *(v389 + 56);
            v390(v18, 0, 1, a4);
            v391 = v18;
            v18 = v424;
            (*(v389 + 32))(v424, v391, a4);
            result = (v390)(v18, 0, 1, a4);
LABEL_360:
            v393 = v437;
            v394 = v443;
            v395 = v436;
            v396 = v447;
            if (v447 >> 10 >= v438 >> 10)
            {
              *v379 = v438;
              v379[1] = v394;
              v379[2] = v393;
              v379[3] = v395;
              v379[4] = v423;
              v379[5] = v396;
              v397 = v448;
              v379[6] = v6;
              v379[7] = v397;
              v379[8] = v450;
              v379[9] = v368;
              return result;
            }

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
LABEL_390:
            __break(1u);
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
            goto LABEL_397;
          }
        }

        else
        {
        }

        result = (*(*(AssociatedTypeWitness - 8) + 56))(v424, 1, 1);
        goto LABEL_360;
      }
    }

    else
    {

      v379 = v425;
      v6 = v449;
    }

    (*(*(v432 - 8) + 56))(v427, 1, 1);
    goto LABEL_353;
  }

  v218 = *(v6 + 120);
  if (v456 == v218)
  {
    v219 = v211;
    v220 = *(v6 + 176);
    if (*(v6 + 208) == 2)
    {
      if (v220 != 2)
      {
        goto LABEL_256;
      }
    }

    else if (v220 == 2 || (*(v6 + 152) ^ *(v6 + 184)) >= 1024)
    {
      goto LABEL_256;
    }
  }

  if (v456 >= v218)
  {
LABEL_397:
    __break(1u);
    goto LABEL_398;
  }

  v414 = *(v6 + 120);
  v230 = *(a2 + 72);
  v231 = *(a2 + 80);
  v232 = *(a2 + 88);
  a4 = *(a2 + 96);
  v233 = v456;
  swift_unknownObjectRetain();
  v18 = v445;
  v6 = v446;
  specialized Rope.subscript.getter(v211, v446, v445, v230, v231, v232, a4);
  v454 = v234;
  v408 = v235;
  swift_unknownObjectRelease();
  v236 = *(a2 + 72);
  v237 = *(a2 + 80);
  v219 = v233 + 1;
  v239 = *(a2 + 88);
  v238 = *(a2 + 96);
  v413 = v458 + 40;
  v479 = v211;
  v480 = v6;
  v481 = v18;
  while (2)
  {
    if (v211 != v238)
    {
      goto LABEL_387;
    }

    v418 = v219;
    v434 = v238;
    v445 = v18;
    if (v18)
    {
      v240 = (v18 + 24 * ((v446 >> ((4 * *(v18 + 18) + 8) & 0x3C)) & 0xF));
      v241 = v240[3];
      a4 = v240[4];
      v6 = v240[5];
      swift_unknownObjectRetain();
    }

    else
    {
      swift_unknownObjectRetain();
      v241 = specialized Rope._Node.subscript.getter(v446, v236);
      a4 = v242;
      v6 = v243;
    }

    v244 = __OFADD__(v435, v241);
    v245 = v435 + v241;
    if (v244)
    {
      goto LABEL_388;
    }

    specialized Rope.formIndex(after:)(&v479, v236, v237, v239, v434);
    swift_unknownObjectRelease();
    if (v414 < v418)
    {
      goto LABEL_261;
    }

    v407 = v245;
    a4 = v480;
    v246 = v454;
    v18 = &v479;
    v6 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
    if (v418 == v414)
    {
      v247 = v460[22];
      if (v460[26] == 2)
      {
        if (v247 == 2)
        {
          goto LABEL_261;
        }
      }

      else if (v247 != 2 && (v460[19] ^ v460[23]) < 1024)
      {
        goto LABEL_261;
      }
    }

    if (v479 != *(a2 + 96))
    {
      goto LABEL_389;
    }

    v405 = v480;
    v406 = v479;
    v404 = v481;
    if (v481)
    {
      v248 = v481 + 24 * ((v480 >> ((4 * *(v481 + 18) + 8) & 0x3C)) & 0xF);
      v250 = *(v248 + 32);
      v249 = *(v248 + 40);

      v417 = v249;
    }

    else
    {
      v251 = *(a2 + 72);
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(a4, v251);
      v250 = v252;
      v417 = v253;
      swift_unknownObjectRelease();
    }

    v254 = 0;
    v255 = v413;
    v451 = v250;
    do
    {
      if (v254 >= *(v458 + 2))
      {
        __break(1u);
        goto LABEL_369;
      }

      v464 = v255;
      v465 = v254;
      v256 = *(v255 - 1);
      a4 = *v255;
      if (*(v246 + 16))
      {

        v257 = specialized __RawDictionaryStorage.find<A>(_:)(v256, a4);
        if (v258)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v246 + 56) + 72 * v257, &v506);
          if (!v250[2])
          {
            goto LABEL_246;
          }
        }

        else
        {
          v510 = 0;
          v509 = 0u;
          v508 = 0u;
          v507 = 0u;
          v506 = 0u;
          if (!v250[2])
          {
LABEL_246:

            goto LABEL_247;
          }
        }
      }

      else
      {
        v510 = 0;
        v509 = 0u;
        v508 = 0u;
        v507 = 0u;
        v506 = 0u;

        if (!v250[2])
        {
          goto LABEL_246;
        }
      }

      v259 = specialized __RawDictionaryStorage.find<A>(_:)(v256, a4);
      v261 = v260;

      if (v261)
      {
        outlined init with copy of AttributedString._AttributeValue(v250[7] + 72 * v259, &v493);
        goto LABEL_248;
      }

LABEL_247:
      v497 = 0;
      v495 = 0u;
      v496 = 0u;
      v493 = 0u;
      v494 = 0u;
LABEL_248:
      outlined init with copy of AttributedString._AttributeValue?(&v506, &v479);
      outlined init with copy of AttributedString._AttributeValue?(&v493, &v488);
      if (v482)
      {
        outlined init with copy of AttributedString._AttributeValue?(&v479, &v471);
        if (!*(&v489 + 1))
        {
          outlined destroy of TermOfAddress?(&v493, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v506, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of AttributedString._AttributeValue(&v471);
LABEL_258:
          outlined destroy of TermOfAddress?(&v479, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_260:

          goto LABEL_261;
        }

        v468 = v490;
        v469 = v491;
        v470 = v492;
        v466 = v488;
        v467 = v489;
        v262 = *(&v473 + 1);
        v459 = v474;
        v456 = __swift_project_boxed_opaque_existential_1(&v471, *(&v473 + 1));
        a4 = *(&v467 + 1);
        v263 = __swift_project_boxed_opaque_existential_1(&v466, *(&v467 + 1));
        v463 = &v403;
        v264 = *(v262 - 8);
        MEMORY[0x1EEE9AC00](v263);
        v6 = &v403 - ((v265 + 15) & 0xFFFFFFFFFFFFFFF0);
        v462 = &v403;
        v267 = MEMORY[0x1EEE9AC00](v266);
        v18 = &v403 - ((v268 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v269 + 16))(v18, v267);
        v270 = type metadata accessor for Optional();
        v271 = *(v270 - 8);
        MEMORY[0x1EEE9AC00](v270);
        v273 = &v403 - v272;
        v274 = swift_dynamicCast();
        v275 = *(v264 + 56);
        if (!v274)
        {
          v275(v273, 1, 1, v262);
          outlined destroy of TermOfAddress?(&v493, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v506, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          (*(v271 + 8))(v273, v270);
          outlined destroy of AttributedString._AttributeValue(&v466);
          outlined destroy of AttributedString._AttributeValue(&v471);
          outlined destroy of TermOfAddress?(&v479, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          a2 = v457;
          goto LABEL_260;
        }

        v275(v273, 0, 1, v262);
        (*(v264 + 32))(v6, v273, v262);
        v276 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v264 + 8))(v6, v262);
        v6 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
        outlined destroy of TermOfAddress?(&v493, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v506, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v466);
        outlined destroy of AttributedString._AttributeValue(&v471);
        outlined destroy of TermOfAddress?(&v479, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        a2 = v457;
        v246 = v454;
        v18 = &v479;
        v250 = v451;
        if ((v276 & 1) == 0)
        {
          goto LABEL_260;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(&v493, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v506, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (*(&v489 + 1))
        {
          goto LABEL_258;
        }

        outlined destroy of TermOfAddress?(&v479, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      v254 = v465 + 1;
      v255 = (v464 + 16);
    }

    while (v455 != v465 + 1);

    v236 = *(a2 + 72);
    v237 = *(a2 + 80);
    v239 = *(a2 + 88);
    v238 = *(a2 + 96);
    v211 = v406;
    v435 = v407;
    v479 = v406;
    v480 = v405;
    v18 = v404;
    v446 = v405;
    v481 = v404;
    v219 = v418 + 1;
    if (!__OFADD__(v418, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_256:
  v434 = v219;
LABEL_262:
  v277 = *(a2 + 72);
  v278 = *(a2 + 80);
  v279 = *(a2 + 88);
  v280 = *(a2 + 96);
  swift_unknownObjectRetain();
  v281 = specialized Rope.subscript.getter(v434, v446, v445, v277, v278, v279, v280);
  a4 = v282;
  swift_unknownObjectRelease();

  if (__OFADD__(v435, v281))
  {
    goto LABEL_390;
  }

  v283 = *(a2 + 40);
  v530 = *(a2 + 24);
  v531 = v283;
  v532 = *(a2 + 56);
  if (__OFSUB__(v435 + v281, v422 >> 11))
  {
    goto LABEL_391;
  }

  swift_unknownObjectRetain();
  v284 = BigString.UTF8View.index(_:offsetBy:)();
  v285 = a2;
  a2 = v286;
  v18 = v287;
  v289 = v288;
  swift_unknownObjectRelease();
  v290 = v284 >> 10;
  v291 = v285[3];
  v293 = v285[5];
  v292 = v285[6];
  v463 = v285[4];
  v464 = v293;
  v465 = v292;
  v6 = v285[7];
  v294 = v285[8];
  if (v284 >> 10 >= v433)
  {
    v460 = v285[7];
    v462 = v294;
    v295 = v444;
    v471 = v444;
    v18 = v441;
    v296 = v442;
    v472 = v441;
    v297 = *(&v442 + 1);
    v473 = v442;
    v298 = v447;
    v6 = v448;
    v474 = v447;
    a2 = v449;
    v475 = v449;
    v476 = v448;
    v477 = v450;
    swift_unknownObjectRetain();
    a4 = v452;
    v299 = specialized Set.contains(_:)(0, 0, v452);
    v459 = v291;
    if (v299)
    {
      v524 = v291;
      v525 = v463;
      v526 = v464;
      v527 = v465;
      v528 = v460;
      v529 = v462;
      BigString.UTF8View.subscript.getter();
      *&v466 = v295;
      *(&v466 + 1) = v18;
      *&v467 = v296;
      *(&v467 + 1) = v297;
      *&v468 = v295;
      *(&v468 + 1) = v18;
      *&v469 = v296;
      *(&v469 + 1) = v297;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v466, &v479);
      outlined destroy of BigSubstring.UTF8View(&v506);
      v300 = v447;
      v301 = v450;
      if (v486 != 2)
      {
        v300 = v483;
        if (v461 > v483 >> 10)
        {
          goto LABEL_404;
        }

        a2 = v484;
        v6 = v485;
        v301 = v486;
      }
    }

    else
    {
      v300 = v298;
      v301 = v450;
    }

    v517 = v444;
    v518 = v441;
    v519 = v442;
    v520 = v300;
    v521 = a2;
    v522 = v6;
    v523 = v301;
    if ((specialized Collection<>._containsScalarConstraint.getter(a4) & 1) == 0)
    {
      swift_unknownObjectRelease();
      v319 = v433;
LABEL_296:
      v325 = v300 >> 10 == v319;
      if (v300 >> 10 == v319)
      {
        v326 = v447;
      }

      else
      {
        v326 = v300;
      }

      if (v325)
      {
        v327 = v449;
      }

      else
      {
        v327 = a2;
      }

      v328 = v448;
      if (!v325)
      {
        v328 = v6;
      }

      v447 = v326;
      v448 = v328;
      v329 = v450;
      if (!v325)
      {
        v329 = v301;
      }

      v449 = v327;
      v450 = v329;
      goto LABEL_346;
    }

    v18 = a4 + 56;
    v302 = 1 << *(a4 + 32);
    v303 = -1;
    if (v302 < 64)
    {
      v303 = ~(-1 << v302);
    }

    a4 = v303 & *(a4 + 56);
    v304 = (v302 + 63) >> 6;

    v305 = 0;
    v306 = MEMORY[0x1E69E7CC0];
    while (a4)
    {
LABEL_285:
      v308 = __clz(__rbit64(a4));
      a4 &= a4 - 1;
      v309 = (*(v452 + 48) + ((v305 << 10) | (16 * v308)));
      v310 = v309[1];
      if (v310 >= 2)
      {
        v311 = specialized Collection.first.getter(*v309, v310);
        if ((v311 & 0x100000000) == 0)
        {
          v458 = v311;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v306 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v306 + 2) + 1, 1, v306);
          }

          v313 = *(v306 + 2);
          v312 = *(v306 + 3);
          v314 = (v313 + 1);
          v315 = v458;
          if (v313 >= v312 >> 1)
          {
            v456 = (v313 + 1);
            v316 = v306;
            v317 = v313;
            v318 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v312 > 1), v313 + 1, 1, v316);
            v314 = v456;
            v313 = v317;
            v306 = v318;
            v315 = v458;
          }

          *(v306 + 2) = v314;
          *&v306[4 * v313 + 32] = v315;
        }
      }
    }

    while (1)
    {
      v307 = v305 + 1;
      if (__OFADD__(v305, 1))
      {
        break;
      }

      if (v307 >= v304)
      {

        a4 = v301;
        v511 = v459;
        v512 = v463;
        v513 = v464;
        v514 = v465;
        v515 = v460;
        v516 = v462;
        BigString.UnicodeScalarView.subscript.getter();
        v320 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v306);
        v465 = v321;
        v323 = v322;
        v18 = v324;

        swift_unknownObjectRelease();
        outlined destroy of BigSubstring.UnicodeScalarView(&v479);
        v319 = v433;
        if (v18 == 2)
        {
          goto LABEL_296;
        }

        if (v461 <= v320 >> 10)
        {
          v300 = v320;
          a2 = v465;
          v6 = v323;
          v301 = v18;
          goto LABEL_296;
        }

        goto LABEL_405;
      }

      a4 = *(v18 + 8 * v307);
      ++v305;
      if (a4)
      {
        v305 = v307;
        goto LABEL_285;
      }
    }

LABEL_371:
    __break(1u);
LABEL_372:
    __break(1u);
LABEL_373:
    __break(1u);
LABEL_374:
    __break(1u);
LABEL_375:
    __break(1u);
    goto LABEL_376;
  }

  a4 = v452;
  if (v290 < v461)
  {
LABEL_398:
    __break(1u);
    goto LABEL_399;
  }

  v471 = v444;
  v472 = v441;
  v473 = v442;
  v474 = v284;
  v475 = a2;
  v476 = v18;
  v477 = v289;
  if (v461 == v290)
  {
LABEL_345:
    v447 = v284;
    v448 = v18;
    v449 = a2;
    v450 = v289;
LABEL_346:
    a2 = v457;
    goto LABEL_347;
  }

  swift_unknownObjectRetain();
  if ((specialized Set.contains(_:)(0, 0, a4) & 1) == 0 || (v524 = v291, v525 = v463, v526 = v464, v527 = v465, v528 = v6, v529 = v294, BigString.UTF8View.subscript.getter(), *&v466 = v444, *(&v466 + 1) = v441, v467 = v442, *&v468 = v444, *(&v468 + 1) = v441, v469 = v442, specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v466, &v479), outlined destroy of BigSubstring.UTF8View(&v506), v486 == 2))
  {
LABEL_328:
    v517 = v444;
    v518 = v441;
    v519 = v442;
    v520 = v284;
    v521 = a2;
    v522 = v18;
    v523 = v289;
    if (specialized Collection<>._containsScalarConstraint.getter(a4))
    {
      v460 = v6;
      v462 = v294;
      v353 = a4 + 56;
      v354 = 1 << *(a4 + 32);
      v355 = -1;
      if (v354 < 64)
      {
        v355 = ~(-1 << v354);
      }

      a4 = v355 & *(a4 + 56);
      v6 = (v354 + 63) >> 6;

      v356 = 0;
      v458 = MEMORY[0x1E69E7CC0];
      while (a4)
      {
LABEL_337:
        v358 = __clz(__rbit64(a4));
        a4 &= a4 - 1;
        v359 = (*(v452 + 48) + ((v356 << 10) | (16 * v358)));
        v360 = v359[1];
        if (v360 >= 2)
        {
          v361 = specialized Collection.first.getter(*v359, v360);
          if ((v361 & 0x100000000) == 0)
          {
            v456 = v361;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v458 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v458 + 2) + 1, 1, v458);
            }

            v363 = *(v458 + 2);
            v362 = *(v458 + 3);
            v364 = v363 + 1;
            v365 = v456;
            if (v363 >= v362 >> 1)
            {
              v454 = *(v458 + 2);
              v455 = v363 + 1;
              v367 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v362 > 1), v363 + 1, 1, v458);
              v363 = v454;
              v364 = v455;
              v458 = v367;
              v365 = v456;
            }

            v366 = v458;
            *(v458 + 2) = v364;
            *&v366[4 * v363 + 32] = v365;
          }
        }
      }

      while (1)
      {
        v357 = v356 + 1;
        if (__OFADD__(v356, 1))
        {
          break;
        }

        if (v357 >= v6)
        {

          v511 = v291;
          v512 = v463;
          v513 = v464;
          v514 = v465;
          v515 = v460;
          v516 = v462;
          BigString.UnicodeScalarView.subscript.getter();
          v398 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v458);
          a4 = v399;
          v465 = v400;
          v6 = v401;

          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(&v479);
          v447 = v284;
          v448 = v18;
          v449 = a2;
          v450 = v289;
          a2 = v457;
          if (v6 == 2)
          {
            goto LABEL_347;
          }

          if (v461 <= v398 >> 10)
          {
            v449 = a4;
            v450 = v6;
            v447 = v398;
            v448 = v465;
            goto LABEL_347;
          }

          goto LABEL_410;
        }

        a4 = *(v353 + 8 * v357);
        ++v356;
        if (a4)
        {
          v356 = v357;
          goto LABEL_337;
        }
      }

LABEL_376:
      __break(1u);
LABEL_377:
      __break(1u);
LABEL_378:
      __break(1u);
LABEL_379:
      __break(1u);
      goto LABEL_380;
    }

    swift_unknownObjectRelease();
    goto LABEL_345;
  }

  v284 = v483;
  if (v461 <= v483 >> 10)
  {
    a2 = v484;
    v18 = v485;
    v289 = v486;
    goto LABEL_328;
  }

LABEL_409:
  __break(1u);
LABEL_410:
  __break(1u);
LABEL_411:
  __break(1u);
LABEL_412:
  __break(1u);
LABEL_413:
  __break(1u);
LABEL_414:
  (*(*(a2 - 8) + 56))(v6, 1, 1, a2);
  (*(v410 + 8))(v6, v411);
  __break(1u);
LABEL_415:
  (*(*(a4 - 8) + 56))(v18, 1, 1, a4);
  result = (*(v412 + 8))(v18, v409);
  __break(1u);
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance AttributedString.Runs.AttributesSlice2<A, B>(uint64_t *a1, unint64_t a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v8[4] = TupleTypeMetadata3;
  v12 = *(TupleTypeMetadata3 - 8);
  v8[5] = v12;
  if (v6)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  v14 = v13;
  v8[6] = v13;
  v15 = AttributedString.Runs.AttributesSlice2.subscript.read(v8, a2, a3);
  v17 = v16;
  v19 = v18;
  v8[7] = v15;
  (*(*(v9 - 8) + 16))(v14);
  (*(*(v10 - 8) + 16))(v14 + *(TupleTypeMetadata3 + 48), v17, v10);
  memmove((v14 + *(TupleTypeMetadata3 + 64)), v19, 0x50uLL);
  return protocol witness for Collection.subscript.read in conformance AttributedString.Runs.AttributesSlice2<A, B>;
}

void protocol witness for Collection.subscript.read in conformance AttributedString.Runs.AttributesSlice2<A, B>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

uint64_t (*AttributedString.Runs.AttributesSlice2.subscript.read(uint64_t *a1, unint64_t a2, uint64_t a3))()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  *a1 = TupleTypeMetadata3;
  v7 = *(TupleTypeMetadata3 - 8);
  a1[1] = v7;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  AttributedString.Runs.AttributesSlice2.subscript.getter(v8, v8 + *(TupleTypeMetadata3 + 48), (v8 + *(TupleTypeMetadata3 + 64)), a2, a3);
  return AttributedString.Runs.AttributesSlice2.subscript.read;
}

void AttributedString.Runs.AttributesSlice1.subscript.read(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t protocol witness for Collection.index(_:offsetBy:) in conformance AttributedString.Runs.AttributesSlice2<A, B>()
{
  swift_getWitnessTable();

  return BidirectionalCollection.index(_:offsetBy:)();
}

uint64_t protocol witness for Collection.index(_:offsetBy:limitedBy:) in conformance AttributedString.Runs.AttributesSlice2<A, B>()
{
  swift_getWitnessTable();

  return BidirectionalCollection.index(_:offsetBy:limitedBy:)();
}

void protocol witness for Collection.distance(from:to:) in conformance AttributedString.Runs.AttributesSlice2<A, B>()
{
  swift_getWitnessTable();

  JUMPOUT(0x1865CAD30);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance AttributedString.Runs.AttributesSlice2<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

Swift::Int AttributedString.Runs.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v10 = *a1;
  v11 = *a2;
  v12 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AttributedString.Runs(v6, v14, type metadata accessor for AttributedString.Runs);
  v51 = v14;
  outlined init with copy of AttributedString.Runs(v14, a5, type metadata accessor for AttributedString.Runs);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_181215ED0;
  v16 = MEMORY[0x1E69E77B0];
  v17 = *(v10 + *MEMORY[0x1E69E77B0] + 8);
  *(v15 + 32) = (*(a3 + 24))(v17, a3);
  *(v15 + 40) = v18;
  v19 = *(v11 + *v16 + 8);
  *(v15 + 48) = (*(a4 + 24))(v19, a4);
  *(v15 + 56) = v20;
  v55 = v17;
  v56 = v19;
  v57 = a3;
  v58 = a4;
  v50 = type metadata accessor for AttributedString.Runs.AttributesSlice2();
  *(a5 + *(v50 + 52)) = v15;
  v21 = *(a3 + 32);
  v52 = a5;
  v53 = &v59;
  v21(v17, a3);
  (*(a4 + 32))(v60, v19, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd);
  v22 = static _SetStorage.allocate(capacity:)();
  v23 = 0;
  v24 = 0;
  v25 = v22 + 56;
  while (1)
  {
    v28 = v23;
    v29 = &v53[2 * v24];
    v30 = *v29;
    v31 = v29[1];
    Hasher.init(_seed:)();
    v54 = v28;
    if (v31 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      if (v31)
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
    v33 = ~(-1 << *(v22 + 32));
    v34 = result & v33;
    v35 = (result & v33) >> 6;
    v36 = *(v25 + 8 * v35);
    v37 = 1 << (result & v33);
    if ((v37 & v36) == 0)
    {
      break;
    }

    while (1)
    {
      v44 = (*(v22 + 48) + 16 * v34);
      v45 = *v44;
      v46 = v44[1];
      if (v46 == 1)
      {
        if (v31 == 1)
        {
          outlined copy of AttributedString.AttributeRunBoundaries?(*v44, 1);
          v26 = v45;
          v27 = 1;
          goto LABEL_3;
        }

LABEL_14:
        outlined copy of AttributedString.AttributeRunBoundaries?(*v44, v44[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v30, v31);
        outlined consume of AttributedString.AttributeRunBoundaries?(v45, v46);
        v42 = v30;
        v43 = v31;
        goto LABEL_15;
      }

      if (v31 == 1)
      {
        goto LABEL_14;
      }

      if (!v46)
      {
        break;
      }

      if (v31)
      {
        if (v45 == v30 && v46 == v31)
        {
          outlined copy of AttributedString.AttributeRunBoundaries?(v30, v31);
          outlined copy of AttributedString.AttributeRunBoundaries?(v30, v31);

          goto LABEL_31;
        }

        v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of AttributedString.AttributeRunBoundaries?(v45, v46);
        outlined copy of AttributedString.AttributeRunBoundaries?(v30, v31);
        outlined copy of AttributedString.AttributeRunBoundaries?(v45, v46);

        if (v48)
        {
          outlined consume of AttributedString.AttributeRunBoundaries?(v30, v31);
          v30 = v45;
          v31 = v46;
LABEL_31:
          v26 = v30;
          v27 = v31;
          goto LABEL_3;
        }
      }

      else
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v44, v44[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v30, 0);
        outlined copy of AttributedString.AttributeRunBoundaries?(v45, v46);
      }

      v42 = v45;
      v43 = v46;
LABEL_15:
      result = outlined consume of AttributedString.AttributeRunBoundaries?(v42, v43);
      v34 = (v34 + 1) & v33;
      v35 = v34 >> 6;
      v36 = *(v25 + 8 * (v34 >> 6));
      v37 = 1 << v34;
      if ((v36 & (1 << v34)) == 0)
      {
        goto LABEL_11;
      }
    }

    outlined copy of AttributedString.AttributeRunBoundaries?(*v44, 0);
    if (v31)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(v30, v31);

      v42 = v45;
      v43 = 0;
      goto LABEL_15;
    }

    swift_bridgeObjectRelease_n();
    v26 = v45;
    v27 = 0;
LABEL_3:
    outlined consume of AttributedString.AttributeRunBoundaries?(v26, v27);
LABEL_4:
    v23 = 1;
    v24 = 1;
    if (v54)
    {
      outlined destroy of AttributedString.Runs(v51, type metadata accessor for AttributedString.Runs);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd);
      result = swift_arrayDestroy();
      *(v52 + *(v50 + 56)) = v22;
      return result;
    }
  }

LABEL_11:
  *(v25 + 8 * v35) = v36 | v37;
  v38 = (*(v22 + 48) + 16 * v34);
  *v38 = v30;
  v38[1] = v31;
  v39 = *(v22 + 16);
  v40 = __OFADD__(v39, 1);
  v41 = v39 + 1;
  if (!v40)
  {
    *(v22 + 16) = v41;
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

void AttributedString.Runs.AttributesSlice3.index(after:)(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v227 - v10;
  *(&v264 + 1) = *&v3[*(a2 + 68)];
  v258 = *(*(&v264 + 1) + 16);
  if (!v258)
  {
    goto LABEL_177;
  }

  v243 = a3;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  v255 = *&v3[*(a2 + 72)];
  v16 = v3;
  v17 = *v3;
  v253 = v12;
  v247 = v15;
  v248 = v13;
  v251 = v14;
  AttributedString.Guts.findRun(at:)(v12, v15, &v290);
  v254 = v291;
  v252 = v292;
  v18 = v293;
  v249 = v290;
  v250 = v294;
  v238 = v296;
  v239 = v295;
  v236 = v297;
  v237 = *(&v296 + 1);
  v19 = *(type metadata accessor for AttributedString.Runs() + 24);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v272 = v16;
  v269 = v20;
  v270 = v19;
  RangeSet.ranges.getter();
  v21 = RangeSet.Ranges.count.getter();
  v22 = *(v9 + 8);
  v267 = v11;
  v268 = v9 + 8;
  v271 = v22;
  (v22)(v11, v8);
  if (v21 < 1)
  {
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v23 = 0;
  v24 = v253 >> 10;
  while (1)
  {
    if (__OFADD__(v23, v21))
    {
      __break(1u);
LABEL_173:
      __break(1u);
      goto LABEL_174;
    }

    v4 = (v23 + v21) / 2;
    v25 = v267;
    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    (v271)(v25, v8);
    if (v24 >= v290 >> 10)
    {
      break;
    }

LABEL_4:
    v21 = v4;
    if (v23 >= v4)
    {
      goto LABEL_170;
    }
  }

  v26 = v294;
  if (v24 >= v294 >> 10)
  {
    v23 = v4 + 1;
    v4 = v21;
    goto LABEL_4;
  }

  v246 = v294 >> 10;
  v244 = v295;
  v245 = v296;
  v27 = v255;
  v28 = *(v255 + 16);
  v257 = v17;
  v240 = v294;
  v241 = v24;
  v231 = v8;
  if (v28 == 1 && (specialized Set.contains(_:)(0, 1, v255) & 1) == 0)
  {
    v31 = v17[3];
    v32 = v17[4];
    v33 = v17[6];
    *(&v264 + 1) = v17[5];
    v265 = v32;
    v34 = v17[8];
    v263 = v17[7];
    *&v264 = v33;
    v262 = v34;
    *&v303 = v253;
    v35 = v247;
    *(&v303 + 1) = v248;
    v36 = v251;
    *&v304 = v251;
    *(&v304 + 1) = v247;
    *&v305 = v26;
    v38 = v244;
    v37 = v245;
    *(&v305 + 1) = v244;
    v306 = v245;
    v39 = *(&v245 + 1);
    v266 = v31;
    swift_unknownObjectRetain();
    v40 = specialized Set.contains(_:)(0, 0, v27);
    v41 = v38;
    v42 = v37;
    v43 = v35;
    v44 = v36;
    v45 = v248;
    if (v40)
    {
      *&v323 = v266;
      *(&v323 + 1) = v265;
      *&v324 = *(&v264 + 1);
      *(&v324 + 1) = v264;
      *&v325 = v263;
      *(&v325 + 1) = v262;
      BigString.UTF8View.subscript.getter();
      v278 = v253;
      v279 = v45;
      v280 = v44;
      v281 = v43;
      v282 = v253;
      v283 = v45;
      v284 = v44;
      v285 = v43;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v278, &v290);
      outlined destroy of BigSubstring.UTF8View(&v308);
      v26 = v240;
      v41 = v244;
      v39 = *(&v245 + 1);
      v42 = v245;
      if (*(&v296 + 1) != 2)
      {
        v26 = v294;
        if (v24 > v294 >> 10)
        {
          goto LABEL_189;
        }

        v41 = v295;
        v39 = *(&v296 + 1);
        v42 = v296;
        v43 = v247;
        v45 = v248;
        v44 = v251;
      }
    }

    *&v273 = v253;
    *(&v273 + 1) = v45;
    *&v274 = v44;
    *(&v274 + 1) = v43;
    *&v275 = v26;
    *(&v275 + 1) = v41;
    v261 = v41;
    *&v276 = v42;
    *(&v276 + 1) = v39;
    v46 = v255;
    if (specialized Collection<>._containsScalarConstraint.getter(v255))
    {
      v47 = v46 + 56;
      v48 = 1 << *(v46 + 32);
      v49 = -1;
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      v50 = v49 & *(v46 + 56);
      v51 = (v48 + 63) >> 6;

      v52 = 0;
      v53 = MEMORY[0x1E69E7CC0];
      while (v50)
      {
LABEL_28:
        v55 = __clz(__rbit64(v50));
        v50 &= v50 - 1;
        v56 = (*(v255 + 48) + ((v52 << 10) | (16 * v55)));
        v57 = v56[1];
        if (v57 >= 2)
        {
          v58 = specialized Collection.first.getter(*v56, v57);
          if ((v58 & 0x100000000) == 0)
          {
            v260 = v58;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v53 + 2) + 1, 1, v53);
            }

            v60 = *(v53 + 2);
            v59 = *(v53 + 3);
            v61 = v60 + 1;
            v62 = v260;
            if (v60 >= v59 >> 1)
            {
              v259 = v60 + 1;
              v63 = v53;
              v64 = v60;
              v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v63);
              v61 = v259;
              v62 = v260;
              v60 = v64;
              v53 = v65;
            }

            *(v53 + 2) = v61;
            *&v53[4 * v60 + 32] = v62;
          }
        }
      }

      while (1)
      {
        v54 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          goto LABEL_175;
        }

        if (v54 >= v51)
        {

          v318 = v266;
          v319 = v265;
          *&v320 = *(&v264 + 1);
          *(&v320 + 1) = v264;
          v321 = v263;
          v322 = v262;
          BigString.UnicodeScalarView.subscript.getter();
          v189 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v53);
          v265 = v190;
          v192 = v191;
          v194 = v193;

          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(&v290);
          if (v194 == 2)
          {
            goto LABEL_140;
          }

          if (v241 <= v189 >> 10)
          {
            v26 = v189;
            v261 = v265;
            v42 = v192;
            v39 = v194;
            goto LABEL_140;
          }

          goto LABEL_190;
        }

        v50 = *(v47 + 8 * v54);
        ++v52;
        if (v50)
        {
          v52 = v54;
          goto LABEL_28;
        }
      }
    }

    swift_unknownObjectRelease();
LABEL_140:
    if (v246 == v26 >> 10)
    {
      v151 = v267;
      RangeSet.ranges.getter();
      v184 = v231;
      v195 = RangeSet.Ranges.count.getter();
      (v271)(v151, v184);
      v186 = v195 - 1;
      v39 = v243;
      if (__OFSUB__(v195, 1))
      {
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
        goto LABEL_191;
      }

LABEL_142:
      v196 = v257;
      if (v4 == v186)
      {
        v197 = v257[2];
        v199 = v244;
        v198 = v245;
        *v39 = v240;
        v39[1] = v199;
        *(v39 + 1) = __PAIR128__(*(&v245 + 1), v198);
      }

      else
      {
        RangeSet.ranges.getter();
        RangeSet.Ranges.subscript.getter();
        (v271)(v151, v184);
        v197 = v196[2];
        v200 = v287;
        *v39 = v286;
        *(v39 + 1) = v200;
      }

      v39[4] = v197;
      return;
    }

    v187 = v257[2];
    v188 = v243;
    v201 = v261;
    *v243 = v26;
    v188[1] = v201;
    v188[2] = v42;
LABEL_147:
    v188[3] = v39;
    v188[4] = v187;
    return;
  }

  v29 = *(v272 + 15);
  if (v18 != v29)
  {
LABEL_37:
    if (v18 >= v29)
    {
LABEL_184:
      __break(1u);
      goto LABEL_185;
    }

    v232 = *(v272 + 15);
    v66 = v17[9];
    v67 = v17[10];
    v68 = v17[11];
    v69 = v17[12];
    v266 = v18;
    swift_unknownObjectRetain();
    v70 = v249;
    v71 = v254;
    v72 = v252;
    specialized Rope.subscript.getter(v249, v254, v252, v66, v67, v68, v69);
    v256 = v73;
    v229 = v74;
    swift_unknownObjectRelease();
    v75 = v70;
    v76 = v17[9];
    v77 = v266 + 1;
    v18 = v72;
    v230 = *(&v264 + 1) + 40;
    v79 = v17[11];
    v78 = v17[12];
    v290 = v75;
    v291 = v71;
    v292 = v72;
LABEL_39:
    if (v75 != v78)
    {
      goto LABEL_178;
    }

    v235 = v77;
    v242 = v78;
    v266 = v79;
    if (v18)
    {
      v80 = *(v18 + 24 * ((v254 >> ((4 * *(v18 + 18) + 8) & 0x3C)) & 0xF) + 24);
      swift_unknownObjectRetain();
    }

    else
    {
      swift_unknownObjectRetain();
      v80 = specialized Rope._Node.subscript.getter(v254, v76);
    }

    if (__OFADD__(v250, v80))
    {
      goto LABEL_179;
    }

    if (v76)
    {
      v81 = ((-15 << ((4 * *(v76 + 18) + 8) & 0x3C)) - 1) & *(v76 + 18) | (*(v76 + 16) << ((4 * *(v76 + 18) + 8) & 0x3C));
    }

    else
    {
      v81 = 0;
    }

    if (v254 >= v81)
    {
      goto LABEL_180;
    }

    v228 = v250 + v80;
    if (v18 && (v82 = (4 * *(v18 + 18) + 8) & 0x3C, v83 = ((v254 >> v82) & 0xF) + 1, v83 < *(v18 + 16)))
    {
      v234 = (v83 << v82) | ((-15 << v82) - 1) & v254;
      swift_unknownObjectRelease();
    }

    else
    {
      if ((specialized Rope._Node.formSuccessor(of:)(&v290, v76) & 1) == 0)
      {
        v84 = v256;
        if (v76)
        {
          v87 = *(v76 + 18);
          v88 = *(v76 + 16);
          swift_unknownObjectRelease();
          v85 = 0;
          v234 = ((-15 << ((4 * v87 + 8) & 0x3C)) - 1) & v87 | (v88 << ((4 * v87 + 8) & 0x3C));
        }

        else
        {
          v234 = 0;
          v85 = 0;
        }

        v86 = v242;
LABEL_58:
        if (v232 >= v235)
        {
          if (v235 == v232)
          {
            v89 = *(v272 + 22);
            if (*(v272 + 26) == 2)
            {
              if (v89 == 2)
              {
                goto LABEL_171;
              }
            }

            else if (v89 != 2 && (*(v272 + 19) ^ *(v272 + 23)) < 1024)
            {
              goto LABEL_171;
            }
          }

          if (v86 != v17[12])
          {
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
            goto LABEL_183;
          }

          v249 = v86;
          v252 = v18;
          v227 = v85;
          if (v85)
          {
            v90 = v85 + 24 * ((v234 >> ((4 * *(v85 + 18) + 8) & 0x3C)) & 0xF);
            v92 = *(v90 + 32);
            v91 = *(v90 + 40);

            v233 = v91;
          }

          else
          {
            v93 = v17[9];
            swift_unknownObjectRetain();
            specialized Rope._Node.subscript.getter(v234, v93);
            v92 = v94;
            v233 = v95;
            swift_unknownObjectRelease();
          }

          v96 = 0;
          v97 = v230;
          v259 = v92;
          while (1)
          {
            if (v96 >= *(*(&v264 + 1) + 16))
            {
              goto LABEL_173;
            }

            v265 = v97;
            v266 = v96;
            v99 = *(v97 - 1);
            v98 = *v97;
            if (*(v84 + 16))
            {

              v100 = specialized __RawDictionaryStorage.find<A>(_:)(v99, v98);
              if (v101)
              {
                outlined init with copy of AttributedString._AttributeValue(*(v84 + 56) + 72 * v100, &v308);
                if (!*(v92 + 16))
                {
                  goto LABEL_82;
                }
              }

              else
              {
                v312 = 0;
                v310 = 0u;
                v311 = 0u;
                v308 = 0u;
                v309 = 0u;
                if (!*(v92 + 16))
                {
LABEL_82:

LABEL_83:
                  v307 = 0;
                  v305 = 0u;
                  v306 = 0u;
                  v303 = 0u;
                  v304 = 0u;
                  goto LABEL_84;
                }
              }
            }

            else
            {
              v312 = 0;
              v310 = 0u;
              v311 = 0u;
              v308 = 0u;
              v309 = 0u;

              if (!*(v92 + 16))
              {
                goto LABEL_82;
              }
            }

            v102 = specialized __RawDictionaryStorage.find<A>(_:)(v99, v98);
            v104 = v103;

            if ((v104 & 1) == 0)
            {
              goto LABEL_83;
            }

            outlined init with copy of AttributedString._AttributeValue(*(v92 + 56) + 72 * v102, &v303);
LABEL_84:
            outlined init with copy of AttributedString._AttributeValue?(&v308, &v290);
            outlined init with copy of AttributedString._AttributeValue?(&v303, &v298);
            if (v293)
            {
              outlined init with copy of AttributedString._AttributeValue?(&v290, &v278);
              if (!*(&v299 + 1))
              {
                outlined destroy of TermOfAddress?(&v303, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                outlined destroy of TermOfAddress?(&v308, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                outlined destroy of AttributedString._AttributeValue(&v278);
LABEL_94:
                outlined destroy of TermOfAddress?(&v290, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_96:

                goto LABEL_97;
              }

              v275 = v300;
              v276 = v301;
              v277 = v302;
              v273 = v298;
              v274 = v299;
              v105 = v281;
              v261 = v282;
              v260 = __swift_project_boxed_opaque_existential_1(&v278, v281);
              v106 = __swift_project_boxed_opaque_existential_1(&v273, *(&v274 + 1));
              *&v264 = &v227;
              v107 = *(v105 - 8);
              MEMORY[0x1EEE9AC00](v106);
              v109 = &v227 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
              v263 = &v227;
              v111 = MEMORY[0x1EEE9AC00](v110);
              (*(v113 + 16))(&v227 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0), v111);
              v114 = type metadata accessor for Optional();
              v262 = &v227;
              v115 = *(v114 - 8);
              MEMORY[0x1EEE9AC00](v114);
              v117 = &v227 - v116;
              v118 = swift_dynamicCast();
              v119 = *(v107 + 56);
              if (!v118)
              {
                v119(v117, 1, 1, v105);
                outlined destroy of TermOfAddress?(&v303, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                outlined destroy of TermOfAddress?(&v308, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                (*(v115 + 8))(v117, v114);
                outlined destroy of AttributedString._AttributeValue(&v273);
                outlined destroy of AttributedString._AttributeValue(&v278);
                outlined destroy of TermOfAddress?(&v290, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                v17 = v257;
                goto LABEL_96;
              }

              v119(v117, 0, 1, v105);
              (*(v107 + 32))(v109, v117, v105);
              v120 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*(v107 + 8))(v109, v105);
              outlined destroy of TermOfAddress?(&v303, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of TermOfAddress?(&v308, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of AttributedString._AttributeValue(&v273);
              outlined destroy of AttributedString._AttributeValue(&v278);
              outlined destroy of TermOfAddress?(&v290, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              v84 = v256;
              v17 = v257;
              if ((v120 & 1) == 0)
              {
                goto LABEL_96;
              }
            }

            else
            {
              outlined destroy of TermOfAddress?(&v303, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of TermOfAddress?(&v308, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              if (*(&v299 + 1))
              {
                goto LABEL_94;
              }

              outlined destroy of TermOfAddress?(&v290, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            }

            v96 = v266 + 1;
            v97 = v265 + 2;
            v92 = v259;
            if (v258 == v266 + 1)
            {

              v76 = v17[9];
              v79 = v17[11];
              v78 = v17[12];
              v250 = v228;
              v75 = v249;
              v290 = v249;
              v291 = v234;
              v18 = v227;
              v254 = v234;
              v292 = v227;
              v77 = v235 + 1;
              if (!__OFADD__(v235, 1))
              {
                goto LABEL_39;
              }

              __break(1u);
              goto LABEL_92;
            }
          }
        }

LABEL_171:

        goto LABEL_98;
      }

      swift_unknownObjectRelease();
      v234 = v291;
    }

    v84 = v256;
    v85 = v292;
    v86 = v290;
    goto LABEL_58;
  }

  v30 = *(v272 + 22);
  if (*(v272 + 26) != 2)
  {
    if (v30 == 2 || (*(v272 + 19) ^ *(v272 + 23)) >= 1024)
    {
      goto LABEL_92;
    }

    goto LABEL_37;
  }

  if (v30 == 2)
  {
    goto LABEL_37;
  }

LABEL_92:
  v242 = v249;
LABEL_97:
  v18 = v252;
LABEL_98:
  v121 = v17[9];
  v122 = v17[10];
  v123 = v17[11];
  v124 = v17[12];
  swift_unknownObjectRetain();
  v125 = specialized Rope.subscript.getter(v242, v254, v18, v121, v122, v123, v124);
  swift_unknownObjectRelease();

  if (__OFADD__(v250, v125))
  {
    goto LABEL_182;
  }

  v126 = *(v17 + 5);
  v323 = *(v17 + 3);
  v324 = v126;
  v325 = *(v17 + 7);
  if (__OFSUB__(v250 + v125, v239 >> 11))
  {
LABEL_183:
    __break(1u);
    goto LABEL_184;
  }

  swift_unknownObjectRetain();
  v127 = BigString.UTF8View.index(_:offsetBy:)();
  v129 = v128;
  v131 = v130;
  v133 = v132;
  swift_unknownObjectRelease();
  v134 = v127 >> 10;
  v135 = v17[3];
  v137 = v17[5];
  v136 = v17[6];
  v263 = v17[4];
  *&v264 = v137;
  *(&v264 + 1) = v136;
  v138 = v17[8];
  v265 = v17[7];
  v266 = v138;
  if (v127 >> 10 >= v246)
  {
    v147 = v253;
    *&v303 = v253;
    v149 = v247;
    v148 = v248;
    *(&v303 + 1) = v248;
    v150 = v251;
    *&v304 = v251;
    *(&v304 + 1) = v247;
    v151 = v240;
    *&v305 = v240;
    v152 = v244;
    v153 = v245;
    *(&v305 + 1) = v244;
    v306 = v245;
    v39 = *(&v245 + 1);
    v262 = v135;
    swift_unknownObjectRetain();
    v154 = specialized Set.contains(_:)(0, 0, v255);
    v155 = v152;
    v156 = v241;
    if (v154)
    {
      v318 = v262;
      v319 = v263;
      v320 = v264;
      v321 = v265;
      v322 = v266;
      BigString.UTF8View.subscript.getter();
      v278 = v147;
      v279 = v148;
      v280 = v251;
      v281 = v149;
      v282 = v147;
      v283 = v148;
      v284 = v251;
      v285 = v149;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v278, &v290);
      v150 = v251;
      outlined destroy of BigSubstring.UTF8View(&v308);
      v151 = v240;
      v155 = v244;
      v39 = *(&v245 + 1);
      v153 = v245;
      if (*(&v296 + 1) != 2)
      {
        v151 = v294;
        if (v156 > v294 >> 10)
        {
          goto LABEL_187;
        }

        v155 = v295;
        v39 = *(&v296 + 1);
        v153 = v296;
        v148 = v248;
        v147 = v253;
      }
    }

    *&v273 = v147;
    *(&v273 + 1) = v148;
    *&v274 = v150;
    *(&v274 + 1) = v149;
    *&v275 = v151;
    *(&v275 + 1) = v155;
    v261 = v155;
    *&v276 = v153;
    *(&v276 + 1) = v39;
    v157 = v255;
    if (specialized Collection<>._containsScalarConstraint.getter(v255))
    {
      v158 = v157 + 56;
      v159 = 1 << *(v157 + 32);
      v160 = -1;
      if (v159 < 64)
      {
        v160 = ~(-1 << v159);
      }

      v161 = v160 & *(v157 + 56);
      v162 = (v159 + 63) >> 6;

      v163 = 0;
      v164 = MEMORY[0x1E69E7CC0];
      while (v161)
      {
LABEL_120:
        v166 = __clz(__rbit64(v161));
        v161 &= v161 - 1;
        v167 = (*(v255 + 48) + ((v163 << 10) | (16 * v166)));
        v168 = v167[1];
        if (v168 >= 2)
        {
          v169 = specialized Collection.first.getter(*v167, v168);
          if ((v169 & 0x100000000) == 0)
          {
            v260 = v169;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v164 + 2) + 1, 1, v164);
            }

            v171 = *(v164 + 2);
            v170 = *(v164 + 3);
            v172 = v171 + 1;
            v173 = v260;
            if (v171 >= v170 >> 1)
            {
              v259 = v171 + 1;
              v174 = v164;
              v175 = v171;
              v176 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v170 > 1), v171 + 1, 1, v174);
              v172 = v259;
              v173 = v260;
              v171 = v175;
              v164 = v176;
            }

            *(v164 + 2) = v172;
            *&v164[4 * v171 + 32] = v173;
          }
        }
      }

      while (1)
      {
        v165 = v163 + 1;
        if (__OFADD__(v163, 1))
        {
          break;
        }

        if (v165 >= v162)
        {

          v313 = v262;
          v314 = v263;
          v315 = v264;
          v316 = v265;
          v317 = v266;
          BigString.UnicodeScalarView.subscript.getter();
          v178 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v164);
          v266 = v179;
          v181 = v180;
          v183 = v182;

          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(&v290);
          v177 = v261;
          if (v183 == 2)
          {
            goto LABEL_131;
          }

          if (v241 <= v178 >> 10)
          {
            v151 = v178;
            v177 = v266;
            v153 = v181;
            v39 = v183;
            goto LABEL_131;
          }

          goto LABEL_188;
        }

        v161 = *(v158 + 8 * v165);
        ++v163;
        if (v161)
        {
          v163 = v165;
          goto LABEL_120;
        }
      }

LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
      goto LABEL_181;
    }

    swift_unknownObjectRelease();
    v177 = v261;
LABEL_131:
    if (v246 == v151 >> 10)
    {
      v151 = v267;
      RangeSet.ranges.getter();
      v184 = v231;
      v185 = RangeSet.Ranges.count.getter();
      (v271)(v151, v184);
      v186 = v185 - 1;
      v39 = v243;
      if (!__OFSUB__(v185, 1))
      {
        goto LABEL_142;
      }

      __break(1u);
    }

    v187 = v257[2];
    v188 = v243;
    *v243 = v151;
    v188[1] = v177;
    v188[2] = v153;
    goto LABEL_147;
  }

  v139 = v241;
  v140 = v255;
  v141 = v251;
  v142 = v248;
  if (v134 < v241)
  {
LABEL_185:
    __break(1u);
    goto LABEL_186;
  }

  *&v303 = v253;
  *(&v303 + 1) = v248;
  *&v304 = v251;
  *(&v304 + 1) = v247;
  *&v305 = v127;
  v143 = v129;
  *(&v305 + 1) = v129;
  *&v306 = v131;
  *(&v306 + 1) = v133;
  if (v241 == v134)
  {
    goto LABEL_169;
  }

  v144 = v135;
  swift_unknownObjectRetain();
  v145 = specialized Set.contains(_:)(0, 0, v140);
  v262 = v144;
  if ((v145 & 1) == 0)
  {
    v146 = v143;
LABEL_149:
    *&v273 = v253;
    *(&v273 + 1) = v142;
    *&v274 = v141;
    *(&v274 + 1) = v247;
    *&v275 = v127;
    *(&v275 + 1) = v146;
    v143 = v146;
    *&v276 = v131;
    *(&v276 + 1) = v133;
    if (specialized Collection<>._containsScalarConstraint.getter(v140))
    {
      v202 = v140 + 56;
      v203 = 1 << *(v140 + 32);
      v204 = -1;
      if (v203 < 64)
      {
        v204 = ~(-1 << v203);
      }

      v205 = v204 & *(v140 + 56);
      v206 = (v203 + 63) >> 6;

      v207 = 0;
      v272 = MEMORY[0x1E69E7CC0];
      while (v205)
      {
LABEL_158:
        v209 = __clz(__rbit64(v205));
        v205 &= v205 - 1;
        v210 = (*(v140 + 48) + ((v207 << 10) | (16 * v209)));
        v211 = v210[1];
        if (v211 >= 2)
        {
          v212 = specialized Collection.first.getter(*v210, v211);
          if ((v212 & 0x100000000) == 0)
          {
            v271 = v212;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v272 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v272 + 2) + 1, 1, v272);
            }

            v213 = v271;
            v215 = *(v272 + 2);
            v214 = *(v272 + 3);
            v216 = v215 + 1;
            if (v215 >= v214 >> 1)
            {
              v270 = v215 + 1;
              v218 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v214 > 1), v215 + 1, 1, v272);
              v216 = v270;
              v213 = v271;
              v272 = v218;
            }

            v217 = v272;
            *(v272 + 2) = v216;
            *&v217[4 * v215 + 32] = v213;
            v140 = v255;
          }
        }
      }

      while (1)
      {
        v208 = v207 + 1;
        if (__OFADD__(v207, 1))
        {
          goto LABEL_176;
        }

        if (v208 >= v206)
        {

          v318 = v262;
          v319 = v263;
          v320 = v264;
          v321 = v265;
          v322 = v266;
          BigString.UnicodeScalarView.subscript.getter();
          v219 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v272);
          v271 = v220;
          v222 = v221;
          v224 = v223;

          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(&v290);
          if (v224 == 2)
          {
            goto LABEL_169;
          }

          if (v241 <= v219 >> 10)
          {
            v127 = v219;
            v143 = v271;
            v131 = v222;
            v133 = v224;
            goto LABEL_169;
          }

          goto LABEL_192;
        }

        v205 = *(v202 + 8 * v208);
        ++v207;
        if (v205)
        {
          v207 = v208;
          goto LABEL_158;
        }
      }
    }

    swift_unknownObjectRelease();
LABEL_169:
    v225 = v257[2];
    v226 = v243;
    *v243 = v127;
    v226[1] = v143;
    v226[2] = v131;
    v226[3] = v133;
    v226[4] = v225;
    return;
  }

  *&v286 = v144;
  *(&v286 + 1) = v263;
  v287 = v264;
  v288 = v265;
  v289 = v266;
  BigString.UTF8View.subscript.getter();
  v278 = v253;
  v279 = v142;
  v280 = v251;
  v281 = v247;
  v282 = v253;
  v283 = v142;
  v284 = v251;
  v285 = v247;
  specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v278, &v290);
  v141 = v251;
  outlined destroy of BigSubstring.UTF8View(&v308);
  v146 = v143;
  if (*(&v296 + 1) == 2)
  {
    goto LABEL_149;
  }

  v127 = v294;
  if (v139 <= v294 >> 10)
  {
    v146 = v295;
    v133 = *(&v296 + 1);
    v131 = v296;
    goto LABEL_149;
  }

LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
}

uint64_t AttributedString.Runs.AttributesSlice3.index(before:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v282 - v10;
  v313 = *(v4 + *(a2 + 68));
  v311 = *(v313 + 16);
  if (!v311)
  {
LABEL_244:
    __break(1u);
    goto LABEL_245;
  }

  v299 = a3;
  v12 = *a1;
  v314 = a1[1];
  v309 = *(v4 + *(a2 + 72));
  v13 = v4[23];
  v14 = v4[26];
  v310 = v12;
  v15 = v12;
  v16 = *(type metadata accessor for AttributedString.Runs() + 24);
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v317 = v16;
  RangeSet.ranges.getter();
  v17 = v11;
  v18 = RangeSet.Ranges.count.getter();
  v19 = v8;
  v20 = v18;
  v22 = *(v9 + 8);
  v21 = (v9 + 8);
  v318 = v19;
  v319 = v22;
  (v22)(v11);
  v25 = v21;
  if (v14 == 2 || (v13 ^ v15) >= 0x400)
  {
    v315 = v21;
    if (v20 >= 1)
    {
      v25 = v4;
      v26 = 0;
      v27 = v15 >> 10;
      while (!__OFADD__(v26, v20))
      {
        v14 = (v26 + v20) / 2;
        RangeSet.ranges.getter();
        v28 = v318;
        v17 = v11;
        RangeSet.Ranges.subscript.getter();
        (v319)(v11, v28);
        v23 = v331;
        if (v27 < v331 >> 10)
        {
          v20 = (v26 + v20) / 2;
          if (v26 >= v14)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v24 = v314;
          if (v27 < v334 >> 10)
          {
            goto LABEL_13;
          }

          v26 = v14 + 1;
          if (v14 + 1 >= v20)
          {
            goto LABEL_12;
          }
        }
      }

LABEL_235:
      __break(1u);
      goto LABEL_236;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    v4 = v25;
    if ((v23 ^ v15) > 0x3FF)
    {
      v304 = v23;
      v297 = v332;
      v30 = v333;
      goto LABEL_17;
    }
  }

  else
  {
    v14 = v20;
  }

  if (v14 < 1)
  {
LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:
    __break(1u);
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
    goto LABEL_250;
  }

  type metadata accessor for AttributedString.Runs();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  RangeSet.ranges.getter();
  v29 = v318;
  RangeSet.Ranges.subscript.getter();
  (v319)(v11, v29);
  v297 = v332;
  v304 = v331;
  v30 = v333;
  v24 = v335;
  v310 = v334;
LABEL_17:
  v314 = v24;
  v31 = v309;
  if (*(v309 + 16) == 1)
  {
    result = specialized Set.contains(_:)(0, 1, v309);
    if ((result & 1) == 0)
    {
      v62 = *v4;
      v63 = *(*v4 + 24);
      v64 = *(*v4 + 56);
      v365 = *(*v4 + 40);
      v366 = v64;
      v364 = v63;
      v65 = v310 >> 10;
      v66 = v304;
      if (v310 >> 10 < v304 >> 10)
      {
LABEL_255:
        __break(1u);
        goto LABEL_256;
      }

      v67 = v62[3];
      v68 = v62[4];
      v69 = v62[5];
      v70 = v62[6];
      v71 = v62[7];
      v72 = v62[8];
      *&v341[1] = v297;
      v341[0] = v304;
      v341[3] = v30;
      v73 = v297;
      v342 = v310;
      v343 = v314;
      v74 = *(&v297 + 1);
      if (v304 >> 10 == v65)
      {
        goto LABEL_225;
      }

      v316 = v72;
      v317 = v71;
      v318 = v70;
      v319 = v69;
      v75 = *(v62 + 5);
      v354 = *(v62 + 3);
      v355 = v75;
      v308 = v62;
      v356 = v62[7];
      outlined init with copy of Rope<BigString._Chunk>._Node?(&v354, &v331);
      if ((specialized Set.contains(_:)(0, 0, v31) & 1) != 0 && v65 > BigString.startIndex.getter() >> 10)
      {
        v315 = v67;
        *&v361 = v67;
        *(&v361 + 1) = v68;
        v313 = v68;
        *&v362 = v319;
        *(&v362 + 1) = v318;
        *&v363 = v317;
        *(&v363 + 1) = v316;
        v76 = BigString.UTF8View.index(before:)();
        v78 = v77;
        v80 = v79;
        v82 = v81;
        result = BigString.UTF8View.subscript.getter();
        if (v65 < v76 >> 10)
        {
LABEL_261:
          __break(1u);
          goto LABEL_262;
        }

        v325 = v76;
        v326 = v78;
        v327 = v80;
        v328 = v82;
        v329 = v310;
        v330 = v314;
        specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v325, &v331);
        result = outlined destroy of BigSubstring.UTF8View(&v345);
        v83 = v304;
        v31 = v309;
        v84 = v314;
        v67 = v315;
        v68 = v313;
        if (v333 != 2)
        {
          v83 = v331;
          if (v65 < v331 >> 10)
          {
            goto LABEL_265;
          }

          v74 = *(&v332 + 1);
          v73 = v332;
          v30 = v333;
        }
      }

      else
      {
        v83 = v304;
        v84 = v314;
      }

      v304 = v83;
      *&v320 = v83;
      *(&v320 + 1) = v73;
      *&v321 = v74;
      *(&v321 + 1) = v30;
      v322 = v310;
      v323 = v84;
      if (specialized Collection<>._containsScalarConstraint.getter(v31))
      {
        v313 = v68;
        v315 = v67;
        v85 = v31;
        v88 = *(v31 + 56);
        v87 = v31 + 56;
        v86 = v88;
        v89 = 1 << *(v85 + 32);
        v90 = -1;
        if (v89 < 64)
        {
          v90 = ~(-1 << v89);
        }

        v91 = v90 & v86;
        v92 = (v89 + 63) >> 6;

        v93 = 0;
        v94 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v91)
          {
            goto LABEL_62;
          }

          do
          {
            v95 = v93 + 1;
            if (__OFADD__(v93, 1))
            {
              goto LABEL_243;
            }

            if (v95 >= v92)
            {

              *&v358 = v315;
              *(&v358 + 1) = v313;
              *&v359 = v319;
              *(&v359 + 1) = v318;
              *&v360 = v317;
              *(&v360 + 1) = v316;
              BigString.UnicodeScalarView.subscript.getter();
              v66 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(v94);
              v272 = v279;
              v274 = v280;
              v276 = v281;
              outlined destroy of BigString(&v364);

              result = outlined destroy of BigSubstring.UnicodeScalarView(&v331);
              if (v276 != 2)
              {
                v62 = v308;
                if (v65 >= v66 >> 10)
                {
LABEL_228:
                  v73 = v272;
                  v74 = v274;
                  v30 = v276;
                  goto LABEL_225;
                }

LABEL_262:
                __break(1u);
                goto LABEL_263;
              }

LABEL_224:
              v62 = v308;
              v66 = v304;
LABEL_225:
              v277 = v62[2];
              v278 = v299;
              *v299 = v66;
              v278[1] = v73;
              v278[2] = v74;
              v278[3] = v30;
              v278[4] = v277;
              return result;
            }

            v91 = *(v87 + 8 * v95);
            ++v93;
          }

          while (!v91);
          v93 = v95;
LABEL_62:
          v96 = __clz(__rbit64(v91));
          v91 &= v91 - 1;
          v97 = (*(v309 + 48) + ((v93 << 10) | (16 * v96)));
          v98 = v97[1];
          if (v98 >= 2)
          {
            v99 = specialized Collection.first.getter(*v97, v98);
            if ((v99 & 0x100000000) == 0)
            {
              *&v314 = v99;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v94 + 2) + 1, 1, v94);
              }

              v101 = *(v94 + 2);
              v100 = *(v94 + 3);
              v102 = (v101 + 1);
              v103 = v314;
              if (v101 >= v100 >> 1)
              {
                v312 = (v101 + 1);
                v104 = v94;
                v105 = v101;
                v106 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1, v104);
                v102 = v312;
                v101 = v105;
                v94 = v106;
                v103 = v314;
              }

              *(v94 + 2) = v102;
              *&v94[4 * v101 + 32] = v103;
            }
          }
        }
      }

LABEL_222:
      v265 = &v364;
      goto LABEL_223;
    }
  }

  v298 = v30;
  v33 = *v4;
  v34 = *(*v4 + 24);
  v295 = (*v4 + 24);
  v35 = *(v33 + 40);
  v364 = v34;
  v365 = v35;
  v366 = *(v33 + 56);
  swift_unknownObjectRetain();
  v285 = *(&v310 + 1);
  v296 = v310;
  v286 = v314;
  v36 = BigString.UTF8View.index(before:)();
  v38 = v37;
  v40 = v39;
  v293 = v41;
  swift_unknownObjectRelease();
  v42 = *(v33 + 72);
  v43 = *(v33 + 88);
  if (v42)
  {
    v44 = *(v33 + 88);
  }

  else
  {
    v44 = 0;
  }

  v301 = v36 >> 11;
  if (v44 < (v36 >> 11))
  {
    goto LABEL_246;
  }

  v290 = v40;
  v291 = v38;
  v45 = *(v33 + 80);
  v307 = *(v33 + 96);
  v308 = v33;
  v292 = v36;
  if (v42)
  {
    if (v301 < v43)
    {
      v17 = (v42 + 16);
      LODWORD(v46) = *(v42 + 16);
      if (*(v42 + 16))
      {
        v319 = v4;
        v47 = *(v42 + 18);
        swift_unknownObjectRetain_n();
        if (!v47)
        {
          v49 = 0;
          v48 = v301;
          v53 = v42;
          v4 = v319;
          goto LABEL_70;
        }

        v318 = v45;
        v48 = v301;
        v49 = v47;
        v50 = v42;
        while (1)
        {
          v51 = *v17;
          if (*v17)
          {
            break;
          }

          v57 = v48;
LABEL_38:
          if (v57)
          {
            goto LABEL_242;
          }

          v48 = 0;
LABEL_29:
          v49 = (v51 << ((4 * v47 + 8) & 0x3C)) | ((-15 << ((4 * v47 + 8) & 0x3C)) - 1) & v49;
          v52 = *(v50 + 24 + 24 * v51);
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          v53 = v52;
          v17 = (v52 + 16);
          LOBYTE(v47) = *(v53 + 18);
          v50 = v53;
          if (!v47)
          {
            LODWORD(v46) = *v17;
            if (*v17)
            {
              v45 = v318;
              v4 = v319;
LABEL_70:
              v107 = 0;
              v108 = 24;
              v61 = v48;
              v46 = v46;
              while (1)
              {
                v109 = *(v53 + v108);
                v110 = v61 - v109;
                if (__OFSUB__(v61, v109))
                {
                  goto LABEL_240;
                }

                if (__OFADD__(v110, 1))
                {
                  goto LABEL_241;
                }

                if (v110 + 1 < 1)
                {
                  break;
                }

                ++v107;
                v108 += 24;
                v61 -= v109;
                if (v46 == v107)
                {
                  if (!v110)
                  {
                    goto LABEL_76;
                  }

LABEL_232:
                  __break(1u);
LABEL_233:
                  __break(1u);
                  goto LABEL_234;
                }
              }

              v46 = v107;
            }

            else
            {
              v46 = 0;
              v45 = v318;
              v4 = v319;
              if (v48)
              {
                goto LABEL_232;
              }

LABEL_76:
              v61 = 0;
            }

            v111 = v53;
            swift_unknownObjectRelease();
            v60 = v111;
            v59 = v49 & 0xFFFFFFFFFFFFF0FFLL | (v46 << 8);
            v303 = v111;
LABEL_41:
            v302 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v307, v59, v60, v42, v45);
            swift_unknownObjectRelease();
            goto LABEL_80;
          }
        }

        v54 = 0;
        v55 = (v50 + 40);
        while (1)
        {
          v56 = *v55;
          v55 += 3;
          v57 = v48 - v56;
          if (__OFSUB__(v48, v56))
          {
            goto LABEL_233;
          }

          if (__OFADD__(v57, 1))
          {
            break;
          }

          if (v57 + 1 < 1)
          {
            v51 = v54;
            goto LABEL_29;
          }

          ++v54;
          v48 = v57;
          if (v51 == v54)
          {
            goto LABEL_38;
          }
        }

LABEL_234:
        __break(1u);
        goto LABEL_235;
      }
    }
  }

  v58 = swift_unknownObjectRetain();
  v59 = specialized Rope._endPath.getter(v58);
  v60 = 0;
  v61 = 0;
  v303 = 0;
  if (v42)
  {
    goto LABEL_41;
  }

  v302 = 0;
LABEL_80:
  v112 = (v301 - v61);
  if (__OFSUB__(v301, v61))
  {
    goto LABEL_247;
  }

  v113 = v308[9];
  v114 = v308[10];
  v115 = v308[11];
  v116 = v308[12];
  swift_unknownObjectRetain();
  v300 = v59;
  specialized Rope.subscript.getter(v307, v59, v303, v113, v114, v115, v116);
  v117 = v4;
  v119 = v118;
  v121 = v120;
  result = swift_unknownObjectRelease();
  v122 = v117[1];
  if (v122 >= v302)
  {

    goto LABEL_162;
  }

  v287 = v121;
  v288 = (v313 + 40);
  v305 = v119;
  v283 = v122;
  while (2)
  {
    v123 = v308[9];
    v124 = v308[12];
    v331 = v307;
    *&v332 = v300;
    v125 = v303;
    *(&v332 + 1) = v303;
    if (v307 != v124)
    {
      goto LABEL_248;
    }

    if (v123)
    {
      v126 = *(v123 + 18);
      result = swift_unknownObjectRetain();
      v125 = v303;
    }

    else
    {
      v126 = 0;
    }

    if (v126 >= v300)
    {
      goto LABEL_249;
    }

    v294 = v112;
    if (v125)
    {
      v127 = (4 * *(v125 + 18) + 8) & 0x3C;
      if (((v300 >> v127) & 0xF) != 0)
      {
        v128 = ((((v300 >> v127) & 0xF) - 1) << v127) | ((-15 << v127) - 1) & v300;
        *&v332 = v128;
LABEL_116:
        v148 = (v128 >> ((4 * *(v125 + 18) + 8) & 0x3C)) & 0xF;
        v303 = v125;
        v142 = *(v125 + 24 * v148 + 24);

        swift_unknownObjectRelease();
        v143 = 0;
        goto LABEL_117;
      }
    }

    v129 = (4 * *(v123 + 18) + 8) & 0x3C;
    v130 = (v300 >> v129) & 0xF;
    if (*(v123 + 18))
    {
      if (v130 >= *(v123 + 16))
      {
        swift_unknownObjectRetain();
        if (!v130)
        {
          goto LABEL_256;
        }

LABEL_113:
        *&v332 = v332 & ((-15 << v129) - 1) | ((v130 - 1) << v129);
        v146 = *(v123 + 24 * v130);
        swift_unknownObjectRetain();
        v147 = specialized Rope._Node.descendToLastItem(under:)(&v332, v146);
        swift_unknownObjectRelease();
        v125 = v147;
        *(&v332 + 1) = v147;
        goto LABEL_114;
      }

      v125 = *(v123 + 24 * ((v300 >> v129) & 0xF) + 24);
      v131 = (4 * *(v125 + 18) + 8) & 0x3C;
      v132 = (v300 >> v131) & 0xF;
      if (!*(v125 + 18))
      {
        if (v132)
        {
          *&v332 = ((v132 - 1) << v131) | v300 & 0xFFFFFFFFFFFFF0FFLL;
          *(&v332 + 1) = v125;
          swift_unknownObjectRetain();
          goto LABEL_114;
        }

        swift_unknownObjectRetain();
LABEL_112:
        if (!v130)
        {
LABEL_256:
          result = swift_unknownObjectRelease();
          __break(1u);
          goto LABEL_257;
        }

        goto LABEL_113;
      }

      v133 = *(v125 + 16);
      v319 = *(v123 + 24 * ((v300 >> v129) & 0xF) + 24);
      if (v132 >= v133)
      {
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
LABEL_108:
        if (v132)
        {
          *&v332 = v332 & ((-15 << v131) - 1) | ((v132 - 1) << v131);
          v144 = *(v125 + 24 * v132);
          swift_unknownObjectRetain();
          v145 = specialized Rope._Node.descendToLastItem(under:)(&v332, v144);
          swift_unknownObjectRelease();
          v125 = v145;
          *(&v332 + 1) = v145;
          swift_unknownObjectRelease();
          goto LABEL_114;
        }

        swift_unknownObjectRelease();
        goto LABEL_112;
      }

      v125 = *(v125 + 24 * ((v300 >> v131) & 0xF) + 24);
      v134 = ((4 * *(v125 + 18) + 8) & 0x3C);
      v135 = (v300 >> v134) & 0xF;
      if (!*(v125 + 18))
      {
        if (v135)
        {
          *&v332 = ((v135 - 1) << v134) | v300 & 0xFFFFFFFFFFFFF0FFLL;
          *(&v332 + 1) = v125;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
LABEL_154:
          v119 = v305;
          goto LABEL_155;
        }

        swift_unknownObjectRetain();
        v125 = v319;
        swift_unknownObjectRetain();
        v119 = v305;
        goto LABEL_108;
      }

      v136 = *(v125 + 16);
      v318 = v125;
      if (v135 < v136)
      {
        v137 = *(v125 + 24 * ((v300 >> v134) & 0xF) + 24);
        v138 = *(v137 + 18);
        v139 = (4 * v138 + 8) & 0x3C;
        v140 = (v300 >> v139) & 0xF;
        *&v345 = v140;
        if (v138)
        {
          v317 = v134;
          v141 = v137;
          LODWORD(v316) = v138;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          LODWORD(v316) = specialized closure #1 in Rope._Node.formPredecessor(of:)((v141 + 16), v141 + 24, &v345, &v331, v316);
          swift_unknownObjectRelease();
          if (v316)
          {
            v125 = *(&v332 + 1);
LABEL_153:
            swift_unknownObjectRelease();
            goto LABEL_154;
          }

          goto LABEL_147;
        }

        if (v140)
        {
          *&v332 = ((v140 - 1) << v139) | v300 & 0xFFFFFFFFFFFFF0FFLL;
          *(&v332 + 1) = v137;
          v125 = v137;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          goto LABEL_153;
        }
      }

      v317 = v134;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
LABEL_147:
      if (v135)
      {
        *&v332 = v332 & ((-15 << v317) - 1) | ((v135 - 1) << v317);
        v180 = v318[3 * v135];
        swift_unknownObjectRetain();
        v181 = specialized Rope._Node.descendToLastItem(under:)(&v332, v180);
        swift_unknownObjectRelease();
        v125 = v181;
        *(&v332 + 1) = v181;
        swift_unknownObjectRelease();
        v119 = v305;
LABEL_155:
        swift_unknownObjectRelease();
LABEL_114:
        swift_unknownObjectRelease();
        if (v331 != v307)
        {
LABEL_250:
          __break(1u);
          goto LABEL_251;
        }

        v128 = v332;
        if (v125)
        {
          goto LABEL_116;
        }

        goto LABEL_102;
      }

      swift_unknownObjectRelease();
      v119 = v305;
      v125 = v319;
      goto LABEL_108;
    }

    if (!v130)
    {
LABEL_257:
      __break(1u);
      goto LABEL_258;
    }

    v128 = ((v130 - 1) << v129) | v300 & 0xFFFFFFFFFFFFF0FFLL;
    *&v332 = v128;
    *(&v332 + 1) = v123;
    v125 = v123;
    if (v123)
    {
      goto LABEL_116;
    }

LABEL_102:
    v142 = specialized Rope._Node.subscript.getter(v128, v123);
    swift_unknownObjectRelease();
    v303 = 0;
    v143 = 1;
LABEL_117:

    if (__OFSUB__(v294, v142))
    {
LABEL_251:
      __break(1u);
      goto LABEL_252;
    }

    if (v307 != v308[12])
    {
LABEL_252:
      __break(1u);
      goto LABEL_253;
    }

    v284 = (v294 - v142);
    v300 = v128;
    if (v143)
    {
      v149 = v308[9];
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v128, v149);
      v151 = v150;
      v289 = v152;
      swift_unknownObjectRelease();
    }

    else
    {
      v153 = v303 + 24 * ((v128 >> ((4 * *(v303 + 18) + 8) & 0x3C)) & 0xF);
      v151 = *(v153 + 32);
      v154 = *(v153 + 40);

      v289 = v154;
    }

    v155 = 0;
    --v302;
    v156 = v288;
    v306 = v151;
    do
    {
      if (v155 >= *(v313 + 16))
      {
        __break(1u);
        goto LABEL_238;
      }

      v158 = *(v156 - 1);
      v157 = *v156;
      v319 = v156;
      if (*(v119 + 16))
      {

        v159 = specialized __RawDictionaryStorage.find<A>(_:)(v158, v157);
        if (v160)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v119 + 56) + 72 * v159, &v345);
          if (!*(v151 + 16))
          {
            goto LABEL_133;
          }
        }

        else
        {
          v349 = 0;
          v347 = 0u;
          v348 = 0u;
          v345 = 0u;
          v346 = 0u;
          if (!*(v151 + 16))
          {
LABEL_133:

            goto LABEL_134;
          }
        }
      }

      else
      {
        v349 = 0;
        v347 = 0u;
        v348 = 0u;
        v345 = 0u;
        v346 = 0u;

        if (!*(v151 + 16))
        {
          goto LABEL_133;
        }
      }

      v161 = specialized __RawDictionaryStorage.find<A>(_:)(v158, v157);
      v163 = v162;

      if (v163)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v151 + 56) + 72 * v161, v341);
        goto LABEL_135;
      }

LABEL_134:
      v344 = 0;
      v342 = 0u;
      v343 = 0u;
      memset(v341, 0, sizeof(v341));
LABEL_135:
      outlined init with copy of AttributedString._AttributeValue?(&v345, &v331);
      outlined init with copy of AttributedString._AttributeValue?(v341, &v336);
      if (v333)
      {
        outlined init with copy of AttributedString._AttributeValue?(&v331, &v325);
        if (!*(&v337 + 1))
        {
          outlined destroy of TermOfAddress?(v341, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v345, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of AttributedString._AttributeValue(&v325);
LABEL_159:
          outlined destroy of TermOfAddress?(&v331, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_161:

          v112 = v294;
          goto LABEL_162;
        }

        v322 = v338;
        v323 = v339;
        v324 = v340;
        v320 = v336;
        v321 = v337;
        v164 = v328;
        v315 = v329;
        v316 = v155;
        v312 = __swift_project_boxed_opaque_existential_1(&v325, v328);
        v165 = __swift_project_boxed_opaque_existential_1(&v320, *(&v321 + 1));
        v318 = &v282;
        v166 = *(v164 - 8);
        MEMORY[0x1EEE9AC00](v165);
        v168 = &v282 - ((v167 + 15) & 0xFFFFFFFFFFFFFFF0);
        v317 = &v282;
        v170 = MEMORY[0x1EEE9AC00](v169);
        (*(v172 + 16))(&v282 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0), v170);
        v173 = type metadata accessor for Optional();
        v174 = *(v173 - 8);
        MEMORY[0x1EEE9AC00](v173);
        v176 = &v282 - v175;
        v177 = swift_dynamicCast();
        v178 = *(v166 + 56);
        if (!v177)
        {
          v178(v176, 1, 1, v164);
          outlined destroy of TermOfAddress?(v341, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v345, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          (*(v174 + 8))(v176, v173);
          outlined destroy of AttributedString._AttributeValue(&v320);
          outlined destroy of AttributedString._AttributeValue(&v325);
          outlined destroy of TermOfAddress?(&v331, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          goto LABEL_161;
        }

        v178(v176, 0, 1, v164);
        (*(v166 + 32))(v168, v176, v164);
        v179 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v166 + 8))(v168, v164);
        outlined destroy of TermOfAddress?(v341, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v345, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v320);
        outlined destroy of AttributedString._AttributeValue(&v325);
        outlined destroy of TermOfAddress?(&v331, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v119 = v305;
        v151 = v306;
        v155 = v316;
        if ((v179 & 1) == 0)
        {
          goto LABEL_161;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(v341, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v345, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (*(&v337 + 1))
        {
          goto LABEL_159;
        }

        outlined destroy of TermOfAddress?(&v331, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      ++v155;
      v156 = v319 + 2;
    }

    while (v311 != v155);

    v17 = v284;
    v112 = v284;
    result = v287;
    if (v283 < v302)
    {
      continue;
    }

    break;
  }

LABEL_236:

  v112 = v17;
LABEL_162:
  v66 = v304;
  v62 = v308;
  if (v112 >= (v304 >> 11))
  {
    v192 = *(v308 + 5);
    v361 = *(v308 + 3);
    v362 = v192;
    v363 = *(v308 + 7);
    v193 = v308;
    swift_unknownObjectRetain();
    v66 = BigString.UTF8View.index(_:offsetBy:)();
    v73 = v194;
    v74 = v195;
    v30 = v196;
    result = swift_unknownObjectRelease();
    v197 = *v295;
    v198 = v295[2];
    v359 = v295[1];
    v360 = v198;
    v358 = v197;
    v199 = v296 >> 10;
    if (v296 >> 10 < v66 >> 10)
    {
LABEL_254:
      __break(1u);
      goto LABEL_255;
    }

    v201 = v193[3];
    v200 = v193[4];
    v202 = v193[5];
    v203 = v193[6];
    v204 = v193[7];
    v205 = v193[8];
    v341[0] = v66;
    v341[1] = v73;
    v341[2] = v74;
    v341[3] = v30;
    v342 = v310;
    v343 = v314;
    if (v66 >> 10 == v199)
    {
      v62 = v193;
      goto LABEL_225;
    }

    v315 = v205;
    v316 = v204;
    v317 = v203;
    v318 = v202;
    v319 = v200;
    v216 = v30;
    v217 = v66;
    v218 = v295[1];
    v367[0] = *v295;
    v367[1] = v218;
    v368 = *(v295 + 4);
    outlined init with copy of Rope<BigString._Chunk>._Node?(v367, &v331);
    v219 = v309;
    if ((specialized Set.contains(_:)(0, 0, v309) & 1) != 0 && v199 > BigString.startIndex.getter() >> 10)
    {
      v313 = v201;
      *&v354 = v201;
      *(&v354 + 1) = v319;
      *&v355 = v318;
      *(&v355 + 1) = v317;
      v356 = v316;
      v357 = v315;
      v220 = BigString.UTF8View.index(before:)();
      v222 = v221;
      v312 = v223;
      v225 = v224;
      result = BigString.UTF8View.subscript.getter();
      if (v199 < v220 >> 10)
      {
        goto LABEL_259;
      }

      v325 = v220;
      v326 = v222;
      v327 = v312;
      v328 = v225;
      v329 = v310;
      v330 = v314;
      specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v325, &v331);
      result = outlined destroy of BigSubstring.UTF8View(&v345);
      v226 = v314;
      v219 = v309;
      v201 = v313;
      if (v333 != 2)
      {
        v217 = v331;
        if (v199 < v331 >> 10)
        {
          goto LABEL_264;
        }

        v74 = *(&v332 + 1);
        v73 = v332;
        v216 = v333;
      }
    }

    else
    {
      v226 = v314;
    }

    v304 = v217;
    *&v320 = v217;
    *(&v320 + 1) = v73;
    *&v321 = v74;
    *(&v321 + 1) = v216;
    v30 = v216;
    v322 = v310;
    v323 = v226;
    if (specialized Collection<>._containsScalarConstraint.getter(v219))
    {
      v313 = v201;
      v246 = v219 + 56;
      v247 = 1 << *(v219 + 32);
      v248 = -1;
      if (v247 < 64)
      {
        v248 = ~(-1 << v247);
      }

      v249 = v248 & *(v219 + 56);
      v250 = (v247 + 63) >> 6;

      v251 = 0;
      v252 = MEMORY[0x1E69E7CC0];
      while (v249)
      {
LABEL_208:
        v254 = __clz(__rbit64(v249));
        v249 &= v249 - 1;
        v255 = (*(v309 + 48) + ((v251 << 10) | (16 * v254)));
        v256 = v255[1];
        if (v256 >= 2)
        {
          v257 = specialized Collection.first.getter(*v255, v256);
          if ((v257 & 0x100000000) == 0)
          {
            *&v314 = v257;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v252 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v252 + 2) + 1, 1, v252);
            }

            v259 = *(v252 + 2);
            v258 = *(v252 + 3);
            v260 = (v259 + 1);
            v261 = v314;
            if (v259 >= v258 >> 1)
            {
              v312 = (v259 + 1);
              v262 = v252;
              v263 = v259;
              v264 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v258 > 1), v259 + 1, 1, v262);
              v260 = v312;
              v259 = v263;
              v252 = v264;
              v261 = v314;
            }

            *(v252 + 2) = v260;
            *&v252[4 * v259 + 32] = v261;
          }
        }
      }

      while (1)
      {
        v253 = v251 + 1;
        if (__OFADD__(v251, 1))
        {
          goto LABEL_239;
        }

        if (v253 >= v250)
        {

          *&v350 = v313;
          *(&v350 + 1) = v319;
          *&v351 = v318;
          *(&v351 + 1) = v317;
          v352 = v316;
          v353 = v315;
          BigString.UnicodeScalarView.subscript.getter();
          v66 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(v252);
          v272 = v271;
          v274 = v273;
          v276 = v275;
          outlined destroy of BigString(&v358);

          result = outlined destroy of BigSubstring.UnicodeScalarView(&v331);
          if (v276 == 2)
          {
            goto LABEL_224;
          }

          v62 = v308;
          if (v199 < v66 >> 10)
          {
            __break(1u);
            goto LABEL_222;
          }

          goto LABEL_228;
        }

        v249 = *(v246 + 8 * v253);
        ++v251;
        if (v249)
        {
          v251 = v253;
          goto LABEL_208;
        }
      }
    }

    v265 = &v358;
LABEL_223:
    result = outlined destroy of BigString(v265);
    goto LABEL_224;
  }

  v182 = *v295;
  v183 = v295[2];
  v362 = v295[1];
  v363 = v183;
  v361 = v182;
  v184 = v296 >> 10;
  v185 = v309;
  if (v296 >> 10 < v304 >> 10)
  {
LABEL_253:
    __break(1u);
    goto LABEL_254;
  }

  v186 = v308[3];
  v187 = v308[4];
  v188 = v308[5];
  v189 = v308[6];
  v190 = v308[7];
  v191 = v308[8];
  *&v341[1] = v297;
  v341[0] = v304;
  v341[3] = v298;
  v73 = v297;
  v342 = v310;
  v343 = v314;
  v74 = *(&v297 + 1);
  if (v304 >> 10 == v184)
  {
    v30 = v298;
    goto LABEL_225;
  }

  v318 = v191;
  v319 = v190;
  v206 = v295[1];
  v350 = *v295;
  v351 = v206;
  v352 = *(v295 + 4);
  outlined init with copy of Rope<BigString._Chunk>._Node?(&v350, &v331);
  if ((specialized Set.contains(_:)(0, 0, v185) & 1) == 0 || v184 <= BigString.startIndex.getter() >> 10)
  {
    v215 = v304;
    v214 = v314;
LABEL_182:
    v304 = v215;
    *&v320 = v215;
    *(&v320 + 1) = v73;
    *&v321 = v74;
    *(&v321 + 1) = v298;
    v322 = v310;
    v323 = v214;
    if (specialized Collection<>._containsScalarConstraint.getter(v185))
    {
      v315 = v189;
      v316 = v188;
      v317 = v187;
      v227 = v185 + 56;
      v228 = 1 << *(v185 + 32);
      v229 = -1;
      if (v228 < 64)
      {
        v229 = ~(-1 << v228);
      }

      v230 = v229 & *(v185 + 56);
      v231 = (v228 + 63) >> 6;

      v232 = 0;
      v233 = MEMORY[0x1E69E7CC0];
      while (v230)
      {
LABEL_191:
        v235 = __clz(__rbit64(v230));
        v230 &= v230 - 1;
        v236 = (*(v309 + 48) + ((v232 << 10) | (16 * v235)));
        v237 = v236[1];
        if (v237 >= 2)
        {
          v238 = specialized Collection.first.getter(*v236, v237);
          if ((v238 & 0x100000000) == 0)
          {
            *&v314 = v238;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v233 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v233 + 2) + 1, 1, v233);
            }

            v240 = *(v233 + 2);
            v239 = *(v233 + 3);
            v241 = v240 + 1;
            v242 = v314;
            if (v240 >= v239 >> 1)
            {
              v313 = v240 + 1;
              v243 = v233;
              v244 = v240;
              v245 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v239 > 1), v240 + 1, 1, v243);
              v241 = v313;
              v242 = v314;
              v240 = v244;
              v233 = v245;
            }

            *(v233 + 2) = v241;
            *&v233[4 * v240 + 32] = v242;
          }
        }
      }

      while (1)
      {
        v234 = v232 + 1;
        if (__OFADD__(v232, 1))
        {
          break;
        }

        if (v234 >= v231)
        {

          *&v354 = v186;
          *(&v354 + 1) = v317;
          *&v355 = v316;
          *(&v355 + 1) = v315;
          v356 = v319;
          v357 = v318;
          BigString.UnicodeScalarView.subscript.getter();
          v66 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(v233);
          v267 = v266;
          v269 = v268;
          v30 = v270;
          outlined destroy of BigString(&v361);

          result = outlined destroy of BigSubstring.UnicodeScalarView(&v331);
          if (v30 == 2)
          {
            v62 = v308;
            v66 = v304;
            v30 = v298;
            goto LABEL_225;
          }

          v62 = v308;
          if (v184 >= v66 >> 10)
          {
            v73 = v267;
            v74 = v269;
            goto LABEL_225;
          }

          goto LABEL_260;
        }

        v230 = *(v227 + 8 * v234);
        ++v232;
        if (v230)
        {
          v232 = v234;
          goto LABEL_191;
        }
      }

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
LABEL_243:
      __break(1u);
      goto LABEL_244;
    }

    v265 = &v361;
    v30 = v298;
    goto LABEL_223;
  }

  *&v358 = v186;
  v316 = v188;
  v317 = v187;
  *(&v358 + 1) = v187;
  *&v359 = v188;
  v315 = v189;
  *(&v359 + 1) = v189;
  *&v360 = v319;
  *(&v360 + 1) = v318;
  v207 = BigString.UTF8View.index(before:)();
  v209 = v208;
  v211 = v210;
  v213 = v212;
  result = BigString.UTF8View.subscript.getter();
  if (v184 < v207 >> 10)
  {
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
    goto LABEL_261;
  }

  v325 = v207;
  v326 = v209;
  v327 = v211;
  v328 = v213;
  v329 = v310;
  v330 = v314;
  specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v325, &v331);
  result = outlined destroy of BigSubstring.UTF8View(&v345);
  v214 = v314;
  v215 = v304;
  v185 = v309;
  v188 = v316;
  v187 = v317;
  v189 = v315;
  if (v333 == 2)
  {
    goto LABEL_182;
  }

  v215 = v331;
  if (v184 >= v331 >> 10)
  {
    v74 = *(&v332 + 1);
    v73 = v332;
    v298 = v333;
    goto LABEL_182;
  }

LABEL_263:
  __break(1u);
LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
  return result;
}

uint64_t AttributedString.Runs.AttributesSlice3.subscript.getter(unint64_t *a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v7 = v6;
  v445 = a3;
  v449 = a2;
  v452 = a1;
  v11 = *(a6 + 56);
  v446 = *(a6 + 32);
  v447 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v431 = *(v12 - 8);
  v432 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v423 - v13;
  v15 = *(a6 + 48);
  v450 = *(a6 + 24);
  v451 = v15;
  v453 = swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for Optional();
  v429 = *(v16 - 8);
  v430 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v457 = &v423 - v17;
  v18 = *(a6 + 40);
  v454 = *(a6 + 16);
  v455 = v18;
  v456 = swift_getAssociatedTypeWitness();
  v19 = type metadata accessor for Optional();
  v427 = *(v19 - 8);
  v428 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v423 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v23 = *(v22 - 1);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v423 - v24;
  v485 = *(v7 + *(a6 + 68));
  v472 = *(v485 + 2);
  if (!v472)
  {
    goto LABEL_370;
  }

  v459 = v14;
  v435 = v21;
  v444 = a4;
  v26 = *a5;
  v27 = *(a5 + 8);
  v28 = *(a5 + 16);
  v29 = *(a5 + 24);
  v478 = *(v7 + *(a6 + 72));
  v14 = *v7;
  v470 = v26;
  v463 = v29;
  v464 = v27;
  v462 = v28;
  AttributedString.Guts.findRun(at:)(v26, v29, &v507);
  v467 = v508;
  v482 = v509;
  v483 = v507;
  v460 = v510;
  v479 = v511;
  v458 = v512;
  v442 = v514;
  v443 = v513;
  v441 = v515;
  v30 = *(type metadata accessor for AttributedString.Runs() + 24);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v487 = v7;
  v492 = v30;
  v491 = v31;
  RangeSet.ranges.getter();
  a4 = RangeSet.Ranges.count.getter();
  v33 = *(v23 + 8);
  v32 = (v23 + 8);
  v486 = v22;
  v490 = v33;
  (v33)(v25, v22);
  if (a4 < 1)
  {
LABEL_295:
    __break(1u);
    goto LABEL_296;
  }

  v34 = 0;
  a5 = v470 >> 10;
  v489 = v32;
  while (1)
  {
    if (__OFADD__(v34, a4))
    {
      goto LABEL_297;
    }

    v35 = (v34 + a4) / 2;
    RangeSet.ranges.getter();
    v36 = v486;
    RangeSet.Ranges.subscript.getter();
    (v490)(v25, v36);
    v22 = (v507 >> 10);
    if (a5 < v507 >> 10)
    {
      goto LABEL_4;
    }

    if (a5 < v511 >> 10)
    {
      break;
    }

    v34 = v35 + 1;
    v35 = a4;
LABEL_4:
    a4 = v35;
    if (v34 >= v35)
    {
      goto LABEL_295;
    }
  }

  v488 = a5;
  v468 = v509;
  v469 = v508;
  v465 = v507;
  v466 = v510;
  v37 = *(v478 + 16);
  v484 = v14;
  if (v37 == 1 && (specialized Set.contains(_:)(0, 1, v478) & 1) == 0)
  {
    v95 = v14 + 24;
    v96 = *(v14 + 40);
    v97 = *(v14 + 56);
    v599 = *(v14 + 24);
    v600 = v96;
    v601 = v97;
    swift_unknownObjectRetain();
    a4 = BigString.UnicodeScalarView.index(after:)();
    v14 = v98;
    v32 = v99;
    v101 = v100;
    swift_unknownObjectRelease();
    v102 = *v95;
    v103 = *(v95 + 32);
    v597 = *(v95 + 16);
    v598 = v103;
    v596 = v102;
    a5 = a4 >> 10;
    if (a4 >> 10 >= v22)
    {
      v104 = v22;
      v106 = *v95;
      v105 = *(v95 + 8);
      v107 = *(v95 + 16);
      v108 = *(v95 + 24);
      v109 = *(v95 + 32);
      v110 = *(v95 + 40);
      v111 = v465;
      v22 = v466;
      v585 = v465;
      v586 = v469;
      v587 = v468;
      v588 = v466;
      v589 = a4;
      v590 = v14;
      v591 = v32;
      v592 = v101;
      if (v104 == a5)
      {
        goto LABEL_317;
      }

      v473 = v106;
      v474 = v110;
      v480 = v105;
      v481 = v101;
      v475 = v109;
      v476 = v108;
      v477 = v107;
      v112 = *(v95 + 16);
      v559 = *v95;
      v560 = v112;
      v561 = *(v95 + 32);
      outlined init with copy of Rope<BigString._Chunk>._Node?(&v559, &v507);
      if ((specialized Set.contains(_:)(0, 0, v478) & 1) == 0)
      {
        goto LABEL_299;
      }

      if (a5 > BigString.startIndex.getter() >> 10)
      {
        *&v593 = v473;
        v113 = v481;
        *(&v593 + 1) = v480;
        *&v594 = v477;
        *(&v594 + 1) = v476;
        *&v595 = v475;
        *(&v595 + 1) = v474;
        v114 = BigString.UTF8View.index(before:)();
        v471 = v116;
        v472 = v115;
        v22 = v117;
        BigString.UTF8View.subscript.getter();
        if (a5 < v114 >> 10)
        {
          goto LABEL_401;
        }

        v577 = v114;
        v578 = v472;
        v579 = v22;
        v580 = v471;
        v581 = a4;
        v582 = v14;
        v583 = v32;
        v584 = v113;
        specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v577, &v507);
        outlined destroy of BigSubstring.UTF8View(v526);
        v111 = v465;
        v22 = v466;
        v119 = v468;
        v118 = v469;
        if (v510 != 2)
        {
          v111 = v507;
          if (a5 < v507 >> 10)
          {
            goto LABEL_403;
          }

          v118 = v508;
          v119 = v509;
          v22 = v510;
        }

        goto LABEL_300;
      }

      goto LABEL_298;
    }

    goto LABEL_389;
  }

  v440 = v22;
  v38 = *(v14 + 72);
  a4 = *(v14 + 80);
  v40 = *(v14 + 88);
  v39 = *(v14 + 96);
  swift_unknownObjectRetain();
  v22 = v482;
  v41 = v467;
  specialized Rope.subscript.getter(v483, v467, v482, v38, a4, v40, v39);
  v43 = v42;
  a5 = v44;
  swift_unknownObjectRelease();
  v45 = v487[1];
  if (v45 >= v460)
  {

    goto LABEL_77;
  }

  v436 = v485 + 40;
  v46 = v41;
  v47 = v22;
  v461 = v43;
  v434 = a5;
  v426 = v45;
  while (2)
  {
    v48 = *(v14 + 72);
    v50 = *(v14 + 88);
    v49 = *(v14 + 96);
    v507 = v483;
    v508 = v46;
    v509 = v47;
    if (v483 != v49)
    {
      goto LABEL_382;
    }

    v481 = v50;
    if (v48)
    {
      v51 = *(v48 + 18);
      a4 = v47;
      v52 = v46;
      swift_unknownObjectRetain();
      v46 = v52;
      v47 = a4;
    }

    else
    {
      v51 = 0;
    }

    v22 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
    if (v51 >= v46)
    {
      goto LABEL_383;
    }

    if (v47)
    {
      v53 = (4 * *(v47 + 18) + 8) & 0x3C;
      if (((v46 >> v53) & 0xF) != 0)
      {
        v54 = ((((v46 >> v53) & 0xF) - 1) << v53) | ((-15 << v53) - 1) & v46;
        v508 = v54;
        goto LABEL_36;
      }
    }

    a5 = (4 * *(v48 + 18) + 8) & 0x3C;
    v55 = (v46 >> a5) & 0xF;
    if (!*(v48 + 18))
    {
      if (!v55)
      {
        goto LABEL_391;
      }

      v54 = ((v55 - 1) << a5) | v46 & 0xFFFFFFFFFFFFF0FFLL;
      v508 = v54;
      v509 = v48;
      v47 = v48;
      if (v48)
      {
        goto LABEL_36;
      }

      goto LABEL_28;
    }

    if (v55 >= *(v48 + 16))
    {
LABEL_31:
      swift_unknownObjectRetain();
      goto LABEL_32;
    }

    v56 = *(v48 + 24 * ((v46 >> a5) & 0xF) + 24);
    a4 = *(v56 + 18);
    v57 = (4 * a4 + 8) & 0x3C;
    v58 = (v46 >> v57) & 0xF;
    *&v531 = v58;
    if (!a4)
    {
      if (v58)
      {
        v508 = ((v58 - 1) << v57) | v46 & 0xFFFFFFFFFFFFF0FFLL;
        a4 = v56;
        v509 = v56;
        swift_unknownObjectRetain();
        goto LABEL_34;
      }

      goto LABEL_31;
    }

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    a4 = specialized closure #1 in Rope._Node.formPredecessor(of:)((v56 + 16), v56 + 24, &v531, &v507, a4);
    swift_unknownObjectRelease();
    if (a4)
    {
      a4 = v509;
      goto LABEL_34;
    }

LABEL_32:
    if (!v55)
    {
      goto LABEL_390;
    }

    v508 = v508 & ((-15 << a5) - 1) | ((v55 - 1) << a5);
    v61 = *(v48 + 24 * v55);
    swift_unknownObjectRetain();
    a5 = specialized Rope._Node.descendToLastItem(under:)(&v508, v61);
    swift_unknownObjectRelease();
    a4 = a5;
    v509 = a5;
LABEL_34:
    swift_unknownObjectRelease();
    if (v507 != v483)
    {
      goto LABEL_384;
    }

    v54 = v508;
    v47 = a4;
    if (!a4)
    {
LABEL_28:
      v439 = v54;
      a4 = specialized Rope._Node.subscript.getter(v54, v48);
      a5 = v59;
      swift_unknownObjectRelease();
      v437 = 0;
      v60 = 1;
      goto LABEL_37;
    }

LABEL_36:
    v62 = (4 * *(v47 + 18) + 8) & 0x3C;
    v439 = v54;
    v437 = v47;
    v63 = v47 + 24 * ((v54 >> v62) & 0xF);
    a4 = *(v63 + 24);
    a5 = *(v63 + 40);

    swift_unknownObjectRelease();
    v60 = 0;
LABEL_37:
    v64 = v461;

    v433 = (v479 - a4);
    if (__OFSUB__(v479, a4))
    {
      goto LABEL_385;
    }

    if (v483 != *(v14 + 96))
    {
      goto LABEL_386;
    }

    if (v60)
    {
      v65 = *(v14 + 72);
      a4 = *(v14 + 80);
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v439, v65);
      a5 = v66;
      v438 = v67;
      swift_unknownObjectRelease();
    }

    else
    {
      v68 = v437 + 24 * ((v439 >> ((4 * *(v437 + 18) + 8) & 0x3C)) & 0xF);
      a5 = *(v68 + 32);
      v69 = *(v68 + 40);

      v438 = v69;
    }

    v70 = 0;
    v460 = (v460 - 1);
    v71 = v436;
    v471 = a5;
LABEL_44:
    if (v70 >= *(v485 + 2))
    {
      goto LABEL_362;
    }

    v480 = v71;
    v481 = v70;
    v72 = *(v71 - 1);
    a4 = *v71;
    if (*(v64 + 16))
    {

      v73 = specialized __RawDictionaryStorage.find<A>(_:)(v72, a4);
      if (v74)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v64 + 56) + 72 * v73, &v531);
        if (!*(a5 + 16))
        {
LABEL_53:

LABEL_54:
          v530 = 0;
          memset(v529, 0, sizeof(v529));
          goto LABEL_55;
        }
      }

      else
      {
        v535 = 0;
        v534 = 0u;
        v533 = 0u;
        v532 = 0u;
        v531 = 0u;
        if (!*(a5 + 16))
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
      v535 = 0;
      v534 = 0u;
      v533 = 0u;
      v532 = 0u;
      v531 = 0u;

      if (!*(a5 + 16))
      {
        goto LABEL_53;
      }
    }

    v75 = specialized __RawDictionaryStorage.find<A>(_:)(v72, a4);
    v77 = v76;

    if ((v77 & 1) == 0)
    {
      goto LABEL_54;
    }

    outlined init with copy of AttributedString._AttributeValue(*(a5 + 56) + 72 * v75, v529);
LABEL_55:
    outlined init with copy of AttributedString._AttributeValue?(&v531, &v507);
    outlined init with copy of AttributedString._AttributeValue?(v529, &v516);
    if (!v510)
    {
      outlined destroy of TermOfAddress?(v529, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of TermOfAddress?(&v531, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (*(&v517 + 1))
      {
        goto LABEL_74;
      }

      outlined destroy of TermOfAddress?(&v507, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      goto LABEL_43;
    }

    outlined init with copy of AttributedString._AttributeValue?(&v507, v526);
    if (*(&v517 + 1))
    {
      v523 = v518;
      v524 = v519;
      v525 = v520;
      v521 = v516;
      v522 = v517;
      v78 = v527;
      v474 = v528;
      v473 = __swift_project_boxed_opaque_existential_1(v526, v527);
      a4 = *(&v522 + 1);
      v79 = __swift_project_boxed_opaque_existential_1(&v521, *(&v522 + 1));
      v477 = &v423;
      v80 = *(v78 - 8);
      MEMORY[0x1EEE9AC00](v79);
      v82 = &v423 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
      v476 = &v423;
      v84 = MEMORY[0x1EEE9AC00](v83);
      (*(v86 + 16))(&v423 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0), v84);
      v87 = type metadata accessor for Optional();
      v475 = &v423;
      v88 = *(v87 - 8);
      MEMORY[0x1EEE9AC00](v87);
      v90 = &v423 - v89;
      v91 = swift_dynamicCast();
      v92 = *(v80 + 56);
      if (!v91)
      {
        v92(v90, 1, 1, v78);
        a5 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
        outlined destroy of TermOfAddress?(v529, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v531, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        (*(v88 + 8))(v90, v87);
        outlined destroy of AttributedString._AttributeValue(&v521);
        outlined destroy of AttributedString._AttributeValue(v526);
        outlined destroy of TermOfAddress?(&v507, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v14 = v484;
        goto LABEL_76;
      }

      v92(v90, 0, 1, v78);
      (*(v80 + 32))(v82, v90, v78);
      a5 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v80 + 8))(v82, v78);
      v22 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
      outlined destroy of TermOfAddress?(v529, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of TermOfAddress?(&v531, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of AttributedString._AttributeValue(&v521);
      outlined destroy of AttributedString._AttributeValue(v526);
      outlined destroy of TermOfAddress?(&v507, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v14 = v484;
      v64 = v461;
      if ((a5 & 1) == 0)
      {
        goto LABEL_76;
      }

LABEL_43:
      v70 = (v481 + 1);
      v71 = v480 + 2;
      a5 = v471;
      if (v472 == (v481 + 1))
      {

        v93 = v433;
        a5 = v434;
        v479 = v433;
        v47 = v437;
        v46 = v439;
        if (v426 >= v460)
        {

          v94 = v93;
          goto LABEL_78;
        }

        continue;
      }

      goto LABEL_44;
    }

    break;
  }

  a5 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
  outlined destroy of TermOfAddress?(v529, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  outlined destroy of TermOfAddress?(&v531, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  outlined destroy of AttributedString._AttributeValue(v526);
LABEL_74:
  outlined destroy of TermOfAddress?(&v507, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_76:

LABEL_77:

  v94 = v479;
LABEL_78:
  v22 = (v14 + 24);
  v120 = *(v14 + 40);
  v121 = *(v14 + 56);
  v599 = *(v14 + 24);
  v600 = v120;
  v601 = v121;
  a4 = v94 - (v458 >> 11);
  if (__OFSUB__(v94, v458 >> 11))
  {
    goto LABEL_375;
  }

  swift_unknownObjectRetain();
  v122 = BigString.UTF8View.index(_:offsetBy:)();
  v124 = v123;
  v126 = v125;
  v128 = v127;
  swift_unknownObjectRelease();
  v129 = v465;
  if (v440 >= v122 >> 10)
  {
    v130 = v469;
  }

  else
  {
    v129 = v122;
    v130 = v124;
  }

  v131 = v468;
  if (v440 < v122 >> 10)
  {
    v131 = v126;
  }

  v468 = v131;
  v469 = v130;
  a4 = v466;
  if (v440 < v122 >> 10)
  {
    a4 = v128;
  }

  v132 = *(v14 + 40);
  v596 = *(v14 + 24);
  v597 = v132;
  v598 = *(v14 + 56);
  a5 = v596;
  swift_unknownObjectRetain();
  v133 = BigString.UnicodeScalarView.index(after:)();
  v481 = v134;
  v136 = v135;
  v138 = v137;
  swift_unknownObjectRelease();
  v139 = *v22;
  v140 = *(v14 + 40);
  v595 = *(v14 + 56);
  v594 = v140;
  v593 = v139;
  if (v133 >> 10 < v129 >> 10)
  {
    goto LABEL_376;
  }

  v141 = v129;
  v142 = *(v14 + 24);
  v143 = *(v14 + 32);
  v144 = *(v14 + 40);
  v145 = *(v14 + 48);
  v146 = *(v14 + 56);
  v147 = *(v14 + 64);
  v585 = v129;
  v586 = v469;
  v587 = v468;
  v466 = a4;
  v588 = a4;
  v589 = v133;
  v590 = v481;
  v591 = v136;
  v592 = v138;
  if (v129 >> 10 == v133 >> 10)
  {
    v465 = v129;
    v14 = v484;
LABEL_114:
    v175 = v467;
    goto LABEL_115;
  }

  a4 = v469;
  v148 = v136;
  v479 = v133 >> 10;
  v480 = v138;
  v149 = v141;
  a5 = v133;
  v473 = v146;
  v474 = v145;
  v475 = v144;
  v476 = v143;
  v477 = v142;
  v150 = *(v22 + 1);
  v602[0] = *v22;
  v602[1] = v150;
  v603 = v22[4];
  outlined init with copy of Rope<BigString._Chunk>._Node?(v602, &v507);
  v151 = specialized Set.contains(_:)(0, 0, v478);
  v472 = v147;
  if (v151)
  {
    v465 = v149;
    v152 = BigString.startIndex.getter();
    v22 = v479;
    if (v479 > v152 >> 10)
    {
      v571 = v477;
      v572 = v476;
      v573 = v475;
      v574 = v474;
      v575 = v473;
      v576 = v147;
      a5 = v480;
      a4 = v481;
      v153 = BigString.UTF8View.index(before:)();
      v471 = v154;
      v14 = v155;
      v461 = v156;
      BigString.UTF8View.subscript.getter();
      if (v22 >= v153 >> 10)
      {
        v577 = v153;
        v578 = v471;
        v579 = v14;
        v580 = v461;
        v581 = v133;
        v582 = a4;
        v583 = v148;
        v584 = a5;
        specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v577, &v507);
        outlined destroy of BigSubstring.UTF8View(v526);
        v158 = v465;
        v157 = v466;
        a4 = v469;
        v14 = v484;
        a5 = v133;
        if (v510 != 2)
        {
          v158 = v507;
          if (v479 < v507 >> 10)
          {
            goto LABEL_398;
          }

          a4 = v508;
          v468 = v509;
          v157 = v510;
        }

        goto LABEL_97;
      }

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
      goto LABEL_397;
    }

    v158 = v465;
    v157 = v466;
    v14 = v484;
  }

  else
  {
    v157 = v466;
    v14 = v484;
    v158 = v149;
  }

LABEL_97:
  v563 = v158;
  v469 = a4;
  v564 = a4;
  v565 = v468;
  v466 = v157;
  v566 = v157;
  v567 = a5;
  v568 = v481;
  v569 = v148;
  v570 = v480;
  v159 = v478;
  v160 = v158;
  v161 = specialized Collection<>._containsScalarConstraint.getter(v478);
  v465 = v160;
  if ((v161 & 1) == 0)
  {
    outlined destroy of BigString(&v593);
    goto LABEL_114;
  }

  v162 = v159 + 56;
  v163 = 1 << *(v159 + 32);
  v164 = -1;
  if (v163 < 64)
  {
    v164 = ~(-1 << v163);
  }

  v14 = v164 & *(v159 + 56);
  v22 = ((v163 + 63) >> 6);

  v165 = 0;
  a4 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    if (v14)
    {
      goto LABEL_106;
    }

LABEL_102:
    v166 = v165 + 1;
    if (__OFADD__(v165, 1))
    {
LABEL_360:
      __break(1u);
      goto LABEL_361;
    }

    if (v166 < v22)
    {
      v14 = *(v162 + 8 * v166);
      ++v165;
      if (v14)
      {
        v165 = v166;
LABEL_106:
        v167 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v168 = (*(v478 + 48) + ((v165 << 10) | (16 * v167)));
        v169 = v168[1];
        if (v169 >= 2)
        {
          v170 = specialized Collection.first.getter(*v168, v169);
          if ((v170 & 0x100000000) == 0)
          {
            v481 = v170;
            v171 = v160;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a4 + 16) + 1, 1, a4);
            }

            v173 = *(a4 + 16);
            v172 = *(a4 + 24);
            a5 = v173 + 1;
            v174 = v481;
            if (v173 >= v172 >> 1)
            {
              a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v172 > 1), v173 + 1, 1, a4);
              v174 = v481;
            }

            *(a4 + 16) = a5;
            *(a4 + 4 * v173 + 32) = v174;
            v160 = v171;
          }
        }

        continue;
      }

      goto LABEL_102;
    }

    break;
  }

  *&v559 = v477;
  *(&v559 + 1) = v476;
  *&v560 = v475;
  *(&v560 + 1) = v474;
  v561 = v473;
  v562 = v472;
  BigString.UnicodeScalarView.subscript.getter();
  v194 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(a4);
  v196 = v195;
  v22 = v197;
  v199 = v198;
  outlined destroy of BigString(&v593);

  outlined destroy of BigSubstring.UnicodeScalarView(v529);
  v14 = v484;
  v175 = v467;
  if (v199 == 2)
  {
    goto LABEL_115;
  }

  if (v479 < v194 >> 10)
  {
    goto LABEL_393;
  }

  v465 = v194;
  v466 = v199;
  v468 = v22;
  v469 = v196;
LABEL_115:
  v176 = *(v14 + 16);
  v32 = v486;
  v22 = v487;
LABEL_116:
  while (2)
  {
    v479 = *(v485 + 2);
    if (!v479)
    {
      goto LABEL_372;
    }

    v443 = v176;
    v467 = v175;
    AttributedString.Guts.findRun(at:)(v470, v463, &v507);
    v472 = v508;
    v473 = v507;
    v471 = v509;
    v486 = v510;
    v461 = v511;
    v440 = v513;
    v441 = v512;
    v438 = v515;
    v439 = v514;
    RangeSet.ranges.getter();
    a4 = RangeSet.Ranges.count.getter();
    (v490)(v25, v32);
    if (a4 < 1)
    {
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
LABEL_298:
      v111 = v465;
LABEL_299:
      v119 = v468;
      v118 = v469;
LABEL_300:
      v563 = v111;
      v468 = v119;
      v469 = v118;
      v564 = v118;
      v565 = v119;
      v466 = v22;
      v566 = v22;
      v567 = a4;
      v568 = v14;
      v569 = v32;
      v570 = v481;
      a4 = v478;
      v387 = specialized Collection<>._containsScalarConstraint.getter(v478);
      v465 = v111;
      if (v387)
      {
        v388 = a4 + 56;
        v389 = 1 << *(a4 + 32);
        v390 = -1;
        if (v389 < 64)
        {
          v390 = ~(-1 << v389);
        }

        v14 = v390 & *(a4 + 56);
        v22 = ((v389 + 63) >> 6);

        v391 = 0;
        a4 = MEMORY[0x1E69E7CC0];
        while (v14)
        {
LABEL_309:
          v393 = __clz(__rbit64(v14));
          v14 &= v14 - 1;
          v394 = (*(v478 + 48) + ((v391 << 10) | (16 * v393)));
          v395 = v394[1];
          if (v395 >= 2)
          {
            v396 = specialized Collection.first.getter(*v394, v395);
            if ((v396 & 0x100000000) == 0)
            {
              v481 = v396;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a4 + 16) + 1, 1, a4);
              }

              v398 = *(a4 + 16);
              v397 = *(a4 + 24);
              v399 = v481;
              if (v398 >= v397 >> 1)
              {
                a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v397 > 1), v398 + 1, 1, a4);
                v399 = v481;
              }

              *(a4 + 16) = v398 + 1;
              *(a4 + 4 * v398 + 32) = v399;
            }
          }
        }

        while (1)
        {
          v392 = v391 + 1;
          if (__OFADD__(v391, 1))
          {
            goto LABEL_368;
          }

          if (v392 >= v22)
          {
            break;
          }

          v14 = *(v388 + 8 * v392);
          ++v391;
          if (v14)
          {
            v391 = v392;
            goto LABEL_309;
          }
        }

        v571 = v473;
        v572 = v480;
        v573 = v477;
        v574 = v476;
        v575 = v475;
        v576 = v474;
        BigString.UnicodeScalarView.subscript.getter();
        v417 = BigSubstring.UnicodeScalarView._findLastScalarBoundary(for:)(a4);
        v419 = v418;
        v22 = v420;
        v422 = v421;
        outlined destroy of BigString(&v596);

        outlined destroy of BigSubstring.UnicodeScalarView(v529);
        v400 = v483;
        v14 = v484;
        v175 = v467;
        if (v422 != 2)
        {
          if (a5 < v417 >> 10)
          {
            goto LABEL_402;
          }

          v465 = v417;
          v466 = v422;
          v468 = v22;
          v469 = v419;
        }
      }

      else
      {
        outlined destroy of BigString(&v596);
LABEL_317:
        v400 = v483;
        v14 = v484;
        v175 = v467;
      }

      v507 = v400;
      v508 = v175;
      v509 = v482;
      v401 = v400;
      v481 = (v465 >> 11);
      if ((v465 >> 11) >= v479)
      {
        v32 = v486;
        v22 = v487;
        v176 = *(v14 + 16);
        continue;
      }

      v402 = *(v14 + 96);
      v32 = v486;
      if (v401 != v402)
      {
LABEL_320:
        __break(1u);
LABEL_321:
        v479 = v402;
        v175 = a5;
        goto LABEL_322;
      }

      while (1)
      {
        v403 = *(v14 + 72);
        a4 = *(v14 + 80);
        v22 = *(v14 + 88);
        if (v403)
        {
          v404 = *(v403 + 18);
          a5 = v175;
          swift_unknownObjectRetain();
          v175 = a5;
          if (v404 >= a5)
          {
            goto LABEL_363;
          }
        }

        else if (!v175)
        {
          goto LABEL_363;
        }

        if (v482)
        {
          v405 = (4 * *(v482 + 18) + 8) & 0x3C;
          if (((v175 >> v405) & 0xF) != 0)
          {
            break;
          }
        }

        v407 = (4 * *(v403 + 18) + 8) & 0x3C;
        v14 = (v175 >> v407) & 0xF;
        if (*(v403 + 18))
        {
          if (v14 < *(v403 + 16))
          {
            v408 = *(v403 + 24 * ((v175 >> v407) & 0xF) + 24);
            v409 = *(v408 + 18);
            v410 = (4 * v409 + 8) & 0x3C;
            v411 = (v175 >> v410) & 0xF;
            *&v531 = v411;
            if (v409)
            {
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              a5 = specialized closure #1 in Rope._Node.formPredecessor(of:)((v408 + 16), v408 + 24, &v531, &v507, v409);
              swift_unknownObjectRelease();
              v32 = v486;
              if (a5)
              {
                goto LABEL_342;
              }

              goto LABEL_340;
            }

            if (v411)
            {
              v508 = ((v411 - 1) << v410) | v175 & 0xFFFFFFFFFFFFF0FFLL;
              v509 = v408;
              swift_unknownObjectRetain();
              v32 = v486;
              goto LABEL_342;
            }
          }

          swift_unknownObjectRetain();
LABEL_340:
          if (!v14)
          {
            goto LABEL_371;
          }

          v508 = v508 & ((-15 << v407) - 1) | ((v14 - 1) << v407);
          a5 = *(v403 + 24 * v14);
          swift_unknownObjectRetain();
          v32 = v486;
          v413 = specialized Rope._Node.descendToLastItem(under:)(&v508, a5);
          swift_unknownObjectRelease();
          v509 = v413;
LABEL_342:
          swift_unknownObjectRelease();
          v406 = v508;
          v14 = v484;
LABEL_343:
          v412 = v509;
          goto LABEL_344;
        }

        if (!v14)
        {
          goto LABEL_374;
        }

        v406 = ((v14 - 1) << v407) | v175 & 0xFFFFFFFFFFFFF0FFLL;
        v508 = v406;
        v509 = v403;
        v412 = v403;
        v14 = v484;
LABEL_344:
        if (v507 != v483)
        {
          goto LABEL_364;
        }

        v482 = v412;
        if (v412)
        {
          a5 = v406;
          v414 = *(v412 + 24 * ((v406 >> ((4 * *(v412 + 18) + 8) & 0x3C)) & 0xF) + 24);

          swift_unknownObjectRelease();
          v402 = v479 - v414;
          v22 = v487;
          if (__OFSUB__(v479, v414))
          {
            goto LABEL_367;
          }

          if (v481 < v402)
          {
            goto LABEL_321;
          }

          v175 = a5;
          v176 = *(v14 + 16);
          goto LABEL_116;
        }

        v415 = v406;
        a5 = specialized Rope._Node.subscript.getter(v406, v403);
        a4 = v416;
        swift_unknownObjectRelease();

        if (__OFSUB__(v479, a5))
        {
          goto LABEL_369;
        }

        if (v481 >= (v479 - a5))
        {
          v482 = 0;
          v175 = v415;
          v22 = v487;
          v176 = *(v14 + 16);
          goto LABEL_116;
        }

        v479 -= a5;
        v175 = v415;
LABEL_322:
        v402 = *(v14 + 96);
        if (v483 != v402)
        {
          goto LABEL_320;
        }
      }

      v406 = ((((v175 >> v405) & 0xF) - 1) << v405) | ((-15 << v405) - 1) & v175;
      v508 = v406;
      goto LABEL_343;
    }

    break;
  }

  v177 = 0;
  while (1)
  {
    if (__OFADD__(v177, a4))
    {
      __break(1u);
      goto LABEL_185;
    }

    v178 = (v177 + a4) / 2;
    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    (v490)(v25, v32);
    if (v488 >= v507 >> 10)
    {
      break;
    }

LABEL_120:
    a4 = v178;
    if (v177 >= v178)
    {
      goto LABEL_296;
    }
  }

  v179 = v511;
  if (v488 >= v511 >> 10)
  {
    v177 = v178 + 1;
    v178 = a4;
    goto LABEL_120;
  }

  v458 = v512;
  a4 = v513;
  v475 = v511;
  v476 = v514;
  v180 = v478;
  v181 = *(v478 + 16);
  v474 = v513;
  if (v181 == 1 && (specialized Set.contains(_:)(0, 1, v478) & 1) == 0)
  {
    v186 = *(v14 + 24);
    v185 = *(v14 + 32);
    v187 = *(v14 + 48);
    v492 = *(v14 + 40);
    v188 = *(v14 + 64);
    v490 = *(v14 + 56);
    v489 = v188;
    v189 = a4;
    v190 = v470;
    v498 = v470;
    v22 = v463;
    a5 = v464;
    v499 = v464;
    v14 = v462;
    v500 = v462;
    v501 = v463;
    v502 = v179;
    v503 = v458;
    v504 = v189;
    v505 = v476;
    swift_unknownObjectRetain();
    v191 = specialized Set.contains(_:)(0, 0, v180);
    v486 = v185;
    v487 = v187;
    v491 = v186;
    if (v191)
    {
      *&v556 = v186;
      *(&v556 + 1) = v185;
      v192 = v492;
      *&v557 = v492;
      *(&v557 + 1) = v187;
      *&v558 = v490;
      *(&v558 + 1) = v489;
      BigString.UTF8View.subscript.getter();
      *&v493 = v190;
      *(&v493 + 1) = a5;
      *&v494 = v14;
      *(&v494 + 1) = v22;
      *&v495 = v190;
      *(&v495 + 1) = a5;
      *&v496 = v14;
      *(&v496 + 1) = v22;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v493, &v507);
      v179 = v475;
      outlined destroy of BigSubstring.UTF8View(&v531);
      a4 = v474;
      v193 = v476;
      if (v514 != 2)
      {
        v179 = v511;
        if (v488 > v511 >> 10)
        {
          goto LABEL_396;
        }

        v458 = v512;
        a4 = v513;
        v193 = v514;
      }
    }

    else
    {
      a4 = v474;
      v193 = v476;
      v192 = v492;
    }

    v542 = v470;
    v543 = a5;
    v544 = v14;
    v545 = v22;
    v475 = v179;
    v476 = v193;
    v546 = v179;
    a5 = v458;
    v547 = v458;
    v548 = a4;
    v549 = v193;
    v304 = specialized Collection<>._containsScalarConstraint.getter(v180);
    v474 = a4;
    if ((v304 & 1) == 0)
    {
      swift_unknownObjectRelease();
      goto LABEL_271;
    }

    v14 = v180 + 56;
    v305 = 1 << *(v180 + 32);
    v306 = -1;
    if (v305 < 64)
    {
      v306 = ~(-1 << v305);
    }

    v307 = v306 & *(v180 + 56);
    v308 = (v305 + 63) >> 6;

    a5 = 0;
    v22 = MEMORY[0x1E69E7CC0];
    v309 = v487;
    v310 = v491;
LABEL_235:
    if (v307)
    {
      goto LABEL_240;
    }

    while (1)
    {
      v311 = a5 + 1;
      if (__OFADD__(a5, 1))
      {
        goto LABEL_365;
      }

      if (v311 >= v308)
      {
        break;
      }

      v307 = *(v14 + 8 * v311);
      ++a5;
      if (v307)
      {
        a5 = v311;
LABEL_240:
        v312 = __clz(__rbit64(v307));
        v307 &= v307 - 1;
        v313 = (*(v478 + 48) + ((a5 << 10) | (16 * v312)));
        v314 = v313[1];
        if (v314 >= 2)
        {
          v315 = specialized Collection.first.getter(*v313, v314);
          if ((v315 & 0x100000000) == 0)
          {
            v492 = v315;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22[2] + 1, 1, v22);
            }

            v317 = v22[2];
            v316 = v22[3];
            v318 = (v317 + 1);
            v319 = v492;
            if (v317 >= v316 >> 1)
            {
              v485 = (v317 + 1);
              v320 = v22;
              v321 = v317;
              v322 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v316 > 1), v317 + 1, 1, v320);
              v318 = v485;
              v317 = v321;
              v22 = v322;
              v319 = v492;
            }

            v22[2] = v318;
            *(v22 + v317 + 8) = v319;
          }
        }

        goto LABEL_235;
      }
    }

    v550 = v310;
    v551 = v486;
    v552 = v192;
    v553 = v309;
    v554 = v490;
    v555 = v489;
    BigString.UnicodeScalarView.subscript.getter();
    v323 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v22);
    v259 = v324;
    a4 = v325;
    v262 = v326;

    swift_unknownObjectRelease();
    outlined destroy of BigSubstring.UnicodeScalarView(&v507);
    a5 = v458;
    if (v262 != 2)
    {
      if (v488 <= v323 >> 10)
      {
        v475 = v323;
        goto LABEL_270;
      }

LABEL_397:
      __break(1u);
LABEL_398:
      __break(1u);
      goto LABEL_399;
    }

LABEL_271:
    v22 = v484[2];
    v342 = v484[9];
    v343 = v484[10];
    a4 = v484[11];
    v344 = v484[12];
    swift_unknownObjectRetain();
    specialized Rope.subscript.getter(v483, v467, v482, v342, v343, a4, v344);
    v346 = v345;
    v348 = v347;
    swift_unknownObjectRelease();
    v349 = (*(v455 + 24))();
    if (*(v346 + 16))
    {
      v351 = specialized __RawDictionaryStorage.find<A>(_:)(v349, v350);
      a4 = v352;

      v14 = v459;
      v353 = v457;
      if (a4)
      {
        v492 = v348;
        v491 = v22;
        v354 = a5;
        outlined init with copy of AttributedString._AttributeValue(*(v346 + 56) + 72 * v351, &v521);
        outlined init with copy of Hashable & Sendable(&v521, v506);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
        v22 = v435;
        v14 = v456;
        if (!swift_dynamicCast())
        {
          goto LABEL_404;
        }

        outlined destroy of AttributedString._AttributeValue(&v521);
        v355 = *(v14 - 8);
        v356 = v355;
        v357 = *(v355 + 56);
        a4 = v355 + 56;
        v357(v22, 0, 1, v14);
        v358 = v452;
        (*(v356 + 32))(v452, v22, v14);
        v357(v358, 0, 1, v14);
        a5 = v354;
        v22 = v491;
        v14 = v459;
        v348 = v492;
LABEL_277:
        v359 = (*(v451 + 24))();
        if (*(v346 + 16))
        {
          v361 = specialized __RawDictionaryStorage.find<A>(_:)(v359, v360);
          a4 = v362;

          if (a4)
          {
            v492 = v348;
            v363 = a5;
            outlined init with copy of AttributedString._AttributeValue(*(v346 + 56) + 72 * v361, &v521);
            outlined init with copy of Hashable & Sendable(&v521, v506);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
            v14 = v453;
            a5 = v353;
            if (!swift_dynamicCast())
            {
              goto LABEL_405;
            }

            outlined destroy of AttributedString._AttributeValue(&v521);
            v364 = *(v14 - 8);
            v365 = v364;
            v366 = *(v364 + 56);
            a4 = v364 + 56;
            v366(v353, 0, 1, v14);
            v367 = v449;
            (*(v365 + 32))(v449, a5, v14);
            v366(v367, 0, 1, v14);
            a5 = v363;
            v14 = v459;
LABEL_283:
            v368 = (*(v447 + 24))();
            if (*(v346 + 16))
            {
              v370 = specialized __RawDictionaryStorage.find<A>(_:)(v368, v369);
              a4 = v371;

              if (a4)
              {
                outlined init with copy of AttributedString._AttributeValue(*(v346 + 56) + 72 * v370, &v521);

                outlined init with copy of Hashable & Sendable(&v521, v506);
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
                a4 = AssociatedTypeWitness;
                if ((swift_dynamicCast() & 1) == 0)
                {
                  goto LABEL_406;
                }

                outlined destroy of AttributedString._AttributeValue(&v521);
                v372 = *(a4 - 8);
                v373 = *(v372 + 56);
                v373(v14, 0, 1, a4);
                v374 = v445;
                (*(v372 + 32))(v445, v14, a4);
                result = (v373)(v374, 0, 1, a4);
LABEL_290:
                v376 = v444;
                v377 = v466;
                v379 = v468;
                v378 = v469;
                v381 = v474;
                v380 = v475;
                v382 = v476;
                if (v475 >> 10 >= v465 >> 10)
                {
                  *v444 = v465;
                  v376[1] = v378;
                  v376[2] = v379;
                  v376[3] = v377;
                  v376[4] = v443;
                  v376[5] = v380;
                  v376[6] = a5;
                  v376[7] = v381;
                  v376[8] = v382;
                  v376[9] = v22;
                  return result;
                }

LABEL_373:
                __break(1u);
LABEL_374:
                __break(1u);
LABEL_375:
                __break(1u);
LABEL_376:
                __break(1u);
LABEL_377:
                __break(1u);
LABEL_378:
                __break(1u);
LABEL_379:
                __break(1u);
LABEL_380:
                __break(1u);
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
                goto LABEL_387;
              }
            }

            else
            {
            }

            result = (*(*(AssociatedTypeWitness - 8) + 56))(v445, 1, 1);
            goto LABEL_290;
          }
        }

        else
        {
        }

        (*(*(v453 - 8) + 56))(v449, 1, 1);
        goto LABEL_283;
      }
    }

    else
    {

      v14 = v459;
      v353 = v457;
    }

    (*(*(v456 - 8) + 56))(v452, 1, 1);
    goto LABEL_277;
  }

  v182 = v22[15];
  a5 = v486;
  v183 = v473;
  v442 = v179 >> 10;
  if (v486 == v182)
  {
    v184 = v22[22];
    if (v22[26] == 2)
    {
      if (v184 != 2)
      {
        goto LABEL_180;
      }
    }

    else if (v184 == 2 || (v22[19] ^ v22[23]) >= 0x400)
    {
      goto LABEL_180;
    }
  }

  if (v486 >= v182)
  {
LABEL_387:
    __break(1u);
    goto LABEL_388;
  }

  v434 = v182;
  v200 = *(v14 + 72);
  v201 = *(v14 + 80);
  v203 = *(v14 + 88);
  v202 = *(v14 + 96);
  swift_unknownObjectRetain();
  v22 = v472;
  v204 = v471;
  specialized Rope.subscript.getter(v473, v472, v471, v200, v201, v203, v202);
  v206 = v205;
  v426 = v207;
  swift_unknownObjectRelease();
  v183 = v473;
  v208 = *(v14 + 72);
  v209 = *(v14 + 80);
  v210 = a5 + 1;
  a4 = *(v14 + 88);
  v211 = *(v14 + 96);
  v433 = v485 + 40;
  v507 = v473;
  v508 = v22;
  v509 = v204;
  a5 = v488;
  v477 = v206;
  while (2)
  {
    if (v183 != v211)
    {
      goto LABEL_377;
    }

    v437 = v210;
    v460 = v211;
    v471 = v204;
    if (v204)
    {
      v212 = v204 + 24 * ((v472 >> ((4 * *(v204 + 18) + 8) & 0x3C)) & 0xF);
      v213 = *(v212 + 24);
      v22 = *(v212 + 32);
      swift_unknownObjectRetain();
    }

    else
    {
      swift_unknownObjectRetain();
      v213 = specialized Rope._Node.subscript.getter(v472, v208);
      v22 = v214;
    }

    v215 = v461 + v213;
    if (__OFADD__(v461, v213))
    {
      goto LABEL_378;
    }

    specialized Rope.formIndex(after:)(&v507, v208, v209, a4, v460);
    swift_unknownObjectRelease();
    if (v434 < v437)
    {
      goto LABEL_185;
    }

    v425 = v215;
    v216 = v508;
    v217 = v477;
    v22 = &v507;
    if (v437 == v434)
    {
      v218 = v487[22];
      if (v487[26] == 2)
      {
        if (v218 == 2)
        {
LABEL_185:

          goto LABEL_186;
        }
      }

      else if (v218 != 2 && (v487[19] ^ v487[23]) < 0x400)
      {
        goto LABEL_185;
      }
    }

    if (v507 != *(v14 + 96))
    {
      goto LABEL_379;
    }

    v473 = v507;
    v423 = v509;
    v424 = v508;
    if (v509)
    {
      v219 = v509 + 24 * ((v508 >> ((4 * *(v509 + 18) + 8) & 0x3C)) & 0xF);
      v221 = *(v219 + 32);
      v220 = *(v219 + 40);

      v436 = v220;
    }

    else
    {
      v222 = *(v14 + 72);
      a4 = *(v14 + 88);
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v216, v222);
      v221 = v223;
      v436 = v224;
      swift_unknownObjectRelease();
    }

    v225 = 0;
    v226 = v433;
    v480 = v221;
    while (2)
    {
      if (v225 >= *(v485 + 2))
      {
        __break(1u);
        goto LABEL_360;
      }

      v492 = v225;
      v227 = *(v226 - 1);
      a4 = *v226;
      v491 = v226;
      if (v217[2])
      {

        v228 = specialized __RawDictionaryStorage.find<A>(_:)(v227, a4);
        if (v229)
        {
          outlined init with copy of AttributedString._AttributeValue(v217[7] + 72 * v228, &v531);
          if (!v221[2])
          {
LABEL_168:

LABEL_169:
            v525 = 0;
            v523 = 0u;
            v524 = 0u;
            v521 = 0u;
            v522 = 0u;
            goto LABEL_170;
          }
        }

        else
        {
          v535 = 0;
          v534 = 0u;
          v533 = 0u;
          v532 = 0u;
          v531 = 0u;
          if (!v221[2])
          {
            goto LABEL_168;
          }
        }
      }

      else
      {
        v535 = 0;
        v534 = 0u;
        v533 = 0u;
        v532 = 0u;
        v531 = 0u;

        if (!v221[2])
        {
          goto LABEL_168;
        }
      }

      v230 = specialized __RawDictionaryStorage.find<A>(_:)(v227, a4);
      v232 = v231;

      if ((v232 & 1) == 0)
      {
        goto LABEL_169;
      }

      outlined init with copy of AttributedString._AttributeValue(v221[7] + 72 * v230, &v521);
LABEL_170:
      outlined init with copy of AttributedString._AttributeValue?(&v531, &v507);
      outlined init with copy of AttributedString._AttributeValue?(&v521, &v516);
      if (v510)
      {
        outlined init with copy of AttributedString._AttributeValue?(&v507, &v498);
        if (!*(&v517 + 1))
        {
          outlined destroy of TermOfAddress?(&v521, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v531, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of AttributedString._AttributeValue(&v498);
LABEL_182:
          outlined destroy of TermOfAddress?(&v507, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_184:

          goto LABEL_185;
        }

        v495 = v518;
        v496 = v519;
        v497 = v520;
        v493 = v516;
        v494 = v517;
        v233 = v501;
        v486 = v502;
        v481 = __swift_project_boxed_opaque_existential_1(&v498, v501);
        v22 = *(&v494 + 1);
        v234 = __swift_project_boxed_opaque_existential_1(&v493, *(&v494 + 1));
        v490 = &v423;
        v235 = *(v233 - 8);
        MEMORY[0x1EEE9AC00](v234);
        v237 = &v423 - ((v236 + 15) & 0xFFFFFFFFFFFFFFF0);
        v489 = &v423;
        v239 = MEMORY[0x1EEE9AC00](v238);
        (*(v241 + 16))(&v423 - ((v240 + 15) & 0xFFFFFFFFFFFFFFF0), v239);
        v242 = type metadata accessor for Optional();
        v243 = *(v242 - 8);
        MEMORY[0x1EEE9AC00](v242);
        v245 = &v423 - v244;
        v246 = swift_dynamicCast();
        v247 = *(v235 + 56);
        if (!v246)
        {
          v247(v245, 1, 1, v233);
          outlined destroy of TermOfAddress?(&v521, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v531, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          (*(v243 + 8))(v245, v242);
          outlined destroy of AttributedString._AttributeValue(&v493);
          outlined destroy of AttributedString._AttributeValue(&v498);
          outlined destroy of TermOfAddress?(&v507, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          v14 = v484;
          a5 = v488;
          goto LABEL_184;
        }

        v247(v245, 0, 1, v233);
        (*(v235 + 32))(v237, v245, v233);
        v248 = dispatch thunk of static Equatable.== infix(_:_:)();
        v249 = *(v235 + 8);
        a4 = v235 + 8;
        v249(v237, v233);
        outlined destroy of TermOfAddress?(&v521, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v531, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v493);
        outlined destroy of AttributedString._AttributeValue(&v498);
        outlined destroy of TermOfAddress?(&v507, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v14 = v484;
        a5 = v488;
        v217 = v477;
        v22 = &v507;
        if ((v248 & 1) == 0)
        {
          goto LABEL_184;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(&v521, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v531, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (*(&v517 + 1))
        {
          goto LABEL_182;
        }

        outlined destroy of TermOfAddress?(&v507, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      v225 = v492 + 1;
      v226 = (v491 + 16);
      v221 = v480;
      if (v479 != v492 + 1)
      {
        continue;
      }

      break;
    }

    v208 = *(v14 + 72);
    v209 = *(v14 + 80);
    a4 = *(v14 + 88);
    v211 = *(v14 + 96);
    v461 = v425;
    v183 = v473;
    v507 = v473;
    v508 = v424;
    v204 = v423;
    v472 = v424;
    v509 = v423;
    v210 = v437 + 1;
    if (!__OFADD__(v437, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_180:
  v460 = v183;
  a5 = v488;
LABEL_186:
  v250 = *(v14 + 72);
  v251 = *(v14 + 80);
  v253 = *(v14 + 88);
  v252 = *(v14 + 96);
  swift_unknownObjectRetain();
  v254 = specialized Rope.subscript.getter(v460, v472, v471, v250, v251, v253, v252);
  a4 = v255;
  swift_unknownObjectRelease();

  if (__OFADD__(v461, v254))
  {
    goto LABEL_380;
  }

  v256 = *(v14 + 40);
  v556 = *(v14 + 24);
  v557 = v256;
  v558 = *(v14 + 56);
  if (__OFSUB__(v461 + v254, v441 >> 11))
  {
    goto LABEL_381;
  }

  swift_unknownObjectRetain();
  v257 = BigString.UTF8View.index(_:offsetBy:)();
  v259 = v258;
  a4 = v260;
  v262 = v261;
  swift_unknownObjectRelease();
  v263 = v257 >> 10;
  v264 = *(v14 + 24);
  v487 = *(v14 + 32);
  v265 = *(v14 + 48);
  v489 = *(v14 + 40);
  v490 = v265;
  v266 = *(v14 + 64);
  v491 = *(v14 + 56);
  v492 = v266;
  if (v257 >> 10 >= v442)
  {
    v269 = v470;
    v498 = v470;
    v270 = v463;
    v271 = v464;
    v499 = v464;
    a4 = v462;
    v500 = v462;
    v501 = v463;
    v14 = v474;
    v272 = v475;
    v502 = v475;
    v273 = v458;
    v503 = v458;
    v504 = v474;
    v274 = v476;
    v505 = v476;
    v275 = v264;
    swift_unknownObjectRetain();
    v276 = specialized Set.contains(_:)(0, 0, v478);
    v486 = v275;
    if (v276)
    {
      v550 = v275;
      v551 = v487;
      v552 = v489;
      v553 = v490;
      v554 = v491;
      v555 = v492;
      BigString.UTF8View.subscript.getter();
      *&v493 = v269;
      *(&v493 + 1) = v271;
      *&v494 = a4;
      *(&v494 + 1) = v270;
      *&v495 = v269;
      *(&v495 + 1) = v271;
      *&v496 = a4;
      *(&v496 + 1) = v270;
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v493, &v507);
      outlined destroy of BigSubstring.UTF8View(&v531);
      a5 = v475;
      v22 = v274;
      v277 = v442;
      v278 = v478;
      if (v514 != 2)
      {
        a5 = v511;
        if (v488 > v511 >> 10)
        {
          goto LABEL_394;
        }

        v273 = v512;
        v14 = v513;
        v22 = v514;
      }
    }

    else
    {
      a5 = v272;
      v22 = v274;
      v277 = v442;
      v278 = v478;
    }

    v542 = v470;
    v543 = v464;
    v544 = v462;
    v545 = v463;
    v546 = a5;
    v547 = v273;
    v548 = v14;
    v549 = v22;
    if ((specialized Collection<>._containsScalarConstraint.getter(v278) & 1) == 0)
    {
      swift_unknownObjectRelease();
      v295 = v476;
LABEL_220:
      v301 = a5 >> 10 == v277;
      if (a5 >> 10 == v277)
      {
        v302 = v475;
      }

      else
      {
        v302 = a5;
      }

      a5 = v458;
      if (!v301)
      {
        a5 = v273;
      }

      v303 = v474;
      if (!v301)
      {
        v303 = v14;
      }

      v474 = v303;
      v475 = v302;
      if (!v301)
      {
        v295 = v22;
      }

      v476 = v295;
      goto LABEL_271;
    }

    v279 = v278 + 56;
    v280 = 1 << *(v278 + 32);
    v281 = -1;
    if (v280 < 64)
    {
      v281 = ~(-1 << v280);
    }

    v282 = v281 & *(v278 + 56);
    a4 = (v280 + 63) >> 6;

    v283 = 0;
    v485 = MEMORY[0x1E69E7CC0];
    while (v282)
    {
LABEL_209:
      v285 = __clz(__rbit64(v282));
      v282 &= v282 - 1;
      v286 = (*(v478 + 48) + ((v283 << 10) | (16 * v285)));
      v287 = v286[1];
      if (v287 >= 2)
      {
        v288 = specialized Collection.first.getter(*v286, v287);
        if ((v288 & 0x100000000) == 0)
        {
          v481 = v288;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v485 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v485 + 2) + 1, 1, v485);
          }

          v290 = *(v485 + 2);
          v289 = *(v485 + 3);
          v291 = (v290 + 1);
          v292 = v481;
          if (v290 >= v289 >> 1)
          {
            v479 = *(v485 + 2);
            v480 = (v290 + 1);
            v294 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v289 > 1), v290 + 1, 1, v485);
            v290 = v479;
            v291 = v480;
            v485 = v294;
            v292 = v481;
          }

          v293 = v485;
          *(v485 + 2) = v291;
          *&v293[4 * v290 + 32] = v292;
        }
      }
    }

    while (1)
    {
      v284 = v283 + 1;
      if (__OFADD__(v283, 1))
      {
        break;
      }

      if (v284 >= a4)
      {

        v536 = v486;
        v537 = v487;
        v538 = v489;
        v539 = v490;
        v540 = v491;
        v541 = v492;
        BigString.UnicodeScalarView.subscript.getter();
        a4 = v485;
        v296 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v485);
        v492 = v297;
        v491 = v298;
        v300 = v299;

        swift_unknownObjectRelease();
        outlined destroy of BigSubstring.UnicodeScalarView(&v507);
        v295 = v476;
        if (v300 == 2)
        {
          goto LABEL_220;
        }

        if (v488 <= v296 >> 10)
        {
          a5 = v296;
          v273 = v492;
          v14 = v491;
          v22 = v300;
          goto LABEL_220;
        }

        goto LABEL_395;
      }

      v282 = *(v279 + 8 * v284);
      ++v283;
      if (v282)
      {
        v283 = v284;
        goto LABEL_209;
      }
    }

LABEL_361:
    __break(1u);
LABEL_362:
    __break(1u);
LABEL_363:
    __break(1u);
LABEL_364:
    __break(1u);
LABEL_365:
    __break(1u);
    goto LABEL_366;
  }

  v14 = v462;
  v22 = v463;
  if (v263 < a5)
  {
LABEL_388:
    __break(1u);
LABEL_389:
    __break(1u);
LABEL_390:
    swift_unknownObjectRelease();
    __break(1u);
LABEL_391:
    __break(1u);
    goto LABEL_392;
  }

  v498 = v470;
  v499 = v464;
  v500 = v462;
  v501 = v463;
  v502 = v257;
  v503 = v259;
  v504 = a4;
  v505 = v262;
  if (a5 == v263)
  {
LABEL_269:
    v475 = v257;
LABEL_270:
    a5 = v259;
    v474 = a4;
    v476 = v262;
    goto LABEL_271;
  }

  v267 = v264;
  swift_unknownObjectRetain();
  if ((specialized Set.contains(_:)(0, 0, v478) & 1) == 0)
  {
    v268 = v267;
LABEL_252:
    v542 = v470;
    v543 = v464;
    v544 = v14;
    v545 = v22;
    v546 = v257;
    v547 = v259;
    v548 = a4;
    v549 = v262;
    v327 = v478;
    if (specialized Collection<>._containsScalarConstraint.getter(v478))
    {
      a5 = v327 + 56;
      v328 = 1 << *(v327 + 32);
      v329 = -1;
      if (v328 < 64)
      {
        v329 = ~(-1 << v328);
      }

      v330 = v329 & *(v327 + 56);
      v22 = ((v328 + 63) >> 6);

      v14 = 0;
      v485 = MEMORY[0x1E69E7CC0];
      while (v330)
      {
LABEL_261:
        v332 = __clz(__rbit64(v330));
        v330 &= v330 - 1;
        v333 = (*(v478 + 48) + ((v14 << 10) | (16 * v332)));
        v334 = v333[1];
        if (v334 >= 2)
        {
          v335 = specialized Collection.first.getter(*v333, v334);
          if ((v335 & 0x100000000) == 0)
          {
            v481 = v335;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v485 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v485 + 2) + 1, 1, v485);
            }

            v337 = *(v485 + 2);
            v336 = *(v485 + 3);
            v338 = (v337 + 1);
            v339 = v481;
            if (v337 >= v336 >> 1)
            {
              v479 = *(v485 + 2);
              v480 = (v337 + 1);
              v341 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v336 > 1), v337 + 1, 1, v485);
              v337 = v479;
              v338 = v480;
              v485 = v341;
              v339 = v481;
            }

            v340 = v485;
            *(v485 + 2) = v338;
            *&v340[4 * v337 + 32] = v339;
          }
        }
      }

      while (1)
      {
        v331 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v331 >= v22)
        {

          v536 = v268;
          v537 = v487;
          v538 = v489;
          v539 = v490;
          v540 = v491;
          v541 = v492;
          BigString.UnicodeScalarView.subscript.getter();
          v383 = BigSubstring.UnicodeScalarView._findFirstScalarBoundary(for:)(v485);
          v492 = v384;
          v14 = v385;
          v22 = v386;

          swift_unknownObjectRelease();
          outlined destroy of BigSubstring.UnicodeScalarView(&v507);
          v474 = a4;
          v475 = v257;
          a5 = v259;
          v476 = v262;
          if (v22 == 2)
          {
            goto LABEL_271;
          }

          if (v488 <= v383 >> 10)
          {
            v474 = v14;
            v475 = v383;
            a5 = v492;
            v476 = v22;
            goto LABEL_271;
          }

          goto LABEL_400;
        }

        v330 = *(a5 + 8 * v331);
        ++v14;
        if (v330)
        {
          v14 = v331;
          goto LABEL_261;
        }
      }

LABEL_366:
      __break(1u);
LABEL_367:
      __break(1u);
LABEL_368:
      __break(1u);
LABEL_369:
      __break(1u);
LABEL_370:
      __break(1u);
LABEL_371:
      swift_unknownObjectRelease();
      __break(1u);
LABEL_372:
      __break(1u);
      goto LABEL_373;
    }

    swift_unknownObjectRelease();
    goto LABEL_269;
  }

  v268 = v267;
  v550 = v267;
  v551 = v487;
  v552 = v489;
  v553 = v490;
  v554 = v491;
  v555 = v492;
  BigString.UTF8View.subscript.getter();
  *&v493 = v470;
  *(&v493 + 1) = v464;
  *&v494 = v14;
  *(&v494 + 1) = v22;
  *&v495 = v470;
  *(&v495 + 1) = v464;
  *&v496 = v14;
  *(&v496 + 1) = v22;
  specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v493, &v507);
  outlined destroy of BigSubstring.UTF8View(&v531);
  if (v514 == 2)
  {
    goto LABEL_252;
  }

  v257 = v511;
  if (a5 <= v511 >> 10)
  {
    v259 = v512;
    a4 = v513;
    v262 = v514;
    goto LABEL_252;
  }

LABEL_399:
  __break(1u);
LABEL_400:
  __break(1u);
LABEL_401:
  __break(1u);
LABEL_402:
  __break(1u);
LABEL_403:
  __break(1u);
LABEL_404:
  (*(*(v14 - 8) + 56))(v22, 1, 1, v14);
  (*(v427 + 8))(v22, v428);
  __break(1u);
LABEL_405:
  (*(*(v14 - 8) + 56))(a5, 1, 1, v14);
  (*(v429 + 8))(a5, v430);
  __break(1u);
LABEL_406:
  (*(*(a4 - 8) + 56))(v14, 1, 1, a4);
  result = (*(v431 + 8))(v14, v432);
  __break(1u);
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance AttributedString.Runs.AttributesSlice3<A, B, C>(uint64_t *a1, unint64_t a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x60uLL);
  }

  v8 = v7;
  *a1 = v7;
  swift_getAssociatedTypeWitness();
  *v8 = type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  v8[1] = type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  v8[2] = type metadata accessor for Optional();
  v8[3] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v8[8] = TupleTypeMetadata;
  v10 = *(TupleTypeMetadata - 1);
  v8[9] = v10;
  if (v6)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v12 = v11;
  v8[10] = v11;
  v13 = AttributedString.Runs.AttributesSlice3.subscript.read(v8 + 4, a2, a3);
  v15 = v14;
  v17 = v16;
  v8[11] = v13;
  v20 = *v18;
  v19 = v18[1];
  v21 = type metadata accessor for Optional();
  (*(*(v21 - 8) + 16))(v12, v15, v21);
  v22 = TupleTypeMetadata[12];
  v23 = type metadata accessor for Optional();
  (*(*(v23 - 8) + 16))(v12 + v22, v17, v23);
  v24 = TupleTypeMetadata[16];
  v25 = type metadata accessor for Optional();
  (*(*(v25 - 8) + 16))(v12 + v24, v20, v25);
  memmove((v12 + TupleTypeMetadata[20]), v19, 0x50uLL);
  return protocol witness for Collection.subscript.read in conformance AttributedString.Runs.AttributesSlice3<A, B, C>;
}

void protocol witness for Collection.subscript.read in conformance AttributedString.Runs.AttributesSlice3<A, B, C>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 + 32;
  (*(*(*a1 + 72) + 8))(*(*a1 + 80), *(*a1 + 64));
  v5 = *(v3 + 80);
  (*(v3 + 88))(v4, a2);
  free(v5);

  free(v3);
}

void (*AttributedString.Runs.AttributesSlice3.subscript.read(uint64_t *a1, unint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x48uLL);
  }

  v8 = v7;
  *a1 = v7;
  swift_getAssociatedTypeWitness();
  *v8 = type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  v8[1] = type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  v8[2] = type metadata accessor for Optional();
  v8[3] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSny10Foundation16AttributedStringV5IndexVGMd);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v8[6] = TupleTypeMetadata;
  v10 = *(TupleTypeMetadata - 1);
  v8[7] = v10;
  if (v6)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v8[8] = v11;
  v12 = TupleTypeMetadata[12];
  v13 = v11 + TupleTypeMetadata[16];
  v14 = v11 + TupleTypeMetadata[20];
  AttributedString.Runs.AttributesSlice3.subscript.getter(v11, v11 + v12, v13, v14, a2, a3);
  v8[4] = v13;
  v8[5] = v14;
  return AttributedString.Runs.AttributesSlice3.subscript.read;
}