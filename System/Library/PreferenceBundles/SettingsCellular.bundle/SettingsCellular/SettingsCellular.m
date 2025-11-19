uint64_t sub_17F8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v33 = sub_17F8(&qword_103E0, &qword_74E8);
  v5 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v34 = (&v29 - v6);
  v7 = *(*(sub_6C70() - 8) + 64);
  (__chkstk_darwin)();
  v8 = sub_6C20();
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  (__chkstk_darwin)();
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_17F8(&qword_103E8, &qword_74F0);
  v12 = *(v32 - 8);
  v13 = *(v12 + 64);
  v14 = (__chkstk_darwin)();
  v29 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v29 - v16;
  sub_6DF0();
  v31 = sub_6DE0();
  sub_6DA0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_67A8(0, &qword_103F0, PSUICellularController_ptr);
  v18 = [objc_allocWithZone(PSSpecifier) init];
  [v18 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  [v18 setProperty:a2 forKey:@"PSUISettingsCellularDeferredURLStateKey"];
  sub_6C30();
  sub_6C10();
  sub_6CC0();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v21 = sub_6CE0();
  v23 = v22;
  v25 = v24;
  v26 = sub_64CC(&qword_102A0, &type metadata accessor for PreferencesControllerView);
  sub_6CF0();
  sub_67F0(v21, v23, v25 & 1);

  (*(v30 + 8))(v11, v8);
  v27 = v32;
  (*(v12 + 16))(v29, v17, v32);
  v36 = v8;
  v37 = v26;
  swift_getOpaqueTypeConformance2();
  *v34 = sub_6D00();
  swift_storeEnumTagMultiPayload();
  sub_17F8(&qword_103F8, &unk_74F8);
  v36 = v8;
  v37 = v26;
  swift_getOpaqueTypeConformance2();
  sub_6CD0();
  (*(v12 + 8))(v17, v27);
}

unint64_t sub_1D78()
{
  result = qword_10298;
  if (!qword_10298)
  {
    sub_1E64(&qword_10290, &qword_7398);
    sub_6C20();
    sub_64CC(&qword_102A0, &type metadata accessor for PreferencesControllerView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10298);
  }

  return result;
}

uint64_t sub_1E64(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[104] = a5;
  v5[103] = a4;
  v5[102] = a3;
  v5[101] = a2;
  v5[100] = a1;
  v6 = *(*(sub_6E20() - 8) + 64) + 15;
  v5[105] = swift_task_alloc();
  v7 = sub_6C70();
  v5[106] = v7;
  v8 = *(v7 - 8);
  v5[107] = v8;
  v9 = *(v8 + 64) + 15;
  v5[108] = swift_task_alloc();
  v5[109] = swift_task_alloc();
  v5[110] = swift_task_alloc();
  v10 = sub_17F8(&qword_10350, &qword_7498);
  v5[111] = v10;
  v11 = *(v10 - 8);
  v5[112] = v11;
  v12 = *(v11 + 64) + 15;
  v5[113] = swift_task_alloc();
  v13 = sub_17F8(&qword_10358, &qword_74A0);
  v5[114] = v13;
  v14 = *(v13 - 8);
  v5[115] = v14;
  v15 = *(v14 + 64) + 15;
  v5[116] = swift_task_alloc();
  v16 = sub_6B90();
  v5[117] = v16;
  v17 = *(v16 - 8);
  v5[118] = v17;
  v18 = *(v17 + 64) + 15;
  v5[119] = swift_task_alloc();
  v19 = sub_6C90();
  v5[120] = v19;
  v20 = *(v19 - 8);
  v5[121] = v20;
  v21 = *(v20 + 64) + 15;
  v5[122] = swift_task_alloc();
  v22 = sub_6CB0();
  v5[123] = v22;
  v23 = *(v22 - 8);
  v5[124] = v23;
  v24 = *(v23 + 64) + 15;
  v5[125] = swift_task_alloc();
  v5[126] = swift_task_alloc();
  v25 = sub_6C00();
  v5[127] = v25;
  v26 = *(v25 - 8);
  v5[128] = v26;
  v27 = *(v26 + 64) + 15;
  v5[129] = swift_task_alloc();
  v28 = *(*(sub_17F8(&qword_10360, &qword_74A8) - 8) + 64) + 15;
  v5[130] = swift_task_alloc();
  v29 = sub_6BE0();
  v5[131] = v29;
  v30 = *(v29 - 8);
  v5[132] = v30;
  v31 = *(v30 + 64) + 15;
  v5[133] = swift_task_alloc();
  v5[134] = sub_6DF0();
  v5[135] = sub_6DE0();
  v33 = sub_6DA0();
  v5[136] = v33;
  v5[137] = v32;

  return _swift_task_switch(sub_22DC, v33, v32);
}

uint64_t sub_22DC()
{
  v1 = v0;
  v2 = v0[132];
  v3 = v1[131];
  v4 = v1[130];
  v5 = v1[129];
  v6 = v1[128];
  v7 = v1[127];
  v8 = v1[101];
  sub_6D30();
  sub_6BB0();
  (*(v6 + 8))(v5, v7);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v9 = v1[135];
    v10 = v1[130];
    v11 = v1[126];
    v12 = v1[124];
    v13 = v1[123];
    v14 = v1[101];
    v15 = v1[100];

    sub_646C(v10, &qword_10360, &qword_74A8);
    sub_6D20();
    sub_6D40();
    (*(v12 + 8))(v11, v13);
    goto LABEL_190;
  }

  v16 = v1[125];
  v17 = v1[122];
  v18 = v1[101];
  (*(v1[132] + 32))(v1[133], v1[130], v1[131]);
  sub_6C80();
  sub_6D20();
  v1[77] = sub_6BC0();
  v1[78] = v19;
  v1[79] = 47;
  v1[80] = 0xE100000000000000;
  v241 = v1;
  sub_5790();
  v20 = sub_6E30();

  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = -v21;
    v24 = v20 + 40;
    do
    {
      v25 = (v24 + 16 * v22++);
      while (1)
      {
        if ((v22 - 1) >= *(v20 + 16))
        {
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:

          isUniquelyReferenced_nonNull_native = v241;
LABEL_188:
          v191 = *(isUniquelyReferenced_nonNull_native + 1064);
          v192 = *(isUniquelyReferenced_nonNull_native + 1056);
          v193 = *(isUniquelyReferenced_nonNull_native + 1048);
          v194 = *(isUniquelyReferenced_nonNull_native + 1000);
          v195 = *(isUniquelyReferenced_nonNull_native + 992);
          v196 = *(isUniquelyReferenced_nonNull_native + 984);
          v1 = isUniquelyReferenced_nonNull_native;
          v197 = *(isUniquelyReferenced_nonNull_native + 976);
          v198 = v1[121];
          v199 = v1[120];
          v200 = v1[100];
          sub_6D40();
          (*(v195 + 8))(v194, v196);
          (*(v198 + 8))(v197, v199);
          (*(v192 + 8))(v191, v193);
          goto LABEL_189;
        }

        v26 = v241[134];
        v27 = *(v25 - 1);
        v28 = *v25;

        sub_6DE0();
        sub_6DA0();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v29 = HIBYTE(v28) & 0xF;
        if ((v28 & 0x2000000000000000) == 0)
        {
          v29 = v27 & 0xFFFFFFFFFFFFLL;
        }

        if (v29)
        {
          break;
        }

        ++v22;
        v25 += 2;
        if (v23 + v22 == 1)
        {
          goto LABEL_19;
        }
      }

      *&v244 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_5A20(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v31 = _swiftEmptyArrayStorage[2];
      v30 = _swiftEmptyArrayStorage[3];
      if (v31 >= v30 >> 1)
      {
        sub_5A20((v30 > 1), v31 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v31 + 1;
      v32 = &_swiftEmptyArrayStorage[2 * v31];
      *(v32 + 4) = v27;
      *(v32 + 5) = v28;
      v24 = v20 + 40;
    }

    while (v23 + v22);
  }

LABEL_19:
  isUniquelyReferenced_nonNull_native = v241;
  v241[138] = _swiftEmptyArrayStorage;
  v34 = v241[133];

  v35 = sub_6BA0();
  if (!v35)
  {
    v35 = _swiftEmptyArrayStorage;
  }

  v238 = v35[2];
  if (v238)
  {
    v36 = 0;
    v37 = v241 + 47;
    v227 = v241 + 72;
    v38 = v241[118];
    v231 = v35 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v234 = v38;
    v229 = (v38 + 8);
    v228 = v35;
    do
    {
      if (v36 >= v35[2])
      {
        goto LABEL_204;
      }

      v39 = *(isUniquelyReferenced_nonNull_native + 1072);
      (*(v234 + 16))(*(isUniquelyReferenced_nonNull_native + 952), &v231[*(v234 + 72) * v36], *(isUniquelyReferenced_nonNull_native + 936));
      sub_6DE0();
      sub_6DA0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v40 = *(isUniquelyReferenced_nonNull_native + 952);
      v41 = sub_6B70();
      v43 = v42;
      v44 = sub_6B80();
      if (v45 && (*(isUniquelyReferenced_nonNull_native + 760) = v44, *(isUniquelyReferenced_nonNull_native + 768) = v45, v46 = sub_6E50(), v48 = v47, , v48))
      {
        *(isUniquelyReferenced_nonNull_native + 776) = v46;
        *(isUniquelyReferenced_nonNull_native + 784) = v48;
        sub_6E90();
        *v227 = v244;
        *(v241 + 37) = v245;
        v241[76] = v246;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50 = sub_5828(v41, v43);
        v51 = _swiftEmptyDictionarySingleton[2];
        v52 = (v49 & 1) == 0;
        v53 = v51 + v52;
        if (__OFADD__(v51, v52))
        {
          __break(1u);
          goto LABEL_208;
        }

        v54 = v49;
        if (_swiftEmptyDictionarySingleton[3] >= v53)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_5FD8();
          }
        }

        else
        {
          sub_5B4C(v53, isUniquelyReferenced_nonNull_native);
          v55 = sub_5828(v41, v43);
          if ((v54 & 1) != (v56 & 1))
          {
            v72 = &type metadata for String;

            return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v72);
          }

          v50 = v55;
        }

        v66 = v241[119];
        v67 = v241[117];
        if (v54)
        {

          sub_6630(v227, _swiftEmptyDictionarySingleton[7] + 40 * v50);
          (*v229)(v66, v67);
        }

        else
        {
          _swiftEmptyDictionarySingleton[(v50 >> 6) + 8] |= 1 << v50;
          v68 = (_swiftEmptyDictionarySingleton[6] + 16 * v50);
          *v68 = v41;
          v68[1] = v43;
          v69 = _swiftEmptyDictionarySingleton[7] + 40 * v50;
          v70 = v241[76];
          v71 = *(v241 + 37);
          *v69 = *v227;
          *(v69 + 16) = v71;
          *(v69 + 32) = v70;
          v72 = (*v229)(v66, v67);
          v73 = _swiftEmptyDictionarySingleton[2];
          v74 = __OFADD__(v73, 1);
          v75 = v73 + 1;
          if (v74)
          {
            __break(1u);
LABEL_212:
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
            return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v72);
          }

          _swiftEmptyDictionarySingleton[2] = v75;
        }

        isUniquelyReferenced_nonNull_native = v241;
      }

      else
      {
        v57 = sub_5828(v41, v43);
        v59 = v58;

        if (v59)
        {
          *&v244 = _swiftEmptyDictionarySingleton;
          if (!swift_isUniquelyReferenced_nonNull_native())
          {
            sub_5FD8();
          }

          v60 = *(isUniquelyReferenced_nonNull_native + 952);
          v61 = *(isUniquelyReferenced_nonNull_native + 936);
          v62 = *(_swiftEmptyDictionarySingleton[6] + 16 * v57 + 8);

          v63 = _swiftEmptyDictionarySingleton[7] + 40 * v57;
          v64 = *v63;
          v65 = *(v63 + 16);
          v241[51] = *(v63 + 32);
          *v37 = v64;
          *(v241 + 49) = v65;
          sub_5E1C(v57, _swiftEmptyDictionarySingleton);
          (*v229)(v60, v61);
        }

        else
        {
          (*v229)(*(isUniquelyReferenced_nonNull_native + 952), *(isUniquelyReferenced_nonNull_native + 936));
          v241[51] = 0;
          *v37 = 0u;
          *(v241 + 49) = 0u;
        }

        sub_646C(v37, &qword_10370, &qword_74B0);
      }

      v35 = v228;
      ++v36;
    }

    while (v238 != v36);
  }

  v76 = _swiftEmptyArrayStorage;
  if (_swiftEmptyDictionarySingleton[2])
  {
    v77 = sub_5828(1701869940, 0xE400000000000000);
    if (v78)
    {
      sub_6514(_swiftEmptyDictionarySingleton[7] + 40 * v77, isUniquelyReferenced_nonNull_native + 416);
      if (swift_dynamicCast())
      {
        v79 = *(isUniquelyReferenced_nonNull_native + 1080);

        v80 = isUniquelyReferenced_nonNull_native;
        v81 = *(isUniquelyReferenced_nonNull_native + 712);
        v82 = *(v80 + 720);
        if (v81 == 0x64456C6576617274 && v82 == 0xEF6E6F6974616375 || (v83 = *(v80 + 720), (sub_6EE0() & 1) != 0) || v81 == 0x6F4D6C6576617274 && v82 == 0xEA00000000006564 || (sub_6EE0() & 1) != 0 || v81 == 0x656D656C62616E65 && v82 == 0xEA0000000000746ELL || (sub_6EE0() & 1) != 0)
        {
          if (_swiftEmptyDictionarySingleton[2])
          {
            v84 = sub_5828(0x746E65696C63, 0xE600000000000000);
            if (v85)
            {
              sub_6514(_swiftEmptyDictionarySingleton[7] + 40 * v84, (v241 + 67));
              if (swift_dynamicCast())
              {
                if (v241[93] == 0xD000000000000014 && 0x8000000000007D50 == v241[94])
                {

LABEL_181:
                  isUniquelyReferenced_nonNull_native = v241;
                  v189 = v241[103];

                  sub_4D48(_swiftEmptyDictionarySingleton);

                  isa = sub_6D60().super.isa;

                  [v189 setResourcesDictionary:isa];
                  goto LABEL_187;
                }

                v187 = v241[94];
                v188 = sub_6EE0();

                if (v188)
                {
                  goto LABEL_181;
                }
              }
            }
          }
        }

        if (v81 == 0xD00000000000001BLL && 0x8000000000007D30 == v82 || (sub_6EE0() & 1) != 0)
        {
          isUniquelyReferenced_nonNull_native = v241;
          v190 = v241[103];

LABEL_186:
          sub_4D48(_swiftEmptyDictionarySingleton);

          isa = sub_6D60().super.isa;

          [v190 setResourcesDictionary:isa];
          goto LABEL_187;
        }

        if (v81 == 0x4D495365646461 && v82 == 0xE700000000000000)
        {
        }

        else
        {
          v212 = sub_6EE0();

          if ((v212 & 1) == 0)
          {
            goto LABEL_205;
          }
        }

        isUniquelyReferenced_nonNull_native = v241;
        if (_swiftEmptyDictionarySingleton[2])
        {
          v213 = sub_5828(0x746E65696C63, 0xE600000000000000);
          if (v214)
          {
            sub_6514(_swiftEmptyDictionarySingleton[7] + 40 * v213, (v241 + 62));
            if (swift_dynamicCast())
            {
              if (v241[91] == 0x6C7070612E6D6F63 && v241[92] == 0xEE00697269532E65)
              {
                v215 = v241[92];

LABEL_209:
                v190 = *(isUniquelyReferenced_nonNull_native + 824);
                goto LABEL_186;
              }

LABEL_208:
              v225 = sub_6EE0();

              if (v225)
              {
                goto LABEL_209;
              }
            }
          }
        }

LABEL_210:

        goto LABEL_188;
      }
    }
  }

  v86 = *(isUniquelyReferenced_nonNull_native + 1064);
  *(isUniquelyReferenced_nonNull_native + 648) = sub_6BC0();
  *(isUniquelyReferenced_nonNull_native + 656) = v87;
  *(isUniquelyReferenced_nonNull_native + 664) = 0xD000000000000019;
  *(isUniquelyReferenced_nonNull_native + 672) = 0x8000000000007AC0;
  v88 = sub_6E40();

  if (!v88)
  {
    if (_swiftEmptyDictionarySingleton[2])
    {
      v153 = sub_5828(0x6174616464726163, 0xE800000000000000);
      if (v154)
      {
        sub_6514(_swiftEmptyDictionarySingleton[7] + 40 * v153, isUniquelyReferenced_nonNull_native + 456);

        if ((swift_dynamicCast() & 1) == 0)
        {
          v175 = *(isUniquelyReferenced_nonNull_native + 1080);

          goto LABEL_168;
        }

        v155 = *(isUniquelyReferenced_nonNull_native + 704);
        v156 = HIBYTE(v155) & 0xF;
        if ((v155 & 0x2000000000000000) == 0)
        {
          v156 = *(isUniquelyReferenced_nonNull_native + 696) & 0xFFFFFFFFFFFFLL;
        }

        if (v156)
        {
          v157 = isUniquelyReferenced_nonNull_native + 16;
          v158 = isUniquelyReferenced_nonNull_native + 792;
          v159 = *(isUniquelyReferenced_nonNull_native + 928);
          v160 = *(isUniquelyReferenced_nonNull_native + 920);
          v161 = *(isUniquelyReferenced_nonNull_native + 912);
          v242 = *(isUniquelyReferenced_nonNull_native + 832);
          v162 = isUniquelyReferenced_nonNull_native;
          v163 = sub_6D70();
          v162[139] = v163;

          v162[2] = v162;
          v162[7] = v158;
          v162[3] = sub_436C;
          swift_continuation_init();
          v162[38] = v161;
          v164 = sub_62EC(v162 + 35);
          sub_67A8(0, &qword_103B8, CTCellularPlanQRCodeAction_ptr);
          v162[140] = sub_17F8(&qword_103C0, &qword_74C8);
          sub_6DB0();
          (*(v160 + 32))(v164, v159, v161);
          v162[31] = _NSConcreteStackBlock;
          v162[32] = 1107296256;
          v162[33] = sub_5034;
          v162[34] = &unk_C748;
          [v242 getActionForCardData:v163 completionHandler:?];
          (*(v160 + 8))(v164, v161);

          return _swift_continuation_await(v157);
        }
      }
    }

    v165 = *(isUniquelyReferenced_nonNull_native + 1080);

LABEL_168:
    v166 = *(isUniquelyReferenced_nonNull_native + 824);
    v167 = [objc_allocWithZone(NSError) initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    isa = sub_6BF0();

    [v166 setUrlHandlerError:isa];
LABEL_187:

    goto LABEL_188;
  }

  v89 = _swiftEmptyArrayStorage[2];
  if (!v89)
  {
    v169 = *(isUniquelyReferenced_nonNull_native + 1064);
    sub_6BD0();
    if (v170)
    {
      v171 = *(isUniquelyReferenced_nonNull_native + 1080);
      v172 = *(isUniquelyReferenced_nonNull_native + 816);

      v173 = sub_6D70();

      [v172 setSpecifierIdentifierToScrollAndHighlight:v173];

      goto LABEL_188;
    }

    v89 = _swiftEmptyArrayStorage[2];
    if (!v89)
    {
      v174 = *(isUniquelyReferenced_nonNull_native + 1080);

      goto LABEL_210;
    }
  }

  v235 = (*(isUniquelyReferenced_nonNull_native + 856) + 8);
  while (1)
  {
    v92 = *(v76 + 4);
    v93 = *(v76 + 5);

    v94 = swift_isUniquelyReferenced_nonNull_native();
    if (!v94 || (v89 - 1) > *(v76 + 3) >> 1)
    {
      v76 = sub_618C(v94, v89, 1, v76);
    }

    sub_6298((v76 + 32));
    v95 = *(v76 + 2);
    memmove(v76 + 32, v76 + 48, 16 * v95 - 16);
    *(v76 + 2) = v95 - 1;
    if (v92 == 0xD000000000000011 && 0x8000000000007AE0 == v93 || (sub_6EE0() & 1) != 0)
    {
      v90 = v241[102];
      v91 = sub_6D70();

      [v90 setSpecifierIdentifierToScrollAndSelect:v91];

      goto LABEL_68;
    }

    if ((v92 != 0xD000000000000014 || 0x8000000000007B00 != v93) && (sub_6EE0() & 1) == 0)
    {
      break;
    }

    v72 = [objc_opt_self() sharedInstance];
    if (!v72)
    {
      goto LABEL_213;
    }

    v96 = v72;
    v97 = [v72 planItems];

    if (!v97)
    {
      goto LABEL_212;
    }

    sub_67A8(0, &qword_10398, CTCellularPlanItem_ptr);
    v98 = sub_6D90();

    if (v98 >> 62)
    {
      v99 = sub_6EA0();
    }

    else
    {
      v99 = *(&dword_10 + (v98 & 0xFFFFFFFFFFFFFF8));
    }

    if (v99 >= 2 && !*(v76 + 2))
    {
      v72 = [objc_allocWithZone(PSUICellularDataSpecifier) initWithHostController:0];
      if (!v72)
      {
        goto LABEL_216;
      }

      v107 = v241[125];
      v108 = v241[110];
      v109 = v241[106];

      v110 = &unk_103B0;
      v111 = PSUICellularDataListItemsController_ptr;
LABEL_107:
      sub_67A8(0, v110, v111);
      sub_6C30();
      sub_64CC(&qword_10390, &type metadata accessor for PreferencesControllerRecipe);
      sub_6CA0();
      (*v235)(v108, v109);
      goto LABEL_68;
    }

LABEL_68:
    v89 = *(v76 + 2);
    if (!v89)
    {
      isUniquelyReferenced_nonNull_native = v241;
      v152 = v241[135];

      goto LABEL_188;
    }
  }

  if (v92 == 0xD000000000000015 && 0x8000000000007B20 == v93 || (sub_6EE0() & 1) != 0)
  {
    v72 = [objc_opt_self() sharedInstance];
    if (!v72)
    {
      goto LABEL_215;
    }

    v100 = v72;
    v101 = [v72 planItems];

    if (!v101)
    {
      goto LABEL_214;
    }

    sub_67A8(0, &qword_10398, CTCellularPlanItem_ptr);
    v102 = sub_6D90();

    if (v102 >> 62)
    {
      v103 = sub_6EA0();
    }

    else
    {
      v103 = *(&dword_10 + (v102 & 0xFFFFFFFFFFFFFF8));
    }

    if (v103 != 1)
    {
      goto LABEL_178;
    }

    v104 = v241[125];
    v105 = v241[109];
    v106 = v241[106];
    sub_67A8(0, &qword_103A8, PSUICellularDataOptionsController_ptr);
    sub_6C40();
    goto LABEL_94;
  }

  if (v92 == 0xD000000000000013 && 0x8000000000007B40 == v93 || (sub_6EE0() & 1) != 0)
  {
    v72 = [objc_opt_self() sharedInstance];
    if (!v72)
    {
      goto LABEL_218;
    }

    v112 = v72;
    v113 = [v72 planItems];

    if (!v113)
    {
      goto LABEL_217;
    }

    sub_67A8(0, &qword_10398, CTCellularPlanItem_ptr);
    v114 = sub_6D90();

    if (v114 >> 62)
    {
      v115 = sub_6EA0();
    }

    else
    {
      v115 = *(&dword_10 + (v114 & 0xFFFFFFFFFFFFFF8));
    }

    if (v115 < 2)
    {
      goto LABEL_206;
    }

    v72 = [objc_allocWithZone(PSUIDefaultVoiceLineSpecifier) initSpecifier];
    if (!v72)
    {
      goto LABEL_219;
    }

    v116 = v241[125];
    v108 = v241[108];
    v109 = v241[106];

    v110 = &unk_103A0;
    v111 = PSUIDefaultVoiceLineListItemsController_ptr;
    goto LABEL_107;
  }

  if (v92 == 0x444F4D5F41544144 && v93 == 0xE900000000000045 || (sub_6EE0() & 1) != 0)
  {
    v72 = [objc_opt_self() sharedInstance];
    if (!v72)
    {
      goto LABEL_221;
    }

    v117 = v72;
    v118 = [v72 planItems];

    if (!v118)
    {
      goto LABEL_220;
    }

    sub_67A8(0, &qword_10398, CTCellularPlanItem_ptr);
    v119 = sub_6D90();

    if (v119 >> 62)
    {
      v120 = sub_6EA0();
    }

    else
    {
      v120 = *(&dword_10 + (v119 & 0xFFFFFFFFFFFFFF8));
    }

    if (v120 != 1)
    {
      goto LABEL_178;
    }

    v121 = v241[125];
    v122 = v241[109];
    v123 = v241[106];
    sub_67A8(0, &qword_10280, OS_dispatch_queue_ptr);
    v124 = sub_6E00();
    v125 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v124];

    [objc_allocWithZone(PSUIDataModeSpecifier) initWithCTClient:v125 hostController:0 parentSpecifier:0];
    sub_6C60();
    sub_64CC(&qword_10390, &type metadata accessor for PreferencesControllerRecipe);
    sub_6CA0();

    (*v235)(v122, v123);
    goto LABEL_68;
  }

  if ((v92 != 0xD00000000000001DLL || 0x8000000000007B60 != v93) && (sub_6EE0() & 1) == 0)
  {
    if (v92 == 0xD000000000000023 && 0x8000000000007B80 == v93 || (sub_6EE0() & 1) != 0)
    {
      v72 = [objc_opt_self() sharedInstance];
      if (!v72)
      {
        goto LABEL_224;
      }

      v132 = v72;
      v133 = [v72 planItems];

      if (!v133)
      {
        goto LABEL_225;
      }

      sub_67A8(0, &qword_10398, CTCellularPlanItem_ptr);
      v134 = sub_6D90();

      if (v134 >> 62)
      {
        v135 = sub_6EA0();
      }

      else
      {
        v135 = *(&dword_10 + (v134 & 0xFFFFFFFFFFFFFF8));
      }

      if (v135 != 1)
      {
        goto LABEL_178;
      }
    }

    else
    {
      if ((v92 != 0xD00000000000001FLL || 0x8000000000007BB0 != v93) && (sub_6EE0() & 1) == 0)
      {
        v142 = v76;
        if (v92 == 0x4C4C415F574F4853 && v93 == 0xE800000000000000)
        {
        }

        else
        {
          v143 = sub_6EE0();

          if ((v143 & 1) == 0)
          {
            v147 = v241[127];
            v148 = v241[101];
            v149 = sub_6D70();
            sub_17F8(&qword_10378, &qword_74B8);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_7370;
            v241[85] = 7107189;
            v241[86] = 0xE300000000000000;
            sub_6E90();
            *(inited + 96) = v147;
            sub_62EC((inited + 72));
            sub_6D30();
            sub_6350(inited);
            swift_setDeallocating();
            sub_646C(inited + 32, &qword_10380, &qword_74C0);
            v151 = sub_6D60().super.isa;

            sub_687C(v149, v151);

            v76 = v142;
            goto LABEL_68;
          }
        }

        v144 = v241[125];
        v145 = v241[109];
        v146 = v241[106];
        sub_67A8(0, &qword_10388, PSUIPerAppUsageListController_ptr);
        sub_6C40();
        sub_64CC(&qword_10390, &type metadata accessor for PreferencesControllerRecipe);
        sub_6CA0();
        (*v235)(v145, v146);
        goto LABEL_68;
      }

      v72 = [objc_opt_self() sharedInstance];
      if (!v72)
      {
        goto LABEL_226;
      }

      v138 = v72;
      v139 = [v72 planItems];

      if (!v139)
      {
        goto LABEL_227;
      }

      sub_67A8(0, &qword_10398, CTCellularPlanItem_ptr);
      v140 = sub_6D90();

      if (v140 >> 62)
      {
        v141 = sub_6EA0();
      }

      else
      {
        v141 = *(&dword_10 + (v140 & 0xFFFFFFFFFFFFFF8));
      }

      if (v141 != 1)
      {
LABEL_178:
        v1 = v241;
        v176 = v241[135];
        v177 = v241[132];
        v236 = v241[131];
        v239 = v241[133];
        v178 = v241[126];
        v179 = v241[125];
        v180 = v241[124];
        v181 = v241[123];
        v232 = v241[122];
        v182 = v241[121];
        v183 = v241[120];
        v184 = v241[101];
        v185 = v241[100];

        sub_6D20();
        sub_6D40();
        v186 = *(v180 + 8);
        v186(v178, v181);
        v186(v179, v181);
        (*(v182 + 8))(v232, v183);
        goto LABEL_179;
      }
    }

    v136 = v241[125];
    v105 = v241[109];
    v106 = v241[106];
    v137 = v241[105];
    sub_6E10();
    sub_6C50();
LABEL_94:
    sub_64CC(&qword_10390, &type metadata accessor for PreferencesControllerRecipe);
    sub_6CA0();
    (*v235)(v105, v106);
    goto LABEL_68;
  }

  v72 = [objc_opt_self() sharedInstance];
  if (!v72)
  {
    goto LABEL_222;
  }

  v126 = v72;
  v127 = [v72 planItems];

  if (!v127)
  {
    goto LABEL_223;
  }

  sub_67A8(0, &qword_10398, CTCellularPlanItem_ptr);
  v128 = sub_6D90();

  if (v128 >> 62)
  {
    v129 = sub_6EA0();
  }

  else
  {
    v129 = *(&dword_10 + (v128 & 0xFFFFFFFFFFFFFF8));
  }

  if (v129 == 1)
  {
    v130 = v241[102];
    v131 = sub_6D70();

    [v130 setSpecifierIdentifierToScrollAndSelect:v131];

    goto LABEL_68;
  }

LABEL_206:
  v1 = v241;
  v216 = v241[135];
  v177 = v241[132];
  v236 = v241[131];
  v239 = v241[133];
  v217 = v241[126];
  v218 = v241[125];
  v219 = v241[124];
  v220 = v241[123];
  v233 = v241[122];
  v221 = v241[121];
  v230 = v241[120];
  v222 = v241[101];
  v223 = v241[100];

  sub_6D20();
  sub_6D40();
  v224 = *(v219 + 8);
  v224(v217, v220);
  v224(v218, v220);
  (*(v221 + 8))(v233, v230);
LABEL_179:
  (*(v177 + 8))(v239, v236);
LABEL_189:

LABEL_190:
  v201 = v1[133];
  v202 = v1[130];
  v203 = v1[129];
  v204 = v1[126];
  v205 = v1[125];
  v206 = v1[122];
  v207 = v1[119];
  v208 = v1[116];
  v209 = v1[113];
  v210 = v1[110];
  v237 = v1[109];
  v240 = v1[108];
  v243 = v1[105];

  v211 = v1[1];

  return v211();
}

uint64_t sub_436C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 1128) = v3;
  v4 = *(v1 + 1096);
  v5 = *(v1 + 1088);
  if (v3)
  {
    v6 = sub_4934;
  }

  else
  {
    v6 = sub_449C;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_449C()
{
  v1 = v0;
  v2 = v0 + 10;
  v3 = v0 + 39;
  v11 = v0[140];
  v4 = v0[139];
  v5 = v0[113];
  v6 = v0[112];
  v7 = v0[111];
  v8 = v1[99];
  v1[142] = v8;

  v1[10] = v1;
  v1[11] = sub_4650;
  swift_continuation_init();
  v1[46] = v7;
  v9 = sub_62EC(v1 + 43);
  sub_6DB0();
  (*(v6 + 32))(v9, v5, v7);
  v1[39] = _NSConcreteStackBlock;
  v1[40] = 1107296256;
  v1[41] = sub_50E4;
  v1[42] = &unk_C770;
  [v8 performWithCompletionHandler:v3];
  (*(v6 + 8))(v9, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_4650()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 1144) = v3;
  v4 = *(v1 + 1096);
  v5 = *(v1 + 1088);
  if (v3)
  {
    v6 = sub_4B20;
  }

  else
  {
    v6 = sub_4780;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_4780()
{
  v1 = *(v0 + 1080);

  v26 = *(v0 + 1104);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = *(v0 + 1048);
  v5 = *(v0 + 1000);
  v6 = *(v0 + 992);
  v7 = *(v0 + 984);
  v8 = *(v0 + 976);
  v9 = *(v0 + 968);
  v10 = *(v0 + 960);
  v11 = *(v0 + 800);
  sub_6D40();
  (*(v6 + 8))(v5, v7);
  (*(v9 + 8))(v8, v10);
  (*(v3 + 8))(v2, v4);

  v12 = *(v0 + 1064);
  v13 = *(v0 + 1040);
  v14 = *(v0 + 1032);
  v15 = *(v0 + 1008);
  v16 = *(v0 + 1000);
  v17 = *(v0 + 976);
  v18 = *(v0 + 952);
  v19 = *(v0 + 928);
  v20 = *(v0 + 904);
  v21 = *(v0 + 880);
  v24 = *(v0 + 872);
  v25 = *(v0 + 864);
  v27 = *(v0 + 840);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_4934()
{
  v1 = v0[141];
  v2 = v0[139];
  v3 = v0[135];
  v4 = v0[103];

  swift_willThrow();

  v5 = sub_6BF0();
  [v4 setUrlHandlerError:v5];

  v30 = v0[138];
  v6 = v0[133];
  v7 = v0[132];
  v8 = v0[131];
  v9 = v0[125];
  v10 = v0[124];
  v11 = v0[123];
  v12 = v0[122];
  v13 = v0[121];
  v14 = v0[120];
  v15 = v0[100];
  sub_6D40();
  (*(v10 + 8))(v9, v11);
  (*(v13 + 8))(v12, v14);
  (*(v7 + 8))(v6, v8);

  v16 = v0[133];
  v17 = v0[130];
  v18 = v0[129];
  v19 = v0[126];
  v20 = v0[125];
  v21 = v0[122];
  v22 = v0[119];
  v23 = v0[116];
  v24 = v0[113];
  v25 = v0[110];
  v28 = v0[109];
  v29 = v0[108];
  v31 = v0[105];

  v26 = v0[1];

  return v26();
}

uint64_t sub_4B20()
{
  v1 = v0[143];
  v2 = v0[142];
  v3 = v0[135];

  swift_willThrow();

  v28 = v0[138];
  v4 = v0[133];
  v5 = v0[132];
  v6 = v0[131];
  v7 = v0[125];
  v8 = v0[124];
  v9 = v0[123];
  v10 = v0[122];
  v11 = v0[121];
  v12 = v0[120];
  v13 = v0[100];
  sub_6D40();
  (*(v8 + 8))(v7, v9);
  (*(v11 + 8))(v10, v12);
  (*(v5 + 8))(v4, v6);

  v14 = v0[133];
  v15 = v0[130];
  v16 = v0[129];
  v17 = v0[126];
  v18 = v0[125];
  v19 = v0[122];
  v20 = v0[119];
  v21 = v0[116];
  v22 = v0[113];
  v23 = v0[110];
  v26 = v0[109];
  v27 = v0[108];
  v29 = v0[105];

  v24 = v0[1];

  return v24();
}

unint64_t sub_4CE4()
{
  result = qword_102A8;
  if (!qword_102A8)
  {
    sub_1E64(&qword_10288, &qword_7390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_102A8);
  }

  return result;
}

uint64_t sub_4D48(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_17F8(&qword_103D0, &qword_74D8);
    v2 = sub_6ED0();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_6514(*(a1 + 56) + 40 * v13, v41);
    v39 = v16;
    v40 = v15;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v16;
    v27 = v15;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_668C(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_668C(v35, v24);
    result = sub_6E70(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v28;
    *(v11 + 16) = v29;
    *(v11 + 32) = v30;
    result = sub_668C(v24, (v2[7] + 32 * v10));
    ++v2[2];
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

void sub_5034(uint64_t a1, void *a2, void *a3)
{
  sub_66F0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_17F8(&qword_10358, &qword_74A0);
    sub_6DC0();
  }

  else if (a2)
  {
    v6 = a2;
    sub_17F8(&qword_10358, &qword_74A0);
    sub_6DD0();
  }

  else
  {
    __break(1u);
  }
}

void sub_50E4(uint64_t a1, void *a2)
{
  sub_66F0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    sub_17F8(&qword_10350, &qword_7498);
    sub_6DC0();
  }

  else
  {
    sub_17F8(&qword_10350, &qword_7498);
    sub_6DD0();
  }
}

unint64_t sub_5178()
{
  result = qword_102B0;
  if (!qword_102B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_102B0);
  }

  return result;
}

uint64_t sub_51E8()
{
  v1 = sub_17F8(&qword_10288, &qword_7390);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v18 - v4;
  v6 = *v0;
  v7 = *(v0 + 8);
  v8 = *(v0 + 16);
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = v7;
  v9[4] = v8;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  sub_17F8(&qword_10290, &qword_7398);
  sub_1D78();
  sub_6D50();
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = v11;
  v13[4] = v12;
  sub_4CE4();
  v14 = v10;
  v15 = v11;
  v16 = v12;
  sub_6D10();
  return (*(v2 + 8))(v5, v1);
}

void sub_53A8(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  v3 = [objc_allocWithZone(PSUISettingsCellularDeferredURLState) init];
  sub_67A8(0, &qword_10280, OS_dispatch_queue_ptr);
  v4 = sub_6E00();
  v5 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v4];

  *a1 = v2;
  a1[1] = v3;
  a1[2] = v5;
}

__n128 sub_5480(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_5494(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_54DC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_552C()
{
  sub_1E64(&qword_10288, &qword_7390);
  sub_4CE4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_5590()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_55D8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_569C;

  return sub_1EAC(a1, a2, v6, v7, v8);
}

uint64_t sub_569C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_5790()
{
  result = qword_10368;
  if (!qword_10368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10368);
  }

  return result;
}

unint64_t sub_57E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_6E70(*(v2 + 40));

  return sub_58A0(a1, v4);
}

unint64_t sub_5828(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_6F00();
  sub_6D80();
  v6 = sub_6F10();

  return sub_5968(a1, a2, v6);
}

unint64_t sub_58A0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_6514(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_6E80();
      sub_669C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_5968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_6EE0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_5A20(char *a1, int64_t a2, char a3)
{
  result = sub_5A40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_5A40(char *result, int64_t a2, char a3, char *a4)
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
    sub_17F8(&qword_103D8, &qword_74E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_5B4C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_17F8(&qword_103C8, &qword_74D0);
  v41 = a2;
  result = sub_6EC0();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
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
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 40 * v24;
      if (v41)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v44 = *(v28 + 32);
        v42 = v29;
        v43 = v30;
      }

      else
      {
        sub_6514(v28, &v42);
      }

      v31 = *(v8 + 40);
      sub_6F00();
      sub_6D80();
      result = sub_6F10();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = *(v8 + 56) + 40 * v16;
      v19 = v42;
      v20 = v43;
      *(v18 + 32) = v44;
      *v18 = v19;
      *(v18 + 16) = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_5E1C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_6E60() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_6F00();

      sub_6D80();
      v15 = sub_6F10();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_5FD8()
{
  v1 = v0;
  sub_17F8(&qword_103C8, &qword_74D0);
  v2 = *v0;
  v3 = sub_6EB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v22 = 40 * v17;
        sub_6514(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
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

char *sub_618C(char *result, int64_t a2, char a3, char *a4)
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
    sub_17F8(&qword_103D8, &qword_74E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t *sub_62EC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_6350(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_17F8(&qword_103D0, &qword_74D8);
    v3 = sub_6ED0();
    v4 = a1 + 32;

    while (1)
    {
      sub_6734(v4, v13);
      result = sub_57E4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_668C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_646C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_17F8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_64CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_6580(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_65E4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

_OWORD *sub_668C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_66F0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_6734(uint64_t a1, uint64_t a2)
{
  v4 = sub_17F8(&qword_10380, &qword_74C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_67A8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_67F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_687C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v4;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v7 = off_10500;
  v12 = off_10500;
  if (!off_10500)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_69BC;
    v8[3] = &unk_C7A8;
    v8[4] = &v9;
    sub_69BC(v8);
    v7 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (v7)
  {
    v7(v5, v6);
  }

  else
  {
    dlerror();
    abort_report_np();
    __break(1u);
  }
}

void sub_698C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void *sub_69BC(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_10508)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_6AFC;
    v5[4] = &unk_C7E0;
    v5[5] = v5;
    v6 = off_C7C8;
    v7 = 0;
    qword_10508 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_10508;
    if (qword_10508)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_10508;
LABEL_5:
  result = dlsym(v2, "AnalyticsSendEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10500 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_6AFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10508 = result;
  return result;
}