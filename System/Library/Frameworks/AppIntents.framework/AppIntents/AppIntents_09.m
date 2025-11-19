uint64_t sub_18F1B2964()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 424) = v0;

  if (v0)
  {
    sub_18F0EF1A8(*(v3 + 304), &qword_1EACD0E30);
    OUTLINED_FUNCTION_13_0();
  }

  else
  {
    v10 = *(v3 + 304);

    sub_18F0EF1A8(v10, &qword_1EACD0E30);
    v8 = *(v3 + 392);
    v9 = *(v3 + 400);
    v7 = sub_18F1B2AA4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1B2AA4()
{
  v1 = *(v0 + 352);

  OUTLINED_FUNCTION_34_6();
  sub_18F1B8B40(v1, v2);

  OUTLINED_FUNCTION_6();

  return v3();
}

uint64_t sub_18F1B2B54()
{
  OUTLINED_FUNCTION_69();

  v1 = *(v0 + 392);
  v2 = *(v0 + 400);

  return MEMORY[0x1EEE6DFA0](sub_18F1B2BB4, v1, v2);
}

uint64_t sub_18F1B2BB4()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 352);
  v3 = *(v0 + 97);

  sub_18F1B8044();
  OUTLINED_FUNCTION_28();
  *v4 = (v3 & 1) == 0;
  swift_willThrow();

  OUTLINED_FUNCTION_34_6();
  sub_18F1B8B40(v2, v5);

  OUTLINED_FUNCTION_71();

  return v6();
}

uint64_t _UndoIntent.perform()()
{
  OUTLINED_FUNCTION_69();
  *(v1 + 512) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  OUTLINED_FUNCTION_10(v3);
  *(v1 + 520) = OUTLINED_FUNCTION_34_0();
  v4 = sub_18F520B3C();
  *(v1 + 528) = v4;
  *(v1 + 536) = *(v4 - 8);
  *(v1 + 544) = swift_task_alloc();
  *(v1 + 552) = swift_task_alloc();
  *(v1 + 560) = *v0;
  *(v1 + 568) = *(v0 + 8);
  sub_18F521EBC();
  *(v1 + 584) = sub_18F521EAC();
  v6 = sub_18F521E1C();
  *(v1 + 592) = v6;
  *(v1 + 600) = v5;

  return MEMORY[0x1EEE6DFA0](sub_18F1B2DF4, v6, v5);
}

uint64_t sub_18F1B2DF4()
{
  if (qword_1ED6FF6D8 != -1)
  {
    swift_once();
  }

  v3 = sub_18F3E6D78();

  *(v0 + 608) = v3;
  if (!v3)
  {

    sub_18F1B8044();
    OUTLINED_FUNCTION_28();
    *v10 = 2;
    swift_willThrow();
LABEL_19:
    OUTLINED_FUNCTION_73_1();

    OUTLINED_FUNCTION_71();
LABEL_20:

    return v17();
  }

  sub_18F1B6AB4((v0 + 97));
  if (*(v0 + 97))
  {
    if ([v3 canRedo])
    {
      v4 = sub_18F1B5408();
      if (v5)
      {
        v6 = v4;

        v7 = OUTLINED_FUNCTION_57_1();
        v8 = [v3 redoActionUserInfoValueForKey_];

        if (!v8)
        {

          goto LABEL_29;
        }

        sub_18F52261C();
        swift_unknownObjectRelease();
        sub_18F118710((v0 + 304), (v0 + 272));
        sub_18F0FECD4(v0 + 272, v0 + 336);
        OUTLINED_FUNCTION_53();
        sub_18F1B174C();
        v6 = v9;

        sub_18F0EF1A8(v0 + 336, &qword_1EACD0430);
        if (v6)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v0 + 272);
LABEL_29:
          v25 = &selRef_redo;
LABEL_32:
          v26 = *(v0 + 608);
          v27 = *(v0 + 520);
          v28 = *(v0 + 512);
          [v26 *v25];

          v29 = type metadata accessor for IntentDialog(0);
          OUTLINED_FUNCTION_13_14();
          OUTLINED_FUNCTION_11();
          __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
          v33.n128_f64[0] = OUTLINED_FUNCTION_8_12();
          OUTLINED_FUNCTION_37_6(v33, xmmword_18F543360);
          v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0158) + 68);
          OUTLINED_FUNCTION_11();
          v37 = __swift_storeEnumTagSinglePayload(v34, v35, v36, v29);
          OUTLINED_FUNCTION_6_16(v37, v38, v39, v40, v41, v42, v43, v44, v74, v78, v82);
          sub_18F0FF690(v2, v45, &qword_1EACD0D70);
          *(v28 + v1) = 2;
          sub_18F0FF690(v92, v27, &qword_1EACD0550);
          sub_18F0FF690(v89, v8, &qword_1EACD0D78);
          OUTLINED_FUNCTION_76_1();
          OUTLINED_FUNCTION_40_4();
          v46 = sub_18F0FF690(v101, v6, &qword_1EACD0D80);
          v52 = OUTLINED_FUNCTION_52_2(v46, v47, &qword_1EACCF7A0, &unk_18F53E6F0, v48, v49, v50, v51, v75, v79, v83, v86, v89, v92, v95, v98, v101, v103, v27);
          v60 = OUTLINED_FUNCTION_65_4(v52, v53, v54, v55, v56, v57, v58, v59, v76, v80, v84, v87, v90, v93, v96, v99, v102, v104);
          v63 = sub_18F0FF690(v60, v61, v62);
          OUTLINED_FUNCTION_21_8(v63, v64, v65, v66, v67, v68, v69, v70, v77, v81, v85, v88, v91, v94, v97, v100);

          OUTLINED_FUNCTION_6();
          goto LABEL_20;
        }

        sub_18F1B8044();
        OUTLINED_FUNCTION_28();
        *v71 = 1;
        swift_willThrow();

        v72 = v0 + 272;
        goto LABEL_35;
      }

      v19 = *(v0 + 560);
      v105 = *(v0 + 568);
      v20 = [v3 redoMenuItemTitle];
      sub_18F5218DC();

      *(v0 + 464) = v19;
      *(v0 + 472) = v105;
      sub_18F520ACC();
      v21 = swift_task_alloc();
      *(v0 + 632) = v21;
      *v21 = v0;
      v21[1] = sub_18F1B3754;
      goto LABEL_25;
    }

    sub_18F1B8044();
    OUTLINED_FUNCTION_28();
    *v15 = 1;
    goto LABEL_18;
  }

  if (([v3 canUndo] & 1) == 0)
  {

    sub_18F1B8044();
    OUTLINED_FUNCTION_28();
    *v16 = 0;
LABEL_18:
    swift_willThrow();

    goto LABEL_19;
  }

  v11 = sub_18F1B5408();
  if (v12)
  {
    v6 = v11;

    v13 = OUTLINED_FUNCTION_57_1();
    v8 = [v3 undoActionUserInfoValueForKey_];

    if (v8)
    {
      sub_18F52261C();
      swift_unknownObjectRelease();
      sub_18F118710((v0 + 400), (v0 + 368));
      sub_18F0FECD4(v0 + 368, v0 + 432);
      OUTLINED_FUNCTION_53();
      sub_18F1B174C();
      v6 = v14;

      sub_18F0EF1A8(v0 + 432, &qword_1EACD0430);
      if ((v6 & 1) == 0)
      {
        sub_18F1B8044();
        OUTLINED_FUNCTION_28();
        *v73 = 0;
        swift_willThrow();

        v72 = v0 + 368;
LABEL_35:
        __swift_destroy_boxed_opaque_existential_1Tm(v72);
        goto LABEL_19;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 368);
    }

    else
    {
    }

    v25 = &selRef_undo;
    goto LABEL_32;
  }

  v22 = *(v0 + 560);
  v106 = *(v0 + 568);
  v23 = [v3 undoMenuItemTitle];
  sub_18F5218DC();

  *(v0 + 488) = v22;
  *(v0 + 496) = v106;
  sub_18F520ACC();
  v24 = swift_task_alloc();
  *(v0 + 616) = v24;
  *v24 = v0;
  v24[1] = sub_18F1B347C;
LABEL_25:

  return sub_18F1B23E4();
}

uint64_t sub_18F1B347C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 624) = v0;

  OUTLINED_FUNCTION_38_3();
  v7();
  OUTLINED_FUNCTION_91_0();
  if (v0)
  {
    v10 = sub_18F1B3A2C;
  }

  else
  {
    v10 = sub_18F1B35A4;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_18F1B35A4()
{

  OUTLINED_FUNCTION_45_4();
  [v0 undo];

  v7 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  v11.n128_f64[0] = OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_37_6(v11, xmmword_18F543360);
  v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0158) + 68);
  OUTLINED_FUNCTION_11();
  v15 = __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
  OUTLINED_FUNCTION_6_16(v15, v16, v17, v18, v19, v20, v21, v22, v51, v55, v59);
  sub_18F0FF690(v6, v23, &qword_1EACD0D70);
  *(v4 + v5) = 2;
  sub_18F0FF690(v69, v1, &qword_1EACD0550);
  sub_18F0FF690(v66, v3, &qword_1EACD0D78);
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_40_4();
  v24 = sub_18F0FF690(v78, v2, &qword_1EACD0D80);
  v30 = OUTLINED_FUNCTION_52_2(v24, v25, &qword_1EACCF7A0, &unk_18F53E6F0, v26, v27, v28, v29, v52, v56, v60, v63, v66, v69, v72, v75, v78, v80, v82);
  v38 = OUTLINED_FUNCTION_65_4(v30, v31, v32, v33, v34, v35, v36, v37, v53, v57, v61, v64, v67, v70, v73, v76, v79, v81);
  v41 = sub_18F0FF690(v38, v39, v40);
  OUTLINED_FUNCTION_21_8(v41, v42, v43, v44, v45, v46, v47, v48, v54, v58, v62, v65, v68, v71, v74, v77);

  OUTLINED_FUNCTION_6();

  return v49();
}

uint64_t sub_18F1B3754()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 640) = v0;

  OUTLINED_FUNCTION_38_3();
  v7();
  OUTLINED_FUNCTION_91_0();
  if (v0)
  {
    v10 = sub_18F1B3AB0;
  }

  else
  {
    v10 = sub_18F1B387C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_18F1B387C()
{

  OUTLINED_FUNCTION_45_4();
  [v0 redo];

  v7 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  v11.n128_f64[0] = OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_37_6(v11, xmmword_18F543360);
  v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0158) + 68);
  OUTLINED_FUNCTION_11();
  v15 = __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
  OUTLINED_FUNCTION_6_16(v15, v16, v17, v18, v19, v20, v21, v22, v51, v55, v59);
  sub_18F0FF690(v6, v23, &qword_1EACD0D70);
  *(v4 + v5) = 2;
  sub_18F0FF690(v69, v1, &qword_1EACD0550);
  sub_18F0FF690(v66, v3, &qword_1EACD0D78);
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_40_4();
  v24 = sub_18F0FF690(v78, v2, &qword_1EACD0D80);
  v30 = OUTLINED_FUNCTION_52_2(v24, v25, &qword_1EACCF7A0, &unk_18F53E6F0, v26, v27, v28, v29, v52, v56, v60, v63, v66, v69, v72, v75, v78, v80, v82);
  v38 = OUTLINED_FUNCTION_65_4(v30, v31, v32, v33, v34, v35, v36, v37, v53, v57, v61, v64, v67, v70, v73, v76, v79, v81);
  v41 = sub_18F0FF690(v38, v39, v40);
  OUTLINED_FUNCTION_21_8(v41, v42, v43, v44, v45, v46, v47, v48, v54, v58, v62, v65, v68, v71, v74, v77);

  OUTLINED_FUNCTION_6();

  return v49();
}

uint64_t sub_18F1B3A2C()
{
  v1 = *(v0 + 608);

  OUTLINED_FUNCTION_73_1();

  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F1B3AB0()
{
  v1 = *(v0 + 608);

  OUTLINED_FUNCTION_73_1();

  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F1B3B38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F0FC874;

  return _UndoIntent.perform()();
}

void sub_18F1B3BF8()
{
  OUTLINED_FUNCTION_18();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  OUTLINED_FUNCTION_10(v0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v1);
  v70[0] = v70 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  v79 = v70 - v5;
  v6 = sub_18F520F1C();
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v75 = sub_18F520ADC();
  v11 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_4();
  v14 = (v13 - v12);
  v15 = sub_18F52189C();
  v16 = OUTLINED_FUNCTION_10(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0E18);
  v20 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0E20) - 8);
  v21 = *v20;
  v78 = *(*v20 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v80 = v23;
  *(v23 + 16) = xmmword_18F541F50;
  v24 = v23 + v22;
  v25 = v23 + v22 + v20[14];
  *(v23 + v22) = 0;
  v70[1] = v19;
  sub_18F52181C();
  v77 = type metadata accessor for UndoOperation.__();
  *v14 = v77;
  v73 = *MEMORY[0x1E6968E00];
  v26 = *(v11 + 104);
  v74 = v11 + 104;
  v76 = v26;
  v26(v14);
  v72 = v10;
  sub_18F520EDC();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_98_0();
  v27 = sub_18F520B3C();
  v28 = v79;
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v27);
  v32 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
  v36 = type metadata accessor for DisplayRepresentation();
  v37 = v36[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v27);
  v41 = v36[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v32);
  v45 = v36[7];
  v71 = xmmword_18F540410;
  *(v25 + v45) = xmmword_18F540410;
  *(v25 + v36[8]) = 0;
  *(v25 + v36[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v27);
  sub_18F0FF690(v28, v25 + v37, &qword_1EACCF7A8);
  v49 = v25 + v41;
  v50 = v70[0];
  sub_18F0FF690(v70[0], v49, &qword_1EACD0270);
  v51 = v24 + v78 + v20[14];
  *(v24 + v78) = 1;
  sub_18F52181C();
  v52 = v76;
  *v14 = v77;
  v52(v14, v73, v75);
  sub_18F520EDC();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v27);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v32);
  v59 = v36[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v27);
  v63 = v36[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v32);
  *(v51 + v36[7]) = v71;
  *(v51 + v36[8]) = 0;
  *(v51 + v36[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v27);
  sub_18F0FF690(v28, v51 + v59, &qword_1EACCF7A8);
  sub_18F0FF690(v50, v51 + v63, &qword_1EACD0270);
  sub_18F1B8674();
  off_1ED6FE118 = sub_18F5216CC();
  OUTLINED_FUNCTION_16();
}

_UNKNOWN **sub_18F1B4104()
{
  if (qword_1ED6FE110 != -1)
  {
    OUTLINED_FUNCTION_10_13();
  }

  return &off_1ED6FE118;
}

uint64_t static UndoOperation.caseDisplayRepresentations.getter()
{
  if (qword_1ED6FE110 != -1)
  {
    OUTLINED_FUNCTION_10_13();
  }

  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t static UndoOperation.caseDisplayRepresentations.setter(void *a1)
{
  if (qword_1ED6FE110 != -1)
  {
    OUTLINED_FUNCTION_10_13();
  }

  swift_beginAccess();
  off_1ED6FE118 = a1;
}

uint64_t (*static UndoOperation.caseDisplayRepresentations.modify())()
{
  if (qword_1ED6FE110 != -1)
  {
    OUTLINED_FUNCTION_10_13();
  }

  OUTLINED_FUNCTION_81();
  return j_j__swift_endAccess;
}

uint64_t sub_18F1B4288@<X0>(void *a1@<X8>)
{
  sub_18F1B4104();
  swift_beginAccess();
  *a1 = off_1ED6FE118;
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F1B42DC(void **a1)
{
  v1 = *a1;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F1B4104();
  swift_beginAccess();
  off_1ED6FE118 = v1;
}

AppIntents::UndoOperation_optional __swiftcall UndoOperation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_18F522B3C();

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

  *v2 = v5;
  return result;
}

uint64_t UndoOperation.rawValue.getter()
{
  if (*v0)
  {
    return 1868850546;
  }

  else
  {
    return 1868852853;
  }
}

uint64_t sub_18F1B43F8@<X0>(uint64_t *a1@<X8>)
{
  result = UndoOperation.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE400000000000000;
  return result;
}

uint64_t UndoError.hashValue.getter()
{
  v1 = *v0;
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](v1);
  return sub_18F522F4C();
}

uint64_t sub_18F1B4908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_5_18(*(v13 + 152));
  OUTLINED_FUNCTION_5_18(*(v14 + 160));
  OUTLINED_FUNCTION_3_14(*(v15 + 168));
  *(v9 + *(v16 + 176)) = 0;
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_4_14((v9 + *(v17 + 184)), v18);
  v20 = *(v19 + 104);
  sub_18F520B3C();
  OUTLINED_FUNCTION_23_12();
  v22 = v21;
  (*(v21 + 16))(v9 + v20, a1, v10);
  OUTLINED_FUNCTION_22_2();
  sub_18F1169CC(a2, v9 + *(v23 + 96), a9);
  if (!a3)
  {
    sub_18F1168B4();
    a3 = sub_18F5216CC();
  }

  sub_18F0EF1A8(a2, a9);
  (*(v22 + 8))(a1, v10);
  OUTLINED_FUNCTION_22_2();
  *(v9 + *(v24 + 112)) = a3;
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_1_21(*(v25 + 120));
  OUTLINED_FUNCTION_2_26(*(v26 + 128));
  sub_18F1170D0(a6, v9 + *(v27 + 136));
  OUTLINED_FUNCTION_22_2();
  sub_18F1170D0(a7, v9 + *(v28 + 144));
  OUTLINED_FUNCTION_22_2();
  v30 = *(v29 + 184);
  OUTLINED_FUNCTION_81();
  sub_18F0FF690(a8, v9 + v30, &qword_1EACD0D98);
  swift_endAccess();
  return v9;
}

uint64_t sub_18F1B5220()
{
  OUTLINED_FUNCTION_70_1();
  OUTLINED_FUNCTION_22_2();
  v3 = *(v2 + 168);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_83_3(v1 + v3, &v10);
  OUTLINED_FUNCTION_82_0();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v12 = 0;
    v13 = 0;
  }

  v4 = dynamic_cast_existential_2_conditional(&type metadata for StringSearchCriteria);
  v5 = v13;
  if (v4)
  {
    if (!v13)
    {
      v6 = *(v1 + 24);
      if (v6)
      {
        v10 = *(v1 + 16);
        v11 = v6;
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      }

      else
      {
        v10 = *(v1 + 16);
        v11 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0E08);
      swift_dynamicCast();
    }

    goto LABEL_8;
  }

  if (v13)
  {
LABEL_8:
    *v0 = v12;
LABEL_9:
    v0[1] = v5;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  v5 = *(v1 + 24);
  if (v5)
  {
    *v0 = *(v1 + 16);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_105_1();
  OUTLINED_FUNCTION_39_5();
  if (OUTLINED_FUNCTION_56_2(*(v8 + 152)))
  {
    OUTLINED_FUNCTION_36_7();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v9 = OUTLINED_FUNCTION_80_0();
  MEMORY[0x193ADB000](v9);

  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_12_16();
  result = OUTLINED_FUNCTION_15_11();
  __break(1u);
  return result;
}

uint64_t sub_18F1B5408()
{
  v1 = v0;
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_37();
  v2 = swift_beginAccess();
  OUTLINED_FUNCTION_97_0(v2, v3, v4, v5);
  OUTLINED_FUNCTION_81_0();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v13 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4470);
  if (dynamic_cast_existential_2_conditional(v6))
  {
    if (!v13)
    {
      v7 = *(v0 + 16);
      if (*(v1 + 24))
      {
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      }

      return v7;
    }

    goto LABEL_8;
  }

  if (v13)
  {
LABEL_8:
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    OUTLINED_FUNCTION_72_1();
    v7 = v11;

    return v7;
  }

  if (*(v0 + 24))
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    OUTLINED_FUNCTION_72_1();
    return v12;
  }

  OUTLINED_FUNCTION_101_1();
  OUTLINED_FUNCTION_89_1();
  if (OUTLINED_FUNCTION_85_1(*(v9 + 152)))
  {
    OUTLINED_FUNCTION_36_7();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v10 = OUTLINED_FUNCTION_80_0();
  MEMORY[0x193ADB000](v10);

  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_12_16();
  result = OUTLINED_FUNCTION_15_11();
  __break(1u);
  return result;
}

void sub_18F1B55C4()
{
  OUTLINED_FUNCTION_18();
  v3 = v0;
  v55 = v4;
  v5 = sub_18F5208EC();
  OUTLINED_FUNCTION_0();
  v54 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v52 = v8 - v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v50 - v11;
  OUTLINED_FUNCTION_44();
  v13 = MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_93_1(v13, v14, v15, v16, v17, v18, v19, v20, v50);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0DF0) - 8;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v50 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD1480);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_13();
  MEMORY[0x1EEE9AC00](v27);
  v51 = &v50 - v28;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_86_1();
  v31 = *(v30 + 168);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_18F1169CC(v3 + v31, &v56, &qword_1EACD0620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620);
  v32 = swift_dynamicCast();
  OUTLINED_FUNCTION_53_0(v1, v32 ^ 1u);
  v33 = dynamic_cast_existential_2_conditional(v25);
  v34 = *(v21 + 56);
  sub_18F1169CC(v1, &v24[v34], &unk_1EACD1480);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v24[v34], 1, v5);
  if (v33)
  {
    if (EnumTagSinglePayload == 1)
    {
      OUTLINED_FUNCTION_86_1();
      v37 = v3 + *(v36 + 96);
      v38 = v51;
      sub_18F1169CC(v37, v51, &unk_1EACD1480);
      OUTLINED_FUNCTION_55_3(v38);
      if (v39)
      {
        sub_18F0EF1A8(v38, &unk_1EACD1480);
        v46 = v55;
        v47 = 1;
      }

      else
      {
        v43 = *(v54 + 32);
        v44 = v50;
        v43(v50, v38, v5);
        v45 = v55;
        v43(v55, v44, v5);
        v46 = v45;
        v47 = 0;
      }

      OUTLINED_FUNCTION_53_0(v46, v47);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v40 = v52;
  if (EnumTagSinglePayload != 1)
  {
LABEL_9:
    (*(v54 + 32))(v53, &v24[v34], v5);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_86_1();
  sub_18F1169CC(v3 + *(v41 + 96), v2, &unk_1EACD1480);
  OUTLINED_FUNCTION_55_3(v2);
  if (!v39)
  {
    v42 = *(v54 + 32);
    v42(v40, v2, v5);
    v42(v53, v40, v5);
LABEL_10:
    swift_dynamicCast();
LABEL_12:
    sub_18F0EF1A8(v1, &unk_1EACD1480);
    OUTLINED_FUNCTION_16();
    return;
  }

  sub_18F0EF1A8(v2, &unk_1EACD1480);
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_86_1();
  if (*(v3 + *(v48 + 152) + 8))
  {
    OUTLINED_FUNCTION_36_7();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v49 = OUTLINED_FUNCTION_80_0();
  MEMORY[0x193ADB000](v49);

  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_12_16();
  OUTLINED_FUNCTION_15_11();
  __break(1u);
}

uint64_t sub_18F1B5A58()
{
  OUTLINED_FUNCTION_70_1();
  OUTLINED_FUNCTION_22_2();
  v3 = *(v2 + 168);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_83_3(v1 + v3, &v32);
  OUTLINED_FUNCTION_82_0();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0DE8);
  dynamic_cast_existential_2_conditional(v4);
  v5 = OUTLINED_FUNCTION_96_0();
  if (v12)
  {
    if (!v5)
    {
      v14 = *(v1 + 16);
      v13 = *(v1 + 24);
      if (v14)
      {
        *v0 = v14;
        *(v0 + 8) = v13;
        v15 = OUTLINED_FUNCTION_94_0();
        sub_18F1B89C4(v15);
        v16 = v14;
      }

      else
      {
        *v0 = 0;
        *(v0 + 8) = v13;
        v16 = OUTLINED_FUNCTION_94_0();
      }

      sub_18F1B89C4(v16);
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (v5)
  {
LABEL_8:
    v32 = v5;
    v33 = v6;
    v34 = v7;
    v35 = v8;
    v36 = v9;
    v37 = v10;
    v38 = v11 & 1;
    sub_18F1B89C4(v5);
    OUTLINED_FUNCTION_72_1();
    *v0 = v28;
    *(v0 + 16) = v29;
    *(v0 + 32) = v30;
    *(v0 + 48) = v31;
LABEL_13:
    v24 = OUTLINED_FUNCTION_96_0();
    return sub_18F1B8A24(v24);
  }

  v17 = *(v1 + 16);
  if (v17)
  {
    v19 = *(v1 + 48);
    v18 = *(v1 + 56);
    v21 = *(v1 + 32);
    v20 = *(v1 + 40);
    v22 = *(v1 + 24);
    v23 = *(v1 + 64);
    v32 = v17;
    v33 = v22;
    v34 = v21;
    v35 = v20;
    v36 = v19;
    v37 = v18;
    v38 = v23 & 1;
    sub_18F1B89C4(0);
    sub_18F1B89C4(v17);
    OUTLINED_FUNCTION_72_1();
    goto LABEL_13;
  }

  v32 = 0;
  v33 = 0xE000000000000000;
  sub_18F1B89C4(0);
  sub_18F52279C();
  OUTLINED_FUNCTION_39_5();
  if (OUTLINED_FUNCTION_56_2(*(v26 + 152)))
  {
    OUTLINED_FUNCTION_36_7();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v27 = OUTLINED_FUNCTION_80_0();
  MEMORY[0x193ADB000](v27);

  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_12_16();
  result = OUTLINED_FUNCTION_15_11();
  __break(1u);
  return result;
}

uint64_t sub_18F1B5D14(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = v3;
  OUTLINED_FUNCTION_22_2();
  v7 = *(v6 + 168);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_18F1169CC(v3 + v7, &v13, &qword_1EACD0620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620);
  v8 = OUTLINED_FUNCTION_66_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v14 = 0;
  }

  if (dynamic_cast_existential_2_conditional(v9))
  {
    if (!v14)
    {
      if (*(v5 + 16))
      {
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(a3);
      OUTLINED_FUNCTION_72_1();
      return v13;
    }

    return v14;
  }

  if (v14)
  {
    return v14;
  }

  if (*(v5 + 16))
  {
    v13 = *(v5 + 16);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    return v13;
  }

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_87_0();
  if (OUTLINED_FUNCTION_85_1(*(v11 + 152)))
  {
    OUTLINED_FUNCTION_36_7();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v12 = OUTLINED_FUNCTION_80_0();
  MEMORY[0x193ADB000](v12);

  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_12_16();
  result = OUTLINED_FUNCTION_15_11();
  __break(1u);
  return result;
}

uint64_t sub_18F1B5ED8()
{
  OUTLINED_FUNCTION_70_1();
  OUTLINED_FUNCTION_22_2();
  v2 = *(v1 + 168);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_83_3(v0 + v2, v121);
  OUTLINED_FUNCTION_82_0();
  if (swift_dynamicCast())
  {
    nullsub_1(__dst, v3);
  }

  else
  {
    sub_18F1999AC(__src);
    memcpy(__dst, __src, 0x91uLL);
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0DD0);
  v5 = dynamic_cast_existential_2_conditional(v4);
  OUTLINED_FUNCTION_46_4();
  memcpy(v6, v7, v8);
  OUTLINED_FUNCTION_46_4();
  memcpy(v9, v10, v11);
  v12 = OUTLINED_FUNCTION_43_6();
  if (v5)
  {
    memcpy(v12, v13, v14);
    v15 = OUTLINED_FUNCTION_106_0(v119);
    if (v23)
    {
      v24 = OUTLINED_FUNCTION_62_2(v15, v16, v17, v18, v19, v20, v21, v22, v71, v75, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117[0]);
      OUTLINED_FUNCTION_61_2(v24, v25, v26, v27, v28, v29, v30, v31, v72, v76, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117[0], v117[1], v117[2], v117[3], v117[4], v117[5], v117[6], v117[7], v117[8], v117[9], v117[10], v117[11], v117[12], v117[13], v117[14]);
      enum_tag_for_layout_string_10AppIntents0A34ShortcutParameterPresentationTitleVyxq_q0_q1_GSg_0 = get_enum_tag_for_layout_string_10AppIntents0A34ShortcutParameterPresentationTitleVyxq_q0_q1_GSg_0(v118);
      v33 = enum_tag_for_layout_string_10AppIntents0A34ShortcutParameterPresentationTitleVyxq_q0_q1_GSg_0;
      OUTLINED_FUNCTION_103_1(enum_tag_for_layout_string_10AppIntents0A34ShortcutParameterPresentationTitleVyxq_q0_q1_GSg_0, v117);
      if (v33 == 1)
      {
        v34 = &qword_1EACD0DD0;
        v35 = v121;
        v36 = &v98;
      }

      else
      {
        OUTLINED_FUNCTION_42_4();
        sub_18F1169CC(v62, v63, v64);
        OUTLINED_FUNCTION_42_4();
      }

      sub_18F1169CC(v35, v36, v34);
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  memcpy(v12, v13, v14);
  v37 = OUTLINED_FUNCTION_106_0(v119);
  if (!v23)
  {
LABEL_13:
    memcpy(v117, &__src[8], 0x91uLL);
    sub_18F1169CC(v121, v118, &qword_1EACD0DD0);
    v61 = OUTLINED_FUNCTION_72_1();
    OUTLINED_FUNCTION_103_1(v61, v118);
    goto LABEL_16;
  }

  v45 = OUTLINED_FUNCTION_62_2(v37, v38, v39, v40, v41, v42, v43, v44, v71, v75, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117[0]);
  OUTLINED_FUNCTION_61_2(v45, v46, v47, v48, v49, v50, v51, v52, v73, v77, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117[0], v117[1], v117[2], v117[3], v117[4], v117[5], v117[6], v117[7], v117[8], v117[9], v117[10], v117[11], v117[12], v117[13], v117[14]);
  v53 = OUTLINED_FUNCTION_106_0(v118);
  if (!v23)
  {
    OUTLINED_FUNCTION_79_1(v53, v54, v55, v56, v57, v58, v59, v60, v74, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117[0]);
    sub_18F1169CC(v121, &v79, &qword_1EACD0DD0);
    sub_18F1169CC(v117, &v79, &qword_1EACD0DD0);
    OUTLINED_FUNCTION_72_1();
LABEL_16:
    v65 = OUTLINED_FUNCTION_43_6();
    memcpy(v65, v66, v67);
    return sub_18F0EF1A8(v119, &qword_1EACD0DD0);
  }

  OUTLINED_FUNCTION_95_2();
  sub_18F1169CC(v121, &v98, &qword_1EACD0DD0);
  OUTLINED_FUNCTION_105_1();
  v98 = v79;
  v99 = v80;
  OUTLINED_FUNCTION_39_5();
  if (OUTLINED_FUNCTION_56_2(*(v69 + 152)))
  {
    OUTLINED_FUNCTION_36_7();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v70 = OUTLINED_FUNCTION_80_0();
  MEMORY[0x193ADB000](v70);

  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_12_16();
  result = OUTLINED_FUNCTION_15_11();
  __break(1u);
  return result;
}

uint64_t sub_18F1B61E4()
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_37();
  v1 = swift_beginAccess();
  OUTLINED_FUNCTION_97_0(v1, v2, v3, v4);
  OUTLINED_FUNCTION_81_0();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v9 = 0;
    v10 = 0;
  }

  if (dynamic_cast_existential_2_conditional(MEMORY[0x1E69E6158]))
  {
    if (!v10)
    {
      if (*(v0 + 24))
      {
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4470);
      swift_dynamicCast();
      return v8;
    }

    return v9;
  }

  if (v10)
  {
    return v9;
  }

  if (*(v0 + 24))
  {
    v8 = *(v0 + 16);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    return v8;
  }

  OUTLINED_FUNCTION_101_1();
  OUTLINED_FUNCTION_89_1();
  if (OUTLINED_FUNCTION_85_1(*(v6 + 152)))
  {
    OUTLINED_FUNCTION_36_7();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v7 = OUTLINED_FUNCTION_80_0();
  MEMORY[0x193ADB000](v7);

  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_12_16();
  result = OUTLINED_FUNCTION_15_11();
  __break(1u);
  return result;
}

uint64_t sub_18F1B6384()
{
  OUTLINED_FUNCTION_70_1();
  OUTLINED_FUNCTION_22_2();
  v3 = *(v2 + 168);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_83_3(v1 + v3, v25);
  OUTLINED_FUNCTION_82_0();
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(&v26[4], 0, 57);
  }

  v4 = dynamic_cast_existential_2_conditional(&type metadata for MessageGroupPrototype);
  v25[0] = v26[4];
  v25[1] = v26[5];
  v26[0] = v26[6];
  *(v26 + 9) = *(&v26[6] + 9);
  if (v4)
  {
    if (!*&v25[0])
    {
      OUTLINED_FUNCTION_51_3();
      if (v5)
      {
        *&v6 = OUTLINED_FUNCTION_58_2().n128_u64[0];
        OUTLINED_FUNCTION_60_1(v25, v7, v8, v6);
        v11 = v23;
      }

      else
      {
        OUTLINED_FUNCTION_58_2();
        v11 = v25;
      }

      OUTLINED_FUNCTION_60_1(v11, v9, v10);
      OUTLINED_FUNCTION_81_0();
      swift_dynamicCast();
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (*&v25[0])
  {
LABEL_8:
    *v0 = *&v25[0];
    v12 = *(&v26[5] + 8);
    *(v0 + 8) = *(&v26[4] + 8);
    *(v0 + 24) = v12;
    *(v0 + 40) = *(&v26[6] + 8);
    *(v0 + 56) = BYTE8(v26[7]);
    v13 = v25;
    v14 = v23;
LABEL_9:
    sub_18F1169CC(v13, v14, &qword_1EACD0DC0);
LABEL_14:
    v23[0] = v26[4];
    v23[1] = v26[5];
    v24[0] = v26[6];
    *(v24 + 9) = *(&v26[6] + 9);
    return sub_18F0EF1A8(v23, &qword_1EACD0DC0);
  }

  OUTLINED_FUNCTION_51_3();
  if (v15)
  {
    v16 = v1[2];
    *v0 = v1[1];
    *(v0 + 16) = v16;
    *(v0 + 32) = v1[3];
    *(v0 + 41) = *(v1 + 57);
    sub_18F1169CC(v25, v22, &qword_1EACD0DC0);
    v13 = v23;
    v14 = v22;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_95_2();
  sub_18F1169CC(v25, v22, &qword_1EACD0DC0);
  OUTLINED_FUNCTION_105_1();
  v22[0] = v20;
  v22[1] = v21;
  OUTLINED_FUNCTION_39_5();
  if (OUTLINED_FUNCTION_56_2(*(v18 + 152)))
  {
    OUTLINED_FUNCTION_36_7();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v19 = OUTLINED_FUNCTION_80_0();
  MEMORY[0x193ADB000](v19);

  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_12_16();
  result = OUTLINED_FUNCTION_15_11();
  __break(1u);
  return result;
}

uint64_t sub_18F1B6654()
{
  OUTLINED_FUNCTION_70_1();
  OUTLINED_FUNCTION_22_2();
  v2 = *(v1 + 168);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  OUTLINED_FUNCTION_83_3(v0 + v2, v195);
  OUTLINED_FUNCTION_82_0();
  if (swift_dynamicCast())
  {
    nullsub_1(__dst, v3);
  }

  else
  {
    sub_18F1999AC(__src);
    memcpy(__dst, __src, 0x91uLL);
  }

  v4 = dynamic_cast_existential_2_conditional(&type metadata for MailMessagePrototype);
  OUTLINED_FUNCTION_46_4();
  memcpy(v5, v6, v7);
  OUTLINED_FUNCTION_46_4();
  memcpy(v8, v9, v10);
  v11 = OUTLINED_FUNCTION_43_6();
  if (v4)
  {
    memcpy(v11, v12, v13);
    v14 = OUTLINED_FUNCTION_106_0(v193);
    if (v22)
    {
      v23 = OUTLINED_FUNCTION_62_2(v14, v15, v16, v17, v18, v19, v20, v21, v72, v76, v80, v85, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177);
      OUTLINED_FUNCTION_61_2(v23, v24, v25, v26, v27, v28, v29, v30, v73, v77, v81, v86, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v131, v135, v139, v143, v147, v151, v155, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191);
      v31 = OUTLINED_FUNCTION_106_0(v192);
      if (v22)
      {
        OUTLINED_FUNCTION_79_1(v31, v32, v33, v34, v35, v36, v37, v38, v74, v78, v82, v87, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177);
        v65 = v195;
      }

      else
      {
        OUTLINED_FUNCTION_79_1(v31, v32, v33, v34, v35, v36, v37, v38, v74, v78, v82, v87, v92, v96, v100, v104, v108, v112, v116, v120, v124, v128, v132, v136, v140, v144, v148, v152, v156, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177);
        OUTLINED_FUNCTION_60_1(v195, v61, v62);
        v65 = &v177;
      }

      OUTLINED_FUNCTION_60_1(v65, v63, v64);
      OUTLINED_FUNCTION_81_0();
      swift_dynamicCast();
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  memcpy(v11, v12, v13);
  v14 = OUTLINED_FUNCTION_106_0(v193);
  if (!v22)
  {
LABEL_14:
    OUTLINED_FUNCTION_103_1(v14, &__src[8]);
    v60 = &qword_1EACD0DD0;
    v58 = v195;
    v59 = v192;
    goto LABEL_15;
  }

  v46 = OUTLINED_FUNCTION_62_2(v14, v39, v40, v41, v42, v43, v44, v45, v72, v76, v80, v85, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v130, v134, v138, v142, v146, v150, v154, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177);
  OUTLINED_FUNCTION_61_2(v46, v47, v48, v49, v50, v51, v52, v53, v75, v79, v83, v88, v93, v97, v101, v105, v109, v113, v117, v121, v125, v129, v133, v137, v141, v145, v149, v153, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191);
  v54 = OUTLINED_FUNCTION_106_0(v192);
  if (!v22)
  {
    OUTLINED_FUNCTION_103_1(v54, &v177);
    OUTLINED_FUNCTION_42_4();
    sub_18F1169CC(v55, v56, v57);
    OUTLINED_FUNCTION_42_4();
LABEL_15:
    sub_18F1169CC(v58, v59, v60);
LABEL_17:
    v66 = OUTLINED_FUNCTION_43_6();
    memcpy(v66, v67, v68);
    return sub_18F0EF1A8(v193, &qword_1EACD0DD0);
  }

  OUTLINED_FUNCTION_95_2();
  sub_18F1169CC(v195, &v158, &qword_1EACD0DD0);
  OUTLINED_FUNCTION_105_1();
  v158 = v84;
  v159 = v89;
  OUTLINED_FUNCTION_39_5();
  if (OUTLINED_FUNCTION_56_2(*(v70 + 152)))
  {
    OUTLINED_FUNCTION_36_7();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v71 = OUTLINED_FUNCTION_80_0();
  MEMORY[0x193ADB000](v71);

  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_12_16();
  result = OUTLINED_FUNCTION_15_11();
  __break(1u);
  return result;
}

uint64_t sub_18F1B6914()
{
  OUTLINED_FUNCTION_22_2();
  v2 = *(v1 + 168);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_18F1169CC(v0 + v2, &v8, &qword_1EACD0620);
  OUTLINED_FUNCTION_81_0();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v9 = 2;
  }

  v3 = dynamic_cast_existential_2_conditional(MEMORY[0x1E69E6370]);
  LOBYTE(v4) = v9;
  if (v3)
  {
    if (v9 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0DC8);
      swift_dynamicCast();
      return v8;
    }

LABEL_8:
    LOBYTE(v8) = v4 & 1;
    return v8;
  }

  if (v9 != 2)
  {
    goto LABEL_8;
  }

  v4 = *(v0 + 16);
  if (v4 != 2)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_87_0();
  if (OUTLINED_FUNCTION_85_1(*(v6 + 152)))
  {
    OUTLINED_FUNCTION_36_7();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v7 = OUTLINED_FUNCTION_80_0();
  MEMORY[0x193ADB000](v7);

  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_12_16();
  result = OUTLINED_FUNCTION_15_11();
  __break(1u);
  return result;
}

uint64_t sub_18F1B6AB4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(*v1 + 168);
  swift_beginAccess();
  sub_18F1169CC(&v1[v3], v9, &qword_1EACD0620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v10 = 2;
  }

  result = dynamic_cast_existential_2_conditional(&type metadata for UndoOperation);
  LOBYTE(v5) = v10;
  if (result)
  {
    if (v10 == 2)
    {
      LOBYTE(v9[0]) = v1[16];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0E40);
      return swift_dynamicCast();
    }

    goto LABEL_8;
  }

  if (v10 != 2 || (v5 = v1[16], v5 != 2))
  {
LABEL_8:
    *a1 = v5 & 1;
    return result;
  }

  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_18F52279C();
  v6 = &v1[*(*v1 + 152)];
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v8 = 0xE90000000000003ELL;
    v7 = 0x6E776F6E6B6E753CLL;
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  MEMORY[0x193ADB000](v7, v8);

  MEMORY[0x193ADB000](0xD000000000000023, 0x800000018F5267B0);
  result = sub_18F522A3C();
  __break(1u);
  return result;
}

void sub_18F1B6CCC()
{
  OUTLINED_FUNCTION_18();
  v3 = v0;
  v56 = v4;
  v5 = sub_18F520C8C();
  OUTLINED_FUNCTION_0();
  v55 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v54 = v8 - v9;
  OUTLINED_FUNCTION_44();
  v11 = MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_93_1(v11, v12, v13, v14, v15, v16, v17, v18, v51);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0E10) - 8;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v51 - v21;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v52 = &v51 - v28;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_28_13();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_39_5();
  v32 = *(v31 + 168);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  sub_18F1169CC(v3 + v32, &v57, &qword_1EACD0620);
  v33 = OUTLINED_FUNCTION_66_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v33);
  v34 = swift_dynamicCast();
  OUTLINED_FUNCTION_53_0(v1, v34 ^ 1u);
  v35 = dynamic_cast_existential_2_conditional(v5);
  v36 = *(v19 + 56);
  sub_18F1169CC(v1, &v22[v36], &qword_1EACD0360);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v22[v36], 1, v5);
  if (v35)
  {
    if (EnumTagSinglePayload == 1)
    {
      OUTLINED_FUNCTION_39_5();
      sub_18F1169CC(v3 + *(v38 + 96), v2, &qword_1EACD0360);
      OUTLINED_FUNCTION_55_3(v2);
      if (v39)
      {
        sub_18F0EF1A8(v2, &qword_1EACD0360);
        OUTLINED_FUNCTION_11();
        __swift_storeEnumTagSinglePayload(v40, v41, v42, v5);
      }

      else
      {
        v46 = *(v55 + 32);
        v46(v51, v2, v5);
        v47 = v52;
        v48 = OUTLINED_FUNCTION_66_0();
        (v46)(v48);
        OUTLINED_FUNCTION_53_0(v47, 0);
      }

      swift_dynamicCast();
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v43 = v54;
  if (EnumTagSinglePayload != 1)
  {
LABEL_9:
    (*(v55 + 32))(v56, &v22[v36], v5);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_39_5();
  sub_18F1169CC(v3 + *(v44 + 96), v26, &qword_1EACD0360);
  OUTLINED_FUNCTION_55_3(v26);
  if (!v39)
  {
    v45 = *(v55 + 32);
    v45(v43, v26, v5);
    v45(v56, v43, v5);
LABEL_11:
    sub_18F0EF1A8(v1, &qword_1EACD0360);
    OUTLINED_FUNCTION_16();
    return;
  }

  sub_18F0EF1A8(v26, &qword_1EACD0360);
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_39_5();
  if (OUTLINED_FUNCTION_56_2(*(v49 + 152)))
  {
    OUTLINED_FUNCTION_36_7();
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v50 = OUTLINED_FUNCTION_80_0();
  MEMORY[0x193ADB000](v50);

  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_12_16();
  OUTLINED_FUNCTION_15_11();
  __break(1u);
}

void sub_18F1B71C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unint64_t *a22)
{
  OUTLINED_FUNCTION_18();
  v49 = v25;
  v50 = v24;
  v27 = v26;
  v52 = v28;
  v53 = v29;
  v54 = v30;
  v32 = v31;
  v51 = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v34 = OUTLINED_FUNCTION_10(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_13();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_74();
  v36 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_4();
  v42 = v41 - v40;
  (*(v38 + 16))(v41 - v40, v32, v36);
  v43 = sub_18F1B73E8(v27 & 0xFFFFFFFFFFFFLL);
  OUTLINED_FUNCTION_90();
  sub_18F1B7524(v49, a22, v44);
  sub_18F1169CC(v50, v22, &qword_1EACCF7A0);
  type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  v56 = 0;
  memset(v55, 0, sizeof(v55));
  swift_allocObject();
  sub_18F1B4518(v42, v52, v53, v43, &v58, &v57, v22, v23, v55);
  sub_18F0EF1A8(v50, &qword_1EACCF7A0);
  sub_18F0EF1A8(v54, &qword_1EACCF7A8);
  (*(v38 + 8))(v51, v36);
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F1B73E8(unint64_t a1)
{
  if ((a1 & 0xFF0000) == 0x20000)
  {
    sub_18F1168B4();

    return sub_18F5216CC();
  }

  else
  {
    v3 = a1 >> 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD03F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18F53F800;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x800000018F526760;
    *(inited + 72) = &type metadata for String.IntentInputOptions;
    *(inited + 48) = a1;
    *(inited + 49) = v3;
    v5 = vdupq_n_s64(a1);
    *v5.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v5, xmmword_18F543380), vshlq_u64(v5, xmmword_18F543370))), 0x1000100010001);
    *(inited + 50) = vuzp1_s8(*v5.i8, *v5.i8).u32[0];
    sub_18F1168B4();
    return sub_18F5216CC();
  }
}

uint64_t sub_18F1B7524@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E6158]))
  {
    sub_18F1B8B98(&unk_1EACCE080, &qword_1EACD0DB0);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0DB8);
    v7 = &unk_1EACCDE70;
    v8 = &qword_1EACD0DB8;
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
    v7 = a2;
    v8 = a1;
  }

  result = sub_18F1B8B98(v7, v8);
  *(a3 + 24) = v6;
  *(a3 + 32) = result;
  return result;
}

uint64_t sub_18F1B762C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = type metadata accessor for IntentContext();
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F1B76C8, 0, 0);
}

uint64_t sub_18F1B76C8()
{
  static IntentContext.current.getter(*(v0 + 72));
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);

  v5 = OUTLINED_FUNCTION_80_0();
  v7 = sub_18F2D12E0(v5, v6, v3);
  *(v0 + 80) = v7;
  v13 = (*(v1 + *(v2 + 80)) + **(v1 + *(v2 + 80)));
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = sub_18F1B785C;
  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 16);

  return v13(v11, v7, v9, v10);
}

uint64_t sub_18F1B785C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1B7958()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_9_10();

  OUTLINED_FUNCTION_6();

  return v1();
}

uint64_t sub_18F1B79BC()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_9_10();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F1B7A24(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 168) = a6;
  *(v7 + 176) = a7;
  *(v7 + 152) = a4;
  *(v7 + 160) = a5;
  *(v7 + 57) = a3;
  *(v7 + 136) = a1;
  *(v7 + 144) = a2;
  type metadata accessor for IntentContext();
  *(v7 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F1B7AC0, 0, 0);
}

void sub_18F1B7AC0()
{
  static IntentContext.current.getter(*(v0 + 184));
  v1 = *(v0 + 184);
  v2 = *(v0 + 136);
  v3 = [*(v1 + 8) localeIdentifier];
  sub_18F5218DC();
  v5 = v4;

  *(v0 + 192) = v5;
  v6 = *(v1 + 48);
  *(v0 + 60) = *(v1 + 32);
  *(v0 + 76) = v6;
  *(v0 + 92) = 0;
  *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0E30);
  *(v0 + 128) = &off_1F0306DD8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  sub_18F1169CC(v2, boxed_opaque_existential_1, &qword_1EACD0E30);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 96), *(v0 + 120));
  v8 = swift_task_alloc();
  *(v0 + 200) = v8;
  *v8 = v0;
  v8[1] = sub_18F1B7CA0;

  JUMPOUT(0x18F3038D8);
}

uint64_t sub_18F1B7CA0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_39();
  *v4 = v3;
  *(v6 + 208) = v5;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1B7DA8()
{
  OUTLINED_FUNCTION_69();
  v1 = v0[26];
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 12));
  v2 = v1;
  v3 = swift_task_alloc();
  v0[27] = v3;
  *v3 = v0;
  v3[1] = sub_18F1B7E5C;
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[20];

  return sub_18F1B762C((v0 + 2), v1, 0, v6, v4, v5);
}

uint64_t sub_18F1B7E5C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 224) = v0;

  if (v0)
  {
  }

  else
  {
    v7 = *(v3 + 208);
    sub_18F18F600(v3 + 16);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F1B7F70()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_9_10();

  OUTLINED_FUNCTION_6();

  return v1();
}

uint64_t sub_18F1B7FD8()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_9_10();

  OUTLINED_FUNCTION_71();

  return v1();
}

unint64_t sub_18F1B8044()
{
  result = qword_1EACD0D68;
  if (!qword_1EACD0D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0D68);
  }

  return result;
}

unint64_t sub_18F1B8098(uint64_t a1)
{
  result = sub_18F1B80C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F1B80C0()
{
  result = qword_1ED6FED00;
  if (!qword_1ED6FED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FED00);
  }

  return result;
}

unint64_t sub_18F1B8114(uint64_t a1)
{
  result = sub_18F1B813C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F1B813C()
{
  result = qword_1ED6FECF8;
  if (!qword_1ED6FECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FECF8);
  }

  return result;
}

unint64_t sub_18F1B81DC()
{
  result = qword_1ED6FEC78;
  if (!qword_1ED6FEC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEC78);
  }

  return result;
}

unint64_t sub_18F1B827C()
{
  result = qword_1ED6FEC58;
  if (!qword_1ED6FEC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEC58);
  }

  return result;
}

unint64_t sub_18F1B82D0()
{
  result = qword_1ED6FEC40;
  if (!qword_1ED6FEC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEC40);
  }

  return result;
}

unint64_t sub_18F1B8324()
{
  result = qword_1ED6FEC70;
  if (!qword_1ED6FEC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEC70);
  }

  return result;
}

unint64_t sub_18F1B8378(uint64_t a1)
{
  result = sub_18F1B83A0();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_18F1B83A0()
{
  result = qword_1ED6FEC50;
  if (!qword_1ED6FEC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEC50);
  }

  return result;
}

unint64_t sub_18F1B83F4(uint64_t a1)
{
  result = sub_18F1B841C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F1B841C()
{
  result = qword_1ED6FEC48;
  if (!qword_1ED6FEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEC48);
  }

  return result;
}

unint64_t sub_18F1B84E4()
{
  result = qword_1ED6FEC60;
  if (!qword_1ED6FEC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEC60);
  }

  return result;
}

uint64_t sub_18F1B8578(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_18F1B85CC()
{
  result = qword_1ED6FEC88;
  if (!qword_1ED6FEC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEC88);
  }

  return result;
}

unint64_t sub_18F1B8620()
{
  result = qword_1ED6FEC68;
  if (!qword_1ED6FEC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEC68);
  }

  return result;
}

unint64_t sub_18F1B8674()
{
  result = qword_1ED6FEC80;
  if (!qword_1ED6FEC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEC80);
  }

  return result;
}

unint64_t sub_18F1B8710()
{
  result = qword_1EACD0D90;
  if (!qword_1EACD0D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0D90);
  }

  return result;
}

uint64_t sub_18F1B8764(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F1B87A4(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for UndoOperation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UndoError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18F1B89C4(uint64_t result)
{
  if (result)
  {

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

    return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  return result;
}

uint64_t sub_18F1B8A24(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_18F1B8A84()
{
  result = qword_1ED6FC248;
  if (!qword_1ED6FC248)
  {
    sub_18F520E6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FC248);
  }

  return result;
}

uint64_t sub_18F1B8ADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentDialog(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F1B8B40(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_18F1B8B98(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_97_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_18F1169CC(v4 + v6, va, v5);
}

_BYTE *sub_18F1B8C30(_BYTE *result, int a2, int a3)
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

uint64_t AppShortcutPhraseToken.hashValue.getter()
{
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](0);
  return sub_18F522F4C();
}

uint64_t AppShortcutPhrase.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[1] = a1;
  a3[2] = a2;
  sub_18F52288C();
  result = sub_18F521D2C();
  *a3 = result;
  return result;
}

double AppShortcutPhrase.init(stringLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AppShortcutPhrase.init(_:)(a1, a2, &v6);
  result = *&v6;
  v5 = v7;
  *a3 = v6;
  *(a3 + 16) = v5;
  return result;
}

uint64_t sub_18F1B8E4C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 488) = v0;

  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1B8F7C()
{

  OUTLINED_FUNCTION_34_7();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1B9070()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v5 + 304) = v0;

  if (!v0)
  {
    *(v5 + 312) = v3;
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F1B9184()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[39];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[26];
  v5 = objc_allocWithZone(MEMORY[0x1E69ACF90]);
  *v4 = sub_18F3E6984(v3, v2, v1);
  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_71();

  return v6();
}

uint64_t sub_18F1B9218()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_34_7();
  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1B9280()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *v1;
  *v6 = *v1;
  *(v5 + 96) = v0;

  sub_18F0EF1A8(*(v4 + 80), &qword_1EACCF7A8);
  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {

    v11 = *(v7 + 8);

    return v11(v3);
  }
}

uint64_t sub_18F1B93F0()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1B944C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 752) = v0;

  if (!v0)
  {
    sub_18F132364(v3 + 80);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1B9558()
{
  OUTLINED_FUNCTION_17_12();
  sub_18F132364(v0 + 80);

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F1B9638()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_71();

    return v10();
  }
}

unint64_t sub_18F1B9758()
{
  result = qword_1EACD0EE8;
  if (!qword_1EACD0EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0EE8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AppShortcutPhraseToken(_BYTE *result, int a2, int a3)
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

uint64_t sub_18F1B98B8()
{
  OUTLINED_FUNCTION_69();
  v2 = v1;
  OUTLINED_FUNCTION_85();
  v3 = *v0;
  OUTLINED_FUNCTION_39();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t AppContext.stageContext(request:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  OUTLINED_FUNCTION_13_0();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_18F1B99D4()
{
  if (qword_1ED6FF6D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);

  v2 = [v1 metadata];
  OUTLINED_FUNCTION_2_27();
  sub_18F12F724(v3, v4);
  v9 = v8;

  if (dynamic_cast_existential_1_conditional(v9))
  {
    *(v0 + 24) = [*(v0 + 16) entities];
    v10 = swift_task_alloc();
    *(v0 + 32) = v10;
    *v10 = v0;
    v10[1] = sub_18F1B9CE8;

    return sub_18F1B9E84();
  }

  else
  {
    sub_18F52279C();
    MEMORY[0x193ADB000](0xD00000000000001ALL, 0x800000018F5268A0);
    v11 = sub_18F52307C();
    MEMORY[0x193ADB000](v11);

    MEMORY[0x193ADB000](0xD00000000000001FLL, 0x800000018F5268C0);
    sub_18F1BC528();
    swift_allocError();
    *v5 = 0;
    *(v5 + 8) = 0xE000000000000000;
    *(v5 + 16) = 1;
    swift_willThrow();
    OUTLINED_FUNCTION_71();

    return v6();
  }
}

uint64_t sub_18F1B9CE8()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_8_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v5 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    v12 = *(v7 + 8);

    return v12(v3);
  }
}

uint64_t sub_18F1B9E28()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F1B9E84()
{
  OUTLINED_FUNCTION_69();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[7] = AssociatedTypeWitness;
  v1[8] = *(AssociatedTypeWitness - 8);
  v1[9] = swift_task_alloc();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F1B9F5C()
{
  OUTLINED_FUNCTION_21();
  (*(v0[5] + 32))(v0[4], v0[5]);
  v1 = swift_task_alloc();
  v0[10] = v1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *v1 = v0;
  v1[1] = sub_18F1BA04C;
  v3 = v0[9];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];

  return sub_18F1BA640(v7, v3, v5, v4, v6, AssociatedConformanceWitness);
}

uint64_t sub_18F1BA04C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *v6 = *v2;
  v5[11] = v1;

  v7 = v4[9];
  v8 = v4[8];
  v9 = v4[7];
  if (!v1)
  {
    v5[12] = a1;
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_18F1BA1C8()
{
  v1 = v0[4];
  v2 = v0[5];
  v0[2] = v0[12];
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  type metadata accessor for StagingResult();
  v4 = sub_18F521DBC();
  v5 = sub_18F1BC6C8();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_18F10C138(sub_18F1BC80C, v3, v4, v5, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_18F1BA300()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1BA3E4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_18F1BA4A4;

  return AppContext.stageContext(request:)(v6);
}

uint64_t sub_18F1BA4A4()
{
  v2 = v0;
  OUTLINED_FUNCTION_85();
  v4 = v3;
  OUTLINED_FUNCTION_8_0();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *(v6 + 16);
  v9 = *v1;
  OUTLINED_FUNCTION_39();
  *v10 = v9;

  if (v2)
  {
    v11 = sub_18F520A7C();

    v12 = 0;
    v13 = v11;
  }

  else
  {
    sub_18F1BC6C8();
    v12 = sub_18F521C8C();

    v11 = 0;
    v13 = v12;
  }

  v14 = *(v4 + 32);
  v14[2](v14, v12, v11);

  _Block_release(v14);
  OUTLINED_FUNCTION_71();

  return v15();
}

uint64_t sub_18F1BA640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a4;
  v6[23] = a6;
  v6[20] = a1;
  v6[21] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[24] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v6[25] = v8;
  v6[26] = *(v8 + 64);
  v6[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F1BA724, 0, 0);
}

uint64_t sub_18F1BA724()
{
  v36 = v0;
  LNValue.asPropertyType.getter();
  if (!*(v0 + 80))
  {
    sub_18F0EF148(v0 + 56, &qword_1EACD0620);
LABEL_9:
    v15 = *(v0 + 160);
    sub_18F52279C();

    strcpy(v35, "Invalid input ");
    HIBYTE(v35[1]) = -18;
    v16 = [v15 description];
    sub_18F5218DC();

    v17 = OUTLINED_FUNCTION_66();
    MEMORY[0x193ADB000](v17);

    v18 = v35[1];
    sub_18F1BC528();
    swift_allocError();
    *v19 = v35[0];
    *(v19 + 8) = v18;
    *(v19 + 16) = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_71();

    return v20();
  }

  sub_18F0FD0B4((v0 + 56), v0 + 16);
  sub_18F0FD724(v0 + 16, v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
  sub_18F521DBC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
    goto LABEL_9;
  }

  *(v0 + 224) = *(v0 + 136);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  *(v0 + 144) = sub_18F521CBC();
  v1 = sub_18F521D7C();
  v2 = *(v0 + 144);
  if (v2 == v1)
  {
    v34 = *(v0 + 184);

    OUTLINED_FUNCTION_7_14(v3, v4, v5, v6, v7, v8, v9, v10, v32, v33, v34);
    v11 = swift_task_alloc();
    *(v0 + 248) = v11;
    *v11 = v0;
    v12 = OUTLINED_FUNCTION_1_22(v11);

    return v13(v12);
  }

  else
  {
    OUTLINED_FUNCTION_66();
    v21 = sub_18F521D4C();
    sub_18F521CEC();
    if (v21)
    {
      v22 = OUTLINED_FUNCTION_12_4();
      v25(v22, v23 + v24 * v2);
    }

    else
    {
      v27 = *(v0 + 208);
      result = sub_18F52281C();
      if (v27 != 8)
      {
        __break(1u);
        return result;
      }

      v28 = result;
      v29 = *(v0 + 216);
      v30 = *(v0 + 192);
      v31 = *(v0 + 200);
      *(v0 + 152) = v28;
      (*(v31 + 16))(v29, v0 + 152, v30);
      swift_unknownObjectRelease();
    }

    sub_18F521DAC();
    v26 = swift_task_alloc();
    *(v0 + 232) = v26;
    OUTLINED_FUNCTION_66();
    swift_getAssociatedConformanceWitness();
    *v26 = v0;
    v26[1] = sub_18F1BAB14;

    return sub_18F35EB98();
  }
}

uint64_t sub_18F1BAB14()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  v3[30] = v0;

  if (v0)
  {
    v7 = v3[27];
    v10 = v3 + 24;
    v8 = v3[24];
    v9 = v10[1];
    swift_bridgeObjectRelease_n();
    (*(v9 + 8))(v7, v8);
  }

  else
  {
    (*(v3[25] + 8))(v3[27], v3[24]);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_18F1BAC58()
{
  v1 = sub_18F521D7C();
  v2 = v0[18];
  if (v2 == v1)
  {
    v28 = v0[23];

    OUTLINED_FUNCTION_7_14(v3, v4, v5, v6, v7, v8, v9, v10, v26, v27, v28);
    v11 = swift_task_alloc();
    v0[31] = v11;
    *v11 = v0;
    v12 = OUTLINED_FUNCTION_1_22(v11);

    return v13(v12);
  }

  else
  {
    v15 = sub_18F521D4C();
    sub_18F521CEC();
    if (v15)
    {
      v16 = OUTLINED_FUNCTION_12_4();
      v19(v16, v17 + v18 * v2);
    }

    else
    {
      v21 = v0[26];
      result = sub_18F52281C();
      if (v21 != 8)
      {
        __break(1u);
        return result;
      }

      v22 = result;
      v23 = v0[27];
      v24 = v0[24];
      v25 = v0[25];
      v0[19] = v22;
      (*(v25 + 16))(v23, v0 + 19, v24);
      swift_unknownObjectRelease();
    }

    sub_18F521DAC();
    v20 = swift_task_alloc();
    v0[29] = v20;
    swift_getAssociatedConformanceWitness();
    *v20 = v0;
    v20[1] = sub_18F1BAB14;

    return sub_18F35EB98();
  }
}

uint64_t sub_18F1BAEAC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_39();
  *v4 = v3;
  *(v6 + 256) = v5;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1BAFB4()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  v1 = *(v0 + 8);
  v2 = *(v0 + 256);

  return v1(v2);
}

uint64_t sub_18F1BB024()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  OUTLINED_FUNCTION_71();

  return v1();
}

id sub_18F1BB088@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = v23 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD9950);
  v8 = sub_18F522F9C();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v23 - v9);
  (*(v11 + 16))(v23 - v9, a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v10;
    v13 = objc_allocWithZone(MEMORY[0x1E69AD020]);
    result = sub_18F1BC70C(0, v12);
    v15 = result;
  }

  else
  {
    (*(v5 + 32))(v7, v10, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v23[3] = MEMORY[0x1E69E6158];
    v23[0] = v17;
    v23[1] = v18;
    v19 = [objc_opt_self() stringValueType];
    v20 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
    v21 = sub_18F166E58(v23, v19);
    v22 = objc_allocWithZone(MEMORY[0x1E69AD020]);
    v15 = sub_18F1BC70C(v21, 0);
    result = (*(v5 + 8))(v7, AssociatedTypeWitness);
  }

  *a2 = v15;
  return result;
}

void sub_18F1BB3A4(void *a1)
{
  v4 = a1;
  os_unfair_lock_lock((v1 + 128));
  sub_18F1BC7C8((v1 + 136), &v4, &v2, &v3);
  os_unfair_lock_unlock((v1 + 128));
}

uint64_t sub_18F1BB458(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = qword_1ED6FE318;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = [a2 identifier];
  v7 = sub_18F5218DC();
  v9 = v8;

  v52[0] = v4;
  swift_getAtKeyPath();

  v10 = sub_18F12F7DC(v7, v9);

  if (!v10)
  {
    sub_18F137F7C(a1);

    v11 = qword_1ED6FE2D0;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = [a2 identifier];
    sub_18F5218DC();

    v13 = a2;
    v14 = swift_modifyAtReferenceWritableKeyPath();
    v16 = v15;
    swift_isUniquelyReferenced_nonNull_native();
    v51 = *v16;
    v46 = v13;
    sub_18F2BF84C();
    *v16 = v51;

    v14(v52, 0);

    sub_18F3E6F18(&v53);
    v17 = v62;
    v20 = sub_18F134080();
    v10 = v21;
    if (v17)
    {
      v22 = v18;
      v23 = v19;
      v61 = v53;
      sub_18F0EF148(&v61, &qword_1EACD4470);
      v60 = v54;
      sub_18F0EF148(&v60, &qword_1EACD4470);
      v59 = v55;
      sub_18F0EF148(&v59, &unk_1EACCFDB0);
      sub_18F16A9C8();
      swift_allocError();
      *v24 = v20;
      v24[1] = v10;
      v24[2] = v22;
      v24[3] = v23;
    }

    else
    {
      v58 = v53;
      sub_18F0EF148(&v58, &qword_1EACD4470);
      v57 = v54;
      sub_18F0EF148(&v57, &qword_1EACD4470);
      v56 = v55;
      sub_18F0EF148(&v56, &unk_1EACCFDB0);
      sub_18F3EEFA4();
      v26 = v25;
      v28 = v27;

      v62 = 0;
      swift_retain_n();

      v30 = [v46 identifier];
      v45 = sub_18F5218DC();
      v32 = v31;

      v10 = v4;

      v33 = swift_modifyAtReferenceWritableKeyPath();
      v35 = v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = *v35;
      sub_18F2BFA48(v4, v50, v45, v32, isUniquelyReferenced_nonNull_native);
      *v35 = v47;

      v33(v52, 0);

      v37 = swift_modifyAtReferenceWritableKeyPath();
      v39 = v38;
      v40 = swift_isUniquelyReferenced_nonNull_native();
      v48 = *v39;
      sub_18F2BFA48(v4, v50, v26, v28, v40);
      *v39 = v48;
      v37(v52, 0);

      v41 = swift_modifyAtReferenceWritableKeyPath();
      v43 = v42;
      v44 = v46;
      swift_isUniquelyReferenced_nonNull_native();
      v49 = *v43;
      sub_18F2BF84C();
      *v43 = v49;

      v41(v52, 0);
    }
  }

  return v10;
}

uint64_t sub_18F1BB9F0(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = qword_1ED6FDDC8;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = [a2 identifier];
  v7 = sub_18F5218DC();
  v9 = v8;

  v52[0] = v4;
  swift_getAtKeyPath();

  v10 = sub_18F12F7DC(v7, v9);

  if (!v10)
  {
    sub_18F137F7C(a1);

    v11 = qword_1ED6FDDA0;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = [a2 identifier];
    sub_18F5218DC();

    v13 = a2;
    v14 = swift_modifyAtReferenceWritableKeyPath();
    v16 = v15;
    swift_isUniquelyReferenced_nonNull_native();
    v51 = *v16;
    v46 = v13;
    sub_18F2BFA20();
    *v16 = v51;

    v14(v52, 0);

    sub_18F3E6F18(&v53);
    v17 = v62;
    v20 = sub_18F134080();
    v10 = v21;
    if (v17)
    {
      v22 = v18;
      v23 = v19;
      v61 = v53;
      sub_18F0EF148(&v61, &qword_1EACD4470);
      v60 = v54;
      sub_18F0EF148(&v60, &qword_1EACD4470);
      v59 = v55;
      sub_18F0EF148(&v59, &unk_1EACCFDB0);
      sub_18F16A9C8();
      swift_allocError();
      *v24 = v20;
      v24[1] = v10;
      v24[2] = v22;
      v24[3] = v23;
    }

    else
    {
      v58 = v53;
      sub_18F0EF148(&v58, &qword_1EACD4470);
      v57 = v54;
      sub_18F0EF148(&v57, &qword_1EACD4470);
      v56 = v55;
      sub_18F0EF148(&v56, &unk_1EACCFDB0);
      sub_18F3EF6E4();
      v26 = v25;
      v28 = v27;

      v62 = 0;
      swift_retain_n();

      v30 = [v46 identifier];
      v45 = sub_18F5218DC();
      v32 = v31;

      v10 = v4;

      v33 = swift_modifyAtReferenceWritableKeyPath();
      v35 = v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = *v35;
      sub_18F2BFA34(v4, v50, v45, v32, isUniquelyReferenced_nonNull_native);
      *v35 = v47;

      v33(v52, 0);

      v37 = swift_modifyAtReferenceWritableKeyPath();
      v39 = v38;
      v40 = swift_isUniquelyReferenced_nonNull_native();
      v48 = *v39;
      sub_18F2BFA34(v4, v50, v26, v28, v40);
      *v39 = v48;
      v37(v52, 0);

      v41 = swift_modifyAtReferenceWritableKeyPath();
      v43 = v42;
      v44 = v46;
      swift_isUniquelyReferenced_nonNull_native();
      v49 = *v43;
      sub_18F2BFA20();
      *v43 = v49;

      v41(v52, 0);
    }
  }

  return v10;
}

unint64_t sub_18F1BBF88(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = qword_1EACCF588;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = [a2 identifier];
  v7 = sub_18F5218DC();
  v9 = v8;

  v46[0] = v4;
  swift_getAtKeyPath();

  v10 = sub_18F19E618(v7, v9, v44);
  v12 = v11;
  v14 = v13;

  if ((~(v12 & v10 & v14) & 0xF000000000000007) == 0)
  {
    sub_18F137F7C(a1);

    v15 = qword_1EACCF580;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = [a2 identifier];
    sub_18F5218DC();

    v17 = a2;
    v18 = swift_modifyAtReferenceWritableKeyPath();
    v20 = v19;
    swift_isUniquelyReferenced_nonNull_native();
    v45 = *v20;
    sub_18F2BFC30();
    *v20 = v45;

    v18(v46, 0);

    sub_18F3E6F18(&v47);
    v23 = sub_18F134080();
    v10 = v24;
    if (v40)
    {
      v25 = v21;
      v26 = v22;
      v54 = v47;
      sub_18F0EF148(&v54, &qword_1EACD4470);
      v53 = v48;
      sub_18F0EF148(&v53, &qword_1EACD4470);
      v55 = v49;
      sub_18F0EF148(&v55, &unk_1EACCFDB0);
      sub_18F16A9C8();
      swift_allocError();
      *v27 = v23;
      v27[1] = v10;
      v27[2] = v25;
      v27[3] = v26;
    }

    else
    {
      v52 = v47;
      sub_18F0EF148(&v52, &qword_1EACD4470);
      v51 = v48;
      sub_18F0EF148(&v51, &qword_1EACD4470);
      v50 = v49;
      sub_18F0EF148(&v50, &unk_1EACCFDB0);
      sub_18F3EF94C();

      swift_retain_n();

      v28 = [v17 identifier];
      sub_18F5218DC();

      v10 = v4;

      v39 = swift_modifyAtReferenceWritableKeyPath();
      v30 = v29;
      swift_isUniquelyReferenced_nonNull_native();
      v41 = *v30;
      sub_18F2C0508();
      *v30 = v41;

      v39(v46, 0);

      v31 = swift_modifyAtReferenceWritableKeyPath();
      v33 = v32;
      swift_isUniquelyReferenced_nonNull_native();
      v42 = *v33;
      sub_18F2C0508();
      *v33 = v42;
      v31(v46, 0);

      v34 = swift_modifyAtReferenceWritableKeyPath();
      v36 = v35;
      v37 = v17;
      swift_isUniquelyReferenced_nonNull_native();
      v43 = *v36;
      sub_18F2BFC30();
      *v36 = v43;

      v34(v46, 0);
    }
  }

  return v10;
}

unint64_t sub_18F1BC528()
{
  result = qword_1EACD0F40;
  if (!qword_1EACD0F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0F40);
  }

  return result;
}

uint64_t sub_18F1BC588(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F1BC5C8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18F1BC61C()
{
  OUTLINED_FUNCTION_21();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F0FC874;
  v2 = OUTLINED_FUNCTION_66();

  return v3(v2);
}

unint64_t sub_18F1BC6C8()
{
  result = qword_1EACD0F48;
  if (!qword_1EACD0F48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EACD0F48);
  }

  return result;
}

id sub_18F1BC70C(void *a1, void *a2)
{
  v3 = v2;
  if (a2)
  {
    v6 = sub_18F520A7C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithResult:a1 error:v6];

  return v7;
}

uint64_t sub_18F1BC784@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X4>, uint64_t (*a4)(uint64_t, void)@<X5>, uint64_t *a5@<X8>)
{
  result = a4(a1, *a2);
  if (v5)
  {
    *a3 = v5;
  }

  else
  {
    *a5 = result;
    a5[1] = v9;
  }

  return result;
}

unint64_t sub_18F1BC7C8@<X0>(uint64_t *a1@<X0>, void **a2@<X1>, void *a3@<X4>, unint64_t *a4@<X8>)
{
  result = sub_18F1BBF88(a1, *a2);
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *a4 = result;
    a4[1] = v8;
    a4[2] = v9;
  }

  return result;
}

uint64_t ShortcutTileColor.hashValue.getter()
{
  v1 = *v0;
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](v1);
  return sub_18F522F4C();
}

uint64_t sub_18F1BC8C0()
{
  sub_18F522EFC();
  ShortcutTileColor.hash(into:)();
  return sub_18F522F4C();
}

unint64_t sub_18F1BC90C()
{
  result = qword_1EACD0F50;
  if (!qword_1EACD0F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0F50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShortcutTileColor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ShortcutTileColor(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18F1BCAC4()
{
  v0 = sub_18F5218DC();
  v2 = v1;
  if (v0 == sub_18F5218DC() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_0_22();
  }

  return v5 & 1;
}

uint64_t sub_18F1BCB3C(char a1)
{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  OUTLINED_FUNCTION_5_20();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_22();
  }

  return v8 & 1;
}

uint64_t sub_18F1BCBC4(unsigned __int8 a1, char a2)
{
  v2 = 1701736302;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701736302;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x6567616D69;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x616D61726F6E6170;
      break;
    case 3:
      v5 = 0x506C616974617073;
      v3 = 0xEC0000006F746F68;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x6567616D69;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v2 = 0x616D61726F6E6170;
      break;
    case 3:
      v2 = 0x506C616974617073;
      v6 = 0xEC0000006F746F68;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_22();
  }

  return v8 & 1;
}

uint64_t sub_18F1BCD08(char a1, char a2)
{
  v2 = 0x737465737361;
  if (a1)
  {
    OUTLINED_FUNCTION_6_17();
    if (v3)
    {
      v5 = 0x736D75626C61;
    }

    else
    {
      v5 = 0x697463656C6C6F63;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xEB00000000736E6FLL;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
    v5 = 0x737465737361;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_6_17();
    if (v7)
    {
      v2 = 0x736D75626C61;
    }

    else
    {
      v2 = 0x697463656C6C6F63;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xEB00000000736E6FLL;
    }
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_0_22();
  }

  return v11 & 1;
}

uint64_t sub_18F1BCDF4(unsigned __int8 a1, char a2)
{
  v2 = 0x646165726E75;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x646165726E75;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1684104562;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x64656767616C66;
      break;
    case 3:
      v5 = 0x656767616C666E75;
      v3 = 0xE900000000000064;
      break;
    case 4:
      v5 = 0x646579616C70;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1684104562;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x64656767616C66;
      break;
    case 3:
      v2 = 0x656767616C666E75;
      v6 = 0xE900000000000064;
      break;
    case 4:
      v2 = 0x646579616C70;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_22();
  }

  return v8 & 1;
}

uint64_t sub_18F1BCF48(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  OUTLINED_FUNCTION_5_20();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_22();
  }

  return v8 & 1;
}

uint64_t sub_18F1BCFD8()
{
  OUTLINED_FUNCTION_4_15();
  switch(v2)
  {
    case 1:
      v0 = 0xE900000000000064;
      break;
    case 3:
      v0 = 0xEA00000000006465;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_3_16();
  switch(v5)
  {
    case 1:
      v4 = 0x6564726177726F66;
      v1 = 0xE900000000000064;
      break;
    case 2:
      v4 = 0x6465696C706572;
      break;
    case 3:
      v4 = 0x7463657269646572;
      v1 = 0xEA00000000006465;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_22();
  }

  return v7 & 1;
}

uint64_t sub_18F1BD118(unsigned __int8 a1, char a2)
{
  v2 = 0x696A6F6D65;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x72656B63697473;
    }

    else
    {
      v4 = 0x726568746FLL;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x696A6F6D65;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x72656B63697473;
    }

    else
    {
      v2 = 0x726568746FLL;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_22();
  }

  return v8 & 1;
}

uint64_t sub_18F1BD1FC()
{
  OUTLINED_FUNCTION_4_15();
  switch(v2)
  {
    case 1:
      v0 = 0xE800000000000000;
      break;
    case 3:
      v0 = 0xE300000000000000;
      break;
    case 5:
      v0 = 0xE600000000000000;
      break;
    case 6:
      v0 = 0xE400000000000000;
      break;
    case 7:
      v0 = 0xE500000000000000;
      break;
    case 8:
      v0 = 0xE200000000000000;
      break;
    case 9:
      v0 = 0xE600000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_3_16();
  switch(v5)
  {
    case 1:
      v1 = 0xE800000000000000;
      v4 = 0x6565724673657965;
      break;
    case 2:
      v4 = 0x646F50656D6F68;
      break;
    case 3:
      v1 = 0xE300000000000000;
      v4 = 6513005;
      break;
    case 4:
      v4 = 0x73646F50726961;
      break;
    case 5:
      v1 = 0xE600000000000000;
      v4 = 0x656E6F685069;
      break;
    case 6:
      v1 = 0xE400000000000000;
      v4 = 1684099177;
      break;
    case 7:
      v1 = 0xE500000000000000;
      v4 = 0x6863746177;
      break;
    case 8:
      v1 = 0xE200000000000000;
      v4 = 22100;
      break;
    case 9:
      v1 = 0xE600000000000000;
      v4 = 0x6E6F69736976;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_22();
  }

  return v7 & 1;
}

uint64_t sub_18F1BD3F4()
{
  OUTLINED_FUNCTION_4_15();
  switch(v2)
  {
    case 1:
      v0 = 0xE600000000000000;
      break;
    case 2:
      v0 = 0xE200000000000000;
      break;
    case 3:
      v0 = 0xED00006F65646956;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_3_16();
  switch(v5)
  {
    case 1:
      v1 = 0xE600000000000000;
      v4 = 0x736569766F6DLL;
      break;
    case 2:
      v1 = 0xE200000000000000;
      v4 = 30324;
      break;
    case 3:
      v4 = 0x6D726F6665657266;
      v1 = 0xED00006F65646956;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_22();
  }

  return v7 & 1;
}

uint64_t sub_18F1BD524(unsigned __int8 a1, char a2)
{
  v2 = 0x6C6C616D73;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x6C6C616D73;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x746C7561666564;
      break;
    case 2:
      v5 = 0x656772616CLL;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x6D756D6978616DLL;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x746C7561666564;
      break;
    case 2:
      v2 = 0x656772616CLL;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x6D756D6978616DLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_22();
  }

  return v8 & 1;
}

uint64_t sub_18F1BD650(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 28789;
  switch(a1)
  {
    case 1:
      v3 = 0xE400000000000000;
      v4 = 1853321060;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v4 = 1952867692;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v4 = 0x7468676972;
      break;
    case 4:
      v3 = 0xE700000000000000;
      v4 = 0x64726177726F66;
      break;
    case 5:
      v3 = 0xE800000000000000;
      v4 = 0x647261776B636162;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 28789;
  switch(a2)
  {
    case 1:
      v5 = 0xE400000000000000;
      v6 = 1853321060;
      break;
    case 2:
      v5 = 0xE400000000000000;
      v6 = 1952867692;
      break;
    case 3:
      v5 = 0xE500000000000000;
      v6 = 0x7468676972;
      break;
    case 4:
      v5 = 0xE700000000000000;
      v6 = 0x64726177726F66;
      break;
    case 5:
      v5 = 0xE800000000000000;
      v6 = 0x647261776B636162;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_22();
  }

  return v8 & 1;
}

uint64_t sub_18F1BD7C0(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  OUTLINED_FUNCTION_5_20();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_22();
  }

  return v8 & 1;
}

uint64_t sub_18F1BD844(char a1, char a2)
{
  v2 = 0x656C6261736964;
  if (a1)
  {
    OUTLINED_FUNCTION_6_17();
    if (v3)
    {
      v5 = 0x656C62616E65;
    }

    else
    {
      v5 = 0x656C67676F74;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
    v5 = 0x656C6261736964;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_6_17();
    if (v7)
    {
      v2 = 0x656C62616E65;
    }

    else
    {
      v2 = 0x656C67676F74;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE600000000000000;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_0_22();
  }

  return v11 & 1;
}

uint64_t sub_18F1BD934(unsigned __int8 a1, char a2)
{
  v2 = 7564659;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6567617373654D69;
    }

    else
    {
      v4 = 0x726568746FLL;
    }

    if (v3 == 1)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7564659;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6567617373654D69;
    }

    else
    {
      v2 = 0x726568746FLL;
    }

    if (a2 == 1)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_22();
  }

  return v8 & 1;
}

uint64_t sub_18F1BDA18(unsigned __int8 a1, char a2)
{
  v2 = 0x736569766F6DLL;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 30324;
    }

    else
    {
      v4 = 0x6D726F6665657266;
    }

    if (v3 == 1)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x736569766F6DLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 30324;
    }

    else
    {
      v2 = 0x6D726F6665657266;
    }

    if (a2 == 1)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_22();
  }

  return v8 & 1;
}

uint64_t sub_18F1BDAEC(char a1, char a2)
{
  if (a1)
  {
    v2 = 1868850546;
  }

  else
  {
    v2 = 1868852853;
  }

  if (a2)
  {
    v3 = 1868850546;
  }

  else
  {
    v3 = 1868852853;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_18F522D5C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_18F1BDB58()
{
  v0 = MessageEffect.rawValue.getter();
  v2 = v1;
  if (v0 == MessageEffect.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_0_22();
  }

  return v5 & 1;
}

uint64_t sub_18F1BDBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(a1, a2, a3, a4);
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_0_22();
  }

  return v11 & 1;
}

uint64_t sub_18F1BDC94(char a1, char a2)
{
  v2 = 0xEC0000007265626DLL;
  v3 = 0x754E656E6F68705FLL;
  if (a1)
  {
    OUTLINED_FUNCTION_2_28();
    if (v5 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    if (v5 == 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = (v4 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0x754E656E6F68705FLL;
    v10 = 0xEC0000007265626DLL;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_2_28();
    v16 = (v15 - 32) | 0x8000000000000000;
    if (v11 == 1)
    {
      v3 = v12;
    }

    else
    {
      v3 = v14;
    }

    if (v11 == 1)
    {
      v2 = v13;
    }

    else
    {
      v2 = v16;
    }
  }

  if (v9 == v3 && v10 == v2)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_18F522D5C();
  }

  return v18 & 1;
}

uint64_t sub_18F1BDD64()
{
  OUTLINED_FUNCTION_5_20();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_18F522D5C();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_18F1BDDD8(unsigned __int8 a1, char a2)
{
  v2 = 0xEC000000656D614ELL;
  v3 = 0x79616C707369645FLL;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x656E6F706D6F635FLL;
    }

    else
    {
      v5 = 0x6E776F6E6B6E755FLL;
    }

    if (v4 == 1)
    {
      v6 = 0xEB0000000073746ELL;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0x79616C707369645FLL;
    v6 = 0xEC000000656D614ELL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x656E6F706D6F635FLL;
    }

    else
    {
      v3 = 0x6E776F6E6B6E755FLL;
    }

    if (a2 == 1)
    {
      v2 = 0xEB0000000073746ELL;
    }

    else
    {
      v2 = 0xE800000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_18F522D5C();
  }

  return v8 & 1;
}

uint64_t sub_18F1BDEE8()
{
  OUTLINED_FUNCTION_4_15();
  switch(v2)
  {
    case 1:
      v0 = 0xE500000000000000;
      break;
    case 2:
      v0 = 0xE500000000000000;
      break;
    case 3:
      v0 = 0xEC000000656E6F68;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_3_16();
  switch(v5)
  {
    case 1:
      v1 = 0xE500000000000000;
      v4 = 0x6C69616D65;
      break;
    case 2:
      v1 = 0xE500000000000000;
      v4 = 0x656E6F6870;
      break;
    case 3:
      v4 = 0x50724F6C69616D65;
      v1 = 0xEC000000656E6F68;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_0_22();
  }

  return v7 & 1;
}

uint64_t sub_18F1BE020(unsigned __int8 a1, char a2)
{
  v2 = 0x656D616E5FLL;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x656D616E5FLL;
  switch(v4)
  {
    case 1:
      v5 = 0x654D73695FLL;
      break;
    case 2:
      v5 = 0x6669746E6564695FLL;
      v3 = 0xEB00000000726569;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x656C646E61685FLL;
      break;
    case 4:
      v3 = 0xE800000000000000;
      v5 = 0x73657361696C615FLL;
      break;
    case 5:
      v3 = 0xE600000000000000;
      v5 = 0x6567616D695FLL;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x654D73695FLL;
      break;
    case 2:
      v2 = 0x6669746E6564695FLL;
      v6 = 0xEB00000000726569;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x656C646E61685FLL;
      break;
    case 4:
      v6 = 0xE800000000000000;
      v2 = 0x73657361696C615FLL;
      break;
    case 5:
      v6 = 0xE600000000000000;
      v2 = 0x6567616D695FLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_22();
  }

  return v8 & 1;
}

uint64_t sub_18F1BE1B4(unsigned __int8 a1, char a2)
{
  v2 = 0x746361746E6F635FLL;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD000000000000013;
    }

    else
    {
      v4 = 0x6E776F6E6B6E755FLL;
    }

    if (v3 == 1)
    {
      v5 = 0x800000018F525420;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x746361746E6F635FLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000013;
    }

    else
    {
      v2 = 0x6E776F6E6B6E755FLL;
    }

    if (a2 == 1)
    {
      v6 = 0x800000018F525420;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_22();
  }

  return v8 & 1;
}

uint64_t sub_18F1BE2A4(unsigned __int8 a1, char a2)
{
  v2 = 0x617461645FLL;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x617461645FLL;
  switch(v4)
  {
    case 1:
      v5 = 0x6D616E656C69665FLL;
      v3 = 0xE900000000000065;
      break;
    case 2:
      v5 = 0x656449657079745FLL;
      v3 = 0xEF7265696669746ELL;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x4C5255656C69665FLL;
      break;
    case 4:
      v5 = 0xD000000000000014;
      v3 = 0x800000018F5253E0;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6D616E656C69665FLL;
      v6 = 0xE900000000000065;
      break;
    case 2:
      v2 = 0x656449657079745FLL;
      v6 = 0xEF7265696669746ELL;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v2 = 0x4C5255656C69665FLL;
      break;
    case 4:
      v2 = 0xD000000000000014;
      v6 = 0x800000018F5253E0;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_0_22();
  }

  return v8 & 1;
}

uint64_t sub_18F1BE430(char a1, char a2)
{
  if (*&aCreated_2[8 * a1] == *&aCreated_2[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_18F522D5C();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

AppIntents::AppEntityVisualState sub_18F1BE544@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = AppEntityVisualState.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_18F1BE584@<X0>(uint64_t *a1@<X8>)
{
  result = AppEntityVisualState.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_18F1BE5BC()
{
  result = qword_1EACCE6F8;
  if (!qword_1EACCE6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCE6F8);
  }

  return result;
}

unint64_t sub_18F1BE614()
{
  result = qword_1EACCE6F0;
  if (!qword_1EACCE6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCE6F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppEntityVisualState(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AppEntityVisualState(uint64_t result, int a2, int a3)
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

void *SystemEntityQuery.init(targetDescriptor:typeIdentifier:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = result[1];
  *a4 = *result;
  *(a4 + 8) = v4;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  *(a4 + 32) = 0;
  return result;
}

void *SystemEntityQuery.init(targetDescriptor:systemProtocolIdentifier:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = result[1];
  *a4 = *result;
  *(a4 + 8) = v4;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  *(a4 + 32) = 1;
  return result;
}

uint64_t SystemEntityQuery.entities(for:)()
{
  OUTLINED_FUNCTION_69();
  v0[8] = v1;
  v0[9] = v2;
  v3 = sub_18F5223CC();
  v0[10] = v3;
  OUTLINED_FUNCTION_51(v3);
  v0[11] = v4;
  v0[12] = OUTLINED_FUNCTION_34_0();
  v5 = sub_18F5223DC();
  v0[13] = v5;
  OUTLINED_FUNCTION_51(v5);
  v0[14] = v6;
  v7 = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_20_10(v7);
  v8 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F1BE7E0()
{
  v1 = OUTLINED_FUNCTION_32_10();
  sub_18F1BECF8(v1, v2, v3);
  *(v0 + 160) = v4;
  v7 = v4;
  if (v4)
  {
    v41 = *(v0 + 49);
    v39 = *(v0 + 144);
    v40 = *(v0 + 152);
    v8 = *(v0 + 112);
    v9 = *(v0 + 96);
    v35 = *(v0 + 120);
    v36 = *(v0 + 104);
    v10 = *(v0 + 88);
    v37 = *(v0 + 80);
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v38 = sub_18F0F21A8(0, &unk_1EACD0F60);
    *(v0 + 56) = v12;
    v13 = swift_task_alloc();
    v13[2] = *(v11 + 16);
    v13[3] = *(v11 + 24);
    v13[4] = v7;
    swift_getAssociatedTypeWitness();
    v14 = sub_18F521DBC();
    v15 = sub_18F0F21A8(0, &qword_1EACCDD20);
    v16 = OUTLINED_FUNCTION_2_3();
    v18 = sub_18F10C138(sub_18F1BF128, v13, v14, v15, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);

    *v35 = v18;
    (*(v8 + 104))(v35, *MEMORY[0x1E69ACAD0], v36);
    *v9 = v7;
    (*(v10 + 104))(v9, *MEMORY[0x1E69ACAF8], v37);
    v19 = objc_allocWithZone(MEMORY[0x1E69ACFD0]);
    v20 = v7;
    [v19 init];
    v21 = sub_18F5223FC();
    OUTLINED_FUNCTION_37_7(v21, v22, v23, v24, v25, v26, v27, v28, v35, v36, v37, v38, v29);
    *(v0 + 168) = v30;
    *(v0 + 32) = v39;
    *(v0 + 40) = v40;
    *(v0 + 48) = v41;
    v31 = swift_task_alloc();
    *(v0 + 176) = v31;
    *v31 = v0;
    v31[1] = sub_18F1BEAFC;
    v32 = OUTLINED_FUNCTION_34_8();

    return sub_18F1BF144(v32, v20, v33);
  }

  else
  {
    type metadata accessor for SystemEntityQuery.QueryError();
    OUTLINED_FUNCTION_0_23();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_1_23();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_71();

    return v5();
  }
}

uint64_t sub_18F1BEAFC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 184) = v0;

  if (!v0)
  {
    *(v4 + 192) = v1;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F1BEC00()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 160);

  OUTLINED_FUNCTION_20_0();
  v3 = *(v0 + 192);

  return v2(v3);
}

uint64_t sub_18F1BEC84()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 160);

  OUTLINED_FUNCTION_71();

  return v2();
}

void sub_18F1BECF8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v6 = sub_18F5218AC();
    v7 = sub_18F1C24DC();
    if (v3)
    {
    }

    else
    {
      v9 = v7;
      v10 = sub_18F111F70(v7);
      for (i = 0; ; ++i)
      {
        if (v10 == i)
        {

          goto LABEL_34;
        }

        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x193ADBE10](i, v9);
        }

        else
        {
          if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v12 = *(v9 + 8 * i + 32);
        }

        v13 = v12;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v14 = [v12 systemProtocolMetadata];
        type metadata accessor for LNSystemEntityProtocolIdentifier(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD0600);
        sub_18F199954();
        v15 = sub_18F5216BC();

        if (*(v15 + 16))
        {
          sub_18F1155C0(v6);
          if (v16)
          {

            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }

  else
  {
    v8 = sub_18F1C24DC();
    if (!v3)
    {
      v17 = v8;
      v18 = sub_18F111F70(v8);
      for (j = 0; v18 != j; ++j)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x193ADBE10](j, v17);
        }

        else
        {
          if (j >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }

          v20 = *(v17 + 8 * j + 32);
        }

        v21 = v20;
        if (__OFADD__(j, 1))
        {
          goto LABEL_37;
        }

        v22 = [v20 identifier];
        v23 = sub_18F5218DC();
        v25 = v24;

        if (v23 == a1 && v25 == a2)
        {

          break;
        }

        v27 = sub_18F522D5C();

        if (v27)
        {
          break;
        }
      }

LABEL_34:
    }
  }
}

id sub_18F1BEFFC@<X0>(id a1@<X1>, void *a2@<X8>)
{
  v3 = [a1 identifier];
  sub_18F5218DC();

  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 8);
  v6 = swift_checkMetadataState();
  v5(v6, AssociatedConformanceWitness);
  v7 = objc_allocWithZone(MEMORY[0x1E69AC7E0]);
  result = sub_18F1293B8();
  *a2 = result;
  return result;
}

uint64_t sub_18F1BF144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;

  return MEMORY[0x1EEE6DFA0](sub_18F1BF1D8, 0, 0);
}

uint64_t sub_18F1BF1D8()
{
  v2 = v1[20];
  v3 = [objc_opt_self() policyWithEntityMetadata_];
  v4 = [OUTLINED_FUNCTION_31_16(v3) connectionWithError_];
  *(v2 + 104) = v4;
  v5 = *v2;
  if (!v4)
  {
    v14 = v5;
    sub_18F520A8C();

    swift_willThrow();
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_42_1();

    __asm { BRAA            X1, X16 }
  }

  v6 = v4;
  v7 = v1[19];
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_18F1BF3C0;
  v8 = swift_continuation_init();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1428);
  OUTLINED_FUNCTION_11_11(v9);
  OUTLINED_FUNCTION_13_16(COERCE_DOUBLE(1107296256));
  v1[12] = v10;
  v1[13] = &block_descriptor_64;
  v1[14] = v8;
  v11 = v5;
  [v6 performConfigurableQuery:v7 completionHandler:v2];
  OUTLINED_FUNCTION_42_1();

  return MEMORY[0x1EEE6DEC8](v12);
}

uint64_t sub_18F1BF3C0()
{
  OUTLINED_FUNCTION_69();
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_18F1C3E40;
  }

  else
  {
    v2 = sub_18F1BF4F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18F1BF4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_39_0();
  v17 = OUTLINED_FUNCTION_23_13();
  [v17 *(v16 + 2664)];

  sub_18F52261C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&word_1EACD1430);
  v18 = OUTLINED_FUNCTION_28_15();
  v19 = *(v15 + 32);
  v20 = *(v15 + 40);
  if (v18)
  {
    v21 = swift_task_alloc();
    OUTLINED_FUNCTION_29_14(v21);
    OUTLINED_FUNCTION_27_13();
  }

  else
  {
    sub_18F521D2C();
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_20();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
}

uint64_t SystemEntityQuery.entities(matching:)()
{
  OUTLINED_FUNCTION_69();
  v0[8] = v1;
  v0[9] = v2;
  v0[7] = v3;
  v4 = sub_18F5223CC();
  v0[10] = v4;
  OUTLINED_FUNCTION_51(v4);
  v0[11] = v5;
  v0[12] = OUTLINED_FUNCTION_34_0();
  v6 = sub_18F5223DC();
  v0[13] = v6;
  OUTLINED_FUNCTION_51(v6);
  v0[14] = v7;
  v8 = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_20_10(v8);
  v9 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F1BF74C()
{
  v1 = OUTLINED_FUNCTION_32_10();
  sub_18F1BECF8(v1, v2, v3);
  *(v0 + 160) = v4;
  v7 = v4;
  if (v4)
  {
    v25 = *(v0 + 49);
    v23 = *(v0 + 144);
    v24 = *(v0 + 152);
    v22 = *(v0 + 128);
    v9 = *(v0 + 112);
    v8 = *(v0 + 120);
    v10 = *(v0 + 96);
    v11 = *(v0 + 104);
    v12 = *(v0 + 80);
    v13 = *(v0 + 88);
    v15 = *(v0 + 56);
    v14 = *(v0 + 64);
    sub_18F0F21A8(0, &unk_1EACD0F60);
    *v8 = v15;
    v8[1] = v14;
    (*(v9 + 104))(v8, *MEMORY[0x1E69ACB10], v11);
    *v10 = v7;
    (*(v13 + 104))(v10, *MEMORY[0x1E69ACAF8], v12);
    v16 = objc_allocWithZone(MEMORY[0x1E69ACFD0]);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v17 = v7;
    [v16 init];
    v18 = sub_18F5223FC();
    *(v0 + 16) = v22;
    *(v0 + 168) = v18;
    *(v0 + 32) = v23;
    *(v0 + 40) = v24;
    *(v0 + 48) = v25;
    v19 = swift_task_alloc();
    *(v0 + 176) = v19;
    *v19 = v0;
    v19[1] = sub_18F1BF9B8;
    v20 = *(v0 + 72);

    return sub_18F1BF144(v18, v17, v20);
  }

  else
  {
    type metadata accessor for SystemEntityQuery.QueryError();
    OUTLINED_FUNCTION_0_23();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_1_23();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_71();

    return v5();
  }
}

uint64_t sub_18F1BF9B8()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 184) = v0;

  if (!v0)
  {
    *(v4 + 192) = v1;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t SystemEntityQuery.entities<A>(where:_:_:maximumResultCount:sortingOptions:)()
{
  OUTLINED_FUNCTION_69();
  v3 = v2;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  *(v1 + 50) = v6;
  *(v1 + 64) = v7;
  *(v1 + 72) = v8;
  *(v1 + 56) = v9;
  *(v1 + 96) = *(*(*v9 + *MEMORY[0x1E69E77B0] + 8) + 80);
  OUTLINED_FUNCTION_11_0();
  *(v1 + 104) = v10;
  v11 = OUTLINED_FUNCTION_34_0();
  *(v1 + 51) = *v3;
  v12 = *v0;
  v13 = v0[1];
  *(v1 + 112) = v11;
  *(v1 + 120) = v12;
  *(v1 + 128) = v13;
  *(v1 + 136) = *(v0 + 1);
  *(v1 + 52) = *(v0 + 32);
  v14 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_18F1BFBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_39_0();
  a24 = v26;
  a25 = v27;
  a23 = v25;
  v28 = *(v25 + 51);
  v30 = *(v25 + 104);
  v29 = *(v25 + 112);
  v39 = *(v25 + 96);
  v31 = *(v25 + 56);
  v32 = *(v25 + 64);
  OUTLINED_FUNCTION_21_9(*(v25 + 52));
  swift_allocObject();
  v33 = sub_18F521CDC();
  v35 = v34;
  a14 = v28;
  (*(v30 + 16))(v29, v32, v39);
  SystemEntityQuery.Comparison.init<A>(_:_:_:)(v31, &a14, v29, v35);
  *(v25 + 152) = sub_18F129FD4(v33);
  *(v25 + 49) = 0;

  v36 = swift_task_alloc();
  *(v25 + 160) = v36;
  *v36 = v25;
  v36[1] = sub_18F1BFD10;
  OUTLINED_FUNCTION_34_8();
  OUTLINED_FUNCTION_20();

  return SystemEntityQuery.entities(where:compoundType:maximumResultCount:sortingOptions:)();
}

uint64_t sub_18F1BFD10()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 168) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8_1();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {

    v11 = *(v6 + 8);

    return v11(v1);
  }
}

uint64_t sub_18F1BFE6C()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t SystemEntityQuery.Comparison.init<A>(_:_:_:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  *a4 = a1;
  v8 = *(v6 + *MEMORY[0x1E69E77B0] + 8);
  v9 = *(v8 + 80);
  *(a4 + 32) = v9;
  *(a4 + 40) = *(v8 + 88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a4 + 8));
  result = (*(*(v9 - 8) + 32))(boxed_opaque_existential_1, a3, v9);
  *(a4 + 48) = v7;
  return result;
}

uint64_t SystemEntityQuery.entities(where:compoundType:maximumResultCount:sortingOptions:)()
{
  OUTLINED_FUNCTION_69();
  v3 = v2;
  *(v1 + 104) = v4;
  *(v1 + 112) = v5;
  *(v1 + 49) = v6;
  *(v1 + 88) = v7;
  *(v1 + 96) = v8;
  v9 = sub_18F5223CC();
  *(v1 + 120) = v9;
  OUTLINED_FUNCTION_51(v9);
  *(v1 + 128) = v10;
  *(v1 + 136) = OUTLINED_FUNCTION_34_0();
  v11 = sub_18F5223DC();
  *(v1 + 144) = v11;
  OUTLINED_FUNCTION_51(v11);
  *(v1 + 152) = v12;
  v13 = OUTLINED_FUNCTION_34_0();
  *(v1 + 50) = *v3;
  v14 = *v0;
  v15 = v0[1];
  *(v1 + 160) = v13;
  *(v1 + 168) = v14;
  *(v1 + 176) = v15;
  *(v1 + 184) = *(v0 + 1);
  *(v1 + 51) = *(v0 + 32);
  v16 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_18F1C00B4()
{
  v1 = *(v0 + 51);
  sub_18F1C10D4(*(v0 + 184), *(v0 + 192), v1);
  *(v0 + 200) = v2;
  v3 = v2;
  if (v2)
  {
    sub_18F1BECF8(*(v0 + 184), *(v0 + 192), v1);
    *(v0 + 208) = v4;
    v6 = *(v0 + 112);
    if (v4)
    {
      v61 = v4;
      *(v0 + 56) = *(v0 + 88);
      v7 = swift_task_alloc();
      v8 = *(v6 + 16);
      v7[2] = v8;
      v9 = *(v6 + 24);
      v7[3] = v9;
      v7[4] = v3;
      type metadata accessor for SystemEntityQuery.Comparison();
      v10 = sub_18F521DBC();
      v11 = sub_18F0F21A8(0, &unk_1EACD0F70);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9950);
      v13 = OUTLINED_FUNCTION_2_3();
      v17 = sub_18F10C138(sub_18F1C3160, v7, v10, v11, v12, v13, MEMORY[0x1E69E7288], v0 + 64);

      result = sub_18F111F70(v17);
      v18 = v9;
      if (result)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x193ADBE10](0, v17);
        }

        else
        {
          if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v19 = *(v17 + 32);
        }

        v20 = v19;
        if (sub_18F111F70(v17) == 1)
        {

LABEL_21:
          *(v0 + 216) = v20;
          v23 = *(v0 + 104);
          if (v23)
          {
            *(v0 + 72) = v23;
            v24 = swift_task_alloc();
            v24[2] = v8;
            v24[3] = v18;
            v24[4] = v3;
            type metadata accessor for SystemEntityQuery.SortingOption();
            v25 = sub_18F521DBC();
            v26 = v12;
            v27 = sub_18F0F21A8(0, qword_1EACD0F88);
            v28 = v20;
            _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
            v29 = OUTLINED_FUNCTION_2_3();
            v30 = sub_18F10C138(sub_18F1C317C, v24, v25, v27, v26, v29, MEMORY[0x1E69E7288], v0 + 80);

            v55 = v30;
          }

          else
          {
            v31 = v20;
            v55 = 0;
          }

          v60 = *(v0 + 51);
          v58 = *(v0 + 184);
          v59 = *(v0 + 192);
          v33 = *(v0 + 152);
          v32 = *(v0 + 160);
          v34 = *(v0 + 136);
          v35 = *(v0 + 144);
          v36 = *(v0 + 128);
          v56 = *(v0 + 120);
          v37 = *(v0 + 49);
          v38 = *(v0 + 96);
          v57 = sub_18F0F21A8(0, &unk_1EACD0F60);
          *v32 = v20;
          *(v32 + 8) = v38;
          *(v32 + 16) = v37 & 1;
          *(v32 + 24) = v55;
          (*(v33 + 104))(v32, *MEMORY[0x1E69ACAB8], v35);
          *v34 = v61;
          (*(v36 + 104))(v34, *MEMORY[0x1E69ACAF8], v56);
          v39 = objc_allocWithZone(MEMORY[0x1E69ACFD0]);
          v40 = v61;
          [v39 init];
          v41 = sub_18F5223FC();
          OUTLINED_FUNCTION_37_7(v41, v42, v43, v44, v45, v46, v47, v48, v54, v55, v56, v57, v49);
          *(v0 + 224) = v50;
          *(v0 + 32) = v58;
          *(v0 + 40) = v59;
          *(v0 + 48) = v60;
          v51 = swift_task_alloc();
          *(v0 + 232) = v51;
          *v51 = v0;
          v51[1] = sub_18F1C0638;
          v52 = OUTLINED_FUNCTION_34_8();

          return sub_18F1C1E94(v52, v3, v53);
        }
      }

      v21 = *(v0 + 50);
      sub_18F0F21A8(0, &qword_1EACD0F80);
      if (v21)
      {
        v22 = &selRef_orComparisons_;
      }

      else
      {
        v22 = &selRef_andComparisons_;
      }

      v20 = sub_18F1C19EC(v17, v22);
      goto LABEL_21;
    }

    type metadata accessor for SystemEntityQuery.QueryError();
    OUTLINED_FUNCTION_0_23();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_1_23();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
  }

  else
  {
    type metadata accessor for SystemEntityQuery.QueryError();
    OUTLINED_FUNCTION_0_23();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_1_23();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_71();

  return v14();
}

uint64_t sub_18F1C0638()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 240) = v0;

  if (!v0)
  {
    *(v4 + 248) = v1;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F1C073C()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 224);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);

  OUTLINED_FUNCTION_20_0();
  v5 = *(v0 + 248);

  return v4(v5);
}

uint64_t sub_18F1C07D4()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 224);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);

  OUTLINED_FUNCTION_71();

  return v4();
}

uint64_t SystemEntityQuery.entities<A>(where:isBetween:maximumResultCount:sortingOptions:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 72) = a6;
  *(v8 + 80) = a7;
  *(v8 + 50) = a5;
  *(v8 + 56) = a1;
  *(v8 + 64) = a4;
  v10 = *(*(*a1 + *MEMORY[0x1E69E77B0] + 8) + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *(v8 + 88) = TupleTypeMetadata2;
  OUTLINED_FUNCTION_11_0();
  *(v8 + 96) = v12;
  *(v8 + 104) = swift_task_alloc();
  v13 = swift_task_alloc();
  *(v8 + 112) = v13;
  v14 = *(*(v10 - 8) + 16);
  v14();
  (v14)(v13 + *(TupleTypeMetadata2 + 48), a3, v10);
  v15 = *(v7 + 8);
  *(v8 + 120) = *v7;
  *(v8 + 128) = v15;
  *(v8 + 136) = *(v7 + 16);
  *(v8 + 51) = *(v7 + 32);
  v16 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_18F1C09FC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  OUTLINED_FUNCTION_21_9(*(v0 + 51));
  swift_allocObject();
  v5 = sub_18F521CDC();
  v7 = v6;
  (*(v4 + 16))(v1, v2, v3);
  v8 = *(v3 + 48);

  SystemEntityQuery.Comparison.init<A>(_:isBetween:)(v9, v1, v1 + v8, v7);
  *(v0 + 152) = sub_18F129FD4(v5);
  *(v0 + 49) = 0;
  v10 = swift_task_alloc();
  *(v0 + 160) = v10;
  *v10 = v0;
  v10[1] = sub_18F1C0B54;

  return SystemEntityQuery.entities(where:compoundType:maximumResultCount:sortingOptions:)();
}

uint64_t sub_18F1C0B54()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_10_2();
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_39();
  *v7 = v6;
  *(v4 + 168) = v0;

  if (!v0)
  {
    *(v4 + 176) = v1;
  }

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F1C0C7C()
{
  OUTLINED_FUNCTION_69();
  v1 = OUTLINED_FUNCTION_35_7();
  v2(v1);

  OUTLINED_FUNCTION_20_0();
  v4 = *(v0 + 176);

  return v3(v4);
}

uint64_t sub_18F1C0CF4()
{
  OUTLINED_FUNCTION_69();
  v0 = OUTLINED_FUNCTION_35_7();
  v1(v0);

  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t SystemEntityQuery.Comparison.init<A>(_:isBetween:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v30 = a3;
  v31 = a4;
  v35 = a1;
  v33 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  v6 = *(v33 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_11_0();
  v36 = v8;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v32 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v34 = &v28 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = *(v6 - 8);
  v17 = v16[4];
  v17(&v28 - v14, a2, v6);
  v17(&v15[*(TupleTypeMetadata2 + 48)], v30, v6);
  *a4 = v35;
  sub_18F18C388(v6, v6);
  v30 = v16[9];
  swift_allocObject();

  v28 = sub_18F521CDC();
  v19 = v18;
  v20 = *(v36 + 16);
  v21 = v34;
  v20(v34, v15, TupleTypeMetadata2);
  v29 = *(TupleTypeMetadata2 + 48);
  v17(v19, v21, v6);
  v22 = v32;
  v20(v32, v15, TupleTypeMetadata2);
  v17(&v19[v30], &v22[*(TupleTypeMetadata2 + 48)], v6);
  v23 = sub_18F129FD4(v28);
  v24 = v16[1];
  v24(v22, v6);
  v24(&v34[v29], v6);
  v25 = sub_18F521DBC();
  v26 = v31;
  v31[4] = v25;
  v37 = *(v33 + 88);
  v26[5] = swift_getWitnessTable();

  v26[1] = v23;
  result = (*(v36 + 8))(v15, TupleTypeMetadata2);
  *(v26 + 48) = 9;
  return result;
}

void sub_18F1C10D4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_18F1BECF8(a1, a2, 1);
    if (v3)
    {
      return;
    }

    v7 = v6;
    v44 = 0;
    v25 = sub_18F1C2630();
    v46 = sub_18F111F70(v25);
    for (i = 0; ; ++i)
    {
      if (v46 == i)
      {
LABEL_60:

        goto LABEL_61;
      }

      if ((v25 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x193ADBE10](i, v25);
      }

      else
      {
        if (i >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_65;
        }

        v27 = *(v25 + 8 * i + 32);
      }

      v28 = v27;
      if (__OFADD__(i, 1))
      {
        goto LABEL_64;
      }

      v29 = [v27 resultValueType];
      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (v30)
      {
        v31 = [v30 identifier];

        v32 = sub_18F5218DC();
        v34 = v33;

        if (!v7)
        {
          if (v34)
          {
            goto LABEL_50;
          }

          goto LABEL_52;
        }
      }

      else
      {

        if (!v7)
        {
          goto LABEL_52;
        }

        v34 = 0;
        v32 = 0;
      }

      v35 = [v7 identifier];
      v36 = sub_18F5218DC();
      v38 = v37;

      if (!v34)
      {
        if (v38)
        {
LABEL_50:

          continue;
        }

        goto LABEL_52;
      }

      if (!v38)
      {
        goto LABEL_50;
      }

      if (v32 == v36 && v34 == v38)
      {

LABEL_52:
        v41 = [v28 parameters];
        sub_18F0F21A8(0, &qword_1EACD1450);
        v42 = sub_18F521CAC();

        if (v42 >> 62)
        {
          v43 = sub_18F5226AC();
        }

        else
        {
          v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v43)
        {
          goto LABEL_60;
        }

        goto LABEL_55;
      }

      v40 = sub_18F522D5C();

      if (v40)
      {
        goto LABEL_52;
      }

LABEL_55:
    }
  }

  v8 = sub_18F1C2630();
  if (v3)
  {
    return;
  }

  v9 = v8;
  v45 = 0;
  v10 = sub_18F111F70(v8);
  for (j = 0; ; ++j)
  {
    if (v10 == j)
    {
LABEL_61:

      return;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x193ADBE10](j, v9);
    }

    else
    {
      if (j >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }

      v12 = *(v9 + 8 * j + 32);
    }

    v13 = v12;
    if (__OFADD__(j, 1))
    {
      break;
    }

    v14 = [v12 resultValueType];
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (!v15)
    {

      goto LABEL_25;
    }

    v16 = [v15 identifier];

    v17 = sub_18F5218DC();
    v19 = v18;

    if (v17 == a1 && v19 == a2)
    {

LABEL_21:
      v22 = [v13 parameters];
      sub_18F0F21A8(0, &qword_1EACD1450);
      v23 = sub_18F521CAC();

      if (v23 >> 62)
      {
        v24 = sub_18F5226AC();
      }

      else
      {
        v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v24)
      {
        goto LABEL_61;
      }

      goto LABEL_24;
    }

    v21 = sub_18F522D5C();

    if (v21)
    {
      goto LABEL_21;
    }

LABEL_24:
    v14 = v13;
LABEL_25:
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
}

void *sub_18F1C15B4@<X0>(void *a1@<X1>, void *a2@<X4>, void *a3@<X8>)
{
  v7 = type metadata accessor for SystemEntityQuery.Comparison();
  result = sub_18F1C162C(a1, v7);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

void *sub_18F1C162C(void *a1, uint64_t a2)
{
  v4 = v2;
  v6 = *(a2 + 16);
  OUTLINED_FUNCTION_11_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  v13 = OUTLINED_FUNCTION_22_10();
  v14(v13);
  swift_getAtPartialKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EACD1410);
  if (OUTLINED_FUNCTION_43_7())
  {
    v48 = v8;
    v15 = OUTLINED_FUNCTION_36_8();
    v2 = v42;
    MEMORY[0x1EEE9AC00](v15);
    OUTLINED_FUNCTION_17_1();
    *(v16 - 16) = v8;
    OUTLINED_FUNCTION_41_4();
    v42[1] = v3;

    sub_18F1C3BE8(v46, &v43);
    if (v44)
    {
      sub_18F0FF968(&v43, v45);
      v17 = [a1 parameters];
      sub_18F0F21A8(0, &qword_1EACD1450);
      v18 = sub_18F521CAC();

      MEMORY[0x1EEE9AC00](v19);
      OUTLINED_FUNCTION_17_1();
      *(v20 - 16) = v45;
      sub_18F229EE0(sub_18F1C3D48, v21, v18);
      v2 = v22;
      v24 = v23;

      if ((v24 & 1) == 0)
      {
        v36 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        sub_18F0F21A8(0, &unk_1EACD0F70);
        v37 = v4[4];
        __swift_project_boxed_opaque_existential_1Tm(v4 + 1, v37);
        v38 = sub_18F142A38(v37);
        LOBYTE(v43) = *(v4 + 48);
        OUTLINED_FUNCTION_18_10();
        type metadata accessor for SystemEntityQuery.Comparison.ComparisonTypeWrapper();
        v39 = sub_18F1C3094();
        v2 = sub_18F1C30D8(v36, v38, v39);
        sub_18F1C3B80(v46);
        v40 = OUTLINED_FUNCTION_7_15();
        v41(v40);
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        return v2;
      }

      OUTLINED_FUNCTION_18_10();
      type metadata accessor for SystemEntityQuery.QueryError();
      OUTLINED_FUNCTION_0_23();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_23();
      v25 = swift_allocError();
      OUTLINED_FUNCTION_16_11(v25, v26);
      sub_18F1C3B80(v46);
      v27 = OUTLINED_FUNCTION_7_15();
      v28(v27);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
    }

    else
    {
      sub_18F1C3B80(&v43);
      OUTLINED_FUNCTION_18_10();
      type metadata accessor for SystemEntityQuery.QueryError();
      OUTLINED_FUNCTION_0_23();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_23();
      v31 = swift_allocError();
      OUTLINED_FUNCTION_16_11(v31, v32);
      sub_18F1C3B80(v46);
      v33 = OUTLINED_FUNCTION_7_15();
      v34(v33);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v47);
  }

  else
  {
    OUTLINED_FUNCTION_40_6();
    OUTLINED_FUNCTION_18_10();
    type metadata accessor for SystemEntityQuery.QueryError();
    OUTLINED_FUNCTION_0_23();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_1_23();
    v29 = swift_allocError();
    OUTLINED_FUNCTION_16_11(v29, v30);
    (*(v8 + 8))(v12, v6);
  }

  return v2;
}

id sub_18F1C19EC(uint64_t a1, SEL *a2)
{
  sub_18F0F21A8(0, &unk_1EACD0F70);
  sub_18F521C8C();
  OUTLINED_FUNCTION_34_8();

  v4 = [swift_getObjCClassFromMetadata() *a2];

  return v4;
}

_BYTE *sub_18F1C1A6C@<X0>(void *a1@<X1>, void *a2@<X4>, void *a3@<X8>)
{
  v7 = type metadata accessor for SystemEntityQuery.SortingOption();
  result = sub_18F1C1AF8(a1, v7);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

_BYTE *sub_18F1C1AF8(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  OUTLINED_FUNCTION_11_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = *v2;
  v48 = *(v2 + 8);
  v12 = OUTLINED_FUNCTION_22_10();
  v13(v12);
  swift_getAtPartialKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EACD1410);
  if (OUTLINED_FUNCTION_43_7())
  {
    v42[1] = v6;
    v14 = OUTLINED_FUNCTION_36_8();
    v15 = v42;
    MEMORY[0x1EEE9AC00](v14);
    OUTLINED_FUNCTION_17_1();
    *(v16 - 16) = v11;
    OUTLINED_FUNCTION_41_4();

    sub_18F1C3BE8(v46, &v43);
    if (v44)
    {
      v15 = v45;
      sub_18F0FF968(&v43, v45);
      v17 = [a1 sortingOptions];
      sub_18F0F21A8(0, &qword_1EACD1420);
      v18 = sub_18F521CAC();

      MEMORY[0x1EEE9AC00](v19);
      OUTLINED_FUNCTION_17_1();
      *(v20 - 16) = v45;
      sub_18F229EE0(sub_18F1C3C58, v21, v18);
      v23 = v22;
      v25 = v24;

      if ((v25 & 1) == 0)
      {
        v38 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        v39 = objc_allocWithZone(MEMORY[0x1E69ACFA8]);
        v15 = [v39 initWithOrder:v48 sortParameterIndex:v38];

        sub_18F1C3B80(v46);
        v40 = OUTLINED_FUNCTION_7_15();
        v41(v40);
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        return v15;
      }

      type metadata accessor for SystemEntityQuery.QueryError();
      OUTLINED_FUNCTION_0_23();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_23();
      v26 = swift_allocError();
      OUTLINED_FUNCTION_16_11(v26, v27);
      sub_18F1C3B80(v46);
      v28 = OUTLINED_FUNCTION_7_15();
      v29(v28);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
    }

    else
    {
      sub_18F1C3B80(&v43);
      type metadata accessor for SystemEntityQuery.QueryError();
      OUTLINED_FUNCTION_0_23();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_23();
      v33 = swift_allocError();
      OUTLINED_FUNCTION_16_11(v33, v34);
      sub_18F1C3B80(v46);
      v35 = OUTLINED_FUNCTION_7_15();
      v36(v35);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v47);
  }

  else
  {
    OUTLINED_FUNCTION_40_6();
    type metadata accessor for SystemEntityQuery.QueryError();
    OUTLINED_FUNCTION_0_23();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_1_23();
    v30 = swift_allocError();
    OUTLINED_FUNCTION_16_11(v30, v31);
    v32 = *(v6 + 8);
    v15 = (v6 + 8);
    v32(v10, v4);
  }

  return v15;
}

uint64_t sub_18F1C1E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;

  return MEMORY[0x1EEE6DFA0](sub_18F1C1F28, 0, 0);
}

uint64_t sub_18F1C1F28()
{
  v2 = v1[20];
  v3 = [objc_opt_self() policyWithEntityQueryMetadata_];
  v4 = [OUTLINED_FUNCTION_31_16(v3) connectionWithError_];
  *(v2 + 104) = v4;
  v5 = *v2;
  if (!v4)
  {
    v14 = v5;
    sub_18F520A8C();

    swift_willThrow();
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_42_1();

    __asm { BRAA            X1, X16 }
  }

  v6 = v4;
  v7 = v1[19];
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_18F1C2110;
  v8 = swift_continuation_init();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1428);
  OUTLINED_FUNCTION_11_11(v9);
  OUTLINED_FUNCTION_13_16(COERCE_DOUBLE(1107296256));
  v1[12] = v10;
  v1[13] = &block_descriptor;
  v1[14] = v8;
  v11 = v5;
  [v6 performConfigurableQuery:v7 completionHandler:v2];
  OUTLINED_FUNCTION_42_1();

  return MEMORY[0x1EEE6DEC8](v12);
}

uint64_t sub_18F1C2110()
{
  OUTLINED_FUNCTION_69();
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_18F1C23A8;
  }

  else
  {
    v2 = sub_18F1C2248;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18F1C2248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_39_0();
  v17 = OUTLINED_FUNCTION_23_13();
  [v17 *(v16 + 2664)];

  sub_18F52261C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&word_1EACD1430);
  v18 = OUTLINED_FUNCTION_28_15();
  v19 = *(v15 + 32);
  v20 = *(v15 + 40);
  if (v18)
  {
    v21 = swift_task_alloc();
    OUTLINED_FUNCTION_29_14(v21);
    OUTLINED_FUNCTION_27_13();
  }

  else
  {
    sub_18F521D2C();
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_20();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_18F1C23A8()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 184);
  v2 = *(v0 + 176);
  swift_willThrow();

  OUTLINED_FUNCTION_71();

  return v3();
}

id sub_18F1C24A0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69ACF60]);

  return [v0 initWithOptions_];
}

uint64_t sub_18F1C24DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0610);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - v3;
  v5 = *(v0 + 8);
  LOBYTE(v3) = *(v0 + 32);
  v9[1] = *v0;
  v9[2] = v5;
  v10 = *(v0 + 16);
  v11 = v3;
  v6 = sub_18F1C24A0();
  sub_18F0F21A8(0, &unk_1ED6FE480);
  sub_18F52233C();
  v7 = sub_18F52230C();
  (*(v2 + 8))(v4, v1);

  return v7;
}

uint64_t sub_18F1C2630()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1458);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - v3;
  v5 = *(v0 + 8);
  LOBYTE(v3) = *(v0 + 32);
  v9[1] = *v0;
  v9[2] = v5;
  v10 = *(v0 + 16);
  v11 = v3;
  v6 = sub_18F1C24A0();
  sub_18F0F21A8(0, &qword_1ED6FE8F0);
  sub_18F52232C();
  v7 = sub_18F52230C();
  (*(v2 + 8))(v4, v1);

  return v7;
}

void sub_18F1C2784(id *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v7 = [*a1 value];
  sub_18F52261C();
  swift_unknownObjectRelease();
  sub_18F0F21A8(0, &qword_1ED6FE640);
  if (swift_dynamicCast())
  {
    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1448);
  sub_18F107A24(a3, a2, v9, a4);
}

uint64_t sub_18F1C28A8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_18F1C2958;

  return SystemEntityQuery.entities(matching:)();
}

uint64_t sub_18F1C2958()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_39();
  *v7 = v6;

  if (!v0)
  {
    **(v4 + 16) = v3;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_18F1C2A64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F1C2B08;

  return SystemEntityQuery.entities(for:)();
}

uint64_t sub_18F1C2B08()
{
  OUTLINED_FUNCTION_69();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;

  OUTLINED_FUNCTION_20_0();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t _s10AppIntents17SystemEntityQueryV0E5ErrorO9hashValueSivg_0()
{
  v1 = *v0;
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](v1);
  return sub_18F522F4C();
}

uint64_t sub_18F1C2D34(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_18F522EFC();
  a4(v6);
  return sub_18F522F4C();
}

uint64_t SystemEntityQuery.SortingOption.init<A>(_:order:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

uint64_t sub_18F1C2D88(id *a1, void *a2)
{
  v3 = [*a1 propertyIdentifier];
  v4 = sub_18F5218DC();
  v6 = v5;

  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v7);
  v9 = (*(v8 + 16))(v7, v8);
  if (v10)
  {
    if (v4 == v9 && v10 == v6)
    {

      return 1;
    }

    else
    {
      v12 = sub_18F522D5C();

      return v12 & 1;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_18F1C2E88(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v8);
  v10 = (*(v9 + 16))(v8, v9);
  if (v7)
  {
    if (v11)
    {
      if (v5 == v10 && v7 == v11)
      {

        v13 = 1;
      }

      else
      {
        v13 = sub_18F522D5C();
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    if (!v11)
    {
      v13 = 1;
      return v13 & 1;
    }

    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_18F1C2FA4(void **a1, void *a2)
{
  v3 = sub_18F1C3D68(*a1);
  v5 = v4;
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v6);
  v8 = (*(v7 + 16))(v6, v7);
  if (v5)
  {
    if (v9)
    {
      if (v3 == v8 && v5 == v9)
      {

        v11 = 1;
      }

      else
      {
        v11 = sub_18F522D5C();
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    if (!v9)
    {
      v11 = 1;
      return v11 & 1;
    }

    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_18F1C3094()
{
  if (*v0 == 9)
  {
    return 9;
  }

  else
  {
    return sub_18F1C2C54();
  }
}

id sub_18F1C30D8(void *a1, void *a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPropertyIndex:a1 value:a2 type:a3];

  return v5;
}

unint64_t sub_18F1C313C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_18F1C31B0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F1C31FC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F1C3318()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F1C3360(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F1C33A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SuggestedActionsFetchError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_18F1C3484(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SystemImplementedIntentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_18F1C35D8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_18F1C36D4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18F1C37B8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_18F1C3808(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F1C3848(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18F1C3888()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_18F1C38E0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18F1C3920(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unsigned __int8 *sub_18F1C3970(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 9;
    v8 = v6 - 9;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 9;
    if (a2 + 9 >= 0xFFFF00)
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

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 9);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *sub_18F1C3A1C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 9;
  if (a3 + 9 >= 0xFFFF00)
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

  if (a3 >= 0xF7)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF6)
  {
    v7 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_18F1C3AF0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 9)
  {
    return v1 - 8;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_18F1C3B04(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 8;
  }

  return result;
}

uint64_t sub_18F1C3B2C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F1C3B80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18F1C3BE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18F1C3CA8()
{
  result = qword_1EACD1438;
  if (!qword_1EACD1438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&word_1EACD1430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1438);
  }

  return result;
}

uint64_t sub_18F1C3D68(void *a1)
{
  v1 = [a1 propertyIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_18F5218DC();

  return v3;
}

uint64_t sub_18F1C3E40()
{
  OUTLINED_FUNCTION_69();

  return sub_18F1C23A8();
}

uint64_t SystemImplementedIntentType.hashValue.getter()
{
  v1 = *v0;
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](v1);
  return sub_18F522F4C();
}

uint64_t sub_18F1C3F84()
{
  sub_18F522EFC();
  SystemImplementedIntentType.hash(into:)();
  return sub_18F522F4C();
}

unint64_t sub_18F1C3FD0()
{
  result = qword_1EACD1468;
  if (!qword_1EACD1468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD1468);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SystemImplementedIntentType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t TypeDisplayRepresentation.init(stringLiteral:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v25 - v4;
  v6 = sub_18F520ADC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  v11 = sub_18F520F1C();
  v12 = OUTLINED_FUNCTION_10(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  v13 = sub_18F52189C();
  v14 = OUTLINED_FUNCTION_10(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4();
  sub_18F52181C();
  sub_18F520EDC();
  (*(v7 + 104))(v10, *MEMORY[0x1E6968DF0], v6);
  sub_18F520B4C();
  v15 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  v19 = type metadata accessor for TypeDisplayRepresentation();
  v20 = *(v19 + 20);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v15);
  *(a1 + *(v19 + 24)) = MEMORY[0x1E69E7CC0];
  return sub_18F0FF6E0(v5, a1 + v20, &qword_1EACCF7A8);
}

uint64_t sub_18F1C4344()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_0_24(&unk_18F544938);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_29(v1);

  return v4(v3);
}

uint64_t sub_18F1C43D0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18F1C43F0, 0, 0);
}

uint64_t sub_18F1C43F0()
{
  OUTLINED_FUNCTION_69();
  IntentCalendarEvent.displayRepresentation.getter(*(v0 + 16));
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F1C4448(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F1C4468, 0, 0);
}

uint64_t sub_18F1C44C4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18F1C44E4, 0, 0);
}

uint64_t sub_18F1C44E4()
{
  OUTLINED_FUNCTION_69();
  IntentNote.displayRepresentation.getter(*(v0 + 16));
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F1C453C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  v2[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v2[5] = swift_task_alloc();
  sub_18F52187C();
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F1C463C, 0, 0);
}

uint64_t sub_18F1C463C()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[2];
  sub_18F52186C();
  OUTLINED_FUNCTION_28_16();
  sub_18F52183C();
  OUTLINED_FUNCTION_28_16();
  sub_18F520AEC();
  v4 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  v8 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  v12 = type metadata accessor for DisplayRepresentation();
  v13 = v12[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v4);
  v17 = v12[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v8);
  OUTLINED_FUNCTION_23_14(v12[7], xmmword_18F540410);
  *(v3 + v21) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v4);
  sub_18F0FF6E0(v1, v3 + v13, &qword_1EACCF7A8);
  sub_18F0FF6E0(v2, v3 + v17, &qword_1EACD0270);

  OUTLINED_FUNCTION_71();

  return v25();
}

uint64_t sub_18F1C47DC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18F1C47FC, 0, 0);
}

uint64_t sub_18F1C47FC()
{
  OUTLINED_FUNCTION_69();
  IntentPerson.displayRepresentation.getter();
  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1C4854(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18F1C4874, 0, 0);
}

uint64_t sub_18F1C4874()
{
  OUTLINED_FUNCTION_69();
  IntentMediaItem.displayRepresentation.getter(*(v0 + 16));
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F1C48CC(uint64_t a1)
{
  *(v2 + 72) = a1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = *(v1 + 48);
  return MEMORY[0x1EEE6DFA0](sub_18F1C4904, 0, 0);
}

uint64_t sub_18F1C4904()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_26_7();
  MailboxPrototype.displayRepresentation.getter();
  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1C495C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  v3[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v3[6] = swift_task_alloc();
  sub_18F52187C();
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F1C4A60, 0, 0);
}

uint64_t sub_18F1C4A60()
{
  v1 = v0[6];
  v2 = v0[5];
  v3 = v0[2];
  sub_18F52186C();
  OUTLINED_FUNCTION_28_16();
  sub_18F52183C();
  OUTLINED_FUNCTION_28_16();
  sub_18F520AEC();
  v4 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  v8 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  v12 = type metadata accessor for DisplayRepresentation();
  v13 = v12[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v4);
  v17 = v12[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v8);
  OUTLINED_FUNCTION_23_14(v12[7], xmmword_18F540410);
  *(v3 + v21) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v4);
  sub_18F0FF6E0(v1, v3 + v13, &qword_1EACCF7A8);
  sub_18F0FF6E0(v2, v3 + v17, &qword_1EACD0270);

  OUTLINED_FUNCTION_71();

  return v25();
}

uint64_t sub_18F1C4BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  v3[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v3[6] = swift_task_alloc();
  sub_18F52187C();
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F1C75D0, 0, 0);
}

uint64_t sub_18F1C4D00(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18F1C4D20, 0, 0);
}

uint64_t sub_18F1C4D20()
{
  OUTLINED_FUNCTION_69();
  IntentMediaSearch.displayRepresentation.getter(*(v0 + 16));
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F1C4D78(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18F1C4D98, 0, 0);
}

uint64_t sub_18F1C4D98()
{
  OUTLINED_FUNCTION_69();
  IntentReminderTask.displayRepresentation.getter(*(v0 + 16));
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F1C4DF0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F1C4E10, 0, 0);
}

uint64_t sub_18F1C4E10()
{
  OUTLINED_FUNCTION_69();
  IntentPaymentMethod.displayRepresentation.getter(*(v0 + 24));
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F1C4E6C(uint64_t a1)
{
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 56) = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F1C4E98, 0, 0);
}

uint64_t sub_18F1C4E98()
{
  OUTLINED_FUNCTION_69();
  IntentCurrencyAmount.displayRepresentation.getter(*(v0 + 56));
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F1C4EF4(uint64_t a1)
{
  *(v2 + 72) = a1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = *(v1 + 48);
  return MEMORY[0x1EEE6DFA0](sub_18F1C4F2C, 0, 0);
}

uint64_t sub_18F1C4F2C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_26_7();
  MailAccountPrototype.displayRepresentation.getter();
  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1C4F84(uint64_t a1)
{
  *(v2 + 168) = a1;
  memcpy((v2 + 16), v1, 0x91uLL);

  return MEMORY[0x1EEE6DFA0](sub_18F1C4FF8, 0, 0);
}

uint64_t sub_18F1C4FF8()
{
  OUTLINED_FUNCTION_69();
  MailMessagePrototype.displayRepresentation.getter();
  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1C5054(uint64_t a1)
{
  *(v2 + 80) = a1;
  v3 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = v1[2];
  *(v2 + 57) = *(v1 + 41);
  return MEMORY[0x1EEE6DFA0](sub_18F1C508C, 0, 0);
}

uint64_t sub_18F1C508C()
{
  OUTLINED_FUNCTION_69();
  MessageGroupPrototype.displayRepresentation.getter();
  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1C50E8(uint64_t a1)
{
  *(v2 + 88) = a1;
  memcpy((v2 + 16), v1, 0x41uLL);

  return MEMORY[0x1EEE6DFA0](sub_18F1C515C, 0, 0);
}

uint64_t sub_18F1C515C()
{
  OUTLINED_FUNCTION_69();
  VisualSearchPrototype.displayRepresentation.getter();
  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1C51B8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18F1C51D8, 0, 0);
}

uint64_t sub_18F1C51D8()
{
  OUTLINED_FUNCTION_69();
  IntentEventParticipant.displayRepresentation.getter(*(v0 + 16));
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F1C5230(uint64_t a1)
{
  *(v2 + 96) = a1;
  memcpy((v2 + 16), v1, 0x49uLL);

  return MEMORY[0x1EEE6DFA0](sub_18F1C52A4, 0, 0);
}

uint64_t sub_18F1C52A4()
{
  OUTLINED_FUNCTION_69();
  IntentMessagePrototype.displayRepresentation.getter();
  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1C5300(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18F1C5320, 0, 0);
}

uint64_t sub_18F1C5320()
{
  OUTLINED_FUNCTION_69();
  IntentReminderTaskList.displayRepresentation.getter(*(v0 + 16));
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F1C5378(uint64_t a1)
{
  *(v2 + 72) = a1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = *(v1 + 48);
  return MEMORY[0x1EEE6DFA0](sub_18F1C53B0, 0, 0);
}

uint64_t sub_18F1C53B0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_26_7();
  MailAddresseePrototype.displayRepresentation.getter();
  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1C5408(uint64_t a1)
{
  *(v2 + 72) = a1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = *(v1 + 48);
  return MEMORY[0x1EEE6DFA0](sub_18F1C5440, 0, 0);
}

uint64_t sub_18F1C5440()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_26_7();
  VisualSearchOCRPrototype.displayRepresentation.getter();
  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1C5498(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18F1C54B8, 0, 0);
}

uint64_t sub_18F1C54B8()
{
  OUTLINED_FUNCTION_69();
  IntentDateComponentsRange.displayRepresentation.getter(*(v0 + 16));
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F1C5510(uint64_t a1)
{
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 56) = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F1C553C, 0, 0);
}

uint64_t sub_18F1C553C()
{
  OUTLINED_FUNCTION_69();
  IntentMessageConversation.displayRepresentation.getter(*(v0 + 56));
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F1C5598(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F1C55B8, 0, 0);
}

uint64_t sub_18F1C5614(uint64_t a1)
{
  *(v2 + 104) = a1;
  memcpy((v2 + 16), v1, 0x51uLL);

  return MEMORY[0x1EEE6DFA0](sub_18F1C5688, 0, 0);
}

uint64_t sub_18F1C5688()
{
  OUTLINED_FUNCTION_69();
  MessageParticipantPrototype.displayRepresentation.getter();
  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1C56E4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18F1C5704, 0, 0);
}

uint64_t sub_18F1C5704()
{
  OUTLINED_FUNCTION_69();
  DateInterval.displayRepresentation.getter(*(v0 + 16));
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F1C575C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18F1C577C, 0, 0);
}

uint64_t sub_18F1C577C()
{
  OUTLINED_FUNCTION_69();
  PersonNameComponents.displayRepresentation.getter(*(v0 + 16));
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F1C57D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F1C57F8, 0, 0);
}

uint64_t sub_18F1C57F8()
{
  OUTLINED_FUNCTION_69();
  Duration.displayRepresentation.getter(*(v0 + 16));
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t InstanceDisplayRepresentable.displayRepresentation(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  return MEMORY[0x1EEE6DFA0](sub_18F1C5878, 0, 0);
}

uint64_t sub_18F1C5878()
{
  OUTLINED_FUNCTION_69();
  (*(*(v0 + 32) + 16))(*(v0 + 24));
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t InstanceDisplayRepresentable.localizedStringResource.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19_9();
  v5 = type metadata accessor for DisplayRepresentation();
  v6 = OUTLINED_FUNCTION_10(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  (*(a2 + 16))(v2, a2);
  sub_18F520B3C();
  OUTLINED_FUNCTION_10_0();
  (*(v10 + 16))(v3, v9);
  return sub_18F14372C(v9);
}

uint64_t sub_18F1C59AC()
{
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_0_24(&unk_18F544928);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_9_6(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_21(v3);

  return v7(v5, v1);
}

uint64_t sub_18F1C5A44()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_0_24(&unk_18F544918);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_29(v1);

  return v4(v3);
}

uint64_t sub_18F1C5AD0()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_24_13();
  OUTLINED_FUNCTION_6_1(&unk_18F544908);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_21(v1);
  OUTLINED_FUNCTION_16_12();

  return v3();
}

uint64_t TypeDisplayRepresentation.name.getter@<X0>(uint64_t a1@<X8>)
{
  sub_18F520B3C();
  OUTLINED_FUNCTION_10_0();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t TypeDisplayRepresentation.name.setter()
{
  OUTLINED_FUNCTION_57_0();
  sub_18F520B3C();
  OUTLINED_FUNCTION_10_0();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t TypeDisplayRepresentation.numericFormat.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TypeDisplayRepresentation() + 20);

  return sub_18F11F0A0(v3, a1);
}

uint64_t TypeDisplayRepresentation.numericFormat.setter()
{
  OUTLINED_FUNCTION_57_0();
  v2 = type metadata accessor for TypeDisplayRepresentation();
  return sub_18F0FF6E0(v0, v1 + *(v2 + 20), &qword_1EACCF7A8);
}

uint64_t (*TypeDisplayRepresentation.numericFormat.modify())(void, void)
{
  OUTLINED_FUNCTION_57_0();
  type metadata accessor for TypeDisplayRepresentation();
  return nullsub_1;
}

uint64_t TypeDisplayRepresentation.synonyms.getter()
{
  type metadata accessor for TypeDisplayRepresentation();

  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t TypeDisplayRepresentation.synonyms.setter()
{
  OUTLINED_FUNCTION_57_0();
  v2 = *(type metadata accessor for TypeDisplayRepresentation() + 24);

  *(v1 + v2) = v0;
  return result;
}

uint64_t (*TypeDisplayRepresentation.synonyms.modify())(void, void)
{
  OUTLINED_FUNCTION_57_0();
  type metadata accessor for TypeDisplayRepresentation();
  return nullsub_1;
}

uint64_t TypeDisplayRepresentation.init(name:numericFormat:synonyms:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_19_9();
  v7 = type metadata accessor for TypeDisplayRepresentation();
  v8 = *(v7 + 20);
  v9 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  v13 = *(v7 + 24);
  (*(*(v9 - 8) + 32))(v4, v3, v9);
  result = sub_18F0FF6E0(a2, v4 + v8, &qword_1EACCF7A8);
  *(v4 + v13) = a3;
  return result;
}

uint64_t sub_18F1C5E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_18F0FC870;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, v8, a3, a4);
}

uint64_t sub_18F1C5FA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TypeDisplayRepresentation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of InstanceDisplayRepresentable.displayRepresentation(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(a4 + 24) + **(a4 + 24));
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_9_6(v8);
  *v9 = v10;
  v9[1] = sub_18F0FC874;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_18F1C6164()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_24_13();
  OUTLINED_FUNCTION_6_1(&unk_18F5448F8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_21(v1);
  OUTLINED_FUNCTION_16_12();

  return v3();
}

uint64_t sub_18F1C61FC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_20_11();
  OUTLINED_FUNCTION_0_24(&unk_18F5448E8);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 56) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_24(v1);

  return v4(v3);
}

uint64_t sub_18F1C628C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_18();
  *(v1 + 64) = *(v0 + 48);
  OUTLINED_FUNCTION_0_24(&unk_18F5448D8);
  *(v1 + 48) = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 72) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_24(v3);

  return v6(v5);
}

uint64_t sub_18F1C6328()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F1C6408()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_0_24(&unk_18F5448C8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_29(v1);

  return v4(v3);
}

uint64_t sub_18F1C6494()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_0_24(&unk_18F5448B8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_29(v1);

  return v4(v3);
}

uint64_t sub_18F1C6520()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_9_6(v6);
  *v7 = v9;
  v7[1] = sub_18F0FC870;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(v5, v8, v3, v1);
}

uint64_t sub_18F1C65C4()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_0_24(&unk_18F5448A0);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_29(v1);

  return v4(v3);
}

uint64_t sub_18F1C6650()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_24_13();
  OUTLINED_FUNCTION_6_1(&unk_18F544888);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_21(v1);
  OUTLINED_FUNCTION_16_12();

  return v3();
}

uint64_t sub_18F1C66E8()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_0_24(&unk_18F544878);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_29(v1);

  return v4(v3);
}

uint64_t sub_18F1C6774()
{
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_0_24(&unk_18F544868);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_9_6(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_21(v3);

  return v7(v5, v1);
}

uint64_t sub_18F1C680C()
{
  OUTLINED_FUNCTION_21();
  v1 = *v0;
  OUTLINED_FUNCTION_0_24(&unk_18F544858);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_9_6(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_5_21(v3);

  return v7(v5, v1);
}

uint64_t sub_18F1C68A4()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_24_13();
  OUTLINED_FUNCTION_6_1(&unk_18F544848);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_21(v1);
  OUTLINED_FUNCTION_16_12();

  return v3();
}

uint64_t sub_18F1C693C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_0_24(&unk_18F544838);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_29(v1);

  return v4(v3);
}

uint64_t sub_18F1C69C8()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_20_11();
  OUTLINED_FUNCTION_0_24(&unk_18F544828);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 56) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_24(v1);

  return v4(v3);
}

uint64_t sub_18F1C6A58()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_0_24(&unk_18F544818);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_29(v1);

  return v4(v3);
}

uint64_t sub_18F1C6AE4()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_0_24(&unk_18F544808);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_29(v1);

  return v4(v3);
}

uint64_t sub_18F1C6B70()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_0_24(&unk_18F5447F8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_29(v1);

  return v4(v3);
}

uint64_t sub_18F1C6BFC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_0_24(&unk_18F5447E8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_29(v1);

  return v4(v3);
}

uint64_t sub_18F1C6C88()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_18();
  OUTLINED_FUNCTION_22_11();
  OUTLINED_FUNCTION_0_24(&unk_18F5447D8);
  *(v0 + 48) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 72) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_24(v2);

  return v5(v4);
}

uint64_t sub_18F1C6D20()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_18();
  OUTLINED_FUNCTION_22_11();
  OUTLINED_FUNCTION_0_24(&unk_18F5447C8);
  *(v0 + 48) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 72) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_24(v2);

  return v5(v4);
}

uint64_t sub_18F1C6DB8()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_6_18();
  OUTLINED_FUNCTION_22_11();
  OUTLINED_FUNCTION_0_24(&unk_18F5447B8);
  *(v0 + 48) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 72) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_24(v2);

  return v5(v4);
}

uint64_t sub_18F1C6E50()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_17_13();
  memcpy(v1, v2, 0x91uLL);
  OUTLINED_FUNCTION_0_24(&unk_18F5447A8);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 168) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_24(v3);

  return v6(v5);
}

uint64_t sub_18F1C6EE8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F1C6FC8()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_17_13();
  memcpy(v1, v2, 0x49uLL);
  OUTLINED_FUNCTION_0_24(&unk_18F544798);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 96) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_1_24(v3);

  return v6(v5);
}

uint64_t sub_18F1C7060()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F1C7140()
{
  OUTLINED_FUNCTION_21();
  *(v0 + 48) = OUTLINED_FUNCTION_6_18();
  OUTLINED_FUNCTION_0_24(&unk_18F544788);
  *(v0 + 57) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 80) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_1_24(v2);

  return v5(v4);
}