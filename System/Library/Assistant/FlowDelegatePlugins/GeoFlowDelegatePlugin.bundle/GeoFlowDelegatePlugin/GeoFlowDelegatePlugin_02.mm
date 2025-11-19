uint64_t ShareETAContactDisambiguationStrategy.parseDisambiguationResponse(input:paginatedItems:)()
{
  v430 = v0;
  v3 = v0;
  v4 = *(v0 + 560);
  v5 = *(v3 + 544);
  v6 = *(v3 + 536);
  v7 = *(v3 + 152);
  Input.parse.getter();
  v8 = (*(v5 + 88))(v4, v6);
  v420 = v3;
  if (v8 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v9 = *(v3 + 560);
    v10 = *(v3 + 528);
    v11 = *(v3 + 504);
    v12 = *(v3 + 512);
    v13 = *(v3 + 496);
    v14 = *(v3 + 472);
    v15 = *(v3 + 480);
    v16 = *(v3 + 168);
    v17 = *(v3 + 152);
    (*(*(v3 + 544) + 96))(v9, *(v3 + 536));
    v413 = *(v12 + 32);
    v413(v10, v9, v11);
    v18 = static os_log_type_t.default.getter();
    v19 = *(v16 + 16);
    (*(v15 + 16))(v13, v17, v14);
    v423 = v19;
    if (os_log_type_enabled(v19, v18))
    {
      v20 = *(v3 + 552);
      v21 = *(v3 + 536);
      v22 = *(v3 + 496);
      v23 = *(v3 + 472);
      v24 = *(v3 + 480);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v429[0] = v26;
      *v25 = 136315138;
      Input.parse.getter();
      v27 = String.init<A>(describing:)();
      v29 = v28;
      (*(v24 + 8))(v22, v23);
      v19 = v423;
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v429);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_0, v423, v18, "parseDisambiguationResponse NLv3IntentOnly input.parse: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
    }

    else
    {
      (*(*(v3 + 480) + 8))(*(v3 + 496), *(v3 + 472));
    }

    (*(*(v3 + 512) + 16))(*(v3 + 520), *(v3 + 528), *(v3 + 504));
    v53 = type metadata accessor for LocationSearchIntent();
    v54 = *(v53 + 48);
    v55 = *(v53 + 52);
    v56 = swift_allocObject();
    v57 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
    if (one-time initialization token for domainNode != -1)
    {
LABEL_158:
      v356 = v56;
      swift_once();
      v56 = v356;
    }

    v58 = *(v3 + 520);
    v59 = *(v3 + 504);
    v60 = *(v3 + 464);
    v62 = *(v3 + 432);
    v61 = *(v3 + 440);
    v63 = *(v3 + 160);
    *(v56 + v57) = static LocationSearchIntent.domainNode;
    v64 = v56;
    v413(v56 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent, v58, v59);

    v65 = static os_log_type_t.info.getter();
    v66 = *(v61 + 16);
    v66(v60, v63, v62);
    v67 = os_log_type_enabled(v19, v65);
    v68 = *(v3 + 464);
    v405 = v64;
    if (v67)
    {
      v401 = *(v3 + 456);
      v69 = v420[55];
      v70 = v420[54];
      v71 = swift_slowAlloc();
      v429[0] = swift_slowAlloc();
      *v71 = 136315394;
      v420[17] = v405;
      lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent, type metadata accessor for LocationSearchIntent);
      v72 = NLIntentWrapper.description.getter();
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v429);

      *(v71 + 4) = v74;
      *(v71 + 12) = 2080;
      v66(v401, v68, v70);
      v75 = String.init<A>(describing:)();
      v77 = v76;
      (*(v69 + 8))(v68, v70);
      v3 = v420;
      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, v429);

      *(v71 + 14) = v78;
      _os_log_impl(&dword_0, v423, v65, "intent %s, paginatedItems %s", v71, 0x16u);
      swift_arrayDestroy();

      v64 = v405;
    }

    else
    {
      (*(*(v3 + 440) + 8))(v68, *(v3 + 432));
    }

    *(v3 + 120) = v64;
    type metadata accessor for AddressOntologyNode.PersonPlaceNode();
    static AddressOntologyNode.PersonPlaceNode.personPlaceIdNode.getter();
    lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent, type metadata accessor for LocationSearchIntent);
    IntentNodeTraversable.value<A>(forNode:)();

    v99 = *(v3 + 72);
    if (v99)
    {
      v57 = *(v3 + 64);
      v100 = *(v3 + 432);
      v101 = *(v3 + 160);
      v56 = PaginatedItemContainer.items.getter();
      v102 = v56;
      if (v56 >> 62)
      {
        v56 = _CocoaArrayWrapper.endIndex.getter();
        v19 = v56;
        if (v56)
        {
LABEL_27:
          v103 = 0;
          v413 = (v102 & 0xC000000000000001);
          v3 = v102 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v413)
            {
              v104 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v105 = (v103 + 1);
              if (__OFADD__(v103, 1))
              {
LABEL_38:
                __break(1u);
                goto LABEL_39;
              }
            }

            else
            {
              if (v103 >= *(&dword_10 + (v102 & 0xFFFFFFFFFFFFFF8)))
              {
                __break(1u);
                goto LABEL_158;
              }

              v104 = *(v102 + 8 * v103 + 32);
              v105 = (v103 + 1);
              if (__OFADD__(v103, 1))
              {
                goto LABEL_38;
              }
            }

            v106 = v104;
            if (INPerson.encodeBase64.getter() == v57 && v99 == v107)
            {
              break;
            }

            v108 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v108)
            {
              goto LABEL_70;
            }

            ++v103;
            if (v105 == v19)
            {
              goto LABEL_160;
            }
          }

LABEL_70:

          v163 = static os_log_type_t.default.getter();
          v48 = v106;
          if (os_log_type_enabled(v423, v163))
          {
            v164 = swift_slowAlloc();
            v165 = swift_slowAlloc();
            v429[0] = v165;
            *v164 = 136315138;
            v166 = v106;
            v167 = [v166 description];
            v168 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v170 = v169;

            v171 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v168, v170, v429);

            *(v164 + 4) = v171;
            _os_log_impl(&dword_0, v423, v163, "chosen item %s", v164, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v165);
          }

          v3 = v420;
          v172 = v420[66];
          v173 = v420[63];
          v174 = v420[64];
          v175 = v420[18];
          v420[16] = v48;
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
          static DisambiguationResult.chosenItem(_:)();

          (*(v174 + 8))(v172, v173);
          goto LABEL_73;
        }
      }

      else
      {
        v19 = *(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8));
        if (v19)
        {
          goto LABEL_27;
        }
      }

LABEL_160:
      v3 = v420;
      (*(v420[64] + 8))(v420[66], v420[63]);

      goto LABEL_186;
    }

LABEL_39:
    (*(*(v3 + 512) + 8))(*(v3 + 528), *(v3 + 504));

LABEL_186:
    v368 = *(v3 + 560);
    v369 = *(v3 + 552);
    v370 = *(v3 + 528);
    v371 = *(v3 + 520);
    v372 = *(v3 + 488);
    v373 = *(v3 + 496);
    v374 = *(v3 + 464);
    v375 = v3;
    v376 = *(v3 + 456);
    v379 = v375[56];
    v380 = v375[53];
    v381 = v375[50];
    v383 = v375[47];
    v386 = v375[46];
    v388 = v375[43];
    v392 = v375[42];
    v396 = v375[39];
    v399 = v375[36];
    v404 = v375[33];
    v412 = v375[30];
    v419 = v375[27];
    v422 = v375[24];
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    lazy protocol witness table accessor for type ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError and conformance ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError();
    swift_allocError();
    *v377 = 0;
    swift_willThrow();

    v187 = v375[1];
    goto LABEL_187;
  }

  if (v8 == enum case for Parse.directInvocation(_:))
  {
    v31 = *(v3 + 560);
    v32 = *(v3 + 184);
    v33 = *(v3 + 192);
    v34 = *(v3 + 176);
    (*(*(v3 + 544) + 96))(v31, *(v3 + 536));
    v36 = *(v32 + 32);
    v35 = (v32 + 32);
    v36(v33, v31, v34);
    v37 = Parse.DirectInvocation.userData.getter();
    if (v37)
    {
      v38 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v37);

      if (v38)
      {
        v39 = *(*(v3 + 168) + 16);
        v40 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_0, v39, v40, "choose by index", v35, 2u);
        }

        if (*(v38 + 16))
        {
          v41 = specialized __RawDictionaryStorage.find<A>(_:)(0x7865646E69, 0xE500000000000000);
          if (v42)
          {
            v43 = *(v3 + 432);
            v44 = *(v3 + 160);
            v45 = *(*(v38 + 56) + 8 * v41);

            v46 = PaginatedItemContainer.items.getter();
            if ((v46 & 0xC000000000000001) != 0)
            {
              goto LABEL_179;
            }

            if ((v45 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v45 < *(&dword_10 + (v46 & 0xFFFFFFFFFFFFFF8)))
            {
              v47 = *(v46 + 8 * v45 + 32);
              goto LABEL_15;
            }

            __break(1u);
            goto LABEL_182;
          }
        }
      }
    }

    v129 = *(v3 + 192);
    v130 = Parse.DirectInvocation.userData.getter();
    if (!v130 || (v131 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v130), , !v131))
    {
      v147 = *(v3 + 184);
      v148 = *(v3 + 192);
      v149 = *(v3 + 168);
      v150 = *(v3 + 176);
      static os_log_type_t.error.getter();
      v425 = *(v149 + 16);
      os_log(_:dso:log:_:_:)();
LABEL_54:
      (*(v147 + 8))(v148, v150);
      goto LABEL_186;
    }

    if (!*(v131 + 16) || (v132 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E65697069636552, 0xE900000000000074), (v133 & 1) == 0))
    {
      v221 = *(v3 + 184);
      v222 = *(v3 + 192);
      v224 = *(v3 + 168);
      v223 = *(v3 + 176);

      static os_log_type_t.error.getter();
      v428 = *(v224 + 16);
      os_log(_:dso:log:_:_:)();
      (*(v221 + 8))(v222, v223);
      goto LABEL_186;
    }

    v134 = *(v3 + 168);
    v135 = (*(v131 + 56) + 16 * v132);
    v38 = *v135;
    v35 = v135[1];

    v136 = static os_log_type_t.default.getter();
    v2 = *(v134 + 16);
    if (os_log_type_enabled(v2, v136))
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v429[0] = v138;
      *v137 = 136315138;
      *(v3 + 16) = v38;
      *(v3 + 24) = v35;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v139 = String.init<A>(describing:)();
      v141 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v140, v429);

      *(v137 + 4) = v141;
      _os_log_impl(&dword_0, v2, v136, "From Payload person: %s", v137, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v138);
    }

    v142 = *(v3 + 432);
    v143 = *(v3 + 160);
    v144 = PaginatedItemContainer.items.getter();
    v1 = v144;
    if (!(v144 >> 62))
    {
      v145 = *(&dword_10 + (v144 & 0xFFFFFFFFFFFFFF8));
      v424 = v2;
      if (!v145)
      {
LABEL_183:
        v147 = *(v3 + 184);
        v148 = *(v3 + 192);
        v150 = *(v3 + 176);

        goto LABEL_54;
      }

      goto LABEL_52;
    }

LABEL_182:
    v145 = _CocoaArrayWrapper.endIndex.getter();
    v424 = v2;
    if (!v145)
    {
      goto LABEL_183;
    }

LABEL_52:
    v146 = 0;
    v406 = v1 & 0xC000000000000001;
    v389 = v1 & 0xFFFFFFFFFFFFFF8;
    v397 = 136315138;
    v393 = v35;
    v400 = v145;
    while (1)
    {
      if (v406)
      {
        v151 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v146 >= *(v389 + 16))
        {
          goto LABEL_166;
        }

        v151 = *(v1 + 8 * v146 + 32);
      }

      v48 = v151;
      if (__OFADD__(v146, 1))
      {
        break;
      }

      v414 = v146 + 1;
      v152 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v2, v152))
      {
        v153 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v429[0] = v154;
        *v153 = 136315138;
        v155 = INPerson.encodeBase64.getter();
        v157 = v1;
        v158 = v38;
        v159 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v155, v156, v429);
        v3 = v420;

        *(v153 + 4) = v159;
        v38 = v158;
        v1 = v157;
        _os_log_impl(&dword_0, v424, v152, "person from list: %s", v153, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v154);
        v2 = v424;
        v35 = v393;
      }

      v160 = INPerson.encodeBase64.getter();
      if (v35)
      {
        if (v160 == v38 && v35 == v161)
        {

LABEL_153:

          v339 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v2, v339))
          {
            v340 = swift_slowAlloc();
            v341 = swift_slowAlloc();
            v429[0] = v341;
            *v340 = 136315138;
            v342 = v48;
            v343 = [v342 description];
            v344 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v346 = v345;

            v347 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v344, v346, v429);

            *(v340 + 4) = v347;
            _os_log_impl(&dword_0, v2, v339, "chosen item %s", v340, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v341);
          }

          v349 = *(v3 + 184);
          v348 = *(v3 + 192);
          v350 = *(v3 + 176);
          v351 = *(v3 + 144);
          *(v3 + 80) = v48;
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
          static DisambiguationResult.chosenItem(_:)();
          (*(v349 + 8))(v348, v350);
          goto LABEL_73;
        }

        v162 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v162)
        {
          goto LABEL_153;
        }
      }

      else
      {
      }

      ++v146;
      if (v414 == v400)
      {
        goto LABEL_183;
      }
    }

LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  if (v8 == enum case for Parse.pommesResponse(_:))
  {
    v79 = *(v3 + 560);
    v81 = *(v3 + 480);
    v80 = *(v3 + 488);
    v82 = *(v3 + 472);
    v83 = *(v3 + 168);
    v84 = *(v3 + 152);
    (*(*(v3 + 544) + 96))(v79, *(v3 + 536));
    v85 = *v79;
    v86 = static os_log_type_t.default.getter();
    v87 = *(v83 + 16);
    (*(v81 + 16))(v80, v84, v82);
    v424 = v87;
    if (os_log_type_enabled(v87, v86))
    {
      v88 = *(v3 + 552);
      v89 = *(v3 + 536);
      v91 = *(v3 + 480);
      v90 = *(v3 + 488);
      v92 = *(v3 + 472);
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v429[0] = v94;
      *v93 = 136315138;
      Input.parse.getter();
      v95 = String.init<A>(describing:)();
      v97 = v96;
      (*(v91 + 8))(v90, v92);
      v87 = v424;
      v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, v429);

      *(v93 + 4) = v98;
      _os_log_impl(&dword_0, v424, v86, "parseDisambiguationResponse pommesResponse input.parse: %s", v93, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v94);
    }

    else
    {
      (*(*(v3 + 480) + 8))(*(v3 + 488), *(v3 + 472));
    }

    v188 = *(v3 + 440);
    v189 = *(v3 + 448);
    v190 = *(v3 + 432);
    v191 = *(v3 + 160);
    v192 = type metadata accessor for LocationSearchIntent();
    v193 = *(v192 + 48);
    v194 = *(v192 + 52);
    swift_allocObject();
    v397 = v85;
    v195 = LocationSearchIntent.init(from:)(v397);
    v196 = static os_log_type_t.info.getter();
    v197 = *(v188 + 16);
    v197(v189, v191, v190);
    if (os_log_type_enabled(v87, v196))
    {
      v403 = *(v3 + 456);
      v408 = *(v3 + 448);
      v416 = v196;
      v198 = *(v3 + 432);
      v199 = *(v3 + 440);
      v200 = swift_slowAlloc();
      v429[0] = swift_slowAlloc();
      *v200 = 136315394;
      *(v3 + 112) = v195;
      lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent, type metadata accessor for LocationSearchIntent);
      v201 = NLIntentWrapper.description.getter();
      v203 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v201, v202, v429);

      *(v200 + 4) = v203;
      *(v200 + 12) = 2080;
      v197(v403, v408, v198);
      v204 = String.init<A>(describing:)();
      v206 = v205;
      (*(v199 + 8))(v408, v198);
      v87 = v424;
      v207 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v204, v206, v429);

      *(v200 + 14) = v207;
      _os_log_impl(&dword_0, v424, v416, "intent %s, paginatedItems %s", v200, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      (*(*(v3 + 440) + 8))(*(v3 + 448), *(v3 + 432));
    }

    v209 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v87, v209))
    {
      v210 = swift_slowAlloc();
      v211 = swift_slowAlloc();
      v429[0] = v211;
      *v210 = 136315138;
      v212 = PommesResponse.firstGeoExperience.getter();
      if (v212)
      {
        v214 = *(v3 + 416);
        v213 = *(v3 + 424);
        v216 = *(v3 + 400);
        v215 = *(v3 + 408);
        v217 = *(v3 + 392);
        v218 = v420[48];
        GeoExperience.geoClientComponent.getter();

        Apple_Parsec_Siri_V2alpha_GeoClientComponent.locationSearchNode.getter();
        (*(v214 + 8))(v213, v215);
        v87 = v424;
        v212 = Apple_Parsec_Siri_V2alpha_LocationSearchNode.personPlaceID.getter();
        v220 = v219;
        (*(v217 + 8))(v216, v218);
        v3 = v420;
      }

      else
      {
        v220 = 0;
      }

      *(v3 + 48) = v212;
      *(v3 + 56) = v220;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v250 = String.init<A>(describing:)();
      v252 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v250, v251, v429);

      *(v210 + 4) = v252;
      _os_log_impl(&dword_0, v87, v209, "PPID: %s", v210, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v211);
    }

    v253 = PommesResponse.firstGeoExperience.getter();
    if (!v253)
    {
      v272 = *(v3 + 168) & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
LABEL_170:
      v357 = (*(**(v3 + 168) + 168))();
      v358 = *(v357 + 16);
      if (v358)
      {
        v359 = (v357 + 40);
        do
        {
          v364 = *(v359 - 1);
          v363 = *v359;

          v365 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v424, v365))
          {
            v360 = swift_slowAlloc();
            v361 = swift_slowAlloc();
            v429[0] = v361;
            *v360 = 136315138;
            v362 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v364, v363, v429);

            *(v360 + 4) = v362;
            _os_log_impl(&dword_0, v424, v365, "handle %s", v360, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v361);
          }

          else
          {
          }

          v359 += 2;
          --v358;
        }

        while (v358);

        v3 = v420;
      }

      else
      {
      }

      goto LABEL_186;
    }

    v254 = v253;
    v255 = *(v3 + 424);
    v417 = *(v3 + 432);
    v256 = *(v3 + 408);
    v257 = *(v3 + 416);
    v258 = *(v3 + 392);
    v259 = *(v3 + 400);
    v260 = *(v3 + 384);
    v262 = *(v3 + 160);
    v261 = *(v3 + 168);
    GeoExperience.geoClientComponent.getter();

    Apple_Parsec_Siri_V2alpha_GeoClientComponent.locationSearchNode.getter();
    (*(v257 + 8))(v255, v256);
    v3 = Apple_Parsec_Siri_V2alpha_LocationSearchNode.personPlaceID.getter();
    v146 = v263;
    (*(v258 + 8))(v259, v260);
    v38 = PaginatedItemContainer.items.getter();
    v400 = (*(*v261 + 168))();
    if (!(v38 >> 62))
    {
      v264 = *(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8));
      if (!v264)
      {
        goto LABEL_168;
      }

      goto LABEL_100;
    }

LABEL_167:
    v264 = _CocoaArrayWrapper.endIndex.getter();
    if (!v264)
    {
LABEL_168:

LABEL_169:
      v3 = v420;
      goto LABEL_170;
    }

LABEL_100:
    v265 = 0;
    v266 = (v400 + 40);
    while (1)
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v267 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v265 >= *(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        v267 = *(v38 + 8 * v265 + 32);
      }

      v48 = v267;
      v268 = *(v400 + 16);
      if (v265 == v268)
      {

        goto LABEL_169;
      }

      if (v265 >= v268)
      {
        goto LABEL_162;
      }

      v269 = *v266;
      v410 = *(v266 - 1);

      if (INPerson.encodeBase64.getter() == v3 && v270 == v146)
      {

        goto LABEL_146;
      }

      v271 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v271)
      {
        goto LABEL_146;
      }

      if (v410 == v3 && v269 == v146)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_146;
      }

      ++v265;

      v266 += 2;
      if (v264 == v265)
      {
        goto LABEL_168;
      }
    }

    v410 = v3;
LABEL_146:

    v321 = static os_log_type_t.default.getter();
    v322 = v424;
    if (os_log_type_enabled(v424, v321))
    {
      v323 = swift_slowAlloc();
      v324 = swift_slowAlloc();
      v429[0] = v324;
      *v323 = 136315138;
      v325 = v48;
      v326 = [v325 description];
      v327 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v329 = v328;

      v330 = v327;
      v322 = v424;
      v331 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v330, v329, v429);

      *(v323 + 4) = v331;
      _os_log_impl(&dword_0, v424, v321, "chosen item %s", v323, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v324);
    }

    v332 = static os_log_type_t.info.getter();
    v3 = v420;
    if (os_log_type_enabled(v322, v332))
    {
      v333 = swift_slowAlloc();
      v429[0] = swift_slowAlloc();
      *v333 = 136315394;
      v334 = INPerson.encodeBase64.getter();
      v336 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v334, v335, v429);

      *(v333 + 4) = v336;
      *(v333 + 12) = 2080;
      v337 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v410, v269, v429);

      *(v333 + 14) = v337;
      _os_log_impl(&dword_0, v322, v332, "sessionHandle: %s\nAlternateHandle: %s", v333, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v338 = v420[18];
    v420[13] = v48;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    static DisambiguationResult.chosenItem(_:)();

    goto LABEL_73;
  }

  v109 = *(v3 + 560);
  v110 = *(v3 + 544);
  v111 = *(v3 + 536);
  if (v8 != enum case for Parse.uso(_:))
  {
    v208 = *(v3 + 168);
    static os_log_type_t.default.getter();
    v427 = *(v208 + 16);
    os_log(_:dso:log:_:_:)();
    (*(v110 + 8))(v109, v111);
    goto LABEL_186;
  }

  v113 = *(v3 + 368);
  v112 = *(v3 + 376);
  v114 = *(v3 + 352);
  v115 = *(v3 + 360);
  v116 = *(v3 + 168);
  (*(v110 + 96))(*(v3 + 560), *(v3 + 536));
  (*(v115 + 32))(v112, v109, v114);
  (*(*v116 + 152))(1);
  v117 = static os_log_type_t.default.getter();
  v118 = v116[2];
  (*(v115 + 16))(v113, v112, v114);
  v119 = os_log_type_enabled(v118, v117);
  v121 = *(v3 + 360);
  v120 = *(v3 + 368);
  v122 = *(v3 + 352);
  if (v119)
  {
    v123 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v429[0] = v124;
    *v123 = 136315138;
    v125 = USOParse.debugDescription.getter();
    v127 = v126;
    v397 = *(v121 + 8);
    (v397)(v120, v122);
    v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v127, v429);

    *(v123 + 4) = v128;
    _os_log_impl(&dword_0, v118, v117, "received parse: %s", v123, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v124);
  }

  else
  {
    v397 = *(v121 + 8);
    (v397)(*(v3 + 368), *(v3 + 352));
  }

  v424 = v118;
  v225 = *(v3 + 376);
  v226 = *(v3 + 304);
  v227 = *(v3 + 312);
  v228 = *(v3 + 296);
  USOParse.userParse.getter();
  v229 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  (*(v226 + 8))(v227, v228);
  if (!*(v229 + 16))
  {
    v273 = *(v3 + 360) + 8;
    (v397)(*(v3 + 376), *(v3 + 352));

    goto LABEL_186;
  }

  v231 = *(v3 + 328);
  v230 = *(v3 + 336);
  v232 = *(v3 + 320);
  v233 = v3;
  v236 = v3 + 280;
  v235 = *(v3 + 280);
  v234 = *(v236 + 8);
  v237 = v233[33];
  v38 = v233[34];
  v238 = v233[31];
  v239 = v233[32];
  (*(v231 + 16))(v230, v229 + ((*(v231 + 80) + 32) & ~*(v231 + 80)), v232);

  Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
  (*(v231 + 8))(v230, v232);
  Siri_Nlu_External_UserStatedTask.task.getter();
  (*(v235 + 8))(v234, v38);
  v240 = Siri_Nlu_External_UsoGraph.identifiers.getter();
  (*(v239 + 8))(v237, v238);
  v409 = *(v240 + 16);
  if (!v409)
  {
LABEL_94:

    v249 = 1;
    v3 = v420;
    goto LABEL_121;
  }

  v146 = 0;
  v241 = v420[29];
  v242 = (v420[26] + 8);
  v3 = v241 + 8;
  while (1)
  {
    if (v146 >= *(v240 + 16))
    {
LABEL_163:
      __break(1u);
      goto LABEL_164;
    }

    v243 = v420[27];
    v38 = v420[25];
    (*(v241 + 16))(v420[30], v240 + ((*(v241 + 80) + 32) & ~*(v241 + 80)) + *(v241 + 72) * v146, v420[28]);
    Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
    v244 = Google_Protobuf_StringValue.value.getter();
    v246 = v245;
    (*v242)(v243, v38);
    if (v244 == 0x64695F6D657469 && v246 == 0xE700000000000000)
    {
      break;
    }

    v248 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v248)
    {
      goto LABEL_120;
    }

    ++v146;
    (*v3)(v420[30], v420[28]);
    if (v409 == v146)
    {
      goto LABEL_94;
    }
  }

LABEL_120:
  v3 = v420;
  v274 = v420[43];
  v276 = v420[29];
  v275 = v420[30];
  v277 = v420[28];

  (*(v276 + 32))(v274, v275, v277);
  v249 = 0;
LABEL_121:
  v38 = v424;
  v278 = *(v3 + 344);
  v280 = *(v3 + 224);
  v279 = *(v3 + 232);
  (*(v279 + 56))(v278, v249, 1, v280);
  if ((*(v279 + 48))(v278, 1, v280) == 1)
  {
    v281 = *(v3 + 344);
    v282 = *(v3 + 360) + 8;
    (v397)(*(v3 + 376), *(v3 + 352));
    outlined destroy of Mirror.DisplayStyle?(v281, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMd, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMR);
    goto LABEL_186;
  }

  v283 = *(v3 + 344);
  v285 = *(v3 + 224);
  v284 = *(v3 + 232);
  v286 = Siri_Nlu_External_UsoEntityIdentifier.value.getter();
  v288 = v287;
  (*(v284 + 8))(v283, v285);
  v289 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v424, v289))
  {
    v290 = swift_slowAlloc();
    v291 = swift_slowAlloc();
    v429[0] = v291;
    *v290 = 136315138;
    *(v290 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v286, v288, v429);
    _os_log_impl(&dword_0, v424, v289, "contactId on disambiguation is %s", v290, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v291);
  }

  v292 = *(v3 + 432);
  v293 = *(v3 + 160);
  v294 = PaginatedItemContainer.items.getter();
  v295 = v294;
  if (!(v294 >> 62))
  {
    v296 = *(&dword_10 + (v294 & 0xFFFFFFFFFFFFFF8));
    if (v296)
    {
      goto LABEL_127;
    }

LABEL_185:

    v367 = *(v3 + 360) + 8;
    (v397)(*(v3 + 376), *(v3 + 352));
    goto LABEL_186;
  }

  v366 = v294;
  v296 = _CocoaArrayWrapper.endIndex.getter();
  v295 = v366;
  if (!v296)
  {
    goto LABEL_185;
  }

LABEL_127:
  v146 = 0;
  v418 = v295 & 0xC000000000000001;
  v385 = v295 & 0xFFFFFFFFFFFFFF8;
  v400 = v296;
  v411 = v295;
  v391 = v286;
  v395 = v288;
  while (2)
  {
    if (v418)
    {
      v298 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_134:
      v48 = v298;
      v299 = v146 + 1;
      if (__OFADD__(v146, 1))
      {
        goto LABEL_165;
      }

      v300 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v300))
      {
        v301 = swift_slowAlloc();
        v429[0] = swift_slowAlloc();
        *v301 = 136315394;
        v302 = v48;
        v303 = [v302 description];
        v304 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v306 = v305;

        v307 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v304, v306, v429);

        *(v301 + 4) = v307;
        *(v301 + 12) = 2080;
        v308 = [v302 contactIdentifier];
        if (v308)
        {
          v309 = v308;
          v310 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v312 = v311;
        }

        else
        {
          v310 = 0;
          v312 = 0;
        }

        v420[4] = v310;
        v420[5] = v312;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v313 = String.init<A>(describing:)();
        v315 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v313, v314, v429);

        *(v301 + 14) = v315;
        v38 = v424;
        _os_log_impl(&dword_0, v424, v300, "%s has contactId %s", v301, 0x16u);
        swift_arrayDestroy();

        v286 = v391;
        v288 = v395;
      }

      v316 = [v48 contactIdentifier];
      v3 = v420;
      if (v316)
      {
        v317 = v316;
        v318 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v320 = v319;

        if (v286 == v318 && v288 == v320)
        {

LABEL_156:
          v352 = v420[47];
          v353 = v420[44];
          v354 = v420[45];
          v355 = v420[18];

          v420[12] = v48;
          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
          static DisambiguationResult.chosenItem(_:)();
          (v397)(v352, v353);
          goto LABEL_73;
        }

        v297 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v297)
        {
          goto LABEL_156;
        }
      }

      ++v146;
      v295 = v411;
      if (v299 == v400)
      {
        goto LABEL_185;
      }

      continue;
    }

    break;
  }

  if (v146 < *(v385 + 16))
  {
    v298 = *(v295 + 8 * v146 + 32);
    goto LABEL_134;
  }

  __break(1u);
LABEL_179:
  v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_15:
  v48 = v47;
  v50 = *(v3 + 184);
  v49 = *(v3 + 192);
  v51 = *(v3 + 176);
  v52 = *(v3 + 144);

  *(v3 + 88) = v48;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  static DisambiguationResult.chosenItem(_:)();
  (*(v50 + 8))(v49, v51);
LABEL_73:

  v176 = *(v3 + 560);
  v177 = *(v3 + 552);
  v178 = v3;
  v179 = *(v3 + 528);
  v180 = v178[65];
  v182 = v178[61];
  v181 = v178[62];
  v184 = v178[57];
  v183 = v178[58];
  v185 = v178[56];
  v186 = v178[53];
  v382 = v178[50];
  v384 = v178[47];
  v387 = v178[46];
  v390 = v178[43];
  v394 = v178[42];
  v398 = v178[39];
  v402 = v178[36];
  v407 = v178[33];
  v415 = v178[30];
  v421 = v178[27];
  v426 = v178[24];

  v187 = v178[1];
LABEL_187:

  return v187();
}

unint64_t specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5)) | (v12 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        outlined init with copy of Any(*(a1 + 56) + 32 * v13, v26);
        *&v25 = v15;
        *(&v25 + 1) = v16;
        v23[2] = v25;
        v24[0] = v26[0];
        v24[1] = v26[1];
        v17 = v25;
        outlined init with take of Any(v24, v23);

        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v17, *(&v17 + 1));
        if (v18)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v17;
          v11 = result;

          *(v2[7] + 8 * v11) = v22;
          v8 = v12;
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
          *(v2[6] + 16 * result) = v17;
          *(v2[7] + 8 * result) = v22;
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_24;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }

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

{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SSgGMd, &_ss18_DictionaryStorageCyS2SSgGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v16 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v16 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v16);
    ++v9;
    if (v6)
    {
      while (1)
      {
        v17 = __clz(__rbit64(v6)) | (v16 << 6);
        v18 = (*(v1 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        outlined init with copy of Any(*(v1 + 56) + 32 * v17, v30);
        *&v29 = v19;
        *(&v29 + 1) = v20;
        v27[2] = v29;
        v28[0] = v30[0];
        v28[1] = v30[1];
        v21 = v29;
        outlined init with take of Any(v28, v27);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        if (!swift_dynamicCast())
        {
          break;
        }

        v6 &= v6 - 1;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v21, *(&v21 + 1));
        if (v22)
        {
          v10 = v1;
          v11 = 16 * result;
          v12 = v2[6] + 16 * result;
          v13 = *(v12 + 8);
          *v12 = v21;

          v14 = v2[7] + v11;
          v1 = v10;
          v15 = *(v14 + 8);
          *v14 = v26;

          v9 = v16;
          if (!v6)
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
          *(v2[6] + 16 * result) = v21;
          *(v2[7] + 16 * result) = v26;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_24;
          }

          v2[2] = v25;
          v9 = v16;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v16 = v9;
      }

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

uint64_t ShareETAContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:)(uint64_t a1, uint64_t a2)
{
  v3[76] = v2;
  v3[75] = a2;
  v3[74] = a1;
  v4 = type metadata accessor for ContactResolution(0);
  v3[77] = v4;
  v5 = *(v4 - 8);
  v3[78] = v5;
  v3[79] = *(v5 + 64);
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v3[82] = swift_task_alloc();
  v7 = type metadata accessor for ResponseType();
  v3[83] = v7;
  v8 = *(v7 - 8);
  v3[84] = v8;
  v9 = *(v8 + 64) + 15;
  v3[85] = swift_task_alloc();
  v10 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v3[86] = swift_task_alloc();
  v11 = type metadata accessor for OutputGenerationManifest();
  v3[87] = v11;
  v12 = *(v11 - 8);
  v3[88] = v12;
  v13 = *(v12 + 64) + 15;
  v3[89] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR) - 8) + 64) + 15;
  v3[90] = swift_task_alloc();
  v15 = type metadata accessor for ActivityType();
  v3[91] = v15;
  v16 = *(v15 - 8);
  v3[92] = v16;
  v17 = *(v16 + 64) + 15;
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  v18 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v3[95] = v18;
  v19 = *(v18 - 8);
  v3[96] = v19;
  v20 = *(v19 + 64) + 15;
  v3[97] = swift_task_alloc();
  v3[98] = swift_task_alloc();
  v21 = type metadata accessor for PommesContext.Source();
  v3[99] = v21;
  v22 = *(v21 - 8);
  v3[100] = v22;
  v23 = *(v22 + 64) + 15;
  v3[101] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v3[102] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v3[103] = swift_task_alloc();
  v26 = type metadata accessor for NLContextUpdate();
  v3[104] = v26;
  v27 = *(v26 - 8);
  v3[105] = v27;
  v28 = *(v27 + 64) + 15;
  v3[106] = swift_task_alloc();
  v3[107] = swift_task_alloc();
  v29 = type metadata accessor for ImageSize();
  v3[108] = v29;
  v30 = *(v29 - 8);
  v3[109] = v30;
  v31 = *(v30 + 64) + 15;
  v3[110] = swift_task_alloc();
  v32 = type metadata accessor for Locale();
  v3[111] = v32;
  v33 = *(v32 - 8);
  v3[112] = v33;
  v34 = *(v33 + 64) + 15;
  v3[113] = swift_task_alloc();

  return _swift_task_switch(ShareETAContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:), 0, 0);
}

char *ShareETAContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:)()
{
  v100 = v0;
  v1 = *(v0 + 600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMd, &_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMR);
  v2 = PaginatedItemContainer.items.getter();
  *(v0 + 912) = v2;
  v3 = v2 >> 62;
  v4 = v2;
  if (v2 >> 62)
  {
    goto LABEL_38;
  }

  v5 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  while (1)
  {
    v6 = &_swiftEmptyArrayStorage;
    v98 = v2;
    if (!v5)
    {
      break;
    }

    v99[0] = &_swiftEmptyArrayStorage;

    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = v99[0];
    v92 = v0;
    if (v3)
    {
      log = (v4 & 0xFFFFFFFFFFFFFF8);
      v9 = _CocoaArrayWrapper.endIndex.getter();
      v8 = v4;
    }

    else
    {
      v8 = v4;
      log = (v4 & 0xFFFFFFFFFFFFFF8);
      v9 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    }

    v10 = 0;
    v3 = v8 & 0xC000000000000001;
    v11 = v9 & ~(v9 >> 63);
    while (v11 != v10)
    {
      if (v3)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= log[2].isa)
        {
          goto LABEL_37;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = INPerson.encodeBase64.getter();
      v16 = v15;

      v99[0] = v6;
      v0 = v6[2];
      v17 = v6[3];
      v4 = v0 + 1;
      if (v0 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v0 + 1, 1);
        v6 = v99[0];
      }

      v10 = (v10 + 1);
      v6[2] = v4;
      v18 = &v6[2 * v0];
      *(v18 + 4) = v14;
      *(v18 + 5) = v16;
      v8 = v98;
      if (v5 == v10)
      {
        v4 = v98;

        v0 = v92;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    v2 = v4;
  }

LABEL_18:
  v19 = *(v0 + 608);
  (*(*v19 + 176))(v6);
  specialized static RecipientDisambiguationHelper.allHaveSameIdentifier(recipients:)(v4);
  v21 = v20 & 1;
  *(v0 + 1016) = v20 & 1;
  v22 = v19[2];
  *(v0 + 920) = v22;
  v23 = static os_log_type_t.default.getter();
  loga = v22;
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v99[0] = v25;
    *v24 = 136315394;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v26 = Array.description.getter();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v99);

    *(v24 + 4) = v28;
    *(v24 + 12) = 1024;
    *(v24 + 14) = v21;
    _os_log_impl(&dword_0, loga, v23, "persons %s handleDisambiguation %{BOOL}d", v24, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
  }

  v29 = *(v0 + 904);
  v30 = *(v0 + 896);
  v93 = *(v0 + 888);
  v31 = v4;
  v32 = *(v0 + 608);
  v33 = v32[7];
  v34 = v32[8];
  __swift_project_boxed_opaque_existential_1(v32 + 4, v33);
  v35 = *(v34 + 32);

  v35(v33, v34);
  v36 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  dispatch thunk of DeviceState.siriLocale.getter();
  *(v0 + 928) = specialized static DisambiguationListUtils.makeDisambiguationItems(persons:locale:)(v31, v29);
  v37 = *(v30 + 8);
  *(v0 + 936) = v37;
  *(v0 + 944) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v29, v93);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v38 = v32[7];
  v39 = v32[8];
  __swift_project_boxed_opaque_existential_1(v32 + 4, v38);
  (*(v39 + 32))(v38, v39);
  v40 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v41 = dispatch thunk of DeviceState.isCarPlay.getter();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  if (v41)
  {
    v42 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetForCarPlay(disambiguationItems:deviceIsLocked:)();
LABEL_27:
    *(v0 + 952) = v42;
    v55 = v42;
    v56 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(loga, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v99[0] = v58;
      *v57 = 136315138;
      v59 = v55;
      v60 = [v59 description];
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v62;

      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, v99);

      *(v57 + 4) = v64;
      _os_log_impl(&dword_0, loga, v56, "disambiguation snippet is: %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v58);
    }

    else
    {
    }

    v65 = *(v0 + 904);
    v66 = *(v0 + 608);
    v67 = v32[7];
    v68 = v32[8];
    __swift_project_boxed_opaque_existential_1(v32 + 4, v67);
    (*(v68 + 32))(v67, v68);
    v69 = *(v0 + 208);
    __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
    dispatch thunk of DeviceState.siriLocale.getter();
    v70 = *(v66 + 96);
    v71 = swift_task_alloc();
    *(v0 + 960) = v71;
    *v71 = v0;
    v71[1] = ShareETAContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:);
    v72 = *(v0 + 904);
    v73 = *(v0 + 856);

    return TypedDisambiguationItems.makeNLContextUpdate(locale:weightedPromptResponseTargets:)(v73, v72, v70, v98, 0);
  }

  v43 = v32[7];
  v44 = v32[8];
  __swift_project_boxed_opaque_existential_1(v32 + 4, v43);
  (*(v44 + 32))(v43, v44);
  v45 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  v46 = dispatch thunk of DeviceState.isPad.getter();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  if (v46)
  {
    v47 = *(v0 + 880);
    v48 = *(v0 + 872);
    v49 = *(v0 + 864);
    (*(v48 + 104))(v47, enum case for ImageSize.default(_:), v49);
    v50 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetPad(disambiguationItems:deviceIsLocked:imageSize:)();
LABEL_26:
    v42 = v50;
    (*(v48 + 8))(v47, v49);
    goto LABEL_27;
  }

  v51 = v32[7];
  v52 = v32[8];
  __swift_project_boxed_opaque_existential_1(v32 + 4, v51);
  (*(v52 + 32))(v51, v52);
  v53 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
  v54 = dispatch thunk of DeviceState.isPhone.getter();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
  if (v54)
  {
    v47 = *(v0 + 880);
    v48 = *(v0 + 872);
    v49 = *(v0 + 864);
    (*(v48 + 104))(v47, enum case for ImageSize.default(_:), v49);
    v50 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetPhone(disambiguationItems:deviceIsLocked:imageSize:)();
    goto LABEL_26;
  }

  swift_bridgeObjectRelease_n();

  type metadata accessor for RuntimeError();
  v74 = swift_allocObject();
  *(v74 + 16) = 0xD000000000000012;
  *(v74 + 24) = 0x80000000000C0F80;
  lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type RuntimeError and conformance RuntimeError, type metadata accessor for RuntimeError);
  swift_allocError();
  *v75 = v74;
  swift_willThrow();
  v76 = *(v0 + 904);
  v77 = *(v0 + 880);
  v78 = *(v0 + 856);
  v79 = *(v0 + 848);
  v80 = *(v0 + 824);
  v81 = *(v0 + 808);
  v82 = *(v0 + 784);
  v83 = *(v0 + 776);
  v84 = *(v0 + 752);
  v85 = *(v0 + 744);
  v87 = *(v0 + 720);
  v88 = *(v0 + 712);
  v89 = *(v0 + 688);
  v90 = *(v0 + 680);
  v91 = *(v0 + 656);
  v94 = *(v0 + 648);
  logb = *(v0 + 640);

  v86 = *(v0 + 8);

  return v86();
}

uint64_t ShareETAContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:)()
{
  v1 = *v0;
  v2 = *(*v0 + 960);
  v3 = *(*v0 + 944);
  v4 = *(*v0 + 936);
  v5 = *(*v0 + 912);
  v6 = *(*v0 + 904);
  v7 = *(*v0 + 888);
  v9 = *v0;

  v4(v6, v7);
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 176));

  return _swift_task_switch(ShareETAContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:), 0, 0);
}

{
  v129 = v0;
  v1 = *(v0 + 608);
  if (v1[80] == 1)
  {
    v2 = *(v0 + 920);
    v3 = *(v0 + 856);
    v4 = *(v0 + 824);
    (*(*(v0 + 800) + 104))(*(v0 + 808), enum case for PommesContext.Source.pluginDefined(_:), *(v0 + 792));
    PommesContext.init(source:domain:listenAfterSpeaking:)();
    v5 = type metadata accessor for PommesContext();
    (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
    NLContextUpdate.pommesContext.setter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v6))
    {
      v7 = *(v0 + 920);
      v8 = *(v0 + 856);
      v9 = *(v0 + 824);
      v10 = *(v0 + 816);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v128 = v12;
      *v11 = 136315138;
      swift_beginAccess();
      NLContextUpdate.pommesContext.getter();
      swift_endAccess();
      v13 = String.init<A>(describing:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v128);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_0, v7, v6, "updated nl context with pommes context. pommesContext = %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
    }
  }

  else if ((*(*v1 + 144))())
  {
    v126 = *(v0 + 856);
    v16 = *(v0 + 784);
    v17 = *(v0 + 776);
    v18 = *(v0 + 768);
    v19 = *(v0 + 760);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
    v20 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
    v21 = *(v20 + 72);
    v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    *(swift_allocObject() + 16) = xmmword_B89E0;
    v23 = type metadata accessor for UsoTaskBuilder_noVerb_common_Person();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    v26 = UsoTaskBuilder_noVerb_common_Person.init()();
    v27 = type metadata accessor for UsoEntityBuilder_common_Person();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    UsoEntityBuilder_common_Person.init()();
    dispatch thunk of Uso_VerbTemplateBuilder_NoVerb.setEntity(value:)();
    static Siri_Nlu_External_SystemPrompted.from(_:)(v26, v16);
    Siri_Nlu_External_SystemDialogAct.init()();
    (*(v18 + 16))(v17, v16, v19);
    Siri_Nlu_External_SystemDialogAct.prompted.setter();

    (*(v18 + 8))(v16, v19);
    NLContextUpdate.nluSystemDialogActs.setter();
  }

  v30 = *(v0 + 920);
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v0 + 920);
    v33 = *(v0 + 856);
    v34 = *(v0 + 848);
    v35 = *(v0 + 840);
    v36 = *(v0 + 832);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v128 = v38;
    *v37 = 136315138;
    swift_beginAccess();
    (*(v35 + 16))(v34, v33, v36);
    v39 = String.init<A>(describing:)();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v128);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_0, v32, v31, "makePromptForDisambiguation nlContextUpdate is: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
  }

  v42 = *(v0 + 920);
  v43 = *(v0 + 1016);
  v44 = static os_log_type_t.default.getter();
  v45 = os_log_type_enabled(v42, v44);
  if (v43 == 1)
  {
    v46 = *(v0 + 912);
    if (!v45)
    {
      v52 = v46 & 0xC000000000000001;
      goto LABEL_20;
    }

    v42 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v43 = v47;
    v128 = v47;
    *v42 = 136315138;
    v51 = *(v0 + 912);
    v52 = v46 & 0xC000000000000001;
    if ((v46 & 0xC000000000000001) != 0)
    {
      goto LABEL_29;
    }

    if (*(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8)))
    {
      for (i = *(v51 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
      {
        v54 = i;
        v55 = *(v0 + 920);
        v56 = [i description];
        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v58;

        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &v128);

        *(v42 + 4) = v60;
        _os_log_impl(&dword_0, v55, v44, "handleDisambiguation %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v43);

LABEL_20:
        v92 = *(v0 + 912);
        if (v52)
        {
          break;
        }

        if (*(&dword_10 + (v92 & 0xFFFFFFFFFFFFFF8)))
        {
          v93 = *(v92 + 32);
          goto LABEL_23;
        }

        __break(1u);
LABEL_29:
        ;
      }

      specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_23:
      v94 = *(v0 + 904);
      v95 = *(v0 + 752);
      v96 = *(v0 + 736);
      v97 = *(v0 + 728);
      v98 = *(v0 + 608);
      type metadata accessor for DialogPerson();
      v99 = v98[7];
      v100 = v98[8];
      __swift_project_boxed_opaque_existential_1(v98 + 4, v99);
      (*(v100 + 32))(v99, v100);
      v101 = *(v0 + 448);
      __swift_project_boxed_opaque_existential_1((v0 + 416), *(v0 + 440));
      dispatch thunk of DeviceState.siriLocale.getter();
      *(v0 + 968) = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 416));
      static SiriKitEventSender.current.getter();
      v125 = *(v0 + 488);
      __swift_project_boxed_opaque_existential_1((v0 + 456), *(v0 + 480));
      (*(v96 + 104))(v95, enum case for ActivityType.disambiguation(_:), v97);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INShareETAIntent, INShareETAIntent_ptr);
      v47 = [swift_getObjCClassFromMetadata() typeName];
      if (v47)
      {
        v102 = v47;
        v103 = *(v0 + 928);
        v104 = *(v0 + 840);
        v121 = *(v0 + 856);
        v122 = *(v0 + 832);
        v105 = *(v0 + 720);
        v106 = *(v0 + 712);
        v116 = *(v0 + 752);
        v117 = *(v0 + 688);
        v107 = *(v0 + 672);
        v118 = *(v0 + 680);
        v119 = *(v0 + 664);
        v120 = *(v0 + 656);

        type metadata accessor for SiriKitEvent();
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v108 = enum case for SiriKitReliabilityCodes.normal(_:);
        v109 = type metadata accessor for SiriKitReliabilityCodes();
        v110 = *(v109 - 8);
        (*(v110 + 104))(v105, v108, v109);
        (*(v110 + 56))(v105, 0, 1, v109);
        SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
        dispatch thunk of SiriKitEventSending.send(_:)();

        __swift_destroy_boxed_opaque_existential_0Tm((v0 + 456));
        static DialogPhase.clarification.getter();
        OutputGenerationManifest.init(dialogPhase:_:)();
        OutputGenerationManifest.listenAfterSpeaking.setter();
        OutputGenerationManifest.responseViewId.setter();
        (*(v107 + 104))(v118, enum case for ResponseType.disambiguation(_:), v119);
        OutputGenerationManifest.responseType.setter();
        swift_beginAccess();
        (*(v104 + 16))(v120, v121, v122);
        (*(v104 + 56))(v120, 0, 1, v122);
        OutputGenerationManifest.nlContextUpdate.setter();
        type metadata accessor for CATGlobals();
        CATGlobals.__allocating_init()();
        v111 = type metadata accessor for ContactResolutionSnippetGenerator();
        v112 = *(v111 + 48);
        v113 = *(v111 + 52);
        swift_allocObject();
        *(v0 + 976) = ContactResolutionSnippetGenerator.init(appBundleId:globals:)();
        v114 = async function pointer to ContactResolutionSnippetGenerator.generateSimpleDisambiguationMixedLabels(contacts:directInvocationID:outputGenerationManifest:)[1];
        v115 = swift_task_alloc();
        *(v0 + 984) = v115;
        *v115 = v0;
        v115[1] = ShareETAContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:);
        v51 = *(v0 + 912);
        v50 = *(v0 + 712);
        v47 = *(v0 + 592);
        v49 = 0x80000000000BFC00;
        v48 = 0xD00000000000002CLL;

        return ContactResolutionSnippetGenerator.generateSimpleDisambiguationMixedLabels(contacts:directInvocationID:outputGenerationManifest:)(v47, v51, v48, v49, v50);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return ContactResolutionSnippetGenerator.generateSimpleDisambiguationMixedLabels(contacts:directInvocationID:outputGenerationManifest:)(v47, v51, v48, v49, v50);
  }

  if (v45)
  {
    v61 = *(v0 + 920);
    v62 = *(v0 + 608);
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v128 = v64;
    *v63 = 136315138;
    v65 = *(v62 + 72);
    v66 = [v65 description];
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, &v128);

    *(v63 + 4) = v70;
    _os_log_impl(&dword_0, v61, v44, "contactDisambiguation %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v64);
  }

  v71 = *(v0 + 904);
  v72 = *(v0 + 648);
  v123 = *(v0 + 616);
  v127 = *(v0 + 856);
  v73 = *(v0 + 608);
  type metadata accessor for DialogPerson();
  v74 = v73[8];
  v75 = v73[9];
  v76 = v73[7];
  __swift_project_boxed_opaque_existential_1(v73 + 4, v76);
  v77 = *(v74 + 32);
  v78 = v75;
  v77(v76, v74);
  v79 = *(v0 + 248);
  __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
  dispatch thunk of DeviceState.siriLocale.getter();
  v80 = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
  *(v0 + 1000) = v80;
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 216));
  v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine0B6PersonC9recipient_0A7KitFlow21BehaviorAfterSpeakingO09behaviouriJ0tMd, &_s16SiriDialogEngine0B6PersonC9recipient_0A7KitFlow21BehaviorAfterSpeakingO09behaviouriJ0tMR) + 48);
  *v72 = v80;
  v82 = enum case for BehaviorAfterSpeaking.listen(_:);
  v83 = type metadata accessor for BehaviorAfterSpeaking();
  (*(*(v83 - 8) + 104))(v72 + v81, v82, v83);
  *(v0 + 360) = v123;
  *(v0 + 368) = &protocol witness table for ContactResolution;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 336));
  outlined init with copy of ContactResolution(v72, boxed_opaque_existential_0);
  swift_beginAccess();
  v85 = *(*v73 + 248);

  v124 = (v85 + *v85);
  v86 = v85[1];
  v87 = swift_task_alloc();
  *(v0 + 1008) = v87;
  *v87 = v0;
  v87[1] = ShareETAContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:);
  v88 = *(v0 + 856);
  v89 = *(v0 + 608);
  v90 = *(v0 + 600);

  return v124(v0 + 296, v0 + 336, v90, v88);
}

{
  v2 = *v1;
  v3 = *(*v1 + 984);
  v4 = *v1;
  *(*v1 + 992) = v0;

  v5 = *(v2 + 912);

  if (v0)
  {
    v6 = ShareETAContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:);
  }

  else
  {
    v6 = ShareETAContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:);
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  v1 = v0[122];
  v2 = v0[121];
  v3 = v0[119];
  v4 = v0[107];
  v5 = v0[105];
  v6 = v0[104];
  v7 = v0[89];
  v8 = v0[88];
  v9 = v0[87];

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  v10 = v0[113];
  v11 = v0[110];
  v12 = v0[107];
  v13 = v0[106];
  v14 = v0[103];
  v15 = v0[101];
  v16 = v0[98];
  v17 = v0[97];
  v18 = v0[94];
  v19 = v0[93];
  v22 = v0[90];
  v23 = v0[89];
  v24 = v0[86];
  v25 = v0[85];
  v26 = v0[82];
  v27 = v0[81];
  v28 = v0[80];

  v20 = v0[1];

  return v20();
}

{
  v1 = *v0;
  v2 = *(*v0 + 1008);
  v4 = *v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 336));

  return _swift_task_switch(ShareETAContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:), 0, 0);
}

{
  v1 = v0[124];
  v2 = v0[122];
  v3 = v0[121];
  v4 = v0[119];
  v5 = v0[115];
  v30 = v0[107];
  v6 = v0[105];
  v7 = v0[104];
  v8 = v0[89];
  v9 = v0[88];
  v10 = v0[87];

  (*(v9 + 8))(v8, v10);
  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  lazy protocol witness table accessor for type ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError and conformance ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError();
  swift_allocError();
  *v11 = 0;
  swift_willThrow();

  (*(v6 + 8))(v30, v7);
  v12 = v0[113];
  v13 = v0[110];
  v14 = v0[107];
  v15 = v0[106];
  v16 = v0[103];
  v17 = v0[101];
  v18 = v0[98];
  v19 = v0[97];
  v20 = v0[94];
  v21 = v0[93];
  v24 = v0[90];
  v25 = v0[89];
  v26 = v0[86];
  v27 = v0[85];
  v28 = v0[82];
  v29 = v0[81];
  v31 = v0[80];

  v22 = v0[1];

  return v22();
}

id ShareETAContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:)()
{
  if (*(v0 + 320))
  {
    v1 = *(v0 + 744);
    v2 = *(v0 + 736);
    v3 = *(v0 + 728);
    outlined init with take of CATType((v0 + 296), v0 + 256);
    static SiriKitEventSender.current.getter();
    v66 = *(v0 + 408);
    __swift_project_boxed_opaque_existential_1((v0 + 376), *(v0 + 400));
    (*(v2 + 104))(v1, enum case for ActivityType.disambiguation(_:), v3);
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INShareETAIntent, INShareETAIntent_ptr);
    result = [swift_getObjCClassFromMetadata() typeName];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    v6 = *(v0 + 928);
    v7 = *(v0 + 912);
    v61 = *(v0 + 856);
    v8 = *(v0 + 840);
    v55 = *(v0 + 1000);
    v58 = *(v0 + 832);
    v49 = *(v0 + 744);
    v50 = *(v0 + 952);
    v9 = *(v0 + 720);
    v10 = *(v0 + 648);
    v11 = *(v0 + 640);
    v12 = *(v0 + 632);
    v13 = *(v0 + 624);
    v52 = *(v0 + 592);

    type metadata accessor for SiriKitEvent();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = enum case for SiriKitReliabilityCodes.normal(_:);
    v15 = type metadata accessor for SiriKitReliabilityCodes();
    v16 = *(v15 - 8);
    (*(v16 + 104))(v9, v14, v15);
    (*(v16 + 56))(v9, 0, 1, v15);
    outlined init with copy of ContactResolution(v10, v11);
    v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v18 = swift_allocObject();
    outlined init with take of ContactResolution(v11, v18 + v17, type metadata accessor for ContactResolution);
    SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
    dispatch thunk of SiriKitEventSending.send(_:)();

    outlined destroy of ContactResolution(v10);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 376));
    outlined init with take of CATType((v0 + 256), v52);
    (*(v8 + 8))(v61, v58);
    v19 = *(v0 + 904);
    v20 = *(v0 + 880);
    v21 = *(v0 + 856);
    v22 = *(v0 + 848);
    v23 = *(v0 + 824);
    v24 = *(v0 + 808);
    v25 = *(v0 + 784);
    v26 = *(v0 + 776);
    v27 = *(v0 + 752);
    v28 = *(v0 + 744);
    v53 = *(v0 + 720);
    v56 = *(v0 + 712);
    v59 = *(v0 + 688);
    v62 = *(v0 + 680);
    v64 = *(v0 + 656);
    v67 = *(v0 + 648);
    v70 = *(v0 + 640);

    v29 = *(v0 + 8);
  }

  else
  {
    v30 = *(v0 + 1000);
    v31 = *(v0 + 952);
    v32 = *(v0 + 928);
    v33 = *(v0 + 920);
    v34 = *(v0 + 912);
    v68 = *(v0 + 856);
    v35 = *(v0 + 840);
    v36 = *(v0 + 832);
    v37 = *(v0 + 648);

    outlined destroy of Mirror.DisplayStyle?(v0 + 296, &_s11SiriKitFlow6Output_pSgMd, &_s11SiriKitFlow6Output_pSgMR);
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    lazy protocol witness table accessor for type ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError and conformance ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError();
    swift_allocError();
    *v38 = 1;
    swift_willThrow();

    outlined destroy of ContactResolution(v37);
    (*(v35 + 8))(v68, v36);
    v39 = *(v0 + 904);
    v40 = *(v0 + 880);
    v41 = *(v0 + 856);
    v42 = *(v0 + 848);
    v43 = *(v0 + 824);
    v44 = *(v0 + 808);
    v45 = *(v0 + 784);
    v46 = *(v0 + 776);
    v47 = *(v0 + 752);
    v48 = *(v0 + 744);
    v51 = *(v0 + 720);
    v54 = *(v0 + 712);
    v57 = *(v0 + 688);
    v60 = *(v0 + 680);
    v63 = *(v0 + 656);
    v65 = *(v0 + 648);
    v69 = *(v0 + 640);

    v29 = *(v0 + 8);
  }

  return v29();
}

uint64_t ShareETAContactDisambiguationStrategy.makeFlowCancelledResponse()(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0aB16ReliabilityCodesOSgMd, &_s11SiriKitFlow0aB16ReliabilityCodesOSgMR) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v4 = type metadata accessor for ActivityType();
  v2[25] = v4;
  v5 = *(v4 - 8);
  v2[26] = v5;
  v6 = *(v5 + 64) + 15;
  v2[27] = swift_task_alloc();
  v7 = type metadata accessor for TemplatingResult();
  v2[28] = v7;
  v8 = *(v7 - 8);
  v2[29] = v8;
  v2[30] = *(v8 + 64);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return _swift_task_switch(ShareETAContactDisambiguationStrategy.makeFlowCancelledResponse(), 0, 0);
}

uint64_t ShareETAContactDisambiguationStrategy.makeFlowCancelledResponse()()
{
  v1 = v0[23];
  v2 = v1[3];
  v0[5] = type metadata accessor for ShareETA(0);
  v0[6] = &protocol witness table for ShareETA;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  *boxed_opaque_existential_0 = 0;
  boxed_opaque_existential_0[1] = 0;
  swift_storeEnumTagMultiPayload();
  v4 = v1[7];
  v5 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v4);
  v6 = (*(v5 + 80))(v4, v5);
  v0[33] = v6;
  v7 = *(*v2 + 112);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[34] = v9;
  *v9 = v0;
  v9[1] = ShareETAContactDisambiguationStrategy.makeFlowCancelledResponse();
  v10 = v0[32];

  return v12(v10, v0 + 2, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 264);
  v7 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v5 = ShareETAContactDisambiguationStrategy.makeFlowCancelledResponse();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v5 = ShareETAContactDisambiguationStrategy.makeFlowCancelledResponse();
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[27];
  v4 = v0[24];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v5 = v0[1];
  v6 = v0[35];

  return v5();
}

id ShareETAContactDisambiguationStrategy.makeFlowCancelledResponse()()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  static SiriKitEventSender.current.getter();
  v21 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  (*(v2 + 104))(v1, enum case for ActivityType.canceled(_:), v3);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INShareETAIntent, INShareETAIntent_ptr);
  result = [swift_getObjCClassFromMetadata() typeName];
  if (result)
  {
    v5 = result;
    v6 = *(v0 + 248);
    v7 = *(v0 + 256);
    v8 = *(v0 + 232);
    v19 = *(v0 + 240);
    v9 = *(v0 + 224);
    v20 = *(v0 + 216);
    v10 = *(v0 + 192);
    v11 = *(v0 + 176);
    type metadata accessor for SiriKitEvent();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = enum case for SiriKitReliabilityCodes.cancelDisambiguation(_:);
    v13 = type metadata accessor for SiriKitReliabilityCodes();
    v14 = *(v13 - 8);
    (*(v14 + 104))(v10, v12, v13);
    (*(v14 + 56))(v10, 0, 1, v13);
    (*(v8 + 16))(v6, v7, v9);
    v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v16 = swift_allocObject();
    (*(v8 + 32))(v16 + v15, v6, v9);
    SiriKitEvent.__allocating_init(activityType:taskType:statusReason:_:)();
    dispatch thunk of SiriKitEventSending.send(_:)();

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    static Device.current.getter();
    v17 = type metadata accessor for AceOutput();
    *(v0 + 152) = 0u;
    *(v0 + 168) = 0;
    *(v0 + 136) = 0u;
    v11[3] = v17;
    v11[4] = &protocol witness table for AceOutput;
    __swift_allocate_boxed_opaque_existential_0(v11);
    static AceOutputHelper.makeCancellationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:canUseServerTTS:flowActivity:)();
    outlined destroy of Mirror.DisplayStyle?(v0 + 136, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
    (*(v8 + 8))(v7, v9);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #3 in ShareETAContactDisambiguationStrategy.makePromptForDisambiguation(paginatedItems:)(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = dispatch thunk of SiriKitEvent.SiriKitEventBuilder.parameterName.setter();
  a3(v5);
  return dispatch thunk of SiriKitEvent.SiriKitEventBuilder.responseId.setter();
}

uint64_t ShareETAContactDisambiguationStrategy.makeErrorResponse(_:)()
{
  *(v1 + 16) = v0;
  return _swift_task_switch(ShareETAContactDisambiguationStrategy.makeErrorResponse(_:), 0, 0);
}

{
  v1 = *(v0 + 16);
  static os_log_type_t.default.getter();
  v2 = *(v1 + 16);
  os_log(_:dso:log:_:_:)();
  lazy protocol witness table accessor for type ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError and conformance ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError();
  swift_allocError();
  *v3 = 0;
  swift_willThrow();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t ShareETAContactDisambiguationStrategy.disambiguateContactRF(dialog:paginatedItems:nlContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v5 = type metadata accessor for ImageElement.ImageStyle();
  v4[21] = v5;
  v6 = *(v5 - 8);
  v4[22] = v6;
  v7 = *(v6 + 64) + 15;
  v4[23] = swift_task_alloc();
  v8 = type metadata accessor for ContactQuery();
  v4[24] = v8;
  v9 = *(v8 - 8);
  v4[25] = v9;
  v10 = *(v9 + 64) + 15;
  v4[26] = swift_task_alloc();
  v11 = type metadata accessor for GeoContact();
  v4[27] = v11;
  v12 = *(v11 - 8);
  v4[28] = v12;
  v13 = *(v12 + 64) + 15;
  v4[29] = swift_task_alloc();
  v14 = type metadata accessor for ResponseType();
  v4[30] = v14;
  v15 = *(v14 - 8);
  v4[31] = v15;
  v16 = *(v15 + 64) + 15;
  v4[32] = swift_task_alloc();
  v17 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v4[33] = swift_task_alloc();
  v18 = type metadata accessor for OutputGenerationManifest();
  v4[34] = v18;
  v19 = *(v18 - 8);
  v4[35] = v19;
  v20 = *(v19 + 64) + 15;
  v4[36] = swift_task_alloc();

  return _swift_task_switch(ShareETAContactDisambiguationStrategy.disambiguateContactRF(dialog:paginatedItems:nlContext:), 0, 0);
}

uint64_t ShareETAContactDisambiguationStrategy.disambiguateContactRF(dialog:paginatedItems:nlContext:)()
{
  v1 = v0[20];
  v2 = v1[3];
  v0[37] = v2;
  v3 = v1[7];
  v4 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v3);
  v5 = (*(v4 + 80))(v3, v4);
  v0[38] = v5;
  v6 = *(*v2 + 152);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[39] = v8;
  *v8 = v0;
  v8[1] = ShareETAContactDisambiguationStrategy.disambiguateContactRF(dialog:paginatedItems:nlContext:);
  v9 = v0[18];

  return v11(v9, v5);
}

{
  v1 = *v0;
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 336);
  v4 = *(*v0 + 328);
  v6 = *v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 96));

  return _swift_task_switch(ShareETAContactDisambiguationStrategy.disambiguateContactRF(dialog:paginatedItems:nlContext:), 0, 0);
}

{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 272);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 288);
  v5 = *(v0 + 256);
  v6 = *(v0 + 264);
  v7 = *(v0 + 232);
  v8 = *(v0 + 208);
  v9 = *(v0 + 184);

  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = v0[17];
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  v2 = v0[36];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[29];
  v6 = v0[26];
  v7 = v0[23];

  v8 = v0[1];

  return v8();
}

uint64_t ShareETAContactDisambiguationStrategy.disambiguateContactRF(dialog:paginatedItems:nlContext:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 312);
  v5 = *v2;
  *(*v2 + 320) = a1;

  v6 = *(v3 + 304);
  if (v1)
  {

    v7 = ShareETAContactDisambiguationStrategy.disambiguateContactRF(dialog:paginatedItems:nlContext:);
  }

  else
  {

    v7 = ShareETAContactDisambiguationStrategy.disambiguateContactRF(dialog:paginatedItems:nlContext:);
  }

  return _swift_task_switch(v7, 0, 0);
}

size_t ShareETAContactDisambiguationStrategy.disambiguateContactRF(dialog:paginatedItems:nlContext:)()
{
  v1 = v0[36];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[30];
  v5 = v0[31];
  v6 = v0[19];
  v7 = v0[20];
  static os_log_type_t.default.getter();
  v8 = *(v7 + 16);
  v9 = &_swiftEmptyArrayStorage;
  os_log(_:dso:log:_:_:)();
  static DialogPhase.clarification.getter();
  OutputGenerationManifest.init(dialogPhase:_:)();
  OutputGenerationManifest.responseViewId.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  (*(v5 + 104))(v2, enum case for ResponseType.disambiguation(_:), v4);
  OutputGenerationManifest.responseType.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMd, &_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMR);
  v10 = PaginatedItemContainer.items.getter();
  v11 = v10 >> 62;
  if (v10 >> 62)
  {
    goto LABEL_22;
  }

  v12 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
  v13 = v81;
  if (v12)
  {
    while (1)
    {
      v14 = v10;
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        break;
      }

      v16 = v9;
      if (v11)
      {
        v60 = v14 & 0xFFFFFFFFFFFFFF8;
        v10 = _CocoaArrayWrapper.endIndex.getter();
        v17 = v14;
      }

      else
      {
        v17 = v14;
        v60 = v14 & 0xFFFFFFFFFFFFFF8;
        v10 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
      }

      v9 = 0;
      v18 = v13[29];
      v66 = v13[27];
      v67 = v13[28];
      v19 = v13[22];
      v70 = v17 & 0xC000000000000001;
      v65 = (v13[25] + 8);
      v64 = enum case for ImageElement.ImageStyle.contactImage4(_:);
      v63 = (v19 + 104);
      v62 = enum case for ImageElement.ImageStyle.contactImage3(_:);
      v61 = (v19 + 32);
      v71 = v10 & ~(v10 >> 63);
      v68 = v12;
      v69 = v17;
      while (v71 != v9)
      {
        v79 = v16;
        if (v70)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v60 + 16))
          {
            goto LABEL_21;
          }

          v20 = *(v17 + 8 * v9 + 32);
        }

        v21 = v20;
        v22 = v13[29];
        v23 = v81[26];
        v24 = v81[24];
        v76 = v81[23];
        v77 = v81[21];
        v78 = v22;
        v25 = v81[20];
        INPerson.toContactQuery()();
        v26 = ContactQuery.id.getter();
        v74 = v27;
        v75 = v26;
        (*v65)(v23, v24);
        v28 = [v21 displayName];
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v72 = v30;
        v73 = v29;

        v31 = INPerson.getContactInitials()();
        v32 = INPerson.encodeBase64.getter();
        v34 = v33;
        v35 = v25[7];
        v36 = v25[8];
        __swift_project_boxed_opaque_existential_1(v25 + 4, v35);
        (*(v36 + 32))(v35, v36);
        v37 = v81[6];
        __swift_project_boxed_opaque_existential_1(v81 + 2, v81[5]);
        v13 = v81;
        LOBYTE(v28) = dispatch thunk of DeviceState.isCarPlay.getter();
        __swift_destroy_boxed_opaque_existential_0Tm(v81 + 2);
        if (v28)
        {
          v38 = v62;
        }

        else
        {
          v38 = v64;
        }

        (*v63)(v76, v38, v77);
        *v78 = v9;
        *(v18 + 8) = v75;
        *(v18 + 16) = v74;
        *(v18 + 24) = v73;
        *(v18 + 32) = v72;
        *(v18 + 40) = v31;
        *(v18 + 56) = v32;
        *(v18 + 64) = v34;
        *(v18 + 72) = 0;
        (*v61)(v78 + *(v66 + 40), v76, v77);

        v16 = v79;
        v11 = v79[2];
        v39 = v79[3];
        if (v11 >= v39 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v39 > 1, v11 + 1, 1);
          v16 = v79;
        }

        v40 = v81[29];
        ++v9;
        v16[2] = v11 + 1;
        v10 = outlined init with take of ContactResolution(v40, v16 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v11, type metadata accessor for GeoContact);
        v17 = v69;
        if (v68 == v9)
        {

          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v41 = v10;
      v12 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v41;
      v13 = v81;
      if (!v12)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    v16 = &_swiftEmptyArrayStorage;
LABEL_24:
    v42 = v13[37];
    v13[10] = &type metadata for GeoLabel;
    v13[11] = &protocol witness table for GeoLabel;
    *(v13 + 7) = xmmword_B99F0;
    *(v13 + 72) = 2;
    v43 = (*(*v42 + 136))(v13 + 7);
    v44 = v13;
    v45 = v43;
    v47 = v46;
    LOBYTE(v42) = v48;
    __swift_destroy_boxed_opaque_existential_0Tm(v44 + 7);
    if (v42)
    {
      outlined consume of Result<String, Error>(v45, v47, 1);
      v45 = 0;
      v47 = 0xE000000000000000;
    }

    v49 = v81[40];
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v50 = type metadata accessor for ResponseFactory();
    v51 = *(v50 + 48);
    v52 = *(v50 + 52);
    swift_allocObject();
    v81[41] = ResponseFactory.init()();
    v81[15] = &type metadata for GeoDataModels;
    v81[16] = lazy protocol witness table accessor for type GeoDataModels and conformance GeoDataModels();
    v53 = swift_allocObject();
    v81[12] = v53;
    *(v53 + 16) = v45;
    *(v53 + 24) = v47;
    *(v53 + 32) = v16;
    *(v53 + 96) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v54 = swift_allocObject();
    v81[42] = v54;
    *(v54 + 16) = xmmword_B8FB0;
    *(v54 + 32) = v49;
    v55 = *(&async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:) + 1);
    v80 = &async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:) + async function pointer to dispatch thunk of ResponseFactory.makeResponseOutput(resultModel:dialog:outputGenerationManifest:);
    v56 = v49;
    v57 = swift_task_alloc();
    v81[43] = v57;
    *v57 = v81;
    v57[1] = ShareETAContactDisambiguationStrategy.disambiguateContactRF(dialog:paginatedItems:nlContext:);
    v58 = v81[36];
    v59 = v81[17];

    return (v80)(v59, v81 + 12, v54, v58);
  }

  return result;
}

uint64_t ShareETAContactDisambiguationStrategy.deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  v2 = *(v0 + 88);

  v3 = *(v0 + 96);

  return v0;
}

uint64_t ShareETAContactDisambiguationStrategy.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  v2 = *(v0 + 88);

  v3 = *(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.parseDisambiguationResponse(input:paginatedItems:) in conformance ShareETAContactDisambiguationStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 216);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v12(a1, a2, a3);
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makePromptForDisambiguation(paginatedItems:) in conformance ShareETAContactDisambiguationStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 224);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v10(a1, a2);
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:) in conformance ShareETAContactDisambiguationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ShareETAContactDisambiguationStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:)(a1, a2, v10, a4);
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:) in conformance ShareETAContactDisambiguationStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for ShareETAContactDisambiguationStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:)(a1, a2, v10, a4);
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAContactDisambiguationStrategy(uint64_t a1)
{
  v4 = *(*v1 + 232);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1);
}

uint64_t protocol witness for PromptForDisambiguationFlowStrategyAsync.makeErrorResponse(_:) in conformance ShareETAContactDisambiguationStrategy(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 240);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v10(a1, a2);
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21GeoFlowDelegatePlugin0D7ContactVGMd, &_ss23_ContiguousArrayStorageCy21GeoFlowDelegatePlugin0D7ContactVGMR);
  v10 = *(type metadata accessor for GeoContact() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for GeoContact() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
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
    v10 = &_swiftEmptyArrayStorage;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21GeoFlowDelegatePlugin0D15TrafficIncidentVGMd, &_ss23_ContiguousArrayStorageCy21GeoFlowDelegatePlugin0D15TrafficIncidentVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized ShareETAContactDisambiguationStrategy.init(isPommes:isUSO:skeletonPerson:flowHelper:catService:)(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a7;
  v41 = a8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v39);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_0, a4, a7);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  v15 = OS_os_log.init(subsystem:category:)();
  *(a6 + 81) = 0;
  *(a6 + 16) = v15;
  *(a6 + 88) = &_swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_B7D70;
  if (one-time initialization token for referenceNode != -1)
  {
    swift_once();
  }

  *(v16 + 32) = specialized OntologyNode.javaClassName.getter();
  *(v16 + 40) = v17;
  if (one-time initialization token for confirmationNode != -1)
  {
    swift_once();
  }

  *(v16 + 48) = specialized OntologyNode.javaClassName.getter();
  *(v16 + 56) = v18;
  v19 = type metadata accessor for AddressOntologyNode.PersonPlaceNode();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  AddressOntologyNode.PersonPlaceNode.init(name:multicardinal:)();
  v22 = specialized OntologyNode.javaClassName.getter();
  v24 = v23;

  *(v16 + 64) = v22;
  *(v16 + 72) = v24;
  v25 = type metadata accessor for AddressOntologyNode.OccupantNode();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  AddressOntologyNode.OccupantNode.init(name:multicardinal:)();
  v28 = specialized OntologyNode.javaClassName.getter();
  v30 = v29;

  *(v16 + 80) = v28;
  *(v16 + 88) = v30;
  static AddressOntologyNode.OccupantNode.occupantFullNameNode.getter();
  v31 = specialized OntologyNode.javaClassName.getter();
  v33 = v32;

  *(v16 + 96) = v31;
  *(v16 + 104) = v33;
  type metadata accessor for PersonOntologyNode();
  static PersonOntologyNode.personFullNameNode.getter();
  v34 = specialized OntologyNode.javaClassName.getter();
  v36 = v35;

  *(v16 + 112) = v34;
  *(v16 + 120) = v36;
  *(a6 + 96) = v16;
  *(a6 + 80) = a1 & 1;
  swift_beginAccess();
  *(a6 + 81) = a2 & 1;
  *(a6 + 72) = a3;
  outlined init with take of CATType(&v39, a6 + 32);
  *(a6 + 24) = a5;
  return a6;
}

unint64_t lazy protocol witness table accessor for type ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError and conformance ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError()
{
  result = lazy protocol witness table cache variable for type ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError and conformance ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError;
  if (!lazy protocol witness table cache variable for type ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError and conformance ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError and conformance ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError and conformance ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError;
  if (!lazy protocol witness table cache variable for type ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError and conformance ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError and conformance ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of ContactResolution(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactResolution(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ContactResolution(uint64_t a1)
{
  v2 = type metadata accessor for ContactResolution(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_38564()
{
  v1 = *(type metadata accessor for ContactResolution(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine0B6PersonC9recipient_0A7KitFlow21BehaviorAfterSpeakingO09behaviouriJ0tMd, &_s16SiriDialogEngine0B6PersonC9recipient_0A7KitFlow21BehaviorAfterSpeakingO09behaviouriJ0tMR) + 48);
  v7 = type metadata accessor for BehaviorAfterSpeaking();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_38688()
{
  v1 = type metadata accessor for TemplatingResult();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t outlined init with take of ContactResolution(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels and conformance GeoDataModels()
{
  result = lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels;
  if (!lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels;
  if (!lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels;
  if (!lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels and conformance GeoDataModels);
  }

  return result;
}

uint64_t sub_38870()
{
  outlined consume of GeoDataModels(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t outlined consume of GeoDataModels(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  if (a11 > 1u)
  {
    if (a11 != 2)
    {
      if (a11 != 3)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  else if (a11)
  {
    if (a11 != 1)
    {
      return result;
    }

LABEL_7:
  }
}

uint64_t sub_389D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_38A68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_38AB4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 176);

  return v3(v4);
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v9 + 8 * *(&dword_10 + v9) + 32, (*(&dword_18 + v9) >> 1) - *(&dword_10 + v9), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Sharing_Medium@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Sharing_Medium.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t ShareETAFlowDelegate.isPOMMES.getter()
{
  v1 = direct field offset for ShareETAFlowDelegate.isPOMMES;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ShareETAFlowDelegate.isPOMMES.setter(char a1)
{
  v3 = direct field offset for ShareETAFlowDelegate.isPOMMES;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ShareETAFlowDelegate.isUSO.getter()
{
  v1 = direct field offset for ShareETAFlowDelegate.isUSO;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ShareETAFlowDelegate.isUSO.setter(char a1)
{
  v3 = direct field offset for ShareETAFlowDelegate.isUSO;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t ShareETAFlowDelegate.init(deviceState:isPOMMES:isUSO:)(uint64_t *a1, char a2, char a3)
{
  v4 = v3;
  v8 = direct field offset for ShareETAFlowDelegate.logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v3 + v8) = OS_os_log.init(subsystem:category:)();
  v9 = direct field offset for ShareETAFlowDelegate.isPOMMES;
  *(v4 + direct field offset for ShareETAFlowDelegate.isPOMMES) = 0;
  v10 = direct field offset for ShareETAFlowDelegate.isUSO;
  *(v4 + direct field offset for ShareETAFlowDelegate.isUSO) = 0;
  *(v4 + direct field offset for ShareETAFlowDelegate.disambiguationState) = 0;
  outlined init with copy of DeviceState(a1, v4 + direct field offset for ShareETAFlowDelegate.currentDeviceState);
  swift_beginAccess();
  *(v4 + v9) = a2;
  swift_beginAccess();
  *(v4 + v10) = a3;
  v11 = BaseRCHFlowDelegate.init()();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v11;
}

uint64_t ShareETAFlowDelegate.disambiguationState.getter()
{
  v1 = direct field offset for ShareETAFlowDelegate.disambiguationState;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t ShareETAFlowDelegate.disambiguationState.setter(uint64_t a1)
{
  v3 = direct field offset for ShareETAFlowDelegate.disambiguationState;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id ShareETAFlowDelegate.makeIntentFromParse(parse:previousIntent:)(uint64_t a1, void (*a2)(void, void, void))
{
  v346 = a2;
  v307 = type metadata accessor for Parse.DirectInvocation();
  v309 = *(v307 - 8);
  v4 = *(v309 + 64);
  __chkstk_darwin(v307);
  v308 = &v305 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v338 = type metadata accessor for Google_Protobuf_StringValue();
  v306 = *(v338 - 8);
  isa = v306[8].isa;
  __chkstk_darwin(v338);
  *&v337 = &v305 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v340 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v341 = *(v340 - 1);
  v8 = *(v341 + 64);
  __chkstk_darwin(v340);
  v345 = &v305 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v318 = *(v319 - 8);
  v10 = *(v318 + 64);
  __chkstk_darwin(v319);
  v317 = &v305 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v315 = *(v316 - 8);
  v12 = *(v315 + 64);
  __chkstk_darwin(v316);
  v314 = &v305 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v328 = type metadata accessor for Siri_Nlu_External_UserParse();
  v327 = *(v328 - 8);
  v14 = *(v327 + 64);
  __chkstk_darwin(v328);
  v326 = &v305 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v313 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v312 = *(v313 - 8);
  v16 = *(v312 + 64);
  __chkstk_darwin(v313);
  v311 = &v305 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMd, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMR);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v310 = &v305 - v20;
  v332 = type metadata accessor for USOParse();
  v331 = *(v332 - 8);
  v21 = *(v331 + 64);
  __chkstk_darwin(v332);
  v336 = &v305 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode();
  v324 = *(v325 - 8);
  v23 = *(v324 + 64);
  __chkstk_darwin(v325);
  v323 = &v305 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v322 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v321 = *(v322 - 8);
  v25 = *(v321 + 64);
  __chkstk_darwin(v322);
  v320 = &v305 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v344 = type metadata accessor for Parse();
  v27 = *(v344 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v344);
  v329 = &v305 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v335 = &v305 - v32;
  v33 = __chkstk_darwin(v31);
  v334 = (&v305 - v34);
  v35 = __chkstk_darwin(v33);
  v37 = &v305 - v36;
  __chkstk_darwin(v35);
  v39 = &v305 - v38;
  v40 = type metadata accessor for NLIntent();
  v333 = *(v40 - 8);
  v41 = *(v333 + 64);
  v42 = __chkstk_darwin(v40);
  v330 = &v305 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v339 = &v305 - v45;
  __chkstk_darwin(v44);
  v47 = &v305 - v46;
  v48 = *(v2 + direct field offset for ShareETAFlowDelegate.logObject);
  v49 = static os_log_type_t.default.getter();
  v50 = os_log_type_enabled(v48, v49);
  v343 = v2;
  v353 = v48;
  v347 = a1;
  if (v50)
  {
    v51 = v27;
    v52 = swift_slowAlloc();
    v53 = v47;
    v54 = swift_slowAlloc();
    v354 = v54;
    *v52 = 136315138;
    v357 = v346;
    v55 = v346;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16INShareETAIntentCSgMd, &_sSo16INShareETAIntentCSgMR);
    v56 = String.init<A>(describing:)();
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, &v354);
    a1 = v347;

    *(v52 + 4) = v58;
    v48 = v353;
    _os_log_impl(&dword_0, v353, v49, "makeIntentFromParse previous intent %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    v47 = v53;

    v27 = v51;
  }

  v59 = *(v27 + 16);
  v60 = a1;
  v61 = v344;
  v352 = v27 + 16;
  *&v351 = v59;
  v59(v39, a1, v344);
  v349 = *(v27 + 88);
  v350 = v27 + 88;
  v62 = v349(v39, v61);
  v348 = v27;
  if (v62 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v27 + 96))(v39, v61);
    v63 = v47;
    v64 = v333;
    v342 = *(v333 + 32);
    v342(v63, v39, v40);
    v65 = v339;
    (*(v64 + 16))(v339, v63, v40);
    v66 = type metadata accessor for LocationSearchIntent();
    v67 = *(v66 + 48);
    v68 = *(v66 + 52);
    v74 = swift_allocObject();
    v48 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
    if (one-time initialization token for domainNode != -1)
    {
      goto LABEL_90;
    }

    goto LABEL_6;
  }

  v71 = v40;
  (*(v27 + 8))(v39, v61);
  v72 = 0;
  v73 = v61;
  v74 = v60;
  for (i = v339; ; i = v65)
  {
    (v351)(v37, v74, v73);
    if (v349(v37, v73) == enum case for Parse.NLv3IntentPlusServerConversion(_:))
    {
      v342 = v72;
      (*(v348 + 96))(v37, v73);
      v76 = *(v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, "vp") + 48));

      v77 = v333;
      v78 = *(v333 + 32);
      v79 = v330;
      v80 = v71;
      v78(v330, v37, v71);
      v81 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v48, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_0, v48, v81, "makeIntentFromParse, parsing NLv3IntentPlusServerConversion)", v82, 2u);
        i = v339;
      }

      (*(v77 + 16))(i, v79, v71);
      v83 = type metadata accessor for LocationSearchIntent();
      v84 = *(v83 + 48);
      v85 = *(v83 + 52);
      v86 = swift_allocObject();
      v87 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
      v88 = i;
      if (one-time initialization token for domainNode != -1)
      {
        swift_once();
      }

      v89 = static LocationSearchIntent.domainNode;
      v90 = *(v77 + 8);

      v90(v79, v80);
      *(v86 + v87) = v89;
      v78((v86 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent), v88, v80);

      v72 = v86;
      v48 = v353;
      v74 = v347;
      v73 = v344;
    }

    else
    {
      (*(v348 + 8))(v37, v73);
    }

    v91 = v334;
    (v351)(v334, v74, v73);
    v92 = v349(v91, v73);
    v65 = &metadata instantiation cache for protocol conformance descriptor for WhereAmIFlow;
    v93 = v335;
    v64 = v343;
    if (v92 != enum case for Parse.pommesResponse(_:))
    {
      (*(v348 + 8))(v91, v73);
      goto LABEL_38;
    }

    (*(v348 + 96))(v91, v73);
    v94 = *v91;
    v95 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_0, v48, v95, "makeIntentFromParse, POMMES)", v96, 2u);
    }

    v97 = type metadata accessor for LocationSearchIntent();
    v98 = *(v97 + 48);
    v99 = *(v97 + 52);
    swift_allocObject();
    v100 = v94;
    v101 = LocationSearchIntent.init(from:)(v100);

    v103 = (*(*v64 + class metadata base offset for ShareETAFlowDelegate + 96))(v102);
    if (!v103)
    {

      v72 = v101;
LABEL_36:
      v74 = v347;
      goto LABEL_38;
    }

    v104 = v103;
    v342 = v101;
    v105 = PommesResponse.firstGeoExperience.getter();
    if (!v105)
    {

      v72 = v342;
      goto LABEL_36;
    }

    v106 = v105;
    v339 = v100;
    v107 = v320;
    GeoExperience.geoClientComponent.getter();

    v108 = v323;
    Apple_Parsec_Siri_V2alpha_GeoClientComponent.locationSearchNode.getter();
    (*(v321 + 8))(v107, v322);
    v48 = Apple_Parsec_Siri_V2alpha_LocationSearchNode.personPlaceID.getter();
    v63 = v109;
    (*(v324 + 8))(v108, v325);
    v74 = v104 & 0xFFFFFFFFFFFFFF8;
    if (v104 >> 62)
    {
      goto LABEL_92;
    }

    v110 = *(&dword_10 + (v104 & 0xFFFFFFFFFFFFFF8));
LABEL_21:
    v37 = v339;
    v111 = v342;
    if (!v110)
    {
LABEL_37:

      v72 = v111;
      v64 = v343;
      v73 = v344;
      v48 = v353;
      v65 = &metadata instantiation cache for protocol conformance descriptor for WhereAmIFlow;
      v74 = v347;
      v93 = v335;
LABEL_38:
      (v351)(v93, v74, v73);
      if (v349(v93, v73) != enum case for Parse.uso(_:))
      {
        (*(v348 + 8))(v93, v73);
        v118 = v346;
        goto LABEL_100;
      }

      (*(v348 + 96))(v93, v73);
      (*(v331 + 32))(v336, v93, v332);
      v114 = static os_log_type_t.default.getter();
      v115 = os_log_type_enabled(v48, v114);
      if (v115)
      {
        v116 = swift_slowAlloc();
        *v116 = 0;
        _os_log_impl(&dword_0, v48, v114, "makeIntentFromParse, parsing uso parse)", v116, 2u);
      }

      v117 = (*(*v64 + class metadata base offset for ShareETAFlowDelegate + 96))(v115);
      v118 = v346;
      v339 = v117;
      if (v117)
      {
        v119 = v326;
        USOParse.userParse.getter();
        v120 = Siri_Nlu_External_UserParse.userDialogActs.getter();
        (*(v327 + 8))(v119, v328);
        if (*(v120 + 16))
        {
          v342 = v72;
          v121 = v312;
          v122 = v311;
          v123 = v313;
          (*(v312 + 16))(v311, v120 + ((*(v121 + 80) + 32) & ~*(v121 + 80)), v313);

          v124 = v314;
          Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
          v125 = *(v121 + 8);
          v74 = v121 + 8;
          v125(v122, v123);
          v126 = v317;
          Siri_Nlu_External_UserStatedTask.task.getter();
          (*(v315 + 8))(v124, v316);
          v37 = Siri_Nlu_External_UsoGraph.identifiers.getter();
          (*(v318 + 8))(v126, v319);
          v65 = *(v37 + 16);
          v127 = v340;
          if (v65)
          {
            v63 = 0;
            v40 = v341 + 16;
            v48 = v306 + 1;
            v64 = v341 + 8;
            v128 = v337;
            while (1)
            {
              if (v63 >= *(v37 + 16))
              {
                goto LABEL_88;
              }

              (*(v341 + 16))(v345, v37 + ((*(v341 + 80) + 32) & ~*(v341 + 80)) + *(v341 + 72) * v63, v127);
              Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
              v129 = Google_Protobuf_StringValue.value.getter();
              v131 = v130;
              (v48->isa)(v128, v338);
              if (v129 == 0x64695F6D657469 && v131 == 0xE700000000000000)
              {
                break;
              }

              v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v74)
              {
                goto LABEL_59;
              }

              ++v63;
              v127 = v340;
              (*v64)(v345, v340);
              if (v65 == v63)
              {
                goto LABEL_50;
              }
            }

LABEL_59:

            v133 = v341;
            v40 = v310;
            v127 = v340;
            (*(v341 + 32))(v310, v345, v340);
            v132 = 0;
            v64 = v343;
            v118 = v346;
            v74 = v347;
            v48 = v353;
            v65 = &metadata instantiation cache for protocol conformance descriptor for WhereAmIFlow;
          }

          else
          {
LABEL_50:

            v132 = 1;
            v64 = v343;
            v118 = v346;
            v74 = v347;
            v48 = v353;
            v65 = &metadata instantiation cache for protocol conformance descriptor for WhereAmIFlow;
            v133 = v341;
            v40 = v310;
          }

          (*(v133 + 56))(v40, v132, 1, v127);
          if ((*(v133 + 48))(v40, 1, v127) == 1)
          {

            outlined destroy of Mirror.DisplayStyle?(v40, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMd, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMR);
            goto LABEL_95;
          }

          v345 = Siri_Nlu_External_UsoEntityIdentifier.value.getter();
          *&v338 = v150;
          (*(v133 + 8))(v40, v127);
          v104 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v48, v104))
          {
            v152 = swift_slowAlloc();
            v153 = swift_slowAlloc();
            v354 = v153;
            *v152 = 136315138;
            *(v152 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v345, v338, &v354);
            _os_log_impl(&dword_0, v48, v104, "contactId on disambiguation is %s", v152, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v153);
          }

          v37 = v339 & 0xFFFFFFFFFFFFFF8;
          if (v339 >> 62)
          {
            v154 = _CocoaArrayWrapper.endIndex.getter();
            if (v154)
            {
              goto LABEL_66;
            }
          }

          else
          {
            v154 = *(&dword_10 + (v339 & 0xFFFFFFFFFFFFFF8));
            if (v154)
            {
LABEL_66:
              v335 = v37;
              v63 = 0;
              v341 = v339 & 0xC000000000000001;
              *&v151 = 136315394;
              v337 = v151;
              v340 = v154;
              while (1)
              {
                if (v341)
                {
                  v155 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v63 >= *(v335 + 2))
                  {
                    __break(1u);
LABEL_92:
                    v110 = _CocoaArrayWrapper.endIndex.getter();
                    goto LABEL_21;
                  }

                  v155 = *(v339 + 8 * v63 + 32);
                }

                v104 = v155;
                v65 = (v63 + 1);
                if (__OFADD__(v63, 1))
                {
                  goto LABEL_89;
                }

                v156 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v48, v156))
                {
                  v157 = swift_slowAlloc();
                  v40 = swift_slowAlloc();
                  v357 = v40;
                  *v157 = v337;
                  v158 = v104;
                  v159 = [v158 description];
                  v160 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v162 = v161;

                  v163 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v160, v162, &v357);

                  *(v157 + 4) = v163;
                  *(v157 + 12) = 2080;
                  v164 = [v158 contactIdentifier];
                  if (v164)
                  {
                    v165 = v164;
                    v166 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v168 = v167;
                  }

                  else
                  {
                    v166 = 0;
                    v168 = 0;
                  }

                  v354 = v166;
                  v355 = v168;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                  v169 = String.init<A>(describing:)();
                  v171 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v169, v170, &v357);

                  *(v157 + 14) = v171;
                  v37 = v353;
                  _os_log_impl(&dword_0, v353, v156, "%s has contactId %s", v157, 0x16u);
                  swift_arrayDestroy();

                  v48 = v37;

                  v64 = v343;
                }

                v172 = [v104 contactIdentifier];
                v173 = v346;
                v74 = v347;
                if (v172)
                {
                  v174 = v172;
                  v175 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v40 = v176;

                  if (v345 == v175 && v338 == v40)
                  {

LABEL_85:

                    (*(*v64 + class metadata base offset for ShareETAFlowDelegate + 104))(0);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
                    v177 = swift_allocObject();
                    *(v177 + 16) = xmmword_B8FB0;
                    *(v177 + 32) = v104;
                    v178 = objc_allocWithZone(INShareETAIntent);
                    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
                    v179 = v104;
                    v180 = Array._bridgeToObjectiveC()().super.isa;

                    v118 = [v178 initWithRecipients:v180];

                    (*(v331 + 8))(v336, v332);
                    goto LABEL_144;
                  }

                  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  v48 = v353;
                  if (v37)
                  {

                    goto LABEL_85;
                  }
                }

                ++v63;
                if (v65 == v340)
                {

                  v65 = &metadata instantiation cache for protocol conformance descriptor for WhereAmIFlow;
                  v118 = v173;
                  goto LABEL_95;
                }
              }
            }
          }
        }
      }

LABEL_95:
      type metadata accessor for GeoParse();
      static GeoParse.getDomainIntent(parse:)(v74, &v354);
      (*(v331 + 8))(v336, v332);
      if (v356)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin0A6Intent_pMd, &_s21GeoFlowDelegatePlugin0A6Intent_pMR);
        type metadata accessor for LocationSearchIntent();
        if (swift_dynamicCast())
        {
          v181 = v357;

          v72 = v181;
          goto LABEL_100;
        }
      }

      else
      {
        outlined destroy of Mirror.DisplayStyle?(&v354, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMd, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMR);
      }

      v72 = 0;
LABEL_100:
      if (v118)
      {
        v341 = v64 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
        v182 = *(*v64 + v65[123] + 96);
        v183 = v118;
        v345 = v182();
        if (v345)
        {
          v340 = v183;
          v184 = static os_log_type_t.info.getter();
          v185 = os_log_type_enabled(v48, v184);
          v342 = v72;
          if (v185)
          {
            v186 = swift_slowAlloc();
            v354 = swift_slowAlloc();
            *v186 = 136315394;
            v357 = v342;

            __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin20LocationSearchIntentCSgMd, &_s21GeoFlowDelegatePlugin20LocationSearchIntentCSgMR);
            v187 = String.init<A>(describing:)();
            v189 = v74;
            v190 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v187, v188, &v354);

            *(v186 + 4) = v190;
            *(v186 + 12) = 2080;
            type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
            v191 = Array.description.getter();
            v193 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v191, v192, &v354);

            *(v186 + 14) = v193;
            v74 = v189;
            _os_log_impl(&dword_0, v48, v184, "intent %s, paginatedItems %s", v186, 0x16u);
            swift_arrayDestroy();
            v72 = v342;
          }

          if (v72)
          {
            v194 = *(*v342 + 216);

            v196 = v194(v195);
            v198 = v197;

            if (v198)
            {
              v200 = (v345 & 0xFFFFFFFFFFFFFF8);
              if (v345 >> 62)
              {
                goto LABEL_191;
              }

              for (j = *(&dword_10 + (v345 & 0xFFFFFFFFFFFFFF8)); j; j = _CocoaArrayWrapper.endIndex.getter())
              {
                v339 = j;
                v202 = 0;
                *&v199 = 136315394;
                if ((v345 & 0xC000000000000001) == 0)
                {
                  v337 = v199;
                  *&v338 = v200;
                  v213 = v353;
                  while (1)
                  {
                    if (v202 >= v200[2])
                    {
                      goto LABEL_190;
                    }

                    v200 = *(v345 + 8 * v202 + 32);
                    v214 = static os_log_type_t.default.getter();
                    if (os_log_type_enabled(v213, v214))
                    {
                      v215 = swift_slowAlloc();
                      v354 = swift_slowAlloc();
                      *v215 = v337;

                      v216 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v196, v198, &v354);

                      *(v215 + 4) = v216;
                      *(v215 + 12) = 2080;
                      v217 = INPerson.encodeBase64.getter();
                      v219 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v217, v218, &v354);

                      *(v215 + 14) = v219;
                      v64 = v343;
                      _os_log_impl(&dword_0, v213, v214, "selected node %s person encode %s", v215, 0x16u);
                      swift_arrayDestroy();
                      j = v339;
                    }

                    if (INPerson.encodeBase64.getter() == v196 && v198 == v220)
                    {
                      break;
                    }

                    v222 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v222)
                    {

LABEL_163:

LABEL_164:
                      v261 = static os_log_type_t.default.getter();
                      if (os_log_type_enabled(v213, v261))
                      {
                        v262 = swift_slowAlloc();
                        v263 = swift_slowAlloc();
                        v354 = v263;
                        *v262 = 136315138;
                        v264 = v200;
                        v265 = [v264 description];
                        v266 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v267 = v213;
                        v269 = v268;

                        v270 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v266, v269, &v354);

                        *(v262 + 4) = v270;
                        _os_log_impl(&dword_0, v267, v261, "chosen item %s", v262, 0xCu);
                        __swift_destroy_boxed_opaque_existential_0Tm(v263);
                      }

                      (*(*v64 + class metadata base offset for ShareETAFlowDelegate + 104))(0);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
                      v271 = swift_allocObject();
                      *(v271 + 16) = xmmword_B8FB0;
                      *(v271 + 32) = v200;
                      v272 = objc_allocWithZone(INShareETAIntent);
                      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
                      v273 = v200;
                      v274 = Array._bridgeToObjectiveC()().super.isa;

                      v118 = [v272 initWithRecipients:v274];

                      return v118;
                    }

                    ++v202;

                    v200 = v338;
                    if (j == v202)
                    {
                      goto LABEL_130;
                    }
                  }

                  goto LABEL_163;
                }

                v338 = v199;
                while (1)
                {
                  v203 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  v204 = (v202 + 1);
                  if (__OFADD__(v202, 1))
                  {
                    break;
                  }

                  v200 = v203;
                  v205 = static os_log_type_t.default.getter();
                  if (os_log_type_enabled(v353, v205))
                  {
                    v206 = swift_slowAlloc();
                    v354 = swift_slowAlloc();
                    *v206 = v338;

                    v207 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v196, v198, &v354);

                    *(v206 + 4) = v207;
                    *(v206 + 12) = 2080;
                    v208 = INPerson.encodeBase64.getter();
                    v210 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v208, v209, &v354);

                    *(v206 + 14) = v210;
                    v64 = v343;
                    _os_log_impl(&dword_0, v353, v205, "selected node %s person encode %s", v206, 0x16u);
                    swift_arrayDestroy();
                    j = v339;
                  }

                  if (INPerson.encodeBase64.getter() == v196 && v198 == v211)
                  {

LABEL_160:

                    v213 = v353;
                    goto LABEL_164;
                  }

                  v212 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v212)
                  {

                    goto LABEL_160;
                  }

                  swift_unknownObjectRelease();
                  ++v202;
                  if (v204 == j)
                  {
                    goto LABEL_130;
                  }
                }

                __break(1u);
LABEL_190:
                __break(1u);
LABEL_191:
                ;
              }

LABEL_130:

              v48 = v353;
              v74 = v347;
            }
          }

          v223 = v329;
          v224 = v344;
          (v351)(v329, v74, v344);
          if (v349(v223, v224) == enum case for Parse.directInvocation(_:))
          {
            (*(v348 + 96))(v223, v224);
            v225 = v309;
            v226 = v308;
            v227 = v307;
            (*(v309 + 32))(v308, v223, v307);
            v228 = Parse.DirectInvocation.userData.getter();
            if (!v228 || (v229 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v228), , !v229))
            {

              static os_log_type_t.error.getter();
              os_log(_:dso:log:_:_:)();
              v247 = v340;

              (*(v225 + 8))(v226, v227);
              v248 = v247;

              return v346;
            }

            v118 = v346;
            if (!*(v229 + 16) || (v230 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E65697069636552, 0xE900000000000074), (v231 & 1) == 0))
            {

              static os_log_type_t.error.getter();
              os_log(_:dso:log:_:_:)();
              v249 = v340;

              (*(v225 + 8))(v226, v227);
              v250 = v249;
              goto LABEL_144;
            }

            v232 = (*(v229 + 56) + 16 * v230);
            v233 = *v232;
            v234 = v232[1];

            v235 = static os_log_type_t.default.getter();
            v236 = os_log_type_enabled(v48, v235);
            v352 = v233;
            if (v236)
            {
              v238 = swift_slowAlloc();
              v239 = swift_slowAlloc();
              v357 = v239;
              *v238 = 136315138;
              v354 = v233;
              v355 = v234;

              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
              v240 = String.init<A>(describing:)();
              v242 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v240, v241, &v357);
              v233 = v352;

              *(v238 + 4) = v242;
              _os_log_impl(&dword_0, v48, v235, "From Payload person: %s", v238, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v239);
            }

            v243 = (v345 & 0xFFFFFFFFFFFFFF8);
            if (v345 >> 62)
            {
              goto LABEL_195;
            }

            for (k = *(&dword_10 + (v345 & 0xFFFFFFFFFFFFFF8)); k; k = _CocoaArrayWrapper.endIndex.getter())
            {
              if ((v345 & 0xC000000000000001) == 0)
              {
                v275 = 0;
                *&v237 = 136315138;
                v351 = v237;
                while (1)
                {
                  if (v275 >= v243[2])
                  {
                    goto LABEL_194;
                  }

                  v252 = *(v345 + 8 * v275 + 32);
                  v276 = static os_log_type_t.default.getter();
                  if (os_log_type_enabled(v353, v276))
                  {
                    v277 = swift_slowAlloc();
                    v227 = k;
                    v278 = v243;
                    v279 = swift_slowAlloc();
                    v354 = v279;
                    *v277 = v351;
                    v280 = INPerson.encodeBase64.getter();
                    v282 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v280, v281, &v354);

                    *(v277 + 4) = v282;
                    v64 = v343;
                    _os_log_impl(&dword_0, v353, v276, "person's contact handle from list: %s", v277, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0Tm(v279);
                    v243 = v278;
                    k = v227;

                    v233 = v352;
                  }

                  v283 = INPerson.encodeBase64.getter();
                  if (v234)
                  {
                    if (v283 == v233 && v234 == v284)
                    {

LABEL_185:

LABEL_186:
                      v287 = v307;
                      v288 = static os_log_type_t.default.getter();
                      v289 = v353;
                      if (os_log_type_enabled(v353, v288))
                      {
                        v290 = swift_slowAlloc();
                        v291 = swift_slowAlloc();
                        v354 = v291;
                        *v290 = 136315138;
                        v292 = v252;
                        v293 = [v292 description];
                        v294 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v296 = v295;

                        v297 = v307;
                        v298 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v294, v296, &v354);

                        *(v290 + 4) = v298;
                        v287 = v297;
                        _os_log_impl(&dword_0, v289, v288, "chosen item %s", v290, 0xCu);
                        __swift_destroy_boxed_opaque_existential_0Tm(v291);
                      }

                      (*(*v64 + class metadata base offset for ShareETAFlowDelegate + 104))(0);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
                      v299 = swift_allocObject();
                      *(v299 + 16) = xmmword_B8FB0;
                      *(v299 + 32) = v252;
                      v300 = objc_allocWithZone(INShareETAIntent);
                      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
                      v301 = v252;
                      v302 = Array._bridgeToObjectiveC()().super.isa;

                      v118 = [v300 initWithRecipients:v302];

                      (*(v309 + 8))(v308, v287);
                      goto LABEL_144;
                    }

                    v286 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v286)
                    {

                      goto LABEL_185;
                    }
                  }

                  else
                  {
                  }

                  ++v275;

                  if (k == v275)
                  {

                    v118 = v346;
                    v227 = v307;
                    goto LABEL_198;
                  }
                }
              }

              v64 = 0;
              *&v237 = 136315138;
              v351 = v237;
              while (1)
              {
                v251 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v227 = v64 + 1;
                if (__OFADD__(v64, 1))
                {
                  break;
                }

                v252 = v251;
                v253 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v353, v253))
                {
                  v254 = swift_slowAlloc();
                  v243 = swift_slowAlloc();
                  v354 = v243;
                  *v254 = v351;
                  v255 = INPerson.encodeBase64.getter();
                  v257 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v255, v256, &v354);

                  *(v254 + 4) = v257;
                  _os_log_impl(&dword_0, v353, v253, "person's contact handle from list: %s", v254, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0Tm(v243);

                  v233 = v352;
                }

                v258 = INPerson.encodeBase64.getter();
                if (v234)
                {
                  if (v258 == v233 && v234 == v259)
                  {

                    goto LABEL_182;
                  }

                  v260 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v260)
                  {

LABEL_182:

                    v64 = v343;
                    goto LABEL_186;
                  }
                }

                else
                {
                }

                swift_unknownObjectRelease();
                ++v64;
                if (v227 == k)
                {

                  v64 = v343;
                  v227 = v307;
                  goto LABEL_197;
                }
              }

              __break(1u);
LABEL_194:
              __break(1u);
LABEL_195:
              ;
            }

LABEL_197:
            v118 = v346;
LABEL_198:
            v303 = v340;

            v304 = v227;
            v183 = v303;
            (*(v309 + 8))(v308, v304);
            v65 = &metadata instantiation cache for protocol conformance descriptor for WhereAmIFlow;
          }

          else
          {

            v183 = v340;

            (*(v348 + 8))(v223, v224);
            v65 = &metadata instantiation cache for protocol conformance descriptor for WhereAmIFlow;
            v118 = v346;
          }
        }

        else
        {
        }
      }

      else
      {
        v183 = 0;
      }

      (*(*v64 + v65[123] + 104))(0);
      v245 = v183;
LABEL_144:

      return v118;
    }

    v40 = 0;
    v334 = (v104 & 0xC000000000000001);
LABEL_23:
    if (v334)
    {
      v112 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v40 >= *(v74 + 16))
      {
        goto LABEL_87;
      }

      v112 = *(v104 + 8 * v40 + 32);
    }

    v37 = v112;
    v65 = (v40 + 1);
    if (!__OFADD__(v40, 1))
    {
      break;
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    swift_once();
LABEL_6:
    v69 = static LocationSearchIntent.domainNode;
    v70 = *(v64 + 8);

    v70(v63, v40);
    *(&v48->isa + v74) = v69;
    v71 = v40;
    v342(v74 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent, v65, v40);
    v48 = v353;
    v72 = v74;
    v74 = v347;
    v73 = v344;
  }

  if (INPerson.encodeBase64.getter() == v48 && v113 == v63)
  {

    goto LABEL_55;
  }

  v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v64 & 1) == 0)
  {

    ++v40;
    v37 = v339;
    v111 = v342;
    if (v65 == v110)
    {
      goto LABEL_37;
    }

    goto LABEL_23;
  }

LABEL_55:

  v134 = static os_log_type_t.default.getter();
  v135 = v353;
  v136 = os_log_type_enabled(v353, v134);
  v137 = v343;
  if (v136)
  {
    v138 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v354 = v139;
    *v138 = 136315138;
    v140 = v37;
    v141 = [v140 description];
    v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v144 = v143;

    v145 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v144, &v354);

    *(v138 + 4) = v145;
    _os_log_impl(&dword_0, v135, v134, "chosen item %s", v138, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v139);
  }

  (*(*v137 + class metadata base offset for ShareETAFlowDelegate + 104))(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v146 = swift_allocObject();
  *(v146 + 16) = xmmword_B8FB0;
  *(v146 + 32) = v37;
  v147 = objc_allocWithZone(INShareETAIntent);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  v148 = v37;
  v149 = Array._bridgeToObjectiveC()().super.isa;

  v118 = [v147 initWithRecipients:v149];

  return v118;
}

uint64_t ShareETAFlowDelegate.makeAppResolution()()
{
  static os_log_type_t.info.getter();
  v1 = *(v0 + direct field offset for ShareETAFlowDelegate.logObject);
  os_log(_:dso:log:_:_:)();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin0A20AppResolutionServiceCySo16INShareETAIntentCGMd, &_s21GeoFlowDelegatePlugin0A20AppResolutionServiceCySo16INShareETAIntentCGMR);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return AppResolutionService.init()();
}

uint64_t ShareETAFlowDelegate.makeDialogTemplating()()
{
  static os_log_type_t.info.getter();
  v1 = *(v0 + direct field offset for ShareETAFlowDelegate.logObject);
  os_log(_:dso:log:_:_:)();
  outlined init with copy of DeviceState(v0 + direct field offset for ShareETAFlowDelegate.currentDeviceState, v6);
  v2 = type metadata accessor for ShareETATemplatingService(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return ShareETATemplatingService.init(deviceState:)(v6);
}

uint64_t ShareETATemplatingService.__allocating_init(deviceState:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return ShareETATemplatingService.init(deviceState:)(a1);
}

uint64_t ShareETAFlowDelegate.makeUnsupportedValueBehavior(app:intent:parameterName:intentResolutionResult:)@<X0>(void *a1@<X4>, uint64_t a2@<X8>)
{
  static os_log_type_t.info.getter();
  v5 = *(v2 + direct field offset for ShareETAFlowDelegate.logObject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_B89E0;
  v7 = [a1 unsupportedReason];
  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = v7;
  os_log(_:dso:log:_:_:)();

  v8 = [a1 unsupportedReason];
  v9 = type metadata accessor for UnsupportedValueBehavior();
  v10 = *(*(v9 - 8) + 104);
  v11 = &enum case for UnsupportedValueBehavior.dialogAndPrompt(_:);
  if (v8 <= 5)
  {
    v11 = &enum case for UnsupportedValueBehavior.dialogAndStop(_:);
  }

  v12 = *v11;

  return v10(a2, v12, v9);
}

uint64_t ShareETAFlowDelegate.makeAceViewProvider()()
{
  v1 = *(v0 + direct field offset for ShareETAFlowDelegate.logObject);
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "makeAceViewProvider executed", v3, 2u);
  }

  v4 = type metadata accessor for ShareETAAceViewProvider(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v8 = direct field offset for ShareETAAceViewProvider.logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v7 + v8) = OS_os_log.init(subsystem:category:)();
  return DefaultAceViewProvider.init()();
}

uint64_t ShareETAAceViewProvider.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = direct field offset for ShareETAAceViewProvider.logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v3 + v4) = OS_os_log.init(subsystem:category:)();
  return DefaultAceViewProvider.init()();
}

uint64_t ShareETAFlowDelegate.makeDisambiguationList(app:intent:parameterName:intentResolutionResult:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(void), uint64_t a7)
{
  v44 = a3;
  v45 = a4;
  v11 = type metadata accessor for Locale();
  v42 = *(v11 - 8);
  v43 = v11;
  v12 = *(v42 + 64);
  __chkstk_darwin(v11);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.info.getter();
  v15 = *(v7 + direct field offset for ShareETAFlowDelegate.logObject);
  os_log(_:dso:log:_:_:)();
  v16 = [a5 disambiguationItems];
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = *(v17 + 16);

  if (v18 && (v41[1] = a7, v19 = [a5 disambiguationItems], v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v19, v21 = specialized _arrayConditionalCast<A, B>(_:)(v20, &lazy cache variable for type metadata for INPerson, INPerson_ptr), , v21))
  {
    v23 = v44;
    v22 = v45;
    v24 = a6;
    if (v44 == 0x6E65697069636572 && v45 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_0, v15, v25, "Building contacts disambiguation list", v26, 2u);
      }

      v27 = *(v7 + direct field offset for ShareETAFlowDelegate.currentDeviceState + 32);
      __swift_project_boxed_opaque_existential_1((v7 + direct field offset for ShareETAFlowDelegate.currentDeviceState), *(v7 + direct field offset for ShareETAFlowDelegate.currentDeviceState + 24));

      dispatch thunk of DeviceState.siriLocale.getter();
      specialized static DisambiguationListUtils.makeDisambiguationItems(persons:locale:)(v21, v14);
      v28 = *(*v7 + class metadata base offset for ShareETAFlowDelegate + 104);

      v28(v29);
      specialized _arrayForceCast<A, B>(_:)(v21);
      v30 = type metadata accessor for SiriKitDisambiguationList();
      v31 = *(v30 + 48);
      v32 = *(v30 + 52);
      swift_allocObject();
      SiriKitDisambiguationList.init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)();
      v24();

      swift_bridgeObjectRelease_n();
      return (*(v42 + 8))(v14, v43);
    }

    static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_B89E0;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v37 + 32) = v23;
    *(v37 + 40) = v22;

    os_log(_:dso:log:_:_:)();

    v38 = type metadata accessor for SiriKitDisambiguationList();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    SiriKitDisambiguationList.init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)();
    a6();
  }

  else
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    v34 = type metadata accessor for SiriKitDisambiguationList();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    SiriKitDisambiguationList.init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)();
    a6();
  }
}

void *specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v11 = &_swiftEmptyArrayStorage;
  v6 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v6)
  {
    return v11;
  }

  for (i = a1 + 32; ; i += 32)
  {
    outlined init with copy of Any(i, v10);
    type metadata accessor for OS_os_log(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v8 = v11[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v6)
    {
      return v11;
    }
  }

  return 0;
}

char *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        outlined init with take of Any(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        outlined init with take of Any(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t ShareETAFlowDelegate.makeNLContextProvider()()
{
  static os_log_type_t.info.getter();
  v1 = *(v0 + direct field offset for ShareETAFlowDelegate.logObject);
  os_log(_:dso:log:_:_:)();
  v2 = outlined init with copy of DeviceState(v0 + direct field offset for ShareETAFlowDelegate.currentDeviceState, v12);
  v3 = (*(*v0 + class metadata base offset for ShareETAFlowDelegate + 40))(v2);
  v4 = (*(*v0 + class metadata base offset for ShareETAFlowDelegate + 64))();
  v5 = type metadata accessor for ShareETAContextProvider(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  v9 = direct field offset for ShareETAContextProvider.logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v8 + v9) = OS_os_log.init(subsystem:category:)();
  outlined init with copy of DeviceState(v12, v8 + direct field offset for ShareETAContextProvider.currentDeviceState);
  *(v8 + direct field offset for ShareETAContextProvider.isPOMMES) = v3 & 1;
  *(v8 + direct field offset for ShareETAContextProvider.isUSO) = v4 & 1;
  v10 = DefaultNLContextProvider.init()();
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  return v10;
}

uint64_t ShareETAFlowDelegate.__allocating_init(deviceState:isPOMMES:isUSO:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  return a4(a1, a2, a3);
}

BOOL ShareETAFlowDelegate.shouldConfirmIntentWithUser(intent:intentResponse:)(uint64_t a1, void *a2)
{
  static os_log_type_t.info.getter();
  v4 = *(v2 + direct field offset for ShareETAFlowDelegate.logObject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_B89E0;
  v6 = [a2 code];
  if (v6 == &dword_0 + 2)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v6 == &dword_0 + 2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  os_log(_:dso:log:_:_:)();

  return [a2 code] == &dword_0 + 2;
}

uint64_t ShareETAFlowDelegate.makeConfirmationStateFromParse(parse:)@<X0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v4 = type metadata accessor for USOParse();
  v103 = *(v4 - 8);
  v104 = v4;
  v5 = *(v103 + 64);
  v6 = __chkstk_darwin(v4);
  v101 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v100 = &v99 - v9;
  __chkstk_darwin(v8);
  v102 = &v99 - v10;
  v11 = type metadata accessor for NLIntent();
  v108 = *(v11 - 8);
  v109 = v11;
  v12 = *(v108 + 64);
  v13 = __chkstk_darwin(v11);
  v107 = (&v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v106 = (&v99 - v15);
  v16 = type metadata accessor for Parse();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v110 = (&v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v19);
  v23 = &v99 - v22;
  __chkstk_darwin(v21);
  v25 = &v99 - v24;
  v26 = static os_log_type_t.info.getter();
  v27 = *(v2 + direct field offset for ShareETAFlowDelegate.logObject);
  v28 = *(v17 + 16);
  v111 = a1;
  v28(v25, a1, v16);
  v105 = v26;
  if (os_log_type_enabled(v27, v26))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v116[0] = v30;
    *v29 = 136315138;
    v28(v23, v25, v16);
    v31 = String.init<A>(describing:)();
    v33 = v32;
    v34 = v25;
    v35 = *(v17 + 8);
    v35(v34, v16);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v116);

    *(v29 + 4) = v36;
    _os_log_impl(&dword_0, v27, v105, "share ETA makeConfirmationStateFromParse: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
  }

  else
  {
    v37 = v25;
    v35 = *(v17 + 8);
    v35(v37, v16);
  }

  v38 = v27;
  v40 = v110;
  v39 = v111;
  v28(v110, v111, v16);
  v41 = (*(v17 + 88))(v40, v16);
  if (v41 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v17 + 96))(v40, v16);
LABEL_8:
    v43 = v109;
    v44 = *(v108 + 32);
    v45 = v106;
    v44(v106, v40, v109);
    v46 = v107;
    v44(v107, v45, v43);
    v47 = type metadata accessor for LocationSearchIntent();
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    v50 = swift_allocObject();
    v51 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
    if (one-time initialization token for domainNode != -1)
    {
      swift_once();
    }

    *(v50 + v51) = static LocationSearchIntent.domainNode;
    v44((v50 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent), v46, v43);
    v116[0] = v50;
    v52 = one-time initialization token for confirmationNode;

    if (v52 != -1)
    {
      swift_once();
    }

    lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent();
    IntentNodeTraversable.value<A>(forNode:)();

    v53 = v114;
    v54 = type metadata accessor for SiriKitConfirmationState();
    if (v53 > 1)
    {
      if (v53 == 2)
      {
        v55 = &enum case for SiriKitConfirmationState.cancelled(_:);
      }

      else
      {
        v55 = &enum case for SiriKitConfirmationState.unset(_:);
      }
    }

    else if (v53)
    {
      v55 = &enum case for SiriKitConfirmationState.rejected(_:);
    }

    else
    {
      v55 = &enum case for SiriKitConfirmationState.confirmed(_:);
    }

    return (*(*(v54 - 8) + 104))(v112, *v55, v54);
  }

  if (v41 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v17 + 96))(v40, v16);
    v42 = *(v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, "vp") + 48));

    goto LABEL_8;
  }

  if (v41 == enum case for Parse.pommesResponse(_:))
  {
    (*(v17 + 96))(v40, v16);
    v56 = *v40;
    v57 = type metadata accessor for LocationSearchIntent();
    v58 = *(v57 + 48);
    v59 = *(v57 + 52);
    swift_allocObject();
    v60 = v56;
    v61 = *LocationSearchIntent.init(from:)(v60);
    (*(v61 + 256))();
  }

  if (v41 == enum case for Parse.uso(_:))
  {
    (*(v17 + 96))(v40, v16);
    v63 = v103;
    v64 = v102;
    (*(v103 + 32))(v102, v40, v104);
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_0, v38, v65, "makeConfirmationstateFromParse, parsing uso parse", v66, 2u);
    }

    type metadata accessor for GeoParse();
    static GeoParse.getDomainIntent(parse:)(v39, &v114);
    if (v115)
    {
      outlined init with take of CATType(&v114, v116);
      outlined init with copy of DeviceState(v116, &v114);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin0A6Intent_pMd, &_s21GeoFlowDelegatePlugin0A6Intent_pMR);
      type metadata accessor for LocationSearchIntent();
      if (swift_dynamicCast())
      {
        (*(*v113 + 256))();

        __swift_destroy_boxed_opaque_existential_0Tm(v116);
        return (*(v63 + 8))(v64, v104);
      }

      v80 = static os_log_type_t.info.getter();
      v81 = v100;
      (*(v63 + 16))(v100, v64, v104);
      if (os_log_type_enabled(v38, v80))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v84 = v104;
        v85 = v83;
        *&v114 = v83;
        *v82 = 136315138;
        v86 = USOParse.debugDescription.getter();
        v111 = v38;
        v88 = v87;
        v89 = *(v63 + 8);
        v89(v81, v84);
        v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, &v114);

        *(v82 + 4) = v90;
        _os_log_impl(&dword_0, v111, v80, "SiriGeo expected LocationSearchIntent, recieved %s.", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v85);

        __swift_destroy_boxed_opaque_existential_0Tm(v116);
        v89(v64, v84);
      }

      else
      {
        v94 = *(v63 + 8);
        v95 = v81;
        v96 = v104;
        v94(v95, v104);
        __swift_destroy_boxed_opaque_existential_0Tm(v116);
        v94(v64, v96);
      }
    }

    else
    {
      outlined destroy of Mirror.DisplayStyle?(&v114, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMd, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMR);
      v69 = static os_log_type_t.info.getter();
      v70 = v101;
      (*(v63 + 16))(v101, v64, v104);
      if (os_log_type_enabled(v38, v69))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v73 = v104;
        v74 = v72;
        v116[0] = v72;
        *v71 = 136315138;
        v75 = USOParse.debugDescription.getter();
        v111 = v38;
        v77 = v76;
        v78 = *(v63 + 8);
        v78(v70, v73);
        v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, v116);

        *(v71 + 4) = v79;
        _os_log_impl(&dword_0, v111, v69, "SiriGeo received a USO parse it doesn't support %s.", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v74);

        v78(v64, v73);
      }

      else
      {
        v91 = *(v63 + 8);
        v92 = v70;
        v93 = v104;
        v91(v92, v104);
        v91(v64, v93);
      }
    }

    v97 = enum case for SiriKitConfirmationState.unset(_:);
    v98 = type metadata accessor for SiriKitConfirmationState();
    return (*(*(v98 - 8) + 104))(v112, v97, v98);
  }

  else
  {
    v67 = enum case for SiriKitConfirmationState.unset(_:);
    v68 = type metadata accessor for SiriKitConfirmationState();
    (*(*(v68 - 8) + 104))(v112, v67, v68);
    return (v35)(v40, v16);
  }
}

uint64_t ShareETAFlowDelegate.__ivar_destroyer()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + direct field offset for ShareETAFlowDelegate.currentDeviceState));

  v1 = *(v0 + direct field offset for ShareETAFlowDelegate.disambiguationState);
}

uint64_t ShareETAFlowDelegate.deinit()
{
  v0 = BaseRCHFlowDelegate.deinit();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + direct field offset for ShareETAFlowDelegate.currentDeviceState));

  v1 = *(v0 + direct field offset for ShareETAFlowDelegate.disambiguationState);

  return v0;
}

uint64_t ShareETAFlowDelegate.__deallocating_deinit()
{
  v0 = BaseRCHFlowDelegate.deinit();
  v1 = direct field offset for ShareETAFlowDelegate.currentDeviceState;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + v1));

  v3 = *(v0 + direct field offset for ShareETAFlowDelegate.disambiguationState);

  return swift_deallocClassInstance();
}

uint64_t ShareETAAceViewProvider.makeAceViewsForResolveNeedsDisambiguation(app:parameterName:intent:utteranceViews:disambiguationList:deviceIsLocked:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, void))
{
  v24 = a8;
  v10 = type metadata accessor for ImageSize();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.info.getter();
  v15 = *(v8 + direct field offset for ShareETAAceViewProvider.logObject);
  os_log(_:dso:log:_:_:)();
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v16 = dispatch thunk of DeviceState.isCarPlay.getter();
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  if (v16)
  {
    v17 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_B8FB0;
    SiriKitDisambiguationList.disambiguationItems.getter();
    v19 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetForCarPlay(disambiguationItems:deviceIsLocked:)();

    *(v18 + 32) = v19;
    if (a5 >> 62)
    {
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);

      v23 = _bridgeCocoaArray<A>(_:)();

      a5 = v23;
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
    }

    v25[0] = v18;
    specialized Array.append<A>(contentsOf:)(a5);
    v17(v25[0], 0);
  }

  else
  {
    SiriKitDisambiguationList.disambiguationItems.getter();
    (*(v11 + 104))(v14, enum case for ImageSize.default(_:), v10);
    v20 = static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetPhone(disambiguationItems:deviceIsLocked:imageSize:)();

    (*(v11 + 8))(v14, v10);
    type metadata accessor for SiriKitAceViewBuilder();
    static Device.current.getter();
    dispatch thunk of static SiriKitAceViewBuilder.makeBuilder(deviceState:)();
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    dispatch thunk of SiriKitAceViewBuilder.addSnippet(snippet:)();

    dispatch thunk of SiriKitAceViewBuilder.withUtteranceViews(utteranceViews:)();

    v21 = dispatch thunk of SiriKitAceViewBuilder.build()();

    v24(v21, 0);
  }
}

uint64_t ShareETAAceViewProvider.init()()
{
  v1 = direct field offset for ShareETAAceViewProvider.logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v0 + v1) = OS_os_log.init(subsystem:category:)();

  return DefaultAceViewProvider.init()();
}

uint64_t ShareETAAceViewProvider.deinit()
{
  v0 = DefaultAceViewProvider.deinit();

  return v0;
}

uint64_t ShareETAAceViewProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ShareETAContextProvider.init(deviceState:isPOMMES:isUSO:)(uint64_t *a1, char a2, char a3)
{
  v7 = direct field offset for ShareETAContextProvider.logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v3 + v7) = OS_os_log.init(subsystem:category:)();
  outlined init with copy of DeviceState(a1, v3 + direct field offset for ShareETAContextProvider.currentDeviceState);
  *(v3 + direct field offset for ShareETAContextProvider.isPOMMES) = a2;
  *(v3 + direct field offset for ShareETAContextProvider.isUSO) = a3;
  v8 = DefaultNLContextProvider.init()();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t ShareETAContextProvider.makeContextForHandleIntent(intent:handleIntentResponse:_:)(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v28 - v7;
  v33 = type metadata accessor for PommesContext.Source();
  v31 = *(v33 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v33);
  v30 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v32 = &v28 - v13;
  v14 = type metadata accessor for NLContextUpdate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v3 + direct field offset for ShareETAContextProvider.logObject);
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v29 = v3;
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "makeContextForHandleIntent", v21, 2u);
    v3 = v29;
  }

  NLContextUpdate.init()();
  if (*(v3 + direct field offset for ShareETAContextProvider.isPOMMES) == 1)
  {
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v19, v22, "makeContextForHandleIntent adding pommesContext", v23, 2u);
    }

    (*(v31 + 104))(v30, enum case for PommesContext.Source.pluginDefined(_:), v33);
    v24 = v32;
    PommesContext.init(source:domain:listenAfterSpeaking:)();
    v25 = type metadata accessor for PommesContext();
    (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
    NLContextUpdate.pommesContext.setter();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_B8FB0;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INShareETAIntent, INShareETAIntent_ptr);
  *(v26 + 32) = static ConversationStateAttachmentUtils.makeAttachmentToClearSlotResolutionState<A>(intent:)();
  NLContextUpdate.conversationStateAttachments.setter();
  (*(v15 + 16))(v8, v18, v14);
  (*(v15 + 56))(v8, 0, 1, v14);
  a3(v8);
  outlined destroy of Mirror.DisplayStyle?(v8, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  return (*(v15 + 8))(v18, v14);
}

uint64_t ShareETAContextProvider.makeContextForConfirmIntent(intent:confirmIntentResponse:_:)(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v56 = a3;
  v57 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v48 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  v11 = __chkstk_darwin(v9);
  v51 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v50 = &v48 - v13;
  v14 = type metadata accessor for PommesContext.Source();
  v55 = *(v14 - 8);
  v15 = *(v55 + 64);
  __chkstk_darwin(v14);
  v54 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v48 - v19;
  v21 = type metadata accessor for NLContextUpdate();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v4 + direct field offset for ShareETAContextProvider.logObject);
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v49 = v4;
    *v28 = 0;
    _os_log_impl(&dword_0, v26, v27, "makeContextForConfirmIntent", v28, 2u);
    v4 = v49;
  }

  NLContextUpdate.init()();
  if (*(v4 + direct field offset for ShareETAContextProvider.isPOMMES) == 1)
  {
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v26, v29, "makeContextForConfirmIntent adding pommesContext", v30, 2u);
    }

    (*(v55 + 104))(v54, enum case for PommesContext.Source.pluginDefined(_:), v14);
    PommesContext.init(source:domain:listenAfterSpeaking:)();
    v31 = type metadata accessor for PommesContext();
    (*(*(v31 - 8) + 56))(v20, 0, 1, v31);
    NLContextUpdate.pommesContext.setter();
  }

  else if (*(v4 + direct field offset for ShareETAContextProvider.isUSO) == 1)
  {
    v54 = v8;
    v55 = v22;
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v26, v32, "makeContextForConfirmIntent adding uso context", v33, 2u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
    v34 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
    v35 = *(v34 + 72);
    v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    *(swift_allocObject() + 16) = xmmword_B89E0;
    v37 = type metadata accessor for UsoTaskBuilder_noVerb_common_Person();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    v40 = UsoTaskBuilder_noVerb_common_Person.init()();
    v41 = type metadata accessor for UsoEntityBuilder_common_Person();
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    swift_allocObject();
    UsoEntityBuilder_common_Person.init()();
    dispatch thunk of Uso_VerbTemplateBuilder_NoVerb.setEntity(value:)();
    v44 = v50;
    static Siri_Nlu_External_SystemPrompted.from(_:)(v40, v50);
    Siri_Nlu_External_SystemDialogAct.init()();
    v45 = v52;
    v46 = v53;
    (*(v52 + 16))(v51, v44, v53);
    Siri_Nlu_External_SystemDialogAct.prompted.setter();

    (*(v45 + 8))(v44, v46);
    NLContextUpdate.nluSystemDialogActs.setter();
    v8 = v54;
    v22 = v55;
  }

  NLContextUpdate.weightedPromptTargetDomain.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  NLContextUpdate.weightedPromptAbortValues.setter();
  NLContextUpdate.weightedPromptResponseTargets.setter();
  NLContextUpdate.weightedPromptResponseOptions.setter();
  (*(v22 + 16))(v8, v25, v21);
  (*(v22 + 56))(v8, 0, 1, v21);
  v56(v8);
  outlined destroy of Mirror.DisplayStyle?(v8, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  return (*(v22 + 8))(v25, v21);
}

uint64_t ShareETAContextProvider.makeNeedsDisambiguationContextFor(intent:parameter:resolutionResult:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v31 = a2;
  v32 = a3;
  v8 = type metadata accessor for Locale();
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v30 - v14;
  v16 = *(v6 + direct field offset for ShareETAContextProvider.logObject);
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "makeNeedsDisambiguationContextFor", v18, 2u);
  }

  v19 = [a4 disambiguationItems];
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = *(v20 + 16);

  if (v21 && (v22 = [a4 disambiguationItems], v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v22, v24 = specialized _arrayConditionalCast<A, B>(_:)(v23, &lazy cache variable for type metadata for INPerson, INPerson_ptr), , v24))
  {
    if (v31 == 0x6E65697069636572 && v32 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v25 = v6;
      (*(*v6 + class metadata base offset for ShareETAContextProvider + 32))(v35);
      __swift_project_boxed_opaque_existential_1(v35, v35[3]);
      dispatch thunk of DeviceState.siriLocale.getter();
      v26 = *(v6 + direct field offset for ShareETAContextProvider.isPOMMES);
      LODWORD(v25) = *(v25 + direct field offset for ShareETAContextProvider.isUSO);
      v27 = v34;

      specialized TypedDisambiguationItems.makeNLContextUpdate(locale:weightedPromptResponseTargets:isPommes:isUSO:_:)(v11, &outlined read-only object #0 of ShareETAContextProvider.makeNeedsDisambiguationContextFor(intent:parameter:resolutionResult:_:), v26, v25, v24, 0, v33, v27);

      (*(v30 + 8))(v11, v8);
      return __swift_destroy_boxed_opaque_existential_0Tm(v35);
    }

    else
    {
    }
  }

  else
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    v29 = type metadata accessor for NLContextUpdate();
    (*(*(v29 - 8) + 56))(v15, 1, 1, v29);
    v33(v15);
    return outlined destroy of Mirror.DisplayStyle?(v15, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  }
}

uint64_t ShareETAContextProvider.makeNeedsValueContextFor(intent:parameter:resolutionResult:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for PommesContext.Source();
  v32 = *(v11 - 8);
  v12 = *(v32 + 64);
  __chkstk_darwin(v11);
  v31 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v33 = &v30 - v16;
  v17 = type metadata accessor for NLContextUpdate();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v5 + direct field offset for ShareETAContextProvider.logObject);
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v30 = v5;
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v23, "makeNeedsValueContextFor", v24, 2u);
    v5 = v30;
  }

  NLContextUpdate.init()();
  if (*(v5 + direct field offset for ShareETAContextProvider.isPOMMES) == 1)
  {
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v22, v25, "makeNeedsValueContextFor adding pommesContext", v26, 2u);
    }

    (*(v32 + 104))(v31, enum case for PommesContext.Source.pluginDefined(_:), v11);
    v27 = v33;
    PommesContext.init(source:domain:listenAfterSpeaking:)();
    v28 = type metadata accessor for PommesContext();
    (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
    NLContextUpdate.pommesContext.setter();
  }

  NLContextUpdate.weightedPromptTargetDomain.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  NLContextUpdate.weightedPromptResponseTargets.setter();
  NLContextUpdate.weightedPromptAbortValues.setter();
  (*(v18 + 16))(v10, v21, v17);
  (*(v18 + 56))(v10, 0, 1, v17);
  a5(v10);
  outlined destroy of Mirror.DisplayStyle?(v10, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  return (*(v18 + 8))(v21, v17);
}

void ShareETAContextProvider.__ivar_destroyer()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + direct field offset for ShareETAContextProvider.currentDeviceState));
  v1 = *(v0 + direct field offset for ShareETAContextProvider.logObject);
}

uint64_t ShareETAContextProvider.deinit()
{
  v0 = DefaultNLContextProvider.deinit();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + direct field offset for ShareETAContextProvider.currentDeviceState));

  return v0;
}

uint64_t ShareETAContextProvider.__deallocating_deinit()
{
  v0 = DefaultNLContextProvider.deinit();
  v1 = direct field offset for ShareETAContextProvider.currentDeviceState;

  __swift_destroy_boxed_opaque_existential_0Tm((v2 + v1));
  v3 = *(v0 + direct field offset for ShareETAContextProvider.logObject);

  return swift_deallocClassInstance();
}

uint64_t ShareETAContextProvider.currentDeviceState.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return outlined init with copy of DeviceState(v2 + v4, a2);
}

uint64_t ShareETAContextProvider.currentDeviceState.setter(__int128 *a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v2 + v4));
  outlined init with take of CATType(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t ShareETATemplatingService.init(deviceState:)(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow25DucTemplatingLocalContextVSgMd, &_s11SiriKitFlow25DucTemplatingLocalContextVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v28 = &v27 - v6;
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = direct field offset for ShareETATemplatingService.catService;
  type metadata accessor for CATService();
  v13 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v13 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v13 + 32) = OS_os_log.init(subsystem:category:)();
  *(v2 + v12) = v13;
  *(v13 + 16) = 0;
  v15 = direct field offset for ShareETATemplatingService.logObject;
  v16 = OS_os_log.init(subsystem:category:)();
  *(v2 + v15) = v16;
  v17 = v16;
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "initializing", v19, 2u);
  }

  outlined init with copy of DeviceState(a1, v2 + direct field offset for ShareETATemplatingService.device);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v21 = Locale.identifier.getter();
  v23 = v22;
  (*(v8 + 8))(v11, v7);
  v31 = v21;
  v32 = v23;
  v29 = 45;
  v30 = 0xE100000000000000;
  v33 = 95;
  v34 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  static Device.current.getter();
  v24 = type metadata accessor for DucTemplatingLocalContext();
  (*(*(v24 - 8) + 56))(v28, 1, 1, v24);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21INIntentSlotValueTypeV_SSTt0gq5Tf4g_n(&_swiftEmptyArrayStorage);
  static AceService.current.getter();
  v25 = DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v25;
}

uint64_t ShareETATemplatingService.makeFailureHandlingIntentDialog(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + direct field offset for ShareETATemplatingService.logObject);
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "makeFailureHandlingIntentDialog", v11, 2u);
  }

  if (a3 && ((v12 = [a3 code], v12 == (&dword_C + 1)) || v12 == &dword_C))
  {
    v13 = *(v5 + direct field offset for ShareETATemplatingService.catService);
    v17 = type metadata accessor for ShareETA(0);
    v18 = &protocol witness table for ShareETA;
    __swift_allocate_boxed_opaque_existential_0(v16);
  }

  else
  {
    v13 = *(v5 + direct field offset for ShareETATemplatingService.catService);
    v17 = type metadata accessor for ShareETA(0);
    v18 = &protocol witness table for ShareETA;
    *__swift_allocate_boxed_opaque_existential_0(v16) = 0;
  }

  swift_storeEnumTagMultiPayload();
  v14 = static DialogHelper.globals.getter();
  (*(*v13 + 120))(v16, v14, a4, a5);

  return __swift_destroy_boxed_opaque_existential_0Tm(v16);
}

void ShareETATemplatingService.makeParameterValueUnsupportedDialog(app:parameterName:intentResolutionResult:intent:multicardinalValueIndex:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *), uint64_t a9)
{
  v38 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v37 - v14);
  v16 = type metadata accessor for Locale();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = *(v9 + direct field offset for ShareETATemplatingService.logObject);
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "makeParameterValueUnsupportedDialog", v20, 2u);
  }

  if ([a4 resolutionResultCode] != &dword_0 + 1)
  {
    goto LABEL_7;
  }

  v21 = [a4 unsupportedReason];
  static os_log_type_t.info.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_B89E0;
  *(v22 + 56) = &type metadata for Int;
  *(v22 + 64) = &protocol witness table for Int;
  *(v22 + 32) = v21;
  os_log(_:dso:log:_:_:)();

  if ((v21 - 1) < 3)
  {
    v23 = *(v9 + direct field offset for ShareETATemplatingService.catService);
    v41 = type metadata accessor for ShareETA(0);
    v42 = &protocol witness table for ShareETA;
    __swift_allocate_boxed_opaque_existential_0(v40);
LABEL_8:
    swift_storeEnumTagMultiPayload();
    v24 = static DialogHelper.globals.getter();
    (*(*v23 + 120))(v40, v24, v38, a9);

LABEL_9:
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    return;
  }

  if (v21 == &dword_4 + 1)
  {
LABEL_7:
    v23 = *(v9 + direct field offset for ShareETATemplatingService.catService);
    v41 = type metadata accessor for ShareETA(0);
    v42 = &protocol witness table for ShareETA;
    *__swift_allocate_boxed_opaque_existential_0(v40) = 0;
    goto LABEL_8;
  }

  v25 = [a5 recipients];
  if (v25)
  {
    v26 = v25;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v27 & 0xC000000000000001) != 0)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_14;
    }

    if (*(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)))
    {
      v28 = *(v27 + 32);
LABEL_14:
      v29 = v28;

      v30 = *(v9 + direct field offset for ShareETATemplatingService.catService);
      v41 = type metadata accessor for ShareETA(0);
      v42 = &protocol witness table for ShareETA;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v40);
      type metadata accessor for DialogPerson();
      v32 = v29;
      static Device.current.getter();
      __swift_project_boxed_opaque_existential_1(v39, v39[3]);
      dispatch thunk of DeviceState.siriLocale.getter();
      v33 = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      *boxed_opaque_existential_0 = v33;
      swift_storeEnumTagMultiPayload();
      v34 = static DialogHelper.globals.getter();
      (*(*v30 + 120))(v40, v34, v38, a9);

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    lazy protocol witness table accessor for type ShareETATemplatingService.ShareETATemplatingServiceError and conformance ShareETATemplatingService.ShareETATemplatingServiceError();
    v35 = swift_allocError();
    *v36 = 0xD000000000000017;
    v36[1] = 0x80000000000C1340;
    *v15 = v35;
    swift_storeEnumTagMultiPayload();
    v38(v15);
    outlined destroy of Mirror.DisplayStyle?(v15, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }
}

uint64_t ShareETATemplatingService.makeParameterPromptDialog(app:parameterName:intent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(v6 + direct field offset for ShareETATemplatingService.logObject);
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "makeParameterPromptDialog", v11, 2u);
  }

  v12 = *(v6 + direct field offset for ShareETATemplatingService.catService);
  v19[3] = type metadata accessor for ShareETA(0);
  v19[4] = &protocol witness table for ShareETA;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSb16directInvocation_11SiriKitFlow21BehaviorAfterSpeakingO09behaviourgH0tMd, &_sSb16directInvocation_11SiriKitFlow21BehaviorAfterSpeakingO09behaviourgH0tMR) + 48);
  *boxed_opaque_existential_0 = 0;
  v15 = enum case for BehaviorAfterSpeaking.listen(_:);
  v16 = type metadata accessor for BehaviorAfterSpeaking();
  (*(*(v16 - 8) + 104))(boxed_opaque_existential_0 + v14, v15, v16);
  swift_storeEnumTagMultiPayload();
  v17 = static DialogHelper.globals.getter();
  (*(*v12 + 120))(v19, v17, a5, a6);

  return __swift_destroy_boxed_opaque_existential_0Tm(v19);
}

void ShareETATemplatingService.makeIntentHandledDialog(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v36 - v11);
  v13 = type metadata accessor for Locale();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = *(v5 + direct field offset for ShareETATemplatingService.logObject);
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_0, v15, v16, "makeIntentHandledDialog", v17, 2u);
  }

  if (!a3)
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    lazy protocol witness table accessor for type ShareETATemplatingService.ShareETATemplatingServiceError and conformance ShareETATemplatingService.ShareETATemplatingServiceError();
    v26 = swift_allocError();
    *v27 = 0xD000000000000015;
    v27[1] = 0x80000000000C1360;
    *v12 = v26;
    swift_storeEnumTagMultiPayload();
    a4(v12);
LABEL_13:
    outlined destroy of Mirror.DisplayStyle?(v12, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
    return;
  }

  v18 = a3;
  v19 = [v18 recipients];
  if (!v19)
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    lazy protocol witness table accessor for type ShareETATemplatingService.ShareETATemplatingServiceError and conformance ShareETATemplatingService.ShareETATemplatingServiceError();
    v28 = swift_allocError();
    *v29 = 0xD000000000000017;
    v29[1] = 0x80000000000C1340;
    *v12 = v28;
    swift_storeEnumTagMultiPayload();
    a4(v12);

    goto LABEL_13;
  }

  v20 = v19;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }

    v22 = *(v21 + 32);
  }

  v23 = v22;

  v24 = [v18 mediums];
  v38 = a5;
  v39 = a4;
  if ((v24 & 4) != 0)
  {
    v25 = 3;
  }

  else if (([v18 mediums] & 8) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = ([v18 mediums] >> 1) & 1;
  }

  v37 = v25;
  v30 = *(v5 + direct field offset for ShareETATemplatingService.catService);
  v41[3] = type metadata accessor for ShareETA(0);
  v41[4] = &protocol witness table for ShareETA;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v41);
  type metadata accessor for DialogPerson();
  v32 = v23;
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  dispatch thunk of DeviceState.siriLocale.getter();
  v33 = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v40);
  *boxed_opaque_existential_0 = 0;
  v34 = v37;
  boxed_opaque_existential_0[1] = v33;
  boxed_opaque_existential_0[2] = v34;
  swift_storeEnumTagMultiPayload();
  v35 = static DialogHelper.globals.getter();
  (*(*v30 + 120))(v41, v35, v39, v38);

  __swift_destroy_boxed_opaque_existential_0Tm(v41);
}

void ShareETATemplatingService.makeIntentConfirmationDialog(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v27[-1] - v11);
  v13 = *(v5 + direct field offset for ShareETATemplatingService.logObject);
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "makeIntentConfirmationDialog", v15, 2u);
  }

  if (a3)
  {
    v26 = a3;
    if ([v26 code] == &dword_0 + 2)
    {
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_0, v13, v16, "intent needs confirmation", v17, 2u);
      }

      v18 = *(v5 + direct field offset for ShareETATemplatingService.catService);
      v27[3] = type metadata accessor for ShareETA(0);
      v27[4] = &protocol witness table for ShareETA;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v27);
      v20 = enum case for BehaviorAfterSpeaking.listen(_:);
      v21 = type metadata accessor for BehaviorAfterSpeaking();
      (*(*(v21 - 8) + 104))(boxed_opaque_existential_0, v20, v21);
      swift_storeEnumTagMultiPayload();
      v22 = static DialogHelper.globals.getter();
      (*(*v18 + 120))(v27, v22, a4, a5);

      __swift_destroy_boxed_opaque_existential_0Tm(v27);
    }

    else
    {
      v25 = v26;
    }
  }

  else
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    lazy protocol witness table accessor for type ShareETATemplatingService.ShareETATemplatingServiceError and conformance ShareETATemplatingService.ShareETATemplatingServiceError();
    v23 = swift_allocError();
    *v24 = 0xD000000000000015;
    v24[1] = 0x80000000000C1360;
    *v12 = v23;
    swift_storeEnumTagMultiPayload();
    a4(v12);
    outlined destroy of Mirror.DisplayStyle?(v12, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }
}

uint64_t ShareETATemplatingService.makeIntentConfirmationCancelledDialog(app:intent:intentResponse:_:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v27[-1] - v11);
  v13 = *(v5 + direct field offset for ShareETATemplatingService.logObject);
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v13, v14, "makeIntentConfirmationCancelledDialog", v15, 2u);
  }

  if (a3)
  {
    v16 = a3;
    static os_log_type_t.info.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_B89E0;
    *(v17 + 56) = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INShareETAIntentResponse, INShareETAIntentResponse_ptr);
    *(v17 + 64) = lazy protocol witness table accessor for type INShareETAIntentResponse and conformance NSObject();
    *(v17 + 32) = v16;
    v18 = v16;
    os_log(_:dso:log:_:_:)();

    if (([v18 mediums] & 4) != 0)
    {
      v19 = 3;
    }

    else if (([v18 mediums] & 8) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = ([v18 mediums] >> 1) & 1;
    }

    v23 = *(v5 + direct field offset for ShareETATemplatingService.catService);
    v27[3] = type metadata accessor for ShareETA(0);
    v27[4] = &protocol witness table for ShareETA;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v27);
    *boxed_opaque_existential_0 = 0;
    boxed_opaque_existential_0[1] = v19;
    swift_storeEnumTagMultiPayload();
    v25 = static DialogHelper.globals.getter();
    (*(*v23 + 120))(v27, v25, a4, a5);

    return __swift_destroy_boxed_opaque_existential_0Tm(v27);
  }

  else
  {
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    lazy protocol witness table accessor for type ShareETATemplatingService.ShareETATemplatingServiceError and conformance ShareETATemplatingService.ShareETATemplatingServiceError();
    v20 = swift_allocError();
    *v21 = 0xD000000000000015;
    v21[1] = 0x80000000000C1360;
    *v12 = v20;
    swift_storeEnumTagMultiPayload();
    a4(v12);
    return outlined destroy of Mirror.DisplayStyle?(v12, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }
}

uint64_t *ShareETATemplatingService.makeParameterValueDisambiguationDialog(app:parameterName:intentResolutionResult:disambiguationList:deviceIsLocked:intent:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = type metadata accessor for Locale();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  static os_log_type_t.info.getter();
  v14 = *(v9 + direct field offset for ShareETATemplatingService.logObject);
  os_log(_:dso:log:_:_:)();
  v15 = [a4 disambiguationItems];
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = specialized _arrayConditionalCast<A, B>(_:)(v16, &lazy cache variable for type metadata for INPerson, INPerson_ptr);

  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = &_swiftEmptyArrayStorage;
  }

  v19 = *(v9 + direct field offset for ShareETATemplatingService.catService);
  v30[3] = type metadata accessor for ShareETA(0);
  v30[4] = &protocol witness table for ShareETA;
  result = __swift_allocate_boxed_opaque_existential_0(v30);
  v21 = result;
  v28 = a8;
  if ((v18 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
  {
    v22 = *(v18 + 32);
LABEL_7:

    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine0B6PersonC9recipient_0A7KitFlow21BehaviorAfterSpeakingO09behaviouriJ0tMd, &_s16SiriDialogEngine0B6PersonC9recipient_0A7KitFlow21BehaviorAfterSpeakingO09behaviouriJ0tMR) + 48);
    type metadata accessor for DialogPerson();
    static Device.current.getter();
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    dispatch thunk of DeviceState.siriLocale.getter();
    v24 = DialogPerson.__allocating_init(namedPerson:locale:useConversationalName:)();
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    *v21 = v24;
    v25 = enum case for BehaviorAfterSpeaking.listen(_:);
    v26 = type metadata accessor for BehaviorAfterSpeaking();
    (*(*(v26 - 8) + 104))(v21 + v23, v25, v26);
    swift_storeEnumTagMultiPayload();
    v27 = static DialogHelper.globals.getter();
    (*(*v19 + 120))(v30, v27, v28, a9);

    return __swift_destroy_boxed_opaque_existential_0Tm(v30);
  }

  __break(1u);
  return result;
}

uint64_t ShareETATemplatingService.__ivar_destroyer()
{
  v1 = *(v0 + direct field offset for ShareETATemplatingService.catService);

  return __swift_destroy_boxed_opaque_existential_0Tm((v0 + direct field offset for ShareETATemplatingService.device));
}

uint64_t ShareETATemplatingService.deinit()
{
  v0 = DucTemplatingService.deinit();
  v1 = *(v0 + direct field offset for ShareETATemplatingService.catService);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + direct field offset for ShareETATemplatingService.device));
  return v0;
}

uint64_t ShareETATemplatingService.__deallocating_deinit()
{
  v0 = DucTemplatingService.deinit();
  v1 = *(v0 + direct field offset for ShareETATemplatingService.catService);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + direct field offset for ShareETATemplatingService.device));

  return swift_deallocClassInstance();
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
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

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
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
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
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
          lazy protocol witness table accessor for type [SAAceView] and conformance [A]();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
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
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for SAAceView, SAAceView_ptr);
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

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

unint64_t specialized Sharing_Medium.init(rawValue:)(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent()
{
  result = lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent;
  if (!lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent)
  {
    type metadata accessor for LocationSearchIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShareETATemplatingService.ShareETATemplatingServiceError and conformance ShareETATemplatingService.ShareETATemplatingServiceError()
{
  result = lazy protocol witness table cache variable for type ShareETATemplatingService.ShareETATemplatingServiceError and conformance ShareETATemplatingService.ShareETATemplatingServiceError;
  if (!lazy protocol witness table cache variable for type ShareETATemplatingService.ShareETATemplatingServiceError and conformance ShareETATemplatingService.ShareETATemplatingServiceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShareETATemplatingService.ShareETATemplatingServiceError and conformance ShareETATemplatingService.ShareETATemplatingServiceError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type INShareETAIntentResponse and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type INShareETAIntentResponse and conformance NSObject;
  if (!lazy protocol witness table cache variable for type INShareETAIntentResponse and conformance NSObject)
  {
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for INShareETAIntentResponse, INShareETAIntentResponse_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INShareETAIntentResponse and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Sharing_Medium and conformance Sharing_Medium()
{
  result = lazy protocol witness table cache variable for type Sharing_Medium and conformance Sharing_Medium;
  if (!lazy protocol witness table cache variable for type Sharing_Medium and conformance Sharing_Medium)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Sharing_Medium and conformance Sharing_Medium);
  }

  return result;
}

uint64_t sub_41A20@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for ShareETAFlowDelegate + 40))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_41AF0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for ShareETAFlowDelegate + 64))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_41BC0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + class metadata base offset for ShareETAFlowDelegate + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_41C28(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *(**a2 + class metadata base offset for ShareETAFlowDelegate + 104);

  return v3(v4);
}

uint64_t getEnumTagSinglePayload for Sharing_Medium(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Sharing_Medium(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShareETATemplatingService.ShareETATemplatingServiceError(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for ShareETATemplatingService.ShareETATemplatingServiceError(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SAAceView] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SAAceView] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SAAceView] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo9SAAceViewCGMd, &_sSaySo9SAAceViewCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SAAceView] and conformance [A]);
  }

  return result;
}

uint64_t key path setter for DeleteParkingLocationBaseFlow.flowState : DeleteParkingLocationBaseFlow(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeleteParkingLocationBaseFlow.State(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DeleteParkingLocationBaseFlow.State(a1, v7);
  return (*(**a2 + 120))(v7);
}

uint64_t DeleteParkingLocationBaseFlow.flowState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_flowState;
  swift_beginAccess();
  return outlined init with copy of DeleteParkingLocationBaseFlow.State(v1 + v3, a1);
}

uint64_t outlined init with copy of DeleteParkingLocationBaseFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeleteParkingLocationBaseFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DeleteParkingLocationBaseFlow.flowState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_flowState;
  swift_beginAccess();
  outlined assign with take of DeleteParkingLocationBaseFlow.State(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of DeleteParkingLocationBaseFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeleteParkingLocationBaseFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t DeleteParkingLocationBaseFlow.flowHelper.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_flowHelper;
  swift_beginAccess();
  return outlined init with copy of DeviceState(v1 + v3, a1);
}

uint64_t DeleteParkingLocationBaseFlow.flowHelper.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_flowHelper;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + v3));
  outlined init with take of CATType(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t DeleteParkingLocationBaseFlow.isPOMMES.getter()
{
  v1 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_isPOMMES;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DeleteParkingLocationBaseFlow.isPOMMES.setter(char a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_isPOMMES;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DeleteParkingLocationBaseFlow.__allocating_init(flowHelper:intent:)(uint64_t *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = specialized DeleteParkingLocationBaseFlow.__allocating_init(flowHelper:intent:)(v7, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t DeleteParkingLocationBaseFlow.init(flowHelper:intent:)(uint64_t *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = specialized DeleteParkingLocationBaseFlow.init(flowHelper:intent:)(v10, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v12;
}

uint64_t DeleteParkingLocationBaseFlow.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DeleteParkingLocationBaseFlow.State(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(*v1 + 112))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      *a1 = *v7;
      *(a1 + 8) = 0;
      v9 = enum case for RCHFlowResult.error<A, B>(_:);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo29INDeleteParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo29INDeleteParkingLocationIntentCSo0fghI8ResponseCGMR);
      return (*(*(v10 - 8) + 104))(a1, v9, v10);
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo29INDeleteParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo29INDeleteParkingLocationIntentCSo0fghI8ResponseCGMR);
      return (*(*(v16 - 8) + 32))(a1, v7, v16);
    }
  }

  else
  {
    lazy protocol witness table accessor for type Errors and conformance Errors();
    v12 = swift_allocError();
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 3;
    *a1 = v12;
    *(a1 + 8) = 0;
    v14 = enum case for RCHFlowResult.error<A, B>(_:);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo29INDeleteParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo29INDeleteParkingLocationIntentCSo0fghI8ResponseCGMR);
    (*(*(v15 - 8) + 104))(a1, v14, v15);
    return outlined destroy of DeleteParkingLocationBaseFlow.State(v7);
  }
}

uint64_t DeleteParkingLocationBaseFlow.onInput(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Input();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Parse();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v10 + 96))(v13, v9);
    v15 = *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, "vp") + 48)];

    v16 = v2[2];
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "DeleteParkingLocationBaseFlow onInput returns true for NLv3IntentPlusServerConversion.", v18, 2u);
    }

    v19 = type metadata accessor for NLIntent();
    (*(*(v19 - 8) + 8))(v13, v19);
    return 1;
  }

  else if (v14 == enum case for Parse.pommesResponse(_:))
  {
    (*(v10 + 8))(v13, v9);
    (*(*v2 + 168))(1);
    v21 = v2[2];
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    result = 1;
    if (v23)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v21, v22, "DeleteParkingLocationBaseFlow onInput returns true for Pommes response.", v24, 2u);

      return 1;
    }
  }

  else
  {
    v25 = v2[2];
    (*(v5 + 16))(v8, a1, v4);
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v35 = v25;
      v28 = v27;
      v34 = swift_slowAlloc();
      v36 = v34;
      *v28 = 136315138;
      v29 = Input.description.getter();
      v31 = v30;
      (*(v5 + 8))(v8, v4);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v36);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_0, v35, v26, "SiriGeo currently doesn't support parse type: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
    }

    else
    {
      (*(v5 + 8))(v8, v4);
    }

    (*(v10 + 8))(v13, v9);
    return 0;
  }

  return result;
}

uint64_t DeleteParkingLocationBaseFlow.executeState()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo29INDeleteParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo29INDeleteParkingLocationIntentCSo0fghI8ResponseCGMR);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for DeleteParkingLocationBaseFlow.State(0);
  v2[10] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();

  return _swift_task_switch(DeleteParkingLocationBaseFlow.executeState(), 0, 0);
}

uint64_t DeleteParkingLocationBaseFlow.executeState()()
{
  v58 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  (*(**(v0 + 32) + 112))();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = *(v0 + 88);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = *(v0 + 32);
      v6 = *v4;
      v7 = static os_log_type_t.error.getter();
      v8 = *(v5 + 16);
      if (os_log_type_enabled(v8, v7))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v57 = v10;
        *v9 = 136315138;
        *(v0 + 16) = v6;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v11 = String.init<A>(describing:)();
        v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v57);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_0, v8, v7, "DeleteParkingLocationBaseFlow execute requestUnsupported with error %s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v10);
      }

      v14 = *(v0 + 24);
      static ExecuteResponse.complete()();
    }

    else
    {
      v27 = *(v0 + 64);
      v26 = *(v0 + 72);
      v28 = *(v0 + 40);
      v29 = *(v0 + 48);
      v30 = *(v0 + 32);
      (*(v29 + 32))(v26, v4, v28);
      v31 = static os_log_type_t.info.getter();
      v32 = *(v30 + 16);
      v33 = *(v29 + 16);
      v33(v27, v26, v28);
      v34 = os_log_type_enabled(v32, v31);
      v35 = *(v0 + 64);
      if (v34)
      {
        v56 = v31;
        v36 = *(v0 + 48);
        v37 = *(v0 + 56);
        v38 = *(v0 + 40);
        v39 = swift_slowAlloc();
        log = v32;
        v40 = swift_slowAlloc();
        v57 = v40;
        *v39 = 136315138;
        v33(v37, v35, v38);
        v41 = String.init<A>(describing:)();
        v43 = v42;
        v44 = *(v36 + 8);
        v44(v35, v38);
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v57);

        *(v39 + 4) = v45;
        _os_log_impl(&dword_0, log, v56, "DeleteParkingLocationBaseFlow execute rchComplete with result %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v40);
      }

      else
      {
        v44 = *(*(v0 + 48) + 8);
        v44(*(v0 + 64), *(v0 + 40));
      }

      v46 = *(v0 + 72);
      v47 = *(v0 + 40);
      v48 = *(v0 + 24);
      static ExecuteResponse.complete()();
      v44(v46, v47);
    }

    v49 = *(v0 + 88);
    v50 = *(v0 + 64);
    v51 = *(v0 + 72);
    v52 = *(v0 + 56);

    v53 = *(v0 + 8);

    return v53();
  }

  else
  {
    v15 = *(v0 + 32);
    v16 = *v4;
    *(v0 + 96) = *v4;
    v17 = *(v15 + 16);
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_0, v17, v18, "DeleteParkingLocationBaseFlow execute state handle.", v19, 2u);
    }

    v20 = *(**(v0 + 32) + 216);
    v55 = (v20 + *v20);
    v21 = v20[1];
    v22 = swift_task_alloc();
    *(v0 + 104) = v22;
    *v22 = v0;
    v22[1] = DeleteParkingLocationBaseFlow.executeState();
    v23 = *(v0 + 24);
    v24 = *(v0 + 32);

    return v55(v23, v16);
  }
}

{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return _swift_task_switch(DeleteParkingLocationBaseFlow.executeState(), 0, 0);
}

{

  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t DeleteParkingLocationBaseFlow.makeRCHFlow(intent:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo29INDeleteParkingLocationIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo29INDeleteParkingLocationIntentCSo0ghiJ8ResponseCGMR);
  v3[22] = v4;
  v5 = *(v4 - 8);
  v3[23] = v5;
  v6 = *(v5 + 64) + 15;
  v3[24] = swift_task_alloc();

  return _swift_task_switch(DeleteParkingLocationBaseFlow.makeRCHFlow(intent:), 0, 0);
}

uint64_t DeleteParkingLocationBaseFlow.makeRCHFlow(intent:)()
{
  v1 = *(*(v0 + 168) + 16);
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "DeleteParkingLocationBaseFlow makeRCHflow.", v3, 2u);
  }

  v4 = *(v0 + 192);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v26 = *(v0 + 160);
  v27 = *(v0 + 152);
  v28 = *(v0 + 184);
  static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INDeleteParkingLocationIntent, INDeleteParkingLocationIntent_ptr);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INDeleteParkingLocationIntentResponse, INDeleteParkingLocationIntentResponse_ptr);
  RCHChildFlowProducersAsync.init()();
  v7 = type metadata accessor for App();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v25 = App.init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)();
  static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B>(app:)();
  v24 = v5;
  v22 = v4;
  v10 = RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  v23 = *(*v6 + 136);
  (v23)(v10);
  type metadata accessor for DeleteParkingHandleIntentStrategy();
  v11 = swift_allocObject();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v11 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType((v0 + 16), v11 + 24);
  *(v11 + 64) = 0;
  *(v0 + 136) = v11;
  lazy protocol witness table accessor for type DeleteParkingHandleIntentStrategy and conformance DeleteParkingHandleIntentStrategy(&lazy protocol witness table cache variable for type DeleteParkingHandleIntentStrategy and conformance DeleteParkingHandleIntentStrategy, type metadata accessor for DeleteParkingHandleIntentStrategy);
  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();

  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  v12 = type metadata accessor for DeleteParkingBaseRCHStrategy();
  v13 = swift_allocObject();
  *(v13 + 16) = OS_os_log.init(subsystem:category:)();
  v23();
  v15 = *(v0 + 80);
  v14 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v15);
  (*(v14 + 56))(v15, v14);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v16 = *(v0 + 120);
  v17 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v16);
  *(v0 + 144) = v13;
  v18 = *(v17 + 8);
  v19 = lazy protocol witness table accessor for type DeleteParkingHandleIntentStrategy and conformance DeleteParkingHandleIntentStrategy(&lazy protocol witness table cache variable for type DeleteParkingBaseRCHStrategy and conformance DeleteParkingBaseRCHStrategy, type metadata accessor for DeleteParkingBaseRCHStrategy);
  v18(v0 + 144, v22, v25, v26, v12, v19, v16, v17);

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();

  (*(v28 + 8))(v22, v24);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));

  v20 = *(v0 + 8);

  return v20();
}

uint64_t closure #1 in DeleteParkingLocationBaseFlow.makeRCHFlow(intent:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeleteParkingLocationBaseFlow.State(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo29INDeleteParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo29INDeleteParkingLocationIntentCSo0fghI8ResponseCGMR);
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  swift_storeEnumTagMultiPayload();
  return (*(*a2 + 120))(v7);
}

uint64_t DeleteParkingLocationBaseFlow.deinit()
{
  outlined destroy of DeleteParkingLocationBaseFlow.State(v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_flowState);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_flowHelper));
  return v0;
}

uint64_t DeleteParkingLocationBaseFlow.__deallocating_deinit()
{
  outlined destroy of DeleteParkingLocationBaseFlow.State(v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_flowState);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_flowHelper));
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for FSMFlow.executeState() in conformance DeleteParkingLocationBaseFlow(uint64_t a1)
{
  v4 = *(**v1 + 208);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1);
}

uint64_t protocol witness for Flow.on(input:) in conformance DeleteParkingLocationBaseFlow(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.on(input:)(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.execute(completion:) in conformance DeleteParkingLocationBaseFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.execute(completion:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for Flow.execute() in conformance DeleteParkingLocationBaseFlow(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return FSMFlow.execute()(a1, a2, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DeleteParkingLocationBaseFlow(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.description.getter(a1, WitnessTable);
}

uint64_t specialized DeleteParkingLocationBaseFlow.init(flowHelper:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v11);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a1, a4);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(a3 + 16) = OS_os_log.init(subsystem:category:)();
  *(a3 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_isPOMMES) = 0;
  outlined init with take of CATType(&v11, a3 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_flowHelper);
  *(a3 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin29DeleteParkingLocationBaseFlow_flowState) = a2;
  type metadata accessor for DeleteParkingLocationBaseFlow.State(0);
  swift_storeEnumTagMultiPayload();
  return a3;
}

uint64_t specialized DeleteParkingLocationBaseFlow.__allocating_init(flowHelper:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DeleteParkingLocationBaseFlow(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  (*(v9 + 16))(v12, a1, a4);
  return specialized DeleteParkingLocationBaseFlow.init(flowHelper:intent:)(v12, a2, v16, a4, a5);
}

uint64_t outlined destroy of DeleteParkingLocationBaseFlow.State(uint64_t a1)
{
  v2 = type metadata accessor for DeleteParkingLocationBaseFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type DeleteParkingHandleIntentStrategy and conformance DeleteParkingHandleIntentStrategy(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t instantiation function for generic protocol witness table for DeleteParkingLocationBaseFlow(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type DeleteParkingHandleIntentStrategy and conformance DeleteParkingHandleIntentStrategy(&lazy protocol witness table cache variable for type DeleteParkingLocationBaseFlow and conformance DeleteParkingLocationBaseFlow, type metadata accessor for DeleteParkingLocationBaseFlow);
  result = lazy protocol witness table accessor for type DeleteParkingHandleIntentStrategy and conformance DeleteParkingHandleIntentStrategy(&lazy protocol witness table cache variable for type DeleteParkingLocationBaseFlow and conformance DeleteParkingLocationBaseFlow, type metadata accessor for DeleteParkingLocationBaseFlow);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_4463C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result & 1;
  return result;
}

uint64_t type metadata completion function for DeleteParkingLocationBaseFlow()
{
  result = type metadata accessor for DeleteParkingLocationBaseFlow.State(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void type metadata completion function for DeleteParkingLocationBaseFlow.State()
{
  type metadata accessor for OS_os_log(319, &lazy cache variable for type metadata for INDeleteParkingLocationIntent, INDeleteParkingLocationIntent_ptr);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Error();
    if (v1 <= 0x3F)
    {
      type metadata accessor for RCHFlowResult<INDeleteParkingLocationIntent, INDeleteParkingLocationIntentResponse>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for RCHFlowResult<INDeleteParkingLocationIntent, INDeleteParkingLocationIntentResponse>()
{
  if (!lazy cache variable for type metadata for RCHFlowResult<INDeleteParkingLocationIntent, INDeleteParkingLocationIntentResponse>)
  {
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for INDeleteParkingLocationIntent, INDeleteParkingLocationIntent_ptr);
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for INDeleteParkingLocationIntentResponse, INDeleteParkingLocationIntentResponse_ptr);
    v0 = type metadata accessor for RCHFlowResult();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RCHFlowResult<INDeleteParkingLocationIntent, INDeleteParkingLocationIntentResponse>);
    }
  }
}

uint64_t GeoFeatureFlags.isAltimeterEnabled.getter()
{
  v2[3] = &type metadata for SiriGeoFeature;
  v2[4] = lazy protocol witness table accessor for type SiriGeoFeature and conformance SiriGeoFeature();
  LOBYTE(v2[0]) = 1;
  v0 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  return v0 & 1;
}

unint64_t lazy protocol witness table accessor for type SiriGeoFeature and conformance SiriGeoFeature()
{
  result = lazy protocol witness table cache variable for type SiriGeoFeature and conformance SiriGeoFeature;
  if (!lazy protocol witness table cache variable for type SiriGeoFeature and conformance SiriGeoFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriGeoFeature and conformance SiriGeoFeature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriGeoFeature and conformance SiriGeoFeature;
  if (!lazy protocol witness table cache variable for type SiriGeoFeature and conformance SiriGeoFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriGeoFeature and conformance SiriGeoFeature);
  }

  return result;
}

const char *SiriGeoFeature.feature.getter(char a1)
{
  if (a1)
  {
    return "Altimeter";
  }

  else
  {
    return "placeHolder";
  }
}

const char *protocol witness for FeatureFlagsKey.feature.getter in conformance SiriGeoFeature()
{
  if (*v0)
  {
    return "Altimeter";
  }

  else
  {
    return "placeHolder";
  }
}

uint64_t GeoDataModels.ContactDisambiguationDataModel.systemText.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t GeoDataModels.ContactDisambiguationDataModel.candidates.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t _s21GeoFlowDelegatePlugin0A10DataModelsO021TrafficDisambiguationE5ModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOs0J3KeyAAsAIP11stringValueSSvgTW_0()
{
  if (*v0)
  {
    result = 0x74616469646E6163;
  }

  else
  {
    result = 0x65546D6574737973;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GeoDataModels.ContactDisambiguationDataModel.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO021ContactDisambiguationH5ModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO021ContactDisambiguationH5ModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21GeoFlowDelegatePlugin0A7ContactVGMd, &_sSay21GeoFlowDelegatePlugin0A7ContactVGMR);
    lazy protocol witness table accessor for type [GeoContact] and conformance <A> [A](&lazy protocol witness table cache variable for type [GeoContact] and conformance <A> [A], &lazy protocol witness table cache variable for type GeoContact and conformance GeoContact);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys);
  }

  return result;
}

uint64_t GeoDataModels.ParkingLocationDataModel.buttonLabel.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

void __swiftcall GeoDataModels.ParkingLocationDataModel.init(parkedCar:buttonLabel:)(GeoFlowDelegatePlugin::GeoDataModels::ParkingLocationDataModel *__return_ptr retstr, GeoFlowDelegatePlugin::GeoParkedCar *parkedCar, Swift::String buttonLabel)
{
  localizedAddress = parkedCar->localizedAddress;
  retstr->parkedCar.note = parkedCar->note;
  retstr->parkedCar.localizedAddress = localizedAddress;
  v4 = *&parkedCar->locationInfo.latitude;
  retstr->parkedCar.locationInfo.label = parkedCar->locationInfo.label;
  *&retstr->parkedCar.locationInfo.latitude = v4;
  retstr->buttonLabel = buttonLabel;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance GeoDataModels.ParkingLocationDataModel.CodingKeys()
{
  if (*v0)
  {
    result = 0x614C6E6F74747562;
  }

  else
  {
    result = 0x614364656B726170;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoDataModels.ParkingLocationDataModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x614364656B726170 && a2 == 0xE900000000000072;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x614C6E6F74747562 && a2 == 0xEB000000006C6562)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.ParkingLocationDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.ParkingLocationDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GeoDataModels.ParkingLocationDataModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO015ParkingLocationH5ModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO015ParkingLocationH5ModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[2];
  v26 = v3[1];
  v27 = v12;
  v13 = v3[2];
  v28 = v3[3];
  v21 = v11;
  v22 = v26;
  v14 = *v3;
  v23 = v13;
  v24 = v3[3];
  v25 = v14;
  v20 = 0;
  outlined init with copy of GeoParkedCar(&v25, v19);
  lazy protocol witness table accessor for type GeoParkedCar and conformance GeoParkedCar();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v19[0] = v21;
  v19[1] = v22;
  v19[2] = v23;
  v19[3] = v24;
  outlined destroy of GeoParkedCar(v19);
  if (!v2)
  {
    v15 = *(v3 + 8);
    v16 = *(v3 + 9);
    v18[15] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 GeoDataModels.ParkingLocationDataModel.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized GeoDataModels.ParkingLocationDataModel.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0x65546D6574737973 && a2 == 0xEA00000000007478 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x74616469646E6163 && a2 == 0xEA00000000007365)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GeoDataModels.TrafficDisambiguationDataModel.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO021TrafficDisambiguationH5ModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO021TrafficDisambiguationH5ModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21GeoFlowDelegatePlugin0A15TrafficIncidentVGMd, &_sSay21GeoFlowDelegatePlugin0A15TrafficIncidentVGMR);
    lazy protocol witness table accessor for type [GeoTrafficIncident] and conformance <A> [A](&lazy protocol witness table cache variable for type [GeoTrafficIncident] and conformance <A> [A], lazy protocol witness table accessor for type GeoTrafficIncident and conformance GeoTrafficIncident);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t GeoDataModels.ContactDisambiguationDataModel.init(from:)(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance GeoDataModels.ContactDisambiguationDataModel@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t GeoParkedCar.note.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RuntimeError.debugDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t GeoParkedCar.label.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

double GeoDataModels.WhereAmIDataModel.currentLocation.getter()
{
  v1 = *(v0 + 6);
  v2 = *(v0 + 7);
  v3 = v0[8];
  v4 = *(v0 + 9);

  return v3;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance GeoDataModels.WhereAmIDataModel.CodingKeys()
{
  v1 = 1145660781;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x4C746E6572727563;
  }

  if (*v0)
  {
    v1 = 0x614C6E6F74747562;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoDataModels.WhereAmIDataModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized GeoDataModels.WhereAmIDataModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.WhereAmIDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.WhereAmIDataModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GeoDataModels.WhereAmIDataModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO17WhereAmIDataModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO17WhereAmIDataModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v20) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v20) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v20) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = *(v3 + 4);
    v20 = *(v3 + 3);
    v21 = v17;
    v19[15] = 3;
    lazy protocol witness table accessor for type StandardMapData and conformance StandardMapData();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 GeoDataModels.WhereAmIDataModel.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  specialized GeoDataModels.WhereAmIDataModel.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

void __swiftcall GeoDataModels.WhereAmIDataModel.init(meID:buttonLabel:localizedAddress:currentLocation:)(GeoFlowDelegatePlugin::GeoDataModels::WhereAmIDataModel *__return_ptr retstr, Swift::String_optional meID, Swift::String buttonLabel, Swift::String_optional localizedAddress, GeoFlowDelegatePlugin::StandardMapData currentLocation)
{
  retstr->meID = meID;
  retstr->buttonLabel = buttonLabel;
  retstr->localizedAddress = localizedAddress;
  retstr->currentLocation = currentLocation;
}

uint64_t GeoDataModels.snippetHidden(for:idiom:)()
{
  v1 = type metadata accessor for DeviceIdiom();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 80) | 2) == 2)
  {
    v7 = 0;
  }

  else
  {
    v8 = v4;
    (*(v2 + 104))(v6, enum case for DeviceIdiom.car(_:), v4);
    v7 = static DeviceIdiom.== infix(_:_:)();
    (*(v2 + 8))(v6, v8);
  }

  return v7 & 1;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance GeoDataModels.CodingKeys()
{
  v1 = 0x4C676E696B726170;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0x496D416572656877;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoDataModels.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized GeoDataModels.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.ContactDisambiguationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.ContactDisambiguationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.ParkingLocationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.ParkingLocationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.TrafficDisambiguationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.TrafficDisambiguationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GeoDataModels.ContactDisambiguationCodingKeys()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GeoDataModels.ContactDisambiguationCodingKeys()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoDataModels.ContactDisambiguationCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoDataModels.WhereAmICodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoDataModels.WhereAmICodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GeoDataModels.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO18WhereAmICodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO18WhereAmICodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  __chkstk_darwin(v4);
  v39 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO31TrafficDisambiguationCodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO31TrafficDisambiguationCodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  __chkstk_darwin(v7);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO25ParkingLocationCodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO25ParkingLocationCodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v35 = *(v11 - 8);
  v36 = v11;
  v12 = *(v35 + 64);
  __chkstk_darwin(v11);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO31ContactDisambiguationCodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO31ContactDisambiguationCodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v34 = *(v15 - 8);
  v16 = *(v34 + 64);
  __chkstk_darwin(v15);
  v18 = &v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v42 = *(v19 - 8);
  v43 = v19;
  v20 = *(v42 + 64);
  __chkstk_darwin(v19);
  v22 = &v34 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (*(v2 + 80) <= 1u)
  {
    if (!*(v2 + 80))
    {
      LOBYTE(v44) = 0;
      lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys();
      v24 = v43;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v44 = *v2;
      *&v45 = *(v2 + 2);
      lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v34 + 8))(v18, v15);
      return (*(v42 + 8))(v22, v24);
    }

    LOBYTE(v44) = 1;
    lazy protocol witness table accessor for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys();
    v26 = v43;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v28 = v2[3];
    v46 = v2[2];
    v47 = v28;
    v48 = v2[4];
    v29 = v2[1];
    v44 = *v2;
    v45 = v29;
    lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel();
    v30 = v36;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v31 = v35;
    goto LABEL_8;
  }

  if (*(v2 + 80) != 2)
  {
    LOBYTE(v44) = 3;
    lazy protocol witness table accessor for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys();
    v14 = v39;
    v26 = v43;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v32 = v2[3];
    v46 = v2[2];
    v47 = v32;
    v48 = v2[4];
    v33 = v2[1];
    v44 = *v2;
    v45 = v33;
    lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel();
    v30 = v41;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v31 = v40;
LABEL_8:
    (*(v31 + 8))(v14, v30);
    return (*(v42 + 8))(v22, v26);
  }

  LOBYTE(v44) = 2;
  lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys();
  v26 = v43;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v44 = *v2;
  *&v45 = *(v2 + 2);
  lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel();
  v27 = v38;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v37 + 8))(v10, v27);
  return (*(v42 + 8))(v22, v26);
}

double GeoDataModels.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized GeoDataModels.init(from:)(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t specialized GeoDataModels.ContactDisambiguationDataModel.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO021ContactDisambiguationH5ModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO021ContactDisambiguationH5ModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel.CodingKeys and conformance GeoDataModels.ContactDisambiguationDataModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[31] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21GeoFlowDelegatePlugin0A7ContactVGMd, &_sSay21GeoFlowDelegatePlugin0A7ContactVGMR);
    v10[15] = 1;
    lazy protocol witness table accessor for type [GeoContact] and conformance <A> [A](&lazy protocol witness table cache variable for type [GeoContact] and conformance <A> [A], &lazy protocol witness table cache variable for type GeoContact and conformance GeoContact);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoParkedCar and conformance GeoParkedCar()
{
  result = lazy protocol witness table cache variable for type GeoParkedCar and conformance GeoParkedCar;
  if (!lazy protocol witness table cache variable for type GeoParkedCar and conformance GeoParkedCar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoParkedCar and conformance GeoParkedCar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoParkedCar and conformance GeoParkedCar;
  if (!lazy protocol witness table cache variable for type GeoParkedCar and conformance GeoParkedCar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoParkedCar and conformance GeoParkedCar);
  }

  return result;
}

uint64_t specialized GeoDataModels.ParkingLocationDataModel.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO015ParkingLocationH5ModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO015ParkingLocationH5ModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel.CodingKeys and conformance GeoDataModels.ParkingLocationDataModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v10 = v5;
  v11 = v19;
  v37 = 0;
  lazy protocol witness table accessor for type GeoParkedCar and conformance GeoParkedCar();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = v28;
  v33 = v29;
  v34 = v30;
  v35 = v31;
  v36 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  (*(v10 + 8))(v8, v4);
  v20 = v32;
  v21 = v33;
  v22 = v34;
  v23 = v35;
  *&v24 = v12;
  *(&v24 + 1) = v14;
  outlined init with copy of GeoDataModels.ParkingLocationDataModel(&v20, v25);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v25[0] = v32;
  v25[1] = v33;
  v25[2] = v34;
  v25[3] = v35;
  v26 = v12;
  v27 = v14;
  result = outlined destroy of GeoDataModels.ParkingLocationDataModel(v25);
  v16 = v23;
  v11[2] = v22;
  v11[3] = v16;
  v11[4] = v24;
  v17 = v21;
  *v11 = v20;
  v11[1] = v17;
  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [GeoTrafficIncident] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay21GeoFlowDelegatePlugin0A15TrafficIncidentVGMd, &_sSay21GeoFlowDelegatePlugin0A15TrafficIncidentVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized GeoDataModels.TrafficDisambiguationDataModel.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO021TrafficDisambiguationH5ModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO021TrafficDisambiguationH5ModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel.CodingKeys and conformance GeoDataModels.TrafficDisambiguationDataModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[31] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21GeoFlowDelegatePlugin0A15TrafficIncidentVGMd, &_sSay21GeoFlowDelegatePlugin0A15TrafficIncidentVGMR);
    v10[15] = 1;
    lazy protocol witness table accessor for type [GeoTrafficIncident] and conformance <A> [A](&lazy protocol witness table cache variable for type [GeoTrafficIncident] and conformance <A> [A], lazy protocol witness table accessor for type GeoTrafficIncident and conformance GeoTrafficIncident);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StandardMapData and conformance StandardMapData()
{
  result = lazy protocol witness table cache variable for type StandardMapData and conformance StandardMapData;
  if (!lazy protocol witness table cache variable for type StandardMapData and conformance StandardMapData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StandardMapData and conformance StandardMapData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StandardMapData and conformance StandardMapData;
  if (!lazy protocol witness table cache variable for type StandardMapData and conformance StandardMapData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StandardMapData and conformance StandardMapData);
  }

  return result;
}

uint64_t specialized GeoDataModels.WhereAmIDataModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1145660781 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614C6E6F74747562 && a2 == 0xEB000000006C6562 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000000C16A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C746E6572727563 && a2 == 0xEF6E6F697461636FLL)
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

uint64_t specialized GeoDataModels.WhereAmIDataModel.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO17WhereAmIDataModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO17WhereAmIDataModelV10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel.CodingKeys and conformance GeoDataModels.WhereAmIDataModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v37[0]) = 0;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31 = v12;
  LOBYTE(v37[0]) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v14;
  v28 = v13;
  LOBYTE(v37[0]) = 2;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = v15;
  v41 = 3;
  lazy protocol witness table accessor for type StandardMapData and conformance StandardMapData();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v25 = *(&v39 + 1);
  v26 = v39;
  v16 = v40;
  *&v32 = v11;
  v17 = v31;
  *(&v32 + 1) = v31;
  v18 = v28;
  *&v33 = v28;
  v19 = v30;
  *(&v33 + 1) = v30;
  v20 = v27;
  *&v34 = v27;
  v21 = v29;
  *(&v34 + 1) = v29;
  v35 = v39;
  v36 = v40;
  outlined init with copy of GeoDataModels.WhereAmIDataModel(&v32, v37);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v37[0] = v11;
  v37[1] = v17;
  v37[2] = v18;
  v37[3] = v19;
  v37[4] = v20;
  v37[5] = v21;
  v37[6] = v26;
  v37[7] = v25;
  v38 = v16;
  result = outlined destroy of GeoDataModels.WhereAmIDataModel(v37);
  v23 = v35;
  a2[2] = v34;
  a2[3] = v23;
  a2[4] = v36;
  v24 = v33;
  *a2 = v32;
  a2[1] = v24;
  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel()
{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel;
  if (!lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel);
  }

  return result;
}

uint64_t specialized GeoDataModels.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000000000C16C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C676E696B726170 && a2 == 0xEF6E6F697461636FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000000000C16E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x496D416572656877 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

double specialized GeoDataModels.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO18WhereAmICodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO18WhereAmICodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v60 = *(v58 - 8);
  v3 = *(v60 + 64);
  __chkstk_darwin(v58);
  v62 = v51 - v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO31TrafficDisambiguationCodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO31TrafficDisambiguationCodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v59 = *(v56 - 8);
  v5 = *(v59 + 64);
  __chkstk_darwin(v56);
  v61 = v51 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO25ParkingLocationCodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO25ParkingLocationCodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v57 = *(v54 - 8);
  v7 = *(v57 + 8);
  __chkstk_darwin(v54);
  v9 = v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO31ContactDisambiguationCodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO31ContactDisambiguationCodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v55 = *(v10 - 8);
  v11 = *(v55 + 64);
  __chkstk_darwin(v10);
  v13 = v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMd, &_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D10DataModelsO10CodingKeys33_8F9609C57548C44FD8210E46650A4412LLOGMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v51 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  lazy protocol witness table accessor for type GeoDataModels.CodingKeys and conformance GeoDataModels.CodingKeys();
  v21 = v64;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    goto LABEL_17;
  }

  v52 = v10;
  v22 = v61;
  *&v64 = v15;
  v24 = v62;
  v23 = v63;
  v53 = v14;
  v25 = KeyedDecodingContainer.allKeys.getter();
  v26 = *(v25 + 16);
  if (!v26 || ((v27 = *(v25 + 32), v26 == 1) ? (v28 = v27 == 4) : (v28 = 1), v28))
  {
    v29 = type metadata accessor for DecodingError();
    swift_allocError();
    v31 = v30;
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v31 = &type metadata for GeoDataModels;
    v33 = v18;
    v34 = v53;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v29 - 8) + 104))(v31, enum case for DecodingError.typeMismatch(_:), v29);
    swift_willThrow();
    (*(v64 + 8))(v33, v34);
    swift_unknownObjectRelease();
LABEL_17:
    __swift_destroy_boxed_opaque_existential_0Tm(v75);
    return result;
  }

  v51[1] = v25;
  if (v27 > 1)
  {
    v57 = v18;
    v44 = v23;
    if (v27 == 2)
    {
      LOBYTE(v65) = 2;
      lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationCodingKeys and conformance GeoDataModels.TrafficDisambiguationCodingKeys();
      v37 = v22;
      v38 = v53;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type GeoDataModels.TrafficDisambiguationDataModel and conformance GeoDataModels.TrafficDisambiguationDataModel();
      v45 = v56;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v46 = (v64 + 8);
      (*(v59 + 8))(v37, v45);
      (*v46)(v57, v38);
      swift_unknownObjectRelease();
      v43 = v65;
      v64 = v66;
    }

    else
    {
      LOBYTE(v65) = 3;
      lazy protocol witness table accessor for type GeoDataModels.WhereAmICodingKeys and conformance GeoDataModels.WhereAmICodingKeys();
      v41 = v53;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type GeoDataModels.WhereAmIDataModel and conformance GeoDataModels.WhereAmIDataModel();
      v47 = v58;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v48 = v64;
      (*(v60 + 8))(v24, v47);
      (*(v48 + 8))(v57, v41);
      swift_unknownObjectRelease();
      v43 = v65;
      v64 = v66;
      v71 = v67;
      v72 = v68;
      v73 = v69;
      v74 = v70;
    }
  }

  else
  {
    if (v27)
    {
      LOBYTE(v65) = 1;
      lazy protocol witness table accessor for type GeoDataModels.ParkingLocationCodingKeys and conformance GeoDataModels.ParkingLocationCodingKeys();
      v39 = v53;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type GeoDataModels.ParkingLocationDataModel and conformance GeoDataModels.ParkingLocationDataModel();
      v40 = v54;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v57 + 1))(v9, v40);
      (*(v64 + 8))(v18, v39);
      swift_unknownObjectRelease();
      v43 = v65;
      v64 = v66;
      v71 = v67;
      v72 = v68;
      v73 = v69;
      v74 = v70;
    }

    else
    {
      LOBYTE(v65) = 0;
      lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationCodingKeys and conformance GeoDataModels.ContactDisambiguationCodingKeys();
      v35 = v13;
      v36 = v53;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type GeoDataModels.ContactDisambiguationDataModel and conformance GeoDataModels.ContactDisambiguationDataModel();
      v42 = v52;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v55 + 8))(v35, v42);
      (*(v64 + 8))(v18, v36);
      swift_unknownObjectRelease();
      v43 = v65;
      v64 = v66;
    }

    v44 = v23;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v75);
  *v44 = v43;
  *(v44 + 8) = v64;
  v50 = v72;
  *(v44 + 24) = v71;
  *(v44 + 40) = v50;
  result = *&v73;
  *(v44 + 56) = v73;
  *(v44 + 72) = v74;
  *(v44 + 80) = v27;
  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GeoDataModels(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 81))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 80);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for GeoDataModels(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GeoDataModels.ParkingLocationDataModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GeoDataModels.ParkingLocationDataModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeoDataModels.ContactDisambiguationDataModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for GeoDataModels.ContactDisambiguationDataModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}