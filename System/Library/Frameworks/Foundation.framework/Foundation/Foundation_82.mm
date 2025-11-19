uint64_t closure #1 in AttributedString.Guts._constrainedAttributes(at:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[0] = a1;
  v17[1] = a2;
  outlined init with copy of AttributedString._AttributeValue(a3, &v18);
  outlined init with copy of FloatingPointRoundingRule?(v17, &v13, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);

  v7 = v15;
  v8 = v16;
  outlined copy of AttributedString.AttributeRunBoundaries?(v15, v16);
  outlined destroy of AttributedString._AttributeValue(&v14);
  if (v8 != 1)
  {
    if (a5 == 1)
    {

      outlined destroy of TermOfAddress?(v17, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
      goto LABEL_6;
    }

    if (v8)
    {
      if (a5)
      {
        if (v7 == a4 && v8 == a5)
        {

          outlined copy of AttributedString.AttributeRunBoundaries?(a4, a5);

          outlined destroy of TermOfAddress?(v17, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
LABEL_18:
          v9 = 1;
          goto LABEL_19;
        }

        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        outlined copy of AttributedString.AttributeRunBoundaries?(v7, v8);

        outlined destroy of TermOfAddress?(v17, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
LABEL_19:
        v10 = v7;
        v11 = v8;
        goto LABEL_20;
      }

      outlined copy of AttributedString.AttributeRunBoundaries?(v7, v8);

      outlined destroy of TermOfAddress?(v17, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
    }

    else
    {

      outlined destroy of TermOfAddress?(v17, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
      if (!a5)
      {

        goto LABEL_18;
      }
    }

    v9 = 0;
    goto LABEL_19;
  }

  outlined destroy of TermOfAddress?(v17, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
  if (a5 == 1)
  {
    v9 = 1;
    v10 = v7;
    v11 = 1;
LABEL_20:
    outlined consume of AttributedString.AttributeRunBoundaries?(v10, v11);
    return v9 & 1;
  }

LABEL_6:
  outlined consume of AttributedString.AttributeRunBoundaries?(v7, v8);
  outlined consume of AttributedString.AttributeRunBoundaries?(a4, a5);
  v9 = 0;
  return v9 & 1;
}

uint64_t closure #1 in AttributedString.Guts._characterInvalidatedAttributes(at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a1;
  v12[1] = a2;
  outlined init with copy of AttributedString._AttributeValue(a3, &v13);
  outlined init with copy of FloatingPointRoundingRule?(v12, v9, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);

  v3 = v11;
  if (v11)
  {
    if (*(v11 + 16) && (Hasher.init(_seed:)(), MEMORY[0x1865CD060](0), v4 = Hasher._finalize()(), v5 = -1 << *(v3 + 32), v6 = v4 & ~v5, ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
    {
      v7 = ~v5;
      while (*(*(v3 + 48) + 16 * v6 + 8))
      {
        v6 = (v6 + 1) & v7;
        if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v3 = 1;
    }

    else
    {
LABEL_7:
      v3 = 0;
    }
  }

  outlined destroy of TermOfAddress?(v12, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
  outlined destroy of AttributedString._AttributeValue(&v10);
  return v3;
}

uint64_t AttributedString.Guts._applyStyle(type:from:to:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v272 = a3;
  v315 = *MEMORY[0x1E69E9840];
  v8 = v4[9];
  v9 = v4[11];
  if (v8)
  {
    v10 = v4[11];
  }

  else
  {
    v10 = 0;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    if (v10 >= a2)
    {
      v265 = 0;
      v12 = *a1;
      v13 = a1[1];
      v278 = v4;
      v279 = v12;
      v14 = v4[10];
      v269 = (v4 + 9);
      v270 = a4;
      v280 = v4[12];
      v281 = v13;
      if (!v8 || ((i = v8 + 16, *(v8 + 16)) ? (v15 = v9 <= a2) : (v15 = 1), v15))
      {
        v16 = swift_unknownObjectRetain();
        v17 = specialized Rope._endPath.getter(v16);
        v18 = 0;
        v19 = 0;
        if (!v8)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v231 = *(v8 + 18);
        swift_unknownObjectRetain_n();
        if (v231)
        {
          v276 = v14;
          v277 = v9;
          v5 = 24;
          v232 = v231;
          v6 = v8;
          while (1)
          {
            v233 = *i;
            if (*i)
            {
              break;
            }

            v237 = v11;
LABEL_317:
            if (v237)
            {
              goto LABEL_367;
            }

            v11 = 0;
LABEL_308:
            v232 = (v233 << ((4 * v231 + 8) & 0x3C)) | ((-15 << ((4 * v231 + 8) & 0x3C)) - 1) & v232;
            v18 = *(v6 + 24 + 24 * v233);
            swift_unknownObjectRetain();
            swift_unknownObjectRelease();
            i = v18 + 16;
            LOBYTE(v231) = *(v18 + 18);
            v6 = v18;
            if (!v231)
            {
              v257 = v232 & 0xFFFFFFFFFFFFF0FFLL;
              v14 = v276;
              goto LABEL_340;
            }
          }

          v234 = 0;
          v235 = (v6 + 40);
          while (1)
          {
            v236 = *v235;
            v235 += 3;
            v237 = v11 - v236;
            if (__OFSUB__(v11, v236))
            {
              goto LABEL_346;
            }

            if (__OFADD__(v237, 1))
            {
              break;
            }

            if (v237 + 1 < 1)
            {
              v233 = v234;
              goto LABEL_308;
            }

            ++v234;
            v11 = v237;
            if (v233 == v234)
            {
              goto LABEL_317;
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
LABEL_352:
          __break(1u);
LABEL_353:
          __break(1u);
LABEL_354:
          __break(1u);
LABEL_355:
          __break(1u);
LABEL_356:
          __break(1u);
LABEL_357:
          __break(1u);
LABEL_358:
          __break(1u);
LABEL_359:
          __break(1u);
LABEL_360:
          __break(1u);
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
LABEL_366:
          __break(1u);
LABEL_367:
          __break(1u);
LABEL_368:
          __break(1u);
          goto LABEL_369;
        }

        v257 = 0;
        v18 = v8;
LABEL_340:
        v258 = specialized Rope._UnsafeHandle.findSlot<A>(at:in:preferEnd:)(v11, 0, i, (v18 + 24));
        if (v258 < 0)
        {
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
        }

        v259 = v258;
        swift_unknownObjectRelease();
        v17 = v257 | (v259 << 8);
      }

      specialized Rope._Node.distanceFromStart<A>(to:in:)(v280, v17, v18, v8, v14);
      swift_unknownObjectRelease();
      v19 = v18;
LABEL_14:
      v20 = v278[9];
      v21 = v278[10];
      v22 = v278[11];
      v23 = v278[12];
      swift_unknownObjectRetain();
      specialized Rope.subscript.getter(v280, v17, v19, v20, v21, v22, v23);
      v5 = v24;
      v6 = v25;
      v26 = swift_unknownObjectRelease();
      i = &v264;
      MEMORY[0x1EEE9AC00](v26);
      v263[6] = v279;
      v263[7] = v281;
      MEMORY[0x1EEE9AC00](v27);
      v263[2] = closure #1 in AttributedString.Guts._constrainedAttributes(at:with:)partial apply;
      v263[3] = v29;
      v30 = *(v5 + 32);
      v8 = ((1 << v30) + 63) >> 6;
      if ((v30 & 0x3Fu) <= 0xD)
      {
        goto LABEL_15;
      }

      goto LABEL_370;
    }
  }

LABEL_369:
  __break(1u);
LABEL_370:

  if (!swift_stdlib_isStackAllocationSafe())
  {
    goto LABEL_374;
  }

LABEL_15:
  v275 = i;
  v276 = v6;
  v273 = v8;
  v274 = v263;
  MEMORY[0x1EEE9AC00](v28);
  v32 = (v263 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0));
  bzero(v32, v31);
  v277 = 0;
  v6 = 0;
  v8 = v5 + 64;
  v33 = 1 << *(v5 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v5 + 64);
  i = (v33 + 63) >> 6;
  while (1)
  {
    if (!v35)
    {
      v37 = v6;
      while (1)
      {
        v6 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_348;
        }

        if (v6 >= i)
        {
          goto LABEL_29;
        }

        v38 = *(v8 + 8 * v6);
        ++v37;
        if (v38)
        {
          v36 = __clz(__rbit64(v38));
          v35 = (v38 - 1) & v38;
          goto LABEL_25;
        }
      }
    }

    v36 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
LABEL_25:
    v39 = v36 | (v6 << 6);
    v40 = (*(v5 + 48) + 16 * v39);
    v41 = *v40;
    v42 = v40[1];
    outlined init with copy of AttributedString._AttributeValue(*(v5 + 56) + 72 * v39, &v310);

    LOBYTE(v41) = closure #1 in AttributedString.Guts._constrainedAttributes(at:with:)(v41, v42, &v310, v279, v281);
    outlined destroy of AttributedString._AttributeValue(&v310);

    if (v41)
    {
      *(v32 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      v43 = __OFADD__(v277++, 1);
      if (v43)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_29:
  v44 = v277;
  if (!v277)
  {
    v45 = MEMORY[0x1E69E7CC8];
    goto LABEL_33;
  }

  if (v277 == *(v5 + 16))
  {

    v45 = v5;
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
  v45 = static _DictionaryStorage.allocate(capacity:)();
  v238 = 0;
  v8 = *v32;
  i = v45 + 64;
  v280 = v45;
  while (v8)
  {
    v277 = v44;
    v242 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_329:
    v245 = v242 | (v238 << 6);
    v246 = (*(v5 + 48) + 16 * v245);
    v6 = *v246;
    v247 = v246[1];
    outlined init with copy of AttributedString._AttributeValue(*(v5 + 56) + 72 * v245, &v310);
    v307 = v312;
    v308 = v313;
    v309 = v314;
    v305 = v310;
    v306 = v311;
    v248 = v280;
    Hasher.init(_seed:)();

    String.hash(into:)();
    v249 = Hasher._finalize()();
    v250 = -1 << *(v248 + 32);
    v251 = v249 & ~v250;
    v252 = v251 >> 6;
    if (((-1 << v251) & ~*(i + 8 * (v251 >> 6))) == 0)
    {
      v253 = 0;
      v254 = (63 - v250) >> 6;
      while (++v252 != v254 || (v253 & 1) == 0)
      {
        v255 = v252 == v254;
        if (v252 == v254)
        {
          v252 = 0;
        }

        v253 |= v255;
        v256 = *(i + 8 * v252);
        if (v256 != -1)
        {
          v239 = __clz(__rbit64(~v256)) + (v252 << 6);
          goto LABEL_321;
        }
      }

      goto LABEL_359;
    }

    v239 = __clz(__rbit64((-1 << v251) & ~*(i + 8 * (v251 >> 6)))) | v251 & 0x7FFFFFFFFFFFFFC0;
LABEL_321:
    *(i + ((v239 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v239;
    v45 = v280;
    v240 = (*(v280 + 48) + 16 * v239);
    *v240 = v6;
    v240[1] = v247;
    v241 = *(v45 + 56) + 72 * v239;
    *(v241 + 16) = v306;
    *(v241 + 32) = v307;
    *(v241 + 48) = v308;
    *(v241 + 64) = v309;
    *v241 = v305;
    ++*(v45 + 16);
    v44 = v277 - 1;
    if (v277 == 1)
    {
      goto LABEL_33;
    }
  }

  v243 = v238;
  while (1)
  {
    v238 = v243 + 1;
    if (__OFADD__(v243, 1))
    {
      goto LABEL_355;
    }

    if (v238 >= v273)
    {
      break;
    }

    v244 = v32[v238];
    ++v243;
    if (v244)
    {
      v277 = v44;
      v242 = __clz(__rbit64(v244));
      v8 = (v244 - 1) & v244;
      goto LABEL_329;
    }
  }

LABEL_33:
  while (1)
  {

    v46 = v278[9];
    v8 = v278[10];
    v47 = v278[11];
    v5 = v278[12];
    swift_unknownObjectRetain();
    if (specialized Rope.find<A>(at:in:preferEnd:)(v272, 0, v46, v8, v47, v5) == v5)
    {
      break;
    }

    __break(1u);
LABEL_373:
    __break(1u);
LABEL_374:
    v185 = swift_slowAlloc();

    v260 = v8;
    v261 = v265;
    _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16AttributedStringV15_AttributeValueVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk4V15_lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v185, v260, v5, thunk for @callee_guaranteed (@guaranteed String, @in_guaranteed AttributedString._AttributeValue) -> (@unowned Bool, @error @owned Error)partial apply);
    v265 = v261;
    if (v261)
    {
      goto LABEL_393;
    }

    v45 = v262;

    MEMORY[0x1865D2690](v185, -1, -1);
  }

  v51 = v48;
  v52 = v50;
  v6 = v45;
  v275 = v49;
  if (v46)
  {
    v271 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v5, v48, v49, v46, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    v271 = 0;
  }

  v53 = v272 - v52;
  if (__OFSUB__(v272, v52))
  {
    goto LABEL_373;
  }

  v276 = v6 + 64;
  v54 = v275;
  i = v270;
  v280 = v6;
  while (1)
  {
    v274 = v51;
    v275 = v54;
    v8 = v278[9];
    v56 = v278[10];
    v57 = v278[11];
    v58 = v278[12];
    swift_unknownObjectRetain();
    v59 = v272;
    v273 = v53;
    if (v272 == i)
    {
      if (specialized Rope.find<A>(at:in:preferEnd:)(v272, 0, v8, v56, v57, v58) != v58)
      {
        goto LABEL_356;
      }

      v63 = v62;
      if (v8)
      {
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v58, v60, v61, v8, v56);
        swift_unknownObjectRelease();
      }

      v57 = v59 - v63;
      if (__OFSUB__(v59, v63))
      {
        goto LABEL_357;
      }

      v53 = v273;
    }

    else
    {
      specialized Rope._endPath.getter(v8);
      if (v8)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v57 = 0;
      }
    }

    v64 = v274;
    if (v53 >= v57)
    {
    }

    v65 = v278;
    v67 = v278[9];
    v66 = v278[10];
    v68 = v278[11];
    v69 = v278[12];
    swift_unknownObjectRetain();
    i = v275;
    specialized Rope.subscript.getter(v5, v64, v275, v67, v66, v68, v69);
    v71 = v70;
    v73 = v72;
    swift_unknownObjectRelease();
    v74 = v65[9];
    v75 = v65[10];
    v76 = v65[11];
    v77 = v65[12];
    swift_unknownObjectRetain();
    v78 = specialized Rope.subscript.getter(v5, v274, i, v74, v75, v76, v77);
    v6 = v79;
    swift_unknownObjectRelease();
    v8 = v273;

    v80 = v8 + v78;
    if (__OFADD__(v8, v78))
    {
      goto LABEL_349;
    }

    *&v282 = v71;
    *(&v282 + 1) = v73;
    if (v8 >= v270)
    {
      v81 = v270;
    }

    else
    {
      v81 = v8;
    }

    if (v8 >= v272)
    {
      v82 = v81;
    }

    else
    {
      v82 = v272;
    }

    if (v80 <= v272)
    {
      v83 = v272;
    }

    else
    {
      v83 = v8 + v78;
    }

    if (v80 > v270)
    {
      v83 = v270;
    }

    if (v82 == v83)
    {
      goto LABEL_350;
    }

    v277 = v5;
    if (v82 != v8 || v83 != v80)
    {
      v266 = v83;
      v267 = v82;
      v109 = v71;
      v110 = v71 + 64;
      v111 = 1 << *(v71 + 32);
      if (v111 < 64)
      {
        v112 = ~(-1 << v111);
      }

      else
      {
        v112 = -1;
      }

      v5 = v112 & *(v71 + 64);
      v113 = (v111 + 63) >> 6;

      LODWORD(v268) = 0;
      i = 0;
      while (1)
      {
        while (1)
        {
          v6 = v280;
LABEL_115:
          if (v5)
          {
            goto LABEL_120;
          }

          do
          {
            v114 = i + 1;
            if (__OFADD__(i, 1))
            {
              __break(1u);
LABEL_343:
              __break(1u);
              goto LABEL_344;
            }

            if (v114 >= v113)
            {

              v131 = 1 << *(v6 + 32);
              if (v131 < 64)
              {
                v132 = ~(-1 << v131);
              }

              else
              {
                v132 = -1;
              }

              v133 = v132 & *(v6 + 64);
              v134 = (v131 + 63) >> 6;

              v5 = 0;
              for (i = v268; ; i = 1)
              {
LABEL_156:
                if (!v133)
                {
                  while (1)
                  {
                    v135 = v5 + 1;
                    if (__OFADD__(v5, 1))
                    {
                      break;
                    }

                    if (v135 >= v134)
                    {

                      if ((i & 1) == 0)
                      {
                        v182 = v273;
                        v180 = v274;
                        v5 = v277;
                        goto LABEL_284;
                      }

                      v174 = v273;
                      if (__OFSUB__(v266, v267))
                      {
                        goto LABEL_360;
                      }

                      specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v267, v266, v266 - v267, v282, *(&v282 + 1));
                      v175 = v278[9];
                      v8 = v278[10];
                      v176 = v278[11];
                      v5 = v278[12];
                      swift_unknownObjectRetain();
                      if (specialized Rope.find<A>(at:in:preferEnd:)(v174, 0, v175, v8, v176, v5) != v5)
                      {
                        goto LABEL_361;
                      }

                      v180 = v177;
                      v181 = v179;
                      v275 = v178;
                      if (v175)
                      {
                        v271 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v5, v177, v178, v175, v8);
                        swift_unknownObjectRelease();
                        v43 = __OFSUB__(v174, v181);
                        v182 = v174 - v181;
                        if (v43)
                        {
                          goto LABEL_364;
                        }
                      }

                      else
                      {
                        v271 = 0;
                        v43 = __OFSUB__(v174, v179);
                        v182 = v174 - v179;
                        if (v43)
                        {
                          goto LABEL_364;
                        }
                      }

                      goto LABEL_284;
                    }

                    v133 = *(v276 + 8 * v135);
                    ++v5;
                    if (v133)
                    {
                      v5 = v135;
                      goto LABEL_161;
                    }
                  }

LABEL_344:
                  __break(1u);
LABEL_345:
                  __break(1u);
LABEL_346:
                  __break(1u);
                  goto LABEL_347;
                }

LABEL_161:
                v136 = __clz(__rbit64(v133));
                v133 &= v133 - 1;
                v137 = (*(v6 + 48) + ((v5 << 10) | (16 * v136)));
                v138 = *v137;
                v8 = v137[1];
                v139 = *(v6 + 16);

                if (!v139)
                {
                  break;
                }

                v140 = specialized __RawDictionaryStorage.find<A>(_:)(v138, v8);
                if ((v141 & 1) == 0)
                {
                  break;
                }

                outlined init with copy of AttributedString._AttributeValue(*(v6 + 56) + 72 * v140, &v310);
                v142 = *(&v312 + 1);
                v143 = v313;
                outlined copy of AttributedString.AttributeRunBoundaries?(*(&v312 + 1), v313);
                outlined destroy of AttributedString._AttributeValue(&v310);
                if (v143 == 1)
                {
                  goto LABEL_172;
                }

                v144 = v281;
                if (v281 == 1)
                {
                  goto LABEL_174;
                }

                if (v143)
                {
                  if (!v281)
                  {
                    outlined copy of AttributedString.AttributeRunBoundaries?(v142, v143);

                    outlined consume of AttributedString.AttributeRunBoundaries?(v142, v143);
                    goto LABEL_156;
                  }

                  if (v142 == v279 && v143 == v281)
                  {
                    v151 = v281;

                    v142 = v279;
                    outlined copy of AttributedString.AttributeRunBoundaries?(v279, v151);

                    v143 = v151;
                  }

                  else
                  {
                    LODWORD(v268) = _stringCompareWithSmolCheck(_:_:expecting:)();

                    outlined copy of AttributedString.AttributeRunBoundaries?(v142, v143);

                    if ((v268 & 1) == 0)
                    {

                      outlined consume of AttributedString.AttributeRunBoundaries?(v142, v143);
                      v6 = v280;
                      goto LABEL_156;
                    }
                  }

                  v6 = v280;
                  v147 = v142;
                  v148 = v143;
                  goto LABEL_178;
                }

                v146 = v281;

                outlined consume of AttributedString.AttributeRunBoundaries?(v142, 0);
                if (v146)
                {

                  goto LABEL_156;
                }

LABEL_179:
                if (*(v6 + 16) && (v149 = specialized __RawDictionaryStorage.find<A>(_:)(v138, v8), (v150 & 1) != 0))
                {
                  outlined init with copy of AttributedString._AttributeValue(*(v6 + 56) + 72 * v149, &v310);
                }

                else
                {
                  v314 = 0;
                  v312 = 0u;
                  v313 = 0u;
                  v310 = 0u;
                  v311 = 0u;
                }

                outlined init with copy of FloatingPointRoundingRule?(&v310, &v305, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                if (*(&v306 + 1))
                {
                  v302 = v307;
                  v303 = v308;
                  v304 = v309;
                  v300 = v305;
                  v301 = v306;
                  outlined init with copy of AttributedString._AttributeValue(&v300, v299);
                  specialized Dictionary.updateValue(_:forKey:)(v299, v138, v8, &v305);
                  outlined destroy of AttributedString._AttributeValue(&v300);
                }

                else
                {
                  outlined destroy of TermOfAddress?(&v305, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                  specialized Dictionary.removeValue(forKey:)(v138, v8, &v305);
                }

                AttributedString._AttributeStorage._attributeModified(_:old:new:)(v138, v8, &v305, &v310);

                outlined destroy of TermOfAddress?(&v305, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                outlined destroy of TermOfAddress?(&v310, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              }

              v142 = 0;
LABEL_172:
              v144 = v281;
              if (v281 != 1)
              {
                v143 = 1;
LABEL_174:
                v145 = v144;

                outlined consume of AttributedString.AttributeRunBoundaries?(v142, v143);
                outlined consume of AttributedString.AttributeRunBoundaries?(v279, v145);
                goto LABEL_156;
              }

              v147 = v142;
              v148 = 1;
LABEL_178:
              outlined consume of AttributedString.AttributeRunBoundaries?(v147, v148);
              goto LABEL_179;
            }

            v5 = *(v110 + 8 * v114);
            ++i;
          }

          while (!v5);
          i = v114;
LABEL_120:
          v115 = __clz(__rbit64(v5));
          v5 &= v5 - 1;
          v116 = (*(v109 + 48) + ((i << 10) | (16 * v115)));
          v117 = *v116;
          v8 = v116[1];
          v118 = v282;
          if (*(v282 + 16))
          {
            break;
          }

          v314 = 0;
          v312 = 0u;
          v313 = 0u;
          v310 = 0u;
          v311 = 0u;

LABEL_132:
          outlined destroy of TermOfAddress?(&v310, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          v121 = 0;
LABEL_133:
          v123 = v281;
          if (v281 == 1)
          {

            v124 = v121;
            v125 = 1;
            goto LABEL_135;
          }

          v122 = 1;
LABEL_148:
          v130 = v123;

          outlined consume of AttributedString.AttributeRunBoundaries?(v121, v122);
          outlined consume of AttributedString.AttributeRunBoundaries?(v279, v130);
        }

        v119 = specialized __RawDictionaryStorage.find<A>(_:)(v117, v8);
        if ((v120 & 1) == 0)
        {
          v314 = 0;
          v312 = 0u;
          v313 = 0u;
          v310 = 0u;
          v311 = 0u;
          goto LABEL_132;
        }

        outlined init with copy of AttributedString._AttributeValue(*(v118 + 56) + 72 * v119, &v310);
        if (!*(&v311 + 1))
        {
          goto LABEL_132;
        }

        outlined init with copy of AttributedString._AttributeValue(&v310, &v305);
        outlined destroy of TermOfAddress?(&v310, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v121 = *(&v307 + 1);
        v122 = v308;
        outlined copy of AttributedString.AttributeRunBoundaries?(*(&v307 + 1), v308);
        outlined destroy of AttributedString._AttributeValue(&v305);
        if (v122 == 1)
        {
          goto LABEL_133;
        }

        v123 = v281;
        if (v281 == 1)
        {
          goto LABEL_148;
        }

        if (v122)
        {
          if (v281)
          {
            if (v121 == v279 && v122 == v281)
            {

              outlined copy of AttributedString.AttributeRunBoundaries?(v279, v281);

              goto LABEL_146;
            }

            HIDWORD(v264) = _stringCompareWithSmolCheck(_:_:expecting:)();

            outlined copy of AttributedString.AttributeRunBoundaries?(v121, v122);

            if ((v264 & 0x100000000) == 0)
            {
              goto LABEL_151;
            }

LABEL_146:
            v124 = v121;
            v125 = v122;
LABEL_135:
            outlined consume of AttributedString.AttributeRunBoundaries?(v124, v125);
LABEL_136:
            v6 = v280;
            if (*(v280 + 16) && (v126 = specialized __RawDictionaryStorage.find<A>(_:)(v117, v8), (v127 & 1) != 0))
            {
              v128 = v126;

              outlined init with copy of AttributedString._AttributeValue(*(v6 + 56) + 72 * v128, &v310);
              outlined destroy of TermOfAddress?(&v310, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            }

            else
            {
              v314 = 0;
              v312 = 0u;
              v313 = 0u;
              v310 = 0u;
              v311 = 0u;
              outlined destroy of TermOfAddress?(&v310, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              v314 = 0;
              v312 = 0u;
              v313 = 0u;
              v310 = 0u;
              v311 = 0u;
              outlined init with copy of FloatingPointRoundingRule?(&v310, &v305, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              if (*(&v306 + 1))
              {
                v302 = v307;
                v303 = v308;
                v304 = v309;
                v300 = v305;
                v301 = v306;
                outlined init with copy of AttributedString._AttributeValue(&v300, v299);
                specialized Dictionary.updateValue(_:forKey:)(v299, v117, v8, &v305);
                outlined destroy of AttributedString._AttributeValue(&v300);
              }

              else
              {
                outlined destroy of TermOfAddress?(&v305, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
                specialized Dictionary.removeValue(forKey:)(v117, v8, &v305);
              }

              AttributedString._AttributeStorage._attributeModified(_:old:new:)(v117, v8, &v305, &v310);

              v8 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
              outlined destroy of TermOfAddress?(&v305, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of TermOfAddress?(&v310, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              LODWORD(v268) = 1;
            }

            goto LABEL_115;
          }

          outlined copy of AttributedString.AttributeRunBoundaries?(v121, v122);

LABEL_151:

          outlined consume of AttributedString.AttributeRunBoundaries?(v121, v122);
        }

        else
        {
          v129 = v281;

          outlined consume of AttributedString.AttributeRunBoundaries?(v121, 0);
          if (!v129)
          {
            goto LABEL_136;
          }
        }
      }
    }

    v84 = v278;
    if (v5 != v278[12])
    {
      goto LABEL_358;
    }

    v8 = v269;
    if (!*v269)
    {
      goto LABEL_383;
    }

    specialized Rope._Node._prepareModify(at:)(v274, &v283);
    v298 = v284;
    v310 = v283;
    v311 = v284;
    v312 = v285;
    outlined destroy of TermOfAddress?(&v298, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd);
    outlined destroy of TermOfAddress?(&v298 + 8, &_sShySSGMd);
    v311 = MEMORY[0x1E69E7CC8];
    v268 = v5 + 1;
    v84[12] = v5 + 1;
    if (!v84[9])
    {
      goto LABEL_384;
    }

    specialized Rope._Node._finalizeModify(_:)(&v305, &v310);

    v85 = v71;
    v86 = v71 + 64;
    v87 = 1 << *(v71 + 32);
    v88 = v87 < 64 ? ~(-1 << v87) : -1;
    i = v88 & *(v71 + 64);
    v89 = (v87 + 63) >> 6;

    LODWORD(v275) = 0;
    v6 = 0;
    while (i)
    {
LABEL_78:
      v91 = __clz(__rbit64(i));
      i &= i - 1;
      v92 = (*(v85 + 48) + ((v6 << 10) | (16 * v91)));
      v8 = *v92;
      v93 = v92[1];
      v94 = v282;
      if (!*(v282 + 16))
      {
        v314 = 0;
        v312 = 0u;
        v313 = 0u;
        v310 = 0u;
        v311 = 0u;

LABEL_90:
        outlined destroy of TermOfAddress?(&v310, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v97 = 0;
LABEL_91:
        v99 = v281;
        if (v281 == 1)
        {

          v100 = v97;
          v101 = 1;
          goto LABEL_93;
        }

        v98 = 1;
LABEL_98:
        v8 = v99;

        outlined consume of AttributedString.AttributeRunBoundaries?(v97, v98);
        v106 = v279;
        v107 = v8;
        goto LABEL_99;
      }

      v95 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v93);
      if ((v96 & 1) == 0)
      {
        v314 = 0;
        v312 = 0u;
        v313 = 0u;
        v310 = 0u;
        v311 = 0u;
        goto LABEL_90;
      }

      outlined init with copy of AttributedString._AttributeValue(*(v94 + 56) + 72 * v95, &v310);
      if (!*(&v311 + 1))
      {
        goto LABEL_90;
      }

      outlined init with copy of AttributedString._AttributeValue(&v310, &v305);
      outlined destroy of TermOfAddress?(&v310, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v97 = *(&v307 + 1);
      v98 = v308;
      outlined copy of AttributedString.AttributeRunBoundaries?(*(&v307 + 1), v308);
      outlined destroy of AttributedString._AttributeValue(&v305);
      if (v98 == 1)
      {
        goto LABEL_91;
      }

      v99 = v281;
      if (v281 == 1)
      {
        goto LABEL_98;
      }

      if (v98)
      {
        if (v281)
        {
          if (v97 == v279 && v98 == v281)
          {

            outlined copy of AttributedString.AttributeRunBoundaries?(v279, v281);

LABEL_108:
            v100 = v97;
            v101 = v98;
LABEL_93:
            outlined consume of AttributedString.AttributeRunBoundaries?(v100, v101);
            goto LABEL_94;
          }

          LODWORD(v267) = _stringCompareWithSmolCheck(_:_:expecting:)();

          outlined copy of AttributedString.AttributeRunBoundaries?(v97, v98);

          if (v267)
          {
            goto LABEL_108;
          }
        }

        else
        {
          outlined copy of AttributedString.AttributeRunBoundaries?(v97, v98);
        }

        v106 = v97;
        v107 = v98;
LABEL_99:
        outlined consume of AttributedString.AttributeRunBoundaries?(v106, v107);
        v5 = v277;
      }

      else
      {
        v108 = v281;

        outlined consume of AttributedString.AttributeRunBoundaries?(v97, 0);
        if (v108)
        {

          v5 = v277;
        }

        else
        {
LABEL_94:
          v102 = v280;
          if (*(v280 + 16) && (v103 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v93), (v104 & 1) != 0))
          {
            v105 = v103;

            outlined init with copy of AttributedString._AttributeValue(*(v102 + 56) + 72 * v105, &v310);
            outlined destroy of TermOfAddress?(&v310, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            v5 = v277;
          }

          else
          {
            v314 = 0;
            v312 = 0u;
            v313 = 0u;
            v310 = 0u;
            v311 = 0u;
            outlined destroy of TermOfAddress?(&v310, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            v314 = 0;
            v312 = 0u;
            v313 = 0u;
            v310 = 0u;
            v311 = 0u;
            outlined init with copy of FloatingPointRoundingRule?(&v310, &v305, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            if (*(&v306 + 1))
            {
              v302 = v307;
              v303 = v308;
              v304 = v309;
              v300 = v305;
              v301 = v306;
              outlined init with copy of AttributedString._AttributeValue(&v300, v299);
              specialized Dictionary.updateValue(_:forKey:)(v299, v8, v93, &v305);
              outlined destroy of AttributedString._AttributeValue(&v300);
            }

            else
            {
              outlined destroy of TermOfAddress?(&v305, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              specialized Dictionary.removeValue(forKey:)(v8, v93, &v305);
            }

            AttributedString._AttributeStorage._attributeModified(_:old:new:)(v8, v93, &v305, &v310);

            outlined destroy of TermOfAddress?(&v305, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            outlined destroy of TermOfAddress?(&v310, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            LODWORD(v275) = 1;
            v5 = v277;
          }
        }
      }
    }

    while (1)
    {
      v90 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_343;
      }

      if (v90 >= v89)
      {
        break;
      }

      i = *(v86 + 8 * v90);
      ++v6;
      if (i)
      {
        v6 = v90;
        goto LABEL_78;
      }
    }

    v152 = 1 << *(v280 + 32);
    if (v152 < 64)
    {
      v153 = ~(-1 << v152);
    }

    else
    {
      v153 = -1;
    }

    v6 = v153 & *(v280 + 64);
    v154 = (v152 + 63) >> 6;

    v155 = 0;
    i = v275;
    while (2)
    {
      if (v6)
      {
LABEL_199:
        v157 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v158 = v280;
        v159 = (*(v280 + 48) + ((v155 << 10) | (16 * v157)));
        v160 = *v159;
        v8 = v159[1];
        v161 = *(v280 + 16);

        if (v161 && (v162 = specialized __RawDictionaryStorage.find<A>(_:)(v160, v8), (v163 & 1) != 0))
        {
          outlined init with copy of AttributedString._AttributeValue(*(v158 + 56) + 72 * v162, &v310);
          v164 = *(&v312 + 1);
          v165 = v313;
          outlined copy of AttributedString.AttributeRunBoundaries?(*(&v312 + 1), v313);
          outlined destroy of AttributedString._AttributeValue(&v310);
          if (v165 != 1)
          {
            v166 = v281;
            if (v281 == 1)
            {
              goto LABEL_212;
            }

            if (!v165)
            {

              outlined consume of AttributedString.AttributeRunBoundaries?(v164, 0);
              if (v166)
              {

                v5 = v277;
                continue;
              }

              goto LABEL_218;
            }

            if (!v281)
            {
              outlined copy of AttributedString.AttributeRunBoundaries?(v164, v165);

LABEL_225:

              v167 = v164;
              v168 = v165;
LABEL_213:
              outlined consume of AttributedString.AttributeRunBoundaries?(v167, v168);
              v5 = v277;
              continue;
            }

            if (v164 == v279 && v165 == v281)
            {

              v164 = v279;
              outlined copy of AttributedString.AttributeRunBoundaries?(v279, v166);

              v165 = v166;
            }

            else
            {
              LODWORD(v275) = _stringCompareWithSmolCheck(_:_:expecting:)();

              outlined copy of AttributedString.AttributeRunBoundaries?(v164, v165);

              if ((v275 & 1) == 0)
              {
                goto LABEL_225;
              }
            }

            v169 = v164;
            v170 = v165;
LABEL_217:
            outlined consume of AttributedString.AttributeRunBoundaries?(v169, v170);
LABEL_218:
            v171 = v280;
            if (*(v280 + 16) && (v172 = specialized __RawDictionaryStorage.find<A>(_:)(v160, v8), (v173 & 1) != 0))
            {
              outlined init with copy of AttributedString._AttributeValue(*(v171 + 56) + 72 * v172, &v310);
            }

            else
            {
              v314 = 0;
              v312 = 0u;
              v313 = 0u;
              v310 = 0u;
              v311 = 0u;
            }

            outlined init with copy of FloatingPointRoundingRule?(&v310, &v305, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            if (*(&v306 + 1))
            {
              v302 = v307;
              v303 = v308;
              v304 = v309;
              v300 = v305;
              v301 = v306;
              outlined init with copy of AttributedString._AttributeValue(&v300, v299);
              specialized Dictionary.updateValue(_:forKey:)(v299, v160, v8, &v305);
              outlined destroy of AttributedString._AttributeValue(&v300);
            }

            else
            {
              outlined destroy of TermOfAddress?(&v305, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              specialized Dictionary.removeValue(forKey:)(v160, v8, &v305);
            }

            AttributedString._AttributeStorage._attributeModified(_:old:new:)(v160, v8, &v305, &v310);

            outlined destroy of TermOfAddress?(&v305, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            outlined destroy of TermOfAddress?(&v310, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            i = 1;
            v5 = v277;
            continue;
          }
        }

        else
        {
          v164 = 0;
        }

        v166 = v281;
        if (v281 != 1)
        {
          v165 = 1;
LABEL_212:

          outlined consume of AttributedString.AttributeRunBoundaries?(v164, v165);
          v167 = v279;
          v168 = v166;
          goto LABEL_213;
        }

        v169 = v164;
        v170 = 1;
        goto LABEL_217;
      }

      break;
    }

    while (1)
    {
      v156 = v155 + 1;
      if (__OFADD__(v155, 1))
      {
        goto LABEL_345;
      }

      if (v156 >= v154)
      {
        break;
      }

      v6 = *(v276 + 8 * v156);
      ++v155;
      if (v6)
      {
        v155 = v156;
        goto LABEL_199;
      }
    }

    v6 = v280;

    if ((i & 1) == 0)
    {
      v182 = v273;
      v180 = v274;
      if (v268 != v278[12])
      {
        goto LABEL_363;
      }

      if (!*v269)
      {
        goto LABEL_387;
      }

      specialized Rope._Node._prepareModify(at:)(v274, &v292);
      v297 = v293;
      v310 = v292;
      v311 = v293;
      v312 = v294;
      v191 = v282;

      outlined destroy of TermOfAddress?(&v297, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd);
      outlined destroy of TermOfAddress?(&v297 + 8, &_sShySSGMd);
      v311 = v191;
      v5 += 2;
      v192 = v278;
      v278[12] = v5;
      if (!v192[9])
      {
        goto LABEL_385;
      }

      v275 = specialized Rope._Node._finalizeModify(_:)(&v305, &v310);

      goto LABEL_284;
    }

    v8 = v269;
    v183 = v274;
    if (v268 != v278[12])
    {
      goto LABEL_362;
    }

    if (!*v269)
    {
      goto LABEL_386;
    }

    specialized Rope._Node._prepareModify(at:)(v274, &v286);
    v295 = v287;
    v296 = v288;
    outlined destroy of TermOfAddress?(&v295, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd);
    outlined destroy of TermOfAddress?(&v296, &_sShySSGMd);
    v310 = v286;
    v312 = v289;
    v184 = v282;
    v311 = v282;
    v5 += 2;
    i = v278;
    v278[12] = v5;
    if (!*(i + 72))
    {
      goto LABEL_388;
    }

    v277 = *(&v184 + 1);

    v185 = specialized Rope._Node._finalizeModify(_:)(&v300, &v310);

    v186 = *(i + 72);
    v187 = *(i + 80);
    v188 = *(i + 88);
    v6 = *(i + 96);
    *&v310 = v5;
    *(&v310 + 1) = v183;
    v275 = v185;
    *&v311 = v185;
    swift_unknownObjectRetain();
    specialized Rope.formIndex(after:)(&v310, v186, v187, v188, v6);
    swift_unknownObjectRelease();
    v189 = v310;
    v8 = v311;
    if (*(&v189 + 1) >= specialized Rope._endPath.getter(*(i + 72)))
    {
      v6 = v280;
      v182 = v273;
      v180 = v274;
      v193 = *v269;
      if (!*v269)
      {
        goto LABEL_268;
      }

      goto LABEL_267;
    }

    v182 = v273;
    if (v189 != v278[12])
    {
      goto LABEL_368;
    }

    if (v8)
    {
      v190 = *(v8 + 24 * ((*(&v189 + 1) >> ((4 * *(v8 + 18) + 8) & 0x3C)) & 0xFLL) + 40);
    }

    else
    {
      specialized Rope._Node.subscript.getter(*(&v189 + 1), v278[9]);
      v190 = v194;
    }

    v6 = v280;
    v180 = v274;
    if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(*(&v184 + 1), v184) & 1) == 0)
    {

      v193 = *v269;
      if (!*v269)
      {
        goto LABEL_268;
      }

      goto LABEL_267;
    }

    v195 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v190, v277);

    if (v195)
    {
      break;
    }

    v182 = v273;
    v193 = *v269;
    if (*v269)
    {
      goto LABEL_267;
    }

LABEL_268:
    if (v193 < v180)
    {
      v201 = v278;
      v202 = v278[9];
      v203 = v278[10];
      v204 = v278[11];
      v205 = v278[12];
      *&v310 = v5;
      *(&v310 + 1) = v180;
      *&v311 = v275;
      swift_unknownObjectRetain();
      specialized Rope.formIndex(before:)(&v310, v202, v203, v204, v205);
      swift_unknownObjectRelease();
      specialized Rope.subscript.getter(v310, *(&v310 + 1), v311, v201[9], v201[10], v201[11], v201[12]);
      v207 = v206;
      if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v208, v184))
      {
        v209 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v207, v277);

        v6 = v280;
        v182 = v273;
        if (v209)
        {
          v210 = specialized Rope._remove(at:)(&v310, v5, v180);
          v211 = v278[12];
          if (v210 >= specialized Rope._endPath.getter(v278[9]))
          {
            v212 = 0;
          }

          else
          {
            v212 = specialized Rope._Node.unmanagedLeaf(at:)(v210, v278[9]);
          }

          *&v305 = v211;
          *(&v305 + 1) = v210;
          *&v306 = v212;
          v213 = v310;

          v214 = v278;
          v215 = v278[9];
          v216 = v278[10];
          v185 = v278[11];
          v217 = v278[12];
          swift_unknownObjectRetain();
          specialized Rope.formIndex(before:)(&v305, v215, v216, v185, v217);
          swift_unknownObjectRelease();
          v218 = v305;
          if (v305 != v214[12])
          {
            __break(1u);
            goto LABEL_377;
          }

          if (!*v269)
          {
            __break(1u);
            goto LABEL_390;
          }

          v185 = *(&v305 + 1);
          specialized Rope._Node._prepareModify(at:)(*(&v305 + 1), v291);
          v310 = v291[0];
          v311 = v291[1];
          v312 = v291[2];
          v43 = __OFSUB__(v182, *(&v291[0] + 1));
          v182 -= *(&v291[0] + 1);
          if (v43)
          {
            goto LABEL_378;
          }

          if (__OFADD__(*(&v291[0] + 1), v213))
          {
            goto LABEL_380;
          }

          *(&v310 + 1) = *(&v291[0] + 1) + v213;
          v5 = v218 + 1;
          v219 = v278;
          v278[12] = v218 + 1;
          if (!v219[9])
          {
            goto LABEL_392;
          }

          v275 = specialized Rope._Node._finalizeModify(_:)(&v300, &v310);

          if (__OFSUB__(v271, 1))
          {
            goto LABEL_381;
          }

          v180 = v185;
          --v271;
        }
      }

      else
      {

        v6 = v280;
        v182 = v273;
      }
    }

LABEL_284:

    v220 = v278[9];
    v8 = v278[10];
    v221 = v278[12];
    *&v310 = v5;
    *(&v310 + 1) = v180;
    *&v311 = v275;
    if (__OFADD__(v271, 1))
    {
      goto LABEL_351;
    }

    if (v5 != v221)
    {
      goto LABEL_352;
    }

    ++v271;
    if (v275)
    {
      v222 = *(v275 + 24 * ((v180 >> ((4 * *(v275 + 18) + 8) & 0x3C)) & 0xF) + 24);
      swift_unknownObjectRetain();
      v43 = __OFADD__(v182, v222);
      v53 = v182 + v222;
      if (v43)
      {
        goto LABEL_353;
      }
    }

    else
    {
      swift_unknownObjectRetain();
      v223 = specialized Rope._Node.subscript.getter(v180, v220);
      i = v6;

      v43 = __OFADD__(v182, v223);
      v53 = v182 + v223;
      if (v43)
      {
        goto LABEL_353;
      }
    }

    if (v180 >= specialized Rope._endPath.getter(v220))
    {
      goto LABEL_354;
    }

    if (v275 && specialized closure #1 in Rope.formIndex(after:)((v275 + 16), &v310) || (specialized Rope._Node.formSuccessor(of:)(&v310, v220) & 1) != 0)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v224 = specialized Rope._endPath.getter(v220);
      swift_unknownObjectRelease();
      *&v310 = v5;
      *(&v310 + 1) = v224;
      *&v311 = 0;
    }

    v51 = *(&v310 + 1);
    v5 = v310;
    v54 = v311;
    i = v270;
    if (v53 >= v270)
    {
      v225 = v278[9];
      v8 = v278[10];
      v226 = v278[11];
      v5 = v278[12];
      swift_unknownObjectRetain();
      if (v272 == i)
      {
        if (specialized Rope.find<A>(at:in:preferEnd:)(v272, 0, v225, v8, v226, v5) != v5)
        {
          goto LABEL_365;
        }

        v51 = v227;
        v229 = v228;
        if (v225)
        {
          v55 = v54;
          v271 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v5, v227, v54, v225, v8);
          swift_unknownObjectRelease();
          v54 = v55;
        }

        else
        {
          v271 = 0;
        }

        v53 = v272 - v229;
        i = v270;
        if (__OFSUB__(v272, v229))
        {
          goto LABEL_366;
        }
      }

      else
      {
        v51 = specialized Rope._endPath.getter(v225);
        v53 = 0;
        v271 = 0;
        v54 = 0;
        i = v270;
        if (v225)
        {
          swift_unknownObjectRelease();
          v54 = 0;
          v53 = v226;
          v271 = v8;
        }
      }
    }
  }

  v196 = specialized Rope._remove(at:)(&v310, v5, v180);
  v197 = v278[12];
  if (v196 < specialized Rope._endPath.getter(v278[9]))
  {
    specialized Rope._Node.unmanagedLeaf(at:)(v196, v278[9]);
  }

  v198 = v310;

  if (v197 != v278[12])
  {
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
    goto LABEL_382;
  }

  if (!*v269)
  {
    goto LABEL_391;
  }

  specialized Rope._Node._prepareModify(at:)(v196, v290);
  v310 = v290[0];
  v311 = v290[1];
  v312 = v290[2];
  v182 = v273;
  if (__OFADD__(*(&v290[0] + 1), v198))
  {
    goto LABEL_379;
  }

  *(&v310 + 1) = *(&v290[0] + 1) + v198;
  v5 = v197 + 1;
  v199 = v278;
  v278[12] = v5;
  if (v199[9])
  {
    v200 = v269;
    v275 = specialized Rope._Node._finalizeModify(_:)(&v300, &v310);

    v180 = v196;
    v193 = *v200;
    if (!*v200)
    {
      goto LABEL_268;
    }

LABEL_267:
    v193 = *(v193 + 18);
    goto LABEL_268;
  }

LABEL_390:
  __break(1u);
LABEL_391:
  __break(1u);
LABEL_392:
  __break(1u);
LABEL_393:

  result = MEMORY[0x1865D2690](v185, -1, -1);
  __break(1u);
  return result;
}

uint64_t closure #1 in AttributedString.Guts.enforceAttributeConstraintsBeforeMutation(to:)(unint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, char **a5, char *a6, uint64_t a7, void *a8)
{
  v8 = a5;
  v9 = a1;
  v215 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  v10 = *a5;
  v178 = a1;
  v179 = a6;
  v11 = a6;
  v180 = a7;
  v181 = a4;
  v156 = a8;
  v157 = a4;
  v182 = a8;
  v183 = a2;
  v155 = a2;
  v184 = a3;
  v12 = v10[32];
  v13 = v12 & 0x3F;
  v158 = ((1 << v12) + 63) >> 6;
  v14 = (8 * v158);

  if (v13 > 0xD)
  {
    goto LABEL_118;
  }

LABEL_2:
  v160 = &v155;
  v161 = v8;
  v8 = &v185;
  MEMORY[0x1EEE9AC00](v15);
  v164 = (&v155 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0));
  bzero(v164, v14);
  v172 = 0;
  v173 = v9;
  v16 = 0;
  v17 = v10 + 56;
  v18 = 1 << v10[32];
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(v10 + 7);
  v21 = (v18 + 63) >> 6;
  v14 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
  v174 = v10;
  v167 = v21;
  v9 = v11;
  v11 = v10;
  v165 = v10 + 56;
  v166 = v9;
  while (1)
  {
    while (1)
    {
      if (v20)
      {
        v10 = v9;
        v22 = __clz(__rbit64(v20));
        v23 = (v20 - 1) & v20;
        goto LABEL_16;
      }

      v24 = v16;
      do
      {
        v16 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:

          if (!swift_stdlib_isStackAllocationSafe())
          {
            v152 = swift_slowAlloc();

            _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySSG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_aB13VKXEfU_SS_TG5AHxSbs5Error_pRi_zRi0_zlySSIsgndzo_Tf1nc_n(v152, v158, v10, partial apply for closure #1 in closure #1 in AttributedString.Guts.enforceAttributeConstraintsBeforeMutation(to:));
            v154 = v153;
            swift_bridgeObjectRelease_n();
            MEMORY[0x1865D2690](v152, -1, -1);
            v11 = v154;
            goto LABEL_114;
          }

          goto LABEL_2;
        }

        if (v16 >= v21)
        {
          if (v172)
          {
            if (v172 == *(v11 + 2))
            {
              v8 = v161;
LABEL_114:
              *v8 = v11;
            }

            v10 = v11;
            v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
            v134 = static _SetStorage.allocate(capacity:)();
            v135 = 0;
            v136 = v164;
            v9 = *v164;
            v11 = (v134 + 56);
            do
            {
              if (v9)
              {
                v139 = __clz(__rbit64(v9));
                v9 &= v9 - 1;
              }

              else
              {
                v140 = v135;
                do
                {
                  v135 = v140 + 1;
                  if (__OFADD__(v140, 1))
                  {
                    goto LABEL_116;
                  }

                  if (v135 >= v158)
                  {
                    goto LABEL_112;
                  }

                  v141 = v136[v135];
                  ++v140;
                }

                while (!v141);
                v139 = __clz(__rbit64(v141));
                v9 = (v141 - 1) & v141;
              }

              v142 = *(v10 + 6) + 16 * (v139 | (v135 << 6));
              v10 = *v142;
              v8 = *(v142 + 8);
              Hasher.init(_seed:)();

              String.hash(into:)();
              v14 = &v195;
              v143 = Hasher._finalize()();
              v144 = -1 << *(v134 + 32);
              v145 = v143 & ~v144;
              v146 = v145 >> 6;
              if (((-1 << v145) & ~*&v11[8 * (v145 >> 6)]) != 0)
              {
                v137 = __clz(__rbit64((-1 << v145) & ~*&v11[8 * (v145 >> 6)])) | v145 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                v147 = 0;
                v148 = (63 - v144) >> 6;
                do
                {
                  if (++v146 == v148 && (v147 & 1) != 0)
                  {
                    goto LABEL_117;
                  }

                  v149 = v146 == v148;
                  if (v146 == v148)
                  {
                    v146 = 0;
                  }

                  v147 |= v149;
                  v150 = *&v11[8 * v146];
                }

                while (v150 == -1);
                v137 = __clz(__rbit64(~v150)) + (v146 << 6);
              }

              *&v11[(v137 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v137;
              v138 = (*(v134 + 48) + 16 * v137);
              *v138 = v10;
              v138[1] = v8;
              ++*(v134 + 16);
              --v172;
              v10 = v174;
              v136 = v164;
            }

            while (v172);
LABEL_112:
            v8 = v161;
          }

          else
          {
            v134 = MEMORY[0x1E69E7CD0];
            v8 = v161;
          }

          v11 = v134;
          goto LABEL_114;
        }

        v25 = *&v17[8 * v16];
        ++v24;
      }

      while (!v25);
      v10 = v9;
      v22 = __clz(__rbit64(v25));
      v23 = (v25 - 1) & v25;
LABEL_16:
      v26 = v22 | (v16 << 6);
      v27 = *(v11 + 6);
      v171 = v26;
      v28 = (v27 + 16 * v26);
      v30 = *v28;
      v29 = v28[1];
      v31 = *v173;
      v32 = *(*v173 + 16);
      v176 = v23;
      v177 = v29;
      v175 = v30;
      if (v32)
      {
        v33 = v29;

        v34 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v33);
        if (v35)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v31 + 56) + 72 * v34, &v210);
        }

        else
        {
          v214 = 0;
          v212 = 0u;
          v213 = 0u;
          v210 = 0u;
          v211 = 0u;
        }

        v14 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
      }

      else
      {
        v214 = 0;
        v212 = 0u;
        v213 = 0u;
        v210 = 0u;
        v211 = 0u;
      }

      v9 = v10;
      if (*(v10 + 2))
      {
        v36 = specialized __RawDictionaryStorage.find<A>(_:)(v175, v177);
        if (v37)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v10 + 7) + 72 * v36, &v205);
        }

        else
        {
          v209 = 0;
          v207 = 0u;
          v208 = 0u;
          v205 = 0u;
          v206 = 0u;
        }

        v14 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
      }

      else
      {
        v209 = 0;
        v207 = 0u;
        v208 = 0u;
        v205 = 0u;
        v206 = 0u;
      }

      outlined init with copy of FloatingPointRoundingRule?(&v210, &v195, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined init with copy of FloatingPointRoundingRule?(&v205, &v200, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (!*(&v196 + 1))
      {
        outlined destroy of TermOfAddress?(&v205, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v210, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (!*(&v201 + 1))
        {
          v159 = v31;
          outlined destroy of TermOfAddress?(&v195, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          v11 = v174;
          goto LABEL_36;
        }

        goto LABEL_7;
      }

      outlined init with copy of FloatingPointRoundingRule?(&v195, &v190, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (!*(&v201 + 1))
      {
        outlined destroy of TermOfAddress?(&v205, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v210, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v190);
LABEL_7:
        outlined destroy of TermOfAddress?(&v195, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
        v11 = v174;
        goto LABEL_8;
      }

      v159 = v31;
      v186 = v201;
      v187 = v202;
      v188 = v203;
      v189 = v204;
      v185 = v200;
      v38 = *(&v191 + 1);
      v163 = v192;
      v162 = __swift_project_boxed_opaque_existential_1(&v190, *(&v191 + 1));
      v39 = __swift_project_boxed_opaque_existential_1(&v185, *(&v186 + 1));
      v170 = &v155;
      v40 = *(v38 - 8);
      MEMORY[0x1EEE9AC00](v39);
      v42 = &v155 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      v169 = &v155;
      v44 = MEMORY[0x1EEE9AC00](v43);
      (*(v46 + 16))(&v155 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v44);
      v47 = type metadata accessor for Optional();
      v168 = &v155;
      v48 = *(v47 - 8);
      MEMORY[0x1EEE9AC00](v47);
      v10 = &v155 - v49;
      if (swift_dynamicCast())
      {
        break;
      }

      outlined destroy of TermOfAddress?(&v205, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of TermOfAddress?(&v210, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v51 = v38;
      v14 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
      (*(v40 + 56))(v10, 1, 1, v51);
      (*(v48 + 8))(v10, v47);
      outlined destroy of AttributedString._AttributeValue(&v185);
      outlined destroy of AttributedString._AttributeValue(&v190);
      outlined destroy of TermOfAddress?(&v195, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v11 = v174;
      v17 = v165;
      v9 = v166;
      v8 = &v185;
      v21 = v167;
LABEL_8:

      v20 = v176;
    }

    (*(v40 + 56))(v10, 0, 1, v38);
    (*(v40 + 32))(v42, v10, v38);
    v50 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v40 + 8))(v42, v38);
    v10 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
    outlined destroy of TermOfAddress?(&v205, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of TermOfAddress?(&v210, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of AttributedString._AttributeValue(&v185);
    outlined destroy of AttributedString._AttributeValue(&v190);
    v14 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
    outlined destroy of TermOfAddress?(&v195, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    v11 = v174;
    v17 = v165;
    v9 = v166;
    v8 = &v185;
    v21 = v167;
    if ((v50 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_36:
    *v157 = 1;
    v199 = 0;
    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0u;
    outlined init with copy of FloatingPointRoundingRule?(&v195, &v210, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    if (*(&v211 + 1))
    {
      break;
    }

    outlined destroy of TermOfAddress?(&v210, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    v55 = v175;
    v65 = specialized __RawDictionaryStorage.find<A>(_:)(v175, v177);
    if (v66)
    {
      v67 = v65;
      v68 = v173;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = *v68;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v55 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        v110 = v63;
        v111 = static _DictionaryStorage.copy(original:)();
        v63 = v111;
        v169 = v110;
        if (v110[2])
        {
          v112 = (v111 + 64);
          v113 = 1 << *(v63 + 32);
          v168 = v169 + 8;
          v114 = (v113 + 63) >> 6;
          if (v63 != v169 || v112 >= &v168[v114])
          {
            memmove(v112, v168, 8 * v114);
          }

          v115 = 0;
          v116 = v169;
          *(v63 + 16) = v169[2];
          v117 = 1 << *(v116 + 32);
          v118 = v116[8];
          if (v117 < 64)
          {
            v119 = ~(-1 << v117);
          }

          else
          {
            v119 = -1;
          }

          v170 = v119 & v118;
          v120 = (v117 + 63) >> 6;
          if ((v119 & v118) != 0)
          {
            do
            {
              v121 = __clz(__rbit64(v170));
              v170 &= v170 - 1;
LABEL_86:
              v124 = v121 | (v115 << 6);
              v125 = 16 * v124;
              v126 = (v169[6] + 16 * v124);
              v127 = *v126;
              v55 = v126[1];
              v128 = 72 * v124;
              outlined init with copy of AttributedString._AttributeValue(v169[7] + 72 * v124, &v210);
              v129 = (*(v63 + 48) + v125);
              *v129 = v127;
              v129[1] = v55;
              v130 = *(v63 + 56) + v128;
              *v130 = v210;
              v131 = v211;
              v132 = v212;
              v133 = v213;
              *(v130 + 64) = v214;
              *(v130 + 32) = v132;
              *(v130 + 48) = v133;
              *(v130 + 16) = v131;
            }

            while (v170);
          }

          v122 = v115;
          while (1)
          {
            v115 = v122 + 1;
            if (__OFADD__(v122, 1))
            {
              goto LABEL_124;
            }

            if (v115 >= v120)
            {
              break;
            }

            v123 = v168[v115];
            ++v122;
            if (v123)
            {
              v121 = __clz(__rbit64(v123));
              v170 = (v123 - 1) & v123;
              goto LABEL_86;
            }
          }
        }

        v11 = v174;
        v55 = v175;
        v17 = v165;
        v9 = v166;
        v8 = &v185;
      }

      v70 = *(v63 + 56) + 72 * v67;
      v210 = *v70;
      v72 = *(v70 + 32);
      v71 = *(v70 + 48);
      v73 = *(v70 + 64);
      v211 = *(v70 + 16);
      v212 = v72;
      v214 = v73;
      v213 = v71;
      specialized _NativeDictionary._delete(at:)(v67, v63);
      *v173 = v63;
      v21 = v167;
    }

    else
    {
      v214 = 0;
      v212 = 0u;
      v213 = 0u;
      v210 = 0u;
      v211 = 0u;
      v21 = v167;
    }

LABEL_69:
    AttributedString._AttributeStorage._attributeModified(_:old:new:)(v55, v177, &v210, &v195);
    v10 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
    v14 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
    outlined destroy of TermOfAddress?(&v195, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of TermOfAddress?(&v210, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);

    *v156 = v155;
    *(v164 + ((v171 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v171;
    v60 = __OFADD__(v172++, 1);
    v20 = v176;
    if (v60)
    {
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
    }
  }

  v207 = v212;
  v208 = v213;
  v209 = v214;
  v205 = v210;
  v206 = v211;
  outlined init with copy of AttributedString._AttributeValue(&v205, &v190);
  v52 = v173;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  *&v185 = *v52;
  v54 = v185;
  v55 = v175;
  v56 = specialized __RawDictionaryStorage.find<A>(_:)(v175, v177);
  v58 = *(v54 + 16);
  v59 = (v57 & 1) == 0;
  v60 = __OFADD__(v58, v59);
  v61 = v58 + v59;
  if (v60)
  {
    goto LABEL_121;
  }

  if (*(v54 + 24) >= v61)
  {
    if (v53)
    {
      v63 = v54;
LABEL_46:
      v11 = v174;
      v21 = v167;
      if (v57)
      {
LABEL_47:
        v74 = *(v63 + 56) + 72 * v56;
        v76 = *(v74 + 16);
        v75 = *(v74 + 32);
        v77 = *(v74 + 48);
        v214 = *(v74 + 64);
        v213 = v77;
        v210 = *v74;
        v211 = v76;
        v212 = v75;
        v78 = *(v63 + 56) + 72 * v56;
        v79 = v191;
        v80 = v192;
        v81 = v193;
        *(v78 + 64) = v194;
        *(v78 + 32) = v80;
        *(v78 + 48) = v81;
        *(v78 + 16) = v79;
        *v78 = v190;
        outlined destroy of AttributedString._AttributeValue(&v205);
LABEL_68:
        *v173 = v63;
        goto LABEL_69;
      }
    }

    else
    {
      LODWORD(v163) = v57;
      v55 = 1;
      v168 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
      v169 = static _DictionaryStorage.copy(original:)();
      if (*(v54 + 16))
      {
        v82 = v169 + 8;
        v63 = v54 + 64;
        v83 = ((1 << *(v169 + 32)) + 63) >> 6;
        if (v169 != v54 || v82 >= v63 + 8 * v83)
        {
          memmove(v82, (v54 + 64), 8 * v83);
        }

        v84 = 0;
        v169[2] = *(v54 + 16);
        v85 = 1 << *(v54 + 32);
        if (v85 < 64)
        {
          v86 = ~(-1 << v85);
        }

        else
        {
          v86 = -1;
        }

        v170 = v86 & *(v54 + 64);
        v87 = (v85 + 63) >> 6;
        while (v170)
        {
          v88 = __clz(__rbit64(v170));
          v170 &= v170 - 1;
LABEL_63:
          v91 = v88 | (v84 << 6);
          v92 = 16 * v91;
          v93 = (*(v54 + 48) + 16 * v91);
          v94 = *v93;
          v55 = v93[1];
          v95 = 72 * v91;
          outlined init with copy of AttributedString._AttributeValue(*(v54 + 56) + 72 * v91, &v210);
          v96 = v169;
          v97 = (v169[6] + v92);
          *v97 = v94;
          v97[1] = v55;
          v98 = v96[7] + v95;
          *v98 = v210;
          v99 = v211;
          v100 = v212;
          v101 = v213;
          *(v98 + 64) = v214;
          *(v98 + 32) = v100;
          *(v98 + 48) = v101;
          *(v98 + 16) = v99;
        }

        v89 = v84;
        while (1)
        {
          v84 = v89 + 1;
          if (__OFADD__(v89, 1))
          {
            break;
          }

          if (v84 >= v87)
          {
            goto LABEL_65;
          }

          v90 = *(v63 + 8 * v84);
          ++v89;
          if (v90)
          {
            v88 = __clz(__rbit64(v90));
            v170 = (v90 - 1) & v90;
            goto LABEL_63;
          }
        }

        __break(1u);
LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

LABEL_65:

      v56 = v168;
      v63 = v169;
      v11 = v174;
      v55 = v175;
      v17 = v165;
      v9 = v166;
      v8 = &v185;
      v21 = v167;
      if (v163)
      {
        goto LABEL_47;
      }
    }

    *(v63 + 8 * (v56 >> 6) + 64) |= 1 << v56;
    v102 = (*(v63 + 48) + 16 * v56);
    v103 = v177;
    *v102 = v55;
    v102[1] = v103;
    v104 = *(v63 + 56) + 72 * v56;
    *v104 = v190;
    v105 = v191;
    v106 = v192;
    v107 = v193;
    *(v104 + 64) = v194;
    *(v104 + 32) = v106;
    *(v104 + 48) = v107;
    *(v104 + 16) = v105;
    v108 = *(v63 + 16);
    v60 = __OFADD__(v108, 1);
    v109 = v108 + 1;
    if (v60)
    {
      goto LABEL_122;
    }

    *(v63 + 16) = v109;

    outlined destroy of AttributedString._AttributeValue(&v205);
    v210 = 0u;
    v211 = 0u;
    v212 = 0u;
    v213 = 0u;
    v214 = 0;
    goto LABEL_68;
  }

  v62 = v57;
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v61, v53);
  v63 = v185;
  v56 = specialized __RawDictionaryStorage.find<A>(_:)(v55, v177);
  if ((v62 & 1) == (v64 & 1))
  {
    LOBYTE(v57) = v62;
    goto LABEL_46;
  }

LABEL_125:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  swift_bridgeObjectRelease_n();
  result = MEMORY[0x1865D2690](v63, -1, -1);
  __break(1u);
  return result;
}

unint64_t closure #1 in closure #1 in AttributedString.Guts.enforceAttributeConstraintsBeforeMutation(to:)(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t a4, _BYTE *a5, void *a6, uint64_t a7)
{
  v118 = a6;
  v12 = *a1;
  v11 = a1[1];
  v13 = *a2;
  if (*a2)[2] && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(*a1, v11), (v15))
  {
    outlined init with copy of AttributedString._AttributeValue(v13[7] + 72 * v14, &v113);
    if (!*(a3 + 16))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v117 = 0;
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    if (!*(a3 + 16))
    {
      goto LABEL_8;
    }
  }

  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v11);
  if (v17)
  {
    outlined init with copy of AttributedString._AttributeValue(*(a3 + 56) + 72 * v16, &v108);
    goto LABEL_9;
  }

LABEL_8:
  v112 = 0;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
LABEL_9:
  v18 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
  outlined init with copy of FloatingPointRoundingRule?(&v113, &v98, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  outlined init with copy of FloatingPointRoundingRule?(&v108, &v103, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  if (*(&v99 + 1))
  {
    outlined init with copy of FloatingPointRoundingRule?(&v98, v96, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    if (!*(&v104 + 1))
    {
LABEL_20:
      outlined destroy of TermOfAddress?(&v108, v18);
      outlined destroy of TermOfAddress?(&v113, v18);
      outlined destroy of AttributedString._AttributeValue(v96);
      goto LABEL_21;
    }

    v94[2] = v105;
    v94[3] = v106;
    v95 = v107;
    v94[0] = v103;
    v94[1] = v104;
    v19 = specialized static AttributedString._AttributeValue.== infix(_:_:)(v96, v94);
    outlined destroy of AttributedString._AttributeValue(v94);
    outlined destroy of TermOfAddress?(&v108, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of TermOfAddress?(&v113, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of AttributedString._AttributeValue(v96);
    outlined destroy of TermOfAddress?(&v98, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of TermOfAddress?(&v108, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of TermOfAddress?(&v113, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    if (*(&v104 + 1))
    {
LABEL_21:
      outlined destroy of TermOfAddress?(&v98, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
      return 0;
    }

    outlined destroy of TermOfAddress?(&v98, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  }

  *a5 = 1;
  v102 = 0;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  outlined init with copy of FloatingPointRoundingRule?(&v98, &v113, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  if (!*(&v114 + 1))
  {

    outlined destroy of TermOfAddress?(&v113, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    v30 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v11);
    if ((v31 & 1) == 0)
    {
      v117 = 0;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
LABEL_51:
      v62 = v118;
      AttributedString._AttributeStorage._attributeModified(_:old:new:)(v12, v11, &v113, &v98);
      outlined destroy of TermOfAddress?(&v98, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of TermOfAddress?(&v113, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);

      *v62 = a7;
      return 1;
    }

    v32 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *a2;
    if (isUniquelyReferenced_nonNull_native)
    {
      v18 = *a2;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
      v63 = static _DictionaryStorage.copy(original:)();
      v18 = v63;
      if (v34[2])
      {
        result = v63 + 64;
        __srca = v34 + 8;
        v64 = ((1 << *(v18 + 32)) + 63) >> 6;
        if (v18 != v34 || result >= __srca + 8 * v64)
        {
          result = memmove(result, __srca, 8 * v64);
        }

        v65 = 0;
        v18[2] = v34[2];
        v66 = 1 << *(v34 + 32);
        v67 = -1;
        if (v66 < 64)
        {
          v67 = ~(-1 << v66);
        }

        v81 = (v66 + 63) >> 6;
        v68 = v67 & v34[8];
        if (v68)
        {
          do
          {
            v69 = __clz(__rbit64(v68));
            v93 = (v68 - 1) & v68;
LABEL_65:
            v72 = v69 | (v65 << 6);
            v87 = 16 * v72;
            v73 = (v34[6] + 16 * v72);
            v89 = v73[1];
            v91 = *v73;
            v85 = 72 * v72;
            outlined init with copy of AttributedString._AttributeValue(v34[7] + 72 * v72, &v113);
            v74 = (v18[6] + v87);
            *v74 = v91;
            v74[1] = v89;
            v75 = v18[7] + v85;
            *v75 = v113;
            v76 = v114;
            v77 = v115;
            v78 = v116;
            *(v75 + 64) = v117;
            *(v75 + 32) = v77;
            *(v75 + 48) = v78;
            *(v75 + 16) = v76;

            v68 = v93;
          }

          while (v93);
        }

        v70 = v65;
        while (1)
        {
          v65 = v70 + 1;
          if (__OFADD__(v70, 1))
          {
            goto LABEL_69;
          }

          if (v65 >= v81)
          {
            break;
          }

          v71 = *(__srca + v65);
          ++v70;
          if (v71)
          {
            v69 = __clz(__rbit64(v71));
            v93 = (v71 - 1) & v71;
            goto LABEL_65;
          }
        }
      }
    }

    v35 = v18[7] + 72 * v32;
    v113 = *v35;
    v37 = *(v35 + 32);
    v36 = *(v35 + 48);
    v38 = *(v35 + 64);
    v114 = *(v35 + 16);
    v115 = v37;
    v117 = v38;
    v116 = v36;
    specialized _NativeDictionary._delete(at:)(v32, v18);
LABEL_50:
    *a2 = v18;
    goto LABEL_51;
  }

  v110 = v115;
  v111 = v116;
  v112 = v117;
  v108 = v113;
  v109 = v114;
  outlined init with copy of AttributedString._AttributeValue(&v108, v96);

  v20 = swift_isUniquelyReferenced_nonNull_native();
  *&v94[0] = *a2;
  v21 = *&v94[0];
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v11);
  v24 = *(v21 + 16);
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(a5) = v23;
    if (*(v21 + 24) < v27)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, v20);
      v18 = *&v94[0];
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v11);
      if ((a5 & 1) != (v28 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_20;
      }

LABEL_29:
      if (a5)
      {
LABEL_30:
        v39 = v18[7] + 72 * v22;
        v113 = *v39;
        v40 = *(v39 + 16);
        v41 = *(v39 + 32);
        v42 = *(v39 + 48);
        v117 = *(v39 + 64);
        v115 = v41;
        v116 = v42;
        v114 = v40;
        v43 = v96[1];
        v44 = v96[2];
        v45 = v96[3];
        *(v39 + 64) = v97;
        *(v39 + 32) = v44;
        *(v39 + 48) = v45;
        *v39 = v96[0];
        *(v39 + 16) = v43;
        outlined destroy of AttributedString._AttributeValue(&v108);
        goto LABEL_50;
      }

LABEL_49:
      specialized _NativeDictionary._insert(at:key:value:)(v22, v12, v11, v96, v18);

      outlined destroy of AttributedString._AttributeValue(&v108);
      v113 = 0u;
      v114 = 0u;
      v115 = 0u;
      v116 = 0u;
      v117 = 0;
      goto LABEL_50;
    }

    if (v20)
    {
      v18 = v21;
      goto LABEL_29;
    }
  }

  v80 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
  v46 = static _DictionaryStorage.copy(original:)();
  v18 = v46;
  if (!*(v21 + 16))
  {
LABEL_48:

    v22 = v80;
    if (a5)
    {
      goto LABEL_30;
    }

    goto LABEL_49;
  }

  result = v46 + 64;
  __src = (v21 + 64);
  v47 = ((1 << *(v18 + 32)) + 63) >> 6;
  if (v18 != v21 || result >= __src + 8 * v47)
  {
    result = memmove(result, __src, 8 * v47);
  }

  v48 = 0;
  v18[2] = *(v21 + 16);
  v49 = 1 << *(v21 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v79 = (v49 + 63) >> 6;
  v51 = v50 & *(v21 + 64);
  if (v51)
  {
    do
    {
      v52 = __clz(__rbit64(v51));
      v92 = (v51 - 1) & v51;
LABEL_46:
      v55 = v52 | (v48 << 6);
      v86 = 16 * v55;
      v56 = (*(v21 + 48) + 16 * v55);
      v88 = v56[1];
      v90 = *v56;
      v84 = 72 * v55;
      outlined init with copy of AttributedString._AttributeValue(*(v21 + 56) + 72 * v55, &v113);
      v57 = (v18[6] + v86);
      *v57 = v90;
      v57[1] = v88;
      v58 = v18[7] + v84;
      *v58 = v113;
      v59 = v114;
      v60 = v115;
      v61 = v116;
      *(v58 + 64) = v117;
      *(v58 + 32) = v60;
      *(v58 + 48) = v61;
      *(v58 + 16) = v59;

      v51 = v92;
    }

    while (v92);
  }

  v53 = v48;
  while (1)
  {
    v48 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    if (v48 >= v79)
    {
      goto LABEL_48;
    }

    v54 = *(__src + v48);
    ++v53;
    if (v54)
    {
      v52 = __clz(__rbit64(v54));
      v92 = (v54 - 1) & v54;
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

uint64_t closure #2 in AttributedString.Guts.enforceAttributeConstraintsBeforeMutation(to:)(unint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, char **a5, char *a6, uint64_t a7, void *a8)
{
  v8 = a5;
  v9 = a1;
  v215 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  v10 = *a5;
  v178 = a1;
  v179 = a6;
  v11 = a6;
  v180 = a7;
  v181 = a4;
  v156 = a8;
  v157 = a4;
  v182 = a8;
  v183 = a2;
  v155 = a3;
  v184 = a3;
  v12 = v10[32];
  v13 = v12 & 0x3F;
  v158 = ((1 << v12) + 63) >> 6;
  v14 = (8 * v158);

  if (v13 > 0xD)
  {
    goto LABEL_118;
  }

LABEL_2:
  v160 = &v155;
  v161 = v8;
  v8 = &v185;
  MEMORY[0x1EEE9AC00](v15);
  v164 = (&v155 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0));
  bzero(v164, v14);
  v172 = 0;
  v173 = v9;
  v16 = 0;
  v17 = v10 + 56;
  v18 = 1 << v10[32];
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(v10 + 7);
  v21 = (v18 + 63) >> 6;
  v14 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
  v174 = v10;
  v167 = v21;
  v9 = v11;
  v11 = v10;
  v165 = v10 + 56;
  v166 = v9;
  while (1)
  {
    while (1)
    {
      if (v20)
      {
        v10 = v9;
        v22 = __clz(__rbit64(v20));
        v23 = (v20 - 1) & v20;
        goto LABEL_16;
      }

      v24 = v16;
      do
      {
        v16 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:

          if (!swift_stdlib_isStackAllocationSafe())
          {
            v152 = swift_slowAlloc();

            _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySSG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_aB13VKXEfU_SS_TG5AHxSbs5Error_pRi_zRi0_zlySSIsgndzo_Tf1nc_n(v152, v158, v10, partial apply for closure #1 in closure #2 in AttributedString.Guts.enforceAttributeConstraintsBeforeMutation(to:));
            v154 = v153;
            swift_bridgeObjectRelease_n();
            MEMORY[0x1865D2690](v152, -1, -1);
            v11 = v154;
            goto LABEL_114;
          }

          goto LABEL_2;
        }

        if (v16 >= v21)
        {
          if (v172)
          {
            if (v172 == *(v11 + 2))
            {
              v8 = v161;
LABEL_114:
              *v8 = v11;
            }

            v10 = v11;
            v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
            v134 = static _SetStorage.allocate(capacity:)();
            v135 = 0;
            v136 = v164;
            v9 = *v164;
            v11 = (v134 + 56);
            do
            {
              if (v9)
              {
                v139 = __clz(__rbit64(v9));
                v9 &= v9 - 1;
              }

              else
              {
                v140 = v135;
                do
                {
                  v135 = v140 + 1;
                  if (__OFADD__(v140, 1))
                  {
                    goto LABEL_116;
                  }

                  if (v135 >= v158)
                  {
                    goto LABEL_112;
                  }

                  v141 = v136[v135];
                  ++v140;
                }

                while (!v141);
                v139 = __clz(__rbit64(v141));
                v9 = (v141 - 1) & v141;
              }

              v142 = *(v10 + 6) + 16 * (v139 | (v135 << 6));
              v10 = *v142;
              v8 = *(v142 + 8);
              Hasher.init(_seed:)();

              String.hash(into:)();
              v14 = &v195;
              v143 = Hasher._finalize()();
              v144 = -1 << *(v134 + 32);
              v145 = v143 & ~v144;
              v146 = v145 >> 6;
              if (((-1 << v145) & ~*&v11[8 * (v145 >> 6)]) != 0)
              {
                v137 = __clz(__rbit64((-1 << v145) & ~*&v11[8 * (v145 >> 6)])) | v145 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                v147 = 0;
                v148 = (63 - v144) >> 6;
                do
                {
                  if (++v146 == v148 && (v147 & 1) != 0)
                  {
                    goto LABEL_117;
                  }

                  v149 = v146 == v148;
                  if (v146 == v148)
                  {
                    v146 = 0;
                  }

                  v147 |= v149;
                  v150 = *&v11[8 * v146];
                }

                while (v150 == -1);
                v137 = __clz(__rbit64(~v150)) + (v146 << 6);
              }

              *&v11[(v137 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v137;
              v138 = (*(v134 + 48) + 16 * v137);
              *v138 = v10;
              v138[1] = v8;
              ++*(v134 + 16);
              --v172;
              v10 = v174;
              v136 = v164;
            }

            while (v172);
LABEL_112:
            v8 = v161;
          }

          else
          {
            v134 = MEMORY[0x1E69E7CD0];
            v8 = v161;
          }

          v11 = v134;
          goto LABEL_114;
        }

        v25 = *&v17[8 * v16];
        ++v24;
      }

      while (!v25);
      v10 = v9;
      v22 = __clz(__rbit64(v25));
      v23 = (v25 - 1) & v25;
LABEL_16:
      v26 = v22 | (v16 << 6);
      v27 = *(v11 + 6);
      v171 = v26;
      v28 = (v27 + 16 * v26);
      v30 = *v28;
      v29 = v28[1];
      v31 = *v173;
      v32 = *(*v173 + 16);
      v176 = v23;
      v177 = v29;
      v175 = v30;
      if (v32)
      {
        v33 = v29;

        v34 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v33);
        if (v35)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v31 + 56) + 72 * v34, &v210);
        }

        else
        {
          v214 = 0;
          v212 = 0u;
          v213 = 0u;
          v210 = 0u;
          v211 = 0u;
        }

        v14 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
      }

      else
      {
        v214 = 0;
        v212 = 0u;
        v213 = 0u;
        v210 = 0u;
        v211 = 0u;
      }

      v9 = v10;
      if (*(v10 + 2))
      {
        v36 = specialized __RawDictionaryStorage.find<A>(_:)(v175, v177);
        if (v37)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v10 + 7) + 72 * v36, &v205);
        }

        else
        {
          v209 = 0;
          v207 = 0u;
          v208 = 0u;
          v205 = 0u;
          v206 = 0u;
        }

        v14 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
      }

      else
      {
        v209 = 0;
        v207 = 0u;
        v208 = 0u;
        v205 = 0u;
        v206 = 0u;
      }

      outlined init with copy of FloatingPointRoundingRule?(&v210, &v195, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined init with copy of FloatingPointRoundingRule?(&v205, &v200, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (!*(&v196 + 1))
      {
        outlined destroy of TermOfAddress?(&v205, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v210, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (!*(&v201 + 1))
        {
          v159 = v31;
          outlined destroy of TermOfAddress?(&v195, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          v11 = v174;
          goto LABEL_36;
        }

        goto LABEL_7;
      }

      outlined init with copy of FloatingPointRoundingRule?(&v195, &v190, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (!*(&v201 + 1))
      {
        outlined destroy of TermOfAddress?(&v205, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v210, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v190);
LABEL_7:
        outlined destroy of TermOfAddress?(&v195, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
        v11 = v174;
        goto LABEL_8;
      }

      v159 = v31;
      v186 = v201;
      v187 = v202;
      v188 = v203;
      v189 = v204;
      v185 = v200;
      v38 = *(&v191 + 1);
      v163 = v192;
      v162 = __swift_project_boxed_opaque_existential_1(&v190, *(&v191 + 1));
      v39 = __swift_project_boxed_opaque_existential_1(&v185, *(&v186 + 1));
      v170 = &v155;
      v40 = *(v38 - 8);
      MEMORY[0x1EEE9AC00](v39);
      v42 = &v155 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
      v169 = &v155;
      v44 = MEMORY[0x1EEE9AC00](v43);
      (*(v46 + 16))(&v155 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v44);
      v47 = type metadata accessor for Optional();
      v168 = &v155;
      v48 = *(v47 - 8);
      MEMORY[0x1EEE9AC00](v47);
      v10 = &v155 - v49;
      if (swift_dynamicCast())
      {
        break;
      }

      outlined destroy of TermOfAddress?(&v205, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of TermOfAddress?(&v210, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v51 = v38;
      v14 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
      (*(v40 + 56))(v10, 1, 1, v51);
      (*(v48 + 8))(v10, v47);
      outlined destroy of AttributedString._AttributeValue(&v185);
      outlined destroy of AttributedString._AttributeValue(&v190);
      outlined destroy of TermOfAddress?(&v195, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v11 = v174;
      v17 = v165;
      v9 = v166;
      v8 = &v185;
      v21 = v167;
LABEL_8:

      v20 = v176;
    }

    (*(v40 + 56))(v10, 0, 1, v38);
    (*(v40 + 32))(v42, v10, v38);
    v50 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v40 + 8))(v42, v38);
    v10 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
    outlined destroy of TermOfAddress?(&v205, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of TermOfAddress?(&v210, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of AttributedString._AttributeValue(&v185);
    outlined destroy of AttributedString._AttributeValue(&v190);
    v14 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
    outlined destroy of TermOfAddress?(&v195, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    v11 = v174;
    v17 = v165;
    v9 = v166;
    v8 = &v185;
    v21 = v167;
    if ((v50 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_36:
    *v157 = 1;
    v199 = 0;
    v197 = 0u;
    v198 = 0u;
    v195 = 0u;
    v196 = 0u;
    outlined init with copy of FloatingPointRoundingRule?(&v195, &v210, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    if (*(&v211 + 1))
    {
      break;
    }

    outlined destroy of TermOfAddress?(&v210, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    v55 = v175;
    v65 = specialized __RawDictionaryStorage.find<A>(_:)(v175, v177);
    if (v66)
    {
      v67 = v65;
      v68 = v173;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = *v68;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v55 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        v110 = v63;
        v111 = static _DictionaryStorage.copy(original:)();
        v63 = v111;
        v169 = v110;
        if (v110[2])
        {
          v112 = (v111 + 64);
          v113 = 1 << *(v63 + 32);
          v168 = v169 + 8;
          v114 = (v113 + 63) >> 6;
          if (v63 != v169 || v112 >= &v168[v114])
          {
            memmove(v112, v168, 8 * v114);
          }

          v115 = 0;
          v116 = v169;
          *(v63 + 16) = v169[2];
          v117 = 1 << *(v116 + 32);
          v118 = v116[8];
          if (v117 < 64)
          {
            v119 = ~(-1 << v117);
          }

          else
          {
            v119 = -1;
          }

          v170 = v119 & v118;
          v120 = (v117 + 63) >> 6;
          if ((v119 & v118) != 0)
          {
            do
            {
              v121 = __clz(__rbit64(v170));
              v170 &= v170 - 1;
LABEL_86:
              v124 = v121 | (v115 << 6);
              v125 = 16 * v124;
              v126 = (v169[6] + 16 * v124);
              v127 = *v126;
              v55 = v126[1];
              v128 = 72 * v124;
              outlined init with copy of AttributedString._AttributeValue(v169[7] + 72 * v124, &v210);
              v129 = (*(v63 + 48) + v125);
              *v129 = v127;
              v129[1] = v55;
              v130 = *(v63 + 56) + v128;
              *v130 = v210;
              v131 = v211;
              v132 = v212;
              v133 = v213;
              *(v130 + 64) = v214;
              *(v130 + 32) = v132;
              *(v130 + 48) = v133;
              *(v130 + 16) = v131;
            }

            while (v170);
          }

          v122 = v115;
          while (1)
          {
            v115 = v122 + 1;
            if (__OFADD__(v122, 1))
            {
              goto LABEL_124;
            }

            if (v115 >= v120)
            {
              break;
            }

            v123 = v168[v115];
            ++v122;
            if (v123)
            {
              v121 = __clz(__rbit64(v123));
              v170 = (v123 - 1) & v123;
              goto LABEL_86;
            }
          }
        }

        v11 = v174;
        v55 = v175;
        v17 = v165;
        v9 = v166;
        v8 = &v185;
      }

      v70 = *(v63 + 56) + 72 * v67;
      v210 = *v70;
      v72 = *(v70 + 32);
      v71 = *(v70 + 48);
      v73 = *(v70 + 64);
      v211 = *(v70 + 16);
      v212 = v72;
      v214 = v73;
      v213 = v71;
      specialized _NativeDictionary._delete(at:)(v67, v63);
      *v173 = v63;
      v21 = v167;
    }

    else
    {
      v214 = 0;
      v212 = 0u;
      v213 = 0u;
      v210 = 0u;
      v211 = 0u;
      v21 = v167;
    }

LABEL_69:
    AttributedString._AttributeStorage._attributeModified(_:old:new:)(v55, v177, &v210, &v195);
    v10 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
    v14 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
    outlined destroy of TermOfAddress?(&v195, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of TermOfAddress?(&v210, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);

    *v156 = v155;
    *(v164 + ((v171 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v171;
    v60 = __OFADD__(v172++, 1);
    v20 = v176;
    if (v60)
    {
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
    }
  }

  v207 = v212;
  v208 = v213;
  v209 = v214;
  v205 = v210;
  v206 = v211;
  outlined init with copy of AttributedString._AttributeValue(&v205, &v190);
  v52 = v173;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  *&v185 = *v52;
  v54 = v185;
  v55 = v175;
  v56 = specialized __RawDictionaryStorage.find<A>(_:)(v175, v177);
  v58 = *(v54 + 16);
  v59 = (v57 & 1) == 0;
  v60 = __OFADD__(v58, v59);
  v61 = v58 + v59;
  if (v60)
  {
    goto LABEL_121;
  }

  if (*(v54 + 24) >= v61)
  {
    if (v53)
    {
      v63 = v54;
LABEL_46:
      v11 = v174;
      v21 = v167;
      if (v57)
      {
LABEL_47:
        v74 = *(v63 + 56) + 72 * v56;
        v76 = *(v74 + 16);
        v75 = *(v74 + 32);
        v77 = *(v74 + 48);
        v214 = *(v74 + 64);
        v213 = v77;
        v210 = *v74;
        v211 = v76;
        v212 = v75;
        v78 = *(v63 + 56) + 72 * v56;
        v79 = v191;
        v80 = v192;
        v81 = v193;
        *(v78 + 64) = v194;
        *(v78 + 32) = v80;
        *(v78 + 48) = v81;
        *(v78 + 16) = v79;
        *v78 = v190;
        outlined destroy of AttributedString._AttributeValue(&v205);
LABEL_68:
        *v173 = v63;
        goto LABEL_69;
      }
    }

    else
    {
      LODWORD(v163) = v57;
      v55 = 1;
      v168 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
      v169 = static _DictionaryStorage.copy(original:)();
      if (*(v54 + 16))
      {
        v82 = v169 + 8;
        v63 = v54 + 64;
        v83 = ((1 << *(v169 + 32)) + 63) >> 6;
        if (v169 != v54 || v82 >= v63 + 8 * v83)
        {
          memmove(v82, (v54 + 64), 8 * v83);
        }

        v84 = 0;
        v169[2] = *(v54 + 16);
        v85 = 1 << *(v54 + 32);
        if (v85 < 64)
        {
          v86 = ~(-1 << v85);
        }

        else
        {
          v86 = -1;
        }

        v170 = v86 & *(v54 + 64);
        v87 = (v85 + 63) >> 6;
        while (v170)
        {
          v88 = __clz(__rbit64(v170));
          v170 &= v170 - 1;
LABEL_63:
          v91 = v88 | (v84 << 6);
          v92 = 16 * v91;
          v93 = (*(v54 + 48) + 16 * v91);
          v94 = *v93;
          v55 = v93[1];
          v95 = 72 * v91;
          outlined init with copy of AttributedString._AttributeValue(*(v54 + 56) + 72 * v91, &v210);
          v96 = v169;
          v97 = (v169[6] + v92);
          *v97 = v94;
          v97[1] = v55;
          v98 = v96[7] + v95;
          *v98 = v210;
          v99 = v211;
          v100 = v212;
          v101 = v213;
          *(v98 + 64) = v214;
          *(v98 + 32) = v100;
          *(v98 + 48) = v101;
          *(v98 + 16) = v99;
        }

        v89 = v84;
        while (1)
        {
          v84 = v89 + 1;
          if (__OFADD__(v89, 1))
          {
            break;
          }

          if (v84 >= v87)
          {
            goto LABEL_65;
          }

          v90 = *(v63 + 8 * v84);
          ++v89;
          if (v90)
          {
            v88 = __clz(__rbit64(v90));
            v170 = (v90 - 1) & v90;
            goto LABEL_63;
          }
        }

        __break(1u);
LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

LABEL_65:

      v56 = v168;
      v63 = v169;
      v11 = v174;
      v55 = v175;
      v17 = v165;
      v9 = v166;
      v8 = &v185;
      v21 = v167;
      if (v163)
      {
        goto LABEL_47;
      }
    }

    *(v63 + 8 * (v56 >> 6) + 64) |= 1 << v56;
    v102 = (*(v63 + 48) + 16 * v56);
    v103 = v177;
    *v102 = v55;
    v102[1] = v103;
    v104 = *(v63 + 56) + 72 * v56;
    *v104 = v190;
    v105 = v191;
    v106 = v192;
    v107 = v193;
    *(v104 + 64) = v194;
    *(v104 + 32) = v106;
    *(v104 + 48) = v107;
    *(v104 + 16) = v105;
    v108 = *(v63 + 16);
    v60 = __OFADD__(v108, 1);
    v109 = v108 + 1;
    if (v60)
    {
      goto LABEL_122;
    }

    *(v63 + 16) = v109;

    outlined destroy of AttributedString._AttributeValue(&v205);
    v210 = 0u;
    v211 = 0u;
    v212 = 0u;
    v213 = 0u;
    v214 = 0;
    goto LABEL_68;
  }

  v62 = v57;
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v61, v53);
  v63 = v185;
  v56 = specialized __RawDictionaryStorage.find<A>(_:)(v55, v177);
  if ((v62 & 1) == (v64 & 1))
  {
    LOBYTE(v57) = v62;
    goto LABEL_46;
  }

LABEL_125:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  swift_bridgeObjectRelease_n();
  result = MEMORY[0x1865D2690](v63, -1, -1);
  __break(1u);
  return result;
}

unint64_t closure #1 in closure #2 in AttributedString.Guts.enforceAttributeConstraintsBeforeMutation(to:)(uint64_t *a1, uint64_t **a2, uint64_t a3, uint64_t a4, _BYTE *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v119 = a6;
  v13 = *a1;
  v12 = a1[1];
  v14 = *a2;
  if (*a2)[2] && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(*a1, v12), (v16))
  {
    outlined init with copy of AttributedString._AttributeValue(v14[7] + 72 * v15, &v114);
    if (!*(a3 + 16))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v118 = 0;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    if (!*(a3 + 16))
    {
      goto LABEL_8;
    }
  }

  v17 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
  if (v18)
  {
    outlined init with copy of AttributedString._AttributeValue(*(a3 + 56) + 72 * v17, &v109);
    goto LABEL_9;
  }

LABEL_8:
  v113 = 0;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
LABEL_9:
  v19 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
  outlined init with copy of FloatingPointRoundingRule?(&v114, &v99, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  outlined init with copy of FloatingPointRoundingRule?(&v109, &v104, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  if (*(&v100 + 1))
  {
    outlined init with copy of FloatingPointRoundingRule?(&v99, v97, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    if (!*(&v105 + 1))
    {
LABEL_20:
      outlined destroy of TermOfAddress?(&v109, v19);
      outlined destroy of TermOfAddress?(&v114, v19);
      outlined destroy of AttributedString._AttributeValue(v97);
      goto LABEL_21;
    }

    v95[2] = v106;
    v95[3] = v107;
    v96 = v108;
    v95[0] = v104;
    v95[1] = v105;
    v20 = specialized static AttributedString._AttributeValue.== infix(_:_:)(v97, v95);
    outlined destroy of AttributedString._AttributeValue(v95);
    outlined destroy of TermOfAddress?(&v109, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of TermOfAddress?(&v114, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of AttributedString._AttributeValue(v97);
    outlined destroy of TermOfAddress?(&v99, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of TermOfAddress?(&v109, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of TermOfAddress?(&v114, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    if (*(&v105 + 1))
    {
LABEL_21:
      outlined destroy of TermOfAddress?(&v99, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
      return 0;
    }

    outlined destroy of TermOfAddress?(&v99, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  }

  *a5 = 1;
  v103 = 0;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  outlined init with copy of FloatingPointRoundingRule?(&v99, &v114, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  if (!*(&v115 + 1))
  {

    outlined destroy of TermOfAddress?(&v114, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    v31 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
    if ((v32 & 1) == 0)
    {
      v118 = 0;
      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
LABEL_51:
      v63 = v119;
      AttributedString._AttributeStorage._attributeModified(_:old:new:)(v13, v12, &v114, &v99);
      outlined destroy of TermOfAddress?(&v99, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of TermOfAddress?(&v114, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);

      *v63 = a8;
      return 1;
    }

    v33 = v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *a2;
    if (isUniquelyReferenced_nonNull_native)
    {
      v19 = *a2;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
      v64 = static _DictionaryStorage.copy(original:)();
      v19 = v64;
      if (v35[2])
      {
        result = v64 + 64;
        __srca = v35 + 8;
        v65 = ((1 << *(v19 + 32)) + 63) >> 6;
        if (v19 != v35 || result >= __srca + 8 * v65)
        {
          result = memmove(result, __srca, 8 * v65);
        }

        v66 = 0;
        v19[2] = v35[2];
        v67 = 1 << *(v35 + 32);
        v68 = -1;
        if (v67 < 64)
        {
          v68 = ~(-1 << v67);
        }

        v82 = (v67 + 63) >> 6;
        v69 = v68 & v35[8];
        if (v69)
        {
          do
          {
            v70 = __clz(__rbit64(v69));
            v94 = (v69 - 1) & v69;
LABEL_65:
            v73 = v70 | (v66 << 6);
            v88 = 16 * v73;
            v74 = (v35[6] + 16 * v73);
            v90 = v74[1];
            v92 = *v74;
            v86 = 72 * v73;
            outlined init with copy of AttributedString._AttributeValue(v35[7] + 72 * v73, &v114);
            v75 = (v19[6] + v88);
            *v75 = v92;
            v75[1] = v90;
            v76 = v19[7] + v86;
            *v76 = v114;
            v77 = v115;
            v78 = v116;
            v79 = v117;
            *(v76 + 64) = v118;
            *(v76 + 32) = v78;
            *(v76 + 48) = v79;
            *(v76 + 16) = v77;

            v69 = v94;
          }

          while (v94);
        }

        v71 = v66;
        while (1)
        {
          v66 = v71 + 1;
          if (__OFADD__(v71, 1))
          {
            goto LABEL_69;
          }

          if (v66 >= v82)
          {
            break;
          }

          v72 = *(__srca + v66);
          ++v71;
          if (v72)
          {
            v70 = __clz(__rbit64(v72));
            v94 = (v72 - 1) & v72;
            goto LABEL_65;
          }
        }
      }
    }

    v36 = v19[7] + 72 * v33;
    v114 = *v36;
    v38 = *(v36 + 32);
    v37 = *(v36 + 48);
    v39 = *(v36 + 64);
    v115 = *(v36 + 16);
    v116 = v38;
    v118 = v39;
    v117 = v37;
    specialized _NativeDictionary._delete(at:)(v33, v19);
LABEL_50:
    *a2 = v19;
    goto LABEL_51;
  }

  v111 = v116;
  v112 = v117;
  v113 = v118;
  v109 = v114;
  v110 = v115;
  outlined init with copy of AttributedString._AttributeValue(&v109, v97);

  v21 = swift_isUniquelyReferenced_nonNull_native();
  *&v95[0] = *a2;
  v22 = *&v95[0];
  v23 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
  v25 = *(v22 + 16);
  v26 = (v24 & 1) == 0;
  v27 = __OFADD__(v25, v26);
  v28 = v25 + v26;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(a5) = v24;
    if (*(v22 + 24) < v28)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, v21);
      v19 = *&v95[0];
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
      if ((a5 & 1) != (v29 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_20;
      }

LABEL_29:
      if (a5)
      {
LABEL_30:
        v40 = v19[7] + 72 * v23;
        v114 = *v40;
        v41 = *(v40 + 16);
        v42 = *(v40 + 32);
        v43 = *(v40 + 48);
        v118 = *(v40 + 64);
        v116 = v42;
        v117 = v43;
        v115 = v41;
        v44 = v97[1];
        v45 = v97[2];
        v46 = v97[3];
        *(v40 + 64) = v98;
        *(v40 + 32) = v45;
        *(v40 + 48) = v46;
        *v40 = v97[0];
        *(v40 + 16) = v44;
        outlined destroy of AttributedString._AttributeValue(&v109);
        goto LABEL_50;
      }

LABEL_49:
      specialized _NativeDictionary._insert(at:key:value:)(v23, v13, v12, v97, v19);

      outlined destroy of AttributedString._AttributeValue(&v109);
      v114 = 0u;
      v115 = 0u;
      v116 = 0u;
      v117 = 0u;
      v118 = 0;
      goto LABEL_50;
    }

    if (v21)
    {
      v19 = v22;
      goto LABEL_29;
    }
  }

  v81 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
  v47 = static _DictionaryStorage.copy(original:)();
  v19 = v47;
  if (!*(v22 + 16))
  {
LABEL_48:

    v23 = v81;
    if (a5)
    {
      goto LABEL_30;
    }

    goto LABEL_49;
  }

  result = v47 + 64;
  __src = (v22 + 64);
  v48 = ((1 << *(v19 + 32)) + 63) >> 6;
  if (v19 != v22 || result >= __src + 8 * v48)
  {
    result = memmove(result, __src, 8 * v48);
  }

  v49 = 0;
  v19[2] = *(v22 + 16);
  v50 = 1 << *(v22 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v80 = (v50 + 63) >> 6;
  v52 = v51 & *(v22 + 64);
  if (v52)
  {
    do
    {
      v53 = __clz(__rbit64(v52));
      v93 = (v52 - 1) & v52;
LABEL_46:
      v56 = v53 | (v49 << 6);
      v87 = 16 * v56;
      v57 = (*(v22 + 48) + 16 * v56);
      v89 = v57[1];
      v91 = *v57;
      v85 = 72 * v56;
      outlined init with copy of AttributedString._AttributeValue(*(v22 + 56) + 72 * v56, &v114);
      v58 = (v19[6] + v87);
      *v58 = v91;
      v58[1] = v89;
      v59 = v19[7] + v85;
      *v59 = v114;
      v60 = v115;
      v61 = v116;
      v62 = v117;
      *(v59 + 64) = v118;
      *(v59 + 32) = v61;
      *(v59 + 48) = v62;
      *(v59 + 16) = v60;

      v52 = v93;
    }

    while (v93);
  }

  v54 = v49;
  while (1)
  {
    v49 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    if (v49 >= v80)
    {
      goto LABEL_48;
    }

    v55 = *(__src + v49);
    ++v54;
    if (v55)
    {
      v53 = __clz(__rbit64(v55));
      v93 = (v55 - 1) & v55;
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

void _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySSG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_aB13VKXEfU_SS_TG5AHxSbs5Error_pRi_zRi0_zlySSIsgndzo_Tf1nc_n(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v45 = a2;
    v46 = 0;
    v6 = 0;
    v7 = a3 + 56;
    v8 = 1 << *(a3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a3 + 56);
    v11 = (v8 + 63) >> 6;
    while (1)
    {
      if (!v10)
      {
        v13 = v6;
        v14 = v45;
        v10 = v46;
        while (1)
        {
          v6 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v6 >= v11)
          {
            goto LABEL_19;
          }

          v15 = *(v7 + 8 * v6);
          ++v13;
          if (v15)
          {
            v12 = __clz(__rbit64(v15));
            v10 = (v15 - 1) & v15;
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_49;
      }

      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_14:
      v16 = v12 | (v6 << 6);
      v14 = a3;
      v17 = (*(a3 + 48) + 16 * v16);
      v18 = v17[1];
      v49[0] = *v17;
      v49[1] = v18;

      v19 = v50;
      v20 = a4(v49);
      v50 = v19;
      if (v19)
      {

        return;
      }

      v21 = v20;

      a3 = v14;
      if (v21)
      {
        *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        v22 = __OFADD__(v46++, 1);
        if (v22)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_19:
    if (!v10)
    {
LABEL_47:

      return;
    }

    if (v10 == *(a3 + 16))
    {
      return;
    }

    v48 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
    v23 = static _SetStorage.allocate(capacity:)();
    v24 = v23;
    if (v14)
    {
      v25 = *a1;
    }

    else
    {
      v25 = 0;
    }

    v26 = 0;
    v27 = v23 + 56;
    while (v25)
    {
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_35:
      v31 = (*(v48 + 48) + 16 * (v28 | (v26 << 6)));
      v32 = *v31;
      v33 = v31[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v34 = Hasher._finalize()();
      v35 = -1 << *(v24 + 32);
      v36 = v34 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v27 + 8 * (v36 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v35) >> 6;
        while (++v37 != v40 || (v39 & 1) == 0)
        {
          v41 = v37 == v40;
          if (v37 == v40)
          {
            v37 = 0;
          }

          v39 |= v41;
          v42 = *(v27 + 8 * v37);
          if (v42 != -1)
          {
            v38 = __clz(__rbit64(~v42)) + (v37 << 6);
            goto LABEL_45;
          }
        }

        goto LABEL_50;
      }

      v38 = __clz(__rbit64((-1 << v36) & ~*(v27 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_45:
      *(v27 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
      v43 = (*(v24 + 48) + 16 * v38);
      *v43 = v32;
      v43[1] = v33;
      ++*(v24 + 16);
      v22 = __OFSUB__(v10--, 1);
      if (v22)
      {
        goto LABEL_52;
      }

      if (!v10)
      {
        goto LABEL_47;
      }
    }

    v29 = v26;
    while (1)
    {
      v26 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v26 >= v14)
      {
        goto LABEL_47;
      }

      v30 = a1[v26];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v25 = (v30 - 1) & v30;
        goto LABEL_35;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  __break(1u);
LABEL_52:
  __break(1u);
}

BOOL specialized closure #1 in Sequence<>.contains(_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AttributedString._AttributeValue()
{
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttributedString._AttributeValue()
{
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AttributedString._AttributeValue()
{
  outlined init with copy of Hashable & Sendable(v0, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
  return String.init<A>(describing:)();
}

uint64_t Dictionary<>._attrStrDescription.getter(uint64_t a1)
{
  v3 = a1 + 64;
  v2 = *(a1 + 64);
  v20 = 0;
  v21 = 0xE000000000000000;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v2;
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; result = outlined destroy of TermOfAddress?(&v17, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd))
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v10 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    outlined init with copy of AttributedString._AttributeValue(*(a1 + 56) + 72 * v12, &v19);
    v17 = v14;
    v18 = v15;

    MEMORY[0x1865CB0E0](v14, v15);
    MEMORY[0x1865CB0E0](2112800, 0xE300000000000000);
    lazy protocol witness table accessor for type AttributedString._AttributeValue and conformance AttributedString._AttributeValue();
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v16);

    MEMORY[0x1865CB0E0](10, 0xE100000000000000);
    MEMORY[0x1865CB0E0](9, 0xE100000000000000);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      v17 = 2683;
      v18 = 0xE200000000000000;
      MEMORY[0x1865CB0E0](v20, v21);

      MEMORY[0x1865CB0E0](125, 0xE100000000000000);
      return v17;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AttributedString._AttributeStorage(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v2, v3);
}

unint64_t lazy protocol witness table accessor for type AttributedString._AttributeStorage and conformance AttributedString._AttributeStorage()
{
  result = lazy protocol witness table cache variable for type AttributedString._AttributeStorage and conformance AttributedString._AttributeStorage;
  if (!lazy protocol witness table cache variable for type AttributedString._AttributeStorage and conformance AttributedString._AttributeStorage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString._AttributeStorage and conformance AttributedString._AttributeStorage);
  }

  return result;
}

uint64_t closure #1 in AttributedString._AttributeStorage.attributesForAddedText()(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v15[0] = *a1;
  v15[1] = v2;
  outlined init with copy of AttributedString._AttributeValue(a2, &v16);
  outlined init with copy of FloatingPointRoundingRule?(v15, v13, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);

  LODWORD(v2) = v14[56];
  outlined destroy of AttributedString._AttributeValue(v14);
  if (v2 == 1)
  {
    outlined init with copy of FloatingPointRoundingRule?(v15, v10, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);

    v3 = v12;
    if (v12 && *(v12 + 16) && (Hasher.init(_seed:)(), MEMORY[0x1865CD060](0), v4 = Hasher._finalize()(), v5 = -1 << *(v3 + 32), v6 = v4 & ~v5, ((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
    {
      v7 = ~v5;
      while (*(*(v3 + 48) + 16 * v6 + 8))
      {
        v6 = (v6 + 1) & v7;
        if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v8 = 0;
    }

    else
    {
LABEL_8:
      v8 = 1;
    }

    outlined destroy of TermOfAddress?(v15, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
    outlined destroy of AttributedString._AttributeValue(&v11);
  }

  else
  {
    outlined destroy of TermOfAddress?(v15, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd);
    return 0;
  }

  return v8;
}

uint64_t specialized getter of valueChanged #1 in AttributedString._AttributeStorage._attributeModified(_:old:new:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (v5 == 2)
  {
    v20 = v3;
    v21 = v4;
    outlined init with copy of FloatingPointRoundingRule?(a2, v13, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined init with copy of FloatingPointRoundingRule?(a3, &v15, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    if (v14)
    {
      outlined init with copy of FloatingPointRoundingRule?(v13, v12, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (*(&v16 + 1))
      {
        v10[2] = v17;
        v10[3] = v18;
        v11 = v19;
        v10[0] = v15;
        v10[1] = v16;
        v8 = specialized static AttributedString._AttributeValue.== infix(_:_:)(v12, v10);
        outlined destroy of AttributedString._AttributeValue(v10);
        outlined destroy of AttributedString._AttributeValue(v12);
        outlined destroy of TermOfAddress?(v13, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        LOBYTE(v5) = v8 ^ 1;
LABEL_9:
        *a1 = v5 & 1;
        return v5 & 1;
      }

      outlined destroy of AttributedString._AttributeValue(v12);
    }

    else if (!*(&v16 + 1))
    {
      outlined destroy of TermOfAddress?(v13, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      LOBYTE(v5) = 0;
      goto LABEL_9;
    }

    outlined destroy of TermOfAddress?(v13, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
    LOBYTE(v5) = 1;
    goto LABEL_9;
  }

  return v5 & 1;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t specialized AttributedString._AttributeStorage.isEqual(to:comparing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = a3;
  v5 = a1;
  v6 = (a2 + 40);
  v32 = a1;
  v33 = a3;
  while (1)
  {
    v7 = *(v6 - 1);
    v8 = *v6;
    if (*(v4 + 16))
    {

      v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v10)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v4 + 56) + 72 * v9, &v56);
        if (!*(v5 + 16))
        {
          goto LABEL_12;
        }
      }

      else
      {
        v60 = 0;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        if (!*(v5 + 16))
        {
LABEL_12:

          goto LABEL_13;
        }
      }
    }

    else
    {
      v60 = 0;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;

      if (!*(v5 + 16))
      {
        goto LABEL_12;
      }
    }

    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
    v13 = v12;

    if (v13)
    {
      outlined init with copy of AttributedString._AttributeValue(*(v5 + 56) + 72 * v11, v54);
      goto LABEL_14;
    }

LABEL_13:
    v55 = 0;
    memset(v54, 0, sizeof(v54));
LABEL_14:
    outlined init with copy of FloatingPointRoundingRule?(&v56, v48, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined init with copy of FloatingPointRoundingRule?(v54, &v49, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    if (v48[3])
    {
      break;
    }

    outlined destroy of TermOfAddress?(v54, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of TermOfAddress?(&v56, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    if (*(&v50 + 1))
    {
      goto LABEL_23;
    }

    outlined destroy of TermOfAddress?(v48, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
LABEL_3:
    v6 += 2;
    if (!--v3)
    {
      return 1;
    }
  }

  outlined init with copy of FloatingPointRoundingRule?(v48, v45, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  if (!*(&v50 + 1))
  {
    outlined destroy of TermOfAddress?(v54, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of TermOfAddress?(&v56, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of AttributedString._AttributeValue(v45);
LABEL_23:
    v31 = &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd;
    goto LABEL_25;
  }

  v36 = v6;
  v37 = v3;
  v42 = v51;
  v43 = v52;
  v44 = v53;
  v40 = v49;
  v41 = v50;
  v14 = v46;
  v35 = v47;
  v34 = __swift_project_boxed_opaque_existential_1(v45, v46);
  v15 = __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
  v39 = &v32;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = &v32;
  v20 = MEMORY[0x1EEE9AC00](v19);
  (*(v22 + 16))(&v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  v23 = type metadata accessor for Optional();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v32 - v25;
  v27 = swift_dynamicCast();
  v28 = *(v16 + 56);
  if (v27)
  {
    v28(v26, 0, 1, v14);
    (*(v16 + 32))(v18, v26, v14);
    v29 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v16 + 8))(v18, v14);
    outlined destroy of TermOfAddress?(v54, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of TermOfAddress?(&v56, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of AttributedString._AttributeValue(&v40);
    outlined destroy of AttributedString._AttributeValue(v45);
    outlined destroy of TermOfAddress?(v48, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    v5 = v32;
    v4 = v33;
    v6 = v36;
    v3 = v37;
    if ((v29 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_3;
  }

  v28(v26, 1, 1, v14);
  outlined destroy of TermOfAddress?(v54, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  outlined destroy of TermOfAddress?(&v56, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  (*(v24 + 8))(v26, v23);
  outlined destroy of AttributedString._AttributeValue(&v40);
  outlined destroy of AttributedString._AttributeValue(v45);
  v31 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
LABEL_25:
  outlined destroy of TermOfAddress?(v48, v31);
  return 0;
}

uint64_t specialized static AttributedString._AttributeValue.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v4 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  (*(v11 + 16))(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  v16 = swift_dynamicCast();
  v17 = *(v5 + 56);
  if (v16)
  {
    v17(v15, 0, 1, v3);
    (*(v5 + 32))(v7, v15, v3);
    v18 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v7, v3);
  }

  else
  {
    v17(v15, 1, 1, v3);
    (*(v13 + 8))(v15, v12);
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t specialized AttributedString._AttributeStorage.mergeIn(_:mergePolicy:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v4 = a1;
  v163 = *a2;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = 0;

  v161 = v2;
  v162 = v9;
  if (v8)
  {
    while (1)
    {
LABEL_9:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v4 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      outlined init with copy of AttributedString._AttributeValue(*(v4 + 56) + 72 * v12, &v202);
      v174 = v205;
      v179 = v203;
      v164 = v204;
      v169 = v202;
      v16 = v206;

      if (!v14)
      {
      }

      v8 &= v8 - 1;
      v202 = v169;
      v203 = v179;
      v204 = v164;
      v205 = v174;
      v206 = v16;
      if ((v163 & 1) == 0)
      {
        break;
      }

      if (*(*v3 + 16) && (, specialized __RawDictionaryStorage.find<A>(_:)(v15, v14), v18 = v17, , (v18 & 1) != 0))
      {
        outlined destroy of AttributedString._AttributeValue(&v202);

        if (!v8)
        {
          goto LABEL_5;
        }
      }

      else
      {
        outlined init with copy of AttributedString._AttributeValue(&v202, v201);
        outlined init with copy of FloatingPointRoundingRule?(v201, &v196, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (*(&v197 + 1))
        {
          v193 = v198;
          v194 = v199;
          v195 = v200;
          v191 = v196;
          v192 = v197;
          outlined init with copy of AttributedString._AttributeValue(&v191, &v186);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v31 = *v3;
          v185 = *v3;
          v21 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14);
          v33 = *(v31 + 16);
          v34 = (v32 & 1) == 0;
          v25 = __OFADD__(v33, v34);
          v35 = v33 + v34;
          if (v25)
          {
            goto LABEL_120;
          }

          v36 = v32;
          if (*(v31 + 24) >= v35)
          {
            v9 = v162;
            if (isUniquelyReferenced_nonNull_native)
            {
              v28 = v31;
            }

            else
            {
              v151 = v21;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
              v111 = static _DictionaryStorage.copy(original:)();
              v28 = v111;
              if (*(v31 + 16))
              {
                v112 = (v111 + 64);
                v113 = (v31 + 64);
                v114 = ((1 << *(v28 + 32)) + 63) >> 6;
                if (v28 != v31 || v112 >= &v113[8 * v114])
                {
                  memmove(v112, v113, 8 * v114);
                }

                v115 = 0;
                *(v28 + 16) = *(v31 + 16);
                v116 = 1 << *(v31 + 32);
                if (v116 < 64)
                {
                  v117 = ~(-1 << v116);
                }

                else
                {
                  v117 = -1;
                }

                v118 = v117 & *(v31 + 64);
                v119 = (v116 + 63) >> 6;
                __srcb = v119;
                if (v118)
                {
                  do
                  {
                    v120 = __clz(__rbit64(v118));
                    v158 = (v118 - 1) & v118;
LABEL_96:
                    v123 = v120 | (v115 << 6);
                    v172 = 16 * v123;
                    v124 = (*(v31 + 48) + 16 * v123);
                    v182 = *v124;
                    v177 = v124[1];
                    v167 = 72 * v123;
                    outlined init with copy of AttributedString._AttributeValue(*(v31 + 56) + 72 * v123, &v196);
                    v125 = (*(v28 + 48) + v172);
                    *v125 = v182;
                    v125[1] = v177;
                    v126 = *(v28 + 56) + v167;
                    *v126 = v196;
                    v127 = v197;
                    v128 = v198;
                    v129 = v199;
                    *(v126 + 64) = v200;
                    *(v126 + 32) = v128;
                    *(v126 + 48) = v129;
                    *(v126 + 16) = v127;

                    v119 = __srcb;
                    v118 = v158;
                  }

                  while (v158);
                }

                v121 = v115;
                while (1)
                {
                  v115 = v121 + 1;
                  if (__OFADD__(v121, 1))
                  {
                    goto LABEL_124;
                  }

                  if (v115 >= v119)
                  {
                    break;
                  }

                  v122 = *(v31 + 64 + 8 * v115);
                  ++v121;
                  if (v122)
                  {
                    v120 = __clz(__rbit64(v122));
                    v158 = (v122 - 1) & v122;
                    goto LABEL_96;
                  }
                }
              }

              v21 = v151;
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, isUniquelyReferenced_nonNull_native);
            v28 = v185;
            v21 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14);
            v9 = v162;
            if ((v36 & 1) != (v37 & 1))
            {
              goto LABEL_127;
            }
          }

          v4 = v160;
          if (v36)
          {
            goto LABEL_57;
          }

          *(v28 + 8 * (v21 >> 6) + 64) |= 1 << v21;
          v86 = (*(v28 + 48) + 16 * v21);
          *v86 = v15;
          v86[1] = v14;
          v87 = *(v28 + 56) + 72 * v21;
          *v87 = v186;
          v88 = v187;
          v89 = v188;
          v90 = v189;
          *(v87 + 64) = v190;
          *(v87 + 32) = v89;
          *(v87 + 48) = v90;
          *(v87 + 16) = v88;
          v91 = *(v28 + 16);
          v25 = __OFADD__(v91, 1);
          v70 = v91 + 1;
          if (v25)
          {
            goto LABEL_122;
          }

LABEL_59:
          *(v28 + 16) = v70;

          outlined destroy of AttributedString._AttributeValue(&v191);
          v196 = 0u;
          v197 = 0u;
          v198 = 0u;
          v199 = 0u;
          v200 = 0;
          goto LABEL_60;
        }

        outlined destroy of TermOfAddress?(&v196, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v71 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14);
        if ((v72 & 1) == 0)
        {
          v200 = 0;
          v198 = 0u;
          v199 = 0u;
          v196 = 0u;
          v197 = 0u;
          v3 = v161;
          v9 = v162;
          goto LABEL_61;
        }

        v41 = v71;
        v73 = swift_isUniquelyReferenced_nonNull_native();
        v43 = *v161;
        if ((v73 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v130 = static _DictionaryStorage.copy(original:)();
          v45 = v130;
          if (*(v43 + 16))
          {
            v131 = (v130 + 64);
            __srcc = (v43 + 64);
            v132 = ((1 << *(v45 + 32)) + 63) >> 6;
            if (v45 != v43 || v131 >= &__srcc[8 * v132])
            {
              memmove(v131, __srcc, 8 * v132);
            }

            v133 = 0;
            *(v45 + 16) = *(v43 + 16);
            v134 = 1 << *(v43 + 32);
            if (v134 < 64)
            {
              v135 = ~(-1 << v134);
            }

            else
            {
              v135 = -1;
            }

            v136 = v135 & *(v43 + 64);
            v137 = (v134 + 63) >> 6;
            v159 = v137;
            if (v136)
            {
              do
              {
                v138 = __clz(__rbit64(v136));
                v183 = (v136 - 1) & v136;
LABEL_114:
                v141 = v138 | (v133 << 6);
                v168 = 16 * v141;
                v142 = (*(v43 + 48) + 16 * v141);
                v178 = *v142;
                v173 = v142[1];
                v143 = 72 * v141;
                outlined init with copy of AttributedString._AttributeValue(*(v43 + 56) + 72 * v141, &v196);
                v144 = (*(v45 + 48) + v168);
                *v144 = v178;
                v144[1] = v173;
                v145 = *(v45 + 56) + v143;
                *v145 = v196;
                v146 = v197;
                v147 = v198;
                v148 = v199;
                *(v145 + 64) = v200;
                *(v145 + 32) = v147;
                *(v145 + 48) = v148;
                *(v145 + 16) = v146;

                v137 = v159;
                v136 = v183;
              }

              while (v183);
            }

            v139 = v133;
            while (1)
            {
              v133 = v139 + 1;
              if (__OFADD__(v139, 1))
              {
                goto LABEL_126;
              }

              if (v133 >= v137)
              {
                break;
              }

              v140 = *&__srcc[8 * v133];
              ++v139;
              if (v140)
              {
                v138 = __clz(__rbit64(v140));
                v183 = (v140 - 1) & v140;
                goto LABEL_114;
              }
            }
          }

          v4 = v160;
          goto LABEL_52;
        }

LABEL_51:
        v45 = v43;
LABEL_52:
        v9 = v162;
LABEL_53:

        v74 = *(v45 + 56) + 72 * v41;
        v196 = *v74;
        v76 = *(v74 + 32);
        v75 = *(v74 + 48);
        v77 = *(v74 + 64);
        v197 = *(v74 + 16);
        v198 = v76;
        v200 = v77;
        v199 = v75;
        specialized _NativeDictionary._delete(at:)(v41, v45);
        v3 = v161;
        *v161 = v45;
LABEL_61:
        AttributedString._AttributeStorage._attributeModified(_:old:new:)(v15, v14, &v196, v201);
        outlined destroy of TermOfAddress?(v201, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v196, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);

        outlined destroy of AttributedString._AttributeValue(&v202);
        if (!v8)
        {
          goto LABEL_5;
        }
      }
    }

    outlined init with copy of AttributedString._AttributeValue(&v202, v201);
    outlined init with copy of FloatingPointRoundingRule?(v201, &v196, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    if (*(&v197 + 1))
    {
      v193 = v198;
      v194 = v199;
      v195 = v200;
      v191 = v196;
      v192 = v197;
      outlined init with copy of AttributedString._AttributeValue(&v191, &v186);
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v3;
      v184 = *v3;
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14);
      v23 = *(v20 + 16);
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_119;
      }

      v27 = v22;
      if (*(v20 + 24) >= v26)
      {
        v9 = v162;
        if (v19)
        {
          v28 = v20;
        }

        else
        {
          v150 = v21;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v92 = static _DictionaryStorage.copy(original:)();
          v28 = v92;
          if (*(v20 + 16))
          {
            v93 = (v92 + 64);
            v94 = (v20 + 64);
            v95 = ((1 << *(v28 + 32)) + 63) >> 6;
            if (v28 != v20 || v93 >= &v94[8 * v95])
            {
              memmove(v93, v94, 8 * v95);
            }

            v96 = 0;
            *(v28 + 16) = *(v20 + 16);
            v97 = 1 << *(v20 + 32);
            if (v97 < 64)
            {
              v98 = ~(-1 << v97);
            }

            else
            {
              v98 = -1;
            }

            v99 = v98 & *(v20 + 64);
            v100 = (v97 + 63) >> 6;
            __srca = v100;
            if (v99)
            {
              do
              {
                v101 = __clz(__rbit64(v99));
                v181 = (v99 - 1) & v99;
LABEL_79:
                v104 = v101 | (v96 << 6);
                v166 = 16 * v104;
                v105 = (*(v20 + 48) + 16 * v104);
                v176 = *v105;
                v171 = v105[1];
                v157 = 72 * v104;
                outlined init with copy of AttributedString._AttributeValue(*(v20 + 56) + 72 * v104, &v196);
                v106 = (*(v28 + 48) + v166);
                *v106 = v176;
                v106[1] = v171;
                v107 = *(v28 + 56) + v157;
                *v107 = v196;
                v108 = v197;
                v109 = v198;
                v110 = v199;
                *(v107 + 64) = v200;
                *(v107 + 32) = v109;
                *(v107 + 48) = v110;
                *(v107 + 16) = v108;

                v100 = __srca;
                v99 = v181;
              }

              while (v181);
            }

            v102 = v96;
            while (1)
            {
              v96 = v102 + 1;
              if (__OFADD__(v102, 1))
              {
                goto LABEL_123;
              }

              if (v96 >= v100)
              {
                break;
              }

              v103 = *(v20 + 64 + 8 * v96);
              ++v102;
              if (v103)
              {
                v101 = __clz(__rbit64(v103));
                v181 = (v103 - 1) & v103;
                goto LABEL_79;
              }
            }
          }

          v21 = v150;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, v19);
        v28 = v184;
        v21 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14);
        v9 = v162;
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_127;
        }
      }

      v4 = v160;
      if ((v27 & 1) == 0)
      {
        *(v28 + 8 * (v21 >> 6) + 64) |= 1 << v21;
        v64 = (*(v28 + 48) + 16 * v21);
        *v64 = v15;
        v64[1] = v14;
        v65 = *(v28 + 56) + 72 * v21;
        *v65 = v186;
        v66 = v187;
        v67 = v188;
        v68 = v189;
        *(v65 + 64) = v190;
        *(v65 + 32) = v67;
        *(v65 + 48) = v68;
        *(v65 + 16) = v66;
        v69 = *(v28 + 16);
        v25 = __OFADD__(v69, 1);
        v70 = v69 + 1;
        if (v25)
        {
          goto LABEL_121;
        }

        goto LABEL_59;
      }

LABEL_57:
      v78 = *(v28 + 56) + 72 * v21;
      v80 = *(v78 + 16);
      v79 = *(v78 + 32);
      v81 = *(v78 + 48);
      v200 = *(v78 + 64);
      v199 = v81;
      v196 = *v78;
      v197 = v80;
      v198 = v79;
      v82 = *(v28 + 56) + 72 * v21;
      v83 = v187;
      v84 = v188;
      v85 = v189;
      *(v82 + 64) = v190;
      *(v82 + 32) = v84;
      *(v82 + 48) = v85;
      *(v82 + 16) = v83;
      *v82 = v186;
      outlined destroy of AttributedString._AttributeValue(&v191);
LABEL_60:
      v3 = v161;
      *v161 = v28;
      goto LABEL_61;
    }

    outlined destroy of TermOfAddress?(&v196, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    v38 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14);
    v39 = v3;
    if ((v40 & 1) == 0)
    {
      v200 = 0;
      v198 = 0u;
      v199 = 0u;
      v196 = 0u;
      v197 = 0u;
      v9 = v162;
      goto LABEL_61;
    }

    v41 = v38;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v43 = *v39;
    if ((v42 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
      v44 = static _DictionaryStorage.copy(original:)();
      v45 = v44;
      v9 = v162;
      if (*(v43 + 16))
      {
        v46 = (v44 + 64);
        v47 = (v43 + 64);
        v48 = ((1 << *(v45 + 32)) + 63) >> 6;
        if (v45 != v43 || v46 >= &v47[8 * v48])
        {
          memmove(v46, v47, 8 * v48);
        }

        v49 = 0;
        *(v45 + 16) = *(v43 + 16);
        v50 = 1 << *(v43 + 32);
        if (v50 < 64)
        {
          v51 = ~(-1 << v50);
        }

        else
        {
          v51 = -1;
        }

        v52 = v51 & *(v43 + 64);
        v53 = (v50 + 63) >> 6;
        __src = v53;
        if (v52)
        {
          do
          {
            v54 = __clz(__rbit64(v52));
            v180 = (v52 - 1) & v52;
LABEL_41:
            v57 = v54 | (v49 << 6);
            v165 = 16 * v57;
            v58 = (*(v43 + 48) + 16 * v57);
            v175 = *v58;
            v170 = v58[1];
            v156 = 72 * v57;
            outlined init with copy of AttributedString._AttributeValue(*(v43 + 56) + 72 * v57, &v196);
            v59 = (*(v45 + 48) + v165);
            *v59 = v175;
            v59[1] = v170;
            v60 = *(v45 + 56) + v156;
            *v60 = v196;
            v61 = v197;
            v62 = v198;
            v63 = v199;
            *(v60 + 64) = v200;
            *(v60 + 32) = v62;
            *(v60 + 48) = v63;
            *(v60 + 16) = v61;

            v53 = __src;
            v52 = v180;
          }

          while (v180);
        }

        v55 = v49;
        while (1)
        {
          v49 = v55 + 1;
          if (__OFADD__(v55, 1))
          {
            goto LABEL_125;
          }

          if (v49 >= v53)
          {
            break;
          }

          v56 = *(v43 + 64 + 8 * v49);
          ++v55;
          if (v56)
          {
            v54 = __clz(__rbit64(v56));
            v180 = (v56 - 1) & v56;
            goto LABEL_41;
          }
        }
      }

      v4 = v160;
      goto LABEL_53;
    }

    goto LABEL_51;
  }

LABEL_5:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
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
LABEL_127:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized AttributedString._AttributeStorage.matches(_:)(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v33 = (v5 + 63) >> 6;

  v9 = 0;
  v35 = a2;
  v36 = result;
  v34 = v4;
  while (v7)
  {
LABEL_10:
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v12 = (*(v3 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    outlined init with copy of AttributedString._AttributeValue(*(v3 + 56) + 72 * v11, &v50);
    v40 = v53;
    v41 = v51;
    v38 = v52;
    v39 = v50;
    v15 = v54;

    if (!v13)
    {
LABEL_23:

      return 1;
    }

    v63[0] = v39;
    v63[1] = v41;
    v63[2] = v38;
    v63[3] = v40;
    v64 = v15;
    if (*(a2 + 16))
    {
      v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v13);
      v18 = v17;

      if (v18)
      {
        outlined init with copy of AttributedString._AttributeValue(*(a2 + 56) + 72 * v16, v61);
        goto LABEL_16;
      }
    }

    else
    {
    }

    v62 = 0;
    memset(v61, 0, sizeof(v61));
LABEL_16:
    outlined init with copy of AttributedString._AttributeValue(v63, v60);
    outlined init with copy of FloatingPointRoundingRule?(v61, &v50, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined init with copy of FloatingPointRoundingRule?(v60, &v55, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    if (*(&v51 + 1))
    {
      outlined init with copy of FloatingPointRoundingRule?(&v50, v47, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (!*(&v56 + 1))
      {
        outlined destroy of TermOfAddress?(v60, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(v61, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(v63);
        outlined destroy of AttributedString._AttributeValue(v47);
LABEL_25:
        outlined destroy of TermOfAddress?(&v50, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_27:

        return 0;
      }

      v44 = v57;
      v45 = v58;
      v46 = v59;
      v42 = v55;
      v43 = v56;
      v19 = v48;
      *&v38 = v49;
      v37 = __swift_project_boxed_opaque_existential_1(v47, v48);
      v20 = __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
      *&v41 = &v32;
      v21 = *(v19 - 8);
      MEMORY[0x1EEE9AC00](v20);
      v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      *&v40 = &v32;
      v25 = MEMORY[0x1EEE9AC00](v24);
      (*(v27 + 16))(&v32 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
      v28 = type metadata accessor for Optional();
      *&v39 = &v32;
      v32 = *(v28 - 8);
      MEMORY[0x1EEE9AC00](v28);
      v30 = &v32 - v29;
      if (!swift_dynamicCast())
      {
        outlined destroy of TermOfAddress?(v60, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(v61, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(v63);
        (*(v21 + 56))(v30, 1, 1, v19);
        (*(v32 + 8))(v30, v28);
        outlined destroy of AttributedString._AttributeValue(&v42);
        outlined destroy of AttributedString._AttributeValue(v47);
        outlined destroy of TermOfAddress?(&v50, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        goto LABEL_27;
      }

      (*(v21 + 56))(v30, 0, 1, v19);
      (*(v21 + 32))(v23, v30, v19);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v21 + 8))(v23, v19);
      outlined destroy of TermOfAddress?(v60, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of TermOfAddress?(v61, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of AttributedString._AttributeValue(v63);
      outlined destroy of AttributedString._AttributeValue(&v42);
      outlined destroy of AttributedString._AttributeValue(v47);
      result = outlined destroy of TermOfAddress?(&v50, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      a2 = v35;
      v3 = v36;
      v4 = v34;
      if ((v31 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      outlined destroy of TermOfAddress?(v60, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of TermOfAddress?(v61, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of AttributedString._AttributeValue(v63);
      if (*(&v56 + 1))
      {
        goto LABEL_25;
      }

      result = outlined destroy of TermOfAddress?(&v50, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    }

    v7 &= v7 - 1;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v33)
    {
      goto LABEL_23;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized BidirectionalCollection.formIndex(before:)(unint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v239 - v6;
  v8 = *a1;
  v263 = *(a1 + 1);
  v268 = v8;
  v274 = *(v2 + *(type metadata accessor for AttributedString.Runs.NSAttributesSlice(0) + 20));
  v269 = *(v274 + 16);
  if (!v269)
  {
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
    goto LABEL_230;
  }

  v255 = a1;
  v9 = v2[23];
  v10 = v2[26];
  v11 = v268;
  v12 = *(type metadata accessor for AttributedString.Runs() + 24);
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v276 = v12;
  RangeSet.ranges.getter();
  v13 = RangeSet.Ranges.count.getter();
  v15 = *(v5 + 8);
  v14 = (v5 + 8);
  v277 = v15;
  (v15)(v7, v4);
  if (v10 == 2 || (v9 ^ v11) >= 0x400)
  {
    v273 = v11;
    if (v13 >= 1)
    {
      v14 = v2;
      v17 = 0;
      v18 = v273 >> 10;
      while (!__OFADD__(v17, v13))
      {
        v10 = (v17 + v13) / 2;
        RangeSet.ranges.getter();
        RangeSet.Ranges.subscript.getter();
        (v277)(v7, v4);
        v16 = v289;
        if (v18 < v289 >> 10)
        {
          v13 = (v17 + v13) / 2;
          if (v17 >= v10)
          {
            goto LABEL_12;
          }
        }

        else
        {
          if (v18 < v293 >> 10)
          {
            goto LABEL_13;
          }

          v17 = v10 + 1;
          if (v10 + 1 >= v13)
          {
            goto LABEL_12;
          }
        }
      }

LABEL_217:
      __break(1u);
      goto LABEL_218;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    v2 = v14;
    if ((v16 ^ v273) > 0x3FF)
    {
      v259 = v290;
      v260 = v16;
      v257 = v292;
      v258 = v291;
      goto LABEL_17;
    }
  }

  else
  {
    v10 = v13;
  }

  if (v10 < 1)
  {
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
    goto LABEL_232;
  }

  type metadata accessor for AttributedString.Runs();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  RangeSet.ranges.getter();
  RangeSet.Ranges.subscript.getter();
  (v277)(v7, v4);
  v259 = v290;
  v260 = v289;
  v257 = v292;
  v258 = v291;
  v263 = v294;
  v268 = v293;
LABEL_17:
  v19 = *v2;
  v20 = *(*v2 + 24);
  v254 = (*v2 + 24);
  v21 = *(v19 + 40);
  v326 = v20;
  v327 = v21;
  v328 = *(v19 + 56);
  swift_unknownObjectRetain();
  v22 = *(&v263 + 1);
  v243 = *(&v268 + 1);
  v256 = v268;
  v244 = v263;
  v23 = BigString.UTF8View.index(before:)();
  v250 = v25;
  v251 = v24;
  v249 = v26;
  swift_unknownObjectRelease();
  v27 = *(v19 + 72);
  v28 = *(v19 + 88);
  v29 = (v23 >> 11);
  if (v27)
  {
    v30 = *(v19 + 88);
  }

  else
  {
    v30 = 0;
  }

  if (v30 < v29)
  {
    goto LABEL_228;
  }

  v248 = v23;
  v242 = v22;
  v31 = *(v19 + 80);
  v32 = *(v19 + 96);
  v264 = v19;
  v265 = v32;
  v253 = v23 >> 11;
  if (v27)
  {
    if (v29 < v28)
    {
      v33 = (v27 + 16);
      LODWORD(v34) = *(v27 + 16);
      if (*(v27 + 16))
      {
        v277 = v2;
        v35 = *(v27 + 18);
        swift_unknownObjectRetain_n();
        if (!v35)
        {
          v36 = 0;
          v40 = v27;
          v2 = v277;
          goto LABEL_43;
        }

        v276 = v31;
        v36 = v35;
        v37 = v27;
        while (1)
        {
          v38 = *v33;
          if (*v33)
          {
            break;
          }

          v44 = v29;
LABEL_36:
          if (v44)
          {
            goto LABEL_226;
          }

          v29 = 0;
LABEL_27:
          v36 = (v38 << ((4 * v35 + 8) & 0x3C)) | ((-15 << ((4 * v35 + 8) & 0x3C)) - 1) & v36;
          v39 = *&v37[24 * v38 + 24];
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          v40 = v39;
          v33 = (v39 + 16);
          LOBYTE(v35) = v40[18];
          v37 = v40;
          if (!v35)
          {
            LODWORD(v34) = *v33;
            if (*v33)
            {
              v31 = v276;
              v2 = v277;
LABEL_43:
              v48 = 0;
              v49 = 24;
              v37 = v29;
              v34 = v34;
              while (1)
              {
                v50 = *&v40[v49];
                v29 = &v37[-v50];
                if (__OFSUB__(v37, v50))
                {
                  goto LABEL_224;
                }

                if (__OFADD__(v29, 1))
                {
                  goto LABEL_225;
                }

                if ((v29 + 1) < 1)
                {
                  break;
                }

                ++v48;
                v49 += 24;
                v37 -= v50;
                if (v34 == v48)
                {
                  if (!v29)
                  {
                    goto LABEL_49;
                  }

LABEL_200:
                  __break(1u);
LABEL_201:
                  while (v36 < v28 >> 10)
                  {
                    v222 = v27;
                    v275 = v28;
                    v276 = v34;
                    v277 = v29;
                    v28 = BigSubstring.UnicodeScalarView.index(before:)();
                    v34 = v223;
                    v27 = v224;
                    v29 = v225;
                    v226 = BigSubstring.UnicodeScalarView.subscript.getter();
                    v227 = *(v37 + 2);
                    v228 = 32;
                    while (v227)
                    {
                      v229 = *&v37[v228];
                      v228 += 4;
                      --v227;
                      if (v229 == v226)
                      {
                        outlined destroy of BigString(&v323);

                        result = outlined destroy of BigSubstring.UnicodeScalarView(&v289);
                        v28 = v275;
                        v34 = v276;
                        v27 = v222;
                        v29 = v277;
                        goto LABEL_206;
                      }
                    }
                  }

LABEL_218:
                  v238 = &v323;
LABEL_220:
                  outlined destroy of BigString(v238);

                  result = outlined destroy of BigSubstring.UnicodeScalarView(&v289);
LABEL_192:
                  v129 = v264;
                  v140 = v259;
                  v128 = v260;
LABEL_193:
                  v139 = v257;
                  v138 = v258;
LABEL_194:
                  v212 = v129[2];
                  v213 = v255;
                  *v255 = v128;
                  v213[1] = v140;
                  v213[2] = v138;
                  v213[3] = v139;
                  v213[4] = v212;
                  return result;
                }
              }

              v34 = v48;
            }

            else
            {
              v34 = 0;
              v31 = v276;
              v2 = v277;
              if (v29)
              {
                goto LABEL_200;
              }

LABEL_49:
              v37 = 0;
            }

            v51 = v40;
            swift_unknownObjectRelease();
            v47 = v51;
            v46 = v36 & 0xFFFFFFFFFFFFF0FFLL | (v34 << 8);
            v29 = v253;
            v262 = v51;
LABEL_39:
            v261 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v265, v46, v47, v27, v31);
            swift_unknownObjectRelease();
            goto LABEL_53;
          }
        }

        v41 = 0;
        v42 = (v37 + 40);
        while (1)
        {
          v43 = *v42;
          v42 += 3;
          v44 = &v29[-v43];
          if (__OFSUB__(v29, v43))
          {
            break;
          }

          if (__OFADD__(v44, 1))
          {
            goto LABEL_216;
          }

          if ((v44 + 1) < 1)
          {
            v38 = v41;
            goto LABEL_27;
          }

          ++v41;
          v29 = v44;
          if (v38 == v41)
          {
            goto LABEL_36;
          }
        }

LABEL_215:
        __break(1u);
LABEL_216:
        __break(1u);
        goto LABEL_217;
      }
    }
  }

  v45 = swift_unknownObjectRetain();
  v46 = specialized Rope._endPath.getter(v45);
  v47 = 0;
  v37 = 0;
  v262 = 0;
  if (v27)
  {
    goto LABEL_39;
  }

  v261 = 0;
LABEL_53:
  v52 = v29 - v37;
  if (__OFSUB__(v29, v37))
  {
    goto LABEL_229;
  }

  v53 = *(v264 + 72);
  v54 = *(v264 + 80);
  v55 = *(v264 + 88);
  v56 = *(v264 + 96);
  swift_unknownObjectRetain();
  specialized Rope.subscript.getter(v265, v46, v262, v53, v54, v55, v56);
  v58 = v57;
  v60 = v59;
  result = swift_unknownObjectRelease();
  v62 = v2[1];
  if (v62 >= v261)
  {

    goto LABEL_132;
  }

  v246 = (v274 + 40);
  v266 = v58;
  v267 = v60;
  v240 = v62;
  while (2)
  {
    v63 = *(v264 + 72);
    v64 = *(v264 + 96);
    v289 = v265;
    v290 = v46;
    v65 = v262;
    v291 = v262;
    if (v265 != v64)
    {
      goto LABEL_231;
    }

    if (v63)
    {
      v66 = *(v63 + 18);
      result = swift_unknownObjectRetain();
      v65 = v262;
      if (v66 >= v46)
      {
        goto LABEL_232;
      }
    }

    else if (!v46)
    {
LABEL_232:
      __break(1u);
      goto LABEL_233;
    }

    if (v65)
    {
      v67 = (4 * *(v65 + 18) + 8) & 0x3C;
      if (((v46 >> v67) & 0xF) != 0)
      {
        v68 = ((((v46 >> v67) & 0xF) - 1) << v67) | ((-15 << v67) - 1) & v46;
        v290 = v68;
LABEL_83:
        v90 = (4 * *(v65 + 18) + 8) & 0x3C;
        v252 = v68;
        v262 = v65;
        v86 = *(v65 + 24 * ((v68 >> v90) & 0xF) + 24);

        swift_unknownObjectRelease();
        v87 = 0;
        goto LABEL_84;
      }
    }

    v69 = v52;
    v70 = (4 * *(v63 + 18) + 8) & 0x3C;
    v71 = (v46 >> v70) & 0xF;
    if (*(v63 + 18))
    {
      if (v71 < *(v63 + 16))
      {
        v72 = *(v63 + 24 * ((v46 >> v70) & 0xF) + 24);
        v73 = (4 * *(v72 + 18) + 8) & 0x3C;
        v74 = v46;
        v75 = (v46 >> v73) & 0xF;
        if (*(v72 + 18))
        {
          v76 = *(v72 + 16);
          v277 = *(v63 + 24 * v71 + 24);
          if (v75 < v76)
          {
            v77 = *(v72 + 24 * v75 + 24);
            v78 = ((4 * *(v77 + 18) + 8) & 0x3C);
            v79 = (v74 >> v78) & 0xF;
            if (*(v77 + 18))
            {
              v80 = *(v77 + 16);
              v275 = *(v72 + 24 * v75 + 24);
              if (v79 < v80)
              {
                v81 = *(v77 + 24 * ((v74 >> v78) & 0xF) + 24);
                v82 = *(v81 + 18);
                v83 = (4 * v82 + 8) & 0x3C;
                v84 = (v74 >> v83) & 0xF;
                *&v305 = v84;
                if (v82)
                {
                  v272 = v78;
                  v273 = (v74 >> v78) & 0xF;
                  v276 = v73;
                  v262 = v81;
                  LODWORD(v271) = v82;
                  swift_unknownObjectRetain();
                  swift_unknownObjectRetain();
                  swift_unknownObjectRetain();
                  v85 = v262;
                  swift_unknownObjectRetain();
                  LODWORD(v271) = specialized closure #1 in Rope._Node.formPredecessor(of:)((v85 + 16), v85 + 24, &v305, &v289, v271);
                  swift_unknownObjectRelease();
                  if (v271)
                  {
                    v72 = v291;
LABEL_124:
                    swift_unknownObjectRelease();
                    v52 = v69;
                    goto LABEL_125;
                  }

LABEL_116:
                  if (v273)
                  {
                    v290 = v290 & ((-15 << v272) - 1) | ((v273 - 1) << v272);
                    v126 = v275[3 * v273];
                    swift_unknownObjectRetain();
                    v127 = specialized Rope._Node.descendToLastItem(under:)(&v290, v126);
                    swift_unknownObjectRelease();
                    v72 = v127;
                    v291 = v127;
                    goto LABEL_124;
                  }

                  swift_unknownObjectRelease();
                  v123 = v276;
                  if (!v75)
                  {
                    goto LABEL_119;
                  }

                  goto LABEL_112;
                }

                if (v84)
                {
                  v290 = ((v84 - 1) << v83) | v74 & 0xFFFFFFFFFFFFF0FFLL;
                  v291 = v81;
                  v72 = v81;
                  swift_unknownObjectRetain();
                  swift_unknownObjectRetain();
                  swift_unknownObjectRetain();
                  goto LABEL_124;
                }
              }

              v272 = v78;
              v273 = (v74 >> v78) & 0xF;
              v276 = v73;
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              goto LABEL_116;
            }

            if (v79)
            {
              v290 = ((v79 - 1) << v78) | v74 & 0xFFFFFFFFFFFFF0FFLL;
              v291 = v77;
              v72 = v77;
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              v52 = v69;
LABEL_125:
              swift_unknownObjectRelease();
LABEL_81:
              v58 = v266;
              swift_unknownObjectRelease();
              if (v289 != v265)
              {
LABEL_233:
                __break(1u);
                goto LABEL_234;
              }

              v68 = v290;
              v65 = v72;
              if (v72)
              {
                goto LABEL_83;
              }

              goto LABEL_75;
            }
          }

          v276 = v73;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v123 = v276;
          if (!v75)
          {
LABEL_119:
            swift_unknownObjectRelease();
            if (!v71)
            {
              goto LABEL_238;
            }

LABEL_79:
            v290 = v290 & ((-15 << v70) - 1) | ((v71 - 1) << v70);
            v88 = *(v63 + 24 * v71);
            swift_unknownObjectRetain();
            v89 = specialized Rope._Node.descendToLastItem(under:)(&v290, v88);
            swift_unknownObjectRelease();
            v72 = v89;
            v291 = v89;
            goto LABEL_80;
          }

LABEL_112:
          v290 = v290 & ((-15 << v123) - 1) | ((v75 - 1) << v123);
          v124 = *&v277[24 * v75];
          swift_unknownObjectRetain();
          v125 = specialized Rope._Node.descendToLastItem(under:)(&v290, v124);
          swift_unknownObjectRelease();
          v72 = v125;
          v291 = v125;
          swift_unknownObjectRelease();
          goto LABEL_80;
        }

        if (v75)
        {
          v290 = ((v75 - 1) << v73) | v74 & 0xFFFFFFFFFFFFF0FFLL;
          v291 = v72;
          swift_unknownObjectRetain();
LABEL_80:
          v52 = v69;
          goto LABEL_81;
        }
      }

      swift_unknownObjectRetain();
      if (!v71)
      {
LABEL_238:
        result = swift_unknownObjectRelease();
        __break(1u);
        goto LABEL_239;
      }

      goto LABEL_79;
    }

    if (!v71)
    {
LABEL_239:
      __break(1u);
      goto LABEL_240;
    }

    v68 = ((v71 - 1) << v70) | v46 & 0xFFFFFFFFFFFFF0FFLL;
    v290 = v68;
    v291 = v63;
    v65 = v63;
    v52 = v69;
    v58 = v266;
    if (v63)
    {
      goto LABEL_83;
    }

LABEL_75:
    v252 = v68;
    v86 = specialized Rope._Node.subscript.getter(v68, v63);
    swift_unknownObjectRelease();
    v262 = 0;
    v87 = 1;
LABEL_84:

    v241 = v52 - v86;
    if (__OFSUB__(v52, v86))
    {
LABEL_234:
      __break(1u);
      goto LABEL_235;
    }

    if (v265 != *(v264 + 96))
    {
LABEL_235:
      __break(1u);
      goto LABEL_236;
    }

    v245 = v52;
    if (v87)
    {
      v91 = *(v264 + 72);
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v252, v91);
      v93 = v92;
      v247 = v94;
      swift_unknownObjectRelease();
    }

    else
    {
      v95 = v262 + 24 * ((v252 >> ((4 * *(v262 + 18) + 8) & 0x3C)) & 0xF);
      v93 = *(v95 + 32);
      v96 = *(v95 + 40);

      v247 = v96;
    }

    v97 = 0;
    --v261;
    v98 = v246;
    v270 = v93;
    do
    {
      if (v97 >= *(v274 + 16))
      {
        __break(1u);
        goto LABEL_222;
      }

      v276 = v98;
      v277 = v97;
      v100 = *(v98 - 1);
      v99 = *v98;
      if (*(v58 + 16))
      {

        v101 = specialized __RawDictionaryStorage.find<A>(_:)(v100, v99);
        if (v102)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v58 + 56) + 72 * v101, &v305);
          if (!*(v93 + 16))
          {
            goto LABEL_100;
          }
        }

        else
        {
          v309 = 0;
          v307 = 0u;
          v308 = 0u;
          v305 = 0u;
          v306 = 0u;
          if (!*(v93 + 16))
          {
LABEL_100:

            goto LABEL_101;
          }
        }
      }

      else
      {
        v309 = 0;
        v307 = 0u;
        v308 = 0u;
        v305 = 0u;
        v306 = 0u;

        if (!*(v93 + 16))
        {
          goto LABEL_100;
        }
      }

      v103 = specialized __RawDictionaryStorage.find<A>(_:)(v100, v99);
      v105 = v104;

      if (v105)
      {
        outlined init with copy of AttributedString._AttributeValue(*(v93 + 56) + 72 * v103, &v300);
        goto LABEL_102;
      }

LABEL_101:
      v304 = 0;
      v302 = 0u;
      v303 = 0u;
      v300 = 0u;
      v301 = 0u;
LABEL_102:
      outlined init with copy of FloatingPointRoundingRule?(&v305, &v289, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined init with copy of FloatingPointRoundingRule?(&v300, &v295, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (v292)
      {
        outlined init with copy of FloatingPointRoundingRule?(&v289, &v283, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (!*(&v296 + 1))
        {
          outlined destroy of TermOfAddress?(&v300, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v305, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of AttributedString._AttributeValue(&v283);
LABEL_129:
          outlined destroy of TermOfAddress?(&v289, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_131:

          v52 = v245;
          goto LABEL_132;
        }

        v280 = v297;
        v281 = v298;
        v282 = v299;
        v278 = v295;
        v279 = v296;
        v106 = v286;
        v272 = v287;
        v271 = __swift_project_boxed_opaque_existential_1(&v283, v286);
        v107 = __swift_project_boxed_opaque_existential_1(&v278, *(&v279 + 1));
        v275 = &v239;
        v108 = *(v106 - 8);
        MEMORY[0x1EEE9AC00](v107);
        v110 = &v239 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
        v273 = &v239;
        v112 = MEMORY[0x1EEE9AC00](v111);
        (*(v114 + 16))(&v239 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0), v112);
        v115 = type metadata accessor for Optional();
        v116 = *(v115 - 8);
        MEMORY[0x1EEE9AC00](v115);
        v118 = &v239 - v117;
        v119 = swift_dynamicCast();
        v120 = *(v108 + 56);
        if (!v119)
        {
          v120(v118, 1, 1, v106);
          outlined destroy of TermOfAddress?(&v300, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v305, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          (*(v116 + 8))(v118, v115);
          outlined destroy of AttributedString._AttributeValue(&v278);
          outlined destroy of AttributedString._AttributeValue(&v283);
          outlined destroy of TermOfAddress?(&v289, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          goto LABEL_131;
        }

        v120(v118, 0, 1, v106);
        (*(v108 + 32))(v110, v118, v106);
        v121 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v108 + 8))(v110, v106);
        outlined destroy of TermOfAddress?(&v300, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v305, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v278);
        outlined destroy of AttributedString._AttributeValue(&v283);
        outlined destroy of TermOfAddress?(&v289, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v58 = v266;
        if ((v121 & 1) == 0)
        {
          goto LABEL_131;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(&v300, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v305, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (*(&v296 + 1))
        {
          goto LABEL_129;
        }

        outlined destroy of TermOfAddress?(&v289, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      v97 = v277 + 1;
      v98 = (v276 + 16);
      v93 = v270;
    }

    while (v269 != v277 + 1);

    v122 = v241;
    v52 = v241;
    v46 = v252;
    if (v240 < v261)
    {
      continue;
    }

    break;
  }

  v52 = v122;
LABEL_132:
  v31 = v256 >> 10;
  v128 = v260;
  v129 = v264;
  if (v52 >= (v260 >> 11))
  {
    v141 = *(v264 + 40);
    v323 = *(v264 + 24);
    v324 = v141;
    v325 = *(v264 + 56);
    v142 = v264;
    swift_unknownObjectRetain();
    v128 = BigString.UTF8View.index(_:offsetBy:)();
    v140 = v143;
    v138 = v144;
    v139 = v145;
    result = swift_unknownObjectRelease();
    v146 = *v254;
    v147 = v254[2];
    v321 = v254[1];
    v322 = v147;
    v320 = v146;
    if (v31 < v128 >> 10)
    {
LABEL_237:
      __break(1u);
      goto LABEL_238;
    }

    v148 = v142[3];
    v149 = v142[4];
    v150 = v142[5];
    v151 = v142[6];
    v152 = v142[7];
    v153 = v142[8];
    *&v300 = v128;
    *(&v300 + 1) = v140;
    *&v301 = v138;
    *(&v301 + 1) = v139;
    v302 = v268;
    v303 = v263;
    if (v128 >> 10 == v31)
    {
      v129 = v142;
      goto LABEL_194;
    }

    v272 = v153;
    v273 = v152;
    v274 = v151;
    v275 = v150;
    v276 = v149;
    v277 = v148;
    v166 = v139;
    v167 = v138;
    v259 = v140;
    v168 = v128;
    v169 = v254[1];
    v329[0] = *v254;
    v329[1] = v169;
    v330 = *(v254 + 4);
    outlined init with copy of Rope<BigString._Chunk>._Node?(v329, &v289);
    if ((specialized Set.contains(_:)(0, 0, MEMORY[0x1E69E7CD0]) & 1) != 0 && v31 > BigString.startIndex.getter() >> 10)
    {
      v314 = v277;
      v315 = v276;
      v316 = v275;
      v317 = v274;
      v318 = v273;
      v319 = v272;
      v170 = BigString.UTF8View.index(before:)();
      v172 = v171;
      v174 = v173;
      v176 = v175;
      result = BigString.UTF8View.subscript.getter();
      if (v31 < v170 >> 10)
      {
LABEL_241:
        __break(1u);
        goto LABEL_242;
      }

      v283 = v170;
      v284 = v172;
      v285 = v174;
      v286 = v176;
      v287 = v268;
      v288 = v263;
      specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v283, &v289);
      result = outlined destroy of BigSubstring.UTF8View(&v305);
      v177 = v268;
      v178 = v263;
      if (v292 != 2)
      {
        v168 = v289;
        if (v31 < v289 >> 10)
        {
          goto LABEL_243;
        }

        v167 = v291;
        v259 = v290;
        v166 = v292;
      }
    }

    else
    {
      v178 = v263;
      v177 = v268;
    }

    v260 = v168;
    v140 = v259;
    *&v278 = v168;
    *(&v278 + 1) = v259;
    v257 = v166;
    v258 = v167;
    *&v279 = v167;
    *(&v279 + 1) = v166;
    v280 = v177;
    v281 = v178;
    v197 = MEMORY[0x1E69E7CD0];
    if ((specialized Collection<>._containsScalarConstraint.getter(MEMORY[0x1E69E7CD0]) & 1) == 0)
    {
      result = outlined destroy of BigString(&v320);
      v129 = v264;
      v128 = v260;
      goto LABEL_193;
    }

    v198 = 0;
    v199 = 1 << *(v197 + 32);
    v200 = -1;
    if (v199 < 64)
    {
      v200 = ~(-1 << v199);
    }

    v201 = v200 & *(v197 + 56);
    v202 = (v199 + 63) >> 6;
    v140 = MEMORY[0x1E69E7CC0];
    while (v201)
    {
LABEL_178:
      v204 = __clz(__rbit64(v201));
      v201 &= v201 - 1;
      v205 = (*(v197 + 48) + ((v198 << 10) | (16 * v204)));
      v206 = v205[1];
      if (v206 >= 2)
      {
        v207 = specialized Collection.first.getter(*v205, v206);
        if ((v207 & 0x100000000) == 0)
        {
          v271 = v207;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v140 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v140 + 2) + 1, 1, v140);
          }

          v209 = *(v140 + 2);
          v208 = *(v140 + 3);
          v210 = v271;
          if (v209 >= v208 >> 1)
          {
            v140 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v208 > 1), v209 + 1, 1, v140);
            v210 = v271;
          }

          *(v140 + 2) = v209 + 1;
          *&v140[4 * v209 + 32] = v210;
        }
      }
    }

    while (1)
    {
      v203 = v198 + 1;
      if (__OFADD__(v198, 1))
      {
        goto LABEL_223;
      }

      if (v203 >= v202)
      {

        *&v310 = v277;
        *(&v310 + 1) = v276;
        *&v311 = v275;
        *(&v311 + 1) = v274;
        v312 = v273;
        v313 = v272;
        BigString.UnicodeScalarView.subscript.getter();
        v36 = v294 >> 10;
        if (v294 >> 10 == *(&v295 + 1) >> 10)
        {

          outlined destroy of BigSubstring.UnicodeScalarView(&v289);
          v211 = &v320;
          goto LABEL_191;
        }

        v28 = BigSubstring.UnicodeScalarView.index(before:)();
        v138 = v218;
        v139 = v219;
        v29 = v220;
        v221 = BigSubstring.UnicodeScalarView.subscript.getter();
        if (!specialized Sequence<>.contains(_:)(v221, v140))
        {
LABEL_208:
          while (v36 < v28 >> 10)
          {
            v230 = v139;
            v275 = v28;
            v276 = v138;
            v277 = v29;
            v28 = BigSubstring.UnicodeScalarView.index(before:)();
            v138 = v231;
            v139 = v232;
            v29 = v233;
            v234 = BigSubstring.UnicodeScalarView.subscript.getter();
            v235 = *(v140 + 2);
            v236 = 32;
            while (v235)
            {
              v237 = *&v140[v236];
              v236 += 4;
              --v235;
              if (v237 == v234)
              {
                outlined destroy of BigString(&v320);

                result = outlined destroy of BigSubstring.UnicodeScalarView(&v289);
                v28 = v275;
                v138 = v276;
                v139 = v230;
                v29 = v277;
                goto LABEL_213;
              }
            }
          }

          v238 = &v320;
          goto LABEL_220;
        }

        outlined destroy of BigSubstring.UnicodeScalarView(&v289);
        result = outlined destroy of BigString(&v320);
LABEL_213:
        v128 = v28;
        v140 = v138;
        v138 = v139;
        v139 = v29;
        v129 = v264;
        if (v31 < v28 >> 10)
        {
          __break(1u);
          goto LABEL_215;
        }

        goto LABEL_194;
      }

      v201 = *(v197 + 8 * v203 + 56);
      ++v198;
      if (v201)
      {
        v198 = v203;
        goto LABEL_178;
      }
    }
  }

  v130 = *v254;
  v131 = v254[2];
  v324 = v254[1];
  v325 = v131;
  v323 = v130;
  if (v31 < v260 >> 10)
  {
LABEL_236:
    __break(1u);
    goto LABEL_237;
  }

  v132 = *(v264 + 24);
  v133 = *(v264 + 32);
  v135 = *(v264 + 40);
  v134 = *(v264 + 48);
  v137 = *(v264 + 56);
  v136 = *(v264 + 64);
  *&v300 = v260;
  v138 = v258;
  *(&v300 + 1) = v259;
  *&v301 = v258;
  v139 = v257;
  *(&v301 + 1) = v257;
  v302 = v268;
  v303 = v263;
  if (v260 >> 10 == v31)
  {
    v140 = v259;
    goto LABEL_194;
  }

  v277 = v136;
  v154 = v254[1];
  v310 = *v254;
  v311 = v154;
  v312 = *(v254 + 4);
  outlined init with copy of Rope<BigString._Chunk>._Node?(&v310, &v289);
  if ((specialized Set.contains(_:)(0, 0, MEMORY[0x1E69E7CD0]) & 1) == 0 || v31 <= BigString.startIndex.getter() >> 10)
  {
    v164 = v260;
    v165 = v258;
    v163 = v263;
    v162 = v268;
LABEL_152:
    v260 = v164;
    *&v278 = v164;
    *(&v278 + 1) = v259;
    v258 = v165;
    *&v279 = v165;
    *(&v279 + 1) = v257;
    v280 = v162;
    v281 = v163;
    v179 = MEMORY[0x1E69E7CD0];
    if ((specialized Collection<>._containsScalarConstraint.getter(MEMORY[0x1E69E7CD0]) & 1) == 0)
    {
LABEL_188:
      v211 = &v323;
LABEL_191:
      result = outlined destroy of BigString(v211);
      goto LABEL_192;
    }

    v275 = v137;
    v276 = v134;
    v180 = 0;
    v181 = 1 << *(v179 + 32);
    v182 = -1;
    if (v181 < 64)
    {
      v182 = ~(-1 << v181);
    }

    v183 = v182 & *(v179 + 56);
    v184 = (v181 + 63) >> 6;
    v37 = MEMORY[0x1E69E7CC0];
    while (v183)
    {
LABEL_161:
      v186 = __clz(__rbit64(v183));
      v183 &= v183 - 1;
      v187 = (*(v179 + 48) + ((v180 << 10) | (16 * v186)));
      v188 = v187[1];
      if (v188 >= 2)
      {
        v189 = specialized Collection.first.getter(*v187, v188);
        if ((v189 & 0x100000000) == 0)
        {
          v274 = v189;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2) + 1, 1, v37);
          }

          v191 = *(v37 + 2);
          v190 = *(v37 + 3);
          v192 = v191 + 1;
          v193 = v274;
          if (v191 >= v190 >> 1)
          {
            v273 = v191 + 1;
            v194 = v37;
            v195 = v191;
            v196 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v190 > 1), v191 + 1, 1, v194);
            v192 = v273;
            v193 = v274;
            v191 = v195;
            v37 = v196;
          }

          *(v37 + 2) = v192;
          *&v37[4 * v191 + 32] = v193;
        }
      }
    }

    while (1)
    {
      v185 = v180 + 1;
      if (__OFADD__(v180, 1))
      {
        break;
      }

      if (v185 >= v184)
      {

        v314 = v132;
        v315 = v133;
        v316 = v135;
        v317 = v276;
        v318 = v275;
        v319 = v277;
        BigString.UnicodeScalarView.subscript.getter();
        v36 = v294 >> 10;
        if (v294 >> 10 == *(&v295 + 1) >> 10)
        {

          outlined destroy of BigSubstring.UnicodeScalarView(&v289);
          goto LABEL_188;
        }

        v28 = BigSubstring.UnicodeScalarView.index(before:)();
        v34 = v214;
        v27 = v215;
        v29 = v216;
        v217 = BigSubstring.UnicodeScalarView.subscript.getter();
        if (!specialized Sequence<>.contains(_:)(v217, v37))
        {
          goto LABEL_201;
        }

        outlined destroy of BigSubstring.UnicodeScalarView(&v289);
        result = outlined destroy of BigString(&v323);
LABEL_206:
        v128 = v28;
        v140 = v34;
        v138 = v27;
        v139 = v29;
        v129 = v264;
        if (v31 < v28 >> 10)
        {
          __break(1u);
          goto LABEL_208;
        }

        goto LABEL_194;
      }

      v183 = *(v179 + 8 * v185 + 56);
      ++v180;
      if (v183)
      {
        v180 = v185;
        goto LABEL_161;
      }
    }

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
    goto LABEL_227;
  }

  *&v320 = v132;
  *(&v320 + 1) = v133;
  *&v321 = v135;
  v275 = v137;
  v276 = v134;
  *(&v321 + 1) = v134;
  *&v322 = v137;
  *(&v322 + 1) = v277;
  v155 = BigString.UTF8View.index(before:)();
  v157 = v156;
  v159 = v158;
  v161 = v160;
  result = BigString.UTF8View.subscript.getter();
  if (v31 < v155 >> 10)
  {
LABEL_240:
    __break(1u);
    goto LABEL_241;
  }

  v283 = v155;
  v284 = v157;
  v285 = v159;
  v286 = v161;
  v287 = v268;
  v288 = v263;
  specialized BidirectionalCollection<>._getBlock(for:in:)(1, &v283, &v289);
  result = outlined destroy of BigSubstring.UTF8View(&v305);
  v162 = v268;
  v163 = v263;
  v164 = v260;
  v165 = v258;
  v137 = v275;
  v134 = v276;
  if (v292 == 2)
  {
    goto LABEL_152;
  }

  v164 = v289;
  if (v31 >= v289 >> 10)
  {
    v165 = v291;
    v259 = v290;
    v257 = v292;
    goto LABEL_152;
  }

LABEL_242:
  __break(1u);
LABEL_243:
  __break(1u);
  return result;
}

uint64_t specialized Collection.formIndex(after:)(unint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v193 - v6;
  v9 = *a1;
  v8 = a1[1];
  v11 = a1[2];
  v10 = a1[3];
  v207 = a1;
  result = type metadata accessor for AttributedString.Runs.NSAttributesSlice(0);
  v228 = *(v2 + *(result + 20));
  v227 = v228[2];
  if (!v227)
  {
LABEL_173:
    __break(1u);
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
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
    return result;
  }

  v13 = *v2;
  v219 = v9;
  v216 = v8;
  *&v217 = v11;
  *(&v217 + 1) = v10;
  v222 = v13;
  AttributedString.Guts.findRun(at:)(v9, v10, &v255);
  v223 = v257;
  v224 = v256;
  v235 = v258;
  v220 = v255;
  v221 = v259;
  v210 = v261;
  v211 = v260;
  v208 = v263;
  v209 = v262;
  v14 = *(type metadata accessor for AttributedString.Runs() + 24);
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v238 = v14;
  RangeSet.ranges.getter();
  v15 = RangeSet.Ranges.count.getter();
  v17 = *(v5 + 8);
  v16 = v5 + 8;
  v239 = v7;
  v236 = v17;
  v17(v7, v4);
  if (v15 < 1)
  {
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    v180 = BigSubstring.UnicodeScalarView.index(after:)();
    if (v239 > v180 >> 10)
    {
      v148 = v180;
      v159 = v181;
      v153 = v182;
      v123 = v183;
      do
      {
        v184 = BigSubstring.UnicodeScalarView.subscript.getter();
        v185 = *(v11 + 16);
        v186 = 32;
        while (v185)
        {
          v187 = *(v11 + v186);
          v186 += 4;
          --v185;
          if (v187 == v184)
          {
            goto LABEL_167;
          }
        }

        v148 = BigSubstring.UnicodeScalarView.index(after:)();
        v159 = v188;
        v153 = v189;
        v123 = v190;
      }

      while (v239 > v148 >> 10);
    }

LABEL_160:

    outlined destroy of BigSubstring.UnicodeScalarView(&v255);
    goto LABEL_161;
  }

  v7 = 0;
  v18 = v219 >> 10;
  while (1)
  {
    if (__OFADD__(v7, v15))
    {
      goto LABEL_152;
    }

    v19 = (v7 + v15) / 2;
    v11 = v239;
    RangeSet.ranges.getter();
    RangeSet.Ranges.subscript.getter();
    result = v236(v11, v4);
    if (v18 >= v255 >> 10)
    {
      break;
    }

LABEL_4:
    v15 = v19;
    if (v7 >= v19)
    {
      goto LABEL_151;
    }
  }

  if (v18 >= v259 >> 10)
  {
    v7 = v19 + 1;
    v19 = v15;
    goto LABEL_4;
  }

  v203 = v261;
  v204 = v260;
  v202 = v262;
  v20 = v2[15];
  v212 = v18;
  v194 = (v7 + v15) / 2;
  v195 = v4;
  v199 = v16;
  v225 = v2;
  v205 = v259;
  v215 = v259 >> 10;
  if (v235 == v20)
  {
    v21 = v2[22];
    if (v2[26] == 2)
    {
      if (v21 != 2)
      {
        goto LABEL_71;
      }
    }

    else if (v21 == 2 || (v2[19] ^ v2[23]) >= 1024)
    {
      goto LABEL_71;
    }
  }

  if (v235 >= v20)
  {
    goto LABEL_180;
  }

  v201 = v20;
  v22 = v222;
  v23 = v222[9];
  v24 = v222[10];
  v25 = v222[11];
  v26 = v222[12];
  swift_unknownObjectRetain();
  v27 = v220;
  v28 = v223;
  specialized Rope.subscript.getter(v220, v224, v223, v23, v24, v25, v26);
  v226 = v29;
  v198 = v30;
  result = swift_unknownObjectRelease();
  v31 = v22[9];
  v32 = v22[10];
  v33 = (v235 + 1);
  v200 = v228 + 5;
  v34 = v22[12];
  v255 = v27;
  v256 = v224;
  v257 = v28;
  while (2)
  {
    if (v27 != v34)
    {
      goto LABEL_174;
    }

    v214 = v33;
    v218 = v34;
    v223 = v28;
    v235 = v32;
    if (v28)
    {
      v35 = *(v28 + 24 * ((v224 >> ((4 * *(v28 + 18) + 8) & 0x3C)) & 0xF) + 24);
      swift_unknownObjectRetain();
    }

    else
    {
      swift_unknownObjectRetain();
      v35 = specialized Rope._Node.subscript.getter(v224, v31);
    }

    v36 = v221 + v35;
    if (__OFADD__(v221, v35))
    {
      goto LABEL_175;
    }

    if (v31)
    {
      v37 = ((-15 << ((4 * *(v31 + 18) + 8) & 0x3C)) - 1) & *(v31 + 18) | (*(v31 + 16) << ((4 * *(v31 + 18) + 8) & 0x3C));
    }

    else
    {
      v37 = 0;
    }

    if (v224 >= v37)
    {
      goto LABEL_176;
    }

    if (v223)
    {
      v38 = (4 * *(v223 + 18) + 8) & 0x3C;
      v39 = ((v224 >> v38) & 0xF) + 1;
      if (v39 < *(v223 + 16))
      {
        v213 = (v39 << v38) | ((-15 << v38) - 1) & v224;
        result = swift_unknownObjectRelease();
        goto LABEL_31;
      }
    }

    result = specialized Rope._Node.formSuccessor(of:)(&v255, v31);
    if (result)
    {
      result = swift_unknownObjectRelease();
      v213 = v256;
LABEL_31:
      v40 = v257;
      v41 = v255;
    }

    else
    {
      if (v31)
      {
        v42 = *(v31 + 18);
        v43 = *(v31 + 16);
        result = swift_unknownObjectRelease();
        v40 = 0;
        v213 = ((-15 << ((4 * v42 + 8) & 0x3C)) - 1) & v42 | (v43 << ((4 * v42 + 8) & 0x3C));
      }

      else
      {
        v213 = 0;
        v40 = 0;
      }

      v41 = v218;
    }

    if (v201 < v214)
    {
LABEL_150:

      goto LABEL_77;
    }

    if (v214 != v201)
    {
      goto LABEL_43;
    }

    v44 = v2[22];
    if (v2[26] != 2)
    {
      if (v44 == 2 || (v2[19] ^ v2[23]) >= 1024)
      {
        goto LABEL_43;
      }

      goto LABEL_150;
    }

    if (v44 == 2)
    {
      goto LABEL_150;
    }

LABEL_43:
    if (v41 != v22[12])
    {
      goto LABEL_177;
    }

    v196 = v40;
    v197 = v36;
    v220 = v41;
    if (v40)
    {
      v45 = v40 + 24 * ((v213 >> ((4 * *(v40 + 18) + 8) & 0x3C)) & 0xF);
      v46 = *(v45 + 40);
      v231 = *(v45 + 32);

      v206 = v46;
    }

    else
    {
      v47 = v22[9];
      swift_unknownObjectRetain();
      specialized Rope._Node.subscript.getter(v213, v47);
      v231 = v48;
      v206 = v49;
      result = swift_unknownObjectRelease();
    }

    v50 = v226;
    v51 = 0;
    v52 = v200;
    do
    {
      if (v51 >= v228[2])
      {
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      v234 = v52;
      v235 = v51;
      v53 = *(v52 - 1);
      v54 = *v52;
      if (*(v50 + 16))
      {

        v55 = specialized __RawDictionaryStorage.find<A>(_:)(v53, v54);
        if (v56)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v50 + 56) + 72 * v55, &v274);
        }

        else
        {
          v278 = 0;
          v276 = 0u;
          v277 = 0u;
          v274 = 0u;
          v275 = 0u;
        }
      }

      else
      {
        v278 = 0;
        v276 = 0u;
        v277 = 0u;
        v274 = 0u;
        v275 = 0u;
      }

      if (*(v231 + 16))
      {
        v57 = v2;
        v58 = v231;
        v59 = specialized __RawDictionaryStorage.find<A>(_:)(v53, v54);
        v61 = v60;

        if (v61)
        {
          outlined init with copy of AttributedString._AttributeValue(*(v58 + 56) + 72 * v59, &v269);
        }

        else
        {
          v273 = 0;
          v271 = 0u;
          v272 = 0u;
          v269 = 0u;
          v270 = 0u;
        }

        v2 = v57;
      }

      else
      {

        v273 = 0;
        v271 = 0u;
        v272 = 0u;
        v269 = 0u;
        v270 = 0u;
      }

      outlined init with copy of FloatingPointRoundingRule?(&v274, &v255, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined init with copy of FloatingPointRoundingRule?(&v269, &v264, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (v258)
      {
        outlined init with copy of FloatingPointRoundingRule?(&v255, &v245, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (!*(&v265 + 1))
        {
          outlined destroy of TermOfAddress?(&v269, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v274, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of AttributedString._AttributeValue(&v245);
LABEL_73:
          outlined destroy of TermOfAddress?(&v255, &_s10Foundation16AttributedStringV15_AttributeValueVSg_AFtMd);
LABEL_75:

          v18 = v212;
          goto LABEL_76;
        }

        v242 = v266;
        v243 = v267;
        v244 = v268;
        v240 = v264;
        v241 = v265;
        v62 = *(&v247 + 1);
        v230 = v248;
        v229 = __swift_project_boxed_opaque_existential_1(&v245, *(&v247 + 1));
        v63 = __swift_project_boxed_opaque_existential_1(&v240, *(&v241 + 1));
        v233 = &v193;
        v64 = *(v62 - 8);
        MEMORY[0x1EEE9AC00](v63);
        v66 = &v193 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
        v232 = &v193;
        v68 = MEMORY[0x1EEE9AC00](v67);
        (*(v70 + 16))(&v193 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0), v68);
        v71 = type metadata accessor for Optional();
        v72 = *(v71 - 8);
        MEMORY[0x1EEE9AC00](v71);
        v74 = &v193 - v73;
        v75 = swift_dynamicCast();
        v76 = *(v64 + 56);
        if (!v75)
        {
          v76(v74, 1, 1, v62);
          outlined destroy of TermOfAddress?(&v269, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v274, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          (*(v72 + 8))(v74, v71);
          outlined destroy of AttributedString._AttributeValue(&v240);
          outlined destroy of AttributedString._AttributeValue(&v245);
          outlined destroy of TermOfAddress?(&v255, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          goto LABEL_75;
        }

        v76(v74, 0, 1, v62);
        (*(v64 + 32))(v66, v74, v62);
        v77 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v64 + 8))(v66, v62);
        outlined destroy of TermOfAddress?(&v269, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v274, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of AttributedString._AttributeValue(&v240);
        outlined destroy of AttributedString._AttributeValue(&v245);
        result = outlined destroy of TermOfAddress?(&v255, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v2 = v225;
        v50 = v226;
        if ((v77 & 1) == 0)
        {
          goto LABEL_75;
        }
      }

      else
      {
        outlined destroy of TermOfAddress?(&v269, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?(&v274, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        if (*(&v265 + 1))
        {
          goto LABEL_73;
        }

        result = outlined destroy of TermOfAddress?(&v255, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      }

      v51 = (v235 + 1);
      v52 = v234 + 2;
    }

    while (v227 != (v235 + 1));

    v22 = v222;
    v31 = v222[9];
    v32 = v222[10];
    v34 = v222[12];
    v221 = v197;
    v27 = v220;
    v255 = v220;
    v256 = v213;
    v28 = v196;
    v224 = v213;
    v257 = v196;
    v33 = (v214 + 1);
    v18 = v212;
    if (!__OFADD__(v214, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_71:
  v218 = v220;
LABEL_76:
  v22 = v222;
LABEL_77:
  v78 = v22[9];
  v79 = v22[10];
  v80 = v22[11];
  v81 = v22[12];
  swift_unknownObjectRetain();
  v82 = specialized Rope.subscript.getter(v218, v224, v223, v78, v79, v80, v81);
  swift_unknownObjectRelease();

  if (__OFADD__(v221, v82))
  {
    goto LABEL_178;
  }

  v83 = *(v22 + 5);
  v291 = *(v22 + 3);
  v292 = v83;
  v293 = *(v22 + 7);
  if (__OFSUB__(v221 + v82, v211 >> 11))
  {
    goto LABEL_179;
  }

  swift_unknownObjectRetain();
  v7 = BigString.UTF8View.index(_:offsetBy:)();
  v235 = v84;
  v15 = v85;
  v2 = v86;
  result = swift_unknownObjectRelease();
  v87 = v7 >> 10;
  v88 = v22[3];
  v89 = v22[5];
  v90 = v22[6];
  v233 = v22[4];
  v234 = v89;
  v92 = v22[7];
  v91 = v22[8];
  if (v7 >> 10 >= v215)
  {
    v230 = v22[7];
    v231 = v90;
    v229 = v91;
    v111 = v219;
    *&v269 = v219;
    v112 = v216;
    *(&v269 + 1) = v216;
    v113 = v88;
    v115 = *(&v217 + 1);
    v114 = v217;
    v270 = v217;
    v116 = v204;
    v117 = v205;
    *&v271 = v205;
    *(&v271 + 1) = v204;
    v119 = v202;
    v118 = v203;
    *&v272 = v203;
    *(&v272 + 1) = v202;
    v232 = v113;
    swift_unknownObjectRetain();
    v120 = specialized Set.contains(_:)(0, 0, MEMORY[0x1E69E7CD0]);
    v121 = v118;
    v122 = v119;
    if (v120)
    {
      v285 = v232;
      v286 = v233;
      v287 = v234;
      v288 = v231;
      v289 = v230;
      v290 = v229;
      BigString.UTF8View.subscript.getter();
      v245 = v111;
      v246 = v112;
      v247 = __PAIR128__(v115, v114);
      v248 = v111;
      v249 = v112;
      v250 = __PAIR128__(v115, v114);
      specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v245, &v255);
      result = outlined destroy of BigSubstring.UTF8View(&v274);
      v116 = v204;
      v117 = v205;
      v122 = v202;
      v121 = v203;
      if (v262 != 2)
      {
        v117 = v259;
        if (v18 > v259 >> 10)
        {
          goto LABEL_183;
        }

        v116 = v260;
        v121 = v261;
        v122 = v262;
        v115 = *(&v217 + 1);
        v114 = v217;
        v112 = v216;
        v111 = v219;
      }
    }

    *&v240 = v111;
    *(&v240 + 1) = v112;
    *&v241 = v114;
    *(&v241 + 1) = v115;
    *&v242 = v117;
    *(&v242 + 1) = v116;
    v123 = v116;
    v235 = v121;
    *&v243 = v121;
    *(&v243 + 1) = v122;
    v228 = v122;
    v124 = MEMORY[0x1E69E7CD0];
    result = specialized Collection<>._containsScalarConstraint.getter(MEMORY[0x1E69E7CD0]);
    v125 = v232;
    if (result)
    {
      v126 = 0;
      v127 = 1 << *(v124 + 32);
      v128 = -1;
      if (v127 < 64)
      {
        v128 = ~(-1 << v127);
      }

      v129 = v128 & *(v124 + 56);
      v130 = (v127 + 63) >> 6;
      v131 = MEMORY[0x1E69E7CC0];
LABEL_110:
      v132 = v230;
      while (v129)
      {
LABEL_116:
        v134 = __clz(__rbit64(v129));
        v129 &= v129 - 1;
        v135 = (*(v124 + 48) + ((v126 << 10) | (16 * v134)));
        v136 = v135[1];
        if (v136 >= 2)
        {
          result = specialized Collection.first.getter(*v135, v136);
          if ((result & 0x100000000) == 0)
          {
            v227 = result;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v131 + 16) + 1, 1, v131);
              v131 = result;
            }

            v138 = *(v131 + 16);
            v137 = *(v131 + 24);
            v139 = v138 + 1;
            v140 = v227;
            if (v138 >= v137 >> 1)
            {
              v226 = v138 + 1;
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v137 > 1), v138 + 1, 1, v131);
              v139 = v226;
              v140 = v227;
              v131 = result;
            }

            *(v131 + 16) = v139;
            *(v131 + 4 * v138 + 32) = v140;
            goto LABEL_110;
          }
        }
      }

      while (1)
      {
        v133 = v126 + 1;
        if (__OFADD__(v126, 1))
        {
          break;
        }

        if (v133 >= v130)
        {

          v279 = v125;
          v280 = v233;
          v281 = v234;
          v282 = v231;
          v283 = v132;
          v284 = v229;
          BigString.UnicodeScalarView.subscript.getter();
          v141 = *(&v264 + 1) >> 10;
          if (*(&v264 + 1) >> 10 <= v261 >> 10)
          {
LABEL_141:

            outlined destroy of BigSubstring.UnicodeScalarView(&v255);
            goto LABEL_142;
          }

          v142 = BigSubstring.UnicodeScalarView.subscript.getter();
          v143 = *(v131 + 16);
          v144 = 32;
          do
          {
            if (!v143)
            {
              v162 = BigSubstring.UnicodeScalarView.index(after:)();
              if (v141 > v162 >> 10)
              {
                v146 = v162;
                v148 = v163;
                v152 = v165;
                v153 = v222;
                do
                {
                  v234 = v164;
                  v166 = BigSubstring.UnicodeScalarView.subscript.getter();
                  v167 = *(v131 + 16);
                  v168 = 32;
                  while (v167)
                  {
                    v169 = *(v131 + v168);
                    v168 += 4;
                    --v167;
                    if (v169 == v166)
                    {

                      v150 = v234;
                      goto LABEL_165;
                    }
                  }

                  v146 = BigSubstring.UnicodeScalarView.index(after:)();
                  v148 = v170;
                  v152 = v171;
                }

                while (v141 > v146 >> 10);
              }

              goto LABEL_141;
            }

            v145 = *(v131 + v144);
            v144 += 4;
            --v143;
          }

          while (v145 != v142);

          v146 = BigSubstring.UnicodeScalarView.index(after:)();
          v148 = v147;
          v150 = v149;
          v152 = v151;
          v153 = v222;
LABEL_165:
          outlined destroy of BigSubstring.UnicodeScalarView(&v255);
          result = swift_unknownObjectRelease();
          v117 = v146;
          v123 = v148;
          v228 = v152;
          v159 = v239;
          if (v212 <= v146 >> 10)
          {
            goto LABEL_143;
          }

          __break(1u);
LABEL_167:

LABEL_168:
          outlined destroy of BigSubstring.UnicodeScalarView(&v255);
          result = swift_unknownObjectRelease();
          v7 = v148;
          v235 = v159;
          v15 = v153;
          v2 = v123;
          v191 = v222;
          if (v212 > v148 >> 10)
          {
            __break(1u);
            goto LABEL_170;
          }

          goto LABEL_163;
        }

        v129 = *(v124 + 8 * v133 + 56);
        ++v126;
        if (v129)
        {
          v126 = v133;
          goto LABEL_116;
        }
      }

LABEL_171:
      __break(1u);
      goto LABEL_172;
    }

LABEL_142:
    result = swift_unknownObjectRelease();
    v159 = v239;
    v153 = v222;
    v150 = v235;
LABEL_143:
    if (v215 == v117 >> 10)
    {
      RangeSet.ranges.getter();
      v172 = v195;
      v173 = RangeSet.Ranges.count.getter();
      result = v236(v159, v172);
      if (__OFSUB__(v173, 1))
      {
        goto LABEL_182;
      }

      if (v194 == v173 - 1)
      {
        v174 = v153[2];
        v175 = v207;
        v176 = v204;
        *v207 = v205;
        v175[1] = v176;
        v177 = v202;
        v175[2] = v203;
        v175[3] = v177;
      }

      else
      {
        RangeSet.ranges.getter();
        RangeSet.Ranges.subscript.getter();
        result = v236(v159, v172);
        v174 = v153[2];
        v179 = v252;
        v175 = v207;
        *v207 = v251;
        *(v175 + 1) = v179;
      }
    }

    else
    {
      v174 = v153[2];
      v175 = v207;
      *v207 = v117;
      v175[1] = v123;
      v178 = v228;
      v175[2] = v150;
      v175[3] = v178;
    }
  }

  else
  {
    v93 = v219;
    if (v87 < v18)
    {
      goto LABEL_181;
    }

    *&v269 = v219;
    *(&v269 + 1) = v216;
    v270 = v217;
    *&v271 = v7;
    *(&v271 + 1) = v235;
    *&v272 = v15;
    *(&v272 + 1) = v2;
    if (v18 != v87)
    {
      swift_unknownObjectRetain();
      v94 = specialized Set.contains(_:)(0, 0, MEMORY[0x1E69E7CD0]);
      v231 = v90;
      if (v94)
      {
        *&v251 = v88;
        *(&v251 + 1) = v233;
        *&v252 = v234;
        *(&v252 + 1) = v90;
        v253 = v92;
        v254 = v91;
        BigString.UTF8View.subscript.getter();
        v245 = v93;
        v246 = v216;
        v247 = v217;
        v248 = v93;
        v249 = v216;
        v250 = v217;
        specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v245, &v255);
        result = outlined destroy of BigSubstring.UTF8View(&v274);
        if (v262 != 2)
        {
          v7 = v259;
          if (v18 > v259 >> 10)
          {
            goto LABEL_184;
          }

          v235 = v260;
          v15 = v261;
          v2 = v262;
        }
      }

      *&v240 = v93;
      *(&v240 + 1) = v216;
      v241 = v217;
      *&v242 = v7;
      *(&v242 + 1) = v235;
      *&v243 = v15;
      *(&v243 + 1) = v2;
      v95 = MEMORY[0x1E69E7CD0];
      result = specialized Collection<>._containsScalarConstraint.getter(MEMORY[0x1E69E7CD0]);
      if (result)
      {
        v229 = v91;
        v230 = v92;
        v96 = 0;
        v97 = 1 << *(v95 + 32);
        v98 = -1;
        if (v97 < 64)
        {
          v98 = ~(-1 << v97);
        }

        v99 = v98 & *(v95 + 56);
        v100 = (v97 + 63) >> 6;
        v11 = MEMORY[0x1E69E7CC0];
        while (v99)
        {
LABEL_95:
          v102 = __clz(__rbit64(v99));
          v99 &= v99 - 1;
          v103 = (*(v95 + 48) + ((v96 << 10) | (16 * v102)));
          v104 = v103[1];
          if (v104 >= 2)
          {
            result = specialized Collection.first.getter(*v103, v104);
            if ((result & 0x100000000) == 0)
            {
              v239 = result;
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11);
                v11 = result;
              }

              v106 = *(v11 + 16);
              v105 = *(v11 + 24);
              v107 = v106 + 1;
              v108 = v239;
              if (v106 >= v105 >> 1)
              {
                v238 = v106 + 1;
                v109 = v11;
                v110 = v106;
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v105 > 1), v106 + 1, 1, v109);
                v107 = v238;
                v108 = v239;
                v106 = v110;
                v11 = result;
              }

              *(v11 + 16) = v107;
              *(v11 + 4 * v106 + 32) = v108;
            }
          }
        }

        while (1)
        {
          v101 = v96 + 1;
          if (__OFADD__(v96, 1))
          {
            break;
          }

          if (v101 >= v100)
          {

            v285 = v88;
            v286 = v233;
            v287 = v234;
            v288 = v231;
            v289 = v230;
            v290 = v229;
            BigString.UnicodeScalarView.subscript.getter();
            if (*(&v264 + 1) >> 10 <= v261 >> 10)
            {
              goto LABEL_160;
            }

            v239 = *(&v264 + 1) >> 10;
            v232 = v88;
            v154 = BigSubstring.UnicodeScalarView.subscript.getter();
            v155 = *(v11 + 16);
            v156 = 32;
            while (v155)
            {
              v157 = *(v11 + v156);
              v156 += 4;
              --v155;
              if (v157 == v154)
              {

                v148 = BigSubstring.UnicodeScalarView.index(after:)();
                v159 = v158;
                v153 = v160;
                v123 = v161;
                goto LABEL_168;
              }
            }

            goto LABEL_153;
          }

          v99 = *(v95 + 8 * v101 + 56);
          ++v96;
          if (v99)
          {
            v96 = v101;
            goto LABEL_95;
          }
        }

LABEL_172:
        __break(1u);
        goto LABEL_173;
      }

LABEL_161:
      result = swift_unknownObjectRelease();
    }

    v191 = v222;
LABEL_163:
    v174 = v191[2];
    v175 = v207;
    v192 = v235;
    *v207 = v7;
    v175[1] = v192;
    v175[2] = v15;
    v175[3] = v2;
  }

  v175[4] = v174;
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v3 = type metadata accessor for Unicode._NFD();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Unicode._NFD.Iterator();
  v7 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = dispatch thunk of Sequence.underestimatedCount.getter();
  v30 = v1;
  v11 = *v1;
  v12 = *(*v1 + 2);
  v13 = v12 + v10;
  if (__OFADD__(v12, v10))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v16 = *(v11 + 3) >> 1, v16 < v13))
  {
    if (v12 <= v13)
    {
      v17 = v13;
    }

    else
    {
      v17 = v12;
    }

    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v17, 1, v11);
    v16 = *(v11 + 3) >> 1;
  }

  v18 = v16 - *(v11 + 2);
  (*(v4 + 16))(v6, a1, v3);
  v19 = dispatch thunk of Sequence._copyContents(initializing:)();
  v21 = *(v4 + 8);
  v20 = v4 + 8;
  v21(a1, v3);
  if (v19 < v14)
  {
    goto LABEL_16;
  }

  if (v19 < 1)
  {
    goto LABEL_12;
  }

  v22 = *(v11 + 2);
  v23 = __OFADD__(v22, v19);
  v24 = v22 + v19;
  if (v23)
  {
    __break(1u);
LABEL_22:
    while (1)
    {
      v26 = *(v11 + 3);
      v27 = v26 >> 1;
      if ((v26 >> 1) >= v20 + 1)
      {
        break;
      }

      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v20 + 1, 1, v11);
      v28 = v33;
      v27 = *(v11 + 3) >> 1;
      if ((v33 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_21:
      *(v11 + 2) = v20;
      if (v28)
      {
        goto LABEL_18;
      }
    }

    v28 = 0;
    do
    {
LABEL_24:
      if (v20 >= v27)
      {
        break;
      }

      *&v11[4 * v20++ + 32] = v32;
      dispatch thunk of IteratorProtocol.next()();
      v28 = v33;
    }

    while ((v33 & 1) == 0);
    goto LABEL_21;
  }

  *(v11 + 2) = v24;
LABEL_12:
  if (v19 != v18)
  {
    result = (*(v7 + 8))(v9, v31);
    goto LABEL_14;
  }

LABEL_17:
  v20 = *(v11 + 2);
  v14 = v31;
  dispatch thunk of IteratorProtocol.next()();
  if ((v33 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  result = (*(v7 + 8))(v9, v14);
LABEL_14:
  *v30 = v11;
  return result;
}

{
  v3 = *v1;
  v4 = *(*v1 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v6 = *(v3 + 3) >> 1, v6 < v4))
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v4, 1, v3);
    v6 = *(v3 + 3) >> 1;
  }

  v7 = *(v3 + 2);
  v8 = v6 - v7;
  v9 = specialized Sequence._copySequenceContents(initializing:)(&v25, &v3[16 * v7 + 32], v6 - v7, a1);
  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v9)
  {
    v10 = *(v3 + 2);
    v11 = __OFADD__(v10, v9);
    v12 = v10 + v9;
    if (v11)
    {
      __break(1u);
LABEL_24:
      *(v3 + 2) = v8;
LABEL_25:
      v1 = a1;
      goto LABEL_9;
    }

    *(v3 + 2) = v12;
  }

  if (v9 == v8)
  {
LABEL_11:
    a1 = v1;
    v8 = *(v3 + 2);
    v16 = ICU.Enumerator.Elements.Iterator.next()();
    object = v16.value._object;
    countAndFlagsBits = v16.value._countAndFlagsBits;
    if (v16.value._object)
    {
      while (1)
      {
        v17 = *(v3 + 3);
        v18 = v17 >> 1;
        if ((v17 >> 1) < v8 + 1)
        {
          v22 = countAndFlagsBits;
          v23 = object;
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v8 + 1, 1, v3);
          object = v23;
          v3 = v24;
          countAndFlagsBits = v22;
          v18 = *(v3 + 3) >> 1;
        }

        if (v8 <= v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = v8;
        }

        v20 = &v3[16 * v8 + 40];
        while (v19 != v8)
        {
          *(v20 - 1) = countAndFlagsBits;
          *v20 = object;
          ++v8;
          v21 = ICU.Enumerator.Elements.Iterator.next()();
          object = v21.value._object;
          countAndFlagsBits = v21.value._countAndFlagsBits;
          v20 += 16;
          if (!v21.value._object)
          {
            goto LABEL_24;
          }
        }

        *(v3 + 2) = v19;
        v8 = v19;
      }
    }

    goto LABEL_25;
  }

LABEL_9:

  *v1 = v3;
  return result;
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t _s10Foundation28EncodableAttributedStringKeyPAASE5ValueRpzrlE6encode_2toyAE_s7Encoder_ptKFZAA15AttributeScopesO0A10AttributesV09ByteCountJ0O_Tt1B5(int a1, void *a2)
{
  v20 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd);
  v17 = *(v3 - 8);
  v18 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - v4;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation15EmptyCodingKeysOGMd);
  v6 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation15AttributeScopesO0D10AttributesV09ByteCountE0O9ComponentO10CodingKeys33_163072BBDC91CE21DC09F272FDEEA67DLLOGMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys();
  v13 = v20;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v13)
  {
    case 11:
      v25 = 3;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      goto LABEL_7;
    case 10:
      v22 = 1;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
LABEL_7:
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v6 + 8))(v8, v19);
      return (*(v10 + 8))(v12, v9);
    case 9:
      v21 = 0;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v6 + 8))(v8, v19);
      break;
    default:
      v24 = 2;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v23 = v13;
      lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit();
      v15 = v18;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v17 + 8))(v5, v15);
      break;
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t _s10Foundation28EncodableAttributedStringKeyPAASE5ValueRpzrlE6encode_2toyAE_s7Encoder_ptKFZAA15AttributeScopesO0A10AttributesV09Localizedd8ArgumentL0V0m7NumericnJ0O_Tt1B5(unint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v37 = a1;
  v36 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd);
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation15AttributeScopesO0D10AttributesV023LocalizedStringArgumentG0V0h7NumericjE0O5ValueO10CodingKeys33_163072BBDC91CE21DC09F272FDEEA67DLLOGMd);
  v38 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v19 = &v32 - v18;
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (BYTE4(a3) > 1u)
  {
    if (BYTE4(a3) == 2)
    {
      LOBYTE(v42) = 2;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v22 = v41;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v23 = v40;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v39 + 8))(v11, v23);
      return (*(v38 + 8))(v19, v22);
    }

    else
    {
      v26 = v36;
      v27 = v37;
      v28 = HIDWORD(v37);
      v29 = HIWORD(v37);
      v30 = v36 >> 16;
      v35 = HIWORD(v36);
      LOBYTE(v42) = 3;
      v33 = HIDWORD(v36);
      v34 = a3 >> 16;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v42 = v27;
      v43 = v28;
      v44 = v29;
      v45 = v26;
      v46 = v30;
      v47 = v33;
      v48 = v35;
      v49 = a3;
      v50 = v34;
      type metadata accessor for NSDecimal(0);
      lazy protocol witness table accessor for type NSDecimal and conformance NSDecimal(&lazy protocol witness table cache variable for type NSDecimal and conformance NSDecimal, type metadata accessor for NSDecimal);
      v31 = v40;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v39 + 8))(v8, v31);
      return (*(v38 + 8))(v19, v41);
    }
  }

  else
  {
    if (BYTE4(a3))
    {
      LOBYTE(v42) = 1;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v20 = v41;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v25 = v40;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v39 + 8))(v14, v25);
    }

    else
    {
      LOBYTE(v42) = 0;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v20 = v41;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v21 = v40;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v39 + 8))(v17, v21);
    }

    return (*(v38 + 8))(v19, v20);
  }
}

uint64_t _s10Foundation28EncodableAttributedStringKeyPAASE5ValueRpzrlE6encode_2toyAE_s7Encoder_ptKFZAA15AttributeScopesO0A10AttributesV17ImageURLAttributeO_Tt1B5Tm(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation3URLV10CodingKeys33_FB6C8C127CB51A72D58E049FC6F7743FLLOGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  lazy protocol witness table accessor for type URL.CodingKeys and conformance URL.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  ObjectType = swift_getObjectType();
  (*(a2 + 104))(ObjectType, a2);
  LOBYTE(v12) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v3)
  {
    (*(v7 + 8))(v9, v6);
  }

  else
  {

    (*(a2 + 120))(&v12, ObjectType, a2);
    if (v12)
    {
      v13 = 0;
      lazy protocol witness table accessor for type URL and conformance URL();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v7 + 8))(v9, v6);
      return swift_unknownObjectRelease();
    }

    else
    {
      return (*(v7 + 8))(v9, v6);
    }
  }
}

uint64_t _s10Foundation28EncodableAttributedStringKeyPAASE5ValueRpzrlE6encode_2toyAE_s7Encoder_ptKFZAA15AttributeScopesO0A10AttributesV022MarkdownSourcePositionJ0O_Tt1B5(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation16AttributedStringV22MarkdownSourcePositionV10CodingKeys33_4C994178458EBF836D449F281EBCAF09LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  lazy protocol witness table accessor for type AttributedString.MarkdownSourcePosition.CodingKeys and conformance AttributedString.MarkdownSourcePosition.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12[0]) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = *(a1 + 48);
    v14 = *(a1 + 32);
    v15 = v9;
    v16 = *(a1 + 64);
    v17 = 4;
    lazy protocol witness table accessor for type AttributedString.MarkdownSourcePosition.Offsets and conformance AttributedString.MarkdownSourcePosition.Offsets();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = *(a1 + 88);
    v12[0] = *(a1 + 72);
    v12[1] = v10;
    v13 = *(a1 + 104);
    LOBYTE(v14) = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void _s10Foundation28EncodableAttributedStringKeyPAASE5ValueRpzrlE6encode_2toyAE_s7Encoder_ptKFZAA15AttributeScopesO0A10AttributesV021InflectionAlternativeJ0O_Tt1B5(uint64_t a1, void *a2)
{
  v3 = v2;
  v61 = a1;
  if (one-time initialization token for _loadedScopeCache != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v4 = _loadedScopeCache;
    MEMORY[0x1EEE9AC00](a1);
    os_unfair_lock_lock(v4 + 10);
    closure #1 in _loadDefaultAttributes()partial apply(&v72);
    v5 = v4 + 10;
    if (v3)
    {
      goto LABEL_60;
    }

    os_unfair_lock_unlock(v5);
    v6 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14AttributeScope_pXpGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 32) = &type metadata for AttributeScopes.FoundationAttributes;
    *(inited + 40) = &protocol witness table for AttributeScopes.FoundationAttributes;
    v72 = v6;
    specialized Array.append<A>(contentsOf:)(inited);
    v3 = v72;
    v8 = *(v72 + 16);
    if (v8)
    {
      v72 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
      v9 = v72;
      v10 = v3 + 40;
      do
      {
        v11 = static AttributeScope.scopeDescription.getter(*(v10 - 8));

        v72 = v9;
        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
          v9 = v72;
        }

        *(v9 + 16) = v13 + 1;
        *(v9 + 8 * v13 + 32) = v11;
        v10 += 16;
        --v8;
      }

      while (v8);
    }

    else
    {

      v9 = MEMORY[0x1E69E7CC0];
    }

    v65 = *(v9 + 16);
    if (!v65)
    {
      v15 = MEMORY[0x1E69E7CC8];
LABEL_52:

      v72 = v61;
      v71 = v15;
      AttributedString.encode(to:configuration:)(a2, &v71);

      return;
    }

    v14 = 0;
    v64 = v9 + 32;
    v15 = MEMORY[0x1E69E7CC8];
    v63 = v9;
LABEL_13:
    if (v14 < *(v9 + 16))
    {
      break;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    a1 = swift_once();
  }

  v3 = *(v64 + 8 * v14);
  v66 = v14 + 1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = v15;
  v17 = v3 + 64;
  v18 = 1 << *(v3 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(v3 + 64);
  v21 = (v18 + 63) >> 6;
  v68 = v3;

  v22 = 0;
  for (i = v21; ; v21 = i)
  {
    if (!v20)
    {
      while (1)
      {
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
          goto LABEL_54;
        }

        if (v23 >= v21)
        {
          break;
        }

        v20 = *(v17 + 8 * v23);
        ++v22;
        if (v20)
        {
          goto LABEL_25;
        }
      }

      v3 = v68;

      v14 = v66;
      v9 = v63;
      if (v66 == v65)
      {
        goto LABEL_52;
      }

      goto LABEL_13;
    }

    v23 = v22;
LABEL_25:
    v24 = (v23 << 10) | (16 * __clz(__rbit64(v20)));
    v25 = (*(v68 + 48) + v24);
    v26 = *v25;
    v27 = v25[1];
    v69 = *(*(v68 + 56) + v24);

    v70 = v26;
    v28 = v15;
    v3 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27);
    v30 = *(v15 + 16);
    v31 = (v29 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v33 = v29;
    if (*(v15 + 24) >= v32)
    {
      break;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, isUniquelyReferenced_nonNull_native & 1);
    v28 = v72;
    v34 = v26;
    v35 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27);
    if ((v33 & 1) != (v36 & 1))
    {
      goto LABEL_59;
    }

    v3 = v35;
LABEL_31:
    v20 &= v20 - 1;
    if (v33)
    {

      *(*(v28 + 56) + 16 * v3) = v69;
    }

    else
    {
      *(v28 + 8 * (v3 >> 6) + 64) |= 1 << v3;
      v37 = (*(v28 + 48) + 16 * v3);
      *v37 = v34;
      v37[1] = v27;
      *(*(v28 + 56) + 16 * v3) = v69;
      v38 = *(v28 + 16);
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_55;
      }

      *(v28 + 16) = v40;
    }

    isUniquelyReferenced_nonNull_native = 1;
    v22 = v23;
    v15 = v28;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_30:
    v34 = v70;
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation19AttributedStringKey_pXpGMd);
  v41 = static _DictionaryStorage.copy(original:)();
  v28 = v41;
  if (!*(v15 + 16))
  {
LABEL_50:

    v72 = v28;
    goto LABEL_30;
  }

  v42 = (v41 + 64);
  v43 = v15 + 64;
  v44 = ((1 << *(v28 + 32)) + 63) >> 6;
  if (v28 != v15 || v42 >= v43 + 8 * v44)
  {
    memmove(v42, (v15 + 64), 8 * v44);
  }

  v45 = 0;
  *(v28 + 16) = *(v15 + 16);
  v46 = 1 << *(v15 + 32);
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  else
  {
    v47 = -1;
  }

  v48 = v47 & *(v15 + 64);
  v49 = (v46 + 63) >> 6;
  v59 = v49;
  if (v48)
  {
    do
    {
      v50 = __clz(__rbit64(v48));
      v60 = (v48 - 1) & v48;
LABEL_48:
      v53 = 16 * (v50 | (v45 << 6));
      v54 = (*(v15 + 48) + v53);
      v56 = *v54;
      v55 = v54[1];
      v57 = *(*(v15 + 56) + v53);
      v58 = (*(v28 + 48) + v53);
      *v58 = v56;
      v58[1] = v55;
      *(*(v28 + 56) + v53) = v57;

      v49 = v59;
      v48 = v60;
    }

    while (v60);
  }

  v51 = v45;
  while (1)
  {
    v45 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v45 >= v49)
    {
      goto LABEL_50;
    }

    v52 = *(v43 + 8 * v45);
    ++v51;
    if (v52)
    {
      v50 = __clz(__rbit64(v52));
      v60 = (v52 - 1) & v52;
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_59:
  v5 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_60:
  os_unfair_lock_unlock(v5);
  __break(1u);
}

uint64_t _s10Foundation28EncodableAttributedStringKeyPAASE5ValueRpzrlE6encode_2toyAE_s7Encoder_ptKFZAA15AttributeScopesO0A10AttributesV018PresentationIntentJ0O_Tt1B5(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation18PresentationIntentV10CodingKeys33_8153C1B385F9477C3B86198B81B6062BLLOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  lazy protocol witness table accessor for type PresentationIntent.CodingKeys and conformance PresentationIntent.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation18PresentationIntentV0C4TypeVGMd);
  lazy protocol witness table accessor for type [PresentationIntent.IntentType] and conformance <A> [A](&lazy protocol witness table cache variable for type [PresentationIntent.IntentType] and conformance <A> [A], lazy protocol witness table accessor for type PresentationIntent.IntentType and conformance PresentationIntent.IntentType);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v5 + 8))(v7, v4);
}

uint64_t _s10Foundation28EncodableAttributedStringKeyPAASE5ValueRpzrlE6encode_2toyAE_s7Encoder_ptKFZAA15AttributeScopesO0A10AttributesV016WritingDirectionJ0O_Tt1g5(int a1, void *a2)
{
  v13 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation15EmptyCodingKeysOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation16AttributedStringV16WritingDirectionO10CodingKeys33_163072BBDC91CE21DC09F272FDEEA67DLLOGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  lazy protocol witness table accessor for type AttributedString.WritingDirection.CodingKeys and conformance AttributedString.WritingDirection.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v13)
  {
    v15 = 1;
  }

  else
  {
    v14 = 0;
  }

  lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t _s10Foundation28EncodableAttributedStringKeyPAASE5ValueRpzrlE6encode_2toyAE_s7Encoder_ptKFZAA15AttributeScopesO0A10AttributesV014InflectionRuleJ0O_Tt1B5(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
  if (a2)
  {
    lazy protocol witness table accessor for type Morphology and conformance Morphology();
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  }

  else
  {
    dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  }

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t _s10Foundation28EncodableAttributedStringKeyPAASE5ValueRpzrlE6encode_2toyAE_s7Encoder_ptKFZAA15AttributeScopesO0A10AttributesV025AssumedFallbackInflectionJ0O_Tt1B5Tm(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = a2;
  v8 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation10MorphologyV10CodingKeysOGMd);
  v15 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  lazy protocol witness table accessor for type Morphology.CodingKeys and conformance Morphology.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v8 == 3 || (LOBYTE(v17) = a1, v16 = 0, lazy protocol witness table accessor for type Morphology.GrammaticalGender and conformance Morphology.GrammaticalGender(), KeyedEncodingContainer.encode<A>(_:forKey:)(), !v4))
  {
    if (a3 == 14 || (LOBYTE(v17) = a3, v16 = 1, lazy protocol witness table accessor for type Morphology.GrammaticalCase and conformance Morphology.GrammaticalCase(), KeyedEncodingContainer.encode<A>(_:forKey:)(), !v4))
    {
      if (BYTE1(a1) == 14 || (LOBYTE(v17) = BYTE1(a1), v16 = 2, lazy protocol witness table accessor for type Morphology.PartOfSpeech and conformance Morphology.PartOfSpeech(), KeyedEncodingContainer.encode<A>(_:forKey:)(), !v4))
      {
        if (BYTE2(a1) == 6 || (LOBYTE(v17) = BYTE2(a1), v16 = 3, lazy protocol witness table accessor for type Morphology.GrammaticalNumber and conformance Morphology.GrammaticalNumber(), KeyedEncodingContainer.encode<A>(_:forKey:)(), !v4))
        {
          if (!*(v14 + 16) || (v17 = v14, v16 = 4, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation10MorphologyV14_CustomPronounVGMd), lazy protocol witness table accessor for type [String : Morphology._CustomPronoun] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Morphology._CustomPronoun] and conformance <> [A : B], lazy protocol witness table accessor for type Morphology._CustomPronoun and conformance Morphology._CustomPronoun), KeyedEncodingContainer.encode<A>(_:forKey:)(), !v4))
          {
            if (BYTE1(a3) == 3 || (LOBYTE(v17) = BYTE1(a3), v16 = 5, lazy protocol witness table accessor for type Morphology.GrammaticalPerson and conformance Morphology.GrammaticalPerson(), KeyedEncodingContainer.encode<A>(_:forKey:)(), !v4))
            {
              if (BYTE2(a3) == 3 || (LOBYTE(v17) = BYTE2(a3), v16 = 6, lazy protocol witness table accessor for type Morphology.PronounType and conformance Morphology.PronounType(), KeyedEncodingContainer.encode<A>(_:forKey:)(), !v4))
              {
                if ((a3 & 0xFF000000) == 0x2000000 || (LOBYTE(v17) = BYTE3(a3) & 1, v16 = 7, lazy protocol witness table accessor for type Morphology.Determination and conformance Morphology.Determination(), KeyedEncodingContainer.encode<A>(_:forKey:)(), !v4))
                {
                  if ((a3 & 0xFF00000000) != 0x200000000)
                  {
                    LOBYTE(v17) = BYTE4(a3) & 1;
                    v16 = 8;
                    lazy protocol witness table accessor for type Morphology.Definiteness and conformance Morphology.Definiteness();
                    KeyedEncodingContainer.encode<A>(_:forKey:)();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return (*(v15 + 8))(v11, v9);
}

uint64_t _s10Foundation28DecodableAttributedStringKeyPAASe5ValueRpzrlE6decode4fromAEs7Decoder_p_tKFZAA15AttributeScopesO0A10AttributesV025AssumedFallbackInflectionJ0O_Tt1g5Tm@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation10MorphologyV10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  outlined init with copy of Hashable & Sendable(a1, v36);
  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  lazy protocol witness table accessor for type Morphology.CodingKeys and conformance Morphology.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v9 = MEMORY[0x1E69E7CC8];
    __swift_destroy_boxed_opaque_existential_1(v36);
    LOWORD(v29) = 3587;
    BYTE2(v29) = 6;
    *(&v29 + 3) = v39;
    HIBYTE(v29) = v40;
    v30 = v9;
    v31 = 14;
    v32 = 3;
    v33 = 3;
    v34 = 2;
    v10 = 2;
  }

  else
  {
    v28[0] = 0;
    lazy protocol witness table accessor for type Morphology.GrammaticalGender and conformance Morphology.GrammaticalGender();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v27 = v29;
    v28[0] = 1;
    lazy protocol witness table accessor for type Morphology.GrammaticalCase and conformance Morphology.GrammaticalCase();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v26 = v29;
    v28[0] = 2;
    lazy protocol witness table accessor for type Morphology.PartOfSpeech and conformance Morphology.PartOfSpeech();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v25 = v29;
    v28[0] = 3;
    lazy protocol witness table accessor for type Morphology.GrammaticalNumber and conformance Morphology.GrammaticalNumber();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v24 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation10MorphologyV14_CustomPronounVGMd);
    v28[0] = 4;
    lazy protocol witness table accessor for type [String : Morphology._CustomPronoun] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Morphology._CustomPronoun] and conformance <> [A : B], lazy protocol witness table accessor for type Morphology._CustomPronoun and conformance Morphology._CustomPronoun);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (v29)
    {
      v12 = v29;
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC8];
    }

    v28[0] = 5;
    lazy protocol witness table accessor for type Morphology.GrammaticalPerson and conformance Morphology.GrammaticalPerson();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v13 = v29;
    v28[0] = 6;
    lazy protocol witness table accessor for type Morphology.PronounType and conformance Morphology.PronounType();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v14 = v29;
    v28[0] = 7;
    lazy protocol witness table accessor for type Morphology.Determination and conformance Morphology.Determination();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v23 = a2;
    v15 = v29;
    v37 = 8;
    lazy protocol witness table accessor for type Morphology.Definiteness and conformance Morphology.Definiteness();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v22 = v38;
    v17 = v26;
    v16 = v27;
    v28[0] = v27;
    v19 = v24;
    v18 = v25;
    v28[1] = v25;
    v28[2] = v24;
    *&v28[8] = v12;
    v28[16] = v26;
    v28[17] = v13;
    v28[18] = v14;
    v28[19] = v15;
    v28[20] = v38;
    v20 = v23;
    *v23 = *v28;
    *(v20 + 13) = *&v28[13];
    outlined init with copy of Morphology(v28, &v29);
    __swift_destroy_boxed_opaque_existential_1(v36);
    LOBYTE(v29) = v16;
    BYTE1(v29) = v18;
    BYTE2(v29) = v19;
    v30 = v12;
    v31 = v17;
    v32 = v13;
    v33 = v14;
    v34 = v15;
    v10 = v22;
  }

  v35 = v10;
  return outlined destroy of Morphology(&v29);
}

uint64_t _s10Foundation28DecodableAttributedStringKeyPAASe5ValueRpzrlE6decode4fromAEs7Decoder_p_tKFZAA15AttributeScopesO0A10AttributesV09ByteCountJ0O_Tt1g5@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd);
  v4 = *(v3 - 8);
  v38 = v3;
  v39 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation15EmptyCodingKeysOGMd);
  v40 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation15AttributeScopesO0D10AttributesV09ByteCountE0O9ComponentO10CodingKeys33_163072BBDC91CE21DC09F272FDEEA67DLLOGMd);
  v43 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  outlined init with copy of Hashable & Sendable(a1, v49);
  __swift_project_boxed_opaque_existential_1(v49, v49[3]);
  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys();
  v18 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v18)
  {
    v19 = v11;
    v44 = 0;
    v37 = v6;
    v20 = v17;
    v21 = KeyedDecodingContainer.allKeys.getter();
    v22 = (2 * *(v21 + 16)) | 1;
    v45 = v21;
    v46 = v21 + 32;
    v47 = 0;
    v48 = v22;
    v23 = specialized Collection<>.popFirst()();
    v24 = v15;
    if (v23 == 4 || v47 != v48 >> 1)
    {
      v27 = type metadata accessor for DecodingError();
      swift_allocError();
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v29 = &type metadata for AttributeScopes.FoundationAttributes.ByteCountAttribute.Component;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
      swift_willThrow();
    }

    else
    {
      if (v23 > 1u)
      {
        v30 = v43;
        if (v23 == 2)
        {
          v50 = 2;
          lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
          v32 = v44;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v32)
          {
            lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit();
            v33 = v38;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v39 + 8))(0, v33);
            (*(v30 + 8))(v20, v15);
            swift_unknownObjectRelease();
            *v41 = v50;
            return __swift_destroy_boxed_opaque_existential_1(v49);
          }
        }

        else
        {
          v50 = 3;
          lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
          v35 = v44;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v35)
          {
            (*(v40 + 8))(v8, v37);
            (*(v30 + 8))(v20, v15);
            swift_unknownObjectRelease();
            *v41 = 11;
            return __swift_destroy_boxed_opaque_existential_1(v49);
          }
        }

        goto LABEL_10;
      }

      v25 = v41;
      if (v23)
      {
        v50 = 1;
        lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
        v34 = v44;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v34)
        {
          (*(v40 + 8))(v19, v37);
          (*(v43 + 8))(v20, v24);
          swift_unknownObjectRelease();
          *v25 = 10;
          return __swift_destroy_boxed_opaque_existential_1(v49);
        }
      }

      else
      {
        v50 = 0;
        lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
        v26 = v44;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v26)
        {
          (*(v40 + 8))(v14, v37);
          (*(v43 + 8))(v20, v24);
          swift_unknownObjectRelease();
          *v25 = 9;
          return __swift_destroy_boxed_opaque_existential_1(v49);
        }
      }
    }

    v30 = v43;
LABEL_10:
    (*(v30 + 8))(v20, v24);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t _s10Foundation28DecodableAttributedStringKeyPAASe5ValueRpzrlE6decode4fromAEs7Decoder_p_tKFZAA15AttributeScopesO0A10AttributesV17ImageURLAttributeO_Tt1g5Tm@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation3URLV10CodingKeys33_FB6C8C127CB51A72D58E049FC6F7743FLLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  outlined init with copy of Hashable & Sendable(a1, v22);
  __swift_project_boxed_opaque_existential_1(v22, v23);
  lazy protocol witness table accessor for type URL.CodingKeys and conformance URL.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v21) = 1;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    v12 = v9;
    LOBYTE(v20) = 0;
    lazy protocol witness table accessor for type URL and conformance URL();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v19 = v21;
    v20 = v21;
    URL.init(string:relativeTo:)(v12, v11, &v20, &v21);

    v13 = v21;
    if (v21)
    {
      v14 = *(&v21 + 1);
      (*(v6 + 8))(v8, v5);
      swift_unknownObjectRelease();
      *a2 = v13;
      a2[1] = v14;
    }

    else
    {
      v16 = type metadata accessor for DecodingError();
      swift_allocError();
      v18 = v17;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      dispatch thunk of Decoder.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B00], v16);
      swift_willThrow();
      swift_unknownObjectRelease();
      (*(v6 + 8))(v8, v5);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t _s10Foundation28DecodableAttributedStringKeyPAASe5ValueRpzrlE6decode4fromAEs7Decoder_p_tKFZAA15AttributeScopesO0A10AttributesV09Localizedd8ArgumentL0V0m7NumericnJ0O_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v43[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43[-v7];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation15AttributeScopesO0D10AttributesV023LocalizedStringArgumentG0V0h7NumericjE0O5ValueO10CodingKeys33_163072BBDC91CE21DC09F272FDEEA67DLLOGMd);
  v48 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43[-v16];
  outlined init with copy of Hashable & Sendable(a1, v57);
  __swift_project_boxed_opaque_existential_1(v57, v57[3]);
  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys();
  v18 = v49;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v19 = v14;
  v49 = 0;
  v20 = v5;
  v21 = v46;
  v22 = v47;
  v23 = KeyedDecodingContainer.allKeys.getter();
  v24 = (2 * *(v23 + 16)) | 1;
  v53 = v23;
  v54 = v23 + 32;
  v55 = 0;
  v56 = v24;
  v25 = specialized Collection<>.popFirst()();
  if (v25 == 4 || v55 != v56 >> 1)
  {
    v28 = type metadata accessor for DecodingError();
    swift_allocError();
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v30 = &type metadata for AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
    swift_willThrow();
LABEL_9:
    (*(v48 + 8))(v17, v15);
LABEL_10:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v44 = v25;
  if (v25 <= 1u)
  {
    if (v25)
    {
      LOBYTE(v50) = 1;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v34 = v49;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v34)
      {
        v35 = KeyedDecodingContainer.decode(_:forKey:)();
        v36 = v48;
        v49 = 0;
        v27 = v35;
        (*(v21 + 8))(v11, v22);
        (*(v36 + 8))(v17, v15);
        swift_unknownObjectRelease();
        goto LABEL_20;
      }
    }

    else
    {
      LOBYTE(v50) = 0;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v26 = v49;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v26)
      {
        v27 = KeyedDecodingContainer.decode(_:forKey:)();
        (*(v21 + 8))(v19, v22);
        (*(v48 + 8))(v17, v15);
        swift_unknownObjectRelease();
        v49 = 0;
LABEL_20:
        v40 = 0;
        v41 = 0;
        goto LABEL_21;
      }
    }

    goto LABEL_9;
  }

  v32 = v48;
  if (v25 != 2)
  {
    LOBYTE(v50) = 3;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    v37 = v49;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v37)
    {
      type metadata accessor for NSDecimal(0);
      lazy protocol witness table accessor for type NSDecimal and conformance NSDecimal(&lazy protocol witness table cache variable for type NSDecimal and conformance NSDecimal, type metadata accessor for NSDecimal);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v49 = 0;
      (*(v21 + 8))(v20, v22);
      (*(v32 + 8))(v17, v15);
      swift_unknownObjectRelease();
      v27 = v50;
      v40 = v51;
      v41 = v52;
      goto LABEL_21;
    }

LABEL_19:
    (*(v32 + 8))(v17, v15);
    goto LABEL_10;
  }

  LOBYTE(v50) = 2;
  lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
  v33 = v49;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  if (v33)
  {
    goto LABEL_19;
  }

  KeyedDecodingContainer.decode(_:forKey:)();
  v39 = v38;
  v49 = 0;
  (*(v21 + 8))(v8, v22);
  (*(v32 + 8))(v17, v15);
  swift_unknownObjectRelease();
  v40 = 0;
  v41 = 0;
  v27 = v39;
LABEL_21:
  v42 = v45;
  *v45 = v27;
  v42[1] = v40;
  *(v42 + 4) = v41;
  *(v42 + 20) = v44;
  return __swift_destroy_boxed_opaque_existential_1(v57);
}