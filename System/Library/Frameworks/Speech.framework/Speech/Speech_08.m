uint64_t sub_1AC66A204()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 1536);
  *v4 = *v1;
  v3[193] = v7;
  v3[194] = v0;

  if (v0)
  {
    v8 = v3[190];
    v9 = v3[187];
    v10 = v3[137];
    v11 = v3[87];

    v12 = OUTLINED_FUNCTION_196_0();
  }

  else
  {
    v13 = v3[87];
    v12 = sub_1AC66A33C;
  }

  return MEMORY[0x1EEE6DFA0](v12, v13, 0);
}

void sub_1AC66A33C()
{
  v2 = *(v0 + 1544);
  v3 = *(v0 + 1496);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + 1496);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v6 = *(v5 + 16);
    if (v6 >= *(v5 + 24) >> 1)
    {
      OUTLINED_FUNCTION_247();
      sub_1AC5CB1EC();
      v5 = v137;
    }

    v7 = *(v0 + 1544);
    v8 = *(v0 + 1520);
    OUTLINED_FUNCTION_21_5();
    v11 = sub_1AC68A730(v9, v10);
    *(v5 + 16) = v6 + 1;
    v12 = v5 + 16 * v6;
    *(v12 + 32) = v7;
    *(v12 + 40) = v11;
    v13 = v8[2];
    if (v13)
    {
      v14 = *(v0 + 1544);
      v8 = &qword_1EB56BF80;
      v15 = *(v0 + 1520) + 32;
      v1 = &unk_1EB56B000;
      while (1)
      {
        sub_1AC68A30C(v15, v0 + 296);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF80, &qword_1AC7A8390);
        v16 = OUTLINED_FUNCTION_433();
        type metadata accessor for CommandRecognizer(v16);
        if (OUTLINED_FUNCTION_282())
        {
          break;
        }

        type metadata accessor for EndpointDetector();
        if (OUTLINED_FUNCTION_282())
        {
          v19 = *(v0 + 1544);
          v20 = *(v0 + 520);

          sub_1AC762C50(v14);
          goto LABEL_22;
        }

        type metadata accessor for SpeechDetector();
        if (OUTLINED_FUNCTION_282())
        {
          v21 = *(v0 + 1544);
          v22 = *(v0 + 536);

          sub_1AC6B1964(v14);
          goto LABEL_22;
        }

        type metadata accessor for Transcriber();
        if (OUTLINED_FUNCTION_282())
        {
          v23 = *(v0 + 1544);
          v24 = *(*(v0 + 544) + 16);
          goto LABEL_21;
        }

        type metadata accessor for SpeechTranscriber();
        if (OUTLINED_FUNCTION_282())
        {
          v25 = *(v0 + 1544);
          v26 = *(v0 + 552);
          v27 = OBJC_IVAR____TtC6Speech17SpeechTranscriber_common;
          goto LABEL_20;
        }

        type metadata accessor for DictationTranscriber(0);
        if (OUTLINED_FUNCTION_282())
        {
          v28 = *(v0 + 1544);
          v26 = *(v0 + 560);
          v27 = OBJC_IVAR____TtC6Speech20DictationTranscriber_common;
          goto LABEL_20;
        }

        type metadata accessor for NormalizingTranscriber(0);
        if (OUTLINED_FUNCTION_282())
        {
          v29 = *(v0 + 1544);
          v26 = *(v0 + 568);
          v27 = OBJC_IVAR____TtC6Speech22NormalizingTranscriber_common;
LABEL_20:
          v30 = *(v26 + v27);
LABEL_21:

          sub_1AC7442B0(v14);
LABEL_22:
        }

        __swift_destroy_boxed_opaque_existential_0((v0 + 296));
        v15 += 40;
        if (!--v13)
        {
          goto LABEL_24;
        }
      }

      v17 = *(v0 + 1544);
      v18 = *(v0 + 528);

      sub_1AC71E6B4(v14);
      goto LABEL_22;
    }

LABEL_24:
    v31 = *(v0 + 1520);

    v32 = *(v0 + 1544);
    v33 = *(v0 + 1528);
    v34 = *(v0 + 800);

    OUTLINED_FUNCTION_2_6();
    sub_1AC68A2BC();
    v35 = *(v0 + 1512);
    v36 = *(v0 + 1504);
    *(v0 + 1496) = v5;
    if (!v36)
    {
      while (1)
      {
        v37 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v37 >= (((1 << *(v0 + 499)) + 63) >> 6))
        {
          v111 = *(v0 + 880);
          v112 = *(v0 + 848);
          OUTLINED_FUNCTION_65_0();
          __swift_storeEnumTagSinglePayload(v113, v114, v115, v116);
          v41 = 0;
          goto LABEL_31;
        }

        v8 = *(v0 + 1432);
        v36 = v8[v37 + 8];
        ++v35;
        if (v36)
        {
          v35 = v37;
          goto LABEL_30;
        }
      }

      __break(1u);
      goto LABEL_73;
    }

    v8 = *(v0 + 1432);
LABEL_30:
    v38 = *(v0 + 880);
    v39 = *(v0 + 848);
    v40 = *(v0 + 816);
    v41 = ((v36 - 1) & v36);
    v42 = __clz(__rbit64(v36)) | (v35 << 6);
    v43 = v8[6];
    v44 = *(*(v0 + 792) + 72);
    OUTLINED_FUNCTION_1_7();
    sub_1AC68A130(v45, v40);
    v8 = *(v8[7] + 8 * v42);
    v46 = *(v39 + 48);
    v47 = OUTLINED_FUNCTION_74_0();
    sub_1AC61B988(v47, v48);
    *(v38 + v46) = v8;
    v49 = OUTLINED_FUNCTION_68_3();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v39);

LABEL_31:
    *(v0 + 1512) = v35;
    *(v0 + 1504) = v41;
    v52 = *(v0 + 880);
    v53 = *(v0 + 848);
    v54 = OUTLINED_FUNCTION_178_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54, v55, v53);
    v57 = *(v0 + 888);
    if (EnumTagSinglePayload)
    {
      v58 = *(v0 + 872);
      v59 = OUTLINED_FUNCTION_172();
      memcpy(v59, v60, v61);
    }

    else
    {
      v62 = OUTLINED_FUNCTION_170();
      sub_1AC61B988(v62, v63);
      OUTLINED_FUNCTION_325();
      OUTLINED_FUNCTION_113_2();
      __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
    }

    v68 = *(v0 + 888);
    v69 = *(v0 + 848);
    OUTLINED_FUNCTION_104_2(v68);
    if (!v70)
    {
      v101 = *(v0 + 1488);
      v102 = *(v0 + 1440);
      v103 = *(v0 + 800);
      v104 = *(v0 + 696);
      *(v0 + 1520) = *(v68 + *(v69 + 48));
      v105 = OUTLINED_FUNCTION_198();
      sub_1AC61B988(v105, v106);
      v107 = OUTLINED_FUNCTION_124_0();
      *(v0 + 1528) = sub_1AC6DC7DC(v107, v108);
      v109 = swift_task_alloc();
      *(v0 + 1536) = v109;
      *v109 = v0;
      OUTLINED_FUNCTION_185_1();
      OUTLINED_FUNCTION_251();

      sub_1AC68E9AC();
      return;
    }

    v71 = *(v0 + 1432);
    v72 = *(v0 + 1096);

    v73 = *(v72 + 16);
    *(v0 + 1560) = v73;
    if (!v73)
    {
      break;
    }

    v142 = v5;
    v74 = (*(v0 + 1096) + 32);
    v41 = &qword_1EB56C8C8;
    do
    {
      v1 = *v74;
      swift_getObjectType();
      v75 = dynamic_cast_existential_1_conditional(v1);
      if (v75)
      {
        OUTLINED_FUNCTION_379(v75);
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8C8, &qword_1AC7AAE00);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF80, &qword_1AC7A8390);
        OUTLINED_FUNCTION_203_0();
        if (swift_dynamicCast())
        {
          sub_1AC5D9384((v0 + 256), v0 + 216);
          type metadata accessor for CommandRecognizer(0);
          OUTLINED_FUNCTION_93();
          if (swift_dynamicCastClass())
          {
            OUTLINED_FUNCTION_659();
            v76 = off_1EB56C8E0;
            swift_unknownObjectRetain();
            v77 = v76(&OBJC_IVAR____TtC6Speech17CommandRecognizer_transcriber, &protocol descriptor for TranscriberBackedSpeechModule);
            v41 = &qword_1EB56C8C8;
            sub_1AC71E6B4(v77);
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0((v0 + 216));
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      v74 += 2;
      --v73;
    }

    while (v73);
    v57 = 0;
    v8 = *(v0 + 1096);
    v35 = (v8 + 4);
    v5 = v142;
    while (1)
    {
      OUTLINED_FUNCTION_629();
      if (v78)
      {
        break;
      }

      *(v0 + 1584) = *v35;
      type metadata accessor for LanguageDetector(0);
      OUTLINED_FUNCTION_93();
      v79 = swift_dynamicCastClass();
      *(v0 + 1592) = v79;
      if (v79)
      {
        v117 = v79;
        OUTLINED_FUNCTION_567();
        OUTLINED_FUNCTION_487(OBJC_IVAR____TtC6Speech16LanguageDetector_detectorOptions);
        sub_1AC68A29C(v117);
        swift_task_alloc();
        OUTLINED_FUNCTION_100();
        *(v0 + 1600) = v118;
        *v118 = v119;
        OUTLINED_FUNCTION_57_4(v118);
        OUTLINED_FUNCTION_251();

        sub_1AC765C80();
        return;
      }

      OUTLINED_FUNCTION_626();
      if (v70)
      {
        goto LABEL_50;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    v135 = *(v5 + 16);
    OUTLINED_FUNCTION_53_3();
    sub_1AC5CB1EC();
    v5 = v136;
  }

LABEL_50:
  *(v0 + 1624) = v5;
  v80 = *(v0 + 744);
  sub_1AC7A0338();
  v81 = *(v5 + 16);
  *(v0 + 1632) = v81;
  if (v81)
  {
    OUTLINED_FUNCTION_238();
    OUTLINED_FUNCTION_607();
    v144 = v82;
    OUTLINED_FUNCTION_624();
    OUTLINED_FUNCTION_310(v83);
    swift_getObjectType();
    OUTLINED_FUNCTION_235();
    v145 = swift_allocObject();
    OUTLINED_FUNCTION_444(v145);
    OUTLINED_FUNCTION_99();
    v138 = swift_allocObject();
    OUTLINED_FUNCTION_290(v138);
    v139 = *(v35 + 16);
    v84 = OUTLINED_FUNCTION_321();
    v85(v84);
    v86 = *(v35 + 80);
    OUTLINED_FUNCTION_347();
    OUTLINED_FUNCTION_173_1();
    v87 = OUTLINED_FUNCTION_656();
    v88 = OUTLINED_FUNCTION_383(v87);
    v89(v88);
    *&v41[v1] = v145;
    *(v8 + v1) = v138;
    OUTLINED_FUNCTION_235();
    v90 = swift_allocObject();
    OUTLINED_FUNCTION_335(v90);
    swift_weakInit();
    v139(v144, v140, v57);
    v91 = OUTLINED_FUNCTION_655();
    v92 = OUTLINED_FUNCTION_345(v91);
    v93(v92);
    *&v41[v91] = v8;
    OUTLINED_FUNCTION_610();
    swift_unknownObjectRetain();

    v146 = (v35 + *v35);
    v94 = *(v35 + 4);
    v95 = swift_task_alloc();
    v96 = OUTLINED_FUNCTION_589(v95);
    *v96 = v97;
    v98 = OUTLINED_FUNCTION_35_5(v96);
    OUTLINED_FUNCTION_617(v98, sub_1AC68A188);
    OUTLINED_FUNCTION_251();

    __asm { BRAA            X6, X16 }
  }

  v121 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_558();

  *(v0 + 1696) = *(v8 + v57);
  v122 = sub_1AC61C24C(v121);
  OUTLINED_FUNCTION_561(v122);
  if (!v121)
  {
    OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_52_2();
    v141 = *(v0 + 776);
    v143 = *(v0 + 752);
    OUTLINED_FUNCTION_340();
    OUTLINED_FUNCTION_233();
    v132();

    OUTLINED_FUNCTION_3_7();
    sub_1AC68A2BC();

    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_251();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_514();
  if (v70)
  {
    OUTLINED_FUNCTION_513(v123, v124);
    if (!v127)
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_537(v125, v126);
  }

  else
  {
    MEMORY[0x1B26E95B0](0);
  }

  OUTLINED_FUNCTION_343();
  v128 = swift_task_alloc();
  v129 = OUTLINED_FUNCTION_497(v128);
  *v129 = v130;
  OUTLINED_FUNCTION_23_4(v129);
  OUTLINED_FUNCTION_251();

  sub_1AC690BA8();
}

uint64_t sub_1AC66ADD4()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 1600);
  *v4 = *v1;
  *(v3 + 1608) = v7;
  *(v3 + 1616) = v0;

  if (v0)
  {
    v8 = *(v3 + 1576);
    v9 = *(v3 + 1096);
    v10 = *(v3 + 696);
    v11 = *(v3 + 488);
    v12 = *(v3 + 496);
    sub_1AC68A2AC(*(v3 + 480));

    v13 = sub_1AC66CC08;
    v14 = v10;
  }

  else
  {
    v15 = *(v3 + 696);
    v16 = *(v3 + 488);
    v17 = *(v3 + 496);
    sub_1AC68A2AC(*(v3 + 480));
    v13 = sub_1AC66AF24;
    v14 = v15;
  }

  return MEMORY[0x1EEE6DFA0](v13, v14, 0);
}

void sub_1AC66AF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_633();
  v35 = *(v31 + 1608);
  if (v35)
  {
    v36 = *(v31 + 1592);
    v37 = *(v31 + 1576);
    v38 = *(v31 + 1608);

    sub_1AC6AB720(v39);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(v31 + 1576);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_30:
      OUTLINED_FUNCTION_31_2();
      sub_1AC5CB1EC();
      v41 = v113;
    }

    v43 = *(v41 + 16);
    v42 = *(v41 + 24);
    v30 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      OUTLINED_FUNCTION_9(v42);
      sub_1AC5CB1EC();
      v41 = v114;
    }

    v44 = *(v31 + 1584);
    swift_unknownObjectRelease();
    v45 = sub_1AC68A730(&qword_1EB56C8C0, type metadata accessor for LanguageDetectorWorker);
    *(v41 + 16) = v30;
    v46 = v41 + 16 * v43;
    *(v46 + 32) = v35;
    *(v46 + 40) = v45;
  }

  else
  {
    v47 = *(v31 + 1584);
    swift_unknownObjectRelease();
    v41 = *(v31 + 1576);
  }

  v48 = *(v31 + 1560);
  v49 = *(v31 + 1568);
  OUTLINED_FUNCTION_457();
  while (v48 != v32)
  {
    *(v31 + 1576) = v41;
    *(v31 + 1568) = v32;
    OUTLINED_FUNCTION_276();
    if (v32 >= v51)
    {
      __break(1u);
      goto LABEL_30;
    }

    v35 = *(v50 + v33);
    *(v31 + 1584) = v35;
    type metadata accessor for LanguageDetector(0);
    OUTLINED_FUNCTION_287();
    *(v31 + 1592) = swift_dynamicCastClass();
    OUTLINED_FUNCTION_284();
    if (v52)
    {
      v53 = v52;
      OUTLINED_FUNCTION_567();
      v54 = *(v53 + OBJC_IVAR____TtC6Speech16LanguageDetector_detectorOptions + 8);
      v55 = *(v53 + OBJC_IVAR____TtC6Speech16LanguageDetector_detectorOptions + 16);
      *(v31 + 480) = *(v53 + OBJC_IVAR____TtC6Speech16LanguageDetector_detectorOptions);
      *(v31 + 488) = v54;
      *(v31 + 496) = v55;
      swift_unknownObjectRetain();
      v56 = OUTLINED_FUNCTION_73_1();
      sub_1AC68A29C(v56);
      swift_task_alloc();
      OUTLINED_FUNCTION_100();
      *(v31 + 1600) = v57;
      *v57 = v58;
      OUTLINED_FUNCTION_57_4();
      OUTLINED_FUNCTION_262();

      sub_1AC765C80();
      return;
    }
  }

  *(v31 + 1624) = v41;
  v60 = *(v31 + 744);
  sub_1AC7A0338();
  v61 = *(v41 + 16);
  *(v31 + 1632) = v61;
  if (v61)
  {
    OUTLINED_FUNCTION_238();
    OUTLINED_FUNCTION_607();
    v121 = v62;
    OUTLINED_FUNCTION_624();
    OUTLINED_FUNCTION_310(v63);
    v117 = v41;
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_235();
    v124 = swift_allocObject();
    OUTLINED_FUNCTION_444(v124);
    OUTLINED_FUNCTION_99();
    v115 = swift_allocObject();
    OUTLINED_FUNCTION_290(v115);
    v116 = *(v32 + 2);
    v64 = OUTLINED_FUNCTION_321();
    v65(v64);
    v66 = *(v32 + 80);
    OUTLINED_FUNCTION_347();
    OUTLINED_FUNCTION_173_1();
    v67 = OUTLINED_FUNCTION_656();
    v68 = OUTLINED_FUNCTION_383(v67);
    v69(v68);
    *(v34 + v33) = v124;
    *(v48 + v34) = v115;
    OUTLINED_FUNCTION_235();
    v70 = swift_allocObject();
    OUTLINED_FUNCTION_335(v70);
    swift_weakInit();
    v116(v121, a21, v30);
    v71 = OUTLINED_FUNCTION_655();
    v72 = OUTLINED_FUNCTION_345(v71);
    v73(v72);
    *(v71 + v33) = v48;
    v122 = OUTLINED_FUNCTION_610();
    swift_unknownObjectRetain();

    v125 = v32 + *v32;
    v74 = v32[1];
    v75 = swift_task_alloc();
    v76 = OUTLINED_FUNCTION_589(v75);
    *v76 = v77;
    v78 = OUTLINED_FUNCTION_35_5(v76);
    OUTLINED_FUNCTION_617(v78, sub_1AC68A188);
    OUTLINED_FUNCTION_262();

    v85(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, a11, a12, a13, a14, a15, v30, a17, v34, v115, v116, a21, v30, v35, v117, ObjectType, v122, v125, a28, a29, a30);
  }

  else
  {
    v88 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_558();

    *(v31 + 1696) = *(v48 + v30);
    v89 = sub_1AC61C24C(v88);
    OUTLINED_FUNCTION_561(v89);
    if (v88)
    {
      OUTLINED_FUNCTION_514();
      if (v92)
      {
        OUTLINED_FUNCTION_513(v90, v91);
        if (!v95)
        {
          __break(1u);
          return;
        }

        OUTLINED_FUNCTION_537(v93, v94);
      }

      else
      {
        MEMORY[0x1B26E95B0](0);
      }

      OUTLINED_FUNCTION_343();
      v96 = swift_task_alloc();
      v97 = OUTLINED_FUNCTION_497(v96);
      *v97 = v98;
      OUTLINED_FUNCTION_23_4(v97);
      OUTLINED_FUNCTION_262();

      sub_1AC690BA8();
    }

    else
    {
      OUTLINED_FUNCTION_27_5();
      OUTLINED_FUNCTION_52_2();
      OUTLINED_FUNCTION_260();
      v118 = v101;
      v120 = v100;
      OUTLINED_FUNCTION_340();
      v123 = v103;
      v126 = v102;
      OUTLINED_FUNCTION_233();
      v104();

      OUTLINED_FUNCTION_3_7();
      sub_1AC68A2BC();

      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_262();

      v106(v105, v106, v107, v108, v109, v110, v111, v112, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, v118, v120, v123, v126, a28, a29, a30);
    }
  }
}

uint64_t sub_1AC66B518()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v2 = v1[210];
  v3 = v1[209];
  v4 = v1[208];
  v5 = v1[207];
  v6 = v1[87];
  v7 = *v0;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  return MEMORY[0x1EEE6DFA0](sub_1AC66B674, v6, 0);
}

void sub_1AC66B674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_633();
  v33 = v31[206];
  v34 = v31[205];
  v35 = v31[204];
  swift_unknownObjectRelease();
  if (v34 + 1 == v35)
  {
    v36 = 0;
    v37 = MEMORY[0x1E69E7CC0];
    v114 = MEMORY[0x1E69E7CC0];
    v38 = v31[203] + 32;
LABEL_3:
    v31[211] = v37;
    v39 = v31[204];
    v40 = (v38 + 16 * v36);
    v41 = v31[203];
    while (v39 != v36)
    {
      if (v36 >= *(v41 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      v42 = v40 + 2;
      ++v36;
      v43 = *v40;
      v44 = object_getClass(*v40) != _TtC6Speech22SpeechRecognizerWorker || v43 == 0;
      v40 = v42;
      if (!v44)
      {
        v45 = swift_unknownObjectRetain();
        MEMORY[0x1B26E8CF0](v45);
        OUTLINED_FUNCTION_483(v114);
        if (v46)
        {
          sub_1AC7A0178();
        }

        OUTLINED_FUNCTION_172();
        sub_1AC7A0198();
        v37 = v114;
        goto LABEL_3;
      }
    }

    v76 = v31[184];
    v77 = v31[137];
    v78 = v31[87];

    v31[212] = *(v78 + v76);
    v79 = sub_1AC61C24C(v37);
    OUTLINED_FUNCTION_561(v79);
    if (v37)
    {
      OUTLINED_FUNCTION_514();
      if (v44)
      {
        OUTLINED_FUNCTION_513(v80, v81);
        if (!v84)
        {
          __break(1u);
          return;
        }

        OUTLINED_FUNCTION_537(v82, v83);
      }

      else
      {
LABEL_28:
        MEMORY[0x1B26E95B0](0);
      }

      OUTLINED_FUNCTION_343();
      v85 = swift_task_alloc();
      v86 = OUTLINED_FUNCTION_497(v85);
      *v86 = v87;
      OUTLINED_FUNCTION_23_4(v86);
      OUTLINED_FUNCTION_262();

      sub_1AC690BA8();
      return;
    }

    OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_207_0();
    v102 = v31[100];
    v105 = v31[97];
    v107 = v31[94];
    v103 = v31[93];
    v110 = v31[92];
    v113 = v31[91];
    OUTLINED_FUNCTION_233();
    v89();

    OUTLINED_FUNCTION_3_7();
    sub_1AC68A2BC();

    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_262();

    v91(v90, v91, v92, v93, v94, v95, v96, v97, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v102, v103, v105, v107, v110, v113, v114, a28, a29, a30);
  }

  else
  {
    ++v31[205];
    v47 = v31[203];
    v101 = v31[93];
    v98 = v31[92];
    v108 = v31[91];
    v48 = v31[90];
    v49 = v31[89];
    OUTLINED_FUNCTION_624();
    OUTLINED_FUNCTION_310(v51 + 16 * v50);
    v104 = v34;
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_235();
    v111 = swift_allocObject();
    OUTLINED_FUNCTION_444(v111);
    OUTLINED_FUNCTION_99();
    v99 = swift_allocObject();
    OUTLINED_FUNCTION_290(v99);
    v100 = *(v49 + 2);
    v52 = OUTLINED_FUNCTION_387();
    v53(v52);
    v54 = *(v49 + 80);
    OUTLINED_FUNCTION_347();
    OUTLINED_FUNCTION_173_1();
    v55 = OUTLINED_FUNCTION_656();
    v56 = OUTLINED_FUNCTION_441(v55);
    v57(v56);
    *(v55 + v48) = v111;
    *(v55 + v32) = v99;
    OUTLINED_FUNCTION_235();
    v58 = swift_allocObject();
    OUTLINED_FUNCTION_335(v58);
    swift_weakInit();
    v100(v108, v101, v30);
    v59 = OUTLINED_FUNCTION_655();
    v60 = OUTLINED_FUNCTION_345(v59);
    v61(v60);
    *(v59 + v48) = v32;
    v109 = OUTLINED_FUNCTION_610();
    swift_unknownObjectRetain();

    v112 = v49 + *v49;
    v62 = v49[1];
    v63 = swift_task_alloc();
    v64 = OUTLINED_FUNCTION_589(v63);
    *v64 = v65;
    v66 = OUTLINED_FUNCTION_35_5();
    OUTLINED_FUNCTION_617(v66, sub_1AC68A188);
    OUTLINED_FUNCTION_262();

    v73(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, v98, v30, a16, v55, v99, v100, v101, v30, v35, v104, ObjectType, v109, v112, a27, a28, a29, a30);
  }
}

uint64_t sub_1AC66BBD4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 1728);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  v3[217] = v0;

  if (v0)
  {
    v9 = v3[211];
    v10 = v3[87];

    v11 = sub_1AC66CDC0;
    v12 = v10;
  }

  else
  {
    v12 = v3[87];
    v11 = sub_1AC66BCE4;
  }

  return MEMORY[0x1EEE6DFA0](v11, v12, 0);
}

void sub_1AC66BCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_633();
  v31 = v30[214];

  v32 = v30[215];
  if (v32 == v30[213])
  {
    OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_52_2();
    OUTLINED_FUNCTION_260();
    v56 = v34;
    v57 = v33;
    OUTLINED_FUNCTION_340();
    v58 = v36;
    v59 = v35;
    OUTLINED_FUNCTION_233();
    v37();

    OUTLINED_FUNCTION_3_7();
    sub_1AC68A2BC();

    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_262();

    v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, v56, v57, v58, v59, a28, a29, a30);
    return;
  }

  OUTLINED_FUNCTION_514();
  if (v48)
  {
    OUTLINED_FUNCTION_513(v46, v47);
    if (v32 >= v50)
    {
LABEL_14:
      __break(1u);
      return;
    }

    v55 = *(v49 + 8 * v32 + 32);
  }

  else
  {
    v55 = MEMORY[0x1B26E95B0](v32);
  }

  v30[214] = v55;
  v30[215] = v32 + 1;
  if (__OFADD__(v32, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v51 = swift_task_alloc();
  v52 = OUTLINED_FUNCTION_497(v51);
  *v52 = v53;
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_262();

  sub_1AC690BA8();
}

uint64_t sub_1AC66BEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_275();
  v27 = v26[124];
  swift_unknownObjectRelease();
  v61 = v26[126];
  v28 = v26[120];
  v29 = v26[119];
  v30 = v26[118];
  v31 = v26[115];
  v32 = v26[114];
  v33 = v26[113];
  v34 = v26[112];
  v35 = v26[111];
  v36 = v26[110];
  v48 = v26[108];
  v49 = v26[107];
  v50 = v26[105];
  v51 = v26[104];
  v52 = v26[103];
  v53 = v26[102];
  v54 = v26[101];
  v55 = v26[100];
  OUTLINED_FUNCTION_260();
  v56 = v38;
  v57 = v37;
  v58 = v26[93];
  v59 = v26[92];
  v60 = v26[91];
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_249();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, a24, a25, a26);
}

uint64_t sub_1AC66C08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_275();
  v27 = v26[142];
  swift_unknownObjectRelease();
  v28 = v26[75];

  v62 = v26[144];
  v29 = v26[120];
  v30 = v26[119];
  v31 = v26[118];
  v32 = v26[115];
  v33 = v26[114];
  v34 = v26[113];
  v35 = v26[112];
  v36 = v26[111];
  v37 = v26[110];
  v49 = v26[108];
  v50 = v26[107];
  v51 = v26[105];
  v52 = v26[104];
  v53 = v26[103];
  v54 = v26[102];
  v55 = v26[101];
  v56 = v26[100];
  OUTLINED_FUNCTION_260();
  v57 = v39;
  v58 = v38;
  v59 = v26[93];
  v60 = v26[92];
  v61 = v26[91];
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_249();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, a24, a25, a26);
}

uint64_t sub_1AC66C228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_275();
  v27 = v26[147];
  swift_unknownObjectRelease();
  v28 = v26[75];

  v62 = v26[149];
  v29 = v26[120];
  v30 = v26[119];
  v31 = v26[118];
  v32 = v26[115];
  v33 = v26[114];
  v34 = v26[113];
  v35 = v26[112];
  v36 = v26[111];
  v37 = v26[110];
  v49 = v26[108];
  v50 = v26[107];
  v51 = v26[105];
  v52 = v26[104];
  v53 = v26[103];
  v54 = v26[102];
  v55 = v26[101];
  v56 = v26[100];
  OUTLINED_FUNCTION_260();
  v57 = v39;
  v58 = v38;
  v59 = v26[93];
  v60 = v26[92];
  v61 = v26[91];
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_249();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, a24, a25, a26);
}

uint64_t sub_1AC66C3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_275();
  v27 = v26[152];
  swift_unknownObjectRelease();
  v28 = v26[75];

  v62 = v26[154];
  v29 = v26[120];
  v30 = v26[119];
  v31 = v26[118];
  v32 = v26[115];
  v33 = v26[114];
  v34 = v26[113];
  v35 = v26[112];
  v36 = v26[111];
  v37 = v26[110];
  v49 = v26[108];
  v50 = v26[107];
  v51 = v26[105];
  v52 = v26[104];
  v53 = v26[103];
  v54 = v26[102];
  v55 = v26[101];
  v56 = v26[100];
  OUTLINED_FUNCTION_260();
  v57 = v39;
  v58 = v38;
  v59 = v26[93];
  v60 = v26[92];
  v61 = v26[91];
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_249();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, a24, a25, a26);
}

uint64_t sub_1AC66C560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_275();
  v27 = v26[157];
  swift_unknownObjectRelease();
  v28 = v26[75];

  v62 = v26[159];
  v29 = v26[120];
  v30 = v26[119];
  v31 = v26[118];
  v32 = v26[115];
  v33 = v26[114];
  v34 = v26[113];
  v35 = v26[112];
  v36 = v26[111];
  v37 = v26[110];
  v49 = v26[108];
  v50 = v26[107];
  v51 = v26[105];
  v52 = v26[104];
  v53 = v26[103];
  v54 = v26[102];
  v55 = v26[101];
  v56 = v26[100];
  OUTLINED_FUNCTION_260();
  v57 = v39;
  v58 = v38;
  v59 = v26[93];
  v60 = v26[92];
  v61 = v26[91];
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_249();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, a24, a25, a26);
}

uint64_t sub_1AC66C6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_275();
  v27 = v26[162];
  swift_unknownObjectRelease();
  v28 = v26[75];

  v62 = v26[164];
  v29 = v26[120];
  v30 = v26[119];
  v31 = v26[118];
  v32 = v26[115];
  v33 = v26[114];
  v34 = v26[113];
  v35 = v26[112];
  v36 = v26[111];
  v37 = v26[110];
  v49 = v26[108];
  v50 = v26[107];
  v51 = v26[105];
  v52 = v26[104];
  v53 = v26[103];
  v54 = v26[102];
  v55 = v26[101];
  v56 = v26[100];
  OUTLINED_FUNCTION_260();
  v57 = v39;
  v58 = v38;
  v59 = v26[93];
  v60 = v26[92];
  v61 = v26[91];
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_249();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, a24, a25, a26);
}

uint64_t sub_1AC66C898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_275();
  v27 = v26[167];
  swift_unknownObjectRelease();
  v28 = v26[75];

  v62 = v26[169];
  v29 = v26[120];
  v30 = v26[119];
  v31 = v26[118];
  v32 = v26[115];
  v33 = v26[114];
  v34 = v26[113];
  v35 = v26[112];
  v36 = v26[111];
  v37 = v26[110];
  v49 = v26[108];
  v50 = v26[107];
  v51 = v26[105];
  v52 = v26[104];
  v53 = v26[103];
  v54 = v26[102];
  v55 = v26[101];
  v56 = v26[100];
  OUTLINED_FUNCTION_260();
  v57 = v39;
  v58 = v38;
  v59 = v26[93];
  v60 = v26[92];
  v61 = v26[91];
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_249();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, a24, a25, a26);
}

uint64_t sub_1AC66CA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_275();
  v27 = v26[191];
  v28 = v26[185];
  v29 = v26[180];
  v30 = v26[179];
  v31 = v26[100];

  OUTLINED_FUNCTION_2_6();
  sub_1AC68A2BC();

  v65 = v26[194];
  v32 = v26[120];
  v33 = v26[119];
  v34 = v26[118];
  v35 = v26[115];
  v36 = v26[114];
  v37 = v26[113];
  v38 = v26[112];
  v39 = v26[111];
  v40 = v26[110];
  v52 = v26[108];
  v53 = v26[107];
  v54 = v26[105];
  v55 = v26[104];
  v56 = v26[103];
  v57 = v26[102];
  v58 = v26[101];
  v59 = v26[100];
  OUTLINED_FUNCTION_260();
  v60 = v42;
  v61 = v41;
  v62 = v26[93];
  v63 = v26[92];
  v64 = v26[91];
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_249();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, a24, a25, a26);
}

uint64_t sub_1AC66CC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_275();
  v27 = v26[198];
  v28 = v26[185];
  v29 = v26[180];
  v30 = v26[179];

  swift_unknownObjectRelease();

  v64 = v26[202];
  v31 = v26[120];
  v32 = v26[119];
  v33 = v26[118];
  v34 = v26[115];
  v35 = v26[114];
  v36 = v26[113];
  v37 = v26[112];
  v38 = v26[111];
  v39 = v26[110];
  v51 = v26[108];
  v52 = v26[107];
  v53 = v26[105];
  v54 = v26[104];
  v55 = v26[103];
  v56 = v26[102];
  v57 = v26[101];
  v58 = v26[100];
  OUTLINED_FUNCTION_260();
  v59 = v41;
  v60 = v40;
  v61 = v26[93];
  v62 = v26[92];
  v63 = v26[91];
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_249();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, a24, a25, a26);
}

uint64_t sub_1AC66CDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_275();
  v27 = v26[214];
  v28 = v26[212];
  v29 = v26[185];
  v30 = v26[180];
  v31 = v26[179];
  v32 = v26[93];
  v33 = v26[89];
  v34 = v26[88];

  v35 = *(v33 + 8);
  v36 = OUTLINED_FUNCTION_142();
  v37(v36);

  v71 = v26[217];
  v38 = v26[120];
  v39 = v26[119];
  v40 = v26[118];
  v41 = v26[115];
  v42 = v26[114];
  v43 = v26[113];
  v44 = v26[112];
  v45 = v26[111];
  v46 = v26[110];
  v58 = v26[108];
  v59 = v26[107];
  v60 = v26[105];
  v61 = v26[104];
  v62 = v26[103];
  v63 = v26[102];
  v64 = v26[101];
  v65 = v26[100];
  OUTLINED_FUNCTION_260();
  v66 = v48;
  v67 = v47;
  v68 = v26[93];
  v69 = v26[92];
  v70 = v26[91];
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();

  OUTLINED_FUNCTION_90_3();
  OUTLINED_FUNCTION_249();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, a24, a25, a26);
}

uint64_t sub_1AC66CFA4(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v4 = *a2;
  v3 = a2[1];
  ObjectType = swift_getObjectType();
  v6 = *(v3 + 32);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v2 + 24) = v8;
  *v8 = v2;
  v8[1] = sub_1AC66D0D0;

  return v10(v2 + 32, ObjectType, v3);
}

uint64_t sub_1AC66D0D0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC66D1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v3[2] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1AC66D1DC, 0, 0);
}

uint64_t sub_1AC66D1DC()
{
  OUTLINED_FUNCTION_72();
  if (*(*(v0 + 48) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C800, &qword_1AC7AAB98);
    v1 = swift_task_alloc();
    OUTLINED_FUNCTION_519(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C808, &qword_1AC7AABB0);
    v2 = *(MEMORY[0x1E69E88A0] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    *(v0 + 64) = v3;
    *v3 = v4;
    v3[1] = sub_1AC66D310;
    v5 = OUTLINED_FUNCTION_323();

    return MEMORY[0x1EEE6DD58](v5);
  }

  else
  {
    OUTLINED_FUNCTION_82();
    v7 = MEMORY[0x1E69E7CC0];

    return v6(v7);
  }
}

uint64_t sub_1AC66D310()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (!v0)
  {
    v9 = *(v3 + 56);
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC66D410()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_44();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_1AC66D46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a1;
  v3[21] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EB56C8E0, &qword_1AC7AAE48);
  v3[22] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
  v3[24] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v10 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v3[27] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8F0, &qword_1AC7AAE58) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A0, &qword_1AC7AADE8) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[16] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1AC66D644, a3, 0);
}

uint64_t sub_1AC66DE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a1;
  v3[21] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EB56C8E0, &qword_1AC7AAE48);
  v3[22] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
  v3[24] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v10 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v3[27] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8F0, &qword_1AC7AAE58) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A0, &qword_1AC7AADE8) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[16] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1AC66E034, a3, 0);
}

uint64_t sub_1AC66E85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a1;
  v3[21] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EB56C8E0, &qword_1AC7AAE48);
  v3[22] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
  v3[24] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v10 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v3[27] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8F0, &qword_1AC7AAE58) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A0, &qword_1AC7AADE8) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[16] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1AC66EA34, a3, 0);
}

uint64_t sub_1AC66F25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a1;
  v3[21] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EB56C8E0, &qword_1AC7AAE48);
  v3[22] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
  v3[24] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v10 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v3[27] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8F0, &qword_1AC7AAE58) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A0, &qword_1AC7AADE8) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[16] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1AC66F434, a3, 0);
}

uint64_t sub_1AC66FC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a1;
  v3[21] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EB56C8E0, &qword_1AC7AAE48);
  v3[22] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
  v3[24] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v10 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v3[27] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8F0, &qword_1AC7AAE58) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A0, &qword_1AC7AADE8) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[16] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1AC66FE34, a3, 0);
}

uint64_t sub_1AC6706AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a1;
  v3[21] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EB56C8E0, &qword_1AC7AAE48);
  v3[22] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
  v3[24] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v10 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v3[27] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8F0, &qword_1AC7AAE58) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A0, &qword_1AC7AADE8) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[16] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1AC670878, a3, 0);
}

void sub_1AC670878()
{
  v132 = v0;
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  v4 = *(v0 + 256);
  v5 = *(v0 + 216);
  v6 = *(v0 + 176);
  v7 = **(v0 + 168);

  sub_1AC605538(v8);
  OUTLINED_FUNCTION_363();
  v9 = swift_task_alloc();
  OUTLINED_FUNCTION_427(v9);
  OUTLINED_FUNCTION_98_1();

  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v6);
  v13 = OUTLINED_FUNCTION_204_0();
  sub_1AC68A3F8(v13, v14, v15, v16);
  v17 = OUTLINED_FUNCTION_55_2();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, v18, v5);
  v20 = *(v0 + 264);
  if (EnumTagSinglePayload != 1)
  {
    sub_1AC61B988(v20, *(v0 + 248));
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v41 = OUTLINED_FUNCTION_394();
    __swift_project_value_buffer(v41, qword_1ED9386C8);
    OUTLINED_FUNCTION_29_5();
    swift_retain_n();
    v42 = sub_1AC79FDC8();
    v43 = sub_1AC7A05E8();
    if (OUTLINED_FUNCTION_318(v43))
    {
      OUTLINED_FUNCTION_150();
      v131[0] = OUTLINED_FUNCTION_202();
      OUTLINED_FUNCTION_159_1(4.8149e-34);
      type metadata accessor for SpeechDetector();
      v44 = OUTLINED_FUNCTION_563();
      sub_1AC5CFE74(v44, v45, v131);
      OUTLINED_FUNCTION_430();
      *(v7 + 4) = v4;
      OUTLINED_FUNCTION_94();
      _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_77_1();
    }

    else
    {
      v60 = *(v0 + 160);
    }

    v62 = *(v0 + 240);
    v61 = *(v0 + 248);
    v63 = *(v0 + 168);
    v64 = *v63;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_7();
    v65 = OUTLINED_FUNCTION_123();
    sub_1AC68A130(v65, v66);
    v131[0] = *v63;
    v67 = sub_1AC6E08C4(v62);
    OUTLINED_FUNCTION_82_2(v67, v68);
    if (v69)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_442();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C910, &qword_1AC7AAE78);
      if (sub_1AC7A0B18())
      {
        sub_1AC6E08C4(*(v0 + 240));
        OUTLINED_FUNCTION_142_1();
        if (!v25)
        {
          v71 = *(v0 + 216);
          OUTLINED_FUNCTION_403();

          sub_1AC7A0DC8();
          return;
        }

        v62 = v70;
      }

      if (v63)
      {
        v6 = v131[0];
        v104 = *(*(v131[0] + 56) + 8 * v62);

        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_31:
          OUTLINED_FUNCTION_141_1();
          if (v106)
          {
            OUTLINED_FUNCTION_46_6(v105);
            sub_1AC60E4F8();
          }

          v108 = *(v0 + 248);
          v107 = *(v0 + 256);
          v109 = *(v0 + 240);
          v110 = *(v0 + 160);
          v128 = *(v0 + 272);
          v130 = *(v0 + 168);
          *(v0 + 112) = type metadata accessor for SpeechDetector();
          OUTLINED_FUNCTION_267();
          v113 = sub_1AC68A730(v111, v112);
          OUTLINED_FUNCTION_37_6(v113);
          OUTLINED_FUNCTION_20_5();
          sub_1AC68A2BC();
          OUTLINED_FUNCTION_360();
          sub_1AC68A2BC();
          sub_1AC5C9624(v107, &qword_1EB56C8F0, &qword_1AC7AAE58);
          sub_1AC5C9624(v128, &qword_1EB56C8A0, &qword_1AC7AADE8);

          *v130 = v6;
LABEL_34:
          v115 = *(v0 + 264);
          v114 = *(v0 + 272);
          v117 = *(v0 + 248);
          v116 = *(v0 + 256);
          v119 = *(v0 + 232);
          v118 = *(v0 + 240);
          v120 = *(v0 + 224);
          v122 = *(v0 + 200);
          v121 = *(v0 + 208);
          v123 = *(v0 + 184);

          OUTLINED_FUNCTION_29();
          OUTLINED_FUNCTION_403();

          __asm { BRAA            X1, X16 }
        }

LABEL_39:
        OUTLINED_FUNCTION_31_2();
        sub_1AC60E4F8();
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

  v21 = *(v0 + 256);
  v23 = *(v0 + 184);
  v22 = *(v0 + 192);
  v24 = *(v0 + 160);
  sub_1AC5C9624(v20, &qword_1EB56C8A0, &qword_1AC7AADE8);
  sub_1AC67124C();
  OUTLINED_FUNCTION_65_4(v23);
  if (v25)
  {
    OUTLINED_FUNCTION_569();
    sub_1AC5C9624(v21, &off_1EB56C8E0, &qword_1AC7AAE48);
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v26 = OUTLINED_FUNCTION_394();
    __swift_project_value_buffer(v26, qword_1ED9386C8);
    OUTLINED_FUNCTION_117_2();

    v27 = sub_1AC79FDC8();
    v28 = sub_1AC7A05E8();
    v29 = OUTLINED_FUNCTION_153(v28);
    v30 = *(v0 + 160);
    if (v29)
    {
      v31 = OUTLINED_FUNCTION_150();
      v32 = swift_slowAlloc();
      v131[0] = v32;
      *v31 = 136315138;
      *(v0 + 136) = v30;
      type metadata accessor for SpeechDetector();
      v33 = OUTLINED_FUNCTION_564();
      v35 = sub_1AC5CFE74(v33, v34, v131);

      *(v31 + 4) = v35;
      OUTLINED_FUNCTION_69();
      _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_129();
    }

    else
    {
      v73 = *(v0 + 160);
    }

    sub_1AC7A0B78();
    OUTLINED_FUNCTION_403();
  }

  else
  {
    v51 = OUTLINED_FUNCTION_428();
    sub_1AC68A444(v51, v52, &qword_1EB56C8E8, &qword_1AC7AAE50);
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v53 = OUTLINED_FUNCTION_394();
    __swift_project_value_buffer(v53, qword_1ED9386C8);
    OUTLINED_FUNCTION_168_1();
    swift_retain_n();
    v54 = sub_1AC79FDC8();
    sub_1AC7A05E8();
    OUTLINED_FUNCTION_348();
    if (os_log_type_enabled(v54, v55))
    {
      OUTLINED_FUNCTION_150();
      v131[0] = OUTLINED_FUNCTION_230();
      OUTLINED_FUNCTION_156_1(4.8149e-34);
      type metadata accessor for SpeechDetector();
      v56 = OUTLINED_FUNCTION_565();
      sub_1AC5CFE74(v56, v57, v131);
      OUTLINED_FUNCTION_550();
      *(v23 + 4) = v1;
      OUTLINED_FUNCTION_179_1(&dword_1AC5BC000, v58, v59, "SpeechAnalyzer.updateWorkerGroups: Adding %s to modified group");
      OUTLINED_FUNCTION_148_1();
      OUTLINED_FUNCTION_125_1();
    }

    else
    {
      v74 = *(v0 + 160);
    }

    v76 = *(v0 + 224);
    v75 = *(v0 + 232);
    v77 = *(v0 + 192);
    sub_1AC68A3F8(*(v0 + 208), *(v0 + 200), &qword_1EB56C8E8, &qword_1AC7AAE50);
    v78 = *(v77 + 48);
    v79 = OUTLINED_FUNCTION_204_0();
    sub_1AC61B988(v79, v80);
    OUTLINED_FUNCTION_547();
    v81 = OUTLINED_FUNCTION_198();
    v83 = sub_1AC6DC790(v81, v82);
    if (v83)
    {
      v84 = v83;
      v127 = *(v0 + 256);
      v129 = *(v0 + 272);
      v86 = *(v0 + 224);
      v85 = *(v0 + 232);
      v87 = *(v0 + 216);
      v126 = *(v0 + 208);
      v88 = *(v0 + 160);
      v89 = *(v0 + 168);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF78, &unk_1AC7A9270);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AC7A6D00;
      *(inited + 56) = type metadata accessor for SpeechDetector();
      OUTLINED_FUNCTION_267();
      *(inited + 64) = sub_1AC68A730(v91, v92);
      *(inited + 32) = v88;
      v131[0] = v84;
      sub_1AC659150(inited);
      v93 = v131[0];
      sub_1AC6EE14C(v85);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8D8, &qword_1AC7AAE20);
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A8, &qword_1AC7B1DB0);
      OUTLINED_FUNCTION_86_0(v94);
      v96 = *(v95 + 72);
      v97 = OUTLINED_FUNCTION_73_2();
      *(v97 + 16) = xmmword_1AC7A6D00;
      v98 = v97 + v88;
      v99 = *(inited + 56);
      OUTLINED_FUNCTION_1_7();
      v100 = OUTLINED_FUNCTION_387();
      sub_1AC68A130(v100, v101);
      *(v98 + v99) = v93;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D4F0, &unk_1AC7AF180);
      OUTLINED_FUNCTION_5_4();
      sub_1AC68A730(v102, v103);
      OUTLINED_FUNCTION_100_2();
      sub_1AC79FE38();
      OUTLINED_FUNCTION_4_6();
      OUTLINED_FUNCTION_556();
      OUTLINED_FUNCTION_6_5();
      sub_1AC68A2BC();
      OUTLINED_FUNCTION_390();
      sub_1AC68A2BC();
      sub_1AC5C9624(v126, &qword_1EB56C8E8, &qword_1AC7AAE50);
      sub_1AC5C9624(v127, &qword_1EB56C8F0, &qword_1AC7AAE58);
      sub_1AC5C9624(v129, &qword_1EB56C8A0, &qword_1AC7AADE8);
      goto LABEL_34;
    }

    __break(1u);
  }
}

uint64_t sub_1AC671174(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC6Speech22NormalizingTranscriber_common);
  sub_1AC744558();
  return v3 & 1;
}

uint64_t sub_1AC6711AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC6Speech20DictationTranscriber_common);
  sub_1AC744558();
  return v3 & 1;
}

uint64_t sub_1AC6711E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC6Speech17SpeechTranscriber_common);
  sub_1AC744558();
  return v3 & 1;
}

uint64_t sub_1AC67121C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  sub_1AC744558();
  return v3 & 1;
}

void sub_1AC67124C()
{
  OUTLINED_FUNCTION_104();
  v89 = v1;
  v99 = v3;
  v100 = v2;
  v5 = v4;
  v7 = v6;
  v92 = v8;
  v9 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v10 = OUTLINED_FUNCTION_40(v9);
  v97 = v11;
  v98 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v93 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A0, &qword_1AC7AADE8);
  v17 = OUTLINED_FUNCTION_167(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v86 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EB56C8E0, &qword_1AC7AAE48);
  v27 = OUTLINED_FUNCTION_80(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v87 = v30 - v31;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v32);
  v88 = &v86 - v33;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_469();
  v35 = OUTLINED_FUNCTION_142();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
  v38 = OUTLINED_FUNCTION_167(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  v90 = v41 - v42;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v86 - v44;
  v46 = OUTLINED_FUNCTION_614();
  sub_1AC68A3F8(v46, v47, &qword_1EB56C8F0, &qword_1AC7AAE58);
  v91 = v26;
  OUTLINED_FUNCTION_96(v45, 1, v26);
  if (v48)
  {
    v86 = v7;
    sub_1AC5C9624(v45, &qword_1EB56C8F0, &qword_1AC7AAE58);
    v49 = v100;
    v96 = *(v100 + 16);
    OUTLINED_FUNCTION_168_1();
    swift_retain_n();

    v50 = 0;
    v95 = v5;
    while (1)
    {
      if (v96 == v50)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
        v68 = v92;
        OUTLINED_FUNCTION_65_0();
        __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
LABEL_13:

        sub_1AC68A3F8(v68, v90, &off_1EB56C8E0, &qword_1AC7AAE48);
        v79 = OUTLINED_FUNCTION_68_3();
        __swift_storeEnumTagSinglePayload(v79, v80, v81, v91);
        OUTLINED_FUNCTION_574();
        v82 = OUTLINED_FUNCTION_89();
        sub_1AC68A6C8(v82, v83, v84, v85);
        goto LABEL_14;
      }

      v51 = *(v97 + 80);
      OUTLINED_FUNCTION_89_0();
      v54 = v49 + v52 + *(v53 + 72) * v50;
      v99(v54);
      sub_1AC68A3F8(v25, v22, &qword_1EB56C8A0, &qword_1AC7AADE8);
      v55 = OUTLINED_FUNCTION_278();
      OUTLINED_FUNCTION_96(v55, v56, v98);
      v94 = v54;
      if (v48)
      {
        sub_1AC5C9624(v25, &qword_1EB56C8A0, &qword_1AC7AADE8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
        OUTLINED_FUNCTION_65_0();
      }

      else
      {
        v57 = v25;
        v58 = v93;
        sub_1AC61B988(v22, v93);
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
        v60 = *(v59 + 48);
        OUTLINED_FUNCTION_1_7();
        sub_1AC68A130(v54, v0);
        v61 = v58;
        v25 = v57;
        sub_1AC61B988(v61, v0 + v60);
        sub_1AC5C9624(v57, &qword_1EB56C8A0, &qword_1AC7AADE8);
        OUTLINED_FUNCTION_150_1();
        v65 = v59;
      }

      __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v66);
      sub_1AC5C9624(v0, &off_1EB56C8E0, &qword_1AC7AAE48);
      if (EnumTagSinglePayload != 1)
      {
        break;
      }

      ++v50;
      v49 = v100;
    }

    v73 = v88;
    sub_1AC6722D8();

    v74 = v87;
    sub_1AC68A3F8(v73, v87, &off_1EB56C8E0, &qword_1AC7AAE48);
    OUTLINED_FUNCTION_65_4(v74);
    if (!v48)
    {
      v75 = v74;
      v68 = v92;
      sub_1AC68A444(v75, v92, &qword_1EB56C8E8, &qword_1AC7AAE50);
      sub_1AC5C9624(v73, &off_1EB56C8E0, &qword_1AC7AAE48);
      OUTLINED_FUNCTION_150_1();
      __swift_storeEnumTagSinglePayload(v76, v77, v78, v66);
      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {
    sub_1AC68A444(v45, v92, &off_1EB56C8E0, &qword_1AC7AAE48);
LABEL_14:
    OUTLINED_FUNCTION_105();
  }
}

void sub_1AC67179C()
{
  OUTLINED_FUNCTION_104();
  v112 = v0;
  v113 = v1;
  v122 = v2;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v8 = OUTLINED_FUNCTION_40(v7);
  v119 = v9;
  v120 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6();
  v115 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A0, &qword_1AC7AADE8);
  v15 = OUTLINED_FUNCTION_167(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v107 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EB56C8E0, &qword_1AC7AAE48);
  v25 = OUTLINED_FUNCTION_80(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v108 = v28 - v29;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v30);
  v109 = &v107 - v31;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v107 - v33;
  v35 = OUTLINED_FUNCTION_88_0();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
  v38 = OUTLINED_FUNCTION_167(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  v110 = v41 - v42;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v107 - v44;
  v46 = OUTLINED_FUNCTION_204_0();
  sub_1AC68A3F8(v46, v47, &qword_1EB56C8F0, &qword_1AC7AAE58);
  v48 = OUTLINED_FUNCTION_55_2();
  v111 = v24;
  OUTLINED_FUNCTION_96(v48, v49, v24);
  if (v50)
  {
    v107 = v6;
    sub_1AC5C9624(v45, &qword_1EB56C8F0, &qword_1AC7AAE58);
    v51 = *(v4 + 16);
    v117 = *v112;
    v118 = v51;
    v52 = v122;
    OUTLINED_FUNCTION_168_1();
    swift_retain_n();
    v121 = v4;

    v53 = 0;
    v114 = v23;
    while (1)
    {
      if (v118 == v53)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
        v86 = v113;
        OUTLINED_FUNCTION_65_0();
        __swift_storeEnumTagSinglePayload(v87, v88, v89, v90);
LABEL_13:

        sub_1AC68A3F8(v86, v110, &off_1EB56C8E0, &qword_1AC7AAE48);
        v100 = OUTLINED_FUNCTION_68_3();
        __swift_storeEnumTagSinglePayload(v100, v101, v102, v111);
        OUTLINED_FUNCTION_574();
        v103 = OUTLINED_FUNCTION_89();
        sub_1AC68A6C8(v103, v104, v105, v106);
        goto LABEL_14;
      }

      v54 = *(v119 + 80);
      OUTLINED_FUNCTION_89_0();
      v57 = v121 + v55 + *(v56 + 72) * v53;
      v58 = *(v52 + v117);
      sub_1AC7452F0();
      v59 = OUTLINED_FUNCTION_41_4();
      sub_1AC68A3F8(v59, v60, &qword_1EB56C8A0, &qword_1AC7AADE8);
      OUTLINED_FUNCTION_96(v20, 1, v120);
      v116 = v57;
      if (v50)
      {
        v61 = OUTLINED_FUNCTION_142();
        sub_1AC5C9624(v61, v62, &qword_1AC7AADE8);
        v63 = OUTLINED_FUNCTION_289();
        __swift_instantiateConcreteTypeFromMangledNameV2(v63, v64);
        v76 = OUTLINED_FUNCTION_158_1();
      }

      else
      {
        v65 = v20;
        v66 = v20;
        v67 = v115;
        sub_1AC61B988(v65, v115);
        v68 = OUTLINED_FUNCTION_289();
        v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v68, v69) + 48);
        OUTLINED_FUNCTION_1_7();
        v71 = OUTLINED_FUNCTION_172();
        sub_1AC68A130(v71, v72);
        v73 = v67;
        v20 = v66;
        sub_1AC61B988(v73, &v34[v70]);
        v74 = OUTLINED_FUNCTION_117();
        sub_1AC5C9624(v74, v75, &qword_1AC7AADE8);
        OUTLINED_FUNCTION_113_2();
      }

      __swift_storeEnumTagSinglePayload(v76, v77, v78, v79);
      v80 = OUTLINED_FUNCTION_289();
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(v80, v81);
      v83 = OUTLINED_FUNCTION_178_1();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v83, v84, v82);
      sub_1AC5C9624(v34, &off_1EB56C8E0, &qword_1AC7AAE48);
      if (EnumTagSinglePayload != 1)
      {
        break;
      }

      ++v53;
      v52 = v122;
    }

    v91 = v109;
    sub_1AC672474();

    v92 = v108;
    sub_1AC68A3F8(v91, v108, &off_1EB56C8E0, &qword_1AC7AAE48);
    v93 = OUTLINED_FUNCTION_278();
    OUTLINED_FUNCTION_96(v93, v94, v82);
    if (!v50)
    {
      v95 = v92;
      v86 = v113;
      sub_1AC68A444(v95, v113, &qword_1EB56C8E8, &qword_1AC7AAE50);
      sub_1AC5C9624(v91, &off_1EB56C8E0, &qword_1AC7AAE48);
      OUTLINED_FUNCTION_113_2();
      __swift_storeEnumTagSinglePayload(v96, v97, v98, v99);
      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {
    sub_1AC68A444(v45, v113, &off_1EB56C8E0, &qword_1AC7AAE48);
LABEL_14:
    OUTLINED_FUNCTION_105();
  }
}

uint64_t sub_1AC671CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a3;
  v60 = a4;
  v6 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A0, &qword_1AC7AADE8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EB56C8E0, &qword_1AC7AAE48);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v56 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v57 = &v54 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v54 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8F0, &qword_1AC7AAE58);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v58 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v54 - v28;
  sub_1AC68A3F8(a1, &v54 - v28, &qword_1EB56C8F0, &qword_1AC7AAE58);
  v59 = v16;
  if (__swift_getEnumTagSinglePayload(v29, 1, v16) != 1)
  {
    return sub_1AC68A444(v29, v60, &off_1EB56C8E0, &qword_1AC7AAE48);
  }

  v55 = a1;
  sub_1AC5C9624(v29, &qword_1EB56C8F0, &qword_1AC7AAE58);
  v30 = *(a2 + 16);
  v31 = v66;
  swift_retain_n();

  v32 = 0;
  v63 = a2;
  while (1)
  {
    if (v30 == v32)
    {

      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
      v48 = v60;
      __swift_storeEnumTagSinglePayload(v60, 1, 1, v47);

      v49 = v55;
LABEL_13:

      v53 = v58;
      sub_1AC68A3F8(v48, v58, &off_1EB56C8E0, &qword_1AC7AAE48);
      __swift_storeEnumTagSinglePayload(v53, 0, 1, v59);
      swift_beginAccess();
      return sub_1AC68A6C8(v53, v49, &qword_1EB56C8F0, &qword_1AC7AAE58);
    }

    v33 = a2 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v32;
    v34 = *(v31 + 16);
    sub_1AC7452F0();
    sub_1AC68A3F8(v15, v13, &qword_1EB56C8A0, &qword_1AC7AADE8);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v65);
    v62 = v33;
    if (EnumTagSinglePayload == 1)
    {
      sub_1AC5C9624(v15, &qword_1EB56C8A0, &qword_1AC7AADE8);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
      v37 = v23;
      v38 = 1;
    }

    else
    {
      v39 = v15;
      v40 = v61;
      sub_1AC61B988(v13, v61);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
      v42 = *(v41 + 48);
      sub_1AC68A130(v33, v23);
      v43 = v40;
      v15 = v39;
      sub_1AC61B988(v43, &v23[v42]);
      sub_1AC5C9624(v39, &qword_1EB56C8A0, &qword_1AC7AADE8);
      v37 = v23;
      v38 = 0;
      v36 = v41;
    }

    __swift_storeEnumTagSinglePayload(v37, v38, 1, v36);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
    v45 = __swift_getEnumTagSinglePayload(v23, 1, v44);
    sub_1AC5C9624(v23, &off_1EB56C8E0, &qword_1AC7AAE48);
    if (v45 != 1)
    {
      break;
    }

    ++v32;
    a2 = v63;
    v31 = v66;
  }

  v50 = v57;
  sub_1AC67261C(v62, v66, v57);

  v51 = v56;
  sub_1AC68A3F8(v50, v56, &off_1EB56C8E0, &qword_1AC7AAE48);
  if (__swift_getEnumTagSinglePayload(v51, 1, v44) != 1)
  {
    v52 = v51;
    v48 = v60;
    sub_1AC68A444(v52, v60, &qword_1EB56C8E8, &qword_1AC7AAE50);
    sub_1AC5C9624(v50, &off_1EB56C8E0, &qword_1AC7AAE48);
    __swift_storeEnumTagSinglePayload(v48, 0, 1, v44);

    v49 = v55;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_1AC6722D8()
{
  OUTLINED_FUNCTION_104();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v9 = OUTLINED_FUNCTION_80(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_602();
  v12 = OUTLINED_FUNCTION_60_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  v15 = OUTLINED_FUNCTION_167(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_469();
  v3(v5);
  v22 = OUTLINED_FUNCTION_289();
  sub_1AC68A3F8(v22, v23, &qword_1EB56C8A0, &qword_1AC7AADE8);
  OUTLINED_FUNCTION_65_4(v20);
  if (v24)
  {
    sub_1AC5C9624(v1, &qword_1EB56C8A0, &qword_1AC7AADE8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
    v30 = OUTLINED_FUNCTION_158_1();
  }

  else
  {
    v25 = OUTLINED_FUNCTION_614();
    sub_1AC61B988(v25, v26);
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50) + 48);
    OUTLINED_FUNCTION_1_7();
    v28 = OUTLINED_FUNCTION_172();
    sub_1AC68A130(v28, v29);
    sub_1AC61B988(v0, v7 + v27);
    sub_1AC5C9624(v1, &qword_1EB56C8A0, &qword_1AC7AADE8);
    OUTLINED_FUNCTION_113_2();
  }

  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  OUTLINED_FUNCTION_105();
}

void sub_1AC672474()
{
  OUTLINED_FUNCTION_104();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v9 = OUTLINED_FUNCTION_80(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_602();
  v12 = OUTLINED_FUNCTION_60_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  v15 = OUTLINED_FUNCTION_167(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_469();
  v22 = *(v5 + *v3);
  sub_1AC7452F0();
  sub_1AC68A3F8(v1, v20, &qword_1EB56C8A0, &qword_1AC7AADE8);
  OUTLINED_FUNCTION_65_4(v20);
  if (v23)
  {
    sub_1AC5C9624(v1, &qword_1EB56C8A0, &qword_1AC7AADE8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
    v27 = OUTLINED_FUNCTION_158_1();
  }

  else
  {
    sub_1AC61B988(v20, v0);
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50) + 48);
    OUTLINED_FUNCTION_1_7();
    v25 = OUTLINED_FUNCTION_172();
    sub_1AC68A130(v25, v26);
    sub_1AC61B988(v0, v7 + v24);
    sub_1AC5C9624(v1, &qword_1EB56C8A0, &qword_1AC7AADE8);
    OUTLINED_FUNCTION_113_2();
  }

  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC67261C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8A0, &qword_1AC7AADE8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - v15;
  v17 = *(a2 + 16);
  sub_1AC7452F0();
  sub_1AC68A3F8(v16, v14, &qword_1EB56C8A0, &qword_1AC7AADE8);
  if (__swift_getEnumTagSinglePayload(v14, 1, v6) == 1)
  {
    sub_1AC5C9624(v16, &qword_1EB56C8A0, &qword_1AC7AADE8);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
    v19 = a3;
    v20 = 1;
  }

  else
  {
    sub_1AC61B988(v14, v9);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C8E8, &qword_1AC7AAE50);
    v22 = *(v21 + 48);
    sub_1AC68A130(a1, a3);
    sub_1AC61B988(v9, a3 + v22);
    sub_1AC5C9624(v16, &qword_1EB56C8A0, &qword_1AC7AADE8);
    v19 = a3;
    v20 = 0;
    v18 = v21;
  }

  return __swift_storeEnumTagSinglePayload(v19, v20, 1, v18);
}

uint64_t sub_1AC672828(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v4 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1AC6E1048();
    *v2 = v15;
  }

  else
  {
    v5 = *v2;
    v6 = sub_1AC6E08C4(a2);
    if (v7)
    {
      v8 = v6;
      v9 = *v3;
      swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v10 = *(*v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C998, &unk_1AC7AE850);
      sub_1AC7A0B18();
      v11 = *(v16 + 48);
      v12 = *(*(type metadata accessor for SpeechRecognizerSupportedFeatures() - 8) + 72);
      sub_1AC68A2BC();
      v13 = *(*(v16 + 56) + 8 * v8);
      type metadata accessor for SpeechRecognizerWorker();
      sub_1AC68A730(&qword_1EB56B3F8, type metadata accessor for SpeechRecognizerSupportedFeatures);
      sub_1AC7A0B38();

      *v3 = v16;
    }
  }

  return sub_1AC68A2BC();
}

BOOL sub_1AC6729C8(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_1AC7A0D28();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v4 = sub_1AC7A0D28();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3 != v4;
}

uint64_t sub_1AC672A40(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1AC7A08E8();
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t sub_1AC672A60(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17[-v9];
  v11 = sub_1AC7A0288();
  (*(*(v11 - 8) + 16))(v10, a2, v11);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  v12 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v13 = swift_allocObject();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  *(v13 + 24) = *(a4 + 24);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = v12;
  *(v14 + 40) = v13;
  v15 = a1[1];
  *(v14 + 48) = *a1;
  *(v14 + 64) = v15;
  *(v14 + 80) = a1[2];
  sub_1AC659DBC();
}

uint64_t sub_1AC672C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AC672C60, 0, 0);
}

uint64_t sub_1AC672C60()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[8];
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v3 = v0[9];
    OUTLINED_FUNCTION_175();
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    v0[12] = v4;
    if (v4)
    {
      v5 = *(v0[9] + 24);
      v6 = swift_task_alloc();
      v7 = OUTLINED_FUNCTION_585(v6);
      *v7 = v8;
      v7[1] = sub_1AC672D84;
      v9 = v0[10];
      v10 = OUTLINED_FUNCTION_16_5();

      return sub_1AC672EC8(v10, v5, v11);
    }
  }

  OUTLINED_FUNCTION_44();

  return v13();
}

uint64_t sub_1AC672D84()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC672E68()
{
  OUTLINED_FUNCTION_85();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t sub_1AC672EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[13] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC672EEC, v3, 0);
}

uint64_t sub_1AC672EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_169();
  v15 = v14[14];
  v16 = v14[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF50, &unk_1AC7A8360);
  inited = swift_initStackObject();
  v14[16] = inited;
  inited[1] = xmmword_1AC7A6D00;
  v18 = *v15;
  v19 = v15[2];
  inited[3] = v15[1];
  inited[4] = v19;
  inited[2] = v18;
  v14[12] = inited;
  result = sub_1AC5CAF3C();
  v21 = result;
  v22 = 0;
  v23 = *(result + 16);
  v24 = result + 32;
  v25 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v14[17] = v25;
  v26 = (v24 + 16 * v22);
  while (v23 != v22)
  {
    if (v22 >= *(v21 + 16))
    {
      __break(1u);
      return result;
    }

    v27 = v26 + 2;
    ++v22;
    v28 = *v26;
    v26 += 2;
    if (v28 != v14[13])
    {
      v29 = *(v27 - 1);
      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      a11 = v25;
      if ((result & 1) == 0)
      {
        OUTLINED_FUNCTION_265();
        v30 = OUTLINED_FUNCTION_35_2();
        result = sub_1AC631680(v30, v31, v32);
      }

      v34 = *(v25 + 16);
      v33 = *(v25 + 24);
      if (v34 >= v33 >> 1)
      {
        v36 = OUTLINED_FUNCTION_9(v33);
        result = sub_1AC631680(v36, v34 + 1, 1);
      }

      *(v25 + 16) = v34 + 1;
      v35 = v25 + 16 * v34;
      *(v35 + 32) = v28;
      *(v35 + 40) = v29;
      goto LABEL_2;
    }
  }

  if (*(v25 + 16))
  {
    OUTLINED_FUNCTION_30(&unk_1AC7AACD0);
    v56 = v37;
    v38 = swift_task_alloc();
    v14[18] = v38;
    *v38 = v14;
    v38[1] = sub_1AC673110;
    OUTLINED_FUNCTION_115();

    return v42(v39, v40, v41, v42, v43, v44, v45, v46, a9, v56, a11, a12, a13, a14);
  }

  else
  {

    v47 = v14[15];
    sub_1AC5C8C68(v14[12]);

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_115();

    return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14);
  }
}

void sub_1AC673110()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 144);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;

  if (v0)
  {
  }

  else
  {
    v11 = v5[17];
    v12 = v5[15];

    v5[19] = v3;
    OUTLINED_FUNCTION_490();

    MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1AC67323C()
{
  OUTLINED_FUNCTION_85();
  sub_1AC659310(v0[19]);
  v1 = v0[15];
  sub_1AC5C8C68(v0[12]);

  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC6732B0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_1AC7A0288();
  (*(*(v8 - 8) + 16))(v7, a2, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  v9 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;
  v10[5] = a1;
  v11 = a1;
  sub_1AC659B08();
}

uint64_t sub_1AC673430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC673454, 0, 0);
}

uint64_t sub_1AC673454()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 56);
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    OUTLINED_FUNCTION_85_0(v4);

    return sub_1AC65D064(0, v3);
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_44();

    return v6();
  }
}

uint64_t sub_1AC673544()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 72);
  v3 = *(v1 + 64);
  v4 = *v0;
  OUTLINED_FUNCTION_18();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC673644()
{
  **(v0 + 40) = *(v0 + 64) == 0;
  OUTLINED_FUNCTION_44();
  return v1();
}

uint64_t SpeechAnalyzer.start<A>(inputSequence:)()
{
  OUTLINED_FUNCTION_85();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_1AC7A0288();
  v1[6] = v5;
  OUTLINED_FUNCTION_22(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = OUTLINED_FUNCTION_126();
  v9 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC673828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1AC6738E0;

  return SpeechAnalyzer.analyzeSequence<A>(_:)();
}

uint64_t sub_1AC6738E0()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;

  v6 = *(v2 + 16);
  if (v0)
  {

    v7 = sub_1AC68A870;
  }

  else
  {
    v7 = sub_1AC673A0C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1AC673A0C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputTask);
  *(v1 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputTask) = 0;

  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t SpeechAnalyzer.analyzeSequence<A>(_:)()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v1[32] = v2;
  v1[33] = v0;
  v1[30] = v3;
  v1[31] = v4;
  v5 = sub_1AC7A01F8();
  v1[34] = v5;
  OUTLINED_FUNCTION_22(v5);
  v1[35] = v6;
  v8 = *(v7 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  OUTLINED_FUNCTION_155_1();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[38] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_22(AssociatedTypeWitness);
  v1[39] = v10;
  v12 = *(v11 + 64) + 15;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  OUTLINED_FUNCTION_44_4();
  v1[42] = v13;
  v15 = *(v14 + 64);
  v1[43] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_155_1();
  v16 = swift_getAssociatedTypeWitness();
  v1[44] = v16;
  OUTLINED_FUNCTION_22(v16);
  v1[45] = v17;
  v19 = *(v18 + 64);
  v1[46] = OUTLINED_FUNCTION_126();
  v20 = sub_1AC7A0288();
  v1[47] = v20;
  OUTLINED_FUNCTION_22(v20);
  v1[48] = v21;
  v23 = *(v22 + 64);
  v1[49] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_149_0();

  return MEMORY[0x1EEE6DFA0](v24, v25, v26);
}

uint64_t sub_1AC673C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_355();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_102();
  a16 = v19;
  v22 = v19[33];
  OUTLINED_FUNCTION_65();
  if (sub_1AC65BF3C(0xD000000000000013, v23))
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v24 = v19[33];
    v25 = sub_1AC79FDE8();
    v26 = __swift_project_value_buffer(v25, qword_1ED9386C8);
    v27 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isRunningInputLoop;
    v19[50] = v26;
    v19[51] = v27;
    if (*(v24 + v27) == 1)
    {
      v83 = sub_1AC79FDC8();
      v84 = sub_1AC7A05F8();
      if (OUTLINED_FUNCTION_366(v84))
      {
        OUTLINED_FUNCTION_150();
        OUTLINED_FUNCTION_363();
        v85 = swift_slowAlloc();
        a9 = v85;
        *v18 = 136315138;
        *(v18 + 4) = sub_1AC5CFE74(0xD000000000000046, 0x80000001AC7B6900, &a9);
        OUTLINED_FUNCTION_635(&dword_1AC5BC000, v86, v87, "Failed precondition: %s");
        __swift_destroy_boxed_opaque_existential_0(v85);
        OUTLINED_FUNCTION_129();
        OUTLINED_FUNCTION_70();
      }

      __break(1u);
    }

    else
    {
      v28 = v19[33];
      *(v24 + v27) = 1;
      v29 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isInputFinished;
      v19[52] = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isInputFinished;
      *(v28 + v29) = 0;
      v30 = sub_1AC79FDC8();
      v31 = sub_1AC7A05D8();
      if (os_log_type_enabled(v30, v31))
      {
        v33 = v19[48];
        v32 = v19[49];
        v34 = v19[47];
        v35 = swift_slowAlloc();
        *v35 = 16777472;
        sub_1AC7A0338();
        v36 = sub_1AC7A0278();
        v37 = *(v33 + 8);
        v38 = OUTLINED_FUNCTION_198();
        v39(v38);
        v35[4] = v36;
        _os_log_impl(&dword_1AC5BC000, v30, v31, "SpeechAnalyzer: Input loop starting at priority %hhu", v35, 5u);
        OUTLINED_FUNCTION_96_0();
      }

      v40 = v19[46];
      v42 = v19[42];
      v41 = v19[43];
      v44 = v19[31];
      v43 = v19[32];
      v45 = v19[30];

      (*(v42 + 16))(v41, v45, v44);
      OUTLINED_FUNCTION_117();
      sub_1AC7A0368();
      OUTLINED_FUNCTION_16_6();
      v19[53] = sub_1AC68A730(v46, v47);
      v48 = v19[44];
      v49 = v19[32];
      v50 = v19[33];
      v51 = v19[31];
      v19[54] = swift_getAssociatedConformanceWitness();
      v52 = *(MEMORY[0x1E69E85B0] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_100();
      v19[55] = v53;
      *v53 = v54;
      v53[1] = sub_1AC5C1EE4;
      v55 = v19[46];
      v56 = v19[44];
      v57 = v19[41];
      OUTLINED_FUNCTION_112_2();
      OUTLINED_FUNCTION_291();
    }

    return MEMORY[0x1EEE6D8D0](v58, v59, v60, v61, v62, v63, v64, v65, a9, a10);
  }

  else
  {
    v66 = v19[49];
    v67 = v19[46];
    v68 = v19[43];
    v70 = v19[40];
    v69 = v19[41];
    v72 = v19[36];
    v71 = v19[37];

    v73 = v19[1];
    OUTLINED_FUNCTION_248();
    OUTLINED_FUNCTION_291();

    return v79(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10);
  }
}

uint64_t sub_1AC674020()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = v1[60];
  v3 = v1[59];
  v4 = v1[33];
  v5 = *v0;
  OUTLINED_FUNCTION_18();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_89_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC674134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  v11 = *(v10 + 472);
  swift_willThrow();
  v12 = *(v10 + 472);
  OUTLINED_FUNCTION_62_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_291();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1AC6741CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  v11 = *(v10 + 432);
  v12 = *(v10 + 352);
  v13 = *(v10 + 320);
  v14 = *(*(v10 + 312) + 32);
  v14(v13, *(v10 + 328), *(v10 + 304));
  OUTLINED_FUNCTION_89();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_246();
  v15 = sub_1AC7A0D08();
  v16 = *(v10 + 320);
  if (v15)
  {
    v17 = v15;
    (*(*(v10 + 312) + 8))(*(v10 + 320), *(v10 + 304));
  }

  else
  {
    v13 = *(v10 + 304);
    OUTLINED_FUNCTION_124_0();
    v17 = OUTLINED_FUNCTION_188();
    v14(v18, v16, v13);
  }

  v19 = OUTLINED_FUNCTION_295();
  v20(v19);
  *(v10 + 472) = v17;
  v21 = *(v10 + 296);
  v22 = *(v10 + 272);
  *(v10 + 232) = v17;
  v23 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  OUTLINED_FUNCTION_477();
  v24 = swift_dynamicCast();
  v25 = *(v10 + 400);
  if (v24)
  {
    v27 = *(v10 + 288);
    v26 = *(v10 + 296);
    v28 = *(v10 + 272);
    v29 = *(v10 + 280);

    v30 = *(v29 + 32);
    v31 = OUTLINED_FUNCTION_124_0();
    v32(v31);
    sub_1AC79FDC8();
    v33 = sub_1AC7A05D8();
    if (OUTLINED_FUNCTION_153(v33))
    {
      v34 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_242(v34);
      OUTLINED_FUNCTION_69();
      _os_log_impl(v35, v36, v37, v38, v39, 2u);
      OUTLINED_FUNCTION_129();
    }

    OUTLINED_FUNCTION_657();
    OUTLINED_FUNCTION_26_5();
    sub_1AC68A730(v40, v41);
    OUTLINED_FUNCTION_124_3();
    v42 = OUTLINED_FUNCTION_188();
    v44 = OUTLINED_FUNCTION_84_1(v42, v43);
    v45(v44);
    swift_willThrow();
    v46 = OUTLINED_FUNCTION_344();
    v47(v46);

    OUTLINED_FUNCTION_62_3();

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_291();

    return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10);
  }

  else
  {

    v57 = v17;
    v58 = sub_1AC79FDC8();
    sub_1AC7A05F8();

    if (os_log_type_enabled(v58, v22))
    {
      OUTLINED_FUNCTION_150();
      v59 = OUTLINED_FUNCTION_97_0();
      *v13 = 138412290;
      v60 = v17;
      v61 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_118(v61);
      OUTLINED_FUNCTION_376(&dword_1AC5BC000, v62, v22, "SpeechAnalyzer: Input loop ending with error: %@");
      sub_1AC5C9624(v59, &unk_1EB56C630, &qword_1AC7A7E40);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_77_1();
    }

    v63 = *(v10 + 416);
    v64 = *(v10 + 264);

    *(v64 + v63) = 1;
    v65 = v17;
    sub_1AC675568(v17);
    v66 = swift_task_alloc();
    v67 = OUTLINED_FUNCTION_586(v66);
    *v67 = v68;
    OUTLINED_FUNCTION_33_5(v67);
    OUTLINED_FUNCTION_291();

    return sub_1AC65D064(v69, v70);
  }
}

uint64_t sub_1AC67451C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  v11 = OUTLINED_FUNCTION_295();
  v12(v11);
  sub_1AC5C9624(v10 + 88, &qword_1EB56C7E0, &unk_1AC7ACD10);
  v13 = *(v10 + 464);
  *(v10 + 232) = v13;
  *(v10 + 472) = v13;
  v14 = *(v10 + 296);
  v15 = *(v10 + 272);
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  OUTLINED_FUNCTION_123();
  v17 = swift_dynamicCast();
  v18 = *(v10 + 400);
  if (v17)
  {
    v20 = *(v10 + 288);
    v19 = *(v10 + 296);
    v21 = *(v10 + 272);
    v22 = *(v10 + 280);

    v23 = *(v22 + 32);
    v24 = OUTLINED_FUNCTION_124_0();
    v25(v24);
    sub_1AC79FDC8();
    v26 = sub_1AC7A05D8();
    if (OUTLINED_FUNCTION_153(v26))
    {
      v27 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_242(v27);
      OUTLINED_FUNCTION_69();
      _os_log_impl(v28, v29, v30, v31, v32, 2u);
      OUTLINED_FUNCTION_129();
    }

    OUTLINED_FUNCTION_657();
    OUTLINED_FUNCTION_26_5();
    sub_1AC68A730(v33, v34);
    OUTLINED_FUNCTION_124_3();
    v35 = OUTLINED_FUNCTION_188();
    v37 = OUTLINED_FUNCTION_84_1(v35, v36);
    v38(v37);
    swift_willThrow();
    v39 = OUTLINED_FUNCTION_344();
    v40(v39);

    OUTLINED_FUNCTION_62_3();

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_291();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10);
  }

  else
  {

    v50 = v13;
    v51 = sub_1AC79FDC8();
    sub_1AC7A05F8();

    if (os_log_type_enabled(v51, (v10 - 24)))
    {
      OUTLINED_FUNCTION_150();
      v52 = OUTLINED_FUNCTION_97_0();
      *v15 = 138412290;
      v53 = v13;
      v54 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_118(v54);
      OUTLINED_FUNCTION_376(&dword_1AC5BC000, v55, (v10 - 24), "SpeechAnalyzer: Input loop ending with error: %@");
      sub_1AC5C9624(v52, &unk_1EB56C630, &qword_1AC7A7E40);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_77_1();
    }

    v56 = *(v10 + 416);
    v57 = *(v10 + 264);

    *(v57 + v56) = 1;
    v58 = v13;
    sub_1AC675568(v13);
    v59 = swift_task_alloc();
    v60 = OUTLINED_FUNCTION_586(v59);
    *v60 = v61;
    OUTLINED_FUNCTION_33_5(v60);
    OUTLINED_FUNCTION_291();

    return sub_1AC65D064(v62, v63);
  }
}

uint64_t sub_1AC6747EC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 248);
  v3 = *(v1 + 232);
  v4 = *v0;
  OUTLINED_FUNCTION_18();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC6748E4()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 232);
  v2 = sub_1AC5CAF3C();
  *(v0 + 256) = v2;
  v3 = swift_allocObject();
  *(v0 + 264) = v3;
  memcpy((v3 + 16), (v0 + 16), 0x41uLL);
  *(v3 + 84) = *(v0 + 84);
  *(v3 + 100) = *(v0 + 100);
  *(v3 + 116) = *(v0 + 116);
  sub_1AC5CD620(v0 + 16, v0 + 160);
  OUTLINED_FUNCTION_30(&unk_1AC7AACD0);
  v7 = v4;
  v5 = swift_task_alloc();
  *(v0 + 272) = v5;
  *v5 = v0;
  v5[1] = sub_1AC6749F8;

  return v7(&unk_1AC7AACC8, v3, v2);
}

uint64_t sub_1AC6749F8()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 272);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;

  if (v0)
  {
    v12 = v5[32];
    v11 = v5[33];

    v13 = *(v9 + 8);
    OUTLINED_FUNCTION_149_0();

    return v16(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    v24 = v5[32];
    v23 = v5[33];
    v25 = v5[29];

    v5[35] = v3;
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DFA0](v26, v27, v28);
  }
}

uint64_t sub_1AC674B54()
{
  OUTLINED_FUNCTION_275();
  v45 = v0;
  v1 = *(v0 + 232);
  sub_1AC5C8C68(*(v0 + 280));

  v40 = v0;
  v2 = sub_1AC7A0558();
  result = sub_1AC5CB4B4(v2, v3, v4);
  v6 = result;
  v7 = *(result + 16);
  if (!v7)
  {

    goto LABEL_20;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = v7 - 1;
  p_cache = _TtC6Speech22SpeechRecognizerWorker.cache;
  v37 = result;
  while (1)
  {
    if (v10 >= v7)
    {
      __break(1u);
      return result;
    }

    v42 = v9;
    v13 = *(v6 + v8 + 32);
    v14 = *(v6 + v8 + 40);
    v15 = *(v6 + v8 + 48);
    v39 = *(v6 + v8 + 56);
    v16 = *(v6 + v8 + 72);
    v41 = *(v6 + v8 + 64);
    v17 = p_cache[428];

    if (v17 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v18 = sub_1AC79FDE8();
    __swift_project_value_buffer(v18, qword_1ED9386C8);
    v19 = sub_1AC79FDC8();
    v20 = sub_1AC7A05E8();
    if (OUTLINED_FUNCTION_366(v20))
    {
      v38 = v8;
      v21 = OUTLINED_FUNCTION_150();
      v22 = p_cache;
      v23 = v11;
      v24 = OUTLINED_FUNCTION_418();
      *v21 = 138412290;
      *(v40 + 132) = v13;
      *(v40 + 140) = v14;
      *(v40 + 148) = v15;
      v25 = CMTimeCopyDescription(0, (v40 + 132));
      OUTLINED_FUNCTION_582(v25);
      _os_log_impl(&dword_1AC5BC000, v19, v20, "SpeechAnalyzer: Executing finalize/finish input barrier at %@", v21, 0xCu);
      sub_1AC5C9624(v24, &unk_1EB56C630, &qword_1AC7A7E40);
      v11 = v23;
      p_cache = v22;
      OUTLINED_FUNCTION_70();
      v6 = v37;
      v8 = v38;
      OUTLINED_FUNCTION_70();
    }

    v43[0] = sub_1AC7A0558();
    v43[1] = v26;
    v43[2] = v27;
    v44 = 0;
    v41(v43);

    if ((v42 & 1) == 0)
    {
      break;
    }

    if (v11 == v10)
    {

      goto LABEL_17;
    }

    v9 = 1;
LABEL_13:
    v7 = *(v6 + 16);
    v8 += 48;
    ++v10;
  }

  if (v11 != v10)
  {
    v9 = v39;
    goto LABEL_13;
  }

  if (!v39)
  {
    goto LABEL_20;
  }

LABEL_17:
  v28 = sub_1AC79FDC8();
  v29 = sub_1AC7A05D8();
  if (OUTLINED_FUNCTION_153(v29))
  {
    v30 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_242(v30);
    OUTLINED_FUNCTION_69();
    _os_log_impl(v31, v32, v33, v34, v35, 2u);
    OUTLINED_FUNCTION_129();
  }

LABEL_20:
  OUTLINED_FUNCTION_82();

  return v36();
}

uint64_t sub_1AC674E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  v11 = v10[2] + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_updatedContext;
  os_unfair_lock_lock(v11);
  v12 = *(v11 + 8);
  v10[3] = v12;
  *(v11 + 8) = 0;
  os_unfair_lock_unlock(v11);
  if (v12)
  {
    v13 = v10[2];
    v14 = *(v13 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalContext);
    *(v13 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalContext) = v12;

    result = sub_1AC5CAF3C();
    v16 = result;
    v17 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    a9 = MEMORY[0x1E69E7CC0];
    v19 = *(result + 16);
LABEL_3:
    v10[4] = v18;
    v20 = 16 * v17 + 32;
    while (v19 != v17)
    {
      if (v17 >= *(v16 + 16))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        return result;
      }

      v21 = v20 + 16;
      ++v17;
      v22 = *(v16 + v20);
      result = object_getClass(v22);
      v23 = result != _TtC6Speech22SpeechRecognizerWorker || v22 == 0;
      v20 = v21;
      if (!v23)
      {
        v24 = swift_unknownObjectRetain();
        MEMORY[0x1B26E8CF0](v24);
        v25 = *((a9 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((a9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v25 >> 1)
        {
          OUTLINED_FUNCTION_9(v25);
          sub_1AC7A0178();
        }

        OUTLINED_FUNCTION_124_0();
        result = sub_1AC7A0198();
        v18 = a9;
        goto LABEL_3;
      }
    }

    result = sub_1AC61C24C(v18);
    v10[5] = result;
    if (!result)
    {
      v28 = v10[3];
      v27 = v10[4];

      goto LABEL_18;
    }

    if (result < 1)
    {
      goto LABEL_26;
    }

    v10[6] = 0;
    v26 = v10[4];
    if ((v26 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1B26E95B0](0);
    }

    else
    {
      OUTLINED_FUNCTION_537(result, v26);
    }

    v10[7] = v18;
    v37 = v10[3];
    v38 = swift_task_alloc();
    v39 = OUTLINED_FUNCTION_76(v38);
    *v39 = v40;
    OUTLINED_FUNCTION_61_2(v39);
    OUTLINED_FUNCTION_291();

    return sub_1AC690BA8();
  }

  else
  {
LABEL_18:
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_291();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
  }
}

uint64_t sub_1AC67506C()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *(v2 + 64);
  *v4 = *v1;
  *(v3 + 72) = v0;

  v6 = *(v2 + 16);
  OUTLINED_FUNCTION_496();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC675188()
{
  OUTLINED_FUNCTION_85();
  v2 = v1[7];

  v3 = v1[6] + 1;
  if (v3 == v1[5])
  {
    v5 = v1[3];
    v4 = v1[4];

    OUTLINED_FUNCTION_44();

    return v6();
  }

  else
  {
    v1[6] = v3;
    v8 = v1[4];
    if ((v8 & 0xC000000000000001) != 0)
    {
      v0 = MEMORY[0x1B26E95B0]();
    }

    else
    {
      OUTLINED_FUNCTION_535(v3, v8);
    }

    v1[7] = v0;
    v9 = v1[3];
    v10 = swift_task_alloc();
    v11 = OUTLINED_FUNCTION_76(v10);
    *v11 = v12;
    OUTLINED_FUNCTION_61_2();

    return sub_1AC690BA8();
  }
}

uint64_t sub_1AC67526C()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_10_3(v2, qword_1ED9386C8);
  v3 = v1;
  v4 = sub_1AC79FDC8();
  sub_1AC7A05F8();

  v5 = OUTLINED_FUNCTION_645();
  v6 = v0[9];
  v7 = v0[7];
  if (v5)
  {
    v8 = OUTLINED_FUNCTION_150();
    v9 = OUTLINED_FUNCTION_418();
    *v8 = 138412290;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_582(v11);
    OUTLINED_FUNCTION_309();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_1AC5C9624(v9, &unk_1EB56C630, &qword_1AC7A7E40);
    OUTLINED_FUNCTION_125_1();
    OUTLINED_FUNCTION_96_0();
  }

  else
  {
    v17 = v0[7];
  }

  v18 = v0[6] + 1;
  if (v18 == v0[5])
  {
    v20 = v0[3];
    v19 = v0[4];

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_523();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28);
  }

  else
  {
    v0[6] = v18;
    v30 = v0[4];
    if ((v30 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1B26E95B0]();
    }

    else
    {
      OUTLINED_FUNCTION_535(v18, v30);
    }

    v0[7] = v4;
    v31 = v0[3];
    v32 = swift_task_alloc();
    v33 = OUTLINED_FUNCTION_76(v32);
    *v33 = v34;
    OUTLINED_FUNCTION_61_2();
    OUTLINED_FUNCTION_523();

    return sub_1AC690BA8();
  }
}

uint64_t sub_1AC675458()
{
  OUTLINED_FUNCTION_44();
  v1 = *(v0 + 152);
  return v2();
}

uint64_t sub_1AC67547C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didFinishInputHandlers;
  swift_beginAccess();

  sub_1AC703C5C();
  v8 = *(*(v3 + v7) + 16);
  sub_1AC703DAC(v8);
  v9 = *(v3 + v7);
  *(v9 + 16) = v8 + 1;
  v10 = v9 + 16 * v8;
  *(v10 + 32) = sub_1AC689718;
  *(v10 + 40) = v6;
  *(v3 + v7) = v9;
  result = swift_endAccess();
  if (*(v3 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isInputFinished) == 1)
  {
    return sub_1AC675568(0);
  }

  return result;
}

uint64_t sub_1AC675568(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didFinishInputHandlers;
  OUTLINED_FUNCTION_574();
  v5 = *(v1 + v4);
  v6 = *(v5 + 16);

  v8 = 0;
  for (i = (v5 + 40); ; i += 2)
  {
    if (v6 == v8)
    {

      v12 = *(v2 + v4);
      *(v2 + v4) = MEMORY[0x1E69E7CC0];
    }

    if (v8 >= *(v5 + 16))
    {
      break;
    }

    ++v8;
    v11 = *(i - 1);
    v10 = *i;
    v13 = a1;

    v11(&v13);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC675644(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = a2;
  v14 = HIDWORD(a2);
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  v16 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputBarriers;
  swift_beginAccess();

  sub_1AC703C74();
  v17 = *(*(v7 + v16) + 16);
  sub_1AC703DC4(v17);
  v18 = *(v7 + v16);
  *(v18 + 16) = v17 + 1;
  v19 = v18 + 48 * v17;
  *(v19 + 32) = a1;
  *(v19 + 40) = v12;
  *(v19 + 44) = v14;
  *(v19 + 48) = a3;
  *(v19 + 56) = a4;
  *(v19 + 64) = sub_1AC688EE8;
  *(v19 + 72) = v15;
  *(v7 + v16) = v18;
  return swift_endAccess();
}

uint64_t sub_1AC675748()
{
  v1 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputBarriers;
  swift_beginAccess();
  result = *(v0 + v1);
  *(v0 + v1) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t SpeechAnalyzer.finalize(through:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 72) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return OUTLINED_FUNCTION_15_5(sub_1AC6757BC, v4);
}

uint64_t sub_1AC6757BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_640();
  OUTLINED_FUNCTION_102();
  v11 = *(v10 + 40);
  if (sub_1AC65BF3C(0xD000000000000012, 0x80000001AC7B6950))
  {
    if (*(v10 + 72))
    {
      v12 = 1;
    }

    else
    {
      v22 = *(v10 + 24);
      v23 = *(v10 + 32);
      v24 = *(v10 + 16);
      sub_1AC70C064();
      v12 = *(v10 + 72);
    }

    v26 = *(v10 + 32);
    v25 = *(v10 + 40);
    v42 = *(v10 + 16);
    OUTLINED_FUNCTION_16_6();
    sub_1AC68A730(v27, v28);
    v29 = swift_task_alloc();
    *(v10 + 48) = v29;
    *(v29 + 16) = v25;
    *(v29 + 24) = v42;
    *(v29 + 40) = v26;
    *(v29 + 48) = v12 & 1;
    v30 = *(MEMORY[0x1E69E8920] + 4);
    v31 = swift_task_alloc();
    v32 = OUTLINED_FUNCTION_42_1(v31);
    *v32 = v33;
    v32[1] = sub_1AC67594C;
    OUTLINED_FUNCTION_228();
    OUTLINED_FUNCTION_168();

    return MEMORY[0x1EEE6DE38](v34, v35, v36, v37, v38, v39, v40, v41);
  }

  else
  {
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_168();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
  }
}

uint64_t sub_1AC67594C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    v9 = v3[5];
    v10 = sub_1AC68A83C;
  }

  else
  {
    v12 = v3[5];
    v11 = v3[6];

    v10 = sub_1AC5C8B40;
    v9 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1AC675A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v26 = a6;
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v25 - v17;
  v19 = sub_1AC7A0288();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  (*(v11 + 16))(v14, a1, v10);
  v20 = sub_1AC68A730(&qword_1EB56B360, type metadata accessor for SpeechAnalyzer);
  v21 = (*(v11 + 80) + 65) & ~*(v11 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = v20;
  *(v22 + 32) = a2;
  *(v22 + 40) = a3;
  v23 = v25;
  *(v22 + 48) = a4;
  *(v22 + 56) = v23;
  *(v22 + 64) = v26 & 1;
  (*(v11 + 32))(v22 + v21, v14, v10);
  swift_retain_n();
  sub_1AC659DBC();
}

uint64_t sub_1AC675C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = v14;
  *(v8 + 104) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  *(v8 + 56) = v10;
  v11 = *(v10 - 8);
  *(v8 + 64) = v11;
  *(v8 + 72) = *(v11 + 64);
  *(v8 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC675D78, a4, 0);
}

uint64_t sub_1AC675D78()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 104);
  (*(v3 + 16))(v1, *(v0 + 48), v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 88) = v6;
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_1AC675EA4;
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v11 = *(v0 + 16);
  v10 = *(v0 + 24);
  OUTLINED_FUNCTION_523();

  return sub_1AC675FBC(v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1AC675EA4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = v1[12];
  v3 = v1[11];
  v4 = v1[10];
  v5 = *v0;
  OUTLINED_FUNCTION_18();
  *v6 = v5;

  OUTLINED_FUNCTION_44();

  return v7();
}

uint64_t sub_1AC675FBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = v7;
  *(v8 + 273) = a5;
  *(v8 + 272) = a4;
  *(v8 + 32) = a3;
  *(v8 + 40) = a6;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_1AC7A0288();
  *(v8 + 64) = v9;
  v10 = *(v9 - 8);
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 + 64);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC6760A0, v7, 0);
}

uint64_t sub_1AC6760A0()
{
  if (*(v1 + 272))
  {
    v2 = *(v1 + 56);
    v3 = (v2 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputSampleTime);
    if (*(v2 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputSampleTime + 24))
    {
      if (off_1ED937D60 != -1)
      {
        OUTLINED_FUNCTION_3_0();
        swift_once();
      }

      v4 = sub_1AC79FDE8();
      OUTLINED_FUNCTION_10_3(v4, qword_1ED9386C8);
      v5 = sub_1AC79FDC8();
      sub_1AC7A05E8();
      OUTLINED_FUNCTION_38_2();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_242(v7);
        OUTLINED_FUNCTION_410(&dword_1AC5BC000, v8, v9, "SpeechAnalyzer: Finalizing through latest of no input; skipping");
        OUTLINED_FUNCTION_129();
      }

      v10 = *(v1 + 40);
      v11 = *(v1 + 48);

      v10(0);
      goto LABEL_23;
    }

    v12 = v3 + 2;
    v13 = v3 + 1;
  }

  else
  {
    v3 = (v1 + 16);
    v12 = (v1 + 32);
    v13 = (v1 + 24);
    v2 = *(v1 + 56);
  }

  v14 = *v12;
  v15 = *v13;
  v16 = *v3;
  v92 = HIDWORD(*v13);
  v17 = (v2 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange);
  if ((v17[6] & 1) == 0)
  {
    v19 = v17[2];
    v18 = v17[3];
    v20 = v17[5];
    LODWORD(v0) = *(v17 + 8);
    v91 = *(v17 + 9);
    v21 = *v17;
    v22 = v17[1];
    OUTLINED_FUNCTION_429();
    if (sub_1AC7A0678())
    {
      v85 = v0;
      v87 = v18;
      v89 = v16;
      if (off_1ED937D60 != -1)
      {
        OUTLINED_FUNCTION_3_0();
        swift_once();
      }

      v23 = sub_1AC79FDE8();
      OUTLINED_FUNCTION_10_3(v23, qword_1ED9386C8);
      v24 = sub_1AC79FDC8();
      v25 = sub_1AC7A05E8();
      if (os_log_type_enabled(v24, v25))
      {
        v83 = v20;
        v26 = v24;
        v27 = v15;
        v28 = OUTLINED_FUNCTION_448();
        v29 = swift_slowAlloc();
        *v28 = 138412546;
        *(v1 + 248) = v89;
        *(v1 + 256) = v27;
        v24 = v26;
        *(v1 + 260) = v92;
        *(v1 + 264) = v14;
        v30 = CMTimeCopyDescription(0, (v1 + 248));
        *(v28 + 4) = v30;
        *v29 = v30;
        *(v28 + 12) = 2112;
        *(v1 + 176) = v21;
        *(v1 + 184) = v22;
        *(v1 + 192) = v19;
        *(v1 + 200) = v87;
        *(v1 + 208) = v85;
        *(v1 + 212) = v91;
        *(v1 + 216) = v83;
        v31 = CMTimeRangeCopyDescription(0, (v1 + 176));
        *(v28 + 14) = v31;
        v29[1] = v31;
        _os_log_impl(&dword_1AC5BC000, v26, v25, "SpeechAnalyzer: Already finalized %@ before %@", v28, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C630, &qword_1AC7A7E40);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_70();
      }

      v32 = *(v1 + 48);
      (*(v1 + 40))(0);
      goto LABEL_23;
    }
  }

  v33 = *(v1 + 56) + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputBufferRange;
  if (*(v33 + 48))
  {
    goto LABEL_18;
  }

  v63 = *(v33 + 32);
  v62 = *(v33 + 40);
  v0 = *(v33 + 16);
  v64 = *(v33 + 24);
  v65 = *(v33 + 8);
  *(v1 + 128) = *v33;
  *(v1 + 136) = v65;
  *(v1 + 144) = v0;
  *(v1 + 152) = v64;
  *(v1 + 160) = v63;
  *(v1 + 168) = v62;
  OUTLINED_FUNCTION_429();
  if ((sub_1AC7A0528() & 1) == 0)
  {
    OUTLINED_FUNCTION_429();
    if ((sub_1AC7A0678() & 1) == 0)
    {
LABEL_18:
      if (off_1ED937D60 != -1)
      {
        OUTLINED_FUNCTION_3_0();
        swift_once();
      }

      v34 = sub_1AC79FDE8();
      OUTLINED_FUNCTION_10_3(v34, qword_1ED9386C8);
      v35 = sub_1AC79FDC8();
      v36 = sub_1AC7A05E8();
      if (OUTLINED_FUNCTION_153(v36))
      {
        v37 = OUTLINED_FUNCTION_150();
        v38 = OUTLINED_FUNCTION_418();
        *v37 = 138412290;
        *(v1 + 224) = v16;
        *(v1 + 232) = v15;
        *(v1 + 236) = v92;
        *(v1 + 240) = v14;
        v39 = CMTimeCopyDescription(0, (v1 + 224));
        OUTLINED_FUNCTION_582(v39);
        _os_log_impl(&dword_1AC5BC000, v35, v0, "SpeechAnalyzer: Setting finalization input barrier at %@", v37, 0xCu);
        sub_1AC5C9624(v38, &unk_1EB56C630, &qword_1AC7A7E40);
        OUTLINED_FUNCTION_125_1();
        OUTLINED_FUNCTION_96_0();
      }

      v41 = *(v1 + 88);
      v40 = *(v1 + 96);
      v82 = v41;
      v88 = v14;
      v42 = *(v1 + 72);
      v43 = *(v1 + 80);
      v45 = *(v1 + 56);
      v44 = *(v1 + 64);
      v90 = *(v1 + 48);
      v86 = *(v1 + 40);
      v84 = *(v1 + 273);
      sub_1AC7A0338();
      OUTLINED_FUNCTION_235();
      v46 = swift_allocObject();
      swift_weakInit();
      OUTLINED_FUNCTION_504();
      v47 = v41;
      v48 = v44;
      v49(v47, v40, v44);
      v50 = (*(v42 + 80) + 16) & ~*(v42 + 80);
      v81 = v15;
      v51 = (v43 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
      v52 = swift_allocObject();
      (*(v42 + 32))(v52 + v50, v82, v48);
      *(v52 + v51) = v46;
      v53 = v52 + ((v51 + 11) & 0xFFFFFFFFFFFFFFF8);
      *v53 = v16;
      *(v53 + 8) = v81;
      *(v53 + 12) = v92;
      *(v53 + 16) = v88;
      *(v53 + 24) = v84;
      v54 = (v52 + ((v51 + 43) & 0xFFFFFFFFFFFFFFF8));
      *v54 = v86;
      v54[1] = v90;

      v55 = OUTLINED_FUNCTION_429();
      sub_1AC675644(v55, v56, v88, v84, v57, v52);

      (*(v42 + 8))(v40, v48);

LABEL_23:
      v59 = *(v1 + 88);
      v58 = *(v1 + 96);

      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_403();

      __asm { BRAA            X1, X16 }
    }
  }

  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v66 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_10_3(v66, qword_1ED9386C8);
  v67 = sub_1AC79FDC8();
  sub_1AC7A05E8();
  OUTLINED_FUNCTION_38_2();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = OUTLINED_FUNCTION_20();
    *v69 = 0;
    _os_log_impl(&dword_1AC5BC000, v67, v0, "SpeechAnalyzer: Finalizing immediately", v69, 2u);
    OUTLINED_FUNCTION_96_0();
  }

  v70 = *(v1 + 56);

  *(v1 + 104) = sub_1AC5CAF3C();
  v71 = swift_task_alloc();
  *(v1 + 112) = v71;
  *v71 = v1;
  v71[1] = sub_1AC676778;
  v72 = *(v1 + 56);
  v73 = *(v1 + 273);
  OUTLINED_FUNCTION_16_5();
  OUTLINED_FUNCTION_403();

  return sub_1AC678E10(v74, v75, v76, v77, v78);
}

uint64_t sub_1AC676778()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  v3[15] = v0;

  if (v0)
  {
    v9 = v3[7];
    v10 = sub_1AC6768F8;
  }

  else
  {
    v11 = v3[13];
    v12 = v3[7];

    v10 = sub_1AC676888;
    v9 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1AC676888()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 48);
  (*(v0 + 40))(0);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);

  OUTLINED_FUNCTION_44();

  return v4();
}

uint64_t sub_1AC6768F8()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[15];
  v2 = v0[13];
  v4 = v0[5];
  v3 = v0[6];

  v5 = v1;
  v4(v1);

  v7 = v0[11];
  v6 = v0[12];

  OUTLINED_FUNCTION_44();

  return v8();
}

uint64_t SpeechAnalyzer.finalizeAndFinishThroughEndOfInput()()
{
  OUTLINED_FUNCTION_85();
  v1[2] = v0;
  v2 = sub_1AC7A0288();
  v1[3] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[4] = v3;
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_126();
  v6 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC676A38()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v1 = v0[2];
  v2 = sub_1AC65BF3C(0xD000000000000024, 0x80000001AC7B6970);
  v3 = v0[5];
  if (v2)
  {
    v4 = v0[2];
    v5 = v0[5];
    sub_1AC7A0338();
    OUTLINED_FUNCTION_16_6();
    sub_1AC68A730(v6, v7);
    v8 = swift_task_alloc();
    v0[6] = v8;
    *(v8 + 16) = v4;
    *(v8 + 24) = v3;
    v9 = *(MEMORY[0x1E69E8920] + 4);
    v10 = swift_task_alloc();
    v11 = OUTLINED_FUNCTION_42_1(v10);
    *v11 = v12;
    v11[1] = sub_1AC676BA0;
    OUTLINED_FUNCTION_228();
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6DE38](v13, v14, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    v21 = v0[5];

    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_149_0();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_1AC676BA0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    v9 = v3[2];
    v10 = sub_1AC676D20;
  }

  else
  {
    v11 = v3[6];
    v12 = v3[2];

    v10 = sub_1AC676CB0;
    v9 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1AC676CB0()
{
  OUTLINED_FUNCTION_85();
  (*(v0[4] + 8))(v0[5], v0[3]);
  v1 = v0[5];

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1AC676D20()
{
  OUTLINED_FUNCTION_72();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];

  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_89();
  v7(v6);

  OUTLINED_FUNCTION_44();
  v9 = v0[8];

  return v8();
}

uint64_t sub_1AC676DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[1] = a2;
  v21 = a3;
  v22 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v20 - v6;
  v20[0] = v20 - v6;
  v8 = sub_1AC7A0288();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v9 + 16))(v11, v21, v8);
  v13 = v7;
  v14 = v3;
  (*(v4 + 16))(v13, v22, v3);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (*(v4 + 80) + v16 + 8) & ~*(v4 + 80);
  v18 = swift_allocObject();
  (*(v9 + 32))(v18 + v15, v11, v8);
  *(v18 + v16) = v12;
  (*(v4 + 32))(v18 + v17, v20[0], v14);

  sub_1AC67547C(sub_1AC689638, v18);
}

uint64_t sub_1AC677014(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v38 = a1;
  v5 = sub_1AC7A0288();
  v31 = *(v5 - 8);
  v6 = v31;
  v37 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  v8 = *(v33 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v28 - v13;
  v34 = &v28 - v13;
  v15 = *(v6 + 16);
  v15(&v28 - v13, a2, v5);
  v29 = v5;
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v5);
  v30 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v17 = v32;
  v16 = v33;
  (*(v8 + 16))(v32, v36, v33);
  v18 = v35;
  v15(v35, a2, v5);
  v19 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v20 = (v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = v31;
  v22 = (*(v31 + 80) + v20 + 8) & ~*(v31 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v24 = v38;
  *(v23 + 4) = v38;
  (*(v8 + 32))(&v23[v19], v17, v16);
  v25 = v29;
  *&v23[v20] = v30;
  (*(v21 + 32))(&v23[v22], v18, v25);
  v26 = v24;
  sub_1AC659DBC();
}

uint64_t sub_1AC677350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  v7[13] = v8;
  v9 = *(v8 - 8);
  v7[14] = v9;
  v7[15] = *(v9 + 64);
  v7[16] = swift_task_alloc();
  v10 = sub_1AC7A0288();
  v7[17] = v10;
  v11 = *(v10 - 8);
  v7[18] = v11;
  v7[19] = *(v11 + 64);
  v7[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC67748C, 0, 0);
}

uint64_t sub_1AC67748C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_55_3();
  v21 = v19[9];
  if (v21)
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
      v21 = v19[9];
    }

    v22 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v22, qword_1ED9386C8);
    v23 = v21;
    v24 = sub_1AC79FDC8();
    sub_1AC7A05E8();

    if (os_log_type_enabled(v24, v18))
    {
      OUTLINED_FUNCTION_150();
      v25 = OUTLINED_FUNCTION_97_0();
      *v20 = 138412290;
      v26 = v21;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_118(v27);
      OUTLINED_FUNCTION_376(&dword_1AC5BC000, v28, v18, "SpeechAnalyzer: End of input not reached because %@");
      sub_1AC5C9624(v25, &unk_1EB56C630, &qword_1AC7A7E40);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_77_1();
    }

    v29 = v19[13];
    v30 = v19[10];

    v19[8] = v21;
    v31 = v21;
    sub_1AC7A01C8();
LABEL_7:
    v32 = v19[20];
    v33 = v19[16];

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_26();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v43 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_10_3(v43, qword_1ED9386C8);
  v44 = sub_1AC79FDC8();
  v45 = sub_1AC7A05E8();
  if (OUTLINED_FUNCTION_153(v45))
  {
    v46 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_242(v46);
    OUTLINED_FUNCTION_69();
    _os_log_impl(v47, v48, v49, v50, v51, 2u);
    OUTLINED_FUNCTION_129();
  }

  v52 = v19[11];

  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v19[21] = Strong;
  if (!Strong)
  {
    goto LABEL_7;
  }

  v54 = v19[20];
  v55 = v19[18];
  v56 = v19[16];
  v77 = v56;
  v78 = v19[17];
  v57 = v19[14];
  v80 = v19[19];
  v81 = v19[15];
  v58 = v19[12];
  v59 = v19[13];
  v76 = v59;
  v60 = v19[11];
  v79 = v19[10];
  OUTLINED_FUNCTION_235();
  v61 = swift_allocObject();
  v19[22] = v61;
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  OUTLINED_FUNCTION_504();
  v62(v54, v58, v78);
  (*(v57 + 16))(v56, v79, v59);
  v63 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v64 = (v80 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = (*(v57 + 80) + v64 + 8) & ~*(v57 + 80);
  v66 = swift_allocObject();
  v19[23] = v66;
  (*(v55 + 32))(v66 + v63, v54, v78);
  *(v66 + v64) = v61;
  (*(v57 + 32))(v66 + v65, v77, v76);

  v67 = swift_task_alloc();
  v19[24] = v67;
  *v67 = v19;
  v67[1] = sub_1AC677858;
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();

  return sub_1AC675FBC(v68, v69, v70, v71, v72, v73, v74);
}

uint64_t sub_1AC677858()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 176);
  v5 = *(*v0 + 168);
  v6 = *v0;
  OUTLINED_FUNCTION_18();
  *v7 = v6;

  v8 = *(v1 + 160);
  v9 = *(v1 + 128);

  v10 = *(v6 + 8);
  OUTLINED_FUNCTION_149_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1AC6779D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AC6779F8, 0, 0);
}

uint64_t sub_1AC6779F8()
{
  OUTLINED_FUNCTION_72();
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v1 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_10_3(v1, qword_1ED9386C8);
  v2 = sub_1AC79FDC8();
  v3 = sub_1AC7A05E8();
  if (OUTLINED_FUNCTION_153(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_242(v4);
    OUTLINED_FUNCTION_69();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_129();
  }

  v10 = v0[6];

  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v12 = swift_task_alloc();
    v13 = OUTLINED_FUNCTION_588(v12);
    *v13 = v14;
    v13[1] = sub_1AC677BA8;
    v15 = v0[7];
    v16 = OUTLINED_FUNCTION_362();

    return sub_1AC65D064(v16, v17);
  }

  else
  {
    v19 = v0[7];
    v20 = v0[8];
    if (v19)
    {
      v0[5] = v19;
      v21 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
      sub_1AC7A01C8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
      sub_1AC7A01D8();
    }

    OUTLINED_FUNCTION_44();

    return v22();
  }
}

uint64_t sub_1AC677BA8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 80);
  v3 = *(v1 + 72);
  v4 = *v0;
  OUTLINED_FUNCTION_18();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t SpeechAnalyzer.finalizeAndFinish(through:)()
{
  OUTLINED_FUNCTION_85();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_1AC7A0288();
  v1[6] = v5;
  OUTLINED_FUNCTION_22(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = OUTLINED_FUNCTION_126();
  v9 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC677D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  v13 = v12[5];
  if (sub_1AC65BF3C(0xD00000000000001BLL, 0x80000001AC7B69A0))
  {
    v14 = v12[8];
    v16 = v12[4];
    v15 = v12[5];
    v18 = v12[2];
    v17 = v12[3];
    sub_1AC7A0338();
    OUTLINED_FUNCTION_16_6();
    sub_1AC68A730(v19, v20);
    v21 = swift_task_alloc();
    v12[9] = v21;
    v21[2] = v14;
    v21[3] = v15;
    v21[4] = v18;
    v21[5] = v17;
    v21[6] = v16;
    v22 = *(MEMORY[0x1E69E8920] + 4);
    v23 = swift_task_alloc();
    v24 = OUTLINED_FUNCTION_588(v23);
    *v24 = v25;
    v24[1] = sub_1AC677ECC;
    OUTLINED_FUNCTION_228();
    OUTLINED_FUNCTION_77_2();

    return MEMORY[0x1EEE6DE38](v26, v27, v28, v29, v30, v31, v32, v33);
  }

  else
  {
    v34 = v12[8];

    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_77_2();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
  }
}

uint64_t sub_1AC677ECC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    v9 = v3[5];
    v10 = sub_1AC67804C;
  }

  else
  {
    v11 = v3[9];
    v12 = v3[5];

    v10 = sub_1AC677FDC;
    v9 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1AC677FDC()
{
  OUTLINED_FUNCTION_85();
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[8];

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1AC67804C()
{
  OUTLINED_FUNCTION_72();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];

  v5 = *(v4 + 8);
  v6 = OUTLINED_FUNCTION_89();
  v7(v6);

  OUTLINED_FUNCTION_44();
  v9 = v0[11];

  return v8();
}

uint64_t sub_1AC6780D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v34 = a4;
  v35 = a6;
  v31 = a3;
  v32 = a5;
  v30 = a1;
  v33 = HIDWORD(a5);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  v7 = *(v28 - 8);
  v29 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v9 = &v26 - v8;
  v27 = &v26 - v8;
  v10 = sub_1AC7A0288();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v26 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v26 - v15;
  v17 = *(v11 + 16);
  v17(&v26 - v15, a2, v10);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v10);
  v17(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  v18 = v9;
  v19 = v28;
  (*(v7 + 16))(v18, v30, v28);
  v20 = sub_1AC68A730(&qword_1EB56B360, type metadata accessor for SpeechAnalyzer);
  v21 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v22 = (v12 + *(v7 + 80) + v21) & ~*(v7 + 80);
  v23 = swift_allocObject();
  v24 = v31;
  *(v23 + 16) = v31;
  *(v23 + 24) = v20;
  *(v23 + 32) = v24;
  *(v23 + 40) = v34;
  LODWORD(v24) = v33;
  *(v23 + 48) = v32;
  *(v23 + 52) = v24;
  *(v23 + 56) = v35;
  (*(v11 + 32))(v23 + v21, v26, v10);
  (*(v7 + 32))(v23 + v22, v27, v19);
  swift_retain_n();
  sub_1AC659DBC();
}

uint64_t sub_1AC6783F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v16;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  v8[8] = v10;
  v11 = *(v10 - 8);
  v8[9] = v11;
  v8[10] = *(v11 + 64);
  v8[11] = swift_task_alloc();
  v12 = sub_1AC7A0288();
  v8[12] = v12;
  v13 = *(v12 - 8);
  v8[13] = v13;
  v8[14] = *(v13 + 64);
  v8[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC678544, a4, 0);
}

uint64_t sub_1AC678544()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v25 = v1;
  v26 = v4;
  v27 = v0[14];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[6];
  v24 = v0[7];
  v8 = v0[2];
  OUTLINED_FUNCTION_235();
  v9 = swift_allocObject();
  v0[16] = v9;
  swift_weakInit();
  v10 = *(v2 + 16);
  v11 = OUTLINED_FUNCTION_289();
  v12 = v3;
  v13(v11);
  (*(v6 + 16))(v4, v24, v5);
  v14 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v15 = (v27 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (*(v6 + 80) + v15 + 8) & ~*(v6 + 80);
  v17 = swift_allocObject();
  v0[17] = v17;
  (*(v2 + 32))(v17 + v14, v25, v12);
  *(v17 + v15) = v9;
  (*(v6 + 32))(v17 + v16, v26, v5);

  v18 = swift_task_alloc();
  v0[18] = v18;
  *v18 = v0;
  v18[1] = sub_1AC67873C;
  v19 = v0[4];
  v20 = v0[5];
  v22 = v0[2];
  v21 = v0[3];

  return sub_1AC675FBC(v21, v19, v20, 0, 1, sub_1AC689124, v17);
}

uint64_t sub_1AC67873C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v2 = v1[18];
  v3 = v1[17];
  v4 = v1[16];
  v5 = v1[15];
  v6 = v1[11];
  v7 = *v0;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  OUTLINED_FUNCTION_44();

  return v9();
}

void sub_1AC678894()
{
  OUTLINED_FUNCTION_104();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  v9 = OUTLINED_FUNCTION_40(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_49_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_481();
  v18 = sub_1AC7A0288();
  OUTLINED_FUNCTION_80(v18);
  (*(v19 + 16))(v1, v5, v18);
  OUTLINED_FUNCTION_150_1();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v18);
  OUTLINED_FUNCTION_235();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  (*(v11 + 16))(v0, v3, v8);
  v24 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v23;
  v25[5] = v7;
  v26 = *(v11 + 32);
  OUTLINED_FUNCTION_246();
  v27();
  v28 = v7;
  OUTLINED_FUNCTION_248();
  sub_1AC659DBC();

  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC678A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AC678AB8, 0, 0);
}

uint64_t sub_1AC678AB8()
{
  OUTLINED_FUNCTION_72();
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v1 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_10_3(v1, qword_1ED9386C8);
  v2 = sub_1AC79FDC8();
  v3 = sub_1AC7A05E8();
  if (OUTLINED_FUNCTION_153(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_242(v4);
    OUTLINED_FUNCTION_69();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_129();
  }

  v10 = v0[6];

  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v12 = swift_task_alloc();
    v13 = OUTLINED_FUNCTION_588(v12);
    *v13 = v14;
    v13[1] = sub_1AC678C68;
    v15 = v0[7];
    v16 = OUTLINED_FUNCTION_362();

    return sub_1AC65D064(v16, v17);
  }

  else
  {
    v19 = v0[7];
    v20 = v0[8];
    if (v19)
    {
      v0[5] = v19;
      v21 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
      sub_1AC7A01C8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
      sub_1AC7A01D8();
    }

    OUTLINED_FUNCTION_44();

    return v22();
  }
}

uint64_t sub_1AC678C68()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 80);
  v3 = *(v1 + 72);
  v4 = *v0;
  OUTLINED_FUNCTION_18();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC678D68()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[7];
  if (v1)
  {
    v0[5] = v1;
    v2 = v0[8];
    v3 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
    OUTLINED_FUNCTION_287();
    sub_1AC7A01C8();
  }

  else
  {
    v4 = v0[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
    sub_1AC7A01D8();
  }

  OUTLINED_FUNCTION_44();

  return v5();
}

uint64_t sub_1AC678E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 80) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC678E3C, v5, 0);
}

uint64_t sub_1AC678E3C()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 80);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  OUTLINED_FUNCTION_16_6();
  sub_1AC68A730(v7, v8);
  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;
  *(v9 + 32) = v4;
  *(v9 + 40) = v2;
  *(v9 + 48) = v3;
  *(v9 + 56) = v1;
  v10 = *(MEMORY[0x1E69E8920] + 4);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_76(v11);
  *v12 = v13;
  v12[1] = sub_1AC678F68;
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_77_2();

  return MEMORY[0x1EEE6DE38](v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1AC678F68()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  v3[9] = v0;

  if (v0)
  {
    v9 = v3[6];
    v10 = sub_1AC66D410;
  }

  else
  {
    v12 = v3[6];
    v11 = v3[7];

    v10 = sub_1AC5C8B40;
    v9 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1AC679074(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t (*a11)(uint64_t), uint64_t a12)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v25 - v19;
  if (a4)
  {
    return a11(a1);
  }

  HIDWORD(v25) = a10;
  v22 = sub_1AC7A0288();
  (*(*(v22 - 8) + 16))(v20, a5, v22);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v22);
  v23 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v23;
  *(v24 + 40) = a7;
  *(v24 + 48) = a8;
  *(v24 + 56) = a9;
  *(v24 + 64) = BYTE4(v25) & 1;
  *(v24 + 72) = a11;
  *(v24 + 80) = a12;

  sub_1AC659DBC();
}

uint64_t sub_1AC679250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 72) = v10;
  *(v8 + 80) = v11;
  *(v8 + 120) = a8;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1AC679284, 0, 0);
}

uint64_t sub_1AC679284()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_175();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AC67933C, Strong, 0);
  }

  else
  {
    v3 = *(v0 + 80);
    (*(v0 + 72))();
    OUTLINED_FUNCTION_44();

    return v4();
  }
}

uint64_t sub_1AC67933C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 88);
  *(v0 + 96) = sub_1AC5CAF3C();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_585(v2);
  *v3 = v4;
  v3[1] = sub_1AC6793E0;
  v5 = *(v0 + 88);
  v6 = *(v0 + 120);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 48);
  v10 = OUTLINED_FUNCTION_16_5();

  return sub_1AC678E10(v10, v11, v12, v13, v14);
}

uint64_t sub_1AC6793E0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (!v0)
  {
    v9 = *(v3 + 96);
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC6794E0()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 88);

  v2 = *(v0 + 80);
  (*(v0 + 72))(0);
  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t sub_1AC679548()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];

  v6 = v1;
  v5(v1);

  OUTLINED_FUNCTION_44();

  return v7();
}

uint64_t sub_1AC6795DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v30 = a6;
  v8 = a4;
  v27 = a3;
  v28 = HIDWORD(a4);
  v29 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v27 - v18;
  v20 = sub_1AC7A0288();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  (*(v12 + 16))(v15, a1, v11);
  v21 = sub_1AC68A730(&qword_1EB56B360, type metadata accessor for SpeechAnalyzer);
  v22 = (*(v12 + 80) + 80) & ~*(v12 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = a7;
  *(v23 + 24) = v21;
  v25 = v27;
  v24 = v28;
  *(v23 + 32) = a2;
  *(v23 + 40) = v25;
  *(v23 + 48) = v8;
  *(v23 + 52) = v24;
  *(v23 + 56) = v29;
  *(v23 + 64) = v30;
  *(v23 + 72) = a7;
  (*(v12 + 32))(v23 + v22, v15, v11);
  swift_retain_n();

  sub_1AC659DBC();
}

uint64_t sub_1AC679828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 48) = v13;
  *(v8 + 56) = v14;
  *(v8 + 112) = a8;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  *(v8 + 64) = v9;
  v10 = *(v9 - 8);
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 + 64);
  *(v8 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC679910, v13, 0);
}

uint64_t sub_1AC679910()
{
  OUTLINED_FUNCTION_640();
  v14 = v1;
  OUTLINED_FUNCTION_102();
  v2 = *(v0 + 112);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = swift_allocObject();
  *(v0 + 96) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  OUTLINED_FUNCTION_30(&unk_1AC7AE808);
  v13 = v7;
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_585(v8);
  *v9 = v10;
  v9[1] = sub_1AC679A04;
  v11 = *(v0 + 16);

  return v13(&unk_1AC7AAC60, v6, v11);
}

uint64_t sub_1AC679A04()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = v1[13];
  v3 = v1[12];
  v4 = v1[6];
  v5 = *v0;
  OUTLINED_FUNCTION_18();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_89_2();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC679B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  v13 = v12[11];
  v14 = v12[8];
  v15 = v12[9];
  v30 = v12[6];
  v17 = v12[4];
  v16 = v12[5];
  v18 = v12[3];
  (*(v15 + 16))(v13, v12[7], v14);
  v19 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v18;
  *(v20 + 3) = v17;
  *(v20 + 4) = v16;
  (*(v15 + 32))(&v20[v19], v13, v14);
  sub_1AC67A354(v18, v17, v16, sub_1AC6893C4, v20);

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_77_2();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v30, a10, a11, a12);
}

uint64_t sub_1AC679C30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[1];
  *(v5 + 16) = *a1;
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 40);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v5 + 24) = v14;
  *v14 = v5;
  v14[1] = sub_1AC679D88;

  return v16(a2, a3, a4, a5, ObjectType, v10);
}

uint64_t sub_1AC679D88()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v8 + 32) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v12();
  }
}

void sub_1AC679E9C()
{
  OUTLINED_FUNCTION_57();
  v21 = v0;
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_10_3(v4, qword_1ED9386C8);
  swift_unknownObjectRetain();
  v5 = v2;
  v6 = sub_1AC79FDC8();
  v7 = sub_1AC7A05F8();
  swift_unknownObjectRelease();

  v8 = OUTLINED_FUNCTION_645();
  v9 = *(v0 + 32);
  if (v8)
  {
    v10 = *(v0 + 16);
    v11 = OUTLINED_FUNCTION_448();
    OUTLINED_FUNCTION_418();
    v12 = OUTLINED_FUNCTION_230();
    v20 = v12;
    *v11 = 136315394;
    swift_getObjectType();
    v13 = sub_1AC7A0F78();
    v15 = sub_1AC5CFE74(v13, v14, &v20);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2112;
    v16 = v9;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v17;
    *v1 = v17;
    _os_log_impl(&dword_1AC5BC000, v6, v7, "SpeechAnalyzer: %s failed to finalize: %@", v11, 0x16u);
    sub_1AC5C9624(v1, &unk_1EB56C630, &qword_1AC7A7E40);
    OUTLINED_FUNCTION_125_1();
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_96_0();
    OUTLINED_FUNCTION_129();
  }

  else
  {
  }

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_634();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1AC67A05C(void *a1, uint64_t a2, uint64_t a3, char a4, CMTimeValue a5, uint64_t a6, CMTimeEpoch a7)
{
  if (a4)
  {
    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v10 = sub_1AC79FDE8();
    __swift_project_value_buffer(v10, qword_1ED9386C8);
    v11 = a1;
    v12 = sub_1AC79FDC8();
    v13 = sub_1AC7A05E8();
    sub_1AC688EEC(a1, a2, a3, 1);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = a1;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_1AC5BC000, v12, v13, "SpeechAnalyzer: Finalization failed: %@", v14, 0xCu);
      sub_1AC5C9624(v15, &unk_1EB56C630, &qword_1AC7A7E40);
      MEMORY[0x1B26EAB10](v15, -1, -1);
      MEMORY[0x1B26EAB10](v14, -1, -1);
    }

    time.value = a1;
    v18 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
    return sub_1AC7A01C8();
  }

  else
  {
    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v23 = sub_1AC79FDE8();
    __swift_project_value_buffer(v23, qword_1ED9386C8);
    v24 = sub_1AC79FDC8();
    v25 = sub_1AC7A05E8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      time.value = a5;
      *&time.timescale = a6;
      time.epoch = a7;
      v28 = CMTimeCopyDescription(0, &time);
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&dword_1AC5BC000, v24, v25, "SpeechAnalyzer: Finalized through %@", v26, 0xCu);
      sub_1AC5C9624(v27, &unk_1EB56C630, &qword_1AC7A7E40);
      MEMORY[0x1B26EAB10](v27, -1, -1);
      MEMORY[0x1B26EAB10](v26, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
    return sub_1AC7A01D8();
  }
}

void sub_1AC67A354(CMTimeValue a1, unint64_t a2, CMTimeEpoch a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = a2;
  v12 = HIDWORD(a2);
  if (off_1ED937D60 != -1)
  {
    swift_once();
  }

  v13 = sub_1AC79FDE8();
  __swift_project_value_buffer(v13, qword_1ED9386C8);
  v14 = sub_1AC79FDC8();
  v15 = sub_1AC7A05E8();
  if (os_log_type_enabled(v14, v15))
  {
    v25 = a4;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    time.value = a1;
    time.timescale = v10;
    time.flags = v12;
    time.epoch = a3;
    v18 = CMTimeCopyDescription(0, &time);
    *(v16 + 4) = v18;
    *v17 = v18;
    _os_log_impl(&dword_1AC5BC000, v14, v15, "SpeechAnalyzer: Setting volatile range barrier at %@", v16, 0xCu);
    sub_1AC5C9624(v17, &unk_1EB56C630, &qword_1AC7A7E40);
    MEMORY[0x1B26EAB10](v17, -1, -1);
    v19 = v16;
    a4 = v25;
    MEMORY[0x1B26EAB10](v19, -1, -1);
  }

  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v21 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_volatileRangeBarriers;
  swift_beginAccess();

  sub_1AC703C8C();
  v22 = *(*(v6 + v21) + 16);
  sub_1AC703DDC(v22);
  v23 = *(v6 + v21);
  *(v23 + 16) = v22 + 1;
  v24 = v23 + 40 * v22;
  *(v24 + 32) = a1;
  *(v24 + 40) = v10;
  *(v24 + 44) = v12;
  *(v24 + 48) = a3;
  *(v24 + 56) = sub_1AC68A87C;
  *(v24 + 64) = v20;
  *(v6 + v21) = v23;
  swift_endAccess();
  sub_1AC5C9678();
}

uint64_t sub_1AC67A574(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v4 = *a2;
  v3 = a2[1];
  ObjectType = swift_getObjectType();
  v6 = *(v3 + 32);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v2 + 24) = v8;
  *v8 = v2;
  v8[1] = sub_1AC67A6A0;

  return v10(v2 + 32, ObjectType, v3);
}

uint64_t sub_1AC67A6A0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC67A784()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  *(v1 + 48) = *(v0 + 80);
  *(v1 + 16) = v3;
  *(v1 + 32) = v4;
  *v1 = v2;
  return OUTLINED_FUNCTION_28_4();
}

uint64_t SpeechAnalyzer.finish(after:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_15_5(sub_1AC67A7C4, v3);
}

uint64_t sub_1AC67A7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  v13 = v12[5];
  v14 = OUTLINED_FUNCTION_172();
  if (sub_1AC65BF3C(v14, v15))
  {
    v17 = v12[4];
    v16 = v12[5];
    v19 = v12[2];
    v18 = v12[3];
    OUTLINED_FUNCTION_16_6();
    sub_1AC68A730(v20, v21);
    v22 = swift_task_alloc();
    v12[6] = v22;
    v22[2] = v16;
    v22[3] = v19;
    v22[4] = v18;
    v22[5] = v17;
    v23 = *(MEMORY[0x1E69E8920] + 4);
    v24 = swift_task_alloc();
    v25 = OUTLINED_FUNCTION_42_1(v24);
    *v25 = v26;
    v25[1] = sub_1AC67A930;
    OUTLINED_FUNCTION_228();
    OUTLINED_FUNCTION_77_2();

    return MEMORY[0x1EEE6DE38](v27, v28, v29, v30, v31, v32, v33, v34);
  }

  else
  {
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_77_2();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
  }
}

uint64_t sub_1AC67A930()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    v9 = v3[5];
    v10 = sub_1AC65CDCC;
  }

  else
  {
    v12 = v3[5];
    v11 = v3[6];

    v10 = j__OUTLINED_FUNCTION_28_4;
    v9 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1AC67AA3C(uint64_t a1, uint64_t a2, CMTimeValue a3, unint64_t a4, CMTimeEpoch a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  sub_1AC67AC18(a3, a4, a5, sub_1AC688D44, v15);
}

uint64_t sub_1AC67ABA4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
    return sub_1AC7A01C8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
    return sub_1AC7A01D8();
  }
}

uint64_t sub_1AC67AC18(CMTimeValue a1, unint64_t a2, CMTimeEpoch a3, uint64_t a4, uint64_t a5)
{
  v58 = a4;
  v10 = sub_1AC7A0288();
  v56 = *(v10 - 8);
  v57 = v10;
  v11 = *(v56 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v55 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v49 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v49 - v16;
  v59 = v5;
  v18 = (v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputBufferRange);
  if (*(v5 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputBufferRange + 48))
  {
    goto LABEL_2;
  }

  v40 = v18[4];
  v39 = v18[5];
  v42 = v18[2];
  v41 = v18[3];
  v43 = v18[1];
  v62 = *v18;
  v63 = v43;
  v64 = v42;
  v65 = v41;
  v66 = v40;
  v67 = v39;
  if (sub_1AC7A0528() & 1) != 0 || (sub_1AC7A0678())
  {
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v57);
    v44 = sub_1AC68A730(&qword_1EB56B360, type metadata accessor for SpeechAnalyzer);
    v45 = swift_allocObject();
    v47 = v58;
    v46 = v59;
    v45[2] = v59;
    v45[3] = v44;
    v45[4] = v46;
    v45[5] = v47;
    v45[6] = a5;
    swift_retain_n();

    sub_1AC659DBC();
  }

  else
  {
LABEL_2:
    time.value = a1;
    *&time.timescale = a2;
    v53 = a3;
    time.epoch = a3;
    v19 = CMTimeCopyDescription(0, &time);
    sub_1AC7A0338();
    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v51 = a1;
    v52 = a2;
    v54 = a5;
    v20 = sub_1AC79FDE8();
    __swift_project_value_buffer(v20, qword_1ED9386C8);
    v21 = v19;
    v22 = sub_1AC79FDC8();
    v23 = sub_1AC7A05E8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v19;
      v26 = v21;
      _os_log_impl(&dword_1AC5BC000, v22, v23, "SpeechAnalyzer: Setting finisher input barrier at %@", v24, 0xCu);
      sub_1AC5C9624(v25, &unk_1EB56C630, &qword_1AC7A7E40);
      MEMORY[0x1B26EAB10](v25, -1, -1);
      MEMORY[0x1B26EAB10](v24, -1, -1);
    }

    v27 = swift_allocObject();
    swift_weakInit();
    v29 = v55;
    v28 = v56;
    v30 = *(v56 + 16);
    v50 = v19;
    v31 = v57;
    v30(v55, v60, v57);
    v32 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v33 = (v11 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    (*(v28 + 32))(v35 + v32, v29, v31);
    *(v35 + v33) = v27;
    *(v35 + v34) = v50;
    v36 = (v35 + ((v34 + 15) & 0xFFFFFFFFFFFFFFF8));
    v37 = v54;
    *v36 = v58;
    v36[1] = v37;

    v38 = v21;

    sub_1AC675644(v51, v52, v53, 1, sub_1AC688D48, v35);

    (*(v28 + 8))(v60, v31);
  }
}

Swift::Void __swiftcall SpeechAnalyzer.cancelAnalysis(before:)(CMTime before)
{
  sub_1AC70C064();
  OUTLINED_FUNCTION_65();

  sub_1AC65BF3C(0xD000000000000017, v1);
}

uint64_t sub_1AC67B154()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_65();
  if (sub_1AC65BF3C(0xD000000000000014, v2))
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v3 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v3, qword_1ED9386C8);
    v4 = sub_1AC79FDC8();
    v5 = sub_1AC7A05E8();
    if (OUTLINED_FUNCTION_153(v5))
    {
      v6 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_242(v6);
      OUTLINED_FUNCTION_69();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      OUTLINED_FUNCTION_129();
    }

    v12 = swift_task_alloc();
    *(v0 + 24) = v12;
    *v12 = v0;
    v12[1] = sub_1AC62A5AC;
    v13 = *(v0 + 16);

    return sub_1AC65D064(1, 0);
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v15();
  }
}

uint64_t sub_1AC67B2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AC67B2DC, a4, 0);
}

uint64_t sub_1AC67B2DC()
{
  OUTLINED_FUNCTION_72();
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v1 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_10_3(v1, qword_1ED9386C8);
  v2 = sub_1AC79FDC8();
  v3 = sub_1AC7A05E8();
  if (OUTLINED_FUNCTION_153(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_242(v4);
    OUTLINED_FUNCTION_69();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_129();
  }

  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_422(v10);
  *v11 = v12;
  v11[1] = sub_1AC67B3E8;
  v13 = *(v0 + 16);
  v14 = OUTLINED_FUNCTION_362();

  return sub_1AC65D064(v14, 0);
}

uint64_t sub_1AC67B3E8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 40);
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_18();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC67B4E0()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 32);
  (*(v0 + 24))(0);
  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC67B540(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v24 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v24 - v17;
  v19 = sub_1AC7A0288();
  (*(*(v19 - 8) + 16))(v18, a5, v19);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v19);
  v20 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  *(v21 + 48) = a3;
  *(v21 + 56) = a4 & 1;
  *(v21 + 64) = a7;
  *(v21 + 72) = v20;
  *(v21 + 80) = v24;
  *(v21 + 88) = a9;
  sub_1AC688FC8(a1, a2, a3, a4 & 1);
  v22 = a7;

  sub_1AC659DBC();
}

uint64_t sub_1AC67B714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 96) = v11;
  *(v8 + 80) = v10;
  *(v8 + 136) = a7;
  *(v8 + 64) = a4;
  *(v8 + 72) = a8;
  return MEMORY[0x1EEE6DFA0](sub_1AC67B74C, 0, 0);
}

uint64_t sub_1AC67B74C()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  if (*(v0 + 136))
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v2 = *(v0 + 72);
    v3 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v3, qword_1ED9386C8);
    v4 = v2;
    v5 = sub_1AC79FDC8();
    v6 = sub_1AC7A05E8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 72);
      OUTLINED_FUNCTION_150();
      v8 = OUTLINED_FUNCTION_97_0();
      *v1 = 138412290;
      *(v1 + 4) = v4;
      *v8 = v7;
      v9 = v4;
      OUTLINED_FUNCTION_94();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
      sub_1AC5C9624(v8, &unk_1EB56C630, &qword_1AC7A7E40);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_77_1();
    }

    v15 = *(v0 + 80);

    OUTLINED_FUNCTION_175();
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 120) = Strong;
    if (Strong)
    {
      v17 = swift_task_alloc();
      v18 = OUTLINED_FUNCTION_584(v17);
      *v18 = v19;
      v18[1] = sub_1AC67BBB8;
      v20 = *(v0 + 64);
LABEL_14:
      OUTLINED_FUNCTION_523();

      return sub_1AC65D064(v37, v38);
    }

    v35 = *(v0 + 64);
  }

  else
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v21 = *(v0 + 72);
    v22 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v22, qword_1ED9386C8);
    v23 = v21;
    v24 = sub_1AC79FDC8();
    v25 = sub_1AC7A05E8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 72);
      OUTLINED_FUNCTION_150();
      v27 = OUTLINED_FUNCTION_97_0();
      *v1 = 138412290;
      *(v1 + 4) = v23;
      *v27 = v26;
      v28 = v23;
      OUTLINED_FUNCTION_94();
      _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
      sub_1AC5C9624(v27, &unk_1EB56C630, &qword_1AC7A7E40);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_77_1();
    }

    v34 = *(v0 + 80);

    OUTLINED_FUNCTION_175();
    swift_beginAccess();
    v35 = swift_weakLoadStrong();
    *(v0 + 104) = v35;
    if (v35)
    {
      v36 = swift_task_alloc();
      *(v0 + 112) = v36;
      *v36 = v0;
      OUTLINED_FUNCTION_85_0(v36);
      goto LABEL_14;
    }
  }

  v41 = *(v0 + 96);
  (*(v0 + 88))(v35);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_523();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49);
}

uint64_t sub_1AC67BA58()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 112);
  v3 = *(v1 + 104);
  v4 = *v0;
  OUTLINED_FUNCTION_18();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC67BB58()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 96);
  (*(v0 + 88))(0);
  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC67BBB8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 128);
  v3 = *(v1 + 120);
  v4 = *v0;
  OUTLINED_FUNCTION_18();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC67BCB8()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 96);
  (*(v0 + 88))(*(v0 + 64));
  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC67BD18(uint64_t a1)
{
  v2 = v1;
  if (off_1ED937D60 != -1)
  {
    swift_once();
  }

  v4 = sub_1AC79FDE8();
  __swift_project_value_buffer(v4, qword_1ED9386C8);
  v5 = sub_1AC79FDC8();
  v6 = sub_1AC7A05E8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1AC5BC000, v5, v6, "SpeechAnalyzer: Clearing volatile range barriers", v7, 2u);
    MEMORY[0x1B26EAB10](v7, -1, -1);
  }

  v8 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_volatileRangeBarriers;
  swift_beginAccess();
  v9 = *(v2 + v8);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = *(v2 + v8);

    v12 = (v9 + 64);
    do
    {
      v14 = *(v12 - 1);
      v13 = *v12;
      v17[0] = a1;
      v17[1] = 0;
      v17[2] = 0;
      v18 = 1;

      v14(v17);

      v12 += 5;
      --v10;
    }

    while (v10);

    v15 = *(v2 + v8);
  }

  *(v2 + v8) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1AC67BEAC(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 56);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1AC67BFCC;

  return v9(ObjectType, v2);
}

uint64_t sub_1AC67BFCC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = *(v2 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_44();

  return v6();
}

__n128 SpeechAnalyzer.volatileRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = (v1 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange);
  v3 = *(v1 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange + 48);
  v4 = *(v1 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange);
  *(a1 + 16) = v4;
  result = v2[2];
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

uint64_t SpeechAnalyzer.setVolatileRangeChangedHandler(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange);
  v4 = *(v2 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange);
  v5 = *(v2 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1AC5C3958(v4);
}

uint64_t sub_1AC67C11C()
{
  OUTLINED_FUNCTION_72();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalContext);
  OUTLINED_FUNCTION_82();
  v5 = v2;

  return v5(v3);
}

uint64_t sub_1AC67C1A4()
{
  OUTLINED_FUNCTION_85();
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalContext);

  AnalysisContext.contextualStrings.getter();
  OUTLINED_FUNCTION_117_2();

  OUTLINED_FUNCTION_82();

  return v3(v0);
}

uint64_t sub_1AC67C238()
{
  OUTLINED_FUNCTION_85();
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalContext);

  AnalysisContext.userData.getter();
  OUTLINED_FUNCTION_117_2();

  OUTLINED_FUNCTION_82();

  return v3(v0);
}

uint64_t SpeechAnalyzer.setContext(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_15_5(sub_1AC67C2CC, v1);
}

uint64_t sub_1AC67C2CC()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 24);
  if (sub_1AC65BF3C(0x65746E6F43746573, 0xEE00293A5F287478))
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalContext;
    v5 = *(v3 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalContext);

    v6 = OUTLINED_FUNCTION_123();
    sub_1AC6877BC(v6, v7, v8);

    v9 = *(v3 + v4);
    *(v3 + v4) = v2;

    OUTLINED_FUNCTION_38_5();
    v10 = OUTLINED_FUNCTION_89();
    sub_1AC6877BC(v10, v11, v12);
    sub_1AC67C4F8(v2);
    v13 = swift_task_alloc();
    v14 = OUTLINED_FUNCTION_55(v13);
    *v14 = v15;
    OUTLINED_FUNCTION_140_1(v14);

    return sub_1AC674E40();
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v17();
  }
}

uint64_t sub_1AC67C418()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  OUTLINED_FUNCTION_29();

  return v5();
}

void sub_1AC67C4F8(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_updatedContext;
  os_unfair_lock_lock(v3);
  v4 = *(v3 + 8);

  *(v3 + 8) = a1;

  os_unfair_lock_unlock(v3);
}

uint64_t static SpeechAnalyzer.bestAvailableAudioFormat(compatibleWith:)()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_95_2(v1);

  return static SpeechAnalyzer.bestAvailableAudioFormat(compatibleWith:considering:)();
}

uint64_t static SpeechAnalyzer.bestAvailableAudioFormat(compatibleWith:considering:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_78_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  v1[1] = sub_1AC637EE4;
  v3 = OUTLINED_FUNCTION_172();

  return sub_1AC67C738(v3, v4, v5, 0);
}

uint64_t sub_1AC67C688(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = *(a2 + 8);
  *v6 = v2;
  v6[1] = sub_1AC60D7F0;

  return sub_1AC688C28(a1, ObjectType, v7);
}

uint64_t sub_1AC67C738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AC67C75C, 0, 0);
}

uint64_t sub_1AC67C75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_169();
  v15 = v14;
  v16 = v14[2];
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v40 = v14;
    v41 = MEMORY[0x1E69E7CC0];
    sub_1AC6314F8(0, v17, 0);
    v18 = v41;
    v19 = (v16 + 32);
    do
    {
      v20 = *v19;
      swift_getObjectType();
      v21 = dynamic_cast_existential_1_unconditional(v20);
      v23 = v22;
      a11 = v18;
      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      swift_unknownObjectRetain();
      if (v25 >= v24 >> 1)
      {
        sub_1AC6314F8((v24 > 1), v25 + 1, 1);
      }

      *(v18 + 16) = v25 + 1;
      v26 = v18 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
      v19 += 2;
      --v17;
    }

    while (v17);
    v15 = v40;
  }

  v15[6] = v18;
  v28 = v15[4];
  v27 = v15[5];
  OUTLINED_FUNCTION_99();
  v29 = swift_allocObject();
  v15[7] = v29;
  *(v29 + 16) = v28;
  *(v29 + 24) = v27;

  v30 = swift_task_alloc();
  v15[8] = v30;
  *v30 = v15;
  v30[1] = sub_1AC67C908;
  OUTLINED_FUNCTION_334();
  OUTLINED_FUNCTION_115();

  return v34(v31, v32, v33, v34, v35, v36, v37, v38, a9, sub_1AC66D1B4, a11, a12, a13, a14);
}

void sub_1AC67C908()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 64);
  *v4 = *v1;
  v3[9] = v7;
  v3[10] = v0;

  if (v0)
  {
  }

  else
  {
    v8 = v3[7];

    OUTLINED_FUNCTION_138();

    MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

id sub_1AC67CA34()
{
  OUTLINED_FUNCTION_57();
  v41 = v1;
  v4 = v1[9];
  if (*(v4 + 16))
  {
    v5 = v1[9];

    sub_1AC5C8FDC(1, v4);
    if (!*(v4 + 16))
    {
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_612();
    v6 = *(v1[9] + 32);

    sub_1AC6091F8(v7);
    v9 = v8;
    v10 = v3 >> 1;
    while (v10 != v2)
    {
      if (v2 >= v10)
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        swift_once();
LABEL_25:
        v19 = qword_1EB56E820;
        goto LABEL_26;
      }

      v11 = v2 + 1;
      v12 = *(v0 + 8 * v2);
      OUTLINED_FUNCTION_392();
      swift_bridgeObjectRetain_n();
      sub_1AC6091F8(v12);
      sub_1AC683BF0(v13, v9);
      v9 = v14;

      v2 = v11;
    }

    v15 = v1[10];
    swift_unknownObjectRelease();
    v40 = sub_1AC751CD0(v9);
    sub_1AC684D70(&v40);
    if (v15)
    {
    }

    v20 = v40;
    v21 = sub_1AC61C24C(v40);
    if (!v21)
    {
      v33 = v1[9];
      v34 = v1[6];

      v19 = 0;
      goto LABEL_34;
    }

    v22 = v1[3];
    if (v22)
    {
      v23 = v21;
      v24 = v22;
      for (i = 0; v23 != i; ++i)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v31 = OUTLINED_FUNCTION_605();
          v27 = MEMORY[0x1B26E95B0](v31);
        }

        else
        {
          OUTLINED_FUNCTION_356();
          if (v26)
          {
            goto LABEL_39;
          }

          v27 = *(v20 + 8 * i + 32);
        }

        v19 = v27;
        if (__OFADD__(i, 1))
        {
          goto LABEL_38;
        }

        [v27 sampleRate];
        v29 = v28;
        [v24 sampleRate];
        if (v30 <= v29)
        {
          goto LABEL_32;
        }
      }

      result = sub_1AC68D47C(v20);
      if (!result)
      {
        goto LABEL_43;
      }

      v19 = result;
LABEL_32:
      v37 = v1[6];

      v38 = v1[9];
      goto LABEL_33;
    }

    result = sub_1AC68D47C(v20);
    if (result)
    {
      v19 = result;
      v35 = v1[9];
      v36 = v1[6];

LABEL_33:

      goto LABEL_34;
    }

    __break(1u);
LABEL_43:
    __break(1u);
  }

  else
  {
    v17 = v1[6];
    v18 = v1[3];

    if (!v18)
    {
      if (qword_1EB56B580 != -1)
      {
        goto LABEL_41;
      }

      goto LABEL_25;
    }

    v19 = v1[3];
LABEL_26:
    v32 = v19;
LABEL_34:
    OUTLINED_FUNCTION_82();

    return v39(v19);
  }

  return result;
}

uint64_t sub_1AC67CD30(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v5 = a2[1];
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1AC67CE30;

  return v9(v4, v5);
}

uint64_t sub_1AC67CE30()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  *(v1 + 32) = v5;

  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1AC67CF18()
{
  OUTLINED_FUNCTION_57();
  v1 = *(v0 + 32);
  v2 = sub_1AC61C24C(v1);
  v3 = 0;
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1B26E95B0](v3, *(v0 + 32));
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v4 = *(v1 + 32 + 8 * v3);
    }

    v5 = v4;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

    [v4 sampleRate];
    v7 = v6;

    ++v3;
    if (v7 == 0.0)
    {
      v8 = *(v0 + 32);

      v1 = 0;
      break;
    }
  }

  **(v0 + 16) = v1;
  OUTLINED_FUNCTION_29();

  v9();
}

uint64_t SpeechAnalyzer.__allocating_init<A>(client:inputSequence:audioFormat:modules:options:restrictedLogging:analysisContext:didChangeVolatileRange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = OUTLINED_FUNCTION_377();
  SpeechAnalyzer.init<A>(client:inputSequence:audioFormat:modules:options:restrictedLogging:analysisContext:didChangeVolatileRange:)(a1, a2, a3, a4, a5, 0, a7, a8, a9, a10, a11, v20, a9, a10, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  return v18;
}

void SpeechAnalyzer.init<A>(client:inputSequence:audioFormat:modules:options:restrictedLogging:analysisContext:didChangeVolatileRange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_104();
  v136 = v26;
  v137 = v25;
  v28 = v27;
  v127 = v29;
  v138 = v31;
  v139 = v30;
  v135 = a21;
  v132 = v32;
  v133 = a22;
  OUTLINED_FUNCTION_44_4();
  v131 = v33;
  v35 = *(v34 + 64);
  v130 = a23;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_596();
  v128 = v37;
  v129 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_482();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7E8, &qword_1AC7AA900);
  v44 = OUTLINED_FUNCTION_167(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5();
  v49 = v47 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v123 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v54 = OUTLINED_FUNCTION_167(v53);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_5();
  v134 = v57 - v58;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v123 - v60;
  v62 = sub_1AC7A0288();
  v63 = OUTLINED_FUNCTION_40(v62);
  v65 = v64;
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_597();
  v125 = v69;
  v126 = v68;
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v123 - v71;
  swift_defaultActor_initialize();
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules) = 0;
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalModules) = MEMORY[0x1E69E7CC0];
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputTask) = 0;
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isRunningInputLoop) = 0;
  OUTLINED_FUNCTION_220(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputBufferRange);
  OUTLINED_FUNCTION_472(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_latestInputSampleTime);
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isInputFinished) = 0;
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didFinishInputHandlers) = v73;
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_inputBarriers) = v73;
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_isFinished) = 0;
  OUTLINED_FUNCTION_471((v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalVolatileRange), v74);
  v75 = (v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange);
  *v75 = 0;
  v75[1] = 0;
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_volatileRangeBarriers) = v76;
  v77 = v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_updatedContext;
  *v77 = 0;
  *(v77 + 8) = 0;
  v78 = v28;
  v79 = OUTLINED_FUNCTION_389();
  sub_1AC68A3F8(v79, v80, &qword_1EB56C7E8, &qword_1AC7AA900);
  v81 = type metadata accessor for AnalysisOptions(0);
  OUTLINED_FUNCTION_96(v52, 1, v81);
  if (v82)
  {
    sub_1AC5C9624(v52, &qword_1EB56C7E8, &qword_1AC7AA900);
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v83, v84, v85, v62);
    sub_1AC7A0338();
    OUTLINED_FUNCTION_96(v61, 1, v62);
    v93 = v72;
    if (!v82)
    {
      sub_1AC5C9624(v61, &qword_1EB56BE70, &qword_1AC7A8270);
    }
  }

  else
  {
    OUTLINED_FUNCTION_504();
    v86(v61, v52, v62);
    sub_1AC68A2BC();
    OUTLINED_FUNCTION_150_1();
    __swift_storeEnumTagSinglePayload(v87, v88, v89, v62);
    v90 = *(v65 + 32);
    v91 = OUTLINED_FUNCTION_515();
    v92(v91);
    v93 = v72;
  }

  sub_1AC68A130(v139, v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_clientInfo);
  v94 = OUTLINED_FUNCTION_594();
  sub_1AC68A130(v94, v95);
  v124 = v78;
  sub_1AC68A3F8(v78, v49, &qword_1EB56C7E8, &qword_1AC7AA900);
  sub_1AC6D980C(v49);
  sub_1AC68A444(v24, v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_options, &qword_1EB56C7D0, &qword_1AC7ACB40);
  v96 = sub_1AC6089EC(v127);

  v97 = *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules);
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_pendingNewModules) = v96;

  v98 = v136;
  if (v136)
  {
    v99 = v135;
  }

  else
  {
    v99 = 0;
  }

  v100 = (v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange);
  v101 = *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange);
  v102 = *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange + 8);
  *v100 = v136;
  v100[1] = v99;
  sub_1AC5D9374(v98);
  v103 = OUTLINED_FUNCTION_142();
  sub_1AC5C3958(v103);
  v104 = v137;
  *(v23 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_internalContext) = v137;

  OUTLINED_FUNCTION_38_5();
  sub_1AC6877BC(v105, v104, v106);

  v107 = *(v65 + 16);
  v108 = v62;
  v107(v134, v93, v62);
  OUTLINED_FUNCTION_150_1();
  __swift_storeEnumTagSinglePayload(v109, v110, v111, v62);
  v112 = v131;
  v113 = *(v131 + 16);
  v114 = v93;
  v123 = v93;
  v115 = v65;
  v116 = v128;
  v117 = v133;
  v113(v128, v138, v133);
  v118 = v126;
  v107(v126, v114, v108);
  v119 = (*(v112 + 80) + 56) & ~*(v112 + 80);
  v120 = (v129 + *(v115 + 80) + v119) & ~*(v115 + 80);
  v121 = swift_allocObject();
  *(v121 + 2) = 0;
  *(v121 + 3) = 0;
  v122 = v130;
  *(v121 + 4) = v117;
  *(v121 + 5) = v122;
  *(v121 + 6) = v23;
  (*(v112 + 32))(&v121[v119], v116, v117);
  (*(v115 + 32))(&v121[v120], v118, v108);

  OUTLINED_FUNCTION_99_1();
  sub_1AC659DBC();

  sub_1AC5C3958(v136);
  sub_1AC5C9624(v124, &qword_1EB56C7E8, &qword_1AC7AA900);
  (*(v112 + 8))(v138, v117);
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();
  (*(v115 + 8))(v123, v108);
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC67D7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AC67D7E0, a4, 0);
}

uint64_t AnalyzerInput.init(buffer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  return result;
}

void AnalyzerInput.init(buffer:bufferStartTime:recordedTime:readyUpstreamTime:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  if ((a5 & 1) == 0)
  {
    OUTLINED_FUNCTION_117();
    sub_1AC70C064();
  }

  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5 & 1;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10 & 1;
}

void AnalyzerInput.init(buffer:bufferStartTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  OUTLINED_FUNCTION_302();
  v11 = v10;
  if ((v12 & 1) == 0)
  {
    OUTLINED_FUNCTION_334();
    sub_1AC70C064();
  }

  *v11 = v7;
  *(v11 + 8) = v6;
  *(v11 + 16) = v5;
  *(v11 + 24) = a4;
  *(v11 + 32) = a5 & 1;
  *(v11 + 40) = 0;
  *(v11 + 48) = 1;
  *(v11 + 56) = 0;
  *(v11 + 64) = 1;
}

uint64_t AnalyzerInput.bufferStartTime.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  return result;
}

uint64_t AnalyzerInput.recordedTime.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t AnalyzerInput.readyUpstreamTime.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

id sub_1AC67D9DC()
{
  v4 = *MEMORY[0x1E69E9840];
  if (qword_1EB56B588 != -1)
  {
    swift_once();
  }

  v2[0] = xmmword_1EB56C7A8;
  v2[1] = unk_1EB56C7B8;
  v3 = qword_1EB56C7C8;
  result = [objc_allocWithZone(MEMORY[0x1E6958418]) initWithStreamDescription_];
  if (!result)
  {
    __break(1u);
  }

  qword_1EB56E820 = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

double sub_1AC67DA98()
{
  qword_1EB56C7C8 = 0;
  result = 0.0;
  xmmword_1EB56C7A8 = 0u;
  unk_1EB56C7B8 = 0u;
  return result;
}

uint64_t SpeechAnalyzer.prepareToAnalyze()()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);
  v3 = OUTLINED_FUNCTION_248();

  return SpeechAnalyzer.prepareToAnalyze(in:withProgressReadyHandler:)(v3, v4, 0);
}

uint64_t SpeechAnalyzer.prepareToAnalyze(withProgressReadyHandler:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_78_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  sub_1AC5D9374(v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_422(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_85_0(v5);
  v7 = OUTLINED_FUNCTION_155_1();

  return SpeechAnalyzer.prepareToAnalyze(in:withProgressReadyHandler:)(v7, v8, v9);
}

uint64_t sub_1AC67DBD4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *(v4 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v9 + 48) = v0;

  if (v0)
  {
    v10 = sub_1AC67DD3C;
  }

  else
  {
    v10 = sub_1AC67DCE4;
  }

  return MEMORY[0x1EEE6DFA0](v10, v6, 0);
}

uint64_t sub_1AC67DCE4()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 24);
  sub_1AC5C3958(*(v0 + 16));
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1AC67DD3C()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[3];
  sub_1AC5C3958(v0[2]);
  OUTLINED_FUNCTION_44();
  v3 = v0[6];

  return v2();
}

uint64_t SpeechAnalyzer.prepareToAnalyze(reportingInto:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_15_5(sub_1AC67DDB4, v1);
}

uint64_t sub_1AC67DDB4()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 16);
  if (v1)
  {
    OUTLINED_FUNCTION_235();
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    v3 = v1;
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_55(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_382(v5);
    v7 = sub_1AC687DC0;
    v8 = 0;
    v9 = v2;
  }

  else
  {
    v10 = swift_task_alloc();
    v11 = OUTLINED_FUNCTION_422(v10);
    *v11 = v12;
    OUTLINED_FUNCTION_140_1(v11);
    v8 = OUTLINED_FUNCTION_248();
    v9 = 0;
  }

  return SpeechAnalyzer.prepareToAnalyze(in:withProgressReadyHandler:)(v8, v7, v9);
}

id sub_1AC67DECC(uint64_t a1, id a2)
{
  [a2 setCompletedUnitCount_];
  [a2 setTotalUnitCount_];

  return [a2 addChild:a1 withPendingUnitCount:1];
}

uint64_t SpeechAnalyzer.setInputSequence<A>(_:)()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);
  OUTLINED_FUNCTION_203_0();

  return SpeechAnalyzer.start<A>(inputSequence:)();
}

uint64_t SpeechAnalyzer.setInputSequence<A>(_:audioFormat:)()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);
  OUTLINED_FUNCTION_203_0();

  return SpeechAnalyzer.start<A>(inputSequence:)();
}

uint64_t SpeechAnalyzer.setInputSequence<A>(_:withAudioFormat:)()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);
  OUTLINED_FUNCTION_203_0();

  return SpeechAnalyzer.start<A>(inputSequence:)();
}

void SpeechAnalyzer.__allocating_init(client:modules:options:restrictedLogging:didChangeVolatileRange:)()
{
  OUTLINED_FUNCTION_104();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v39 = v9;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_49_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_167(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_234();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v23);
  v24 = OUTLINED_FUNCTION_169_0();
  v25 = type metadata accessor for ClientInfo(v24);
  v26 = OUTLINED_FUNCTION_167(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_437();
  OUTLINED_FUNCTION_7_6();
  sub_1AC68A130(v11, v1);
  sub_1AC68A3F8(v8, v2, &qword_1EB56C7E8, &qword_1AC7AA900);
  v29 = OUTLINED_FUNCTION_289();
  sub_1AC5D9374(v29);
  sub_1AC6D980C(v2);
  v30 = *(v1 + 48);
  v31 = *(v1 + 52);
  swift_allocObject();
  v32 = OUTLINED_FUNCTION_510();
  SpeechAnalyzer.init(client:modules:options:)(v32, v39, v0);
  if (v6)
  {
    sub_1AC7A0288();
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
    OUTLINED_FUNCTION_414();
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v37[4] = v1;
    v37[5] = v6;
    v37[6] = v4;

    OUTLINED_FUNCTION_99_1();
    sub_1AC659DBC();

    v38 = OUTLINED_FUNCTION_289();
    sub_1AC5C3958(v38);
  }

  sub_1AC5C9624(v8, &qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();
  OUTLINED_FUNCTION_105();
}

{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_505();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_49_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_167(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_234();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_169_0();
  v19 = type metadata accessor for ClientInfo(v18);
  v20 = OUTLINED_FUNCTION_167(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6();
  v25 = v24 - v23;
  OUTLINED_FUNCTION_7_6();
  sub_1AC68A130(v3, v25);
  v26 = OUTLINED_FUNCTION_171();
  sub_1AC5D9374(v26);
  sub_1AC6089EC(v2);

  v27 = OUTLINED_FUNCTION_60_2();
  sub_1AC68A3F8(v27, v28, &qword_1EB56C7E8, &qword_1AC7AA900);
  sub_1AC6D980C(v5);
  OUTLINED_FUNCTION_377();
  v29 = OUTLINED_FUNCTION_346();
  SpeechAnalyzer.init(client:modules:options:)(v29, v30, v0);
  if (v1)
  {
    sub_1AC7A0288();
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
    OUTLINED_FUNCTION_414();
    v35 = swift_allocObject();
    OUTLINED_FUNCTION_628(v35);

    OUTLINED_FUNCTION_99_1();
    sub_1AC659DBC();

    v36 = OUTLINED_FUNCTION_171();
    sub_1AC5C3958(v36);
  }

  sub_1AC5C9624(v4, &qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_105();
}

{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_505();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_49_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_167(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_234();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_169_0();
  v19 = type metadata accessor for ClientInfo(v18);
  v20 = OUTLINED_FUNCTION_167(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6();
  v25 = v24 - v23;
  OUTLINED_FUNCTION_7_6();
  sub_1AC68A130(v3, v25);
  sub_1AC6089EC(v2);

  v26 = OUTLINED_FUNCTION_60_2();
  sub_1AC68A3F8(v26, v27, &qword_1EB56C7E8, &qword_1AC7AA900);
  sub_1AC6D980C(v5);
  OUTLINED_FUNCTION_377();
  v28 = OUTLINED_FUNCTION_346();
  SpeechAnalyzer.init(client:modules:options:)(v28, v29, v0);
  if (v1)
  {
    sub_1AC7A0288();
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
    OUTLINED_FUNCTION_414();
    v34 = swift_allocObject();
    OUTLINED_FUNCTION_628(v34);
    v35 = OUTLINED_FUNCTION_171();
    sub_1AC5D9374(v35);
    v36 = OUTLINED_FUNCTION_171();
    sub_1AC5D9374(v36);

    OUTLINED_FUNCTION_99_1();
    sub_1AC659DBC();

    v37 = OUTLINED_FUNCTION_171();
    sub_1AC5C3958(v37);
    v38 = OUTLINED_FUNCTION_171();
    sub_1AC5C3958(v38);
  }

  sub_1AC5C9624(v4, &qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC67E344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AC67E368, a4, 0);
}

uint64_t sub_1AC67E368()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];

  v4 = OUTLINED_FUNCTION_170();
  SpeechAnalyzer.setVolatileRangeChangedHandler(_:)(v4, v5);
  OUTLINED_FUNCTION_44();

  return v6();
}

void SpeechAnalyzer.__allocating_init(client:modules:options:restrictedLogging:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_104();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = OUTLINED_FUNCTION_88_0();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_167(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_481();
  v38 = type metadata accessor for ClientInfo(0);
  v39 = OUTLINED_FUNCTION_167(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7_6();
  v42 = OUTLINED_FUNCTION_515();
  sub_1AC68A130(v42, v43);
  sub_1AC68A3F8(v25, v33, &qword_1EB56C7E8, &qword_1AC7AA900);
  sub_1AC6D980C(v33);
  v44 = *(v20 + 48);
  v45 = *(v20 + 52);
  swift_allocObject();
  v46 = OUTLINED_FUNCTION_388();
  SpeechAnalyzer.init(client:modules:options:)(v46, v47, v21);
  sub_1AC5C9624(v25, &qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC67E768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AC68A874, a4, 0);
}

void SpeechAnalyzer.__allocating_init<A>(client:inputSequence:audioFormat:modules:options:restrictedLogging:analysisContext:didChangeVolatileRange:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_104();
  v57 = v26;
  v28 = v27;
  v56 = v29;
  v31 = v30;
  v58 = v33;
  v59 = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_167(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_481();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_44_4();
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_437();
  v47 = type metadata accessor for ClientInfo(0);
  v48 = OUTLINED_FUNCTION_167(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7_6();
  v51 = OUTLINED_FUNCTION_172();
  sub_1AC68A130(v51, v52);
  (*(v43 + 16))(v23, v59, a22);
  sub_1AC5D9374(v28);
  v53 = sub_1AC6089EC(v31);

  sub_1AC68A3F8(v56, v25, &qword_1EB56C7E8, &qword_1AC7AA900);
  sub_1AC6D980C(v25);
  v54 = OUTLINED_FUNCTION_39();
  SpeechAnalyzer.__allocating_init<A>(client:inputSequence:modules:options:analysisContext:volatileRangeChangedHandler:)(v54, v55, v53, v24, v57, v28, a21, a22, a23);
  sub_1AC5C3958(v28);

  sub_1AC5C9624(v56, &qword_1EB56C7E8, &qword_1AC7AA900);
  (*(v43 + 8))(v59, a22);
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();
  OUTLINED_FUNCTION_105();
}

void sub_1AC67EC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_104();
  v67 = v25;
  v68 = v23;
  v27 = v26;
  v63[1] = v28;
  v64 = v29;
  v69 = v30;
  v65 = a23;
  v66 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7E8, &qword_1AC7AA900);
  OUTLINED_FUNCTION_167(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v63 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_44_4();
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_437();
  v47 = type metadata accessor for ClientInfo(0);
  v48 = OUTLINED_FUNCTION_167(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7_6();
  v51 = OUTLINED_FUNCTION_346();
  sub_1AC68A130(v51, v52);
  v53 = *(v43 + 16);
  v54 = OUTLINED_FUNCTION_198();
  v55(v54);
  v56 = v64;
  sub_1AC68A3F8(v64, v37, &qword_1EB56C7E8, &qword_1AC7AA900);
  sub_1AC5D9374(v27);
  sub_1AC6D980C(v37);
  v62 = v65;
  v57 = OUTLINED_FUNCTION_390();
  SpeechAnalyzer.__allocating_init<A>(client:inputSequence:modules:options:analysisContext:volatileRangeChangedHandler:)(v57, v58, v66, v24, v67, v27, a21, a22, v62);
  sub_1AC5C3958(v27);

  sub_1AC5C9624(v56, &qword_1EB56C7E8, &qword_1AC7AA900);
  v59 = *(v43 + 8);
  v60 = OUTLINED_FUNCTION_171();
  v61(v60);
  OUTLINED_FUNCTION_3_7();
  sub_1AC68A2BC();
  OUTLINED_FUNCTION_339();
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC67EE68()
{
  OUTLINED_FUNCTION_85();
  *(v0 + 32) = sub_1AC6089EC(*(v0 + 16));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_422(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_382(v2);
  v4 = OUTLINED_FUNCTION_16_5();

  return SpeechAnalyzer.setModules(_:)(v4);
}

uint64_t sub_1AC67EEFC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  v3[6] = v0;

  if (v0)
  {
    v9 = v3[3];

    return MEMORY[0x1EEE6DFA0](sub_1AC67F01C, v9, 0);
  }

  else
  {
    v10 = v3[4];

    OUTLINED_FUNCTION_44();

    return v11();
  }
}

uint64_t sub_1AC67F01C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_44();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t static SpeechAnalyzer.bestAudioFormat(compatibleWith:)()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_25();
  v1 = sub_1AC79FB18();
  OUTLINED_FUNCTION_167(v1);
  v3 = *(v2 + 64);
  *(v0 + 16) = OUTLINED_FUNCTION_126();
  v4 = sub_1AC79FF48();
  OUTLINED_FUNCTION_167(v4);
  v6 = *(v5 + 64);
  *(v0 + 24) = OUTLINED_FUNCTION_126();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_55(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_95_2(v8);

  return static SpeechAnalyzer.bestAvailableAudioFormat(compatibleWith:considering:)();
}

uint64_t sub_1AC67F13C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  v4 = *(v3 + 32);
  *v2 = *v0;
  *(v1 + 40) = v5;

  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t static SpeechAnalyzer.bestAudioFormat(compatibleWith:considering:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_78_0();
  v1 = sub_1AC79FB18();
  OUTLINED_FUNCTION_167(v1);
  v3 = *(v2 + 64);
  *(v0 + 16) = OUTLINED_FUNCTION_126();
  v4 = sub_1AC79FF48();
  OUTLINED_FUNCTION_167(v4);
  v6 = *(v5 + 64);
  *(v0 + 24) = OUTLINED_FUNCTION_126();
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_55(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_85_0(v8);
  OUTLINED_FUNCTION_172();

  return static SpeechAnalyzer.bestAvailableAudioFormat(compatibleWith:considering:)();
}

uint64_t sub_1AC67F2F4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  v4 = *(v3 + 32);
  *v2 = *v0;
  *(v1 + 40) = v5;

  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC67F3DC()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[5];
  v2 = v0[3];
  if (v1)
  {
    v3 = v0[2];

    OUTLINED_FUNCTION_82();

    return v4(v1);
  }

  else
  {
    OUTLINED_FUNCTION_65();
    sub_1AC79FEE8();
    if (qword_1EB56B610 != -1)
    {
      swift_once();
    }

    v6 = v0[2];
    v7 = v0[3];
    v8 = qword_1EB56DF80;
    sub_1AC79FA88();
    OUTLINED_FUNCTION_138();
    v9 = sub_1AC79FFC8();
    related decl 'e' for SFSpeechErrorCode.init(_:description:)(5, v9, v10);
    swift_willThrow();

    OUTLINED_FUNCTION_44();

    return v11();
  }
}

uint64_t static SpeechAnalyzer.bestAudioFormat(compatibleWith:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_15_5(sub_1AC67F574, 0);
}

uint64_t sub_1AC67F574()
{
  OUTLINED_FUNCTION_85();
  *(v0 + 32) = sub_1AC6089EC(*(v0 + 16));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_422(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_382(v2);
  OUTLINED_FUNCTION_16_5();

  return static SpeechAnalyzer.bestAudioFormat(compatibleWith:)();
}

uint64_t sub_1AC67F608()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;
  *(v5 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = *(v5 + 32);

    OUTLINED_FUNCTION_470();

    return v15(v3);
  }
}

uint64_t static SpeechAnalyzer.bestAudioFormat(compatibleWith:considering:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_15_5(sub_1AC67F75C, 0);
}

uint64_t sub_1AC67F75C()
{
  OUTLINED_FUNCTION_85();
  v0[5] = sub_1AC6089EC(v0[2]);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_587(v1);
  *v2 = v3;
  v2[1] = sub_1AC67F7F4;
  v4 = v0[3];
  v5 = v0[4];
  OUTLINED_FUNCTION_16_5();

  return static SpeechAnalyzer.bestAudioFormat(compatibleWith:considering:)();
}

uint64_t sub_1AC67F7F4()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;
  *(v5 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    v14 = *(v5 + 40);

    OUTLINED_FUNCTION_470();

    return v15(v3);
  }
}

uint64_t sub_1AC67F928()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_44();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t static SpeechAnalyzer.bestAvailableAudioFormat(compatibleWith:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_15_5(sub_1AC67F9A0, 0);
}

uint64_t sub_1AC67F9A0()
{
  OUTLINED_FUNCTION_85();
  *(v0 + 32) = sub_1AC6089EC(*(v0 + 16));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_422(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_382(v2);
  OUTLINED_FUNCTION_16_5();

  return static SpeechAnalyzer.bestAvailableAudioFormat(compatibleWith:considering:)();
}

uint64_t sub_1AC67FA38()
{
  OUTLINED_FUNCTION_85();
  v2 = v1;
  OUTLINED_FUNCTION_50();
  v4 = *(v3 + 40);
  v5 = *(v3 + 32);
  v6 = *v0;
  OUTLINED_FUNCTION_18();
  *v7 = v6;

  OUTLINED_FUNCTION_82();

  return v8(v2);
}

uint64_t static SpeechAnalyzer.bestAvailableAudioFormat(compatibleWith:considering:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_15_5(sub_1AC67FB5C, 0);
}

uint64_t sub_1AC67FB5C()
{
  OUTLINED_FUNCTION_85();
  v0[5] = sub_1AC6089EC(v0[2]);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_587(v1);
  *v2 = v3;
  v2[1] = sub_1AC67FC0C;
  v4 = v0[3];
  v5 = v0[4];
  v6 = OUTLINED_FUNCTION_16_5();

  return sub_1AC67C738(v6, v7, v8, 0);
}

uint64_t sub_1AC67FC0C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  v4 = *(v3 + 48);
  *v2 = *v0;
  *(v1 + 56) = v5;

  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC67FCF4()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_82();
  v3 = *(v0 + 56);

  return v2(v3);
}

uint64_t static SpeechAnalyzer.bestAvailableAudioFormat(compatibleWith:clientInfo:considering:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  return OUTLINED_FUNCTION_15_5(sub_1AC67FD70, 0);
}

uint64_t sub_1AC67FD70()
{
  OUTLINED_FUNCTION_85();
  v0[5] = sub_1AC6089EC(v0[2]);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_587(v1);
  *v2 = v3;
  v2[1] = sub_1AC67FE08;
  v4 = v0[3];
  v5 = v0[4];
  OUTLINED_FUNCTION_16_5();

  return static SpeechAnalyzer.bestAvailableAudioFormat(compatibleWith:considering:)();
}

uint64_t sub_1AC67FE08()
{
  OUTLINED_FUNCTION_85();
  v2 = v1;
  OUTLINED_FUNCTION_50();
  v4 = *(v3 + 48);
  v5 = *(v3 + 40);
  v6 = *v0;
  OUTLINED_FUNCTION_18();
  *v7 = v6;

  OUTLINED_FUNCTION_82();

  return v8(v2);
}

uint64_t SpeechAnalyzer.setDidChangeVolatileRange(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange);
  v4 = *(v2 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange);
  v5 = *(v2 + OBJC_IVAR____TtC6Speech14SpeechAnalyzer_didChangeVolatileRange + 8);
  if (a1)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  *v3 = a1;
  v3[1] = v6;
  sub_1AC5D9374(a1);
  v7 = OUTLINED_FUNCTION_39();

  return sub_1AC5C3958(v7);
}

uint64_t SpeechAnalyzer.setDidChangeVolatileRange(_:)()
{
  OUTLINED_FUNCTION_78_0();
  sub_1AC5D9374(v0);
  v1 = OUTLINED_FUNCTION_172();
  SpeechAnalyzer.setVolatileRangeChangedHandler(_:)(v1, v2);
  v3 = OUTLINED_FUNCTION_172();

  return sub_1AC5C3958(v3);
}

Swift::Void __swiftcall endModelRetention()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_169_0();
  sub_1AC7A0288();
  v4 = OUTLINED_FUNCTION_158_1();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_99();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  OUTLINED_FUNCTION_99_1();
  sub_1AC659DBC();
}

uint64_t sub_1AC68006C()
{
  OUTLINED_FUNCTION_85();
  if (qword_1ED9373D0 != -1)
  {
    OUTLINED_FUNCTION_14_2();
  }

  v1 = qword_1ED938600;
  *(v0 + 16) = qword_1ED938600;

  return MEMORY[0x1EEE6DFA0](sub_1AC68A868, v1, 0);
}

uint64_t sub_1AC680108(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF58, &qword_1AC7A9230);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v29[-v13];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29[-v15];
  swift_beginAccess();
  v17 = 0;
  v18 = *(v2 + 176);
  while (*(v18 + 16) != v17)
  {
    if (*(v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17) == a1)
    {
      swift_beginAccess();
      sub_1AC630C28();
      swift_endAccess();
      v19 = *v16;

      sub_1AC5C9624(v16 + *(v6 + 48), &qword_1EB56C878, &qword_1AC7AAD60);
      break;
    }

    ++v17;
  }

  if ((*(v2 + 120) & 1) == 0 && *(*(v2 + 176) + 16) == *(v2 + 112))
  {
    swift_beginAccess();
    sub_1AC6F9470();
    swift_endAccess();
    v20 = *v16;
    sub_1AC5C9624(v16 + *(v6 + 48), &qword_1EB56C878, &qword_1AC7AAD60);
    v21 = *(v2 + 152);
    if (v21)
    {
      v22 = *(v2 + 160);
      v21(v20);
    }
  }

  v23 = *(v6 + 48);
  *v14 = a1;
  if (a2)
  {
    v24 = sub_1AC7A0AD8();
    __swift_storeEnumTagSinglePayload(v14 + v23, 1, 1, v24);
  }

  else
  {

    sub_1AC681D98(v14 + v23);
  }

  sub_1AC68A3F8(v14, v16, &qword_1EB56BF58, &qword_1AC7A9230);
  v25 = *(v6 + 48);
  *v11 = *v16;
  sub_1AC68A444(v16 + v25, v11 + v25, &qword_1EB56C878, &qword_1AC7AAD60);
  swift_beginAccess();
  sub_1AC703C44();
  v26 = *(*(v3 + 176) + 16);
  sub_1AC703D94(v26);
  v27 = *(v3 + 176);
  *(v27 + 16) = v26 + 1;
  sub_1AC68A444(v11, v27 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v26, &qword_1EB56BF58, &qword_1AC7A9230);
  *(v3 + 176) = v27;
  swift_endAccess();
  sub_1AC680AD8();
  return sub_1AC5C9624(v14, &qword_1EB56BF58, &qword_1AC7A9230);
}

uint64_t sub_1AC680460(uint64_t a1, uint64_t (*a2)(void, char *))
{
  v4 = 0;
  v5 = *(a1 + 16);
  while (1)
  {
    if (v5 == v4)
    {
      return 0;
    }

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF58, &qword_1AC7A9230);
    v7 = (a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4);
    if (a2(*v7, &v7[*(v6 + 48)]))
    {
      break;
    }

    ++v4;
  }

  return v4;
}

uint64_t sub_1AC680560(uint64_t a1, char a2)
{
  result = sub_1AC61C24C(a1);
  v5 = result;
  for (i = 0; v5 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1B26E95B0](i, a1);
      v7 = result;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    sub_1AC680108(v7, a2 & 1);
  }

  return result;
}

uint64_t sub_1AC680618(uint64_t a1)
{
  v3[2] = a1;
  swift_beginAccess();
  result = sub_1AC684F34((v1 + 176), sub_1AC68A6C0, v3);
  if (*(*(v1 + 176) + 16) < result)
  {
    __break(1u);
  }

  else
  {
    sub_1AC6A88B8();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1AC6806A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AC61C24C(a3);
  v6 = result;
  for (i = 0; ; ++i)
  {
    while (1)
    {
      v8 = i;
      if (i == v6)
      {
        return v8 != v6;
      }

      if ((a3 & 0xC000000000000001) == 0)
      {
        break;
      }

      result = MEMORY[0x1B26E95B0](i++, a3);
      if (__OFADD__(v8, 1))
      {
        goto LABEL_13;
      }

      v9 = result;
      result = swift_unknownObjectRelease();
      if (v9 == a1)
      {
        return v8 != v6;
      }
    }

    if ((i & 0x8000000000000000) != 0)
    {
      break;
    }

    if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    if (*(a3 + 32 + 8 * v8) == a1)
    {
      return v8 != v6;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1AC680770()
{
  v1 = v0;
  v2 = sub_1AC6808F8();
  swift_beginAccess();
  v3 = *(v0 + 176);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + 176);
  if (isUniquelyReferenced_nonNull_native)
  {
    v6 = *(v5 + 16);
    sub_1AC6A88B8();
  }

  else
  {
    *(v1 + 176) = sub_1AC60F664(0, *(v5 + 24) >> 1);
  }

  swift_endAccess();
  if (*(v1 + 168))
  {
    v7 = *(v1 + 168);

    sub_1AC7A0318();
  }

  return v2;
}

uint64_t sub_1AC680840(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 176);
  v4 = *(v3 + 16);
  if (v4 >= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = *(v3 + 16);
  }

  swift_beginAccess();
  if (a1 < 0 || !v5)
  {
    return swift_endAccess();
  }

  result = sub_1AC5C9008(0, v5, v4, v3);
  if ((v7 & 1) == 0)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      sub_1AC6A88B8();
      return swift_endAccess();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC6808F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF58, &qword_1AC7A9230);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  swift_beginAccess();
  v9 = *(v0 + 176);
  v10 = *(v9 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v18 = MEMORY[0x1E69E7CC0];

    sub_1AC7A0A88();
    v12 = *(v2 + 80);
    v16 = v9;
    v13 = v9 + ((v12 + 32) & ~v12);
    v17 = *(v2 + 72);
    do
    {
      sub_1AC68A3F8(v13, v8, &qword_1EB56BF58, &qword_1AC7A9230);
      sub_1AC68A444(v8, v6, &qword_1EB56BF58, &qword_1AC7A9230);
      v14 = *v6;
      sub_1AC5C9624(v6 + *(v1 + 48), &qword_1EB56C878, &qword_1AC7AAD60);
      sub_1AC7A0A68();
      v15 = *(v18 + 16);
      sub_1AC7A0A98();
      sub_1AC7A0AA8();
      sub_1AC7A0A78();
      v13 += v17;
      --v10;
    }

    while (v10);

    return v18;
  }

  return result;
}

uint64_t sub_1AC680AD8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v13 - v4;
  if ((*(v0 + 144) & 1) == 0)
  {
    if (!*(v0 + 168) || (v6 = *(v0 + 168), , isCancelled = swift_task_isCancelled(), result = , (isCancelled & 1) != 0))
    {
      v8 = sub_1AC7A0288();
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v8);
      v9 = sub_1AC5C8B9C(qword_1EB56B118, &qword_1EB56C880, &unk_1AC7AE290);
      v10 = swift_allocObject();
      v10[2] = v0;
      v10[3] = v9;
      v10[4] = v0;
      swift_retain_n();
      sub_1AC659DBC();
      v11 = *(v0 + 168);
      *(v0 + 168) = v12;
    }
  }

  return result;
}

uint64_t sub_1AC680C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1AC680CC0;
  v6 = *(v4 + 16);

  return sub_1AC680E8C();
}

uint64_t sub_1AC680CC0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v9 + 32) = v8;

  v10 = OUTLINED_FUNCTION_222();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC680DB8()
{
  OUTLINED_FUNCTION_85();
  if (*(v0 + 32) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 24) = v1;
    *v1 = v0;
    v1[1] = sub_1AC680CC0;
    v2 = *(v0 + 16);

    return sub_1AC680E8C();
  }

  else
  {
    v4 = *(v0 + 16);
    v5 = *(v4 + 168);
    *(v4 + 168) = 0;

    OUTLINED_FUNCTION_44();

    return v6();
  }
}

uint64_t sub_1AC680E8C()
{
  v1[8] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C888, &qword_1AC7AAD80) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v3 = sub_1AC7A0AE8();
  v1[11] = v3;
  v4 = *(v3 - 8);
  v1[12] = v4;
  v5 = *(v4 + 64) + 15;
  v1[13] = swift_task_alloc();
  v6 = sub_1AC7A0AD8();
  v1[14] = v6;
  v7 = *(v6 - 8);
  v1[15] = v7;
  v8 = *(v7 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF58, &qword_1AC7A9230);
  v1[18] = v9;
  v10 = *(v9 - 8);
  v1[19] = v10;
  v11 = *(v10 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C878, &qword_1AC7AAD60) - 8) + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC681110, v0, 0);
}

uint64_t sub_1AC681110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_55_3();
  v19 = *(v18 + 144);
  v20 = *(v18 + 152);
  v21 = *(v18 + 64);
  OUTLINED_FUNCTION_574();
  v22 = *(v21 + 176);
  v23 = *(v22 + 16);

  for (i = 0; v23 != i; ++i)
  {
    if (i >= *(v22 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEE6DA68](v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
    }

    v33 = *(v18 + 224);
    v34 = *(v18 + 112);
    v35 = *(v20 + 80);
    OUTLINED_FUNCTION_89_0();
    sub_1AC68A3F8(v22 + v36 + *(v20 + 72) * i, v33, &qword_1EB56BF58, &qword_1AC7A9230);
    OUTLINED_FUNCTION_65_4(v33 + *(v19 + 48));
    if (!v37)
    {
      v43 = *(v18 + 248);
      v45 = *(v18 + 224);
      v44 = *(v18 + 232);

      v46 = OUTLINED_FUNCTION_124_0();
      sub_1AC68A444(v46, v47, v48, v49);
      v50 = *v44;

      sub_1AC68A444(v44 + *(v19 + 48), v43, &qword_1EB56C878, &qword_1AC7AAD60);
      goto LABEL_8;
    }

    v24 = sub_1AC5C9624(*(v18 + 224), &qword_1EB56BF58, &qword_1AC7A9230);
  }

  v38 = *(v18 + 248);
  v39 = *(v18 + 112);

  v40 = OUTLINED_FUNCTION_158_1();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
LABEL_8:
  v51 = *(v18 + 112);
  sub_1AC68A3F8(*(v18 + 248), *(v18 + 240), &qword_1EB56C878, &qword_1AC7AAD60);
  v52 = OUTLINED_FUNCTION_55_2();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v52, v53, v51);
  v55 = *(v18 + 240);
  if (EnumTagSinglePayload != 1)
  {
    v67 = *(v18 + 136);
    v68 = *(v18 + 112);
    v69 = *(v18 + 120);
    v70 = *(v18 + 104);
    v71 = *(v69 + 32);
    *(v18 + 256) = v71;
    *(v18 + 264) = (v69 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v71(v67, v55, v68);
    *(v18 + 48) = 0;
    *(v18 + 40) = 0;
    *(v18 + 56) = 1;
    sub_1AC7A0DD8();
    v72 = *(MEMORY[0x1E69E86D0] + 4);
    v73 = swift_task_alloc();
    *(v18 + 272) = v73;
    sub_1AC68A730(&qword_1EB56AA80, MEMORY[0x1E69E8820]);
    *v73 = v18;
    v73[1] = sub_1AC681468;
    v74 = *(v18 + 136);
    v75 = *(v18 + 104);
    v76 = *(v18 + 88);
    OUTLINED_FUNCTION_26();

    return MEMORY[0x1EEE6DA68](v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  sub_1AC5C9624(*(v18 + 248), &qword_1EB56C878, &qword_1AC7AAD60);
  v56 = OUTLINED_FUNCTION_89();
  sub_1AC5C9624(v56, v57, &qword_1AC7AAD60);
  OUTLINED_FUNCTION_283();

  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_26();

  return v60(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1AC681468()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = v5[34];
  v7 = v5[13];
  v8 = v5[12];
  v9 = v5[11];
  v10 = *v1;
  OUTLINED_FUNCTION_18();
  *v11 = v10;
  *(v3 + 280) = v0;

  v12 = *(v8 + 8);
  v13 = OUTLINED_FUNCTION_73_1();
  v14(v13);
  v15 = *(v3 + 64);
  OUTLINED_FUNCTION_149_0();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1AC6815C0()
{
  v1 = *(v0 + 64);
  result = v1[22];
  v3 = *(result + 16);
  if (v3)
  {
    v4 = *(v0 + 152);
    v117 = *(*(v0 + 144) + 48);
    v119 = *(v0 + 216);
    v5 = result + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v113 = *(v4 + 72);
    v115 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v110 = v0 + 184;
    v111 = (*(v0 + 120) + 8);
    v109 = v1[22];

    v123 = MEMORY[0x1E69E7CC0];
    v121 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v7 = *(v0 + 208);
      v6 = *(v0 + 216);
      v8 = *(v0 + 200);
      v9 = *(v0 + 144);
      v10 = *(v0 + 112);
      v11 = OUTLINED_FUNCTION_506();
      sub_1AC68A3F8(v11, v12, &qword_1EB56BF58, &qword_1AC7A9230);
      v13 = *(v9 + 48);
      *v7 = *v6;
      sub_1AC68A444(v119 + v117, v7 + v13, &qword_1EB56C878, &qword_1AC7AAD60);
      sub_1AC68A3F8(v7, v8, &qword_1EB56BF58, &qword_1AC7A9230);
      v14 = *v8;

      v15 = *(v9 + 48);
      OUTLINED_FUNCTION_96(&v8[v15], 1, v10);
      if (v16)
      {
        v17 = OUTLINED_FUNCTION_511();
        sub_1AC5C9624(v17, v18, &qword_1AC7AAD60);
        v19 = v121;
      }

      else
      {
        v20 = *(v0 + 264);
        v21 = *(v0 + 136);
        (*(v0 + 256))(*(v0 + 128), &v8[v15], *(v0 + 112));
        sub_1AC68A730(&qword_1EB56AA88, MEMORY[0x1E69E87E8]);
        OUTLINED_FUNCTION_73_1();
        v22 = sub_1AC79FEB8();
        if ((v22 & 1) == 0)
        {
          v41 = *(v0 + 184);
          v42 = *(v0 + 144);
          sub_1AC68A3F8(*(v0 + 208), *(v0 + 192), &qword_1EB56BF58, &qword_1AC7A9230);
          v43 = OUTLINED_FUNCTION_518();
          sub_1AC68A444(v43, v44, &qword_1EB56C878, &qword_1AC7AAD60);
          v36 = v123;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v60 = *(v123 + 16);
            OUTLINED_FUNCTION_53_3();
            sub_1AC60E66C();
            v36 = isUniquelyReferenced_nonNull_native;
          }

          v38 = *(v36 + 16);
          v53 = *(v36 + 24);
          v39 = v38 + 1;
          if (v38 >= v53 >> 1)
          {
            OUTLINED_FUNCTION_83_3(v53);
            sub_1AC60E66C();
            v36 = isUniquelyReferenced_nonNull_native;
          }

          v54 = OUTLINED_FUNCTION_618(isUniquelyReferenced_nonNull_native, v46, v47, v48, v49, v50, v51, v52, v109, v110, v111);
          v55(v54);
          v123 = v36;
          v40 = v110;
          goto LABEL_17;
        }

        v30 = OUTLINED_FUNCTION_618(v22, v23, v24, v25, v26, v27, v28, v29, v109, v110, v111);
        v31(v30);
        v19 = v121;
      }

      v32 = *(v0 + 168);
      v33 = *(v0 + 144);
      sub_1AC68A3F8(*(v0 + 208), *(v0 + 176), &qword_1EB56BF58, &qword_1AC7A9230);
      v34 = OUTLINED_FUNCTION_518();
      sub_1AC68A444(v34, v35, &qword_1EB56C878, &qword_1AC7AAD60);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v36 = v19;
      }

      else
      {
        v57 = *(v19 + 16);
        OUTLINED_FUNCTION_53_3();
        sub_1AC60E66C();
        v36 = v58;
      }

      v38 = *(v36 + 16);
      v37 = *(v36 + 24);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        OUTLINED_FUNCTION_83_3(v37);
        sub_1AC60E66C();
        v36 = v59;
        v40 = (v0 + 168);
        v121 = v59;
      }

      else
      {
        v40 = (v0 + 168);
        v121 = v36;
      }

LABEL_17:
      v56 = *v40;
      sub_1AC5C9624(*(v0 + 208), &qword_1EB56BF58, &qword_1AC7A9230);
      *(v36 + 16) = v39;
      sub_1AC68A444(v56, v36 + v115 + v38 * v113, &qword_1EB56BF58, &qword_1AC7A9230);
      v5 += v113;
      if (!--v3)
      {

        v1 = *(v0 + 64);
        v61 = v123;
        goto LABEL_22;
      }
    }
  }

  v61 = MEMORY[0x1E69E7CC0];
  v121 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v62 = 0;
  v63 = *(v61 + 16);
  for (i = v61; ; v61 = i)
  {
    if (v62 == v63)
    {
      v64 = 1;
      v62 = v63;
      goto LABEL_27;
    }

    if (v62 >= *(v61 + 16))
    {
      break;
    }

    sub_1AC68A3F8(v61 + ((*(*(v0 + 152) + 80) + 32) & ~*(*(v0 + 152) + 80)) + *(*(v0 + 152) + 72) * v62, *(v0 + 72), &qword_1EB56BF58, &qword_1AC7A9230);
    v64 = 0;
    ++v62;
LABEL_27:
    v65 = *(v0 + 144);
    v66 = *(v0 + 80);
    __swift_storeEnumTagSinglePayload(*(v0 + 72), v64, 1, v65);
    OUTLINED_FUNCTION_48_5();
    sub_1AC68A444(v67, v68, v69, v70);
    v71 = OUTLINED_FUNCTION_278();
    OUTLINED_FUNCTION_96(v71, v72, v65);
    if (v16)
    {
      v78 = *(v0 + 64);
      v79 = *(v78 + 176);
      *(v78 + 176) = v121;

      v80 = *(v78 + 176);
      v81 = *(v80 + 16);

      for (j = 0; v81 != j; ++j)
      {
        if (j >= *(v80 + 16))
        {
          goto LABEL_42;
        }

        v83 = *(v0 + 152);
        v84 = *(v0 + 160);
        v85 = *(v0 + 144);
        v86 = *(v0 + 112);
        v87 = *(v83 + 80);
        v88 = *(v83 + 72);
        OUTLINED_FUNCTION_246();
        sub_1AC68A3F8(v89, v90, v91, &qword_1AC7A9230);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v84 + *(v85 + 48), 1, v86);
        v93 = *(v0 + 160);
        if (EnumTagSinglePayload != 1)
        {

          sub_1AC5C9624(v93, &qword_1EB56BF58, &qword_1AC7A9230);
LABEL_38:
          v96 = *(v0 + 248);
          (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));
          sub_1AC5C9624(v96, &qword_1EB56C878, &qword_1AC7AAD60);

          v98 = *(v0 + 240);
          v97 = *(v0 + 248);
          v100 = *(v0 + 224);
          v99 = *(v0 + 232);
          v102 = *(v0 + 208);
          v101 = *(v0 + 216);
          v103 = *(v0 + 192);
          v104 = *(v0 + 200);
          v106 = *(v0 + 176);
          v105 = *(v0 + 184);
          v112 = *(v0 + 168);
          v114 = *(v0 + 160);
          v116 = *(v0 + 136);
          v118 = *(v0 + 128);
          v120 = *(v0 + 104);
          v122 = *(v0 + 80);
          v125 = *(v0 + 72);

          OUTLINED_FUNCTION_82();
          OUTLINED_FUNCTION_402();

          __asm { BRAA            X2, X16 }
        }

        v94 = OUTLINED_FUNCTION_506();
        result = sub_1AC5C9624(v94, v95, &qword_1AC7A9230);
      }

      goto LABEL_38;
    }

    v73 = *(v0 + 80);
    v74 = *v73;
    v75 = v1[19];
    if (v75)
    {
      v76 = v1[20];
      v75(v74);
      v73 = *(v0 + 80);
    }

    v77 = *(v0 + 144);

    result = sub_1AC5C9624(v73 + *(v77 + 48), &qword_1EB56C878, &qword_1AC7AAD60);
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1AC681C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_55_3();
  v19 = v18[35];
  v20 = v18[31];
  (*(v18[15] + 8))(v18[17], v18[14]);
  sub_1AC5C9624(v20, &qword_1EB56C878, &qword_1AC7AAD60);

  OUTLINED_FUNCTION_283();

  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_26();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1AC681D98@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC7A0AD8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 144))
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  }

  else
  {
    v11 = v1 + 128;
    v9 = *(v1 + 128);
    v10 = *(v11 + 8);
    sub_1AC7A0AB8();
    sub_1AC7A0AC8();
    (*(v4 + 8))(v7, v3);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
  }
}

uint64_t sub_1AC681ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C810, &qword_1AC7AABC0);
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C818, &qword_1AC7AABC8);
  v4[18] = v8;
  v9 = *(v8 - 8);
  v4[19] = v9;
  v10 = *(v9 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC682058, 0, 0);
}

uint64_t sub_1AC682058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_598();
  v11 = *(v10 + 96);
  v12 = (v11 + 32);
  v13 = *(v11 + 16);
  v14 = &qword_1EB56BE70;
  if (v13)
  {
    do
    {
      v61 = v13;
      v15 = *(v10 + 176);
      v16 = *(v10 + 184);
      v17 = v14;
      v18 = *(v10 + 104);
      v19 = *(v10 + 112);
      v20 = sub_1AC7A0288();
      v62 = v12;
      v63 = *v12;
      OUTLINED_FUNCTION_55_2();
      OUTLINED_FUNCTION_247();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
      OUTLINED_FUNCTION_613();
      v25 = swift_allocObject();
      *(v25 + 16) = 0;
      v26 = (v25 + 16);
      *(v25 + 24) = 0;
      *(v25 + 32) = v18;
      v14 = v17;
      *(v25 + 40) = v19;
      *(v25 + 48) = v63;
      v27 = OUTLINED_FUNCTION_89();
      sub_1AC68A3F8(v27, v28, v17, &qword_1AC7A8270);
      v29 = OUTLINED_FUNCTION_178_1();
      LODWORD(v15) = __swift_getEnumTagSinglePayload(v29, v30, v20);
      swift_unknownObjectRetain();

      v31 = *(v10 + 176);
      if (v15 == 1)
      {
        v32 = *(v10 + 176);
        OUTLINED_FUNCTION_246();
        sub_1AC5C9624(v33, v34, v35);
      }

      else
      {
        sub_1AC7A0278();
        OUTLINED_FUNCTION_106(v20);
        (*(v36 + 8))(v31, v20);
      }

      if (*v26)
      {
        v37 = *(v25 + 24);
        v38 = *v26;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v39 = sub_1AC7A01B8();
        v41 = v40;
        swift_unknownObjectRelease();
      }

      else
      {
        v39 = 0;
        v41 = 0;
      }

      v42 = **(v10 + 88);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C800, &qword_1AC7AAB98);
      v43 = (v41 | v39);
      if (v41 | v39)
      {
        v43 = a10;
        *a10 = 0;
        a10[1] = 0;
        *(v10 + 32) = v39;
        *(v10 + 40) = v41;
      }

      v44 = *(v10 + 184);
      *(v10 + 48) = 1;
      *(v10 + 56) = v43;
      *(v10 + 64) = v42;
      OUTLINED_FUNCTION_606();
      swift_task_create();

      OUTLINED_FUNCTION_246();
      sub_1AC5C9624(v45, v46, v47);
      v12 = v62 + 1;
      v13 = v61 - 1;
    }

    while (v61 != 1);
  }

  v48 = *(v10 + 160);
  v49 = *(v10 + 168);
  v50 = *(v10 + 144);
  v51 = *(v10 + 152);
  v64 = *(v10 + 136);
  *(v10 + 72) = **(v10 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C820, &qword_1AC7AABE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF20, &qword_1AC7A8330);
  OUTLINED_FUNCTION_281(&qword_1EB56C828);
  OUTLINED_FUNCTION_488();
  v52 = *(v51 + 16);
  v53 = OUTLINED_FUNCTION_100_2();
  v54(v53);
  OUTLINED_FUNCTION_337(&qword_1EB56C830, &qword_1EB56C818, &qword_1AC7AABC8);
  sub_1AC7A0368();
  *(v10 + 192) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_58_0(&qword_1EB56C838, &qword_1EB56C810, &qword_1AC7AABC0);
  v55 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  *(v10 + 200) = v56;
  *v56 = v57;
  OUTLINED_FUNCTION_240(v56);
  OUTLINED_FUNCTION_26();

  return MEMORY[0x1EEE6D8C8](v58);
}

uint64_t sub_1AC6823C0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  v3[26] = v0;

  if (v0)
  {
    v9 = v3[24];
    (*(v3[16] + 8))(v3[17], v3[15]);
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC6824DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  v11 = v10[10];
  if (v11)
  {
    v12 = v10[24];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = v10[24];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v40 = *(v14 + 16);
      OUTLINED_FUNCTION_53_3();
      sub_1AC60E2AC();
      v14 = v41;
    }

    v16 = *(v14 + 16);
    v15 = *(v14 + 24);
    if (v16 >= v15 >> 1)
    {
      OUTLINED_FUNCTION_9(v15);
      sub_1AC60E2AC();
      v14 = v42;
    }

    *(v14 + 16) = v16 + 1;
    *(v14 + 8 * v16 + 32) = v11;
    v10[24] = v14;
    OUTLINED_FUNCTION_58_0(&qword_1EB56C838, &qword_1EB56C810, &qword_1AC7AABC0);
    v17 = *(MEMORY[0x1E69E85A8] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    v10[25] = v18;
    *v18 = v19;
    OUTLINED_FUNCTION_240();
    OUTLINED_FUNCTION_291();

    return MEMORY[0x1EEE6D8C8](v20);
  }

  else
  {
    v22 = v10[22];
    v23 = v10[23];
    v25 = v10[20];
    v24 = v10[21];
    v26 = v10[18];
    v27 = v10[19];
    (*(v10[16] + 8))(v10[17], v10[15]);
    v28 = *(v27 + 8);
    v29 = OUTLINED_FUNCTION_619();
    v30(v29);

    OUTLINED_FUNCTION_82();
    v31 = v10[24];
    OUTLINED_FUNCTION_291();

    return v34(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
  }
}

uint64_t sub_1AC682684()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[17];
  (*(v0[19] + 8))(v0[21], v0[18]);

  OUTLINED_FUNCTION_44();
  v5 = v0[26];
  OUTLINED_FUNCTION_149_0();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1AC68272C()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[16];
  (*(v0[18] + 8))(v0[20], v0[17]);

  OUTLINED_FUNCTION_44();
  v5 = v0[25];
  OUTLINED_FUNCTION_149_0();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1AC6827D4(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v10 = (a3 + *a3);
  v7 = a3[1];
  v8 = swift_task_alloc();
  v6[5] = v8;
  *v8 = v6;
  v8[1] = sub_1AC6828D8;

  return (v10)(v6 + 4, v6 + 2);
}

uint64_t sub_1AC6828D8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v8 + 48) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC6829D8()
{
  OUTLINED_FUNCTION_44();
  v1 = *(v0 + 48);
  return v2();
}

uint64_t sub_1AC682A1C()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_82();
  v5 = v2;

  return v5(v3);
}

uint64_t sub_1AC682A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC682B28, 0, 0);
}

uint64_t sub_1AC682B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, _OWORD *a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_598();
  v18 = *(v17 + 80);
  v19 = *(v18 + 16);
  v20 = (v18 + 32);
  while (1)
  {
    v21 = *(v17 + 104);
    v22 = *(v17 + 112);
    if (!v19)
    {
      break;
    }

    a12 = v19;
    v24 = *(v17 + 88);
    v23 = *(v17 + 96);
    v25 = sub_1AC7A0288();
    a11 = v20;
    a13 = *v20;
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
    OUTLINED_FUNCTION_613();
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    v30 = (v29 + 16);
    *(v29 + 24) = 0;
    *(v29 + 32) = v24;
    *(v29 + 40) = v23;
    *(v29 + 48) = a13;
    v31 = OUTLINED_FUNCTION_204_0();
    sub_1AC68A3F8(v31, v32, &qword_1EB56BE70, &qword_1AC7A8270);
    v33 = OUTLINED_FUNCTION_55_2();
    LODWORD(v24) = __swift_getEnumTagSinglePayload(v33, v34, v25);
    swift_unknownObjectRetain_n();

    v35 = *(v17 + 104);
    if (v24 == 1)
    {
      v36 = OUTLINED_FUNCTION_123();
      sub_1AC5C9624(v36, v37, &qword_1AC7A8270);
    }

    else
    {
      sub_1AC7A0278();
      OUTLINED_FUNCTION_106(v25);
      (*(v38 + 8))(v35, v25);
    }

    if (*v30)
    {
      v39 = *(v29 + 24);
      v40 = *v30;
      swift_getObjectType();
      OUTLINED_FUNCTION_627();
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_515();
      v41 = sub_1AC7A01B8();
      v43 = v42;
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = 0;
      v43 = 0;
    }

    v44 = **(v17 + 72);
    if (v43 | v41)
    {
      *a10 = 0;
      a10[1] = 0;
      *(v17 + 32) = v41;
      *(v17 + 40) = v43;
    }

    OUTLINED_FUNCTION_603(v44);
    OUTLINED_FUNCTION_606();
    swift_task_create();

    v45 = OUTLINED_FUNCTION_123();
    sub_1AC5C9624(v45, v46, &qword_1AC7A8270);
    swift_unknownObjectRelease();
    v20 = a11 + 1;
    v19 = a12 - 1;
  }

  v47 = *(v17 + 112);

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_26();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, *(&a13 + 1), a14, a15, a16, a17);
}

uint64_t sub_1AC682D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC682E24, 0, 0);
}

void sub_1AC682E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_598();
  v19 = *(v18 + 80);
  v20 = 0;
  v62 = v19 & 0xC000000000000001;
  v63 = sub_1AC61C24C(v19);
  v60 = (v19 + 32);
  v61 = v19 & 0xFFFFFFFFFFFFFF8;
  v21 = &qword_1EB56BE70;
  while (v63 != v20)
  {
    if (v62)
    {
      MEMORY[0x1B26E95B0](v20, *(v18 + 80));
    }

    else
    {
      if (v20 >= *(v61 + 16))
      {
        goto LABEL_21;
      }

      v22 = *&v60[8 * v20];
    }

    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    a15 = v20;
    v24 = *(v18 + 104);
    v23 = *(v18 + 112);
    v25 = v21;
    v26 = *(v18 + 88);
    v27 = *(v18 + 96);
    OUTLINED_FUNCTION_433();
    v28 = sub_1AC7A0288();
    v29 = OUTLINED_FUNCTION_158_1();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);
    OUTLINED_FUNCTION_414();
    v32 = swift_allocObject();
    v32[2] = 0;
    v33 = (v32 + 2);
    v32[3] = 0;
    v32[4] = v26;
    v21 = v25;
    v32[5] = v27;
    v32[6] = v19;
    sub_1AC68A3F8(v23, v24, v25, &qword_1AC7A8270);
    LODWORD(v23) = __swift_getEnumTagSinglePayload(v24, 1, v28);

    v34 = v19;
    v35 = *(v18 + 104);
    if (v23 == 1)
    {
      v36 = *(v18 + 104);
      OUTLINED_FUNCTION_246();
      sub_1AC5C9624(v37, v38, v39);
    }

    else
    {
      sub_1AC7A0278();
      OUTLINED_FUNCTION_106(v28);
      (*(v40 + 8))(v35, v28);
    }

    v19 = *v33;
    if (*v33)
    {
      v41 = v32[3];
      v42 = *v33;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v43 = sub_1AC7A01B8();
      v45 = v44;
      swift_unknownObjectRelease();
    }

    else
    {
      v43 = 0;
      v45 = 0;
    }

    v46 = **(v18 + 72);
    if (v45 | v43)
    {
      *a10 = 0;
      a10[1] = 0;
      *(v18 + 32) = v43;
      *(v18 + 40) = v45;
    }

    OUTLINED_FUNCTION_603(v46);
    OUTLINED_FUNCTION_606();
    swift_task_create();

    OUTLINED_FUNCTION_246();
    sub_1AC5C9624(v47, v48, v49);

    v20 = a15 + 1;
  }

  v51 = *(v18 + 104);
  v50 = *(v18 + 112);

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_26();

  v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, v60, v61, v62, v63, a15, a16, a17, a18);
}