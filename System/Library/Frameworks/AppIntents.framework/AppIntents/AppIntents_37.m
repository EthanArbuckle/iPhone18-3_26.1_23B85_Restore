uint64_t sub_18F4625C0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F4626C4()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9968);
  v0[10] = sub_18F5216CC();

  OUTLINED_FUNCTION_49_18();
  v2 = swift_task_alloc();
  v0[21] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 10;
  OUTLINED_FUNCTION_6_1(&dword_18F566A20);
  v6 = v3;
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_18F4627E8;

  return v6();
}

void sub_18F4627E8()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    sub_18F132364(v3 + 16);

    OUTLINED_FUNCTION_8_1();

    MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

void sub_18F462910()
{
  v1 = &unk_1E72B7000;
  v2 = [*(v0 + 104) parameters];
  sub_18F0F21A8(0, qword_1ED6FE8F8);
  OUTLINED_FUNCTION_29_13();
  v3 = sub_18F521CAC();

  v4 = sub_18F111F70(v3);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = v4;
    v48 = MEMORY[0x1E69E7CC0];
    sub_18F3AA158();
    if (v6 < 0)
    {
LABEL_35:
      __break(1u);
      return;
    }

    v7 = 0;
    v8 = v48;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x193ADBE10](v7, v3);
      }

      else
      {
        v9 = *(v3 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = [v10 identifier];
      v12 = sub_18F5218DC();
      v14 = v13;

      v15 = *(v48 + 16);
      if (v15 >= *(v48 + 24) >> 1)
      {
        sub_18F3AA158();
      }

      ++v7;
      *(v48 + 16) = v15 + 1;
      v16 = v48 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v14;
    }

    while (v6 != v7);

    v5 = MEMORY[0x1E69E7CC0];
    v1 = &unk_1E72B7000;
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v17 = v0;
  v18 = *(v0 + 128);
  v19 = [*(v17 + 104) v1[392]];
  v20 = sub_18F521CAC();

  v21 = sub_18F461984(v8, v20);
  v22 = *(v18 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_parameterMetadata);
  v23 = v17;
  v24 = *(v22 + 16);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v25 = 0;
  v26 = v22 + 32;
  v47 = v22 + 32;
LABEL_13:
  v27 = (v26 + 48 * v25);
  while (v24 != v25)
  {
    if (v25 >= v24)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (__OFADD__(v25, 1))
    {
      goto LABEL_34;
    }

    v28 = v27[3];
    __swift_project_boxed_opaque_existential_1Tm(v27, v28);
    OUTLINED_FUNCTION_37_0();
    v30 = v29(v28);
    if (v31)
    {
      v32 = v30;
      v33 = v31;
      v34 = *(v23 + 80);
      if (*(v34 + 16) && (v35 = sub_18F0F713C(v30, v31), (v36 & 1) != 0))
      {
        v37 = *(*(v34 + 56) + 8 * v35);
        objc_allocWithZone(MEMORY[0x1E69AC948]);
        v38 = v37;
        v39 = sub_18F467138(v32, v33, v37);
        if (v39)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (*(v21 + 16))
        {
          v40 = sub_18F0F713C(v32, v33);
          if (v41)
          {
            v42 = *(*(v21 + 56) + 8 * v40);

LABEL_27:
            MEMORY[0x193ADB260](v39);
            v26 = v47;
            if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_18F521D0C();
            }

            sub_18F521D6C();
            ++v25;
            goto LABEL_13;
          }
        }
      }
    }

    v27 += 6;
    ++v25;
  }

  v43 = *(v23 + 104);
  swift_bridgeObjectRelease_n();

  v44 = sub_18F521C8C();

  v45 = [v43 actionWithParameters_];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_20_0();

  v46(v45);
}

uint64_t sub_18F462D38()
{
  OUTLINED_FUNCTION_69();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F462D94()
{
  OUTLINED_FUNCTION_69();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_71();

  return v0();
}

unint64_t sub_18F462DFC()
{
  result = qword_1EACD9960;
  if (!qword_1EACD9960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD9960);
  }

  return result;
}

uint64_t AppContext.fetchOptions(action:actionMetadata:parameterMetadata:optionsProviderReference:searchTerm:localeIdentifier:connectionIdentifier:)()
{
  OUTLINED_FUNCTION_69();
  v0[60] = v1;
  v0[61] = v2;
  v0[58] = v3;
  v0[59] = v4;
  v0[56] = v5;
  v0[57] = v6;
  v7 = type metadata accessor for DynamicOptionsResult.Section(0);
  OUTLINED_FUNCTION_51(v7);
  v0[62] = v8;
  v0[63] = OUTLINED_FUNCTION_34_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v9);
  v0[64] = OUTLINED_FUNCTION_34_0();
  v10 = type metadata accessor for DynamicOptionsResult(0);
  v0[65] = v10;
  OUTLINED_FUNCTION_10(v10);
  v0[66] = OUTLINED_FUNCTION_34_0();
  v11 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_18F462F48()
{
  v114 = v0;
  if (!*(v0 + 456))
  {
    goto LABEL_10;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1 || !*(v0 + 464))
  {
LABEL_9:
    swift_unknownObjectRelease();
LABEL_10:
    if (qword_1ED6FEF38 != -1)
    {
      OUTLINED_FUNCTION_9_1();
    }

    v8 = sub_18F52165C();
    OUTLINED_FUNCTION_58(v8, qword_1ED707778);
    v9 = sub_18F52163C();
    v10 = sub_18F52221C();
    if (OUTLINED_FUNCTION_27(v10))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_42(&dword_18F0E9000, v11, v12, "Wrong input types to fetchOptions");
      OUTLINED_FUNCTION_26_0();
    }

    v13 = LNConnectionErrorWithCode();
    OUTLINED_FUNCTION_58_17();
LABEL_15:

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_70_0();

    __asm { BRAA            X1, X16 }
  }

  v2 = v1;
  swift_unknownObjectRetain();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  *(v0 + 536) = v3;
  if (!v3)
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v4 = *(v0 + 488);
  *(v0 + 432) = v3;
  if (v4)
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    OUTLINED_FUNCTION_29_13();
    v5 = swift_dynamicCastObjCClass();
    v6 = v5 == 0;
    if (v5)
    {
      v7 = [v5 integerValue];
    }

    else
    {
      v7 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
    v6 = 1;
  }

  *(v0 + 656) = v6;
  *(v0 + 544) = v7;
  v16 = *(v0 + 472);
  if (!v16 || (*(v0 + 440) = v16, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9978), (swift_dynamicCast() & 1) == 0))
  {
    *(v0 + 248) = 0;
    *(v0 + 232) = 0u;
    *(v0 + 216) = 0u;
    goto LABEL_26;
  }

  v17 = *(v0 + 240);
  if (!v17)
  {
LABEL_26:
    sub_18F0EF1A8(v0 + 216, &qword_1EACD9970);
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0;
    goto LABEL_27;
  }

  v18 = *(v0 + 248);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 216), *(v0 + 240));
  (*(v18 + 8))(v17, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 216);
LABEL_27:
  if (*(v0 + 448))
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRetain();
      v19 = swift_task_alloc();
      *(v0 + 552) = v19;
      *v19 = v0;
      v19[1] = sub_18F463B4C;
      OUTLINED_FUNCTION_29_42("InitializeAction");
      OUTLINED_FUNCTION_70_0();

      __asm { BR              X4 }
    }

    swift_unknownObjectRelease();
  }

  v22 = sub_18F33AF50();
  if (!v22)
  {
    v39 = sub_18F33B550();
    v41 = v40;
    if (qword_1ED6FEF38 != -1)
    {
      OUTLINED_FUNCTION_9_1();
    }

    v42 = sub_18F52165C();
    OUTLINED_FUNCTION_58(v42, qword_1ED707778);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    swift_unknownObjectRetain();
    v43 = sub_18F52163C();
    v44 = sub_18F52221C();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v113[0] = swift_slowAlloc();
      *v45 = 136446466;
      v46 = [v2 identifier];
      v112 = v44;
      v47 = v39;
      v48 = sub_18F5218DC();
      v50 = v49;

      v51 = sub_18F11897C(v48, v50, v113);

      *(v45 + 4) = v51;
      *(v45 + 12) = 2082;
      *(v0 + 416) = v47;
      *(v0 + 424) = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4470);
      v52 = sub_18F52194C();
      v54 = sub_18F11897C(v52, v53, v113);

      *(v45 + 14) = v54;
      _os_log_impl(&dword_18F0E9000, v43, v112, "Could not find an intent with identifier %{public}s,\nmangledTypeName: %{public}s", v45, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_32();
    }

    else
    {
    }

    v55 = LNConnectionErrorWithCode();
    OUTLINED_FUNCTION_58_17();
    goto LABEL_60;
  }

  v24 = sub_18F12FFE8(MEMORY[0x1E69E7CC0], v22, v23);

  *(v0 + 576) = v24;
  v25 = sub_18F4687D4((v0 + 432));
  *(v0 + 584) = v25;
  *(v0 + 592) = v26;
  if (!v26)
  {
LABEL_53:
    if (qword_1ED6FEF38 == -1)
    {
LABEL_54:
      v56 = sub_18F52165C();
      OUTLINED_FUNCTION_58(v56, qword_1ED707778);
      v57 = sub_18F52163C();
      v58 = sub_18F52221C();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = *(v0 + 536);
        v60 = OUTLINED_FUNCTION_126();
        v61 = OUTLINED_FUNCTION_75();
        v113[0] = v61;
        *v60 = 136315138;
        swift_unknownObjectRetain();
        v62 = sub_18F468824(v59, &selRef_name);
        if (v63)
        {
          v64 = v63;
        }

        else
        {
          v62 = 7104878;
          v64 = 0xE300000000000000;
        }

        v65 = sub_18F11897C(v62, v64, v113);

        *(v60 + 4) = v65;
        OUTLINED_FUNCTION_146_0(&dword_18F0E9000, v66, v67, "Could not find parameter with identifier %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v61);
        OUTLINED_FUNCTION_55_0();
        OUTLINED_FUNCTION_32();
      }

      v68 = LNConnectionErrorWithCode();
      OUTLINED_FUNCTION_58_17();

LABEL_60:
      swift_unknownObjectRelease();
      sub_18F0EF1A8(v0 + 176, &qword_1EACD0D98);
      swift_unknownObjectRelease();
      goto LABEL_15;
    }

LABEL_84:
    OUTLINED_FUNCTION_9_1();
    goto LABEL_54;
  }

  v27 = v26;
  v28 = *(v24 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_parameterMetadata);
  v29 = *(v28 + 16);
  if (!v29)
  {
LABEL_52:

    goto LABEL_53;
  }

  v30 = v25;
  v31 = v28 + 32;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v32 = 0;
  while (1)
  {
    if (v32 >= *(v28 + 16))
    {
      __break(1u);
      goto LABEL_84;
    }

    sub_18F139A94(v31, v0 + 128);
    v33 = *(v0 + 152);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 128), v33);
    OUTLINED_FUNCTION_37_0();
    v35 = v34(v33);
    if (!v36)
    {
      goto LABEL_44;
    }

    if (v35 == v30 && v36 == v27)
    {
      break;
    }

    v38 = OUTLINED_FUNCTION_81_10();

    if (v38)
    {
      goto LABEL_62;
    }

LABEL_44:
    ++v32;
    sub_18F13E500(v0 + 128);
    v31 += 48;
    if (v29 == v32)
    {

      goto LABEL_52;
    }
  }

LABEL_62:
  v69 = *(v0 + 536);

  v70 = [v69 dynamicOptionsSupport];
  v71 = *(v0 + 536);
  if (!v70)
  {
    v72 = [*(v0 + 536) valueType];
    objc_opt_self();
    OUTLINED_FUNCTION_29_13();
    v73 = swift_dynamicCastObjCClass();

    v71 = *(v0 + 536);
    if (v73)
    {
      v74 = sub_18F4687D4((v0 + 432));
      v110 = v75;
      v111 = v74;
      v76 = [v71 valueType];
      v109 = [v71 isOptional];
      v108 = [v71 title];
      v107 = [v71 parameterDescription];
      v77 = [v71 resolvableInputTypes];
      sub_18F0F21A8(0, &qword_1ED6FE2F8);
      v106 = sub_18F521CAC();

      v78 = [v71 typeSpecificMetadata];
      type metadata accessor for LNValueTypeSpecificMetadataKey(0);
      sub_18F114508();
      v79 = sub_18F5216BC();

      [v71 inputConnectionBehavior];
      [v71 capabilities];
      sub_18F4687FC((v0 + 432));
      v80 = objc_allocWithZone(MEMORY[0x1E69AC688]);
      OUTLINED_FUNCTION_65_20();
      v71 = sub_18F1145F0(v111, v110, v76, v109, v108, v107, v106, v79, v101, v102, v103, v104, v105);
      swift_unknownObjectRelease();
      *(v0 + 432) = v71;
    }
  }

  *(v0 + 600) = v71;
  sub_18F0EF200();
  if (*(v0 + 360))
  {
    sub_18F0FD0B4((v0 + 336), v0 + 296);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm((v0 + 80), *(v0 + 104));
    v81 = OUTLINED_FUNCTION_52_19();
    v82(v81);
    if (*(v0 + 400))
    {
      sub_18F0FD0B4((v0 + 376), v0 + 296);
    }

    else
    {
      v83 = v71;
      sub_18F464E5C((v0 + 432), v0 + 296);

      if (*(v0 + 400))
      {
        sub_18F0EF1A8(v0 + 376, &qword_1EACD0D98);
      }
    }

    if (*(v0 + 360))
    {
      sub_18F0EF1A8(v0 + 336, &qword_1EACD0D98);
    }
  }

  if (!*(v0 + 320))
  {
    sub_18F0EF1A8(v0 + 296, &qword_1EACD0D98);
    if (qword_1ED6FEF38 != -1)
    {
      OUTLINED_FUNCTION_9_1();
    }

    v89 = sub_18F52165C();
    OUTLINED_FUNCTION_58(v89, qword_1ED707778);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v90 = sub_18F52163C();
    v91 = sub_18F52221C();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = OUTLINED_FUNCTION_126();
      v93 = OUTLINED_FUNCTION_75();
      v113[0] = v93;
      v94 = OUTLINED_FUNCTION_79_11(4.8149e-34);

      *(v92 + 4) = v94;
      OUTLINED_FUNCTION_61_20();
      _os_log_impl(v95, v96, v97, v98, v99, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v93);
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_55_0();
    }

    else
    {
    }

    v100 = LNConnectionErrorWithCode();
    OUTLINED_FUNCTION_58_17();

    swift_unknownObjectRelease();
    sub_18F0EF1A8(v0 + 176, &qword_1EACD0D98);
    sub_18F13E500(v0 + 80);

    goto LABEL_15;
  }

  *(v0 + 608) = OUTLINED_FUNCTION_85_14();
  *(v0 + 616) = v84;
  v85 = swift_task_alloc();
  *(v0 + 624) = v85;
  *v85 = v0;
  OUTLINED_FUNCTION_30_41(v85);
  OUTLINED_FUNCTION_70_0();

  return sub_18F1321C4(v86);
}

uint64_t sub_18F463B4C()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 560) = v0;

  swift_unknownObjectRelease();
  if (!v0)
  {
    *(v4 + 568) = v3;
  }

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_31_9();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F463C78()
{
  v75 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 568);
  *(v0 + 576) = v1;
  v2 = sub_18F4687D4((v0 + 432));
  *(v0 + 584) = v2;
  *(v0 + 592) = v3;
  if (!v3)
  {
LABEL_14:
    if (qword_1ED6FEF38 == -1)
    {
LABEL_15:
      v16 = sub_18F52165C();
      OUTLINED_FUNCTION_58(v16, qword_1ED707778);
      v17 = sub_18F52163C();
      v18 = sub_18F52221C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = *(v0 + 536);
        v20 = OUTLINED_FUNCTION_126();
        v21 = OUTLINED_FUNCTION_75();
        v74 = v21;
        *v20 = 136315138;
        swift_unknownObjectRetain();
        v22 = sub_18F468824(v19, &selRef_name);
        if (v23)
        {
          v24 = v23;
        }

        else
        {
          v22 = 7104878;
          v24 = 0xE300000000000000;
        }

        v25 = sub_18F11897C(v22, v24, &v74);

        *(v20 + 4) = v25;
        OUTLINED_FUNCTION_146_0(&dword_18F0E9000, v26, v27, "Could not find parameter with identifier %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        OUTLINED_FUNCTION_55_0();
        OUTLINED_FUNCTION_32();
      }

      v28 = LNConnectionErrorWithCode();
      OUTLINED_FUNCTION_58_17();

      swift_unknownObjectRelease();
      sub_18F0EF1A8(v0 + 176, &qword_1EACD0D98);
      swift_unknownObjectRelease();
      goto LABEL_21;
    }

LABEL_47:
    OUTLINED_FUNCTION_9_1();
    goto LABEL_15;
  }

  v4 = v3;
  v5 = *(v1 + OBJC_IVAR____TtC10AppIntents14PreparedIntent_parameterMetadata);
  v6 = *(v5 + 16);
  if (!v6)
  {
LABEL_13:

    goto LABEL_14;
  }

  v7 = v2;
  v8 = v5 + 32;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v9 = 0;
  while (1)
  {
    if (v9 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_47;
    }

    sub_18F139A94(v8, v0 + 128);
    v10 = *(v0 + 152);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 128), v10);
    OUTLINED_FUNCTION_37_0();
    v12 = v11(v10);
    if (!v13)
    {
      goto LABEL_11;
    }

    if (v12 == v7 && v13 == v4)
    {
      break;
    }

    v15 = OUTLINED_FUNCTION_81_10();

    if (v15)
    {
      goto LABEL_25;
    }

LABEL_11:
    ++v9;
    sub_18F13E500(v0 + 128);
    v8 += 48;
    if (v6 == v9)
    {

      goto LABEL_13;
    }
  }

LABEL_25:
  v31 = *(v0 + 536);

  v32 = [v31 dynamicOptionsSupport];
  v33 = *(v0 + 536);
  if (!v32)
  {
    v34 = [*(v0 + 536) valueType];
    objc_opt_self();
    OUTLINED_FUNCTION_29_13();
    v35 = swift_dynamicCastObjCClass();

    v33 = *(v0 + 536);
    if (v35)
    {
      v36 = sub_18F4687D4((v0 + 432));
      v72 = v37;
      v73 = v36;
      v71 = [v33 valueType];
      v70 = [v33 isOptional];
      v69 = [v33 title];
      v68 = [v33 parameterDescription];
      v38 = [v33 resolvableInputTypes];
      sub_18F0F21A8(0, &qword_1ED6FE2F8);
      v39 = sub_18F521CAC();

      v40 = [v33 typeSpecificMetadata];
      type metadata accessor for LNValueTypeSpecificMetadataKey(0);
      sub_18F114508();
      v41 = sub_18F5216BC();

      [v33 inputConnectionBehavior];
      [v33 capabilities];
      sub_18F4687FC((v0 + 432));
      v42 = objc_allocWithZone(MEMORY[0x1E69AC688]);
      OUTLINED_FUNCTION_65_20();
      v33 = sub_18F1145F0(v73, v72, v71, v70, v69, v68, v39, v41, v63, v64, v65, v66, v67);
      swift_unknownObjectRelease();
      *(v0 + 432) = v33;
    }
  }

  *(v0 + 600) = v33;
  sub_18F0EF200();
  if (*(v0 + 360))
  {
    sub_18F0FD0B4((v0 + 336), v0 + 296);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm((v0 + 80), *(v0 + 104));
    v43 = OUTLINED_FUNCTION_52_19();
    v44(v43);
    if (*(v0 + 400))
    {
      sub_18F0FD0B4((v0 + 376), v0 + 296);
    }

    else
    {
      v45 = v33;
      sub_18F464E5C((v0 + 432), v0 + 296);

      if (*(v0 + 400))
      {
        sub_18F0EF1A8(v0 + 376, &qword_1EACD0D98);
      }
    }

    if (*(v0 + 360))
    {
      sub_18F0EF1A8(v0 + 336, &qword_1EACD0D98);
    }
  }

  if (!*(v0 + 320))
  {
    sub_18F0EF1A8(v0 + 296, &qword_1EACD0D98);
    if (qword_1ED6FEF38 != -1)
    {
      OUTLINED_FUNCTION_9_1();
    }

    v51 = sub_18F52165C();
    OUTLINED_FUNCTION_58(v51, qword_1ED707778);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v52 = sub_18F52163C();
    v53 = sub_18F52221C();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = OUTLINED_FUNCTION_126();
      v55 = OUTLINED_FUNCTION_75();
      v74 = v55;
      v56 = OUTLINED_FUNCTION_79_11(4.8149e-34);

      *(v54 + 4) = v56;
      OUTLINED_FUNCTION_61_20();
      _os_log_impl(v57, v58, v59, v60, v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_55_0();
    }

    else
    {
    }

    v62 = LNConnectionErrorWithCode();
    OUTLINED_FUNCTION_58_17();

    swift_unknownObjectRelease();
    sub_18F0EF1A8(v0 + 176, &qword_1EACD0D98);
    sub_18F13E500(v0 + 80);

LABEL_21:

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_70_0();

    __asm { BRAA            X1, X16 }
  }

  *(v0 + 608) = OUTLINED_FUNCTION_85_14();
  *(v0 + 616) = v46;
  v47 = swift_task_alloc();
  *(v0 + 624) = v47;
  *v47 = v0;
  OUTLINED_FUNCTION_30_41(v47);
  OUTLINED_FUNCTION_70_0();

  return sub_18F1321C4(v48);
}

uint64_t sub_18F464384()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F464488()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[77];
  v2 = v0[76];

  OUTLINED_FUNCTION_49_18();
  v3 = swift_task_alloc();
  v0[79] = v3;
  v3[2] = v0 + 32;
  v3[3] = v2;
  v3[4] = v1;
  OUTLINED_FUNCTION_6_1(&dword_18F566A50);
  v9 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[80] = v5;
  *v5 = v6;
  v5[1] = sub_18F46458C;
  v7 = v0[66];

  return v9(v7, &unk_18F566A48, v3);
}

uint64_t sub_18F46458C()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 648) = v0;

  if (v0)
  {

    sub_18F132364(v2 + 16);
  }

  else
  {
    sub_18F132364(v2 + 16);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F4646E0()
{
  v46 = v0;
  v1 = v0[66];
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v44 = MEMORY[0x1E69E7CC0];
    sub_18F5228CC();
    v5 = 0;
    v6 = v0[81];
    while (1)
    {
      if (v5 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_27;
      }

      v7 = v0[63];
      sub_18F141460();
      sub_18F4651F0(v7, v45);
      sub_18F1413B0(v7, type metadata accessor for DynamicOptionsResult.Section);
      if (v6)
      {
        break;
      }

      ++v5;
      v4 = v45[0];
      sub_18F52289C();
      sub_18F5228DC();
      sub_18F5228EC();
      sub_18F5228AC();
      v6 = 0;
      if (v3 == v5)
      {
        v4 = v44;
        v1 = v0[66];
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v8 = *(v1 + *(v0[65] + 24));
    sub_18F0EF200();
    v9 = sub_18F520B3C();
    v10 = OUTLINED_FUNCTION_44_0();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, v11, v9);
    v13 = v0[64];
    if (EnumTagSinglePayload == 1)
    {
      sub_18F0EF1A8(v0[64], &qword_1EACCF7A8);
      v14 = 0;
    }

    else
    {
      v14 = sub_18F117248();
      (*(*(v9 - 8) + 8))(v13, v9);
    }

    v15 = v0[77];
    sub_18F2A1C18(v0[73], v0[74]);
    v17 = v16;

    sub_18F4617CC(v17);
    v18 = objc_allocWithZone(MEMORY[0x1E69ACED8]);
    v4 = sub_18F467240(v4, v8, v14);
    if (v15)
    {
      v6 = v0[77];
      if (qword_1ED6FEF38 != -1)
      {
LABEL_27:
        OUTLINED_FUNCTION_9_1();
      }

      v19 = sub_18F52165C();
      OUTLINED_FUNCTION_58(v19, qword_1ED707778);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v20 = v4;
      v21 = sub_18F52163C();
      v22 = sub_18F52220C();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = v0[76];
        v43 = v0[66];
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = OUTLINED_FUNCTION_75();
        v45[0] = v26;
        *v24 = 136315394;
        v27 = sub_18F11897C(v23, v6, v45);

        *(v24 + 4) = v27;
        *(v24 + 12) = 2112;
        *(v24 + 14) = v20;
        *v25 = v20;
        v28 = v20;
        _os_log_impl(&dword_18F0E9000, v21, v22, "Returning options result for searchTerm %s: %@", v24, 0x16u);
        sub_18F0EF1A8(v25, &qword_1EACD0578);
        OUTLINED_FUNCTION_32();
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_32();

        swift_unknownObjectRelease();
        sub_18F0EF1A8((v0 + 22), &qword_1EACD0D98);
        OUTLINED_FUNCTION_6_85();
        v30 = v43;
      }

      else
      {
        v40 = v0[66];

        swift_unknownObjectRelease();
        sub_18F0EF1A8((v0 + 22), &qword_1EACD0D98);
        OUTLINED_FUNCTION_6_85();
        v30 = v40;
      }
    }

    else
    {
      if (qword_1ED6FEF38 != -1)
      {
        OUTLINED_FUNCTION_9_1();
      }

      v32 = sub_18F52165C();
      OUTLINED_FUNCTION_58(v32, qword_1ED707778);
      v33 = v4;
      v34 = sub_18F52163C();
      v35 = sub_18F52220C();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = OUTLINED_FUNCTION_126();
        v37 = swift_slowAlloc();
        *v36 = 138412290;
        *(v36 + 4) = v33;
        *v37 = v33;
        v38 = v33;
        _os_log_impl(&dword_18F0E9000, v34, v35, "Returning options result with no searchTerm: %@", v36, 0xCu);
        sub_18F0EF1A8(v37, &qword_1EACD0578);
        OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_32();
      }

      v39 = v0[66];

      swift_unknownObjectRelease();
      sub_18F0EF1A8((v0 + 22), &qword_1EACD0D98);
      OUTLINED_FUNCTION_6_85();
      v30 = v39;
    }

    sub_18F1413B0(v30, v29);
    v41 = v0[75];
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
    sub_18F13E500((v0 + 10));

    OUTLINED_FUNCTION_20_0();

    return v42(v4);
  }
}

uint64_t sub_18F464CC0()
{
  OUTLINED_FUNCTION_21();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_18F0EF1A8(v0 + 176, &qword_1EACD0D98);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F464D6C()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 648);
  v2 = *(v0 + 600);
  sub_18F2D94A8(v1);
  swift_willThrow();

  swift_unknownObjectRelease();
  sub_18F0EF1A8(v0 + 176, &qword_1EACD0D98);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
  sub_18F13E500(v0 + 80);

  OUTLINED_FUNCTION_71();

  return v3();
}

void sub_18F464E5C(id *a1@<X1>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v4 = [*a1 valueType];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 identifier];

    v7 = sub_18F5218DC();
    v9 = v8;

    if (qword_1ED6FF6D8 != -1)
    {
      swift_once();
    }

    sub_18F2794A0(v7, v9, 0, 0);
    v11 = v10;

    sub_18F12310C(v11, a2);
  }

  else
  {

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

uint64_t sub_18F464FD4(uint64_t a1, id *a2)
{
  if (!a1)
  {
    return 0;
  }

  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = v6;
  v4 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v4 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (swift_beginAccess(), [*a2 dynamicOptionsSupport] != 2))
  {

    return 0;
  }

  return v3;
}

uint64_t sub_18F465094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F4650B8, 0, 0);
}

uint64_t sub_18F4650B8()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[3];
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  v4 = *(v3 - 8);
  v5 = OUTLINED_FUNCTION_34_0();
  v0[6] = v5;
  (*(v4 + 16))();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[7] = v6;
  *v6 = v7;
  v6[1] = sub_18F411518;
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[2];

  return sub_18F13F0C4(v10, v5, v8, v9, v3, v2);
}

id sub_18F4651F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v62 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v61 = v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v59 = v52 - v7;
  v58 = sub_18F520B3C();
  v54 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v53 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DisplayRepresentation();
  MEMORY[0x1EEE9AC00](v64);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DynamicOptionsResult.Item(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v57 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v56 = v52 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v52 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v55 = v52 - v23;
  v24 = *(type metadata accessor for DynamicOptionsResult.Section(0) + 20);
  v60 = a1;
  v25 = *(a1 + v24);
  v26 = *(v25 + 16);
  if (v26)
  {
    v52[1] = v2;
    v65 = MEMORY[0x1E69E7CC0];
    sub_18F5228CC();
    v27 = v25 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v63 = *(v12 + 72);
    do
    {
      sub_18F141460();
      v28 = v14[3];
      __swift_project_boxed_opaque_existential_1Tm(v14, v28);
      v29 = sub_18F142A38(v28);
      sub_18F0EF200();
      if (__swift_getEnumTagSinglePayload(v22, 1, v64) == 1)
      {
        sub_18F0EF1A8(v22, &qword_1EACD32D0);
      }

      else
      {
        sub_18F141568();
        sub_18F13FE10();
        v31 = v30;
        [v29 setDisplayRepresentation_];

        sub_18F1413B0(v10, type metadata accessor for DisplayRepresentation);
      }

      [objc_allocWithZone(MEMORY[0x1E69ACEC0]) initWithValue:v29 indentationLevel:*(v14 + *(v11 + 24))];

      sub_18F1413B0(v14, type metadata accessor for DynamicOptionsResult.Item);
      sub_18F52289C();
      sub_18F5228DC();
      sub_18F5228EC();
      sub_18F5228AC();
      v27 += v63;
      --v26;
    }

    while (v26);
    v63 = v65;
  }

  else
  {
    v63 = MEMORY[0x1E69E7CC0];
  }

  v32 = v55;
  sub_18F0EF200();
  v33 = v64;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v32, 1, v64);
  v35 = v61;
  v37 = v58;
  v36 = v59;
  if (EnumTagSinglePayload == 1)
  {
    sub_18F0EF1A8(v32, &qword_1EACD32D0);
    v38 = 0;
  }

  else
  {
    v39 = v53;
    v40 = v54;
    (*(v54 + 16))(v53, v32, v58);
    sub_18F1413B0(v32, type metadata accessor for DisplayRepresentation);
    v38 = sub_18F117248();
    (*(v40 + 8))(v39, v37);
  }

  v41 = v56;
  sub_18F0EF200();
  if (__swift_getEnumTagSinglePayload(v41, 1, v33) == 1)
  {
    v42 = &qword_1EACD32D0;
    v43 = v41;
LABEL_16:
    sub_18F0EF1A8(v43, v42);
    v44 = 0;
    goto LABEL_18;
  }

  sub_18F0EF200();
  sub_18F1413B0(v41, type metadata accessor for DisplayRepresentation);
  if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
  {
    v42 = &qword_1EACCF7A8;
    v43 = v36;
    goto LABEL_16;
  }

  v44 = sub_18F117248();
  (*(v54 + 8))(v36, v37);
LABEL_18:
  v45 = v57;
  sub_18F0EF200();
  if (__swift_getEnumTagSinglePayload(v45, 1, v33) == 1)
  {
    v46 = &qword_1EACD32D0;
    v47 = v45;
  }

  else
  {
    sub_18F0EF200();
    sub_18F1413B0(v45, type metadata accessor for DisplayRepresentation);
    v48 = type metadata accessor for DisplayRepresentation.Image(0);
    if (__swift_getEnumTagSinglePayload(v35, 1, v48) != 1)
    {
      v49 = sub_18F11D1B0();
      sub_18F1413B0(v35, type metadata accessor for DisplayRepresentation.Image);
      goto LABEL_24;
    }

    v46 = &qword_1EACD0270;
    v47 = v35;
  }

  sub_18F0EF1A8(v47, v46);
  v49 = 0;
LABEL_24:
  v50 = objc_allocWithZone(MEMORY[0x1E69ACEE0]);
  result = sub_18F46719C(v63, v38, v44, v49);
  *v62 = result;
  return result;
}

uint64_t sub_18F465A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *aBlock)
{
  v8[8] = a7;
  v8[9] = v13;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v8[10] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = v13;
  v10 = swift_task_alloc();
  v8[11] = v10;
  *v10 = v8;
  v10[1] = sub_18F465BE0;

  return AppContext.fetchOptions(action:actionMetadata:parameterMetadata:optionsProviderReference:searchTerm:localeIdentifier:connectionIdentifier:)();
}

void sub_18F465BE0(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v17 = *(*v2 + 72);
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_110();
  v5 = *(v4 + 24);
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_110();
  v9 = *(v8 + 80);
  if (v3)
  {
    sub_18F520A7C();

    v10 = OUTLINED_FUNCTION_11_3();
    v11(v10, 0, v5);

    _Block_release(v9);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_11_3();
    v13(v12, a1, 0);
    _Block_release(v9);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_20();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_18F465E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a2;
  v3[25] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0);
  v3[26] = swift_task_alloc();
  v3[27] = type metadata accessor for DisplayRepresentation();
  v3[28] = swift_task_alloc();
  v3[29] = type metadata accessor for DynamicOptionsResult.Item(0);
  v3[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0F18);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F465F6C, 0, 0);
}

uint64_t sub_18F465F6C()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0[24] + OBJC_IVAR____TtC10AppIntents14PreparedIntent_parameterMetadata);
  v0[33] = v1;
  v2 = *(v1 + 16);
  v0[34] = v2;
  if (v2)
  {
    v3 = 0;
    while (1)
    {
      OUTLINED_FUNCTION_67_17(v3);
      v4 = v0[5];
      OUTLINED_FUNCTION_84_10();
      OUTLINED_FUNCTION_37_0();
      v0[36] = v5(v4);
      v0[37] = v6;
      if (v6)
      {
        break;
      }

      sub_18F13E500((v0 + 2));
      v3 = v0[35] + 1;
      if (v3 == v0[34])
      {
        goto LABEL_5;
      }
    }

    v0[38] = v0[5];
    OUTLINED_FUNCTION_84_10();
    OUTLINED_FUNCTION_22_48();
    v0[39] = v9;
    v0[40] = swift_getAssociatedTypeWitness();
    v10 = sub_18F52254C();
    v0[41] = v10;
    OUTLINED_FUNCTION_51(v10);
    v0[42] = v11;
    v12 = OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_71_15(v12, v13, v14, v15, v16, v17, v18, v19, v24, v25, v26);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[44] = v20;
    *v20 = v21;
    v22 = OUTLINED_FUNCTION_24_5(v20);

    return v23(v22);
  }

  else
  {
LABEL_5:
    OUTLINED_FUNCTION_82_10();

    OUTLINED_FUNCTION_71();

    return v7();
  }
}

uint64_t sub_18F4661AC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F466290()
{
  OUTLINED_FUNCTION_24_4();
  v1 = *(v0 + 344);
  v2 = *(v0 + 320);
  v3 = OUTLINED_FUNCTION_44_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, v4, v2);
  v6 = *(v0 + 256);
  v7 = *(v0 + 232);
  if (EnumTagSinglePayload == 1)
  {
    (*(*(v0 + 336) + 8))(v1, *(v0 + 328));

    __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  }

  else
  {
    *(v0 + 88) = v2;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *(v0 + 96) = AssociatedConformanceWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
    (*(*(v2 - 8) + 32))(boxed_opaque_existential_1, v1, v2);

    sub_18F2E86FC(v2, AssociatedConformanceWitness, v6);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);
  }

  v10 = *(v0 + 232);
  sub_18F0EF200();
  v11 = OUTLINED_FUNCTION_44_0();
  v13 = __swift_getEnumTagSinglePayload(v11, v12, v10);
  v14 = *(v0 + 248);
  if (v13 != 1)
  {
    v16 = *(v0 + 240);
    sub_18F141568();
    __swift_project_boxed_opaque_existential_1Tm(v16, v16[3]);
    sub_18F11E26C();
    v17 = *(v0 + 240);
    if (!*(v0 + 168))
    {
      OUTLINED_FUNCTION_7_76();
      sub_18F1413B0(v17, v22);
      v15 = &qword_1EACD0620;
      v14 = v0 + 144;
      goto LABEL_10;
    }

    v19 = *(v0 + 208);
    v18 = *(v0 + 216);
    sub_18F0FD0B4((v0 + 144), v0 + 104);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 104), *(v0 + 128));
    v20 = OUTLINED_FUNCTION_60_15();
    v21 = sub_18F142A38(v20);
    sub_18F0EF200();
    if (__swift_getEnumTagSinglePayload(v19, 1, v18) == 1)
    {
      sub_18F0EF1A8(*(v0 + 208), &qword_1EACD32D0);
    }

    else
    {
      OUTLINED_FUNCTION_39_28();
      sub_18F13FE10();
      v29 = v28;
      [v21 setDisplayRepresentation_];

      OUTLINED_FUNCTION_38_27();
    }

    v30 = *(v0 + 288);
    v31 = *(v0 + 296);
    v32 = *(v0 + 200);
    v33 = v21;
    swift_isUniquelyReferenced_nonNull_native();
    v34 = *v32;
    *(v0 + 184) = *v32;
    *v32 = 0x8000000000000000;
    result = sub_18F0F713C(v30, v31);
    if (__OFADD__(*(v34 + 16), (v36 & 1) == 0))
    {
      __break(1u);
    }

    else
    {
      v37 = result;
      v38 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD99A8);
      if (sub_18F5229DC())
      {
        v39 = sub_18F0F713C(*(v0 + 288), *(v0 + 296));
        if ((v38 & 1) != (v40 & 1))
        {

          return sub_18F522E2C();
        }

        v37 = v39;
      }

      v41 = *(v0 + 184);
      result = *(v0 + 296);
      if (v38)
      {
        v42 = v41[7];
        v43 = *(v42 + 8 * v37);
        *(v42 + 8 * v37) = v33;

        v33 = v43;
LABEL_25:
        v49 = *(v0 + 256);
        v50 = *(v0 + 240);
        v51 = *(v0 + 200);

        sub_18F0EF1A8(v49, &qword_1EACD0F18);
        *v51 = v41;

        OUTLINED_FUNCTION_7_76();
        sub_18F1413B0(v50, v52);
        sub_18F13E500(v0 + 16);
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 104);
        goto LABEL_26;
      }

      v44 = *(v0 + 288);
      v41[(v37 >> 6) + 8] |= 1 << v37;
      v45 = (v41[6] + 16 * v37);
      *v45 = v44;
      v45[1] = result;
      *(v41[7] + 8 * v37) = v33;
      v46 = v41[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (!v47)
      {
        v41[2] = v48;
        goto LABEL_25;
      }
    }

    __break(1u);
    return result;
  }

  v15 = &qword_1EACD0F18;
LABEL_10:
  sub_18F0EF1A8(v14, v15);
  v23 = sub_18F0F713C(*(v0 + 288), *(v0 + 296));
  v25 = v24;

  v26 = *(v0 + 256);
  if (v25)
  {
    v27 = *(v0 + 200);
    swift_isUniquelyReferenced_nonNull_native();
    v76 = *v27;
    *v27 = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD99A8);
    sub_18F5229DC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9968);
    sub_18F5229FC();
    sub_18F0EF1A8(v26, &qword_1EACD0F18);
    *v27 = v76;
  }

  else
  {
    sub_18F0EF1A8(*(v0 + 256), &qword_1EACD0F18);
  }

  while (1)
  {
    sub_18F13E500(v0 + 16);
LABEL_26:
    v53 = *(v0 + 280) + 1;
    if (v53 == *(v0 + 272))
    {
      break;
    }

    OUTLINED_FUNCTION_67_17(v53);
    v54 = *(v0 + 40);
    OUTLINED_FUNCTION_84_10();
    OUTLINED_FUNCTION_37_0();
    *(v0 + 288) = v55(v54);
    *(v0 + 296) = v56;
    if (v56)
    {
      *(v0 + 304) = *(v0 + 40);
      OUTLINED_FUNCTION_84_10();
      OUTLINED_FUNCTION_22_48();
      *(v0 + 312) = v58;
      *(v0 + 320) = swift_getAssociatedTypeWitness();
      v59 = sub_18F52254C();
      *(v0 + 328) = v59;
      OUTLINED_FUNCTION_51(v59);
      *(v0 + 336) = v60;
      v61 = OUTLINED_FUNCTION_34_0();
      OUTLINED_FUNCTION_71_15(v61, v62, v63, v64, v65, v66, v67, v68, v73, v74, v75);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v0 + 352) = v69;
      *v69 = v70;
      v71 = OUTLINED_FUNCTION_24_5(v69);

      return v72(v71);
    }
  }

  OUTLINED_FUNCTION_82_10();

  OUTLINED_FUNCTION_71();

  return v57();
}

uint64_t sub_18F466A7C(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_18F466B50;

  return AppContext.fetchOptionsDefaultValues(intent:connectionIdentifier:)(a1, a2);
}

uint64_t sub_18F466B50()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_13_2();
  v4 = *(v3 + 32);
  v5 = *v2;
  OUTLINED_FUNCTION_39();
  *v6 = v5;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_110();
  v8 = *(v7 + 40);
  if (v0)
  {
    sub_18F520A7C();

    v9 = OUTLINED_FUNCTION_11_3();
    v10(v9, 0, v1);

    _Block_release(v8);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_11_3();
    v12(v11, v1, 0);
    _Block_release(v8);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_18_9();

  return v13();
}

uint64_t sub_18F466CFC()
{
  OUTLINED_FUNCTION_21();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_53_18();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F466D7C()
{
  OUTLINED_FUNCTION_21();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_53_18();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F466E00(uint64_t a1)
{
  v2 = sub_18F468A24();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_18F466E3C(uint64_t a1)
{
  v2 = sub_18F468A24();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_18F466E84@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AppShortcut();
  v5 = OUTLINED_FUNCTION_51(v4);
  MEMORY[0x1EEE9AC00](v5);
  if (qword_1ED6FF6D8 != -1)
  {
    swift_once();
  }

  v6 = sub_18F34F344(0, 0);
  v8 = v7;

  if (!v6)
  {
    goto LABEL_4;
  }

  v10 = (*(v8 + 8))(v6, v8);
  result = [v2 appShortcutIndex];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v10 + 16))
  {
    sub_18F141460();

    sub_18F3E51BC([v2 optionsProviderIndex], v14);
    v11 = v15;
    if (v15)
    {
      v12 = v16;
      __swift_project_boxed_opaque_existential_1Tm(v14, v15);
      v13 = *(v12 + 24);
      *(a1 + 24) = swift_getAssociatedTypeWitness();
      *(a1 + 32) = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(a1);
      v13(v11, v12);
      OUTLINED_FUNCTION_40_26();
      return __swift_destroy_boxed_opaque_existential_1Tm(v14);
    }

    OUTLINED_FUNCTION_40_26();
    result = sub_18F0EF1A8(v14, &qword_1EACD17C8);
LABEL_4:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  __break(1u);
  return result;
}

id sub_18F467138(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_18F5218AC();

  v6 = [v3 initWithIdentifier:v5 value:a3];

  return v6;
}

id sub_18F46719C(uint64_t a1, void *a2, void *a3, void *a4)
{
  sub_18F0F21A8(0, &qword_1EACCE7A8);
  v8 = sub_18F521C8C();

  v9 = [v4 initWithOptions:v8 title:a2 subtitle:a3 image:a4];

  return v9;
}

id sub_18F467240(uint64_t a1, char a2, void *a3)
{
  sub_18F0F21A8(0, &qword_1EACCE7A0);
  v6 = sub_18F521C8C();

  v7 = sub_18F521C8C();

  v8 = [v3 initWithSections:v6 usesIndexedCollation:a2 & 1 promptLabel:a3 dependentParameterIdentifiers:v7];

  return v8;
}

uint64_t sub_18F4672FC()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_9_6(v2);
  *v3 = v4;
  v3[1] = sub_18F0FC870;
  v5 = OUTLINED_FUNCTION_15_51();

  return sub_18F465E2C(v5, v6, v1);
}

uint64_t sub_18F467394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0418);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - v10;
  sub_18F0EF200();
  v12 = sub_18F521EFC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_18F0EF1A8(v11, &qword_1EACD0418);
  }

  else
  {
    sub_18F521EEC();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_18F521E1C();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_18F52197C() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_18F0EF1A8(a3, &qword_1EACD0418);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_18F0EF1A8(a3, &qword_1EACD0418);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

void sub_18F467670(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v25 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_18F522E2C();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v10 = v8;
    v12 = sub_18F0F713C(v7, v6);
    v13 = v9[2];
    v14 = (v11 & 1) == 0;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v15 = v11;
    if (v9[3] < v13 + v14)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD99A0);
      sub_18F5229EC();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v19 = (v18[6] + 16 * v12);
    *v19 = v7;
    v19[1] = v6;
    *(v18[7] + 8 * v12) = v10;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v18[2] = v22;
    ++v4;
    a2 = 1;
  }

  sub_18F350BE8();
  v16 = sub_18F0F713C(v7, v6);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v12 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9950);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_18F52279C();
  MEMORY[0x193ADB000](0xD00000000000001BLL, 0x800000018F52C790);
  sub_18F52299C();
  MEMORY[0x193ADB000](39, 0xE100000000000000);
  sub_18F522A3C();
  __break(1u);
}

void sub_18F467950(uint64_t a1, char a2, void *a3)
{
  v24 = *(a1 + 16);
  if (!v24)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 96)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_18F522E2C();
      __break(1u);
      goto LABEL_22;
    }

    sub_18F0EF200();
    v8 = v29;
    v7 = v30;
    v27 = v29;
    v28 = v30;
    memcpy(__dst, v31, sizeof(__dst));
    v9 = *a3;
    v11 = sub_18F0F713C(v29, v30);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9990);
      sub_18F5229EC();
      if (v14)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v17 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v18 = (v17[6] + 16 * v11);
    *v18 = v8;
    v18[1] = v7;
    memcpy((v17[7] + 80 * v11), __dst, 0x50uLL);
    v19 = v17[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    ++v5;
    v17[2] = v21;
    a2 = 1;
    if (v24 == v5)
    {

      return;
    }
  }

  sub_18F35129C();
  v15 = sub_18F0F713C(v8, v7);
  if ((v14 & 1) != (v16 & 1))
  {
    goto LABEL_21;
  }

  v11 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v22 = swift_allocError();
  swift_willThrow();
  v32 = v22;
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9950);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_18F130770(__dst);

    return;
  }

LABEL_22:
  sub_18F52279C();
  MEMORY[0x193ADB000](0xD00000000000001BLL, 0x800000018F52C790);
  sub_18F52299C();
  MEMORY[0x193ADB000](39, 0xE100000000000000);
  sub_18F522A3C();
  __break(1u);
}

void sub_18F467C74(uint64_t a1, char a2, void *a3)
{
  v27 = *(a1 + 16);
  if (!v27)
  {
LABEL_13:

    return;
  }

  v5 = 0;
  v6 = a1 + 32;
  while (1)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_18F522E2C();
      __break(1u);
      goto LABEL_22;
    }

    sub_18F0EF200();
    v8 = v34;
    v7 = v35;
    v32 = v34;
    v33 = v35;
    v29 = v36;
    v30 = v37;
    v31 = v38;
    v9 = *a3;
    v11 = sub_18F0F713C(v34, v35);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9998);
      sub_18F5229EC();
      if (v14)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v17 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v18 = (v17[6] + 16 * v11);
    *v18 = v8;
    v18[1] = v7;
    v19 = (v17[7] + 48 * v11);
    v20 = v29;
    v21 = v31;
    v19[1] = v30;
    v19[2] = v21;
    *v19 = v20;
    v22 = v17[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_20;
    }

    ++v5;
    v17[2] = v24;
    v6 += 64;
    a2 = 1;
    if (v27 == v5)
    {
      goto LABEL_13;
    }
  }

  sub_18F351458();
  v15 = sub_18F0F713C(v34, v35);
  if ((v14 & 1) != (v16 & 1))
  {
    goto LABEL_21;
  }

  v11 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v25 = swift_allocError();
  swift_willThrow();
  v39 = v25;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9950);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_18F13E500(&v29);

    return;
  }

LABEL_22:
  sub_18F52279C();
  MEMORY[0x193ADB000](0xD00000000000001BLL, 0x800000018F52C790);
  sub_18F52299C();
  MEMORY[0x193ADB000](39, 0xE100000000000000);
  sub_18F522A3C();
  __break(1u);
}

void sub_18F467F9C(uint64_t a1, unint64_t a2, char a3, void *a4)
{
  v8 = a2 & 0xFFFFFFFFFFFFFF8;
  v33 = a2 & 0xC000000000000001;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v9 = 0;
  v35 = a2;
  v36 = a1;
  v10 = (a1 + 40);
  v34 = a2 >> 62;
  for (i = v8; ; v8 = i)
  {
    v11 = *(v36 + 16);
    if (v9 == v11)
    {
LABEL_24:
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      return;
    }

    if (v9 >= v11)
    {
      break;
    }

    v12 = *(v10 - 1);
    v13 = *v10;
    if (v34)
    {
      v14 = sub_18F5226AC();
    }

    else
    {
      v14 = *(v8 + 16);
    }

    if (v9 == v14)
    {
      goto LABEL_24;
    }

    if (v33)
    {
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v16 = MEMORY[0x193ADBE10](v9, v35);
    }

    else
    {
      if (v9 >= *(v8 + 16))
      {
        goto LABEL_27;
      }

      v15 = *(v35 + 8 * v9 + 32);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v16 = v15;
    }

    v37 = v16;
    v17 = *a4;
    v19 = sub_18F0F713C(v12, v13);
    v20 = v17[2];
    v21 = (v18 & 1) == 0;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_26;
    }

    v22 = v18;
    if (v17[3] >= v20 + v21)
    {
      if (a3)
      {
        if (v18)
        {
          goto LABEL_22;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD99A0);
        sub_18F5229EC();
        if (v22)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      sub_18F350BE8();
      v23 = sub_18F0F713C(v12, v13);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_29;
      }

      v19 = v23;
      if (v22)
      {
LABEL_22:
        v30 = swift_allocError();
        swift_willThrow();
        v31 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9950);
        if ((swift_dynamicCast() & 1) == 0)
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();

          return;
        }

        goto LABEL_30;
      }
    }

    v25 = *a4;
    *(*a4 + 8 * (v19 >> 6) + 64) |= 1 << v19;
    v26 = (v25[6] + 16 * v19);
    *v26 = v12;
    v26[1] = v13;
    *(v25[7] + 8 * v19) = v37;
    v27 = v25[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_28;
    }

    v25[2] = v29;
    v10 += 2;
    ++v9;
    a3 = 1;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  sub_18F522E2C();
  __break(1u);
LABEL_30:
  sub_18F52279C();
  MEMORY[0x193ADB000](0xD00000000000001BLL, 0x800000018F52C790);
  sub_18F52299C();
  MEMORY[0x193ADB000](39, 0xE100000000000000);
  sub_18F522A3C();
  __break(1u);
}

void *sub_18F468328(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v7 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    sub_18F52269C();
    sub_18F0F21A8(0, qword_1ED6FBD60);
    sub_18F3C86AC();
    result = sub_18F52205C();
    v4 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
    v11 = v27;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v12 = 0;
LABEL_27:
    *v7 = v4;
    v7[1] = v8;
    v7[2] = v9;
    v7[3] = v10;
    v7[4] = v11;
    return v12;
  }

  v10 = 0;
  v17 = -1 << *(a4 + 32);
  v8 = a4 + 56;
  v9 = ~v17;
  v18 = -v17;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v11 = v19 & *(a4 + 56);
  if (!a2)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_27;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = v9;
    v21 = v7;
    v12 = 0;
    v13 = (v9 + 64) >> 6;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v4 < 0)
      {
        if (!sub_18F5226CC())
        {
          goto LABEL_25;
        }

        sub_18F0F21A8(0, qword_1ED6FBD60);
        swift_dynamicCast();
        result = v22;
        if (!v22)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (!v11)
        {
          while (1)
          {
            v15 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            if (v15 >= v13)
            {
              v11 = 0;
              goto LABEL_25;
            }

            v11 = *(v8 + 8 * v15);
            ++v10;
            if (v11)
            {
              v10 = v15;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        v16 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        result = *(*(v4 + 48) + ((v10 << 9) | (8 * v16)));
        if (!result)
        {
          goto LABEL_25;
        }
      }

      *v6++ = result;
      ++v12;
      if (v14 == a3)
      {
        v12 = a3;
LABEL_25:
        v9 = v20;
        v7 = v21;
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18F468520(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_19:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_19;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            v13 = v15;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

LABEL_14:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_18F0FD724(*(a4 + 56) + 40 * (v16 | (v13 << 6)), v17);
      sub_18F0FD0B4(v17, v18);
      result = sub_18F0FD0B4(v18, v11);
      v11 += 40;
      v12 = v14;
      if (v14 == v10)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18F468678(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;
      result = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18F468824(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_18F5218DC();

  return v4;
}

uint64_t sub_18F468890()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_89();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_66(v1);

  return sub_18F465094(v3, v4, v5, v6);
}

_BYTE *storeEnumTagSinglePayload for FetchOptionsDefaultsValueError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_18F4689D0()
{
  result = qword_1EACD9980;
  if (!qword_1EACD9980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD9980);
  }

  return result;
}

unint64_t sub_18F468A24()
{
  result = qword_1EACD9988;
  if (!qword_1EACD9988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD9988);
  }

  return result;
}

void sub_18F468A78()
{
  OUTLINED_FUNCTION_31();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v1[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_24_23();
  OUTLINED_FUNCTION_31_9();

  __asm { BR              X4 }
}

void sub_18F468B28()
{
  OUTLINED_FUNCTION_24_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v1[1] = sub_18F0FC874;
  OUTLINED_FUNCTION_24_23();
  OUTLINED_FUNCTION_29_1();

  __asm { BR              X8 }
}

uint64_t sub_18F468C08()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_89();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_66(v1);

  return sub_18F461E3C(v3, v4, v5, v6);
}

uint64_t sub_18F468C94()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_89();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_66(v1);

  return sub_18F461D24(v3, v4, v5, v6);
}

double OUTLINED_FUNCTION_49_18()
{

  return sub_18F13D224(v2, v0, v1, (v3 + 16));
}

uint64_t OUTLINED_FUNCTION_82_10()
{
}

uint64_t sub_18F468D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v11 = sub_18F520B3C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, v11);
  sub_18F1168B4();
  v15 = sub_18F5216CC();
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  sub_18F49CB80();
  v16 = type metadata accessor for IntentDialog(0);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v16);
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA708);
  swift_allocObject();
  v17 = sub_18F1B450C(v14, 0, 0, v15, v25, v23, v10, v8, v21);
  sub_18F49CE24(a3, &qword_1EACCF7A0);
  sub_18F49CE24(v20, &qword_1EACCF7A8);
  (*(v12 + 8))(a1, v11);
  return v17;
}

uint64_t sub_18F469010()
{
  OUTLINED_FUNCTION_69();
  v0 = sub_18F47819C();
  OUTLINED_FUNCTION_402_0(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_400_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_112_3(v2);

  return sub_18F1316F0(v4);
}

uint64_t sub_18F469098()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F469198()
{
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_22();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_395_0(v1);
  v2 = OUTLINED_FUNCTION_54_21(&qword_1EACDA630);
  OUTLINED_FUNCTION_303_0(v2);
  v3 = sub_18F47776C();
  OUTLINED_FUNCTION_404_0(v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_171_3(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_112_3(v5);

  return sub_18F13A9F0(v7);
}

uint64_t sub_18F469254()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F469368()
{
  OUTLINED_FUNCTION_69();
  v0 = sub_18F478428();
  OUTLINED_FUNCTION_402_0(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_400_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_112_3(v2);

  return sub_18F1316F0(v4);
}

uint64_t sub_18F4693F0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F4694F0()
{
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_22();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_395_0(v1);
  v2 = OUTLINED_FUNCTION_54_21(&qword_1EACDA5E0);
  OUTLINED_FUNCTION_303_0(v2);
  v3 = sub_18F4779F8();
  OUTLINED_FUNCTION_404_0(v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_171_3(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_112_3(v5);

  return sub_18F13A9F0(v7);
}

uint64_t sub_18F4695AC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F4696A4()
{
  OUTLINED_FUNCTION_69();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F469708()
{
  OUTLINED_FUNCTION_69();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F46976C()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F4697E4()
{
  OUTLINED_FUNCTION_69();
  v0 = sub_18F4786B4();
  OUTLINED_FUNCTION_402_0(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_400_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_112_3(v2);

  return sub_18F1316F0(v4);
}

uint64_t sub_18F46986C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F46996C()
{
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_22();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_395_0(v1);
  v2 = OUTLINED_FUNCTION_54_21(&qword_1EACDA6F8);
  OUTLINED_FUNCTION_303_0(v2);
  v3 = sub_18F477C84();
  OUTLINED_FUNCTION_404_0(v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_171_3(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_112_3(v5);

  return sub_18F13A9F0(v7);
}

uint64_t sub_18F469A44()
{
  OUTLINED_FUNCTION_69();
  v0 = sub_18F478940();
  OUTLINED_FUNCTION_402_0(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_400_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_112_3(v2);

  return sub_18F1316F0(v4);
}

uint64_t sub_18F469ACC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F469BCC()
{
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_22();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  OUTLINED_FUNCTION_395_0(v1);
  v2 = OUTLINED_FUNCTION_54_21(&qword_1EACDA550);
  OUTLINED_FUNCTION_303_0(v2);
  v3 = sub_18F477F10();
  OUTLINED_FUNCTION_404_0(v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_171_3(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_112_3(v5);

  return sub_18F13A9F0(v7);
}

void sub_18F469C88()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13_6();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_79_0();
  v6 = sub_18F52187C();
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_229_2();
  OUTLINED_FUNCTION_120_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_226_1();
  OUTLINED_FUNCTION_132();
  sub_18F52185C();
  v9 = [v1 filename];
  sub_18F5218DC();

  sub_18F52183C();

  OUTLINED_FUNCTION_132();
  sub_18F52185C();
  OUTLINED_FUNCTION_361();
  v10 = sub_18F520B3C();
  v11 = OUTLINED_FUNCTION_25_46(v10);
  OUTLINED_FUNCTION_11_59(v11);
  OUTLINED_FUNCTION_93_12(v12, xmmword_18F540410);
  OUTLINED_FUNCTION_34_35(v13);
  sub_18F0FF914();
  OUTLINED_FUNCTION_260_1();
  sub_18F0FF914();
  OUTLINED_FUNCTION_13_7();
  v14 = OUTLINED_FUNCTION_109_8();
  v15(v14);
  OUTLINED_FUNCTION_1_121();
  sub_18F115548();
  OUTLINED_FUNCTION_16();
}

void sub_18F469E84()
{
  OUTLINED_FUNCTION_18();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  OUTLINED_FUNCTION_10(v0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_6();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_79_0();
  v4 = sub_18F52187C();
  v5 = OUTLINED_FUNCTION_10(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_229_2();
  OUTLINED_FUNCTION_120_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_226_1();
  OUTLINED_FUNCTION_132();
  sub_18F52185C();
  OUTLINED_FUNCTION_92_0();
  sub_18F52183C();
  OUTLINED_FUNCTION_132();
  sub_18F52185C();
  OUTLINED_FUNCTION_361();
  v7 = sub_18F520B3C();
  v8 = OUTLINED_FUNCTION_25_46(v7);
  OUTLINED_FUNCTION_11_59(v8);
  OUTLINED_FUNCTION_93_12(v9, xmmword_18F540410);
  OUTLINED_FUNCTION_34_35(v10);
  sub_18F0FF914();
  OUTLINED_FUNCTION_260_1();
  sub_18F0FF914();
  OUTLINED_FUNCTION_13_7();
  v11 = OUTLINED_FUNCTION_109_8();
  v12(v11);
  OUTLINED_FUNCTION_1_121();
  sub_18F115548();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F46A04C(void (*a1)(void))
{
  v2 = OUTLINED_FUNCTION_366();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_50();
  a1();
  sub_18F520B3C();
  OUTLINED_FUNCTION_0_55();
  v4 = OUTLINED_FUNCTION_82();
  v5(v4);
  OUTLINED_FUNCTION_1_121();
  return sub_18F115548();
}

void sub_18F46A0E8()
{
  OUTLINED_FUNCTION_18();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  OUTLINED_FUNCTION_10(v0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_6();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_79_0();
  v4 = sub_18F52187C();
  v5 = OUTLINED_FUNCTION_10(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_229_2();
  OUTLINED_FUNCTION_120_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_226_1();
  OUTLINED_FUNCTION_132();
  sub_18F52185C();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  OUTLINED_FUNCTION_82();
  sub_18F52183C();

  OUTLINED_FUNCTION_132();
  sub_18F52185C();
  OUTLINED_FUNCTION_361();
  v7 = sub_18F520B3C();
  v8 = OUTLINED_FUNCTION_25_46(v7);
  OUTLINED_FUNCTION_11_59(v8);
  OUTLINED_FUNCTION_93_12(v9, xmmword_18F540410);
  OUTLINED_FUNCTION_34_35(v10);
  sub_18F0FF914();
  OUTLINED_FUNCTION_260_1();
  sub_18F0FF914();
  OUTLINED_FUNCTION_13_7();
  v11 = OUTLINED_FUNCTION_109_8();
  v12(v11);
  OUTLINED_FUNCTION_1_121();
  sub_18F115548();
  OUTLINED_FUNCTION_16();
}

void sub_18F46A2B4()
{
  OUTLINED_FUNCTION_18();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13_6();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_79_0();
  v6 = sub_18F52187C();
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  v8 = OUTLINED_FUNCTION_229_2();
  v9 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_226_1();
  OUTLINED_FUNCTION_132();
  sub_18F52185C();
  sub_18F52183C();
  OUTLINED_FUNCTION_132();
  sub_18F52185C();
  OUTLINED_FUNCTION_361();
  v10 = sub_18F520B3C();
  v11 = OUTLINED_FUNCTION_25_46(v10);
  v12 = OUTLINED_FUNCTION_66_8();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v0);
  v18 = OUTLINED_FUNCTION_3_39();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v11);
  *(v1 + v9[9]) = xmmword_18F540410;
  *(v1 + v9[10]) = 0;
  *(v1 + v9[11]) = MEMORY[0x1E69E7CC0];
  v21 = OUTLINED_FUNCTION_94_12(v9[12]);
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v0);
  sub_18F0FF914();
  OUTLINED_FUNCTION_260_1();
  sub_18F0FF914();
  OUTLINED_FUNCTION_13_7();
  v24 = OUTLINED_FUNCTION_109_8();
  v25(v24);
  OUTLINED_FUNCTION_1_121();
  sub_18F115548();
  OUTLINED_FUNCTION_16();
}

void sub_18F46A4C8()
{
  OUTLINED_FUNCTION_18();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  OUTLINED_FUNCTION_10(v0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_6();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_79_0();
  v4 = sub_18F52187C();
  v5 = OUTLINED_FUNCTION_10(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_229_2();
  OUTLINED_FUNCTION_120_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_226_1();
  OUTLINED_FUNCTION_132();
  sub_18F52185C();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  OUTLINED_FUNCTION_82();
  sub_18F52183C();

  OUTLINED_FUNCTION_132();
  sub_18F52185C();
  OUTLINED_FUNCTION_361();
  v7 = sub_18F520B3C();
  v8 = OUTLINED_FUNCTION_25_46(v7);
  OUTLINED_FUNCTION_11_59(v8);
  OUTLINED_FUNCTION_93_12(v9, xmmword_18F540410);
  OUTLINED_FUNCTION_34_35(v10);
  sub_18F0FF914();
  OUTLINED_FUNCTION_260_1();
  sub_18F0FF914();
  OUTLINED_FUNCTION_13_7();
  v11 = OUTLINED_FUNCTION_109_8();
  v12(v11);
  OUTLINED_FUNCTION_1_121();
  sub_18F115548();
  OUTLINED_FUNCTION_16();
}

void sub_18F46A694()
{
  OUTLINED_FUNCTION_18();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13_6();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_79_0();
  v6 = sub_18F52187C();
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  v8 = OUTLINED_FUNCTION_229_2();
  v9 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_226_1();
  OUTLINED_FUNCTION_132();
  sub_18F52185C();
  sub_18F52183C();
  OUTLINED_FUNCTION_132();
  sub_18F52185C();
  OUTLINED_FUNCTION_361();
  v10 = sub_18F520B3C();
  v11 = OUTLINED_FUNCTION_25_46(v10);
  v12 = OUTLINED_FUNCTION_66_8();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v0);
  v18 = OUTLINED_FUNCTION_3_39();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v11);
  *(v1 + v9[9]) = xmmword_18F540410;
  *(v1 + v9[10]) = 0;
  *(v1 + v9[11]) = MEMORY[0x1E69E7CC0];
  v21 = OUTLINED_FUNCTION_94_12(v9[12]);
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v0);
  sub_18F0FF914();
  OUTLINED_FUNCTION_260_1();
  sub_18F0FF914();
  OUTLINED_FUNCTION_13_7();
  v24 = OUTLINED_FUNCTION_109_8();
  v25(v24);
  OUTLINED_FUNCTION_1_121();
  sub_18F115548();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F46A8A0()
{
  v1 = OUTLINED_FUNCTION_366();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_50();
  IntentPaymentMethod.displayRepresentation.getter(v0);
  sub_18F520B3C();
  OUTLINED_FUNCTION_0_55();
  v3 = OUTLINED_FUNCTION_82();
  v4(v3);
  OUTLINED_FUNCTION_1_121();
  return sub_18F115548();
}

uint64_t sub_18F46A944()
{
  OUTLINED_FUNCTION_4_17();
  v0 = type metadata accessor for DisplayRepresentation();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_257_1();
  IntentCurrencyAmount.displayRepresentation.getter(v2);
  sub_18F520B3C();
  OUTLINED_FUNCTION_0_55();
  v3 = OUTLINED_FUNCTION_66();
  v4(v3);
  OUTLINED_FUNCTION_1_121();
  return sub_18F115548();
}

uint64_t sub_18F46A9E0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for DisplayRepresentation();
  v9 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F520ACC();
  v12 = sub_18F520B3C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v12);
  v13 = type metadata accessor for DisplayRepresentation.Image(0);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v13);
  __swift_storeEnumTagSinglePayload(&v11[v9[7]], 1, 1, v12);
  __swift_storeEnumTagSinglePayload(&v11[v9[8]], 1, 1, v13);
  *&v11[v9[9]] = xmmword_18F540410;
  *&v11[v9[10]] = 0;
  *&v11[v9[11]] = MEMORY[0x1E69E7CC0];
  __swift_storeEnumTagSinglePayload(&v11[v9[12]], 1, 1, v12);
  sub_18F0FF914();
  sub_18F0FF914();
  (*(*(v12 - 8) + 16))(a1, v11, v12);
  return sub_18F115548();
}

uint64_t sub_18F46AC50@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_18F52187C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = type metadata accessor for DisplayRepresentation();
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F52186C();
  sub_18F52185C();
  sub_18F478CB4();
  sub_18F52183C();

  sub_18F52185C();
  sub_18F520AEC();
  v13 = sub_18F520B3C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v13);
  v14 = type metadata accessor for DisplayRepresentation.Image(0);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v14);
  __swift_storeEnumTagSinglePayload(&v12[v10[7]], 1, 1, v13);
  __swift_storeEnumTagSinglePayload(&v12[v10[8]], 1, 1, v14);
  *&v12[v10[9]] = xmmword_18F540410;
  *&v12[v10[10]] = 0;
  *&v12[v10[11]] = MEMORY[0x1E69E7CC0];
  __swift_storeEnumTagSinglePayload(&v12[v10[12]], 1, 1, v13);
  sub_18F0FF914();
  sub_18F0FF914();
  (*(*(v13 - 8) + 16))(a1, v12, v13);
  return sub_18F115548();
}

void sub_18F46AF74()
{
  OUTLINED_FUNCTION_18();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  OUTLINED_FUNCTION_10(v0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_6();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_79_0();
  v4 = sub_18F52187C();
  v5 = OUTLINED_FUNCTION_10(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  type metadata accessor for DisplayRepresentation();
  OUTLINED_FUNCTION_120_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_269_1();
  OUTLINED_FUNCTION_132();
  sub_18F52185C();
  OUTLINED_FUNCTION_0_144();
  sub_18F478CB4();
  sub_18F52183C();

  OUTLINED_FUNCTION_132();
  sub_18F52185C();
  sub_18F520AEC();
  v7 = sub_18F520B3C();
  v8 = OUTLINED_FUNCTION_25_46(v7);
  OUTLINED_FUNCTION_11_59(v8);
  OUTLINED_FUNCTION_93_12(v9, xmmword_18F540410);
  OUTLINED_FUNCTION_34_35(v10);
  sub_18F0FF914();
  OUTLINED_FUNCTION_260_1();
  sub_18F0FF914();
  OUTLINED_FUNCTION_13_7();
  v11 = OUTLINED_FUNCTION_109_8();
  v12(v11);
  OUTLINED_FUNCTION_1_121();
  sub_18F115548();
  OUTLINED_FUNCTION_16();
}

void sub_18F46B154()
{
  OUTLINED_FUNCTION_18();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  OUTLINED_FUNCTION_10(v0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_13_6();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_79_0();
  v4 = sub_18F52187C();
  v5 = OUTLINED_FUNCTION_10(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  type metadata accessor for DisplayRepresentation();
  OUTLINED_FUNCTION_120_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_269_1();
  OUTLINED_FUNCTION_132();
  sub_18F52185C();
  OUTLINED_FUNCTION_0_144();
  sub_18F478CB4();
  sub_18F52183C();

  OUTLINED_FUNCTION_132();
  sub_18F52185C();
  sub_18F520AEC();
  v7 = sub_18F520B3C();
  v8 = OUTLINED_FUNCTION_25_46(v7);
  OUTLINED_FUNCTION_11_59(v8);
  OUTLINED_FUNCTION_93_12(v9, xmmword_18F540410);
  OUTLINED_FUNCTION_34_35(v10);
  sub_18F0FF914();
  OUTLINED_FUNCTION_260_1();
  sub_18F0FF914();
  OUTLINED_FUNCTION_13_7();
  v11 = OUTLINED_FUNCTION_109_8();
  v12(v11);
  OUTLINED_FUNCTION_1_121();
  sub_18F115548();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F46B34C()
{
  OUTLINED_FUNCTION_4_17();
  v0 = type metadata accessor for DisplayRepresentation();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_257_1();
  IntentMessageConversation.displayRepresentation.getter(v2);
  sub_18F520B3C();
  OUTLINED_FUNCTION_0_55();
  v3 = OUTLINED_FUNCTION_66();
  v4(v3);
  OUTLINED_FUNCTION_1_121();
  return sub_18F115548();
}

void sub_18F46B3E8()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_23();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_79_0();
  type metadata accessor for DisplayRepresentation();
  OUTLINED_FUNCTION_120_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_35_5();
  sub_18F520ACC();
  v12 = sub_18F520B3C();
  v13 = OUTLINED_FUNCTION_48_25();
  v16 = OUTLINED_FUNCTION_150_5(v13, v14, v15, v12);
  type metadata accessor for DisplayRepresentation.Image(v16);
  OUTLINED_FUNCTION_151_3();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v12);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v0);
  *(v11 + v1[9]) = xmmword_18F540410;
  *(v11 + v1[10]) = 0;
  *(v11 + v1[11]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v12);
  sub_18F0FF914();
  sub_18F0FF914();
  (*(*(v12 - 8) + 16))(v3, v11, v12);
  OUTLINED_FUNCTION_1_121();
  sub_18F115548();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F46B604()
{
  OUTLINED_FUNCTION_79();
  v0 = OUTLINED_FUNCTION_366();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_22();
  Duration.displayRepresentation.getter(v2);
  sub_18F520B3C();
  OUTLINED_FUNCTION_0_55();
  v3 = OUTLINED_FUNCTION_82();
  v4(v3);
  OUTLINED_FUNCTION_1_121();
  return sub_18F115548();
}

uint64_t sub_18F46B6A0(uint64_t a1)
{
  *(v1 + 624) = a1;
  v2 = swift_task_alloc();
  *(v1 + 632) = v2;
  *v2 = v1;
  v2[1] = sub_18F46B744;

  return sub_18F468FF4();
}

uint64_t sub_18F46B744()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_24_10();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_6_1(&unk_18F569D80);
    v9 = swift_task_alloc();
    *(v3 + 640) = v9;
    *v9 = v5;
    v9[1] = sub_18F46B89C;
    v10 = OUTLINED_FUNCTION_246_1(*(v3 + 624));

    return v11(v10);
  }
}

uint64_t sub_18F46B89C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 648) = v4;
  *(v2 + 656) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_71();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

void sub_18F46B9BC()
{
  v30 = v0;
  if (dynamic_cast_existential_1_conditional(&type metadata for MailMessagePrototype) || dynamic_cast_existential_1_conditional(&type metadata for MailMessagePrototype) || (v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA1E0), dynamic_cast_existential_1_conditional(v6)) && (OUTLINED_FUNCTION_206_2(), (v7() & 1) != 0))
  {
LABEL_3:
    v4 = OUTLINED_FUNCTION_47();

    v5(v4);
  }

  else
  {
    v8 = v0[81];
    v9 = *(v8 + 16);
    if (v9)
    {
      v28 = MEMORY[0x1E69E7CC0];
      sub_18F3AAF0C();
      v10 = v28;
      v11 = (v8 + 32);
      v1 = v9 - 1;
      v2 = 168;
      while (1)
      {
        memcpy(v0 + 2, v11, 0x91uLL);
        v3 = v0[16];
        v12 = v0[17];
        memcpy(__dst, v11, sizeof(__dst));
        sub_18F3545F4((v0 + 2), (v0 + 21));
        v13 = *(v28 + 16);
        v14 = *(v28 + 24);
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        if (v13 >= v14 >> 1)
        {
          sub_18F3AAF0C();
        }

        *(v28 + 16) = v13 + 1;
        v15 = (v28 + 168 * v13);
        v15[4] = v3;
        v15[5] = v12;
        memcpy(v15 + 6, __dst, 0x91uLL);
        if (!v1)
        {
          break;
        }

        --v1;
        v11 += 152;
      }
    }

    else
    {

      v10 = MEMORY[0x1E69E7CC0];
    }

    OUTLINED_FUNCTION_426(v16, &qword_1EACD70D8, &unk_18F55A020);
    OUTLINED_FUNCTION_403_0();
    v17 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v18 = (v2 + 16 * v3);
    for (i = v3; ; ++i)
    {
      if (v1 == i)
      {

        goto LABEL_3;
      }

      if (i >= v1)
      {
        break;
      }

      v3 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_32;
      }

      if (*(v10 + 16))
      {
        v21 = *(v18 - 1);
        v20 = *v18;
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        v22 = sub_18F0F713C(v21, v20);
        if (v23)
        {
          memcpy(v0 + 40, (*(v10 + 56) + 152 * v22), 0x91uLL);
          sub_18F3545F4((v0 + 40), (v0 + 59));

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_11_29();
            sub_18F169988();
            v17 = v26;
          }

          v25 = *(v17 + 16);
          v24 = *(v17 + 24);
          if (v25 >= v24 >> 1)
          {
            OUTLINED_FUNCTION_0_28(v24);
            OUTLINED_FUNCTION_14();
            sub_18F169988();
            v17 = v27;
          }

          *(v17 + 16) = v25 + 1;
          memcpy((v17 + 152 * v25 + 32), v0 + 40, 0x91uLL);
          goto LABEL_17;
        }
      }

      v18 += 2;
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }
}

uint64_t sub_18F46BCCC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_18F46BD70;

  return sub_18F46934C();
}

uint64_t sub_18F46BD70()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_24_10();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_6_1(&unk_18F569CC0);
    v9 = swift_task_alloc();
    *(v3 + 32) = v9;
    *v9 = v5;
    v9[1] = sub_18F46BEC8;
    v10 = OUTLINED_FUNCTION_246_1(*(v3 + 16));

    return v11(v10);
  }
}

uint64_t sub_18F46BEC8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v4;
  *(v2 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_71();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

void sub_18F46BFE4()
{
  if (dynamic_cast_existential_1_conditional(&type metadata for MailAccountPrototype) || dynamic_cast_existential_1_conditional(&type metadata for MailAccountPrototype) || (v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA170), dynamic_cast_existential_1_conditional(v9)) && (OUTLINED_FUNCTION_206_2(), (v10() & 1) != 0))
  {
LABEL_3:
    v7 = OUTLINED_FUNCTION_47();

    v8(v7);
  }

  else
  {
    v11 = *(v2 + 40);
    v38 = v2;
    if (*(v11 + 16))
    {
      OUTLINED_FUNCTION_317_1();
      sub_18F3AAF4C();
      OUTLINED_FUNCTION_287_0();
      do
      {
        OUTLINED_FUNCTION_249_0();

        swift_bridgeObjectRetain_n();
        v12 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        if (v1 >= v11 >> 1)
        {
          OUTLINED_FUNCTION_316_0();
          sub_18F3AAF4C();
          v0 = v44;
        }

        OUTLINED_FUNCTION_164_2(v12, v13, v14, v15, v16, v17, v18, v19, v37, v38, v39, v40, v41, v3, v43);
      }

      while (!v20);
      v2 = v38;
    }

    else
    {

      v0 = MEMORY[0x1E69E7CC0];
    }

    OUTLINED_FUNCTION_426(v21, &qword_1EACD70D0, &unk_18F55A018);
    OUTLINED_FUNCTION_401_0();
    v22 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v23 = v4 + 16 * v6;
    for (i = v6; ; ++i)
    {
      if (v5 == i)
      {

        goto LABEL_3;
      }

      if (i >= v5)
      {
        break;
      }

      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_32;
      }

      if (*(v0 + 16))
      {
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        v25 = OUTLINED_FUNCTION_346();
        sub_18F0F713C(v25, v26);
        if (v27)
        {
          OUTLINED_FUNCTION_248_0();

          _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
          _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v42 = v2;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_11_29();
            sub_18F169A58();
            v22 = isUniquelyReferenced_nonNull_native;
          }

          v2 = *(v22 + 16);
          v36 = *(v22 + 24);
          if (v2 >= v36 >> 1)
          {
            OUTLINED_FUNCTION_0_28(v36);
            OUTLINED_FUNCTION_14();
            sub_18F169A58();
            v22 = isUniquelyReferenced_nonNull_native;
          }

          OUTLINED_FUNCTION_186_4(isUniquelyReferenced_nonNull_native, v29, v30, v31, v32, v33, v34, v35, v37, v38, v39, v40, v41, v42);
          goto LABEL_17;
        }
      }

      v23 += 16;
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }
}

uint64_t sub_18F46C270(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_18F46C314;

  return sub_18F4697C8();
}

uint64_t sub_18F46C314()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_24_10();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_6_1(&unk_18F569F98);
    v9 = swift_task_alloc();
    *(v3 + 32) = v9;
    *v9 = v5;
    v9[1] = sub_18F46C46C;
    v10 = OUTLINED_FUNCTION_246_1(*(v3 + 16));

    return v11(v10);
  }
}

uint64_t sub_18F46C46C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v4;
  *(v2 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_71();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

void sub_18F46C588()
{
  if (dynamic_cast_existential_1_conditional(&type metadata for MailAddresseePrototype) || dynamic_cast_existential_1_conditional(&type metadata for MailAddresseePrototype) || (v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA110), dynamic_cast_existential_1_conditional(v9)) && (OUTLINED_FUNCTION_206_2(), (v10() & 1) != 0))
  {
LABEL_3:
    v7 = OUTLINED_FUNCTION_47();

    v8(v7);
  }

  else
  {
    v11 = *(v2 + 40);
    v38 = v2;
    if (*(v11 + 16))
    {
      OUTLINED_FUNCTION_317_1();
      sub_18F3AAF8C();
      OUTLINED_FUNCTION_287_0();
      do
      {
        OUTLINED_FUNCTION_249_0();

        swift_bridgeObjectRetain_n();
        v12 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        if (v1 >= v11 >> 1)
        {
          OUTLINED_FUNCTION_316_0();
          sub_18F3AAF8C();
          v0 = v44;
        }

        OUTLINED_FUNCTION_164_2(v12, v13, v14, v15, v16, v17, v18, v19, v37, v38, v39, v40, v41, v3, v43);
      }

      while (!v20);
      v2 = v38;
    }

    else
    {

      v0 = MEMORY[0x1E69E7CC0];
    }

    OUTLINED_FUNCTION_426(v21, &qword_1EACD70E0, &unk_18F569FA0);
    OUTLINED_FUNCTION_401_0();
    v22 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v23 = v4 + 16 * v6;
    for (i = v6; ; ++i)
    {
      if (v5 == i)
      {

        goto LABEL_3;
      }

      if (i >= v5)
      {
        break;
      }

      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_32;
      }

      if (*(v0 + 16))
      {
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        v25 = OUTLINED_FUNCTION_346();
        sub_18F0F713C(v25, v26);
        if (v27)
        {
          OUTLINED_FUNCTION_248_0();

          _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
          _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v42 = v2;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_11_29();
            sub_18F169A74();
            v22 = isUniquelyReferenced_nonNull_native;
          }

          v2 = *(v22 + 16);
          v36 = *(v22 + 24);
          if (v2 >= v36 >> 1)
          {
            OUTLINED_FUNCTION_0_28(v36);
            OUTLINED_FUNCTION_14();
            sub_18F169A74();
            v22 = isUniquelyReferenced_nonNull_native;
          }

          OUTLINED_FUNCTION_186_4(isUniquelyReferenced_nonNull_native, v29, v30, v31, v32, v33, v34, v35, v37, v38, v39, v40, v41, v42);
          goto LABEL_17;
        }
      }

      v23 += 16;
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }
}

uint64_t sub_18F46C814(uint64_t a1)
{
  *(v1 + 272) = a1;
  v2 = swift_task_alloc();
  *(v1 + 280) = v2;
  *v2 = v1;
  v2[1] = sub_18F46C8B8;

  return sub_18F469A28();
}

uint64_t sub_18F46C8B8()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;

  if (v0)
  {
    OUTLINED_FUNCTION_24_10();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_6_1(&unk_18F569B30);
    v9 = swift_task_alloc();
    *(v3 + 288) = v9;
    *v9 = v5;
    v9[1] = sub_18F46CA10;
    v10 = OUTLINED_FUNCTION_246_1(*(v3 + 272));

    return v11(v10);
  }
}

uint64_t sub_18F46CA10()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 296) = v4;
  *(v2 + 304) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_71();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

void sub_18F46CB2C()
{
  if (dynamic_cast_existential_1_conditional(&type metadata for MessageGroupPrototype) || dynamic_cast_existential_1_conditional(&type metadata for MessageGroupPrototype) || (v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA2B8), dynamic_cast_existential_1_conditional(v6)) && (OUTLINED_FUNCTION_206_2(), (v7() & 1) != 0))
  {
LABEL_3:
    v4 = OUTLINED_FUNCTION_47();

    v5(v4);
  }

  else
  {
    v8 = *(v0 + 296);
    v9 = *(v8 + 16);
    if (v9)
    {
      v39 = MEMORY[0x1E69E7CC0];
      sub_18F3AAFCC();
      v10 = v39;
      v11 = (v8 + 32);
      v1 = v9 - 1;
      v2 = 80;
      while (1)
      {
        v12 = *v11;
        v13 = v11[1];
        v14 = v11[2];
        *(v0 + 57) = *(v11 + 41);
        *(v0 + 32) = v13;
        *(v0 + 48) = v14;
        *(v0 + 16) = v12;
        v3 = *(v0 + 40);
        v15 = *(v0 + 48);
        v40 = *v11;
        v41 = v11[1];
        *v42 = v11[2];
        *&v42[9] = *(v11 + 41);
        sub_18F354598(v0 + 16, v0 + 80);
        v16 = *(v39 + 16);
        v17 = *(v39 + 24);
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        if (v16 >= v17 >> 1)
        {
          sub_18F3AAFCC();
        }

        *(v39 + 16) = v16 + 1;
        v18 = v39 + 80 * v16;
        *(v18 + 32) = v3;
        *(v18 + 40) = v15;
        *(v18 + 89) = *&v42[9];
        *(v18 + 64) = v41;
        *(v18 + 80) = *v42;
        *(v18 + 48) = v40;
        if (!v1)
        {
          break;
        }

        --v1;
        v11 += 4;
      }
    }

    else
    {

      v10 = MEMORY[0x1E69E7CC0];
    }

    OUTLINED_FUNCTION_426(v19, &qword_1EACD70C8, &unk_18F55A010);
    OUTLINED_FUNCTION_403_0();
    v20 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v21 = (v2 + 16 * v3);
    for (i = v3; ; ++i)
    {
      if (v1 == i)
      {

        goto LABEL_3;
      }

      if (i >= v1)
      {
        break;
      }

      v3 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_32;
      }

      if (*(v10 + 16))
      {
        v24 = *(v21 - 1);
        v23 = *v21;
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        v25 = sub_18F0F713C(v24, v23);
        if (v26)
        {
          v27 = (*(v10 + 56) + (v25 << 6));
          v28 = *v27;
          v29 = v27[1];
          v30 = v27[2];
          *(v0 + 185) = *(v27 + 41);
          *(v0 + 160) = v29;
          *(v0 + 176) = v30;
          *(v0 + 144) = v28;
          sub_18F354598(v0 + 144, v0 + 208);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_11_29();
            sub_18F169B6C();
            v20 = v37;
          }

          v32 = *(v20 + 16);
          v31 = *(v20 + 24);
          if (v32 >= v31 >> 1)
          {
            OUTLINED_FUNCTION_0_28(v31);
            OUTLINED_FUNCTION_14();
            sub_18F169B6C();
            v20 = v38;
          }

          *(v20 + 16) = v32 + 1;
          v33 = (v20 + (v32 << 6));
          v34 = *(v0 + 144);
          v35 = *(v0 + 160);
          v36 = *(v0 + 176);
          *(v33 + 73) = *(v0 + 185);
          v33[3] = v35;
          v33[4] = v36;
          v33[2] = v34;
          goto LABEL_17;
        }
      }

      v21 += 2;
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }
}

uint64_t sub_18F46CE60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    v7 = OUTLINED_FUNCTION_336_0(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(v7);
    OUTLINED_FUNCTION_29_13();
    v8 = sub_18F522AEC();
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC8];
  }

  v11 = v8;
  a4(a1, 1, &v11);
  v9 = v11;
  if (v4)
  {
  }

  return v9;
}

uint64_t sub_18F46CEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a2;
  v24 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - v13;
  v15 = sub_18F520B3C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD03F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F53F800;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x800000018F525E50;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0408);
  *(inited + 48) = a4;
  sub_18F1168B4();
  v20 = sub_18F5216CC();
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_18F49CB80();
  v21 = type metadata accessor for IntentDialog(0);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v21);
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  swift_allocObject();
  v22 = sub_18F1B8BE0(v18, a3, v20, v30, v28, v14, v12, v26);
  sub_18F49CE24(a5, &qword_1EACCF7A0);
  sub_18F49CE24(v25, &qword_1EACCF7A8);
  (*(v16 + 8))(v24, v15);
  return v22;
}

uint64_t sub_18F46D1F0()
{
  swift_beginAccess();
  sub_18F49CB80();
  if (v12)
  {
    sub_18F0FD0B4(&v11, v13);
    sub_18F0FD724(v13, &v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      return v10;
    }

    *&v11 = 0;
    *(&v11 + 1) = 0xE000000000000000;
    sub_18F52279C();
    if (*(v0 + qword_1ED707728 + 8))
    {
      v3 = *(v0 + qword_1ED707728);
      v4 = *(v0 + qword_1ED707728 + 8);
    }

    else
    {
      v3 = 0x6E776F6E6B6E753CLL;
      v4 = 0xE90000000000003ELL;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v3, v4);

    MEMORY[0x193ADB000](0xD000000000000017, 0x800000018F526A90);
    __swift_project_boxed_opaque_existential_1Tm(v13, v13[3]);
    swift_getDynamicType();
    v7 = sub_18F52307C();
    MEMORY[0x193ADB000](v7);

    MEMORY[0x193ADB000](0xD000000000000017, 0x800000018F529B80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA840);
    v8 = sub_18F52196C();
    MEMORY[0x193ADB000](v8);

    goto LABEL_15;
  }

  sub_18F49CE24(&v11, &qword_1EACD0620);
  v2 = MEMORY[0x1E69E6158];
  if (!dynamic_cast_existential_2_conditional(MEMORY[0x1E69E6158]))
  {
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_18F52279C();
    if (*(v0 + qword_1ED707728 + 8))
    {
      v5 = *(v0 + qword_1ED707728);
      v6 = *(v0 + qword_1ED707728 + 8);
    }

    else
    {
      v5 = 0x6E776F6E6B6E753CLL;
      v6 = 0xE90000000000003ELL;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v5, v6);

    MEMORY[0x193ADB000](0xD000000000000049, 0x800000018F529B30);
    *&v11 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA840);
    v9 = sub_18F52196C();
    MEMORY[0x193ADB000](v9);

LABEL_15:
    result = sub_18F522A3C();
    __break(1u);
    return result;
  }

  v11 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4470);
  swift_dynamicCast();
  return v13[0];
}

uint64_t sub_18F46D56C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_beginAccess();
  sub_18F49CB80();
  if (*&v19[24])
  {
    sub_18F0FD0B4(v19, v21);
    sub_18F0FD724(v21, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0DE8);
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_1Tm(v21);
      v6 = v19[48];
      v7 = *&v19[16];
      v8 = *&v19[32];
      *a1 = *v19;
      *(a1 + 16) = v7;
      *(a1 + 32) = v8;
      *(a1 + 48) = v6;
      return result;
    }

    *v19 = 1;
    memset(&v19[8], 0, 41);
    sub_18F1565AC(1);
    *v19 = 0;
    *&v19[8] = 0xE000000000000000;
    sub_18F52279C();
    v10 = *(v2 + qword_1ED707728 + 8);
    if (v10)
    {
      v11 = *(v2 + qword_1ED707728);
      v12 = v10;
    }

    else
    {
      v11 = 0x6E776F6E6B6E753CLL;
      v12 = 0xE90000000000003ELL;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v11, v12);

    MEMORY[0x193ADB000](0xD000000000000017, 0x800000018F526A90);
    __swift_project_boxed_opaque_existential_1Tm(v21, v21[3]);
    swift_getDynamicType();
    v16 = sub_18F52307C();
    MEMORY[0x193ADB000](v16);

    MEMORY[0x193ADB000](0xD000000000000017, 0x800000018F529B80);
    v20[0] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA838);
    v17 = sub_18F52196C();
    MEMORY[0x193ADB000](v17);

    goto LABEL_15;
  }

  sub_18F49CE24(v19, &qword_1EACD0620);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0DE8);
  result = dynamic_cast_existential_2_conditional(v9);
  if (!result)
  {
    *v19 = 0;
    *&v19[8] = 0xE000000000000000;
    sub_18F52279C();
    v13 = *(v2 + qword_1ED707728 + 8);
    if (v13)
    {
      v14 = *(v2 + qword_1ED707728);
      v15 = v13;
    }

    else
    {
      v14 = 0x6E776F6E6B6E753CLL;
      v15 = 0xE90000000000003ELL;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v14, v15);

    MEMORY[0x193ADB000](0xD000000000000049, 0x800000018F529B30);
    v21[0] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA838);
    v18 = sub_18F52196C();
    MEMORY[0x193ADB000](v18);

LABEL_15:
    result = sub_18F522A3C();
    __break(1u);
    return result;
  }

  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_18F46D93C()
{
  swift_beginAccess();
  sub_18F49CB80();
  if (v12)
  {
    sub_18F0FD0B4(&v11, v13);
    sub_18F0FD724(v13, &v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4470);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      return v10;
    }

    *&v11 = 0;
    *(&v11 + 1) = 0xE000000000000000;
    sub_18F52279C();
    if (*(v0 + qword_1ED707728 + 8))
    {
      v3 = *(v0 + qword_1ED707728);
      v4 = *(v0 + qword_1ED707728 + 8);
    }

    else
    {
      v3 = 0x6E776F6E6B6E753CLL;
      v4 = 0xE90000000000003ELL;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v3, v4);

    MEMORY[0x193ADB000](0xD000000000000017, 0x800000018F526A90);
    __swift_project_boxed_opaque_existential_1Tm(v13, v13[3]);
    swift_getDynamicType();
    v7 = sub_18F52307C();
    MEMORY[0x193ADB000](v7);

    MEMORY[0x193ADB000](0xD000000000000017, 0x800000018F529B80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA830);
    v8 = sub_18F52196C();
    MEMORY[0x193ADB000](v8);

    goto LABEL_15;
  }

  sub_18F49CE24(&v11, &qword_1EACD0620);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4470);
  if (!dynamic_cast_existential_2_conditional(v2))
  {
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_18F52279C();
    if (*(v0 + qword_1ED707728 + 8))
    {
      v5 = *(v0 + qword_1ED707728);
      v6 = *(v0 + qword_1ED707728 + 8);
    }

    else
    {
      v5 = 0x6E776F6E6B6E753CLL;
      v6 = 0xE90000000000003ELL;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v5, v6);

    MEMORY[0x193ADB000](0xD000000000000049, 0x800000018F529B30);
    *&v11 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA830);
    v9 = sub_18F52196C();
    MEMORY[0x193ADB000](v9);

LABEL_15:
    result = sub_18F522A3C();
    __break(1u);
    return result;
  }

  return 0;
}

uint64_t sub_18F46DCA8()
{
  swift_beginAccess();
  sub_18F49CB80();
  if (v12)
  {
    sub_18F0FD0B4(&v11, v13);
    sub_18F0FD724(v13, &v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0DF8);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      return v10;
    }

    *&v11 = 0;
    *(&v11 + 1) = 0xE000000000000000;
    sub_18F52279C();
    if (*(v0 + qword_1ED707728 + 8))
    {
      v3 = *(v0 + qword_1ED707728);
      v4 = *(v0 + qword_1ED707728 + 8);
    }

    else
    {
      v3 = 0x6E776F6E6B6E753CLL;
      v4 = 0xE90000000000003ELL;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v3, v4);

    MEMORY[0x193ADB000](0xD000000000000017, 0x800000018F526A90);
    __swift_project_boxed_opaque_existential_1Tm(v13, v13[3]);
    swift_getDynamicType();
    v7 = sub_18F52307C();
    MEMORY[0x193ADB000](v7);

    MEMORY[0x193ADB000](0xD000000000000017, 0x800000018F529B80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA810);
    v8 = sub_18F52196C();
    MEMORY[0x193ADB000](v8);

    goto LABEL_15;
  }

  sub_18F49CE24(&v11, &qword_1EACD0620);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0DF8);
  if (!dynamic_cast_existential_2_conditional(v2))
  {
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_18F52279C();
    if (*(v0 + qword_1ED707728 + 8))
    {
      v5 = *(v0 + qword_1ED707728);
      v6 = *(v0 + qword_1ED707728 + 8);
    }

    else
    {
      v5 = 0x6E776F6E6B6E753CLL;
      v6 = 0xE90000000000003ELL;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v5, v6);

    MEMORY[0x193ADB000](0xD000000000000049, 0x800000018F529B30);
    *&v11 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA810);
    v9 = sub_18F52196C();
    MEMORY[0x193ADB000](v9);

LABEL_15:
    result = sub_18F522A3C();
    __break(1u);
    return result;
  }

  *&v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0E00);
  swift_dynamicCast();
  return v13[0];
}

uint64_t sub_18F46E040@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA800);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  swift_beginAccess();
  sub_18F49CB80();
  if (v22)
  {
    sub_18F0FD0B4(&v21, v23);
    sub_18F0FD724(v23, &v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD1480);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
      return sub_18F49CDB4(v6, a1);
    }

    __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
    sub_18F49CE24(v6, &qword_1EACDA800);
    *&v21 = 0;
    *(&v21 + 1) = 0xE000000000000000;
    sub_18F52279C();
    v11 = *(v2 + qword_1ED707728 + 8);
    if (v11)
    {
      v12 = *(v2 + qword_1ED707728);
      v13 = v11;
    }

    else
    {
      v12 = 0x6E776F6E6B6E753CLL;
      v13 = 0xE90000000000003ELL;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v12, v13);

    MEMORY[0x193ADB000](0xD000000000000017, 0x800000018F526A90);
    __swift_project_boxed_opaque_existential_1Tm(v23, v23[3]);
    swift_getDynamicType();
    v17 = sub_18F52307C();
    MEMORY[0x193ADB000](v17);

    MEMORY[0x193ADB000](0xD000000000000017, 0x800000018F529B80);
    v20 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA808);
    v18 = sub_18F52196C();
    MEMORY[0x193ADB000](v18);

    goto LABEL_15;
  }

  sub_18F49CE24(&v21, &qword_1EACD0620);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD1480);
  if (!dynamic_cast_existential_2_conditional(v9))
  {
    v23[0] = 0;
    v23[1] = 0xE000000000000000;
    sub_18F52279C();
    v14 = *(v2 + qword_1ED707728 + 8);
    if (v14)
    {
      v15 = *(v2 + qword_1ED707728);
      v16 = v14;
    }

    else
    {
      v15 = 0x6E776F6E6B6E753CLL;
      v16 = 0xE90000000000003ELL;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v15, v16);

    MEMORY[0x193ADB000](0xD000000000000049, 0x800000018F529B30);
    *&v21 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA808);
    v19 = sub_18F52196C();
    MEMORY[0x193ADB000](v19);

LABEL_15:
    result = sub_18F522A3C();
    __break(1u);
    return result;
  }

  v10 = sub_18F5208EC();
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v10);
}

uint64_t sub_18F46E458@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_beginAccess();
  sub_18F49CB80();
  if (*(&v19 + 1))
  {
    sub_18F0FD0B4(&v18, v22);
    sub_18F0FD724(v22, &v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_1Tm(v22);
      v5 = v20;
      v6 = v21;
      v7 = v19;
      *a1 = v18;
      *(a1 + 16) = v7;
      *(a1 + 32) = v5;
      *(a1 + 48) = v6 & 1;
      return result;
    }

    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    sub_18F1B8A24(0);
    *&v18 = 0;
    *(&v18 + 1) = 0xE000000000000000;
    sub_18F52279C();
    v8 = *(v2 + qword_1ED707728 + 8);
    if (v8)
    {
      v9 = *(v2 + qword_1ED707728);
      v10 = v8;
    }

    else
    {
      v9 = 0x6E776F6E6B6E753CLL;
      v10 = 0xE90000000000003ELL;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v9, v10);

    MEMORY[0x193ADB000](0xD000000000000017, 0x800000018F526A90);
    __swift_project_boxed_opaque_existential_1Tm(v22, v22[3]);
    swift_getDynamicType();
    v14 = sub_18F52307C();
    MEMORY[0x193ADB000](v14);

    MEMORY[0x193ADB000](0xD000000000000017, 0x800000018F529B80);
    v17 = &type metadata for MailAddresseePrototype;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA7F0);
    v15 = sub_18F52196C();
    MEMORY[0x193ADB000](v15);

    goto LABEL_15;
  }

  sub_18F49CE24(&v18, &qword_1EACD0620);
  if (!dynamic_cast_existential_2_conditional(&type metadata for MailAddresseePrototype))
  {
    *&v18 = 0;
    *(&v18 + 1) = 0xE000000000000000;
    sub_18F52279C();
    v11 = *(v2 + qword_1ED707728 + 8);
    if (v11)
    {
      v12 = *(v2 + qword_1ED707728);
      v13 = v11;
    }

    else
    {
      v12 = 0x6E776F6E6B6E753CLL;
      v13 = 0xE90000000000003ELL;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v12, v13);

    MEMORY[0x193ADB000](0xD000000000000049, 0x800000018F529B30);
    v22[0] = &type metadata for MailAddresseePrototype;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA7F0);
    v16 = sub_18F52196C();
    MEMORY[0x193ADB000](v16);

LABEL_15:
    result = sub_18F522A3C();
    __break(1u);
    return result;
  }

  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA7F8);
  return swift_dynamicCast();
}

uint64_t sub_18F46E834@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6A08);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = sub_18F520DEC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_18F49CB80();
  if (v27)
  {
    sub_18F0FD0B4(&v26, v28);
    sub_18F0FD724(v28, &v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
      v14 = *(v11 + 32);
      v14(v13, v9, v10);
      return (v14)(a1, v13, v10);
    }

    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
    sub_18F49CE24(v9, &qword_1EACD6A08);
    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_18F52279C();
    v16 = *(v2 + qword_1ED707728 + 8);
    if (v16)
    {
      v17 = *(v2 + qword_1ED707728);
      v18 = v16;
    }

    else
    {
      v17 = 0x6E776F6E6B6E753CLL;
      v18 = 0xE90000000000003ELL;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v17, v18);

    MEMORY[0x193ADB000](0xD000000000000017, 0x800000018F526A90);
    __swift_project_boxed_opaque_existential_1Tm(v28, v28[3]);
    swift_getDynamicType();
    v22 = sub_18F52307C();
    MEMORY[0x193ADB000](v22);

    MEMORY[0x193ADB000](0xD000000000000017, 0x800000018F529B80);
    v25 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA7E8);
    v23 = sub_18F52196C();
    MEMORY[0x193ADB000](v23);

    goto LABEL_15;
  }

  sub_18F49CE24(&v26, &qword_1EACD0620);
  if (!dynamic_cast_existential_2_conditional(v10))
  {
    v28[0] = 0;
    v28[1] = 0xE000000000000000;
    sub_18F52279C();
    v19 = *(v2 + qword_1ED707728 + 8);
    if (v19)
    {
      v20 = *(v2 + qword_1ED707728);
      v21 = v19;
    }

    else
    {
      v20 = 0x6E776F6E6B6E753CLL;
      v21 = 0xE90000000000003ELL;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v20, v21);

    MEMORY[0x193ADB000](0xD000000000000049, 0x800000018F529B30);
    *&v26 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA7E8);
    v24 = sub_18F52196C();
    MEMORY[0x193ADB000](v24);

LABEL_15:
    result = sub_18F522A3C();
    __break(1u);
    return result;
  }

  __swift_storeEnumTagSinglePayload(v7, 1, 1, v10);
  return swift_dynamicCast();
}

uint64_t sub_18F46ED0C()
{
  swift_beginAccess();
  sub_18F49CB80();
  if (v13)
  {
    sub_18F0FD0B4(&v12, v14);
    sub_18F0FD724(v14, &v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      v1 = v11;
      return v1 & 1;
    }

    *&v12 = 0;
    *(&v12 + 1) = 0xE000000000000000;
    sub_18F52279C();
    if (*(v0 + qword_1ED707728 + 8))
    {
      v4 = *(v0 + qword_1ED707728);
      v5 = *(v0 + qword_1ED707728 + 8);
    }

    else
    {
      v4 = 0x6E776F6E6B6E753CLL;
      v5 = 0xE90000000000003ELL;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v4, v5);

    MEMORY[0x193ADB000](0xD000000000000017, 0x800000018F526A90);
    __swift_project_boxed_opaque_existential_1Tm(v14, v14[3]);
    swift_getDynamicType();
    v8 = sub_18F52307C();
    MEMORY[0x193ADB000](v8);

    MEMORY[0x193ADB000](0xD000000000000017, 0x800000018F529B80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA7E0);
    v9 = sub_18F52196C();
    MEMORY[0x193ADB000](v9);
  }

  else
  {
    sub_18F49CE24(&v12, &qword_1EACD0620);
    v2 = MEMORY[0x1E69E6370];
    if (dynamic_cast_existential_2_conditional(MEMORY[0x1E69E6370]))
    {
      LOBYTE(v12) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0DC8);
      swift_dynamicCast();
      v1 = v14[0];
      return v1 & 1;
    }

    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_18F52279C();
    if (*(v0 + qword_1ED707728 + 8))
    {
      v6 = *(v0 + qword_1ED707728);
      v7 = *(v0 + qword_1ED707728 + 8);
    }

    else
    {
      v6 = 0x6E776F6E6B6E753CLL;
      v7 = 0xE90000000000003ELL;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v6, v7);

    MEMORY[0x193ADB000](0xD000000000000049, 0x800000018F529B30);
    *&v12 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA7E0);
    v10 = sub_18F52196C();
    MEMORY[0x193ADB000](v10);
  }

  result = sub_18F522A3C();
  __break(1u);
  return result;
}

uint64_t sub_18F46F090()
{
  swift_beginAccess();
  sub_18F49CB80();
  if (v12)
  {
    sub_18F0FD0B4(&v11, v13);
    sub_18F0FD724(v13, &v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9E98);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      return v10;
    }

    *&v11 = 0;
    *(&v11 + 1) = 0xE000000000000000;
    sub_18F52279C();
    if (*(v0 + qword_1ED707728 + 8))
    {
      v3 = *(v0 + qword_1ED707728);
      v4 = *(v0 + qword_1ED707728 + 8);
    }

    else
    {
      v3 = 0x6E776F6E6B6E753CLL;
      v4 = 0xE90000000000003ELL;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v3, v4);

    MEMORY[0x193ADB000](0xD000000000000017, 0x800000018F526A90);
    __swift_project_boxed_opaque_existential_1Tm(v13, v13[3]);
    swift_getDynamicType();
    v7 = sub_18F52307C();
    MEMORY[0x193ADB000](v7);

    MEMORY[0x193ADB000](0xD000000000000017, 0x800000018F529B80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA7D0);
    v8 = sub_18F52196C();
    MEMORY[0x193ADB000](v8);

    goto LABEL_15;
  }

  sub_18F49CE24(&v11, &qword_1EACD0620);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9E98);
  if (!dynamic_cast_existential_2_conditional(v2))
  {
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_18F52279C();
    if (*(v0 + qword_1ED707728 + 8))
    {
      v5 = *(v0 + qword_1ED707728);
      v6 = *(v0 + qword_1ED707728 + 8);
    }

    else
    {
      v5 = 0x6E776F6E6B6E753CLL;
      v6 = 0xE90000000000003ELL;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v5, v6);

    MEMORY[0x193ADB000](0xD000000000000049, 0x800000018F529B30);
    *&v11 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA7D0);
    v9 = sub_18F52196C();
    MEMORY[0x193ADB000](v9);

LABEL_15:
    result = sub_18F522A3C();
    __break(1u);
    return result;
  }

  *&v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA7D8);
  swift_dynamicCast();
  return v13[0];
}

uint64_t sub_18F46F428@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_beginAccess();
  sub_18F49CB80();
  if (*&v19[24])
  {
    sub_18F0FD0B4(v19, v21);
    sub_18F0FD724(v21, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9D10);
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_1Tm(v21);
      v6 = v19[48];
      v7 = *&v19[16];
      v8 = *&v19[32];
      *a1 = *v19;
      *(a1 + 16) = v7;
      *(a1 + 32) = v8;
      *(a1 + 48) = v6;
      return result;
    }

    *v19 = 1;
    memset(&v19[8], 0, 41);
    sub_18F1565AC(1);
    *v19 = 0;
    *&v19[8] = 0xE000000000000000;
    sub_18F52279C();
    v10 = *(v2 + qword_1ED707728 + 8);
    if (v10)
    {
      v11 = *(v2 + qword_1ED707728);
      v12 = v10;
    }

    else
    {
      v11 = 0x6E776F6E6B6E753CLL;
      v12 = 0xE90000000000003ELL;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v11, v12);

    MEMORY[0x193ADB000](0xD000000000000017, 0x800000018F526A90);
    __swift_project_boxed_opaque_existential_1Tm(v21, v21[3]);
    swift_getDynamicType();
    v16 = sub_18F52307C();
    MEMORY[0x193ADB000](v16);

    MEMORY[0x193ADB000](0xD000000000000017, 0x800000018F529B80);
    v20[0] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA7C0);
    v17 = sub_18F52196C();
    MEMORY[0x193ADB000](v17);

    goto LABEL_15;
  }

  sub_18F49CE24(v19, &qword_1EACD0620);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9D10);
  result = dynamic_cast_existential_2_conditional(v9);
  if (!result)
  {
    *v19 = 0;
    *&v19[8] = 0xE000000000000000;
    sub_18F52279C();
    v13 = *(v2 + qword_1ED707728 + 8);
    if (v13)
    {
      v14 = *(v2 + qword_1ED707728);
      v15 = v13;
    }

    else
    {
      v14 = 0x6E776F6E6B6E753CLL;
      v15 = 0xE90000000000003ELL;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v14, v15);

    MEMORY[0x193ADB000](0xD000000000000049, 0x800000018F529B30);
    v21[0] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA7C0);
    v18 = sub_18F52196C();
    MEMORY[0x193ADB000](v18);

LABEL_15:
    result = sub_18F522A3C();
    __break(1u);
    return result;
  }

  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_18F46F7F8()
{
  swift_beginAccess();
  sub_18F49CB80();
  if (v12)
  {
    sub_18F0FD0B4(&v11, v13);
    sub_18F0FD724(v13, &v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA738);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      return v10;
    }

    *&v11 = 0;
    *(&v11 + 1) = 0xE000000000000000;
    sub_18F52279C();
    if (*(v0 + qword_1ED707728 + 8))
    {
      v3 = *(v0 + qword_1ED707728);
      v4 = *(v0 + qword_1ED707728 + 8);
    }

    else
    {
      v3 = 0x6E776F6E6B6E753CLL;
      v4 = 0xE90000000000003ELL;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v3, v4);

    MEMORY[0x193ADB000](0xD000000000000017, 0x800000018F526A90);
    __swift_project_boxed_opaque_existential_1Tm(v13, v13[3]);
    swift_getDynamicType();
    v7 = sub_18F52307C();
    MEMORY[0x193ADB000](v7);

    MEMORY[0x193ADB000](0xD000000000000017, 0x800000018F529B80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA758);
    v8 = sub_18F52196C();
    MEMORY[0x193ADB000](v8);

    goto LABEL_15;
  }

  sub_18F49CE24(&v11, &qword_1EACD0620);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA738);
  if (!dynamic_cast_existential_2_conditional(v2))
  {
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_18F52279C();
    if (*(v0 + qword_1ED707728 + 8))
    {
      v5 = *(v0 + qword_1ED707728);
      v6 = *(v0 + qword_1ED707728 + 8);
    }

    else
    {
      v5 = 0x6E776F6E6B6E753CLL;
      v6 = 0xE90000000000003ELL;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v5, v6);

    MEMORY[0x193ADB000](0xD000000000000049, 0x800000018F529B30);
    *&v11 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA758);
    v9 = sub_18F52196C();
    MEMORY[0x193ADB000](v9);

LABEL_15:
    result = sub_18F522A3C();
    __break(1u);
    return result;
  }

  *&v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA760);
  swift_dynamicCast();
  return v13[0];
}

uint64_t sub_18F46FB90@<X0>(void *a1@<X8>)
{
  v2 = v1;
  swift_beginAccess();
  sub_18F49CB80();
  if (v17)
  {
    sub_18F0FD0B4(&v16, v18);
    sub_18F0FD724(v18, &v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA718);
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_1Tm(v18);
      *a1 = v15;
      return result;
    }

    sub_18F49CBD4(1);
    *&v16 = 0;
    *(&v16 + 1) = 0xE000000000000000;
    sub_18F52279C();
    v6 = *(v2 + qword_1ED707728 + 8);
    if (v6)
    {
      v7 = *(v2 + qword_1ED707728);
      v8 = v6;
    }

    else
    {
      v7 = 0x6E776F6E6B6E753CLL;
      v8 = 0xE90000000000003ELL;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v7, v8);

    MEMORY[0x193ADB000](0xD000000000000017, 0x800000018F526A90);
    __swift_project_boxed_opaque_existential_1Tm(v18, v18[3]);
    swift_getDynamicType();
    v12 = sub_18F52307C();
    MEMORY[0x193ADB000](v12);

    MEMORY[0x193ADB000](0xD000000000000017, 0x800000018F529B80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA728);
    v13 = sub_18F52196C();
    MEMORY[0x193ADB000](v13);

    goto LABEL_15;
  }

  sub_18F49CE24(&v16, &qword_1EACD0620);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA718);
  result = dynamic_cast_existential_2_conditional(v5);
  if (!result)
  {
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_18F52279C();
    v9 = *(v2 + qword_1ED707728 + 8);
    if (v9)
    {
      v10 = *(v2 + qword_1ED707728);
      v11 = v9;
    }

    else
    {
      v10 = 0x6E776F6E6B6E753CLL;
      v11 = 0xE90000000000003ELL;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v10, v11);

    MEMORY[0x193ADB000](0xD000000000000049, 0x800000018F529B30);
    *&v16 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA728);
    v14 = sub_18F52196C();
    MEMORY[0x193ADB000](v14);

LABEL_15:
    result = sub_18F522A3C();
    __break(1u);
    return result;
  }

  *a1 = 0;
  return result;
}

void *sub_18F46FF10@<X0>(void *a1@<X8>)
{
  v2 = v1;
  swift_beginAccess();
  sub_18F49CB80();
  if (*(&__src[1] + 1))
  {
    sub_18F0FD0B4(__src, v18);
    sub_18F0FD724(v18, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      return memcpy(a1, __src, 0x51uLL);
    }

    memset(__src, 0, 81);
    memset(v14, 0, sizeof(v14));
    v15 = 0;
    sub_18F49CE24(v14, &qword_1EACDA778);
    sub_18F52279C();
    v5 = *(v2 + qword_1ED707728 + 8);
    if (v5)
    {
      v6 = *(v2 + qword_1ED707728);
      v7 = v5;
    }

    else
    {
      v6 = 0x6E776F6E6B6E753CLL;
      v7 = 0xE90000000000003ELL;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v6, v7);

    MEMORY[0x193ADB000](0xD000000000000017, 0x800000018F526A90);
    __swift_project_boxed_opaque_existential_1Tm(v18, v18[3]);
    swift_getDynamicType();
    v11 = sub_18F52307C();
    MEMORY[0x193ADB000](v11);

    MEMORY[0x193ADB000](0xD000000000000017, 0x800000018F529B80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA770);
    v12 = sub_18F52196C();
    MEMORY[0x193ADB000](v12);

    goto LABEL_15;
  }

  sub_18F49CE24(__src, &qword_1EACD0620);
  if (!dynamic_cast_existential_2_conditional(&type metadata for MessageParticipantPrototype))
  {
    *&__src[0] = 0;
    *(&__src[0] + 1) = 0xE000000000000000;
    sub_18F52279C();
    v8 = *(v2 + qword_1ED707728 + 8);
    if (v8)
    {
      v9 = *(v2 + qword_1ED707728);
      v10 = v8;
    }

    else
    {
      v9 = 0x6E776F6E6B6E753CLL;
      v10 = 0xE90000000000003ELL;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v9, v10);

    MEMORY[0x193ADB000](0xD000000000000049, 0x800000018F529B30);
    *&v14[0] = &type metadata for MessageParticipantPrototype;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA770);
    v13 = sub_18F52196C();
    MEMORY[0x193ADB000](v13);

LABEL_15:
    result = sub_18F522A3C();
    __break(1u);
    return result;
  }

  memset(__src, 0, 81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA778);
  return swift_dynamicCast();
}

uint64_t sub_18F4702FC@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  swift_beginAccess();
  sub_18F49CB80();
  if (*(&v18 + 1))
  {
    sub_18F0FD0B4(&v17, v20);
    sub_18F0FD724(v20, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_1Tm(v20);
      v5 = v18;
      *a1 = v17;
      a1[1] = v5;
      a1[2] = v19[0];
      *(a1 + 41) = *(v19 + 9);
      return result;
    }

    v17 = 0u;
    v18 = 0u;
    memset(v19, 0, 25);
    memset(v15, 0, 57);
    sub_18F49CE24(v15, &qword_1EACD0DC0);
    sub_18F52279C();
    v6 = *(v2 + qword_1ED707728 + 8);
    if (v6)
    {
      v7 = *(v2 + qword_1ED707728);
      v8 = v6;
    }

    else
    {
      v7 = 0x6E776F6E6B6E753CLL;
      v8 = 0xE90000000000003ELL;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v7, v8);

    MEMORY[0x193ADB000](0xD000000000000017, 0x800000018F526A90);
    __swift_project_boxed_opaque_existential_1Tm(v20, v20[3]);
    swift_getDynamicType();
    v12 = sub_18F52307C();
    MEMORY[0x193ADB000](v12);

    MEMORY[0x193ADB000](0xD000000000000017, 0x800000018F529B80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA768);
    v13 = sub_18F52196C();
    MEMORY[0x193ADB000](v13);

    goto LABEL_15;
  }

  sub_18F49CE24(&v17, &qword_1EACD0620);
  if (!dynamic_cast_existential_2_conditional(&type metadata for MessageGroupPrototype))
  {
    *&v17 = 0;
    *(&v17 + 1) = 0xE000000000000000;
    sub_18F52279C();
    v9 = *(v2 + qword_1ED707728 + 8);
    if (v9)
    {
      v10 = *(v2 + qword_1ED707728);
      v11 = v9;
    }

    else
    {
      v10 = 0x6E776F6E6B6E753CLL;
      v11 = 0xE90000000000003ELL;
    }

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    MEMORY[0x193ADB000](v10, v11);

    MEMORY[0x193ADB000](0xD000000000000049, 0x800000018F529B30);
    *&v15[0] = &type metadata for MessageGroupPrototype;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA768);
    v14 = sub_18F52196C();
    MEMORY[0x193ADB000](v14);

LABEL_15:
    result = sub_18F522A3C();
    __break(1u);
    return result;
  }

  v18 = 0u;
  memset(v19, 0, 25);
  v17 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0DC0);
  return swift_dynamicCast();
}

uint64_t sub_18F4706E4()
{
  sub_18F10F340();
  swift_beginAccess();
  sub_18F0FF914();
  return swift_endAccess();
}

uint64_t sub_18F470774()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4470);
  sub_18F206294();
  swift_beginAccess();
  sub_18F0FF914();
  return swift_endAccess();
}

uint64_t sub_18F470810(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v5 = OUTLINED_FUNCTION_336_0(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  a4();
  OUTLINED_FUNCTION_81();
  sub_18F0FF914();
  return swift_endAccess();
}

uint64_t sub_18F47089C(uint64_t a1)
{
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD1480);
  v4[4] = sub_18F2061E0();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
  sub_18F49CDB4(a1, boxed_opaque_existential_1);
  swift_beginAccess();
  sub_18F0FF914();
  return swift_endAccess();
}

uint64_t sub_18F47093C(uint64_t a1)
{
  sub_18F20639C();
  v4 = swift_allocObject();
  v2 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v2;
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = *(a1 + 48);
  swift_beginAccess();
  sub_18F0FF914();
  return swift_endAccess();
}

uint64_t sub_18F4709EC(uint64_t a1)
{
  v2 = sub_18F520DEC();
  v5[3] = v2;
  v5[4] = sub_18F49CD70(&qword_1EACCED48, MEMORY[0x1E6969530]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  (*(*(v2 - 8) + 32))(boxed_opaque_existential_1, a1, v2);
  swift_beginAccess();
  sub_18F0FF914();
  return swift_endAccess();
}

uint64_t sub_18F470AE0()
{
  sub_18F118844();
  swift_beginAccess();
  sub_18F0FF914();
  return swift_endAccess();
}

uint64_t sub_18F470B64(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = OUTLINED_FUNCTION_336_0(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v6);
  a4();
  v9 = swift_allocObject();
  v7 = *(a1 + 16);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v7;
  *(v9 + 48) = *(a1 + 32);
  *(v9 + 64) = *(a1 + 48);
  OUTLINED_FUNCTION_81();
  sub_18F0FF914();
  return swift_endAccess();
}

uint64_t sub_18F470C1C(const void *a1)
{
  sub_18F4977C0();
  v3 = swift_allocObject();
  memcpy((v3 + 16), a1, 0x51uLL);
  swift_beginAccess();
  sub_18F0FF914();
  return swift_endAccess();
}

uint64_t sub_18F470CC4(_OWORD *a1)
{
  sub_18F205F58();
  v4 = swift_allocObject();
  v2 = a1[1];
  v4[1] = *a1;
  v4[2] = v2;
  v4[3] = a1[2];
  *(v4 + 57) = *(a1 + 41);
  swift_beginAccess();
  sub_18F0FF914();
  return swift_endAccess();
}

uint64_t sub_18F470DBC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = type metadata accessor for DisplayRepresentation();
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  a3(a1, a2);
  sub_18F520B3C();
  OUTLINED_FUNCTION_0_55();
  v8 = OUTLINED_FUNCTION_66_17();
  v9(v8);
  OUTLINED_FUNCTION_1_121();
  return sub_18F115548();
}

uint64_t sub_18F470EE0(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_366();
  v5 = OUTLINED_FUNCTION_10(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_50();
  a2(a1);
  sub_18F520B3C();
  OUTLINED_FUNCTION_0_55();
  v6 = OUTLINED_FUNCTION_82();
  v7(v6);
  OUTLINED_FUNCTION_1_121();
  return sub_18F115548();
}

uint64_t sub_18F470F9C(char a1, void (*a2)(void))
{
  v4 = OUTLINED_FUNCTION_366();
  v5 = OUTLINED_FUNCTION_10(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_50();
  a2(a1 & 1);
  sub_18F520B3C();
  OUTLINED_FUNCTION_0_55();
  v6 = OUTLINED_FUNCTION_82();
  v7(v6);
  OUTLINED_FUNCTION_1_121();
  return sub_18F115548();
}

uint64_t sub_18F471040()
{
  if (qword_1ED6FE110 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_1ED6FE118 + 2))
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F181B0C();
    if (v0)
    {
      type metadata accessor for DisplayRepresentation();
      sub_18F49BD4C();
    }
  }

  sub_18F52279C();
  MEMORY[0x193ADB000](0xD000000000000047, 0x800000018F5269F0);
  sub_18F52299C();
  MEMORY[0x193ADB000](0x746F6E2073617720, 0xEF2E646E756F6620);
  result = sub_18F522A3C();
  __break(1u);
  return result;
}

uint64_t sub_18F4711FC()
{
  if (qword_1ED6FE150 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_1ED6FE158 + 2))
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F181B4C();
    if (v0)
    {
      type metadata accessor for DisplayRepresentation();
      sub_18F49BD4C();
    }
  }

  sub_18F52279C();
  MEMORY[0x193ADB000](0xD000000000000047, 0x800000018F5269F0);
  sub_18F52299C();
  MEMORY[0x193ADB000](0x746F6E2073617720, 0xEF2E646E756F6620);
  result = sub_18F522A3C();
  __break(1u);
  return result;
}

uint64_t sub_18F4713C8()
{
  if (qword_1EACCF680 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_1EACD9A68 + 2))
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F181B90();
    if (v0)
    {
      type metadata accessor for DisplayRepresentation();
      sub_18F49BD4C();
    }
  }

  sub_18F52279C();
  MEMORY[0x193ADB000](0xD000000000000047, 0x800000018F5269F0);
  sub_18F52299C();
  MEMORY[0x193ADB000](0x746F6E2073617720, 0xEF2E646E756F6620);
  result = sub_18F522A3C();
  __break(1u);
  return result;
}

uint64_t sub_18F471580()
{
  if (qword_1EACCF690 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_1EACD9A88 + 2))
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F181BC8();
    if (v0)
    {
      type metadata accessor for DisplayRepresentation();
      sub_18F49BD4C();
    }
  }

  sub_18F52279C();
  MEMORY[0x193ADB000](0xD000000000000047, 0x800000018F5269F0);
  sub_18F52299C();
  MEMORY[0x193ADB000](0x746F6E2073617720, 0xEF2E646E756F6620);
  result = sub_18F522A3C();
  __break(1u);
  return result;
}

uint64_t sub_18F471738()
{
  if (qword_1EACCF660 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_1EACD9A28 + 2))
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F181C00();
    if (v0)
    {
      type metadata accessor for DisplayRepresentation();
      sub_18F49BD4C();
    }
  }

  sub_18F52279C();
  MEMORY[0x193ADB000](0xD000000000000047, 0x800000018F5269F0);
  sub_18F52299C();
  MEMORY[0x193ADB000](0x746F6E2073617720, 0xEF2E646E756F6620);
  result = sub_18F522A3C();
  __break(1u);
  return result;
}

uint64_t sub_18F4718F0()
{
  if (qword_1ED6FE0F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_1ED6FE100 + 2))
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F181C38();
    if (v0)
    {
      type metadata accessor for DisplayRepresentation();
      sub_18F49BD4C();
    }
  }

  sub_18F52279C();
  MEMORY[0x193ADB000](0xD000000000000047, 0x800000018F5269F0);
  sub_18F52299C();
  MEMORY[0x193ADB000](0x746F6E2073617720, 0xEF2E646E756F6620);
  result = sub_18F522A3C();
  __break(1u);
  return result;
}

uint64_t sub_18F471ABC()
{
  if (qword_1ED6FE0E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_1ED6FE0F0 + 2))
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F181C7C();
    if (v0)
    {
      type metadata accessor for DisplayRepresentation();
      sub_18F49BD4C();
    }
  }

  sub_18F52279C();
  MEMORY[0x193ADB000](0xD000000000000047, 0x800000018F5269F0);
  sub_18F52299C();
  MEMORY[0x193ADB000](0x746F6E2073617720, 0xEF2E646E756F6620);
  result = sub_18F522A3C();
  __break(1u);
  return result;
}

uint64_t sub_18F471C74()
{
  if (qword_1ED6FE0D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_1ED6FE0E0 + 2))
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F181CB4();
    if (v0)
    {
      type metadata accessor for DisplayRepresentation();
      sub_18F49BD4C();
    }
  }

  sub_18F52279C();
  MEMORY[0x193ADB000](0xD000000000000047, 0x800000018F5269F0);
  sub_18F52299C();
  MEMORY[0x193ADB000](0x746F6E2073617720, 0xEF2E646E756F6620);
  result = sub_18F522A3C();
  __break(1u);
  return result;
}

uint64_t sub_18F471E30(uint64_t a1)
{
  if (qword_1ED6FE0C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_1ED6FE0D0 + 2))
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F181CF4(a1);
    if (v2)
    {
      type metadata accessor for DisplayRepresentation();
      sub_18F49BD4C();
    }
  }

  sub_18F52279C();
  MEMORY[0x193ADB000](0xD000000000000047, 0x800000018F5269F0);
  sub_18F52299C();
  MEMORY[0x193ADB000](0x746F6E2073617720, 0xEF2E646E756F6620);
  result = sub_18F522A3C();
  __break(1u);
  return result;
}

uint64_t sub_18F471FE8(uint64_t a1)
{
  if (qword_1ED6FE0B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_1ED6FE0B8 + 2))
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F181D20(a1);
    if (v2)
    {
      type metadata accessor for DisplayRepresentation();
      sub_18F49BD4C();
    }
  }

  sub_18F52279C();
  MEMORY[0x193ADB000](0xD000000000000047, 0x800000018F5269F0);
  sub_18F52299C();
  MEMORY[0x193ADB000](0x746F6E2073617720, 0xEF2E646E756F6620);
  result = sub_18F522A3C();
  __break(1u);
  return result;
}

uint64_t sub_18F4721A0(uint64_t a1)
{
  if (qword_1EACCF630 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_1EACD99C8 + 2))
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F181D4C(a1);
    if (v2)
    {
      type metadata accessor for DisplayRepresentation();
      sub_18F49BD4C();
    }
  }

  sub_18F52279C();
  MEMORY[0x193ADB000](0xD000000000000047, 0x800000018F5269F0);
  sub_18F52299C();
  MEMORY[0x193ADB000](0x746F6E2073617720, 0xEF2E646E756F6620);
  result = sub_18F522A3C();
  __break(1u);
  return result;
}

uint64_t sub_18F472358()
{
  if (qword_1EACCF670 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_1EACD9A48 + 2))
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F181D78();
    if (v0)
    {
      type metadata accessor for DisplayRepresentation();
      sub_18F49BD4C();
    }
  }

  sub_18F52279C();
  MEMORY[0x193ADB000](0xD000000000000047, 0x800000018F5269F0);
  sub_18F52299C();
  MEMORY[0x193ADB000](0x746F6E2073617720, 0xEF2E646E756F6620);
  result = sub_18F522A3C();
  __break(1u);
  return result;
}

uint64_t sub_18F472510(uint64_t a1)
{
  if (qword_1EACCF640 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_1EACD99E8 + 2))
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F181DB0(a1);
    if (v2)
    {
      type metadata accessor for DisplayRepresentation();
      sub_18F49BD4C();
    }
  }

  sub_18F52279C();
  MEMORY[0x193ADB000](0xD000000000000047, 0x800000018F5269F0);
  sub_18F52299C();
  MEMORY[0x193ADB000](0x746F6E2073617720, 0xEF2E646E756F6620);
  result = sub_18F522A3C();
  __break(1u);
  return result;
}

uint64_t sub_18F4726C8(uint64_t a1)
{
  if (qword_1EACCF650 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_1EACD9A08 + 2))
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F181DDC(a1);
    if (v2)
    {
      type metadata accessor for DisplayRepresentation();
      sub_18F49BD4C();
    }
  }

  sub_18F52279C();
  MEMORY[0x193ADB000](0xD000000000000047, 0x800000018F5269F0);
  sub_18F52299C();
  MEMORY[0x193ADB000](0x746F6E2073617720, 0xEF2E646E756F6620);
  result = sub_18F522A3C();
  __break(1u);
  return result;
}

uint64_t sub_18F472880()
{
  if (qword_1ED6FE090 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_1ED6FE098 + 2))
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F181E80();
    if (v0)
    {
      type metadata accessor for DisplayRepresentation();
      sub_18F49BD4C();
    }
  }

  sub_18F52279C();
  MEMORY[0x193ADB000](0xD000000000000047, 0x800000018F5269F0);
  sub_18F52299C();
  MEMORY[0x193ADB000](0x746F6E2073617720, 0xEF2E646E756F6620);
  result = sub_18F522A3C();
  __break(1u);
  return result;
}

uint64_t sub_18F472A3C(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F472A5C, 0, 0);
}

uint64_t sub_18F472A5C()
{
  OUTLINED_FUNCTION_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0038);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_217(inited);
  OUTLINED_FUNCTION_219_2(v1, xmmword_18F53F800);
  OUTLINED_FUNCTION_75_14();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_171_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_53_19(v3);

  return v6(v5);
}

uint64_t sub_18F472B1C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_168_4();
    sub_18F1704EC();
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F472C24(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F472C44, 0, 0);
}

uint64_t sub_18F472C44()
{
  OUTLINED_FUNCTION_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0038);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_217(inited);
  OUTLINED_FUNCTION_219_2(v1, xmmword_18F53F800);
  OUTLINED_FUNCTION_75_14();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_171_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_53_19(v3);

  return v6(v5);
}

uint64_t sub_18F472D04()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_168_4();
    sub_18F1704EC();
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F472E0C(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F472E2C, 0, 0);
}

uint64_t sub_18F472E2C()
{
  OUTLINED_FUNCTION_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0038);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_217(inited);
  OUTLINED_FUNCTION_219_2(v1, xmmword_18F53F800);
  OUTLINED_FUNCTION_75_14();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_171_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_53_19(v3);

  return v6(v5);
}

uint64_t sub_18F472EEC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_168_4();
    sub_18F1704EC();
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F472FF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  for (i = MEMORY[0x1E69E7CC0]; v1; --v1)
  {
    memcpy(__dst, v2, 0x91uLL);
    sub_18F3545F4(__dst, &v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18F169988();
      i = v5;
    }

    v4 = *(i + 16);
    if (v4 >= *(i + 24) >> 1)
    {
      sub_18F169988();
      i = v6;
    }

    *(i + 16) = v4 + 1;
    memcpy((i + 152 * v4 + 32), __dst, 0x91uLL);
    v2 += 152;
  }

  return i;
}

uint64_t sub_18F4730EC(uint64_t a1, uint64_t (*a2)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = (a1 + 80);
  for (i = MEMORY[0x1E69E7CC0]; v2; --v2)
  {
    v5 = *(v3 - 6);
    v6 = *(v3 - 5);
    v7 = *(v3 - 3);
    v16 = *(v3 - 4);
    v9 = *(v3 - 2);
    v8 = *(v3 - 1);
    v15 = *v3;

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = a2(0, *(i + 16) + 1, 1, i);
    }

    v11 = *(i + 16);
    v10 = *(i + 24);
    if (v11 >= v10 >> 1)
    {
      i = a2(v10 > 1, v11 + 1, 1, i);
    }

    *(i + 16) = v11 + 1;
    v12 = i + 56 * v11;
    *(v12 + 32) = v5;
    *(v12 + 40) = v6;
    *(v12 + 48) = v16;
    *(v12 + 56) = v7;
    *(v12 + 64) = v9;
    *(v12 + 72) = v8;
    *(v12 + 80) = v15;
    v3 += 56;
  }

  return i;
}

uint64_t sub_18F473224(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  for (i = MEMORY[0x1E69E7CC0]; v1; --v1)
  {
    v4 = v2[1];
    v14 = *v2;
    v15 = v4;
    v16[0] = v2[2];
    *(v16 + 9) = *(v2 + 41);
    sub_18F354598(&v14, &v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18F169B6C();
      i = v10;
    }

    v5 = *(i + 16);
    if (v5 >= *(i + 24) >> 1)
    {
      sub_18F169B6C();
      i = v11;
    }

    *(i + 16) = v5 + 1;
    v6 = (i + (v5 << 6));
    v7 = v14;
    v8 = v15;
    v9 = v16[0];
    *(v6 + 73) = *(v16 + 9);
    v6[3] = v8;
    v6[4] = v9;
    v6[2] = v7;
    v2 += 4;
  }

  return i;
}

uint64_t sub_18F473320(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18F4733C8;

  return sub_18F46B6A0(a1);
}

uint64_t sub_18F4733C8()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_66_19();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_18_9();

    return v8();
  }

  else
  {
    *(v4 + 24) = v0;
    v10 = OUTLINED_FUNCTION_37_33();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_18F4734E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18F47358C;

  return sub_18F46BCCC(a1);
}

uint64_t sub_18F47358C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_66_19();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_18_9();

    return v8();
  }

  else
  {
    *(v4 + 24) = v0;
    v10 = OUTLINED_FUNCTION_37_33();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_18F4736A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18F473750;

  return sub_18F46C270(a1);
}

uint64_t sub_18F473750()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_66_19();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_18_9();

    return v8();
  }

  else
  {
    *(v4 + 24) = v0;
    v10 = OUTLINED_FUNCTION_37_33();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_18F47386C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18F473914;

  return sub_18F46C814(a1);
}

uint64_t sub_18F473914()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_66_19();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_18_9();

    return v8();
  }

  else
  {
    *(v4 + 24) = v0;
    v10 = OUTLINED_FUNCTION_37_33();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_18F473A30(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F473A50, 0, 0);
}

uint64_t sub_18F473A50()
{
  OUTLINED_FUNCTION_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0038);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_217(inited);
  OUTLINED_FUNCTION_219_2(v1, xmmword_18F53F800);
  OUTLINED_FUNCTION_75_14();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_171_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_53_19(v3);

  return v6(v5);
}

uint64_t sub_18F473B10()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_168_4();
    sub_18F1704EC();
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F473C18()
{
  OUTLINED_FUNCTION_69();
  sub_18F472FF4(*(v0 + 104));
  OUTLINED_FUNCTION_99_4();

  v1 = OUTLINED_FUNCTION_47();

  return v2(v1);
}

uint64_t sub_18F473C7C(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F473C9C, 0, 0);
}

uint64_t sub_18F473C9C()
{
  OUTLINED_FUNCTION_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0038);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_217(inited);
  OUTLINED_FUNCTION_219_2(v1, xmmword_18F53F800);
  OUTLINED_FUNCTION_75_14();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_171_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_53_19(v3);

  return v6(v5);
}

uint64_t sub_18F473D5C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_168_4();
    sub_18F1704EC();
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F473E64()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 104);
  OUTLINED_FUNCTION_83_13();
  sub_18F4730EC(v1, v2);
  OUTLINED_FUNCTION_99_4();

  v3 = OUTLINED_FUNCTION_47();

  return v4(v3);
}

uint64_t sub_18F473ECC()
{
  OUTLINED_FUNCTION_69();
  swift_setDeallocating();
  sub_18F1704EC();
  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F473F30(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F473F50, 0, 0);
}

uint64_t sub_18F473F50()
{
  OUTLINED_FUNCTION_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0038);
  inited = swift_initStackObject();
  v1 = OUTLINED_FUNCTION_217(inited);
  OUTLINED_FUNCTION_219_2(v1, xmmword_18F53F800);
  OUTLINED_FUNCTION_75_14();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_171_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_53_19(v3);

  return v6(v5);
}

uint64_t sub_18F474010()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_168_4();
    sub_18F1704EC();
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F474118()
{
  OUTLINED_FUNCTION_69();
  sub_18F473224(*(v0 + 104));
  OUTLINED_FUNCTION_99_4();

  v1 = OUTLINED_FUNCTION_47();

  return v2(v1);
}

uint64_t sub_18F47417C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18F474224;

  return sub_18F46B6A0(a1);
}

uint64_t sub_18F474224()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_66_19();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_18_9();

    return v8();
  }

  else
  {
    *(v4 + 24) = v0;
    v10 = OUTLINED_FUNCTION_37_33();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_18F474340()
{
  OUTLINED_FUNCTION_69();
  sub_18F472FF4(*(v0 + 24));
  OUTLINED_FUNCTION_99_4();

  v1 = OUTLINED_FUNCTION_47();

  return v2(v1);
}

uint64_t sub_18F4743A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18F47444C;

  return sub_18F46BCCC(a1);
}

uint64_t sub_18F47444C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_66_19();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_18_9();

    return v8();
  }

  else
  {
    *(v4 + 24) = v0;
    v10 = OUTLINED_FUNCTION_37_33();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_18F474568()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_83_13();
  sub_18F4730EC(v1, v2);
  OUTLINED_FUNCTION_99_4();

  v3 = OUTLINED_FUNCTION_47();

  return v4(v3);
}

uint64_t sub_18F4745D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18F474678;

  return sub_18F46C270(a1);
}

uint64_t sub_18F474678()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_66_19();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_18_9();

    return v8();
  }

  else
  {
    *(v4 + 24) = v0;
    v10 = OUTLINED_FUNCTION_37_33();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_18F474794()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_179_3();
  sub_18F4730EC(v1, v2);
  OUTLINED_FUNCTION_99_4();

  v3 = OUTLINED_FUNCTION_47();

  return v4(v3);
}

uint64_t sub_18F4747FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18F4748A4;

  return sub_18F46C814(a1);
}

uint64_t sub_18F4748A4()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_66_19();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_18_9();

    return v8();
  }

  else
  {
    *(v4 + 24) = v0;
    v10 = OUTLINED_FUNCTION_37_33();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_18F4749C0()
{
  OUTLINED_FUNCTION_69();
  sub_18F473224(*(v0 + 24));
  OUTLINED_FUNCTION_99_4();

  v1 = OUTLINED_FUNCTION_47();

  return v2(v1);
}

uint64_t sub_18F474A24(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18F49D0EC;

  return sub_18F474BF8(a1, a2);
}

uint64_t sub_18F474AC0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18F49D0EC;

  return sub_18F4756F0(a1, a2);
}

uint64_t sub_18F474B5C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18F49D0EC;

  return sub_18F476BE0(a1, a2);
}

uint64_t sub_18F474BF8(uint64_t a1, uint64_t a2)
{
  v2[55] = a1;
  v2[56] = a2;
  sub_18F520F1C();
  v2[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  v2[58] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v2[59] = swift_task_alloc();
  v2[60] = type metadata accessor for DisplayRepresentation();
  v2[61] = swift_task_alloc();
  v3 = sub_18F520B3C();
  v2[62] = v3;
  v2[63] = *(v3 - 8);
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F474D90, 0, 0);
}

uint64_t sub_18F474D90()
{
  OUTLINED_FUNCTION_133_1();
  v10 = v1;
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA1E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DE0);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4((v0 + 360), v0 + 320);
    OUTLINED_FUNCTION_49((v0 + 320));
    v2 = OUTLINED_FUNCTION_186();
    *(v0 + 528) = v2;
    OUTLINED_FUNCTION_10(v2);
    *(v0 + 536) = OUTLINED_FUNCTION_34_0();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 544) = v3;
    *v3 = v4;
    v3[1] = sub_18F474F50;
    OUTLINED_FUNCTION_110_8();
    OUTLINED_FUNCTION_132_2();

    return sub_18F2E8290();
  }

  else
  {
    *(v0 + 392) = 0;
    *(v0 + 360) = 0u;
    *(v0 + 376) = 0u;
    sub_18F49CE24(v0 + 360, &qword_1EACD2DE8);
    OUTLINED_FUNCTION_6_1(&dword_18F569D60);
    v9 = v7;
    v8 = swift_task_alloc();
    *(v0 + 560) = v8;
    *v8 = v0;
    OUTLINED_FUNCTION_12_3(v8);

    return v9();
  }
}

uint64_t sub_18F474F50()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 552) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F475048()
{
  OUTLINED_FUNCTION_29();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA628);
  OUTLINED_FUNCTION_68_0();
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 320);
    OUTLINED_FUNCTION_353_0();

    OUTLINED_FUNCTION_20_0();
    v1 = OUTLINED_FUNCTION_397_0();

    return v2(v1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 320);
    OUTLINED_FUNCTION_6_1(&dword_18F569D60);
    v6 = v4;
    v5 = swift_task_alloc();
    *(v0 + 560) = v5;
    *v5 = v0;
    OUTLINED_FUNCTION_12_3(v5);

    return v6();
  }
}

void sub_18F4751AC()
{
  OUTLINED_FUNCTION_31();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 320);
  OUTLINED_FUNCTION_353_0();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_59_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_18F475248()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_59_1();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_59_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_18F4753A8()
{
  v79 = v1[60];
  v3 = MEMORY[0x1E69E7CC0];
  sub_18F472FF4(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_277_0();
  v4 = 32;
  v68 = xmmword_18F540410;
  v62 = 32;
  v65 = v3;
  v77 = v5;
LABEL_2:
  v6 = v4 + 152 * v2;
  while (v81 != v2)
  {
    if (v2 >= *(v0 + 16))
    {
      __break(1u);
      return;
    }

    v86 = v1[64];
    v8 = v1[61];
    v7 = v1[62];
    v83 = v1[65];
    v85 = v1[57];
    v88 = v1[56];
    v87 = v1[55];
    memcpy(v1 + 2, (v0 + v6), 0x91uLL);
    sub_18F3545F4((v1 + 2), (v1 + 21));
    OUTLINED_FUNCTION_349_0();
    OUTLINED_FUNCTION_11();
    v12 = OUTLINED_FUNCTION_150_5(v9, v10, v11, v7);
    v13 = type metadata accessor for DisplayRepresentation.Image(v12);
    v14 = OUTLINED_FUNCTION_48_25();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
    v0 = *(v79 + 20);
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v7);
    OUTLINED_FUNCTION_11();
    v23 = __swift_storeEnumTagSinglePayload(v20, v21, v22, v13);
    OUTLINED_FUNCTION_289(v23, v24, v25, v26, v27, v28, v29, v30, v62, v65, v31);
    *(v8 + v32) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v7);
    sub_18F0FF914();
    v36 = sub_18F0FF914();
    v44 = OUTLINED_FUNCTION_288_0(v36, v37, v38, v39, v40, v41, v42, v43, v63, v66, v68, *(&v68 + 1), v71, v73, v75, v77, v79, v81, v83);
    (v0)(v44);
    OUTLINED_FUNCTION_1_121();
    sub_18F115548();
    static IntentContext.currentLocale.getter();
    sub_18F520E7C();
    v45 = sub_18F520B2C();
    v53 = OUTLINED_FUNCTION_318_0(v45, v46, v47, v48, v49, v50, v51, v52, v64, v67, v69, v70, v72, v74, v76, v78, v80, v82, v84, v85, v86);
    (v0)(v53);
    v1[50] = sub_18F52193C();
    v1[51] = v54;
    v1[52] = v87;
    v1[53] = v88;
    sub_18F12A000();
    v55 = OUTLINED_FUNCTION_419_0();

    v56 = OUTLINED_FUNCTION_370();
    v57(v56);
    if (v55)
    {
      v58 = v65;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_101_13();
        sub_18F3AAEEC();
        v58 = v65;
      }

      OUTLINED_FUNCTION_369_0();
      if (v60)
      {
        OUTLINED_FUNCTION_202_1(v59);
        sub_18F3AAEEC();
        v58 = v65;
      }

      ++v2;
      *(v58 + 16) = v7;
      v65 = v58;
      memcpy((v58 + 152 * v6 + 32), v1 + 2, 0x91uLL);
      v4 = v62;
      goto LABEL_2;
    }

    sub_18F493A3C((v1 + 2));
    v6 += 152;
    ++v2;
    v0 = v77;
  }

  OUTLINED_FUNCTION_20_0();

  v61(v65);
}

uint64_t sub_18F4756F0(uint64_t a1, uint64_t a2)
{
  v2[17] = a1;
  v2[18] = a2;
  sub_18F520F1C();
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v2[21] = swift_task_alloc();
  sub_18F52187C();
  v2[22] = swift_task_alloc();
  v2[23] = type metadata accessor for DisplayRepresentation();
  v2[24] = swift_task_alloc();
  v3 = sub_18F520B3C();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F4758B4, 0, 0);
}

uint64_t sub_18F4758B4()
{
  OUTLINED_FUNCTION_133_1();
  v12 = v1;
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DE0);
  if (OUTLINED_FUNCTION_408_0())
  {
    sub_18F0FD0B4((v0 + 56), v0 + 16);
    OUTLINED_FUNCTION_49((v0 + 16));
    v2 = OUTLINED_FUNCTION_186();
    *(v0 + 232) = v2;
    OUTLINED_FUNCTION_10(v2);
    *(v0 + 240) = OUTLINED_FUNCTION_34_0();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 248) = v3;
    *v3 = v4;
    v3[1] = sub_18F475A54;
    OUTLINED_FUNCTION_110_8();
    OUTLINED_FUNCTION_132_2();

    return sub_18F2E8290();
  }

  else
  {
    OUTLINED_FUNCTION_32_3();
    sub_18F49CE24(v0 + 56, &qword_1EACD2DE8);
    OUTLINED_FUNCTION_6_1(&dword_18F569CA0);
    v11 = v7;
    v8 = swift_task_alloc();
    v9 = OUTLINED_FUNCTION_399_0(v8);
    *v9 = v10;
    OUTLINED_FUNCTION_12_3(v9);

    return v11();
  }
}

uint64_t sub_18F475A54()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 256) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F475B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA5D8);
  OUTLINED_FUNCTION_68_0();
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v10 + 16);
    OUTLINED_FUNCTION_280_1();

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_397_0();
    OUTLINED_FUNCTION_36();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v10 + 16);
    OUTLINED_FUNCTION_6_1(&dword_18F569CA0);
    v32 = v20;
    v21 = swift_task_alloc();
    v22 = OUTLINED_FUNCTION_399_0(v21);
    *v22 = v23;
    OUTLINED_FUNCTION_12_3(v22);
    OUTLINED_FUNCTION_36();

    return v24(v24, v25, v26, v27, v28, v29, v30, v31, v32, a10);
  }
}

uint64_t sub_18F475C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();

  __swift_destroy_boxed_opaque_existential_1Tm(v10 + 16);
  OUTLINED_FUNCTION_280_1();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_36();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_18F475D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_85();
  v13 = v12;
  OUTLINED_FUNCTION_1_0();
  *v14 = v13;
  v15 = *v11;
  OUTLINED_FUNCTION_39();
  *v16 = v15;

  if (v10)
  {
    OUTLINED_FUNCTION_416_0();

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_36();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_36();

    return MEMORY[0x1EEE6DFA0](v26, v27, v28);
  }
}

void sub_18F475E8C()
{
  v111 = *(v1 + 184);
  v6 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_83_13();
  sub_18F4730EC(v6, v7);
  OUTLINED_FUNCTION_305_1();
  v94 = xmmword_18F540410;
  v78 = v6;
  v108 = v8;
  while (v113 != v2)
  {
    if (v2 >= *(v8 + 16))
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_163_3();

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    OUTLINED_FUNCTION_269_1();
    OUTLINED_FUNCTION_132();
    sub_18F52185C();
    OUTLINED_FUNCTION_0_144();
    v115 = v2;
    sub_18F478CB4();
    sub_18F52183C();

    OUTLINED_FUNCTION_132();
    sub_18F52185C();
    sub_18F520AEC();
    v2 = v3;
    OUTLINED_FUNCTION_11();
    v12 = OUTLINED_FUNCTION_150_5(v9, v10, v11, v5);
    v13 = type metadata accessor for DisplayRepresentation.Image(v12);
    v3 = v0;
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
    v0 = v111;
    v17 = *(v111 + 20);
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v5);
    v21 = OUTLINED_FUNCTION_3_39();
    v24 = __swift_storeEnumTagSinglePayload(v21, v22, v23, v13);
    OUTLINED_FUNCTION_302_1(v24, v25, v26, v27, v28, v29, v30, v31, v78, v82, v86, v90, v32);
    *(v4 + v33) = MEMORY[0x1E69E7CC0];
    v34 = OUTLINED_FUNCTION_94_12(*(v111 + 40));
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v5);
    sub_18F0FF914();
    v37 = sub_18F0FF914();
    v45 = OUTLINED_FUNCTION_301_1(v37, v38, v39, v40, v41, v42, v43, v44, v79, v83, v87, v91, v94, *(&v94 + 1), v99, v102, v105, v108, v111, v113, v115, v117, v119);
    v17(v45);
    OUTLINED_FUNCTION_1_121();
    sub_18F115548();
    static IntentContext.currentLocale.getter();
    sub_18F520E7C();
    v46 = sub_18F520B2C();
    v54 = OUTLINED_FUNCTION_340_0(v46, v47, v48, v49, v50, v51, v52, v53, v80, v84, v88, v92, v95, v97, v100, v103, v106, v109, v112, v114, v116, v118, v120, v121, v122);
    v17(v54);
    v55 = sub_18F52193C();
    OUTLINED_FUNCTION_407_0(v55, v56);
    LOBYTE(v13) = OUTLINED_FUNCTION_419_0();

    v57 = OUTLINED_FUNCTION_393_0();
    v58(v57);
    if (v13)
    {
      v2 = v123;
      if ((OUTLINED_FUNCTION_415_0() & 1) == 0)
      {
        OUTLINED_FUNCTION_101_13();
        sub_18F3AAF2C();
      }

      OUTLINED_FUNCTION_328_0();
      if (v76)
      {
        OUTLINED_FUNCTION_202_1(v75);
        sub_18F3AAF2C();
      }

      v8 = OUTLINED_FUNCTION_196_2(v67, v68, v69, v70, v71, v72, v73, v74, v81, v85, v89, v93, v96, v98, v101, v104, v107, v110);
    }

    else
    {

      v8 = OUTLINED_FUNCTION_392_0(v59, v60, v61, v62, v63, v64, v65, v66, v81, v85, v89, v93, v96, v98, v101, v104, v107, v110);
    }
  }

  OUTLINED_FUNCTION_414_0();

  OUTLINED_FUNCTION_20_0();

  v77(v78);
}

uint64_t sub_18F4761B8(uint64_t a1, uint64_t a2)
{
  v2[17] = a1;
  v2[18] = a2;
  sub_18F520F1C();
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v2[21] = swift_task_alloc();
  sub_18F52187C();
  v2[22] = swift_task_alloc();
  v2[23] = type metadata accessor for DisplayRepresentation();
  v2[24] = swift_task_alloc();
  v3 = sub_18F520B3C();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F47637C, 0, 0);
}

uint64_t sub_18F47637C()
{
  OUTLINED_FUNCTION_133_1();
  v12 = v1;
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DE0);
  if (OUTLINED_FUNCTION_408_0())
  {
    sub_18F0FD0B4((v0 + 56), v0 + 16);
    OUTLINED_FUNCTION_49((v0 + 16));
    v2 = OUTLINED_FUNCTION_186();
    *(v0 + 232) = v2;
    OUTLINED_FUNCTION_10(v2);
    *(v0 + 240) = OUTLINED_FUNCTION_34_0();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 248) = v3;
    *v3 = v4;
    v3[1] = sub_18F47651C;
    OUTLINED_FUNCTION_110_8();
    OUTLINED_FUNCTION_132_2();

    return sub_18F2E8290();
  }

  else
  {
    OUTLINED_FUNCTION_32_3();
    sub_18F49CE24(v0 + 56, &qword_1EACD2DE8);
    OUTLINED_FUNCTION_6_1(&dword_18F569F78);
    v11 = v7;
    v8 = swift_task_alloc();
    v9 = OUTLINED_FUNCTION_399_0(v8);
    *v9 = v10;
    OUTLINED_FUNCTION_12_3(v9);

    return v11();
  }
}

uint64_t sub_18F47651C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 256) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F476614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0DF8);
  OUTLINED_FUNCTION_68_0();
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v10 + 16);
    OUTLINED_FUNCTION_280_1();

    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_397_0();
    OUTLINED_FUNCTION_36();

    return v13(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v10 + 16);
    OUTLINED_FUNCTION_6_1(&dword_18F569F78);
    v32 = v20;
    v21 = swift_task_alloc();
    v22 = OUTLINED_FUNCTION_399_0(v21);
    *v22 = v23;
    OUTLINED_FUNCTION_12_3(v22);
    OUTLINED_FUNCTION_36();

    return v24(v24, v25, v26, v27, v28, v29, v30, v31, v32, a10);
  }
}

uint64_t sub_18F476764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_85();
  v13 = v12;
  OUTLINED_FUNCTION_1_0();
  *v14 = v13;
  v15 = *v11;
  OUTLINED_FUNCTION_39();
  *v16 = v15;

  if (v10)
  {
    OUTLINED_FUNCTION_416_0();

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_36();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_36();

    return MEMORY[0x1EEE6DFA0](v26, v27, v28);
  }
}

void sub_18F4768B4()
{
  v111 = *(v1 + 184);
  v6 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_179_3();
  sub_18F4730EC(v6, v7);
  OUTLINED_FUNCTION_305_1();
  v94 = xmmword_18F540410;
  v78 = v6;
  v108 = v8;
  while (v113 != v2)
  {
    if (v2 >= *(v8 + 16))
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_163_3();

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    OUTLINED_FUNCTION_269_1();
    OUTLINED_FUNCTION_132();
    sub_18F52185C();
    OUTLINED_FUNCTION_0_144();
    v115 = v2;
    sub_18F478CB4();
    sub_18F52183C();

    OUTLINED_FUNCTION_132();
    sub_18F52185C();
    sub_18F520AEC();
    v2 = v3;
    OUTLINED_FUNCTION_11();
    v12 = OUTLINED_FUNCTION_150_5(v9, v10, v11, v5);
    v13 = type metadata accessor for DisplayRepresentation.Image(v12);
    v3 = v0;
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
    v0 = v111;
    v17 = *(v111 + 20);
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v5);
    v21 = OUTLINED_FUNCTION_3_39();
    v24 = __swift_storeEnumTagSinglePayload(v21, v22, v23, v13);
    OUTLINED_FUNCTION_302_1(v24, v25, v26, v27, v28, v29, v30, v31, v78, v82, v86, v90, v32);
    *(v4 + v33) = MEMORY[0x1E69E7CC0];
    v34 = OUTLINED_FUNCTION_94_12(*(v111 + 40));
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v5);
    sub_18F0FF914();
    v37 = sub_18F0FF914();
    v45 = OUTLINED_FUNCTION_301_1(v37, v38, v39, v40, v41, v42, v43, v44, v79, v83, v87, v91, v94, *(&v94 + 1), v99, v102, v105, v108, v111, v113, v115, v117, v119);
    v17(v45);
    OUTLINED_FUNCTION_1_121();
    sub_18F115548();
    static IntentContext.currentLocale.getter();
    sub_18F520E7C();
    v46 = sub_18F520B2C();
    v54 = OUTLINED_FUNCTION_340_0(v46, v47, v48, v49, v50, v51, v52, v53, v80, v84, v88, v92, v95, v97, v100, v103, v106, v109, v112, v114, v116, v118, v120, v121, v122);
    v17(v54);
    v55 = sub_18F52193C();
    OUTLINED_FUNCTION_407_0(v55, v56);
    LOBYTE(v13) = OUTLINED_FUNCTION_419_0();

    v57 = OUTLINED_FUNCTION_393_0();
    v58(v57);
    if (v13)
    {
      v2 = v123;
      if ((OUTLINED_FUNCTION_415_0() & 1) == 0)
      {
        OUTLINED_FUNCTION_101_13();
        sub_18F3AAF6C();
      }

      OUTLINED_FUNCTION_328_0();
      if (v76)
      {
        OUTLINED_FUNCTION_202_1(v75);
        sub_18F3AAF6C();
      }

      v8 = OUTLINED_FUNCTION_196_2(v67, v68, v69, v70, v71, v72, v73, v74, v81, v85, v89, v93, v96, v98, v101, v104, v107, v110);
    }

    else
    {

      v8 = OUTLINED_FUNCTION_392_0(v59, v60, v61, v62, v63, v64, v65, v66, v81, v85, v89, v93, v96, v98, v101, v104, v107, v110);
    }
  }

  OUTLINED_FUNCTION_414_0();

  OUTLINED_FUNCTION_20_0();

  v77(v78);
}

uint64_t sub_18F476BE0(uint64_t a1, uint64_t a2)
{
  v2[33] = a1;
  v2[34] = a2;
  sub_18F520F1C();
  v2[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  v2[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v2[37] = swift_task_alloc();
  v2[38] = type metadata accessor for DisplayRepresentation();
  v2[39] = swift_task_alloc();
  v3 = sub_18F520B3C();
  v2[40] = v3;
  v2[41] = *(v3 - 8);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F476D78, 0, 0);
}

uint64_t sub_18F476D78()
{
  OUTLINED_FUNCTION_133_1();
  v10 = v1;
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA2B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DE0);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4((v0 + 184), v0 + 144);
    OUTLINED_FUNCTION_49((v0 + 144));
    v2 = OUTLINED_FUNCTION_186();
    *(v0 + 352) = v2;
    OUTLINED_FUNCTION_10(v2);
    *(v0 + 360) = OUTLINED_FUNCTION_34_0();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 368) = v3;
    *v3 = v4;
    v3[1] = sub_18F476F38;
    OUTLINED_FUNCTION_110_8();
    OUTLINED_FUNCTION_132_2();

    return sub_18F2E8290();
  }

  else
  {
    *(v0 + 216) = 0;
    *(v0 + 200) = 0u;
    *(v0 + 184) = 0u;
    sub_18F49CE24(v0 + 184, &qword_1EACD2DE8);
    OUTLINED_FUNCTION_6_1(&dword_18F569AF8);
    v9 = v7;
    v8 = swift_task_alloc();
    *(v0 + 384) = v8;
    *v8 = v0;
    OUTLINED_FUNCTION_12_3(v8);

    return v9();
  }
}

uint64_t sub_18F476F38()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 376) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F477030()
{
  OUTLINED_FUNCTION_29();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA548);
  OUTLINED_FUNCTION_68_0();
  if (swift_dynamicCast())
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 144);
    OUTLINED_FUNCTION_413_0();

    OUTLINED_FUNCTION_20_0();
    v1 = OUTLINED_FUNCTION_397_0();

    return v2(v1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 144);
    OUTLINED_FUNCTION_6_1(&dword_18F569AF8);
    v6 = v4;
    v5 = swift_task_alloc();
    *(v0 + 384) = v5;
    *v5 = v0;
    OUTLINED_FUNCTION_12_3(v5);

    return v6();
  }
}

void sub_18F477190()
{
  OUTLINED_FUNCTION_31();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 144);
  OUTLINED_FUNCTION_413_0();

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_59_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_18F47722C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_59_1();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_59_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_18F477388()
{
  v85 = *(v1 + 304);
  v3 = MEMORY[0x1E69E7CC0];
  sub_18F473224(MEMORY[0x1E69E7CC0]);
  OUTLINED_FUNCTION_277_0();
  v74 = xmmword_18F540410;
  v71 = v3;
  v83 = v4;
LABEL_2:
  v5 = (v2 << 6) | 0x20;
  while (v87 != v2)
  {
    if (v2 >= *(v0 + 16))
    {
      __break(1u);
      return;
    }

    v92 = *(v1 + 336);
    v7 = *(v1 + 312);
    v6 = *(v1 + 320);
    v89 = *(v1 + 344);
    v91 = *(v1 + 280);
    v94 = *(v1 + 272);
    v93 = *(v1 + 264);
    v9 = *(v0 + v5 + 16);
    v8 = *(v0 + v5 + 32);
    v10 = *(v0 + v5);
    *(v1 + 57) = *(v0 + v5 + 41);
    *(v1 + 32) = v9;
    *(v1 + 48) = v8;
    *(v1 + 16) = v10;
    sub_18F354598(v1 + 16, v1 + 80);
    OUTLINED_FUNCTION_349_0();
    OUTLINED_FUNCTION_11();
    v14 = OUTLINED_FUNCTION_150_5(v11, v12, v13, v6);
    v15 = type metadata accessor for DisplayRepresentation.Image(v14);
    v16 = OUTLINED_FUNCTION_48_25();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
    v0 = *(v85 + 20);
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v6);
    OUTLINED_FUNCTION_11();
    v25 = __swift_storeEnumTagSinglePayload(v22, v23, v24, v15);
    OUTLINED_FUNCTION_289(v25, v26, v27, v28, v29, v30, v31, v32, v68, v71, v33);
    *(v7 + v34) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v6);
    sub_18F0FF914();
    v38 = sub_18F0FF914();
    v46 = OUTLINED_FUNCTION_288_0(v38, v39, v40, v41, v42, v43, v44, v45, v69, v72, v74, *(&v74 + 1), v77, v79, v81, v83, v85, v87, v89);
    (v0)(v46);
    OUTLINED_FUNCTION_1_121();
    sub_18F115548();
    static IntentContext.currentLocale.getter();
    sub_18F520E7C();
    v47 = sub_18F520B2C();
    v55 = OUTLINED_FUNCTION_318_0(v47, v48, v49, v50, v51, v52, v53, v54, v70, v73, v75, v76, v78, v80, v82, v84, v86, v88, v90, v91, v92);
    (v0)(v55);
    *(v1 + 224) = sub_18F52193C();
    *(v1 + 232) = v56;
    *(v1 + 240) = v93;
    *(v1 + 248) = v94;
    sub_18F12A000();
    v57 = OUTLINED_FUNCTION_419_0();

    v58 = OUTLINED_FUNCTION_370();
    v59(v58);
    if (v57)
    {
      v60 = v71;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_101_13();
        sub_18F3AAFAC();
        v60 = v71;
      }

      OUTLINED_FUNCTION_369_0();
      if (v62)
      {
        OUTLINED_FUNCTION_202_1(v61);
        sub_18F3AAFAC();
        v60 = v71;
      }

      ++v2;
      *(v60 + 16) = v6;
      v71 = v60;
      v63 = (v60 + (v5 << 6));
      v64 = *(v1 + 16);
      v65 = *(v1 + 32);
      v66 = *(v1 + 48);
      *(v63 + 73) = *(v1 + 57);
      v63[3] = v65;
      v63[4] = v66;
      v63[2] = v64;
      goto LABEL_2;
    }

    sub_18F493A0C(v1 + 16);
    v5 += 64;
    ++v2;
    v0 = v83;
  }

  OUTLINED_FUNCTION_20_0();

  v67(v71);
}

uint64_t sub_18F4776D0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18F49D0EC;

  return sub_18F4761B8(a1, a2);
}

uint64_t sub_18F47776C()
{
  v0 = sub_18F522F8C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v18 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA1E0);
  sub_18F522F6C();
  v4 = sub_18F117570();
  (*(v1 + 8))(v3, v0);
  v5 = *(v4 + 16);
  if (!v5)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v12[1] = v4;
  v6 = v4 + 32;
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_18F49CB80();
    v13[0] = v17;
    v13[1] = v18;
    v13[2] = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD78);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
LABEL_11:
      sub_18F49CE24(&v14, &qword_1EACD45D0);
      goto LABEL_12;
    }

    if (!*(&v15 + 1))
    {
      goto LABEL_11;
    }

    sub_18F0FD0B4(&v14, v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18F1673F0();
      v7 = v9;
    }

    v8 = *(v7 + 16);
    if (v8 >= *(v7 + 24) >> 1)
    {
      sub_18F1673F0();
      v7 = v10;
    }

    *(v7 + 16) = v8 + 1;
    sub_18F0FD0B4(v13, v7 + 40 * v8 + 32);
LABEL_12:
    v6 += 48;
    --v5;
  }

  while (v5);

  return v7;
}

uint64_t sub_18F4779F8()
{
  v0 = sub_18F522F8C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v18 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA170);
  sub_18F522F6C();
  v4 = sub_18F117570();
  (*(v1 + 8))(v3, v0);
  v5 = *(v4 + 16);
  if (!v5)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v12[1] = v4;
  v6 = v4 + 32;
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_18F49CB80();
    v13[0] = v17;
    v13[1] = v18;
    v13[2] = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD78);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
LABEL_11:
      sub_18F49CE24(&v14, &qword_1EACD45D0);
      goto LABEL_12;
    }

    if (!*(&v15 + 1))
    {
      goto LABEL_11;
    }

    sub_18F0FD0B4(&v14, v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18F1673F0();
      v7 = v9;
    }

    v8 = *(v7 + 16);
    if (v8 >= *(v7 + 24) >> 1)
    {
      sub_18F1673F0();
      v7 = v10;
    }

    *(v7 + 16) = v8 + 1;
    sub_18F0FD0B4(v13, v7 + 40 * v8 + 32);
LABEL_12:
    v6 += 48;
    --v5;
  }

  while (v5);

  return v7;
}

uint64_t sub_18F477C84()
{
  v0 = sub_18F522F8C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v18 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA110);
  sub_18F522F6C();
  v4 = sub_18F117570();
  (*(v1 + 8))(v3, v0);
  v5 = *(v4 + 16);
  if (!v5)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v12[1] = v4;
  v6 = v4 + 32;
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_18F49CB80();
    v13[0] = v17;
    v13[1] = v18;
    v13[2] = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD78);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
LABEL_11:
      sub_18F49CE24(&v14, &qword_1EACD45D0);
      goto LABEL_12;
    }

    if (!*(&v15 + 1))
    {
      goto LABEL_11;
    }

    sub_18F0FD0B4(&v14, v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18F1673F0();
      v7 = v9;
    }

    v8 = *(v7 + 16);
    if (v8 >= *(v7 + 24) >> 1)
    {
      sub_18F1673F0();
      v7 = v10;
    }

    *(v7 + 16) = v8 + 1;
    sub_18F0FD0B4(v13, v7 + 40 * v8 + 32);
LABEL_12:
    v6 += 48;
    --v5;
  }

  while (v5);

  return v7;
}

uint64_t sub_18F477F10()
{
  v0 = sub_18F522F8C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v18 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA2B8);
  sub_18F522F6C();
  v4 = sub_18F117570();
  (*(v1 + 8))(v3, v0);
  v5 = *(v4 + 16);
  if (!v5)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v12[1] = v4;
  v6 = v4 + 32;
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_18F49CB80();
    v13[0] = v17;
    v13[1] = v18;
    v13[2] = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD78);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
LABEL_11:
      sub_18F49CE24(&v14, &qword_1EACD45D0);
      goto LABEL_12;
    }

    if (!*(&v15 + 1))
    {
      goto LABEL_11;
    }

    sub_18F0FD0B4(&v14, v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18F1673F0();
      v7 = v9;
    }

    v8 = *(v7 + 16);
    if (v8 >= *(v7 + 24) >> 1)
    {
      sub_18F1673F0();
      v7 = v10;
    }

    *(v7 + 16) = v8 + 1;
    sub_18F0FD0B4(v13, v7 + 40 * v8 + 32);
LABEL_12:
    v6 += 48;
    --v5;
  }

  while (v5);

  return v7;
}

uint64_t sub_18F47819C()
{
  v0 = sub_18F522F8C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v18 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA1E0);
  sub_18F522F6C();
  v4 = sub_18F117570();
  (*(v1 + 8))(v3, v0);
  v5 = *(v4 + 16);
  if (!v5)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v12[1] = v4;
  v6 = v4 + 32;
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_18F49CB80();
    v13[0] = v17;
    v13[1] = v18;
    v13[2] = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACCFD98);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
LABEL_11:
      sub_18F49CE24(&v14, qword_1EACD5738);
      goto LABEL_12;
    }

    if (!*(&v15 + 1))
    {
      goto LABEL_11;
    }

    sub_18F0FD0B4(&v14, v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18F1673CC();
      v7 = v9;
    }

    v8 = *(v7 + 16);
    if (v8 >= *(v7 + 24) >> 1)
    {
      sub_18F1673CC();
      v7 = v10;
    }

    *(v7 + 16) = v8 + 1;
    sub_18F0FD0B4(v13, v7 + 40 * v8 + 32);
LABEL_12:
    v6 += 48;
    --v5;
  }

  while (v5);

  return v7;
}

uint64_t sub_18F478428()
{
  v0 = sub_18F522F8C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v18 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA170);
  sub_18F522F6C();
  v4 = sub_18F117570();
  (*(v1 + 8))(v3, v0);
  v5 = *(v4 + 16);
  if (!v5)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v12[1] = v4;
  v6 = v4 + 32;
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_18F49CB80();
    v13[0] = v17;
    v13[1] = v18;
    v13[2] = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACCFD98);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
LABEL_11:
      sub_18F49CE24(&v14, qword_1EACD5738);
      goto LABEL_12;
    }

    if (!*(&v15 + 1))
    {
      goto LABEL_11;
    }

    sub_18F0FD0B4(&v14, v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18F1673CC();
      v7 = v9;
    }

    v8 = *(v7 + 16);
    if (v8 >= *(v7 + 24) >> 1)
    {
      sub_18F1673CC();
      v7 = v10;
    }

    *(v7 + 16) = v8 + 1;
    sub_18F0FD0B4(v13, v7 + 40 * v8 + 32);
LABEL_12:
    v6 += 48;
    --v5;
  }

  while (v5);

  return v7;
}

uint64_t sub_18F4786B4()
{
  v0 = sub_18F522F8C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v18 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA110);
  sub_18F522F6C();
  v4 = sub_18F117570();
  (*(v1 + 8))(v3, v0);
  v5 = *(v4 + 16);
  if (!v5)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v12[1] = v4;
  v6 = v4 + 32;
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_18F49CB80();
    v13[0] = v17;
    v13[1] = v18;
    v13[2] = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACCFD98);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
LABEL_11:
      sub_18F49CE24(&v14, qword_1EACD5738);
      goto LABEL_12;
    }

    if (!*(&v15 + 1))
    {
      goto LABEL_11;
    }

    sub_18F0FD0B4(&v14, v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18F1673CC();
      v7 = v9;
    }

    v8 = *(v7 + 16);
    if (v8 >= *(v7 + 24) >> 1)
    {
      sub_18F1673CC();
      v7 = v10;
    }

    *(v7 + 16) = v8 + 1;
    sub_18F0FD0B4(v13, v7 + 40 * v8 + 32);
LABEL_12:
    v6 += 48;
    --v5;
  }

  while (v5);

  return v7;
}

uint64_t sub_18F478940()
{
  v0 = sub_18F522F8C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v18 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACDA2B8);
  sub_18F522F6C();
  v4 = sub_18F117570();
  (*(v1 + 8))(v3, v0);
  v5 = *(v4 + 16);
  if (!v5)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v12[1] = v4;
  v6 = v4 + 32;
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_18F49CB80();
    v13[0] = v17;
    v13[1] = v18;
    v13[2] = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACCFD98);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
LABEL_11:
      sub_18F49CE24(&v14, qword_1EACD5738);
      goto LABEL_12;
    }

    if (!*(&v15 + 1))
    {
      goto LABEL_11;
    }

    sub_18F0FD0B4(&v14, v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18F1673CC();
      v7 = v9;
    }

    v8 = *(v7 + 16);
    if (v8 >= *(v7 + 24) >> 1)
    {
      sub_18F1673CC();
      v7 = v10;
    }

    *(v7 + 16) = v8 + 1;
    sub_18F0FD0B4(v13, v7 + 40 * v8 + 32);
LABEL_12:
    v6 += 48;
    --v5;
  }

  while (v5);

  return v7;
}

void sub_18F478BCC()
{
  OUTLINED_FUNCTION_102();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(v11);
  OUTLINED_FUNCTION_88_4();
  v12 = OUTLINED_FUNCTION_29_13();
  v13 = sub_18F4799F4(v12);
  *(v0 + 32) = v13;
  v14 = (v13 + qword_1ED707728);
  *v14 = v10;
  v14[1] = v8;

  *(v0 + 16) = v6;

  v15 = *(v0 + 24);
  *(v0 + 24) = v4;

  v16 = *(v2 + 16);
  *(v0 + 40) = *v2;
  *(v0 + 56) = v16;
  *(v0 + 72) = *(v2 + 32);
  OUTLINED_FUNCTION_101_0();
}

uint64_t sub_18F478CB4()
{
  OUTLINED_FUNCTION_258_1();
  if (!v1 || (OUTLINED_FUNCTION_18_35(), v2))
  {
    OUTLINED_FUNCTION_104_12();
    result = OUTLINED_FUNCTION_78_15();
    __break(1u);
  }

  else
  {
    v3 = OUTLINED_FUNCTION_295_0();
    v0(v3);

    return OUTLINED_FUNCTION_66();
  }

  return result;
}

uint64_t sub_18F478D34@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 72) != 3 || (v3 = vorrq_s8(*(v1 + 40), *(v1 + 56)), *&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL))))
  {
    result = sub_18F522A3C();
    __break(1u);
  }

  else
  {

    sub_18F46E458(a1);
  }

  return result;
}

uint64_t sub_18F478DF8()
{
  OUTLINED_FUNCTION_258_1();
  if (!v1 || (OUTLINED_FUNCTION_18_35(), v2))
  {
    OUTLINED_FUNCTION_104_12();
    result = OUTLINED_FUNCTION_78_15();
    __break(1u);
  }

  else
  {
    v3 = OUTLINED_FUNCTION_295_0();
    v0(v3);
  }

  return result;
}

uint64_t sub_18F478E80()
{
  OUTLINED_FUNCTION_258_1();
  if (!v0 || (OUTLINED_FUNCTION_18_35(), v1))
  {
    OUTLINED_FUNCTION_104_12();
    result = OUTLINED_FUNCTION_78_15();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_314_0();
    v2 = sub_18F46ED0C();

    return v2 & 1;
  }

  return result;
}

uint64_t sub_18F478EF0()
{
  OUTLINED_FUNCTION_258_1();
  if (!v1 || (OUTLINED_FUNCTION_18_35(), v2))
  {
    OUTLINED_FUNCTION_104_12();
    result = OUTLINED_FUNCTION_78_15();
    __break(1u);
  }

  else
  {
    v3 = OUTLINED_FUNCTION_295_0();
    v0(v3);
    OUTLINED_FUNCTION_99_4();

    return v0;
  }

  return result;
}

uint64_t sub_18F478F60()
{
  OUTLINED_FUNCTION_258_1();
  if (!v1 || (OUTLINED_FUNCTION_18_35(), v2))
  {
    OUTLINED_FUNCTION_104_12();
    result = OUTLINED_FUNCTION_78_15();
    __break(1u);
  }

  else
  {
    v3 = OUTLINED_FUNCTION_295_0();
    v0(v3);
  }

  return result;
}

uint64_t sub_18F478FE8@<X0>(void *a1@<X8>)
{
  if (*(v1 + 72) != 3 || (v3 = vorrq_s8(*(v1 + 40), *(v1 + 56)), *&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL))))
  {
    result = sub_18F522A3C();
    __break(1u);
  }

  else
  {

    sub_18F46FB90(a1);
  }

  return result;
}

uint64_t sub_18F4790AC@<X0>(void *a1@<X8>)
{
  if (*(v1 + 72) != 3 || (v3 = vorrq_s8(*(v1 + 40), *(v1 + 56)), *&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL))))
  {
    result = sub_18F522A3C();
    __break(1u);
  }

  else
  {

    sub_18F46FF10(a1);
  }

  return result;
}

uint64_t sub_18F479170@<X0>(_OWORD *a1@<X8>)
{
  if (*(v1 + 72) != 3 || (v3 = vorrq_s8(*(v1 + 40), *(v1 + 56)), *&vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL))))
  {
    result = sub_18F522A3C();
    __break(1u);
  }

  else
  {

    sub_18F4702FC(a1);
  }

  return result;
}

uint64_t sub_18F479234()
{
  OUTLINED_FUNCTION_258_1();
  if (!v0 || (OUTLINED_FUNCTION_18_35(), v2))
  {
    OUTLINED_FUNCTION_212_2();
    OUTLINED_FUNCTION_106_12();
    result = OUTLINED_FUNCTION_174_4();
    __break(1u);
  }

  else
  {
    v3 = v1;
    OUTLINED_FUNCTION_314_0();
    v4 = OUTLINED_FUNCTION_82();
    v3(v4);
  }

  return result;
}

uint64_t sub_18F4792CC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD1480);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  if (*(v1 + 72) != 3 || (v6 = vorrq_s8(*(v1 + 40), *(v1 + 56)), *&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL))))
  {
    result = sub_18F522A3C();
    __break(1u);
  }

  else
  {
    sub_18F49CB80();

    sub_18F47089C(v5);

    return sub_18F49CE24(a1, &unk_1EACD1480);
  }

  return result;
}

uint64_t sub_18F479418(uint64_t a1)
{
  if (*(v1 + 72) != 3 || (v2 = vorrq_s8(*(v1 + 40), *(v1 + 56)), *&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL))))
  {
    result = sub_18F522A3C();
    __break(1u);
  }

  else
  {

    sub_18F47093C(a1);
  }

  return result;
}

uint64_t sub_18F4794DC(uint64_t a1)
{
  v3 = sub_18F520DEC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 72) != 3 || (v7 = vorrq_s8(*(v1 + 40), *(v1 + 56)), *&vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL))))
  {
    result = sub_18F522A3C();
    __break(1u);
  }

  else
  {
    (*(v4 + 16))(v6, a1, v3);

    sub_18F4709EC(v6);

    return (*(v4 + 8))(a1, v3);
  }

  return result;
}

uint64_t sub_18F479658()
{
  if (*(v0 + 72) != 3 || (v1 = vorrq_s8(*(v0 + 40), *(v0 + 56)), *&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL))))
  {
    result = sub_18F522A3C();
    __break(1u);
  }

  else
  {

    sub_18F470AE0();
  }

  return result;
}

uint64_t sub_18F47971C()
{
  OUTLINED_FUNCTION_258_1();
  if (!v0 || (OUTLINED_FUNCTION_18_35(), v2))
  {
    OUTLINED_FUNCTION_212_2();
    OUTLINED_FUNCTION_106_12();
    result = OUTLINED_FUNCTION_174_4();
    __break(1u);
  }

  else
  {
    v3 = v1;
    OUTLINED_FUNCTION_314_0();
    v4 = OUTLINED_FUNCTION_97_12();
    sub_18F470B64(v4, v5, v6, v3);
  }

  return result;
}

uint64_t sub_18F4797C8(const void *a1)
{
  if (*(v1 + 72) != 3 || (v2 = vorrq_s8(*(v1 + 40), *(v1 + 56)), *&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL))))
  {
    result = sub_18F522A3C();
    __break(1u);
  }

  else
  {

    sub_18F470C1C(a1);
  }

  return result;
}

uint64_t sub_18F47988C(_OWORD *a1)
{
  if (*(v1 + 72) != 3 || (v2 = vorrq_s8(*(v1 + 40), *(v1 + 56)), *&vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL))))
  {
    result = sub_18F522A3C();
    __break(1u);
  }

  else
  {

    sub_18F470CC4(a1);
  }

  return result;
}

uint64_t sub_18F479950()
{
  OUTLINED_FUNCTION_258_1();
  if (!v0 || (OUTLINED_FUNCTION_18_35(), v2))
  {
    OUTLINED_FUNCTION_212_2();
    OUTLINED_FUNCTION_106_12();
    result = OUTLINED_FUNCTION_174_4();
    __break(1u);
  }

  else
  {
    v3 = v1;
    OUTLINED_FUNCTION_314_0();
    v4 = OUTLINED_FUNCTION_9_42();
    sub_18F470810(v4, v5, v6, v3);
  }

  return result;
}

uint64_t sub_18F4799F4(uint64_t a1)
{
  v3 = (v1 + qword_1ED707728);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v1 + qword_1ED707720);
  *v4 = 0;
  v4[1] = 0;
  v5 = v1 + qword_1ED707718;
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  v6 = qword_1ED707730;
  sub_18F520B3C();
  OUTLINED_FUNCTION_0_55();
  (*(v7 + 32))(v1 + v6, a1);
  return v1;
}

uint64_t sub_18F479AA0(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v24 = a3;
  v25 = a2;
  v23 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  v14 = sub_18F520B3C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a1, v14);
  v18 = sub_18F479D10();
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_18F49CB80();
  v19 = type metadata accessor for IntentDialog(0);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v19);
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  swift_allocObject();
  v20 = sub_18F1B4CF4(v17, v24, v18, v30, v28, v13, v11, v26);
  sub_18F49CE24(a5, &qword_1EACCF7A0);
  sub_18F49CE24(a4, &qword_1EACD6108);
  sub_18F49CE24(v25, &qword_1EACCF7A8);
  (*(v15 + 8))(v23, v14);
  return v20;
}

uint64_t sub_18F479D10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6108);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9[-v1];
  v3 = type metadata accessor for Bool.IntentDisplayName();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_18F49CB80();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_18F49CE24(v2, &qword_1EACD6108);
    sub_18F1168B4();
    return sub_18F5216CC();
  }

  else
  {
    sub_18F45996C(v2, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD03F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18F53F800;
    *(inited + 32) = 0x707369446C6F6F62;
    *(inited + 40) = 0xEF656D614E79616CLL;
    *(inited + 72) = v3;
    __swift_allocate_boxed_opaque_existential_1((inited + 48));
    sub_18F49BD4C();
    sub_18F1168B4();
    v6 = sub_18F5216CC();
    sub_18F115548();
  }

  return v6;
}

uint64_t sub_18F479F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_133_1();
  a15 = v18;
  a16 = v19;
  OUTLINED_FUNCTION_31();
  a14 = v17;
  if (qword_1ED6FE088 != -1)
  {
    OUTLINED_FUNCTION_62_16();
  }

  v20 = sub_18F52165C();
  OUTLINED_FUNCTION_58(v20, qword_1ED707760);
  v21 = sub_18F52163C();
  v22 = sub_18F52221C();
  if (OUTLINED_FUNCTION_27(v22))
  {
    OUTLINED_FUNCTION_126();
    OUTLINED_FUNCTION_64_3();
    OUTLINED_FUNCTION_391_0();
    *v16 = 136315138;
    OUTLINED_FUNCTION_35_5();
    *(v16 + 4) = sub_18F11897C(0xD000000000000014, v23, &a10);
    OUTLINED_FUNCTION_26_24(&dword_18F0E9000, v24, v25, "Entity type %s is transient and is not meant to be queried.");
    OUTLINED_FUNCTION_225_2();
    OUTLINED_FUNCTION_26_0();
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_132_2();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33);
}

uint64_t sub_18F47A05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_133_1();
  a15 = v18;
  a16 = v19;
  OUTLINED_FUNCTION_31();
  a14 = v17;
  if (qword_1ED6FE088 != -1)
  {
    OUTLINED_FUNCTION_62_16();
  }

  v20 = sub_18F52165C();
  OUTLINED_FUNCTION_58(v20, qword_1ED707760);
  v21 = sub_18F52163C();
  v22 = sub_18F52221C();
  if (OUTLINED_FUNCTION_27(v22))
  {
    OUTLINED_FUNCTION_126();
    OUTLINED_FUNCTION_64_3();
    OUTLINED_FUNCTION_391_0();
    *v16 = 136315138;
    OUTLINED_FUNCTION_35_5();
    *(v16 + 4) = sub_18F11897C(0xD000000000000014, v23, &a10);
    OUTLINED_FUNCTION_26_24(&dword_18F0E9000, v24, v25, "Entity type %s is transient and is not meant to be queried.");
    OUTLINED_FUNCTION_225_2();
    OUTLINED_FUNCTION_26_0();
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_132_2();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33);
}

uint64_t sub_18F47A17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_133_1();
  a15 = v18;
  a16 = v19;
  OUTLINED_FUNCTION_31();
  a14 = v17;
  if (qword_1ED6FE088 != -1)
  {
    OUTLINED_FUNCTION_62_16();
  }

  v20 = sub_18F52165C();
  OUTLINED_FUNCTION_58(v20, qword_1ED707760);
  v21 = sub_18F52163C();
  v22 = sub_18F52221C();
  if (OUTLINED_FUNCTION_27(v22))
  {
    OUTLINED_FUNCTION_126();
    OUTLINED_FUNCTION_64_3();
    OUTLINED_FUNCTION_391_0();
    *v16 = 136315138;
    OUTLINED_FUNCTION_35_5();
    *(v16 + 4) = sub_18F11897C(0xD000000000000016, v23, &a10);
    OUTLINED_FUNCTION_26_24(&dword_18F0E9000, v24, v25, "Entity type %s is transient and is not meant to be queried.");
    OUTLINED_FUNCTION_225_2();
    OUTLINED_FUNCTION_26_0();
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_132_2();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33);
}

uint64_t sub_18F47A29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_133_1();
  a15 = v18;
  a16 = v19;
  OUTLINED_FUNCTION_31();
  a14 = v17;
  if (qword_1ED6FE088 != -1)
  {
    OUTLINED_FUNCTION_62_16();
  }

  v20 = sub_18F52165C();
  OUTLINED_FUNCTION_58(v20, qword_1ED707760);
  v21 = sub_18F52163C();
  v22 = sub_18F52221C();
  if (OUTLINED_FUNCTION_27(v22))
  {
    OUTLINED_FUNCTION_126();
    OUTLINED_FUNCTION_64_3();
    OUTLINED_FUNCTION_391_0();
    *v16 = 136315138;
    OUTLINED_FUNCTION_35_5();
    *(v16 + 4) = sub_18F11897C(0xD000000000000015, v23, &a10);
    OUTLINED_FUNCTION_26_24(&dword_18F0E9000, v24, v25, "Entity type %s is transient and is not meant to be queried.");
    OUTLINED_FUNCTION_225_2();
    OUTLINED_FUNCTION_26_0();
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_132_2();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33);
}