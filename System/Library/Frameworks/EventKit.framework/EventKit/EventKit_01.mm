unint64_t sub_1A818D1F4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28B0, &qword_1A81C4390);
    v2 = sub_1A81AD044();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_1A8183394(*(a1 + 48) + 40 * v14, v29);
        sub_1A8182480(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_1A8183394(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1A8182480(v27 + 8, v22);
        sub_1A8188C34(v26, &qword_1EB2E2908, &qword_1A81C43D8);
        v23 = v20;
        sub_1A8183084(v22, v24);
        v15 = v23;
        sub_1A8183084(v24, v25);
        sub_1A8183084(v25, &v23);
        result = sub_1A8182568(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_1A8183084(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_1A8183084(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_1A8188C34(v26, &qword_1EB2E2908, &qword_1A81C43D8);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id EKRemoteUIObjectSerializer.deserializedRepresentation(serializedDictionary:objectIDToChangeSetDictionaryMap:objectIDToPersistentDictionaryMap:eventStore:occurrenceDate:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v11 = MEMORY[0x1E69E7CC8];
  v12 = MEMORY[0x1E69E7CC8];
  v5 = sub_1A818D57C(a1, a2, a3, a4, a5, &v12, &v11);

  if (v5)
  {
    v6 = v12;
    if (v12)
    {
      v7 = type metadata accessor for EKRemoteUIDeserializedObject();
      v8 = objc_allocWithZone(v7);
      *&v8[OBJC_IVAR____TtC8EventKit28EKRemoteUIDeserializedObject_deserializedObject] = v5;
      *&v8[OBJC_IVAR____TtC8EventKit28EKRemoteUIDeserializedObject_tempObjectIDMap] = v6;
      v10.receiver = v8;
      v10.super_class = v7;
      return objc_msgSendSuper2(&v10, sel_init);
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1A818D57C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v322 = a7;
  v321 = a6;
  v323 = a4;
  v320 = a3;
  v319 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB2E2810, &qword_1A81C4330);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v318 = v300 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v300 - v13;
  if (*(a1 + 16) && (v15 = sub_1A8182568(*(v324 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKIsPendingInsertKey), *(v324 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKIsPendingInsertKey + 8)), (v16 & 1) != 0) && (sub_1A8182480(*(a1 + 56) + 32 * v15, &v332), sub_1A81831D0(0, &qword_1EB2E2620, 0x1E696AD98), (swift_dynamicCast() & 1) != 0))
  {
    v17 = v329;
    v18 = [v329 BOOLValue];
    if (!*(a1 + 16))
    {
      goto LABEL_15;
    }
  }

  else
  {
    v18 = 0;
    v17 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_15;
    }
  }

  v19 = sub_1A8182568(*(v324 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKPersistentObjectKey), *(v324 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKPersistentObjectKey + 8));
  if ((v20 & 1) == 0 || (sub_1A8182480(*(a1 + 56) + 32 * v19, &v332), sub_1A81831D0(0, &qword_1EB2E2650, off_1E77FBA00), (swift_dynamicCast() & 1) == 0))
  {
LABEL_15:
    if (qword_1EB2E2608 != -1)
    {
      goto LABEL_268;
    }

    goto LABEL_16;
  }

  v21 = v329;
  v22 = sub_1A818FF60(v329, v320, v323, v18, v321, v322);
  if (!v22)
  {
    if (qword_1EB2E2608 != -1)
    {
      goto LABEL_277;
    }

    goto LABEL_21;
  }

  v23 = v22;
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  v307 = v23;
  if (v24)
  {
    v25 = v24;
    v26 = v21;
    sub_1A819549C(a5, v14);
    v27 = sub_1A81ACA54();
    v28 = *(v27 - 8);
    v29 = (*(v28 + 48))(v14, 1, v27);
    v30 = v23;
    v31 = 0;
    if (v29 != 1)
    {
      v31 = sub_1A81ACA34();
      (*(v28 + 8))(v14, v27);
    }

    v32 = [objc_allocWithZone(EKEvent) initWithPersistentObject:v25 occurrenceDate:v31];

    v21 = v26;
    if (!v32)
    {
LABEL_33:
      if (qword_1EB2E2608 != -1)
      {
        goto LABEL_280;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v43 = [v323 publicObjectWithPersistentObject_];
    if (!v43)
    {
      goto LABEL_33;
    }

    v32 = v43;
  }

  v308 = v32;
  if (!*(a1 + 16) || (v44 = sub_1A8182568(*(v324 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetKey), *(v324 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetKey + 8)), (v45 & 1) == 0) || (sub_1A8182480(*(a1 + 56) + 32 * v44, &v332), v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2820, &qword_1A81C4338), (swift_dynamicCast() & 1) == 0))
  {
LABEL_198:
    [v308 _resetAfterUpdatingChangeSetOrBackingObject];
    sub_1A8188E70(*(v324 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKCachedMeltedObjectsKey), *(v324 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKCachedMeltedObjectsKey + 8), a1, &v332);
    if (*(&v333 + 1))
    {
      v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2820, &qword_1A81C4338);
      if (swift_dynamicCast())
      {
        v304 = v21;
        v223 = v329 + 64;
        v224 = 1 << *(v329 + 32);
        v225 = -1;
        if (v224 < 64)
        {
          v225 = ~(-1 << v224);
        }

        v21 = v225 & *(v329 + 64);
        v226 = (v224 + 63) >> 6;
        i = *MEMORY[0x1E6992570];
        v311 = v329;

        v227 = 0;
        *&v315 = MEMORY[0x1E69E7CC8];
        v312 = v223;
        v314 = v226;
        v306 = v17;
        v305 = v222;
        while (1)
        {
          if (v21)
          {
            v228 = v227;
            goto LABEL_214;
          }

          if (v226 <= v227 + 1)
          {
            v229 = v227 + 1;
          }

          else
          {
            v229 = v226;
          }

          v230 = v229 - 1;
          do
          {
            v228 = v227 + 1;
            if (__OFADD__(v227, 1))
            {
              __break(1u);
LABEL_268:
              swift_once();
LABEL_16:
              v33 = sub_1A81ACC64();
              __swift_project_value_buffer(v33, qword_1EB2E3378);
              v34 = sub_1A81ACC44();
              v35 = sub_1A81ACDE4();
              if (os_log_type_enabled(v34, v35))
              {
                v36 = swift_slowAlloc();
                *v36 = 0;
                _os_log_impl(&dword_1A805E000, v34, v35, "EKRemoteUIObjectSerializer: Cannot create persistentObject because objectID is nil", v36, 2u);
                MEMORY[0x1AC569C60](v36, -1, -1);
              }

              goto LABEL_19;
            }

            if (v228 >= v226)
            {
              v21 = 0;
              v330 = 0u;
              v331 = 0u;
              v227 = v230;
              v329 = 0u;
              goto LABEL_215;
            }

            v21 = *(v223 + 8 * v228);
            ++v227;
          }

          while (!v21);
          v227 = v228;
LABEL_214:
          v231 = __clz(__rbit64(v21));
          v21 &= v21 - 1;
          v232 = v231 | (v228 << 6);
          v233 = (*(v311 + 48) + 16 * v232);
          v235 = *v233;
          v234 = v233[1];
          sub_1A8182480(*(v311 + 56) + 32 * v232, &v327);
          *&v329 = v235;
          *(&v329 + 1) = v234;
          sub_1A8183084(&v327, &v330);

LABEL_215:
          v332 = v329;
          v333 = v330;
          v334 = v331;
          v316 = *(&v329 + 1);
          if (!*(&v329 + 1))
          {

            v21 = v304;
            v297 = v315;
            goto LABEL_266;
          }

          v236 = v332;
          sub_1A8183084(&v333, &v329);
          sub_1A8182480(&v329, &v327);
          if (!swift_dynamicCast())
          {
            v313 = v236;
            sub_1A8182480(&v329, &v327);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2838, &qword_1A81C4348);
            if ((swift_dynamicCast() & 1) == 0)
            {
              __swift_destroy_boxed_opaque_existential_0(&v329);

              continue;
            }

            v242 = *&v326[0];
            v317 = [objc_allocWithZone(MEMORY[0x1E695DFA8]) init];
            v310 = v242;
            v243 = *(v242 + 16);
            if (v243)
            {
              v17 = v310 + 32;
              v244 = sub_1A81ACA54();
              v245 = *(*(v244 - 8) + 56);
              do
              {
                v246 = *v17;
                v247 = v318;
                v245(v318, 1, 1, v244);

                v249 = sub_1A818D57C(v248, v319, v320, v323, v247, v321, v322);

                sub_1A8188C34(v247, &unk_1EB2E2810, &qword_1A81C4330);
                if (v249)
                {
                  [v317 addObject_];
                }

                v17 += 8;
                --v243;
              }

              while (v243);
            }

            v328 = sub_1A81831D0(0, &qword_1EB2E2840, 0x1E695DFA8);
            v255 = v317;
            *&v327 = v317;
            sub_1A8183084(&v327, v326);
            v256 = v255;
            v257 = v315;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v325 = v257;
            v259 = sub_1A8182568(v313, v316);
            v261 = v257[2];
            v262 = (v260 & 1) == 0;
            v87 = __OFADD__(v261, v262);
            v263 = v261 + v262;
            if (!v87)
            {
              v264 = v260;
              if (v257[3] >= v263)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v296 = v259;
                  sub_1A8193258();
                  v259 = v296;
                }
              }

              else
              {
                sub_1A81922B8(v263, isUniquelyReferenced_nonNull_native);
                v259 = sub_1A8182568(v313, v316);
                if ((v264 & 1) != (v265 & 1))
                {
                  goto LABEL_287;
                }
              }

              v17 = v306;
              v226 = v314;
              v289 = v325;
              *&v315 = v325;
              if (v264)
              {
                v290 = (v325[7] + 32 * v259);
                __swift_destroy_boxed_opaque_existential_0(v290);
                sub_1A8183084(v326, v290);
              }

              else
              {
                v325[(v259 >> 6) + 8] |= 1 << v259;
                v291 = (v289[6] + 16 * v259);
                v292 = v316;
                *v291 = v313;
                v291[1] = v292;
                sub_1A8183084(v326, (v289[7] + 32 * v259));
                v293 = v289[2];
                v87 = __OFADD__(v293, 1);
                v294 = v293 + 1;
                if (v87)
                {
                  goto LABEL_275;
                }

                v289[2] = v294;
              }

              __swift_destroy_boxed_opaque_existential_0(&v329);
              v223 = v312;
              continue;
            }

            goto LABEL_273;
          }

          v237 = *&v326[0];
          v238 = sub_1A81ACA54();
          v239 = v318;
          (*(*(v238 - 8) + 56))(v318, 1, 1, v238);
          v240 = sub_1A818D57C(v237, v319, v320, v323, v239, v321, v322);
          sub_1A8188C34(v239, &unk_1EB2E2810, &qword_1A81C4330);
          if (v236 == sub_1A81ACCC4() && v241 == v316)
          {

            goto LABEL_227;
          }

          v250 = sub_1A81AD074();

          if ((v250 & 1) == 0)
          {

            v226 = v314;
LABEL_238:
            v223 = v312;
            if (!v240)
            {
              goto LABEL_243;
            }

LABEL_239:
            v328 = sub_1A81831D0(0, &qword_1EB2E2848, off_1E77FB9F0);
            *&v327 = v240;
            sub_1A8183084(&v327, v326);
            v266 = v240;
            v267 = v315;
            v268 = swift_isUniquelyReferenced_nonNull_native();
            v325 = v267;
            v269 = sub_1A8182568(v236, v316);
            v271 = v267[2];
            v272 = (v270 & 1) == 0;
            v87 = __OFADD__(v271, v272);
            v273 = v271 + v272;
            if (!v87)
            {
              v274 = v270;
              if (v267[3] >= v273)
              {
                if ((v268 & 1) == 0)
                {
                  v295 = v269;
                  sub_1A8193258();
                  v269 = v295;
                }
              }

              else
              {
                sub_1A81922B8(v273, v268);
                v269 = sub_1A8182568(v236, v316);
                if ((v274 & 1) != (v275 & 1))
                {
                  goto LABEL_287;
                }
              }

              v226 = v314;
              if (v274)
              {
                v282 = v269;

                *&v315 = v325;
                v283 = (v325[7] + 32 * v282);
                __swift_destroy_boxed_opaque_existential_0(v283);
                sub_1A8183084(v326, v283);

                __swift_destroy_boxed_opaque_existential_0(&v329);
LABEL_253:
                v223 = v312;
                continue;
              }

              v284 = v325;
              v325[(v269 >> 6) + 8] |= 1 << v269;
              v285 = (v284[6] + 16 * v269);
              v286 = v316;
              *v285 = v236;
              v285[1] = v286;
              sub_1A8183084(v326, (v284[7] + 32 * v269));

              __swift_destroy_boxed_opaque_existential_0(&v329);
              v287 = v284[2];
              v87 = __OFADD__(v287, 1);
              v288 = v287 + 1;
              if (!v87)
              {
                *&v315 = v284;
                v284[2] = v288;
                goto LABEL_253;
              }

LABEL_274:
              __break(1u);
LABEL_275:
              __break(1u);
              goto LABEL_276;
            }

LABEL_272:
            __break(1u);
LABEL_273:
            __break(1u);
            goto LABEL_274;
          }

LABEL_227:
          v226 = v314;
          if (v240)
          {
            v251 = [v240 objectID];
            if (v251)
            {
              v252 = v251;

              v253 = [v252 isVirtual];

              if (v253)
              {
                v254 = [v323 defaultCalendarForNewEvents];

                v240 = v254;
                goto LABEL_238;
              }

              goto LABEL_239;
            }

LABEL_286:
            __break(1u);
LABEL_287:
            result = sub_1A81AD0B4();
            __break(1u);
            return result;
          }

          v223 = v312;
LABEL_243:
          v276 = v315;
          v277 = sub_1A8182568(v236, v316);
          v279 = v278;

          if (v279)
          {
            v280 = swift_isUniquelyReferenced_nonNull_native();
            v325 = v276;
            if (!v280)
            {
              sub_1A8193258();
              v276 = v325;
            }

            v281 = *(*(v276 + 48) + 16 * v277 + 8);

            sub_1A8183084((*(v276 + 56) + 32 * v277), v326);
            *&v315 = v276;
            sub_1A8192AA0(v277, v276);
            __swift_destroy_boxed_opaque_existential_0(&v329);
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_0(&v329);
            memset(v326, 0, sizeof(v326));
          }

          sub_1A8188C34(v326, &qword_1EB2E2830, &qword_1A81C4340);
        }
      }
    }

    else
    {
      sub_1A8188C34(&v332, &qword_1EB2E2830, &qword_1A81C4340);
    }

    v297 = MEMORY[0x1E69E7CC8];
LABEL_266:
    sub_1A81909D0(v297);

    v298 = sub_1A81ACC74();

    v299 = v308;
    [v308 setCachedMeltedObjects_];

    return v299;
  }

  v46 = *(v324 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetSingleValueChangesKey);
  v47 = *(v324 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetSingleValueChangesKey + 8);
  i = v329;
  sub_1A8188E70(v46, v47, v329, &v332);
  v306 = v17;
  v304 = v21;
  if (!*(&v333 + 1))
  {
    sub_1A8188C34(&v332, &qword_1EB2E2830, &qword_1A81C4340);
    goto LABEL_90;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_90:
    v317 = MEMORY[0x1E69E7CC8];
    goto LABEL_92;
  }

  v21 = 0;
  v49 = v329 + 64;
  v48 = *(v329 + 64);
  v314 = v329;
  v50 = 1 << *(v329 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & v48;
  v17 = (v50 + 63) >> 6;
  v317 = MEMORY[0x1E69E7CC8];
  v312 = v17;
  v311 = v329 + 64;
  while (1)
  {
    if (v52)
    {
      v60 = v21;
LABEL_48:
      v63 = __clz(__rbit64(v52));
      v52 &= v52 - 1;
      v64 = v63 | (v60 << 6);
      v65 = (*(v314 + 48) + 16 * v64);
      v67 = *v65;
      v66 = v65[1];
      sub_1A8182480(*(v314 + 56) + 32 * v64, &v339);
      *&v329 = v67;
      *(&v329 + 1) = v66;
      sub_1A8183084(&v339, &v330);
    }

    else
    {
      v61 = v17 <= (v21 + 1) ? v21 + 1 : v17;
      v62 = v61 - 1;
      while (1)
      {
        v60 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
LABEL_270:
          __break(1u);
LABEL_271:
          __break(1u);
          goto LABEL_272;
        }

        if (v60 >= v17)
        {
          break;
        }

        v52 = *(v49 + 8 * v60);
        ++v21;
        if (v52)
        {
          v21 = v60;
          goto LABEL_48;
        }
      }

      v52 = 0;
      v330 = 0u;
      v331 = 0u;
      v21 = v62;
      v329 = 0u;
    }

    v332 = v329;
    v333 = v330;
    v334 = v331;
    v68 = *(&v329 + 1);
    if (!*(&v329 + 1))
    {
      break;
    }

    v69 = v332;
    sub_1A8183084(&v333, &v329);
    sub_1A8182480(&v329, &v339);
    type metadata accessor for EKRemoteUIPersistentObjectPointer();
    if (swift_dynamicCast())
    {
      v70 = *(v335 + OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID);
      *&v315 = v335;
      v71 = *(v335 + OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert);
      v72 = v308;
      ObjCClassFromObject = swift_getObjCClassFromObject();
      v74 = v70;
      v75 = v72;
      v316 = v69;
      v76 = sub_1A81ACCB4();
      v77 = [ObjCClassFromObject isWeakRelationObject:v75 forKey:v76];

      if (v77)
      {
        v78 = sub_1A81952A4(v74, v323, *v322);
        v49 = v311;
        if (!v78)
        {
          goto LABEL_71;
        }

        v79 = v78;
        v313 = v74;
        v341 = sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
        *&v339 = v79;
        sub_1A8183084(&v339, &v335);
        v80 = v79;
        v81 = v317;
        v82 = swift_isUniquelyReferenced_nonNull_native();
        *&v327 = v81;
        v83 = sub_1A8182568(v316, v68);
        v85 = v81[2];
        v86 = (v84 & 1) == 0;
        v87 = __OFADD__(v85, v86);
        v88 = v85 + v86;
        v17 = v312;
        if (v87)
        {
          goto LABEL_282;
        }

        v89 = v84;
        if (v81[3] < v88)
        {
          sub_1A81922B8(v88, v82);
          v83 = sub_1A8182568(v316, v68);
          if ((v89 & 1) != (v90 & 1))
          {
            goto LABEL_287;
          }

LABEL_73:
          if ((v89 & 1) == 0)
          {
            goto LABEL_74;
          }

          goto LABEL_79;
        }

        if (v82)
        {
          goto LABEL_73;
        }

        v122 = v83;
        sub_1A8193258();
        v83 = v122;
        if ((v89 & 1) == 0)
        {
LABEL_74:
          v115 = v327;
          *(v327 + 8 * (v83 >> 6) + 64) |= 1 << v83;
          v116 = (v115[6] + 16 * v83);
          *v116 = v316;
          v116[1] = v68;
          sub_1A8183084(&v335, (v115[7] + 32 * v83));

          __swift_destroy_boxed_opaque_existential_0(&v329);
          v117 = v115[2];
          v87 = __OFADD__(v117, 1);
          v118 = v117 + 1;
          if (v87)
          {
            goto LABEL_284;
          }

          goto LABEL_86;
        }

LABEL_79:
        v119 = v83;

        v317 = v327;
        v120 = (*(v327 + 56) + 32 * v119);
        __swift_destroy_boxed_opaque_existential_0(v120);
        sub_1A8183084(&v335, v120);

        __swift_destroy_boxed_opaque_existential_0(&v329);
      }

      else
      {
        v101 = sub_1A818FF60(v74, v319, v323, v71, v321, v322);
        v49 = v311;
        if (v101)
        {
          v102 = v101;
          v313 = v74;
          v341 = sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
          *&v339 = v102;
          sub_1A8183084(&v339, &v335);
          v80 = v102;
          v103 = v317;
          v104 = swift_isUniquelyReferenced_nonNull_native();
          *&v327 = v103;
          v83 = sub_1A8182568(v316, v68);
          v106 = v103[2];
          v107 = (v105 & 1) == 0;
          v87 = __OFADD__(v106, v107);
          v108 = v106 + v107;
          v17 = v312;
          if (v87)
          {
            goto LABEL_283;
          }

          v109 = v105;
          if (v103[3] < v108)
          {
            sub_1A81922B8(v108, v104);
            v83 = sub_1A8182568(v316, v68);
            if ((v109 & 1) != (v110 & 1))
            {
              goto LABEL_287;
            }

LABEL_78:
            if (v109)
            {
              goto LABEL_79;
            }

            goto LABEL_85;
          }

          if (v104)
          {
            goto LABEL_78;
          }

          v123 = v83;
          sub_1A8193258();
          v83 = v123;
          if (v109)
          {
            goto LABEL_79;
          }

LABEL_85:
          v115 = v327;
          *(v327 + 8 * (v83 >> 6) + 64) |= 1 << v83;
          v124 = (v115[6] + 16 * v83);
          *v124 = v316;
          v124[1] = v68;
          sub_1A8183084(&v335, (v115[7] + 32 * v83));

          __swift_destroy_boxed_opaque_existential_0(&v329);
          v125 = v115[2];
          v87 = __OFADD__(v125, 1);
          v118 = v125 + 1;
          if (v87)
          {
            goto LABEL_285;
          }

LABEL_86:
          v317 = v115;
          v115[2] = v118;
        }

        else
        {
LABEL_71:
          __swift_destroy_boxed_opaque_existential_0(&v329);

          v17 = v312;
        }
      }
    }

    else
    {
      sub_1A8182480(&v329, &v339);
      v91 = v317;
      v92 = swift_isUniquelyReferenced_nonNull_native();
      *&v335 = v91;
      v93 = v69;
      v94 = sub_1A8182568(v69, v68);
      v96 = v91[2];
      v97 = (v95 & 1) == 0;
      v87 = __OFADD__(v96, v97);
      v98 = v96 + v97;
      if (v87)
      {
        goto LABEL_279;
      }

      v99 = v95;
      if (v91[3] >= v98)
      {
        if (v92)
        {
          goto LABEL_67;
        }

        v121 = v94;
        sub_1A8193258();
        v94 = v121;
        if (v99)
        {
          goto LABEL_37;
        }

LABEL_68:
        v111 = v335;
        *(v335 + 8 * (v94 >> 6) + 64) |= 1 << v94;
        v112 = (v111[6] + 16 * v94);
        *v112 = v93;
        v112[1] = v68;
        sub_1A8183084(&v339, (v111[7] + 32 * v94));
        __swift_destroy_boxed_opaque_existential_0(&v329);
        v113 = v111[2];
        v87 = __OFADD__(v113, 1);
        v114 = v113 + 1;
        if (v87)
        {
          __break(1u);
LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
LABEL_284:
          __break(1u);
LABEL_285:
          __break(1u);
          goto LABEL_286;
        }

        v317 = v111;
        v111[2] = v114;
      }

      else
      {
        sub_1A81922B8(v98, v92);
        v94 = sub_1A8182568(v93, v68);
        if ((v99 & 1) != (v100 & 1))
        {
          goto LABEL_287;
        }

LABEL_67:
        if ((v99 & 1) == 0)
        {
          goto LABEL_68;
        }

LABEL_37:
        v58 = v94;

        v317 = v335;
        v59 = (*(v335 + 56) + 32 * v58);
        __swift_destroy_boxed_opaque_existential_0(v59);
        sub_1A8183084(&v339, v59);
        __swift_destroy_boxed_opaque_existential_0(&v329);
      }
    }
  }

  v21 = v304;
LABEL_92:
  sub_1A8188E70(*(v324 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetMultiValueAdditionsKey), *(v324 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetMultiValueAdditionsKey + 8), i, &v332);
  if (!*(&v333 + 1))
  {
    sub_1A8188C34(&v332, &qword_1EB2E2830, &qword_1A81C4340);
    goto LABEL_141;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_141:
    v312 = MEMORY[0x1E69E7CC8];
    goto LABEL_143;
  }

  v127 = 0;
  v21 = v329 + 64;
  v128 = *(v329 + 64);
  v316 = v329;
  v129 = 1 << *(v329 + 32);
  if (v129 < 64)
  {
    v130 = ~(-1 << v129);
  }

  else
  {
    v130 = -1;
  }

  v17 = v130 & v128;
  v131 = (v129 + 63) >> 6;
  v312 = MEMORY[0x1E69E7CC8];
  *&v126 = 136315138;
  v315 = v126;
  v314 = v131;
LABEL_98:
  v132 = v127;
  if (!v17)
  {
    goto LABEL_102;
  }

LABEL_101:
  v133 = v132;
LABEL_109:
  v136 = __clz(__rbit64(v17));
  v17 &= v17 - 1;
  v137 = v136 | (v133 << 6);
  v138 = (*(v316 + 48) + 16 * v137);
  v140 = *v138;
  v139 = v138[1];
  sub_1A8182480(*(v316 + 56) + 32 * v137, &v339);
  *&v329 = v140;
  *(&v329 + 1) = v139;
  sub_1A8183084(&v339, &v330);

  v135 = v133;
  while (1)
  {
    v332 = v329;
    v333 = v330;
    v334 = v331;
    v141 = *(&v329 + 1);
    if (!*(&v329 + 1))
    {

      v21 = v304;
LABEL_143:
      sub_1A8188E70(*(v324 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetMultiValueRemovalsKey), *(v324 + OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetMultiValueRemovalsKey + 8), i, &v332);

      if (*(&v333 + 1))
      {
        if (swift_dynamicCast())
        {
          v172 = 0;
          v21 = v329 + 64;
          v173 = *(v329 + 64);
          v316 = v329;
          v174 = 1 << *(v329 + 32);
          if (v174 < 64)
          {
            v175 = ~(-1 << v174);
          }

          else
          {
            v175 = -1;
          }

          v17 = v175 & v173;
          v176 = (v174 + 63) >> 6;
          v305 = MEMORY[0x1E69E7CC8];
          *&v171 = 136315138;
          v315 = v171;
          v314 = v176;
LABEL_149:
          v177 = v172;
          if (!v17)
          {
            goto LABEL_153;
          }

LABEL_152:
          v178 = v177;
LABEL_160:
          v181 = __clz(__rbit64(v17));
          v17 &= v17 - 1;
          v182 = v181 | (v178 << 6);
          v183 = (*(v316 + 48) + 16 * v182);
          v185 = *v183;
          v184 = v183[1];
          sub_1A8182480(*(v316 + 56) + 32 * v182, &v327);
          *&v329 = v185;
          *(&v329 + 1) = v184;
          sub_1A8183084(&v327, &v330);

          v180 = v178;
          while (1)
          {
            v332 = v329;
            v333 = v330;
            v334 = v331;
            v186 = *(&v329 + 1);
            if (!*(&v329 + 1))
            {
              break;
            }

            v187 = v332;
            sub_1A8183084(&v333, &v329);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2850, &unk_1A81C4350);
            if (swift_dynamicCast())
            {
              v196 = v327;
              *&v329 = MEMORY[0x1E69E7CD0];
              j = v21;
              if ((v327 & 0xC000000000000001) != 0)
              {
                sub_1A81ACE84();
                type metadata accessor for EKRemoteUIPersistentObjectPointer();
                sub_1A8195248();
                sub_1A81ACDA4();
                v197 = *(&v339 + 1);
                v196 = v339;
                v198 = v340;
                v199 = v341;
                v200 = v342;
              }

              else
              {
                v199 = 0;
                v201 = -1 << *(v327 + 32);
                v197 = v327 + 56;
                v198 = ~v201;
                v202 = -v201;
                if (v202 < 64)
                {
                  v203 = ~(-1 << v202);
                }

                else
                {
                  v203 = -1;
                }

                v200 = (v203 & *(v327 + 56));
              }

              v301 = v198;
              v204 = (v198 + 64) >> 6;
              v302 = v180;
              v310 = v196;
              v311 = v197;
              for (i = v204; ; v204 = i)
              {
                if (v196 < 0)
                {
                  v207 = v199;
                  v209 = sub_1A81ACEB4();
                  if (!v209)
                  {
                    goto LABEL_189;
                  }

                  *&v326[0] = v209;
                  type metadata accessor for EKRemoteUIPersistentObjectPointer();
                  swift_dynamicCast();
                  v208 = v327;
                  v313 = v200;
                }

                else
                {
                  v205 = v199;
                  v206 = v200;
                  v207 = v199;
                  if (!v200)
                  {
                    while (1)
                    {
                      v207 = v205 + 1;
                      if (__OFADD__(v205, 1))
                      {
                        break;
                      }

                      if (v207 >= v204)
                      {
                        goto LABEL_189;
                      }

                      v206 = *(v197 + 8 * v207);
                      ++v205;
                      if (v206)
                      {
                        goto LABEL_183;
                      }
                    }

                    __break(1u);
LABEL_279:
                    __break(1u);
LABEL_280:
                    swift_once();
LABEL_34:
                    v53 = sub_1A81ACC64();
                    __swift_project_value_buffer(v53, qword_1EB2E3378);
                    v54 = sub_1A81ACC44();
                    v55 = sub_1A81ACDE4();
                    if (os_log_type_enabled(v54, v55))
                    {
                      v56 = v21;
                      v57 = swift_slowAlloc();
                      *v57 = 0;
                      _os_log_impl(&dword_1A805E000, v54, v55, "EKRemoteUIObjectSerializer: Cannot create EKObject from deserialized EKPersistentObject", v57, 2u);
                      MEMORY[0x1AC569C60](v57, -1, -1);
                    }

                    else
                    {
                    }

                    goto LABEL_19;
                  }

LABEL_183:
                  v313 = ((v206 - 1) & v206);
                  v208 = *(*(v196 + 48) + ((v207 << 9) | (8 * __clz(__rbit64(v206)))));
                }

                if (!v208)
                {
LABEL_189:
                  sub_1A819529C();
                  v213 = sub_1A8188ED4(v329);

                  v214 = v305;
                  v215 = swift_isUniquelyReferenced_nonNull_native();
                  *&v327 = v214;
                  sub_1A8182E00(v213, v187, v186, v215);

                  v305 = v327;
                  v172 = v302;
                  v21 = j;
                  goto LABEL_149;
                }

                v210 = v208[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert];
                v21 = *&v208[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID];
                v211 = sub_1A818FF60(v21, v319, v323, v210, v321, v322);
                if (v211)
                {
                  v212 = v211;
                  sub_1A8193988(&v327, v212);
                }

                else
                {
                }

                v199 = v207;
                v200 = v313;
                v196 = v310;
                v197 = v311;
              }
            }

            if (qword_1EB2E2608 != -1)
            {
              swift_once();
            }

            v188 = sub_1A81ACC64();
            __swift_project_value_buffer(v188, qword_1EB2E3378);

            v189 = sub_1A81ACC44();
            v190 = sub_1A81ACDE4();

            if (os_log_type_enabled(v189, v190))
            {
              v191 = v21;
              v192 = v180;
              v193 = swift_slowAlloc();
              v194 = swift_slowAlloc();
              *&v329 = v194;
              *v193 = v315;
              v195 = sub_1A81911EC(v187, v186, &v329);

              *(v193 + 4) = v195;
              _os_log_impl(&dword_1A805E000, v189, v190, "EKRemoteUIObjectSerializer: cannot deserialize changeSet multiValueRemovals as a Set<EKObjectID> for key: %s", v193, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v194);
              MEMORY[0x1AC569C60](v194, -1, -1);
              MEMORY[0x1AC569C60](v193, -1, -1);

              v177 = v192;
              v21 = v191;
              v176 = v314;
              if (v17)
              {
                goto LABEL_152;
              }
            }

            else
            {

              v177 = v180;
              if (v17)
              {
                goto LABEL_152;
              }
            }

LABEL_153:
            if (v176 <= v177 + 1)
            {
              v179 = v177 + 1;
            }

            else
            {
              v179 = v176;
            }

            v180 = v179 - 1;
            while (1)
            {
              v178 = v177 + 1;
              if (__OFADD__(v177, 1))
              {
                goto LABEL_271;
              }

              if (v178 >= v176)
              {
                break;
              }

              v17 = *(v21 + 8 * v178);
              ++v177;
              if (v17)
              {
                goto LABEL_160;
              }
            }

            v17 = 0;
            v330 = 0u;
            v331 = 0u;
            v329 = 0u;
          }

          v21 = v304;
          v216 = v305;
          goto LABEL_194;
        }
      }

      else
      {
        sub_1A8188C34(&v332, &qword_1EB2E2830, &qword_1A81C4340);
      }

      v216 = MEMORY[0x1E69E7CC8];
LABEL_194:
      sub_1A81909D0(v317);

      sub_1A8190C98(v312);

      sub_1A8190C98(v216);

      v217 = objc_allocWithZone(EKChangeSet);
      v218 = sub_1A81ACC74();

      v219 = sub_1A81ACC74();

      v220 = sub_1A81ACC74();

      v221 = [v217 initWithSingleValueChanges:v218 multiValueAdditions:v219 multiValueRemovals:v220];

      v17 = v306;
      if (v221)
      {
        if ([v21 isTemporary])
        {
          [v221 setIsNew_];
        }

        [v308 setChangeSet_];
      }

      goto LABEL_198;
    }

    v142 = v332;
    sub_1A8183084(&v333, &v329);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2850, &unk_1A81C4350);
    if (swift_dynamicCast())
    {
      break;
    }

    if (qword_1EB2E2608 != -1)
    {
      swift_once();
    }

    v143 = sub_1A81ACC64();
    __swift_project_value_buffer(v143, qword_1EB2E3378);

    v144 = sub_1A81ACC44();
    v145 = sub_1A81ACDE4();

    if (os_log_type_enabled(v144, v145))
    {
      v146 = v21;
      v147 = v135;
      v148 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      *&v329 = v149;
      *v148 = v315;
      v150 = sub_1A81911EC(v142, v141, &v329);

      *(v148 + 4) = v150;
      _os_log_impl(&dword_1A805E000, v144, v145, "EKRemoteUIObjectSerializer: cannot deserialize changeSet multiValueAdditions as a Set<EKObjectID> for key: %s", v148, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v149);
      MEMORY[0x1AC569C60](v149, -1, -1);
      MEMORY[0x1AC569C60](v148, -1, -1);

      v132 = v147;
      v21 = v146;
      v131 = v314;
      if (v17)
      {
        goto LABEL_101;
      }
    }

    else
    {

      v132 = v135;
      if (v17)
      {
        goto LABEL_101;
      }
    }

LABEL_102:
    if (v131 <= v132 + 1)
    {
      v134 = v132 + 1;
    }

    else
    {
      v134 = v131;
    }

    v135 = v134 - 1;
    while (1)
    {
      v133 = v132 + 1;
      if (__OFADD__(v132, 1))
      {
        goto LABEL_270;
      }

      if (v133 >= v131)
      {
        break;
      }

      v17 = *(v21 + 8 * v133);
      ++v132;
      if (v17)
      {
        goto LABEL_109;
      }
    }

    v17 = 0;
    v330 = 0u;
    v331 = 0u;
    v329 = 0u;
  }

  v151 = v339;
  *&v329 = MEMORY[0x1E69E7CD0];
  v302 = v21;
  if ((v339 & 0xC000000000000001) != 0)
  {
    sub_1A81ACE84();
    type metadata accessor for EKRemoteUIPersistentObjectPointer();
    sub_1A8195248();
    sub_1A81ACDA4();
    v152 = *(&v335 + 1);
    v151 = v335;
    v153 = v336;
    v154 = v337;
    v155 = v338;
  }

  else
  {
    v154 = 0;
    v156 = -1 << *(v339 + 32);
    v152 = v339 + 56;
    v153 = ~v156;
    v157 = -v156;
    if (v157 < 64)
    {
      v158 = ~(-1 << v157);
    }

    else
    {
      v158 = -1;
    }

    v155 = (v158 & *(v339 + 56));
  }

  v300[1] = v153;
  v159 = (v153 + 64) >> 6;
  v301 = v135;
  v305 = v151;
  v311 = v152;
  for (j = v159; ; v159 = j)
  {
    if (v151 < 0)
    {
      v162 = v154;
      v164 = sub_1A81ACEB4();
      if (!v164)
      {
        goto LABEL_138;
      }

      *&v327 = v164;
      type metadata accessor for EKRemoteUIPersistentObjectPointer();
      swift_dynamicCast();
      v163 = v339;
      v313 = v155;
      goto LABEL_135;
    }

    v160 = v154;
    v161 = v155;
    v162 = v154;
    if (!v155)
    {
      break;
    }

LABEL_132:
    v313 = ((v161 - 1) & v161);
    v163 = *(*(v151 + 48) + ((v162 << 9) | (8 * __clz(__rbit64(v161)))));
LABEL_135:
    if (!v163)
    {
LABEL_138:
      sub_1A819529C();
      v168 = sub_1A8188ED4(v329);

      v169 = v312;
      v170 = swift_isUniquelyReferenced_nonNull_native();
      *&v339 = v169;
      sub_1A8182E00(v168, v142, v141, v170);

      v312 = v339;
      v127 = v301;
      v21 = v302;
      goto LABEL_98;
    }

    v165 = v163[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert];
    v21 = *&v163[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID];
    v166 = sub_1A818FF60(v21, v319, v323, v165, v321, v322);
    if (v166)
    {
      v167 = v166;
      sub_1A8193988(&v339, v167);
    }

    else
    {
    }

    v154 = v162;
    v155 = v313;
    v151 = v305;
    v152 = v311;
  }

  while (1)
  {
    v162 = v160 + 1;
    if (__OFADD__(v160, 1))
    {
      break;
    }

    if (v162 >= v159)
    {
      goto LABEL_138;
    }

    v161 = *(v152 + 8 * v162);
    ++v160;
    if (v161)
    {
      goto LABEL_132;
    }
  }

LABEL_276:
  __break(1u);
LABEL_277:
  swift_once();
LABEL_21:
  v38 = sub_1A81ACC64();
  __swift_project_value_buffer(v38, qword_1EB2E3378);
  v39 = sub_1A81ACC44();
  v40 = sub_1A81ACDE4();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = v21;
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1A805E000, v39, v40, "EKRemoteUIObjectSerializer: Cannot generate a Deserialized EKPersistentObject.", v42, 2u);
    MEMORY[0x1AC569C60](v42, -1, -1);
  }

  else
  {
  }

LABEL_19:

  return 0;
}

id sub_1A818FF60(void *a1, uint64_t a2, void *a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v11 = a1;
  v12 = *a6;
  result = sub_1A8188DAC(a1, *a6);
  if (result)
  {
    return result;
  }

  if ([v11 isTemporary])
  {
    v14 = [v11 entityName];
    v15 = &selRef_insertedPersistentObjectWithEntityName_;
    if ((a4 & 1) == 0)
    {
      v15 = &selRef_persistentObjectWithEntityName_;
    }

    v16 = [a3 *v15];

    if (*a5)
    {
      if (v16)
      {
        v17 = [v16 objectID];
        if (v17)
        {
          v18 = v17;
          v19 = *a5;
          if ((*a5 & 0xC000000000000001) != 0)
          {
            if (v19 < 0)
            {
              v20 = *a5;
            }

            else
            {
              v20 = v19 & 0xFFFFFFFFFFFFFF8;
            }

            result = sub_1A81ACE94();
            if (__OFADD__(result, 1))
            {
              __break(1u);
LABEL_93:
              __break(1u);
              return result;
            }

            *a5 = sub_1A8191B4C(v20, result + 1);
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v111 = *a5;
          sub_1A8182C58(v18, v11, isUniquelyReferenced_nonNull_native);
          *a5 = v111;
          v22 = v16;
          goto LABEL_16;
        }
      }

      v22 = v16;
      if (!v16)
      {
LABEL_81:
        if (qword_1EB2E2608 != -1)
        {
          goto LABEL_91;
        }

        goto LABEL_82;
      }
    }

    else
    {
      v22 = v16;
      if (!v16)
      {
        goto LABEL_81;
      }
    }
  }

  else
  {
    v22 = [a3 registerFetchedObjectWithID_];
    if (!v22)
    {
      goto LABEL_81;
    }
  }

LABEL_16:
  v91 = v22;
  v23 = v22;
  v95 = v23;
  if ((v12 & 0xC000000000000001) != 0)
  {
    if (v12 >= 0)
    {
      v12 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v24 = v91;
    v25 = v23;
    v26 = sub_1A81ACE94();
    if (__OFADD__(v26, 1))
    {
      goto LABEL_90;
    }

    *a6 = sub_1A81918F0(v12, v26 + 1);
  }

  else
  {
    v24 = v91;
    v27 = *a6;
    v28 = v23;
  }

  v29 = swift_isUniquelyReferenced_nonNull_native();
  *&v111 = *a6;
  sub_1A8182C18(v24, v11, v29);
  *a6 = v111;
  if (!*(a2 + 16) || (v30 = sub_1A8182524(v11), (v31 & 1) == 0))
  {

    return v91;
  }

  v90 = v24;
  v99 = a5;
  v100 = a3;
  v101 = a6;
  v98 = a2;
  v32 = *(*(a2 + 56) + 8 * v30);
  v33 = v32 + 64;
  v34 = 1 << *(v32 + 32);
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  else
  {
    v35 = -1;
  }

  v11 = v35 & *(v32 + 64);
  v36 = (v34 + 63) >> 6;
  v94 = v32;
  swift_bridgeObjectRetain_n();
  v37 = 0;
  v38 = v23;
  v92 = v36;
  v93 = v33;
  if (!v11)
  {
    goto LABEL_67;
  }

LABEL_66:
  while (2)
  {
    for (i = v37; ; v37 = i)
    {
      v78 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v79 = v78 | (i << 6);
      v80 = (*(v94 + 48) + 16 * v79);
      v82 = *v80;
      v81 = v80[1];
      sub_1A8182480(*(v94 + 56) + 32 * v79, v103);
      *&v108 = v82;
      *(&v108 + 1) = v81;
      sub_1A8183084(v103, &v109);

LABEL_76:
      v111 = v108;
      v112[0] = v109;
      v112[1] = v110;
      if (!*(&v108 + 1))
      {

        return v91;
      }

      sub_1A8183084(v112, &v106);
      sub_1A8182480(&v106, &v108);
      type metadata accessor for EKRemoteUIPersistentObjectPointer();
      if (!swift_dynamicCast())
      {
        break;
      }

      v39 = *&v103[0];
      v40 = *(*&v103[0] + OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID);
      v41 = *(*&v103[0] + OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert);
      ObjCClassFromObject = swift_getObjCClassFromObject();
      v43 = v40;
      result = [ObjCClassFromObject meltedClass];
      if (!result)
      {
        goto LABEL_93;
      }

      swift_getObjCClassMetadata();
      v44 = v38;
      v45 = sub_1A81ACCB4();
      v46 = [swift_getObjCClassFromMetadata() isWeakRelationObject:v44 forKey:v45];

      if (v46)
      {
        v47 = sub_1A81952A4(v43, v100, *v101);
        v33 = v93;
        if (!v47)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v47 = sub_1A818FF60(v43, v98, v100, v41, v99, v101);
        v33 = v93;
        if (!v47)
        {
LABEL_40:

          goto LABEL_41;
        }
      }

      v48 = v47;
      v49 = sub_1A81ACCB4();

      [v44 setValue:v48 forKey:v49];

LABEL_41:
      __swift_destroy_boxed_opaque_existential_0(&v106);
      v38 = v95;
LABEL_65:
      v36 = v92;
      if (v11)
      {
        goto LABEL_66;
      }

LABEL_67:
      if (v36 <= v37 + 1)
      {
        v76 = v37 + 1;
      }

      else
      {
        v76 = v36;
      }

      v77 = v76 - 1;
      do
      {
        i = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          __break(1u);
          goto LABEL_89;
        }

        if (i >= v36)
        {
          v11 = 0;
          v109 = 0u;
          v110 = 0u;
          v37 = v77;
          v108 = 0u;
          goto LABEL_76;
        }

        v11 = *(v33 + 8 * i);
        ++v37;
      }

      while (!v11);
    }

    sub_1A8182480(&v106, &v108);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2850, &unk_1A81C4350);
    if (!swift_dynamicCast())
    {
      sub_1A8182480(&v106, &v108);
      sub_1A81831D0(0, &qword_1EB2E28B8, 0x1E695DFB0);
      if (swift_dynamicCast())
      {

        v55 = sub_1A81ACCB4();

        [v38 setValue:0 forKey:v55];
      }

      else
      {
        __swift_project_boxed_opaque_existential_0(&v106, v107);
        v56 = sub_1A81AD064();
        v57 = sub_1A81ACCB4();

        [v38 setValue:v56 forKey:v57];
        swift_unknownObjectRelease();
      }

      __swift_destroy_boxed_opaque_existential_0(&v106);
      if (v11)
      {
        continue;
      }

      goto LABEL_67;
    }

    break;
  }

  v50 = *&v103[0];
  v105 = MEMORY[0x1E69E7CD0];
  if ((*&v103[0] & 0xC000000000000001) != 0)
  {
    sub_1A81ACE84();
    sub_1A8195248();
    sub_1A81ACDA4();
    v50 = v113;
    v51 = v114;
    v52 = v115;
    v53 = v116;
    v54 = v117;
  }

  else
  {
    v53 = 0;
    v58 = -1 << *(*&v103[0] + 32);
    v51 = *&v103[0] + 56;
    v52 = ~v58;
    v59 = -v58;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    else
    {
      v60 = -1;
    }

    v54 = v60 & *(*&v103[0] + 56);
  }

  v61 = (v52 + 64) >> 6;
  v96 = v51;
  v97 = v11;
  while (2)
  {
    if (v50 < 0)
    {
      v67 = sub_1A81ACEB4();
      if (!v67 || (*&v103[0] = v67, swift_dynamicCast(), v66 = v108, v64 = v53, v65 = v54, !v108))
      {
LABEL_64:
        sub_1A819529C();
        v73 = sub_1A81ACD94();

        v74 = sub_1A81ACCB4();

        v38 = v95;
        [v95 setValue:v73 forKey:v74];

        __swift_destroy_boxed_opaque_existential_0(&v106);
        v33 = v93;
        goto LABEL_65;
      }

      goto LABEL_62;
    }

    v62 = v53;
    v63 = v54;
    v64 = v53;
    if (v54)
    {
LABEL_58:
      v65 = (v63 - 1) & v63;
      v66 = *(*(v50 + 48) + ((v64 << 9) | (8 * __clz(__rbit64(v63)))));
      if (!v66)
      {
        goto LABEL_64;
      }

LABEL_62:
      v102 = v65;
      v68 = v66[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert];
      v69 = *&v66[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID];
      v70 = (sub_1A818FF60)();
      if (v70)
      {
        v104 = v70;
        v71 = v70;
        sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
        sub_1A819550C(&qword_1EB2E2890, &unk_1EB2E2860, off_1E77FBA90);
        v72 = v71;
        v51 = v96;
        v11 = v97;
        sub_1A81ACEF4();
        sub_1A8194874(&v108, v103);
        sub_1A81ACEE4();

        sub_1A818242C(&v108);
        __swift_destroy_boxed_opaque_existential_0(v103);
      }

      else
      {
      }

      v53 = v64;
      v54 = v102;
      continue;
    }

    break;
  }

  while (1)
  {
    v64 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      break;
    }

    if (v64 >= v61)
    {
      goto LABEL_64;
    }

    v63 = *(v51 + 8 * v64);
    ++v62;
    if (v63)
    {
      goto LABEL_58;
    }
  }

LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  swift_once();
LABEL_82:
  v83 = sub_1A81ACC64();
  __swift_project_value_buffer(v83, qword_1EB2E3378);
  v84 = v11;
  v85 = sub_1A81ACC44();
  v86 = sub_1A81ACDE4();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *v87 = 138412290;
    *(v87 + 4) = v84;
    *v88 = v84;
    v89 = v84;
    _os_log_impl(&dword_1A805E000, v85, v86, "EKRemoteUIObjectSerializer: Cannot create persistentObject from objectID: %@", v87, 0xCu);
    sub_1A8188C34(v88, &qword_1EB2E2870, &qword_1A81C4238);
    MEMORY[0x1AC569C60](v88, -1, -1);
    MEMORY[0x1AC569C60](v87, -1, -1);
  }

  return 0;
}

uint64_t sub_1A81909D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28A0, &qword_1A81C4380);
    v2 = sub_1A81AD044();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1A8182480(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_1A8183084(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1A8183084(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1A8183084(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1A81ACEC4();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1A8183084(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1A8190C98(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28A0, &qword_1A81C4380);
    v2 = sub_1A81AD044();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28A8, &qword_1A81C4388);
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1A8183084(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1A8183084(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1A81ACEC4();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1A8183084(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id EKRemoteUIObjectSerializer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EKRemoteUIObjectSerializer.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKIsPendingInsertKey];
  *v2 = 0xD000000000000015;
  *(v2 + 1) = 0x80000001A81CFC40;
  v3 = &v0[OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetKey];
  *v3 = 0x676E6168434B456BLL;
  *(v3 + 1) = 0xEF79654B74655365;
  v4 = &v0[OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKPersistentObjectKey];
  *v4 = 0xD000000000000016;
  *(v4 + 1) = 0x80000001A81CFC60;
  v5 = &v0[OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKCachedMeltedObjectsKey];
  *v5 = 0xD000000000000019;
  *(v5 + 1) = 0x80000001A81CFC80;
  v6 = &v0[OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetSingleValueChangesKey];
  *v6 = 0xD00000000000001FLL;
  *(v6 + 1) = 0x80000001A81CFCA0;
  v7 = &v0[OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetMultiValueAdditionsKey];
  *v7 = 0xD000000000000020;
  *(v7 + 1) = 0x80000001A81CFCC0;
  v8 = &v0[OBJC_IVAR____TtC8EventKit26EKRemoteUIObjectSerializer_kEKChangeSetMultiValueRemovalsKey];
  *v8 = 0xD00000000000001FLL;
  *(v8 + 1) = 0x80000001A81CFCF0;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

id EKRemoteUIObjectSerializer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A81911EC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1A81912B8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1A8182480(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1A81912B8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1A81913C4(a5, a6);
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
    result = sub_1A81ACF64();
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

uint64_t sub_1A81913C4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1A8191410(a1, a2);
  sub_1A8191540(&unk_1F1B491C0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1A8191410(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1A819162C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1A81ACF64();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1A81ACCE4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1A819162C(v10, 0);
        result = sub_1A81ACF44();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1A8191540(uint64_t result)
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

  result = sub_1A81916A0(result, v12, 1, v3);
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

void *sub_1A819162C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2898, &qword_1A81C4378);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1A81916A0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2898, &qword_1A81C4378);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1A8191794(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_1A8182524(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_1A8192C50(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1A8193424(&qword_1EB2E28C0, &qword_1A81C4398);
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_1A81ACFE4();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1A81ACE94();
  v8 = sub_1A8191B4C(v4, v7);

  v9 = sub_1A8182524(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_1A8192C50(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_1A81918F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28C8, &qword_1A81C43A0);
    v2 = sub_1A81AD034();
    v20 = v2;
    sub_1A81ACFC4();
    v3 = sub_1A81ACFF4();
    if (v3)
    {
      v4 = v3;
      sub_1A81831D0(0, &qword_1EB2E2650, off_1E77FBA00);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_1A8192598(v13 + 1, 1, &qword_1EB2E28C8, &qword_1A81C43A0);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_1A81ACE14();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_1A81ACFF4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1A8191B4C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28C0, &qword_1A81C4398);
    v2 = sub_1A81AD034();
    v20 = v2;
    sub_1A81ACFC4();
    v3 = sub_1A81ACFF4();
    if (v3)
    {
      v4 = v3;
      sub_1A81831D0(0, &qword_1EB2E2650, off_1E77FBA00);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_1A8192598(v13 + 1, 1, &qword_1EB2E28C0, &qword_1A81C4398);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_1A81ACE14();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_1A81ACFF4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1A8191D90(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28A0, &qword_1A81C4380);
  result = sub_1A81AD024();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_1A8183084((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_1A8183394(v24, &v38);
        sub_1A8182480(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_1A81ACEC4();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_1A8183084(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1A8192048(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28F8, &qword_1A81C43C8);
  result = sub_1A81AD024();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_1A81ACE14();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1A81922B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28B0, &qword_1A81C4390);
  v36 = a2;
  result = sub_1A81AD024();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1A8183084(v25, v37);
      }

      else
      {
        sub_1A8182480(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1A81AD0C4();
      sub_1A81ACCD4();
      result = sub_1A81AD0E4();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1A8183084(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1A8192598(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_1A81AD024();
  v10 = result;
  if (*(v7 + 16))
  {
    v36 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v25 = v23;
        v26 = v24;
      }

      v27 = *(v10 + 40);
      result = sub_1A81ACE14();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v7 + 32);
      if (v35 >= 64)
      {
        bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v12 = -1 << v35;
      }

      *(v7 + 16) = 0;
    }

    v5 = v36;
  }

  else
  {
  }

  *v5 = v10;
  return result;
}

uint64_t sub_1A81927F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2880, &qword_1A81C4368);
  v38 = a2;
  result = sub_1A81AD024();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1A81AD0C4();
      sub_1A81ACCD4();
      result = sub_1A81AD0E4();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1A8192AA0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A81ACE64() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1A81AD0C4();

      sub_1A81ACCD4();
      v14 = sub_1A81AD0E4();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1A8192C50(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A81ACE64() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_1A81ACE14();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

_OWORD *sub_1A8192DDC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1A8183084(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_1A8192E58(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

_OWORD *sub_1A8192E9C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1A8183084(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1A8192F08(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_1A8192F50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28A0, &qword_1A81C4380);
  v2 = *v0;
  v3 = sub_1A81AD014();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_1A8183394(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1A8182480(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1A8183084(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1A81930F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28F8, &qword_1A81C43C8);
  v2 = *v0;
  v3 = sub_1A81AD014();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1A8193258()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E28B0, &qword_1A81C4390);
  v2 = *v0;
  v3 = sub_1A81AD014();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1A8182480(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1A8183084(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_1A8193424(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1A81AD014();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
        result = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1A8193574()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2880, &qword_1A81C4368);
  v2 = *v0;
  v3 = sub_1A81AD014();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_1A81936E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1A81ACE14();
  v5 = -1 << *(a2 + 32);
  result = sub_1A81ACE74();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1A8193768(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1A81ACEA4();

    if (v9)
    {

      type metadata accessor for EKRemoteUIPersistentObjectPointer();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1A81ACE94();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1A8193BD0(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1A8193FDC(v22 + 1, &qword_1EB2E2900, &qword_1A81C43D0);
    }

    v20 = v8;
    sub_1A81936E4(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  type metadata accessor for EKRemoteUIPersistentObjectPointer();
  v11 = *(v6 + 40);
  v12 = sub_1A81ACE14();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1A81941FC(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1A81ACE24();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_1A8193988(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1A81ACEA4();

    if (v9)
    {

      sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1A81ACE94();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1A8193DCC(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1A8193FDC(v22 + 1, &qword_1EB2E2878, &qword_1A81C4360);
    }

    v20 = v8;
    sub_1A81936E4(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
  v11 = *(v6 + 40);
  v12 = sub_1A81ACE14();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1A8194388(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1A81ACE24();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_1A8193BD0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2900, &qword_1A81C43D0);
    v2 = sub_1A81ACF24();
    v16 = v2;
    sub_1A81ACE84();
    if (sub_1A81ACEB4())
    {
      type metadata accessor for EKRemoteUIPersistentObjectPointer();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1A8193FDC(v10 + 1, &qword_1EB2E2900, &qword_1A81C43D0);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1A81ACE14();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1A81ACEB4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1A8193DCC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2878, &qword_1A81C4360);
    v2 = sub_1A81ACF24();
    v16 = v2;
    sub_1A81ACE84();
    if (sub_1A81ACEB4())
    {
      sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1A8193FDC(v10 + 1, &qword_1EB2E2878, &qword_1A81C4360);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1A81ACE14();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1A81ACEB4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1A8193FDC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1A81ACF14();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_1A81ACE14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

void sub_1A81941FC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A8193FDC(v6 + 1, &qword_1EB2E2900, &qword_1A81C43D0);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1A8194528(&qword_1EB2E2900, &qword_1A81C43D0);
      goto LABEL_12;
    }

    sub_1A8194668(v6 + 1, &qword_1EB2E2900, &qword_1A81C43D0);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_1A81ACE14();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for EKRemoteUIPersistentObjectPointer();
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_1A81ACE24();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1A81AD0A4();
  __break(1u);
}

void sub_1A8194388(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A8193FDC(v6 + 1, &qword_1EB2E2878, &qword_1A81C4360);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1A8194528(&qword_1EB2E2878, &qword_1A81C4360);
      goto LABEL_12;
    }

    sub_1A8194668(v6 + 1, &qword_1EB2E2878, &qword_1A81C4360);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_1A81ACE14();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_1A81831D0(0, &unk_1EB2E2860, off_1E77FBA90);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_1A81ACE24();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1A81AD0A4();
  __break(1u);
}

id sub_1A8194528(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1A81ACF04();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_1A8194668(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1A81ACF14();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_1A81ACE14();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_1A8194874(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  v8 = sub_1A81ACEC4();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      sub_1A8183394(*(v6 + 48) + 40 * v10, v18);
      v12 = MEMORY[0x1AC5687D0](v18, a2);
      sub_1A818242C(v18);
      if (v12)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1A818242C(a2);
    sub_1A8183394(*(v6 + 48) + 40 * v10, a1);
    return 0;
  }

  else
  {
LABEL_5:
    v13 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A8183394(a2, v18);
    v17 = *v3;
    sub_1A81949C0(v18, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v17;
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_1A81949C0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *v4;
  if (*(*v4 + 24) > *(*v4 + 16))
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_68;
    }

    for (i = *v4; ; *v4 = i)
    {
LABEL_61:
      *(i + 8 * (a2 >> 6) + 56) |= 1 << a2;
      v57 = *(i + 48) + 40 * a2;
      v58 = *(v6 + 16);
      *v57 = *v6;
      *(v57 + 16) = v58;
      *(v57 + 32) = *(v6 + 32);
      v59 = *(i + 16);
      v60 = __OFADD__(v59, 1);
      v61 = v59 + 1;
      if (!v60)
      {
        *(i + 16) = v61;
        return result;
      }

LABEL_67:
      __break(1u);
LABEL_68:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2888, &qword_1A81C4370);
      v62 = sub_1A81ACF04();
      i = v62;
      if (*(v7 + 16))
      {
        break;
      }

LABEL_83:
    }

    v63 = (v62 + 56);
    v64 = v7 + 56;
    v65 = ((1 << *(i + 32)) + 63) >> 6;
    if (i != v7 || v63 >= v64 + 8 * v65)
    {
      memmove(v63, (v7 + 56), 8 * v65);
    }

    v66 = 0;
    *(i + 16) = *(v7 + 16);
    v67 = 1 << *(v7 + 32);
    v68 = *(v7 + 56);
    v69 = -1;
    if (v67 < 64)
    {
      v69 = ~(-1 << v67);
    }

    v70 = v69 & v68;
    v71 = (v67 + 63) >> 6;
    if ((v69 & v68) != 0)
    {
      do
      {
        v72 = __clz(__rbit64(v70));
        v70 &= v70 - 1;
LABEL_81:
        v75 = 40 * (v72 | (v66 << 6));
        sub_1A8183394(*(v7 + 48) + v75, &v81);
        v76 = *(i + 48) + v75;
        v77 = v81;
        v78 = v82;
        *(v76 + 32) = v83;
        *v76 = v77;
        *(v76 + 16) = v78;
      }

      while (v70);
    }

    v73 = v66;
    while (1)
    {
      v66 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        break;
      }

      if (v66 >= v71)
      {
        goto LABEL_83;
      }

      v74 = *(v64 + 8 * v66);
      ++v73;
      if (v74)
      {
        v72 = __clz(__rbit64(v74));
        v70 = (v74 - 1) & v74;
        goto LABEL_81;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2888, &qword_1A81C4370);
  if ((a3 & 1) == 0)
  {
    v31 = sub_1A81ACF14();
    i = v31;
    if (!*(v7 + 16))
    {
      goto LABEL_56;
    }

    v80 = v4;
    v32 = 0;
    a2 = v7 + 56;
    v33 = 1 << *(v7 + 32);
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v35 = v34 & *(v7 + 56);
    v4 = (v33 + 63) >> 6;
    v36 = v31 + 56;
    while (1)
    {
      if (v35)
      {
        v41 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
      }

      else
      {
        v42 = v32;
        do
        {
          v32 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            goto LABEL_64;
          }

          if (v32 >= v4)
          {

            v4 = v80;
            goto LABEL_57;
          }

          v43 = *(a2 + 8 * v32);
          ++v42;
        }

        while (!v43);
        v41 = __clz(__rbit64(v43));
        v35 = (v43 - 1) & v43;
      }

      sub_1A8183394(*(v7 + 48) + 40 * (v41 | (v32 << 6)), &v81);
      v44 = *(i + 40);
      v45 = sub_1A81ACEC4();
      v46 = -1 << *(i + 32);
      v47 = v45 & ~v46;
      v48 = v47 >> 6;
      if (((-1 << v47) & ~*(v36 + 8 * (v47 >> 6))) != 0)
      {
        v37 = __clz(__rbit64((-1 << v47) & ~*(v36 + 8 * (v47 >> 6)))) | v47 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v49 = 0;
        v50 = (63 - v46) >> 6;
        do
        {
          if (++v48 == v50 && (v49 & 1) != 0)
          {
            goto LABEL_66;
          }

          v51 = v48 == v50;
          if (v48 == v50)
          {
            v48 = 0;
          }

          v49 |= v51;
          v52 = *(v36 + 8 * v48);
        }

        while (v52 == -1);
        v37 = __clz(__rbit64(~v52)) + (v48 << 6);
      }

      *(v36 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
      v38 = *(i + 48) + 40 * v37;
      v39 = v81;
      v40 = v82;
      *(v38 + 32) = v83;
      *v38 = v39;
      *(v38 + 16) = v40;
      ++*(i + 16);
    }
  }

  v10 = sub_1A81ACF14();
  i = v10;
  if (!*(v7 + 16))
  {
    goto LABEL_56;
  }

  v79 = v4;
  v11 = 0;
  a2 = v7 + 56;
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 56);
  v4 = (v12 + 63) >> 6;
  v15 = v10 + 56;
LABEL_12:
  if (v14)
  {
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    goto LABEL_19;
  }

  v19 = v11;
  while (1)
  {
    v11 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (v11 >= v4)
    {
      break;
    }

    v20 = *(a2 + 8 * v11);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v14 = (v20 - 1) & v20;
LABEL_19:
      v21 = *(v7 + 48) + 40 * (v18 | (v11 << 6));
      v81 = *v21;
      v82 = *(v21 + 16);
      v83 = *(v21 + 32);
      v22 = *(i + 40);
      v23 = sub_1A81ACEC4();
      v24 = -1 << *(i + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        do
        {
          if (++v26 == v28 && (v27 & 1) != 0)
          {
            goto LABEL_65;
          }

          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
        }

        while (v30 == -1);
        v16 = __clz(__rbit64(~v30)) + (v26 << 6);
      }

      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(i + 48) + 40 * v16;
      *v17 = v81;
      *(v17 + 16) = v82;
      *(v17 + 32) = v83;
      ++*(i + 16);
      goto LABEL_12;
    }
  }

  v53 = 1 << *(v7 + 32);
  if (v53 >= 64)
  {
    bzero((v7 + 56), ((v53 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
  }

  else
  {
    *a2 = -1 << v53;
  }

  v4 = v79;
  *(v7 + 16) = 0;
LABEL_56:

LABEL_57:
  *v4 = i;
  v54 = *(i + 40);
  result = sub_1A81ACEC4();
  v55 = -1 << *(i + 32);
  a2 = result & ~v55;
  if (((*(i + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_61;
  }

  v7 = ~v55;
  while (1)
  {
    sub_1A8183394(*(i + 48) + 40 * a2, &v81);
    v56 = MEMORY[0x1AC5687D0](&v81, v6);
    result = sub_1A818242C(&v81);
    if (v56)
    {
      break;
    }

    a2 = (a2 + 1) & v7;
    if (((*(i + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

LABEL_85:
  result = sub_1A81AD0A4();
  __break(1u);
  return result;
}

void sub_1A8195010(void *a1)
{
  v3 = sub_1A81ACCB4();
  v4 = [a1 decodeObjectForKey_];

  if (v4)
  {
    sub_1A81ACE44();
    swift_unknownObjectRelease();
    sub_1A8183084(&v9, &v10);
    sub_1A81831D0(0, &qword_1EB2E2650, off_1E77FBA00);
    swift_dynamicCast();
    *&v1[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_objectID] = v8;
    v5 = sub_1A81ACCB4();
    v6 = [a1 decodeBoolForKey_];

    v1[OBJC_IVAR____TtC8EventKit33EKRemoteUIPersistentObjectPointer_isPendingInsert] = v6;
    v7.receiver = v1;
    v7.super_class = type metadata accessor for EKRemoteUIPersistentObjectPointer();
    objc_msgSendSuper2(&v7, sel_init);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1A8195248()
{
  result = qword_1EB2E2858;
  if (!qword_1EB2E2858)
  {
    type metadata accessor for EKRemoteUIPersistentObjectPointer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E2858);
  }

  return result;
}

id sub_1A81952A4(void *a1, void *a2, uint64_t a3)
{
  if ([a1 entityType] == 1 && objc_msgSend(a1, sel_isVirtual))
  {
    result = [a2 defaultCalendarForNewEvents];
    if (result)
    {
      v7 = result;
      v8 = [result persistentObject];

      return v8;
    }
  }

  else
  {
    result = sub_1A8188DAC(a1, a3);
    if (!result)
    {
      if ([a1 isTemporary])
      {
        if (qword_1EB2E2608 != -1)
        {
          swift_once();
        }

        v9 = sub_1A81ACC64();
        __swift_project_value_buffer(v9, qword_1EB2E3378);
        v10 = a1;
        v11 = sub_1A81ACC44();
        v12 = sub_1A81ACDE4();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          *v13 = 138412290;
          *(v13 + 4) = v10;
          *v14 = v10;
          v15 = v10;
          _os_log_impl(&dword_1A805E000, v11, v12, "EKRemoteUIObjectSerializer: Attempting to fetch from the eventStore using a temporary objectID: %@", v13, 0xCu);
          sub_1A8188C34(v14, &qword_1EB2E2870, &qword_1A81C4238);
          MEMORY[0x1AC569C60](v14, -1, -1);
          MEMORY[0x1AC569C60](v13, -1, -1);
        }

        return 0;
      }

      else
      {
        return [a2 registerFetchedObjectWithID_];
      }
    }
  }

  return result;
}

uint64_t sub_1A819549C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB2E2810, &qword_1A81C4330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A819550C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A81831D0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1A81955C0()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1A8195628(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1A8195670(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static MapSearchCompletionResolver.resolve(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A8195770;

  return sub_1A81960D0(a1);
}

uint64_t sub_1A8195770(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1A8195870(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2978, &qword_1A81C44C8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  sub_1A81ACD84();
  sub_1A81ACD74();
  sub_1A81ACD44();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = objc_opt_self();
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_1A8196510;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A8195BC4;
  aBlock[3] = &block_descriptor;
  v14 = _Block_copy(aBlock);

  v15 = [v11 resolveMapSearchCompletion:a3 withCompletionHander:v14];
  _Block_release(v14);
  v16 = *a2;
  *a2 = v15;

  return swift_unknownObjectRelease();
}

uint64_t sub_1A8195ABC(void *a1, void *a2)
{
  sub_1A81ACD84();
  sub_1A81ACD74();
  sub_1A81ACD44();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    v4 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2978, &qword_1A81C44C8);
    sub_1A81ACD54();
  }

  else
  {
    v5 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2978, &qword_1A81C44C8);
    sub_1A81ACD64();
  }
}

void sub_1A8195BC4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t static MapSearchCompletionResolver.resolveToStructuredLocation(_:)(uint64_t a1)
{
  v1[2] = sub_1A81ACD84();
  v1[3] = sub_1A81ACD74();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_1A8195D14;

  return sub_1A81960D0(a1);
}

uint64_t sub_1A8195D14(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v12 = *v2;
  *(v4 + 40) = a1;
  *(v4 + 48) = v3;

  v9 = sub_1A81ACD44();
  if (v3)
  {
    v10 = sub_1A819606C;
  }

  else
  {
    v10 = sub_1A8195E74;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1A8195E74()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  v3 = [objc_allocWithZone(EKStructuredLocation) init];
  if (!v1 || (v4 = [*(v0 + 40) title]) == 0)
  {
    v4 = 0;
  }

  v5 = *(v0 + 40);
  [v3 setTitle_];

  if (!v1 || (v6 = [v5 address]) == 0)
  {
    v6 = 0;
  }

  [v3 setAddress_];

  v7 = [v5 geoLocation];
  [v3 setGeoLocation_];

  if (v1)
  {
    [v5 radius];
    [v3 setRadius_];
    v8 = [v5 mapKitHandle];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1A81ACA24();
      v12 = v11;

      v13 = sub_1A81ACA14();
      sub_1A81964A4(v10, v12);
      goto LABEL_12;
    }
  }

  else
  {
    [v3 setRadius_];
  }

  v13 = 0;
LABEL_12:
  [v3 setMapKitHandle_];

  v14 = *(v0 + 8);

  return v14(v3);
}

uint64_t sub_1A819606C()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_1A81960D0(uint64_t a1)
{
  v1[4] = a1;
  v1[5] = sub_1A81ACD84();
  v1[6] = sub_1A81ACD74();
  v3 = sub_1A81ACD44();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A819616C, v3, v2);
}

uint64_t sub_1A819616C()
{
  v2 = v0[4];
  v1 = v0[5];
  v0[2] = 0;
  v3 = sub_1A81ACD74();
  v0[9] = v3;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *(v4 + 16) = v0 + 2;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[11] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2970, &qword_1A81C44C0);
  *v6 = v0;
  v6[1] = sub_1A8196290;
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v0 + 3, v3, v8, 0x2865766C6F736572, 0xEB00000000293A5FLL, sub_1A8196508, v4, v7);
}

uint64_t sub_1A8196290()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v10 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_1A8196424;
  }

  else
  {
    v7 = v2[9];
    v8 = v2[10];

    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_1A81963B4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1A81963B4()
{
  v1 = v0[6];

  v2 = v0[2];
  v3 = v0[3];
  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1A8196424()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];

  v4 = v0[2];
  swift_unknownObjectRelease();
  v5 = v0[1];
  v6 = v0[12];

  return v5();
}

uint64_t sub_1A81964A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1A8196510(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2978, &qword_1A81C44C8) - 8) + 80);

  return sub_1A8195ABC(a1, a2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A81965B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t Autocompleter.AutocompleteResult.displayName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Autocompleter.AutocompleteResult.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Autocompleter.AutocompleteResult.address.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_1A81966A8();
}

uint64_t Autocompleter.AutocompleteResult.address.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  result = sub_1A81966F0();
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t Autocompleter.AutocompleteResult.contactIdentifier.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t Autocompleter.AutocompleteResult.contactIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_1A81967D4()
{
  v1 = *v0;
  sub_1A81AD0C4();
  MEMORY[0x1AC5689D0](v1);
  return sub_1A81AD0E4();
}

uint64_t sub_1A8196848()
{
  v1 = *v0;
  sub_1A81AD0C4();
  MEMORY[0x1AC5689D0](v1);
  return sub_1A81AD0E4();
}

BOOL sub_1A81968D0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1A8196900@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1A819692C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1A8196A04@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t static Autocompleter.results(for:inSource:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4[6] = a1;
  v4[7] = a2;
  v5 = *a4;
  v4[8] = a3;
  v4[9] = v5;
  return MEMORY[0x1EEE6DFA0](sub_1A8196A60, 0, 0);
}

uint64_t sub_1A8196A60()
{
  if (MEMORY[0x1E6996358])
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 48);
    v3 = type metadata accessor for Autocompleter.AutocompleterDelegate();
    v12 = *(v0 + 56);
    v4 = [objc_allocWithZone(v3) init];
    *(v0 + 80) = v4;
    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v1;
    *(v5 + 32) = v2;
    *(v5 + 40) = v12;
    v6 = *(MEMORY[0x1E69E88D0] + 4);
    v7 = swift_task_alloc();
    *(v0 + 96) = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2980, &qword_1A81C44D8);
    *v7 = v0;
    v7[1] = sub_1A8196BF4;

    return MEMORY[0x1EEE6DDE0](v0 + 40, 0, 0, 0xD00000000000001ELL, 0x80000001A81D0120, sub_1A81970A4, v5, v8);
  }

  else
  {
    v9 = *(v0 + 8);
    v10 = MEMORY[0x1E69E7CC0];

    return v9(v10);
  }
}

uint64_t sub_1A8196BF4()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A8196D0C, 0, 0);
}

uint64_t sub_1A8196D0C()
{
  v1 = v0[10];
  v2 = v0[5];
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2988, &qword_1A81C44E0) - 8) + 64) + 15;
  v4 = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2990, &qword_1A81C44E8);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV8EventKit13AutocompleterP33_DEA997DC7EC58B9D25A8208EE08F08CD21AutocompleterDelegate_continuation;
  swift_beginAccess();
  sub_1A81970B4(v4, v1 + v6);
  swift_endAccess();

  v7 = v0[1];

  return v7(v2);
}

uint64_t type metadata accessor for Autocompleter.AutocompleterDelegate()
{
  result = qword_1EB2E2A30;
  if (!qword_1EB2E2A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A8196E84(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2988, &qword_1A81C44E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2990, &qword_1A81C44E8);
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a1, v14);
  (*(v15 + 56))(v13, 0, 1, v14);
  v16 = OBJC_IVAR____TtCV8EventKit13AutocompleterP33_DEA997DC7EC58B9D25A8208EE08F08CD21AutocompleterDelegate_continuation;
  swift_beginAccess();
  sub_1A81970B4(v13, a2 + v16);
  swift_endAccess();
  v17 = [objc_allocWithZone(EKAutocompleter) initWithDelegate_];
  [v17 setFindGroups_];
  [v17 setFindPeople_];
  [v17 setFindRecents_];
  [v17 setUseDirectorySearch_];
  v18 = *(a2 + OBJC_IVAR____TtCV8EventKit13AutocompleterP33_DEA997DC7EC58B9D25A8208EE08F08CD21AutocompleterDelegate_autocompleter);
  *(a2 + OBJC_IVAR____TtCV8EventKit13AutocompleterP33_DEA997DC7EC58B9D25A8208EE08F08CD21AutocompleterDelegate_autocompleter) = v17;
  v19 = v17;

  v20 = sub_1A81ACCB4();
}

uint64_t sub_1A81970B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2988, &qword_1A81C44E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A8197128()
{
  result = qword_1EB2E29A0;
  if (!qword_1EB2E29A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E29A0);
  }

  return result;
}

unint64_t sub_1A8197180()
{
  result = qword_1EB2E29A8;
  if (!qword_1EB2E29A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E29A8);
  }

  return result;
}

unint64_t sub_1A81971D4()
{
  result = qword_1EB2E29B0;
  if (!qword_1EB2E29B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E29B0);
  }

  return result;
}

unint64_t sub_1A819722C()
{
  result = qword_1EB2E29B8;
  if (!qword_1EB2E29B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E29B8);
  }

  return result;
}

uint64_t sub_1A819729C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1A81972E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1A8197354(uint64_t a1, unsigned int a2)
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
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A819739C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Autocompleter.Options(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Autocompleter.Options(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

void sub_1A81974F8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2990, &qword_1A81C44E8);
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2988, &qword_1A81C44E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v60 = &v52 - v11;
  v12 = OBJC_IVAR____TtCV8EventKit13AutocompleterP33_DEA997DC7EC58B9D25A8208EE08F08CD21AutocompleterDelegate_autocompleter;
  v13 = *&v1[OBJC_IVAR____TtCV8EventKit13AutocompleterP33_DEA997DC7EC58B9D25A8208EE08F08CD21AutocompleterDelegate_autocompleter];
  if (v13)
  {
    sub_1A81831D0(0, &qword_1EB2E2A48, off_1E77FB7F8);
    v14 = a1;
    v15 = v13;
    v16 = sub_1A81ACE24();

    if ((v16 & 1) != 0 && ([v14 isRunning] & 1) == 0)
    {
      v17 = *&v2[v12];
      *&v2[v12] = 0;

      v18 = [v14 allResults];
      sub_1A81831D0(0, &qword_1EB2E2A50, 0x1E6996358);
      v19 = sub_1A81ACD14();

      v20 = v19 & 0xFFFFFFFFFFFFFF8;
      if (v19 >> 62)
      {
LABEL_43:
        v21 = sub_1A81ACE94();
      }

      else
      {
        v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v55 = v8;
      v57 = v5;
      v58 = v4;
      if (!v21)
      {
        v59 = MEMORY[0x1E69E7CC0];
        goto LABEL_37;
      }

      v8 = 0;
      v4 = v19 & 0xC000000000000001;
      v59 = MEMORY[0x1E69E7CC0];
      v22 = &selRef_addOperation_;
      v56 = v2;
      v62 = v19 & 0xC000000000000001;
      while (1)
      {
        v2 = v8;
        while (1)
        {
          if (v4)
          {
            v23 = MEMORY[0x1AC568850](v2, v19);
          }

          else
          {
            if (v2 >= *(v20 + 16))
            {
              goto LABEL_42;
            }

            v23 = *(v19 + 8 * v2 + 32);
          }

          v5 = v23;
          v8 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          v24 = [v23 value];
          if (!v24)
          {
            __break(1u);
LABEL_45:
            __break(1u);
            return;
          }

          v25 = v24;
          v26 = [v24 v22[14]];

          if (v26)
          {
            break;
          }

LABEL_10:
          sub_1A8197CC0(0, 0);
          ++v2;
          if (v8 == v21)
          {
            v2 = v56;
            goto LABEL_37;
          }
        }

        v63 = sub_1A81ACCC4();
        v28 = v27;

        v29 = [v5 displayName];
        if (!v29)
        {

          goto LABEL_10;
        }

        v30 = v19;
        v31 = v29;
        v61 = sub_1A81ACCC4();
        v33 = v32;

        v34 = [v5 value];
        if (!v34)
        {
          goto LABEL_45;
        }

        v35 = v34;
        v36 = [v34 addressType];

        if (v36 == 1)
        {
          v37 = 0;
          goto LABEL_26;
        }

        if (v36 != 2)
        {
          break;
        }

        v37 = 1;
LABEL_26:
        v38 = [v5 identifier];
        if (v38)
        {
          v39 = v38;
          v40 = sub_1A81ACCC4();
          v53 = v41;
          v54 = v40;
        }

        else
        {

          v53 = 0;
          v54 = 0;
        }

        v2 = v56;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_1A8197F68(0, *(v59 + 2) + 1, 1, v59);
        }

        v43 = *(v59 + 2);
        v42 = *(v59 + 3);
        v5 = (v43 + 1);
        if (v43 >= v42 >> 1)
        {
          v59 = sub_1A8197F68((v42 > 1), v43 + 1, 1, v59);
        }

        v44 = v59;
        *(v59 + 2) = v5;
        v45 = &v44[56 * v43];
        v4 = v62;
        *(v45 + 4) = v61;
        *(v45 + 5) = v33;
        *(v45 + 6) = v63;
        *(v45 + 7) = v28;
        v45[64] = v37;
        v46 = v53;
        *(v45 + 9) = v54;
        *(v45 + 10) = v46;
        v19 = v30;
        v22 = &selRef_addOperation_;
        if (v8 == v21)
        {
LABEL_37:

          v47 = OBJC_IVAR____TtCV8EventKit13AutocompleterP33_DEA997DC7EC58B9D25A8208EE08F08CD21AutocompleterDelegate_continuation;
          swift_beginAccess();
          v48 = v60;
          sub_1A8198090(&v2[v47], v60);
          v50 = v57;
          v49 = v58;
          if ((v57[6])(v48, 1, v58))
          {

            sub_1A8198100(v48);
          }

          else
          {
            v51 = v55;
            (v50[2])(v55, v48, v49);
            sub_1A8198100(v48);
            v64 = v59;
            sub_1A81ACD64();
            (v50[1])(v51, v49);
          }

          return;
        }
      }

      v19 = v30;
      v4 = v62;
      v22 = &selRef_addOperation_;
      goto LABEL_10;
    }
  }
}

id sub_1A8197B38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Autocompleter.AutocompleterDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A8197BC4()
{
  sub_1A8197C5C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1A8197C5C()
{
  if (!qword_1EB2E2A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB2E2990, &qword_1A81C44E8);
    v0 = sub_1A81ACE34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2E2A40);
    }
  }
}

uint64_t sub_1A8197CC0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    sub_1A81966F0();
  }

  return result;
}

char *sub_1A8197D28(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2A60, &qword_1A81C4868);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A8197E34(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2A68, &unk_1A81C4870);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2820, &qword_1A81C4338);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A8197F68(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2A58, &qword_1A81C4860);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A8198090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2988, &qword_1A81C44E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8198100(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB2E2988, &qword_1A81C44E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void __getREMListClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMListClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKFrozenReminderCalendar.m" lineNumber:24 description:{@"Unable to find class %s", "REMList"}];

  __break(1u);
}

void ReminderKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"EKFrozenReminderCalendar.m" lineNumber:23 description:{@"%s", *a1}];

  __break(1u);
}

void __getREMColorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMColorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKFrozenReminderCalendar.m" lineNumber:25 description:{@"Unable to find class %s", "REMColor"}];

  __break(1u);
}

void __getREMReminderClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMReminderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKFrozenReminderReminder.m" lineNumber:22 description:{@"Unable to find class %s", "REMReminder"}];

  __break(1u);
}

void ReminderKitLibrary_cold_1_0(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"EKFrozenReminderReminder.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void __getREMUserActivityClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMUserActivityClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKFrozenReminderReminder.m" lineNumber:23 description:{@"Unable to find class %s", "REMUserActivity"}];

  __break(1u);
}

void __getREMReminderChangeItemClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMReminderChangeItemClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKFrozenReminderReminder.m" lineNumber:24 description:{@"Unable to find class %s", "REMReminderChangeItem"}];

  __break(1u);
}

void __getREMStoreClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKReminderStore.m" lineNumber:40 description:{@"Unable to find class %s", "REMStore"}];

  __break(1u);
}

void ReminderKitLibrary_cold_1_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"EKReminderStore.m" lineNumber:39 description:{@"%s", *a1}];

  __break(1u);
}

void __getREMListClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMListClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKReminderStore.m" lineNumber:42 description:{@"Unable to find class %s", "REMList"}];

  __break(1u);
}

void __getREMReminderClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMReminderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKReminderStore.m" lineNumber:44 description:{@"Unable to find class %s", "REMReminder"}];

  __break(1u);
}

void __getREMSaveRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMSaveRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKReminderStore.m" lineNumber:43 description:{@"Unable to find class %s", "REMSaveRequest"}];

  __break(1u);
}

void __getREMAccountClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMAccountClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKReminderStore.m" lineNumber:41 description:{@"Unable to find class %s", "REMAccount"}];

  __break(1u);
}

void __getREMAlarmClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMAlarmClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKReminderStore.m" lineNumber:45 description:{@"Unable to find class %s", "REMAlarm"}];

  __break(1u);
}

void __getREMRecurrenceRuleClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMRecurrenceRuleClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKReminderStore.m" lineNumber:46 description:{@"Unable to find class %s", "REMRecurrenceRule"}];

  __break(1u);
}

void __getREMStructuredLocationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMStructuredLocationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKReminderStore.m" lineNumber:47 description:{@"Unable to find class %s", "REMStructuredLocation"}];

  __break(1u);
}

void __getCNAutocompleteStoreClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNAutocompleteStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKAutocompleter.m" lineNumber:44 description:{@"Unable to find class %s", "CNAutocompleteStore"}];

  __break(1u);
}

void ContactsAutocompleteLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContactsAutocompleteLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"EKAutocompleter.m" lineNumber:43 description:{@"%s", *a1}];

  __break(1u);
}

void __getCNAutocompleteFetchRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNAutocompleteFetchRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKAutocompleter.m" lineNumber:45 description:{@"Unable to find class %s", "CNAutocompleteFetchRequest"}];

  __break(1u);
}

void __getCNAutocompleteNameComponentsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNAutocompleteNameComponentsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKAutocompleter.m" lineNumber:47 description:{@"Unable to find class %s", "CNAutocompleteNameComponents"}];

  __break(1u);
}

void __getCNAutocompleteResultClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNAutocompleteResultClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKAutocompleter.m" lineNumber:46 description:{@"Unable to find class %s", "CNAutocompleteResult"}];

  __break(1u);
}

void EKDescriptorForRequiredKeysForLabeledDisplayString_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCNContactTypeKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"EKContactDescriptionGenerator.m" lineNumber:21 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getCNContactFormatterClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNContactFormatterClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKContactDescriptionGenerator.m" lineNumber:19 description:{@"Unable to find class %s", "CNContactFormatter"}];

  __break(1u);
}

void ContactsLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContactsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"EKContactDescriptionGenerator.m" lineNumber:18 description:{@"%s", *a1}];

  __break(1u);
}

void __getCNLabeledValueClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNLabeledValueClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKContactDescriptionGenerator.m" lineNumber:20 description:{@"Unable to find class %s", "CNLabeledValue"}];

  __break(1u);
}

void __getREMStructuredLocationClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMStructuredLocationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKFrozenReminderStructuredLocation.m" lineNumber:23 description:{@"Unable to find class %s", "REMStructuredLocation"}];

  __break(1u);
}

void __getREMStructuredLocationClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"EKFrozenReminderStructuredLocation.m" lineNumber:22 description:{@"%s", *a1}];

  __break(1u);
}

void __getREMRecurrenceEndClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMRecurrenceEndClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKFrozenReminderRecurrenceRule.m" lineNumber:20 description:{@"Unable to find class %s", "REMRecurrenceEnd"}];

  __break(1u);
}

void ReminderKitLibrary_cold_1_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"EKFrozenReminderRecurrenceRule.m" lineNumber:18 description:{@"%s", *a1}];

  __break(1u);
}

void __getREMRecurrenceRuleClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMRecurrenceRuleClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKFrozenReminderRecurrenceRule.m" lineNumber:19 description:{@"Unable to find class %s", "REMRecurrenceRule"}];

  __break(1u);
}

void __getREMRecurrenceDayOfWeekClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMRecurrenceDayOfWeekClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKFrozenReminderRecurrenceRule.m" lineNumber:21 description:{@"Unable to find class %s", "REMRecurrenceDayOfWeek"}];

  __break(1u);
}

void EKObjectIDFromDictionary_cold_2(int *a1, int *a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *a2;
  v6[0] = 67109376;
  v6[1] = v3;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&dword_1A805E000, log, OS_LOG_TYPE_ERROR, "Could not convert dictionary into EKObjectID. entityType = %d, rowID = %d", v6, 0xEu);
  v5 = *MEMORY[0x1E69E9840];
}

void __getREMReminderClass_block_invoke_cold_1_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMReminderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKEvent.m" lineNumber:97 description:{@"Unable to find class %s", "REMReminder"}];

  __break(1u);
}

void __getREMReminderClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"EKEvent.m" lineNumber:96 description:{@"%s", *a1}];

  __break(1u);
}

void __getkSuggestionsEKEventAvailabilityStateSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreSuggestionsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"EKEvent.m" lineNumber:110 description:{@"%s", *a1}];

  __break(1u);
}

void __getMKMapItemClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getMKMapItemClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKLocationSearchModel.m" lineNumber:65 description:{@"Unable to find class %s", "MKMapItem"}];

  __break(1u);
}

void __getMKMapItemClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MapKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"EKLocationSearchModel.m" lineNumber:64 description:{@"%s", *a1}];

  __break(1u);
}

void __getREMAlarmTimeIntervalTriggerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMAlarmTimeIntervalTriggerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKFrozenReminderAlarm.m" lineNumber:22 description:{@"Unable to find class %s", "REMAlarmTimeIntervalTrigger"}];

  __break(1u);
}

void ReminderKitLibrary_cold_1_3(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ReminderKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"EKFrozenReminderAlarm.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void __getREMAlarmDateTriggerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMAlarmDateTriggerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKFrozenReminderAlarm.m" lineNumber:23 description:{@"Unable to find class %s", "REMAlarmDateTrigger"}];

  __break(1u);
}

void __getREMAlarmLocationTriggerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getREMAlarmLocationTriggerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"EKFrozenReminderAlarm.m" lineNumber:24 description:{@"Unable to find class %s", "REMAlarmLocationTrigger"}];

  __break(1u);
}

void EKUIAttendeeUtils_AttendeeHasResponded_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "EKUIAttendeeUtils_AttendeeHasResponded";
  _os_log_error_impl(&dword_1A805E000, log, OS_LOG_TYPE_ERROR, "'nil' participant given to function: [%s].  Will not compute needs response state.", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __EKDatabasePerformMigrationIfNeeded_block_invoke_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "Migration returned error code %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}